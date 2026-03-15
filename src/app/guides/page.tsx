import Link from "next/link";
import { Calendar, Tag } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import { getAllGuides } from "@/lib/guides";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Guides — Sports Bar Tips, City Guides & League Watchlists",
  description:
    "In-depth guides to finding the best sports bars around the world. City-by-city breakdowns, league viewing tips, timezone helpers, and venue recommendations.",
  openGraph: {
    title: "Guides — Sports Bar Tips, City Guides & League Watchlists",
    description:
      "In-depth guides to finding the best sports bars around the world. City-by-city breakdowns, league viewing tips, timezone helpers, and venue recommendations.",
  },
  alternates: {
    canonical: "/guides",
  },
};

const CATEGORY_COLORS: Record<string, string> = {
  "City Guide": "bg-blue-100 text-blue-800 dark:bg-blue-900/40 dark:text-blue-300",
  "League Guide":
    "bg-green-100 text-green-800 dark:bg-green-900/40 dark:text-green-300",
  "Event Guide":
    "bg-purple-100 text-purple-800 dark:bg-purple-900/40 dark:text-purple-300",
};

export default function GuidesIndex() {
  const guides = getAllGuides();

  return (
    <>
      <Header />
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

        {/* Grid */}
        <section className="mx-auto max-w-6xl px-4 py-12">
          {guides.length === 0 ? (
            <p className="text-muted-foreground">
              No guides published yet. Check back soon.
            </p>
          ) : (
            <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
              {guides.map((guide) => {
                const pub = new Date(guide.frontmatter.publishedAt);
                const upd = new Date(guide.frontmatter.updatedAt);
                const categoryClass =
                  CATEGORY_COLORS[guide.frontmatter.category] ??
                  "bg-gray-100 text-gray-800 dark:bg-gray-800 dark:text-gray-300";

                return (
                  <Link
                    key={guide.slug}
                    href={`/guides/${guide.slug}`}
                    className="group block"
                  >
                    <article className="flex h-full flex-col rounded-xl border border-border bg-background p-6 transition-all hover:border-brand hover:shadow-md">
                      {/* Category badge */}
                      <div className="mb-3 flex items-center gap-2">
                        <span
                          className={`inline-flex items-center gap-1 rounded-full px-2.5 py-0.5 text-xs font-medium ${categoryClass}`}
                        >
                          <Tag className="h-3 w-3" />
                          {guide.frontmatter.category}
                        </span>
                      </div>

                      {/* Title */}
                      <h2 className="text-lg font-semibold leading-snug group-hover:text-brand">
                        {guide.frontmatter.title}
                      </h2>

                      {/* Description */}
                      <p className="mt-2 flex-1 text-sm leading-relaxed text-muted-foreground">
                        {guide.frontmatter.description}
                      </p>

                      {/* Date */}
                      <div className="mt-4 flex items-center gap-3 text-xs text-muted-foreground">
                        <span className="flex items-center gap-1">
                          <Calendar className="h-3 w-3" />
                          {pub.toLocaleDateString("en-GB", {
                            day: "numeric",
                            month: "short",
                            year: "numeric",
                          })}
                        </span>
                        {upd.getTime() !== pub.getTime() && (
                          <span>
                            Updated{" "}
                            {upd.toLocaleDateString("en-GB", {
                              day: "numeric",
                              month: "short",
                              year: "numeric",
                            })}
                          </span>
                        )}
                      </div>
                    </article>
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
