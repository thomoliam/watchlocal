import { createClient, createStaticClient } from "./server";
import type {
  Venue,
  Team,
  City,
  League,
  Fixture,
  FanCommunity,
  Review,
} from "../types";

// ============================================================
// LEAGUES
// ============================================================

export async function getLeagues(): Promise<League[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("leagues")
    .select("*")
    .eq("is_active", true)
    .order("tier", { ascending: true })
    .order("name");
  return data || [];
}

export async function getLeagueBySlug(slug: string): Promise<League | null> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("leagues")
    .select("*")
    .eq("slug", slug)
    .single();
  return data;
}

// ============================================================
// TEAMS
// ============================================================

export async function getTeamBySlug(slug: string): Promise<Team | null> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("teams")
    .select("*, league:leagues(*)")
    .eq("slug", slug)
    .single();
  return data;
}

export async function getTeamsByLeague(leagueId: string): Promise<Team[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("teams")
    .select("*")
    .eq("league_id", leagueId)
    .eq("is_active", true)
    .order("name");
  return data || [];
}

// ============================================================
// CITIES
// ============================================================

export async function getCityBySlug(slug: string): Promise<City | null> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("cities")
    .select("*")
    .eq("slug", slug)
    .single();
  return data;
}

export async function getCitiesWithVenuesForLeague(
  leagueSlug: string
): Promise<(City & { venue_count: number })[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("page_combos")
    .select("city_slug, city_name, city_country, city_timezone, venue_count")
    .eq("league_slug", leagueSlug)
    .order("venue_count", { ascending: false });

  const seen = new Set<string>();
  return ((data || []) as any[])
    .filter((row) => {
      if (seen.has(row.city_slug)) return false;
      seen.add(row.city_slug);
      return true;
    })
    .map((row) => ({
      slug: row.city_slug,
      name: row.city_name,
      country: row.city_country,
      timezone: row.city_timezone,
      venue_count: row.venue_count,
    })) as any;
}

export async function getAllCities(): Promise<City[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("cities")
    .select("*")
    .order("tier", { ascending: true })
    .order("name");
  return data || [];
}

// ============================================================
// VENUES
// ============================================================

export async function getVenuesForLeagueInCity(
  leagueSlug: string,
  citySlug: string
): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities!inner(*),
      venue_leagues!inner(
        *,
        league:leagues!inner(*)
      ),
      venue_teams(
        *,
        team:teams(*)
      ),
      reviews(*)
    `
    )
    .eq("city.slug", citySlug)
    .eq("venue_leagues.league.slug", leagueSlug)
    .eq("status", "active")
    .order("is_verified", { ascending: false })
    .order("is_premium", { ascending: false });

  return data || [];
}

export async function getVenueBySlug(slug: string): Promise<Venue | null> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities(*),
      venue_leagues(
        *,
        league:leagues(*)
      ),
      venue_teams(
        *,
        team:teams(*)
      ),
      reviews(*),
      venue_specials(*),
      venue_photos(*)
    `
    )
    .eq("slug", slug)
    .single();
  return data;
}

export async function getVenuesInCity(citySlug: string): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities!inner(*),
      venue_leagues(*, league:leagues(*))
    `
    )
    .eq("city.slug", citySlug)
    .eq("status", "active")
    .order("is_verified", { ascending: false });
  return data || [];
}

export async function getNearbyVenues(
  venueId: string,
  latitude: number,
  longitude: number,
  limit: number = 4
): Promise<Venue[]> {
  const supabase = await createClient();
  const delta = 0.5; // ~50km radius
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities(*),
      venue_leagues(*, league:leagues(*))
    `
    )
    .neq("id", venueId)
    .eq("status", "active")
    .gte("latitude", latitude - delta)
    .lte("latitude", latitude + delta)
    .gte("longitude", longitude - delta)
    .lte("longitude", longitude + delta)
    .limit(20);

  if (!data || data.length === 0) return [];

  const toRad = (deg: number) => (deg * Math.PI) / 180;
  const withDist = data.map((v) => {
    const dLat = toRad(v.latitude - latitude);
    const dLon = toRad(v.longitude - longitude);
    const a =
      Math.sin(dLat / 2) ** 2 +
      Math.cos(toRad(latitude)) *
        Math.cos(toRad(v.latitude)) *
        Math.sin(dLon / 2) ** 2;
    const km = 6371 * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    return { ...v, distance_km: Math.round(km * 10) / 10 };
  });
  withDist.sort((a, b) => a.distance_km - b.distance_km);
  return withDist.slice(0, limit);
}

