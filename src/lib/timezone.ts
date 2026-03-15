// ============================================================
// Timezone + broadcasting utilities for league+city pages
// ============================================================

interface TimezoneInfo {
  /** Primary UTC offset in hours (standard time) */
  utcOffset: number;
  /** Timezone abbreviation */
  abbreviation: string;
  /** Human-readable timezone name */
  label: string;
}

/**
 * Maps IANA timezone identifiers to display info.
 * Covers all 29+ cities with venues.
 */
const TIMEZONE_MAP: Record<string, TimezoneInfo> = {
  // Southeast Asia
  "Asia/Bangkok": { utcOffset: 7, abbreviation: "ICT", label: "Bangkok time" },
  "Asia/Ho_Chi_Minh": { utcOffset: 7, abbreviation: "ICT", label: "Vietnam time" },
  "Asia/Jakarta": { utcOffset: 7, abbreviation: "WIB", label: "Jakarta time" },
  "Asia/Singapore": { utcOffset: 8, abbreviation: "SGT", label: "Singapore time" },
  "Asia/Kuala_Lumpur": { utcOffset: 8, abbreviation: "MYT", label: "Malaysia time" },
  "Asia/Manila": { utcOffset: 8, abbreviation: "PHT", label: "Philippines time" },
  "Asia/Phnom_Penh": { utcOffset: 7, abbreviation: "ICT", label: "Cambodia time" },
  "Asia/Vientiane": { utcOffset: 7, abbreviation: "ICT", label: "Laos time" },
  "Asia/Yangon": { utcOffset: 6.5, abbreviation: "MMT", label: "Myanmar time" },

  // East Asia
  "Asia/Tokyo": { utcOffset: 9, abbreviation: "JST", label: "Japan time" },
  "Asia/Seoul": { utcOffset: 9, abbreviation: "KST", label: "Korea time" },
  "Asia/Shanghai": { utcOffset: 8, abbreviation: "CST", label: "China time" },
  "Asia/Hong_Kong": { utcOffset: 8, abbreviation: "HKT", label: "Hong Kong time" },
  "Asia/Taipei": { utcOffset: 8, abbreviation: "CST", label: "Taiwan time" },

  // South Asia
  "Asia/Kolkata": { utcOffset: 5.5, abbreviation: "IST", label: "India time" },
  "Asia/Colombo": { utcOffset: 5.5, abbreviation: "IST", label: "Sri Lanka time" },

  // Middle East
  "Asia/Dubai": { utcOffset: 4, abbreviation: "GST", label: "Dubai time" },
  "Asia/Qatar": { utcOffset: 3, abbreviation: "AST", label: "Qatar time" },
  "Asia/Riyadh": { utcOffset: 3, abbreviation: "AST", label: "Saudi time" },
  "Asia/Bahrain": { utcOffset: 3, abbreviation: "AST", label: "Bahrain time" },

  // Australia / NZ
  "Australia/Sydney": { utcOffset: 10, abbreviation: "AEST", label: "Sydney time" },
  "Australia/Melbourne": { utcOffset: 10, abbreviation: "AEST", label: "Melbourne time" },
  "Australia/Brisbane": { utcOffset: 10, abbreviation: "AEST", label: "Brisbane time" },
  "Australia/Perth": { utcOffset: 8, abbreviation: "AWST", label: "Perth time" },
  "Australia/Adelaide": { utcOffset: 9.5, abbreviation: "ACST", label: "Adelaide time" },
  "Pacific/Auckland": { utcOffset: 12, abbreviation: "NZST", label: "New Zealand time" },

  // Europe
  "Europe/London": { utcOffset: 0, abbreviation: "GMT", label: "UK time" },
  "Europe/Madrid": { utcOffset: 1, abbreviation: "CET", label: "Spain time" },
  "Europe/Berlin": { utcOffset: 1, abbreviation: "CET", label: "Germany time" },
  "Europe/Rome": { utcOffset: 1, abbreviation: "CET", label: "Italy time" },
  "Europe/Paris": { utcOffset: 1, abbreviation: "CET", label: "France time" },
  "Europe/Amsterdam": { utcOffset: 1, abbreviation: "CET", label: "Netherlands time" },
  "Europe/Lisbon": { utcOffset: 0, abbreviation: "WET", label: "Portugal time" },
  "Europe/Istanbul": { utcOffset: 3, abbreviation: "TRT", label: "Turkey time" },

  // Africa
  "Africa/Johannesburg": { utcOffset: 2, abbreviation: "SAST", label: "South Africa time" },
  "Africa/Nairobi": { utcOffset: 3, abbreviation: "EAT", label: "East Africa time" },
  "Africa/Lagos": { utcOffset: 1, abbreviation: "WAT", label: "West Africa time" },

  // Americas
  "America/New_York": { utcOffset: -5, abbreviation: "EST", label: "Eastern time" },
  "America/Chicago": { utcOffset: -6, abbreviation: "CST", label: "Central time" },
  "America/Denver": { utcOffset: -7, abbreviation: "MST", label: "Mountain time" },
  "America/Los_Angeles": { utcOffset: -8, abbreviation: "PST", label: "Pacific time" },
  "America/Toronto": { utcOffset: -5, abbreviation: "EST", label: "Eastern time" },
  "America/Vancouver": { utcOffset: -8, abbreviation: "PST", label: "Pacific time" },
  "America/Mexico_City": { utcOffset: -6, abbreviation: "CST", label: "Mexico City time" },
  "America/Sao_Paulo": { utcOffset: -3, abbreviation: "BRT", label: "Brazil time" },
  "America/Bogota": { utcOffset: -5, abbreviation: "COT", label: "Colombia time" },
  "America/Buenos_Aires": { utcOffset: -3, abbreviation: "ART", label: "Argentina time" },
  "America/Lima": { utcOffset: -5, abbreviation: "PET", label: "Peru time" },
};

