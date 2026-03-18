import { notFound } from "next/navigation";
import Link from "next/link";
import Image from "next/image";
import type { Metadata } from "next";
import {
  MapPin,
  Tv,
  Star,
  Utensils,
  TreePine,
  Globe,
  ExternalLink,
  Users,
  Monitor,
  Calendar,
  Clock,
  ChevronRight,
} from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import LeagueList from "@/components/venues/LeagueList";
import ReviewForm from "@/components/venues/ReviewForm";
import ShareButton from "@/components/venues/ShareButton";
import { getVenueBySlug, getNearbyVenues, getUpcomingFixturesForLeagues } from "@/lib/supabase/queries";
import { ATMOSPHERE_LABELS, PRICE_LABELS, SITE_URL, SPORT_ICONS } from "@/lib/constants";

interface Props {
  params: Promise<{ venue: string }>;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { venue: venueSlug } = await params;
  const venue = await getVenueBySlug(venueSlug);
  if (!venue) return {};
  const cityName = venue.city?.name || "";
  const title = `${venue.name} — Sports Bar in ${cityName}`;
  const description =
    venue.description ||
    `${venue.name} in ${cityName}. View screen count, leagues shown, atmosphere details, and reviews.`;
  return {
    title,
    description,
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/venues/${venueSlug}`,
      type: "website",
      ...(venue.hero_image_url && {
        images: [{ url: venue.hero_image_url, alt: venue.name }],
      }),
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
      ...(venue.hero_image_url && { images: [venue.hero_image_url] }),
    },
    alternates: {
      canonical: `${SITE_URL}/venues/${venueSlug}`,
    },
  };
}

/** Render 1-5 star icons, filling proportionally to the rating. */
function StarRating({ rating }: { rating: number }) {
  return (
    <span className="inline-flex gap-0.5">
      {[1, 2, 3, 4, 5].map((i) => (
        <Star
          key={i}
          className={`h-4 w-4 ${
            i <= Math.round(rating)
              ? "fill-amber-400 text-amber-400"
              : "fill-none text-gray-300 dark:text-gray-600"
          }`}
        />
      ))}
    </span>
  );
}

export default async function VenuePage({ params }: Props) {
  const { venue: venueSlug } = await params;
  const venue = await getVenueBySlug(venueSlug);
  if (!venue) notFound();

  const leagueIds = (venue.venue_leagues || [])
    .map((vl) => vl.league_id)
    .filter(Boolean);

  const [nearbyVenues, upcomingFixtures] = await Promise.all([
    getNearbyVenues(venue.id, venue.latitude, venue.longitude, 4),
    getUpcomingFixturesForLeagues(leagueIds),
  ]);

  const avgRating =
    venue.reviews && venue.reviews.length > 0
      ? (
          venue.reviews.reduce((sum, r) => sum + r.rating, 0) /
          venue.reviews.length
        ).toFixed(1)
      : null;

  // Only show leagues that have notes or are primary (confirmed coverage)
  const confirmedLeagues = venue.venue_leagues?.filter(
    (vl) => vl.is_primary || vl.notes
  ) || [];
  const otherLeagues = venue.venue_leagues?.filter(
    (vl) => !vl.is_primary && !vl.notes
  ) || [];

  // Generate "Best for" tags from primary leagues
  const bestForTags = (venue.venue_leagues || [])
    .filter((vl) => vl.is_primary && vl.league)
    .map((vl) => vl.league!.short_name || vl.league!.name);

  const venueSchema = {
    "@context": "https://schema.org",
    "@type": ["LocalBusiness", "SportsActivityLocation"],
    name: venue.name,
    description: venue.description,
    image: venue.hero_image_url || undefined,
    address: {
      "@type": "PostalAddress",
      streetAddress: venue.address,
      addressLocality: venue.city?.name,
      addressCountry: venue.city?.country,
    },
    geo: {
      "@type": "GeoCoordinates",
      latitude: venue.latitude,
      longitude: venue.longitude,
    },
    url: venue.website_url || `${SITE_URL}/venues/${venue.slug}`,
    ...(venue.google_rating && {
      aggregateRating: {
        "@type": "AggregateRating",
        ratingValue: venue.google_rating,
        reviewCount: venue.google_review_count || 0,
        bestRating: 5,
      },
    }),
    ...(venue.price_range && {
      priceRange: venue.price_range,
    }),
  };

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs
          items={[
            ...(venue.city
              ? [
                  {
                    label: venue.city.name,
                    href: `/cities/${venue.city.slug}`,
                  },
                ]
              : []),
            { label: venue.name },
          ]}
        />

        <JsonLd data={venueSchema} />

        {/* Hero image section */}
        <div className="mt-6 overflow-hidden rounded-2xl">
          {venue.hero_image_url ? (
            <div className="relative h-64 w-full sm:h-80 md:h-96">
              <Image
                src={venue.hero_image_url}
                alt={venue.name}
                fill
                className="object-cover"
                priority
              />
            </div>
          ) : (
            <div className="flex h-48 items-center justify-center bg-brand/5 dark:bg-brand/10 sm:h-64">
              <div className="text-center">
                <Monitor className="mx-auto h-12 w-12 text-brand/30" />
                <p className="mt-2 text-sm text-muted-foreground">
                  No photos yet
                </p>
              </div>
            </div>
          )}
        </div>

        <div className="mt-6 grid gap-8 md:grid-cols-3">
          {/* Main content */}
          <div className="md:col-span-2">
            {/* Header with name + Google rating */}
            <div className="flex items-start justify-between gap-4">
              <div>
                <h1 className="text-3xl font-bold">{venue.name}</h1>
                {venue.address && (
                  <p className="mt-2 flex items-center gap-1.5 text-muted-foreground">
                    <MapPin className="h-4 w-4 shrink-0" />
                    {venue.address}
                  </p>
                )}
              </div>

              {/* Google rating */}
              {venue.google_rating && (
                <div className="flex shrink-0 flex-col items-end gap-1">
                  <div className="flex items-center gap-2">
                    <span className="text-3xl font-bold leading-none">
                      {venue.google_rating}
                    </span>
                    <Star className="h-6 w-6 fill-amber-400 text-amber-400" />
                  </div>
                  <StarRating rating={venue.google_rating} />
                  {venue.google_review_count != null && (
                    <p className="text-sm text-muted-foreground">
                      {venue.google_review_count.toLocaleString()} Google
                      reviews
                    </p>
                  )}
                </div>
              )}
            </div>

            {/* Share button */}
            <div className="mt-3">
              <ShareButton
                title={`${venue.name} — WatchLocal`}
                url={`${SITE_URL}/venues/${venue.slug}`}
              />
            </div>

            {/* "Best for" tags */}
            {bestForTags.length > 0 && (
              <div className="mt-3 flex flex-wrap gap-2">
                {bestForTags.map((tag) => (
                  <span
                    key={tag}
                    className="rounded-full bg-brand/10 px-3 py-1 text-sm font-medium text-brand dark:bg-brand/20"
                  >
                    Best for {tag}
                  </span>
                ))}
              </div>
            )}

            {venue.description && (
              <p className="mt-4 leading-relaxed text-muted-foreground">
                {venue.description}
              </p>
            )}

            {/* Features — consistent card design */}
            <div className="mt-6 grid grid-cols-2 gap-3 sm:grid-cols-3">
              {venue.number_of_screens && (
                <div className="rounded-lg border border-border p-3">
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <Tv className="h-4 w-4 text-brand" />
                    Screens
                  </div>
                  <div className="mt-1 text-sm font-semibold">
                    {venue.number_of_screens} screens
                  </div>
                </div>
              )}
              {venue.has_projector && (
                <div className="rounded-lg border border-border p-3">
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <Monitor className="h-4 w-4 text-brand" />
                    Projector
                  </div>
                  <div className="mt-1 text-sm font-semibold">Yes</div>
                </div>
              )}
              {venue.atmosphere && (
                <div className="rounded-lg border border-border p-3">
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <Users className="h-4 w-4 text-brand" />
                    Atmosphere
                  </div>
                  <div className="mt-1 text-sm font-semibold">
                    {ATMOSPHERE_LABELS[venue.atmosphere] || venue.atmosphere}
                  </div>
                </div>
              )}
              {venue.price_range && (
                <div className="rounded-lg border border-border p-3">
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <span className="text-brand">$</span>
                    Price range
                  </div>
                  <div className="mt-1 text-sm font-semibold">
                    {venue.price_range}{" "}
                    {PRICE_LABELS[venue.price_range] &&
                      `(${PRICE_LABELS[venue.price_range]})`}
                  </div>
                </div>
              )}
              {venue.has_food && (
                <div className="rounded-lg border border-border p-3">
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <Utensils className="h-4 w-4 text-brand" />
                    Food
                  </div>
                  <div className="mt-1 text-sm font-semibold">Available</div>
                </div>
              )}
              {venue.has_outdoor_area && (
                <div className="rounded-lg border border-border p-3">
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <TreePine className="h-4 w-4 text-brand" />
                    Outdoor area
                  </div>
                  <div className="mt-1 text-sm font-semibold">Yes</div>
                </div>
              )}
            </div>

            {/* Leagues — with show all toggle */}
            {confirmedLeagues.length > 0 && (
              <LeagueList
                confirmedLeagues={confirmedLeagues}
                otherLeagues={otherLeagues}
              />
            )}

            {/* Upcoming fixtures */}
            {upcomingFixtures.length > 0 && (
              <section className="mt-8">
                <div className="flex items-center justify-between">
                  <h2 className="text-lg font-bold">Upcoming matches here</h2>
                  <Link
                    href="/matches"
                    className="flex items-center gap-1 text-sm text-brand hover:underline"
                  >
                    All fixtures <ChevronRight className="h-3.5 w-3.5" />
                  </Link>
                </div>
                <div className="mt-3 space-y-2">
                  {upcomingFixtures.map((fixture) => {
                    const matchDate = new Date(fixture.match_date);
                    const dateStr = matchDate.toLocaleDateString("en-GB", {
                      weekday: "short",
                      day: "numeric",
                      month: "short",
                    });
                    const timeStr = matchDate.toLocaleTimeString("en-GB", {
                      hour: "2-digit",
                      minute: "2-digit",
                      timeZoneName: "short",
                    });
                    const leagueSlug = (fixture.league as any)?.slug;
                    const sport = (fixture.league as any)?.sport;
                    return (
                      <Link
                        key={fixture.id}
                        href={leagueSlug ? `/matches/${leagueSlug}/${fixture.id}` : "#"}
                        className="group flex items-center gap-3 rounded-lg border border-border p-3 transition-all hover:border-brand hover:shadow-sm"
                      >
                        <span className="text-lg">{SPORT_ICONS[sport] || "🏆"}</span>
                        <div className="min-w-0 flex-1">
                          <p className="truncate font-medium group-hover:text-brand">
                            {fixture.home_team_name} vs {fixture.away_team_name}
                          </p>
                          <p className="text-xs text-muted-foreground">
                            {(fixture.league as any)?.short_name || (fixture.league as any)?.name}
                          </p>
                        </div>
                        <div className="shrink-0 text-right text-xs text-muted-foreground">
                          <p className="flex items-center gap-1">
                            <Calendar className="h-3 w-3" />{dateStr}
                          </p>
                          <p className="flex items-center gap-1 mt-0.5">
                            <Clock className="h-3 w-3" />{timeStr}
                          </p>
                        </div>
                      </Link>
                    );
                  })}
                </div>
              </section>
            )}

            {/* Reviews */}
            {venue.reviews && venue.reviews.length > 0 && (
              <section className="mt-8">
                <h2 className="text-lg font-bold">
                  Reviews ({venue.reviews.length})
                </h2>
                {avgRating && (
                  <div className="mt-2 flex items-center gap-2">
                    <Star className="h-5 w-5 fill-amber-400 text-amber-400" />
                    <span className="text-lg font-bold">{avgRating}</span>
                    <span className="text-sm text-muted-foreground">
                      out of 5
                    </span>
                  </div>
                )}
                <div className="mt-4 space-y-4">
                  {venue.reviews.map((review) => (
                    <div
                      key={review.id}
                      className="rounded-lg border border-border p-4"
                    >
                      <div className="flex items-center justify-between">
                        <span className="font-medium">
                          {review.display_name || "Anonymous"}
                        </span>
                        <div className="flex items-center gap-1">
                          <Star className="h-4 w-4 fill-amber-400 text-amber-400" />
                          <span className="text-sm font-medium">
                            {review.rating}
                          </span>
                        </div>
                      </div>
                      {review.content && (
                        <p className="mt-2 text-sm text-muted-foreground">
                          {review.content}
                        </p>
                      )}
                      {review.tips && (
                        <p className="mt-2 text-sm italic text-muted-foreground">
                          Tip: {review.tips}
                        </p>
                      )}
                    </div>
                  ))}
                </div>
              </section>
            )}

            {/* Review form */}
            <ReviewForm venueId={venue.id} venueName={venue.name} />

            {/* Internal links — city and league watch pages */}
            {(venue.city || confirmedLeagues.length > 0) && (
              <section className="mt-8">
                <h2 className="text-lg font-bold">Explore more</h2>
                <div className="mt-3 flex flex-wrap gap-2">
                  {venue.city && (
                    <Link
                      href={`/cities/${venue.city.slug}`}
                      className="rounded-full border border-border px-3 py-1.5 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
                    >
                      All sports bars in {venue.city.name}
                    </Link>
                  )}
                  {confirmedLeagues
                    .filter((vl) => vl.league)
                    .map((vl) => (
                      <Link
                        key={vl.id}
                        href={
                          venue.city
                            ? `/watch/${vl.league!.slug}/${venue.city.slug}`
                            : `/watch/${vl.league!.slug}`
                        }
                        className="rounded-full border border-border px-3 py-1.5 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
                      >
                        {vl.league!.short_name || vl.league!.name} in{" "}
                        {venue.city?.name || "your city"}
                      </Link>
                    ))}
                </div>
              </section>
            )}

            {/* Nearby venues */}
            {nearbyVenues.length > 0 && (
              <section className="mt-8">
                <h2 className="text-lg font-bold">Other venues nearby</h2>
                <div className="mt-3 grid gap-3 sm:grid-cols-2">
                  {nearbyVenues.map((nearby) => (
                    <Link
                      key={nearby.id}
                      href={`/venues/${nearby.slug}`}
                      className="group rounded-lg border border-border p-4 transition-all hover:border-brand hover:shadow-sm"
                    >
                      <div className="flex items-start justify-between gap-2">
                        <h3 className="font-semibold group-hover:text-brand">
                          {nearby.name}
                        </h3>
                        {nearby.distance_km != null && (
                          <span className="shrink-0 rounded-full bg-gray-100 px-2 py-0.5 text-xs text-muted-foreground dark:bg-gray-800">
                            {nearby.distance_km < 1
                              ? `${Math.round(nearby.distance_km * 1000)}m`
                              : `${nearby.distance_km}km`}
                          </span>
                        )}
                      </div>
                      {nearby.address && (
                        <p className="mt-1 flex items-center gap-1 text-sm text-muted-foreground">
                          <MapPin className="h-3.5 w-3.5 shrink-0" />
                          <span className="truncate">{nearby.address}</span>
                        </p>
                      )}
                      <div className="mt-2 flex flex-wrap items-center gap-2 text-sm text-muted-foreground">
                        {nearby.number_of_screens && (
                          <span className="flex items-center gap-1">
                            <Tv className="h-3.5 w-3.5" />
                            {nearby.number_of_screens} screens
                          </span>
                        )}
                        {nearby.google_rating && (
                          <span className="flex items-center gap-1">
                            <Star className="h-3.5 w-3.5 fill-amber-400 text-amber-400" />
                            {nearby.google_rating}
                          </span>
                        )}
                      </div>
                      {nearby.venue_leagues &&
                        nearby.venue_leagues.length > 0 && (
                          <div className="mt-2 flex flex-wrap gap-1">
                            {nearby.venue_leagues.slice(0, 4).map((vl) => (
                              <span
                                key={vl.id}
                                className="rounded border border-border px-1.5 py-0.5 text-xs text-muted-foreground"
                              >
                                {vl.league?.short_name || vl.league?.name}
                              </span>
                            ))}
                            {nearby.venue_leagues.length > 4 && (
                              <span className="rounded border border-border px-1.5 py-0.5 text-xs text-muted-foreground">
                                +{nearby.venue_leagues.length - 4}
                              </span>
                            )}
                          </div>
                        )}
                    </Link>
                  ))}
                </div>
              </section>
            )}
          </div>

          {/* Sidebar */}
          <div>
            <div className="sticky top-20 space-y-4">
              {/* Links */}
              {(venue.website_url ||
                venue.instagram_handle ||
                venue.facebook_url) && (
                <div className="rounded-xl border border-border p-4">
                  <h3 className="font-semibold">Links</h3>
                  <div className="mt-3 space-y-2">
                    {venue.website_url && (
                      <a
                        href={venue.website_url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="flex items-center gap-2 text-sm text-brand hover:underline"
                      >
                        <Globe className="h-4 w-4" />
                        Website
                        <ExternalLink className="h-3 w-3" />
                      </a>
                    )}
                    {venue.instagram_handle && (
                      <a
                        href={`https://instagram.com/${venue.instagram_handle}`}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="flex items-center gap-2 text-sm text-brand hover:underline"
                      >
                        Instagram
                        <ExternalLink className="h-3 w-3" />
                      </a>
                    )}
                    {venue.facebook_url && (
                      <a
                        href={venue.facebook_url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="flex items-center gap-2 text-sm text-brand hover:underline"
                      >
                        Facebook
                        <ExternalLink className="h-3 w-3" />
                      </a>
                    )}
                  </div>
                </div>
              )}

              {/* Location */}
              <div className="rounded-xl border border-border p-4">
                <h3 className="font-semibold">Location</h3>
                {venue.address && (
                  <p className="mt-2 text-sm text-muted-foreground">
                    {venue.address}
                  </p>
                )}
                <a
                  href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(venue.name + (venue.address ? ", " + venue.address : ""))}`}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="mt-3 flex w-full items-center justify-center gap-2 rounded-lg border border-brand bg-brand/5 px-4 py-2.5 text-sm font-medium text-brand transition-colors hover:bg-brand/10"
                >
                  <MapPin className="h-4 w-4" />
                  Open in Google Maps
                  <ExternalLink className="h-3 w-3" />
                </a>
              </div>

              {/* CTA */}
              <div className="rounded-xl border border-border p-4 text-center">
                <p className="text-sm text-muted-foreground">
                  Is this your venue?
                </p>
                <Link
                  href="/submit-venue"
                  className="mt-2 inline-block rounded-lg bg-brand px-4 py-2 text-sm font-medium text-white"
                >
                  Claim this listing
                </Link>
              </div>
            </div>
          </div>
        </div>
      </main>
      <Footer />
    </>
  );
}
