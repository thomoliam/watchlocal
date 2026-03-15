"use client";

import { useState } from "react";
import { Star, CheckCircle, Loader2 } from "lucide-react";

interface Props {
  venueId: string;
  venueName: string;
}

export default function ReviewForm({ venueId, venueName }: Props) {
  const [open, setOpen] = useState(false);
  const [rating, setRating] = useState(0);
  const [hoverRating, setHoverRating] = useState(0);
  const [displayName, setDisplayName] = useState("");
  const [content, setContent] = useState("");
  const [sportWatched, setSportWatched] = useState("");
  const [tips, setTips] = useState("");
  const [loading, setLoading] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState("");

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (rating === 0) {
      setError("Please select a rating");
      return;
    }
    if (!displayName.trim()) {
      setError("Please enter your name");
      return;
    }
    setError("");
    setLoading(true);

    try {
      const res = await fetch("/api/reviews", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          venue_id: venueId,
          display_name: displayName,
          rating,
          content,
          sport_watched: sportWatched,
          tips,
        }),
      });

      if (!res.ok) {
        const data = await res.json();
        throw new Error(data.error || "Failed to submit review");
      }

      setSubmitted(true);
    } catch (err: any) {
      setError(err.message || "Something went wrong");
    } finally {
      setLoading(false);
    }
  }

  if (submitted) {
    return (
      <div className="mt-6 rounded-xl border border-green-200 bg-green-50 p-6 text-center dark:border-green-900 dark:bg-green-950/30">
        <CheckCircle className="mx-auto h-8 w-8 text-green-600" />
        <h3 className="mt-2 font-semibold">Thanks for your review!</h3>
        <p className="mt-1 text-sm text-muted-foreground">
          Your review will appear once it&apos;s been approved.
        </p>
      </div>
    );
  }

  if (!open) {
    return (
      <button
        onClick={() => setOpen(true)}
        className="mt-4 w-full rounded-lg border border-border px-4 py-3 text-sm font-medium transition-colors hover:border-brand hover:bg-brand/5"
      >
        Write a review for {venueName}
      </button>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="mt-4 rounded-xl border border-border p-4">
      <h3 className="font-semibold">Write a review</h3>

      {/* Star rating */}
      <div className="mt-3">
        <label className="text-sm text-muted-foreground">Rating *</label>
        <div className="mt-1 flex gap-1">
          {[1, 2, 3, 4, 5].map((i) => (
            <button
              key={i}
              type="button"
              onClick={() => setRating(i)}
              onMouseEnter={() => setHoverRating(i)}
              onMouseLeave={() => setHoverRating(0)}
              className="p-0.5"
            >
              <Star
                className={`h-7 w-7 transition-colors ${
                  i <= (hoverRating || rating)
                    ? "fill-amber-400 text-amber-400"
                    : "fill-none text-gray-300 dark:text-gray-600"
                }`}
              />
            </button>
          ))}
        </div>
      </div>

      {/* Name */}
      <div className="mt-3">
        <label htmlFor="review-name" className="text-sm text-muted-foreground">
          Your name *
        </label>
        <input
          id="review-name"
          type="text"
          value={displayName}
          onChange={(e) => setDisplayName(e.target.value)}
          placeholder="e.g. Dave from London"
          className="mt-1 w-full rounded-lg border border-border bg-background px-3 py-2 text-sm focus:border-brand focus:outline-none"
          maxLength={50}
        />
      </div>

      {/* Review content */}
      <div className="mt-3">
        <label htmlFor="review-content" className="text-sm text-muted-foreground">
          Your review
        </label>
        <textarea
          id="review-content"
          value={content}
          onChange={(e) => setContent(e.target.value)}
          placeholder="How was the atmosphere? Could you see the screens? Was the sound good?"
          rows={3}
          className="mt-1 w-full rounded-lg border border-border bg-background px-3 py-2 text-sm focus:border-brand focus:outline-none"
          maxLength={500}
        />
      </div>

      {/* Sport watched */}
      <div className="mt-3">
        <label htmlFor="review-sport" className="text-sm text-muted-foreground">
          What did you watch?
        </label>
        <input
          id="review-sport"
          type="text"
          value={sportWatched}
          onChange={(e) => setSportWatched(e.target.value)}
          placeholder="e.g. Premier League, UFC 300"
          className="mt-1 w-full rounded-lg border border-border bg-background px-3 py-2 text-sm focus:border-brand focus:outline-none"
          maxLength={100}
        />
      </div>

      {/* Tips */}
      <div className="mt-3">
        <label htmlFor="review-tips" className="text-sm text-muted-foreground">
          Tips for other fans
        </label>
        <input
          id="review-tips"
          type="text"
          value={tips}
          onChange={(e) => setTips(e.target.value)}
          placeholder="e.g. Book a table for big matches, happy hour 5-7pm"
          className="mt-1 w-full rounded-lg border border-border bg-background px-3 py-2 text-sm focus:border-brand focus:outline-none"
          maxLength={200}
        />
      </div>

      {error && (
        <p className="mt-3 text-sm text-red-600 dark:text-red-400">{error}</p>
      )}

      <div className="mt-4 flex gap-2">
        <button
          type="submit"
          disabled={loading}
          className="flex items-center gap-2 rounded-lg bg-brand px-5 py-2 text-sm font-medium text-white transition-colors hover:bg-blue-700 disabled:opacity-50"
        >
          {loading && <Loader2 className="h-4 w-4 animate-spin" />}
          Submit review
        </button>
        <button
          type="button"
          onClick={() => setOpen(false)}
          className="rounded-lg border border-border px-4 py-2 text-sm transition-colors hover:border-brand"
        >
          Cancel
        </button>
      </div>
    </form>
  );
}
