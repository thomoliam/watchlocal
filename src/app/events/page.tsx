import Link from "next/link";
import type { Metadata } from "next";
import { Calendar, ChevronRight, MapPin, Trophy } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { getEventsByTiming, type SportEvent } from "@/lib/events";
import { generateBreadcrumbSchema } from "@/lib/seo";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

export const metadata: Metadata = {
  title: "Upcoming Sporting Events | Where to Watch | WatchLocal",
  description:
    "Find where to watch major sporting events at sports bars worldwide. Super Bowl, Champions League Final, Six Nations, F1, AFL Grand Final, and more.",
  openGraph: {
    title: "Upcoming Sporting Events | Where to Watch | WatchLocal",
    description:
      "Find where to watch major sporting events at sports bars worldwide. Super Bowl, Champions League Final, Six Nations, F1, AFL Grand Final, and more.",
    url: `${SITE_URL}/events`,
    type: "website",
  },
  alternates: {
    canonical: `${SITE_URL}/events`,
  },
};

function formatDateRange(event: SportEvent): string {
  const start = new Date(event.date);
  const options: Intl.DateTimeFormatOptions = {
    month: "short",
    day: "numeric",
    year: "numeric",
  };
  if (event.endDate) {
    const end = new Date(event.endDate);
    const startStr = start.toLocaleDateString("en-US", { month: "short", day: "numeric" });
    const endStr = end.toLocaleDateString("en-US", options);
    return `${startStr} - ${endStr}`;
  }
  return start.toLocaleDateString("en-US", options);
}

function EventCard({ event }: { event: SportEvent }) {
  const sportIcon = SPORT_ICONS[event.sport] || "🏆";

  return (
    <Link
      href={`/events/${event.slug}`}
      className="group flex flex-col rounded-xl border border-border bg-white p-5 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
    >
      <div className="flex items-start gap-3">
        <span className="text-3xl" aria-hidden="true">
          {sportIcon}
        </span>
        <div className="min-w-0 flex-1">
          <h3 className="font-bold group-hover:text-blue-600 dark:group-hover:text-blue-400">
            {event.name}
          </h3>
          <div className="mt-1 flex flex-wrap items-center gap-2 text-xs text-muted-foreground">
            <span className="flex items-center gap-1">
              <Calendar className="h-3 w-3" />
              {formatDateRange(event)}
            </span>
            <span className="flex items-center gap-1">
              <MapPin className="h-3 w-3" />
              {event.cities.length} cities
            </span>
          </div>
        </div>
        <ChevronRight className="mt-1 h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
      </div>
      <p className="mt-3 line-clamp-2 text-sm text-muted-foreground">
        {event.description}
      </p>
    </Link>
  );
}

export default function EventsIndexPage() {
  const { upcoming, past } = getEventsByTiming();

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs items={[{ label: "Events" }]} />

        <JsonLd
          data={generateBreadcrumbSchema([
            { name: "Home", url: SITE_URL },
            { name: "Events", url: `${SITE_URL}/events` },
          ])}
        />

        <div className="mt-6">
          <h1 className="text-3xl font-bold">Sporting Events</h1>
          <p className="mt-2 max-w-2xl text-muted-foreground">
            Find where to watch the biggest sporting events at sports bars
            worldwide. From the Super Bowl to the Champions League Final, we
            help you find the best venue near you.
          </p>
        </div>

        {/* Stats */}
        <div className="mt-6 flex flex-wrap items-center gap-4 rounded-xl border border-blue-200 bg-blue-50 p-4 dark:border-blue-900 dark:bg-blue-950/40">
          <div className="flex items-center gap-2 text-sm font-medium">
            <Trophy className="h-4 w-4 text-blue-600 dark:text-blue-400" />
            <span>{upcoming.length} upcoming events</span>
          </div>
          {past.length > 0 && (
            <>
              <span className="text-muted-foreground">|</span>
              <div className="text-sm font-medium">
                {past.length} past events
              </div>
            </>
          )}
        </div>

        {/* Upcoming events */}
        {upcoming.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">Upcoming Events</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Major sporting events coming up. Find a venue near you.
            </p>
            <div className="mt-4 grid gap-4 md:grid-cols-2">
              {upcoming.map((event) => (
                <EventCard key={event.slug} event={event} />
              ))}
            </div>
          </section>
        )}

        {/* Past events */}
        {past.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold">Past Events</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Recent major sporting events.
            </p>
            <div className="mt-4 grid gap-4 md:grid-cols-2">
              {past.map((event) => (
                <EventCard key={event.slug} event={event} />
              ))}
            </div>
          </section>
        )}
      </main>
      <Footer />
    </>
  );
}
