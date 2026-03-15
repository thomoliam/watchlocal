import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://watchlocal.co";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  metadataBase: new URL(SITE_URL),
  title: {
    default: "WatchLocal — Find Sports Bars Anywhere in the World",
    template: "%s | WatchLocal",
  },
  description:
    "Find the best bars and venues to watch live sport anywhere in the world. Verified venues, match schedules, and fan communities.",
  openGraph: {
    type: "website",
    siteName: "WatchLocal",
    title: "WatchLocal — Find Sports Bars Anywhere in the World",
    description:
      "Find the best bars and venues to watch live sport anywhere in the world. Verified venues, match schedules, and fan communities.",
    url: SITE_URL,
  },
  twitter: {
    card: "summary_large_image",
    title: "WatchLocal — Find Sports Bars Anywhere in the World",
    description:
      "Find the best bars and venues to watch live sport anywhere in the world. Verified venues, match schedules, and fan communities.",
  },
  alternates: {
    canonical: SITE_URL,
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <head>
        <script
          dangerouslySetInnerHTML={{
            __html: `(function(){try{var d=localStorage.getItem("theme");if(d==="dark"||(d!=="light"&&matchMedia("(prefers-color-scheme:dark)").matches))document.documentElement.classList.add("dark")}catch(e){}})()`,
          }}
        />
      </head>
      <body
        className={`${geistSans.variable} ${geistMono.variable} font-sans antialiased`}
      >
        {children}
      </body>
    </html>
  );
}
