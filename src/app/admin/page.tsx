"use client";

import { useState, useEffect, useCallback } from "react";
import {
  MapPin,
  Trophy,
  Globe,
  Star,
  Clock,
  CheckCircle,
  XCircle,
  AlertCircle,
  Loader2,
  Lock,
} from "lucide-react";

interface Stats {
  venues: number;
  cities: number;
  leagues: number;
  reviews: number;
  pendingSubmissions: number;
  pendingReviews: number;
}

interface Submission {
  id: string;
  venue_name: string;
  city: string;
  country: string;
  submitter_name: string;
  submitter_email: string;
  status: string;
  created_at: string;
  description?: string;
  leagues_shown?: string[];
}

interface PendingReview {
  id: string;
  display_name: string;
  rating: number;
  content: string;
  tips?: string;
  created_at: string;
  venue?: { name: string; slug: string };
}

export default function AdminPage() {
  const [adminKey, setAdminKey] = useState("");
  const [authenticated, setAuthenticated] = useState(false);
  const [loading, setLoading] = useState(false);
  const [stats, setStats] = useState<Stats | null>(null);
  const [submissions, setSubmissions] = useState<Submission[]>([]);
  const [reviews, setReviews] = useState<PendingReview[]>([]);
  const [actionLoading, setActionLoading] = useState<string | null>(null);

  const fetchData = useCallback(async () => {
    setLoading(true);
    try {
      const res = await fetch("/api/admin/stats", {
        headers: { "x-admin-key": adminKey },
      });
      if (!res.ok) {
        if (res.status === 401) {
          setAuthenticated(false);
          return;
        }
        throw new Error("Failed to fetch");
      }
      const data = await res.json();
      setStats(data.stats);
      setSubmissions(data.recentSubmissions);
      setReviews(data.recentReviews);
      setAuthenticated(true);
    } catch {
      // handle silently
    } finally {
      setLoading(false);
    }
  }, [adminKey]);

  useEffect(() => {
    const stored = localStorage.getItem("watchlocal_admin_key");
    if (stored) {
      setAdminKey(stored);
    }
  }, []);

  useEffect(() => {
    if (adminKey.length > 0) {
      fetchData();
    }
  }, [adminKey, fetchData]);

  function handleLogin(e: React.FormEvent) {
    e.preventDefault();
    localStorage.setItem("watchlocal_admin_key", adminKey);
    fetchData();
  }

  async function handleReviewAction(id: string, action: "approve" | "reject") {
    setActionLoading(id);
    await fetch(`/api/admin/reviews/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "x-admin-key": adminKey,
      },
      body: JSON.stringify({ action }),
    });
    setReviews((prev) => prev.filter((r) => r.id !== id));
    if (stats) {
      setStats({ ...stats, pendingReviews: stats.pendingReviews - 1 });
    }
    setActionLoading(null);
  }

  async function handleSubmissionAction(
    id: string,
    status: "approved" | "rejected"
  ) {
    setActionLoading(id);
    await fetch(`/api/admin/submissions/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "x-admin-key": adminKey,
      },
      body: JSON.stringify({ status }),
    });
    setSubmissions((prev) => prev.filter((s) => s.id !== id));
    if (stats) {
      setStats({
        ...stats,
        pendingSubmissions: stats.pendingSubmissions - 1,
      });
    }
    setActionLoading(null);
  }

  if (!authenticated) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background px-4">
        <form
          onSubmit={handleLogin}
          className="w-full max-w-sm rounded-2xl border border-border p-8"
        >
          <div className="flex items-center gap-2">
            <Lock className="h-5 w-5 text-brand" />
            <h1 className="text-xl font-bold">WatchLocal Admin</h1>
          </div>
          <p className="mt-2 text-sm text-muted-foreground">
            Enter your admin key to continue.
          </p>
          <input
            type="password"
            value={adminKey}
            onChange={(e) => setAdminKey(e.target.value)}
            placeholder="Admin key"
            className="mt-4 w-full rounded-lg border border-border bg-background px-3 py-2 text-sm focus:border-brand focus:outline-none"
          />
          <button
            type="submit"
            className="mt-3 w-full rounded-lg bg-brand px-4 py-2 text-sm font-medium text-white hover:bg-blue-700"
          >
            {loading ? (
              <Loader2 className="mx-auto h-4 w-4 animate-spin" />
            ) : (
              "Sign in"
            )}
          </button>
        </form>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <header className="border-b border-border px-6 py-4">
        <div className="mx-auto flex max-w-6xl items-center justify-between">
          <h1 className="text-xl font-bold">WatchLocal Admin</h1>
          <button
            onClick={() => {
              localStorage.removeItem("watchlocal_admin_key");
              setAuthenticated(false);
              setAdminKey("");
            }}
            className="text-sm text-muted-foreground hover:text-foreground"
          >
            Sign out
          </button>
        </div>
      </header>

      <main className="mx-auto max-w-6xl px-6 py-8">
        {/* Stats */}
        {stats && (
          <div className="grid grid-cols-2 gap-4 md:grid-cols-3 lg:grid-cols-6">
            <StatCard
              icon={<MapPin className="h-5 w-5 text-brand" />}
              label="Venues"
              value={stats.venues}
            />
            <StatCard
              icon={<Globe className="h-5 w-5 text-brand" />}
              label="Cities"
              value={stats.cities}
            />
            <StatCard
              icon={<Trophy className="h-5 w-5 text-brand" />}
              label="Leagues"
              value={stats.leagues}
            />
            <StatCard
              icon={<Star className="h-5 w-5 text-brand" />}
              label="Reviews"
              value={stats.reviews}
            />
            <StatCard
              icon={<Clock className="h-5 w-5 text-amber-500" />}
              label="Pending venues"
              value={stats.pendingSubmissions}
              highlight={stats.pendingSubmissions > 0}
            />
            <StatCard
              icon={<AlertCircle className="h-5 w-5 text-amber-500" />}
              label="Pending reviews"
              value={stats.pendingReviews}
              highlight={stats.pendingReviews > 0}
            />
          </div>
        )}

        {/* Pending Reviews */}
        <section className="mt-10">
          <h2 className="text-lg font-bold">
            Pending Reviews ({reviews.length})
          </h2>
          {reviews.length === 0 ? (
            <p className="mt-2 text-sm text-muted-foreground">
              No reviews pending approval.
            </p>
          ) : (
            <div className="mt-4 space-y-3">
              {reviews.map((review) => (
                <div
                  key={review.id}
                  className="rounded-xl border border-border p-4"
                >
                  <div className="flex items-start justify-between gap-4">
                    <div>
                      <div className="flex items-center gap-2">
                        <span className="font-medium">{review.display_name}</span>
                        <span className="flex items-center gap-0.5 text-sm">
                          <Star className="h-3.5 w-3.5 fill-amber-400 text-amber-400" />
                          {review.rating}
                        </span>
                      </div>
                      {review.venue && (
                        <p className="text-sm text-muted-foreground">
                          for {review.venue.name}
                        </p>
                      )}
                      {review.content && (
                        <p className="mt-1 text-sm">{review.content}</p>
                      )}
                      {review.tips && (
                        <p className="mt-1 text-sm italic text-muted-foreground">
                          Tip: {review.tips}
                        </p>
                      )}
                      <p className="mt-1 text-xs text-muted-foreground">
                        {new Date(review.created_at).toLocaleDateString()}
                      </p>
                    </div>
                    <div className="flex shrink-0 gap-2">
                      <button
                        onClick={() =>
                          handleReviewAction(review.id, "approve")
                        }
                        disabled={actionLoading === review.id}
                        className="rounded-lg bg-green-600 px-3 py-1.5 text-xs font-medium text-white hover:bg-green-700 disabled:opacity-50"
                      >
                        <CheckCircle className="h-3.5 w-3.5" />
                      </button>
                      <button
                        onClick={() =>
                          handleReviewAction(review.id, "reject")
                        }
                        disabled={actionLoading === review.id}
                        className="rounded-lg bg-red-600 px-3 py-1.5 text-xs font-medium text-white hover:bg-red-700 disabled:opacity-50"
                      >
                        <XCircle className="h-3.5 w-3.5" />
                      </button>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          )}
        </section>

        {/* Pending Submissions */}
        <section className="mt-10">
          <h2 className="text-lg font-bold">
            Venue Submissions ({submissions.filter((s) => s.status === "pending").length} pending)
          </h2>
          {submissions.length === 0 ? (
            <p className="mt-2 text-sm text-muted-foreground">
              No recent submissions.
            </p>
          ) : (
            <div className="mt-4 space-y-3">
              {submissions.map((sub) => (
                <div
                  key={sub.id}
                  className="rounded-xl border border-border p-4"
                >
                  <div className="flex items-start justify-between gap-4">
                    <div>
                      <h3 className="font-medium">{sub.venue_name}</h3>
                      <p className="text-sm text-muted-foreground">
                        {sub.city}, {sub.country}
                      </p>
                      {sub.description && (
                        <p className="mt-1 text-sm">{sub.description}</p>
                      )}
                      <p className="mt-1 text-xs text-muted-foreground">
                        By {sub.submitter_name} ({sub.submitter_email}) &middot;{" "}
                        {new Date(sub.created_at).toLocaleDateString()}
                      </p>
                      {sub.leagues_shown && sub.leagues_shown.length > 0 && (
                        <div className="mt-1 flex flex-wrap gap-1">
                          {sub.leagues_shown.map((l) => (
                            <span
                              key={l}
                              className="rounded border border-border px-1.5 py-0.5 text-xs"
                            >
                              {l}
                            </span>
                          ))}
                        </div>
                      )}
                    </div>
                    {sub.status === "pending" && (
                      <div className="flex shrink-0 gap-2">
                        <button
                          onClick={() =>
                            handleSubmissionAction(sub.id, "approved")
                          }
                          disabled={actionLoading === sub.id}
                          className="rounded-lg bg-green-600 px-3 py-1.5 text-xs font-medium text-white hover:bg-green-700 disabled:opacity-50"
                        >
                          <CheckCircle className="h-3.5 w-3.5" />
                        </button>
                        <button
                          onClick={() =>
                            handleSubmissionAction(sub.id, "rejected")
                          }
                          disabled={actionLoading === sub.id}
                          className="rounded-lg bg-red-600 px-3 py-1.5 text-xs font-medium text-white hover:bg-red-700 disabled:opacity-50"
                        >
                          <XCircle className="h-3.5 w-3.5" />
                        </button>
                      </div>
                    )}
                    {sub.status !== "pending" && (
                      <span
                        className={`rounded-full px-2 py-0.5 text-xs font-medium ${
                          sub.status === "approved"
                            ? "bg-green-100 text-green-700 dark:bg-green-950 dark:text-green-400"
                            : "bg-red-100 text-red-700 dark:bg-red-950 dark:text-red-400"
                        }`}
                      >
                        {sub.status}
                      </span>
                    )}
                  </div>
                </div>
              ))}
            </div>
          )}
        </section>
      </main>
    </div>
  );
}

function StatCard({
  icon,
  label,
  value,
  highlight,
}: {
  icon: React.ReactNode;
  label: string;
  value: number;
  highlight?: boolean;
}) {
  return (
    <div
      className={`rounded-xl border p-4 ${
        highlight
          ? "border-amber-300 bg-amber-50 dark:border-amber-800 dark:bg-amber-950/30"
          : "border-border"
      }`}
    >
      {icon}
      <div className="mt-2 text-2xl font-bold">{value.toLocaleString()}</div>
      <div className="text-sm text-muted-foreground">{label}</div>
    </div>
  );
}
