/**
 * WatchLocal — Venue Geocoder (OpenStreetMap Nominatim)
 *
 * Reads every venues/real/*.sql file produced by scrape-google-maps.ts,
 * geocodes each venue by name + address + city using the free Nominatim API
 * (no API key required), and writes the real lat/lng back into the SQL files.
 *
 * Nominatim usage policy: max 1 request/second — enforced below.
 * See: https://operations.osmfoundation.org/policies/nominatim/
 *
 * Usage:
 *   npx tsx scripts/geocode-venues.ts                 # all SQL files
 *   npx tsx scripts/geocode-venues.ts --city=london   # single file
 */

import { createClient } from "@supabase/supabase-js";
import * as fs from "fs";
import * as path from "path";

// ---------------------------------------------------------------------------
// Config
// ---------------------------------------------------------------------------

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || "";
const SUPABASE_KEY =
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ||
  "";

const SQL_DIR = path.join(process.cwd(), "venues", "real");
const NOMINATIM_BASE = "https://nominatim.openstreetmap.org/search";
const REQUEST_DELAY_MS = 1100; // Nominatim requires >= 1 req/sec
const USER_AGENT = "WatchLocal/1.0 (venue-geocoder)";

// A geocoded result must be within this many degrees of the city centre
// to be accepted (~111 km per degree — generous enough for any city boundary)
const MAX_DIST_DEG = 1.0;

const args = process.argv.slice(2);
const cityArg = args.find((a) => a.startsWith("--city="));
const CITY_FILTER = cityArg ? cityArg.split("=")[1] : "";

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function sleep(ms: number) {
  return new Promise((r) => setTimeout(r, ms));
}

function distDeg(
  lat1: number,
  lng1: number,
  lat2: number,
  lng2: number
): number {
  return Math.sqrt(Math.pow(lat1 - lat2, 2) + Math.pow(lng1 - lng2, 2));
}

// ---------------------------------------------------------------------------
// Nominatim
// ---------------------------------------------------------------------------

interface NominatimAddress {
  house_number?: string;
  road?: string;
  suburb?: string;
  quarter?: string;
  neighbourhood?: string;
  city?: string;
  town?: string;
  village?: string;
  state?: string;
  postcode?: string;
  country?: string;
}

interface NominatimResult {
  lat: string;
  lon: string;
  display_name: string;
  address: NominatimAddress;
}

interface GeocodedResult {
  lat: number;
  lng: number;
  formattedAddress: string; // clean address for display to users
}

/**
 * Build a clean, user-facing address from Nominatim address components.
 * Format: "70 Willesden Lane, London NW6 7TA"
 */
function buildFormattedAddress(addr: NominatimAddress): string {
  const parts: string[] = [];

  // Street line
  const street = [addr.house_number, addr.road].filter(Boolean).join(" ");
  if (street) parts.push(street);

  // Locality (suburb/neighbourhood if different from city)
  const locality = addr.suburb || addr.quarter || addr.neighbourhood;

  // City
  const city = addr.city || addr.town || addr.village;
  if (city && locality && locality !== city) {
    parts.push(locality);
    parts.push(city);
  } else if (city) {
    parts.push(city);
  }

  // Postcode — critical for users navigating to a venue
  if (addr.postcode) parts.push(addr.postcode);

  return parts.join(", ");
}

async function nominatimSearch(query: string): Promise<GeocodedResult | null> {
  const url = `${NOMINATIM_BASE}?q=${encodeURIComponent(query)}&format=json&limit=1&addressdetails=1`;
  try {
    const res = await fetch(url, {
      headers: {
        "User-Agent": USER_AGENT,
        "Accept-Language": "en",
      },
    });
    if (!res.ok) return null;
    const data = (await res.json()) as NominatimResult[];
    if (data.length > 0) {
      const r = data[0];
      return {
        lat: parseFloat(r.lat),
        lng: parseFloat(r.lon),
        formattedAddress: buildFormattedAddress(r.address),
      };
    }
  } catch {
    // network error — caller will fall back
  }
  return null;
}

