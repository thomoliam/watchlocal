"use client";

import { useState } from "react";
import { Share2, Check, Link2 } from "lucide-react";

interface Props {
  title: string;
  url: string;
}

export default function ShareButton({ title, url }: Props) {
  const [copied, setCopied] = useState(false);

  async function handleShare() {
    // Use native share on mobile if available
    if (typeof navigator !== "undefined" && navigator.share) {
      try {
        await navigator.share({ title, url });
        return;
      } catch {
        // User cancelled or share failed — fall through to copy
      }
    }

    // Fallback: copy to clipboard
    try {
      await navigator.clipboard.writeText(url);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      // Clipboard API not available
    }
  }

  return (
    <button
      onClick={handleShare}
      className="flex items-center gap-2 rounded-lg border border-border px-3 py-2 text-sm transition-colors hover:border-brand hover:bg-brand/5"
    >
      {copied ? (
        <>
          <Check className="h-4 w-4 text-green-600" />
          Copied!
        </>
      ) : (
        <>
          <Share2 className="h-4 w-4" />
          Share
        </>
      )}
    </button>
  );
}
