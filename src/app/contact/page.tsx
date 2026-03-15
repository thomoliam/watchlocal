import type { Metadata } from "next";
import Link from "next/link";
import { Mail, MapPin, MessageSquare } from "lucide-react";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";

export const metadata: Metadata = {
  title: "Contact Us",
  description: "Get in touch with the WatchLocal team — venue submissions, partnerships, and general enquiries.",
};

export default function ContactPage() {
  return (
    <>
      <Header />
      <main className="mx-auto max-w-3xl px-4 py-12">
        <h1 className="text-3xl font-bold">Get in touch</h1>
        <p className="mt-3 text-muted-foreground">
          Whether you want to submit a venue, report an issue, or talk about
          partnerships, we&apos;d love to hear from you.
        </p>

        <div className="mt-10 grid gap-6 sm:grid-cols-2">
          <div className="rounded-xl border border-border p-6">
            <Mail className="h-6 w-6 text-brand" />
            <h2 className="mt-3 font-semibold">General enquiries</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Questions, feedback, or partnership requests.
            </p>
            <a
              href="mailto:hello@watchlocal.co"
              className="mt-3 inline-block text-sm font-medium text-brand hover:underline"
            >
              hello@watchlocal.co
            </a>
          </div>

          <div className="rounded-xl border border-border p-6">
            <MapPin className="h-6 w-6 text-brand" />
            <h2 className="mt-3 font-semibold">Submit a venue</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Know a sports bar we should list? Add it in 2 minutes.
            </p>
            <Link
              href="/submit-venue"
              className="mt-3 inline-block text-sm font-medium text-brand hover:underline"
            >
              Submit a venue
            </Link>
          </div>

          <div className="rounded-xl border border-border p-6">
            <MessageSquare className="h-6 w-6 text-brand" />
            <h2 className="mt-3 font-semibold">Venue owners</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Claim your listing, update details, or explore premium placement.
            </p>
            <a
              href="mailto:venues@watchlocal.co"
              className="mt-3 inline-block text-sm font-medium text-brand hover:underline"
            >
              venues@watchlocal.co
            </a>
          </div>

          <div className="rounded-xl border border-border p-6">
            <Mail className="h-6 w-6 text-brand" />
            <h2 className="mt-3 font-semibold">Press & media</h2>
            <p className="mt-1 text-sm text-muted-foreground">
              Writing a story about sports bar culture or expat life?
            </p>
            <a
              href="mailto:hello@watchlocal.co"
              className="mt-3 inline-block text-sm font-medium text-brand hover:underline"
            >
              hello@watchlocal.co
            </a>
          </div>
        </div>
      </main>
      <Footer />
    </>
  );
}
