-- ============================================================================
-- Europe West Sports Venues - France & Portugal
-- Cities: Paris, Lyon, Marseille, Nice, Bordeaux, Toulouse,
--         Lisbon, Porto, Faro
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Paris', 'paris', 'France', 'FR', 48.8566, 2.3522, 'Europe/Paris')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Lyon', 'lyon', 'France', 'FR', 45.7640, 4.8357, 'Europe/Paris')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Marseille', 'marseille', 'France', 'FR', 43.2965, 5.3698, 'Europe/Paris')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Nice', 'nice', 'France', 'FR', 43.7102, 7.2620, 'Europe/Paris')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bordeaux', 'bordeaux', 'France', 'FR', 44.8378, -0.5792, 'Europe/Paris')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Toulouse', 'toulouse', 'France', 'FR', 43.6047, 1.4442, 'Europe/Paris')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Lisbon', 'lisbon', 'Portugal', 'PT', 38.7223, -9.1393, 'Europe/Lisbon')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Porto', 'porto', 'Portugal', 'PT', 41.1579, -8.6291, 'Europe/Lisbon')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Faro', 'faro', 'Portugal', 'PT', 37.0194, -7.9304, 'Europe/Lisbon')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- PARIS VENUES (15 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bombardier', 'the-bombardier-paris', c.id, '2 Place du Pantheon, 75005 Paris', 48.8462, 2.3464, 'Classic British pub in the Latin Quarter with a loyal expat following. Multiple screens show Premier League, Six Nations rugby, and international football. Full English breakfast and pub grub served daily.', 'https://www.thebombardier.com', 4.3, 2100, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Frog & Princess', 'the-frog-and-princess-paris', c.id, '9 Rue Princesse, 75006 Paris', 48.8530, 2.3350, 'Part of the FrogPubs chain, this Saint-Germain brewpub serves house-brewed craft beers alongside screens showing rugby, football, and NFL. Buzzing atmosphere on match days.', 'https://www.frogpubs.com', 4.1, 1600, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Frog Revolution', 'the-frog-revolution-paris', c.id, '1 Rue de la Bastille, 75004 Paris', 48.8533, 2.3694, 'Large brewpub near Place de la Bastille with multiple floors and plenty of screens. Craft beers brewed on-site and a full food menu make this a top destination for Premier League and Champions League nights.', 'https://www.frogpubs.com', 4.0, 1400, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Galway Irish Pub', 'the-galway-irish-pub-paris', c.id, '13 Quai des Grands Augustins, 75006 Paris', 48.8551, 2.3424, 'Authentic Irish pub on the Seine with a warm atmosphere and reliable sports coverage. Shows GAA, rugby, and football on multiple screens. Live music some evenings.', 'https://www.the-galway.com', 4.2, 950, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cafe Oz Chatelet', 'cafe-oz-chatelet-paris', c.id, '18 Rue Saint-Denis, 75001 Paris', 48.8582, 2.3488, 'Australian-themed sports bar near Les Halles showing rugby, cricket, AFL, and football. Large venue with a party atmosphere, DJ sets on weekends, and happy hour specials.', 'https://www.cafe-oz.com', 3.9, 1800, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Moose Bar', 'the-moose-bar-paris', c.id, '16 Rue des Quatre Vents, 75006 Paris', 48.8520, 2.3370, 'Canadian sports bar beloved by North American expats. Screens show NHL, NFL, NBA, and MLB alongside European football. Poutine and wings on the menu.', 'https://www.mooseparis.com', 4.1, 1200, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wos Bar', 'wos-bar-paris', c.id, '8 Rue Daunou, 75002 Paris', 48.8688, 2.3340, 'Modern sports bar near Opera with large HD screens and a projector. Covers Ligue 1, Champions League, and rugby Top 14. Cocktail-forward drinks list and upscale bar snacks.', 'https://www.wos-bar.fr', 4.0, 650, 7, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Great Canadian Pub', 'the-great-canadian-pub-paris', c.id, '32 Rue des Lombards, 75004 Paris', 48.8590, 2.3490, 'Friendly neighbourhood sports pub in the Marais district. Shows a wide range of sports including hockey, football, and rugby. Known for generous portions and a welcoming crowd.', 'https://www.thegreatcanadian.fr', 4.2, 780, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pub Saint-Michel', 'pub-saint-michel-paris', c.id, '1 Rue Danton, 75006 Paris', 48.8524, 2.3440, 'Traditional pub near the Seine screening Ligue 1, Top 14 rugby, and Champions League matches. Popular with students and locals for its affordable drinks and lively match-day atmosphere.', NULL, 4.0, 550, 4, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Falstaff', 'le-falstaff-paris', c.id, '42 Rue du Montparnasse, 75014 Paris', 48.8430, 2.3270, 'Historic Montparnasse brasserie with a dedicated sports corner. Giant screen plus several TVs showing football, tennis, and rugby. Classic French brasserie food served until late.', 'https://www.le-falstaff.fr', 4.1, 1100, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Chez Papa Sports', 'chez-papa-sports-paris', c.id, '15 Rue de la Roquette, 75011 Paris', 48.8553, 2.3738, 'Laid-back sports bar in the 11th arrondissement with a large projector and multiple TVs. Known for generous southwest French cuisine and a warm, neighbourhood vibe on match nights.', NULL, 4.0, 430, 5, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Comptoir du Pantheon', 'le-comptoir-du-pantheon-paris', c.id, '5 Rue Soufflot, 75005 Paris', 48.8468, 2.3441, 'Charming cafe-bar facing the Pantheon with a terrace and screens inside for major sporting events. Best for football and tennis, with a typically Parisian ambiance.', NULL, 4.2, 900, 3, 'relaxed', '$$', true, true, false
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cafe Oz Grands Boulevards', 'cafe-oz-grands-boulevards-paris', c.id, '8 Boulevard Montmartre, 75009 Paris', 48.8716, 2.3420, 'Second Cafe Oz location on the Grands Boulevards, offering a large venue with projector screen and multiple TVs. Popular for Rugby World Cup, Ashes, and Premier League screenings.', 'https://www.cafe-oz.com', 3.8, 1500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Long Hop', 'the-long-hop-paris', c.id, '25 Rue Frederic Sauton, 75005 Paris', 48.8497, 2.3504, 'Cozy pub in the 5th arrondissement run by cricket enthusiasts. Shows cricket, rugby, and football. A favourite haunt for Anglophone sports fans in Paris.', NULL, 4.3, 620, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Players Sports Bar', 'players-sports-bar-paris', c.id, '10 Rue de Richelieu, 75001 Paris', 48.8637, 2.3375, 'Dedicated sports bar near Palais Royal with wall-to-wall screens and surround sound. Covers everything from La Liga to UFC. Good beer selection and burgers.', NULL, 4.0, 480, 10, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'paris'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LYON VENUES (6 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Smoking Dog', 'the-smoking-dog-lyon', c.id, '16 Rue Lainerie, 69005 Lyon', 45.7640, 4.8270, 'Popular English pub in Vieux Lyon showing Premier League, Six Nations, and Champions League. Stone-walled interior with a great selection of beers and classic pub food.', 'https://www.thesmokingdog.com', 4.4, 1300, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'lyon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wallace Bar', 'wallace-bar-lyon', c.id, '2 Rue Octavio Mey, 69005 Lyon', 45.7595, 4.8280, 'Lively sports bar on the Saone riverbank with a terrace and multiple screens. Known for rugby Top 14 coverage and the passionate local crowd during OL matches.', NULL, 4.1, 680, 5, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'lyon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'L''Antre Autre', 'lantre-autre-lyon', c.id, '11 Rue Terme, 69001 Lyon', 45.7680, 4.8330, 'Alternative bar in the 1st arrondissement with a big screen and projector for major events. Shows Ligue 1, Champions League, and rugby. Relaxed vibe with craft beers.', NULL, 4.0, 350, 3, 'relaxed', '$', true, false, false
FROM cities c WHERE c.slug = 'lyon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Johnny Walsh''s', 'johnny-walshs-lyon', c.id, '56 Rue Saint-Georges, 69005 Lyon', 45.7580, 4.8260, 'Irish pub in Vieux Lyon with a strong sports focus. Screens show rugby, GAA, and Premier League. Live music on non-match nights and a friendly expat community.', NULL, 4.2, 520, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'lyon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Bar des Sports', 'le-bar-des-sports-lyon', c.id, '23 Rue de la Martiniere, 69001 Lyon', 45.7685, 4.8350, 'No-frills French sports bar that lives up to its name. Screens showing football, rugby, and cycling. A local favourite with affordable prices and hearty plat du jour.', NULL, 3.9, 290, 4, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'lyon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Elephant & Castle', 'the-elephant-and-castle-lyon', c.id, '1 Place Sathonay, 69001 Lyon', 45.7695, 4.8320, 'British-style pub on a quiet square near the Croix-Rousse slope. Multiple screens for Premier League and international rugby, plus a lovely terrace for warm-weather viewing.', NULL, 4.1, 440, 5, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'lyon'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MARSEILLE VENUES (5 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Malley''s Irish Pub', 'omalleys-irish-pub-marseille', c.id, '8 Quai de Rive Neuve, 13007 Marseille', 43.2930, 5.3680, 'Harbourside Irish pub on the Vieux Port with a passionate match-day crowd. Screens show Ligue 1, Champions League, and rugby. Lively atmosphere when OM are playing.', NULL, 4.2, 870, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'marseille'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Queen Victoria', 'the-queen-victoria-marseille', c.id, '17 Place aux Huiles, 13001 Marseille', 43.2935, 5.3705, 'English pub in the heart of Marseille''s old port area. Premier League, Six Nations, and cricket shown on multiple screens. Fish and chips and Sunday roasts on the menu.', NULL, 4.0, 550, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'marseille'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Bazar du Sport', 'le-bazar-du-sport-marseille', c.id, '34 Cours Julien, 13006 Marseille', 43.2920, 5.3830, 'Trendy sports bar in the bohemian Cours Julien neighbourhood. Large projector and screens covering Ligue 1, Top 14, and European football. Craft beer selection and tapas.', NULL, 4.1, 380, 4, 'relaxed', '$$', true, true, false
FROM cities c WHERE c.slug = 'marseille'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Cafe de la Banque', 'le-cafe-de-la-banque-marseille', c.id, '20 Rue de la Banque, 13001 Marseille', 43.2960, 5.3740, 'Classic Marseille cafe-bar that transforms into a sports hub on match days. Passionate OM fans gather for every home and away game. Pastis and panisses on offer.', NULL, 4.0, 310, 3, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'marseille'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Comptoir Sportif', 'le-comptoir-sportif-marseille', c.id, '45 La Canebiere, 13001 Marseille', 43.2975, 5.3780, 'Large sports-focused bar on Marseille''s famous boulevard. Wall-mounted screens throughout and a giant projector for big events. Good for group bookings on Champions League nights.', NULL, 3.9, 420, 8, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'marseille'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NICE VENUES (5 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ma Nolan''s Irish Pub', 'ma-nolans-irish-pub-nice', c.id, '2 Rue Saint-Francois de Paule, 06300 Nice', 43.6958, 7.2710, 'Popular Irish pub in Old Nice showing Premier League, GAA, rugby, and Champions League. Three floors with screens on every level. Great craic and Guinness on tap.', 'https://www.ma-nolans.com', 4.3, 1500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'nice'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wayne''s Bar', 'waynes-bar-nice', c.id, '15 Rue de la Prefecture, 06300 Nice', 43.6963, 7.2730, 'Legendary Vieux Nice nightlife spot doubling as a sports bar during the day. Shows football, rugby, and tennis on large screens before the live music kicks off in the evening.', 'https://www.waynes.fr', 4.0, 1100, 5, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'nice'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Shapko', 'le-shapko-nice', c.id, '5 Rue Rossetti, 06300 Nice', 43.6970, 7.2755, 'Quirky bar in the old town with a screen for major football and rugby matches. Relaxed vibe, good cocktails, and a young crowd. Best for casual viewing of big events.', NULL, 4.1, 320, 2, 'relaxed', '$', true, false, false
FROM cities c WHERE c.slug = 'nice'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'King''s Pub', 'kings-pub-nice', c.id, '2 Rue Alphonse Karr, 06000 Nice', 43.7010, 7.2650, 'English-style pub near the Promenade des Anglais with multiple screens and a dartboard. Shows Premier League, La Liga, and international rugby. Full pub menu available.', NULL, 4.0, 480, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'nice'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Station', 'le-station-nice', c.id, '3 Rue de Belgique, 06000 Nice', 43.7040, 7.2590, 'Modern sports bar near Nice-Ville station with HD screens and a projector. Shows a wide range of sports including Ligue 1, tennis, and Formula 1. Good terrace for warm evenings.', NULL, 4.0, 360, 6, 'casual', '$$', true, true, false
FROM cities c WHERE c.slug = 'nice'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BORDEAUX VENUES (4 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Connemara Irish Pub', 'the-connemara-irish-pub-bordeaux', c.id, '18 Cours d''Albret, 33000 Bordeaux', 44.8370, -0.5780, 'Large Irish pub near Place Gambetta with a big-screen projector and multiple TVs. Shows rugby Top 14, Ligue 1, and Premier League. Live music on weekends and a friendly staff.', NULL, 4.2, 750, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bordeaux'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sherlock Holmes', 'the-sherlock-holmes-bordeaux', c.id, '5 Rue de Conde, 33000 Bordeaux', 44.8400, -0.5740, 'British-themed pub near the Grand Theatre showing a full slate of Premier League, Champions League, and rugby matches. Burgers, fish and chips, and a good whisky selection.', NULL, 4.1, 520, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bordeaux'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Bar a Sports', 'le-bar-a-sports-bordeaux', c.id, '12 Place de la Victoire, 33000 Bordeaux', 44.8320, -0.5720, 'Student-friendly sports bar on the bustling Place de la Victoire. Multiple screens showing football, rugby, and cycling. Affordable drinks and a lively crowd during big matches.', NULL, 3.9, 380, 6, 'lively', '$', true, true, false
FROM cities c WHERE c.slug = 'bordeaux'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Malt Bar', 'le-malt-bar-bordeaux', c.id, '27 Rue des Piliers de Tutelle, 33000 Bordeaux', 44.8415, -0.5755, 'Craft beer bar in Bordeaux''s city centre that screens major sporting events. Known for its curated beer list and relaxed match-day viewing. Shows rugby and Champions League.', NULL, 4.3, 290, 3, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'bordeaux'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- TOULOUSE VENUES (4 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'De Danu', 'de-danu-toulouse', c.id, '9 Rue du Pont Guilhemery, 31000 Toulouse', 43.6030, 1.4530, 'Authentic Irish pub with a passionate rugby following, fitting for France''s rugby capital. Shows Top 14, Six Nations, and football on multiple screens. Guinness and whiskey flowing.', NULL, 4.3, 680, 5, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'toulouse'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The London Town', 'the-london-town-toulouse', c.id, '20 Rue de la Colombette, 31000 Toulouse', 43.6060, 1.4520, 'British pub in central Toulouse with screens showing Premier League, Champions League, and rugby. Popular with expats and visiting fans. Classic pub food and a warm interior.', NULL, 4.0, 420, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'toulouse'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Melting Pot', 'le-melting-pot-toulouse', c.id, '26 Boulevard de Strasbourg, 31000 Toulouse', 43.6100, 1.4540, 'Vibrant bar near the Canal du Midi screening rugby, football, and cycling. Big projector plus TVs throughout. Known for its diverse crowd and generous happy hours.', NULL, 4.1, 350, 5, 'lively', '$', true, true, false
FROM cities c WHERE c.slug = 'toulouse'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Cafe des Sports', 'le-cafe-des-sports-toulouse', c.id, '3 Place Saint-Pierre, 31000 Toulouse', 43.6050, 1.4400, 'Classic French cafe-bar on the lively Place Saint-Pierre. Screens come out for every Stade Toulousain match and major football events. Lovely terrace overlooking the Garonne.', NULL, 4.0, 290, 3, 'relaxed', '$', true, true, false
FROM cities c WHERE c.slug = 'toulouse'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LISBON VENUES (10 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Irish & Co', 'the-irish-and-co-lisbon', c.id, 'Rua de Sao Jose 178, 1150-322 Lisbon', 38.7175, -9.1420, 'Popular Irish pub near Avenida da Liberdade with a dedicated sports area. Shows Premier League, Liga Portugal, and Champions League on multiple screens. Great Guinness and pub grub.', 'https://www.irishandco.pt', 4.3, 1200, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Crafty Corner', 'crafty-corner-lisbon', c.id, 'Rua do Poco dos Negros 1, 1200-338 Lisbon', 38.7110, -9.1520, 'Craft beer sports bar in Santos with a large projector and multiple screens. Shows Premier League, Liga Portugal, rugby, and NFL. Rotating taps of Portuguese and international craft beers.', 'https://www.craftycorner.pt', 4.4, 820, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Gilins Irish Pub', 'ogilins-irish-pub-lisbon', c.id, 'Rua dos Remolares 8, 1200-371 Lisbon', 38.7078, -9.1430, 'Long-standing Irish pub at Cais do Sodre with live music and sports. Shows rugby, GAA, and football. Busy on weekends with a mix of locals and tourists.', 'https://www.ogilins.com', 4.1, 950, 5, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Legends Sports Bar', 'legends-sports-bar-lisbon', c.id, 'Rua Augusta 258, 1100-054 Lisbon', 38.7105, -9.1370, 'Dedicated sports bar in the Baixa district with screens covering every wall. Shows everything from Liga Portugal to UFC. Bar food, cold beer, and a buzzing atmosphere on Champions League nights.', NULL, 4.0, 650, 10, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pavilhao Chines', 'pavilhao-chines-lisbon', c.id, 'Rua Dom Pedro V 89, 1250-093 Lisbon', 38.7155, -9.1470, 'Quirky, museum-like bar in Principe Real that shows big football matches on a projector. Eclectic decor with thousands of collectibles lining the walls. A unique sports-viewing experience.', NULL, 4.2, 1800, 2, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sports Bar Lisboa', 'sports-bar-lisboa', c.id, 'Rua do Instituto Industrial 6, 1200-225 Lisbon', 38.7090, -9.1510, 'Purpose-built sports bar near Santos with a giant screen and sound system tuned for live events. Shows Portuguese league, Premier League, La Liga, and boxing. Burgers and wings menu.', NULL, 4.0, 380, 8, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hennessy''s Irish Bar', 'hennessys-irish-bar-lisbon', c.id, 'Rua do Cais do Sodre 32, 1200-450 Lisbon', 38.7072, -9.1445, 'Cozy Irish bar at Cais do Sodre showing rugby, Premier League, and GAA. Warm atmosphere with friendly staff. Serves hearty pub food and a great selection of whiskeys.', NULL, 4.1, 540, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Topo Chiado', 'topo-chiado-lisbon', c.id, 'Terraco do Edificio Martinho da Arcada, 1100-198 Lisbon', 38.7115, -9.1385, 'Rooftop bar in Chiado with stunning views and screens for major football events. Upscale cocktails and small plates. Best for watching big matches in style.', 'https://www.tfrgroup.pt', 4.3, 1100, 3, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cervejaria Ramiro Sports Lounge', 'cervejaria-ramiro-sports-lounge-lisbon', c.id, 'Avenida Almirante Reis 1, 1150-007 Lisbon', 38.7225, -9.1350, 'Sports lounge adjacent to the famous Cervejaria Ramiro. Screens showing Portuguese football and major European competitions. Enjoy fresh seafood while watching the game.', NULL, 4.2, 420, 4, 'relaxed', '$$$', true, false, false
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'British Bar', 'british-bar-lisbon', c.id, 'Rua Bernardino Costa 52, 1200-072 Lisbon', 38.7070, -9.1455, 'Historic bar near Cais do Sodre operating since 1919. Wood-panelled interior with screens for football and rugby. A Lisbon institution serving classic drinks in an old-world setting.', NULL, 4.4, 700, 3, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'lisbon'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- PORTO VENUES (6 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ryan''s Irish Pub', 'ryans-irish-pub-porto', c.id, 'Rua do Infante D. Henrique 16, 4050-296 Porto', 41.1405, -8.6150, 'Long-running Irish pub on the Ribeira waterfront showing Premier League, rugby, and Champions League. Multiple screens across two floors with views over the Douro.', NULL, 4.2, 780, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'porto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Caledonian', 'the-caledonian-porto', c.id, 'Rua do Almada 349, 4050-034 Porto', 41.1500, -8.6110, 'Scottish-themed pub near Aliados with a focus on football and rugby. Multiple screens, whisky collection, and a warm atmosphere. Popular with British and Irish expats.', NULL, 4.3, 520, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'porto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Aduela Sports Bar', 'aduela-sports-bar-porto', c.id, 'Rua das Oliveiras 36, 4050-449 Porto', 41.1475, -8.6140, 'Hip sports bar in the Cedofeita neighbourhood with craft beers on tap and screens for Liga Portugal, Champions League, and international football. Exposed brick interior.', NULL, 4.1, 340, 4, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'porto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cafe Piolho', 'cafe-piolho-porto', c.id, 'Praca de Parada Leitao 45, 4050-454 Porto', 41.1475, -8.6165, 'Iconic student cafe near the University of Porto that screens all FC Porto matches and major football events. Cheap beer and a legendary atmosphere during derby nights.', NULL, 4.0, 1200, 3, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'porto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Base Porto', 'base-porto', c.id, 'Avenida dos Aliados 33, 4000-064 Porto', 41.1490, -8.6100, 'Modern bar on Porto''s grand Aliados avenue with large screens and a projector. Shows football, tennis, and F1. Cocktail menu and tapas. A good spot for watching big events in comfort.', 'https://www.baseporto.com', 4.2, 450, 5, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'porto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Porto Sports Pub', 'oporto-sports-pub-porto', c.id, 'Rua de Santa Catarina 412, 4000-124 Porto', 41.1520, -8.6070, 'Dedicated sports pub on Porto''s main shopping street. Multiple HD screens showing Portuguese and international football, basketball, and combat sports. Burgers and petiscos.', NULL, 4.0, 310, 6, 'casual', '$$', true, false, false
FROM cities c WHERE c.slug = 'porto'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- FARO VENUES (4 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Brien''s Irish Bar', 'obriens-irish-bar-faro', c.id, 'Rua do Prior 23, 8000-408 Faro', 37.0145, -7.9350, 'Irish pub in Faro''s old town showing Premier League, GAA, rugby, and Champions League. A hub for expats and holidaymakers in the Algarve. Friendly staff and hearty pub meals.', NULL, 4.3, 580, 5, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'faro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dino''s Sports Bar', 'dinos-sports-bar-faro', c.id, 'Rua Conselheiro Bivar 46, 8000-255 Faro', 37.0155, -7.9310, 'Well-known Algarve sports bar with a large screen and multiple TVs. Shows a full range of sports from football to golf. Popular with British tourists and resident expats.', NULL, 4.1, 420, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'faro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Chessman Bar', 'chessman-bar-faro', c.id, 'Rua Dr. Francisco Gomes 20, 8000-168 Faro', 37.0140, -7.9340, 'Relaxed bar near the marina screening Liga Portugal, Premier League, and tennis. Good selection of Portuguese wines and petiscos alongside cold Super Bock on tap.', NULL, 4.0, 280, 3, 'relaxed', '$', true, true, false
FROM cities c WHERE c.slug = 'faro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Columbus Bar', 'columbus-bar-faro', c.id, 'Jardim Manuel Bivar, 8000-400 Faro', 37.0130, -7.9320, 'Waterfront bar overlooking the Ria Formosa with outdoor screens for big matches. Shows football, rugby, and MotoGP. Great location for watching sport with a cold drink in the sun.', NULL, 4.2, 350, 4, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'faro'
ON CONFLICT (slug) DO NOTHING;
