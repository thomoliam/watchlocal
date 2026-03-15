import Link from "next/link";
import { Tv } from "lucide-react";
import {
  FOOTER_SPORTS,
  FOOTER_LEAGUES,
  FOOTER_CITIES,
} from "@/lib/search-index";

export default function Footer() {
  return (
    <footer className="border-t border-border bg-foreground text-background">
      <div className="mx-auto max-w-6xl px-4 py-12">
        <div className="grid grid-cols-2 gap-8 md:grid-cols-5">
          {/* Sports */}
          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider opacity-60">
              Sports
            </h3>
            <ul className="space-y-2.5">
              {FOOTER_SPORTS.map((item) => (
                <li key={item.href}>
                  <Link
                    href={item.href}
                    className="text-sm opacity-70 transition-opacity hover:opacity-100"
                  >
                    {item.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Leagues */}
          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider opacity-60">
              Competitions
            </h3>
            <ul className="space-y-2.5">
              {FOOTER_LEAGUES.map((item) => (
                <li key={item.href}>
                  <Link
                    href={item.href}
                    className="text-sm opacity-70 transition-opacity hover:opacity-100"
                  >
                    {item.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Cities */}
          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider opacity-60">
              Locations
            </h3>
            <ul className="space-y-2.5">
              {FOOTER_CITIES.map((item) => (
                <li key={item.href}>
                  <Link
                    href={item.href}
                    className="text-sm opacity-70 transition-opacity hover:opacity-100"
                  >
                    {item.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* WatchLocal */}
          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider opacity-60">
              WatchLocal
            </h3>
            <ul className="space-y-2.5">
              <li>
                <Link
                  href="/about"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  About us
                </Link>
              </li>
              <li>
                <Link
                  href="/submit-venue"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  Submit a venue
                </Link>
              </li>
              <li>
                <Link
                  href="/guides"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  Guides
                </Link>
              </li>
              <li>
                <Link
                  href="/contact"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  Contact
                </Link>
              </li>
            </ul>
          </div>

          {/* Other */}
          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider opacity-60">
              Other
            </h3>
            <ul className="space-y-2.5">
              <li>
                <Link
                  href="/submit-venue"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  Pub sign up
                </Link>
              </li>
              <li>
                <Link
                  href="/privacy"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  Privacy Policy
                </Link>
              </li>
              <li>
                <Link
                  href="/terms"
                  className="text-sm opacity-70 transition-opacity hover:opacity-100"
                >
                  Terms of Service
                </Link>
              </li>
            </ul>
          </div>
        </div>

        {/* Bottom bar */}
        <div className="mt-10 flex flex-col items-center justify-between gap-4 border-t border-background/10 pt-8 md:flex-row">
          <div className="flex items-center gap-2">
            <div className="flex h-7 w-7 items-center justify-center rounded-md bg-brand text-white">
              <Tv className="h-4 w-4" />
            </div>
            <span className="font-bold">WatchLocal</span>
          </div>
          <p className="text-center text-xs opacity-50">
            &copy; {new Date().getFullYear()} WatchLocal. Find the best place to
            watch live sport anywhere in the world.
          </p>
        </div>
      </div>
    </footer>
  );
}
