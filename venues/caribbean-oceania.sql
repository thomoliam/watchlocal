-- ============================================================================
-- Caribbean & Oceania Sports Venues
-- Countries: Jamaica, Dominican Republic, Cuba, Bahamas, Fiji, New Zealand
-- Cities: Kingston, Montego Bay, Santo Domingo, Punta Cana,
--         Havana, Nassau, Auckland, Wellington, Queenstown, Nadi, Suva
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

-- JAMAICA
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Kingston', 'kingston', 'Jamaica', 'JM', 18.0179, -76.8099, 'America/Jamaica')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Montego Bay', 'montego-bay', 'Jamaica', 'JM', 18.4762, -77.8939, 'America/Jamaica')
ON CONFLICT (slug) DO NOTHING;

-- DOMINICAN REPUBLIC
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Santo Domingo', 'santo-domingo', 'Dominican Republic', 'DO', 18.4861, -69.9312, 'America/Santo_Domingo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Punta Cana', 'punta-cana', 'Dominican Republic', 'DO', 18.5601, -68.3725, 'America/Santo_Domingo')
ON CONFLICT (slug) DO NOTHING;

-- CUBA
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Havana', 'havana', 'Cuba', 'CU', 23.1136, -82.3666, 'America/Havana')
ON CONFLICT (slug) DO NOTHING;

-- BAHAMAS
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Nassau', 'nassau', 'Bahamas', 'BS', 25.0343, -77.3963, 'America/Nassau')
ON CONFLICT (slug) DO NOTHING;

-- NEW ZEALAND
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Auckland', 'auckland', 'New Zealand', 'NZ', -36.8485, 174.7633, 'Pacific/Auckland')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Wellington', 'wellington', 'New Zealand', 'NZ', -41.2865, 174.7762, 'Pacific/Auckland')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Queenstown', 'queenstown', 'New Zealand', 'NZ', -45.0312, 168.6626, 'Pacific/Auckland')
ON CONFLICT (slug) DO NOTHING;

-- FIJI
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Nadi', 'nadi', 'Fiji', 'FJ', -17.7765, 177.9500, 'Pacific/Fiji')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Suva', 'suva', 'Fiji', 'FJ', -18.1416, 178.4419, 'Pacific/Fiji')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - JAMAICA
-- ============================================================================

