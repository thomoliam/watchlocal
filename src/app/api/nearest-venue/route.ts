import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

function haversineKm(
  lat1: number,
  lon1: number,
  lat2: number,
  lon2: number
): number {
  const toRad = (deg: number) => (deg * Math.PI) / 180;
  const dLat = toRad(lat2 - lat1);
  const dLon = toRad(lon2 - lon1);
  const a =
    Math.sin(dLat / 2) ** 2 +
    Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) * Math.sin(dLon / 2) ** 2;
  return 6371 * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
}

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const latParam = searchParams.get("lat");
  const lngParam = searchParams.get("lng");

  if (!latParam || !lngParam) {
    return NextResponse.json(
      { error: "lat and lng query parameters are required" },
      { status: 400 }
    );
  }

  const lat = parseFloat(latParam);
  const lng = parseFloat(lngParam);

  if (isNaN(lat) || isNaN(lng)) {
    return NextResponse.json(
      { error: "lat and lng must be valid numbers" },
      { status: 400 }
    );
  }

  const supabase = await createClient();

  const delta = 1.0; // ~100 km bounding box
  const { data, error } = await supabase
    .from("venues")
    .select(
      `
      id,
      name,
      slug,
      address,
      latitude,
      longitude,
      atmosphere,
      number_of_screens,
      google_rating,
      price_range,
      city:cities(name, slug)
    `
    )
    .eq("status", "active")
    .gte("latitude", lat - delta)
    .lte("latitude", lat + delta)
    .gte("longitude", lng - delta)
    .lte("longitude", lng + delta)
    .limit(50);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  if (!data || data.length === 0) {
    return NextResponse.json(
      { error: "No venues found nearby" },
      { status: 404 }
    );
  }

  // Sort by haversine distance in JS and pick the closest
  const withDistance = data
    .filter((v) => v.latitude != null && v.longitude != null)
    .map((v) => ({
      ...v,
      distance_km:
        Math.round(haversineKm(lat, lng, v.latitude!, v.longitude!) * 10) / 10,
    }));

  withDistance.sort((a, b) => a.distance_km - b.distance_km);

  const nearest = withDistance[0];

  if (!nearest) {
    return NextResponse.json(
      { error: "No venues found nearby" },
      { status: 404 }
    );
  }

  return NextResponse.json({ venue: nearest });
}
