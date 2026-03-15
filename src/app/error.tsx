"use client";

import Link from "next/link";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

export default function Error({
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <>
      <Header />
      <main className="mx-auto flex min-h-[60vh] max-w-6xl flex-col items-center justify-center px-4 py-12 text-center">
        <h1 className="text-4xl font-bold">Something went wrong</h1>
        <p className="mt-2 max-w-md text-muted-foreground">
          We hit an unexpected error. This has been logged and we&apos;re
          looking into it.
        </p>
        <div className="mt-8 flex gap-3">
          <button
            onClick={reset}
            className="rounded-lg bg-brand px-6 py-2.5 text-sm font-medium text-white transition-colors hover:bg-blue-700"
          >
            Try again
          </button>
          <Link
            href="/"
            className="rounded-lg border border-border px-6 py-2.5 text-sm font-medium transition-colors hover:border-brand"
          >
            Go home
          </Link>
        </div>
      </main>
      <Footer />
    </>
  );
}