/**
 * Get timezone display info for an IANA timezone string.
 * Falls back to a generic label if the timezone is not in our map.
 */
export function getTimezoneInfo(ianaTimezone: string): TimezoneInfo | null {
  return TIMEZONE_MAP[ianaTimezone] ?? null;
}

// ============================================================
// League kickoff times
// ============================================================

interface KickoffSlot {
  /** Day of week */
  day: string;
  /** Time in HH:MM format (24h) in the league's home timezone */
  homeTimeHHMM: string;
  /** UTC offset of the league's home timezone (standard time) */
  homeUtcOffset: number;
}

/**
 * Typical kickoff times for each league in their home timezone.
 * homeUtcOffset is standard-time offset for the league's primary timezone.
 */
const LEAGUE_KICKOFFS: Record<string, { slots: KickoffSlot[]; note?: string }> = {
  "premier-league": {
    slots: [
      { day: "Sat", homeTimeHHMM: "12:30", homeUtcOffset: 0 },
      { day: "Sat", homeTimeHHMM: "15:00", homeUtcOffset: 0 },
      { day: "Sat", homeTimeHHMM: "17:30", homeUtcOffset: 0 },
    ],
  },
  "la-liga": {
    slots: [
      { day: "Sat", homeTimeHHMM: "14:00", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "16:15", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "18:30", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "21:00", homeUtcOffset: 1 },
    ],
  },
  bundesliga: {
    slots: [
      { day: "Sat", homeTimeHHMM: "15:30", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "18:30", homeUtcOffset: 1 },
    ],
  },
  "serie-a": {
    slots: [
      { day: "Sat", homeTimeHHMM: "15:00", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "18:00", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "20:45", homeUtcOffset: 1 },
    ],
  },
  "ligue-1": {
    slots: [
      { day: "Sat", homeTimeHHMM: "17:00", homeUtcOffset: 1 },
      { day: "Sat", homeTimeHHMM: "21:00", homeUtcOffset: 1 },
    ],
  },
  nfl: {
    slots: [
      { day: "Sun", homeTimeHHMM: "13:00", homeUtcOffset: -5 },
      { day: "Sun", homeTimeHHMM: "16:05", homeUtcOffset: -5 },
      { day: "Sun", homeTimeHHMM: "16:25", homeUtcOffset: -5 },
      { day: "Sun", homeTimeHHMM: "20:15", homeUtcOffset: -5 },
    ],
    note: "Plus Monday and Thursday night games",
  },
  nba: {
    slots: [
      { day: "Various", homeTimeHHMM: "19:00", homeUtcOffset: -5 },
      { day: "Various", homeTimeHHMM: "19:30", homeUtcOffset: -5 },
      { day: "Various", homeTimeHHMM: "20:00", homeUtcOffset: -5 },
      { day: "Various", homeTimeHHMM: "22:00", homeUtcOffset: -5 },
    ],
  },
  nrl: {
    slots: [
      { day: "Fri", homeTimeHHMM: "18:00", homeUtcOffset: 10 },
      { day: "Sat", homeTimeHHMM: "15:00", homeUtcOffset: 10 },
      { day: "Sat", homeTimeHHMM: "17:30", homeUtcOffset: 10 },
      { day: "Sat", homeTimeHHMM: "19:35", homeUtcOffset: 10 },
    ],
  },
  afl: {
    slots: [
      { day: "Fri", homeTimeHHMM: "19:40", homeUtcOffset: 10 },
      { day: "Sat", homeTimeHHMM: "13:45", homeUtcOffset: 10 },
      { day: "Sat", homeTimeHHMM: "16:35", homeUtcOffset: 10 },
      { day: "Sat", homeTimeHHMM: "19:25", homeUtcOffset: 10 },
    ],
  },
  "champions-league": {
    slots: [
      { day: "Tue/Wed", homeTimeHHMM: "21:00", homeUtcOffset: 1 },
    ],
  },
  "formula-1": {
    slots: [],
    note: "Race times vary by circuit location",
  },
  ufc: {
    slots: [
      { day: "Sat", homeTimeHHMM: "22:00", homeUtcOffset: -5 },
    ],
    note: "Main card start time; prelims begin earlier",
  },
};

