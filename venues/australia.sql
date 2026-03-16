-- ============================================================================
-- Australian Sports Venues
-- Generated: 2026-03-16
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

-- Major cities
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Sydney', 'sydney', 'Australia', 'AU', -33.8688, 151.2093, 'Australia/Sydney')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Melbourne', 'melbourne', 'Australia', 'AU', -37.8136, 144.9631, 'Australia/Melbourne')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Brisbane', 'brisbane', 'Australia', 'AU', -27.4698, 153.0251, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Perth', 'perth', 'Australia', 'AU', -31.9505, 115.8605, 'Australia/Perth')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Adelaide', 'adelaide', 'Australia', 'AU', -34.9285, 138.6007, 'Australia/Adelaide')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Gold Coast', 'gold-coast', 'Australia', 'AU', -28.0167, 153.4000, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

-- Medium cities
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Canberra', 'canberra', 'Australia', 'AU', -35.2809, 149.1300, 'Australia/Sydney')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Newcastle', 'newcastle-au', 'Australia', 'AU', -32.9283, 151.7817, 'Australia/Sydney')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Sunshine Coast', 'sunshine-coast', 'Australia', 'AU', -26.6500, 153.0667, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Wollongong', 'wollongong', 'Australia', 'AU', -34.4278, 150.8931, 'Australia/Sydney')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Hobart', 'hobart', 'Australia', 'AU', -42.8821, 147.3272, 'Australia/Hobart')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Geelong', 'geelong', 'Australia', 'AU', -38.1499, 144.3617, 'Australia/Melbourne')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Townsville', 'townsville', 'Australia', 'AU', -19.2590, 146.8169, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cairns', 'cairns', 'Australia', 'AU', -16.9186, 145.7781, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Darwin', 'darwin', 'Australia', 'AU', -12.4634, 130.8456, 'Australia/Darwin')
ON CONFLICT (slug) DO NOTHING;

