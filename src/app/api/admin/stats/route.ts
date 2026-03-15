import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const ADMIN_KEY = process.env.ADMIN_SECRET_KEY || "";

function checkAuth(request: NextRequest): boolean {
  if (!ADMIN_KEY) return false;
  const auth = request.headers.get("x-admin-key");
  return auth === ADMIN_KEY;
}

export async function GET(request: NextRequest) {
  if (!checkAuth(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const supabase = await createClient();

  const [
    { count: venueCount },
    { count: cityCount },
    { count: leagueCount },
    { count: reviewCount },
    { count: pendingSubmissions },
    { count: pendingReviews },
  ] = await Promise.all([
    supabase.from("venues").select("*", { count: "exact", head: true }).eq("status", "active"),
    supabase.from("cities").select("*", { count: "exact", head: true }),
    supabase.from("leagues").select("*", { count: "exact", head: true }).eq("is_active", true),
    supabase.from("reviews").select("*", { count: "exact", head: true }).eq("is_approved", true),
    supabase.from("venue_submissions").select("*", { count: "exact", head: true }).eq("status", "pending"),
    supabase.from("reviews").select("*", { count: "exact", head: true }).eq("is_approved", false),
  ]);

  // Recent submissions
  const { data: recentSubmissions } = await supabase
    .from("venue_submissions")
    .select("*")
    .order("created_at", { ascending: false })
    .limit(10);

  // Recent reviews pending approval
  const { data: recentReviews } = await supabase
    .from("reviews")
    .select("*, venue:venues(name, slug)")
    .eq("is_approved", false)
    .order("created_at", { ascending: false })
    .limit(10);

  return NextResponse.json({
    stats: {
      venues: venueCount || 0,
      cities: cityCount || 0,
      leagues: leagueCount || 0,
      reviews: reviewCount || 0,
      pendingSubmissions: pendingSubmissions || 0,
      pendingReviews: pendingReviews || 0,
    },
    recentSubmissions: recentSubmissions || [],
    recentReviews: recentReviews || [],
  });
}
