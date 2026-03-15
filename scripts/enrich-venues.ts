/**
 * Venue enrichment script — fetches images, ratings, phone numbers, and
 * opening hours from the Google Places API and updates Supabase.
 *
 * Usage:
 *   npx tsx scripts/enrich-venues.ts                     # dry run (default)
 *   npx tsx scripts/enrich-venues.ts --write              # write to database
 *   npx tsx scripts/enrich-venues.ts --write --limit=10   # process 10 venues
 *   npx tsx scripts/enrich-venues.ts --write --venue=slug  # single venue
 *
 * Requires environment variables:
 *   GOOGLE_PLACES_API_KEY   — Google Cloud API key with Places API enabled
 *   NEXT_PUBLIC_SUPABASE_URL
 *   NEXT_PUBLIC_SUPABASE_ANON_KEY  (or SUPABASE_SERVICE_ROLE_KEY for writes)
 */

import { createClient } from "@supabase/supabase-js";

// ---------------------------------------------------------------------------
// Config
// ---------------------------------------------------------------------------

const GOOGLE_API_KEY = process.env.GOOGLE_PLACES_API_KEY || "";
const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || "";
const SUPABASE_KEY =
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ||
  "";

const DELAY_MS = 200; // delay between API calls to stay well under rate limits
const MAX_PHOTO_WIDTH = 1200;

// ---------------------------------------------------------------------------
// CLI args
// ---------------------------------------------------------------------------

const args = process.argv.slice(2);
const DRY_RUN = !args.includes("--write");
const limitArg = args.find((a) => a.startsWith("--limit="));
const LIMIT = limitArg ? parseInt(limitArg.split("=")[1]) : 0;
const venueArg = args.find((a) => a.startsWith("--venue="));
const VENUE_SLUG = venueArg ? venueArg.split("=")[1] : "";

// ---------------------------------------------------------------------------
// Supabase client
// ---------------------------------------------------------------------------

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

// ---------------------------------------------------------------------------
// Google Places helpers (New Places API)
// ---------------------------------------------------------------------------

interface PlaceResult {
  displayName?: { text: string };
  formattedAddress?: string;
  rating?: number;
  userRatingCount?: number;
  currentOpeningHours?: {
    weekdayDescriptions?: string[];
    periods?: any[];
  };
  internationalPhoneNumber?: string;
  websiteUri?: string;
  photos?: { name: string; widthPx: number; heightPx: number }[];
  id?: string;
}

async function searchPlace(
  venueName: string,
  address: string,
  city: string,
  country: string
): Promise<PlaceResult | null> {
  const query = `${venueName} ${city} ${country}`;

  const res = await fetch(
    "https://places.googleapis.com/v1/places:searchText",
    {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Goog-Api-Key": GOOGLE_API_KEY,
        "X-Goog-FieldMask":
          "places.id,places.displayName,places.formattedAddress,places.rating,places.userRatingCount,places.currentOpeningHours,places.internationalPhoneNumber,places.websiteUri,places.photos",
      },
      body: JSON.stringify({
        textQuery: query,
        maxResultCount: 1,
      }),
    }
  );

  if (!res.ok) {
    const text = await res.text();
    console.error(`  Google API error (${res.status}): ${text}`);
    return null;
  }

  const data = await res.json();
  return data.places?.[0] || null;
}

function getPhotoUrl(photoName: string, maxWidth: number): string {
  return `https://places.googleapis.com/v1/${photoName}/media?maxWidthPx=${maxWidth}&key=${GOOGLE_API_KEY}`;
}

