/**
 * TV channel definitions for /channels/[channel] pages.
 * leaguesByCountry maps country code → league slugs the channel carries there.
 * Derived from broadcaster data in timezone.ts.
 */

export interface TVChannel {
  slug: string;
  name: string;
  icon: string;
  description: string;
  website: string;
  /** Country codes where this channel is the primary/known broadcaster */
  leaguesByCountry: Record<string, string[]>;
}

export const TV_CHANNELS: Record<string, TVChannel> = {
  "bein-sports": {
    slug: "bein-sports",
    name: "beIN Sports",
    icon: "📡",
    description:
      "The Middle East and Asia's leading sports broadcaster. Covers Premier League, Champions League, La Liga, Bundesliga, Serie A, NFL and more across the MENA region and Southeast Asia.",
    website: "https://www.beinsports.com",
    leaguesByCountry: {
      AE: ["premier-league", "la-liga", "bundesliga", "serie-a", "ligue-1", "champions-league", "nfl", "nba", "formula-1", "ufc", "nrl"],
      QA: ["premier-league", "la-liga", "bundesliga", "champions-league"],
      SA: ["premier-league", "la-liga", "bundesliga", "champions-league"],
      TH: ["premier-league", "la-liga", "bundesliga", "serie-a", "ligue-1", "champions-league", "nfl"],
      SG: ["premier-league", "la-liga", "bundesliga", "serie-a", "ligue-1", "champions-league", "nfl", "nba", "ufc", "nrl"],
      MY: ["premier-league", "la-liga", "champions-league"],
      HK: ["premier-league", "la-liga", "champions-league"],
      AU: ["la-liga", "bundesliga", "serie-a", "ligue-1"],
      FR: ["la-liga", "ligue-1", "nba"],
      GB: ["ligue-1"],
      US: ["ligue-1"],
    },
  },

  "sky-sports": {
    slug: "sky-sports",
    name: "Sky Sports",
    icon: "🛰️",
    description:
      "The UK's home of live sport. Carries NFL, Formula 1, NBA, Bundesliga, NRL and more. Sky Sports F1 is the only place to watch every F1 race live in the UK.",
    website: "https://www.skysports.com",
    leaguesByCountry: {
      GB: ["bundesliga", "nfl", "nba", "nrl", "formula-1"],
      IE: ["bundesliga", "nfl", "nba", "formula-1"],
      DE: ["premier-league", "bundesliga"],
    },
  },

  "tnt-sports": {
    slug: "tnt-sports",
    name: "TNT Sports",
    icon: "📺",
    description:
      "Formerly BT Sport, TNT Sports is the UK home of Premier League, Champions League, UFC and AFL. Essential for any EPL fan watching in the UK.",
    website: "https://www.tntsports.co.uk",
    leaguesByCountry: {
      GB: ["premier-league", "champions-league", "ufc", "afl"],
      IE: ["premier-league", "champions-league"],
    },
  },

  "espn": {
    slug: "espn",
    name: "ESPN / ESPN+",
    icon: "🏟️",
    description:
      "America's sports network. NFL, NBA, La Liga, Bundesliga and Formula 1 on ESPN and ESPN+. Widely available across US sports bars and international hotels.",
    website: "https://www.espn.com",
    leaguesByCountry: {
      US: ["nfl", "nba", "la-liga", "bundesliga", "formula-1"],
      AU: ["nfl", "nrl"],
      NZ: ["nfl"],
      CA: ["nfl"],
      MX: ["nfl"],
      BR: ["nfl", "nba"],
    },
  },

  "kayo-sports": {
    slug: "kayo-sports",
    name: "Kayo Sports",
    icon: "🦘",
    description:
      "Australia's home of live sport streaming. AFL, NRL, NFL, Formula 1 and more. Most Australian sports bars subscribe to Kayo or the underlying Foxtel feed.",
    website: "https://kayosports.com.au",
    leaguesByCountry: {
      AU: ["afl", "nrl", "nfl", "formula-1"],
      NZ: ["afl", "nrl"],
    },
  },

  "dazn": {
    slug: "dazn",
    name: "DAZN",
    icon: "📱",
    description:
      "The global sports streaming platform. Carries La Liga, Bundesliga, Champions League, UFC and NFL across Europe, Canada and Japan. The go-to sports channel in Germany.",
    website: "https://www.dazn.com",
    leaguesByCountry: {
      DE: ["bundesliga", "nfl", "nba", "champions-league", "ufc", "la-liga"],
      ES: ["la-liga", "formula-1"],
      IT: ["serie-a", "champions-league"],
      CA: ["champions-league", "nfl"],
      JP: ["la-liga", "bundesliga", "formula-1"],
    },
  },

  "truevisions": {
    slug: "truevisions",
    name: "TrueVisions",
    icon: "🇹🇭",
    description:
      "Thailand's leading pay-TV sports broadcaster. Carries Premier League, Champions League and Formula 1. Sports bars on Sukhumvit and throughout Bangkok typically subscribe.",
    website: "https://www.truevisions.co.th",
    leaguesByCountry: {
      TH: ["premier-league", "champions-league", "formula-1"],
    },
  },

  "canal-plus": {
    slug: "canal-plus",
    name: "Canal+",
    icon: "🇫🇷",
    description:
      "France's premium sports broadcaster. Home of Champions League and Formula 1 in France. Found in sports bars and brasseries across Paris and other French cities.",
    website: "https://www.canalplus.com",
    leaguesByCountry: {
      FR: ["champions-league", "ligue-1", "formula-1"],
    },
  },

  "optus-sport": {
    slug: "optus-sport",
    name: "Optus Sport",
    icon: "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
    description:
      "Australia's exclusive home of Premier League football. Every EPL match live. Australian sports bars showing EPL will have an Optus Sport subscription.",
    website: "https://sport.optus.com.au",
    leaguesByCountry: {
      AU: ["premier-league"],
    },
  },
};

/** All channel slugs — for route generation */
export const CHANNEL_SLUGS = Object.keys(TV_CHANNELS);

/** Get a channel by slug */
export function getChannel(slug: string): TVChannel | null {
  return TV_CHANNELS[slug] ?? null;
}

/** All unique league slugs a channel carries across all countries */
export function getAllLeaguesForChannel(channel: TVChannel): string[] {
  const seen = new Set<string>();
  for (const leagues of Object.values(channel.leaguesByCountry)) {
    for (const slug of leagues) seen.add(slug);
  }
  return Array.from(seen);
}

/** Get league slugs a channel carries in a specific country */
export function getLeaguesForChannelInCountry(
  channel: TVChannel,
  countryCode: string
): string[] {
  return channel.leaguesByCountry[countryCode.toUpperCase()] ?? [];
}

/** All country codes a channel operates in */
export function getCountriesForChannel(channel: TVChannel): string[] {
  return Object.keys(channel.leaguesByCountry);
}
