import Header from "@/components/layout/Header";

export default function Loading() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <div className="mt-6 space-y-4">
          <div className="h-64 w-full animate-pulse rounded-xl bg-muted-bg" />
          <div className="h-10 w-72 animate-pulse rounded-lg bg-muted-bg" />
          <div className="h-5 w-48 animate-pulse rounded-lg bg-muted-bg" />
          <div className="mt-6 grid gap-4 sm:grid-cols-2 md:grid-cols-3">
            {Array.from({ length: 3 }).map((_, i) => (
              <div
                key={i}
                className="h-24 animate-pulse rounded-xl border border-border bg-muted-bg"
              />
            ))}
          </div>
        </div>
      </main>
    </>
  );
}
