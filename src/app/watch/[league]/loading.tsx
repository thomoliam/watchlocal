import Header from "@/components/layout/Header";

export default function Loading() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <div className="mt-6 space-y-4">
          <div className="h-10 w-64 animate-pulse rounded-lg bg-muted-bg" />
          <div className="h-5 w-96 animate-pulse rounded-lg bg-muted-bg" />
          <div className="mt-8 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
            {Array.from({ length: 8 }).map((_, i) => (
              <div
                key={i}
                className="h-20 animate-pulse rounded-xl border border-border bg-muted-bg"
              />
            ))}
          </div>
        </div>
      </main>
    </>
  );
}
