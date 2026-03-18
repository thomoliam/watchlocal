import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

export const metadata: Metadata = {
  title: "Privacy Policy | WatchLocal",
  description: "WatchLocal privacy policy — how we collect, use, and protect your data.",
  robots: { index: false, follow: false },
};

export default function PrivacyPage() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-3xl px-4 py-12">
        <h1 className="text-3xl font-bold">Privacy Policy</h1>
        <p className="mt-2 text-sm text-muted-foreground">
          Last updated: March 2026
        </p>

        <div className="mt-8 space-y-8 text-muted-foreground leading-relaxed">
          <section>
            <h2 className="text-lg font-semibold text-foreground">
              What data we collect
            </h2>
            <p className="mt-2">
              WatchLocal collects minimal data to provide and improve our service:
            </p>
            <ul className="mt-2 list-disc space-y-1 pl-5">
              <li>
                <strong>Venue submissions:</strong> Name, email, and venue details you provide when submitting a venue.
              </li>
              <li>
                <strong>Reviews:</strong> Display name, rating, and review content you submit.
              </li>
              <li>
                <strong>Analytics:</strong> Anonymous usage data (pages visited, search queries) via Vercel Analytics to understand how people use WatchLocal.
              </li>
              <li>
                <strong>Performance:</strong> Core Web Vitals metrics via Vercel Speed Insights to keep the site fast.
              </li>
            </ul>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              How we use your data
            </h2>
            <ul className="mt-2 list-disc space-y-1 pl-5">
              <li>To display venue listings and reviews on the platform.</li>
              <li>To contact you about venue submissions (if you provided an email).</li>
              <li>To improve search relevance and content quality.</li>
              <li>To monitor site performance and fix issues.</li>
            </ul>
            <p className="mt-2">
              We do not sell your data to third parties. We do not run
              advertising. We do not use your data for purposes other than
              operating WatchLocal.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Third-party services
            </h2>
            <ul className="mt-2 list-disc space-y-1 pl-5">
              <li>
                <strong>Supabase:</strong> Database hosting (EU/US data centres).
              </li>
              <li>
                <strong>Vercel:</strong> Website hosting and analytics.
              </li>
              <li>
                <strong>Google Places API:</strong> Venue data enrichment (ratings, images, hours).
              </li>
            </ul>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">Cookies</h2>
            <p className="mt-2">
              WatchLocal uses only essential cookies for theme preference
              (dark/light mode). We do not use tracking cookies or advertising
              cookies.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Your rights
            </h2>
            <p className="mt-2">
              You can request deletion of any data you&apos;ve submitted
              (venue submissions, reviews) by emailing{" "}
              <a
                href="mailto:hello@watchlocal.co"
                className="text-brand hover:underline"
              >
                hello@watchlocal.co
              </a>
              .
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">Contact</h2>
            <p className="mt-2">
              Questions about this policy? Email{" "}
              <a
                href="mailto:hello@watchlocal.co"
                className="text-brand hover:underline"
              >
                hello@watchlocal.co
              </a>
              .
            </p>
          </section>
        </div>
      </main>
      <Footer />
    </>
  );
}
