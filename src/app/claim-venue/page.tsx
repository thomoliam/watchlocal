"use client";

import { useState, useEffect } from "react";
import { CheckCircle, Store } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

const ROLES = ["Owner", "Manager", "Staff"] as const;
type Role = (typeof ROLES)[number];

export default function ClaimVenuePage() {
  const [submitted, setSubmitted] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [role, setRole] = useState<Role>("Owner");
  const [prefillVenue, setPrefillVenue] = useState("");

  useEffect(() => {
    const params = new URLSearchParams(window.location.search);
    const venue = params.get("venue");
    if (venue) setPrefillVenue(venue);
  }, []);

  async function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setLoading(true);
    setError("");

    const form = new FormData(e.currentTarget);
    const body = {
      venue_name: form.get("venue_name"),
      claimant_name: form.get("claimant_name"),
      role,
      email: form.get("email"),
      phone: form.get("phone") || null,
      message: form.get("message") || null,
    };

    try {
      const res = await fetch("/api/claim-venue", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });

      if (res.ok) {
        setSubmitted(true);
      } else {
        const data = await res.json();
        setError(data.error || "Something went wrong. Please try again.");
      }
    } catch {
      setError("Network error. Please check your connection and try again.");
    } finally {
      setLoading(false);
    }
  }

  if (submitted) {
    return (
      <>
        <Header />
        <main className="mx-auto max-w-2xl px-4 py-20 text-center">
          <CheckCircle className="mx-auto h-16 w-16 text-green-500" />
          <h1 className="mt-6 text-3xl font-bold">Claim submitted!</h1>
          <p className="mt-3 text-muted-foreground">
            Thanks for reaching out. Our team will verify your ownership and be
            in touch within 2–3 business days to help you manage your listing.
          </p>
        </main>
        <Footer />
      </>
    );
  }

  return (
    <>
      <Header />
      <main className="mx-auto max-w-2xl px-4 py-10">
        {/* Page header */}
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-brand/10">
            <Store className="h-5 w-5 text-brand" />
          </div>
          <div>
            <h1 className="text-2xl font-bold">Claim your venue</h1>
            <p className="text-sm text-muted-foreground">
              Verify you own or manage this listing on WatchLocal
            </p>
          </div>
        </div>

        {/* Benefits */}
        <div className="mt-6 rounded-xl border border-border bg-muted p-5">
          <p className="text-sm font-medium text-foreground">
            Why claim your venue?
          </p>
          <ul className="mt-3 space-y-1.5 text-sm text-muted-foreground">
            <li className="flex items-start gap-2">
              <span className="mt-0.5 text-green-500">✓</span>
              Update your venue details, opening hours, and leagues shown
            </li>
            <li className="flex items-start gap-2">
              <span className="mt-0.5 text-green-500">✓</span>
              Add photos and a venue description to attract more fans
            </li>
            <li className="flex items-start gap-2">
              <span className="mt-0.5 text-green-500">✓</span>
              Respond to customer reviews and questions
            </li>
            <li className="flex items-start gap-2">
              <span className="mt-0.5 text-green-500">✓</span>
              Get a verified badge on your listing
            </li>
          </ul>
        </div>

        <form onSubmit={handleSubmit} className="mt-8 space-y-6">
          {/* Venue info */}
          <div className="space-y-4">
            <h2 className="text-base font-semibold">Venue details</h2>

            <div>
              <label className="mb-1 block text-sm font-medium">
                Venue name <span className="text-red-500">*</span>
              </label>
              <input
                name="venue_name"
                required
                defaultValue={prefillVenue}
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none transition-colors focus:border-brand focus:ring-2 focus:ring-brand/20"
                placeholder="e.g. The Sportsman Bar"
              />
              <p className="mt-1 text-xs text-muted-foreground">
                Enter the exact name as it appears on WatchLocal
              </p>
            </div>
          </div>

          {/* Your details */}
          <div className="space-y-4">
            <h2 className="text-base font-semibold">Your details</h2>

            <div>
              <label className="mb-1 block text-sm font-medium">
                Your name <span className="text-red-500">*</span>
              </label>
              <input
                name="claimant_name"
                required
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none transition-colors focus:border-brand focus:ring-2 focus:ring-brand/20"
                placeholder="Full name"
              />
            </div>

            {/* Role selector */}
            <div>
              <label className="mb-1 block text-sm font-medium">
                Your role <span className="text-red-500">*</span>
              </label>
              <div className="flex gap-2">
                {ROLES.map((r) => (
                  <button
                    key={r}
                    type="button"
                    onClick={() => setRole(r)}
                    className={`flex-1 rounded-lg border py-2 text-sm font-medium transition-colors ${
                      role === r
                        ? "border-brand bg-brand text-white"
                        : "border-border hover:border-brand hover:text-brand"
                    }`}
                  >
                    {r}
                  </button>
                ))}
              </div>
            </div>

            <div className="grid gap-4 sm:grid-cols-2">
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Email address <span className="text-red-500">*</span>
                </label>
                <input
                  name="email"
                  type="email"
                  required
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none transition-colors focus:border-brand focus:ring-2 focus:ring-brand/20"
                  placeholder="you@example.com"
                />
              </div>
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Phone{" "}
                  <span className="font-normal text-muted-foreground">
                    (optional)
                  </span>
                </label>
                <input
                  name="phone"
                  type="tel"
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none transition-colors focus:border-brand focus:ring-2 focus:ring-brand/20"
                  placeholder="+1 555 000 0000"
                />
              </div>
            </div>

            <div>
              <label className="mb-1 block text-sm font-medium">
                Message{" "}
                <span className="font-normal text-muted-foreground">
                  (optional)
                </span>
              </label>
              <textarea
                name="message"
                rows={3}
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none transition-colors focus:border-brand focus:ring-2 focus:ring-brand/20"
                placeholder="Any additional context — e.g. corrections to the current listing, hours, or leagues shown."
              />
            </div>
          </div>

          {error && (
            <div className="rounded-lg border border-red-200 bg-red-50 p-3 text-sm text-red-700 dark:border-red-900 dark:bg-red-950/30 dark:text-red-400">
              {error}
            </div>
          )}

          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-lg bg-brand py-3 text-sm font-medium text-white transition-opacity hover:opacity-90 disabled:cursor-not-allowed disabled:opacity-50"
          >
            {loading ? "Submitting…" : "Submit claim"}
          </button>

          <p className="text-center text-xs text-muted-foreground">
            We verify all claims before granting access. You&apos;ll hear back
            within 2–3 business days.
          </p>
        </form>
      </main>
      <Footer />
    </>
  );
}
