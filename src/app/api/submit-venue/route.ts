import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: NextRequest) {
  const body = await request.json();

  const {
    venue_name,
    city,
    country,
    address,
    google_maps_link,
    leagues_shown,
    description,
    website,
    instagram,
    is_owner,
    submitter_name,
    submitter_email,
  } = body;

  if (!venue_name || !city || !country || !submitter_name || !submitter_email) {
    return NextResponse.json(
      { error: "Missing required fields" },
      { status: 400 }
    );
  }

  const supabase = await createClient();

  const { error } = await supabase.from("venue_submissions").insert({
    venue_name,
    city,
    country,
    address: address || null,
    google_maps_link: google_maps_link || null,
    leagues_shown: leagues_shown || [],
    description: description || null,
    website: website || null,
    instagram: instagram || null,
    is_owner: is_owner || false,
    submitter_name,
    submitter_email,
    status: "pending",
  });

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ success: true });
}
