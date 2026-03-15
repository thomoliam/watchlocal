import Header from "@/components/layout/Header";

export default function Loading() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-6xl px-4 py-6">
        <div className="h-8 w-64 animate-pulse rounded-lg bg-muted-bg" />
        <div className="mt-2 h-4 w-32 animate-pulse rounded-lg bg-muted-bg" />
        <div className="mt-8 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
          {Array.from({ length: 6 }).map((_, i) => (
            <div
              key={i}
              className="h-20 animate-pulse rounded-xl border border-border bg-muted-bg"
            />
          ))}
        </div>
      </main>
    </>
  );
}
