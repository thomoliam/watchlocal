import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Link from "next/link";
import { MapPin, ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import VenueCard from "@/components/venues/VenueCard";
import JsonLd from "@/components/seo/JsonLd";
import { getCityBySlug, getVenuesInNeighbourhood, getVenuesInCityWithFeature, getCitySlugsWithVenues } from "@/lib/supabase/queries";
import { getNeighbourhood, getAllNeighbourhoodCombos } from "@/lib/neighbourhoods";
import { getVenueFeature, FEATURE_SLUGS } from "@/lib/venue-features";
import { SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ city: string; segment: string }>;
}

export async function generateStaticParams() {
  const { getAllNeighbourhoodCombos } = await import("@/lib/neighbourhoods");
  const { FEATURE_SLUGS } = await import("@/lib/venue-features");

  const params: { city: string; segment: string }[] = [];

  // Neighbourhood combos
  for (const { citySlug, neighbourhood } of getAllNeighbourhoodCombos()) {
    params.push({ city: citySlug, segment: neighbourhood.slug });
  }

  // Feature slugs for all cities with at least one venue
  const citySlugs = await getCitySlugsWithVenues();
  for (const citySlug of citySlugs) {
    for (const featureSlug of FEATURE_SLUGS) {
      params.push({ city: citySlug, segment: featureSlug });
    }
  }

  return params;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { city: citySlug, segment } = await params;

  const city = await getCityBySlug(citySlug);
  if (!city) return {};

  // Neighbourhood
  const neighbourhood = getNeighbourhood(citySlug, segment);
  if (neighbourhood) {
    const title = `Sports Bars in ${neighbourhood.name}, ${city.name} | WatchLocal`;
    const description = `Find the best sports bars and venues in ${neighbourhood.name}, ${city.name}. ${neighbourhood.description}`;
    return {
      title,
      description,
      openGraph: { title, description, url: `${SITE_URL}/cities/${citySlug}/${segment}` },
      alternates: { canonical: `${SITE_URL}/cities/${citySlug}/${segment}` },
    };
  }

  // Feature filter
  const feature = getVenueFeature(segment);
  if (feature) {
    const title = feature.headline.replace("{city}", city.name) + " | WatchLocal";
    const description = feature.description.replace("{city}", city.name);
    return {
      title,
      description,
      openGraph: { title, description, url: `${SITE_URL}/cities/${citySlug}/${segment}` },
      alternates: { canonical: `${SITE_URL}/cities/${citySlug}/${segment}` },
    };
  }

  return {};
}

