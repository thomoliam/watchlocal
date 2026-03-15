import Link from "next/link";
import {
  MapPin,
  Tv,
  Users,
  Star,
  Search,
  ChevronRight,
  CheckCircle,
} from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import SearchBar from "@/components/search/SearchBar";
import SuggestedLeagues from "@/components/home/SuggestedLeagues";
import JsonLd from "@/components/seo/JsonLd";

const SAMPLE_LEAGUES = [
  { name: "Premier League", emoji: "⚽", slug: "premier-league" },
  { name: "NFL", emoji: "🏈", slug: "nfl" },
  { name: "NBA", emoji: "🏀", slug: "nba" },
  { name: "NRL", emoji: "🏉", slug: "nrl" },
  { name: "Formula 1", emoji: "🏎️", slug: "formula-1" },
  { name: "UFC", emoji: "🥊", slug: "ufc" },
  { name: "AFL", emoji: "🏉", slug: "afl" },
  { name: "La Liga", emoji: "⚽", slug: "la-liga" },
  { name: "Champions League", emoji: "⚽", slug: "champions-league" },
  { name: "Bundesliga", emoji: "⚽", slug: "bundesliga" },
  { name: "Serie A", emoji: "⚽", slug: "serie-a" },
  { name: "Six Nations", emoji: "🏉", slug: "six-nations" },
];

const SAMPLE_CITIES = [
  { name: "Bangkok", slug: "bangkok", country: "Thailand" },
  { name: "Bali", slug: "bali", country: "Indonesia" },
  { name: "London", slug: "london", country: "UK" },
  { name: "Dubai", slug: "dubai", country: "UAE" },
  { name: "Sydney", slug: "sydney", country: "Australia" },
  { name: "Barcelona", slug: "barcelona", country: "Spain" },
  { name: "New York", slug: "new-york", country: "USA" },
  { name: "Singapore", slug: "singapore", country: "Singapore" },
  { name: "Ho Chi Minh City", slug: "ho-chi-minh-city", country: "Vietnam" },
  { name: "Melbourne", slug: "melbourne", country: "Australia" },
  { name: "Amsterdam", slug: "amsterdam", country: "Netherlands" },
  { name: "Tokyo", slug: "tokyo", country: "Japan" },
];

const SAMPLE_VENUES = [
  {
    name: "The Sportsman Bar & Restaurant",
    city: "Bangkok",
    screens: 39,
    rating: 4.7,
    leagues: ["EPL", "NRL", "NFL", "F1"],
    slug: "the-sportsman-bangkok",
    description:
      "Two floors of sports with 8 HD projectors and 26+ LED TVs. Opens early for major events.",
  },
  {
    name: "The Kiwi Sports Pub",
    city: "Bangkok",
    screens: 14,
    rating: 4.5,
    leagues: ["NRL", "Rugby", "AFL"],
    slug: "the-kiwi-bangkok",
    description:
      "Kiwi-run pub with strong rugby coverage. Sunday carvery for 395 baht.",
  },
  {
    name: "Nirvana Sports Bar",
    city: "Bali",
    screens: 15,
    rating: 4.6,
    leagues: ["AFL", "NRL", "EPL", "F1"],
    slug: "nirvana-seminyak-bali",
    description:
      "Premium sports bar in Seminyak. Best venue in Bali for Aussie sports.",
  },
];