-- Smaller cities
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Toowoomba', 'toowoomba', 'Australia', 'AU', -27.5598, 151.9507, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Ballarat', 'ballarat', 'Australia', 'AU', -37.5622, 143.8503, 'Australia/Melbourne')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bendigo', 'bendigo', 'Australia', 'AU', -36.7570, 144.2794, 'Australia/Melbourne')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Albury-Wodonga', 'albury-wodonga', 'Australia', 'AU', -36.0737, 146.9135, 'Australia/Sydney')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Launceston', 'launceston', 'Australia', 'AU', -41.4332, 147.1441, 'Australia/Hobart')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Mackay', 'mackay', 'Australia', 'AU', -21.1411, 149.1861, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Rockhampton', 'rockhampton', 'Australia', 'AU', -23.3791, 150.5100, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bunbury', 'bunbury', 'Australia', 'AU', -33.3271, 115.6414, 'Australia/Perth')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bundaberg', 'bundaberg', 'Australia', 'AU', -24.8661, 152.3489, 'Australia/Brisbane')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Coffs Harbour', 'coffs-harbour', 'Australia', 'AU', -30.2963, 153.1135, 'Australia/Sydney')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SYDNEY VENUES (20 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe x 4 Pines', 'sporting-globe-sydney', c.id, '22 The Promenade, King Street Wharf, Sydney NSW 2000', -33.8670, 151.1990, '50+ screens with AFL, NRL, NBA, NFL and UFC shown live and loud. Features private booths with touchscreen TVs and 4 Pines craft beers on tap.', 'https://www.sportingglobe.com.au/', 4.3, 850, 50, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cheers Bar & Grill', 'cheers-bar-sydney', c.id, '561 George Street, Sydney NSW 2000', -33.8755, 151.2069, 'Classic Sydney CBD sports bar open late with an unparalleled sporting atmosphere near Town Hall. Multiple screens showing all major sports.', 'https://cheersbar.com.au/', 4.1, 1200, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beach Road Hotel', 'beach-road-hotel-bondi', c.id, '71 Beach Road, Bondi Beach NSW 2026', -33.8878, 151.2742, 'Bondi institution with HD screens for live sport, free live music, and an enormous sun-soaked beer garden.', 'https://www.beachroadbondi.com.au/', 4.0, 2100, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Golden Sheaf', 'golden-sheaf-double-bay', c.id, '429 New South Head Road, Double Bay NSW 2028', -33.8775, 151.2444, 'Relaxed classic Aussie pub with about eight big screens downstairs showing all major sports. Great mix of pub atmosphere and Eastern Suburbs style.', 'https://thegoldensheaf.com.au/', 3.9, 1800, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '24/7 Sports Bar', '247-sports-bar-sydney', c.id, '100 Murray Street, Pyrmont NSW 2009', -33.8690, 151.1946, 'Massive sports bar at The Star with 50 LCD TVs and a 34 square metre LED screen. Open around the clock for all major international sporting events.', 'https://www.star.com.au/sydney/', 4.0, 600, 50, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Coogee Bay Hotel Sports Bar', 'coogee-bay-hotel-sports-bar', c.id, '253 Coogee Bay Road, Coogee NSW 2034', -33.9209, 151.2570, 'Dedicated sports bar within the iconic Coogee Bay Hotel. Multiple screens and a lively atmosphere just steps from Coogee Beach.', 'https://coogeebayhotel.com.au/sports-bar', 3.8, 1500, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'York 75', 'york-75-sydney', c.id, '75 York Street, Sydney NSW 2000', -33.8685, 151.2066, 'CBD sports bar with twenty big screens and 3D technology for an exciting viewing experience. Great for after-work sports watching.', 'https://york75.com.au/', 4.1, 350, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Madison Sports Bar', 'madison-sports-bar-surry-hills', c.id, '109 Chalmers Street, Surry Hills NSW 2010', -33.8835, 151.2095, '30 screens across 2 levels with premium TAB in the heart of Surry Hills. Corner location with a great atmosphere for all codes of football.', NULL, 4.0, 280, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Henson', 'the-henson-marrickville', c.id, '91 Illawarra Road, Marrickville NSW 2204', -33.9067, 151.1556, 'The ultimate rugby league pub near Henson Park with billiards, darts and TVs showing NRL and cricket. A local favourite in the Inner West.', 'https://thehenson.com.au/', 4.2, 420, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bondi Bowling Club', 'bondi-bowling-club', c.id, '118 Warners Avenue, Bondi Beach NSW 2026', -33.8917, 151.2656, 'Watch live sport on the big screen with a cold schooner while overlooking the bowling green. Relaxed Bondi vibes with lawn bowls available.', 'https://bondibowlingclub.com.au/', 4.3, 500, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Forresters', 'forresters-surry-hills', c.id, '336 Riley Street, Surry Hills NSW 2010', -33.8810, 151.2135, 'Great for cricket and horse racing with multiple screens and budget-friendly food and drink. Classic Surry Hills pub atmosphere.', 'https://forresters.com.au/', 4.1, 650, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Woollahra Hotel', 'woollahra-hotel', c.id, '116 Queen Street, Woollahra NSW 2025', -33.8865, 151.2395, 'Eastern Suburbs pub with big screens in the public bar showing AFL, NRL and cricket. Upscale pub dining with a leafy beer garden.', 'https://woollahrahotel.com.au/', 4.2, 900, 6, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Oaks Hotel', 'oaks-hotel-neutral-bay', c.id, '118 Military Road, Neutral Bay NSW 2089', -33.8375, 151.2192, 'Iconic Lower North Shore pub with a sprawling beer garden and sports screens throughout. Great for watching rugby with a Northern Beaches crowd.', 'https://theoakshotel.com.au/', 4.0, 1400, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Steyne Hotel', 'steyne-hotel-manly', c.id, '75 The Corso, Manly NSW 2095', -33.7977, 151.2862, 'Manly beachside pub with big screens in the sports bar showing all major events. Classic Northern Beaches atmosphere with ocean proximity.', 'https://thesteynehotel.com.au/', 3.9, 1600, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Rook', 'the-rook-sydney-cbd', c.id, '56-58 York Street, Sydney NSW 2000', -33.8676, 151.2059, 'Multi-level CBD bar with screens across all floors showing live sport. Popular after-work spot with craft beers and cocktails.', 'https://therook.com.au/', 4.2, 380, 10, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Newtown Hotel', 'newtown-hotel', c.id, '1 King Street, Newtown NSW 2042', -33.8986, 151.1785, 'Inner West institution on King Street with live sport on screens in the front bar. Eclectic Newtown vibe with great pub food and local craft beers.', 'https://newtownhotel.com.au/', 4.0, 750, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Clock Hotel', 'clock-hotel-surry-hills', c.id, '470 Crown Street, Surry Hills NSW 2010', -33.8862, 151.2133, 'Popular Surry Hills pub with rooftop bar and screens showing all the big games. Great food and a wide selection of beers on tap.', 'https://theclockhotel.com.au/', 4.1, 1100, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Banksia', 'the-banksia-sydney', c.id, '10 Bourke Road, Alexandria NSW 2015', -33.9035, 151.1965, 'Modern sports-friendly pub in Alexandria with large screens throughout and an open-air courtyard. Popular for AFL and NRL on weekends.', NULL, 4.2, 300, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Establishment', 'establishment-sydney', c.id, '252 George Street, Sydney NSW 2000', -33.8652, 151.2078, 'Upscale bar complex in the CBD with screens in the main bar area for major sporting events. Premium cocktails and refined pub food.', 'https://merivale.com/venues/establishment/', 4.1, 950, 6, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bungalow 8', 'bungalow-8-sydney', c.id, '3 Lime Street, King Street Wharf, Sydney NSW 2000', -33.8667, 151.1996, 'Waterfront bar at King Street Wharf with views of Darling Harbour and screens showing major sport. Relaxed daytime vibe with harbour breezes.', 'https://bungalow8.com.au/', 3.8, 680, 6, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'sydney'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MELBOURNE VENUES (20 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Imperial Hotel', 'imperial-hotel-melbourne', c.id, '2-8 Bourke Street, Melbourne VIC 3000', -37.8118, 144.9667, 'One of Melbourne''s oldest pubs dating back to 1858. Famous rooftop bar with stunning CBD views, Parliament House backdrop and big screens for live sports.', 'https://imperialhotel.com.au/', 4.1, 1400, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Great Northern', 'great-northern-melbourne', c.id, '644 Rathdowne Street, Carlton North VIC 3054', -37.7852, 144.9724, 'Huge beer garden out the back with ten HD screens throughout the venue. Great for footy season in Melbourne''s north.', 'https://thegreatnorthern.com.au/', 4.2, 900, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'College Lawn Hotel', 'college-lawn-hotel-prahran', c.id, '36 Greville Street, Prahran VIC 3181', -37.8504, 144.9887, 'Shows all the biggest live sporting games including Australian Open, AFL and NRL. Features main bar, restaurant, live music and beer garden.', 'https://collegelawn.com.au/', 4.0, 1100, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Crown Sports Bar', 'crown-sports-bar-melbourne', c.id, '8 Whiteman Street, Southbank VIC 3006', -37.8245, 144.9575, 'Dedicated sports bar within Crown Casino. Action-packed venue for major international sporting events with multiple screens and TAB facilities.', 'https://www.crownmelbourne.com.au/', 4.0, 750, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe Richmond', 'sporting-globe-richmond', c.id, '281 Church Street, Richmond VIC 3121', -37.8290, 144.9982, '$3 million renovation with cutting-edge technology for the ultimate sports-watching experience. Wall-to-wall screens and craft beers on tap.', 'https://www.sportingglobe.com.au/locations/richmond/', 4.3, 650, 40, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Silverlake Social', 'silverlake-social-melbourne', c.id, '14 Meyers Place, Melbourne VIC 3000', -37.8139, 144.9680, 'American-style sports bar serving US classics like hot dogs, burgers and burritos alongside American craft beers. Great for NBA and NFL viewing.', 'https://silverlakesocial.com.au/', 4.3, 320, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Turf Bar', 'turf-bar-melbourne', c.id, '293 Swanston Street, Melbourne VIC 3000', -37.8134, 144.9643, 'A haven for sports tragics in the heart of the city. Screens covering every wall, solid pub fare and a dedicated footy-loving crowd.', 'https://turfbar.com.au/', 4.0, 500, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Birmingham Hotel', 'birmingham-hotel-fitzroy', c.id, '376 Smith Street, Fitzroy VIC 3065', -37.7991, 144.9817, '14 screens spread across two levels in the heart of Fitzroy. Perfect for watching any game with a vibrant inner-city crowd.', 'https://birminghamhotel.com.au/', 4.1, 400, 14, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Harvey''s Sports Bar & Grill', 'harveys-sports-bar-st-kilda', c.id, '2 Acland Street, St Kilda VIC 3182', -37.8670, 144.9767, 'Giant 4-metre screen and 18 screens across the venue in the heart of St Kilda. Caters to groups of all sizes with quality pub fare.', 'https://harveyssportsbar.com.au/', 4.2, 550, 18, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The London Tavern', 'london-tavern-richmond', c.id, '238 Church Street, Richmond VIC 3121', -37.8270, 144.9973, 'Quintessential footy pub close to the MCG with a sprawling beer garden. Diehard Tigers contingent gathers here on game days.', 'https://londontavern.com.au/', 4.0, 700, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Rose Hotel', 'rose-hotel-fitzroy', c.id, '406 Napier Street, Fitzroy VIC 3065', -37.7970, 144.9773, 'Dark brickwork and vintage sports memorabilia. Has graced the corner of Napier Street for more than 150 years with live sport on screens.', NULL, 4.1, 350, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Prince Alfred', 'prince-alfred-richmond', c.id, '228 Swan Street, Richmond VIC 3121', -37.8257, 145.0018, 'Ultimate Richmond local open seven days. Half-price pizzas Mondays, $24 parmas Thursdays, and screens throughout for live sport.', NULL, 4.0, 480, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Provincial Hotel', 'provincial-hotel-fitzroy', c.id, '299 Brunswick Street, Fitzroy VIC 3065', -37.7980, 144.9783, 'Sports bar with rooftop in Fitzroy showing all the big games. Craft beers, pub classics and a great rooftop atmosphere.', 'https://provincialhotel.com.au/', 4.0, 550, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Espy Public Bar', 'espy-public-bar-st-kilda', c.id, '11 The Esplanade, St Kilda VIC 3182', -37.8680, 144.9734, 'Iconic St Kilda venue with live sports in the Public Bar. Watch games with views of the bay alongside great beers and pub food.', 'https://hotelesplanade.com.au/', 4.2, 2200, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Precinct Hotel', 'precinct-hotel-melbourne', c.id, '60 Swan Street, Richmond VIC 3121', -37.8230, 144.9934, 'Popular pre- and post-game pub right near the MCG. Big screens, great atmosphere on game day and solid pub classics.', 'https://precincthotel.com.au/', 3.9, 600, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Royal Melbourne Hotel', 'royal-melbourne-hotel', c.id, '629 Bourke Street, Melbourne VIC 3000', -37.8153, 144.9567, 'CBD pub with multiple screens across several bars. Popular with office workers catching late games and weekend sport enthusiasts.', NULL, 4.0, 400, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Crafty Squire', 'crafty-squire-melbourne', c.id, '127 Russell Street, Melbourne VIC 3000', -37.8130, 144.9670, 'James Squire brewhouse in the CBD with big screens on every level. Great selection of craft beers alongside live sports.', 'https://craftysquire.com.au/', 4.1, 1800, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Duke of Wellington', 'duke-of-wellington-melbourne', c.id, '146 Flinders Street, Melbourne VIC 3000', -37.8168, 144.9683, 'English-style pub on Flinders Street with screens throughout. Great for Premier League, cricket and AFL viewing with proper pints.', NULL, 4.0, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Corner Hotel', 'corner-hotel-richmond', c.id, '57 Swan Street, Richmond VIC 3121', -37.8231, 144.9937, 'Iconic Richmond venue with a rooftop bar and screens in the front bar for sport. Famous for live music but also a great spot on game day.', 'https://cornerhotel.com/', 4.3, 2500, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wharf Hotel', 'wharf-hotel-southbank', c.id, '20-30 Convention Centre Place, South Wharf VIC 3006', -37.8249, 144.9530, 'Waterfront sports bar at South Wharf with big screens inside and out. Great location beside the Yarra for watching games with a view.', 'https://wharfhotel.com.au/', 4.0, 800, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'melbourne'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BRISBANE VENUES (18 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stock Exchange Hotel', 'stock-exchange-hotel-brisbane', c.id, '131 Edward Street, Brisbane QLD 4000', -27.4697, 153.0272, 'Rooftop with mammoth 100-inch projector streaming major games. Only 500m from Suncorp Stadium on Caxton Street. Shows AFL, NRL, cricket, UFC and more.', 'https://stockexchangehotel.com.au/', 4.1, 800, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Lord Alfred', 'lord-alfred-brisbane', c.id, '36 Caxton Street, Petrie Terrace QLD 4000', -27.4619, 153.0124, 'Massive 7x2 metre LED screen letting you watch multiple games at once. Just 500m from Suncorp Stadium with a buzzing game-day atmosphere.', NULL, 4.0, 450, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fat Angel Sports Bar', 'fat-angel-sports-bar-brisbane', c.id, '33 Caxton Street, Petrie Terrace QLD 4000', -27.4621, 153.0120, 'Eight big screens with unrivalled sports coverage. American bites and brews specialty with daily specials like $1 wings Wednesdays and $1 tater tots Fridays.', 'https://www.fatangelsportsbar.com.au/', 4.3, 600, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Star Brisbane Sports Bar', 'star-brisbane-sports-bar', c.id, 'Queen Street Mall, Brisbane QLD 4000', -27.4710, 153.0234, 'Purpose-built sports bar with two 12-metre mega LED screens and stadium-like sound quality. Three exclusive VIP booths and top-tier Brisbane River views.', 'https://www.star.com.au/brisbane/', 4.2, 350, 20, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Regatta Hotel', 'regatta-hotel-brisbane', c.id, '543 Coronation Drive, Toowong QLD 4066', -27.4840, 152.9900, 'Heritage-listed pub streaming local and international games from AFL to NRL. Order from your phone for table delivery, wide draught beer selection.', 'https://regattahotel.com.au/', 4.0, 1500, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Grand Central Hotel', 'grand-central-hotel-brisbane', c.id, '309 Queen Street, Brisbane QLD 4000', -27.4685, 153.0262, 'Centrally located in the City with multiple screens and a vibrant atmosphere. Perfect spot to catch must-watch games in the heart of Brisbane.', NULL, 4.0, 500, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Criterion Hotel', 'criterion-hotel-brisbane', c.id, '150 Ann Street, Brisbane QLD 4000', -27.4658, 153.0265, 'Down-to-earth atmosphere with tasty bistro eats. Long-time favourite with modern leafy interiors and games on the big screen.', NULL, 4.1, 600, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Caxton Hotel', 'caxton-hotel-brisbane', c.id, '38 Caxton Street, Petrie Terrace QLD 4000', -27.4617, 153.0122, 'Historic Caxton Street venue with a hefty live sports schedule across multiple bars and dining areas. The go-to for Suncorp Stadium pre-game drinks.', 'https://thecaxtonhotel.com.au/', 3.9, 1200, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Beaumont Brisbane', 'beaumont-brisbane', c.id, '735 Ann Street, Fortitude Valley QLD 4006', -27.4569, 153.0365, 'Stadium atmosphere in Fortitude Valley with massive HD screens including giant LED screen. Shows all major sports live and loud.', NULL, 4.1, 300, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BrewDog Brisbane', 'brewdog-brisbane', c.id, '711 Ann Street, Fortitude Valley QLD 4006', -27.4573, 153.0356, 'Three levels with stadium screens and 20 taps directly across from Fortitude Valley train station. Craft beer haven with sports on every level.', 'https://www.brewdog.com/', 4.2, 450, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pig ''n'' Whistle West End', 'pig-n-whistle-west-end', c.id, '124 Boundary Street, West End QLD 4101', -27.4797, 153.0144, 'Part of the Pig ''n'' Whistle group with British pub atmosphere, big screens for Premier League and NRL, and classic pub food.', 'https://www.pignwhistle.com.au/', 4.0, 350, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Plough Inn South Bank', 'plough-inn-south-bank', c.id, 'Stanley Street Plaza, South Bank QLD 4101', -27.4777, 153.0221, 'Nestled behind the iconic South Bank Grand Arbour with flowing tap beers, hearty bar food and a beer garden perfect for footy viewing.', 'https://ploughinn.com.au/', 4.0, 900, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Winghaus Brisbane', 'winghaus-brisbane', c.id, 'Little Stanley Street, South Bank QLD 4101', -27.4775, 153.0210, '20 screens to watch your favourite sports with 40 taps available. Wing-focused menu with a fun sports bar atmosphere at South Bank.', 'https://winghaus.com.au/', 4.1, 400, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Jubilee Hotel', 'jubilee-hotel-brisbane', c.id, '286 St Pauls Terrace, Fortitude Valley QLD 4006', -27.4580, 153.0340, 'Partnered with Queensland Rugby Union for a clubhouse-like environment. Great for catching rugby games in the Valley.', 'https://jubileehotel.com.au/', 4.0, 650, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Osbourne Hotel', 'osbourne-hotel-fortitude-valley', c.id, '16 Constance Street, Fortitude Valley QLD 4006', -27.4575, 153.0378, 'Positioned in the hub of Brisbane''s nightlife district. Multiple screens with sport and a buzzy Valley atmosphere day and night.', 'https://osbournehotel.com.au/', 3.9, 500, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fielders Sports Bar', 'fielders-sports-bar-brisbane', c.id, '50 Kianawah Road, Wynnum West QLD 4178', -27.4510, 153.1610, 'Brisbane Bayside''s premier sports bar with dedicated big screens, TAB and a family-friendly atmosphere.', 'https://www.fieldersclub.com.au/', 4.2, 300, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pig ''n'' Whistle Queen Street', 'pig-n-whistle-queen-street', c.id, '123 Eagle Street, Brisbane QLD 4000', -27.4670, 153.0312, 'British-style pub in the CBD with big screens for Premier League, NRL and AFL. Classic pub grub and proper pints.', 'https://www.pignwhistle.com.au/', 4.0, 700, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boundary Hotel', 'boundary-hotel-west-end', c.id, '42 Mollison Street, West End QLD 4101', -27.4810, 153.0095, 'Public bar with live sport on big screens in West End. Relaxed neighbourhood pub with a great beer garden.', 'https://theboundary.com.au/', 4.1, 350, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brisbane'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- PERTH VENUES (18 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Camfield', 'the-camfield-perth', c.id, '18 Burswood Road, Burswood WA 6100', -31.9565, 115.8920, 'Australia''s biggest pub next to Optus Stadium with capacity for 2,500 people, 175 taps and countless TVs. The place to be when you cannot get stadium tickets.', 'https://thecamfield.com.au/', 4.1, 3500, 30, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Varsity Bar Northbridge', 'varsity-bar-northbridge', c.id, '251 James Street, Northbridge WA 6003', -31.9444, 115.8603, 'American-style sports bar screening everything from Major League Baseball to AFL. Great burgers and daily food and drink specials.', 'https://varsitybar.com.au/', 4.2, 600, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fenway Bar', 'fenway-bar-perth', c.id, '221 William Street, Northbridge WA 6003', -31.9450, 115.8580, '1930s Boston vibes named after Fenway Park. Epic burgers, craft beers, exceptional whiskey selection with big screens and comfy couches.', NULL, 4.4, 350, 8, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Patriots Sports Bar', 'patriots-sports-bar-perth', c.id, '209 William Street, Northbridge WA 6003', -31.9452, 115.8578, '22 screens, 3 huge screens and private booths next to the Brass Monkey. Sport seven days a week with hefty American pub fare including a kilo of wings for $20.', NULL, 4.3, 500, 22, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Inglewood Hotel', 'inglewood-hotel-perth', c.id, '808 Beaufort Street, Inglewood WA 6052', -31.9170, 115.8830, 'Beloved local pub since 1936. Heaps of screens with a huge screen set up for big games, plenty of beers on tap and a mean parmi.', 'https://theinglewoodhotel.com.au/', 4.2, 900, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Royal East Perth', 'royal-east-perth', c.id, '192 Adelaide Terrace, East Perth WA 6004', -31.9527, 115.8720, 'East Perth''s premier sport destination with dedicated sports bar, big screens and TAB facilities. Walking distance to Optus Stadium.', 'https://theroyaleastperth.com/', 4.0, 450, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Globe Perth', 'globe-perth', c.id, '116 Barrack Street, Perth WA 6000', -31.9518, 115.8618, 'CBD sports bar with live sports coverage, craft beers and pub food. A Perth city go-to for catching the game.', 'https://theglobeperth.com.au/', 4.1, 350, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Crown Sports Bar Perth', 'crown-sports-bar-perth', c.id, 'Great Eastern Highway, Burswood WA 6100', -31.9580, 115.8890, 'Non-stop 24/7 sports with two bars, TAB facilities and big screens across 130 metres. Part of Crown Perth entertainment complex.', 'https://www.crownperth.com.au/', 4.0, 700, 25, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Northbridge Brewing Company', 'northbridge-brewing-company', c.id, '44 Lake Street, Northbridge WA 6003', -31.9460, 115.8590, 'Three floors with strategically-placed screens for sport and craft beer enthusiasts. Brews on site with a great Northbridge atmosphere.', 'https://northbridgebrewingco.com.au/', 4.3, 550, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Durty Nelly''s Perth', 'durty-nellys-perth', c.id, '246 William Street, Northbridge WA 6003', -31.9448, 115.8579, 'Irish pub in Northbridge with multiple screens, buzzing atmosphere and happy hour drink specials. Great for Premier League and rugby.', NULL, 4.1, 400, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wray Hotel', 'wray-hotel-fremantle', c.id, '73 Wray Avenue, Fremantle WA 6160', -32.0588, 115.7504, 'Freo''s dedicated sports bar with a big-time glow up in late 2023. Screens throughout with a great Fremantle atmosphere.', NULL, 4.2, 250, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fed Fremantle', 'fed-fremantle', c.id, '23 William Street, Fremantle WA 6160', -32.0554, 115.7483, 'One of Fremantle''s biggest and boldest old pubs with a huge screen in the beer garden great for big games.', NULL, 4.0, 600, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Hyde Park Hotel', 'hyde-park-hotel-perth', c.id, '331 Bulwer Street, Perth WA 6000', -31.9382, 115.8638, 'Front bar with 10 TVs showing all kinds of sport from around the globe, pool tables and TAB. A Perth institution.', NULL, 4.1, 450, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Varsity Bar Joondalup', 'varsity-bar-joondalup', c.id, '11 Grand Boulevard, Joondalup WA 6027', -31.7475, 115.7666, 'Part of the Varsity group in Perth''s north with American sports bar vibes, big screens and great burgers.', 'https://varsitybar.com.au/', 4.1, 400, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Varsity Bar Fremantle', 'varsity-bar-fremantle', c.id, '2/51 Market Street, Fremantle WA 6160', -32.0556, 115.7490, 'Fremantle outpost of the popular Perth sports bar chain. Big screens, American pub fare and heaps of beers.', 'https://varsitybar.com.au/', 4.1, 350, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Balmoral Hotel', 'balmoral-hotel-victoria-park', c.id, '890 Albany Highway, East Victoria Park WA 6101', -31.9785, 115.8960, 'Popular Victoria Park pub with screens in the bar showing AFL, NRL, cricket and soccer. Laid-back neighbourhood atmosphere.', NULL, 4.0, 300, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Riverton Bar & Grill', 'riverton-bar-grill', c.id, '68 Riverton Drive North, Riverton WA 6148', -32.0305, 115.8910, 'South of the river sports bar with big screens, TAB and a family-friendly bistro. Great for catching weekend footy.', NULL, 4.0, 250, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Varsity Bar Leederville', 'varsity-bar-leederville', c.id, '198 Oxford Street, Leederville WA 6007', -31.9355, 115.8440, 'Leederville branch of the Varsity chain with heaps of big screens, sport every night and daily food and drink specials.', 'https://varsitybar.com.au/', 4.2, 380, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'perth'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ADELAIDE VENUES (15 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sportys at Arkaba Hotel', 'sportys-arkaba-hotel', c.id, '150 Glen Osmond Road, Fullarton SA 5063', -34.9490, 138.6310, 'Won Best Sporting Entertainment Venue at the AHA|SA Awards two years running. Huge LED screen, 360-degree funnel screen, shuffleboard, smart darts and pool.', 'https://www.arkabahotel.com.au/sportys/', 4.3, 700, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jimmy''s Bar & Grill', 'jimmys-bar-grill-adelaide', c.id, '12 Grenfell Street, Adelaide SA 5000', -34.9250, 138.6035, 'Basement sports bar with 4.5-star rating. Craft beers, signature cocktails, grilled dishes and hearty pub fare. Multiple screens with a welcoming vibe.', NULL, 4.5, 350, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Ramsgate Hotel', 'ramsgate-hotel-adelaide', c.id, '323 Jetty Road, Henley Beach SA 5022', -34.9200, 138.5010, 'Widely regarded as Adelaide''s best sports bar, located by the seaside. Sports bar vibes with an ocean backdrop.', 'https://ramsgateholel.com.au/', 4.1, 1200, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The District at SkyCity', 'district-skycity-adelaide', c.id, 'North Terrace, Adelaide SA 5000', -34.9210, 138.5960, 'Giant video wall for an immersive community experience with VIP booths. In-house Pirate Life brewery at SkyCity Adelaide.', 'https://www.skycityadelaide.com.au/', 4.0, 500, 15, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Elephant British Pub', 'elephant-british-pub-adelaide', c.id, '1 Cinema Place, Adelaide SA 5000', -34.9240, 138.6050, 'Distinctly British pub near Rundle Street with 24 beers on draught, Fox Sports and imperial-sized pints. Great for Premier League.', 'https://theelephant.com.au/', 4.2, 550, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Belgian Beer Cafe', 'belgian-beer-cafe-adelaide', c.id, '27-29 Ebenezer Place, Adelaide SA 5000', -34.9225, 138.6000, 'European-style pub with Belgian beers on tap and screens showing major sports. Laid-back CBD atmosphere.', NULL, 4.1, 400, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Norwood Hotel', 'norwood-hotel-adelaide', c.id, '97 The Parade, Norwood SA 5067', -34.9213, 138.6300, 'Popular Parade pub with screens throughout showing AFL, cricket and rugby. Solid pub food and a great beer garden.', 'https://norwoodhotel.com.au/', 4.0, 800, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wellington Hotel', 'wellington-hotel-adelaide', c.id, '36 Wellington Square, North Adelaide SA 5006', -34.9085, 138.5950, 'North Adelaide pub close to Adelaide Oval with sports on screens in the front bar. Popular pre-game destination.', NULL, 4.0, 600, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Rob Roy Hotel', 'rob-roy-hotel-adelaide', c.id, '106 Halifax Street, Adelaide SA 5000', -34.9310, 138.6020, 'CBD pub with big screens and TAB in the front bar. Classic Adelaide pub atmosphere with cold beers and pub classics.', NULL, 4.0, 350, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Alma Hotel', 'alma-hotel-adelaide', c.id, '64 Magill Road, Norwood SA 5067', -34.9195, 138.6220, 'Neighbourhood pub on Magill Road with screens in the bar showing all the big games. Friendly local crowd and solid pub food.', NULL, 4.1, 450, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Cremorne Hotel', 'cremorne-hotel-adelaide', c.id, '207 Unley Road, Unley SA 5061', -34.9445, 138.6050, 'Unley Road pub with live sport on screens and TAB. Popular for AFL and cricket with a relaxed suburban atmosphere.', NULL, 4.0, 300, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Elephant & Castle Hotel', 'elephant-castle-hotel-adelaide', c.id, '171 Hutt Street, Adelaide SA 5000', -34.9340, 138.6070, 'Classic Adelaide city pub with screens showing sport, gaming room and pub dining. Hutt Street location near the East End.', 'https://elephantandcastlehotel.com.au/', 4.0, 500, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Arab Steed Hotel', 'arab-steed-hotel-adelaide', c.id, '111 Hindley Street, Adelaide SA 5000', -34.9225, 138.5945, 'Hindley Street pub with live sport on screens and a central city location. Popular with the after-work crowd.', NULL, 3.9, 350, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Royal Oak Hotel', 'royal-oak-hotel-adelaide', c.id, '129 O''Connell Street, North Adelaide SA 5006', -34.9080, 138.5970, 'O''Connell Street pub showing live sport with a good beer selection. Walking distance to Adelaide Oval for pre and post game drinks.', NULL, 4.0, 400, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Kentish Hotel', 'kentish-hotel-adelaide', c.id, '23 College Road, Kent Town SA 5067', -34.9215, 138.6190, 'Kent Town pub with dedicated sports bar area featuring big screens and TAB. Close to Adelaide Oval via the city.', NULL, 4.1, 350, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'adelaide'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- GOLD COAST VENUES (15 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe x 4 Pines Surfers Paradise', 'sporting-globe-surfers-paradise', c.id, '18-22 Orchid Avenue, Surfers Paradise QLD 4217', -28.0015, 153.4305, '$6.5 million super venue and largest Sporting Globe in Australia. 60 screens, 1000-person capacity, onsite 4 Pines microbrewery and booth seating with individual channel selection.', 'https://www.sportingglobe.com.au/', 4.3, 800, 60, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ashmore Tavern', 'ashmore-tavern-gold-coast', c.id, '161 Cotlew Street, Ashmore QLD 4214', -27.9860, 153.3910, '$5 million renovated sports bar with sleek screens, balcony views and daily live sports. Delicious eats and a modern atmosphere.', NULL, 4.1, 500, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Cavill Hotel', 'cavill-hotel-surfers-paradise', c.id, '2 Cavill Avenue, Surfers Paradise QLD 4217', -28.0025, 153.4295, 'One of the biggest screens in Surfers Paradise for larger-than-life sporting action. Central location on Cavill Avenue.', NULL, 3.9, 700, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Star Sports Bar Gold Coast', 'star-sports-bar-gold-coast', c.id, '1 Casino Drive, Broadbeach QLD 4218', -28.0330, 153.4320, 'Open 24/7 with 23 screens and a massive 10-metre screen that makes you feel like you are on the field. Part of The Star Gold Coast.', 'https://www.star.com.au/goldcoast/', 4.0, 400, 23, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mackenzie''s Sports Bar', 'mackenzies-sports-bar-southport', c.id, '28 Marine Parade, Southport QLD 4215', -27.9720, 153.4100, 'Huge 5.25 square metre screen at Southport Sharks with TAB facilities. Open to the public for live sporting events.', 'https://southportsharks.com.au/', 4.2, 300, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Broadbeach Tavern', 'broadbeach-tavern', c.id, 'Old Burleigh Road, Broadbeach QLD 4218', -28.0290, 153.4350, 'Coastal icon for live sports with huge screens showing every play, goal and try. Located at The Oasis shopping centre.', NULL, 4.0, 600, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Beach Hotel Broadbeach', 'beach-hotel-broadbeach', c.id, '116 Marine Parade, Broadbeach QLD 4218', -28.0295, 153.4360, 'Revamped sports bar with wall-to-wall TVs in the Public Bar, breezy Beer Garden, and menu featuring pub grub to chef-hatted cuisine.', NULL, 4.1, 500, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe Robina', 'sporting-globe-robina', c.id, 'The Promenade, Robina Town Centre, Robina QLD 4226', -28.0780, 153.3840, 'Wall-to-wall screens, daily food specials and an electric atmosphere at Robina Town Centre. The Sporting Globe''s Gold Coast hinterland outpost.', 'https://www.sportingglobe.com.au/', 4.2, 450, 30, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Burleigh Town Hotel', 'burleigh-town-hotel', c.id, '1 Classic Way, Burleigh Heads QLD 4220', -28.0835, 153.4060, 'Voted Best Sporting Entertainment venue in the QHA Awards two years running. Home to one of the largest screens in the southern hemisphere.', 'https://burleightownhotel.com.au/', 4.2, 900, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Burleigh Sports Club', 'burleigh-sports-club', c.id, '91 Christine Avenue, Burleigh Waters QLD 4220', -28.0888, 153.4150, 'Dedicated sports bar showing all codes with big screens and TAB. Family-friendly club atmosphere with good bistro food.', 'https://www.burleighsports.com.au/', 4.0, 350, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Coolangatta Hotel', 'coolangatta-hotel', c.id, 'Marine Parade, Coolangatta QLD 4225', -28.1680, 153.5370, 'Prime beachside location for catching sports with a buoyant and passionate atmosphere, plus post-game live music.', NULL, 4.0, 500, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Chevron Tavern', 'chevron-tavern-gold-coast', c.id, '8 Thomas Drive, Chevron Island QLD 4217', -28.0090, 153.4230, 'Neighbourhood tavern with screens showing live sport, TAB and a relaxed Gold Coast atmosphere. Pool tables and cold beers.', NULL, 4.0, 300, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boathouse Tavern', 'boathouse-tavern-gold-coast', c.id, '47 Nind Street, Southport QLD 4215', -27.9665, 153.4035, 'Waterfront tavern at Southport with sports on screens and a relaxed pub atmosphere. Great for a cold beer watching the footy.', NULL, 4.0, 350, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kirra Beach Surf Club', 'kirra-beach-surf-club', c.id, 'Marine Parade, Kirra QLD 4225', -28.1640, 153.5220, 'Right on the beach with big screens in the club bar showing live sport. Stunning ocean views while watching the game.', NULL, 4.2, 400, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beenleigh Sports Club', 'beenleigh-sports-club', c.id, '17 James Street, Beenleigh QLD 4207', -27.7160, 153.1930, 'Community sports club with dedicated sports bar, big screens and TAB. Family-friendly venue with bistro and entertainment.', NULL, 4.0, 250, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'gold-coast'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- CANBERRA VENUES (8 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Casey Jones', 'casey-jones-canberra', c.id, '7 Lonsdale Street, Braddon ACT 2612', -35.2710, 149.1350, 'Premier Canberra sports bar with a massive variety of beers on tap, excellent food and fantastic service. Dedicated sports viewing area.', 'https://www.caseyjones.pub/', 4.3, 500, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'King O''Malley''s', 'king-omalleys-canberra', c.id, '131 City Walk, Canberra ACT 2601', -35.2800, 149.1310, 'Canberra''s iconic Irish pub and ultimate sports watching arena. Widest range of single-malt scotch and whiskies in Canberra with big screens.', 'https://kingomalleys.com.au/', 4.2, 800, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Dock Kingston', 'dock-kingston-canberra', c.id, 'Kingston Foreshore, Canberra ACT 2604', -35.3120, 149.1430, 'Award-winning sports pub on Kingston Foreshore co-owned by Brumbies and Wallabies players Scott Fardy and Ben Alexander. Community-minded and locally owned.', 'https://www.thedockkingston.com.au/', 4.3, 600, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Basement at The Alby', 'basement-alby-canberra', c.id, '2 Bougainville Street, Griffith ACT 2603', -35.3180, 149.1340, 'Ultimate sports bar with three 85-inch high-definition TVs, plenty of sound and live footy. Located in the Hotel Canberra complex.', NULL, 4.1, 300, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Casino Canberra Sports', 'casino-canberra-sports', c.id, '21 Binara Street, Canberra ACT 2601', -35.2810, 149.1285, 'Sports viewing at Casino Canberra with screens throughout and a vibrant atmosphere. Central CBD location.', 'https://casinocanberra.com.au/', 3.9, 400, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Duxton', 'duxton-canberra', c.id, '9 Furneaux Street, Manuka ACT 2603', -35.3156, 149.1365, 'Manuka pub with screens in the bar showing live sport. Popular with the public service crowd and locals alike.', NULL, 4.1, 350, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Tradies Club Dickson', 'tradies-club-dickson', c.id, '2 Badham Street, Dickson ACT 2602', -35.2505, 149.1420, 'Hotspot for sports fans with mega screen showing local, national and international sports. Great value bistro and drinks.', NULL, 4.0, 400, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lyrique Bar', 'lyrique-bar-canberra', c.id, '65 London Circuit, Canberra ACT 2601', -35.2790, 149.1300, 'Sports bar in the CBD with screens showing all major events. Cocktails, craft beers and pub food in a modern setting.', 'https://lyriquebar.com.au/', 4.0, 250, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'canberra'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NEWCASTLE VENUES (7 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Duke of Wellington', 'duke-of-wellington-newcastle', c.id, '53 Watt Street, Newcastle NSW 2300', -32.9250, 151.7800, 'The place for all things sport in Newcastle with NRL, NFL, netball and more played live and loud.', NULL, 4.1, 400, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Beach Hotel Newcastle', 'beach-hotel-newcastle', c.id, '11 Frederick Street, Merewether NSW 2291', -32.9398, 151.7520, 'Waterside venue with all the big matches in the main space. Great views and a relaxed beachside sports watching experience.', NULL, 4.2, 600, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wonderbar Newcastle', 'wonderbar-newcastle', c.id, '47-49 Hunter Street, Newcastle NSW 2300', -32.9270, 151.7785, 'Some of the biggest screens in Newcastle showing all the action. Drinks, food and dartboards for a complete sports bar experience.', NULL, 4.0, 300, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '97 & Social', '97-and-social-newcastle', c.id, '97 Hunter Street, Newcastle NSW 2300', -32.9268, 151.7775, 'Sky Sports with plush booths, cocktails and pub grub. A stylish take on the sports bar in Newcastle''s CBD.', NULL, 4.2, 250, 8, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boundary Hotel Newcastle', 'boundary-hotel-newcastle', c.id, '45 Maitland Road, Mayfield NSW 2304', -32.9090, 151.7365, 'Live sports action on big screens in the public bar. Classic Newcastle pub with a loyal local crowd.', 'https://theboundary.com.au/', 4.0, 350, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Kent Hotel', 'kent-hotel-hamilton', c.id, '59 Beaumont Street, Hamilton NSW 2303', -32.9207, 151.7480, 'Beaumont Street pub with screens in the bar showing NRL, AFL and cricket. Great pub food on the popular Hamilton strip.', NULL, 4.1, 450, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Lucky Hotel', 'lucky-hotel-newcastle', c.id, '237 Hunter Street, Newcastle NSW 2300', -32.9274, 151.7712, 'CBD venue with live sports, pool tables and a good selection of beers. Popular with locals and visitors alike.', NULL, 4.0, 280, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle-au'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SUNSHINE COAST VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Baringa Tavern Sports Bar', 'baringa-tavern-sunshine-coast', c.id, 'Main Street, Baringa QLD 4551', -26.7630, 153.0930, 'Live sports on a 15-metre video wall with surround sound. 16 beers on tap and TAB facilities on the Sunshine Coast.', 'https://www.baringatavern.com.au/', 4.2, 300, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'sunshine-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Woombye Pub', 'woombye-pub-sunshine-coast', c.id, '17 Blackall Street, Woombye QLD 4559', -26.6610, 152.9690, 'Family-friendly pub in the heart of the Sunshine Coast hinterland with outdoor and indoor play areas. Screens showing live sport.', NULL, 4.3, 400, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'sunshine-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Maroochy RSL Sports Bar', 'maroochy-rsl-sunshine-coast', c.id, '105 Memorial Avenue, Maroochydore QLD 4558', -26.6580, 153.0930, 'Huge dedicated sports screen and multiple channels streamed throughout the RSL. Great value food and drinks.', NULL, 4.0, 500, 10, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'sunshine-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mooloolaba Surf Club', 'mooloolaba-surf-club', c.id, 'The Esplanade, Mooloolaba QLD 4557', -26.6817, 153.1200, 'Beachfront surf club with screens in the bar showing live sport. Watch the game with ocean views and a cold beer.', NULL, 4.1, 600, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'sunshine-coast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Noosa Heads Surf Club', 'noosa-heads-surf-club', c.id, '69 Hastings Street, Noosa Heads QLD 4567', -26.3900, 153.0920, 'Premium beachfront location at Noosa Main Beach with sports on screens. Relaxed Noosa vibes with great food and drinks.', NULL, 4.2, 700, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sunshine-coast'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- WOLLONGONG VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Frisky Flamingo', 'frisky-flamingo-wollongong', c.id, '18 Crown Street, Wollongong NSW 2500', -34.4261, 150.8934, 'American-style sports lounge with the largest indoor media screen in the Southern Hemisphere and a beachfront location.', NULL, 4.3, 350, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'wollongong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Grand Hotel Wollongong', 'grand-hotel-wollongong', c.id, '86 Crown Street, Wollongong NSW 2500', -34.4274, 150.8954, 'Excellent sports viewing with multiple big screens and a variety of sports on offer. A Wollongong institution.', NULL, 4.0, 500, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'wollongong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wests Illawarra', 'wests-illawarra-wollongong', c.id, '1 Thomas Street, Fairy Meadow NSW 2519', -34.3951, 150.8870, 'Multiple big screens and a welcoming atmosphere for AFL, NRL and UFC. Community club with great bistro dining.', NULL, 4.1, 400, 10, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'wollongong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Icon Wollongong', 'icon-wollongong', c.id, '100 Keira Street, Wollongong NSW 2500', -34.4280, 150.8920, 'Live sports action on big screens in the Viper Room. Multi-level venue in the heart of Wollongong CBD.', NULL, 3.9, 300, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'wollongong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'North Wollongong Hotel', 'north-wollongong-hotel', c.id, '2 Cliff Road, North Wollongong NSW 2500', -34.4150, 150.8970, 'Beach-adjacent pub with sports on screens in the bar. Relaxed North Wollongong atmosphere with ocean views.', NULL, 4.0, 350, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'wollongong'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- HOBART VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pavilion at Salamanca', 'pavilion-salamanca-hobart', c.id, '1/13 Castray Esplanade, Battery Point TAS 7004', -42.8880, 147.3310, 'Hobart''s premiere sports bar in the heart of Salamanca with 15 large TV screens showing live sport day and night.', 'https://www.pavilionsalamanca.com.au/', 4.2, 400, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'hobart'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Telegraph Hotel', 'telegraph-hotel-hobart', c.id, '19 Morrison Street, Hobart TAS 7000', -42.8850, 147.3280, 'Classic Hobart pub with screens showing all major sports. A local favourite with a warm, welcoming atmosphere.', NULL, 4.1, 350, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'hobart'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hobart Workers Club', 'hobart-workers-club', c.id, '48 Argyle Street, Hobart TAS 7000', -42.8830, 147.3295, 'Community club with sports bar showing live sport on big screens. Great value food and drinks in the CBD.', NULL, 4.0, 250, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'hobart'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Brooker Inn', 'brooker-inn-hobart', c.id, '321 Brooker Avenue, Moonah TAS 7009', -42.8610, 147.3100, 'North Hobart pub with big screens and TAB showing all the live sport. Friendly local atmosphere with pub classics.', NULL, 3.9, 200, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'hobart'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Club Hotel Glenorchy', 'club-hotel-glenorchy', c.id, '368 Main Road, Glenorchy TAS 7010', -42.8370, 147.2870, 'Glenorchy pub with dedicated sports screens and TAB. Family-friendly with bistro dining and a beer garden.', NULL, 3.8, 180, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'hobart'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- GEELONG VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe Geelong', 'sporting-globe-geelong', c.id, '35 McKillop Street, Geelong VIC 3220', -38.1490, 144.3610, 'Best sports bar in Geelong with wall-to-wall screens and modern Australian pub classics. Part of the Sporting Globe chain.', 'https://www.sportingglobe.com.au/locations/geelong/', 4.2, 450, 25, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'geelong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Great Ocean Road Brewhouse', 'great-ocean-road-brewhouse-geelong', c.id, '41 Mercer Street, Geelong VIC 3220', -38.1510, 144.3590, 'Craft brewery with screens showing live sport. Local brews and pub fare in a relaxed Geelong atmosphere.', NULL, 4.3, 350, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'geelong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'PJ O''Brien''s Geelong', 'pj-obriens-geelong', c.id, '92 Moorabool Street, Geelong VIC 3220', -38.1470, 144.3607, 'Irish pub with big screens showing all major sports. A Geelong favourite for footy, cricket and Premier League.', NULL, 4.1, 300, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'geelong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'White Eagle House', 'white-eagle-house-geelong', c.id, '50 Yarra Street, Geelong VIC 3220', -38.1493, 144.3582, 'Sports viewing in a heritage venue with screens throughout. Cold beers and pub food in central Geelong.', NULL, 4.0, 250, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'geelong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ballcourt Hotel', 'ballcourt-hotel-geelong', c.id, '53 Ryrie Street, Geelong VIC 3220', -38.1465, 144.3630, 'Classic Geelong pub with screens in the bar showing live sport. Pool tables and a friendly crowd.', NULL, 3.9, 200, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'geelong'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- TOWNSVILLE VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Ville Sports Bar', 'ville-sports-bar-townsville', c.id, 'Sir Leslie Thiess Drive, Townsville QLD 4810', -19.2580, 146.7705, 'Live sport all day on a sports wall showing NRL, AFL, EPL, UFC, boxing and cricket. Part of The Ville Resort-Casino.', 'https://www.the-ville.com.au/', 4.0, 400, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'townsville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kirwan Tavern Sports Bar', 'kirwan-tavern-townsville', c.id, '1 Thuringowa Drive, Kirwan QLD 4817', -19.3060, 146.7275, 'Perfect for sipping a brew and watching live sport on large TV screens. Dedicated sports bar with TAB.', 'https://www.kirwantavern.com.au/', 4.1, 350, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'townsville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'OBJ''s Sports Bar', 'objs-sports-bar-townsville', c.id, 'Flinders Street, Townsville QLD 4810', -19.2590, 146.7930, 'Townsville''s premier sports bar showing international, local and pay-per-view sports on 12 TVs plus the big screen.', NULL, 4.2, 250, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'townsville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cowboys Leagues Club Sports Bar', 'cowboys-leagues-club-townsville', c.id, '113 Dalrymple Road, Currajong QLD 4812', -19.2730, 146.7710, 'Sports bar and lounge at the North Queensland Cowboys'' home club. Big screens showing NRL and all major sports.', 'https://cowboysleagues.com.au/', 4.0, 300, 10, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'townsville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Brewery Townsville', 'brewery-townsville', c.id, '252 Flinders Street, Townsville QLD 4810', -19.2588, 146.7932, 'Craft brewery on Flinders Street with screens in the bar. Local beers brewed on site with live sport.', NULL, 4.3, 300, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'townsville'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- CAIRNS VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Downunder Bar', 'downunder-bar-cairns', c.id, '77 Abbott Street, Cairns QLD 4870', -16.9205, 145.7750, 'Cairns'' favourite spot for great drinks, live sports and good company. All NRL and AFL action on big screens with 10 free pool tables.', NULL, 4.1, 500, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'cairns'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Souths Cairns Sports Bar', 'souths-cairns-sports-bar', c.id, '219 Mulgrave Road, Earlville QLD 4870', -16.9490, 145.7410, 'Live AFL, UFC and more on big screens. Part of Souths Cairns sports club with TAB and great value meals.', 'https://southcairnssportsclub.com.au/', 4.0, 300, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'cairns'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bourbon Street Sports Bar', 'bourbon-street-cairns', c.id, '100 Lake Street, Cairns QLD 4870', -16.9200, 145.7760, 'American-themed sports bar in Cairns CBD showing all major US and Australian sports. Bourbon cocktails and pub fare.', NULL, 4.0, 250, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cairns'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cairns RSL Club', 'cairns-rsl-club', c.id, '117 Esplanade, Cairns QLD 4870', -16.9220, 145.7730, 'RSL club with screens throughout showing live sport. Great value meals, drinks and TAB with views of the Esplanade.', NULL, 4.0, 400, 10, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'cairns'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Brothers Leagues Club Cairns', 'brothers-leagues-club-cairns', c.id, '99 Anderson Street, Manunda QLD 4870', -16.9290, 145.7580, 'Leagues club with dedicated sports bar area and big screens. Shows all major NRL and AFL games.', NULL, 4.0, 350, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'cairns'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- DARWIN VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hotel Darwin Sports Bar', 'hotel-darwin-sports-bar', c.id, '10 Herbert Street, Darwin NT 0800', -12.4611, 130.8418, 'Full HD TVs with all major sporting events on Fox Sports. Happy hour from 4pm with TAB, KENO and pokies.', 'https://www.thehoteldarwin.com.au/', 4.0, 400, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'darwin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shags Bar Darwin', 'shags-bar-darwin', c.id, '69 Mitchell Street, Darwin NT 0800', -12.4590, 130.8430, 'Darwin town favourite for catching the game with mates. Pub classics, cold beers and screens showing all the big sports.', NULL, 4.1, 300, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'darwin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Tap Darwin', 'tap-darwin', c.id, '21 Cavenagh Street, Darwin NT 0800', -12.4605, 130.8450, 'CBD bar with screens showing live sport and a wide selection of beers on tap. Popular after-work spot.', NULL, 4.2, 250, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'darwin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'SkyCity Darwin Sports Bar', 'skycity-darwin-sports-bar', c.id, 'Gilruth Avenue, The Gardens NT 0820', -12.4420, 130.8350, 'Sports viewing at SkyCity casino with screens throughout. Air-conditioned comfort with food and drinks while watching the big game.', 'https://www.skycitydarwin.com.au/', 3.9, 350, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'darwin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Vic Hotel Darwin', 'vic-hotel-darwin', c.id, '27 Smith Street Mall, Darwin NT 0800', -12.4625, 130.8410, 'Historic Darwin pub in the Smith Street Mall with sports on screens. Classic Top End pub atmosphere.', NULL, 3.8, 200, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'darwin'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- TOOWOOMBA VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Southern Hotel', 'southern-hotel-toowoomba', c.id, '839 Ruthven Street, Toowoomba QLD 4350', -27.5680, 151.9530, 'Bar 839 shows live sports across NRL, AFL, Union, Racing and more. Popular Toowoomba pub with a great sports atmosphere.', 'https://www.southernhotel.net/', 4.1, 350, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'toowoomba'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Toowoomba Sports Club', 'toowoomba-sports-club', c.id, '336 James Street, Toowoomba QLD 4350', -27.5560, 151.9630, 'Community sports club with dedicated sports bar showing live sport on big screens. TAB, bistro and great value drinks.', NULL, 4.0, 300, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'toowoomba'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fitzy''s on Church', 'fitzys-toowoomba', c.id, '1 Church Street, Toowoomba QLD 4350', -27.5598, 151.9550, 'CBD pub with screens showing live sport, pool tables and TAB. Popular with locals for footy and cricket.', NULL, 4.0, 250, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'toowoomba'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BALLARAT VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe Ballarat', 'sporting-globe-ballarat', c.id, '113 Sturt Street, Ballarat VIC 3350', -37.5615, 143.8540, 'Best sports bar in Ballarat with modern Australian and pub classics. Wall-to-wall screens and craft beers.', 'https://www.sportingglobe.com.au/locations/ballarat/', 4.2, 350, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'ballarat'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ballarat Leagues Club', 'ballarat-leagues-club', c.id, '1 Creswick Road, Ballarat VIC 3350', -37.5510, 143.8430, 'Local entertainment venue with sports bar featuring large screen TVs showing multiple sports channels.', NULL, 4.0, 250, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'ballarat'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The George Hotel Ballarat', 'george-hotel-ballarat', c.id, '27 Lydiard Street South, Ballarat VIC 3350', -37.5640, 143.8586, 'Historic Ballarat pub on Lydiard Street with screens in the bar showing footy and cricket. Classic regional pub.', NULL, 4.0, 200, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'ballarat'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BENDIGO VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sporting Globe Bendigo', 'sporting-globe-bendigo', c.id, 'Mitchell Street, Bendigo VIC 3550', -36.7582, 144.2800, 'Best sports bar in Bendigo with wall-to-wall screens, craft beers and pub classics. Part of the national chain.', 'https://www.sportingglobe.com.au/locations/bendigo/', 4.2, 300, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'bendigo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bendigo Club Sports Bar', 'bendigo-club-sports-bar', c.id, '30 Park Street, Bendigo VIC 3550', -36.7600, 144.2820, 'Newly renovated sports bar with multiple TVs, TAB facilities, variety of tap and craft beers and an all-day menu.', 'https://www.bendigoclub.com.au/', 4.1, 250, 10, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'bendigo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Shamrock Hotel Bendigo', 'shamrock-hotel-bendigo', c.id, 'Pall Mall, Bendigo VIC 3550', -36.7575, 144.2790, 'Grand historic hotel with sports screens in the bar. A Bendigo landmark with character and cold beers.', NULL, 4.0, 350, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'bendigo'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ALBURY-WODONGA VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Commercial Club Albury Sports Bar', 'commercial-club-albury', c.id, '618 Dean Street, Albury NSW 2640', -36.0780, 146.9130, 'Dedicated sports bar with big screens showing all the live sport. TAB facilities and great value meals at this Albury institution.', 'https://commercialclubalbury.com.au/', 4.1, 400, 10, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'albury-wodonga'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Blazing Stump', 'blazing-stump-wodonga', c.id, '112 High Street, Wodonga VIC 3690', -36.1185, 146.8860, 'Largest sports-dedicated screen in Wodonga with large public bar, beer garden and fireplace. The go-to for sports in Wodonga.', NULL, 4.0, 250, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'albury-wodonga'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'SS&A Albury', 'ssa-albury', c.id, '555 Dean Street, Albury NSW 2640', -36.0780, 146.9120, 'Large club complex with sports bar area showing live sport on multiple screens. Bistro, entertainment and TAB.', NULL, 4.0, 350, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'albury-wodonga'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LAUNCESTON VENUES (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sporties Hotel', 'sporties-hotel-launceston', c.id, '109 Charles Street, Launceston TAS 7250', -41.4370, 147.1380, 'Launceston''s premier sports pub with Fox Sports live 7 days a week and a pool table. Nestled in the cafe precinct at the leafy end of Charles Street.', 'https://www.sportieshotel.com.au/', 4.2, 350, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'launceston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sports Garden Hotel', 'sports-garden-hotel-launceston', c.id, '103 York Street, Launceston TAS 7250', -41.4380, 147.1360, 'Family-friendly venue with newly renovated clean, modern bar and multiple Fox Sports channels showing all your favourite sports.', 'https://sportsgardenhotel.com.au/', 4.0, 250, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'launceston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Plough Inn Launceston', 'plough-inn-launceston', c.id, '28 Brisbane Street, Launceston TAS 7250', -41.4395, 147.1395, '16 screens with live sport and racing all day. 6 beers on tap plus Canadian Club and Dry. Sports bar with wine bar upstairs.', 'https://ploughlaunceston.com.au/', 4.1, 300, 16, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'launceston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Country Club Tasmania Sports Bar', 'country-club-tasmania-launceston', c.id, 'Country Club Avenue, Prospect TAS 7250', -41.4562, 147.1105, 'Casino sports bar open past midnight 7 days with live sports on big screens and fully stocked bar.', 'https://countryclubtasmania.com.au/', 4.0, 400, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'launceston'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MACKAY VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Harrup Park Sports Bar', 'harrup-park-sports-bar-mackay', c.id, '67 Juliet Street, South Mackay QLD 4740', -21.1530, 149.1700, 'Sports bar with three TAB terminals, twelve TVs for racing, six TVs with live racing plus big screen for major sporting events.', 'https://harruppark.com.au/', 4.1, 300, 18, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'mackay'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Magpies Sporting Club Sportsbar', 'magpies-sportsbar-mackay', c.id, '2 Glenella Road, Glenella QLD 4740', -21.1285, 149.1510, 'All the sporting action live on big screens plus TAB and Keno. Features a large 7m x 1.5m big screen for major events.', 'https://www.magpiesmackay.com.au/', 4.0, 250, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'mackay'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Austral Hotel Mackay', 'austral-hotel-mackay', c.id, '189 Victoria Street, Mackay QLD 4740', -21.1424, 149.1876, 'Classic Mackay pub with sports screens in the bar. Cold beers and pub food in the heart of the city.', NULL, 3.9, 200, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'mackay'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ROCKHAMPTON VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rockhampton Leagues Club Sports Bar', 'rockhampton-leagues-club', c.id, 'Cambridge Street, Rockhampton QLD 4700', -23.3785, 150.5110, 'Major live sporting events on 7 individual TV displays including a large main event screen. Cold beer and the ultimate sports viewing experience.', 'https://rockhamptonleaguesclub.com.au/', 4.0, 350, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'rockhampton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Lionleigh Pub', 'lionleigh-pub-rockhampton', c.id, '158 Musgrave Street, North Rockhampton QLD 4701', -23.3641, 150.5100, 'Five big screen TVs, TAB and Keno. Classic Rocky pub to catch a game with a cold beer.', 'https://www.thelionleigh.com.au/', 4.0, 200, 5, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'rockhampton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Berserker Tavern Sports Bar', 'berserker-tavern-rockhampton', c.id, '18 Albert Street, Berserker QLD 4701', -23.3650, 150.5270, 'Big screens, TAB and ice-cold beers for live local and international sports. Beer garden and live music too.', 'https://berserkertavern.com.au/', 4.1, 250, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'rockhampton'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BUNBURY VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Highway Hotel', 'highway-hotel-bunbury', c.id, '130 Forrest Avenue, Bunbury WA 6230', -33.3330, 115.6500, 'Bunbury''s home of live sport with Sky Channel, Fox Sports, ESPN, live Premier League, AFL and cricket. Pool table and TAB.', 'https://www.thehighwayhotel.com.au/', 4.0, 300, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'bunbury'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Last Slice Sports Bar', 'last-slice-sports-bar-bunbury', c.id, '15 Victoria Street, Bunbury WA 6230', -33.3284, 115.6380, 'American-style sports bar and prime location for live sport viewing in Bunbury. Every major sporting event shown live and loud.', 'https://www.lastslice.com.au/', 4.2, 200, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bunbury'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Parks Tavern Bunbury', 'parks-tavern-bunbury', c.id, '2 Park Crescent, Bunbury WA 6230', -33.3290, 115.6440, 'Relaxed atmosphere with latest games in the sports bar, ice-cold pints and pub food. Friendly Bunbury local.', NULL, 4.0, 150, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'bunbury'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BUNDABERG VENUES (2 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Brothers Sports Club Bundaberg', 'brothers-sports-club-bundaberg', c.id, '2 Crofton Street, Bundaberg West QLD 4670', -24.8670, 152.3440, 'Max Paddy''s Sports bar at Brothers Sports Club. Live sport on big screens with TAB and bistro dining.', NULL, 4.0, 250, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'bundaberg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Club Hotel Bundaberg', 'club-hotel-bundaberg', c.id, '208 Bourbong Street, Bundaberg QLD 4670', -24.8680, 152.3510, 'Classic Bundaberg pub with sports screens in the bar showing NRL, AFL and racing. Pub food and cold beers.', NULL, 3.9, 180, 4, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'bundaberg'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- COFFS HARBOUR VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Legend''s Bar at C.ex Coffs', 'legends-bar-cex-coffs', c.id, '21-25 Vernon Street, Coffs Harbour NSW 2450', -30.2975, 153.1124, 'Live sports action at C.ex Coffs showing all Fox Channels, Main Event, STAN Sport and ESPN. If there''s a sporting event on, they show it.', 'https://cex.com.au/', 4.1, 400, 10, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'coffs-harbour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Greenhouse Tavern Sports Bar', 'greenhouse-tavern-coffs-harbour', c.id, 'Pacific Highway, Coffs Harbour NSW 2450', -30.3050, 153.1130, 'Sports bar with pool and live sports over a refreshing drink. Relaxed pub atmosphere on the Pacific Highway.', 'https://www.greenhousetavern.com.au/', 4.0, 300, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'coffs-harbour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Pier Hotel Coffs Harbour', 'pier-hotel-coffs-harbour', c.id, '361 Harbour Drive, Coffs Harbour NSW 2450', -30.3080, 153.1370, 'Built in 1905, one of Coffs Harbour''s most recognizable landmarks. Small focused public sports bar with 7+ live sport events shown simultaneously.', NULL, 4.0, 350, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'coffs-harbour'
ON CONFLICT (slug) DO NOTHING;
