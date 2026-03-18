/**
 * Dynamic Open Graph image generator.
 *
 * Used by league/city pages, guide pages, city pages, and venue pages
 * to produce a 1200×630 social card when no hero image is available.
 *
 * Query params:
 *   title    — main heading (required)
 *   subtitle — secondary line (optional)
 *   badge    — pill in bottom-right, e.g. "20 venues" (optional)
 *   type     — "article" | "city" | "league" | "venue" (optional, future use)
 */
import { ImageResponse } from "next/og";
import { NextRequest } from "next/server";

export const runtime = "edge";

const W = 1200;
const H = 630;

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);

  const title =
    searchParams.get("title") || "Find Sports Bars Anywhere in the World";
  const subtitle =
    searchParams.get("subtitle") ||
    "Verified venues, live match schedules, and fan communities.";
  const badge = searchParams.get("badge") || "";

  // Scale font size down for very long titles
  const titleSize = title.length > 60 ? 42 : title.length > 40 ? 50 : 58;

  return new ImageResponse(
    (
      <div
        style={{
          background: "linear-gradient(140deg, #0f172a 0%, #1e3a5f 100%)",
          width: "100%",
          height: "100%",
          display: "flex",
          flexDirection: "column",
          justifyContent: "space-between",
          padding: "64px",
          fontFamily:
            "system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif",
        }}
      >
        {/* Brand */}
        <div style={{ display: "flex", alignItems: "center", gap: "10px" }}>
          <span
            style={{
              fontSize: 16,
              fontWeight: 700,
              color: "#93c5fd",
              letterSpacing: "0.12em",
              textTransform: "uppercase",
            }}
          >
            WatchLocal
          </span>
          <span
            style={{
              width: 4,
              height: 4,
              borderRadius: "50%",
              background: "#2563eb",
            }}
          />
          <span style={{ fontSize: 14, color: "#475569" }}>
            watchlocal.co
          </span>
        </div>

        {/* Main content */}
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            gap: "20px",
          }}
        >
          <div
            style={{
              fontSize: titleSize,
              fontWeight: 800,
              color: "#f8fafc",
              lineHeight: 1.1,
              letterSpacing: "-0.04em",
              maxWidth: "960px",
            }}
          >
            {title}
          </div>

          {subtitle && (
            <div
              style={{
                fontSize: 22,
                color: "#94a3b8",
                lineHeight: 1.5,
                maxWidth: "800px",
                fontWeight: 400,
              }}
            >
              {subtitle}
            </div>
          )}
        </div>

        {/* Footer */}
        <div
          style={{
            display: "flex",
            alignItems: "center",
            justifyContent: "space-between",
          }}
        >
          {/* Decorative sport indicators */}
          <div
            style={{
              display: "flex",
              gap: "8px",
              fontSize: 24,
              opacity: 0.4,
            }}
          >
            <span>⚽</span>
            <span>🏈</span>
            <span>🏉</span>
            <span>🏀</span>
            <span>🏏</span>
          </div>

          {badge && (
            <div
              style={{
                background: "#2563eb",
                color: "#fff",
                padding: "10px 28px",
                borderRadius: "9999px",
                fontSize: 18,
                fontWeight: 600,
                letterSpacing: "-0.01em",
              }}
            >
              {badge}
            </div>
          )}
        </div>
      </div>
    ),
    { width: W, height: H }
  );
}
