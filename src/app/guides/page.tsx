import Link from "next/link";
import { Calendar, Tag, Clock, ChevronRight, Mail } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import SubscribeForm from "@/components/guides/SubscribeForm";
import { getAllGuides } from "@/lib/guides";
import type { Metadata } from "next";
import type { GuideFrontmatter } from "@/lib/guides";
import { SITE_URL } from "@/lib/constants";

/* ─── Types ────────────────────────────────────────────────────────────── */

type CategoryFilter = "all" | "city-guide" | "league-guide" | "event-guide" | "expat-guide";

interface FilterDef {
  label: string;
  value: CategoryFilter;
  categoryName?: GuideFrontmatter["category"];
}

const FILTERS: FilterDef[] = [
  { label: "All", value: "all" },
  { label: "City Guides", value: "city-guide", categoryName: "City Guide" },
  { label: "League Guides", value: "league-guide", categoryName: "League Guide" },
  { label: "Event Guides", value: "event-guide", categoryName: "Event Guide" },
  { label: "Expat Guides", value: "expat-guide", categoryName: "Expat Guide" },
];

const CATEGORY_COLORS: Record<string, string> = {
  "City Guide": "bg-blue-100 text-blue-800 dark:bg-blue-900/40 dark:text-blue-300",
  "League Guide": "bg-green-100 text-green-800 dark:bg-green-900/40 dark:text-green-300",
  "Event Guide": "bg-purple-100 text-purple-800 dark:bg-purple-900/40 dark:text-purple-300",
  "Expat Guide": "bg-orange-100 text-orange-800 dark:bg-orange-900/40 dark:text-orange-300",
};

/* ─── Metadata ──────────────────────────────────────────────────────────── */

const CATEGORY_META: Record<CategoryFilter, { title: string; description: string }> = {
  all: {
    title: "Guides — Sports Bar Tips, City Guides & League Watchlists",
    description:
      "In-depth guides to finding the best sports bars around the world. City-by-city breakdowns, league viewing tips, timezone helpers, and venue recommendations.",
  },
  "city-guide": {
    title: "City Guides — Best Sports Bars by City | WatchLocal",
    description:
      "City-by-city sports bar guides for expats and travellers. Find the best venues in Bangkok, Bali, London, Amsterdam, and more.",
  },
  "league-guide": {
    title: "League Guides — Where to Watch Your Sport Abroad | WatchLocal",
    description:
      "Where to watch the Premier League, Champions League, AFL, NRL, NFL and more when you're overseas.",
  },
  "event-guide": {
    title: "Event Guides — Super Bowl, World Cup & More | WatchLocal",
    description:
      "How to watch major sporting events abroad. Super Bowl, FIFA World Cup, Champions League Final, and more.",
  },
  "expat-guide": {
    title: "Expat Guides — Watching Live Sport as an Expat | WatchLocal",
    description:
      "Essential guides for expats who want to keep up with their home sport while living abroad.",
  },
};

export async function generateMetadata({
  searchParams,
}: {
  searchParams: Promise<{ category?: string }>;
}): Promise<Metadata> {
  const { category } = await searchParams;
  const filter = (category ?? "all") as CategoryFilter;
  const meta = CATEGORY_META[filter] ?? CATEGORY_META.all;
  return {
    title: meta.title,
    description: meta.description,
    openGraph: { title: meta.title, description: meta.description },
    alternates: { canonical: "/guides" },
  };
}

/* ─── Helpers ───────────────────────────────────────────────────────────── */

function estimateReadTime(slug: string): number {
  // ~5 min per guide — we don't have word counts at this level
  return 5;
}

function formatDate(dateStr: string) {
  return new Date(dateStr).toLocaleDateString("en-GB", {
    day: "numeric",
    month: "short",
    year: "numeric",
  });
}

/* ─── Page ──────────────────────────────────────────────────────────────── */

