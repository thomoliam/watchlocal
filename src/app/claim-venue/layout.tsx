import type { Metadata } from "next";

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";

export const metadata: Metadata = {
  title: "Claim Your Venue | WatchLocal",
  description:
    "Own or manage a sports bar on WatchLocal? Claim your listing to update details, add photos, and connect with fans.",
  openGraph: {
    title: "Claim Your Venue | WatchLocal",
    description:
      "Own or manage a sports bar on WatchLocal? Claim your listing to update details, add photos, and connect with fans.",
    url: `${SITE_URL}/claim-venue`,
    type: "website",
  },
  alternates: {
    canonical: `${SITE_URL}/claim-venue`,
  },
};

export default function ClaimVenueLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return children;
}
