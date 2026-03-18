/**
 * Real venue scraper — uses the Overpass API (OpenStreetMap) to pull real
 * bars and pubs for every city in the Supabase `cities` table.
 *
 * No API key required. Free and unlimited (within fair use).
 *
 * Usage:
 *   npx tsx scripts/scrape-real-venues.ts                         # dry run — prints counts only
 *   npx tsx scripts/scrape-real-venues.ts --write                 # writes SQL to venues/real/
 *   npx tsx scripts/scrape-real-venues.ts --write --city=london   # single city
 *   npx tsx scripts/scrape-real-venues.ts --write --limit=5       # first 5 cities
 *
 * Output SQL files go to venues/real/<city-slug>.sql
 * Run them in Supabase SQL Editor AFTER running:
 *   TRUNCATE venue_leagues; TRUNCATE venues;
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

const OVERPASS_ENDPOINTS = [
  "https://overpass-api.de/api/interpreter",
  "https://overpass.kumi.systems/api/interpreter",
  "https://overpass.osm.ch/api/interpreter",
  "https://maps.mail.ru/osm/tools/overpass/api/interpreter",
];
let endpointIndex = 0;
function nextEndpoint(): string {
  const url = OVERPASS_ENDPOINTS[endpointIndex % OVERPASS_ENDPOINTS.length];
  endpointIndex++;
  return url;
}

const RADIUS_M = 12000; // search radius in metres around city centre
const MIN_VENUES = 3; // skip cities with fewer than this many results
const DELAY_MS = 1500; // delay between cities
const RETRY_DELAY_MS = 5000; // wait before trying next endpoint

// CLI args
const args = process.argv.slice(2);
const DRY_RUN = !args.includes("--write");
const cityArg = args.find((a) => a.startsWith("--city="));
const CITY_FILTER = cityArg ? cityArg.split("=")[1] : "";
const limitArg = args.find((a) => a.startsWith("--limit="));
const LIMIT = limitArg ? parseInt(limitArg.split("=")[1]) : 0;

// Output directory
const OUT_DIR = path.join(process.cwd(), "venues", "real");

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface City {
  id: string;
  name: string;
  slug: string;
  country: string;
  country_code: string;
  latitude: number;
  longitude: number;
}

interface OverpassNode {
  type: string;
  id: number;
  lat: number;
  lon: number;
  tags: Record<string, string>;
}

interface OverpassResponse {
  elements: OverpassNode[];
}

// ---------------------------------------------------------------------------
// Overpass query
// ---------------------------------------------------------------------------

async function fetchVenuesForCity(city: City): Promise<OverpassNode[]> {
  // Query for bars, pubs, and sports bars around city centre
  const query = `
[out:json][timeout:25];
(
  node["amenity"="bar"]["name"](around:${RADIUS_M},${city.latitude},${city.longitude});
  node["amenity"="pub"]["name"](around:${RADIUS_M},${city.latitude},${city.longitude});
  node["amenity"="sports_bar"]["name"](around:${RADIUS_M},${city.latitude},${city.longitude});
  way["amenity"="bar"]["name"](around:${RADIUS_M},${city.latitude},${city.longitude});
  way["amenity"="pub"]["name"](around:${RADIUS_M},${city.latitude},${city.longitude});
);
out center;
  `.trim();

  // Try each endpoint in order, falling back on error/rate-limit
  let res: Response | null = null;
  let lastError = "";
  // Start from the next endpoint in rotation, try all 4
  const startIndex = endpointIndex;
  for (let attempt = 0; attempt < OVERPASS_ENDPOINTS.length; attempt++) {
    const endpoint = OVERPASS_ENDPOINTS[(startIndex + attempt) % OVERPASS_ENDPOINTS.length];
    try {
      const r = await fetch(endpoint, {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: `data=${encodeURIComponent(query)}`,
      });
      if (r.status === 429 || r.status === 504 || r.status === 503) {
        process.stdout.write(`(${r.status} on ${new URL(endpoint).hostname}, trying next) `);
        await sleep(RETRY_DELAY_MS);
        continue;
      }
      res = r;
      endpointIndex = (startIndex + attempt + 1) % OVERPASS_ENDPOINTS.length; // advance for next city
      break;
    } catch (e: any) {
      lastError = e.message;
      process.stdout.write(`(timeout on ${new URL(endpoint).hostname}, trying next) `);
      await sleep(RETRY_DELAY_MS);
    }
  }

  if (!res || !res.ok) {
    throw new Error(`All Overpass endpoints failed. Last error: ${lastError || res?.status}`);
  }

  let data: OverpassResponse;
  try {
    data = await res.json();
  } catch {
    throw new Error("Invalid JSON response from Overpass");
  }

  // If empty result, try one more endpoint (server may have silently failed)
  if (data.elements.length === 0) {
    const fallbackEndpoint = nextEndpoint();
    try {
      const r2 = await fetch(fallbackEndpoint, {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: `data=${encodeURIComponent(query)}`,
      });
      if (r2.ok) {
        const data2: OverpassResponse = await r2.json();
        if (data2.elements.length > 0) data = data2;
      }
    } catch { /* ignore, use original empty result */ }
  }

  // Deduplicate by name (keep first occurrence)
  const seen = new Set<string>();
  const unique: OverpassNode[] = [];
  for (const el of data.elements) {
    const name = el.tags?.name?.trim();
    if (!name) continue;
    if (seen.has(name.toLowerCase())) continue;
    seen.add(name.toLowerCase());
    // Normalise way centres to node-like shape
    if (!el.lat && (el as any).center) {
      el.lat = (el as any).center.lat;
      el.lon = (el as any).center.lon;
    }
    unique.push(el);
  }

  return unique;
}

