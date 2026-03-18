/**
 * WatchLocal — Google Maps Venue Scraper v3 (Puppeteer)
 *
 * v3 fixes over v2:
 *  - coords: extracted from anchor href in list view (!3d / !4d data param)
 *    — no more relying on URL navigation timing
 *  - navigation: page.goto(placeHref) instead of clicking DOM elements
 *    — eliminates the need for goBack() and feed re-scroll
 *  - photo: targets the hero button image specifically, not any googleusercontent img
 *  - has_food/has_outdoor: scoped to the About section, not full body text
 *  - category: broadened selector fallbacks
 *
 * Usage:
 *   npx tsx scripts/scrape-google-maps.ts --write               # all cities
 *   npx tsx scripts/scrape-google-maps.ts --write --city=london # one city
 *   npx tsx scripts/scrape-google-maps.ts --write --limit=10    # first N
 *   npx tsx scripts/scrape-google-maps.ts --city=london         # dry run
 */

import puppeteer, { Browser, Page } from "puppeteer";
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

const OUT_DIR = path.join(process.cwd(), "venues", "real");
const DELAY_BETWEEN_CITIES_MS = 2000;
const MIN_VENUES = 3;
const MAX_VENUES_PER_CITY = 20;

const args = process.argv.slice(2);
const DRY_RUN = !args.includes("--write");
const SKIP_EXISTING = args.includes("--skip-existing");
const cityArg = args.find((a) => a.startsWith("--city="));
const CITY_FILTER = cityArg ? cityArg.split("=")[1] : "";
const limitArg = args.find((a) => a.startsWith("--limit="));
const LIMIT = limitArg ? parseInt(limitArg.split("=")[1]) : 0;

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

interface ListVenue {
  name: string;
  address: string;
  rating: number | null;
  reviewCount: number | null;
  priceLevel: string | null;
  placeHref: string | null; // full /maps/place/... URL from the anchor tag
  lat: number | null;       // extracted from placeHref data param
  lng: number | null;
}

