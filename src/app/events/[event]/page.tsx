import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import {
  Calendar,
  MapPin,
  ChevronRight,
  Clock,
  Globe,
  HelpCircle,
} from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import {
  getEventBySlug,
  EVENTS,
  CITY_TIMEZONES,
  type SportEvent,
} from "@/lib/events";
import {
  generateBreadcrumbSchema,
  generateFAQSchema,
} from "@/lib/seo";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";
import { getCitiesWithVenuesForLeague } from "@/lib/supabase/queries";

interface Props {
  params: Promise<{ event: string }>;
}

export const dynamic = "force-dynamic";

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { event: eventSlug } = await params;
  const event = getEventBySlug(eventSlug);
  if (!event) return {};

  const title = `Where to Watch ${event.name} | Sports Bars & Venues | WatchLocal`;
  const description = `Find the best sports bars showing ${event.name} in ${event.cities.length}+ cities worldwide. Verified venues, local kickoff times, and fan atmospheres.`;

  return {
    title,
    description,
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/events/${eventSlug}`,
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
    },
    alternates: {
      canonical: `${SITE_URL}/events/${eventSlug}`,
    },
  };
}

function formatDate(dateStr: string): string {
  return new Date(dateStr).toLocaleDateString("en-US", {
    weekday: "long",
    month: "long",
    day: "numeric",
    year: "numeric",
  });
}

function formatDateRange(event: SportEvent): string {
  const start = formatDate(event.date);
  if (event.endDate) {
    const end = formatDate(event.endDate);
    return `${start} - ${end}`;
  }
  return start;
}

/** Format a date in a specific timezone */
function formatTimeInTimezone(dateStr: string, tz: string): string {
  try {
    const date = new Date(dateStr + "T20:00:00Z"); // Default 20:00 UTC for events
    return date.toLocaleString("en-US", {
      timeZone: tz,
      weekday: "short",
      hour: "numeric",
      minute: "2-digit",
      hour12: true,
    });
  } catch {
    return "—";
  }
}

export default async function EventPage({ params }: Props) {
  const { event: eventSlug } = await params;
  const event = getEventBySlug(eventSlug);
  if (!event) notFound();

  // Fetch real venue data for the event's league
  const citiesWithVenues = await getCitiesWithVenuesForLeague(event.league);
  const cityVenueMap = new Map(
    citiesWithVenues.map((c: any) => [c.slug, c])
  );

  const sportIcon = SPORT_ICONS[event.sport] || "🏆";

  // Build JSON-LD event schema
  const eventSchema: Record<string, unknown> = {
    "@context": "https://schema.org",
    "@type": "SportsEvent",
    name: event.name,
    description: event.description,
    startDate: event.date,
    ...(event.endDate && { endDate: event.endDate }),
    ...(event.venue && {
      location: {
        "@type": "Place",
        name: event.venue,
      },
    }),
    url: `${SITE_URL}/events/${eventSlug}`,
    sport: event.sport,
  };

  const breadcrumbSchema = generateBreadcrumbSchema([
    { name: "Home", url: SITE_URL },
    { name: "Events", url: `${SITE_URL}/events` },
    { name: event.shortName, url: `${SITE_URL}/events/${eventSlug}` },
  ]);

  // Related events (same sport or league)
  const relatedEvents = EVENTS.filter(
    (e) =>
      e.slug !== event.slug &&
      (e.league === event.league || e.sport === event.sport)
  ).slice(0, 4);

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs
          items={[
            { label: "Events", href: "/events" },
            { label: event.shortName },
          ]}
        />

        <JsonLd data={eventSchema} />
        <JsonLd data={breadcrumbSchema} />
        {event.faqs.length > 0 && (
          <JsonLd data={generateFAQSchema(event.faqs)} />
        )}

        {/* Hero */}
        <div className="mt-6">
          <div className="flex items-center gap-3">
            <span className="text-4xl" aria-hidden="true">
              {sportIcon}
            </span>
            <div>
              <h1 className="text-3xl font-bold">{event.name}</h1>
              <p className="mt-1 text-sm font-medium text-blue-600 dark:text-blue-400">
                {event.sport
                  .charAt(0)
                  .toUpperCase() +
                  event.sport.slice(1).replace(/-/g, " ")}
              </p>
            </div>
          </div>
          <p className="mt-3 max-w-3xl text-muted-foreground">
            {event.description}
          </p>
        </div>

        {/* Event info bar */}
        <div className="mt-6 flex flex-wrap items-center gap-4 rounded-xl border border-blue-200 bg-blue-50 p-4 dark:border-blue-900 dark:bg-blue-950/40">
          <div className="flex items-center gap-2 text-sm font-medium">
            <Calendar className="h-4 w-4 text-blue-600 dark:text-blue-400" />
            <span>{formatDateRange(event)}</span>
          </div>
          {event.venue && (
            <>
              <span className="text-muted-foreground">|</span>
              <div className="flex items-center gap-2 text-sm font-medium">
                <MapPin className="h-4 w-4 text-blue-600 dark:text-blue-400" />
                <span>{event.venue}</span>
              </div>
            </>
          )}
          {event.teams && event.teams.length > 0 && (
            <>
              <span className="text-muted-foreground">|</span>
              <div className="text-sm font-medium">
                {event.teams.join(" vs ")}
              </div>
            </>
          )}
        </div>

        {/* Timezone converter */}
        <section className="mt-10">
          <h2 className="text-xl font-bold">
            <Clock className="mb-1 mr-2 inline-block h-5 w-5 text-blue-600 dark:text-blue-400" />
            Kickoff Times Around the World
          </h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Approximate kickoff times in major cities (based on typical
            scheduling).
          </p>
          <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-5">
            {Object.entries(CITY_TIMEZONES).map(([slug, { label, tz }]) => (
              <div
                key={slug}
                className="rounded-xl border border-border bg-white p-3 text-center dark:bg-card"
              >
                <div className="text-xs text-muted-foreground">{label}</div>
                <div className="mt-1 text-sm font-bold">
                  {formatTimeInTimezone(event.date, tz)}
                </div>
              </div>
            ))}
          </div>
        </section>

        {/* Where to watch */}
        <section className="mt-10">
          <h2 className="text-xl font-bold">
            <Globe className="mb-1 mr-2 inline-block h-5 w-5 text-blue-600 dark:text-blue-400" />
            Where to Watch {event.shortName}
          </h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Top cities with sports bars showing {event.name}.
          </p>
          <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
            {event.cities.map((citySlug) => {
              const cityData = cityVenueMap.get(citySlug) as
                | { name: string; slug: string; venue_count: number }
                | undefined;
              const displayName =
                cityData?.name ||
                citySlug
                  .split("-")
                  .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
                  .join(" ");
              const venueCount = cityData?.venue_count || 0;

              return (
                <Link
                  key={citySlug}
                  href={`/watch/${event.league}/${citySlug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border bg-white p-4 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
                >
                  <MapPin className="h-5 w-5 shrink-0 text-blue-600 dark:text-blue-400" />
                  <div className="min-w-0">
                    <div className="truncate font-medium">{displayName}</div>
                    <div className="text-xs text-muted-foreground">
                      {venueCount > 0
                        ? `${venueCount} ${venueCount === 1 ? "venue" : "venues"}`
                        : "View venues"}
                    </div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              );
            })}
          </div>
        </section>

        {/* FAQ section */}
        {event.faqs.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">
              <HelpCircle className="mb-1 mr-2 inline-block h-5 w-5 text-blue-600 dark:text-blue-400" />
              Frequently Asked Questions
            </h2>
            <div className="mt-4 space-y-4">
              {event.faqs.map((faq, i) => (
                <div
                  key={i}
                  className="rounded-xl border border-border bg-white p-5 dark:bg-card"
                >
                  <h3 className="font-bold">{faq.question}</h3>
                  <p className="mt-2 text-sm text-muted-foreground">
                    {faq.answer}
                  </p>
                </div>
              ))}
            </div>
          </section>
        )}

        {/* Related events */}
        {relatedEvents.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">Related Events</h2>
            <div className="mt-4 flex flex-wrap gap-2">
              {relatedEvents.map((re) => (
                <Link
                  key={re.slug}
                  href={`/events/${re.slug}`}
                  className="flex items-center gap-2 rounded-full border border-border px-3 py-1.5 text-sm transition-colors hover:border-blue-500 hover:bg-blue-600 hover:text-white"
                >
                  <span aria-hidden="true">
                    {SPORT_ICONS[re.sport] || "🏆"}
                  </span>
                  {re.shortName}
                </Link>
              ))}
            </div>
          </section>
        )}

        {/* CTA */}
        <div className="mt-10 rounded-xl border border-dashed border-border p-6 text-center">
          <p className="text-muted-foreground">
            Know a great bar to watch {event.shortName}?
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
