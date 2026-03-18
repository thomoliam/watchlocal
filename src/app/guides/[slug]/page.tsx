import { notFound } from "next/navigation";
import { Calendar, User } from "lucide-react";
import { MDXRemote } from "next-mdx-remote/rsc";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumbs from "@/components/layout/Breadcrumbs";
import JsonLd from "@/components/seo/JsonLd";
import TableOfContents from "@/components/guides/TableOfContents";
import VenueCard from "@/components/guides/VenueCard";
import WatchPageLink from "@/components/guides/WatchPageLink";
import { getGuideBySlug, getGuideSlugs } from "@/lib/guides";
import type { Metadata } from "next";

const SITE_URL =
  process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";

interface PageProps {
  params: Promise<{ slug: string }>;
}

export async function generateStaticParams() {
  return getGuideSlugs().map((slug) => ({ slug }));
}

export async function generateMetadata({
  params,
}: PageProps): Promise<Metadata> {
  const { slug } = await params;
  const guide = getGuideBySlug(slug);
  if (!guide) return {};

  const { title, description, heroImage } = guide.frontmatter;

  const ogImage = heroImage
    ? { url: heroImage, width: 1200, height: 630, alt: title }
    : {
        url: `${SITE_URL}/api/og?title=${encodeURIComponent(title)}&subtitle=${encodeURIComponent(description)}`,
        width: 1200,
        height: 630,
        alt: title,
      };

  return {
    title,
    description,
    openGraph: {
      title,
      description,
      type: "article",
      publishedTime: guide.frontmatter.publishedAt,
      modifiedTime: guide.frontmatter.updatedAt,
      authors: [guide.frontmatter.author],
      images: [ogImage],
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
      images: [ogImage.url],
    },
    alternates: {
      canonical: `${SITE_URL}/guides/${slug}`,
    },
  };
}

const mdxComponents = {
  VenueCard,
  WatchPageLink,
  h2: (props: React.ComponentProps<"h2">) => {
    const text = typeof props.children === "string" ? props.children : "";
    const id = text
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, "-")
      .replace(/(^-|-$)/g, "");
    return <h2 id={id} {...props} />;
  },
  h3: (props: React.ComponentProps<"h3">) => {
    const text = typeof props.children === "string" ? props.children : "";
    const id = text
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, "-")
      .replace(/(^-|-$)/g, "");
    return <h3 id={id} {...props} />;
  },
  a: (props: React.ComponentProps<"a">) => {
    const isInternal = props.href?.startsWith("/");
    return (
      <a
        {...props}
        className="text-brand underline decoration-brand/30 underline-offset-2 transition-colors hover:decoration-brand"
        {...(!isInternal && { target: "_blank", rel: "noopener noreferrer" })}
      />
    );
  },
};

export default async function GuidePage({ params }: PageProps) {
  const { slug } = await params;
  const guide = getGuideBySlug(slug);
  if (!guide) notFound();

  const { frontmatter, content } = guide;
  const pub = new Date(frontmatter.publishedAt);
  const upd = new Date(frontmatter.updatedAt);

  const articleSchema = {
    "@context": "https://schema.org",
    "@type": "Article",
    headline: frontmatter.title,
    description: frontmatter.description,
    author: {
      "@type": "Organization",
      name: "WatchLocal",
      url: SITE_URL,
    },
    publisher: {
      "@type": "Organization",
      name: "WatchLocal",
      url: SITE_URL,
      logo: {
        "@type": "ImageObject",
        url: `${SITE_URL}/logo.png`,
      },
    },
    datePublished: frontmatter.publishedAt,
    dateModified: frontmatter.updatedAt,
    mainEntityOfPage: {
      "@type": "WebPage",
      "@id": `${SITE_URL}/guides/${slug}`,
    },
    speakable: {
      "@type": "SpeakableSpecification",
      cssSelector: ["h1", "p.guide-intro", "h2"],
    },
    ...(frontmatter.heroImage && { image: frontmatter.heroImage }),
  };

  const faqSchema = frontmatter.faq && frontmatter.faq.length > 0
    ? {
        "@context": "https://schema.org",
        "@type": "FAQPage",
        mainEntity: frontmatter.faq.map((item) => ({
          "@type": "Question",
          name: item.question,
          acceptedAnswer: {
            "@type": "Answer",
            text: item.answer,
          },
        })),
      }
    : null;

  return (
    <>
      <JsonLd data={articleSchema} />
      {faqSchema && <JsonLd data={faqSchema} />}
      <Header />
      <main>
        {/* Hero */}
        <section className="border-b border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <Breadcrumbs
              items={[
                { label: "Guides", href: "/guides" },
                { label: frontmatter.title },
              ]}
            />
            <h1 className="mt-4 max-w-3xl text-3xl font-bold tracking-tight md:text-4xl">
              {frontmatter.title}
            </h1>
            <p className="mt-3 max-w-2xl text-muted-foreground">
              {frontmatter.description}
            </p>
            <div className="mt-4 flex flex-wrap items-center gap-4 text-sm text-muted-foreground">
              <span className="flex items-center gap-1">
                <User className="h-3.5 w-3.5" />
                {frontmatter.author}
              </span>
              <span className="flex items-center gap-1">
                <Calendar className="h-3.5 w-3.5" />
                Published{" "}
                {pub.toLocaleDateString("en-GB", {
                  day: "numeric",
                  month: "long",
                  year: "numeric",
                })}
              </span>
              {upd.getTime() !== pub.getTime() && (
                <span>
                  Updated{" "}
                  {upd.toLocaleDateString("en-GB", {
                    day: "numeric",
                    month: "long",
                    year: "numeric",
                  })}
                </span>
              )}
            </div>
          </div>
        </section>

        {/* Content + ToC */}
        <div className="mx-auto grid max-w-6xl gap-10 px-4 py-12 xl:grid-cols-[1fr_220px]">
          {/* Article */}
          <article
            data-guide-content
            className="prose prose-lg max-w-none dark:prose-invert prose-headings:font-bold prose-headings:tracking-tight prose-h2:mt-10 prose-h2:text-2xl prose-h3:mt-8 prose-h3:text-xl prose-p:leading-relaxed prose-a:text-brand prose-a:no-underline hover:prose-a:underline prose-img:rounded-xl prose-strong:text-foreground"
          >
            <MDXRemote source={content} components={mdxComponents} />
          </article>

          {/* Sidebar ToC */}
          <TableOfContents />
        </div>
      </main>
      <Footer />
    </>
  );
}
