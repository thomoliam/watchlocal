"use client";

import { useState } from "react";
import { CheckCircle } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import { LEAGUES } from "@/lib/search-index";

const LEAGUE_OPTIONS = LEAGUES.map((l) => ({
  label: l.label,
  slug: l.leagueSlug!,
}));

export default function SubmitVenuePage() {
  const [submitted, setSubmitted] = useState(false);
  const [loading, setLoading] = useState(false);
  const [selectedLeagues, setSelectedLeagues] = useState<string[]>([]);

  function toggleLeague(slug: string) {
    setSelectedLeagues((prev) =>
      prev.includes(slug) ? prev.filter((s) => s !== slug) : [...prev, slug]
    );
  }

  async function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setLoading(true);

    const form = new FormData(e.currentTarget);
    const body = {
      venue_name: form.get("venue_name"),
      city: form.get("city"),
      country: form.get("country"),
      address: form.get("address"),
      google_maps_link: form.get("google_maps_link"),
      leagues_shown: selectedLeagues,
      description: form.get("description"),
      website: form.get("website"),
      instagram: form.get("instagram"),
      is_owner: form.get("is_owner") === "on",
      submitter_name: form.get("submitter_name"),
      submitter_email: form.get("submitter_email"),
    };

    try {
      const res = await fetch("/api/submit-venue", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });
      if (res.ok) {
        setSubmitted(true);
      }
    } catch {
      // Handle error
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
          <h1 className="mt-6 text-3xl font-bold">Venue submitted!</h1>
          <p className="mt-3 text-muted-foreground">
            Thanks for helping fellow fans. We'll review your submission and add
            it to WatchLocal shortly.
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
        <h1 className="text-3xl font-bold">Submit a venue</h1>
        <p className="mt-2 text-muted-foreground">
          Know a great sports bar? Help expats and travellers find the best
          spots. Takes under 2 minutes.
        </p>

        <form onSubmit={handleSubmit} className="mt-8 space-y-6">
          {/* Venue details */}
          <div className="space-y-4">
            <h2 className="text-lg font-semibold">Venue details</h2>

            <div>
              <label className="mb-1 block text-sm font-medium">
                Venue name *
              </label>
              <input
                name="venue_name"
                required
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                placeholder="e.g. The Sportsman Bar"
              />
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="mb-1 block text-sm font-medium">
                  City *
                </label>
                <input
                  name="city"
                  required
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                  placeholder="e.g. Bangkok"
                />
              </div>
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Country *
                </label>
                <input
                  name="country"
                  required
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                  placeholder="e.g. Thailand"
                />
              </div>
            </div>

            <div>
              <label className="mb-1 block text-sm font-medium">Address</label>
              <input
                name="address"
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                placeholder="Street address"
              />
            </div>

            <div>
              <label className="mb-1 block text-sm font-medium">
                Google Maps link
              </label>
              <input
                name="google_maps_link"
                type="url"
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                placeholder="https://maps.google.com/..."
              />
            </div>
          </div>

          {/* Leagues */}
          <div className="space-y-3">
            <h2 className="text-lg font-semibold">Leagues shown</h2>
            <p className="text-sm text-muted-foreground">
              Select all leagues this venue regularly shows.
            </p>
            <div className="flex flex-wrap gap-2">
              {LEAGUE_OPTIONS.map((league) => (
                <button
                  key={league.slug}
                  type="button"
                  onClick={() => toggleLeague(league.slug)}
                  className={`rounded-full border px-3 py-1.5 text-sm transition-colors ${
                    selectedLeagues.includes(league.slug)
                      ? "border-brand bg-brand text-white"
                      : "border-border hover:border-brand"
                  }`}
                >
                  {league.label}
                </button>
              ))}
            </div>
          </div>

          {/* Extra info */}
          <div className="space-y-4">
            <div>
              <label className="mb-1 block text-sm font-medium">
                Description
              </label>
              <textarea
                name="description"
                rows={3}
                className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                placeholder="What makes this venue great for watching sport?"
              />
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Website
                </label>
                <input
                  name="website"
                  type="url"
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                  placeholder="https://..."
                />
              </div>
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Instagram
                </label>
                <input
                  name="instagram"
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                  placeholder="@handle"
                />
              </div>
            </div>
          </div>

          {/* Submitter info */}
          <div className="space-y-4">
            <h2 className="text-lg font-semibold">Your details</h2>

            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Your name *
                </label>
                <input
                  name="submitter_name"
                  required
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                />
              </div>
              <div>
                <label className="mb-1 block text-sm font-medium">
                  Email *
                </label>
                <input
                  name="submitter_email"
                  type="email"
                  required
                  className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm outline-none focus:border-brand"
                />
              </div>
            </div>

            <label className="flex items-center gap-2 text-sm">
              <input
                name="is_owner"
                type="checkbox"
                className="rounded border-border"
              />
              I am the owner/manager of this venue
            </label>
          </div>

          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-lg bg-brand py-3 text-sm font-medium text-white transition-opacity hover:opacity-90 disabled:opacity-50"
          >
            {loading ? "Submitting..." : "Submit Venue"}
          </button>
        </form>
      </main>
      <Footer />
    </>
  );
}
