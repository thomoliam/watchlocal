// Static search index built from seed data
// This gets loaded client-side for instant fuzzy search

export interface SearchItem {
  type: "league" | "team" | "city" | "combo";
  label: string;
  subtitle?: string;
  href: string;
  // Extra fields for fuzzy matching
  aliases: string[];
  sport?: string;
  leagueSlug?: string;
  citySlug?: string;
  teamSlug?: string;
}

// Leagues with common aliases/abbreviations
const LEAGUES: SearchItem[] = [
  { type: "league", label: "English Premier League", subtitle: "Football", href: "/watch/premier-league", aliases: ["epl", "prem", "premier league", "english football", "premiership", "bpl"], sport: "football", leagueSlug: "premier-league" },
  { type: "league", label: "UEFA Champions League", subtitle: "Football", href: "/watch/champions-league", aliases: ["ucl", "champions league", "cl"], sport: "football", leagueSlug: "champions-league" },
  { type: "league", label: "NFL", subtitle: "American Football", href: "/watch/nfl", aliases: ["nfl", "american football", "national football league", "gridiron"], sport: "american-football", leagueSlug: "nfl" },
  { type: "league", label: "NBA", subtitle: "Basketball", href: "/watch/nba", aliases: ["nba", "basketball", "national basketball"], sport: "basketball", leagueSlug: "nba" },
  { type: "league", label: "Formula 1", subtitle: "Motorsport", href: "/watch/formula-1", aliases: ["f1", "formula one", "formula 1", "grand prix", "gp"], sport: "motorsport", leagueSlug: "formula-1" },
  { type: "league", label: "UFC", subtitle: "MMA", href: "/watch/ufc", aliases: ["ufc", "mma", "mixed martial arts", "ultimate fighting"], sport: "mma", leagueSlug: "ufc" },
  { type: "league", label: "NRL", subtitle: "Rugby League", href: "/watch/nrl", aliases: ["nrl", "rugby league", "national rugby league", "footy"], sport: "rugby-league", leagueSlug: "nrl" },
  { type: "league", label: "La Liga", subtitle: "Football · Spain", href: "/watch/la-liga", aliases: ["la liga", "spanish football", "liga", "primera division"], sport: "football", leagueSlug: "la-liga" },
  { type: "league", label: "Bundesliga", subtitle: "Football · Germany", href: "/watch/bundesliga", aliases: ["bundesliga", "german football"], sport: "football", leagueSlug: "bundesliga" },
  { type: "league", label: "Serie A", subtitle: "Football · Italy", href: "/watch/serie-a", aliases: ["serie a", "italian football", "calcio"], sport: "football", leagueSlug: "serie-a" },
  { type: "league", label: "Ligue 1", subtitle: "Football · France", href: "/watch/ligue-1", aliases: ["ligue 1", "french football", "ligue un"], sport: "football", leagueSlug: "ligue-1" },
  { type: "league", label: "AFL", subtitle: "Australian Football", href: "/watch/afl", aliases: ["afl", "aussie rules", "australian football", "footy"], sport: "australian-football", leagueSlug: "afl" },
  { type: "league", label: "Six Nations", subtitle: "Rugby Union", href: "/watch/six-nations", aliases: ["six nations", "6 nations", "rugby union"], sport: "rugby-union", leagueSlug: "six-nations" },
  { type: "league", label: "Rugby World Cup", subtitle: "Rugby Union", href: "/watch/rugby-world-cup", aliases: ["rwc", "rugby world cup"], sport: "rugby-union", leagueSlug: "rugby-world-cup" },
  { type: "league", label: "IPL", subtitle: "Cricket · India", href: "/watch/ipl", aliases: ["ipl", "indian premier league", "cricket"], sport: "cricket", leagueSlug: "ipl" },
  { type: "league", label: "The Ashes", subtitle: "Cricket", href: "/watch/the-ashes", aliases: ["ashes", "the ashes", "cricket"], sport: "cricket", leagueSlug: "the-ashes" },
  { type: "league", label: "Europa League", subtitle: "Football", href: "/watch/europa-league", aliases: ["uel", "europa league", "europa"], sport: "football", leagueSlug: "europa-league" },
  { type: "league", label: "MLS", subtitle: "Football · USA", href: "/watch/mls", aliases: ["mls", "major league soccer", "american soccer"], sport: "football", leagueSlug: "mls" },
  { type: "league", label: "MLB", subtitle: "Baseball", href: "/watch/mlb", aliases: ["mlb", "baseball", "major league baseball"], sport: "baseball", leagueSlug: "mlb" },
  { type: "league", label: "NHL", subtitle: "Ice Hockey", href: "/watch/nhl", aliases: ["nhl", "ice hockey", "hockey", "national hockey league"], sport: "ice-hockey", leagueSlug: "nhl" },
  { type: "league", label: "Super Rugby", subtitle: "Rugby Union", href: "/watch/super-rugby", aliases: ["super rugby", "rugby"], sport: "rugby-union", leagueSlug: "super-rugby" },
  { type: "league", label: "EFL Championship", subtitle: "Football · England", href: "/watch/championship", aliases: ["championship", "efl", "english championship"], sport: "football", leagueSlug: "championship" },
  { type: "league", label: "FA Cup", subtitle: "Football · England", href: "/watch/fa-cup", aliases: ["fa cup", "cup"], sport: "football", leagueSlug: "fa-cup" },
  { type: "league", label: "Boxing", subtitle: "Boxing", href: "/watch/boxing", aliases: ["boxing", "fight"], sport: "boxing", leagueSlug: "boxing" },
  { type: "league", label: "Tennis Grand Slams", subtitle: "Tennis", href: "/watch/tennis-grand-slams", aliases: ["tennis", "grand slam", "wimbledon", "us open", "australian open", "french open", "roland garros"], sport: "tennis", leagueSlug: "tennis-grand-slams" },
];