// ============================================================
// NEIGHBOURHOOD + FEATURE FILTERED VENUES
// ============================================================

export async function getVenuesInNeighbourhood(
  citySlug: string,
  latMin: number,
  latMax: number,
  lngMin: number,
  lngMax: number
): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities!inner(*),
      venue_leagues(*, league:leagues(*))
    `
    )
    .eq("city.slug", citySlug)
    .eq("status", "active")
    .gte("latitude", latMin)
    .lte("latitude", latMax)
    .gte("longitude", lngMin)
    .lte("longitude", lngMax)
    .order("is_verified", { ascending: false })
    .order("google_rating", { ascending: false });
  return data || [];
}

export async function getVenuesInCityWithFeature(
  citySlug: string,
  column: string,
  value: boolean | string | number
): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities!inner(*),
      venue_leagues(*, league:leagues(*))
    `
    )
    .eq("city.slug", citySlug)
    .eq("status", "active")
    .filter(column, "eq", value)
    .order("is_verified", { ascending: false })
    .order("google_rating", { ascending: false });
  return data || [];
}

// ============================================================
// FIXTURES
// ============================================================

/**
 * Upcoming fixtures across multiple leagues — used on venue pages.
 * Takes league IDs (UUIDs) from venue_leagues join.
 */
export async function getUpcomingFixturesForLeagues(
  leagueIds: string[],
  limit = 8
): Promise<Fixture[]> {
  if (leagueIds.length === 0) return [];
  const supabase = await createClient();
  const { data } = await supabase
    .from("fixtures")
    .select(
      `
      *,
      league:leagues(*),
      home_team:teams!fixtures_home_team_id_fkey(*),
      away_team:teams!fixtures_away_team_id_fkey(*)
    `
    )
    .in("league_id", leagueIds)
    .gte("match_date", new Date().toISOString())
    .eq("status", "scheduled")
    .order("match_date", { ascending: true })
    .limit(limit);
  return data || [];
}

export async function getUpcomingFixtures(
  leagueSlug: string,
  teamSlug?: string,
  limit: number = 5
): Promise<Fixture[]> {
  const supabase = await createClient();
  let query = supabase
    .from("fixtures")
    .select(
      `
      *,
      league:leagues!inner(*),
      home_team:teams!fixtures_home_team_id_fkey(*),
      away_team:teams!fixtures_away_team_id_fkey(*)
    `
    )
    .eq("league.slug", leagueSlug)
    .gte("match_date", new Date().toISOString())
    .eq("status", "scheduled")
    .order("match_date", { ascending: true })
    .limit(limit);

  if (teamSlug) {
    query = query.or(
      `home_team.slug.eq.${teamSlug},away_team.slug.eq.${teamSlug}`
    );
  }

  const { data } = await query;
  return data || [];
}

export async function getFixtureById(id: string): Promise<Fixture | null> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("fixtures")
    .select(
      `
      *,
      league:leagues(*),
      home_team:teams!fixtures_home_team_id_fkey(*),
      away_team:teams!fixtures_away_team_id_fkey(*)
    `
    )
    .eq("id", id)
    .single();
  return data;
}

export async function getAllUpcomingFixtures(limit = 200): Promise<Fixture[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("fixtures")
    .select(
      `
      *,
      league:leagues(*),
      home_team:teams!fixtures_home_team_id_fkey(*),
      away_team:teams!fixtures_away_team_id_fkey(*)
    `
    )
    .gte("match_date", new Date().toISOString())
    .eq("status", "scheduled")
    .order("match_date", { ascending: true })
    .limit(limit);
  return data || [];
}

// ============================================================
// FAN COMMUNITIES
// ============================================================

