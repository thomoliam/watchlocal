import { MetadataRoute } from "next";
import { createClient } from "@/lib/supabase/server";

const BASE_URL =
  process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const supabase = await createClient();

  const staticPages: MetadataRoute.Sitemap = [
    {
      url: BASE_URL,
      lastModified: new Date(),
      changeFrequency: "daily",
      priority: 1.0,
    },
    {
      url: `${BASE_URL}/submit-venue`,
      lastModified: new Date(),
      changeFrequency: "monthly",
      priority: 0.5,
    },
    {
      url: `${BASE_URL}/about`,
      lastModified: new Date(),
      changeFrequency: "monthly",
      priority: 0.5,
    },
    {
      url: `${BASE_URL}/contact`,
      lastModified: new Date(),
      changeFrequency: "monthly",
      priority: 0.4,
    },
  ];

  const { data: leagues } = await supabase
    .from("leagues")
    .select("slug, updated_at")
    .eq("is_active", true);

  const leaguePages = (leagues || []).map((l) => ({
    url: `${BASE_URL}/watch/${l.slug}`,
    lastModified: new Date(l.updated_at),
    changeFrequency: "weekly" as const,
    priority: 0.7,
  }));

  // Fetch all page_combos for both league/city and team/city pages
  const { data: combos } = await supabase
    .from("page_combos")
    .select("league_slug, team_slug, city_slug");

  // League + city pages (/watch/[league]/[city]) — deduplicated, highest priority
  const leagueCitySeen = new Set<string>();
  const leagueCityPages: MetadataRoute.Sitemap = [];
  for (const c of combos || []) {
    const key = `${c.league_slug}/${c.city_slug}`;
    if (!leagueCitySeen.has(key)) {
      leagueCitySeen.add(key);
      leagueCityPages.push({
        url: `${BASE_URL}/watch/${c.league_slug}/${c.city_slug}`,
        lastModified: new Date(),
        changeFrequency: "weekly" as const,
        priority: 0.9,
      });
    }
  }

  // Team + city pages (/watch/[league]/[team]/[city])
  const teamCityPages = (combos || []).map((c) => ({
    url: `${BASE_URL}/watch/${c.league_slug}/${c.team_slug}/${c.city_slug}`,
    lastModified: new Date(),
    changeFrequency: "weekly" as const,
    priority: 0.9,
  }));

  const { data: cities } = await supabase.from("cities").select("slug");

  const cityPages = (cities || []).map((c) => ({
    url: `${BASE_URL}/cities/${c.slug}`,
    lastModified: new Date(),
    changeFrequency: "weekly" as const,
    priority: 0.7,
  }));

  const { data: venues } = await supabase
    .from("venues")
    .select("slug, updated_at")
    .eq("status", "active");

  const venuePages = (venues || []).map((v) => ({
    url: `${BASE_URL}/venues/${v.slug}`,
    lastModified: new Date(v.updated_at),
    changeFrequency: "weekly" as const,
    priority: 0.8,
  }));

  return [
    ...staticPages,
    ...leaguePages,
    ...leagueCityPages,
    ...teamCityPages,
    ...cityPages,
    ...venuePages,
  ];
}
