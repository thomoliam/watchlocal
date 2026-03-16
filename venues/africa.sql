-- ============================================================================
-- African Sports Venues (South Africa, Kenya, Tanzania, Rwanda)
-- Generated: 2026-03-16
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

-- South Africa
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cape Town', 'cape-town', 'South Africa', 'ZA', -33.9249, 18.4241, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Johannesburg', 'johannesburg', 'South Africa', 'ZA', -26.2041, 28.0473, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Durban', 'durban', 'South Africa', 'ZA', -29.8587, 31.0218, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

-- Kenya
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Nairobi', 'nairobi', 'Kenya', 'KE', -1.2921, 36.8219, 'Africa/Nairobi')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Mombasa', 'mombasa', 'Kenya', 'KE', -4.0435, 39.6682, 'Africa/Nairobi')
ON CONFLICT (slug) DO NOTHING;

-- Tanzania
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Dar es Salaam', 'dar-es-salaam', 'Tanzania', 'TZ', -6.7924, 39.2083, 'Africa/Dar_es_Salaam')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Zanzibar', 'zanzibar', 'Tanzania', 'TZ', -6.1659, 39.2026, 'Africa/Dar_es_Salaam')
ON CONFLICT (slug) DO NOTHING;

-- Rwanda
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Kigali', 'kigali', 'Rwanda', 'RW', -1.9403, 29.8739, 'Africa/Kigali')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- CAPE TOWN VENUES (10 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Foresters Arms', 'foresters-arms-cape-town', c.id, '52 Newlands Avenue, Newlands, Cape Town 7700', -33.9419, 18.4593, 'One of the oldest pubs in South Africa, established in 1852 and located near Newlands rugby and cricket grounds. Listed in the Guinness Book of Records for most beer sold in the Southern Hemisphere, with multiple TV screens for sports fans and a fine whiskey bar.', 'https://forries.co.za/', 4.2, 1200, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Toad', 'the-toad-cape-town', c.id, '198 Long Street, Cape Town City Centre, Cape Town 8001', -33.9240, 18.4173, 'Famous Cape Town sports bar co-owned by Springbok rugby legend Bob Skinstad. Features five screens, an epic beer garden, affordable pub grub, and lager on tap in a buzzing atmosphere.', 'https://thetoad.co.za/', 4.1, 680, 5, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mitchell''s Scottish Ale House', 'mitchells-scottish-ale-house', c.id, 'East Pier Road, V&A Waterfront, Cape Town 8001', -33.9072, 18.4197, 'The very first tenant of the V&A Waterfront with 16 draught beers on tap and multiple large plasma TVs with quality sound systems. Hosts a Formula 1 Club and Liverpool Supporters Club with drink specials on match days.', 'https://mitchellsalehouse.co.za/', 4.0, 950, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fireman''s Arms', 'firemans-arms-cape-town', c.id, '25 Mechau Street, Cape Town City Centre, Cape Town 8001', -33.9206, 18.4224, 'One of Cape Town''s oldest pubs dating back to 1864, themed around sports and sports teams. Serves delicious pub grub-inspired food with unbelievable drinks specials and a traditional British pub atmosphere.', NULL, 4.1, 520, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Perseverance Tavern', 'perseverance-tavern-cape-town', c.id, '83 Buitenkant Street, Cape Town City Centre, Cape Town 8001', -33.9310, 18.4260, 'The oldest pub in South Africa, established in 1808. Known as Percies by regulars, this beloved institution features live sports screenings, refreshing drinks, and welcoming camaraderie among loyal locals.', NULL, 4.0, 430, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Van Hunks', 'van-hunks-cape-town', c.id, '116 Kloof Street, Gardens, Cape Town 8001', -33.9302, 18.4103, 'Stalwart of the Kloof Street restaurant scene with multiple strategically-placed TVs for sports viewing. Charming and relaxed atmosphere with a delightfully South African menu including peri-peri chicken livers and Cape Malay bobotie.', NULL, 4.2, 610, 8, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rascals Pub', 'rascals-pub-cape-town', c.id, '2 Meyer Street, Claremont, Cape Town 7708', -33.9830, 18.4625, 'A proper southern suburbs local blending friendly pub vibes with the excitement of live sport. No frills, no fluff — just a good time with a pool table, jukebox, cheap drinks, and solid pub food.', NULL, 4.3, 380, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Devil''s Peak Tap Room', 'devils-peak-tap-room', c.id, '150 Cecil Road, Salt River, Cape Town 7925', -33.9280, 18.4652, 'Craft brewery tap room offering an exciting sports viewing experience. Saturday game specials include 1.5L jugs of Devil''s Peak Lager for R100. A must-visit for craft beer lovers who want to catch the game.', 'https://devilspeakbrewing.co.za/', 4.4, 720, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rick''s Cafe Americain', 'ricks-cafe-americain-cape-town', c.id, '2 Park Road, Gardens, Cape Town 8001', -33.9285, 18.4099, 'Three-floor venue with three different vibes: a bar with 100+ tequilas and gins, a Casablanca-inspired lounge, and a rooftop for sundowners. TV screens play sport during big games across all levels.', NULL, 4.1, 490, 8, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beerhouse', 'beerhouse-cape-town', c.id, '223 Long Street, Cape Town City Centre, Cape Town 8001', -33.9252, 18.4168, 'Craft beer destination on Long Street with 99 bottles and 25+ taps. Multiple screens show live sport while you sample South Africa''s best microbrews alongside gourmet burgers and sharing platters.', 'https://beerhouse.co.za/', 4.3, 860, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'cape-town'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- JOHANNESBURG VENUES (8 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Benchwarmers Sports Bar', 'benchwarmers-johannesburg', c.id, '2 Bolton Road, Rosebank, Johannesburg 2196', -26.1451, 28.0440, 'Wall-to-wall HD screens and a sound system that puts you right on the sidelines. Pulls a vibey crowd cheering on the Springboks or F1 heroes with cold beers flowing and hearty pub grub on match days.', NULL, 4.2, 580, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Fourways', 'hooters-fourways-johannesburg', c.id, 'The Buzz Shopping Centre, Cnr William Nicol & Leslie Ave, Fourways, Johannesburg 2191', -26.0231, 28.0125, 'Massive sports bar with 40 plasma TV screens broadcasting local and international matches. Enjoy cold craft beers, specialty cocktails, and signature wings while catching every angle of the big game.', 'https://hooters.co.za/', 4.0, 1100, 40, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Milk Bar at Sandton Sports Club', 'milk-bar-sandton', c.id, 'Sandton Sports Club, 28 Union Road, Sandton, Johannesburg 2196', -26.1067, 28.0565, 'Colourful retro African-chic restaurant at Sandton Sports Club where sports-crazy families and friends enjoy ample outdoor seating with high-definition TVs strategically placed throughout the venue.', NULL, 4.1, 420, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pablo', 'pablo-johannesburg', c.id, '73 Juta Street, Braamfontein, Johannesburg 2001', -26.1918, 28.0355, 'Sleek yet unpretentious spot that transforms into a rugby-watching haven on match days. Multiple big screens perfectly positioned for viewing, with crisp local beers and signature cocktails.', NULL, 4.2, 350, 8, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Social on Main', 'social-on-main-johannesburg', c.id, '142 Main Road, Bryanston, Johannesburg 2191', -26.0589, 28.0200, 'Hugely popular rugby-watching choice with plenty of viewing spots, ice-cold beers, game-day specials, and an extensive selection of craft beers, stouts, and ciders.', NULL, 4.3, 620, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hogshead', 'hogshead-johannesburg', c.id, '49 4th Avenue, Parkhurst, Johannesburg 2193', -26.1378, 28.0153, 'Fusion of traditional hospitality and vintage glamour with retro brick interior and quirky light fittings. An authentic smokehouse with an incredible burger menu and wide range of craft beer on tap.', NULL, 4.1, 480, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Emperors Palace', 'hooters-emperors-palace', c.id, 'Emperors Palace, 64 Jones Road, Kempton Park, Johannesburg 1619', -26.1454, 28.2230, 'Sports bar and grill inside the iconic Emperors Palace Casino complex. Large screens for live sports, cold beers, famous wings, and a buzzing casino-adjacent atmosphere for big game nights.', 'https://hooters.co.za/', 3.9, 750, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'TimeOut Sports Bar', 'timeout-sports-bar-midrand', c.id, 'Carlswald Lifestyle Centre, Cnr New & Modderfontein Roads, Midrand, Johannesburg 1685', -26.0170, 28.1282, 'Popular Midrand sports bar with a lively atmosphere on match days. Multiple screens, cold beers, pub classics, and a loyal crowd of regulars make this a go-to for Joburg sport fans north of the city.', 'https://www.facebook.com/timeoutsports', 4.0, 320, 12, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'johannesburg'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- DURBAN VENUES (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bush Tavern', 'the-bush-tavern-durban', c.id, '14 Palm Boulevard, uMdloti Beach, Durban 4350', -29.6545, 31.1186, 'Legendary sports bar with TVs throughout the restaurant and expansive sea views where whales and dolphins are often spotted from the outdoor deck. Live music on select nights with happy hours on Wednesdays and Thursdays.', NULL, 4.3, 680, 10, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'durban'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Robsons at the Point Waterfront', 'robsons-point-waterfront-durban', c.id, '1 Bell Street, Point Waterfront, Durban 4001', -29.8698, 31.0480, 'Brewery and bar at the Point Waterfront, perfect for sport-watching. Book a spot on the long-slung tables or grab a seat at the bar and catch the game on the big screen with craft beers brewed on site.', NULL, 4.2, 520, 8, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'durban'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Thirsty Whale', 'thirsty-whale-durban', c.id, 'Amanzimtoti Beach, Beach Road, Amanzimtoti, Durban 4126', -30.0549, 30.8802, 'A whale of a time on Amanzimtoti Beach with an array of eccentric drinks, a wide range of shooters and sharers, and multiple screens for catching live sport by the seaside.', NULL, 4.0, 390, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'durban'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mixez Sports Bar', 'mixez-sports-bar-durban', c.id, '77 Tara Road, Bluff, Durban 4052', -29.9181, 30.9891, 'Renowned for serving the best Indian curries on the Bluff alongside cold beers and live sport on multiple screens. A local favourite combining Durban''s famous curry culture with passionate sports viewing.', NULL, 4.1, 280, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'durban'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Umhlanga', 'hooters-umhlanga-durban', c.id, '2 Lighthouse Road, Umhlanga Rocks, Durban 4319', -29.7270, 31.0872, 'Beachside Hooters with large plasma screen TVs for live sport and panoramic views of the Umhlanga coastline. Cold beers, signature wings, and a lively atmosphere steps from the famous lighthouse.', 'https://hooters.co.za/', 4.0, 650, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'durban'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NAIROBI VENUES (6 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'K1 Klub House', 'k1-klub-house-nairobi', c.id, 'Ojijo Road, Parklands, Nairobi', -1.2612, 36.8113, 'Nairobi''s premier sports bar with large screens and seven international standard pool tables. Hosts monthly pool competitions and is the go-to spot for catching big Premier League and Champions League matches.', NULL, 4.2, 480, 10, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'nairobi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hacienda Sports Bar & Grill', 'hacienda-sports-bar-nairobi', c.id, 'Ngara Road, Ngara, Nairobi', -1.2780, 36.8280, 'High-end modern sports bar in Ngara with great food and classy, exclusive amenities. Multiple HD screens for live matches, premium grill menu, and a sophisticated crowd on match days.', 'https://www.facebook.com/haciendagrillke/', 4.3, 350, 12, 'upscale', '$$', true, true, true
FROM cities c WHERE c.slug = 'nairobi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'District 6 Sports Bar', 'district-6-sports-bar-nairobi', c.id, 'Floor 6, Hyatt Regency Nairobi Westlands, 38 Muthithi Road, Westlands, Nairobi', -1.2660, 36.8040, 'Upscale sports bar on the 6th floor of the Hyatt Regency with panoramic views of Nairobi. Premium cocktails, craft beers, and gourmet bites while watching live sport on state-of-the-art screens.', 'https://www.hyattrestaurants.com/en/nairobi/bar/district-6-sports-bar', 4.4, 290, 8, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'nairobi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kengeles Lavington', 'kengeles-lavington-nairobi', c.id, 'Lavington Green Shopping Centre, James Gichuru Road, Lavington, Nairobi', -1.2810, 36.7700, 'Classy sports bar known for famous chicken wings, live music, and international match screenings. The Lavington location features indoor and outdoor seating with a vibrant weekend atmosphere.', NULL, 4.1, 620, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'nairobi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sky Bar Westlands', 'sky-bar-westlands-nairobi', c.id, 'Rooftop, ibis Styles Hotel, Chiromo Lane, Westlands, Nairobi', -1.2690, 36.8070, 'Rooftop sports bar atop ibis Styles Hotel offering panoramic views over Nairobi. A bright indoor lounge and open-air terrace with wide cocktail selection and bar bites, plus screens for live sport.', NULL, 4.2, 310, 6, 'upscale', '$$', true, true, true
FROM cities c WHERE c.slug = 'nairobi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Urban Gourmet Burger', 'urban-gourmet-burger-nairobi', c.id, 'Mwanzi Road, Westlands, Nairobi', -1.2650, 36.8030, 'Popular burger joint in Westlands featuring a huge screen TV for sports and craft burgers that have become a Nairobi favourite. Casual vibes, cold Tuskers, and the perfect match-day burger.', NULL, 4.3, 260, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'nairobi'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MOMBASA VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kahama Sports Bar & Restaurant', 'kahama-sports-bar-mombasa', c.id, 'Bamburi Beach Road, Bamburi, Mombasa', -4.0050, 39.7230, 'One of the best and busiest sports bars on the coast with 4 very large screens and dozens of plasma screens. Often shows two football matches simultaneously, popular with locals and tourists on the hotel strip at Bamburi.', NULL, 3.9, 420, 20, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'mombasa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Zero 4 Sports Bar', 'zero-4-sports-bar-mombasa', c.id, 'Moi Avenue, Mombasa CBD, Mombasa', -4.0435, 39.6620, 'Must-visit sports bar in the bustling heart of Mombasa known for its vibrant atmosphere. Large screens for catching favourite games while enjoying food and cold Tusker beers.', NULL, 4.0, 280, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'mombasa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'V-1 Sports Bar & Grill', 'v1-sports-bar-mombasa', c.id, 'Nyali Road, Nyali, Mombasa', -4.0210, 39.7060, 'Popular Nyali neighbourhood sports bar with a loyal following for Premier League weekends. Cold drinks, nyama choma, and multiple screens in a relaxed coastal setting.', 'https://www.instagram.com/v1_sports_bar/', 4.1, 190, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'mombasa'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- DAR ES SALAAM VENUES (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Governers Sports Bar & Grill', 'governers-sports-bar-dar', c.id, 'Haile Selassie Road, Masaki, Dar es Salaam', -6.7540, 39.2780, 'Popular sports bar in the heart of Dar es Salaam serving nyama choma and local draught beers. A go-to for football fans with multiple screens and a lively grill-house atmosphere.', NULL, 4.2, 340, 8, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'dar-es-salaam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'George & Dragon Pub', 'george-and-dragon-dar', c.id, 'Haile Selassie Road, Masaki, Dar es Salaam', -6.7560, 39.2770, 'Vibrant British-style pub offering classic cuisine and a lively sports atmosphere. A favourite among expats and locals alike for Premier League match days with cold Safari Lagers on tap.', NULL, 4.1, 280, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'dar-es-salaam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Q Bar Dar es Salaam', 'q-bar-dar-es-salaam', c.id, 'Slipway Shopping Centre, Msasani Peninsula, Dar es Salaam', -6.7470, 39.2640, 'Easygoing spot for watching the game with friends, whether you''re dancing or keeping your eyes on the screen. Located at the scenic Slipway Shopping Centre on the Msasani Peninsula waterfront.', NULL, 4.0, 220, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'dar-es-salaam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Savannah Lounge & Bar', 'savannah-lounge-dar', c.id, '3rd Floor, JB Belmont Hotel, Ohio Street, Dar es Salaam', -6.8160, 39.2920, 'Luxurious sports lounge on the third floor of JB Belmont Hotel with multiple screens airing major matches. Renowned for exceptional cocktails and an impressive array of spirits, champagnes, and fine wines.', NULL, 4.3, 180, 8, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'dar-es-salaam'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ZANZIBAR VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mtoni Marine Mcheza Bar', 'mtoni-marine-mcheza-bar-zanzibar', c.id, 'Mtoni Marine, North of Stone Town, Zanzibar', -6.1450, 39.1970, 'The closest thing to a stadium atmosphere in Zanzibar with multiple TVs and two big screens showing all live sports via satellite — from football to rugby. Located just north of Stone Town on the west coast.', NULL, 4.0, 210, 6, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'zanzibar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Gerry''s Bar Nungwi', 'gerrys-bar-nungwi-zanzibar', c.id, 'Nungwi Beach, Nungwi, Zanzibar', -5.7270, 39.2980, 'Beachfront sports bar on Nungwi Beach showing evening games on a big screen via DSTV Supersport. Watch football with your feet in the sand and cold Kilimanjaro beers as the sun sets over the Indian Ocean.', 'https://gerrysbar.com/zanzibar-sports-bar/', 4.2, 350, 3, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'zanzibar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Zanzibar Sports Cafe', 'zanzibar-sports-cafe', c.id, 'Shangani Street, Stone Town, Zanzibar', -6.1610, 39.1870, 'Dedicated sports cafe in the heart of Stone Town showing live matches on multiple screens. A reliable spot for football fans visiting Zanzibar who don''t want to miss a game, with local food and cold drinks.', NULL, 3.9, 160, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'zanzibar'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- KIGALI VENUES (3 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Zaria Court Sports Bar', 'zaria-court-sports-bar-kigali', c.id, 'KG 9 Avenue, Kiyovu, Kigali', -1.9530, 30.0610, 'Kigali''s first proper sports bar with 19 75-inch TVs ensuring you never miss a moment of the game. Purpose-built for sports viewing with cold Mutzig beers and a premium pub menu.', 'https://www.zariacourt.com/eat-drink', 4.3, 280, 19, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'kigali'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Car Wash Grill & Sports Bar', 'car-wash-grill-sports-bar-kigali', c.id, 'KN 27 Street, Kimihurura, Kigali', -1.9510, 30.0740, 'Iconic Kigali patio bar set in an actual car wash at the bottom of Kimihurura. The go-to destination for football enthusiasts serving some of the city''s best brochettes alongside cold beers, with karaoke nights and live concerts.', NULL, 4.1, 350, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'kigali'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Balcon Lounge & Sports Bar', 'le-balcon-lounge-kigali', c.id, 'KG 14 Avenue, Gacuriro, Kigali', -1.9310, 30.1050, 'Live music events and sports screenings attract a diverse crowd to this energetic Gacuriro venue. A great spot for catching Premier League and African Champions League matches with craft cocktails and local bites.', NULL, 4.0, 190, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'kigali'
ON CONFLICT (slug) DO NOTHING;