async function geocodeVenue(
  name: string,
  address: string,
  cityName: string,
  country: string,
  cityLat: number,
  cityLng: number
): Promise<{ lat: number; lng: number; formattedAddress: string; source: string }> {
  const queries: Array<{ q: string; label: string }> = [];

  if (address) {
    queries.push({
      q: `${name}, ${address}, ${cityName}, ${country}`,
      label: "name+addr+city",
    });
  }
  queries.push({
    q: `${name}, ${cityName}, ${country}`,
    label: "name+city",
  });
  if (address) {
    queries.push({
      q: `${address}, ${cityName}, ${country}`,
      label: "addr+city",
    });
  }

  for (const { q, label } of queries) {
    const result = await nominatimSearch(q);
    await sleep(REQUEST_DELAY_MS);

    if (!result) continue;

    const dist = distDeg(result.lat, result.lng, cityLat, cityLng);
    if (dist <= MAX_DIST_DEG) {
      return {
        lat: result.lat,
        lng: result.lng,
        formattedAddress: result.formattedAddress,
        source: label,
      };
    }
  }

  return { lat: cityLat, lng: cityLng, formattedAddress: address, source: "fallback" };
}

// ---------------------------------------------------------------------------
// SQL line parsing
//
// The SELECT lines produced by scrape-google-maps.ts follow a known format:
//
//   SELECT 'name', 'slug', c.id, 'address', LAT, LNG, 'desc', ...
//
// Single quotes inside values are escaped as '' (standard SQL).
// The regexes below handle that correctly via (?:[^']|'')*.
// ---------------------------------------------------------------------------

// Quoted SQL string value, handling '' escapes: (?:[^']|'')*
const Q = `(?:[^']|'')*`;

const NAME_RE = new RegExp(`^SELECT '(${Q})'`);
const ADDR_RE = new RegExp(`^SELECT '${Q}', '${Q}', c\\.id, '(${Q})'`);

// Captures: (prefix up to c.id, ) (old address) (, LAT, LNG) (rest)
const UPDATE_RE = new RegExp(
  `^(SELECT '${Q}', '${Q}', c\\.id, )'(${Q})', (-?\\d+\\.\\d+), (-?\\d+\\.\\d+),(.*)`
);

function parseSelectLine(
  line: string
): { name: string; address: string } | null {
  const nameMatch = line.match(NAME_RE);
  if (!nameMatch) return null;
  const name = nameMatch[1].replace(/''/g, "'");

  const addrMatch = line.match(ADDR_RE);
  const address = addrMatch ? addrMatch[1].replace(/''/g, "'") : "";

  return { name, address };
}

/**
 * Replace address, lat, and lng in the SELECT line in one pass.
 * Keeps everything else (description, photo URL, rating, etc.) untouched.
 */
