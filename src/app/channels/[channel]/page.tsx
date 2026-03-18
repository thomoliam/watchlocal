import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Link from "next/link";
import { Tv, MapPin, ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { getCitiesWithVenuesForLeague } from "@/lib/supabase/queries";
import { getChannel, CHANNEL_SLUGS, getAllLeaguesForChannel } from "@/lib/tv-channels";
import { SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ channel: string }>;
}

export async function generateStaticParams() {
  return CHANNEL_SLUGS.map((slug) => ({ channel: slug }));
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { channel: slug } = await params;
  const channel = getChannel(slug);
  if (!channel) return {};

  const title = `Find ${channel.name} Sports Bars Worldwide | WatchLocal`;
  const description = `Find sports bars showing ${channel.name} near you. ${channel.description}`;

  return {
    title,
    description,
    alternates: { canonical: `${SITE_URL}/channels/${slug}` },
    openGraph: { title, description, url: `${SITE_URL}/channels/${slug}`, type: "website" },
  };
}

export default async function ChannelHubPage({ params }: Props) {
  const { channel: slug } = await params;
  const channel = getChannel(slug);
  if (!channel) notFound();

  const allLeagueSlugs = getAllLeaguesForChannel(channel);

  // Gather cities across all leagues this channel carries (deduplicated by venue count)
  const cityMaps = await Promise.all(
    allLeagueSlugs.map((l) => getCitiesWithVenuesForLeague(l))
  );

  // Merge: sum venue_counts per city
  const cityMap = new Map<string, { name: string; country: string; slug: string; venue_count: number }>();
  for (const cities of cityMaps) {
    for (const city of cities) {
      const existing = cityMap.get(city.slug);
      if (existing) {
        existing.venue_count += city.venue_count;
      } else {
        cityMap.set(city.slug, {
          slug: city.slug,
          name: city.name,
          country: city.country,
          venue_count: city.venue_count,
        });
      }
    }
  }

  const cities = Array.from(cityMap.values())
    .sort((a, b) => b.venue_count - a.venue_count)
    .slice(0, 60);

  const countryNames = Object.keys(channel.leaguesByCountry);

  const breadcrumbs = [
    { label: "Channels", href: "/channels" },
    { label: channel.name },
  ];

  const itemListSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: `Cities showing ${channel.name}`,
    numberOfItems: cities.length,
    itemListElement: cities.map((c, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: c.name,
      url: `${SITE_URL}/channels/${slug}/${c.slug}`,
    })),
  };

  return (
    <>
      <JsonLd data={itemListSchema} />
      <Header />
      <main>
        {/* Hero */}
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <Breadcrumbs items={breadcrumbs} />
            <div className="mt-4 flex items-center gap-3">
              <span className="text-4xl" aria-hidden="true">{channel.icon}</span>
              <h1 className="text-3xl font-bold tracking-tight md:text-4xl">
                {channel.name} Sports Bars
              </h1>
            </div>
            <p className="mt-3 max-w-2xl text-muted-foreground">{channel.description}</p>
            {countryNames.length > 0 && (
              <p className="mt-2 text-sm text-muted-foreground">
                Available in: {countryNames.join(" · ")}
              </p>
            )}
          </div>
        </section>

        {/* Leagues this channel carries */}
        <section className="border-b border-border">
          <div className="mx-auto max-w-6xl px-4 py-8">
            <h2 className="text-base font-semibold">What {channel.name} shows</h2>
            <div className="mt-3 flex flex-wrap gap-2">
              {allLeagueSlugs.map((leagueSlug) => (
                <Link
                  key={leagueSlug}
                  href={`/watch/${leagueSlug}`}
                  className="rounded-full border border-border bg-background px-3 py-1.5 text-sm transition-colors hover:border-brand hover:text-brand"
                >
                  {leagueSlug.replace(/-/g, " ").replace(/\b\w/g, (c) => c.toUpperCase())}
                </Link>
              ))}
            </div>
          </div>
        </section>

        {/* Cities */}
        <section className="mx-auto max-w-6xl px-4 py-10">
          <h2 className="text-xl font-bold">
            Find {channel.name} bars in your city
          </h2>
          <p className="mt-2 text-muted-foreground">
            {cities.length > 0
              ? `${cities.length} cit${cities.length !== 1 ? "ies" : "y"} with verified venues.`
              : "Venues are being added — check back soon."}
          </p>

          {cities.length > 0 ? (
            <div className="mt-6 grid gap-3 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
              {cities.map((city) => (
                <Link
                  key={city.slug}
                  href={`/channels/${slug}/${city.slug}`}
                  className="group flex items-center justify-between rounded-lg border border-border bg-background px-4 py-3 transition-all hover:border-brand hover:shadow-sm"
                >
                  <div>
                    <p className="font-medium group-hover:text-brand">{city.name}</p>
                    <p className="text-xs text-muted-foreground">
                      {city.country} · {city.venue_count} venue{city.venue_count !== 1 ? "s" : ""}
                    </p>
                  </div>
                  <MapPin className="h-4 w-4 text-muted-foreground group-hover:text-brand" />
                </Link>
              ))}
            </div>
          ) : (
            <div className="mt-6 rounded-xl border border-border p-10 text-center">
              <Tv className="mx-auto h-8 w-8 text-muted-foreground" />
              <p className="mt-3 text-muted-foreground">
                No verified venues yet. Know a bar that shows {channel.name}?{" "}
                <Link href="/submit-venue" className="text-brand hover:underline">
                  Submit it
                </Link>
                .
              </p>
            </div>
          )}
        </section>

        {/* Other channels CTA */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-8">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
              <div>
                <p className="font-semibold">Browse other channels</p>
                <p className="text-sm text-muted-foreground">
                  Find bars showing Sky Sports, beIN Sports, ESPN, DAZN and more.
                </p>
              </div>
              <Link
                href="/channels"
                className="inline-flex items-center gap-2 rounded-lg border border-border bg-background px-5 py-2.5 text-sm font-medium hover:border-brand hover:text-brand"
              >
                All channels
                <ChevronRight className="h-4 w-4" />
              </Link>
            </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
