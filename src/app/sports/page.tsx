import Link from "next/link";
import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { getAllSports } from "@/lib/supabase/queries";
import { SPORT_ICONS, SITE_URL } from "@/lib/constants";

export const metadata: Metadata = {
  title: "Browse by Sport | WatchLocal — Find Sports Bars Worldwide",
  description:
    "Browse sports bars and viewing venues by sport. Football, NFL, rugby, basketball, cricket, tennis, Formula 1, MMA and more — find the best bars near you.",
  alternates: {
    canonical: `${SITE_URL}/sports`,
  },
  openGraph: {
    title: "Browse by Sport | WatchLocal",
    description:
      "Browse sports bars and viewing venues by sport. Football, NFL, rugby, basketball, cricket, tennis, Formula 1, MMA and more.",
    url: `${SITE_URL}/sports`,
    type: "website",
  },
};

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

export default async function SportsIndexPage() {
  const sports = await getAllSports();

  const breadcrumbSchema = {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: [
      { "@type": "ListItem", position: 1, name: "Home", item: SITE_URL },
      { "@type": "ListItem", position: 2, name: "Sports", item: `${SITE_URL}/sports` },
    ],
  };

  const itemListSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: "Sports categories on WatchLocal",
    description: "Browse sports bars worldwide by sport type",
    numberOfItems: sports.length,
    itemListElement: sports.map((sport, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: SPORT_LABELS[sport] || sport,
      url: `${SITE_URL}/sports/${sport}`,
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
            <Breadcrumbs items={[{ label: "Sports" }]} />
            <h1 className="mt-4 text-3xl font-bold tracking-tight md:text-4xl">
              Browse by Sport
            </h1>
            <p className="mt-2 max-w-2xl text-muted-foreground">
              Find sports bars showing your favourite sport anywhere in the
              world. Select a sport to explore leagues and venues by city.
            </p>
          </div>
        </section>

        <section className="mx-auto max-w-6xl px-4 py-12">
          {sports.length === 0 ? (
            <p className="text-muted-foreground">No sports data available yet.</p>
          ) : (
            <div className="grid gap-4 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
              {sports.map((sport) => {
                const emoji = SPORT_ICONS[sport] || "🏆";
                const label = SPORT_LABELS[sport] || sport;
                return (
                  <Link
                    key={sport}
                    href={`/sports/${sport}`}
                    className="group flex items-center gap-3 rounded-xl border border-border bg-background p-5 transition-all hover:border-brand hover:shadow-md"
                  >
                    <span className="text-3xl" aria-hidden="true">
                      {emoji}
                    </span>
                    <span className="font-semibold group-hover:text-brand">
                      {label}
                    </span>
                  </Link>
                );
              })}
            </div>
          )}
        </section>
      </main>
      <Footer />
    </>
  );
}