function updateSelectLine(
  line: string,
  newAddress: string,
  lat: number,
  lng: number
): string {
  const escaped = newAddress.replace(/'/g, "''");
  return line.replace(
    UPDATE_RE,
    (_full, prefix, _oldAddr, _oldLat, _oldLng, suffix) =>
      `${prefix}'${escaped}', ${lat}, ${lng},${suffix}`
  );
}

// ---------------------------------------------------------------------------
// File processing
// ---------------------------------------------------------------------------

interface City {
  name: string;
  slug: string;
  country: string;
  latitude: number;
  longitude: number;
}

async function processFile(
  filePath: string,
  city: City
): Promise<{ total: number; geocoded: number; fallback: number }> {
  const content = fs.readFileSync(filePath, "utf-8");
  const lines = content.split("\n");

  let total = 0;
  let geocoded = 0;
  let fallback = 0;
  const out: string[] = [];

  for (const line of lines) {
    if (!line.startsWith("SELECT ")) {
      out.push(line);
      continue;
    }

    total++;
    const parsed = parseSelectLine(line);

    if (!parsed) {
      // Couldn't parse — leave unchanged
      out.push(line);
      continue;
    }

    const { name, address } = parsed;
    process.stdout.write(`    [${total}] ${name.substring(0, 40)}... `);

    const result = await geocodeVenue(
      name,
      address,
      city.name,
      city.country,
      city.latitude,
      city.longitude
    );

    const updatedLine = updateSelectLine(
      line,
      result.formattedAddress || address,
      result.lat,
      result.lng
    );
    out.push(updatedLine);

    if (result.source === "fallback") {
      fallback++;
      process.stdout.write(`FALLBACK (city centre)\n`);
    } else {
      geocoded++;
      process.stdout.write(
        `OK → ${result.lat.toFixed(5)}, ${result.lng.toFixed(5)} | "${result.formattedAddress}"\n`
      );
    }
  }

  // Update the header comment to reflect geocoding results
  let updated = out.join("\n");
  updated = updated.replace(
    /-- Source: Google Maps via Puppeteer.*$/m,
    "-- Source: Google Maps (Puppeteer) + Nominatim geocoding"
  );
  updated = updated.replace(
    /-- \d+ with real coords, \d+ at city centre/,
    `-- ${geocoded} geocoded, ${fallback} at city centre`
  );
  updated = updated.replace(
    /-- \d+ geocoded, \d+ at city centre.*$/m,
    `-- ${geocoded} geocoded, ${fallback} at city centre`
  );

  fs.writeFileSync(filePath, updated, "utf-8");
  return { total, geocoded, fallback };
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error("ERROR: Supabase env vars not set.");
    process.exit(1);
  }

  const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

  console.log("\n=== WatchLocal — Venue Geocoder (Nominatim) ===");
  if (CITY_FILTER) console.log(`City filter: ${CITY_FILTER}`);
  console.log("");

  // Fetch all cities so we can sanity-check geocode results against city centre
  const { data: cities, error } = await supabase
    .from("cities")
    .select("name, slug, country, latitude, longitude");

  if (error) {
    console.error("Failed to fetch cities:", error.message);
    process.exit(1);
  }

  const cityMap = new Map<string, City>(cities.map((c: City) => [c.slug, c]));

  // Discover SQL files
  const files = fs
    .readdirSync(SQL_DIR)
    .filter(
      (f) =>
        f.endsWith(".sql") &&
        f !== "_00_truncate.sql" &&
        (!CITY_FILTER || f === `${CITY_FILTER}.sql`)
    )
    .sort();

  if (files.length === 0) {
    console.log("No SQL files found. Run scrape-google-maps.ts first.");
    process.exit(0);
  }

  console.log(`Found ${files.length} file(s) to geocode.\n`);

  let totalVenues = 0;
  let totalGeocoded = 0;
  let totalFallback = 0;
  let skipped = 0;

  for (const file of files) {
    const citySlug = file.replace(".sql", "");
    const city = cityMap.get(citySlug);

    if (!city) {
      console.log(`[SKIP] ${file} — city not in Supabase`);
      skipped++;
      continue;
    }

    console.log(`\n${city.name} (${city.country}):`);

    try {
      const stats = await processFile(path.join(SQL_DIR, file), city);
      totalVenues += stats.total;
      totalGeocoded += stats.geocoded;
      totalFallback += stats.fallback;
      console.log(
        `  → ${stats.geocoded}/${stats.total} geocoded, ${stats.fallback} fallback`
      );
    } catch (err: any) {
      console.log(`  ERROR: ${err.message}`);
    }
  }

  const pct =
    totalVenues > 0 ? Math.round((totalGeocoded / totalVenues) * 100) : 0;

  console.log(`\n=== Complete ===`);
  console.log(`Files processed:  ${files.length - skipped}`);
  console.log(`Total venues:     ${totalVenues}`);
  console.log(`Geocoded:         ${totalGeocoded} (${pct}%)`);
  console.log(`Fallback:         ${totalFallback}`);
}

main().catch(console.error);
