export interface League {
  id: string;
  name: string;
  short_name: string;
  slug: string;
  sport: string;
  country: string | null;
  logo_url: string | null;
  tier: number;
}

export interface Team {
  id: string;
  name: string;
  short_name: string | null;
  slug: string;
  league_id: string;
  country: string | null;
  logo_url: string | null;
  primary_color: string | null;
  league?: League;
}

export interface City {
  id: string;
  name: string;
  slug: string;
  country: string;
  country_code: string;
  region: string | null;
  timezone: string;
  latitude: number;
  longitude: number;
  expat_score: number;
  tier: number;
}

export interface Venue {
  id: string;
  name: string;
  slug: string;
  city_id: string;
  address: string | null;
  latitude: number;
  longitude: number;
  description: string | null;
  atmosphere: string | null;
  capacity_estimate: string | null;
  number_of_screens: number | null;
  has_projector: boolean;
  has_food: boolean;
  has_pool_tables: boolean;
  has_outdoor_area: boolean;
  price_range: string | null;
  currency: string | null;
  is_verified: boolean;
  is_premium: boolean;
  website_url: string | null;
  instagram_handle: string | null;
  facebook_url: string | null;
  hero_image_url: string | null;
  city?: City;
  venue_leagues?: VenueLeague[];
  venue_teams?: VenueTeam[];
  reviews?: Review[];
}

export interface VenueLeague {
  id: string;
  league_id: string;
  is_primary: boolean;
  notes: string | null;
  league?: League;
}

export interface VenueTeam {
  id: string;
  team_id: string;
  is_official_supporters_bar: boolean;
  notes: string | null;
  team?: Team;
}

export interface Review {
  id: string;
  venue_id: string;
  display_name: string | null;
  rating: number;
  content: string | null;
  sport_watched: string | null;
  visit_date: string | null;
  atmosphere_rating: number | null;
  screen_quality_rating: number | null;
  sound_rating: number | null;
  tips: string | null;
  created_at: string;
}

export interface Fixture {
  id: string;
  league_id: string;
  home_team_id: string | null;
  away_team_id: string | null;
  home_team_name: string;
  away_team_name: string;
  match_date: string;
  status: string;
  home_score: number | null;
  away_score: number | null;
  round: string | null;
  league?: League;
  home_team?: Team;
  away_team?: Team;
}

export interface FanCommunity {
  id: string;
  team_id: string;
  city_id: string;
  name: string;
  platform: string;
  url: string;
  description: string | null;
  member_count: number | null;
  is_verified: boolean;
}

export interface VenueSubmission {
  venue_name: string;
  city: string;
  country: string;
  address?: string;
  google_maps_link?: string;
  leagues_shown: string[];
  description?: string;
  website?: string;
  instagram?: string;
  is_owner: boolean;
  submitter_email: string;
  submitter_name: string;
}
