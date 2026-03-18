/**
 * WatchLocal — Real Venue Loader
 *
 * Reads all venues/real/*.sql files (scraped Google Maps data) and
 * upserts the venues into Supabase using the service role key.
 *
 * Does NOT need a direct Postgres connection — uses @supabase/supabase-js.
 *
 * Usage:
 *   npx tsx scripts/load-real-venues.ts                   # all cities
 *   npx tsx scripts/load-real-venues.ts --city=london     # single city
 *   npx tsx scripts/load-real-venues.ts --dry-run         # preview only
 */

import * as fs from "fs";
import * as path from "path";
import { createClient } from "@supabase/supabase-js";

// ---------------------------------------------------------------------------
// Config
// ---------------------------------------------------------------------------

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY!;

if (!SUPABASE_URL || !SERVICE_KEY) {
  console.error("Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY");
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SERVICE_KEY);

const SQL_DIR = path.join(process.cwd(), "venues", "real");
const BATCH_SIZE = 100;

const args = process.argv.slice(2);
const cityArg = args.find((a) => a.startsWith("--city="));
const CITY_FILTER = cityArg ? cityArg.split("=")[1] : "";
const DRY_RUN = args.includes("--dry-run");

// ---------------------------------------------------------------------------
// SQL parser — handles escaped single quotes ('')
// ---------------------------------------------------------------------------

/**
 * Parse a PostgreSQL VALUES list into an array of JS values.
 * Handles: 'string with ''escaped'' quotes', NULL, 123.45, true/false
 */
function parseSqlValues(valStr: string): (string | number | boolean | null)[] {
  const values: (string | number | boolean | null)[] = [];
  let i = 0;

  while (i < valStr.length) {
    // Skip leading whitespace and commas
    while (i < valStr.length && (valStr[i] === " " || valStr[i] === "\t" || valStr[i] === ",")) {
      i++;
    }
    if (i >= valStr.length) break;

    if (valStr[i] === "'") {
      // String literal — handle '' as escaped quote
      i++; // skip opening quote
      let s = "";
      while (i < valStr.length) {
        if (valStr[i] === "'" && valStr[i + 1] === "'") {
          s += "'";
          i += 2;
        } else if (valStr[i] === "'") {
          i++; // closing quote
          break;
        } else {
          s += valStr[i++];
        }
      }
      values.push(s);
    } else if (valStr.slice(i, i + 4).toUpperCase() === "NULL") {
      values.push(null);
      i += 4;
    } else if (valStr.slice(i, i + 4) === "true") {
      values.push(true);
      i += 4;
    } else if (valStr.slice(i, i + 5) === "false") {
      values.push(false);
      i += 5;
    } else if (valStr[i] === "c" && valStr.slice(i, i + 4) === "c.id") {
      // Placeholder for city_id — will be resolved later
      values.push("__CITY_ID__");
      i += 4;
    } else {
      // Number
      let num = "";
      while (i < valStr.length && valStr[i] !== "," && valStr[i] !== " " && valStr[i] !== "\n") {
        num += valStr[i++];
      }
      const parsed = Number(num);
      values.push(isNaN(parsed) ? num : parsed);
    }
  }

  return values;
}

interface VenueRow {
  name: string;
  slug: string;
  city_id: string;
  address: string | null;
  latitude: number | null;
  longitude: number | null;
  description: string | null;
  website_url: string | null;
  hero_image_url: string | null;
  google_rating: number | null;
  google_review_count: number | null;
  number_of_screens: number | null;
  atmosphere: string | null;
  price_range: string | null;
  has_food: boolean;
  has_outdoor_area: boolean;
  is_verified: boolean;
}

const COLUMNS = [
  "name",
  "slug",
  "city_id",
  "address",
  "latitude",
  "longitude",
  "description",
  "website_url",
  "hero_image_url",
  "google_rating",
  "google_review_count",
  "number_of_screens",
  "atmosphere",
  "price_range",
  "has_food",
  "has_outdoor_area",
  "is_verified",
] as const;

/**
 * Parse a single SQL file and return venue objects (city_id as placeholder).
 */
