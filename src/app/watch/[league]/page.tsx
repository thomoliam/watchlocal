import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { MapPin, ChevronRight, Users, Globe } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import {
  getLeagueBySlug,
  getTeamsByLeague,
  getCitiesWithVenuesForLeague,
  getTopLeagueSlugs,
} from "@/lib/supabase/queries";
import { generateBreadcrumbSchema } from "@/lib/seo";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ league: string }>;
}

// Dynamic — no static params (Supabase queries need request context)
export const dynamic = "force-dynamic";

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { league: leagueSlug } = await params;
  const league = await getLeagueBySlug(leagueSlug);
  if (!league) return {};

  const cities = await getCitiesWithVenuesForLeague(leagueSlug);
  const cityCount = cities.length;
  const totalVenues = cities.reduce(
    (sum: number, c: any) => sum + (c.venue_count || 0),
    0
  );

  const title =
    cityCount > 0
      ? `Where to Watch ${league.name} Worldwide | Sports Bars in ${cityCount}+ Cities`
      : `Where to Watch ${league.name} Worldwide | Sports Bars`;

  const description =
    cityCount > 0
      ? `Find the best sports bars showing ${league.name} (${league.sport}) across ${cityCount} cities worldwide. ${totalVenues}+ verified venues with screen counts, atmosphere ratings, and reviews.`
      : `Find the best bars and venues showing ${league.name} in cities around the world. Verified venues, local kick-off times, and fan communities.`;

  return {
    title,
    description,
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/watch/${leagueSlug}`,
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
    },
    alternates: {
      canonical: `${SITE_URL}/watch/${leagueSlug}`,
    },
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
  const totalVenues = cities.reduce(
    (sum: number, c: any) => sum + (c.venue_count || 0),
    0
  );

  // Group cities by country for display
  const citiesByCountry = cities.reduce<Record<string, any[]>>((acc, city: any) => {
    const country = city.country || "Other";
    if (!acc[country]) acc[country] = [];
    acc[country].push(city);
    return acc;
  }, {});

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs items={[{ label: league.name }]} />

        <JsonLd
          data={generateBreadcrumbSchema([
            { name: "Home", url: SITE_URL },
            {
              name: league.name,
              url: `${SITE_URL}/watch/${leagueSlug}`,
            },
          ])}
        />

        {/* Hero */}
        <div className="mt-6">
          <div className="flex items-center gap-3">
            <span className="text-4xl" aria-hidden="true">
              {sportIcon}
            </span>
            <div>
              <h1 className="text-3xl font-bold">
                Where to watch {league.name}
              </h1>
              <p className="mt-1 text-sm font-medium text-blue-600 dark:text-blue-400">
                {league.sport.charAt(0).toUpperCase() +
                  league.sport.slice(1).replace("-", " ")}
                {league.country ? ` \u00B7 ${league.country}` : ""}
              </p>
            </div>
          </div>
          {league.description && (
            <p className="mt-3 max-w-2xl text-muted-foreground">
              {league.description}
            </p>
          )}
        </div>

        {/* Stats bar */}
        {cities.length > 0 && (
          <div className="mt-6 flex flex-wrap items-center gap-4 rounded-xl border border-blue-200 bg-blue-50 p-4 dark:border-blue-900 dark:bg-blue-950/40">
            <div className="flex items-center gap-2 text-sm font-medium">
              <Globe className="h-4 w-4 text-blue-600 dark:text-blue-400" />
              <span>
                {cities.length} {cities.length === 1 ? "city" : "cities"}
              </span>
            </div>
            <span className="text-muted-foreground">|</span>
            <div className="flex items-center gap-2 text-sm font-medium">
              <MapPin className="h-4 w-4 text-blue-600 dark:text-blue-400" />
              <span>
                {totalVenues} {totalVenues === 1 ? "venue" : "venues"}
              </span>
            </div>
            {Object.keys(citiesByCountry).length > 1 && (
              <>
                <span className="text-muted-foreground">|</span>
                <div className="text-sm font-medium">
                  {Object.keys(citiesByCountry).length} countries
                </div>
              </>
            )}
          </div>
        )}

        {/* Cities with venues */}
        {cities.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">
              Cities showing {league.short_name}
            </h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Pick a city to see verified venues and local kick-off times.
            </p>
            <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {cities.map((city: any) => (
                <Link
                  key={city.slug}
                  href={`/watch/${leagueSlug}/${city.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border bg-white p-4 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
                >
                  <MapPin className="h-5 w-5 shrink-0 text-blue-600 dark:text-blue-400" />
                  <div className="min-w-0">
                    <div className="truncate font-medium">{city.name}</div>
                    <div className="text-xs text-muted-foreground">
                      {city.venue_count}{" "}
                      {city.venue_count === 1 ? "venue" : "venues"}
                    </div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* More cities coming soon */}
        <div className="mt-6 rounded-xl border border-dashed border-border p-6 text-center">
          <p className="text-muted-foreground">
            {cities.length > 0
              ? `More cities coming soon. Know a bar that shows ${league.name}?`
              : `No venues listed for ${league.name} yet. Know a bar that shows their matches?`}
          </p>
          <Link
            href="/submit-venue"
            className="mt-3 inline-block rounded-lg bg-blue-600 px-6 py-2 text-sm font-medium text-white transition-colors hover:bg-blue-700"
          >
            Submit a venue
          </Link>
        </div>

        {/* Teams */}
        {teams.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">{league.name} teams</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Find venues by team to connect with fellow supporters.
            </p>
            <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {teams.map((team) => (
                <Link
                  key={team.slug}
                  href={`/watch/${leagueSlug}/${team.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border bg-white p-4 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
                >
                  <Users className="h-5 w-5 shrink-0 text-blue-600 dark:text-blue-400" />
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
      </main>
      <Footer />
    </>
  );
}
