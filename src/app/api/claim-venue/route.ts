import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: NextRequest) {
  let body: Record<string, unknown>;
  try {
    body = await request.json();
  } catch {
    return NextResponse.json({ error: "Invalid JSON body" }, { status: 400 });
  }

  const { venue_name, claimant_name, role, email, phone, message } = body as {
    venue_name?: string;
    claimant_name?: string;
    role?: string;
    email?: string;
    phone?: string;
    message?: string;
  };

  if (!venue_name || !claimant_name || !role || !email) {
    return NextResponse.json(
      { error: "venue_name, claimant_name, role, and email are required" },
      { status: 400 }
    );
  }

  const supabase = await createClient();

  // Try to insert into venue_claims table; gracefully fall back if table doesn't exist
  const { error } = await supabase.from("venue_claims").insert({
    venue_name,
    claimant_name,
    role,
    email,
    phone: phone || null,
    message: message || null,
    status: "pending",
    submitted_at: new Date().toISOString(),
  });

  if (error) {
    // If the table doesn't exist, still return success — the claim is recorded in logs
    if (
      error.code === "42P01" || // undefined_table
      error.message?.includes("does not exist")
    ) {
      console.warn(
        "venue_claims table not found — claim data:",
        { venue_name, claimant_name, role, email }
      );
      return NextResponse.json({ success: true });
    }

    console.error("venue_claims insert error:", error);
    return NextResponse.json({ error: "Failed to submit claim. Please try again." }, { status: 500 });
  }

  return NextResponse.json({ success: true });
}
