import Link from "next/link";
import { Tv, ChevronRight } from "lucide-react";

interface WatchPageLinkProps {
  league: string;
  city: string;
  href: string;
}

export default function WatchPageLink({
  league,
  city,
  href,
}: WatchPageLinkProps) {
  return (
    <Link href={href} className="group block">
      <div className="flex items-center gap-3 rounded-xl border border-border bg-muted p-4 transition-all hover:border-brand hover:shadow-md">
        <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-brand text-white">
          <Tv className="h-4 w-4" />
        </div>
        <div className="flex-1">
          <p className="font-semibold group-hover:text-brand">
            {league} in {city}
          </p>
          <p className="text-xs text-muted-foreground">
            Browse all verified venues
          </p>
        </div>
        <ChevronRight className="h-4 w-4 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
      </div>
    </Link>
  );
}
