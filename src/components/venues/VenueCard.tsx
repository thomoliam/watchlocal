import Link from "next/link";
import Image from "next/image";
import {
  MapPin,
  Tv,
  Star,
  Utensils,
  TreePine,
  Monitor,
} from "lucide-react";
import type { Venue } from "@/lib/types";
import { ATMOSPHERE_LABELS } from "@/lib/constants";

interface VenueCardProps {
  venue: Venue;
}

export default function VenueCard({ venue }: VenueCardProps) {
  return (
    <Link href={`/venues/${venue.slug}`} className="group block">
      <div className="overflow-hidden rounded-xl border border-border bg-background transition-all hover:border-brand hover:shadow-md">
        {/* Image */}
        {venue.hero_image_url ? (
          <div className="relative h-40 w-full">
            <Image
              src={venue.hero_image_url}
              alt={`${venue.name} sports bar`}
              fill
              className="object-cover transition-transform group-hover:scale-105"
              sizes="(max-width: 768px) 100vw, 50vw"
            />
            {venue.google_rating && (
              <div className="absolute right-2 top-2 flex items-center gap-1 rounded-full bg-black/70 px-2 py-0.5 text-xs font-medium text-white backdrop-blur-sm">
                <Star className="h-3 w-3 fill-amber-400 text-amber-400" />
                {venue.google_rating}
              </div>
            )}
          </div>
        ) : (
          <div className="flex h-28 items-center justify-center bg-brand/5 dark:bg-brand/10">
            <Monitor className="h-8 w-8 text-brand/20" />
          </div>
        )}

        <div className="p-4">
          <div className="flex items-start justify-between gap-2">
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
            {!venue.hero_image_url && venue.google_rating && (
              <span className="flex shrink-0 items-center gap-1 text-sm font-medium">
                <Star className="h-3.5 w-3.5 fill-amber-400 text-amber-400" />
                {venue.google_rating}
              </span>
            )}
          </div>

          {venue.description && (
            <p className="mt-2 line-clamp-2 text-sm leading-relaxed text-muted-foreground">
              {venue.description}
            </p>
          )}

          {/* Stats row */}
          <div className="mt-3 flex flex-wrap items-center gap-x-3 gap-y-1 text-sm text-muted-foreground">
            {venue.number_of_screens && (
              <span className="flex items-center gap-1">
                <Tv className="h-3.5 w-3.5" />
                {venue.number_of_screens} screens
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
            {venue.atmosphere && (
              <span className="text-xs">
                {ATMOSPHERE_LABELS[venue.atmosphere] || venue.atmosphere}
              </span>
            )}
            {venue.price_range && (
              <span className="text-xs font-medium">{venue.price_range}</span>
            )}
          </div>

          {/* Leagues shown */}
          {venue.venue_leagues && venue.venue_leagues.length > 0 && (
            <div className="mt-3 flex flex-wrap gap-1.5">
              {venue.venue_leagues.slice(0, 5).map((vl) => (
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
              {venue.venue_leagues.length > 5 && (
                <span className="rounded-md border border-border px-2 py-0.5 text-xs text-muted-foreground">
                  +{venue.venue_leagues.length - 5}
                </span>
              )}
            </div>
          )}
        </div>
      </div>
    </Link>
  );
}
