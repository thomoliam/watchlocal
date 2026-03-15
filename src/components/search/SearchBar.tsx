"use client";

import { useState, useRef, useEffect, useMemo } from "react";
import { useRouter } from "next/navigation";
import Fuse from "fuse.js";
import { Search, MapPin, Trophy, Tv, ArrowRight } from "lucide-react";
import { LEAGUES, type SearchItem } from "@/lib/search-index";
import { createClient } from "@/lib/supabase/client";

const ICON_MAP = {
  league: Trophy,
  team: Trophy,
  city: MapPin,
  combo: Tv,
};

interface SearchBarProps {
  size?: "large" | "default";
  placeholder?: string;
  autoFocus?: boolean;
}

export default function SearchBar({
  size = "default",
  placeholder = 'Try "Premier League in Bangkok" or "NFL bars in London"',
  autoFocus = false,
}: SearchBarProps) {
  const router = useRouter();
  const [query, setQuery] = useState("");
  const [results, setResults] = useState<SearchItem[]>([]);
  const [isOpen, setIsOpen] = useState(false);
  const [activeIndex, setActiveIndex] = useState(-1);
  const [searchIndex, setSearchIndex] = useState<SearchItem[]>([...LEAGUES]);
  const inputRef = useRef<HTMLInputElement>(null);
  const containerRef = useRef<HTMLDivElement>(null);

  // Fetch cities from DB on mount
  useEffect(() => {
    async function loadCities() {
      const supabase = createClient();
      const { data } = await supabase
        .from("cities")
        .select("name, slug, country")
        .order("name");
      if (!data) return;
      const cityItems: SearchItem[] = data.map((c) => ({
        type: "city" as const,
        label: c.name,
        subtitle: c.country,
        href: `/cities/${c.slug}`,
        aliases: [c.name.toLowerCase(), c.slug],
        citySlug: c.slug,
      }));
      setSearchIndex([...LEAGUES, ...cityItems]);
    }
    loadCities();
  }, []);

  const fuse = useMemo(
    () =>
      new Fuse(searchIndex, {
        keys: [
          { name: "label", weight: 0.4 },
          { name: "aliases", weight: 0.5 },
          { name: "subtitle", weight: 0.1 },
        ],
        threshold: 0.35,
        distance: 100,
        minMatchCharLength: 2,
        includeScore: true,
      }),
    [searchIndex]
  );

  // Try to parse compound queries like "EPL in Bangkok"
  function parseCompoundQuery(q: string): SearchItem | null {
    const normalized = q.toLowerCase().trim();
    const inMatch = normalized.match(/^(.+?)\s+in\s+(.+)$/);
    const barsMatch = normalized.match(/^(.+?)\s+bars?\s+(?:in\s+)?(.+)$/);

    const match = inMatch || barsMatch;
    if (!match) return null;

    const [, leaguePart, cityPart] = match;

    const leagueResults = new Fuse(
      searchIndex.filter((i) => i.type === "league"),
      { keys: ["label", "aliases"], threshold: 0.4 }
    ).search(leaguePart);

    const cityResults = new Fuse(
      searchIndex.filter((i) => i.type === "city"),
      { keys: ["label", "aliases"], threshold: 0.4 }
    ).search(cityPart);

    if (leagueResults.length > 0 && cityResults.length > 0) {
      const league = leagueResults[0].item;
      const city = cityResults[0].item;
      return {
        type: "combo",
        label: `${league.label} in ${city.label}`,
        subtitle: `Sports bars in ${city.label}`,
        href: `/watch/${league.leagueSlug}/${city.citySlug}`,
        aliases: [],
        leagueSlug: league.leagueSlug,
        citySlug: city.citySlug,
      };
    }

    return null;
  }

  useEffect(() => {
    if (query.length < 2) {
      setResults([]);
      setIsOpen(false);
      return;
    }

    // First try compound query parsing
    const compound = parseCompoundQuery(query);
    let searchResults: SearchItem[] = [];

    if (compound) {
      searchResults = [compound];
    }

    // Then add fuzzy results
    const fuseResults = fuse.search(query, { limit: 8 });
    const fuseItems = fuseResults.map((r) => r.item);

    // Deduplicate
    const seen = new Set(searchResults.map((r) => r.href));
    for (const item of fuseItems) {
      if (!seen.has(item.href)) {
        searchResults.push(item);
        seen.add(item.href);
      }
    }

    setResults(searchResults.slice(0, 8));
    setIsOpen(searchResults.length > 0);
    setActiveIndex(-1);
  }, [query, fuse]);

  // Close on click outside
  useEffect(() => {
    function handleClick(e: MouseEvent) {
      if (
        containerRef.current &&
        !containerRef.current.contains(e.target as Node)
      ) {
        setIsOpen(false);
      }
    }
    document.addEventListener("mousedown", handleClick);
    return () => document.removeEventListener("mousedown", handleClick);
  }, []);

  function navigate(item: SearchItem) {
    setIsOpen(false);
    setQuery("");
    router.push(item.href);
  }

  function handleSubmit() {
    if (activeIndex >= 0 && results[activeIndex]) {
      navigate(results[activeIndex]);
    } else if (results.length > 0) {
      navigate(results[0]);
    } else {
      // Try compound query parsing as a fallback
      const compound = parseCompoundQuery(query);
      if (compound) {
        navigate(compound);
      }
    }
  }

  function handleKeyDown(e: React.KeyboardEvent) {
    if (e.key === "Enter") {
      e.preventDefault();
      handleSubmit();
      return;
    }

    if (!isOpen) return;

    if (e.key === "ArrowDown") {
      e.preventDefault();
      setActiveIndex((i) => Math.min(i + 1, results.length - 1));
    } else if (e.key === "ArrowUp") {
      e.preventDefault();
      setActiveIndex((i) => Math.max(i - 1, 0));
    } else if (e.key === "Escape") {
      setIsOpen(false);
    }
  }

  const isLarge = size === "large";

  return (
    <div ref={containerRef} className="relative w-full">
      <div
        className={`flex items-center rounded-xl border border-border bg-background shadow-lg ${
          isLarge ? "p-2" : "p-1.5"
        } ${isOpen ? "rounded-b-none border-b-0" : ""}`}
      >
        <Search
          className={`ml-3 text-muted-foreground ${
            isLarge ? "h-5 w-5" : "h-4 w-4"
          }`}
        />
        <input
          ref={inputRef}
          type="text"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          onFocus={() => query.length >= 2 && results.length > 0 && setIsOpen(true)}
          onKeyDown={handleKeyDown}
          placeholder={placeholder}
          autoFocus={autoFocus}
          className={`flex-1 bg-transparent outline-none placeholder:text-muted-foreground ${
            isLarge ? "px-3 py-3 text-base" : "px-3 py-2 text-sm"
          }`}
        />
        <button
          type="button"
          onClick={handleSubmit}
          className={`rounded-lg bg-brand font-medium text-white transition-opacity hover:opacity-90 ${
            isLarge ? "px-6 py-3 text-sm" : "px-4 py-2 text-sm"
          }`}
        >
          Search
        </button>
      </div>

      {/* Results dropdown */}
      {isOpen && results.length > 0 && (
        <div className="absolute left-0 right-0 z-50 rounded-b-xl border border-t-0 border-border bg-background shadow-lg">
          {results.map((item, i) => {
            const Icon = ICON_MAP[item.type];
            return (
              <button
                type="button"
                key={item.href + i}
                onClick={() => navigate(item)}
                onMouseEnter={() => setActiveIndex(i)}
                className={`flex w-full items-center gap-3 px-4 py-3 text-left text-sm transition-colors ${
                  i === activeIndex ? "bg-muted" : ""
                } ${i === results.length - 1 ? "rounded-b-xl" : ""}`}
              >
                <Icon className="h-4 w-4 text-muted-foreground" />
                <div className="flex-1">
                  <div className="font-medium">{item.label}</div>
                  {item.subtitle && (
                    <div className="text-xs text-muted-foreground">
                      {item.subtitle}
                    </div>
                  )}
                </div>
                <ArrowRight className="h-3.5 w-3.5 text-muted-foreground opacity-0 group-hover:opacity-100" />
              </button>
            );
          })}
        </div>
      )}
    </div>
  );
}