export async function getFanCommunities(
  teamSlug: string,
  citySlug: string
): Promise<FanCommunity[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("fan_communities")
    .select(
      `
      *,
      team:teams!inner(*),
      city:cities!inner(*)
    `
    )
    .eq("team.slug", teamSlug)
    .eq("city.slug", citySlug);
  return data || [];
}

// ============================================================
// REVIEWS
// ============================================================

export async function getReviewsForVenue(venueId: string): Promise<Review[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("reviews")
    .select("*")
    .eq("venue_id", venueId)
    .eq("is_approved", true)
    .order("created_at", { ascending: false });
  return data || [];
}

// ============================================================
// SEARCH
// ============================================================

export async function searchTeams(query: string): Promise<Team[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("teams")
    .select("*, league:leagues(*)")
    .or(`name.ilike.%${query}%,short_name.ilike.%${query}%,slug.ilike.%${query}%`)
    .eq("is_active", true)
    .order("name")
    .limit(20);
  return data || [];
}

export async function searchVenues(query: string): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(`
      *,
      city:cities(*),
      venue_leagues(*, league:leagues(*))
    `)
    .ilike("name", `%${query}%`)
    .eq("status", "active")
    .order("is_verified", { ascending: false })
    .limit(20);
  return data || [];
}

export async function searchLeagues(query: string): Promise<League[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("leagues")
    .select("*")
    .or(`name.ilike.%${query}%,short_name.ilike.%${query}%,slug.ilike.%${query}%`)
    .eq("is_active", true)
    .order("tier", { ascending: true })
    .limit(20);
  return data || [];
}

export async function searchCities(query: string): Promise<City[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("cities")
    .select("*")
    .or(`name.ilike.%${query}%,slug.ilike.%${query}%,country.ilike.%${query}%`)
    .order("tier", { ascending: true })
    .limit(20);
  return data || [];
}

// ============================================================
// LEAGUE HUB
// ============================================================

export async function getTopLeagueSlugs(limit: number = 20): Promise<string[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("leagues")
    .select("slug")
    .eq("is_active", true)
    .order("tier", { ascending: true })
    .limit(limit);
  return (data || []).map((row) => row.slug);
}

// ============================================================
// CROSS-LINKING
// ============================================================

export async function getOtherLeaguesInCity(
  citySlug: string,
  excludeLeagueSlug: string
): Promise<{ league_slug: string; league_name: string; venue_count: number }[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("page_combos")
    .select("league_slug, league_name, venue_count")
    .eq("city_slug", citySlug)
    .neq("league_slug", excludeLeagueSlug)
    .gt("venue_count", 0)
    .order("venue_count", { ascending: false });

  const seen = new Set<string>();
  return ((data || []) as any[]).filter((row) => {
    if (seen.has(row.league_slug)) return false;
    seen.add(row.league_slug);
    return true;
  });
}

export async function getOtherCitiesForLeague(
  leagueSlug: string,
  excludeCitySlug: string
): Promise<{ city_slug: string; city_name: string; city_country: string; venue_count: number }[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("page_combos")
    .select("city_slug, city_name, city_country, venue_count")
    .eq("league_slug", leagueSlug)
    .neq("city_slug", excludeCitySlug)
    .gt("venue_count", 0)
    .order("venue_count", { ascending: false });

  const seen = new Set<string>();
  return ((data || []) as any[]).filter((row) => {
    if (seen.has(row.city_slug)) return false;
    seen.add(row.city_slug);
    return true;
  });
}

// ============================================================
// COUNTRIES
// ============================================================

export async function getCitiesByCountry(country: string): Promise<City[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("cities")
    .select("*")
    .ilike("country", country)
    .order("tier", { ascending: true })
    .order("name");
  return data || [];
}

export async function getVenueCountForCity(citySlug: string): Promise<number> {
  const supabase = await createClient();
  const { count } = await supabase
    .from("venues")
    .select("id", { count: "exact", head: true })
    .eq("city_id", citySlug)
    .eq("status", "active");
  return count || 0;
}

export async function getAllCountriesWithCounts(): Promise<
  { country: string; city_count: number; venue_count: number }[]
