import { MetadataRoute } from "next";
import { createClient } from "@/lib/supabase/server";
import { countryToSlug } from "@/lib/countries";
import { EVENTS } from "@/lib/events";
import { getAllGuides } from "@/lib/guides";
import { getAllNeighbourhoodCombos } from "@/lib/neighbourhoods";
import { FEATURE_SLUGS } from "@/lib/venue-features";
import { getAllSports, getCitiesForCountryCodes } from "@/lib/supabase/queries";
import { CHANNEL_SLUGS, getChannel, getCountriesForChannel } from "@/lib/tv-channels";

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
      url: `${BASE_URL}/claim-venue`,
      lastModified: new Date(),
      changeFrequency: "monthly",
      priority: 0.4,
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

  // Country pages — unique countries from cities
  const { data: citiesWithCountry } = await supabase
    .from("cities")
    .select("country");
  const countrySlugs = new Set<string>();
  for (const c of citiesWithCountry || []) {
    const slug = countryToSlug(c.country);
    countrySlugs.add(slug);
  }
  const countryPages: MetadataRoute.Sitemap = [
    {
      url: `${BASE_URL}/countries`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.6,
    },
    ...Array.from(countrySlugs).map((slug) => ({
      url: `${BASE_URL}/countries/${slug}`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.7,
    })),
  ];

  // Event pages
  const eventPages: MetadataRoute.Sitemap = [
    {
      url: `${BASE_URL}/events`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.6,
    },
    ...EVENTS.map((e) => ({
      url: `${BASE_URL}/events/${e.slug}`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.7,
    })),
  ];

  // Guide pages
  const guides = getAllGuides();
  const guidePages: MetadataRoute.Sitemap = [
    {
      url: `${BASE_URL}/guides`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.7,
    },
    ...guides.map((g) => ({
      url: `${BASE_URL}/guides/${g.slug}`,
      lastModified: new Date(g.frontmatter.updatedAt),
      changeFrequency: "monthly" as const,
      priority: 0.8,
    })),
  ];

  // Neighbourhood pages — /cities/[city]/[neighbourhood]
  const neighbourhoodPages: MetadataRoute.Sitemap = getAllNeighbourhoodCombos().map(
    ({ citySlug, neighbourhood }) => ({
      url: `${BASE_URL}/cities/${citySlug}/${neighbourhood.slug}`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.75,
    })
  );

  // Feature filter pages — /cities/[city]/[feature] for cities with neighbourhoods defined
  const { CITY_NEIGHBOURHOODS } = await import("@/lib/neighbourhoods");
  const citiesWithNeighbourhoods = Object.keys(CITY_NEIGHBOURHOODS);
  const featurePages: MetadataRoute.Sitemap = citiesWithNeighbourhoods.flatMap((citySlug) =>
    FEATURE_SLUGS.map((featureSlug) => ({
      url: `${BASE_URL}/cities/${citySlug}/${featureSlug}`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.7,
    }))
  );

  // Sport pages — /sports and /sports/[sport]
  const sports = await getAllSports();
  const sportPages: MetadataRoute.Sitemap = [
    {
      url: `${BASE_URL}/sports`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.7,
    },
    ...sports.map((sport) => ({
      url: `${BASE_URL}/sports/${sport}`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.75,
    })),
  ];

  // Channel hub pages — /channels and /channels/[channel]
  const channelPages: MetadataRoute.Sitemap = [
    {
      url: `${BASE_URL}/channels`,
      lastModified: new Date(),
      changeFrequency: "monthly" as const,
      priority: 0.6,
    },
    ...CHANNEL_SLUGS.map((slug) => ({
      url: `${BASE_URL}/channels/${slug}`,
      lastModified: new Date(),
      changeFrequency: "monthly" as const,
      priority: 0.65,
    })),
  ];

  // Channel × city pages — /channels/[channel]/[city]
  const channelCityPages: MetadataRoute.Sitemap = [];
  for (const channelSlug of CHANNEL_SLUGS) {
    const channel = getChannel(channelSlug)!;
    const countryCodes = getCountriesForChannel(channel);
    const channelCities = await getCitiesForCountryCodes(countryCodes);
    for (const city of channelCities) {
      channelCityPages.push({
        url: `${BASE_URL}/channels/${channelSlug}/${city.slug}`,
        lastModified: new Date(),
        changeFrequency: "weekly" as const,
        priority: 0.7,
      });
    }
  }

  // Match event pages — /matches/[league]/[fixture]
  const { data: fixtures } = await supabase
    .from("fixtures")
    .select("id, league:leagues!inner(slug), match_date")
    .gte("match_date", new Date().toISOString())
    .eq("status", "scheduled")
    .order("match_date", { ascending: true })
    .limit(500);

  const matchPages: MetadataRoute.Sitemap = (fixtures || []).map((f: any) => ({
    url: `${BASE_URL}/matches/${f.league.slug}/${f.id}`,
    lastModified: new Date(f.match_date),
    changeFrequency: "daily" as const,
    priority: 0.8,
  }));

  return [
    ...staticPages,
    ...leaguePages,
    ...leagueCityPages,
    ...teamCityPages,
    ...cityPages,
    ...venuePages,
    ...countryPages,
    ...eventPages,
    ...guidePages,
    ...neighbourhoodPages,
    ...featurePages,
    ...sportPages,
    ...channelPages,
    ...channelCityPages,
    ...matchPages,
  ];
}