// Cities with common aliases
const CITIES: SearchItem[] = [
  { type: "city", label: "Bangkok", subtitle: "Thailand", href: "/cities/bangkok", aliases: ["bangkok", "bkk", "krung thep"], citySlug: "bangkok" },
  { type: "city", label: "Bali", subtitle: "Indonesia", href: "/cities/bali", aliases: ["bali", "seminyak", "canggu", "ubud", "kuta"], citySlug: "bali" },
  { type: "city", label: "Dubai", subtitle: "UAE", href: "/cities/dubai", aliases: ["dubai", "uae"], citySlug: "dubai" },
  { type: "city", label: "London", subtitle: "United Kingdom", href: "/cities/london", aliases: ["london", "uk"], citySlug: "london" },
  { type: "city", label: "New York City", subtitle: "United States", href: "/cities/new-york", aliases: ["new york", "nyc", "ny", "manhattan"], citySlug: "new-york" },
  { type: "city", label: "Singapore", subtitle: "Singapore", href: "/cities/singapore", aliases: ["singapore", "sg"], citySlug: "singapore" },
  { type: "city", label: "Hong Kong", subtitle: "Hong Kong", href: "/cities/hong-kong", aliases: ["hong kong", "hk"], citySlug: "hong-kong" },
  { type: "city", label: "Sydney", subtitle: "Australia", href: "/cities/sydney", aliases: ["sydney", "syd"], citySlug: "sydney" },
  { type: "city", label: "Barcelona", subtitle: "Spain", href: "/cities/barcelona", aliases: ["barcelona", "barca", "bcn"], citySlug: "barcelona" },
  { type: "city", label: "Ho Chi Minh City", subtitle: "Vietnam", href: "/cities/ho-chi-minh-city", aliases: ["ho chi minh", "hcmc", "saigon", "vietnam"], citySlug: "ho-chi-minh-city" },
  { type: "city", label: "Melbourne", subtitle: "Australia", href: "/cities/melbourne", aliases: ["melbourne", "melb"], citySlug: "melbourne" },
  { type: "city", label: "Phuket", subtitle: "Thailand", href: "/cities/phuket", aliases: ["phuket"], citySlug: "phuket" },
  { type: "city", label: "Chiang Mai", subtitle: "Thailand", href: "/cities/chiang-mai", aliases: ["chiang mai", "chiangmai"], citySlug: "chiang-mai" },
  { type: "city", label: "Hanoi", subtitle: "Vietnam", href: "/cities/hanoi", aliases: ["hanoi"], citySlug: "hanoi" },
  { type: "city", label: "Da Nang", subtitle: "Vietnam", href: "/cities/da-nang", aliases: ["da nang", "danang"], citySlug: "da-nang" },
  { type: "city", label: "Tokyo", subtitle: "Japan", href: "/cities/tokyo", aliases: ["tokyo"], citySlug: "tokyo" },
  { type: "city", label: "Amsterdam", subtitle: "Netherlands", href: "/cities/amsterdam", aliases: ["amsterdam"], citySlug: "amsterdam" },
  { type: "city", label: "Berlin", subtitle: "Germany", href: "/cities/berlin", aliases: ["berlin"], citySlug: "berlin" },
  { type: "city", label: "Madrid", subtitle: "Spain", href: "/cities/madrid", aliases: ["madrid"], citySlug: "madrid" },
  { type: "city", label: "Lisbon", subtitle: "Portugal", href: "/cities/lisbon", aliases: ["lisbon", "lisboa"], citySlug: "lisbon" },
  { type: "city", label: "Porto", subtitle: "Portugal", href: "/cities/porto", aliases: ["porto", "oporto"], citySlug: "porto" },
  { type: "city", label: "Paris", subtitle: "France", href: "/cities/paris", aliases: ["paris"], citySlug: "paris" },
  { type: "city", label: "Munich", subtitle: "Germany", href: "/cities/munich", aliases: ["munich", "munchen", "münchen"], citySlug: "munich" },
  { type: "city", label: "Abu Dhabi", subtitle: "UAE", href: "/cities/abu-dhabi", aliases: ["abu dhabi"], citySlug: "abu-dhabi" },
  { type: "city", label: "Kuala Lumpur", subtitle: "Malaysia", href: "/cities/kuala-lumpur", aliases: ["kuala lumpur", "kl"], citySlug: "kuala-lumpur" },
  { type: "city", label: "Mexico City", subtitle: "Mexico", href: "/cities/mexico-city", aliases: ["mexico city", "cdmx", "ciudad de mexico"], citySlug: "mexico-city" },
  { type: "city", label: "Toronto", subtitle: "Canada", href: "/cities/toronto", aliases: ["toronto"], citySlug: "toronto" },
  { type: "city", label: "Vancouver", subtitle: "Canada", href: "/cities/vancouver", aliases: ["vancouver"], citySlug: "vancouver" },
  { type: "city", label: "Los Angeles", subtitle: "United States", href: "/cities/los-angeles", aliases: ["los angeles", "la", "lax"], citySlug: "los-angeles" },
  { type: "city", label: "San Francisco", subtitle: "United States", href: "/cities/san-francisco", aliases: ["san francisco", "sf", "san fran"], citySlug: "san-francisco" },
  { type: "city", label: "Boston", subtitle: "United States", href: "/cities/boston", aliases: ["boston"], citySlug: "boston" },
  { type: "city", label: "Cape Town", subtitle: "South Africa", href: "/cities/cape-town", aliases: ["cape town"], citySlug: "cape-town" },
  { type: "city", label: "Brisbane", subtitle: "Australia", href: "/cities/brisbane", aliases: ["brisbane"], citySlug: "brisbane" },
  { type: "city", label: "Perth", subtitle: "Australia", href: "/cities/perth", aliases: ["perth"], citySlug: "perth" },
  { type: "city", label: "Auckland", subtitle: "New Zealand", href: "/cities/auckland", aliases: ["auckland", "akl"], citySlug: "auckland" },
  { type: "city", label: "Medellin", subtitle: "Colombia", href: "/cities/medellin", aliases: ["medellin", "medellín"], citySlug: "medellin" },
  { type: "city", label: "Buenos Aires", subtitle: "Argentina", href: "/cities/buenos-aires", aliases: ["buenos aires", "ba"], citySlug: "buenos-aires" },
  { type: "city", label: "Prague", subtitle: "Czech Republic", href: "/cities/prague", aliases: ["prague", "praha"], citySlug: "prague" },
  { type: "city", label: "Budapest", subtitle: "Hungary", href: "/cities/budapest", aliases: ["budapest"], citySlug: "budapest" },
  { type: "city", label: "Dublin", subtitle: "Ireland", href: "/cities/dublin", aliases: ["dublin"], citySlug: "dublin" },
  { type: "city", label: "Rome", subtitle: "Italy", href: "/cities/rome", aliases: ["rome", "roma"], citySlug: "rome" },
  { type: "city", label: "Canggu", subtitle: "Indonesia", href: "/cities/canggu", aliases: ["canggu", "bali"], citySlug: "canggu" },
  { type: "city", label: "Doha", subtitle: "Qatar", href: "/cities/doha", aliases: ["doha", "qatar"], citySlug: "doha" },
  { type: "city", label: "Seoul", subtitle: "South Korea", href: "/cities/seoul", aliases: ["seoul", "korea"], citySlug: "seoul" },
];

