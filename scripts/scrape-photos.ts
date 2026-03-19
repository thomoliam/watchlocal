/**
 * WatchLocal — Photo Scraper
 *
 * For every venue in the DB that has no hero_image_url, searches Google Maps
 * by name + city, visits the listing, and extracts the hero photo URL.
 * Updates the DB directly (no SQL files).
 *
 * Usage:
 *   npx tsx scripts/scrape-photos.ts                 # all venues without photos
 *   npx tsx scripts/scrape-photos.ts --city=bangkok  # one city
 *   npx tsx scripts/scrape-photos.ts --limit=50      # first N venues
 *   npx tsx scripts/scrape-photos.ts --concurrency=3 # parallel tabs (default 2)
 *
 * Priority: featured cities first, then highest google_rating, then all others.
 */

import puppeteer, { Browser, Page } from "puppeteer";
import { createClient } from "@supabase/supabase-js";

// ---------------------------------------------------------------------------
// Config
// ---------------------------------------------------------------------------

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || "";
const SUPABASE_KEY =
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ||
  "";

const FEATURED_CITIES = [
  "bangkok", "bali", "london", "dubai", "sydney", "barcelona",
  "new-york", "singapore", "ho-chi-minh-city", "melbourne",
  "amsterdam", "tokyo", "paris", "bali", "phuket", "chiang-mai",
  "da-nang", "hanoi", "kuala-lumpur", "hong-kong", "seoul",
];

const DELAY_MS = 3000;        // between requests per tab
const MAX_RETRIES = 2;
const BATCH_SIZE = 200;       // fetch from DB at a time

