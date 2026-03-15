// Static event data for major sporting events
// These are finite, curated events that get their own SEO-optimized pages

export interface SportEvent {
  slug: string;
  name: string;
  shortName: string;
  date: string; // or date range
  endDate?: string; // for multi-day events
  league: string; // league slug
  sport: string;
  description: string;
  teams?: string[]; // for specific matchups
  cities: string[]; // city slugs where this is popular to watch
  searchTerms: string[]; // for SEO
  venue?: string; // where the event is held
  faqs: { question: string; answer: string }[];
}

export const EVENTS: SportEvent[] = [
  {
    slug: "super-bowl-2026",
    name: "Super Bowl LX",
    shortName: "Super Bowl LX",
    date: "2026-02-08",
    league: "nfl",
    sport: "american-football",
    description:
      "Super Bowl LX is the championship game of the 2025 NFL season, bringing together the AFC and NFC champions. As the biggest single-day sporting event in the world, Super Bowl watch parties are held in sports bars globally, with kickoff typically in the early evening (US Eastern Time).",
    cities: [
      "new-york", "los-angeles", "london", "dubai", "bangkok", "sydney",
      "tokyo", "singapore", "hong-kong", "toronto", "vancouver", "mexico-city",
    ],
    searchTerms: [
      "super bowl 2026", "super bowl lx", "where to watch super bowl",
      "super bowl watch party", "super bowl bar", "nfl championship 2026",
    ],
    venue: "Levi's Stadium, Santa Clara, CA",
    faqs: [
      {
        question: "What time is Super Bowl LX kickoff?",
        answer:
          "Super Bowl LX is expected to kick off at approximately 6:30 PM ET on February 8, 2026. Check local time conversions above for your city.",
      },
      {
        question: "Where can I watch the Super Bowl abroad?",
        answer:
          "Sports bars worldwide show the Super Bowl, especially in expat-heavy cities. Browse our city listings above to find verified venues showing the game in your location.",
      },
      {
        question: "Is the Super Bowl shown in bars outside the US?",
        answer:
          "Yes, the Super Bowl is one of the most widely broadcast sporting events in the world. Most international sports bars carry it, though kickoff times may be late night or early morning depending on your timezone.",
      },
    ],
  },
  {
    slug: "champions-league-final-2026",
    name: "UEFA Champions League Final 2026",
    shortName: "UCL Final 2026",
    date: "2026-05-30",
    league: "champions-league",
    sport: "football",
    description:
      "The 2026 UEFA Champions League Final is the culmination of Europe's premier club football competition. Held at a major European stadium, the final draws massive global audiences, with sports bars worldwide packed for kickoff.",
    cities: [
      "london", "bangkok", "dubai", "barcelona", "madrid", "amsterdam",
      "berlin", "paris", "singapore", "hong-kong", "sydney", "melbourne",
      "ho-chi-minh-city", "tokyo", "new-york", "lisbon",
    ],
    searchTerms: [
      "champions league final 2026", "ucl final 2026", "where to watch champions league final",
      "champions league final bar", "ucl final watch party",
    ],
    faqs: [
      {
        question: "What time is the Champions League Final 2026?",
        answer:
          "The UCL Final typically kicks off at 21:00 CET (Central European Time). Check the timezone converter above for your local kickoff time.",
      },
      {
        question: "Where is the best place to watch the Champions League Final?",
        answer:
          "Major cities worldwide have sports bars showing the final. European cities like London, Barcelona, and Amsterdam have the best atmospheres, but Asian cities like Bangkok and Singapore also have dedicated viewing events.",
      },
    ],
  },
  {
    slug: "el-clasico-2025-26",
    name: "El Clasico 2025-26",
    shortName: "El Clasico",
    date: "2026-03-22",
    league: "la-liga",
    sport: "football",
    description:
      "El Clasico is the iconic rivalry match between Real Madrid and FC Barcelona, one of the most-watched club football fixtures in the world. With billions of global viewers, sports bars everywhere screen this La Liga showdown.",
    teams: ["Real Madrid", "FC Barcelona"],
    cities: [
      "barcelona", "madrid", "london", "bangkok", "dubai", "singapore",
      "hong-kong", "tokyo", "new-york", "amsterdam", "paris", "berlin",
      "ho-chi-minh-city", "bali", "sydney",
    ],
    searchTerms: [
      "el clasico 2026", "real madrid vs barcelona", "barca vs real madrid",
      "where to watch el clasico", "el clasico bar", "la liga clasico",
    ],
    faqs: [
      {
        question: "What time is El Clasico in my timezone?",
        answer:
          "El Clasico typically kicks off between 16:00 and 21:00 CET. Use the timezone converter above to find your local kickoff time.",
      },
      {
        question: "Where can I watch El Clasico abroad?",
        answer:
          "El Clasico is broadcast globally and shown in most sports bars. Check our city listings above for venues near you that show La Liga matches.",
      },
    ],
  },
  {
    slug: "state-of-origin-2026",
    name: "State of Origin 2026",
    shortName: "State of Origin",
    date: "2026-06-03",
    endDate: "2026-07-08",
    league: "nrl",
    sport: "rugby-league",
    description:
      "State of Origin is Australia's premier rugby league series, pitting New South Wales Blues against Queensland Maroons in a best-of-three series. It is one of the toughest and most-watched sporting events in Australia, with massive viewing events in pubs across the country and internationally.",
    teams: ["NSW Blues", "Queensland Maroons"],
    cities: [
      "sydney", "melbourne", "brisbane", "perth", "auckland",
      "bangkok", "london", "bali", "singapore", "hong-kong",
    ],
    searchTerms: [
      "state of origin 2026", "origin 2026", "nsw vs qld",
      "where to watch state of origin", "origin watch party", "nrl origin",
    ],
    faqs: [
      {
        question: "When are the State of Origin games in 2026?",
        answer:
          "State of Origin 2026 is a three-game series held from June to July. Game 1 is expected in early June, Game 2 in late June, and Game 3 in early July.",
      },
      {
        question: "Where can I watch State of Origin outside Australia?",
        answer:
          "Aussie expat bars worldwide show State of Origin, particularly in Bangkok, London, Bali, and Singapore. Check our city listings above for verified venues.",
      },
    ],
  },
  {
    slug: "nrl-grand-final-2026",
    name: "NRL Grand Final 2026",
    shortName: "NRL Grand Final",
    date: "2026-10-04",
    league: "nrl",
    sport: "rugby-league",
    description:
      "The NRL Grand Final is the championship decider of the National Rugby League season, held at Accor Stadium in Sydney. It is one of Australia's biggest sporting events, with pubs across the country and overseas packed with fans.",
    cities: [
      "sydney", "melbourne", "brisbane", "perth", "auckland",
      "bangkok", "london", "bali", "singapore",
    ],
    searchTerms: [
      "nrl grand final 2026", "nrl gf 2026", "rugby league grand final",
      "where to watch nrl grand final", "nrl final watch party",
    ],
    venue: "Accor Stadium, Sydney",
    faqs: [
      {
        question: "What time does the NRL Grand Final start?",
        answer:
          "The NRL Grand Final typically kicks off at 7:30 PM AEST. International viewers can check the timezone converter above for local kickoff times.",
      },
      {
        question: "Where can I watch the NRL Grand Final overseas?",
        answer:
          "Aussie sports bars in major cities show the NRL Grand Final. Popular locations include Bangkok, London, Bali, and Singapore. Check our listings above.",
      },
    ],
  },
  {
    slug: "afl-grand-final-2026",
    name: "AFL Grand Final 2026",
    shortName: "AFL Grand Final",
    date: "2026-09-26",
    league: "afl",
    sport: "australian-football",
    description:
      "The AFL Grand Final at the Melbourne Cricket Ground is Australia's biggest club sporting event, drawing over 100,000 fans to the MCG and millions of viewers worldwide. It is a public holiday in Melbourne, and pubs across Australia and internationally host Grand Final events.",
    cities: [
      "melbourne", "sydney", "brisbane", "perth", "auckland",
      "bangkok", "london", "bali", "singapore", "hong-kong",
    ],
    searchTerms: [
      "afl grand final 2026", "afl gf 2026", "aussie rules grand final",
      "where to watch afl grand final", "afl final watch party", "mcg grand final",
    ],
    venue: "Melbourne Cricket Ground (MCG), Melbourne",
    faqs: [
      {
        question: "What time is the AFL Grand Final?",
        answer:
          "The AFL Grand Final typically starts at 2:30 PM AEST. Check the timezone converter above for your local time.",
      },
      {
        question: "Where can I watch the AFL Grand Final outside Australia?",
        answer:
          "Many Aussie expat bars show the AFL Grand Final, especially in Bangkok, London, Singapore, and Bali. Check our venue listings for your city.",
      },
    ],
  },
  {
    slug: "six-nations-2026",
    name: "Six Nations 2026",
    shortName: "Six Nations",
    date: "2026-02-07",
    endDate: "2026-03-21",
    league: "six-nations",
    sport: "rugby-union",
    description:
      "The Six Nations Championship is the annual rugby union tournament between England, France, Ireland, Italy, Scotland, and Wales. Spread across five weekends from February to March, it is one of the oldest and most prestigious rugby competitions, with electric pub atmospheres across Europe and beyond.",
    teams: ["England", "France", "Ireland", "Italy", "Scotland", "Wales"],
    cities: [
      "london", "dublin", "paris", "amsterdam", "bangkok",
      "sydney", "melbourne", "auckland", "singapore", "hong-kong",
      "dubai", "cape-town",
    ],
    searchTerms: [
      "six nations 2026", "6 nations 2026", "six nations rugby",
      "where to watch six nations", "rugby six nations bar",
      "england vs france rugby", "ireland rugby",
    ],
    faqs: [
      {
        question: "When does the Six Nations 2026 start?",
        answer:
          "The Six Nations 2026 runs from February 7 to March 21, with matches played across five weekends.",
      },
      {
        question: "Where can I watch the Six Nations outside Europe?",
        answer:
          "British and Irish pubs worldwide show the Six Nations, especially in Bangkok, Sydney, Singapore, and Dubai. Check our city listings for venues near you.",
      },
    ],
  },
  {
    slug: "f1-season-2026",
    name: "Formula 1 2026 Season",
    shortName: "F1 2026",
    date: "2026-03-15",
    endDate: "2026-12-06",
    league: "formula-1",
    sport: "motorsport",
    description:
      "The 2026 Formula 1 World Championship features a calendar of 24 Grands Prix across five continents. With new engine regulations for 2026, this season promises exciting racing. Sports bars worldwide show every race, qualifying, and practice session.",
    cities: [
      "london", "amsterdam", "singapore", "abu-dhabi", "tokyo",
      "sydney", "melbourne", "bangkok", "dubai", "barcelona",
      "berlin", "munich", "hong-kong", "new-york", "montreal",
    ],
    searchTerms: [
      "f1 2026", "formula 1 2026", "where to watch f1",
      "f1 bar", "formula 1 watch party", "grand prix 2026",
      "f1 season 2026",
    ],
    faqs: [
      {
        question: "How many F1 races are there in 2026?",
        answer:
          "The 2026 F1 season is expected to feature approximately 24 Grands Prix, running from March to December.",
      },
      {
        question: "Where can I watch Formula 1 in a bar?",
        answer:
          "Many sports bars show F1 races, especially in cities with nearby Grand Prix events. Check our city listings above for venues that show motorsport.",
      },
    ],
  },
  {
    slug: "premier-league-2025-26",
    name: "Premier League 2025-26 Season",
    shortName: "PL 2025-26",
    date: "2025-08-16",
    endDate: "2026-05-24",
    league: "premier-league",
    sport: "football",
    description:
      "The 2025-26 Premier League season is the top flight of English football, featuring 20 clubs competing across 38 matchdays from August to May. As the world's most-watched football league, Premier League matches are shown in sports bars in virtually every city worldwide.",
    cities: [
      "bangkok", "london", "dubai", "singapore", "hong-kong",
      "ho-chi-minh-city", "bali", "sydney", "melbourne", "tokyo",
      "amsterdam", "barcelona", "new-york", "toronto", "auckland",
      "kuala-lumpur", "chiang-mai", "phuket", "hanoi", "da-nang",
    ],
    searchTerms: [
      "premier league 2025-26", "epl 2025-26", "english premier league",
      "where to watch premier league", "premier league bar",
      "prem bar", "epl watch party",
    ],
    faqs: [
      {
        question: "When does the Premier League 2025-26 season start?",
        answer:
          "The 2025-26 Premier League season begins in mid-August 2025 and runs through to late May 2026.",
      },
      {
        question: "What time are Premier League matches in Asia?",
        answer:
          "Premier League matches typically kick off between 7:00 PM and midnight in Southeast Asian time zones (ICT/SGT). Check our city pages for local kickoff times.",
      },
      {
        question: "Where is the best place to watch the Premier League abroad?",
        answer:
          "Bangkok, Singapore, Hong Kong, and Dubai are among the top cities for watching Premier League outside the UK. Browse our city listings for verified venues near you.",
      },
    ],
  },
  {
    slug: "nba-finals-2026",
    name: "NBA Finals 2026",
    shortName: "NBA Finals",
    date: "2026-06-04",
    endDate: "2026-06-21",
    league: "nba",
    sport: "basketball",
    description:
      "The 2026 NBA Finals determine the champion of the National Basketball Association. This best-of-seven series between the Eastern and Western Conference champions is one of the most-watched sporting events globally, with games broadcast in over 200 countries.",
    cities: [
      "new-york", "los-angeles", "toronto", "london", "bangkok",
      "tokyo", "hong-kong", "singapore", "dubai", "sydney",
      "melbourne", "berlin", "paris", "mexico-city",
    ],
    searchTerms: [
      "nba finals 2026", "nba championship 2026", "where to watch nba finals",
      "nba finals bar", "nba watch party",
    ],
    faqs: [
      {
        question: "When are the NBA Finals 2026?",
        answer:
          "The NBA Finals 2026 are expected to run from early to mid-June, with games typically played on Thursday and Sunday evenings (US Eastern Time).",
      },
      {
        question: "What time are NBA Finals games in my timezone?",
        answer:
          "NBA Finals games typically tip off at 8:00 or 9:00 PM ET. Use the timezone converter above to find your local time.",
      },
    ],
  },
];

