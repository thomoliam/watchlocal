import { createClient } from "./server";
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
  // Simple bounding-box approach — fetch nearby then sort by distance in JS
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

  // Sort by distance and take closest N
  const withDist = data.map((v) => ({
    ...v,
    _dist:
      Math.pow(v.latitude - latitude, 2) +
      Math.pow(v.longitude - longitude, 2),
  }));
  withDist.sort((a, b) => a._dist - b._dist);
  return withDist.slice(0, limit).map(({ _dist, ...v }) => v) as Venue[];
}

// ============================================================
// FIXTURES
// ============================================================

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
// PAGE GENERATION
// ============================================================

export async function getAllPageCombos() {
  const supabase = await createClient();
  const { data } = await supabase.from("page_combos").select("*");
  return data || [];
}

export async function getLeagueCityCombos() {
  const supabase = await createClient();
  const { data } = await supabase
    .from("page_combos")
    .select("league_slug, city_slug")
    .gt("venue_count", 0);

  const seen = new Set<string>();
  return (data || []).filter((row) => {
    const key = `${row.league_slug}-${row.city_slug}`;
    if (seen.has(key)) return false;
    seen.add(key);
    return true;
  });
}
