import type { Metadata } from "next";

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";

export const metadata: Metadata = {
  title: "Submit a Venue | WatchLocal",
  description:
    "Know a great sports bar? Submit it to WatchLocal and help expats and travellers find the best places to watch live sport.",
  openGraph: {
    title: "Submit a Venue | WatchLocal",
    description:
      "Know a great sports bar? Submit it to WatchLocal and help expats and travellers find the best places to watch live sport.",
    url: `${SITE_URL}/submit-venue`,
    type: "website",
  },
  alternates: {
    canonical: `${SITE_URL}/submit-venue`,
  },
};

export default function SubmitVenueLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return children;
}
