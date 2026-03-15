import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

export const metadata: Metadata = {
  title: "Terms of Service",
  description: "WatchLocal terms of service — rules for using our platform.",
};

export default function TermsPage() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-3xl px-4 py-12">
        <h1 className="text-3xl font-bold">Terms of Service</h1>
        <p className="mt-2 text-sm text-muted-foreground">
          Last updated: March 2026
        </p>

        <div className="mt-8 space-y-8 text-muted-foreground leading-relaxed">
          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Using WatchLocal
            </h2>
            <p className="mt-2">
              WatchLocal is a free platform for discovering sports bars and
              venues worldwide. By using our site you agree to these terms.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              User-submitted content
            </h2>
            <p className="mt-2">
              When you submit a venue or review, you grant WatchLocal a
              non-exclusive, worldwide licence to display that content on our
              platform. You confirm that:
            </p>
            <ul className="mt-2 list-disc space-y-1 pl-5">
              <li>The information you submit is accurate to the best of your knowledge.</li>
              <li>You have the right to share the content you provide.</li>
              <li>Your submissions do not violate the rights of any third party.</li>
            </ul>
            <p className="mt-2">
              We reserve the right to moderate, edit, or remove any
              user-submitted content at our discretion.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Accuracy of information
            </h2>
            <p className="mt-2">
              We verify venue listings to the best of our ability, but venue
              details (opening hours, screen counts, leagues shown) may change
              without notice. WatchLocal is not responsible for inaccurate or
              outdated venue information. Always confirm with the venue
              directly for important visits.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Venue owners
            </h2>
            <p className="mt-2">
              If you own or manage a venue listed on WatchLocal, you can claim
              your listing by contacting us. We offer free listings for all
              venues. Premium features may be available in the future.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Prohibited use
            </h2>
            <ul className="mt-2 list-disc space-y-1 pl-5">
              <li>Submitting false or misleading venue information.</li>
              <li>Automated scraping of our data without permission.</li>
              <li>Using WatchLocal to harass, defame, or spam venues or users.</li>
              <li>Attempting to access admin or backend systems without authorisation.</li>
            </ul>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Limitation of liability
            </h2>
            <p className="mt-2">
              WatchLocal is provided &ldquo;as is&rdquo; without warranty. We
              are not liable for any losses arising from your use of the
              platform, including but not limited to: travel expenses, missed
              events, or inaccurate venue information.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">
              Changes to these terms
            </h2>
            <p className="mt-2">
              We may update these terms from time to time. Continued use of
              WatchLocal after changes constitutes acceptance of the updated
              terms.
            </p>
          </section>

          <section>
            <h2 className="text-lg font-semibold text-foreground">Contact</h2>
            <p className="mt-2">
              Questions? Email{" "}
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
