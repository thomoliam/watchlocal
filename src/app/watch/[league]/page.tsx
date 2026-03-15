import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { MapPin, ChevronRight, Users } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import { getLeagueBySlug, getTeamsByLeague, getCitiesWithVenuesForLeague } from "@/lib/supabase/queries";
import { SPORT_ICONS } from "@/lib/constants";

interface Props {
  params: Promise<{ league: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { league: leagueSlug } = await params;
  const league = await getLeagueBySlug(leagueSlug);
  if (!league) return {};
  return {
    title: `Where to Watch ${league.name} | Best Sports Bars Worldwide — WatchLocal`,
    description: `Find the best bars and venues showing ${league.name} in cities around the world. Verified venues, local kick-off times, and fan communities.`,
  };
}

export default async function LeaguePage({ params }: Props) {
  const { league: leagueSlug } = await params;
  const league = await getLeagueBySlug(leagueSlug);
  if (!league) notFound();

  const [teams, cities] = await Promise.all([
    getTeamsByLeague(league.id),
    getCitiesWithVenuesForLeague(leagueSlug),
  ]);

  const sportIcon = SPORT_ICONS[league.sport] || "🏆";

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs
          items={[{ label: league.name }]}
        />

        {/* Hero */}
        <div className="mt-6">
          <div className="flex items-center gap-3">
            <span className="text-4xl">{sportIcon}</span>
            <div>
              <h1 className="text-3xl font-bold">
                Where to watch {league.name}
              </h1>
              <p className="mt-1 text-muted-foreground">
                Find sports bars showing {league.short_name} in cities around
                the world.
              </p>
            </div>
          </div>
        </div>

        {/* Cities with venues */}
        {cities.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">
              Cities showing {league.short_name}
            </h2>
            <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {cities.map((city: any) => (
                <Link
                  key={city.slug}
                  href={`/watch/${leagueSlug}/${city.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <MapPin className="h-5 w-5 text-brand" />
                  <div className="min-w-0">
                    <div className="truncate font-medium">{city.name}</div>
                    <div className="text-xs text-muted-foreground">
                      {city.venue_count} venue{city.venue_count !== 1 ? "s" : ""}
                    </div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Teams */}
        {teams.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">{league.name} teams</h2>
            <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {teams.map((team) => (
                <Link
                  key={team.slug}
                  href={`/watch/${leagueSlug}/${team.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <Users className="h-5 w-5 text-brand" />
                  <div className="min-w-0">
                    <div className="truncate font-medium">{team.name}</div>
                    {team.short_name && (
                      <div className="text-xs text-muted-foreground">
                        {team.short_name}
                      </div>
                    )}
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Empty state */}
        {cities.length === 0 && teams.length === 0 && (
          <div className="mt-10 rounded-xl border border-border p-8 text-center">
            <p className="text-muted-foreground">
              No venues listed for {league.name} yet.
            </p>
            <Link
              href="/submit-venue"
              className="mt-4 inline-block rounded-lg bg-brand px-6 py-2 text-sm font-medium text-white"
            >
              Submit a venue
            </Link>
          </div>
        )}
      </main>
      <Footer />
    </>
  );
}
