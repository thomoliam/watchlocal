export const SITE_NAME = "WatchLocal";
export const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";
export const SITE_DESCRIPTION = "Find the best bars and venues to watch live sport anywhere in the world.";

export const SPORT_ICONS: Record<string, string> = {
  football: "⚽",
  "american-football": "🏈",
  basketball: "🏀",
  "rugby-league": "🏉",
  "rugby-union": "🏉",
  "australian-football": "🏉",
  cricket: "🏏",
  motorsport: "🏎️",
  mma: "🥊",
  baseball: "⚾",
  "ice-hockey": "🏒",
  boxing: "🥊",
  tennis: "🎾",
};

export const PRICE_LABELS: Record<string, string> = {
  $: "Budget-friendly",
  $$: "Mid-range",
  $$$: "Upscale",
};

export const ATMOSPHERE_LABELS: Record<string, string> = {
  lively: "Lively & loud",
  relaxed: "Relaxed & chill",
  family: "Family-friendly",
  rowdy: "Rowdy & passionate",
};
