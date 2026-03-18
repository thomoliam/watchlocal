import type { Metadata } from "next";
import Link from "next/link";
import { ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { TV_CHANNELS, getAllLeaguesForChannel } from "@/lib/tv-channels";
import { SITE_URL } from "@/lib/constants";

export const metadata: Metadata = {
  title: "TV Channels | Find Sports Bars by Broadcaster | WatchLocal",
  description:
    "Find sports bars showing Sky Sports, beIN Sports, ESPN, DAZN, Kayo Sports and more. Browse by channel to discover venues near you.",
  alternates: { canonical: `${SITE_URL}/channels` },
  openGraph: {
    title: "TV Channels | Find Sports Bars by Broadcaster | WatchLocal",
    description:
      "Find sports bars showing Sky Sports, beIN Sports, ESPN, DAZN, Kayo Sports and more.",
    url: `${SITE_URL}/channels`,
    type: "website",
  },
};

export default function ChannelsPage() {
  const channels = Object.values(TV_CHANNELS);

  const itemListSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: "TV Channels on WatchLocal",
    numberOfItems: channels.length,
    itemListElement: channels.map((c, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: c.name,
      url: `${SITE_URL}/channels/${c.slug}`,
    })),
  };

  return (
    <>
      <JsonLd data={itemListSchema} />
      <Header />
      <main>
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <Breadcrumbs items={[{ label: "Channels" }]} />
            <h1 className="mt-4 text-3xl font-bold tracking-tight md:text-4xl">
              Browse by TV Channel
            </h1>
            <p className="mt-3 max-w-2xl text-muted-foreground">
              Find sports bars that carry your subscription broadcaster — Sky Sports,
              beIN Sports, ESPN, DAZN and more.
            </p>
          </div>
        </section>

        <section className="mx-auto max-w-6xl px-4 py-10">
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {channels.map((channel) => {
              const leagues = getAllLeaguesForChannel(channel);
              return (
                <Link
                  key={channel.slug}
                  href={`/channels/${channel.slug}`}
                  className="group flex items-start gap-4 rounded-xl border border-border bg-background p-5 transition-all hover:border-brand hover:shadow-md"
                >
                  <span className="text-3xl" aria-hidden="true">
                    {channel.icon}
                  </span>
                  <div className="min-w-0 flex-1">
                    <div className="font-semibold group-hover:text-brand">
                      {channel.name}
                    </div>
                    <p className="mt-1 line-clamp-2 text-sm text-muted-foreground">
                      {channel.description}
                    </p>
                    <p className="mt-2 text-xs text-muted-foreground">
                      {leagues.length} league{leagues.length !== 1 ? "s" : ""}
                    </p>
                  </div>
                  <ChevronRight className="mt-1 h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              );
            })}
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
