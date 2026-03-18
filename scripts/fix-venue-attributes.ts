/**
 * WatchLocal — Venue Attribute Fixer
 *
 * The scraper's has_food detection relied on Google Maps' "About" tab loading
 * in the page evaluate — but that tab requires a separate click, so scopedText
 * was always empty and has_food was always false.
 *
 * This script fixes all existing SQL files by inferring has_food from the venue
 * category that IS correctly embedded in every description line, e.g.:
 *   "The Tavern is a gastropub in London" → has_food = true
 *   "Ringside is a sports bar in London"  → has_food = false
 *
 * has_outdoor_area is re-derived from whether the description contains
 * "Outdoor area available." — which the scraper already appended correctly
 * when it detected outdoor seating.
 *
 * Safe to re-run: idempotent.
 *
 * Usage:
 *   npx tsx scripts/fix-venue-attributes.ts              # all files
 *   npx tsx scripts/fix-venue-attributes.ts --city=london
 */

import * as fs from "fs";
import * as path from "path";

const SQL_DIR = path.join(process.cwd(), "venues", "real");

const args = process.argv.slice(2);
const cityArg = args.find((a) => a.startsWith("--city="));
const CITY_FILTER = cityArg ? cityArg.split("=")[1] : "";

// ---------------------------------------------------------------------------
// Inference logic — must match scrape-google-maps.ts exactly
// ---------------------------------------------------------------------------

function inferHasFood(category: string | null): boolean {
  if (!category) return false;
  const c = category.toLowerCase();
  return /restaurant|grill|eatery|bistro|kitchen|diner|caf[eé]|gastropub|bar & grill|brasserie|tavern|pub/.test(c);
}

// ---------------------------------------------------------------------------
// Parse category from description text already embedded in the SQL line.
// Description format: "VenueName is a CATEGORY in CityName, Country. Rated..."
// ---------------------------------------------------------------------------

function extractCategory(descriptionText: string): string | null {
  const m = descriptionText.match(/\bis a ([\w\s,&]+?) in [A-Z]/);
  return m ? m[1].trim() : null;
}

// ---------------------------------------------------------------------------
// Fix a single SELECT line
// ---------------------------------------------------------------------------

function fixLine(line: string): string {
  if (!line.startsWith("SELECT ")) return line;

  // Extract the description field (7th value, after name/slug/c.id/addr/lat/lng)
  // The description is always a quoted SQL string — we look for the category
  // pattern inside it rather than parsing field-by-field.
  const category = extractCategory(line);
  const hasFood = inferHasFood(category);

  // has_outdoor_area: the scraper appended "Outdoor area available." in the
  // description when it detected outdoor seating. Re-derive from that.
  const hasOutdoor = /Outdoor area available/i.test(line);

  // The last three boolean fields in every SELECT line are:
  //   has_food, has_outdoor_area, is_verified
  // is_verified is always false. Replace whatever values are currently there.
  return line.replace(
    /, (true|false), (true|false), false(\n?)$/,
    `, ${hasFood}, ${hasOutdoor}, false$3`
  );
}

// ---------------------------------------------------------------------------
// Process one file
// ---------------------------------------------------------------------------

function processFile(filePath: string): { total: number; changed: number } {
  const content = fs.readFileSync(filePath, "utf-8");
  const lines = content.split("\n");

  let total = 0;
  let changed = 0;

  const out = lines.map((line) => {
    if (!line.startsWith("SELECT ")) return line;
    total++;
    const fixed = fixLine(line);
    if (fixed !== line) changed++;
    return fixed;
  });

  fs.writeFileSync(filePath, out.join("\n"), "utf-8");
  return { total, changed };
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

function main() {
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
    console.log("No SQL files found.");
    process.exit(0);
  }

  console.log(`\n=== WatchLocal — Venue Attribute Fixer ===`);
  console.log(`Files: ${files.length}\n`);

  let totalVenues = 0;
  let totalChanged = 0;

  for (const file of files) {
    const filePath = path.join(SQL_DIR, file);
    const { total, changed } = processFile(filePath);
    totalVenues += total;
    totalChanged += changed;

    const city = file.replace(".sql", "");
    console.log(`  ${city}: ${changed}/${total} lines updated`);
  }

  console.log(`\n=== Complete ===`);
  console.log(`Total venues:  ${totalVenues}`);
  console.log(`has_food fixed: ${totalChanged}`);
}

main();
