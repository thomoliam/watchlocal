import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Submit a Venue",
  description:
    "Know a great sports bar? Submit it to WatchLocal and help expats and travellers find the best places to watch live sport.",
};

export default function SubmitVenueLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return children;
}