function parseSqlFile(filePath: string): Omit<VenueRow, "city_id"> & { city_id: string | null }[] {
  const content = fs.readFileSync(filePath, "utf-8");
  const venues: (Omit<VenueRow, "city_id"> & { city_id: string | null })[] = [];

  // Match each INSERT...SELECT...FROM block
  // Pattern: SELECT <values> FROM cities c WHERE c.slug = '...'
  const insertRegex =
    /INSERT INTO venues \([^)]+\)\s*SELECT\s+([\s\S]+?)\s*FROM cities c WHERE c\.slug\s*=\s*'[^']+'\s*(?:ON CONFLICT[^;]*)?\s*;/gi;

  let match: RegExpExecArray | null;
  while ((match = insertRegex.exec(content)) !== null) {
    const valuesPart = match[1].trim();
    const values = parseSqlValues(valuesPart);

    if (values.length !== COLUMNS.length) {
      console.warn(
        `  Warning: Expected ${COLUMNS.length} values, got ${values.length} in ${path.basename(filePath)}`
      );
      continue;
    }

    const row: Record<string, unknown> = {};
    COLUMNS.forEach((col, idx) => {
      row[col] = values[idx] === "__CITY_ID__" ? null : values[idx];
    });

    venues.push(row as Omit<VenueRow, "city_id"> & { city_id: number | null });
  }

  return venues;
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log(`\nWatchLocal Real Venue Loader`);
  console.log(`URL: ${SUPABASE_URL}`);
  console.log(`Dry run: ${DRY_RUN}`);
  console.log(`City filter: ${CITY_FILTER || "(all)"}\n`);

  // Step 1: Fetch all cities to build slug → id map (paginate past 1000 limit)
  console.log("Fetching city index from Supabase...");
  const cityMap = new Map<string, string>();
  let from = 0;
  const PAGE = 1000;
  while (true) {
    const { data: page, error: citiesErr } = await supabase
      .from("cities")
      .select("id, slug")
      .range(from, from + PAGE - 1)
      .order("slug");

    if (citiesErr) {
      console.error("Failed to fetch cities:", citiesErr.message);
      process.exit(1);
    }
    if (!page || page.length === 0) break;
    page.forEach((c) => cityMap.set(c.slug, c.id));
    if (page.length < PAGE) break;
    from += PAGE;
  }
  console.log(`Loaded ${cityMap.size} cities.\n`);

  // Step 2: Process each SQL file
  const files = fs
    .readdirSync(SQL_DIR)
    .filter((f) => f.endsWith(".sql") && !f.startsWith("_"))
    .filter((f) => !CITY_FILTER || f === `${CITY_FILTER}.sql`)
    .sort();

  let totalLoaded = 0;
  let totalSkipped = 0;
  let totalErrors = 0;

  for (const file of files) {
    const citySlug = path.basename(file, ".sql");
    const cityId = cityMap.get(citySlug);

    const filePath = path.join(SQL_DIR, file);
    const parsed = parseSqlFile(filePath);

    if (parsed.length === 0) {
      continue;
    }

    if (!cityId) {
      console.warn(`  ⚠ City "${citySlug}" not found in DB — skipping ${parsed.length} venues`);
      totalSkipped += parsed.length;
      continue;
    }

    // Resolve city_id (UUID from DB)
    const venues: VenueRow[] = parsed.map((v) => ({ ...v, city_id: cityId as string }));

    if (DRY_RUN) {
      console.log(`  [dry] ${citySlug}: ${venues.length} venues (city_id=${cityId})`);
      totalLoaded += venues.length;
      continue;
    }

    // Batch upsert
    for (let i = 0; i < venues.length; i += BATCH_SIZE) {
      const batch = venues.slice(i, i + BATCH_SIZE);
      const { error } = await supabase
        .from("venues")
        .upsert(batch, { onConflict: "slug", ignoreDuplicates: true });

      if (error) {
        console.error(`  ✗ ${citySlug} batch ${i / BATCH_SIZE + 1}: ${error.message}`);
        totalErrors++;
      } else {
        totalLoaded += batch.length;
      }
    }

    process.stdout.write(`  ✓ ${citySlug}: ${venues.length} venues\n`);
  }

  console.log(`\n--- Summary ---`);
  console.log(`Loaded:  ${totalLoaded}`);
  console.log(`Skipped: ${totalSkipped} (city not in DB)`);
  console.log(`Errors:  ${totalErrors}`);
}

main().catch(console.error);