export default function Home() {
  return (
    <>
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "WebSite",
          name: "WatchLocal",
          url: "https://watchlocal.co",
          potentialAction: {
            "@type": "SearchAction",
            target:
              "https://watchlocal.co/search?q={search_term_string}",
            "query-input": "required name=search_term_string",
          },
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "Organization",
          name: "WatchLocal",
          url: "https://watchlocal.co",
          description:
            "Find the best sports bars and venues to watch live sport anywhere in the world.",
        }}
      />
      <Header />
      <main>
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
              <span className="text-brand">live sport</span>
              <br />
              anywhere in the world
            </h1>
            <p className="mx-auto mt-5 max-w-xl text-lg text-muted-foreground">
              Verified sports bars, local kick-off times, and fan communities in
              600+ cities worldwide.
            </p>
            <div className="mx-auto mt-10 max-w-2xl">
              <SearchBar size="large" autoFocus />
            </div>
            <div className="mt-8 flex flex-wrap items-center justify-center gap-2">
              <span className="text-sm text-muted-foreground">Popular:</span>
              {[
                { label: "EPL in Bangkok", href: "/watch/premier-league/bangkok" },
                { label: "NRL in Bali", href: "/watch/nrl/bali" },
                { label: "NFL in London", href: "/watch/nfl/london" },
                { label: "AFL in Ho Chi Minh City", href: "/watch/afl/ho-chi-minh-city" },
              ].map((term) => (
                <Link
                  key={term.href}
                  href={term.href}
                  className="rounded-full border border-border px-3 py-1 text-sm transition-colors hover:border-brand hover:bg-brand hover:text-white"
                >
                  {term.label}
                </Link>
              ))}
            </div>
          </div>
        </section>

        {/* Suggested for you (geo-detected) */}
        <SuggestedLeagues />

        {/* Leagues */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-2xl font-bold">Browse by league</h2>
            <p className="mt-1 text-muted-foreground">
              25 leagues across football, rugby, basketball, motorsport and
              more.
            </p>
            <div className="mt-8 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {SAMPLE_LEAGUES.map((league) => (
                <Link
                  key={league.slug}
                  href={`/watch/${league.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border bg-background p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <span className="text-2xl">{league.emoji}</span>
                  <span className="font-medium">{league.name}</span>
                  <ChevronRight className="ml-auto h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              ))}
            </div>
          </div>
        </section>

        {/* Cities */}
        <section className="border-t border-border">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-2xl font-bold">Popular cities</h2>
            <p className="mt-1 text-muted-foreground">
              Expat hubs and travel destinations with the best sports bar
              scenes.
            </p>
            <div className="mt-8 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4">
              {SAMPLE_CITIES.map((city) => (
                <Link
                  key={city.slug}
                  href={`/cities/${city.slug}`}
                  className="group flex items-center gap-3 rounded-xl border border-border p-4 transition-all hover:border-brand hover:shadow-md"
                >
                  <MapPin className="h-5 w-5 text-brand" />
                  <div>
                    <div className="font-medium">{city.name}</div>
                    <div className="text-xs text-muted-foreground">
                      {city.country}
                    </div>
                  </div>
                  <ChevronRight className="ml-auto h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
                </Link>
              ))}
            </div>
          </div>
        </section>

        {/* Featured Venues */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-2xl font-bold">Featured venues</h2>
            <p className="mt-1 text-muted-foreground">
              Verified sports bars loved by expats and travellers.
            </p>
            <div className="mt-8 grid gap-4 md:grid-cols-3">
              {SAMPLE_VENUES.map((venue) => (
                <Link
                  key={venue.slug}
                  href={`/venues/${venue.slug}`}
                  className="group block"
                >
                  <div className="rounded-xl border border-border bg-background p-5 transition-all hover:border-brand hover:shadow-md">
                    <div className="flex items-start justify-between">
                      <div>
                        <h3 className="font-semibold group-hover:text-brand">
                          {venue.name}
                        </h3>
                        <p className="mt-0.5 flex items-center gap-1 text-sm text-muted-foreground">
                          <MapPin className="h-3.5 w-3.5" />
                          {venue.city}
                        </p>
                      </div>
                      <span className="flex items-center gap-1 rounded-full bg-brand px-2 py-0.5 text-xs font-medium text-white">
                        <CheckCircle className="h-3 w-3" />
                        Verified
                      </span>
                    </div>
                    <p className="mt-3 text-sm leading-relaxed text-muted-foreground">
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
                </Link>
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
                  <div className="mx-auto flex h-14 w-14 items-center justify-center rounded-2xl bg-brand text-white">
                    <step.icon className="h-6 w-6" />
                  </div>
                  <h3 className="mt-4 text-lg font-semibold">{step.title}</h3>
                  <p className="mt-2 text-sm leading-relaxed text-muted-foreground">
                    {step.desc}
                  </p>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Social proof / stats */}
        <section className="border-t border-border bg-muted">
          <div className="mx-auto max-w-6xl px-4 py-16">
            <h2 className="text-center text-2xl font-bold">
              Trusted by sports fans worldwide
            </h2>
            <p className="mt-2 text-center text-muted-foreground">
              WatchLocal is the go-to resource for expats and travellers who
              never want to miss a match.
            </p>
            <div className="mt-10 grid grid-cols-2 gap-6 md:grid-cols-4">
              {[
                { value: "600+", label: "Cities indexed" },
                { value: "100+", label: "Verified venues" },
                { value: "25+", label: "Leagues covered" },
                { value: "50+", label: "Countries" },
              ].map((stat) => (
                <div key={stat.label} className="text-center">
                  <div className="text-4xl font-bold text-brand">
                    {stat.value}
                  </div>
                  <div className="mt-1 text-sm text-muted-foreground">
                    {stat.label}
                  </div>
                </div>
              ))}
            </div>
            <div className="mt-10 flex flex-wrap items-center justify-center gap-6 text-sm text-muted-foreground">
              <div className="flex items-center gap-2">
                <CheckCircle className="h-4 w-4 text-green-500" />
                Every venue verified for current season
              </div>
              <div className="flex items-center gap-2">
                <CheckCircle className="h-4 w-4 text-green-500" />
                Free to use, no sign-up required
              </div>
              <div className="flex items-center gap-2">
                <CheckCircle className="h-4 w-4 text-green-500" />
                Community-powered reviews
              </div>
            </div>
          </div>
        </section>

        {/* CTA */}
        <section className="border-t border-border">
          <div className="mx-auto max-w-6xl px-4 py-16 text-center">
            <h2 className="text-2xl font-bold">Know a great sports bar?</h2>
            <p className="mt-2 text-muted-foreground">
              Help fellow fans find the best spots. Submit a venue in under 2
              minutes.
            </p>
            <Link
              href="/submit-venue"
              className="mt-6 inline-block rounded-lg bg-brand px-8 py-3 text-sm font-medium text-white transition-opacity hover:opacity-90"
            >
              Submit a Venue
            </Link>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
