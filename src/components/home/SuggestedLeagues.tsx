"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { ChevronRight, Globe, ChevronDown } from "lucide-react";
import {
  getLeaguesForCountry,
  COUNTRY_OPTIONS,
  DEFAULT_LEAGUES,
} from "@/lib/geo-leagues";
import { LEAGUES } from "@/lib/search-index";

export default function SuggestedLeagues() {
  const [countryCode, setCountryCode] = useState<string | null>(null);
  const [countryName, setCountryName] = useState<string | null>(null);
  const [showPicker, setShowPicker] = useState(false);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Check localStorage first
    const saved = localStorage.getItem("wl_country");
    if (saved) {
      const country = COUNTRY_OPTIONS.find((c) => c.code === saved);
      setCountryCode(saved);
      setCountryName(country?.name || saved);
      setLoading(false);
      return;
    }

    // Try IP-based detection via free API
    fetch("https://ipapi.co/json/", { signal: AbortSignal.timeout(3000) })
      .then((res) => res.json())
      .then((data) => {
        if (data.country_code) {
          setCountryCode(data.country_code);
          setCountryName(data.country_name || data.country_code);
          localStorage.setItem("wl_country", data.country_code);
        }
      })
      .catch(() => {
        // Silently fail — will show default leagues
      })
      .finally(() => setLoading(false));
  }, []);

  function selectCountry(code: string) {
    const country = COUNTRY_OPTIONS.find((c) => c.code === code);
    setCountryCode(code);
    setCountryName(country?.name || code);
    localStorage.setItem("wl_country", code);
    setShowPicker(false);
  }

  const suggestedSlugs = countryCode
    ? getLeaguesForCountry(countryCode)
    : DEFAULT_LEAGUES;

  const suggestedLeagues = suggestedSlugs
    .map((slug) => LEAGUES.find((l) => l.leagueSlug === slug))
    .filter(Boolean);

  if (loading) {
    return (
      <section className="border-t border-border">
        <div className="mx-auto max-w-6xl px-4 py-12">
          <div className="h-8 w-48 animate-pulse rounded-lg bg-muted" />
          <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3">
            {[1, 2, 3, 4, 5, 6].map((i) => (
              <div
                key={i}
                className="h-14 animate-pulse rounded-xl bg-muted"
              />
            ))}
          </div>
        </div>
      </section>
    );
  }

  return (
    <section className="border-t border-border">
      <div className="mx-auto max-w-6xl px-4 py-12">
        <div className="flex items-center justify-between">
          <h2 className="text-2xl font-bold">
            {countryName
              ? `Suggested for fans from ${countryName}`
              : "Popular leagues"}
          </h2>
          <div className="relative">
            <button
              onClick={() => setShowPicker(!showPicker)}
              className="flex items-center gap-1.5 rounded-lg border border-border px-3 py-1.5 text-sm text-muted-foreground transition-colors hover:border-brand hover:text-foreground"
            >
              <Globe className="h-4 w-4" />
              {countryName || "Select country"}
              <ChevronDown className="h-3.5 w-3.5" />
            </button>
            {showPicker && (
              <div className="absolute right-0 top-full z-50 mt-1 max-h-64 w-48 overflow-y-auto rounded-lg border border-border bg-background shadow-lg">
                {COUNTRY_OPTIONS.map((c) => (
                  <button
                    key={c.code}
                    onClick={() => selectCountry(c.code)}
                    className={`flex w-full items-center px-3 py-2 text-left text-sm hover:bg-muted ${
                      countryCode === c.code ? "bg-muted font-medium" : ""
                    }`}
                  >
                    {c.name}
                  </button>
                ))}
              </div>
            )}
          </div>
        </div>

        <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3">
          {suggestedLeagues.map((league) => (
            <Link
              key={league!.leagueSlug}
              href={league!.href}
              className="group flex items-center gap-3 rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
            >
              <span className="font-medium">{league!.label}</span>
              <span className="text-xs text-muted-foreground">
                {league!.subtitle}
              </span>
              <ChevronRight className="ml-auto h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
}