> {
  const supabase = await createClient();
  const { data: cities } = await supabase.from("cities").select("country, slug");
  if (!cities || cities.length === 0) return [];

  const countryMap = new Map<string, { city_count: number; city_slugs: string[] }>();
  for (const city of cities) {
    const existing = countryMap.get(city.country) || { city_count: 0, city_slugs: [] };
    existing.city_count++;
    existing.city_slugs.push(city.slug);
    countryMap.set(city.country, existing);
  }

  const { data: venues } = await supabase
    .from("venues")
    .select("city:cities!inner(country)")
    .eq("status", "active");

  const venueCountMap = new Map<string, number>();
  for (const v of (venues || []) as any[]) {
    const country = v.city?.country;
    if (country) {
      venueCountMap.set(country, (venueCountMap.get(country) || 0) + 1);
    }
  }

  const results: { country: string; city_count: number; venue_count: number }[] = [];
  for (const [country, info] of countryMap.entries()) {
    results.push({
      country,
      city_count: info.city_count,
      venue_count: venueCountMap.get(country) || 0,
    });
  }

  results.sort((a, b) => b.venue_count - a.venue_count || a.country.localeCompare(b.country));
  return results;
}

export async function getPopularLeaguesInCountry(
  country: string
): Promise<{ league_slug: string; league_name: string; sport: string; venue_count: number }[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(`
      venue_leagues(league:leagues(slug, name, sport)),
      city:cities!inner(country)
    `)
    .eq("city.country", country)
    .eq("status", "active");

  if (!data) return [];

  const leagueMap = new Map<string, { league_slug: string; league_name: string; sport: string; venue_count: number }>();
  for (const venue of data as any[]) {
    for (const vl of venue.venue_leagues || []) {
      if (!vl.league) continue;
      const existing = leagueMap.get(vl.league.slug);
      if (existing) {
        existing.venue_count++;
      } else {
        leagueMap.set(vl.league.slug, {
          league_slug: vl.league.slug,
          league_name: vl.league.name,
          sport: vl.league.sport,
          venue_count: 1,
        });
      }
    }
  }

  return Array.from(leagueMap.values()).sort((a, b) => b.venue_count - a.venue_count);
}

export async function getVenueCountForCountry(country: string): Promise<number> {
  const supabase = await createClient();
  const { count } = await supabase
    .from("venues")
    .select("id, city:cities!inner(country)", { count: "exact", head: true })
    .eq("city.country", country)
    .eq("status", "active");
  return count || 0;
}

export async function getVenuesInCountryCities(
  citySlugs: string[]
): Promise<{ city_slug: string; venue_count: number }[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select("city:cities!inner(slug)")
    .in("city.slug", citySlugs)
    .eq("status", "active");

  const countMap = new Map<string, number>();
  for (const v of (data || []) as any[]) {
    const slug = v.city?.slug;
    if (slug) {
      countMap.set(slug, (countMap.get(slug) || 0) + 1);
    }
  }

  return citySlugs.map((slug) => ({
    city_slug: slug,
    venue_count: countMap.get(slug) || 0,
  }));
}

// ============================================================
// STATS
// ============================================================

export async function getSiteStats(): Promise<{
  venueCount: number;
  countryCount: number;
}> {
  const supabase = await createClient();
  const [{ count: venueCount }, { data: countries }] = await Promise.all([
    supabase
      .from("venues")
      .select("id", { count: "exact", head: true })
      .eq("status", "active"),
    supabase.from("cities").select("country"),
  ]);
  const uniqueCountries = new Set((countries || []).map((c) => c.country));
  return {
    venueCount: venueCount || 0,
    countryCount: uniqueCountries.size,
  };
}

// ============================================================
// SPORTS
// ============================================================

export async function getAllSports(): Promise<string[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("leagues")
    .select("sport")
    .eq("is_active", true);
  const seen = new Set<string>();
  for (const row of data || []) {
    if (row.sport) seen.add(row.sport);
  }
  return Array.from(seen).sort();
}

