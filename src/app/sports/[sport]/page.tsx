import { notFound } from "next/navigation";
import Link from "next/link";
import type { Metadata } from "next";
import { ChevronRight, MapPin } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { getAllSports, getLeaguesBySport } from "@/lib/supabase/queries";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

interface Props {
  params: Promise<{ sport: string }>;
}

const SPORT_LABELS: Record<string, string> = {
  football: "Football (Soccer)",
  "american-football": "American Football",
  rugby: "Rugby",
  "rugby-league": "Rugby League",
  "rugby-union": "Rugby Union",
  basketball: "Basketball",
  cricket: "Cricket",
  baseball: "Baseball",
  "ice-hockey": "Ice Hockey",
  motorsport: "Motorsport",
  "formula-1": "Formula 1",
  mma: "MMA",
  tennis: "Tennis",
  golf: "Golf",
  boxing: "Boxing",
  cycling: "Cycling",
  wrestling: "Wrestling",
  volleyball: "Volleyball",
  "multi-sport": "Multi-Sport",
  "combat-sports": "Combat Sports",
  "australian-football": "Australian Rules Football",
};

export async function generateStaticParams() {
  const sports = await getAllSports();
  return sports.map((sport) => ({ sport }));
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { sport } = await params;
  const label = SPORT_LABELS[sport] || sport;
  const emoji = SPORT_ICONS[sport] || "🏆";
  const title = `Best ${label} Bars Worldwide | WatchLocal`;
  const description = `Find sports bars and venues showing ${label} live. Browse all ${label} leagues and discover where to watch in your city.`;

  return {
    title,
    description,
    alternates: {
      canonical: `${SITE_URL}/sports/${sport}`,
    },
    openGraph: {
      title,
      description,
      url: `${SITE_URL}/sports/${sport}`,
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
    },
  };
}

export default async function SportPage({ params }: Props) {
  const { sport } = await params;
  const leagues = await getLeaguesBySport(sport);

  if (leagues.length === 0) notFound();

  const label = SPORT_LABELS[sport] || sport;
  const emoji = SPORT_ICONS[sport] || "🏆";

  const breadcrumbSchema = {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: [
      { "@type": "ListItem", position: 1, name: "Home", item: SITE_URL },
      { "@type": "ListItem", position: 2, name: "Sports", item: `${SITE_URL}/sports` },
      {
        "@type": "ListItem",
        position: 3,
        name: label,
        item: `${SITE_URL}/sports/${sport}`,
      },
    ],
  };

  const itemListSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: `${label} leagues on WatchLocal`,
    description: `Find sports bars showing ${label} leagues around the world`,
    numberOfItems: leagues.length,
    itemListElement: leagues.map((league, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: league.name,
      url: `${SITE_URL}/watch/${league.slug}`,
    })),
  };

  return (
    <>
      <Header />
      <JsonLd data={breadcrumbSchema} />
      <JsonLd data={itemListSchema} />
      <main>
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-12">
            <Breadcrumbs
              items={[
                { label: "Sports", href: "/sports" },
                { label: label },
              ]}
            />
            <div className="mt-4 flex items-center gap-3">
              <span className="text-5xl" aria-hidden="true">
                {emoji}
              </span>
              <h1 className="text-3xl font-bold tracking-tight md:text-4xl">
                {label} Bars Worldwide
              </h1>
            </div>
            <p className="mt-2 max-w-2xl text-muted-foreground">
              Browse all {label} leagues and find the best sports bars in your
              city. {leagues.length} league{leagues.length !== 1 ? "s" : ""}{" "}
              available across{" "}
              {leagues.reduce((sum, l) => sum + l.city_count, 0)} cities.
            </p>
          </div>
        </section>

        <section className="mx-auto max-w-6xl px-4 py-12">
          <h2 className="text-xl font-bold">
            {label} Leagues ({leagues.length})
          </h2>
          <div className="mt-6 grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {leagues.map((league) => (
              <Link
                key={league.slug}
                href={`/watch/${league.slug}`}
                className="group flex items-center justify-between rounded-xl border border-border bg-background p-5 transition-all hover:border-brand hover:shadow-md"
              >
                <div className="min-w-0">
                  <div className="font-semibold group-hover:text-brand">
                    {league.name}
                  </div>
                  {league.short_name && league.short_name !== league.name && (
                    <div className="text-xs text-muted-foreground">
                      {league.short_name}
                    </div>
                  )}
                  {league.city_count > 0 && (
                    <div className="mt-1 flex items-center gap-1 text-xs text-muted-foreground">
                      <MapPin className="h-3 w-3" />
                      {league.city_count} cit{league.city_count !== 1 ? "ies" : "y"}
                    </div>
                  )}
                </div>
                <ChevronRight className="ml-2 h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
              </Link>
            ))}
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