const args = process.argv.slice(2);
const cityArg = args.find((a) => a.startsWith("--city="));
const CITY_FILTER = cityArg ? cityArg.split("=")[1] : "";
const limitArg = args.find((a) => a.startsWith("--limit="));
const LIMIT = limitArg ? parseInt(limitArg.split("=")[1]) : 0;
const concurrencyArg = args.find((a) => a.startsWith("--concurrency="));
const CONCURRENCY = concurrencyArg ? parseInt(concurrencyArg.split("=")[1]) : 2;

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface VenueRow {
  id: string;
  name: string;
  slug: string;
  city_name: string;
  city_slug: string;
  country: string;
  google_rating: number | null;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function sleep(ms: number) {
  return new Promise((r) => setTimeout(r, ms));
}

function mapsSearchUrl(name: string, city: string, country: string): string {
  const q = encodeURIComponent(`${name} ${city} ${country}`);
  return `https://www.google.com/maps/search/${q}`;
}

// ---------------------------------------------------------------------------
// Supabase
// ---------------------------------------------------------------------------

async function fetchVenuesWithoutPhotos(sb: ReturnType<typeof createClient>): Promise<VenueRow[]> {
  const allVenues: VenueRow[] = [];
  let offset = 0;

  while (true) {
    let query = sb
      .from("venues")
      .select("id, name, slug, google_rating, cities!inner(name, slug, country)")
      .is("hero_image_url", null)
      .not("google_rating", "is", null) // only real venues
      .order("google_rating", { ascending: false })
      .range(offset, offset + BATCH_SIZE - 1);

    if (CITY_FILTER) {
      query = query.eq("cities.slug", CITY_FILTER);
    }

    const { data, error } = await query;
    if (error) throw error;
    if (!data || data.length === 0) break;

    for (const row of data) {
      const city = (row as any).cities;
      allVenues.push({
        id: row.id,
        name: row.name,
        slug: row.slug,
        google_rating: row.google_rating,
        city_name: city.name,
        city_slug: city.slug,
        country: city.country,
      });
    }

    offset += BATCH_SIZE;
    if (data.length < BATCH_SIZE) break;
  }

  // Sort: featured cities first (by their FEATURED_CITIES order), then rating
  allVenues.sort((a, b) => {
    const aFeatured = FEATURED_CITIES.indexOf(a.city_slug);
    const bFeatured = FEATURED_CITIES.indexOf(b.city_slug);
    if (aFeatured !== -1 && bFeatured === -1) return -1;
    if (bFeatured !== -1 && aFeatured === -1) return 1;
    if (aFeatured !== -1 && bFeatured !== -1) return aFeatured - bFeatured;
    return (b.google_rating ?? 0) - (a.google_rating ?? 0);
  });

  return LIMIT > 0 ? allVenues.slice(0, LIMIT) : allVenues;
}

async function updateVenuePhoto(
  sb: ReturnType<typeof createClient>,
  venueId: string,
  photoUrl: string
): Promise<void> {
  const { error } = await sb
    .from("venues")
    .update({ hero_image_url: photoUrl })
    .eq("id", venueId);
  if (error) throw error;
}

// ---------------------------------------------------------------------------
// Photo extraction
// ---------------------------------------------------------------------------

async function extractPhotoFromPage(page: Page): Promise<string | null> {
  return page.evaluate(() => {
    // Hero button image (most reliable)
    const heroBtn = document.querySelector('button[jsaction*="pane.heroHeaderImage"]');
    const heroImg = heroBtn?.querySelector("img") as HTMLImageElement | null;
    if (heroImg?.src && heroImg.src.includes("googleusercontent")) {
      return heroImg.src.replace(/=w\d+-h\d+-[^"']*$/, "=w1200-h800-k-no");
    }

    // Fallback: any googleusercontent image in the top photo strip
    const allImgs = Array.from(document.querySelectorAll("img")) as HTMLImageElement[];
    for (const img of allImgs) {
      if (
        img.src &&
        img.src.includes("googleusercontent") &&
        img.src.includes("AF1Qip") // real place photo indicator
      ) {
        return img.src.replace(/=w\d+-h\d+-[^"']*$/, "=w1200-h800-k-no");
      }
    }

    return null;
  });
}

async function scrapePhotoForVenue(
  page: Page,
  venue: VenueRow
): Promise<string | null> {
  const searchUrl = mapsSearchUrl(venue.name, venue.city_name, venue.country);

  for (let attempt = 1; attempt <= MAX_RETRIES; attempt++) {
    try {
      await page.goto(searchUrl, { waitUntil: "domcontentloaded", timeout: 25000 });
      await sleep(2000);

      // If we landed on a single result page, extract photo directly
      const currentUrl = page.url();
      if (currentUrl.includes("/maps/place/")) {
        await sleep(1500);
        const photo = await extractPhotoFromPage(page);
        if (photo) return photo;
      }

      // If we're on a search results list, click the first result
      try {
        await page.waitForSelector('[role="feed"] > div a', { timeout: 5000 });
        const firstResult = await page.$('[role="feed"] > div a[href*="/maps/place/"]');
        if (firstResult) {
          const href = await page.evaluate((el) => (el as HTMLAnchorElement).href, firstResult);
          await page.goto(href, { waitUntil: "domcontentloaded", timeout: 20000 });
          await sleep(2000);
          const photo = await extractPhotoFromPage(page);
          if (photo) return photo;
        }
      } catch {
        // no feed found — might be a direct place page
      }

      // Try to extract from wherever we ended up
      const photo = await extractPhotoFromPage(page);
      if (photo) return photo;

    } catch (err) {
      if (attempt < MAX_RETRIES) {
        await sleep(3000);
      }
    }
  }

  return null;
}

// ---------------------------------------------------------------------------
// Worker
// ---------------------------------------------------------------------------

async function runWorker(
  browser: Browser,
  venues: VenueRow[],
  sb: ReturnType<typeof createClient>,
  workerId: number,
  stats: { found: number; failed: number; done: number; total: number }
): Promise<void> {
  const page = await browser.newPage();
  await page.setUserAgent(
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
  );
  // Accept cookies consent if it appears
  page.on("dialog", (dialog) => dialog.dismiss().catch(() => {}));

  for (const venue of venues) {
    stats.done++;
    const progress = `[${stats.done}/${stats.total}]`;

    try {
      const photo = await scrapePhotoForVenue(page, venue);

      if (photo) {
        await updateVenuePhoto(sb, venue.id, photo);
        stats.found++;
        console.log(`✅ ${progress} W${workerId} ${venue.name} (${venue.city_name})`);
      } else {
        stats.failed++;
        console.log(`⬜ ${progress} W${workerId} no photo: ${venue.name} (${venue.city_name})`);
      }
    } catch (err) {
      stats.failed++;
      console.log(`❌ ${progress} W${workerId} error: ${venue.name} — ${err}`);
    }

    await sleep(DELAY_MS);
  }

  await page.close();
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error("Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY");
    process.exit(1);
  }

  const sb = createClient(SUPABASE_URL, SUPABASE_KEY);

  console.log("📸 WatchLocal Photo Scraper");
  console.log(`   City filter: ${CITY_FILTER || "all"}`);
  console.log(`   Concurrency: ${CONCURRENCY} tabs`);
  console.log(`   Limit: ${LIMIT || "none"}`);
  console.log("");
  console.log("Fetching venues without photos...");

  const venues = await fetchVenuesWithoutPhotos(sb);

  if (venues.length === 0) {
    console.log("No venues without photos found.");
    return;
  }

  console.log(`Found ${venues.length} venues to process.\n`);

  const browser = await puppeteer.launch({
    headless: true,
    args: ["--no-sandbox", "--disable-setuid-sandbox", "--lang=en-US"],
  });

  // Split venues across workers
  const chunks: VenueRow[][] = Array.from({ length: CONCURRENCY }, () => []);
  venues.forEach((v, i) => chunks[i % CONCURRENCY].push(v));

  const stats = { found: 0, failed: 0, done: 0, total: venues.length };

  const start = Date.now();

  try {
    await Promise.all(
      chunks.map((chunk, i) => runWorker(browser, chunk, sb, i + 1, stats))
    );
  } finally {
    await browser.close();
  }

  const elapsed = Math.round((Date.now() - start) / 1000);
  console.log(`\n=== Complete ===`);
  console.log(`Photos found:  ${stats.found}`);
  console.log(`No photo:      ${stats.failed}`);
  console.log(`Success rate:  ${Math.round((stats.found / stats.total) * 100)}%`);
  console.log(`Time:          ${elapsed}s`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