export async function getLeaguesBySport(
  sport: string
): Promise<(League & { city_count: number })[]> {
  const supabase = await createClient();

  // Get leagues for this sport
  const { data: leagues } = await supabase
    .from("leagues")
    .select("*")
    .eq("sport", sport)
    .eq("is_active", true)
    .order("tier", { ascending: true })
    .order("name");

  if (!leagues || leagues.length === 0) return [];

  // For each league, count distinct cities via page_combos
  const { data: combos } = await supabase
    .from("page_combos")
    .select("league_slug, city_slug")
    .in(
      "league_slug",
      leagues.map((l) => l.slug)
    )
    .gt("venue_count", 0);

  const cityCountMap = new Map<string, Set<string>>();
  for (const row of (combos || []) as any[]) {
    if (!cityCountMap.has(row.league_slug)) {
      cityCountMap.set(row.league_slug, new Set());
    }
    cityCountMap.get(row.league_slug)!.add(row.city_slug);
  }

  return leagues.map((league) => ({
    ...league,
    city_count: cityCountMap.get(league.slug)?.size ?? 0,
  })) as (League & { city_count: number })[];
}

// ============================================================
// UPCOMING FIXTURES FOR LEAGUE (city-page widget)
// ============================================================

export async function getUpcomingFixturesForLeague(
  leagueSlug: string,
  limit: number = 5
): Promise<Fixture[]> {
  return getUpcomingFixtures(leagueSlug, undefined, limit);
}

// ============================================================
// PAGE GENERATION
// ============================================================

export async function getAllPageCombos() {
  const supabase = await createClient();
  const { data } = await supabase.from("page_combos").select("*");
  return data || [];
}

/** Distinct city slugs that have at least one active venue — used for feature filter static params. */
export async function getCitySlugsWithVenues(): Promise<string[]> {
  // Uses cookie-free client — safe to call from generateStaticParams (no request scope)
  const supabase = createStaticClient();
  const { data } = await supabase
    .from("page_combos")
    .select("city_slug")
    .gt("venue_count", 0);
  const seen = new Set<string>();
  for (const row of data || []) seen.add(row.city_slug);
  return Array.from(seen);
}

export async function getLeagueCityCombos() {
  const supabase = await createClient();
  const { data } = await supabase
    .from("page_combos")
    .select("league_slug, league_name, city_slug, city_name, city_country, venue_count")
    .gt("venue_count", 0);

  const seen = new Set<string>();
  return (data || []).filter((row) => {
    const key = `${row.league_slug}-${row.city_slug}`;
    if (seen.has(key)) return false;
    seen.add(key);
    return true;
  });
}

// ============================================================
// TV CHANNEL PAGES
// ============================================================

/**
 * Get cities in specific country codes — used by /channels/[channel]/[city] static params.
 */
export async function getCitiesForCountryCodes(countryCodes: string[]): Promise<City[]> {
  // Uses cookie-free client — safe to call from generateStaticParams
  const supabase = createStaticClient();
  const { data } = await supabase
    .from("cities")
    .select("*")
    .in("country_code", countryCodes)
    .order("tier", { ascending: true })
    .order("name");
  return data || [];
}

/**
 * Get venues in a city that show at least one of the given league slugs.
 * Used by /channels/[channel]/[city] to show venues for a broadcaster's content.
 */
export async function getVenuesForLeaguesInCity(
  citySlug: string,
  leagueSlugs: string[]
): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities!inner(*),
      venue_leagues(*, league:leagues(*))
    `
    )
    .eq("city.slug", citySlug)
    .eq("status", "active")
    .order("is_verified", { ascending: false })
    .order("is_premium", { ascending: false });

  // Filter client-side: venue must show at least one of the target leagues
  return (data || []).filter((v: any) => {
    const slugs = (v.venue_leagues || [])
      .map((vl: any) => vl.league?.slug)
      .filter(Boolean);
    return slugs.some((s: string) => leagueSlugs.includes(s));
  });
}

// ============================================================
// FEATURED VENUES (homepage)
// ============================================================

/**
 * Top verified venues by rating — used on the homepage featured venues section.
 */
export async function getFeaturedVenues(limit = 3): Promise<Venue[]> {
  const supabase = await createClient();
  const { data } = await supabase
    .from("venues")
    .select(
      `
      *,
      city:cities(*),
      venue_leagues(*, league:leagues(*))
    `
    )
    .eq("status", "active")
    .eq("is_verified", true)
    .order("google_rating", { ascending: false })
    .order("google_review_count", { ascending: false })
    .limit(limit);
  return data || [];
}
