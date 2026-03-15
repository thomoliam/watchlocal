"use client";

import { useState } from "react";
import Link from "next/link";
import type { VenueLeague } from "@/lib/types";

const MAX_VISIBLE = 5;

interface LeagueListProps {
  confirmedLeagues: VenueLeague[];
  otherLeagues: VenueLeague[];
}

export default function LeagueList({
  confirmedLeagues,
  otherLeagues,
}: LeagueListProps) {
  const [showAll, setShowAll] = useState(false);

  const visibleConfirmed = showAll
    ? confirmedLeagues
    : confirmedLeagues.slice(0, MAX_VISIBLE);
  const hiddenCount =
    confirmedLeagues.length - MAX_VISIBLE + otherLeagues.length;

  return (
    <section className="mt-8">
      <h2 className="text-lg font-bold">What&apos;s on</h2>
      <div className="mt-3 space-y-2">
        {visibleConfirmed.map((vl) => (
          <div
            key={vl.id}
            className="flex items-center justify-between rounded-lg border border-border p-3"
          >
            <div>
              <Link
                href={`/watch/${vl.league?.slug}`}
                className="font-medium hover:text-brand"
              >
                {vl.league?.name}
              </Link>
              {vl.notes && (
                <p className="mt-0.5 text-sm text-muted-foreground">
                  {vl.notes}
                </p>
              )}
            </div>
            {vl.is_primary && (
              <span className="rounded-full bg-brand/10 px-2 py-0.5 text-xs font-medium text-brand">
                Primary
              </span>
            )}
          </div>
        ))}
      </div>

      {showAll && otherLeagues.length > 0 && (
        <div className="mt-4">
          <p className="text-sm font-medium text-muted-foreground">
            Also reported to show
          </p>
          <div className="mt-2 flex flex-wrap gap-2">
            {otherLeagues.map((vl) => (
              <Link
                key={vl.id}
                href={`/watch/${vl.league?.slug}`}
                className="rounded-md border border-border px-2.5 py-1 text-sm text-muted-foreground transition-colors hover:border-brand hover:text-brand"
              >
                {vl.league?.short_name || vl.league?.name}
              </Link>
            ))}
          </div>
        </div>
      )}

      {!showAll && hiddenCount > 0 && (
        <button
          onClick={() => setShowAll(true)}
          className="mt-3 text-sm font-medium text-brand hover:underline"
        >
          Show all leagues (+{hiddenCount} more)
        </button>
      )}

      {showAll && hiddenCount > 0 && (
        <button
          onClick={() => setShowAll(false)}
          className="mt-3 text-sm font-medium text-brand hover:underline"
        >
          Show fewer
        </button>
      )}
    </section>
  );
}