export default async function CitySegmentPage({ params }: Props) {
  const { city: citySlug, segment } = await params;

  const city = await getCityBySlug(citySlug);
  if (!city) notFound();

  const neighbourhood = getNeighbourhood(citySlug, segment);
  const feature = getVenueFeature(segment);

  if (!neighbourhood && !feature) notFound();

  // Fetch venues
  const venues = neighbourhood
    ? await getVenuesInNeighbourhood(
        citySlug,
        neighbourhood.latMin,
        neighbourhood.latMax,
        neighbourhood.lngMin,
        neighbourhood.lngMax
      )
    : await getVenuesInCityWithFeature(citySlug, feature!.column, feature!.value);

  // Page copy
  const heading = neighbourhood
    ? `Sports Bars in ${neighbourhood.name}, ${city.name}`
    : feature!.headline.replace("{city}", city.name);

  const intro = neighbourhood
    ? neighbourhood.description
    : feature!.description.replace("{city}", city.name);

  const icon = neighbourhood ? "📍" : feature!.icon;

  // JSON-LD — ItemList of venues
  const itemListSchema = venues.length > 0
    ? {
        "@context": "https://schema.org",
        "@type": "ItemList",
        name: heading,
        numberOfItems: venues.length,
        itemListElement: venues.map((v, i) => ({
          "@type": "ListItem",
          position: i + 1,
          item: {
            "@type": "BarOrPub",
            "@id": `${SITE_URL}/venues/${v.slug}`,
            name: v.name,
            address: v.address || city.name,
            geo: {
              "@type": "GeoCoordinates",
              latitude: v.latitude,
              longitude: v.longitude,
            },
          },
        })),
      }
    : null;

  const breadcrumbs = [
    { label: "Cities", href: "/countries" },
    { label: city.name, href: `/cities/${citySlug}` },
    { label: neighbourhood?.name ?? feature!.name },
  ];

  return (
    <>
      {itemListSchema && <JsonLd data={itemListSchema} />}
      <Header />
      <main>
        {/* Hero */}
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <Breadcrumbs items={breadcrumbs} />
            <div className="mt-4 flex items-center gap-3">
              <span className="text-3xl">{icon}</span>
              <h1 className="text-3xl font-bold tracking-tight md:text-4xl">
                {heading}
              </h1>
            </div>
            <p className="mt-3 max-w-2xl text-muted-foreground">{intro}</p>

            {/* Back to city link */}
            <Link
              href={`/cities/${citySlug}`}
              className="mt-4 inline-flex items-center gap-1 text-sm text-brand hover:underline"
            >
              <MapPin className="h-3.5 w-3.5" />
              All sports bars in {city.name}
            </Link>
          </div>
        </section>

        {/* Venue grid */}
        <section className="mx-auto max-w-6xl px-4 py-10">
          {venues.length > 0 ? (
            <>
              <p className="mb-6 text-sm text-muted-foreground">
                {venues.length} venue{venues.length !== 1 ? "s" : ""} found
              </p>
              <div className="grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
                {venues.map((venue) => (
                  <VenueCard key={venue.id} venue={venue} />
                ))}
              </div>
            </>
          ) : (
            <div className="rounded-xl border border-border p-10 text-center">
              <p className="text-lg font-medium">No venues found yet</p>
              <p className="mt-2 text-muted-foreground">
                {neighbourhood
                  ? `We're still building our list of sports bars in ${neighbourhood.name}.`
                  : `We haven't verified any venues with this feature in ${city.name} yet.`}
              </p>
              <Link
                href="/submit-venue"
                className="mt-4 inline-block rounded-lg bg-brand px-6 py-2.5 text-sm font-medium text-white"
              >
                Submit a venue
              </Link>
            </div>
          )}
        </section>

        {/* Feature cross-links (for neighbourhood pages) */}
        {neighbourhood && (
          <section className="border-t border-border bg-muted">
            <div className="mx-auto max-w-6xl px-4 py-8">
              <h2 className="text-base font-semibold">
                Filter sports bars in {neighbourhood.name}
              </h2>
              <div className="mt-3 flex flex-wrap gap-2">
                {FEATURE_SLUGS.map((slug) => {
                  const f = getVenueFeature(slug)!;
                  return (
                    <Link
                      key={slug}
                      href={`/cities/${citySlug}/${slug}`}
                      className="flex items-center gap-1.5 rounded-full border border-border bg-background px-3 py-1.5 text-sm transition-colors hover:border-brand hover:text-brand"
                    >
                      <span>{f.icon}</span>
                      {f.name}
                    </Link>
                  );
                })}
              </div>
            </div>
          </section>
        )}

        {/* Other neighbourhoods (for feature pages) */}
        {feature && (() => {
          const cityNeighbourhoods = getAllNeighbourhoodCombos()
            .filter((c) => c.citySlug === citySlug)
            .map((c) => c.neighbourhood);
          if (cityNeighbourhoods.length === 0) return null;
          return (
            <section className="border-t border-border bg-muted">
              <div className="mx-auto max-w-6xl px-4 py-8">
                <h2 className="text-base font-semibold">
                  Browse by area in {city.name}
                </h2>
                <div className="mt-3 flex flex-wrap gap-2">
                  {cityNeighbourhoods.map((n) => (
                    <Link
                      key={n.slug}
                      href={`/cities/${citySlug}/${n.slug}`}
                      className="flex items-center gap-1.5 rounded-full border border-border bg-background px-3 py-1.5 text-sm transition-colors hover:border-brand hover:text-brand"
                    >
                      <MapPin className="h-3 w-3" />
                      {n.name}
                    </Link>
                  ))}
                  <Link
                    href={`/cities/${citySlug}`}
                    className="flex items-center gap-1.5 rounded-full border border-brand bg-background px-3 py-1.5 text-sm font-medium text-brand"
                  >
                    All {city.name}
                    <ChevronRight className="h-3 w-3" />
                  </Link>
                </div>
              </div>
            </section>
          );
        })()}
      </main>
      <Footer />
    </>
  );
}
