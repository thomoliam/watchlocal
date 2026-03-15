"use client";

import { useState } from "react";
import {
  MapPin,
  Tv,
  Users,
  Star,
  Search,
  ChevronRight,
  Sun,
  Moon,
  Check,
} from "lucide-react";

const COLOR_OPTIONS = [
  { name: "Ocean", value: "#2563eb", light: "#3b82f6", dark: "#1d4ed8" },
  { name: "Navy", value: "#1e40af", light: "#2563eb", dark: "#1e3a8a" },
  { name: "Indigo", value: "#4f46e5", light: "#6366f1", dark: "#4338ca" },
  { name: "Sky", value: "#0284c7", light: "#0ea5e9", dark: "#0369a1" },
  { name: "Teal", value: "#0d9488", light: "#14b8a6", dark: "#0f766e" },
  { name: "Cobalt", value: "#2554d4", light: "#4672e8", dark: "#1a3fa0" },
  { name: "Slate Blue", value: "#475bd6", light: "#6272e8", dark: "#3548b0" },
  { name: "Deep Blue", value: "#1a3fa0", light: "#2554d4", dark: "#142f78" },
];

const SAMPLE_LEAGUES = [
  { name: "Premier League", sport: "football", emoji: "⚽" },
  { name: "NFL", sport: "american-football", emoji: "🏈" },
  { name: "NBA", sport: "basketball", emoji: "🏀" },
  { name: "NRL", sport: "rugby-league", emoji: "🏉" },
  { name: "F1", sport: "motorsport", emoji: "🏎️" },
  { name: "UFC", sport: "mma", emoji: "🥊" },
  { name: "AFL", sport: "australian-football", emoji: "🏉" },
  { name: "La Liga", sport: "football", emoji: "⚽" },
];

const SAMPLE_CITIES = [
  "Bangkok",
  "Bali",
  "London",
  "Dubai",
  "Sydney",
  "Barcelona",
  "New York",
  "Singapore",
];

const SAMPLE_VENUES = [
  {
    name: "The Sportsman Bar & Restaurant",
    city: "Bangkok",
    screens: 39,
    verified: true,
    rating: 4.7,
    leagues: ["EPL", "NRL", "NFL", "F1"],
    description:
      "Two floors of sports with 8 HD projectors and 26+ LED TVs. Opens early for major events.",
  },
  {
    name: "The Kiwi Sports Pub",
    city: "Bangkok",
    screens: 14,
    verified: true,
    rating: 4.5,
    leagues: ["NRL", "Rugby", "AFL"],
    description:
      "Kiwi-run pub with strong rugby coverage. Sunday carvery for 395 baht.",
  },
  {
    name: "Nirvana Sports Bar",
    city: "Bali",
    screens: 15,
    verified: true,
    rating: 4.6,
    leagues: ["AFL", "NRL", "EPL", "F1"],
    description:
      "Premium sports bar in Seminyak. Best venue in Bali for Aussie sports.",
  },
];

