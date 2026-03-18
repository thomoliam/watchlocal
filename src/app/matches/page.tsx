import type { Metadata } from "next";
import Link from "next/link";
import { Calendar, Clock, ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { getAllUpcomingFixtures } from "@/lib/supabase/queries";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

export const revalidate = 3600;

export const metadata: Metadata = {
  title: "Upcoming Matches — Find Where to Watch | WatchLocal",
  description:
    "Browse upcoming fixtures across Premier League, NFL, AFL, NRL, Champions League and more. Find a sports bar near you showing tonight's game.",
  alternates: { canonical: `${SITE_URL}/matches` },
  openGraph: {
    title: "Upcoming Matches | WatchLocal",
    description:
      "Browse upcoming fixtures and find a sports bar showing the game near you.",
    url: `${SITE_URL}/matches`,
    type: "website",
  },
};

function formatMatchDate(iso: string) {
  const d = new Date(iso);
  return d.toLocaleDateString("en-GB", {
    weekday: "short",
    day: "numeric",
    month: "short",
    year: "numeric",
  });
}

function formatMatchTime(iso: string) {
  const d = new Date(iso);
  return d.toLocaleTimeString("en-GB", { hour: "2-digit", minute: "2-digit", timeZoneName: "short" });
}

function groupByDate(fixtures: Awaited<ReturnType<typeof getAllUpcomingFixtures>>) {
  const groups = new Map<string, typeof fixtures>();
  for (const f of fixtures) {
    const dateKey = new Date(f.match_date).toISOString().slice(0, 10);
    if (!groups.has(dateKey)) groups.set(dateKey, []);
    groups.get(dateKey)!.push(f);
  }
  return groups;
}

export default async function MatchesIndexPage() {
  const fixtures = await getAllUpcomingFixtures(200);
  const grouped = groupByDate(fixtures);

  const breadcrumbSchema = {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: [
      { "@type": "ListItem", position: 1, name: "Home", item: SITE_URL },
      { "@type": "ListItem", position: 2, name: "Matches", item: `${SITE_URL}/matches` },
    ],
  };

  return (
    <>
      <JsonLd data={breadcrumbSchema} />
      <Header />
      <main>
        {/* Hero */}
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <Breadcrumbs items={[{ label: "Matches" }]} />
            <h1 className="mt-4 text-3xl font-bold tracking-tight md:text-4xl">
              Upcoming Matches
            </h1>
            <p className="mt-2 max-w-2xl text-muted-foreground">
              Browse upcoming fixtures across all leagues. Click a match to find sports bars showing it near you.
            </p>
          </div>
        </section>

        {/* Fixtures */}
        <section className="mx-auto max-w-6xl px-4 py-10">
          {grouped.size === 0 ? (
            <div className="rounded-xl border border-border p-12 text-center">
              <Calendar className="mx-auto h-10 w-10 text-muted-foreground" />
              <p className="mt-4 text-lg font-medium">No fixtures scheduled yet</p>
              <p className="mt-2 text-muted-foreground">
                Check back soon — fixtures are added regularly across all leagues.
              </p>
              <Link
                href="/sports"
                className="mt-6 inline-flex items-center gap-2 rounded-lg bg-brand px-5 py-2.5 text-sm font-medium text-white hover:opacity-90"
              >
                Browse leagues
              </Link>
            </div>
          ) : (
            <div className="space-y-10">
              {Array.from(grouped.entries()).map(([dateKey, dayFixtures]) => (
                <div key={dateKey}>
                  <h2 className="mb-4 flex items-center gap-2 text-base font-semibold text-muted-foreground">
                    <Calendar className="h-4 w-4" />
                    {formatMatchDate(dayFixtures[0].match_date)}
                  </h2>
                  <div className="divide-y divide-border rounded-xl border border-border bg-background overflow-hidden">
                    {dayFixtures.map((fixture) => {
                      const leagueSlug = (fixture.league as any)?.slug ?? "";
                      const leagueName = (fixture.league as any)?.name ?? "";
                      const sport = (fixture.league as any)?.sport ?? "";
                      const icon = SPORT_ICONS[sport] || "🏆";
                      return (
                        <Link
                          key={fixture.id}
                          href={`/matches/${leagueSlug}/${fixture.id}`}
                          className="group flex items-center justify-between gap-4 px-5 py-4 transition-colors hover:bg-muted"
                        >
                          <div className="flex items-center gap-3 min-w-0">
                            <span className="text-xl shrink-0" aria-hidden="true">{icon}</span>
                            <div className="min-w-0">
                              <p className="font-semibold truncate group-hover:text-brand">
                                {fixture.home_team_name} vs {fixture.away_team_name}
                              </p>
                              <p className="mt-0.5 text-xs text-muted-foreground">{leagueName}</p>
                            </div>
                          </div>
                          <div className="flex shrink-0 items-center gap-4">
                            <span className="hidden items-center gap-1.5 text-sm text-muted-foreground sm:flex">
                              <Clock className="h-3.5 w-3.5" />
                              {formatMatchTime(fixture.match_date)}
                            </span>
                            <ChevronRight className="h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                          </div>
                        </Link>
                      );
                    })}
                  </div>
                </div>
              ))}
            </div>
          )}
        </section>
      </main>
      <Footer />
    </>
  );
}