/**
 * Convert a time from one UTC offset to another.
 * Returns { time: "HH:MM", dayShift: -1 | 0 | 1 } where dayShift indicates
 * if the converted time falls on the previous or next day.
 */
function convertTime(
  homeHHMM: string,
  homeUtcOffset: number,
  localUtcOffset: number
): { time: string; dayShift: number } {
  const [h, m] = homeHHMM.split(":").map(Number);
  const totalMinutes = h * 60 + m;

  // Difference in minutes between local and home timezone
  const diffMinutes = (localUtcOffset - homeUtcOffset) * 60;
  let localMinutes = totalMinutes + diffMinutes;

  let dayShift = 0;
  if (localMinutes < 0) {
    localMinutes += 24 * 60;
    dayShift = -1;
  } else if (localMinutes >= 24 * 60) {
    localMinutes -= 24 * 60;
    dayShift = 1;
  }

  const localH = Math.floor(localMinutes / 60);
  const localM = localMinutes % 60;

  return {
    time: `${localH.toString().padStart(2, "0")}:${localM.toString().padStart(2, "0")}`,
    dayShift,
  };
}

/**
 * Format 24h time to a friendly 12h string like "7:30pm"
 */
function formatTime12h(hhmm: string): string {
  const [h, m] = hhmm.split(":").map(Number);
  const suffix = h >= 12 ? "pm" : "am";
  const displayH = h === 0 ? 12 : h > 12 ? h - 12 : h;
  const displayM = m === 0 ? "" : `:${m.toString().padStart(2, "0")}`;
  return `${displayH}${displayM}${suffix}`;
}

export interface LocalKickoffInfo {
  /** Formatted local times, e.g. ["7:30pm", "10pm", "12:30am +1"] */
  times: string[];
  /** Day(s) of week for the kickoffs, e.g. "Saturday" */
  days: string;
  /** Additional note, e.g. "Plus Monday and Thursday night games" */
  note?: string;
}

/**
 * Get typical kickoff times for a league converted to a local timezone.
 * Returns null if no kickoff data for this league.
 */
