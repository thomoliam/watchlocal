/**
 * WatchLocal — Fixture Sync
 *
 * Fetches upcoming fixtures from football-data.org and upserts them into
 * Supabase. Supports EPL, Champions League, Bundesliga, Serie A, La Liga,
 * Ligue 1, FA Cup, and EFL Championship.
 *
 * Setup:
 *   1. Sign up free at https://www.football-data.org/client/register
 *   2. Add to .env.local:  FOOTBALL_DATA_API_KEY=your_key_here
 *   3. Run: npx tsx scripts/sync-fixtures.ts
 *
 * Free tier limits: 10 req/min, no live scores, main competitions only.
 * This script rate-limits automatically.
 *
 * Usage:
 *   npx tsx scripts/sync-fixtures.ts               # all configured competitions
 *   npx tsx scripts/sync-fixtures.ts --league=PL   # Premier League only
 *   npx tsx scripts/sync-fixtures.ts --dry-run     # preview without DB writes
 */

import { createClient } from "@supabase/supabase-js";

// ---------------------------------------------------------------------------
// Config
// ---------------------------------------------------------------------------

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY!;
const FD_API_KEY = process.env.FOOTBALL_DATA_API_KEY;

if (!SUPABASE_URL || !SERVICE_KEY) {
  console.error("Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY");
  process.exit(1);
}

if (!FD_API_KEY) {
  console.error(
    "\n❌  FOOTBALL_DATA_API_KEY not set.\n" +
      "   1. Sign up free at https://www.football-data.org/client/register\n" +
      "   2. Add FOOTBALL_DATA_API_KEY=<your_key> to .env.local\n" +
      "   3. Re-run this script\n"
  );
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SERVICE_KEY);

/** football-data.org competition code → our league slug */
const COMPETITION_MAP: Record<string, string> = {
  PL: "premier-league",
  CL: "champions-league",
  BL1: "bundesliga",
  SA: "serie-a",
  PD: "la-liga",
  FL1: "ligue-1",
  FAC: "fa-cup",
  ELC: "championship",
};

const args = process.argv.slice(2);
const leagueArg = args.find((a) => a.startsWith("--league="));
const LEAGUE_FILTER = leagueArg ? leagueArg.split("=")[1].toUpperCase() : "";
const DRY_RUN = args.includes("--dry-run");

const competitions = LEAGUE_FILTER
  ? { [LEAGUE_FILTER]: COMPETITION_MAP[LEAGUE_FILTER] }
  : COMPETITION_MAP;

// ---------------------------------------------------------------------------
// football-data.org types
// ---------------------------------------------------------------------------

interface FDTeam {
  id: number;
  name: string;
  shortName: string;
  tla: string;
  crest: string;
}

interface FDMatch {
  id: number;
  utcDate: string;
  status: string; // SCHEDULED, TIMED, IN_PLAY, PAUSED, FINISHED, SUSPENDED, POSTPONED, CANCELLED, AWARDED
  matchday: number | null;
  stage: string;
  group: string | null;
  homeTeam: FDTeam;
  awayTeam: FDTeam;
  score: {
    winner: string | null;
    fullTime: { home: number | null; away: number | null };
    halfTime: { home: number | null; away: number | null };
  };
}

