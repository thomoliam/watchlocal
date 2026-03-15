import Link from "next/link";
import {
  MapPin,
  Tv,
  Star,
  CheckCircle,
  Utensils,
  TreePine,
} from "lucide-react";
import type { Venue } from "@/lib/types";

interface VenueCardProps {
  venue: Venue;
}

export default function VenueCard({ venue }: VenueCardProps) {
  const avgRating =
    venue.reviews && venue.reviews.length > 0
      ? (
          venue.reviews.reduce((sum, r) => sum + r.rating, 0) /
          venue.reviews.length
        ).toFixed(1)
      : null;

  return (
    <Link href={`/venues/${venue.slug}`} className="group block">
      <div className="rounded-xl border border-border bg-background p-5 transition-all hover:border-brand hover:shadow-md">
        <div className="flex items-start justify-between gap-3">
          <div className="min-w-0">
            <h3 className="truncate font-semibold group-hover:text-brand">
              {venue.name}
            </h3>
            {venue.address && (
              <p className="mt-0.5 flex items-center gap-1 truncate text-sm text-muted-foreground">
                <MapPin className="h-3.5 w-3.5 shrink-0" />
                {venue.address}
              </p>
            )}
          </div>
          {venue.is_verified && (
            <span className="flex shrink-0 items-center gap-1 rounded-full bg-brand px-2 py-0.5 text-xs font-medium text-white">
              <CheckCircle className="h-3 w-3" />
              Verified
            </span>
          )}
        </div>

        {venue.description && (
          <p className="mt-3 line-clamp-2 text-sm leading-relaxed text-muted-foreground">
            {venue.description}
          </p>
        )}

        {/* Stats row */}
        <div className="mt-4 flex flex-wrap items-center gap-3 text-sm text-muted-foreground">
          {venue.number_of_screens && (
            <span className="flex items-center gap-1">
              <Tv className="h-3.5 w-3.5" />
              {venue.number_of_screens} screens
            </span>
          )}
          {venue.has_projector && (
            <span className="flex items-center gap-1">
              <Tv className="h-3.5 w-3.5" />
              Projector
            </span>
          )}
          {venue.has_food && (
            <span className="flex items-center gap-1">
              <Utensils className="h-3.5 w-3.5" />
              Food
            </span>
          )}
          {venue.has_outdoor_area && (
            <span className="flex items-center gap-1">
              <TreePine className="h-3.5 w-3.5" />
              Outdoor
            </span>
          )}
          {avgRating && (
            <span className="flex items-center gap-1">
              <Star className="h-3.5 w-3.5 fill-amber-400 text-amber-400" />
              {avgRating}
              <span className="text-xs">({venue.reviews!.length})</span>
            </span>
          )}
        </div>

        {/* Leagues shown */}
        {venue.venue_leagues && venue.venue_leagues.length > 0 && (
          <div className="mt-3 flex flex-wrap gap-1.5">
            {venue.venue_leagues.map((vl) => (
              <span
                key={vl.id}
                className={`rounded-md border px-2 py-0.5 text-xs ${
                  vl.is_primary
                    ? "border-brand/30 bg-brand/5 text-brand"
                    : "border-border text-muted-foreground"
                }`}
              >
                {vl.league?.short_name || vl.league?.name}
              </span>
            ))}
          </div>
        )}

        {venue.price_range && (
          <div className="mt-3 text-xs text-muted-foreground">
            {venue.price_range} · {venue.atmosphere}
          </div>
        )}
      </div>
    </Link>
  );
}
