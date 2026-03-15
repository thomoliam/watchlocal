import Link from "next/link";
import { MapPin, ChevronRight } from "lucide-react";

interface VenueCardProps {
  name: string;
  href: string;
  city: string;
  description?: string;
}

export default function VenueCard({
  name,
  href,
  city,
  description,
}: VenueCardProps) {
  return (
    <Link href={href} className="group block">
      <div className="rounded-xl border border-border bg-muted p-4 transition-all hover:border-brand hover:shadow-md">
        <div className="flex items-start justify-between gap-2">
          <div>
            <h4 className="font-semibold group-hover:text-brand">{name}</h4>
            <p className="mt-0.5 flex items-center gap-1 text-xs text-muted-foreground">
              <MapPin className="h-3 w-3" />
              {city}
            </p>
          </div>
          <ChevronRight className="mt-1 h-4 w-4 shrink-0 text-muted-foreground opacity-0 transition-opacity group-hover:opacity-100" />
        </div>
        {description && (
          <p className="mt-2 text-sm leading-relaxed text-muted-foreground">
            {description}
          </p>
        )}
      </div>
    </Link>
  );
}