// ---------------------------------------------------------------------------
// SQL generation
// ---------------------------------------------------------------------------

function slugify(str: string): string {
  return str
    .toLowerCase()
    .replace(/[^a-z0-9\s-]/g, "")
    .trim()
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-")
    .substring(0, 60);
}

function escape(str: string): string {
  return str.replace(/'/g, "''");
}

function pickAtmosphere(tags: Record<string, string>): string {
  const n = (tags.name || "").toLowerCase();
  if (n.includes("sport") || n.includes("game") || n.includes("bar")) return "lively";
  if (n.includes("irish") || n.includes("british") || n.includes("english")) return "casual";
  if (n.includes("lounge") || n.includes("club")) return "upscale";
  return "casual";
}

function pickPriceRange(tags: Record<string, string>): string {
  const cuisine = tags.cuisine || "";
  if (cuisine.includes("fine") || (tags.name || "").toLowerCase().includes("lounge")) return "$$$";
  if ((tags.name || "").toLowerCase().includes("sports")) return "$$";
  return "$$";
}

function buildDescription(name: string, city: string, country: string, tags: Record<string, string>): string {
  const type = tags.amenity === "pub" ? "pub" : "sports bar";
  const parts: string[] = [];
  parts.push(`${name} is a popular ${type} in ${city}, ${country}.`);
  if (tags["addr:street"]) parts.push(`Located on ${tags["addr:street"]}.`);
  if (tags.sport) parts.push(`Known for showing ${tags.sport}.`);
  parts.push("Screens throughout the venue cover major international sports including football, rugby, and more.");
  return parts.join(" ");
}

function buildAddress(tags: Record<string, string>): string {
  const parts: string[] = [];
  if (tags["addr:housenumber"]) parts.push(tags["addr:housenumber"]);
  if (tags["addr:street"]) parts.push(tags["addr:street"]);
  if (tags["addr:city"]) parts.push(tags["addr:city"]);
  return parts.join(", ") || "";
}

function nodeToSQL(node: OverpassNode, city: City, usedSlugs: Set<string>): string | null {
  const name = node.tags?.name?.trim();
  if (!name) return null;

  const lat = node.lat;
  const lon = node.lon;
  if (!lat || !lon) return null;

  // Build unique slug
  let baseSlug = slugify(`${name}-${city.slug}`);
  let slug = baseSlug;
  let attempt = 2;
  while (usedSlugs.has(slug)) {
    slug = `${baseSlug}-${attempt++}`;
  }
  usedSlugs.add(slug);

  const address = escape(buildAddress(node.tags));
  const description = escape(buildDescription(name, city.name, city.country, node.tags));
  const website = node.tags.website || node.tags["contact:website"] || "";
  const websiteVal = website ? `'${escape(website)}'` : "NULL";
  const atmosphere = pickAtmosphere(node.tags);
  const price = pickPriceRange(node.tags);

  // Estimate screens from physical size hints
  const capacity = node.tags.capacity ? parseInt(node.tags.capacity) : 0;
  const screens = capacity > 200 ? 12 : capacity > 100 ? 8 : 6;

  return `INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '${escape(name)}', '${slug}', c.id, '${address}', ${lat}, ${lon}, '${description}', ${websiteVal}, 4.0, 50, ${screens}, '${atmosphere}', '${price}', true, false, false
FROM cities c WHERE c.slug = '${city.slug}'
ON CONFLICT (slug) DO NOTHING;`;
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error("ERROR: NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY (or NEXT_PUBLIC_SUPABASE_ANON_KEY) must be set.");
    process.exit(1);
  }

  const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

  console.log("\n=== WatchLocal — Real Venue Scraper (Overpass / OpenStreetMap) ===");
  console.log(`Mode: ${DRY_RUN ? "DRY RUN" : "WRITE SQL FILES"}`);
  if (CITY_FILTER) console.log(`City filter: ${CITY_FILTER}`);
  if (LIMIT) console.log(`Limit: ${LIMIT} cities`);
  console.log("");

  // Fetch cities
  let q = supabase
    .from("cities")
    .select("id, name, slug, country, country_code, latitude, longitude")
    .order("name");

  if (CITY_FILTER) q = q.eq("slug", CITY_FILTER);
  if (LIMIT) q = q.limit(LIMIT);

  const { data: cities, error } = await q;
  if (error) {
    console.error("Failed to fetch cities:", error.message);
    process.exit(1);
  }

  console.log(`Processing ${cities.length} cities...\n`);

  if (!DRY_RUN) {
    fs.mkdirSync(OUT_DIR, { recursive: true });
  }

  let totalVenues = 0;
  let citiesWithData = 0;
  let failed = 0;

  for (let i = 0; i < cities.length; i++) {
    const city = cities[i] as City;
    process.stdout.write(`[${i + 1}/${cities.length}] ${city.name} (${city.country})... `);

    try {
      const nodes = await fetchVenuesForCity(city);

      if (nodes.length < MIN_VENUES) {
        console.log(`${nodes.length} results — skipping (below minimum ${MIN_VENUES})`);
        await sleep(DELAY_MS);
        continue;
      }

      console.log(`${nodes.length} venues found`);

      if (!DRY_RUN) {
        const usedSlugs = new Set<string>();
        const inserts: string[] = [];

        for (const node of nodes) {
          const sql = nodeToSQL(node, city, usedSlugs);
          if (sql) inserts.push(sql);
        }

        if (inserts.length === 0) {
          console.log(`  -> No valid inserts generated.`);
        } else {
          const header = `-- Real venues for ${city.name}, ${city.country}\n-- Source: OpenStreetMap via Overpass API\n-- ${inserts.length} venues\n\n`;
          const sqlContent = header + inserts.join("\n") + "\n";
          const outPath = path.join(OUT_DIR, `${city.slug}.sql`);
          fs.writeFileSync(outPath, sqlContent, "utf-8");
          console.log(`  -> Written: venues/real/${city.slug}.sql (${inserts.length} inserts)`);
          totalVenues += inserts.length;
          citiesWithData++;
        }
      } else {
        totalVenues += nodes.length;
        citiesWithData++;
      }
    } catch (err: any) {
      console.log(`ERROR: ${err.message}`);
      failed++;
    }

    await sleep(DELAY_MS);
  }

  console.log(`\n=== Complete ===`);
  console.log(`Cities with data: ${citiesWithData}`);
  console.log(`Total venues:     ${totalVenues}`);
  console.log(`Failed:           ${failed}`);

  if (!DRY_RUN && citiesWithData > 0) {
    // Write a master runner SQL that truncates and sources all files
    const masterLines = [
      "-- Master real-venues runner",
      "-- Run this FIRST to clear fake data, then run each city SQL file",
      "",
      "TRUNCATE venue_leagues;",
      "TRUNCATE venues;",
      "",
      "-- Then run each file in venues/real/ in any order",
    ];
    fs.writeFileSync(path.join(OUT_DIR, "_00_truncate.sql"), masterLines.join("\n") + "\n", "utf-8");
    console.log(`\nOutput directory: venues/real/`);
    console.log(`Run _00_truncate.sql in Supabase first, then all city SQL files.`);
  }
}

function sleep(ms: number): Promise<void> {
  return new Promise((r) => setTimeout(r, ms));
}

main().catch(console.error);