export default function Home() {
  const [selectedColor, setSelectedColor] = useState(COLOR_OPTIONS[0]);
  const [darkMode, setDarkMode] = useState(false);

  const brandStyle = {
    "--brand": selectedColor.value,
    "--brand-light": selectedColor.light,
    "--brand-dark": selectedColor.dark,
  } as React.CSSProperties;

  return (
    <div className={darkMode ? "dark" : ""}>
      <div
        style={brandStyle}
        className="min-h-screen bg-background text-foreground transition-colors duration-300"
      >
        {/* Color Picker Bar */}
        <div className="sticky top-0 z-50 border-b border-border bg-muted/80 backdrop-blur-sm">
          <div className="mx-auto flex max-w-6xl items-center justify-between px-4 py-3">
            <div className="flex items-center gap-3">
              <span className="text-sm font-medium text-muted-foreground">
                Brand colour:
              </span>
              <div className="flex gap-2">
                {COLOR_OPTIONS.map((color) => (
                  <button
                    key={color.name}
                    onClick={() => setSelectedColor(color)}
                    className="group relative h-8 w-8 rounded-full border-2 transition-transform hover:scale-110"
                    style={{
                      backgroundColor: color.value,
                      borderColor:
                        selectedColor.name === color.name
                          ? darkMode
                            ? "#fff"
                            : "#000"
                          : "transparent",
                    }}
                    title={color.name}
                  >
                    {selectedColor.name === color.name && (
                      <Check className="absolute inset-0 m-auto h-4 w-4 text-white" />
                    )}
                  </button>
                ))}
              </div>
              <span className="ml-2 text-xs text-muted-foreground">
                {selectedColor.name}
              </span>
            </div>
            <button
              onClick={() => setDarkMode(!darkMode)}
              className="flex items-center gap-2 rounded-lg border border-border px-3 py-1.5 text-sm transition-colors hover:bg-muted"
            >
              {darkMode ? (
                <Sun className="h-4 w-4" />
              ) : (
                <Moon className="h-4 w-4" />
              )}
              {darkMode ? "Light" : "Dark"}
            </button>
          </div>
        </div>

        {/* Header */}
        <header className="border-b border-border">
          <div className="mx-auto flex max-w-6xl items-center justify-between px-4 py-4">
            <div className="flex items-center gap-2">
              <div
                className="flex h-9 w-9 items-center justify-center rounded-lg text-white"
                style={{ backgroundColor: "var(--brand)" }}
              >
                <Tv className="h-5 w-5" />
              </div>
              <span className="text-xl font-bold tracking-tight">
                WatchLocal
              </span>
            </div>
            <nav className="hidden items-center gap-6 text-sm md:flex">
              <span className="text-muted-foreground hover:text-foreground cursor-pointer transition-colors">
                Leagues
              </span>
              <span className="text-muted-foreground hover:text-foreground cursor-pointer transition-colors">
                Cities
              </span>
              <span className="text-muted-foreground hover:text-foreground cursor-pointer transition-colors">
                Submit a Venue
              </span>
            </nav>
          </div>
        </header>

        {/* Hero */}
        <section className="relative overflow-hidden">
          <div
            className="absolute inset-0 opacity-[0.03]"
            style={{
              backgroundImage: `radial-gradient(circle at 1px 1px, var(--brand) 1px, transparent 0)`,
              backgroundSize: "32px 32px",
            }}
          />
          <div className="relative mx-auto max-w-6xl px-4 py-20 text-center md:py-28">
            <h1 className="mx-auto max-w-3xl text-4xl font-bold tracking-tight md:text-6xl">
              Find the best place to watch{" "}
              <span style={{ color: "var(--brand)" }}>live sport</span>
              <br />
              anywhere in the world
            </h1>
            <p className="mx-auto mt-5 max-w-xl text-lg text-muted-foreground">
              Verified sports bars, local kick-off times, and fan communities in
              60+ cities worldwide.
            </p>

            {/* Search Bar */}
            <div className="mx-auto mt-10 max-w-2xl">
              <div className="flex items-center rounded-xl border border-border bg-background p-2 shadow-lg">
                <Search className="ml-3 h-5 w-5 text-muted-foreground" />
                <input
                  type="text"
                  placeholder='Try "Premier League in Bangkok" or "NFL bars in London"'
                  className="flex-1 bg-transparent px-3 py-3 text-base outline-none placeholder:text-muted-foreground"
                />
                <button
                  className="rounded-lg px-6 py-3 text-sm font-medium text-white transition-opacity hover:opacity-90"
                  style={{ backgroundColor: "var(--brand)" }}
                >
                  Search
                </button>
              </div>
            </div>

            {/* Quick Links */}
            <div className="mt-8 flex flex-wrap items-center justify-center gap-2">
              <span className="text-sm text-muted-foreground">Popular:</span>
              {[
                "EPL in Bangkok",
                "NRL in Bali",
                "NFL in London",
                "AFL in Ho Chi Minh City",
              ].map((term) => (
                <span
                  key={term}
                  className="cursor-pointer rounded-full border border-border px-3 py-1 text-sm transition-colors hover:border-transparent hover:text-white"
                  style={
                    {
                      "--hover-bg": "var(--brand)",
                    } as React.CSSProperties
                  }
                  onMouseEnter={(e) =>
                    (e.currentTarget.style.backgroundColor = "var(--brand)")
                  }
                  onMouseLeave={(e) =>
                    (e.currentTarget.style.backgroundColor = "transparent")
                  }
                >
                  {term}
                </span>
              ))}
            </div>
          </div>
        </section>

        {/* Leagues Grid */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-2xl font-bold">Browse by league</h2>
            <p className="mt-1 text-muted-foreground">
              25 leagues across football, rugby, basketball, motorsport and
              more.
            </p>
            <div className="mt-8 grid grid-cols-2 gap-3 sm:grid-cols-4">
              {SAMPLE_LEAGUES.map((league) => (
                <div
                  key={league.name}
                  className="group flex cursor-pointer items-center gap-3 rounded-xl border border-border bg-background p-4 transition-all hover:border-transparent hover:shadow-md"
                  style={
                    {
                      "--hover-border": "var(--brand)",
                    } as React.CSSProperties
                  }
                  onMouseEnter={(e) =>
                    (e.currentTarget.style.borderColor = "var(--brand)")
                  }
                  onMouseLeave={(e) =>
                    (e.currentTarget.style.borderColor = "")
                  }
                >
                  <span className="text-2xl">{league.emoji}</span>
                  <div>
                    <div className="font-medium">{league.name}</div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Cities Grid */}
        <section className="border-t border-border">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-2xl font-bold">Popular cities</h2>
            <p className="mt-1 text-muted-foreground">
              Expat hubs and travel destinations with the best sports bar
              scenes.
            </p>
            <div className="mt-8 grid grid-cols-2 gap-3 sm:grid-cols-4">
              {SAMPLE_CITIES.map((city) => (
                <div
                  key={city}
                  className="group flex cursor-pointer items-center gap-3 rounded-xl border border-border p-4 transition-all hover:shadow-md"
                  onMouseEnter={(e) =>
                    (e.currentTarget.style.borderColor = "var(--brand)")
                  }
                  onMouseLeave={(e) =>
                    (e.currentTarget.style.borderColor = "")
                  }
                >
                  <MapPin
                    className="h-5 w-5"
                    style={{ color: "var(--brand)" }}
                  />
                  <span className="font-medium">{city}</span>
                  <ChevronRight className="ml-auto h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Sample Venue Cards */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-2xl font-bold">Featured venues</h2>
            <p className="mt-1 text-muted-foreground">
              Verified sports bars loved by expats and travellers.
            </p>
            <div className="mt-8 grid gap-4 md:grid-cols-3">
              {SAMPLE_VENUES.map((venue) => (
                <div
                  key={venue.name}
                  className="group cursor-pointer rounded-xl border border-border bg-background p-5 transition-all hover:shadow-md"
                  onMouseEnter={(e) =>
                    (e.currentTarget.style.borderColor = "var(--brand)")
                  }
                  onMouseLeave={(e) =>
                    (e.currentTarget.style.borderColor = "")
                  }
                >
                  <div className="flex items-start justify-between">
                    <div>
                      <h3 className="font-semibold">{venue.name}</h3>
                      <p className="mt-0.5 flex items-center gap-1 text-sm text-muted-foreground">
                        <MapPin className="h-3.5 w-3.5" />
                        {venue.city}
                      </p>
                    </div>
                    {venue.verified && (
                      <span
                        className="rounded-full px-2 py-0.5 text-xs font-medium text-white"
                        style={{ backgroundColor: "var(--brand)" }}
                      >
                        Verified
                      </span>
                    )}
                  </div>
                  <p className="mt-3 text-sm text-muted-foreground leading-relaxed">
                    {venue.description}
                  </p>
                  <div className="mt-4 flex items-center gap-4 text-sm">
                    <span className="flex items-center gap-1 text-muted-foreground">
                      <Tv className="h-3.5 w-3.5" />
                      {venue.screens} screens
                    </span>
                    <span className="flex items-center gap-1 text-muted-foreground">
                      <Star className="h-3.5 w-3.5 fill-amber-400 text-amber-400" />
                      {venue.rating}
                    </span>
                  </div>
                  <div className="mt-3 flex flex-wrap gap-1.5">
                    {venue.leagues.map((l) => (
                      <span
                        key={l}
                        className="rounded-md border border-border px-2 py-0.5 text-xs text-muted-foreground"
                      >
                        {l}
                      </span>
                    ))}
                  </div>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* How It Works */}
        <section className="border-t border-border">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-center text-2xl font-bold">How it works</h2>
            <div className="mt-10 grid gap-8 md:grid-cols-3">
              {[
                {
                  icon: Search,
                  title: "Search",
                  desc: "Pick your league and city. We'll show you every venue that screens your sport.",
                },
                {
                  icon: MapPin,
                  title: "Discover",
                  desc: "Browse verified venues with screen counts, atmosphere ratings, and real reviews.",
                },
                {
                  icon: Users,
                  title: "Connect",
                  desc: "Find local fan communities, supporters groups, and match-day meetups.",
                },
              ].map((step) => (
                <div key={step.title} className="text-center">
                  <div
                    className="mx-auto flex h-14 w-14 items-center justify-center rounded-2xl text-white"
                    style={{ backgroundColor: "var(--brand)" }}
                  >
                    <step.icon className="h-6 w-6" />
                  </div>
                  <h3 className="mt-4 text-lg font-semibold">{step.title}</h3>
                  <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
                    {step.desc}
                  </p>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* CTA */}
        <section className="border-t border-border">
          <div
            className="mx-auto max-w-6xl px-4 py-16 text-center"
          >
            <h2 className="text-2xl font-bold">Know a great sports bar?</h2>
            <p className="mt-2 text-muted-foreground">
              Help fellow fans find the best spots. Submit a venue in under 2
              minutes.
            </p>
            <button
              className="mt-6 rounded-lg px-8 py-3 text-sm font-medium text-white transition-opacity hover:opacity-90"
              style={{ backgroundColor: "var(--brand)" }}
            >
              Submit a Venue
            </button>
          </div>
        </section>

        {/* Footer */}
        <footer className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-10">
            <div className="flex items-center gap-2">
              <div
                className="flex h-7 w-7 items-center justify-center rounded-md text-white"
                style={{ backgroundColor: "var(--brand)" }}
              >
                <Tv className="h-4 w-4" />
              </div>
              <span className="font-bold">WatchLocal</span>
            </div>
            <p className="mt-3 max-w-md text-sm text-muted-foreground">
              The global directory for sports bars and live sport venues. Built
              for expats, travellers, and fans who never want to miss a game.
            </p>
            <div className="mt-6 border-t border-border pt-6 text-xs text-muted-foreground">
              &copy; {new Date().getFullYear()} WatchLocal. All rights reserved.
            </div>
          </div>
        </footer>
      </div>
    </div>
  );
}
