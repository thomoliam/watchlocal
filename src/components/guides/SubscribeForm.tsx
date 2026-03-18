"use client";

export default function SubscribeForm() {
  function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    // TODO: wire up to email service
  }

  return (
    <form
      className="mt-6 flex flex-col gap-3 sm:flex-row sm:gap-2"
      onSubmit={handleSubmit}
    >
      <input
        type="email"
        placeholder="your@email.com"
        className="flex-1 rounded-lg border border-border bg-muted px-4 py-2.5 text-sm placeholder:text-muted-foreground focus:border-brand focus:outline-none focus:ring-2 focus:ring-brand/20"
        required
      />
      <button
        type="submit"
        className="rounded-lg bg-brand px-5 py-2.5 text-sm font-medium text-white transition-opacity hover:opacity-90"
      >
        Subscribe
      </button>
    </form>
  );
}
