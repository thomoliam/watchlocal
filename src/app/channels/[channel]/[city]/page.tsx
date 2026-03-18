import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Link from "next/link";
import { Tv } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import VenueCard from "@/components/venues/VenueCard";
import {
  getCityBySlug,
  getCitiesForCountryCodes,
  getVenuesForLeaguesInCity,
} from "@/lib/supabase/queries";
import {
  getChannel,
  CHANNEL_SLUGS,
  getLeaguesForChannelInCountry,
  getCountriesForChannel,
} from "@/lib/tv-channels";
import { SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ channel: string; city: string }>;
}

export async function generateStaticParams() {
  const params: { channel: string; city: string }[] = [];

  for (const channelSlug of CHANNEL_SLUGS) {
    const channel = getChannel(channelSlug)!;
    const countryCodes = getCountriesForChannel(channel);
    const cities = await getCitiesForCountryCodes(countryCodes);
    for (const city of cities) {
      params.push({ channel: channelSlug, city: city.slug });
    }
  }

  return params;
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { channel: channelSlug, city: citySlug } = await params;
  const [channel, city] = await Promise.all([
    Promise.resolve(getChannel(channelSlug)),
    getCityBySlug(citySlug),
  ]);
  if (!channel || !city) return {};

  const title = `${channel.name} Sports Bars in ${city.name} | WatchLocal`;
  const description = `Find sports bars in ${city.name} showing ${channel.name}. Verified venues with confirmed ${channel.name} subscriptions.`;

  return {
    title,
    description,
    alternates: { canonical: `${SITE_URL}/channels/${channelSlug}/${citySlug}` },
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/channels/${channelSlug}/${citySlug}`,
      type: "website",
    },
  };
}

export default async function ChannelCityPage({ params }: Props) {
  const { channel: channelSlug, city: citySlug } = await params;

  const channel = getChannel(channelSlug);
  if (!channel) notFound();

  const city = await getCityBySlug(citySlug);
  if (!city) notFound();

  // Which leagues does this channel carry in this city's country?
  const countryCode = (city as any).country_code ?? "";
  const leagueSlugs = getLeaguesForChannelInCountry(channel, countryCode);

  // Fall back to all leagues the channel carries if no country match
  const effectiveLeagueSlugs =
    leagueSlugs.length > 0
      ? leagueSlugs
      : Object.values(channel.leaguesByCountry).flat();

  const venues = await getVenuesForLeaguesInCity(citySlug, effectiveLeagueSlugs);

  const breadcrumbs = [
    { label: "Channels", href: "/channels" },
    { label: channel.name, href: `/channels/${channelSlug}` },
    { label: city.name },
  ];

  const itemListSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: `${channel.name} sports bars in ${city.name}`,
    numberOfItems: venues.length,
    itemListElement: venues.map((v, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: v.name,
      url: `${SITE_URL}/venues/${v.slug}`,
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
              <span className="text-4xl" aria-hidden="true">
                {channel.icon}
              </span>
              <h1 className="text-3xl font-bold tracking-tight md:text-4xl">
                {channel.name} Sports Bars in {city.name}
              </h1>
            </div>
            <p className="mt-3 max-w-2xl text-muted-foreground">
              {venues.length > 0
                ? `${venues.length} verified venue${venues.length !== 1 ? "s" : ""} in ${city.name} with a confirmed ${channel.name} subscription.`
                : `No verified venues yet in ${city.name} for ${channel.name}.`}
            </p>

            {/* Leagues carried */}
            {effectiveLeagueSlugs.length > 0 && (
              <div className="mt-4 flex flex-wrap gap-2">
                {effectiveLeagueSlugs.map((slug) => (
                  <Link
                    key={slug}
                    href={`/watch/${slug}/${citySlug}`}
                    className="rounded-full border border-border bg-background px-3 py-1 text-xs transition-colors hover:border-brand hover:text-brand"
                  >
                    {slug.replace(/-/g, " ").replace(/\b\w/g, (c) => c.toUpperCase())}
                    {" "}in {city.name}
                  </Link>
                ))}
              </div>
            )}
          </div>
        </section>

        {/* Venue list */}
        <section className="mx-auto max-w-6xl px-4 py-10">
          {venues.length > 0 ? (
            <>
              <h2 className="text-xl font-bold">
                Venues showing {channel.name} in {city.name}
              </h2>
              <div className="mt-6 grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                {venues.map((venue) => (
                  <VenueCard key={venue.id} venue={venue} />
                ))}
              </div>
            </>
          ) : (
            <div className="rounded-xl border border-border p-10 text-center">
              <Tv className="mx-auto h-8 w-8 text-muted-foreground" />
              <p className="mt-3 font-medium">No venues found yet</p>
              <p className="mt-1 text-sm text-muted-foreground">
                Know a bar in {city.name} that shows {channel.name}?{" "}
                <Link href="/submit-venue" className="text-brand hover:underline">
                  Submit it
                </Link>
                .
              </p>
              <Link
                href={`/channels/${channelSlug}`}
                className="mt-4 inline-block text-sm text-brand hover:underline"
              >
                ← Back to {channel.name} cities
              </Link>
            </div>
          )}
        </section>

        {/* CTA — browse by league */}
        {effectiveLeagueSlugs.length > 0 && (
          <section className="border-t border-border bg-muted">
            <div className="mx-auto max-w-6xl px-4 py-8">
              <p className="font-semibold">Browse by league in {city.name}</p>
              <div className="mt-3 flex flex-wrap gap-2">
                {effectiveLeagueSlugs.map((slug) => (
                  <Link
                    key={slug}
                    href={`/watch/${slug}/${citySlug}`}
                    className="rounded-lg border border-border bg-background px-4 py-2 text-sm transition-colors hover:border-brand hover:text-brand"
                  >
                    {slug.replace(/-/g, " ").replace(/\b\w/g, (c) => c.toUpperCase())}
                  </Link>
                ))}
              </div>
            </div>
          </section>
        )}
      </main>
      <Footer />
    </>
  );
}