/** Get an event by its slug */
export function getEventBySlug(slug: string): SportEvent | undefined {
  return EVENTS.find((e) => e.slug === slug);
}

/** Get all events sorted by date */
export function getAllEvents(): SportEvent[] {
  return [...EVENTS].sort(
    (a, b) => new Date(a.date).getTime() - new Date(b.date).getTime()
  );
}

/** Split events into upcoming and past based on current date */
export function getEventsByTiming(): {
  upcoming: SportEvent[];
  past: SportEvent[];
} {
  const now = new Date();
  const upcoming: SportEvent[] = [];
  const past: SportEvent[] = [];

  for (const event of EVENTS) {
    const endDate = event.endDate ? new Date(event.endDate) : new Date(event.date);
    if (endDate >= now) {
      upcoming.push(event);
    } else {
      past.push(event);
    }
  }

  upcoming.sort((a, b) => new Date(a.date).getTime() - new Date(b.date).getTime());
  past.sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());

  return { upcoming, past };
}

/** Timezone offsets for major cities (for the timezone converter) */
export const CITY_TIMEZONES: Record<string, { label: string; tz: string }> = {
  "new-york": { label: "New York", tz: "America/New_York" },
  "los-angeles": { label: "Los Angeles", tz: "America/Los_Angeles" },
  london: { label: "London", tz: "Europe/London" },
  paris: { label: "Paris", tz: "Europe/Paris" },
  dubai: { label: "Dubai", tz: "Asia/Dubai" },
  bangkok: { label: "Bangkok", tz: "Asia/Bangkok" },
  singapore: { label: "Singapore", tz: "Asia/Singapore" },
  tokyo: { label: "Tokyo", tz: "Asia/Tokyo" },
  sydney: { label: "Sydney", tz: "Australia/Sydney" },
  auckland: { label: "Auckland", tz: "Pacific/Auckland" },
};