interface ScrapedVenue extends ListVenue {
  photoUrl: string | null;
  website: string | null;
  category: string | null;
  hasFood: boolean;
  hasOutdoor: boolean;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function sleep(ms: number) {
  return new Promise((r) => setTimeout(r, ms));
}

/**
 * Extract venue coords from a Google Maps place URL.
 *
 * Google encodes venue coords in the data= parameter as !3d{lat}!4d{lng}.
 * The @lat,lng part is the MAP VIEWPORT center — not always the venue's
 * precise location. We prefer the data param, fall back to @lat,lng.
 */
function extractCoordsFromPlaceUrl(url: string): [number, number] | null {
  // Prefer !3d / !4d encoding (exact venue pin location)
  const dataMatch = url.match(/!3d(-?\d+\.\d+)!4d(-?\d+\.\d+)/);
  if (dataMatch) {
    return [parseFloat(dataMatch[1]), parseFloat(dataMatch[2])];
  }
  // Fall back to @lat,lng (viewport center, close but not exact)
  const atMatch = url.match(/@(-?\d+\.\d+),(-?\d+\.\d+)/);
  if (atMatch) {
    return [parseFloat(atMatch[1]), parseFloat(atMatch[2])];
  }
  return null;
}

function inferHasFood(category: string | null): boolean {
  if (!category) return false;
  const c = category.toLowerCase();
  return /restaurant|grill|eatery|bistro|kitchen|diner|caf[eé]|gastropub|bar & grill|brasserie|tavern|pub/.test(c);
}

function inferAtmosphere(category: string | null): string | null {
  if (!category) return null;
  const c = category.toLowerCase();
  if (c.includes("sports bar") || c.includes("sports pub")) return "lively";
  if (c.includes("nightclub") || c.includes("lounge") || c.includes("cocktail")) return "lively";
  if (c.includes("pub") || c.includes("tavern") || c.includes("inn") || c.includes("ale house")) return "relaxed";
  if (c.includes("bar") || c.includes("brewery") || c.includes("beer")) return "lively";
  if (c.includes("restaurant") || c.includes("cafe") || c.includes("bistro")) return "relaxed";
  return "lively";
}

// ---------------------------------------------------------------------------
// Phase 1 — scrape the search results list
// ---------------------------------------------------------------------------

async function scrapeListView(
  page: Page,
  searchUrl: string
): Promise<ListVenue[]> {
  await page.goto(searchUrl, { waitUntil: "networkidle2", timeout: 30000 });
  await sleep(2000);

  try {
    await page.waitForSelector('[role="feed"]', { timeout: 10000 });
  } catch {
    return [];
  }

  // Scroll to load more results
  for (let i = 0; i < 3; i++) {
    await page.evaluate(() => {
      const feed = document.querySelector('[role="feed"]');
      if (feed) feed.scrollTop += 1000;
    });
    await sleep(800);
  }

  return page.evaluate((maxVenues: number) => {
    const results: Array<{
      name: string;
      rating: number | null;
      reviewCount: number | null;
      address: string;
      priceLevel: string | null;
      placeHref: string | null;
      lat: number | null;
      lng: number | null;
    }> = [];

    const items = document.querySelectorAll('[role="feed"] > div');

    for (const item of Array.from(items)) {
      if (results.length >= maxVenues) break;

      // Name
      const nameEl = item.querySelector("div.fontHeadlineSmall");
      const name = nameEl?.textContent?.trim();
      if (!name || name.length < 2) continue;

      // Rating
      const ratingEl = item.querySelector("span.MW4etd");
      const rating = ratingEl
        ? parseFloat(ratingEl.textContent || "0") || null
        : null;

      // Review count
      const reviewEl = item.querySelector("span.UY7F9");
      const reviewText = reviewEl?.textContent?.replace(/[(),\s]/g, "") || "";
      const reviewCount = reviewText ? parseInt(reviewText) : null;

      // Price level — standalone $/$$/$$$/$$$$
      let priceLevel: string | null = null;
      for (const span of Array.from(item.querySelectorAll("span"))) {
        const t = span.textContent?.trim() || "";
        if (/^\$+$/.test(t) && t.length <= 4) {
          priceLevel = t;
          break;
        }
      }

      // Address from list (rough — detail panel will refine it)
      let address = "";
      for (const el of Array.from(
        item.querySelectorAll("div.W4Efsd span, div.W4Efsd div")
      )) {
        const text = el.textContent?.trim() || "";
        if (
          text.length > 6 &&
          text.length < 120 &&
          !text.match(/^\d+\.?\d*\s*[(（]/) &&
          !text.includes("·") &&
          (text.match(/\d+\s+\w/) ||
            text.match(
              /street|road|avenue|lane|square|way|place|court|drive|row|gardens|high|st\.|rd\.|ave\./i
            ))
        ) {
          address = text;
          break;
        }
      }

      // ── Key fix: grab the place URL from the anchor tag in the list item ──
      // Google Maps renders each result as a clickable anchor (or div with an
      // inner anchor). The href contains the full /maps/place/... URL including
      // !3d{lat}!4d{lng} encoding — giving us exact coords without navigating.
      const anchors = Array.from(
        item.querySelectorAll("a[href]")
      ) as HTMLAnchorElement[];
      const placeAnchor = anchors.find((a) =>
        a.href.includes("/maps/place/")
      );
      const placeHref = placeAnchor?.href || null;

      // Extract coords from the place URL right here in the list
      let lat: number | null = null;
      let lng: number | null = null;
      if (placeHref) {
        const dataMatch = placeHref.match(/!3d(-?\d+\.\d+)!4d(-?\d+\.\d+)/);
        const atMatch = placeHref.match(/@(-?\d+\.\d+),(-?\d+\.\d+)/);
        if (dataMatch) {
          lat = parseFloat(dataMatch[1]);
          lng = parseFloat(dataMatch[2]);
        } else if (atMatch) {
          lat = parseFloat(atMatch[1]);
          lng = parseFloat(atMatch[2]);
        }
      }

      results.push({ name, rating, reviewCount, address, priceLevel, placeHref, lat, lng });
    }

    return results;
  }, MAX_VENUES_PER_CITY);
}

// ---------------------------------------------------------------------------
// Phase 2 — navigate to each place page for detailed attributes
// ---------------------------------------------------------------------------

async function enrichVenue(
  page: Page,
  listItem: ListVenue
): Promise<ScrapedVenue> {
  const venue: ScrapedVenue = {
    ...listItem,
    photoUrl: null,
    website: null,
    category: null,
    hasFood: false,
    hasOutdoor: false,
  };

  if (!listItem.placeHref) return venue;

  try {
    await page.goto(listItem.placeHref, {
      waitUntil: "networkidle2",
      timeout: 20000,
    });
    await sleep(1800);

    const details = await page.evaluate(() => {
      // ── Hero photo ────────────────────────────────────────────────────────
      // Target the hero header button specifically — not any googleusercontent img.
      // Falls back to the first photo in the photos strip.
      const heroBtn = document.querySelector(
        'button[jsaction*="pane.heroHeaderImage"]'
      );
      const heroImg = heroBtn?.querySelector("img") as HTMLImageElement | null;
      // Strip size params to get full-res URL
      const rawPhotoSrc = heroImg?.src || null;
      const photoUrl = rawPhotoSrc
        ? rawPhotoSrc.replace(/=w\d+-h\d+-.*$/, "=w800-h600-k-no")
        : null;

      // ── Website ───────────────────────────────────────────────────────────
      const websiteEl = document.querySelector(
        'a[data-item-id="authority"]'
      ) as HTMLAnchorElement | null;
      const website = websiteEl?.href || null;

      // ── Full address ──────────────────────────────────────────────────────
      const addrBtn = document.querySelector('button[data-item-id="address"]');
      const addrText =
        addrBtn?.querySelector(".fontBodyMedium")?.textContent?.trim() ||
        addrBtn
          ?.getAttribute("aria-label")
          ?.replace(/^Address:\s*/i, "")
          .trim() ||
        "";

      // ── Category ──────────────────────────────────────────────────────────
      // Google Maps shows the category as a clickable button near the top.
      // Try multiple known selectors as they occasionally change.
      const categoryEl =
        document.querySelector("button.DkEaL") ||
        document.querySelector('[jsaction*="category"]') ||
        document.querySelector("div.fontBodyMedium.dmRWX");
      const category = categoryEl?.textContent?.trim() || null;

      // ── Price level ───────────────────────────────────────────────────────
      let priceLevel: string | null = null;
      document.querySelectorAll("[aria-label]").forEach((el) => {
        const label = el.getAttribute("aria-label") || "";
        if (/^price:/i.test(label)) {
          if (/inexpensive|cheap/i.test(label)) priceLevel = "$";
          else if (/very expensive/i.test(label)) priceLevel = "$$$$";
          else if (/expensive/i.test(label)) priceLevel = "$$$";
          else if (/moderate/i.test(label)) priceLevel = "$$";
        }
      });

      // ── has_food & has_outdoor ────────────────────────────────────────────
      // Scope to the About section / service options — NOT document.body.innerText
      // which includes footer/navigation text that triggers false positives.
      const aboutTab =
        document.querySelector('div[aria-label="About"]') ||
        // fallback: look for the amenities section by its container class
        document.querySelector("div.m6QErb.DxyBCb");

      // Also check the quick-chips row that appears under the venue name
      const quickInfo = Array.from(
        document.querySelectorAll(
          "div.Io6YTe.fontBodyMedium, div.rogA2c, div.LBgpqf"
        )
      )
        .map((el) => el.textContent || "")
        .join(" ");

      const scopedText = ((aboutTab as HTMLElement)?.innerText || "") + " " + quickInfo;

      const hasFood =
        /serves food|dine.?in|takeaway|takeout|food served|full menu|kitchen/i.test(
          scopedText
        );
      const hasOutdoor =
        /outdoor seating|outside seating|terrace|beer garden|rooftop/i.test(
          scopedText
        );

      return { photoUrl, website, addrText, category, priceLevel, hasFood, hasOutdoor };
    });

    if (details.photoUrl) venue.photoUrl = details.photoUrl;
    if (details.website) venue.website = details.website;
    if (details.addrText) venue.address = details.addrText;
    if (details.category) venue.category = details.category;
    if (details.priceLevel) venue.priceLevel = details.priceLevel;
    // Use scraped about-tab result first; fall back to category inference
    venue.hasFood = details.hasFood || inferHasFood(details.category || venue.category);
    venue.hasOutdoor = details.hasOutdoor;

    // If we didn't get coords from the list href, try the final navigated URL
    if (venue.lat === null) {
      const finalUrl = page.url();
      const coords = extractCoordsFromPlaceUrl(finalUrl);
      if (coords) [venue.lat, venue.lng] = coords;
    }
  } catch {
    // enrichment failed — return venue with list-view data only
  }

  return venue;
}

// ---------------------------------------------------------------------------
// Main scrape function for a single city
// ---------------------------------------------------------------------------

async function scrapeCity(page: Page, city: City): Promise<ScrapedVenue[]> {
  const query = encodeURIComponent(
    `sports bar pub live sport ${city.name} ${city.country}`
  );
  const searchUrl = `https://www.google.com/maps/search/${query}/@${city.latitude},${city.longitude},13z`;

  const listItems = await scrapeListView(page, searchUrl);
  if (listItems.length === 0) return [];

  const enriched: ScrapedVenue[] = [];
  for (const item of listItems) {
    const venue = await enrichVenue(page, item);
    enriched.push(venue);
  }

  return enriched.filter((v) => v.name);
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

function esc(str: string): string {
  return (str || "").replace(/'/g, "''");
}

function sqlStr(val: string | null | undefined): string {
  return val ? `'${esc(val)}'` : "NULL";
}

function sqlNum(val: number | null | undefined): string {
  return val !== null && val !== undefined && !isNaN(val) ? String(val) : "NULL";
}

function buildDescription(venue: ScrapedVenue, city: City): string {
  const type = venue.category || "sports bar";
  const rating = venue.rating !== null ? ` Rated ${venue.rating} stars on Google Maps.` : ".";
  const food = venue.hasFood ? " Food served." : "";
  const outdoor = venue.hasOutdoor ? " Outdoor area available." : "";
  return esc(
    `${venue.name} is a ${type.toLowerCase()} in ${city.name}, ${city.country}.${rating}${food}${outdoor}`
  );
}

function venueToSQL(
  venue: ScrapedVenue,
  city: City,
  usedSlugs: Set<string>
): string {
  let base = slugify(`${venue.name}-${city.slug}`);
  let slug = base;
  let attempt = 2;
  while (usedSlugs.has(slug)) slug = `${base}-${attempt++}`;
  usedSlugs.add(slug);

  const lat = venue.lat ?? city.latitude;
  const lng = venue.lng ?? city.longitude;
  const atmosphere = inferAtmosphere(venue.category);

  return (
    `INSERT INTO venues ` +
    `(name, slug, city_id, address, latitude, longitude, description, ` +
    `website_url, hero_image_url, google_rating, google_review_count, ` +
    `number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)\n` +
    `SELECT ` +
    `'${esc(venue.name)}', ` +
    `'${slug}', ` +
    `c.id, ` +
    `'${esc(venue.address)}', ` +
    `${lat}, ${lng}, ` +
    `'${buildDescription(venue, city)}', ` +
    `${sqlStr(venue.website)}, ` +
    `${sqlStr(venue.photoUrl)}, ` +
    `${sqlNum(venue.rating)}, ` +
    `${sqlNum(venue.reviewCount)}, ` +
    `NULL, ` +
    `${sqlStr(atmosphere)}, ` +
    `${sqlStr(venue.priceLevel)}, ` +
    `${venue.hasFood}, ` +
    `${venue.hasOutdoor}, ` +
    `false\n` +
    `FROM cities c WHERE c.slug = '${city.slug}'\n` +
    `ON CONFLICT (slug) DO NOTHING;`
  );
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

  console.log("\n=== WatchLocal — Google Maps Venue Scraper v3 ===");
  console.log(`Mode:  ${DRY_RUN ? "DRY RUN (no files written)" : "WRITE SQL FILES"}`);
  if (CITY_FILTER) console.log(`City:  ${CITY_FILTER}`);
  if (LIMIT) console.log(`Limit: ${LIMIT}`);
  console.log("");

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
  if (SKIP_EXISTING) console.log(`--skip-existing: skipping cities with SQL files already written\n`);
  if (!DRY_RUN) fs.mkdirSync(OUT_DIR, { recursive: true });

  let totalVenues = 0;
  let citiesWithData = 0;
  let totalCoordsReal = 0;
  let totalCoordsFallback = 0;

  // ---------------------------------------------------------------------------
  // Browser factory — creates a fresh browser + configured page.
  // Called on startup and whenever the browser crashes mid-run.
  // ---------------------------------------------------------------------------
  async function launchBrowser(): Promise<{ browser: Browser; page: any }> {
    const browser = await puppeteer.launch({
      headless: true,
      args: ["--no-sandbox", "--disable-setuid-sandbox", "--lang=en-US,en"],
    });
    const page = await browser.newPage();
    await page.setViewport({ width: 1280, height: 900 });
    await page.setUserAgent(
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) " +
        "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    );
    await page.setExtraHTTPHeaders({ "Accept-Language": "en-US,en;q=0.9" });

    // Accept cookie consent banner
    await page.goto("https://www.google.com/maps", {
      waitUntil: "networkidle2",
      timeout: 20000,
    });
    await sleep(1000);
    const acceptBtn = await page.$(
      'button[aria-label*="Accept"], button[jsname="b3VHJd"]'
    );
    if (acceptBtn) await acceptBtn.click();
    await sleep(500);

    return { browser, page };
  }

  let { browser, page } = await launchBrowser();

  try {
    for (let i = 0; i < cities.length; i++) {
      const city = cities[i] as City;

      // Skip cities that already have a SQL file
      if (SKIP_EXISTING && !DRY_RUN) {
        const outPath = path.join(OUT_DIR, `${city.slug}.sql`);
        if (fs.existsSync(outPath)) {
          console.log(`[${i + 1}/${cities.length}] ${city.name} — skipped (exists)`);
          citiesWithData++;
          continue;
        }
      }

      process.stdout.write(
        `[${i + 1}/${cities.length}] ${city.name} (${city.country})... `
      );

      try {
        const venues = await scrapeCity(page, city);

        const realCoords = venues.filter((v) => v.lat !== null).length;
        const fallback = venues.length - realCoords;
        totalCoordsReal += realCoords;
        totalCoordsFallback += fallback;

        process.stdout.write(
          `${venues.length} venues | ${realCoords} real coords, ${fallback} fallback\n`
        );

        if (venues.length < MIN_VENUES) {
          console.log(`  -> Skipped (< ${MIN_VENUES} venues found)`);
          continue;
        }

        if (!DRY_RUN) {
          const usedSlugs = new Set<string>();
          const inserts = venues.map((v) => venueToSQL(v, city, usedSlugs));
          const coordNote = `${realCoords} with real coords, ${fallback} at city centre`;
          const header =
            `-- Real venues for ${city.name}, ${city.country}\n` +
            `-- Source: Google Maps via Puppeteer (v3)\n` +
            `-- ${inserts.length} venues | ${coordNote}\n\n`;
          fs.writeFileSync(
            path.join(OUT_DIR, `${city.slug}.sql`),
            header + inserts.join("\n") + "\n"
          );
          console.log(`  -> Written: venues/real/${city.slug}.sql`);
        }

        totalVenues += venues.length;
        citiesWithData++;
      } catch (err: any) {
        const isDetached =
          err.message?.includes("detached") || err.message?.includes("Session closed");

        if (isDetached) {
          console.log(`BROWSER CRASHED — restarting...`);
          try { await browser.close(); } catch { /* already dead */ }
          await sleep(3000);
          ({ browser, page } = await launchBrowser());
          console.log(`  Browser restarted. Retrying ${city.name}...`);
          // Retry this city once with the fresh browser
          try {
            const venues = await scrapeCity(page, city);
            const realCoords = venues.filter((v) => v.lat !== null).length;
            totalCoordsReal += realCoords;
            totalCoordsFallback += venues.length - realCoords;

            if (venues.length >= MIN_VENUES && !DRY_RUN) {
              const usedSlugs = new Set<string>();
              const inserts = venues.map((v) => venueToSQL(v, city, usedSlugs));
              const coordNote = `${realCoords} with real coords, ${venues.length - realCoords} at city centre`;
              const header =
                `-- Real venues for ${city.name}, ${city.country}\n` +
                `-- Source: Google Maps via Puppeteer (v3)\n` +
                `-- ${inserts.length} venues | ${coordNote}\n\n`;
              fs.writeFileSync(
                path.join(OUT_DIR, `${city.slug}.sql`),
                header + inserts.join("\n") + "\n"
              );
              console.log(`  -> Written: venues/real/${city.slug}.sql (after restart)`);
              totalVenues += venues.length;
              citiesWithData++;
            }
          } catch (retryErr: any) {
            console.log(`  Retry failed: ${retryErr.message}`);
          }
        } else {
          console.log(`ERROR: ${err.message}`);
        }
      }

      await sleep(DELAY_BETWEEN_CITIES_MS);
    }
  } finally {
    try { await browser.close(); } catch { /* ignore */ }
  }

  const total = totalCoordsReal + totalCoordsFallback;
  const pct = total > 0 ? Math.round((totalCoordsReal / total) * 100) : 0;

  console.log(`\n=== Complete ===`);
  console.log(`Cities with data:   ${citiesWithData}`);
  console.log(`Total venues:       ${totalVenues}`);
  console.log(`Real coords:        ${totalCoordsReal} / ${total} (${pct}%)`);

  if (!DRY_RUN && citiesWithData > 0) {
    fs.writeFileSync(
      path.join(OUT_DIR, "_00_truncate.sql"),
      "-- Run this FIRST in Supabase to wipe existing venue data\n" +
        "TRUNCATE venue_leagues CASCADE;\n" +
        "TRUNCATE venues CASCADE;\n" +
        "-- Then run every file in venues/real/ (except this one)\n"
    );
  }
}

main().catch(console.error);