export default async function GuidesIndex({
  searchParams,
}: {
  searchParams: Promise<{ category?: string }>;
}) {
  const { category } = await searchParams;
  const activeFilter = (category ?? "all") as CategoryFilter;

  const allGuides = getAllGuides();

  // Filter by category
  const activeFilterDef = FILTERS.find((f) => f.value === activeFilter) ?? FILTERS[0];
  const guides =
    activeFilter === "all"
      ? allGuides
      : allGuides.filter(
          (g) => g.frontmatter.category === activeFilterDef.categoryName
        );

  const [featuredGuide, ...restGuides] = guides;

  const itemListSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: "WatchLocal Sports Bar Guides",
    description:
      "In-depth guides to finding the best sports bars around the world.",
    url: `${SITE_URL}/guides`,
    numberOfItems: allGuides.length,
    itemListElement: allGuides.map((guide, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: guide.frontmatter.title,
      url: `${SITE_URL}/guides/${guide.slug}`,
      item: {
        "@type": "Article",
        headline: guide.frontmatter.title,
        description: guide.frontmatter.description,
        url: `${SITE_URL}/guides/${guide.slug}`,
        datePublished: guide.frontmatter.publishedAt,
        dateModified: guide.frontmatter.updatedAt,
        author: { "@type": "Person", name: guide.frontmatter.author },
      },
    })),
  };

  return (
    <>
      <Header />
      <JsonLd data={itemListSchema} />
      <main>
        {/* Hero */}
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-12">
            <Breadcrumbs items={[{ label: "Guides" }]} />
            <h1 className="mt-4 text-3xl font-bold tracking-tight md:text-4xl">
              Guides
            </h1>
            <p className="mt-2 max-w-2xl text-muted-foreground">
              In-depth guides to watching live sport abroad. City breakdowns,
              league viewing tips, venue recommendations, and timezone helpers.
            </p>
          </div>
        </section>

        {/* Category filter tabs */}
        <section className="border-b border-border bg-background">
          <div className="mx-auto max-w-6xl px-4">
            <div className="flex flex-wrap gap-1 py-3">
              {FILTERS.map((filter) => {
                const isActive = filter.value === activeFilter;
                const href =
                  filter.value === "all"
                    ? "/guides"
                    : `/guides?category=${filter.value}`;
                return (
                  <Link
                    key={filter.value}
                    href={href}
                    className={`rounded-full px-4 py-1.5 text-sm font-medium transition-colors ${
                      isActive
                        ? "bg-brand text-white"
                        : "text-muted-foreground hover:bg-muted hover:text-foreground"
                    }`}
                  >
                    {filter.label}
                  </Link>
                );
              })}
            </div>
          </div>
        </section>

        {/* Content */}
        <section className="mx-auto max-w-6xl px-4 py-12">
          {guides.length === 0 ? (
            <div className="rounded-xl border border-border p-12 text-center">
              <p className="text-muted-foreground">
                No guides in this category yet. Check back soon.
              </p>
              <Link
                href="/guides"
                className="mt-4 inline-block text-sm font-medium text-brand hover:underline"
              >
                View all guides
              </Link>
            </div>
          ) : (
            <>
              {/* Featured / hero guide */}
              {featuredGuide && (
                <div className="mb-10">
                  <Link href={`/guides/${featuredGuide.slug}`} className="group block">
                    <article className="overflow-hidden rounded-2xl border border-border bg-background transition-all hover:border-brand hover:shadow-lg">
                      {/* Hero image placeholder */}
                      {featuredGuide.frontmatter.heroImage ? (
                        // eslint-disable-next-line @next/next/no-img-element
                        <img
                          src={featuredGuide.frontmatter.heroImage}
                          alt={featuredGuide.frontmatter.title}
                          className="h-64 w-full object-cover md:h-80"
                        />
                      ) : (
                        <div className="flex h-48 items-center justify-center bg-gradient-to-br from-brand/10 to-brand/5 md:h-64">
                          <span className="text-5xl opacity-30">📖</span>
                        </div>
                      )}

                      <div className="p-6 md:p-8">
                        {/* Category + read time */}
                        <div className="flex flex-wrap items-center gap-3">
                          <span
                            className={`inline-flex items-center gap-1 rounded-full px-2.5 py-0.5 text-xs font-medium ${
                              CATEGORY_COLORS[featuredGuide.frontmatter.category] ??
                              "bg-gray-100 text-gray-800 dark:bg-gray-800 dark:text-gray-300"
                            }`}
                          >
                            <Tag className="h-3 w-3" />
                            {featuredGuide.frontmatter.category}
                          </span>
                          <span className="flex items-center gap-1 text-xs text-muted-foreground">
                            <Clock className="h-3 w-3" />
                            {estimateReadTime(featuredGuide.slug)} min read
                          </span>
                          <span className="flex items-center gap-1 text-xs text-muted-foreground">
                            <Calendar className="h-3 w-3" />
                            {formatDate(featuredGuide.frontmatter.publishedAt)}
                          </span>
                        </div>

                        <h2 className="mt-3 text-2xl font-bold leading-snug group-hover:text-brand md:text-3xl">
                          {featuredGuide.frontmatter.title}
                        </h2>
                        <p className="mt-3 max-w-3xl text-base leading-relaxed text-muted-foreground">
                          {featuredGuide.frontmatter.description}
                        </p>

                        <div className="mt-5 inline-flex items-center gap-1.5 text-sm font-medium text-brand">
                          Read guide
                          <ChevronRight className="h-4 w-4" />
                        </div>
                      </div>
                    </article>
                  </Link>
                </div>
              )}

              {/* Rest of guides — 3-column grid */}
              {restGuides.length > 0 && (
                <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
                  {restGuides.map((guide) => {
                    const categoryClass =
                      CATEGORY_COLORS[guide.frontmatter.category] ??
                      "bg-gray-100 text-gray-800 dark:bg-gray-800 dark:text-gray-300";

                    return (
                      <Link
                        key={guide.slug}
                        href={`/guides/${guide.slug}`}
                        className="group block"
                      >
                        <article className="flex h-full flex-col overflow-hidden rounded-xl border border-border bg-background transition-all hover:border-brand hover:shadow-md">
                          {/* Hero image or placeholder */}
                          {guide.frontmatter.heroImage ? (
                            // eslint-disable-next-line @next/next/no-img-element
                            <img
                              src={guide.frontmatter.heroImage}
                              alt={guide.frontmatter.title}
                              className="h-40 w-full object-cover transition-transform group-hover:scale-105"
                            />
                          ) : (
                            <div className="flex h-32 items-center justify-center bg-gradient-to-br from-brand/10 to-brand/5">
                              <span className="text-3xl opacity-25">📖</span>
                            </div>
                          )}

                          <div className="flex flex-1 flex-col p-5">
                            {/* Category badge */}
                            <div className="mb-3 flex flex-wrap items-center gap-2">
                              <span
                                className={`inline-flex items-center gap-1 rounded-full px-2.5 py-0.5 text-xs font-medium ${categoryClass}`}
                              >
                                <Tag className="h-3 w-3" />
                                {guide.frontmatter.category}
                              </span>
                            </div>

                            {/* Title */}
                            <h2 className="text-base font-semibold leading-snug group-hover:text-brand">
                              {guide.frontmatter.title}
                            </h2>

                            {/* Description */}
                            <p className="mt-2 flex-1 text-sm leading-relaxed text-muted-foreground line-clamp-3">
                              {guide.frontmatter.description}
                            </p>

                            {/* Meta row */}
                            <div className="mt-4 flex flex-wrap items-center gap-3 text-xs text-muted-foreground">
                              <span className="flex items-center gap-1">
                                <Clock className="h-3 w-3" />
                                {estimateReadTime(guide.slug)} min read
                              </span>
                              <span className="flex items-center gap-1">
                                <Calendar className="h-3 w-3" />
                                {formatDate(guide.frontmatter.publishedAt)}
                              </span>
                            </div>
                          </div>
                        </article>
                      </Link>
                    );
                  })}
                </div>
              )}
            </>
          )}
        </section>

        {/* Subscribe CTA */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <div className="mx-auto max-w-2xl rounded-2xl border border-border bg-background p-8 text-center shadow-sm">
              <div className="mx-auto mb-4 flex h-12 w-12 items-center justify-center rounded-full bg-brand/10">
                <Mail className="h-6 w-6 text-brand" />
              </div>
              <h2 className="text-xl font-bold">Get new guides in your inbox</h2>
              <p className="mt-2 text-sm text-muted-foreground">
                We publish new city guides, league tips, and venue roundups regularly.
                No spam — just useful content for sports fans abroad.
              </p>
              <SubscribeForm />
              <p className="mt-3 text-xs text-muted-foreground">
                Unsubscribe any time. No spam, ever.
              </p>
            </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
