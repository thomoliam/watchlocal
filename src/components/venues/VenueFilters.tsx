"use client";

import { useState, useMemo } from "react";
import { SlidersHorizontal, X } from "lucide-react";
import type { Venue } from "@/lib/types";
import VenueCard from "./VenueCard";

interface Props {
  venues: Venue[];
}

type SortOption = "default" | "rating" | "screens" | "name";

export default function VenueFilters({ venues }: Props) {
  const [showFilters, setShowFilters] = useState(false);
  const [sort, setSort] = useState<SortOption>("default");
  const [hasFood, setHasFood] = useState(false);
  const [hasProjector, setHasProjector] = useState(false);
  const [hasOutdoor, setHasOutdoor] = useState(false);
  const [minScreens, setMinScreens] = useState(0);
  const [priceRange, setPriceRange] = useState<string>("");

  const activeFilterCount = [
    hasFood,
    hasProjector,
    hasOutdoor,
    minScreens > 0,
    priceRange !== "",
  ].filter(Boolean).length;

  const filtered = useMemo(() => {
    let result = [...venues];

    if (hasFood) result = result.filter((v) => v.has_food);
    if (hasProjector) result = result.filter((v) => v.has_projector);
    if (hasOutdoor) result = result.filter((v) => v.has_outdoor_area);
    if (minScreens > 0)
      result = result.filter(
        (v) => v.number_of_screens && v.number_of_screens >= minScreens
      );
    if (priceRange)
      result = result.filter((v) => v.price_range === priceRange);

    switch (sort) {
      case "rating":
        result.sort(
          (a, b) => (b.google_rating || 0) - (a.google_rating || 0)
        );
        break;
      case "screens":
        result.sort(
          (a, b) =>
            (b.number_of_screens || 0) - (a.number_of_screens || 0)
        );
        break;
      case "name":
        result.sort((a, b) => a.name.localeCompare(b.name));
        break;
    }

    return result;
  }, [venues, sort, hasFood, hasProjector, hasOutdoor, minScreens, priceRange]);

  function clearFilters() {
    setHasFood(false);
    setHasProjector(false);
    setHasOutdoor(false);
    setMinScreens(0);
    setPriceRange("");
    setSort("default");
  }

  return (
    <div>
      {/* Filter bar */}
      <div className="flex flex-wrap items-center gap-2">
        <button
          onClick={() => setShowFilters(!showFilters)}
          className={`flex items-center gap-2 rounded-lg border px-3 py-2 text-sm transition-colors ${
            activeFilterCount > 0
              ? "border-brand bg-brand/5 text-brand"
              : "border-border hover:border-brand"
          }`}
        >
          <SlidersHorizontal className="h-4 w-4" />
          Filters
          {activeFilterCount > 0 && (
            <span className="flex h-5 w-5 items-center justify-center rounded-full bg-brand text-xs text-white">
              {activeFilterCount}
            </span>
          )}
        </button>

        <select
          value={sort}
          onChange={(e) => setSort(e.target.value as SortOption)}
          className="rounded-lg border border-border bg-background px-3 py-2 text-sm focus:border-brand focus:outline-none"
        >
          <option value="default">Sort: Recommended</option>
          <option value="rating">Sort: Highest rated</option>
          <option value="screens">Sort: Most screens</option>
          <option value="name">Sort: A-Z</option>
        </select>

        {activeFilterCount > 0 && (
          <button
            onClick={clearFilters}
            className="flex items-center gap-1 rounded-lg px-2 py-2 text-sm text-muted-foreground hover:text-foreground"
          >
            <X className="h-3.5 w-3.5" />
            Clear all
          </button>
        )}

        <span className="ml-auto text-sm text-muted-foreground">
          {filtered.length} venue{filtered.length !== 1 ? "s" : ""}
        </span>
      </div>

      {/* Filter panel */}
      {showFilters && (
        <div className="mt-3 rounded-xl border border-border p-4">
          <div className="grid gap-4 sm:grid-cols-2 md:grid-cols-3">
            {/* Amenities */}
            <div>
              <h4 className="text-sm font-medium">Amenities</h4>
              <div className="mt-2 space-y-2">
                <label className="flex items-center gap-2 text-sm">
                  <input
                    type="checkbox"
                    checked={hasFood}
                    onChange={(e) => setHasFood(e.target.checked)}
                    className="rounded border-border"
                  />
                  Food available
                </label>
                <label className="flex items-center gap-2 text-sm">
                  <input
                    type="checkbox"
                    checked={hasProjector}
                    onChange={(e) => setHasProjector(e.target.checked)}
                    className="rounded border-border"
                  />
                  Projector screen
                </label>
                <label className="flex items-center gap-2 text-sm">
                  <input
                    type="checkbox"
                    checked={hasOutdoor}
                    onChange={(e) => setHasOutdoor(e.target.checked)}
                    className="rounded border-border"
                  />
                  Outdoor area
                </label>
              </div>
            </div>

            {/* Screens */}
            <div>
              <h4 className="text-sm font-medium">Minimum screens</h4>
              <div className="mt-2 flex gap-2">
                {[0, 5, 10, 20].map((n) => (
                  <button
                    key={n}
                    onClick={() => setMinScreens(n)}
                    className={`rounded-lg border px-3 py-1.5 text-sm transition-colors ${
                      minScreens === n
                        ? "border-brand bg-brand text-white"
                        : "border-border hover:border-brand"
                    }`}
                  >
                    {n === 0 ? "Any" : `${n}+`}
                  </button>
                ))}
              </div>
            </div>

            {/* Price */}
            <div>
              <h4 className="text-sm font-medium">Price range</h4>
              <div className="mt-2 flex gap-2">
                {["", "$", "$$", "$$$"].map((p) => (
                  <button
                    key={p}
                    onClick={() => setPriceRange(p)}
                    className={`rounded-lg border px-3 py-1.5 text-sm transition-colors ${
                      priceRange === p
                        ? "border-brand bg-brand text-white"
                        : "border-border hover:border-brand"
                    }`}
                  >
                    {p === "" ? "Any" : p}
                  </button>
                ))}
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Results */}
      {filtered.length > 0 ? (
        <div className="mt-4 grid gap-4 md:grid-cols-2">
          {filtered.map((venue) => (
            <VenueCard key={venue.id} venue={venue} />
          ))}
        </div>
      ) : (
        <div className="mt-8 rounded-xl border border-border p-8 text-center">
          <p className="text-muted-foreground">
            No venues match your filters. Try adjusting your criteria.
          </p>
          <button
            onClick={clearFilters}
            className="mt-3 text-sm font-medium text-brand hover:underline"
          >
            Clear all filters
          </button>
        </div>
      )}
    </div>
  );
}
