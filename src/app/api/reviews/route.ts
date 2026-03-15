import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: NextRequest) {
  const body = await request.json();

  const { venue_id, display_name, rating, content, sport_watched, tips } = body;

  if (!venue_id || !rating || rating < 1 || rating > 5) {
    return NextResponse.json(
      { error: "venue_id and rating (1-5) are required" },
      { status: 400 }
    );
  }

  if (!display_name || display_name.trim().length === 0) {
    return NextResponse.json(
      { error: "A display name is required" },
      { status: 400 }
    );
  }

  const supabase = await createClient();

  const { error } = await supabase.from("reviews").insert({
    venue_id,
    display_name: display_name.trim(),
    rating: Math.round(rating),
    content: content?.trim() || null,
    sport_watched: sport_watched?.trim() || null,
    tips: tips?.trim() || null,
    is_approved: false, // requires moderation
  });

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ success: true });
}
