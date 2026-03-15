import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { Globe, MapPin, Tv, ChevronRight, Trophy, Radio, Star } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import {
  getCitiesByCountry,
  getPopularLeaguesInCountry,
  getVenueCountForCountry,
  getVenuesInCountryCities,
} from "@/lib/supabase/queries";
import {
  slugToCountryName,
  countryToSlug,
  COUNTRY_META,
  REGION_COUNTRIES,
} from "@/lib/countries";
import { generateBreadcrumbSchema } from "@/lib/seo";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ country: string }>;
}

export const dynamic = "force-dynamic";

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { country: countrySlug } = await params;
  const countryName = slugToCountryName(countrySlug);

  const title = `Sports Bars in ${countryName} | Where to Watch Live Sport | WatchLocal`;
  const description = `Find the best sports bars and venues in ${countryName}. Browse cities, see venue counts, popular leagues, and broadcasting info.`;

  return {
    title,
    description,
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/countries/${countrySlug}`,
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
    },
    alternates: {
      canonical: `${SITE_URL}/countries/${countrySlug}`,
    },
  };
}

export default async function CountryPage({ params }: Props) {
  const { country: countrySlug } = await params;
  const countryName = slugToCountryName(countrySlug);
  const meta = COUNTRY_META[countrySlug];

  // Try to find cities with a case-insensitive match on country name
  const cities = await getCitiesByCountry(countryName);
  if (cities.length === 0) notFound();

  // Get venue counts per city, popular leagues, and total venue count in parallel
  const citySlugs = cities.map((c) => c.slug);
  const [venueCounts, popularLeagues, totalVenues] = await Promise.all([
    getVenuesInCountryCities(citySlugs),
    getPopularLeaguesInCountry(countryName),
    getVenueCountForCountry(countryName),
  ]);

  const venueCountMap = new Map(
    venueCounts.map((vc) => [vc.city_slug, vc.venue_count])
  );

  // Sort cities: those with venues first, then by tier
  const sortedCities = [...cities].sort((a, b) => {
    const aCount = venueCountMap.get(a.slug) || 0;
    const bCount = venueCountMap.get(b.slug) || 0;
    if (bCount !== aCount) return bCount - aCount;
    return a.tier - b.tier;
  });

  // Nearby countries from metadata or region
  const nearbyCountrySlugs = meta?.nearbyCountries || [];

  // JSON-LD
  const breadcrumbSchema = generateBreadcrumbSchema([
    { name: "Home", url: SITE_URL },
    { name: "Countries", url: `${SITE_URL}/countries` },
    { name: meta?.name || countryName, url: `${SITE_URL}/countries/${countrySlug}` },
  ]);

  const placeSchema = {
    "@context": "https://schema.org",
    "@type": "Country",
    name: meta?.name || countryName,
    url: `${SITE_URL}/countries/${countrySlug}`,
    description:
      meta?.intro ||
      `Find sports bars and venues to watch live sport in ${countryName}.`,
  };

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs
          items={[
            { label: "Countries", href: "/countries" },
            { label: meta?.name || countryName },
          ]}
        />

        <JsonLd data={breadcrumbSchema} />
        <JsonLd data={placeSchema} />

        {/* Hero */}
        <div className="mt-6">
          <h1 className="text-3xl font-bold">
            Sports Bars in {meta?.name || countryName}
          </h1>
          {meta?.region && (
            <p className="mt-1 text-sm font-medium text-blue-600 dark:text-blue-400">
              {meta.region}
            </p>
          )}
          <p className="mt-3 max-w-3xl text-muted-foreground">
            {meta?.intro ||
              `Discover the best sports bars and venues across ${countryName}. Browse ${cities.length} cities to find where to watch live sport.`}
          </p>
        </div>

        {/* Stats bar */}
        <div className="mt-6 flex flex-wrap items-center gap-4 rounded-xl border border-blue-200 bg-blue-50 p-4 dark:border-blue-900 dark:bg-blue-950/40">
          <div className="flex items-center gap-2 text-sm font-medium">
            <MapPin className="h-4 w-4 text-blue-600 dark:text-blue-400" />
            <span>
              {cities.length} {cities.length === 1 ? "city" : "cities"}
            </span>
          </div>
          <span className="text-muted-foreground">|</span>
          <div className="flex items-center gap-2 text-sm font-medium">
            <Tv className="h-4 w-4 text-blue-600 dark:text-blue-400" />
            <span>
              {totalVenues} {totalVenues === 1 ? "venue" : "venues"}
            </span>
          </div>
          {popularLeagues.length > 0 && (
            <>
              <span className="text-muted-foreground">|</span>
              <div className="flex items-center gap-2 text-sm font-medium">
                <Trophy className="h-4 w-4 text-blue-600 dark:text-blue-400" />
                <span>
                  {popularLeagues.length}{" "}
                  {popularLeagues.length === 1 ? "league" : "leagues"} available
                </span>
              </div>
            </>
          )}
        </div>

        {/* Cities grid */}
        <section className="mt-10">
          <h2 className="text-xl font-bold">
            Cities in {meta?.name || countryName}
          </h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Pick a city to browse sports bars and venues.
          </p>
          <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
            {sortedCities.map((city) => {
              const count = venueCountMap.get(city.slug) || 0;
              return (
                <Link
                  key={city.slug}
                  href={`/cities/${city.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border bg-white p-4 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
                >
                  <MapPin className="h-5 w-5 shrink-0 text-blue-600 dark:text-blue-400" />
                  <div className="min-w-0">
                    <div className="truncate font-medium">{city.name}</div>
                    <div className="text-xs text-muted-foreground">
                      {count > 0
                        ? `${count} ${count === 1 ? "venue" : "venues"}`
                        : "Coming soon"}
                    </div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              );
            })}
          </div>
        </section>

        {/* Popular leagues */}
        {popularLeagues.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">
              Popular Leagues in {meta?.name || countryName}
            </h2>
            <p className="mt-1 text-sm text-muted-foreground">
              The most-watched leagues across sports bars in{" "}
              {meta?.name || countryName}.
            </p>
            <div className="mt-4 grid gap-3 sm:grid-cols-2 md:grid-cols-3">
              {popularLeagues.slice(0, 12).map((league) => (
                <Link
                  key={league.league_slug}
                  href={`/watch/${league.league_slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border bg-white p-4 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
                >
                  <span className="text-2xl" aria-hidden="true">
                    {SPORT_ICONS[league.sport] || "🏆"}
                  </span>
                  <div className="min-w-0">
                    <div className="truncate font-medium">
                      {league.league_name}
                    </div>
                    <div className="text-xs text-muted-foreground">
                      {league.venue_count}{" "}
                      {league.venue_count === 1 ? "venue" : "venues"} showing
                    </div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Best for section */}
        {meta?.bestFor && meta.bestFor.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">
              Why Watch Sport in {meta.name}?
            </h2>
            <div className="mt-4 grid gap-3 sm:grid-cols-2">
              {meta.bestFor.map((item, i) => (
                <div
                  key={i}
                  className="flex items-start gap-3 rounded-xl border border-border bg-white p-4 dark:bg-card"
                >
                  <Star className="mt-0.5 h-5 w-5 shrink-0 text-yellow-500" />
                  <span className="text-sm font-medium">{item}</span>
                </div>
              ))}
            </div>
          </section>
        )}

        {/* Broadcasting info */}
        {meta?.broadcasters && meta.broadcasters.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">
              Sports Broadcasting in {meta.name}
            </h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Major networks showing live sport in {meta.name}.
            </p>
            <div className="mt-4 grid gap-3 sm:grid-cols-2 md:grid-cols-3">
              {meta.broadcasters.map((b, i) => (
                <div
                  key={i}
                  className="rounded-xl border border-border bg-white p-4 dark:bg-card"
                >
                  <div className="flex items-center gap-2">
                    <Radio className="h-4 w-4 text-blue-600 dark:text-blue-400" />
                    <span className="font-medium">{b.network}</span>
                  </div>
                  <p className="mt-2 text-xs text-muted-foreground">
                    {b.sports.join(" · ")}
                  </p>
                </div>
              ))}
            </div>
          </section>
        )}

        {/* Nearby countries */}
        {nearbyCountrySlugs.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">Explore Nearby Countries</h2>
            <div className="mt-4 flex flex-wrap gap-2">
              {nearbyCountrySlugs.map((slug) => {
                const nearbyMeta = COUNTRY_META[slug];
                return (
                  <Link
                    key={slug}
                    href={`/countries/${slug}`}
                    className="flex items-center gap-2 rounded-full border border-border px-3 py-1.5 text-sm transition-colors hover:border-blue-500 hover:bg-blue-600 hover:text-white"
                  >
                    <Globe className="h-3.5 w-3.5" />
                    {nearbyMeta?.name || slugToCountryName(slug)}
                  </Link>
                );
              })}
            </div>
          </section>
        )}

        {/* CTA */}
        <div className="mt-10 rounded-xl border border-dashed border-border p-6 text-center">
          <p className="text-muted-foreground">
            Know a sports bar in {meta?.name || countryName}?
          </p>
          <Link
            href="/submit-venue"
            className="mt-3 inline-block rounded-lg bg-blue-600 px-6 py-2 text-sm font-medium text-white transition-colors hover:bg-blue-700"
          >
            Submit a venue
          </Link>
        </div>
      </main>
      <Footer />
    </>
  );
}
