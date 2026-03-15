import type { Metadata } from "next";
import Link from "next/link";
import { Globe, Users, MapPin, Trophy, Heart, Mail } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

export const metadata: Metadata = {
  title: "About WatchLocal",
  description:
    "WatchLocal helps expats, travellers, and sports fans find the best bars and venues to watch live sport anywhere in the world.",
};

const STATS = [
  { label: "Cities indexed", value: "600+", icon: Globe },
  { label: "Verified venues", value: "100+", icon: MapPin },
  { label: "Leagues covered", value: "25+", icon: Trophy },
  { label: "Countries", value: "50+", icon: Users },
];

export default function AboutPage() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-4xl px-4 py-12">
        {/* Hero */}
        <section className="text-center">
          <h1 className="text-4xl font-bold md:text-5xl">
            Sports are better together
          </h1>
          <p className="mx-auto mt-4 max-w-2xl text-lg text-muted-foreground">
            WatchLocal helps expats, travellers, and sports fans find the best
            bars and venues to watch live sport anywhere in the world. No more
            googling &ldquo;where to watch Premier League in Bangkok&rdquo; and
            hoping for the best.
          </p>
        </section>

        {/* Stats */}
        <section className="mt-12 grid grid-cols-2 gap-4 md:grid-cols-4">
          {STATS.map((stat) => (
            <div
              key={stat.label}
              className="rounded-xl border border-border p-6 text-center"
            >
              <stat.icon className="mx-auto h-6 w-6 text-brand" />
              <div className="mt-2 text-3xl font-bold">{stat.value}</div>
              <div className="mt-1 text-sm text-muted-foreground">
                {stat.label}
              </div>
            </div>
          ))}
        </section>

        {/* Story */}
        <section className="mt-16">
          <h2 className="text-2xl font-bold">Why we built this</h2>
          <div className="mt-4 space-y-4 text-muted-foreground leading-relaxed">
            <p>
              If you&apos;ve ever moved abroad or travelled to a new city, you
              know the feeling: your team is playing, but you have no idea where
              to watch. You search online and find outdated blog posts, dead
              TripAdvisor links, and Reddit threads from 2019.
            </p>
            <p>
              WatchLocal exists to solve that. We&apos;re building the
              definitive guide to watching live sport around the world &mdash;
              verified venues, real screen counts, atmosphere details, and local
              fan communities. Every listing is checked to make sure it&apos;s
              still open and still showing the sport you care about.
            </p>
            <p>
              We started with the cities where expats actually live &mdash;
              Bangkok, Singapore, Tokyo, Bali, London, Dubai &mdash; and
              we&apos;re growing fast. If your city isn&apos;t covered yet, it
              will be soon.
            </p>
          </div>
        </section>

        {/* How it works */}
        <section className="mt-16">
          <h2 className="text-2xl font-bold">How it works</h2>
          <div className="mt-6 grid gap-6 md:grid-cols-3">
            <div className="rounded-xl border border-border p-6">
              <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                1
              </div>
              <h3 className="mt-3 font-semibold">Search your sport + city</h3>
              <p className="mt-2 text-sm text-muted-foreground">
                Pick a league and city, or search for a specific team. We cover
                football, rugby, NFL, NBA, F1, cricket, and more.
              </p>
            </div>
            <div className="rounded-xl border border-border p-6">
              <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                2
              </div>
              <h3 className="mt-3 font-semibold">Browse verified venues</h3>
              <p className="mt-2 text-sm text-muted-foreground">
                See screen counts, atmosphere ratings, food options, and which
                leagues each bar shows. Every venue is verified for the current
                season.
              </p>
            </div>
            <div className="rounded-xl border border-border p-6">
              <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-blue-50 text-lg dark:bg-blue-950">
                3
              </div>
              <h3 className="mt-3 font-semibold">Watch with fellow fans</h3>
              <p className="mt-2 text-sm text-muted-foreground">
                Find supporter groups, read reviews from other fans, and never
                miss a match in a new city again.
              </p>
            </div>
          </div>
        </section>

        {/* CTA */}
        <section className="mt-16 rounded-2xl bg-blue-50 p-8 text-center dark:bg-blue-950/40">
          <Heart className="mx-auto h-8 w-8 text-brand" />
          <h2 className="mt-4 text-2xl font-bold">Help us grow</h2>
          <p className="mx-auto mt-2 max-w-lg text-muted-foreground">
            WatchLocal is community-powered. If you know a great sports bar,
            submit it and help fellow fans find their next matchday spot.
          </p>
          <div className="mt-6 flex flex-wrap justify-center gap-3">
            <Link
              href="/submit-venue"
              className="rounded-lg bg-brand px-6 py-2.5 text-sm font-medium text-white transition-colors hover:bg-blue-700"
            >
              Submit a venue
            </Link>
            <a
              href="mailto:hello@watchlocal.co"
              className="flex items-center gap-2 rounded-lg border border-border px-6 py-2.5 text-sm font-medium transition-colors hover:border-brand"
            >
              <Mail className="h-4 w-4" />
              Get in touch
            </a>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