interface FDResponse {
  matches: FDMatch[];
  resultSet?: { count: number };
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function sleep(ms: number) {
  return new Promise((r) => setTimeout(r, ms));
}

/** Normalise status from football-data to our enum */
function normaliseStatus(fdStatus: string): string {
  switch (fdStatus) {
    case "SCHEDULED":
    case "TIMED":
      return "scheduled";
    case "IN_PLAY":
    case "PAUSED":
      return "live";
    case "FINISHED":
    case "AWARDED":
      return "finished";
    case "POSTPONED":
      return "postponed";
    case "CANCELLED":
    case "SUSPENDED":
      return "cancelled";
    default:
      return "scheduled";
  }
}

/** Slug-ify a team name for DB lookups */
function slugify(name: string): string {
  return name
    .toLowerCase()
    .replace(/[^a-z0-9\s-]/g, "")
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-")
    .replace(/^-|-$/g, "");
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log("\nWatchLocal Fixture Sync");
  console.log(`Dry run: ${DRY_RUN}`);
  console.log(`Competitions: ${Object.keys(competitions).join(", ")}\n`);

  // Cache: leagueSlug → league row
  const leagueCache = new Map<string, { id: string; name: string }>();
  // Cache: teamName → team id
  const teamCache = new Map<string, string>();

  // Pre-load all leagues
  const { data: allLeagues } = await supabase
    .from("leagues")
    .select("id, name, slug");
  (allLeagues || []).forEach((l) => leagueCache.set(l.slug, l));

  // Pre-load all teams
  const { data: allTeams } = await supabase
    .from("teams")
    .select("id, name, slug");
  (allTeams || []).forEach((t) => {
    teamCache.set(t.name.toLowerCase(), t.id);
    teamCache.set(t.slug, t.id);
  });

  console.log(
    `Cached ${leagueCache.size} leagues, ${teamCache.size / 2} teams\n`
  );

  let totalUpserted = 0;
  let totalSkipped = 0;
  let reqCount = 0;

  for (const [code, leagueSlug] of Object.entries(competitions)) {
    const league = leagueCache.get(leagueSlug);
    if (!league) {
      console.warn(`⚠ League slug "${leagueSlug}" not found in DB — skipping ${code}`);
      totalSkipped++;
      continue;
    }

    // Rate limit: 10 req/min → wait 6s between requests
    if (reqCount > 0) await sleep(6500);
    reqCount++;

    // Fetch upcoming matches for this competition (next 90 days)
    const today = new Date();
    const end = new Date(today);
    end.setDate(end.getDate() + 90);
    const dateFrom = today.toISOString().split("T")[0];
    const dateTo = end.toISOString().split("T")[0];

    const url = `https://api.football-data.org/v4/competitions/${code}/matches?status=SCHEDULED,TIMED,IN_PLAY,PAUSED,FINISHED&dateFrom=${dateFrom}&dateTo=${dateTo}`;

    console.log(`Fetching ${code} (${league.name}) — ${dateFrom} to ${dateTo}...`);

    let fdData: FDResponse;
    try {
      const res = await fetch(url, {
        headers: { "X-Auth-Token": FD_API_KEY! },
      });
      if (!res.ok) {
        const text = await res.text();
        console.error(`  ✗ HTTP ${res.status}: ${text.slice(0, 200)}`);
        continue;
      }
      fdData = await res.json();
    } catch (err) {
      console.error(`  ✗ Fetch error: ${err}`);
      continue;
    }

    const matches = fdData.matches || [];
    console.log(`  Got ${matches.length} matches`);

    if (DRY_RUN) {
      matches.slice(0, 3).forEach((m) => {
        console.log(
          `  [dry] ${m.homeTeam.name} vs ${m.awayTeam.name} — ${m.utcDate}`
        );
      });
      totalUpserted += matches.length;
      continue;
    }

    // Build fixture rows
    const rows = await Promise.all(
      matches.map(async (m) => {
        // Resolve home team ID
        let homeTeamId =
          teamCache.get(m.homeTeam.name.toLowerCase()) ||
          teamCache.get(slugify(m.homeTeam.name));

        // Resolve away team ID
        let awayTeamId =
          teamCache.get(m.awayTeam.name.toLowerCase()) ||
          teamCache.get(slugify(m.awayTeam.name));

        // If team not found, create it
        if (!homeTeamId) {
          const slug = slugify(m.homeTeam.name);
          const { data: newTeam } = await supabase
            .from("teams")
            .upsert(
              {
                name: m.homeTeam.name,
                short_name: m.homeTeam.shortName || m.homeTeam.tla || null,
                slug,
                league_id: league.id,
                logo_url: m.homeTeam.crest || null,
              },
              { onConflict: "slug", ignoreDuplicates: false }
            )
            .select("id")
            .single();
          if (newTeam) {
            homeTeamId = newTeam.id;
            teamCache.set(m.homeTeam.name.toLowerCase(), newTeam.id);
          }
        }

        if (!awayTeamId) {
          const slug = slugify(m.awayTeam.name);
          const { data: newTeam } = await supabase
            .from("teams")
            .upsert(
              {
                name: m.awayTeam.name,
                short_name: m.awayTeam.shortName || m.awayTeam.tla || null,
                slug,
                league_id: league.id,
                logo_url: m.awayTeam.crest || null,
              },
              { onConflict: "slug", ignoreDuplicates: false }
            )
            .select("id")
            .single();
          if (newTeam) {
            awayTeamId = newTeam.id;
            teamCache.set(m.awayTeam.name.toLowerCase(), newTeam.id);
          }
        }

        const round =
          m.stage !== "REGULAR_SEASON"
            ? m.stage.replace(/_/g, " ").toLowerCase()
            : m.matchday
            ? `Matchday ${m.matchday}`
            : null;

        return {
          // Use football-data's ID as a stable external reference for upsert
          external_id: `fd-${m.id}`,
          league_id: league.id,
          home_team_id: homeTeamId || null,
          away_team_id: awayTeamId || null,
          home_team_name: m.homeTeam.name,
          away_team_name: m.awayTeam.name,
          match_date: m.utcDate,
          status: normaliseStatus(m.status),
          home_score: m.score.fullTime.home,
          away_score: m.score.fullTime.away,
          round,
        };
      })
    );

    // Upsert — use external_id if column exists, else fall back to match-on-names+date
    // Try external_id first
    const { error } = await supabase
      .from("fixtures")
      .upsert(rows, { onConflict: "external_id", ignoreDuplicates: false });

    if (error) {
      // external_id column may not exist — try without it
      if (error.message.includes("external_id")) {
        const rowsNoExtId = rows.map(({ external_id: _ext, ...rest }) => rest);
        const { error: err2 } = await supabase
          .from("fixtures")
          .upsert(rowsNoExtId, {
            onConflict: "league_id,home_team_name,away_team_name,match_date",
            ignoreDuplicates: false,
          });
        if (err2) {
          console.error(`  ✗ Upsert error: ${err2.message}`);
        } else {
          console.log(`  ✓ Upserted ${rows.length} fixtures`);
          totalUpserted += rows.length;
        }
      } else {
        console.error(`  ✗ Upsert error: ${error.message}`);
      }
    } else {
      console.log(`  ✓ Upserted ${rows.length} fixtures`);
      totalUpserted += rows.length;
    }
  }

  console.log("\n--- Summary ---");
  console.log(`Upserted: ${totalUpserted}`);
  console.log(`Skipped:  ${totalSkipped} (league not in DB)`);
}

main().catch(console.error);
