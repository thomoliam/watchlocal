import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { Tv, ChevronRight, MapPin } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import VenueCard from "@/components/venues/VenueCard";
import VenueFilters from "@/components/venues/VenueFilters";
import NearestVenueFinder from "@/components/venues/NearestVenueFinder";
import JsonLd from "@/components/seo/JsonLd";
import { getCityBySlug, getVenuesInCity } from "@/lib/supabase/queries";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";
import { getNeighbourhoods } from "@/lib/neighbourhoods";
import { VENUE_FEATURES } from "@/lib/venue-features";

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
  const neighbourhoods = getNeighbourhoods(citySlug);

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

  // Compute aggregate rating from Google ratings
  const ratedVenues = venues.filter((v) => v.google_rating && v.google_review_count);
  const totalReviews = ratedVenues.reduce((sum, v) => sum + (v.google_review_count || 0), 0);
  const avgRating =
    ratedVenues.length > 0
      ? ratedVenues.reduce((sum, v) => sum + (v.google_rating || 0) * (v.google_review_count || 1), 0) /
        Math.max(totalReviews, 1)
      : null;

  // City JSON-LD schema
  const citySchema = {
    "@context": "https://schema.org",
    "@type": "City",
    name: city.name,
    url: `${SITE_URL}/cities/${citySlug}`,
    ...(city.latitude && city.longitude
      ? {
          geo: {
            "@type": "GeoCoordinates",
            latitude: city.latitude,
            longitude: city.longitude,
          },
        }
      : {}),
    ...(venues.length > 0 && avgRating && totalReviews > 0
      ? {
          aggregateRating: {
            "@type": "AggregateRating",
            ratingValue: Math.round(avgRating * 10) / 10,
            reviewCount: totalReviews,
            bestRating: 5,
            worstRating: 1,
          },
        }
      : {}),
  };

  // ItemList schema for top venues
  const venueListSchema =
    venues.length > 0
      ? {
          "@context": "https://schema.org",
          "@type": "ItemList",
          name: `Sports bars in ${city.name}`,
          description: `The best sports bars in ${city.name} for watching live sport`,
          numberOfItems: venues.length,
          itemListElement: venues.slice(0, 10).map((venue, i) => ({
            "@type": "ListItem",
            position: i + 1,
            name: venue.name,
            url: `${SITE_URL}/venues/${venue.slug}`,
            item: {
              "@type": "BarOrPub",
              name: venue.name,
              url: `${SITE_URL}/venues/${venue.slug}`,
              ...(venue.address ? { address: venue.address } : {}),
              ...(venue.google_rating
                ? {
                    aggregateRating: {
                      "@type": "AggregateRating",
                      ratingValue: venue.google_rating,
                      reviewCount: venue.google_review_count || 1,
                      bestRating: 5,
                      worstRating: 1,
                    },
                  }
                : {}),
            },
          })),
        }
      : null;

  // Breadcrumb schema
  const breadcrumbSchema = {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: [
      { "@type": "ListItem", position: 1, name: "Home", item: SITE_URL },
      { "@type": "ListItem", position: 2, name: "Cities", item: `${SITE_URL}/cities` },
      { "@type": "ListItem", position: 3, name: city.name, item: `${SITE_URL}/cities/${citySlug}` },
    ],
  };

  return (
    <>
      <Header />
      <JsonLd data={citySchema} />
      {venueListSchema && <JsonLd data={venueListSchema} />}
      <JsonLd data={breadcrumbSchema} />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs items={[{ label: "Cities" }, { label: city.name }]} />

        <div className="mt-6">
          <h1 className="text-3xl font-bold">
            Sports bars in {city.name}
          </h1>
          {venues.length > 0 ? (
            <p className="mt-3 text-base leading-relaxed text-muted-foreground">
              {city.name} has {venues.length} verified sports bar{venues.length !== 1 ? "s" : ""} for watching live sport.
              {leagues.length > 0 &&
                ` Venues in ${city.name} show ${leagues.length} league${leagues.length !== 1 ? "s" : ""} including ${leagues.slice(0, 3).map((l) => l.short_name || l.name).join(", ")}${leagues.length > 3 ? `, and ${leagues.length - 3} more` : ""}.`}
              {` Local timezone is ${city.timezone}.`}
              {" All venues listed below have been verified for the current season."}
            </p>
          ) : (
            <p className="mt-3 text-base leading-relaxed text-muted-foreground">
              We&apos;re still building our list of sports bars in {city.name}, {city.country}. Know a great spot? Submit it below.
            </p>
          )}
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

        {/* Feature filters */}
        {venues.length > 0 && (
          <section className="mt-8">
            <h2 className="text-lg font-bold">Filter by feature</h2>
            <div className="mt-3 flex flex-wrap gap-2">
              {Object.values(VENUE_FEATURES).map((feature) => (
                <Link
                  key={feature.slug}
                  href={`/cities/${citySlug}/${feature.slug}`}
                  className="flex items-center gap-1.5 rounded-full border border-border px-3 py-1.5 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
                >
                  <span>{feature.icon}</span>
                  {feature.name}
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* Find nearest venue */}
        <section className="mt-8 rounded-xl border border-border bg-muted px-6 py-8 text-center">
          <h2 className="text-lg font-semibold">Find the nearest sports bar to you</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Share your location and we&apos;ll find the closest venue in {city.name} instantly.
          </p>
          <div className="mt-5">
            <NearestVenueFinder />
          </div>
        </section>

        {/* Venues */}
        {venues.length > 0 ? (
          <div className="mt-8">
            <VenueFilters venues={venues} />
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

        {/* Neighbourhoods cross-links */}
        {neighbourhoods.length > 0 && (
          <section className="mt-12">
            <h2 className="text-xl font-bold">
              Browse {city.name} by neighbourhood
            </h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Find sports bars in a specific area of {city.name}.
            </p>
            <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {neighbourhoods.map((n) => (
                <Link
                  key={n.slug}
                  href={`/cities/${citySlug}/${n.slug}`}
                  className="group flex items-center gap-2 rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <MapPin className="h-4 w-4 shrink-0 text-brand" />
                  <span className="truncate font-medium group-hover:text-brand">
                    {n.name}
                  </span>
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
