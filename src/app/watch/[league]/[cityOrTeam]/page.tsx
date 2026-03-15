import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { MapPin, Tv, ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import VenueCard from "@/components/venues/VenueCard";
import FAQSection from "@/components/seo/FAQSection";
import JsonLd from "@/components/seo/JsonLd";
import {
  getLeagueBySlug,
  getCityBySlug,
  getTeamBySlug,
  getVenuesForLeagueInCity,
  getCitiesWithVenuesForLeague,
} from "@/lib/supabase/queries";
import {
  generateLeagueCityMeta,
  generateFAQs,
  generateFAQSchema,
  generateVenueListSchema,
  generateBreadcrumbSchema,
} from "@/lib/seo";
import { SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ league: string; cityOrTeam: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { league: leagueSlug, cityOrTeam } = await params;
  const league = await getLeagueBySlug(leagueSlug);
  if (!league) return {};

  // Try city first, then team
  const city = await getCityBySlug(cityOrTeam);
  if (city) {
    const meta = generateLeagueCityMeta(league.name, city.name, 0);
    return { title: meta.title, description: meta.description };
  }

  const team = await getTeamBySlug(cityOrTeam);
  if (team) {
    return {
      title: `Where to Watch ${team.name} | Best Bars & Venues — WatchLocal`,
      description: `Find the best bars and venues showing ${team.name} (${league.name}) worldwide. Verified venues and fan communities.`,
    };
  }

  return {};
}

export default async function LeagueCityOrTeamPage({ params }: Props) {
  const { league: leagueSlug, cityOrTeam } = await params;
  const league = await getLeagueBySlug(leagueSlug);
  if (!league) notFound();

  // Try city first
  const city = await getCityBySlug(cityOrTeam);
  if (city) {
    return renderLeagueCity(league, city, leagueSlug);
  }

  // Then team
  const team = await getTeamBySlug(cityOrTeam);
  if (team) {
    return renderTeamOverview(league, team, leagueSlug);
  }

  notFound();
}

async function renderLeagueCity(league: any, city: any, leagueSlug: string) {
  const venues = await getVenuesForLeagueInCity(leagueSlug, city.slug);
  const faqs = generateFAQs(
    league.name,
    city.name,
    league.name,
    city.timezone,
    city.country
  );

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs
          items={[
            { label: league.name, href: `/watch/${leagueSlug}` },
            { label: city.name },
          ]}
        />

        <JsonLd
          data={generateBreadcrumbSchema([
            { name: "Home", url: SITE_URL },
            { name: league.name, url: `${SITE_URL}/watch/${leagueSlug}` },
            {
              name: city.name,
              url: `${SITE_URL}/watch/${leagueSlug}/${city.slug}`,
            },
          ])}
        />
        {venues.length > 0 && (
          <JsonLd
            data={generateVenueListSchema(venues, city.name, league.name)}
          />
        )}
        <JsonLd data={generateFAQSchema(faqs)} />

        <div className="mt-6">
          <h1 className="text-3xl font-bold">
            Where to watch {league.name} in {city.name}
          </h1>
          <p className="mt-2 text-muted-foreground">
            {venues.length > 0
              ? `${venues.length} verified venue${venues.length !== 1 ? "s" : ""} showing ${league.short_name} in ${city.name}, ${city.country}.`
              : `No venues listed yet for ${league.short_name} in ${city.name}.`}
          </p>
        </div>

        {venues.length > 0 ? (
          <div className="mt-8 grid gap-4 md:grid-cols-2">
            {venues.map((venue) => (
              <VenueCard key={venue.id} venue={venue} />
            ))}
          </div>
        ) : (
          <div className="mt-8 rounded-xl border border-border p-8 text-center">
            <p className="text-muted-foreground">
              Know a bar in {city.name} that shows {league.name}?
            </p>
            <Link
              href="/submit-venue"
              className="mt-4 inline-block rounded-lg bg-brand px-6 py-2 text-sm font-medium text-white"
            >
              Submit a venue
            </Link>
          </div>
        )}

        {/* FAQ */}
        <section className="mt-12">
          <h2 className="text-xl font-bold">
            Frequently asked questions
          </h2>
          <div className="mt-4">
            <FAQSection faqs={faqs} />
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}

async function renderTeamOverview(
  league: any,
  team: any,
  leagueSlug: string
) {
  const cities = await getCitiesWithVenuesForLeague(leagueSlug);

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs
          items={[
            { label: league.name, href: `/watch/${leagueSlug}` },
            { label: team.name },
          ]}
        />

        <div className="mt-6">
          <h1 className="text-3xl font-bold">
            Where to watch {team.name}
          </h1>
          <p className="mt-2 text-muted-foreground">
            Find sports bars showing {team.name} ({league.name}) around the
            world. Pick a city below.
          </p>
        </div>

        {cities.length > 0 ? (
          <div className="mt-8 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
            {cities.map((city: any) => (
              <Link
                key={city.slug}
                href={`/watch/${leagueSlug}/${team.slug}/${city.slug}`}
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
        ) : (
          <div className="mt-8 rounded-xl border border-border p-8 text-center">
            <p className="text-muted-foreground">
              No venues listed for {team.name} yet.
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