export function getLocalKickoffTimes(
  leagueSlug: string,
  localUtcOffset: number
): LocalKickoffInfo | null {
  const data = LEAGUE_KICKOFFS[leagueSlug];
  if (!data) return null;

  if (data.slots.length === 0) {
    return {
      times: [],
      days: "",
      note: data.note,
    };
  }

  // Collect unique days
  const days = [...new Set(data.slots.map((s) => s.day))].join("/");

  const times = data.slots.map((slot) => {
    const { time, dayShift } = convertTime(
      slot.homeTimeHHMM,
      slot.homeUtcOffset,
      localUtcOffset
    );
    let formatted = formatTime12h(time);
    if (dayShift === 1) formatted += " (+1 day)";
    if (dayShift === -1) formatted += " (prev. day)";
    return formatted;
  });

  // Deduplicate times (in case multiple slots convert to same local time)
  const uniqueTimes = [...new Set(times)];

  return {
    times: uniqueTimes,
    days,
    note: data.note,
  };
}

// ============================================================
// Broadcasting info
// ============================================================

/**
 * Map of league slug -> country code -> broadcaster(s)
 */
const BROADCASTER_MAP: Record<string, Record<string, string>> = {
  "premier-league": {
    GB: "TNT Sports / Amazon Prime Video",
    US: "NBC / Peacock",
    AU: "Optus Sport",
    TH: "TrueVisions / beIN Sports",
    MY: "Astro SuperSport",
    SG: "beIN Sports",
    HK: "Now Sports",
    AE: "beIN Sports",
    QA: "beIN Sports",
    SA: "beIN Sports",
    IN: "Star Sports / Hotstar",
    JP: "SPOTV",
    KR: "SPOTV",
    VN: "K+ Vietnam",
    ID: "Vidio",
    PH: "Premier League TV (Tap DMV)",
    NZ: "Sky Sport",
    ZA: "SuperSport",
    DE: "Sky Sport",
    ES: "DAZN",
    IT: "Sky Sport",
    FR: "Canal+",
    NL: "Viaplay",
    PT: "Sport TV",
    BR: "ESPN Brazil / Star+",
    MX: "Paramount+",
    AR: "ESPN / Star+",
    CO: "ESPN / Star+",
    CA: "Fubo TV",
    IE: "TNT Sports / Premier Sports",
  },
  "la-liga": {
    ES: "Movistar+ / DAZN",
    GB: "Premier Sports / LaLigaTV",
    US: "ESPN+",
    AU: "beIN Sports",
    AE: "beIN Sports",
    QA: "beIN Sports",
    SA: "beIN Sports",
    TH: "beIN Sports",
    SG: "beIN Sports",
    IN: "Viacom18 / JioCinema",
    BR: "ESPN Brazil / Star+",
    MX: "Sky Sports Mexico",
    AR: "ESPN / DirecTV",
    DE: "DAZN",
    FR: "beIN Sports",
    IT: "DAZN",
    NL: "Ziggo Sport",
    JP: "DAZN / WOWOW",
  },
  bundesliga: {
    DE: "Sky / DAZN",
    GB: "Sky Sports",
    US: "ESPN+",
    AU: "beIN Sports",
    AE: "beIN Sports",
    TH: "beIN Sports",
    SG: "beIN Sports",
    IN: "Sony Sports",
    JP: "Sky PerfecTV / DAZN",
    BR: "OneFootball / CazéTV",
  },
  "serie-a": {
    IT: "DAZN / Sky Sport",
    GB: "TNT Sports",
    US: "CBS / Paramount+",
    AU: "beIN Sports",
    AE: "beIN Sports",
    TH: "beIN Sports",
    SG: "beIN Sports",
    IN: "Sony Sports",
    BR: "ESPN Brazil / Star+",
  },
  "ligue-1": {
    FR: "DAZN / beIN Sports",
    GB: "beIN Sports",
    US: "beIN Sports",
    AU: "beIN Sports",
    AE: "beIN Sports",
    TH: "beIN Sports",
    SG: "beIN Sports",
  },
  nfl: {
    US: "CBS / Fox / NBC / ESPN / Amazon Prime",
    GB: "Sky Sports / ITV / Channel 5",
    AU: "ESPN / Kayo Sports",
    NZ: "Sky Sport / ESPN",
    DE: "DAZN / ProSieben",
    AE: "beIN Sports",
    SG: "beIN Sports",
    TH: "beIN Sports",
    CA: "DAZN / TSN / CTV",
    BR: "ESPN Brazil / RedeTV",
    MX: "Fox Sports Mexico / ESPN",
    JP: "DAZN / NHK",
    IN: "Star Sports",
  },
  nba: {
    US: "ESPN / TNT / ABC",
    GB: "Sky Sports / NBA League Pass",
    AU: "ESPN / Kayo Sports",
    NZ: "Sky Sport / NBA League Pass",
    AE: "beIN Sports",
    TH: "TrueVisions",
    SG: "beIN Sports",
    IN: "Sony Sports / NBA League Pass",
    JP: "Rakuten TV / WOWOW",
    BR: "ESPN Brazil / NBA League Pass",
    MX: "ESPN / NBA League Pass",
    CA: "TSN / Sportsnet",
    DE: "DAZN",
    FR: "beIN Sports",
    PH: "NBA TV Philippines",
  },
  nrl: {
    AU: "Fox Sports / Kayo / Channel 9",
    NZ: "Sky Sport",
    GB: "Sky Sports",
    TH: "Fox Sports Asia",
    SG: "Fox Sports Asia",
    AE: "beIN Sports",
  },
  afl: {
    AU: "Fox Footy / Kayo / Channel 7",
    NZ: "Kayo / Watch AFL",
    GB: "BT Sport / Watch AFL",
    US: "Watch AFL",
    AE: "Watch AFL",
    TH: "Watch AFL",
    SG: "Watch AFL",
  },
  "champions-league": {
    GB: "TNT Sports",
    US: "CBS / Paramount+",
    AU: "Stan Sport",
    NZ: "Spark Sport",
    AE: "beIN Sports",
    QA: "beIN Sports",
    TH: "TrueVisions / beIN Sports",
    SG: "beIN Sports",
    IN: "Sony Sports / JioCinema",
    DE: "DAZN / Amazon Prime",
    ES: "Movistar+",
    IT: "Mediaset / Amazon Prime",
    FR: "Canal+",
    BR: "TNT Sports / HBO Max",
    JP: "WOWOW",
    CA: "DAZN",
  },
  "formula-1": {
    GB: "Sky Sports F1",
    US: "ESPN",
    AU: "Fox Sports / Kayo",
    NZ: "Spark Sport",
    AE: "beIN Sports",
    TH: "TrueVisions",
    SG: "beIN Sports",
    IN: "Star Sports",
    DE: "Sky Sport / RTL",
    ES: "DAZN / Movistar+",
    IT: "Sky Sport / TV8",
    FR: "Canal+",
    BR: "Band / F1 TV",
    NL: "Viaplay / Ziggo",
    JP: "DAZN / Fuji TV",
    CA: "TSN / RDS",
    MX: "Fox Sports Mexico",
  },
  ufc: {
    US: "ESPN+ / Pay-Per-View",
    GB: "TNT Sports",
    AU: "Kayo / Main Event / UFC Fight Pass",
    NZ: "Sky Sport / UFC Fight Pass",
    AE: "beIN Sports / UFC Fight Pass",
    TH: "TrueVisions / UFC Fight Pass",
    SG: "beIN Sports / UFC Fight Pass",
    IN: "Sony Sports",
    DE: "DAZN",
    BR: "Combate / UFC Fight Pass",
    CA: "TSN / UFC Fight Pass",
    MX: "Fox Sports Mexico / UFC Fight Pass",
    JP: "WOWOW / UFC Fight Pass",
  },
};

/**
 * Get the local broadcaster for a league in a given country.
 */
export function getBroadcaster(
  leagueSlug: string,
  countryCode: string
): string | null {
  const leagueMap = BROADCASTER_MAP[leagueSlug];
  if (!leagueMap) return null;
  return leagueMap[countryCode.toUpperCase()] ?? null;
}

/**
 * Get a display-ready broadcaster string, with fallback.
 */
export function getBroadcasterDisplay(
  leagueSlug: string,
  countryCode: string,
  leagueName: string
): string {
  const broadcaster = getBroadcaster(leagueSlug, countryCode);
  if (broadcaster) return broadcaster;
  return `Check local listings for ${leagueName} coverage`;
}
