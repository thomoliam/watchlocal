import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Link from "next/link";
import { Calendar, Clock, MapPin, Tv, Globe } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import VenueCard from "@/components/venues/VenueCard";
import {
  getFixtureById,
  getLeagueBySlug,
  getCitiesWithVenuesForLeague,
} from "@/lib/supabase/queries";
import { SITE_URL, SPORT_ICONS } from "@/lib/constants";

// ISR — revalidate every hour so new fixtures appear and results update
export const revalidate = 3600;

interface Props {
  params: Promise<{ league: string; fixture: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { league: leagueSlug, fixture: fixtureId } = await params;
  const fixture = await getFixtureById(fixtureId);
  if (!fixture || !fixture.league) return {};

  const matchName = `${fixture.home_team_name} vs ${fixture.away_team_name}`;
  const matchDate = new Date(fixture.match_date);
  const dateStr = matchDate.toLocaleDateString("en-GB", {
    weekday: "long",
    day: "numeric",
    month: "long",
    year: "numeric",
  });

  const title = `Where to Watch ${matchName} | ${fixture.league.name} | WatchLocal`;
  const description = `Find sports bars showing ${matchName} (${fixture.league.name}) on ${dateStr}. Verified venues worldwide with confirmed coverage.`;

  const ogImage = `${SITE_URL}/api/og?title=${encodeURIComponent(`Watch ${matchName}`)}&subtitle=${encodeURIComponent(dateStr)}&badge=${encodeURIComponent(fixture.league.short_name || fixture.league.name)}`;

  return {
    title,
    description,
    openGraph: {
      title,
      description,
      type: "website",
      images: [{ url: ogImage, width: 1200, height: 630, alt: title }],
      url: `${SITE_URL}/matches/${leagueSlug}/${fixtureId}`,
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
      images: [ogImage],
    },
    alternates: {
      canonical: `${SITE_URL}/matches/${leagueSlug}/${fixtureId}`,
    },
  };
}

export default async function MatchPage({ params }: Props) {
  const { league: leagueSlug, fixture: fixtureId } = await params;

  const [fixture, league] = await Promise.all([
    getFixtureById(fixtureId),
    getLeagueBySlug(leagueSlug),
  ]);

  if (!fixture || !league) notFound();

  const matchDate = new Date(fixture.match_date);
  const isPast = matchDate < new Date();

  const dateStr = matchDate.toLocaleDateString("en-GB", {
    weekday: "long",
    day: "numeric",
    month: "long",
    year: "numeric",
  });
  const timeStr = matchDate.toLocaleTimeString("en-GB", {
    hour: "2-digit",
    minute: "2-digit",
    timeZoneName: "short",
  });

  const matchName = `${fixture.home_team_name} vs ${fixture.away_team_name}`;
  const sportIcon = SPORT_ICONS[league.sport] || "🏆";

  // Cities where you can watch this league
  const cities = await getCitiesWithVenuesForLeague(leagueSlug);
  const topCities = cities.slice(0, 12);

  // SportsEvent JSON-LD schema — this is the key SEO win
  const sportsEventSchema = {
    "@context": "https://schema.org",
    "@type": "SportsEvent",
    name: matchName,
    description: `Watch ${matchName} live at sports bars worldwide. ${league.name} fixture on ${dateStr}.`,
    startDate: fixture.match_date,
    sport: league.sport,
    url: `${SITE_URL}/matches/${leagueSlug}/${fixtureId}`,
    organizer: {
      "@type": "SportsOrganization",
      name: league.name,
      url: `${SITE_URL}/watch/${leagueSlug}`,
    },
    ...(fixture.home_team && {
      homeTeam: {
        "@type": "SportsTeam",
        name: fixture.home_team_name,
      },
    }),
    ...(fixture.away_team && {
      awayTeam: {
        "@type": "SportsTeam",
        name: fixture.away_team_name,
      },
    }),
  };

  const breadcrumbs = [
    { label: "Matches", href: `/watch/${leagueSlug}` },
    { label: league.name, href: `/watch/${leagueSlug}` },
    { label: matchName },
  ];

  return (
    <>
      <JsonLd data={sportsEventSchema} />
      <Header />
      <main>
        {/* Hero */}
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <Breadcrumbs items={breadcrumbs} />

            {/* League badge */}
            <div className="mt-4 flex items-center gap-2">
              <span className="text-2xl">{sportIcon}</span>
              <Link
                href={`/watch/${leagueSlug}`}
                className="text-sm font-medium text-brand hover:underline"
              >
                {league.name}
              </Link>
              {fixture.round && (
                <span className="text-sm text-muted-foreground">
                  · {fixture.round}
                </span>
              )}
            </div>

            {/* Match title */}
            <h1 className="mt-3 text-3xl font-bold tracking-tight md:text-4xl">
              {matchName}
            </h1>

            {/* Match details */}
            <div className="mt-4 flex flex-wrap items-center gap-4 text-sm text-muted-foreground">
              <span className="flex items-center gap-1.5">
                <Calendar className="h-4 w-4" />
                {dateStr}
              </span>
              <span className="flex items-center gap-1.5">
                <Clock className="h-4 w-4" />
                {timeStr}
              </span>
            </div>

            {/* Score (if played) */}
            {isPast && fixture.home_score !== null && fixture.away_score !== null && (
              <div className="mt-4 inline-flex items-center gap-3 rounded-lg border border-border bg-background px-4 py-2">
                <span className="font-semibold">{fixture.home_team_name}</span>
                <span className="text-xl font-bold">
                  {fixture.home_score} – {fixture.away_score}
                </span>
                <span className="font-semibold">{fixture.away_team_name}</span>
              </div>
            )}

            {!isPast && (
              <p className="mt-4 text-sm text-muted-foreground">
                Find a sports bar near you showing this match below.
              </p>
            )}
          </div>
        </section>

        {/* Timezone kick-off table */}
        {!isPast && (
          <section className="mx-auto max-w-6xl px-4 py-8">
            <h2 className="flex items-center gap-2 text-lg font-bold">
              <Globe className="h-5 w-5 text-brand" />
              Kick-off times by timezone
            </h2>
            <div className="mt-4 overflow-hidden rounded-xl border border-border">
              <table className="w-full text-sm">
                <thead className="bg-muted text-xs font-semibold uppercase tracking-wide text-muted-foreground">
                  <tr>
                    <th className="px-4 py-3 text-left">Region</th>
                    <th className="px-4 py-3 text-left">City</th>
                    <th className="px-4 py-3 text-left">Day</th>
                    <th className="px-4 py-3 text-left">Time</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-border">
                  {[
                    { region: "UTC", city: "Universal", tz: "UTC" },
                    { region: "UK / Ireland", city: "London", tz: "Europe/London" },
                    { region: "W. Europe", city: "Paris / Berlin", tz: "Europe/Paris" },
                    { region: "E. Europe", city: "Athens / Cairo", tz: "Europe/Athens" },
                    { region: "Gulf", city: "Dubai", tz: "Asia/Dubai" },
                    { region: "South Asia", city: "Mumbai", tz: "Asia/Kolkata" },
                    { region: "SE Asia", city: "Bangkok / Jakarta", tz: "Asia/Bangkok" },
                    { region: "SE Asia", city: "Singapore / KL", tz: "Asia/Singapore" },
                    { region: "East Asia", city: "Tokyo / Seoul", tz: "Asia/Tokyo" },
                    { region: "E. Australia", city: "Sydney", tz: "Australia/Sydney" },
                    { region: "W. Australia", city: "Perth", tz: "Australia/Perth" },
                    { region: "US East", city: "New York", tz: "America/New_York" },
                    { region: "US Central", city: "Chicago", tz: "America/Chicago" },
                    { region: "US West", city: "Los Angeles", tz: "America/Los_Angeles" },
                  ].map(({ region, city, tz }) => {
                    const d = new Date(fixture.match_date);
                    const dayStr = d.toLocaleDateString("en-GB", { weekday: "short", day: "numeric", month: "short", timeZone: tz });
                    const timeStr = d.toLocaleTimeString("en-GB", { hour: "2-digit", minute: "2-digit", timeZone: tz });
                    const tzAbbr = d.toLocaleTimeString("en-US", { timeZoneName: "short", timeZone: tz }).split(" ").pop();
                    return (
                      <tr key={tz} className="hover:bg-muted/40">
                        <td className="px-4 py-2.5 font-medium">{region}</td>
                        <td className="px-4 py-2.5 text-muted-foreground">{city}</td>
                        <td className="px-4 py-2.5 text-muted-foreground">{dayStr}</td>
                        <td className="px-4 py-2.5">
                          <span className="font-semibold">{timeStr}</span>
                          <span className="ml-1.5 text-xs text-muted-foreground">{tzAbbr}</span>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>
          </section>
        )}

        {/* Cities to watch */}
        <section className="mx-auto max-w-6xl px-4 py-10">
          <h2 className="text-xl font-bold">
            {isPast
              ? `Cities that showed ${league.name}`
              : `Watch ${matchName} in your city`}
          </h2>
          <p className="mt-2 text-muted-foreground">
            {isPast
              ? `Find sports bars that show ${league.name} — check for replay coverage locally.`
              : `Choose your city to find verified sports bars confirmed to show ${league.name} matches.`}
          </p>

          {topCities.length > 0 ? (
            <div className="mt-6 grid gap-3 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
              {topCities.map((city) => (
                <Link
                  key={city.slug}
                  href={`/watch/${leagueSlug}/${city.slug}`}
                  className="group flex items-center justify-between rounded-lg border border-border bg-background px-4 py-3 transition-all hover:border-brand hover:shadow-sm"
                >
                  <div>
                    <p className="font-medium group-hover:text-brand">
                      {city.name}
                    </p>
                    <p className="text-xs text-muted-foreground">
                      {city.venue_count} venue{city.venue_count !== 1 ? "s" : ""}
                    </p>
                  </div>
                  <MapPin className="h-4 w-4 text-muted-foreground group-hover:text-brand" />
                </Link>
              ))}
            </div>
          ) : (
            <div className="mt-6 rounded-xl border border-border p-8 text-center">
              <Tv className="mx-auto h-8 w-8 text-muted-foreground" />
              <p className="mt-3 text-muted-foreground">
                No verified venues yet for {league.name}.{" "}
                <Link href="/submit-venue" className="text-brand hover:underline">
                  Submit one
                </Link>
                .
              </p>
            </div>
          )}
        </section>

        {/* League CTA */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-8">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
              <div>
                <h2 className="font-semibold">
                  More {league.name} fixtures
                </h2>
                <p className="text-sm text-muted-foreground">
                  Find all upcoming matches and venues worldwide.
                </p>
              </div>
              <Link
                href={`/watch/${leagueSlug}`}
                className="inline-flex items-center gap-2 rounded-lg bg-brand px-5 py-2.5 text-sm font-medium text-white hover:opacity-90"
              >
                {sportIcon} Browse all {league.short_name || league.name} venues
              </Link>
            </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
