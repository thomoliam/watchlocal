import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const ADMIN_KEY = process.env.ADMIN_SECRET_KEY || "";

function checkAuth(request: NextRequest): boolean {
  if (!ADMIN_KEY) return false;
  const auth = request.headers.get("x-admin-key");
  return auth === ADMIN_KEY;
}

// Approve or reject a review
export async function PATCH(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  if (!checkAuth(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { id } = await params;
  const body = await request.json();
  const { action } = body; // "approve" or "reject"

  if (!["approve", "reject"].includes(action)) {
    return NextResponse.json({ error: "Invalid action" }, { status: 400 });
  }

  const supabase = await createClient();

  if (action === "approve") {
    const { error } = await supabase
      .from("reviews")
      .update({ is_approved: true })
      .eq("id", id);
    if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  } else {
    const { error } = await supabase.from("reviews").delete().eq("id", id);
    if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ success: true, action });
}
