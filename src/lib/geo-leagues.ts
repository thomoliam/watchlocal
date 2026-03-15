// Maps user country (ISO country code) to leagues they're most likely interested in
// This powers the "suggested for you" feature on the homepage

export const COUNTRY_LEAGUE_MAP: Record<string, string[]> = {
  // Australia
  AU: ["afl", "nrl", "premier-league", "formula-1", "ufc", "super-rugby"],
  // New Zealand
  NZ: ["nrl", "super-rugby", "premier-league", "formula-1"],
  // United Kingdom
  GB: ["premier-league", "champions-league", "six-nations", "formula-1", "championship", "fa-cup"],
  // Ireland
  IE: ["premier-league", "champions-league", "six-nations"],
  // United States
  US: ["nfl", "nba", "mlb", "nhl", "mls", "ufc"],
  // Canada
  CA: ["nhl", "nfl", "nba", "mls"],
  // Spain
  ES: ["la-liga", "champions-league", "formula-1"],
  // Germany
  DE: ["bundesliga", "champions-league", "formula-1"],
  // Italy
  IT: ["serie-a", "champions-league", "formula-1"],
  // France
  FR: ["ligue-1", "champions-league", "six-nations", "formula-1"],
  // India
  IN: ["ipl", "premier-league", "champions-league"],
  // South Africa
  ZA: ["super-rugby", "premier-league", "rugby-world-cup"],
  // Japan
  JP: ["premier-league", "champions-league", "mlb", "formula-1"],
  // South Korea
  KR: ["premier-league", "champions-league"],
  // Brazil
  BR: ["premier-league", "champions-league", "formula-1", "ufc"],
  // Mexico
  MX: ["la-liga", "premier-league", "nfl", "ufc", "boxing"],
  // Argentina
  AR: ["la-liga", "champions-league", "premier-league"],
  // Thailand
  TH: ["premier-league", "champions-league", "ufc", "boxing"],
  // Vietnam
  VN: ["premier-league", "champions-league"],
  // Indonesia
  ID: ["premier-league", "champions-league", "ufc"],
  // Singapore
  SG: ["premier-league", "champions-league", "formula-1", "nba"],
  // Hong Kong
  HK: ["premier-league", "champions-league", "nba"],
  // UAE
  AE: ["premier-league", "champions-league", "formula-1", "ufc", "ipl"],
  // Qatar
  QA: ["premier-league", "champions-league", "formula-1"],
  // Netherlands
  NL: ["champions-league", "premier-league", "formula-1", "bundesliga"],
  // Portugal
  PT: ["champions-league", "premier-league", "la-liga"],
  // Colombia
  CO: ["premier-league", "la-liga", "champions-league"],
};

// Default leagues for unknown countries
export const DEFAULT_LEAGUES = [
  "premier-league",
  "champions-league",
  "nfl",
  "nba",
  "formula-1",
  "ufc",
];

export function getLeaguesForCountry(countryCode: string): string[] {
  return COUNTRY_LEAGUE_MAP[countryCode.toUpperCase()] || DEFAULT_LEAGUES;
}

// Human-readable country names for the selector
export const COUNTRY_OPTIONS = [
  { code: "AU", name: "Australia" },
  { code: "NZ", name: "New Zealand" },
  { code: "GB", name: "United Kingdom" },
  { code: "IE", name: "Ireland" },
  { code: "US", name: "United States" },
  { code: "CA", name: "Canada" },
  { code: "ZA", name: "South Africa" },
  { code: "IN", name: "India" },
  { code: "ES", name: "Spain" },
  { code: "DE", name: "Germany" },
  { code: "IT", name: "Italy" },
  { code: "FR", name: "France" },
  { code: "JP", name: "Japan" },
  { code: "KR", name: "South Korea" },
  { code: "BR", name: "Brazil" },
  { code: "MX", name: "Mexico" },
  { code: "AR", name: "Argentina" },
  { code: "TH", name: "Thailand" },
  { code: "VN", name: "Vietnam" },
  { code: "ID", name: "Indonesia" },
  { code: "SG", name: "Singapore" },
  { code: "HK", name: "Hong Kong" },
  { code: "AE", name: "UAE" },
  { code: "NL", name: "Netherlands" },
  { code: "PT", name: "Portugal" },
  { code: "CO", name: "Colombia" },
];
