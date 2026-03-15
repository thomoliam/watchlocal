import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { Tv, ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import VenueCard from "@/components/venues/VenueCard";
import { getCityBySlug, getVenuesInCity } from "@/lib/supabase/queries";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ city: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { city: citySlug } = await params;
  const city = await getCityBySlug(citySlug);
  if (!city) return {};
  const title = `Sports Bars in ${city.name} | Where to Watch Live Sport`;
  const description = `Find the best sports bars and venues in ${city.name}, ${city.country}. Browse by league, see screen counts, atmosphere ratings, and verified reviews.`;
  return {
    title,
    description,
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/cities/${citySlug}`,
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
    },
    alternates: {
      canonical: `${SITE_URL}/cities/${citySlug}`,
    },
  };
}

export default async function CityPage({ params }: Props) {
  const { city: citySlug } = await params;
  const city = await getCityBySlug(citySlug);
  if (!city) notFound();

  const venues = await getVenuesInCity(citySlug);

  // Extract unique leagues from venues
  const leagueMap = new Map<string, { name: string; slug: string; sport: string; short_name: string }>();
  for (const venue of venues) {
    for (const vl of venue.venue_leagues || []) {
      if (vl.league && !leagueMap.has(vl.league.slug)) {
        leagueMap.set(vl.league.slug, vl.league as any);
      }
    }
  }
  const leagues = Array.from(leagueMap.values());

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs items={[{ label: "Cities" }, { label: city.name }]} />

        <div className="mt-6">
          <h1 className="text-3xl font-bold">
            Sports bars in {city.name}
          </h1>
          <p className="mt-2 text-muted-foreground">
            {venues.length > 0
              ? `${venues.length} venue${venues.length !== 1 ? "s" : ""} in ${city.name}, ${city.country}. Timezone: ${city.timezone}.`
              : `No venues listed yet in ${city.name}.`}
          </p>
        </div>

        {/* Leagues available */}
        {leagues.length > 0 && (
          <section className="mt-8">
            <h2 className="text-lg font-bold">Leagues shown in {city.name}</h2>
            <div className="mt-3 flex flex-wrap gap-2">
              {leagues.map((league) => (
                <Link
                  key={league.slug}
                  href={`/watch/${league.slug}/${citySlug}`}
                  className="flex items-center gap-2 rounded-full border border-border px-3 py-1.5 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
                >
                  <span>{SPORT_ICONS[league.sport] || "🏆"}</span>
                  {league.short_name || league.name}
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Venues */}
        {venues.length > 0 ? (
          <div className="mt-8 grid gap-4 md:grid-cols-2">
            {venues.map((venue) => (
              <VenueCard key={venue.id} venue={venue} />
            ))}
          </div>
        ) : (
          <div className="mt-8 rounded-xl border border-border p-8 text-center">
            <p className="text-muted-foreground">
              Know a sports bar in {city.name}?
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
