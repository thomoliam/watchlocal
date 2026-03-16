-- ============================================================================
-- Latin America & Canada Sports Venues
-- Countries: Canada, Mexico, Brazil, Colombia, Argentina, Peru
-- Cities: Toronto, Vancouver, Montreal, Mexico City, Cancun,
--         Playa del Carmen, São Paulo, Rio de Janeiro, Bogotá,
--         Medellín, Cartagena, Buenos Aires, Lima, Cusco
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

-- CANADA
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Toronto', 'toronto', 'Canada', 'CA', 43.6532, -79.3832, 'America/Toronto')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Vancouver', 'vancouver', 'Canada', 'CA', 49.2827, -123.1207, 'America/Vancouver')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Montreal', 'montreal', 'Canada', 'CA', 45.5017, -73.5673, 'America/Toronto')
ON CONFLICT (slug) DO NOTHING;

-- MEXICO
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Mexico City', 'mexico-city', 'Mexico', 'MX', 19.4326, -99.1332, 'America/Mexico_City')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cancun', 'cancun', 'Mexico', 'MX', 21.1619, -86.8515, 'America/Cancun')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Playa del Carmen', 'playa-del-carmen', 'Mexico', 'MX', 20.6296, -87.0739, 'America/Cancun')
ON CONFLICT (slug) DO NOTHING;

-- BRAZIL
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('São Paulo', 'sao-paulo', 'Brazil', 'BR', -23.5505, -46.6333, 'America/Sao_Paulo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Rio de Janeiro', 'rio-de-janeiro', 'Brazil', 'BR', -22.9068, -43.1729, 'America/Sao_Paulo')
ON CONFLICT (slug) DO NOTHING;

-- COLOMBIA
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bogotá', 'bogota', 'Colombia', 'CO', 4.7110, -74.0721, 'America/Bogota')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Medellín', 'medellin', 'Colombia', 'CO', 6.2442, -75.5812, 'America/Bogota')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cartagena', 'cartagena', 'Colombia', 'CO', 10.3910, -75.5364, 'America/Bogota')
ON CONFLICT (slug) DO NOTHING;

-- ARGENTINA
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Buenos Aires', 'buenos-aires', 'Argentina', 'AR', -34.6037, -58.3816, 'America/Argentina/Buenos_Aires')
ON CONFLICT (slug) DO NOTHING;

-- PERU
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Lima', 'lima', 'Peru', 'PE', -12.0464, -77.0428, 'America/Lima')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cusco', 'cusco', 'Peru', 'PE', -13.5319, -71.9675, 'America/Lima')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - CANADA
-- ============================================================================