-- KINGSTON (4 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tracks & Records', 'tracks-and-records-kingston', c.id, '67 Constant Spring Rd, Kingston 10', 18.0198, -76.7873, 'Usain Bolt''s iconic sports bar and restaurant in the heart of New Kingston. Features large screens, vibrant atmosphere, great Jamaican food, and a family-friendly vibe perfect for watching international sports.', 'https://www.tracksandrecords.com/', 4.3, 2100, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'kingston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Triple Century Sports Bar', 'triple-century-sports-bar-kingston', c.id, '7 South Ave, Kingston 10', 18.0145, -76.7903, 'Owned by cricket legend Chris Gayle, this lively spot features large 55-inch TVs for catching all your favourite games. Hosts karaoke nights and live musical performances on the main stage.', 'https://www.triplecenturybar.com/', 4.2, 850, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'kingston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Barbican Beach Bar', 'barbican-beach-bar-kingston', c.id, '22 East Kings House Rd, Kingston 6', 18.0215, -76.7768, 'Located in the heart of Kingston, this spot caters to sports lovers with a VIP Box offering a breathtaking view of Kingston. Great for watching games while enjoying cocktails and Jamaican fare.', NULL, 4.1, 620, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'kingston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Top Strykaz Pool Lounge & Sports Bar', 'top-strykaz-kingston', c.id, '15 Hillcrest Ave, Kingston 6', 18.0233, -76.7801, 'A lively atmosphere where great food meets exciting sports. Features pool tables, multiple screens, and a fun crowd making it a top spot for game nights in Kingston.', NULL, 4.0, 380, 6, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'kingston'
ON CONFLICT (slug) DO NOTHING;

-- MONTEGO BAY (3 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tracks & Records Montego Bay', 'tracks-and-records-montego-bay', c.id, 'Marketplace Mall, Howard Cooke Blvd, Montego Bay', 18.4753, -77.9183, 'The Montego Bay outpost of Usain Bolt''s famous sports bar chain, featuring 45 flat-screen televisions for watching live sports. Serves authentic Jamaican cuisine in a vibrant, energetic setting.', 'https://www.tracksandrecords.com/', 4.2, 1500, 45, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'montego-bay'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rehab Sports Bar & Grill', 'rehab-sports-bar-montego-bay', c.id, 'Gloucester Ave, Montego Bay', 18.4833, -77.9175, 'Premier Hip Strip sports bar with 3 bars, 14 widescreen TVs, 2 pool tables, gaming lounge, jerk centre, and a VIP deck overlooking the sea. Live music and DJ sets on weekends.', 'https://rehabbar-bio.breecms.com/', 4.3, 920, 14, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'montego-bay'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Runway Sports Bar', 'runway-sports-bar-montego-bay', c.id, 'Queen''s Dr, Montego Bay', 18.4971, -77.9127, 'Features six flat-panel televisions and a giant screen for major sporting events. Offers darts, swimming pool, two pool tables, nightly entertainment, and casino-style game boxes.', NULL, 4.0, 450, 7, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'montego-bay'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - DOMINICAN REPUBLIC
-- ============================================================================

-- SANTO DOMINGO (4 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Partners Sport Bar', 'partners-sport-bar-santo-domingo', c.id, 'Av. Abraham Lincoln 508, Santo Domingo', 18.4710, -69.9388, 'One of Santo Domingo''s top-rated sports bars with multiple screens, cold beer on tap, and a reliable spot for catching baseball, football, and international sports events in the Piantini district.', NULL, 4.3, 780, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'santo-domingo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Barrica Sport Bar', 'la-barrica-sport-bar-santo-domingo', c.id, 'Calle El Recodo 2, Santo Domingo', 18.4822, -69.9291, 'Popular local sports bar in the Naco neighbourhood with a laid-back vibe, screens throughout, and classic Dominican bar food. A favourite for watching baseball and football with friends.', NULL, 4.1, 520, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'santo-domingo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Brau Marketbar', 'brau-marketbar-santo-domingo', c.id, 'Calle Padre Billini 202, Zona Colonial, Santo Domingo', 18.4735, -69.8858, 'Modern American-style craft beer bar with a Caribbean twist in the Zona Colonial. Features the best selection of craft brews in the DR alongside big screens for catching the game.', NULL, 4.4, 1100, 6, 'upscale', '$$', true, true, true
FROM cities c WHERE c.slug = 'santo-domingo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Big Tree Sport Bar', 'the-big-tree-sport-bar-santo-domingo', c.id, 'Av. Gustavo Mejia Ricart 78, Santo Domingo', 18.4788, -69.9350, 'A spacious sports bar in the heart of Santo Domingo with large projection screens and multiple TVs for simultaneous game viewing. Known for its buzzing atmosphere during major Dominican baseball games.', NULL, 4.0, 430, 10, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'santo-domingo'
ON CONFLICT (slug) DO NOTHING;

-- PUNTA CANA (3 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '2Dudes Sports Bar & Restaurant', '2dudes-sports-bar-punta-cana', c.id, 'Los Corales, Bavaro, Punta Cana', 18.6780, -68.3984, 'Voted the number one sports bar and restaurant in the Dominican Republic. Features 12 TVs across indoor air-conditioned and outdoor terrace areas, showcasing all major live sports events.', NULL, 4.5, 1800, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'punta-cana'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Corner Bar Bavaro', 'the-corner-bar-punta-cana', c.id, 'Av. Alemania, Bavaro, Punta Cana', 18.6822, -68.4068, 'The first and still one of the best sports bars in Bavaro. Features 8 big screen TVs, plenty of seating, and a welcoming atmosphere for catching any game while enjoying cold drinks and bar food.', 'https://www.facebook.com/BavaroCornerBar/', 4.2, 720, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'punta-cana'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Xtra Time Sports Bar', 'xtra-time-sports-bar-punta-cana', c.id, 'Av. Espana, Bavaro, Punta Cana', 18.6755, -68.4012, 'A vibrant sports bar in Punta Cana with numerous screens showcasing live games. Energetic game day atmosphere with cold beers, cocktails, and hearty pub grub.', NULL, 4.1, 540, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'punta-cana'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - CUBA
-- ============================================================================

-- HAVANA (4 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sports Cafe Havana', 'sports-cafe-havana', c.id, 'Calle Obispo 406, Habana Vieja, Havana', 23.1370, -82.3560, 'One of the few dedicated sports venues in Havana with 8 to 10 TVs showing international sports. Good drinks, quick service, and a lively atmosphere when games are on.', NULL, 4.0, 480, 10, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'havana'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Art Pub Havana', 'art-pub-havana', c.id, 'Tte. Rey 306, e/ Aguacate y Compostela, Habana Vieja, Havana', 23.1345, -82.3535, 'A popular Old Havana bar where staff and patrons gather to watch football matches on screens. Known for its artistic decor, good cocktails, and an authentic Cuban atmosphere.', NULL, 4.2, 620, 4, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'havana'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Melia Habana Sports Bar', 'melia-habana-sports-bar', c.id, 'Av. 3ra e/ 76 y 80, Miramar, Havana', 23.1228, -82.4208, 'The sports bar inside the upscale Melia Habana hotel, offering a comfortable setting with screens for international sporting events. Serves quality cocktails and snacks in air-conditioned comfort.', 'https://www.melia.com/', 4.1, 350, 6, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'havana'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'El Floridita Bar', 'el-floridita-havana', c.id, 'Calle Obispo 557, Habana Vieja, Havana', 23.1381, -82.3593, 'Hemingway''s legendary bar occasionally shows major sporting events. Famous for its daiquiris and historic ambiance, it''s a unique spot to catch a game amid Cuban history and live music.', NULL, 4.3, 5200, 2, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'havana'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - BAHAMAS
-- ============================================================================

-- NASSAU (3 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bearded Clam Sports Bar', 'bearded-clam-sports-bar-nassau', c.id, 'West Bay St, Nassau', 25.0775, -77.3496, 'A favourite among locals and cruise visitors alike, this relaxed sports bar features multiple screens, friendly staff, and a laid-back Bahamian atmosphere. Great spot for NFL and international football.', 'https://www.facebook.com/BeardedClamNassau/', 4.2, 680, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'nassau'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Twisted Lime Sports Bar & Grill', 'twisted-lime-sports-bar-nassau', c.id, 'Bay St, Nassau', 25.0784, -77.3431, 'Offers a laid-back Bahamian atmosphere and fusion dining with waterfront views. Features large screens for watching sports alongside Bahamian-Mediterranean dishes including fresh grouper and snapper.', 'https://twistedlimebar.com/', 4.3, 920, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'nassau'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sharkeez Tiki Bar', 'sharkeez-tiki-bar-nassau', c.id, 'West Bay St, Cable Beach, Nassau', 25.0741, -77.3980, 'Fun tiki-themed bar with a laid-back island vibe and giant TVs for sports viewing. Friendly staff, tropical cocktails, and a beach-side setting make it a relaxed spot for catching the game.', NULL, 4.1, 540, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'nassau'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - NEW ZEALAND
-- ============================================================================

-- AUCKLAND (8 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Full Time Sports Bar', 'full-time-sports-bar-auckland', c.id, '476 New North Rd, Kingsland, Auckland 1021', -36.8766, 174.7478, 'The Warriors Rugby League Club''s first sports bar featuring 32 metres of screens. Serves local craft beers, tap cocktails, and NZ wines paired with gourmet pub grub. Decorated with signed Warriors memorabilia.', NULL, 4.4, 1200, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Right Track Sports Cafe', 'right-track-sports-cafe-auckland', c.id, '21 Fort St, Auckland CBD 1010', -36.8455, 174.7677, 'A classic no-frills sports bar in the heart of the city with big screens, energetic crowds, and a menu that''s both delicious and easy on the wallet. Great for catching All Blacks and rugby league matches.', NULL, 4.1, 680, 12, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Schapiro''s Sports Bar', 'schapiros-sports-bar-auckland', c.id, '17 Drake St, Auckland CBD 1010', -36.8442, 174.7600, 'Inspired by classy San Francisco sports joints, this bar is the best spot in Auckland for American sports. Features cosy booths, ambient lighting, and extensive sports memorabilia throughout.', NULL, 4.3, 520, 10, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tyler St Sport', 'tyler-st-sport-auckland', c.id, '120 Quay St, Britomart, Auckland 1010', -36.8436, 174.7686, 'The official home bar for Auckland FC with regular game day events featuring affordable food, drink, and transport packages for home matches. Modern fit-out with multiple large screens.', NULL, 4.2, 450, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Nation''s Clubrooms', 'the-nations-clubrooms-auckland', c.id, 'Level 3, Skycity, 72 Victoria St W, Auckland 1010', -36.8487, 174.7622, 'Located in Skycity, this spacious sports bar features extensive beer and pub grub selections with many TV screens. Decorated with memorabilia from the Blues, Warriors, Breakers, and All Blacks.', NULL, 4.0, 780, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fox - Viaduct', 'the-fox-viaduct-auckland', c.id, '1 Halsey St, Viaduct Harbour, Auckland 1010', -36.8432, 174.7586, 'English-styled sports bar in Viaduct Harbour with great harbour views and 9 large TV screens. Holds a 24/7 licence for late-night international sporting events across all time zones.', NULL, 4.1, 650, 9, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Kingslander', 'the-kingslander-auckland', c.id, '470 New North Rd, Kingsland, Auckland 1021', -36.8762, 174.7481, 'A beloved Kingsland institution right near Eden Park stadium. Multiple screens throughout, craft beers on tap, and one of Auckland''s best pre-game and post-game atmospheres for rugby and cricket.', 'https://www.thekingslander.co.nz/', 4.2, 890, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Danny Doolans', 'danny-doolans-auckland', c.id, '204 Quay St, Viaduct Harbour, Auckland 1010', -36.8424, 174.7649, 'Auckland''s largest Irish bar spanning three floors on the waterfront. Screens throughout show all major sports including rugby, football, and cricket, with live music and a bustling atmosphere.', 'https://www.dannydoolans.co.nz/', 4.0, 1500, 14, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'auckland'
ON CONFLICT (slug) DO NOTHING;

-- WELLINGTON (6 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Four Kings', 'four-kings-wellington', c.id, '32 Courtenay Pl, Te Aro, Wellington 6011', -41.2926, 174.7795, 'Award-winning sports bar in the heart of Wellington with massive TVs, pool tables, and dartboards. The go-to venue for rugby, cricket, and league in the capital.', 'https://fourkings.co.nz/', 4.3, 920, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'wellington'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'D4 on Featherston', 'd4-on-featherston-wellington', c.id, '62 Featherston St, Wellington 6011', -41.2797, 174.7770, 'Home to the biggest high-definition projection screens in Wellington, creating an amazing atmosphere for live sport. Multiple rooms with different viewing options and a solid pub food menu.', NULL, 4.2, 680, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'wellington'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Southern Cross', 'southern-cross-wellington', c.id, '39 Abel Smith St, Te Aro, Wellington 6011', -41.2945, 174.7734, 'A Wellington institution with plenty of space, big screens, a garden bar, and an atmosphere that always turns up for game day. Great craft beer selection and a menu to match.', 'https://www.thecross.co.nz/', 4.3, 1100, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'wellington'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Old Bailey', 'the-old-bailey-wellington', c.id, '2 Blair St, Te Aro, Wellington 6011', -41.2931, 174.7788, 'Combines the best of a classic Kiwi pub with great value meals, a huge range of cold beers, and all local and international live sport on screens throughout. Ideal for brunch through to post-game pints.', NULL, 4.1, 560, 10, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'wellington'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shed 22', 'shed-22-wellington', c.id, 'Queens Wharf, Wellington Waterfront, Wellington 6011', -41.2838, 174.7800, 'Unbeatable harbour views on the Wellington waterfront. The place to park up with a pint for rugby or a summer of cricket, with generous portions and a relaxed maritime atmosphere.', NULL, 4.2, 750, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'wellington'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Green Man Pub', 'the-green-man-pub-wellington', c.id, '52 Victoria St, Wellington 6011', -41.2886, 174.7743, 'A welcoming Irish pub serving hearty pub grub and proper pints. Great place to catch rugby games and known for excellent steaks. Regular live music adds to the warm atmosphere.', NULL, 4.1, 480, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'wellington'
ON CONFLICT (slug) DO NOTHING;

-- QUEENSTOWN (4 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Locker Room Sports Bar', 'the-locker-room-queenstown', c.id, '8 Stratton Terrace, Queenstown 9300', -45.0321, 168.6626, 'Queenstown''s only dedicated sports bar spread over two levels with plenty of TVs. Offers North American-style sports pub grub with a separate vegan menu, pool table, and memorabilia throughout. Open 7 days.', 'https://www.thelockerroomsportsbar.co.nz/', 4.2, 720, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'queenstown'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Harry''s Pool Bar', 'harrys-pool-bar-queenstown', c.id, '2 Brecon St, Queenstown 9300', -45.0316, 168.6600, 'Home to 7 pool tables, widescreen TVs, a large open fire, and a relaxing lounge area. Offers $6 tap beer, house spirits, and house wine daily alongside amazing pizzas. A great hangout spot.', NULL, 4.1, 550, 6, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'queenstown'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Pig & Whistle', 'pig-and-whistle-queenstown', c.id, '19 Camp St, Queenstown 9300', -45.0323, 168.6619, 'A firm favourite with locals and visitors in the heart of Queenstown. Great spot to meet friends, enjoy a drink, and catch the game on their screens while tucking into some of Queenstown''s best pub food.', NULL, 4.0, 480, 5, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'queenstown'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pub on Wharf', 'pub-on-wharf-queenstown', c.id, 'Steamer Wharf, 88 Beach St, Queenstown 9300', -45.0337, 168.6614, 'Lakefront pub on Steamer Wharf with stunning views of Lake Wakatipu and the Remarkables. Shows live sport on multiple screens and is especially popular during rugby season. Great craft beer selection.', 'https://pubonwharf.co.nz/', 4.3, 900, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'queenstown'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - FIJI
-- ============================================================================

-- NADI (3 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Legends Sports Bar', 'legends-sports-bar-nadi', c.id, 'Ashram Rd, Nadi', -17.7755, 177.9530, 'Nadi''s total entertainment hub with a bar, restaurant, sports lounge, function room, and nightclub all under one roof. Multiple screens for catching live rugby, football, and international sports.', 'https://www.facebook.com/LegendsSportsBarFiji/', 4.1, 380, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'nadi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bounty Restaurant & Bar', 'bounty-restaurant-bar-nadi', c.id, 'Martintar, Nadi', -17.7678, 177.9618, 'Located in Martintar between the airport and Nadi town, this venue shows many international sports games on screens in the restaurant downstairs. Great Fijian and international food alongside cold Fiji Gold.', NULL, 4.2, 520, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'nadi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ice Bar Nadi', 'ice-bar-nadi', c.id, 'Jetpoint Complex, Martintar, Nadi', -17.7681, 177.9625, 'Versatile bar at Jetpoint Complex in Martintar featuring everything from Latin nights to live rugby games on screen. A popular hangout for locals and travellers looking for sport and nightlife.', NULL, 4.0, 290, 4, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'nadi'
ON CONFLICT (slug) DO NOTHING;

-- SUVA (2 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Traps Bar Suva', 'traps-bar-suva', c.id, '305 Victoria Parade, Suva', -18.1415, 178.4415, 'Suva''s legendary nightlife venue with five different bars in one, including a pub-like room with pool tables and sports on the big screens. Something for everyone across its multiple spaces.', NULL, 4.1, 650, 6, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'suva'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Reilly''s Bar Suva', 'oreillys-bar-suva', c.id, 'MacArthur St, Suva', -18.1408, 178.4420, 'Popular Suva bar with a relaxed early evening vibe where punters play pool or watch the game. Features multiple TV screens, a pool table, large dance floor, and an extensive food and drinks menu.', NULL, 4.0, 420, 5, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'suva'
ON CONFLICT (slug) DO NOTHING;
