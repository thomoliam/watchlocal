import { createClient } from "@supabase/supabase-js";

const sb = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

async function main() {
  // Paginate to fetch ALL real venues
  const PAGE = 1000;
  let allVenues: any[] = [];
  let from = 0;
  while (true) {
    const { data, error } = await sb
      .from("venues")
      .select("id, name, slug, address, latitude, longitude, google_rating, google_review_count, hero_image_url, description")
      .not("google_rating", "is", null)
      .range(from, from + PAGE - 1);
    if (error) { console.error(error.message); return; }
    if (!data || data.length === 0) break;
    allVenues = allVenues.concat(data);
    if (data.length < PAGE) break;
    from += PAGE;
  }
  const data = allVenues;
  if (data.length === 0) { console.error("No venues found"); return; }

  // Random 2% sample
  const sample = data.sort(() => Math.random() - 0.5).slice(0, Math.ceil(data.length * 0.02));

  console.log(`Total real venues: ${data.length}`);
  console.log(`QC sample size: ${sample.length}\n`);

  let flags = 0;

  for (const v of sample) {
    const issues: string[] = [];

    // Check 1: Name looks suspiciously generic
    const genericNames = /^(sports bar|pub|bar|the bar|sports pub|local bar|venue \d|bar \d)/i;
    if (genericNames.test(v.name)) issues.push("GENERIC_NAME");

    // Check 2: No address
    if (!v.address || v.address.trim() === "") issues.push("NO_ADDRESS");

    // Check 3: Coordinates are (0,0) or null
    if (!v.latitude || !v.longitude) issues.push("NO_COORDS");
    if (v.latitude === 0 && v.longitude === 0) issues.push("ZERO_COORDS");

    // Check 4: Suspiciously round coordinates (city centre fallback)
    if (v.latitude && v.longitude) {
      const latDecimals = v.latitude.toString().split(".")[1]?.length ?? 0;
      const lngDecimals = v.longitude.toString().split(".")[1]?.length ?? 0;
      if (latDecimals <= 1 || lngDecimals <= 1) issues.push("ROUNDED_COORDS");
    }

    // Check 5: Review count unrealistically high or zero
    if (v.google_review_count === 0) issues.push("ZERO_REVIEWS");
    if (v.google_review_count > 50000) issues.push("SUSPICIOUS_REVIEW_COUNT");

    // Check 6: Rating out of range
    if (v.google_rating < 1 || v.google_rating > 5) issues.push("INVALID_RATING");

    // Check 7: Hero image URL structure (real Google Maps URLs contain 'googleusercontent' or 'gps-cs-s')
    if (v.hero_image_url && !v.hero_image_url.includes("googleusercontent") && !v.hero_image_url.includes("google")) {
      issues.push("SUSPICIOUS_IMAGE_URL");
    }

    if (issues.length > 0) {
      flags++;
      console.log(`⚠ [${issues.join(", ")}]`);
      console.log(`  Name: ${v.name}`);
      console.log(`  Address: ${v.address}`);
      console.log(`  Coords: ${v.latitude}, ${v.longitude}`);
      console.log(`  Rating: ${v.google_rating} (${v.google_review_count} reviews)`);
      console.log();
    } else {
      // Print clean ones more briefly
      console.log(`✓ ${v.name} | ${v.address?.split(",")[0]} | ${v.google_rating}★ (${v.google_review_count})`);
    }
  }

  console.log(`\n--- QC Summary ---`);
  console.log(`Checked: ${sample.length}`);
  console.log(`Flagged: ${flags} (${((flags/sample.length)*100).toFixed(1)}%)`);
  console.log(`Clean:   ${sample.length - flags} (${(((sample.length-flags)/sample.length)*100).toFixed(1)}%)`);
}

main().catch(console.error);