// Popular combo searches (league × city) — generated for top pairings
function generateCombos(): SearchItem[] {
  const topLeagues = LEAGUES.filter(l =>
    ["premier-league", "nfl", "nba", "nrl", "formula-1", "ufc", "afl", "la-liga"].includes(l.leagueSlug!)
  );
  const topCities = CITIES.filter(c =>
    ["bangkok", "bali", "london", "dubai", "sydney", "ho-chi-minh-city", "melbourne", "barcelona", "singapore", "hong-kong", "new-york", "tokyo", "amsterdam", "berlin"].includes(c.citySlug!)
  );

  const combos: SearchItem[] = [];
  for (const league of topLeagues) {
    for (const city of topCities) {
      combos.push({
        type: "combo",
        label: `${league.label} in ${city.label}`,
        subtitle: `Sports bars showing ${league.aliases[0]?.toUpperCase() || league.label}`,
        href: `/watch/${league.leagueSlug}/${city.citySlug}`,
        aliases: [
          `${league.aliases[0]} ${city.label}`,
          `${league.aliases[0]} in ${city.label}`,
          `${league.label} ${city.label}`,
          `${league.aliases[0]} bars ${city.label}`,
          `watch ${league.aliases[0]} ${city.label}`,
          ...league.aliases.map(a => `${a} ${city.aliases[0]}`),
        ],
        leagueSlug: league.leagueSlug,
        citySlug: city.citySlug,
      });
    }
  }
  return combos;
}