-- TORONTO (8 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Real Sports Bar & Grill', 'real-sports-bar-grill-toronto', c.id, '15 York St, Toronto, ON M5J 0A1', 43.6426, -79.3809, 'Toronto''s premier sports bar with a massive HD screen and over 200 TVs. Located next to Scotiabank Arena, it''s the ultimate destination for live sports.', 'https://realsports.ca/', 4.4, 8200, 200, 'lively', '$$$', true, true, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Dock Ellis', 'the-dock-ellis-toronto', c.id, '1280 Dundas St W, Toronto, ON M6J 1X7', 43.6509, -79.4236, 'A laid-back sports bar in Little Portugal with craft beer on tap, quality pub food, and plenty of screens for catching the game.', 'https://www.thedockellis.com/', 4.3, 1200, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shark Club Sports Bar', 'shark-club-toronto', c.id, '170 Dundas St W, Toronto, ON M5G 1C4', 43.6546, -79.3848, 'Multi-level sports bar in the heart of downtown Toronto with a wide selection of beers and classic sports bar fare across multiple floors.', 'https://www.sharkclub.com/', 4.0, 950, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hoops Sports Bar & Grill', 'hoops-sports-bar-toronto', c.id, '120 Church St, Toronto, ON M5C 2G8', 43.6518, -79.3754, 'A classic Toronto sports bar with generous portions, affordable drinks, and a friendly atmosphere for watching any game.', 'https://www.hoopssportsbar.ca/', 4.1, 680, 18, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Loose Moose Tap & Grill', 'loose-moose-toronto', c.id, '146 Front St W, Toronto, ON M5J 1G2', 43.6454, -79.3856, 'Popular downtown sports bar near the entertainment district with a huge menu, cold beers, and big screens showing all major leagues.', 'https://www.loosemoose.ca/', 4.0, 2100, 25, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shoeless Joe''s Sports Grill', 'shoeless-joes-toronto', c.id, '1 Blue Jays Way, Toronto, ON M5V 1J1', 43.6415, -79.3892, 'Iconic Canadian sports bar chain with a prime location near Rogers Centre. Great for pre- and post-game crowds with solid food and drinks.', 'https://www.shoelessjoes.ca/', 3.9, 1500, 22, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wheat Sheaf Tavern', 'wheat-sheaf-tavern-toronto', c.id, '667 King St W, Toronto, ON M5V 1M5', 43.6441, -79.4022, 'Toronto''s oldest bar, serving since 1849. A no-frills neighbourhood pub with TVs throughout and a loyal sports-loving clientele.', 'https://www.wheatsheaftavern.com/', 4.2, 900, 10, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'King Taps', 'king-taps-toronto', c.id, '100 King St W, Toronto, ON M5X 1E1', 43.6490, -79.3834, 'Upscale sports-friendly bar in the financial district with 50+ craft beers on tap, refined pub food, and stylish decor alongside big screens.', 'https://www.kingtaps.com/', 4.3, 2800, 16, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'toronto'
ON CONFLICT (slug) DO NOTHING;

-- VANCOUVER (6 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Pint Public House', 'the-pint-vancouver', c.id, '455 Abbott St, Vancouver, BC V6B 2K8', 49.2840, -123.1082, 'A massive sports pub in Gastown with three floors, dozens of screens, and a party atmosphere on game nights. Great wings and beer specials.', 'https://www.thepint.ca/', 4.0, 1800, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'vancouver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shark Club Sports Bar Vancouver', 'shark-club-vancouver', c.id, '180 W Georgia St, Vancouver, BC V6B 4P4', 49.2808, -123.1148, 'Vancouver''s go-to sports bar with premium viewing, a vibrant atmosphere, and a menu of elevated pub classics.', 'https://www.sharkclub.com/', 4.1, 1400, 40, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'vancouver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Doolin''s Irish Pub', 'doolins-irish-pub-vancouver', c.id, '654 Nelson St, Vancouver, BC V6B 6K4', 49.2793, -123.1192, 'Authentic Irish pub in downtown Vancouver with a warm atmosphere, live music, and screens showing football, rugby, and hockey.', 'https://www.doolins.ca/', 4.3, 1100, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'vancouver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Score on Davie', 'score-on-davie-vancouver', c.id, '1262 Davie St, Vancouver, BC V6E 1N3', 49.2813, -123.1355, 'Popular neighbourhood sports bar in the West End with a welcoming vibe, cold beer, and reliable coverage of NHL, NFL, and Premier League.', 'https://www.scoreondavie.com/', 4.2, 750, 14, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'vancouver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Cambie Bar & Grill', 'the-cambie-vancouver', c.id, '300 Cambie St, Vancouver, BC V6B 2N3', 49.2828, -123.1084, 'A Gastown institution with cheap pints and a no-frills vibe. Popular with locals and backpackers looking for a casual spot to catch a game.', 'https://www.thecambie.com/', 3.9, 620, 8, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'vancouver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tap & Barrel Convention Centre', 'tap-barrel-convention-vancouver', c.id, '1055 Canada Pl, Vancouver, BC V6C 0C3', 49.2888, -123.1118, 'Waterfront sports bar with stunning harbour views, an impressive craft beer list, and screens throughout. Perfect for watching games with a view.', 'https://www.tapandbarrel.com/', 4.4, 2400, 12, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'vancouver'
ON CONFLICT (slug) DO NOTHING;

-- MONTREAL (5 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Cage Brasserie Sportive', 'la-cage-montreal', c.id, '800 Rue de la Gauchetière O, Montréal, QC H5A 1K6', 45.4979, -73.5674, 'Quebec''s iconic sports bar chain with a prime downtown location. Huge screens, Quebec-style pub food, and electric atmosphere during Habs games.', 'https://www.lacage.com/', 4.1, 2200, 45, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'montreal'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hurley''s Irish Pub', 'hurleys-irish-pub-montreal', c.id, '1225 Rue Crescent, Montréal, QC H3G 2B1', 45.4960, -73.5790, 'A beloved Irish pub on Crescent Street with live Celtic music, a warm stone interior, and screens showing hockey, soccer, and rugby.', 'https://www.hurleysirishpub.com/', 4.3, 1600, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'montreal'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pub McLean''s', 'pub-mcleans-montreal', c.id, '1210 Rue Peel, Montréal, QC H3B 4T6', 45.4982, -73.5726, 'Classic downtown Montreal pub with a loyal sports crowd, affordable pitchers, and screens visible from every seat.', 'https://www.pubmcleans.com/', 4.0, 800, 15, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'montreal'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champs Sports Bar', 'champs-sports-bar-montreal', c.id, '3956 Boul Saint-Laurent, Montréal, QC H2W 1Y3', 45.5135, -73.5760, 'A neighbourhood sports bar on The Main with a relaxed vibe, pool tables, and consistent coverage of NHL, NBA, and international football.', 'https://www.champssportsbar.ca/', 4.1, 550, 12, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'montreal'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Burgundy Lion', 'burgundy-lion-montreal', c.id, '2496 Rue Notre-Dame O, Montréal, QC H3J 1N5', 45.4852, -73.5822, 'Upscale British-style gastropub in Little Burgundy with craft cocktails, elevated pub fare, and screens for Premier League and Six Nations rugby.', 'https://www.burgundylion.com/', 4.4, 1900, 8, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'montreal'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - MEXICO
-- ============================================================================

-- MEXICO CITY (8 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Zona Rosa', 'hooters-zona-rosa-mexico-city', c.id, 'Av. Paseo de la Reforma 222, Juárez, 06600 Ciudad de México', 19.4275, -99.1570, 'Popular American-style sports bar on Reforma with big screens, wings, and cold beer. Great for NFL, Liga MX, and international sports.', 'https://www.hootersmexico.com.mx/', 3.9, 1800, 25, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beer Factory Insurgentes', 'beer-factory-insurgentes-cdmx', c.id, 'Av. Insurgentes Sur 1235, Col. Del Valle, 03100 Ciudad de México', 19.3866, -99.1764, 'Craft beer sports bar with an industrial vibe, homemade brews, and a wall of screens for Liga MX, Champions League, and NFL.', 'https://www.beerfactory.mx/', 4.2, 2500, 30, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Biergarten CDMX', 'biergarten-cdmx', c.id, 'Av. Presidente Masaryk 132, Polanco, 11560 Ciudad de México', 19.4337, -99.1952, 'German-inspired beer garden in Polanco with long communal tables, imported beers, and big screens for international football and F1.', 'https://www.biergartencdmx.com/', 4.3, 1400, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Black Horse Pub', 'black-horse-pub-cdmx', c.id, 'Calle Mesones 89, Centro Histórico, 06080 Ciudad de México', 19.4293, -99.1338, 'British-style pub in the historic centre with a cosy atmosphere, real ales, and reliable Premier League and Champions League coverage.', 'https://www.blackhorsepub.mx/', 4.1, 680, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Buffalo Wild Wings Pedregal', 'bww-pedregal-cdmx', c.id, 'Centro Comercial Pedregal, Anillo Periférico 3720, 14010 Ciudad de México', 19.3115, -99.2110, 'International sports bar chain with an extensive menu, dozens of screens, and coverage of every major league from Liga MX to the NFL.', 'https://www.bww.com.mx/', 4.0, 1200, 40, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Salón Corona Centro', 'salon-corona-centro-cdmx', c.id, 'Calle de Bolívar 24, Centro Histórico, 06000 Ciudad de México', 19.4330, -99.1385, 'Legendary Mexico City cantina since 1928. An authentic local experience with cold Corona on tap, simple food, and TVs showing Liga MX matches.', NULL, 4.4, 3500, 6, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Bipo Condesa', 'la-bipo-condesa-cdmx', c.id, 'Calle Nuevo León 4, Condesa, 06100 Ciudad de México', 19.4116, -99.1724, 'Trendy Condesa bar with a bohemian vibe, creative cocktails, and screens for major football matches. Popular with expats and locals alike.', NULL, 4.2, 900, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Sports Bar Marriott', 'champions-sports-bar-cdmx', c.id, 'Av. Paseo de la Reforma 276, Juárez, 06600 Ciudad de México', 19.4295, -99.1620, 'Hotel sports bar inside the Marriott with a polished setting, full bar, and comprehensive coverage of American and international sports.', 'https://www.marriott.com/', 4.0, 520, 20, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'mexico-city'
ON CONFLICT (slug) DO NOTHING;

-- CANCUN (5 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Sports Bar Cancun', 'champions-sports-bar-cancun', c.id, 'Blvd. Kukulcán Km 12.5, Zona Hotelera, 77500 Cancún', 21.1175, -86.7610, 'Resort-area sports bar with air conditioning, large screens, and American-style fare. Popular with tourists looking to catch NFL and MLB games.', NULL, 4.1, 950, 18, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'cancun'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Surfin Burrito Sports Bar', 'surfin-burrito-cancun', c.id, 'Blvd. Kukulcán Km 9.5, Zona Hotelera, 77500 Cancún', 21.1306, -86.7480, 'Beach-themed sports bar in the Hotel Zone with massive burritos, frozen margaritas, and wall-to-wall screens for every major sport.', 'https://www.surfinburrito.com/', 4.3, 1800, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'cancun'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Buffalo Wild Wings Cancun', 'bww-cancun', c.id, 'Av. Tulum, SM 7, 77500 Cancún', 21.1582, -86.8304, 'Well-known sports bar chain in downtown Cancun with dozens of TVs, American comfort food, and a lively game-day atmosphere.', 'https://www.bww.com.mx/', 4.0, 700, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cancun'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Cancun', 'hooters-cancun', c.id, 'Blvd. Kukulcán Km 14, Zona Hotelera, 77500 Cancún', 21.1085, -86.7725, 'Hotel Zone outpost of the popular chain with cold beer, wings, and reliable coverage of NFL, NBA, and Liga MX on big screens.', 'https://www.hootersmexico.com.mx/', 3.8, 1100, 20, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'cancun'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'El Pabilo Sports Cantina', 'el-pabilo-cancun', c.id, 'Av. Bonampak, SM 3, 77500 Cancún', 21.1630, -86.8273, 'Local favourite in downtown Cancun serving authentic Mexican food with cold micheladas and screens tuned to Liga MX and boxing.', NULL, 4.2, 480, 8, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'cancun'
ON CONFLICT (slug) DO NOTHING;

-- PLAYA DEL CARMEN (4 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'All Sports Bar Playa', 'all-sports-bar-playa', c.id, 'Calle 10 Norte, Centro, 77710 Playa del Carmen', 20.6296, -87.0750, 'Popular expat hangout on 10th Street with TVs showing NFL, Premier League, and Liga MX. Cold beers and tasty pub grub.', NULL, 4.2, 650, 14, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'playa-del-carmen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Taco Box Sports Bar', 'taco-box-sports-bar-playa', c.id, 'Av. 30 Norte, Centro, 77710 Playa del Carmen', 20.6315, -87.0703, 'Fun and colourful sports bar with outstanding tacos, frozen drinks, and screens showing international football and American sports.', NULL, 4.3, 520, 10, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'playa-del-carmen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Murphy''s Law Irish Pub', 'murphys-law-playa', c.id, 'Calle 5 Bis Sur, Centro, 77710 Playa del Carmen', 20.6268, -87.0776, 'Authentic Irish pub steps from the beach with Guinness on draught, fish and chips, and screens for rugby, football, and UFC.', NULL, 4.1, 380, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'playa-del-carmen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wings Army Playa', 'wings-army-playa', c.id, 'Av. 10 Sur, Centro, 77710 Playa del Carmen', 20.6273, -87.0738, 'Mexican wing chain with a dedicated sports-watching setup, cold beers, and dozens of wing flavours. Great for Liga MX and NFL nights.', 'https://www.wingsarmy.com/', 4.0, 420, 12, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'playa-del-carmen'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - BRAZIL
-- ============================================================================

-- SÃO PAULO (8 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Seu Justino Vila Madalena', 'seu-justino-vila-madalena-sp', c.id, 'R. Aspicuelta, 168 - Vila Madalena, São Paulo - SP, 05433-010', -23.5515, -46.6903, 'Trendy gastropub in Vila Madalena with craft beers, elevated bar food, and big screens showing Brasileirão, Champions League, and UFC.', 'https://www.seujustino.com.br/', 4.3, 2200, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Malley''s Irish Pub', 'omalleys-irish-pub-sp', c.id, 'Al. Itú, 1529 - Cerqueira César, São Paulo - SP, 01421-002', -23.5596, -46.6699, 'A São Paulo institution for watching international football. Authentic Irish pub with Guinness, shepherd''s pie, and screens on every wall.', NULL, 4.4, 1800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Finnegan''s Pub', 'finnegans-pub-sp', c.id, 'R. Cristiano Viana, 358 - Pinheiros, São Paulo - SP, 05411-000', -23.5627, -46.6838, 'Cosy Irish pub in Pinheiros known for its Friday night buzz and excellent football coverage. Friendly staff and a great whiskey selection.', NULL, 4.2, 950, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Choperia Liberdade', 'choperia-liberdade-sp', c.id, 'R. da Glória, 766 - Liberdade, São Paulo - SP, 01510-000', -23.5610, -46.6315, 'Neighbourhood bar in Liberdade serving ice-cold chopp and classic Brazilian petiscos while showing Corinthians and Palmeiras matches.', NULL, 4.0, 420, 6, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pirajá Bar', 'piraja-bar-sp', c.id, 'R. Pedroso Alvarenga, 1564 - Itaim Bibi, São Paulo - SP, 04531-004', -23.5812, -46.6742, 'Classic São Paulo boteco in Itaim Bibi with excellent appetizers, cold chopp on tap, and reliable coverage of all major Brazilian football.', 'https://www.piraja.com.br/', 4.1, 1600, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Brahma Centro', 'bar-brahma-centro-sp', c.id, 'Av. São João, 677 - República, São Paulo - SP, 01035-100', -23.5418, -46.6389, 'Iconic São Paulo bar at the corner of Ipiranga and São João. Live music, classic décor, and screens showing the biggest matches.', 'https://www.barbrahma.com.br/', 4.3, 3200, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Goose Island Brewhouse SP', 'goose-island-brewhouse-sp', c.id, 'R. Augusta, 2068 - Cerqueira César, São Paulo - SP, 01412-100', -23.5562, -46.6625, 'Craft brewery taproom on Rua Augusta with house-brewed IPAs, burgers, and screens for international sports and MMA events.', 'https://www.gooseisland.com.br/', 4.4, 1400, 10, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar do Justo', 'bar-do-justo-sp', c.id, 'R. Oscar Freire, 163 - Jardins, São Paulo - SP, 01426-001', -23.5612, -46.6681, 'Relaxed sports bar in Jardins with a neighbourhood feel, affordable drinks, and dedicated following during Brasileirão season.', NULL, 4.1, 580, 8, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'sao-paulo'
ON CONFLICT (slug) DO NOTHING;

-- RIO DE JANEIRO (6 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Boteco Belmonte Copacabana', 'boteco-belmonte-copacabana-rio', c.id, 'R. Domingos Ferreira, 521 - Copacabana, Rio de Janeiro - RJ, 22050-012', -22.9674, -43.1826, 'Classic carioca boteco steps from Copacabana beach. Cold chopp, pastel de camarão, and every Flamengo and Fluminense match on screen.', NULL, 4.3, 2800, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'rio-de-janeiro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lord Jim Pub', 'lord-jim-pub-rio', c.id, 'R. Paul Redfern, 63 - Ipanema, Rio de Janeiro - RJ, 22410-080', -22.9836, -43.1982, 'Legendary British pub in Ipanema since 1981. A go-to for expats watching Premier League, rugby, and Champions League with imported beers.', NULL, 4.2, 1100, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'rio-de-janeiro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar do Adão', 'bar-do-adao-rio', c.id, 'R. Arnaldo Quintela, 40 - Botafogo, Rio de Janeiro - RJ, 22280-070', -22.9513, -43.1834, 'Authentic Botafogo neighbourhood bar with sidewalk tables, cheap beer, and passionate crowds during Flamengo matches.', NULL, 4.1, 650, 4, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'rio-de-janeiro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shenanigan''s Irish Pub Leblon', 'shenanigans-leblon-rio', c.id, 'R. Visconde de Pirajá, 112A - Ipanema, Rio de Janeiro - RJ, 22410-000', -22.9839, -43.2005, 'Irish pub in Ipanema popular with expats and tourists for watching international football, UFC, and NFL on big screens with pub food.', NULL, 4.0, 780, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'rio-de-janeiro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Bukowski Botafogo', 'bar-bukowski-botafogo-rio', c.id, 'R. Álvaro Ramos, 270 - Botafogo, Rio de Janeiro - RJ, 22280-110', -22.9535, -43.1812, 'Alternative bar in Botafogo with craft beer, vinyl records on the walls, and screens showing football. Great for a more laid-back viewing experience.', NULL, 4.3, 920, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'rio-de-janeiro'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mab''s Sports Bar & Kitchen', 'mabs-sports-bar-rio', c.id, 'Av. Olegário Maciel, 6 - Barra da Tijuca, Rio de Janeiro - RJ, 22621-200', -22.9993, -43.3643, 'Modern sports bar in Barra da Tijuca with a dedicated screen wall, American-style food, and coverage of both Brazilian and international leagues.', NULL, 4.2, 480, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'rio-de-janeiro'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - COLOMBIA
-- ============================================================================

-- BOGOTÁ (5 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Pub Bogotá', 'the-pub-bogota', c.id, 'Cra. 5 #26B-20, Chapinero, Bogotá', 4.6367, -74.0621, 'Popular British-style pub in the Zona T area with draught beer, pub quizzes, and screens showing Premier League, Champions League, and Liga BetPlay.', NULL, 4.2, 1200, 12, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bogota'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bogotá Beer Company Zona T', 'bbc-zona-t-bogota', c.id, 'Cra. 12 #83-33, Chapinero, Bogotá', 4.6685, -74.0509, 'Colombia''s beloved craft brewery chain with a lively Zona T location. Great local beers, Colombian pub fare, and football on every screen.', 'https://www.bogotabeercompany.com/', 4.3, 2100, 14, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'bogota'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Irish Pub Bogotá', 'irish-pub-bogota', c.id, 'Cra. 13 #85-17, Chapinero, Bogotá', 4.6703, -74.0497, 'Authentic Irish pub with a cosy atmosphere, Guinness on tap, and reliable coverage of Six Nations rugby, football, and major boxing events.', NULL, 4.1, 680, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bogota'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Unicentro Bogotá', 'hooters-unicentro-bogota', c.id, 'Av. Cra. 15 #124-30, Usaquén, Bogotá', 4.7068, -74.0430, 'Familiar American sports bar brand in the Unicentro area with big screens, wings, and full coverage of NFL, NBA, and Liga BetPlay.', 'https://www.hooters.com.co/', 3.9, 900, 22, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bogota'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Estadio Beer Pub', 'estadio-beer-pub-bogota', c.id, 'Cra. 7 #67-07, Chapinero, Bogotá', 4.6548, -74.0567, 'Football-themed sports pub decorated with jerseys and scarves from around the world. Great for watching matches with passionate Colombian fans.', NULL, 4.2, 550, 16, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'bogota'
ON CONFLICT (slug) DO NOTHING;

-- MEDELLÍN (5 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Patrick''s Irish Pub Medellín', 'patricks-irish-pub-medellin', c.id, 'Cra. 37 #8A-24, El Poblado, Medellín', 6.2087, -75.5678, 'Beloved Irish pub in Parque Lleras area with Guinness on draught, darts, and screens showing Premier League, rugby, and UFC.', NULL, 4.3, 1400, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'medellin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bogotá Beer Company El Poblado', 'bbc-el-poblado-medellin', c.id, 'Cra. 35 #7-57, El Poblado, Medellín', 6.2098, -75.5690, 'Craft beer outpost of Colombia''s top brewery chain in the heart of El Poblado. Big screens, great burgers, and a buzzy game-day atmosphere.', 'https://www.bogotabeercompany.com/', 4.2, 1100, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'medellin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'El Social Sports Bar', 'el-social-sports-bar-medellin', c.id, 'Cra. 43A #1-50, El Poblado, Medellín', 6.2070, -75.5640, 'Modern sports bar on the Milla de Oro with craft cocktails, gourmet bar food, and a wall of screens for Liga BetPlay and international football.', NULL, 4.1, 680, 18, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'medellin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Salon Amador', 'salon-amador-medellin', c.id, 'Cra. 42 #10-34, El Poblado, Medellín', 6.2088, -75.5667, 'Vibrant bar in El Poblado popular for live music and sports. Electric atmosphere during Atlético Nacional and DIM matches.', NULL, 4.2, 850, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'medellin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cervecería Libre', 'cerveceria-libre-medellin', c.id, 'Cl. 10 #40-20, El Poblado, Medellín', 6.2102, -75.5671, 'Independent craft brewery taproom with rotating taps, tasty empanadas, and screens for catching the latest football and boxing.', NULL, 4.4, 720, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'medellin'
ON CONFLICT (slug) DO NOTHING;

-- CARTAGENA (3 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Chelito''s Sports Bar', 'chelitos-sports-bar-cartagena', c.id, 'Cl. de la Mantilla #3-56, Centro, Cartagena', 10.4236, -75.5498, 'Fun sports bar in the walled city with colourful décor, cold Aguila beer, and screens showing Liga BetPlay, Copa Libertadores, and NBA.', NULL, 4.1, 520, 10, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'cartagena'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Beer Lovers Cartagena', 'beer-lovers-cartagena', c.id, 'Cra. 2 #6-129, Bocagrande, Cartagena', 10.3985, -75.5572, 'Craft beer bar in Bocagrande with a cool industrial space, rotating local and imported taps, and screens for international football.', NULL, 4.3, 380, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'cartagena'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mr. Babilla Sports Lounge', 'mr-babilla-sports-lounge-cartagena', c.id, 'Av. San Martín #6-75, Bocagrande, Cartagena', 10.3955, -75.5578, 'Caribbean-style sports lounge with a relaxed terrace, tropical cocktails, and screens showing football, boxing, and baseball.', NULL, 4.0, 310, 12, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'cartagena'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - ARGENTINA
-- ============================================================================

-- BUENOS AIRES (8 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Temple Bar Buenos Aires', 'temple-bar-buenos-aires', c.id, 'Marcelo T. de Alvear 936, C1058AAP, Buenos Aires', -34.5972, -58.3830, 'Irish pub in Retiro with draught Guinness, whiskey flights, and big screens for Premier League, Rugby Championship, and Champions League.', NULL, 4.2, 1300, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Antares Palermo', 'antares-palermo-ba', c.id, 'Armenia 1447, C1414DAQ, Buenos Aires', -34.5867, -58.4247, 'Craft beer pioneer with a Palermo location featuring house-brewed ales, pizza, and screens for Superliga Argentina and Copa Libertadores.', 'https://www.cervezaantares.com/', 4.3, 1600, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sugar Bar San Telmo', 'sugar-bar-san-telmo-ba', c.id, 'Av. Paseo Colón 1150, C1063ACW, Buenos Aires', -34.6200, -58.3685, 'Vibrant bar in San Telmo with live music, DJs on weekends, and screens showing Argentine football. Electric atmosphere during Boca and River matches.', NULL, 4.1, 900, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Buller Brewing Recoleta', 'buller-brewing-recoleta-ba', c.id, 'R. M. Ortiz 1827, C1113AAA, Buenos Aires', -34.5868, -58.3942, 'Buenos Aires'' first brewpub in upscale Recoleta with house-made craft beers, steaks, and screens for watching rugby and football.', 'https://www.bullerbrewing.com/', 4.4, 2200, 10, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Biela Recoleta', 'la-biela-recoleta-ba', c.id, 'Av. Pres. Manuel Quintana 596, C1129ABN, Buenos Aires', -34.5862, -58.3928, 'Historic café overlooking Recoleta cemetery with outdoor terraces and screens for major Argentine football matches. An institution since 1850.', NULL, 4.2, 4500, 4, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Shamrock Pub', 'shamrock-pub-ba', c.id, 'Rodríguez Peña 1220, C1020ABF, Buenos Aires', -34.5952, -58.3962, 'Classic Irish pub near Recoleta popular with expats and locals alike. Pints of Guinness, shepherd''s pie, and all Premier League matches live.', NULL, 4.0, 750, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'On Tap Craft Beer Bar', 'on-tap-palermo-ba', c.id, 'Costa Rica 5527, C1414BTG, Buenos Aires', -34.5817, -58.4282, 'Palermo Soho craft beer bar with 20+ rotating taps, a relaxed terrace, and screens for watching Argentine football and international rugby.', NULL, 4.3, 620, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cervecería Nacional', 'cerveceria-nacional-ba', c.id, 'Av. Corrientes 990, C1043AAV, Buenos Aires', -34.6043, -58.3837, 'Downtown microbrewery on Corrientes with a bustling atmosphere, hearty empanadas, and screens tuned to Superliga and Copa Libertadores.', NULL, 4.1, 480, 10, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'buenos-aires'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- VENUES - PERU
-- ============================================================================

-- LIMA (5 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Old Pub Miraflores', 'old-pub-miraflores-lima', c.id, 'Calle San Ramón 295, Miraflores, Lima 15074', -12.1196, -77.0315, 'British-style pub in Miraflores with draught beers, fish and chips, and screens showing Premier League, Liga 1, and Copa Libertadores.', NULL, 4.2, 850, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'lima'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Barbarian Beer Garden', 'barbarian-beer-garden-lima', c.id, 'Av. Pedro de Osma 144, Barranco, Lima 15063', -12.1432, -77.0228, 'Peru''s leading craft brewery with a trendy Barranco taproom, house IPAs, gourmet burgers, and screens for Liga 1 and international football.', 'https://www.barbarian.pe/', 4.4, 1800, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'lima'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Murphy''s Irish Pub Lima', 'murphys-irish-pub-lima', c.id, 'Calle Schell 619, Miraflores, Lima 15074', -12.1210, -77.0340, 'Cosy Irish pub on Calle Schell with Guinness, pub grub, and screens for rugby, Premier League, and Champions League.', NULL, 4.1, 620, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'lima'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stadium Sports Bar Lima', 'stadium-sports-bar-lima', c.id, 'Av. del Ejército 800, Miraflores, Lima 15073', -12.1157, -77.0395, 'Dedicated sports bar in Miraflores with a wall of screens, beer towers, and passionate fans watching Alianza Lima, Universitario, and international matches.', NULL, 4.0, 520, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'lima'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Cachina Bar Barranco', 'la-cachina-bar-lima', c.id, 'Av. Grau 266, Barranco, Lima 15063', -12.1455, -77.0205, 'Eclectic Barranco bar with vintage décor, pisco cocktails, and screens showing Peruvian football. Great for a local experience with character.', NULL, 4.3, 440, 4, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'lima'
ON CONFLICT (slug) DO NOTHING;

-- CUSCO (3 venues)

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Paddy''s Irish Pub Cusco', 'paddys-irish-pub-cusco', c.id, 'Calle Triunfo 124, Cusco 08002', -13.5167, -71.9785, 'Irish pub on the main plaza with stone walls, Guinness on tap, and screens for Premier League, rugby, and Champions League. Great balcony views.', NULL, 4.2, 980, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'cusco'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Norton Rats Tavern', 'norton-rats-tavern-cusco', c.id, 'Calle Loreto 115, Cusco 08002', -13.5162, -71.9770, 'A Cusco institution since the 1990s. Cosy pub with pool tables, darts, and screens showing football, NFL, and NBA. Popular with backpackers.', NULL, 4.1, 650, 6, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'cusco'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wild Rover Cusco', 'wild-rover-cusco', c.id, 'Calle Santa Catalina Ancha 114, Cusco 08002', -13.5172, -71.9775, 'Lively backpacker pub with nightly events, cheap drinks, and screens showing all the big matches. Electric atmosphere during World Cup and Copa América.', 'https://www.wildroversouthamerica.com/', 4.0, 1200, 10, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'cusco'
ON CONFLICT (slug) DO NOTHING;
