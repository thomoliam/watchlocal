import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const GOOGLE_API_KEY = process.env.GOOGLE_PLACES_API_KEY || "";
const CRON_SECRET = process.env.CRON_SECRET || "";
const BATCH_SIZE = 10; // process 10 venues per cron run
const MAX_PHOTO_WIDTH = 1200;

export async function GET(request: NextRequest) {
  // Verify cron secret to prevent unauthorized access
  const authHeader = request.headers.get("authorization");
  if (CRON_SECRET && authHeader !== `Bearer ${CRON_SECRET}`) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  if (!GOOGLE_API_KEY) {
    return NextResponse.json(
      { error: "GOOGLE_PLACES_API_KEY not configured" },
      { status: 500 }
    );
  }

  const supabase = await createClient();

  // Get venues that haven't been enriched recently (or ever)
  const { data: venues, error } = await supabase
    .from("venues")
    .select("id, name, slug, address, hero_image_url, city:cities(name, country)")
    .eq("status", "active")
    .or("last_enriched_at.is.null,last_enriched_at.lt." + new Date(Date.now() - 7 * 24 * 60 * 60 * 1000).toISOString())
    .order("last_enriched_at", { ascending: true, nullsFirst: true })
    .limit(BATCH_SIZE);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  const results = [];

  for (const venue of venues || []) {
    const city = (venue.city as any)?.name || "";
    const country = (venue.city as any)?.country || "";

    try {
      const place = await searchPlace(venue.name, city, country);
      if (!place) {
        results.push({ venue: venue.slug, status: "no_result" });
        // Still mark as enriched so we don't keep retrying
        await supabase
          .from("venues")
          .update({ last_enriched_at: new Date().toISOString() })
          .eq("id", venue.id);
        continue;
      }

      const updates: Record<string, any> = {
        last_enriched_at: new Date().toISOString(),
      };

      if (place.rating) updates.google_rating = place.rating;
      if (place.userRatingCount) updates.google_review_count = place.userRatingCount;
      if (place.internationalPhoneNumber) updates.phone_number = place.internationalPhoneNumber;
      if (place.id) updates.google_place_id = place.id;
      if (place.currentOpeningHours?.weekdayDescriptions) {
        updates.opening_hours = place.currentOpeningHours.weekdayDescriptions;
      }

      // Only update hero image if we don't have one
      if (!venue.hero_image_url && place.photos && place.photos.length > 0) {
        const imageUrl = getPhotoUrl(place.photos[0].name, MAX_PHOTO_WIDTH);
        if (imageUrl) updates.hero_image_url = imageUrl;
      }

      await supabase.from("venues").update(updates).eq("id", venue.id);

      results.push({
        venue: venue.slug,
        status: "enriched",
        fields: Object.keys(updates),
      });
    } catch (err: any) {
      results.push({
        venue: venue.slug,
        status: "error",
        error: err.message,
      });
    }

    // Small delay between API calls
    await new Promise((r) => setTimeout(r, 200));
  }

  return NextResponse.json({
    processed: results.length,
    results,
  });
}

// Google Places API helpers

interface PlaceResult {
  displayName?: { text: string };
  rating?: number;
  userRatingCount?: number;
  currentOpeningHours?: { weekdayDescriptions?: string[] };
  internationalPhoneNumber?: string;
  websiteUri?: string;
  photos?: { name: string }[];
  id?: string;
}

async function searchPlace(
  name: string,
  city: string,
  country: string
): Promise<PlaceResult | null> {
  const res = await fetch(
    "https://places.googleapis.com/v1/places:searchText",
    {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Goog-Api-Key": GOOGLE_API_KEY,
        "X-Goog-FieldMask":
          "places.id,places.displayName,places.rating,places.userRatingCount,places.currentOpeningHours,places.internationalPhoneNumber,places.websiteUri,places.photos",
      },
      body: JSON.stringify({
        textQuery: `${name} ${city} ${country}`,
        maxResultCount: 1,
      }),
    }
  );

  if (!res.ok) return null;
  const data = await res.json();
  return data.places?.[0] || null;
}

function getPhotoUrl(photoName: string, maxWidth: number): string {
  return `https://places.googleapis.com/v1/${photoName}/media?maxWidthPx=${maxWidth}&key=${GOOGLE_API_KEY}`;
}