export const SEARCH_INDEX: SearchItem[] = [
  ...LEAGUES,
  ...CITIES,
  ...generateCombos(),
];

export { LEAGUES, CITIES };

// For the footer
export const FOOTER_SPORTS = [
  { label: "Football", href: "/watch/premier-league" },
  { label: "American Football", href: "/watch/nfl" },
  { label: "Basketball", href: "/watch/nba" },
  { label: "Rugby League", href: "/watch/nrl" },
  { label: "Australian Football", href: "/watch/afl" },
  { label: "Motorsport", href: "/watch/formula-1" },
  { label: "MMA", href: "/watch/ufc" },
  { label: "Cricket", href: "/watch/ipl" },
  { label: "Tennis", href: "/watch/tennis-grand-slams" },
  { label: "Boxing", href: "/watch/boxing" },
];

export const FOOTER_LEAGUES = [
  { label: "Premier League", href: "/watch/premier-league" },
  { label: "Champions League", href: "/watch/champions-league" },
  { label: "La Liga", href: "/watch/la-liga" },
  { label: "Bundesliga", href: "/watch/bundesliga" },
  { label: "Serie A", href: "/watch/serie-a" },
  { label: "NFL", href: "/watch/nfl" },
  { label: "NBA", href: "/watch/nba" },
  { label: "NRL", href: "/watch/nrl" },
  { label: "AFL", href: "/watch/afl" },
  { label: "Formula 1", href: "/watch/formula-1" },
];

export const FOOTER_CITIES = [
  { label: "Bangkok", href: "/cities/bangkok" },
  { label: "London", href: "/cities/london" },
  { label: "Dubai", href: "/cities/dubai" },
  { label: "Sydney", href: "/cities/sydney" },
  { label: "Tokyo", href: "/cities/tokyo" },
  { label: "Paris", href: "/cities/paris" },
  { label: "Amsterdam", href: "/cities/amsterdam" },
  { label: "Singapore", href: "/cities/singapore" },
  { label: "New York", href: "/cities/new-york" },
  { label: "Bali", href: "/cities/bali" },
  { label: "Dublin", href: "/cities/dublin" },
  { label: "Barcelona", href: "/cities/barcelona" },
];
