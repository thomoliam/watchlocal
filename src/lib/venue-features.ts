/**
 * Venue feature filter definitions.
 * Used by /cities/[city]/[feature-slug] pages.
 * Each feature maps to a Supabase column filter.
 */

export interface VenueFeature {
  name: string;
  slug: string;
  headline: string; // H1 template — use {city} as placeholder
  description: string; // Meta description template — use {city} as placeholder
  icon: string;
  // Supabase filter: column + value
  column: string;
  value: boolean | string | number;
  operator: "eq" | "gte" | "not.is";
}

export const VENUE_FEATURES: Record<string, VenueFeature> = {
  "outdoor-seating": {
    name: "Outdoor Seating",
    slug: "outdoor-seating",
    headline: "Sports Bars with Outdoor Seating in {city}",
    description:
      "Find sports bars with outdoor seating, beer gardens, and terraces in {city}. Watch live sport al fresco.",
    icon: "🌿",
    column: "has_outdoor_area",
    value: true,
    operator: "eq",
  },
  "food-served": {
    name: "Food Served",
    slug: "food-served",
    headline: "Sports Bars with Food in {city}",
    description:
      "Find sports bars and venues that serve food in {city}. Great for a full match-day experience.",
    icon: "🍔",
    column: "has_food",
    value: true,
    operator: "eq",
  },
  "big-screens": {
    name: "Big Screens",
    slug: "big-screens",
    headline: "Sports Bars with Big Screens in {city}",
    description:
      "Find venues with projectors and multiple large screens in {city} — the best spots for watching live sport.",
    icon: "📺",
    column: "has_projector",
    value: true,
    operator: "eq",
  },
  "budget-friendly": {
    name: "Budget Friendly",
    slug: "budget-friendly",
    headline: "Budget-Friendly Sports Bars in {city}",
    description:
      "Find affordable sports bars in {city} with cheap drinks and no cover charge for watching live sport.",
    icon: "💰",
    column: "price_range",
    value: "$",
    operator: "eq",
  },
};

/** All feature slugs — used for route matching and sitemap generation */
export const FEATURE_SLUGS = Object.keys(VENUE_FEATURES);

/** Get a feature definition by slug */
export function getVenueFeature(slug: string): VenueFeature | null {
  return VENUE_FEATURES[slug] ?? null;
}
