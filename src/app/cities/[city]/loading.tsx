import Header from "@/components/layout/Header";

export default function Loading() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <div className="mt-6 space-y-4">
          <div className="h-10 w-72 animate-pulse rounded-lg bg-muted-bg" />
          <div className="h-5 w-56 animate-pulse rounded-lg bg-muted-bg" />
          <div className="mt-4 flex flex-wrap gap-2">
            {Array.from({ length: 6 }).map((_, i) => (
              <div
                key={i}
                className="h-8 w-24 animate-pulse rounded-full bg-muted-bg"
              />
            ))}
          </div>
          <div className="mt-8 grid gap-4 md:grid-cols-2">
            {Array.from({ length: 4 }).map((_, i) => (
              <div
                key={i}
                className="h-48 animate-pulse rounded-xl border border-border bg-muted-bg"
              />
            ))}
          </div>
        </div>
      </main>
    </>
  );
}
