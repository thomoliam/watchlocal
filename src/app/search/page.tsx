import Link from "next/link";
import type { Metadata } from "next";
import { Trophy, MapPin, Tv, Users } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import {
  searchTeams,
  searchVenues,
  searchLeagues,
  searchCities,
  getLeagueCityCombos,
} from "@/lib/supabase/queries";
import { SPORT_ICONS } from "@/lib/constants";

interface Props {
  searchParams: Promise<{ q?: string }>;
}

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";

export async function generateMetadata({ searchParams }: Props): Promise<Metadata> {
  const { q } = await searchParams;
  const title = q ? `Search results for "${q}" | WatchLocal` : "Search Sports Bars & Venues | WatchLocal";
  const description = q
    ? `Search results for "${q}" — find sports bars, leagues, cities, and venues on WatchLocal.`
    : "Search for sports bars, leagues, teams, and cities on WatchLocal. Find verified venues worldwide.";
  return {
    title,
    description,
    openGraph: {
      title,
      description,
      url: q ? `${SITE_URL}/search?q=${encodeURIComponent(q)}` : `${SITE_URL}/search`,
      type: "website",
    },
    // No canonical for search pages — prevent indexing of search result pages
    robots: { index: false, follow: true },
  };
}

export default async function SearchPage({ searchParams }: Props) {
  const { q } = await searchParams;
  const query = q?.trim() || "";

  if (!query || query.length < 2) {
    return (
      <>
        <Header />
        <main className="mx-auto max-w-6xl px-4 py-12 text-center">
          <h1 className="text-2xl font-bold">Search</h1>
          <p className="mt-2 text-muted-foreground">
            Enter a team, league, city, or venue name to search.
          </p>
        </main>
        <Footer />
      </>
    );
  }

  const [teams, venues, leagues, cities, allCombos] = await Promise.all([
    searchTeams(query),
    searchVenues(query),
    searchLeagues(query),
    searchCities(query),
    getLeagueCityCombos(),
  ]);

  // Build league+city combo results for matching cities and leagues
  const queryLower = query.toLowerCase();
  const matchedCitySlugs = new Set(cities.map((c) => c.slug));
  const matchedLeagueSlugs = new Set(leagues.map((l) => l.slug));

  // Find combos where the search matches either the city or the league
  const combos = allCombos
    .filter((c: any) => {
      const cityMatch = matchedCitySlugs.has(c.city_slug);
      const leagueMatch = matchedLeagueSlugs.has(c.league_slug);
      // Also do a loose text match on city/league names from the combo data
      const textMatch =
        (c.city_name && c.city_name.toLowerCase().includes(queryLower)) ||
        (c.league_name && c.league_name.toLowerCase().includes(queryLower));
      return cityMatch || leagueMatch || textMatch;
    })
    .slice(0, 12);

  const totalResults = teams.length + venues.length + leagues.length + cities.length + combos.length;

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <h1 className="text-2xl font-bold">
          Results for &ldquo;{query}&rdquo;
        </h1>
        <p className="mt-1 text-sm text-muted-foreground">
          {totalResults} result{totalResults !== 1 ? "s" : ""} found
        </p>

        {totalResults === 0 && (
          <div className="mt-12 rounded-xl border border-border p-8 text-center">
            <p className="text-muted-foreground">
              No results found for &ldquo;{query}&rdquo;. Try a different search term.
            </p>
          </div>
        )}

        {/* Teams */}
        {teams.length > 0 && (
          <section className="mt-8">
            <h2 className="flex items-center gap-2 text-lg font-bold">
              <Users className="h-5 w-5 text-brand" />
              Teams
            </h2>
            <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {teams.map((team) => (
                <Link
                  key={team.id}
                  href={team.league ? `/watch/${team.league.slug}` : "#"}
                  className="group block rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <div className="flex items-center gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                      {team.league
                        ? SPORT_ICONS[team.league.sport] || "🏆"
                        : "🏆"}
                    </div>
                    <div className="min-w-0">
                      <h3 className="truncate font-semibold group-hover:text-brand">
                        {team.name}
                      </h3>
                      {team.league && (
                        <p className="truncate text-xs text-muted-foreground">
                          {team.league.name}
                        </p>
                      )}
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Leagues */}
        {leagues.length > 0 && (
          <section className="mt-8">
            <h2 className="flex items-center gap-2 text-lg font-bold">
              <Trophy className="h-5 w-5 text-brand" />
              Leagues
            </h2>
            <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {leagues.map((league) => (
                <Link
                  key={league.id}
                  href={`/watch/${league.slug}`}
                  className="group block rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <div className="flex items-center gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                      {SPORT_ICONS[league.sport] || "🏆"}
                    </div>
                    <div className="min-w-0">
                      <h3 className="truncate font-semibold group-hover:text-brand">
                        {league.name}
                      </h3>
                      <p className="truncate text-xs text-muted-foreground">
                        {league.sport.replace("-", " ").replace(/\b\w/g, (c) => c.toUpperCase())}
                        {league.country ? ` · ${league.country}` : ""}
                      </p>
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* League + City Combos */}
        {combos.length > 0 && (
          <section className="mt-8">
            <h2 className="flex items-center gap-2 text-lg font-bold">
              <Tv className="h-5 w-5 text-brand" />
              Where to Watch
            </h2>
            <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {combos.map((combo: any) => (
                <Link
                  key={`${combo.league_slug}-${combo.city_slug}`}
                  href={`/watch/${combo.league_slug}/${combo.city_slug}`}
                  className="group block rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <div className="flex items-center gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                      📺
                    </div>
                    <div className="min-w-0">
                      <h3 className="truncate font-semibold group-hover:text-brand">
                        {combo.league_name} in {combo.city_name}
                      </h3>
                      <p className="truncate text-xs text-muted-foreground">
                        {combo.venue_count} venue{combo.venue_count !== 1 ? "s" : ""}
                        {combo.city_country ? ` · ${combo.city_country}` : ""}
                      </p>
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Cities */}
        {cities.length > 0 && (
          <section className="mt-8">
            <h2 className="flex items-center gap-2 text-lg font-bold">
              <MapPin className="h-5 w-5 text-brand" />
              Cities
            </h2>
            <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {cities.map((city) => (
                <Link
                  key={city.id}
                  href={`/cities/${city.slug}`}
                  className="group block rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <div className="flex items-center gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                      🌍
                    </div>
                    <div className="min-w-0">
                      <h3 className="truncate font-semibold group-hover:text-brand">
                        {city.name}
                      </h3>
                      <p className="truncate text-xs text-muted-foreground">
                        {city.country}
                      </p>
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Venues */}
        {venues.length > 0 && (
          <section className="mt-8">
            <h2 className="flex items-center gap-2 text-lg font-bold">
              <Tv className="h-5 w-5 text-brand" />
              Venues
            </h2>
            <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {venues.map((venue) => (
                <Link
                  key={venue.id}
                  href={`/venues/${venue.slug}`}
                  className="group block rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <div className="flex items-center gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                      📺
                    </div>
                    <div className="min-w-0">
                      <h3 className="truncate font-semibold group-hover:text-brand">
                        {venue.name}
                      </h3>
                      <p className="truncate text-xs text-muted-foreground">
                        {venue.city?.name ? `${venue.city.name}, ${venue.city.country}` : venue.address || ""}
                      </p>
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}
      </main>
      <Footer />
    </>
  );
}
