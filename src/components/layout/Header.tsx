"use client";

import Link from "next/link";
import { Tv, Menu, X } from "lucide-react";
import { useState } from "react";
import SearchBar from "@/components/search/SearchBar";
import ThemeToggle from "@/components/ThemeToggle";

export default function Header() {
  const [mobileOpen, setMobileOpen] = useState(false);

  return (
    <header className="sticky top-0 z-40 border-b border-border bg-background/80 backdrop-blur-sm">
      <div className="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3">
        {/* Logo */}
        <Link href="/" className="flex shrink-0 items-center gap-2">
          <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-brand text-white">
            <Tv className="h-4 w-4" />
          </div>
          <span className="text-lg font-bold tracking-tight">WatchLocal</span>
        </Link>

        {/* Search — desktop */}
        <div className="hidden max-w-md flex-1 md:block">
          <SearchBar
            size="default"
            placeholder="Search leagues, teams, or cities..."
          />
        </div>

        {/* Nav — desktop */}
        <nav className="hidden items-center gap-5 text-sm md:flex">
          <Link
            href="/watch/premier-league"
            className="text-muted-foreground transition-colors hover:text-foreground"
          >
            Leagues
          </Link>
          <Link
            href="/cities/bangkok"
            className="text-muted-foreground transition-colors hover:text-foreground"
          >
            Cities
          </Link>
          <Link
            href="/events"
            className="text-muted-foreground transition-colors hover:text-foreground"
          >
            Events
          </Link>
          <Link
            href="/guides"
            className="text-muted-foreground transition-colors hover:text-foreground"
          >
            Guides
          </Link>
          <Link
            href="/about"
            className="text-muted-foreground transition-colors hover:text-foreground"
          >
            About
          </Link>
          <Link
            href="/submit-venue"
            className="rounded-lg bg-brand px-4 py-2 text-white transition-opacity hover:opacity-90"
          >
            Submit Venue
          </Link>
          <ThemeToggle />
        </nav>

        {/* Theme toggle + mobile menu button */}
        <div className="flex items-center gap-1 md:hidden">
          <ThemeToggle />
          <button
            onClick={() => setMobileOpen(!mobileOpen)}
          >
            {mobileOpen ? <X className="h-5 w-5" /> : <Menu className="h-5 w-5" />}
          </button>
        </div>
      </div>

      {/* Mobile menu */}
      {mobileOpen && (
        <div className="border-t border-border px-4 py-4 md:hidden">
          <div className="mb-4">
            <SearchBar
              size="default"
              placeholder="Search..."
            />
          </div>
          <nav className="flex flex-col gap-3 text-sm">
            <Link
              href="/watch/premier-league"
              className="text-muted-foreground"
              onClick={() => setMobileOpen(false)}
            >
              Leagues
            </Link>
            <Link
              href="/cities/bangkok"
              className="text-muted-foreground"
              onClick={() => setMobileOpen(false)}
            >
              Cities
            </Link>
            <Link
              href="/events"
              className="text-muted-foreground"
              onClick={() => setMobileOpen(false)}
            >
              Events
            </Link>
            <Link
              href="/guides"
              className="text-muted-foreground"
              onClick={() => setMobileOpen(false)}
            >
              Guides
            </Link>
            <Link
              href="/about"
              className="text-muted-foreground"
              onClick={() => setMobileOpen(false)}
            >
              About
            </Link>
            <Link
              href="/submit-venue"
              className="text-muted-foreground"
              onClick={() => setMobileOpen(false)}
            >
              Submit a Venue
            </Link>
          </nav>
        </div>
      )}
    </header>
  );
}
