"use client";

import { useState } from "react";
import Link from "next/link";
import { MapPin, Tv, Star, Navigation, ExternalLink } from "lucide-react";

interface NearestVenueResult {
  id: string;
  name: string;
  slug: string;
  address: string | null;
  latitude: number;
  longitude: number;
  atmosphere: string | null;
  number_of_screens: number | null;
  google_rating: number | null;
  price_range: string | null;
  distance_km: number;
  city: { name: string; slug: string } | null;
}

type State =
  | { status: "idle" }
  | { status: "locating" }
  | { status: "fetching" }
  | { status: "success"; venue: NearestVenueResult }
  | { status: "error"; message: string };

const ATMOSPHERE_LABELS: Record<string, string> = {
  lively: "Lively & loud",
  relaxed: "Relaxed & chill",
  family: "Family-friendly",
  rowdy: "Rowdy & passionate",
};

export default function NearestVenueFinder() {
  const [state, setState] = useState<State>({ status: "idle" });

  function handleFind() {
    if (!navigator.geolocation) {
      setState({
        status: "error",
        message: "Geolocation is not supported by your browser.",
      });
      return;
    }

    setState({ status: "locating" });

    navigator.geolocation.getCurrentPosition(
      async (position) => {
        const { latitude, longitude } = position.coords;
        setState({ status: "fetching" });

        try {
          const res = await fetch(
            `/api/nearest-venue?lat=${latitude}&lng=${longitude}`
          );
          const json = await res.json();

          if (!res.ok || json.error) {
            setState({
              status: "error",
              message: json.error || "Something went wrong. Please try again.",
            });
            return;
          }

          setState({ status: "success", venue: json.venue });
        } catch {
          setState({
            status: "error",
            message: "Failed to fetch nearby venues. Please try again.",
          });
        }
      },
      (err) => {
        if (err.code === err.PERMISSION_DENIED) {
          setState({
            status: "error",
            message:
              "Location access was denied. Please allow location access in your browser settings and try again.",
          });
        } else if (err.code === err.POSITION_UNAVAILABLE) {
          setState({
            status: "error",
            message: "Your location could not be determined. Please try again.",
          });
        } else if (err.code === err.TIMEOUT) {
          setState({
            status: "error",
            message: "Location request timed out. Please try again.",
          });
        } else {
          setState({
            status: "error",
            message: "Unable to retrieve your location.",
          });
        }
      },
      { timeout: 10000 }
    );
  }

  const isLoading =
    state.status === "locating" || state.status === "fetching";

  const loadingLabel =
    state.status === "locating"
      ? "Getting your location…"
      : "Finding nearest venue…";

  function getMapsUrl(venue: NearestVenueResult): string {
    const query = [venue.name, venue.address].filter(Boolean).join(" ");
    return `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(query)}`;
  }

  return (
    <div>
      <button
        onClick={handleFind}
        disabled={isLoading}
        className="bg-brand text-white rounded-xl px-6 py-3 font-medium flex items-center gap-2 mx-auto transition-opacity hover:opacity-90 disabled:opacity-60 disabled:cursor-not-allowed"
      >
        {isLoading ? (
          <>
            <span className="h-4 w-4 animate-spin rounded-full border-2 border-white border-t-transparent" />
            {loadingLabel}
          </>
        ) : (
          <>
            <MapPin className="h-4 w-4" />
            Find nearest venue to me
          </>
        )}
      </button>

      {state.status === "error" && (
        <div className="mt-4 rounded-xl border border-red-200 bg-red-50 p-4 text-sm text-red-700 dark:border-red-900/50 dark:bg-red-950/30 dark:text-red-400">
          {state.message}
        </div>
      )}

      {state.status === "success" && (
        <div className="mt-6 rounded-xl border border-border p-5">
          {/* Header row */}
          <div className="flex items-start justify-between gap-3">
            <div className="min-w-0">
              <h3 className="text-xl font-bold leading-snug">
                {state.venue.name}
              </h3>
              {state.venue.city && (
                <p className="mt-0.5 flex items-center gap-1 text-sm text-muted-foreground">
                  <MapPin className="h-3.5 w-3.5 shrink-0" />
                  {state.venue.city.name}
                </p>
              )}
            </div>
            <span className="shrink-0 rounded-full bg-brand/10 px-3 py-1 text-sm font-semibold text-brand">
              {state.venue.distance_km} km away
            </span>
          </div>

          {state.venue.address && (
            <p className="mt-2 text-sm text-muted-foreground">
              {state.venue.address}
            </p>
          )}

          {/* Badges row */}
          <div className="mt-4 flex flex-wrap gap-2">
            {state.venue.atmosphere && (
              <span className="flex items-center gap-1 rounded-lg border border-border px-2.5 py-1 text-xs text-muted-foreground">
                {ATMOSPHERE_LABELS[state.venue.atmosphere] ||
                  state.venue.atmosphere}
              </span>
            )}
            {state.venue.number_of_screens != null && (
              <span className="flex items-center gap-1 rounded-lg border border-border px-2.5 py-1 text-xs text-muted-foreground">
                <Tv className="h-3.5 w-3.5" />
                {state.venue.number_of_screens} screens
              </span>
            )}
            {state.venue.google_rating != null && (
              <span className="flex items-center gap-1 rounded-lg border border-border px-2.5 py-1 text-xs text-muted-foreground">
                <Star className="h-3.5 w-3.5 fill-amber-400 text-amber-400" />
                {state.venue.google_rating}
              </span>
            )}
            {state.venue.price_range && (
              <span className="rounded-lg border border-border px-2.5 py-1 text-xs font-medium text-muted-foreground">
                {state.venue.price_range}
              </span>
            )}
          </div>

          {/* Action buttons */}
          <div className="mt-5 flex flex-wrap gap-3">
            <a
              href={getMapsUrl(state.venue)}
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-2 rounded-xl bg-brand px-5 py-2.5 text-sm font-medium text-white transition-opacity hover:opacity-90"
            >
              <Navigation className="h-4 w-4" />
              Get directions
            </a>
            <Link
              href={`/venues/${state.venue.slug}`}
              className="flex items-center gap-2 rounded-xl border border-border px-5 py-2.5 text-sm font-medium transition-colors hover:border-brand hover:text-brand"
            >
              <ExternalLink className="h-4 w-4" />
              View venue
            </Link>
          </div>
        </div>
      )}
    </div>
  );
}
