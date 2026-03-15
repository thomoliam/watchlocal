import { Clock, Radio } from "lucide-react";
import {
  getTimezoneInfo,
  getLocalKickoffTimes,
  getBroadcasterDisplay,
} from "@/lib/timezone";

interface ViewingInfoCardProps {
  leagueSlug: string;
  leagueName: string;
  cityName: string;
  timezone: string;
  countryCode: string;
}

export default function ViewingInfoCard({
  leagueSlug,
  leagueName,
  cityName,
  timezone,
  countryCode,
}: ViewingInfoCardProps) {
  const tzInfo = getTimezoneInfo(timezone);
  const kickoffs = tzInfo
    ? getLocalKickoffTimes(leagueSlug, tzInfo.utcOffset)
    : null;
  const broadcaster = getBroadcasterDisplay(leagueSlug, countryCode, leagueName);

  // If we have no useful info to display, skip the card entirely
  const hasKickoffs = kickoffs && kickoffs.times.length > 0;
  const hasNote = kickoffs?.note;
  if (!hasKickoffs && !hasNote && !broadcaster) return null;

  const utcLabel = tzInfo
    ? `UTC${tzInfo.utcOffset >= 0 ? "+" : ""}${tzInfo.utcOffset % 1 === 0 ? tzInfo.utcOffset : tzInfo.utcOffset}`
    : null;

  return (
    <div className="mt-6 rounded-xl border border-border bg-card p-5">
      <h2 className="text-base font-semibold">Viewing Info</h2>

      <div className="mt-3 space-y-3 text-sm text-muted-foreground">
        {/* Kickoff times */}
        {hasKickoffs && tzInfo && (
          <div className="flex items-start gap-2.5">
            <Clock className="mt-0.5 h-4 w-4 shrink-0 text-blue-600 dark:text-blue-400" />
            <div>
              <span className="font-medium text-foreground">
                Typical kickoff times:
              </span>{" "}
              {kickoffs.times.join(", ")}{" "}
              <span className="whitespace-nowrap">
                ({tzInfo.label}, {utcLabel})
              </span>
              {kickoffs.note && (
                <span className="block text-xs mt-0.5">{kickoffs.note}</span>
              )}
            </div>
          </div>
        )}

        {/* Note-only (e.g. F1 with no fixed times) */}
        {!hasKickoffs && hasNote && tzInfo && (
          <div className="flex items-start gap-2.5">
            <Clock className="mt-0.5 h-4 w-4 shrink-0 text-blue-600 dark:text-blue-400" />
            <div>
              <span className="font-medium text-foreground">
                Kickoff times:
              </span>{" "}
              {kickoffs.note}{" "}
              <span className="whitespace-nowrap">
                (shown in {tzInfo.label}, {utcLabel})
              </span>
            </div>
          </div>
        )}

        {/* Broadcaster */}
        {broadcaster && (
          <div className="flex items-start gap-2.5">
            <Radio className="mt-0.5 h-4 w-4 shrink-0 text-blue-600 dark:text-blue-400" />
            <div>
              <span className="font-medium text-foreground">
                Local broadcaster:
              </span>{" "}
              {broadcaster}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
