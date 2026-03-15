import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
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
  getFanCommunities,
} from "@/lib/supabase/queries";
import {
  generateTeamCityMeta,
  generateFAQs,
  generateFAQSchema,
  generateVenueListSchema,
  generateBreadcrumbSchema,
} from "@/lib/seo";
import { SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ league: string; cityOrTeam: string; city: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { league: leagueSlug, cityOrTeam: teamSlug, city: citySlug } = await params;
  const [league, team, city] = await Promise.all([
    getLeagueBySlug(leagueSlug),
    getTeamBySlug(teamSlug),
    getCityBySlug(citySlug),
  ]);
  if (!league || !team || !city) return {};
  const meta = generateTeamCityMeta(team.name, city.name, league.name, 0);
  return {
    title: meta.title,
    description: meta.description,
    openGraph: {
      title: meta.title,
      description: meta.description,
      url: `${SITE_URL}/watch/${leagueSlug}/${teamSlug}/${citySlug}`,
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title: meta.title,
      description: meta.description,
    },
    alternates: {
      canonical: `${SITE_URL}/watch/${leagueSlug}/${teamSlug}/${citySlug}`,
    },
  };
}

export default async function MoneyPage({ params }: Props) {
  const { league: leagueSlug, cityOrTeam: teamSlug, city: citySlug } = await params;

  const [league, team, city] = await Promise.all([
    getLeagueBySlug(leagueSlug),
    getTeamBySlug(teamSlug),
    getCityBySlug(citySlug),
  ]);

  if (!league || !team || !city) notFound();

  const [venues, communities] = await Promise.all([
    getVenuesForLeagueInCity(leagueSlug, citySlug),
    getFanCommunities(teamSlug, citySlug),
  ]);

  const faqs = generateFAQs(
    team.name,
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
            { label: team.name, href: `/watch/${leagueSlug}/${teamSlug}` },
            { label: city.name },
          ]}
        />

        <JsonLd
          data={generateBreadcrumbSchema([
            { name: "Home", url: SITE_URL },
            { name: league.name, url: `${SITE_URL}/watch/${leagueSlug}` },
            {
              name: team.name,
              url: `${SITE_URL}/watch/${leagueSlug}/${teamSlug}`,
            },
            {
              name: city.name,
              url: `${SITE_URL}/watch/${leagueSlug}/${teamSlug}/${citySlug}`,
            },
          ])}
        />
        {venues.length > 0 && (
          <JsonLd
            data={generateVenueListSchema(venues, city.name, team.name)}
          />
        )}
        <JsonLd data={generateFAQSchema(faqs)} />

        {/* Hero */}
        <div className="mt-6">
          <h1 className="text-3xl font-bold md:text-4xl">
            Where to watch {team.name} in {city.name}
          </h1>
          <p className="mt-2 text-lg text-muted-foreground">
            {venues.length > 0
              ? `${venues.length} verified venue${venues.length !== 1 ? "s" : ""} showing ${team.name} (${league.short_name}) in ${city.name}, ${city.country}.`
              : `No venues listed yet for ${team.name} in ${city.name}.`}
          </p>
          <div className="mt-3 flex flex-wrap gap-2 text-sm text-muted-foreground">
            <span>Timezone: {city.timezone}</span>
          </div>
        </div>

        {/* Venue List */}
        {venues.length > 0 ? (
          <div className="mt-8 grid gap-4 md:grid-cols-2">
            {venues.map((venue) => (
              <VenueCard key={venue.id} venue={venue} />
            ))}
          </div>
        ) : (
          <div className="mt-8 rounded-xl border border-border p-8 text-center">
            <p className="text-muted-foreground">
              Know a bar in {city.name} that shows {team.name} games?
            </p>
            <Link
              href="/submit-venue"
              className="mt-4 inline-block rounded-lg bg-brand px-6 py-2 text-sm font-medium text-white"
            >
              Submit a venue
            </Link>
          </div>
        )}

        {/* Fan Communities */}
        {communities.length > 0 && (
          <section className="mt-12">
            <h2 className="text-xl font-bold">
              {team.name} fan communities in {city.name}
            </h2>
            <div className="mt-4 grid gap-3 sm:grid-cols-2">
              {communities.map((community) => (
                <a
                  key={community.id}
                  href={community.url}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="rounded-xl border border-border p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <div className="font-medium">{community.name}</div>
                  <div className="mt-1 text-sm text-muted-foreground">
                    {community.platform}
                    {community.member_count &&
                      ` · ${community.member_count.toLocaleString()} members`}
                  </div>
                  {community.description && (
                    <p className="mt-2 text-sm text-muted-foreground">
                      {community.description}
                    </p>
                  )}
                </a>
              ))}
            </div>
          </section>
        )}

        {/* FAQ */}
        <section className="mt-12">
          <h2 className="text-xl font-bold">Frequently asked questions</h2>
          <div className="mt-4">
            <FAQSection faqs={faqs} />
          </div>
        </section>

        {/* Related pages */}
        <section className="mt-12 mb-8">
          <h2 className="text-xl font-bold">More in {city.name}</h2>
          <div className="mt-4 flex flex-wrap gap-2">
            <Link
              href={`/watch/${leagueSlug}/${citySlug}`}
              className="rounded-full border border-border px-3 py-1 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
            >
              All {league.short_name} venues in {city.name}
            </Link>
            <Link
              href={`/cities/${citySlug}`}
              className="rounded-full border border-border px-3 py-1 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
            >
              All sports bars in {city.name}
            </Link>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
