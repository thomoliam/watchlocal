import Link from "next/link";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

export default function NotFound() {
  return (
    <>
      <Header />
      <main className="mx-auto flex min-h-[60vh] max-w-6xl flex-col items-center justify-center px-4 py-12 text-center">
        <h1 className="text-6xl font-bold text-brand">404</h1>
        <h2 className="mt-4 text-2xl font-bold">Page not found</h2>
        <p className="mt-2 max-w-md text-muted-foreground">
          The page you&apos;re looking for doesn&apos;t exist or may have been
          moved. Try searching for a league, city, or venue instead.
        </p>
        <div className="mt-8 flex gap-3">
          <Link
            href="/"
            className="rounded-lg bg-brand px-6 py-2.5 text-sm font-medium text-white transition-colors hover:bg-blue-700"
          >
            Go home
          </Link>
          <Link
            href="/submit-venue"
            className="rounded-lg border border-border px-6 py-2.5 text-sm font-medium transition-colors hover:border-brand"
          >
            Submit a venue
          </Link>
        </div>
      </main>
      <Footer />
    </>
  );
}