async function downloadPhoto(photoName: string): Promise<string | null> {
  const url = getPhotoUrl(photoName, MAX_PHOTO_WIDTH);
  try {
    const res = await fetch(url, { redirect: "follow" });
    if (!res.ok) return null;
    // The API returns a redirect to the actual image URL
    // We just want the final URL for storage
    return res.url || url;
  } catch {
    return null;
  }
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  if (!GOOGLE_API_KEY) {
    console.error("ERROR: GOOGLE_PLACES_API_KEY is not set.");
    console.log("Set it with: export GOOGLE_PLACES_API_KEY=your_key_here");
    process.exit(1);
  }
  if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error("ERROR: Supabase credentials not set.");
    process.exit(1);
  }

  console.log(`\n=== WatchLocal Venue Enrichment ===`);
  console.log(`Mode: ${DRY_RUN ? "DRY RUN (no writes)" : "WRITE MODE"}`);
  console.log(`Limit: ${LIMIT || "all"}`);
  if (VENUE_SLUG) console.log(`Venue filter: ${VENUE_SLUG}`);
  console.log("");

  // Fetch venues to enrich
  let query = supabase
    .from("venues")
    .select("id, name, slug, address, city:cities(name, country)")
    .eq("status", "active")
    .order("updated_at", { ascending: true }); // oldest first

  if (VENUE_SLUG) {
    query = query.eq("slug", VENUE_SLUG);
  }
  if (LIMIT > 0) {
    query = query.limit(LIMIT);
  }

  const { data: venues, error } = await query;

  if (error) {
    console.error("Failed to fetch venues:", error.message);
    process.exit(1);
  }

  console.log(`Found ${venues.length} venues to process.\n`);

  let enriched = 0;
  let skipped = 0;
  let failed = 0;

  for (const venue of venues) {
    const city = (venue.city as any)?.name || "";
    const country = (venue.city as any)?.country || "";
    console.log(`[${enriched + skipped + failed + 1}/${venues.length}] ${venue.name} (${city})`);

    // Search Google Places
    const place = await searchPlace(
      venue.name,
      venue.address || "",
      city,
      country
    );

    if (!place) {
      console.log("  -> No Google Places result found. Skipping.");
      skipped++;
      await sleep(DELAY_MS);
      continue;
    }

    console.log(`  Found: ${place.displayName?.text || "?"}`);
    console.log(`  Rating: ${place.rating || "N/A"} (${place.userRatingCount || 0} reviews)`);
    console.log(`  Phone: ${place.internationalPhoneNumber || "N/A"}`);
    console.log(`  Website: ${place.websiteUri || "N/A"}`);
    console.log(
      `  Hours: ${place.currentOpeningHours?.weekdayDescriptions ? "Yes" : "No"}`
    );
    console.log(`  Photos: ${place.photos?.length || 0}`);

    // Get hero image URL
    let heroImageUrl: string | null = null;
    if (place.photos && place.photos.length > 0) {
      heroImageUrl = await downloadPhoto(place.photos[0].name);
      if (heroImageUrl) {
        console.log(`  Image URL: ${heroImageUrl.substring(0, 80)}...`);
      }
    }

    // Build update payload
    const updates: Record<string, any> = {};
    if (place.rating) updates.google_rating = place.rating;
    if (place.userRatingCount) updates.google_review_count = place.userRatingCount;
    if (place.internationalPhoneNumber) updates.phone_number = place.internationalPhoneNumber;
    if (place.websiteUri) updates.website_url = place.websiteUri;
    if (heroImageUrl) updates.hero_image_url = heroImageUrl;
    if (place.id) updates.google_place_id = place.id;
    if (place.currentOpeningHours?.weekdayDescriptions) {
      updates.opening_hours = place.currentOpeningHours.weekdayDescriptions;
    }
    updates.last_enriched_at = new Date().toISOString();

    if (Object.keys(updates).length <= 1) {
      // Only last_enriched_at — nothing useful
      console.log("  -> No new data to update. Skipping.");
      skipped++;
      await sleep(DELAY_MS);
      continue;
    }

    if (DRY_RUN) {
      console.log(`  -> DRY RUN: Would update:`, Object.keys(updates).join(", "));
      enriched++;
    } else {
      const { error: updateError } = await supabase
        .from("venues")
        .update(updates)
        .eq("id", venue.id);

      if (updateError) {
        console.error(`  -> UPDATE FAILED: ${updateError.message}`);
        failed++;
      } else {
        console.log(`  -> Updated: ${Object.keys(updates).join(", ")}`);
        enriched++;
      }
    }

    await sleep(DELAY_MS);
  }

  console.log(`\n=== Complete ===`);
  console.log(`Enriched: ${enriched}`);
  console.log(`Skipped:  ${skipped}`);
  console.log(`Failed:   ${failed}`);
  console.log(`Total:    ${venues.length}`);
}

function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

main().catch(console.error);
