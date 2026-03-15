import Link from "next/link";
import type { Metadata } from "next";
import { Globe, MapPin, ChevronRight } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import { getAllCountriesWithCounts } from "@/lib/supabase/queries";
import { countryToSlug, COUNTRY_META, REGION_COUNTRIES } from "@/lib/countries";
import { generateBreadcrumbSchema } from "@/lib/seo";
import { SITE_URL } from "@/lib/constants";

export const dynamic = "force-dynamic";

export const metadata: Metadata = {
  title: "Sports Bars by Country | WatchLocal",
  description:
    "Browse sports bars and live sport venues by country. Find the best places to watch football, rugby, F1, NFL, NBA, and more in countries around the world.",
  openGraph: {
    title: "Sports Bars by Country | WatchLocal",
    description:
      "Browse sports bars and live sport venues by country. Find the best places to watch football, rugby, F1, NFL, NBA, and more in countries around the world.",
    url: `${SITE_URL}/countries`,
    type: "website",
  },
  alternates: {
    canonical: `${SITE_URL}/countries`,
  },
};

export default async function CountriesIndexPage() {
  const countries = await getAllCountriesWithCounts();

  // Group by region
  const regionMap = new Map<string, typeof countries>();
  for (const c of countries) {
    const slug = countryToSlug(c.country);
    let region = "Other";
    for (const [r, slugs] of Object.entries(REGION_COUNTRIES)) {
      if (slugs.includes(slug)) {
        region = r;
        break;
      }
    }
    const list = regionMap.get(region) || [];
    list.push(c);
    regionMap.set(region, list);
  }

  const totalVenues = countries.reduce((sum, c) => sum + c.venue_count, 0);
  const totalCities = countries.reduce((sum, c) => sum + c.city_count, 0);

  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <Breadcrumbs items={[{ label: "Countries" }]} />

        <JsonLd
          data={generateBreadcrumbSchema([
            { name: "Home", url: SITE_URL },
            { name: "Countries", url: `${SITE_URL}/countries` },
          ])}
        />

        <div className="mt-6">
          <h1 className="text-3xl font-bold">Sports Bars by Country</h1>
          <p className="mt-2 max-w-2xl text-muted-foreground">
            Find the best sports bars and venues to watch live sport in{" "}
            {countries.length} countries worldwide. Browse by country to
            discover cities, venues, and which leagues are most popular.
          </p>
        </div>

        {/* Stats bar */}
        <div className="mt-6 flex flex-wrap items-center gap-4 rounded-xl border border-blue-200 bg-blue-50 p-4 dark:border-blue-900 dark:bg-blue-950/40">
          <div className="flex items-center gap-2 text-sm font-medium">
            <Globe className="h-4 w-4 text-blue-600 dark:text-blue-400" />
            <span>{countries.length} countries</span>
          </div>
          <span className="text-muted-foreground">|</span>
          <div className="flex items-center gap-2 text-sm font-medium">
            <MapPin className="h-4 w-4 text-blue-600 dark:text-blue-400" />
            <span>{totalCities} cities</span>
          </div>
          <span className="text-muted-foreground">|</span>
          <div className="text-sm font-medium">{totalVenues} venues</div>
        </div>

        {/* Countries by region */}
        {Array.from(regionMap.entries()).map(([region, regionCountries]) => (
          <section key={region} className="mt-10">
            <h2 className="text-xl font-bold">{region}</h2>
            <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {regionCountries.map((c) => {
                const slug = countryToSlug(c.country);
                const meta = COUNTRY_META[slug];
                return (
                  <Link
                    key={slug}
                    href={`/countries/${slug}`}
                    className="group flex items-center gap-3 rounded-xl border border-border bg-white p-4 transition-all hover:border-blue-500 hover:shadow-md dark:bg-card"
                  >
                    <Globe className="h-5 w-5 shrink-0 text-blue-600 dark:text-blue-400" />
                    <div className="min-w-0">
                      <div className="truncate font-medium">
                        {meta?.name || c.country}
                      </div>
                      <div className="text-xs text-muted-foreground">
                        {c.city_count} {c.city_count === 1 ? "city" : "cities"}
                        {c.venue_count > 0 &&
                          ` · ${c.venue_count} ${c.venue_count === 1 ? "venue" : "venues"}`}
                      </div>
                    </div>
                    <ChevronRight className="ml-auto h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                  </Link>
                );
              })}
            </div>
          </section>
        ))}
      </main>
      <Footer />
    </>
  );
}
