-- ============================================================================
-- Southern Europe Sports Venues - Spain & Italy
-- Spain: Madrid (12), Barcelona (12), Seville (5), Valencia (5), Malaga (4), Bilbao (3)
-- Italy: Rome (10), Milan (8), Florence (5), Naples (4), Turin (3)
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

-- Spain
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Madrid', 'madrid', 'Spain', 'ES', 40.4168, -3.7038, 'Europe/Madrid')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Barcelona', 'barcelona', 'Spain', 'ES', 41.3874, 2.1686, 'Europe/Madrid')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Seville', 'seville', 'Spain', 'ES', 37.3891, -5.9845, 'Europe/Madrid')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Valencia', 'valencia', 'Spain', 'ES', 39.4699, -0.3763, 'Europe/Madrid')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Malaga', 'malaga', 'Spain', 'ES', 36.7213, -4.4213, 'Europe/Madrid')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bilbao', 'bilbao', 'Spain', 'ES', 43.2630, -2.9350, 'Europe/Madrid')
ON CONFLICT (slug) DO NOTHING;

-- Italy
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Rome', 'rome', 'Italy', 'IT', 41.9028, 12.4964, 'Europe/Rome')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Milan', 'milan', 'Italy', 'IT', 45.4642, 9.1900, 'Europe/Rome')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Florence', 'florence', 'Italy', 'IT', 43.7696, 11.2558, 'Europe/Rome')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Naples', 'naples', 'Italy', 'IT', 40.8518, 14.2681, 'Europe/Rome')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Turin', 'turin', 'Italy', 'IT', 45.0703, 7.6869, 'Europe/Rome')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SPAIN - MADRID VENUES (12)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Irish Rover', 'the-irish-rover-madrid', c.id, 'Avenida de Brasil 7, 28020 Madrid', 40.4573, -3.6903, 'Popular Irish pub in Madrid with a strong focus on live sports. Multiple screens showing Premier League, La Liga, Champions League, and rugby. Great pub grub and Guinness on tap.', 'https://www.theirishrover.com', 4.3, 2200, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dubliners Irish Pub', 'dubliners-irish-pub-madrid', c.id, 'Calle Espoz y Mina 7, 28012 Madrid', 40.4163, -3.7013, 'Classic Irish sports bar right in the heart of Madrid near Puerta del Sol. Shows all major football matches, rugby, and American sports with a lively atmosphere on match days.', 'https://www.dublinersbar.com', 4.2, 1800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Madrid', 'oneills-madrid', c.id, 'Calle Principe 12, 28012 Madrid', 40.4155, -3.7005, 'Part of the well-known O''Neill''s chain, this Madrid outpost is a reliable destination for watching Premier League, La Liga, and Champions League. Centrally located with a good beer selection.', 'https://www.oneills.es', 4.1, 1500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cerveceria Deportiva Madrid', 'cerveceria-deportiva-madrid', c.id, 'Calle de Alcala 152, 28028 Madrid', 40.4245, -3.6720, 'Spanish-style sports bar with multiple screens and a passion for La Liga and Champions League football. Great tapas menu and extensive Spanish beer selection.', NULL, 4.0, 850, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Triskel Tavern', 'triskel-tavern-madrid', c.id, 'Calle de San Vicente Ferrer 3, 28004 Madrid', 40.4250, -3.7038, 'Cozy Irish tavern in the Malasana neighborhood known for showing GAA, rugby, and football. Small but dedicated sports crowd with friendly staff and a warm atmosphere.', NULL, 4.4, 620, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The James Joyce', 'the-james-joyce-madrid', c.id, 'Calle Alcala 59, 28014 Madrid', 40.4210, -3.6930, 'A proper Irish pub near Retiro Park that shows all the big matches. Popular with expats for Six Nations rugby and Premier League weekends. Hearty food menu and live music some evenings.', NULL, 4.2, 1100, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McCarthy''s Irish Bar', 'mccarthys-irish-bar-madrid', c.id, 'Calle Gran Via 36, 28013 Madrid', 40.4204, -3.7055, 'Lively Irish bar on Gran Via showing a full range of live sport. Big screens and a buzzing atmosphere during Champions League nights and El Clasico.', NULL, 4.1, 950, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Deportivo Santiago Bernabeu', 'bar-deportivo-santiago-bernabeu-madrid', c.id, 'Paseo de la Castellana 140, 28046 Madrid', 40.4530, -3.6883, 'Located near the Santiago Bernabeu stadium, this sports bar fills up on Real Madrid match days. Multiple screens, cold beer, and passionate football fans create an electric atmosphere.', NULL, 4.0, 700, 6, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Quarterback', 'the-quarterback-madrid', c.id, 'Calle de Alburquerque 5, 28010 Madrid', 40.4325, -3.7010, 'American-style sports bar catering to NFL, NBA, and MLB fans in Madrid. Late-night screenings of US sports with burgers, wings, and craft beer on tap.', NULL, 4.3, 480, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Taquilla Sports Bar', 'la-taquilla-sports-bar-madrid', c.id, 'Calle de Fuencarral 101, 28004 Madrid', 40.4290, -3.7020, 'Trendy sports bar in the Malasana area showing La Liga, Premier League, and UFC events. Good cocktails and a younger crowd make this a fun spot for weekend matches.', NULL, 4.1, 560, 8, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Copperman Pub', 'the-copperman-pub-madrid', c.id, 'Calle de las Hileras 14, 28013 Madrid', 40.4175, -3.7090, 'British-style pub near Opera showing football and rugby on multiple screens. Real ales and a solid pie-and-mash menu make it a home away from home for British expats.', NULL, 4.2, 420, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cerveceria La Bola', 'cerveceria-la-bola-madrid', c.id, 'Calle de la Bola 8, 28013 Madrid', 40.4195, -3.7120, 'Traditional Spanish cerveceria that transforms into a sports hub on match days. Known for its La Liga screenings, vermouth on tap, and classic Madrid tapas.', NULL, 4.0, 380, 4, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'madrid'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SPAIN - BARCELONA VENUES (12)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The George Payne', 'the-george-payne-barcelona', c.id, 'Placa Urquinaona 5, 08010 Barcelona', 41.3895, 2.1715, 'Massive Irish sports pub spread over two floors with over 20 screens. Shows every major sporting event from football to F1. Known for its raucous Champions League nights and full Irish breakfast.', 'https://www.thegeorgepayne.com', 4.2, 3200, 22, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Belushi''s Barcelona', 'belushis-barcelona', c.id, 'Placa Reial 17, 08002 Barcelona', 41.3802, 2.1753, 'Lively sports bar on the iconic Placa Reial showing Premier League, La Liga, NFL, and NBA on big screens. Great burgers, cocktails, and a party atmosphere that lasts late into the night.', 'https://www.belushis.com/barcelona', 4.1, 2800, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Shamrock Bar', 'the-shamrock-bar-barcelona', c.id, 'Carrer dels Tallers 72, 08001 Barcelona', 41.3840, 2.1670, 'Popular Irish sports pub near Las Ramblas. Reliable for Premier League, rugby, and GAA coverage. Known for its friendly staff, cheap pints, and buzzing atmosphere during big matches.', NULL, 4.0, 1600, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'CocoVail Beer Hall', 'cocovail-beer-hall-barcelona', c.id, 'Carrer d''Arago 284, 08009 Barcelona', 41.3930, 2.1645, 'American-owned craft beer hall and sports bar in the Eixample district. Shows NFL, NBA, and MLB alongside European football. Over 20 taps of craft beer and a smoked meat menu.', 'https://www.cocovail.com', 4.4, 1400, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wild Rover', 'the-wild-rover-barcelona', c.id, 'Carrer de Santa Monica 2, 08001 Barcelona', 41.3790, 2.1752, 'Large Irish pub at the bottom of Las Ramblas with multiple floors and screens. A go-to for watching rugby, football, and any major sporting event. Lively crowd and good craic guaranteed.', NULL, 4.1, 2100, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Michael Collins Irish Bar', 'michael-collins-irish-bar-barcelona', c.id, 'Placa de la Sagrada Familia 4, 08013 Barcelona', 41.4035, 2.1743, 'Iconic Irish bar next to the Sagrada Familia showing all major live sports. Multiple big screens, Guinness on tap, and a loyal expat crowd. Perfect for Barca match days.', NULL, 4.2, 1900, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'L''Ovella Negra', 'lovella-negra-barcelona', c.id, 'Carrer de les Sitges 5, 08001 Barcelona', 41.3810, 2.1730, 'Huge beer hall in the Gothic Quarter that screens big football matches on a projector. Cheap pitchers of beer and sangria attract a young, international crowd. Great for El Clasico.', NULL, 4.0, 2500, 4, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Flaherty''s Irish Bar', 'flahertys-irish-bar-barcelona', c.id, 'Placa de Joaquim Xirau 1, 08002 Barcelona', 41.3795, 2.1760, 'One of Barcelona''s oldest Irish pubs, right off Las Ramblas. Dependable for live sport including Six Nations, Premier League, and La Liga. Traditional pub food and a welcoming vibe.', NULL, 4.1, 1300, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lennox The Pub', 'lennox-the-pub-barcelona', c.id, 'Carrer del Rosello 104, 08029 Barcelona', 41.3880, 2.1510, 'Stylish pub in the Eixample district with a strong sports focus. Big screens showing football, basketball, and tennis. Good selection of imported beers and quality pub food.', NULL, 4.3, 680, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Camp Nou', 'bar-camp-nou-barcelona', c.id, 'Travessera de les Corts 56, 08028 Barcelona', 41.3808, 2.1228, 'Local sports bar near the Camp Nou stadium buzzing on FC Barcelona match days. Screens showing La Liga and European football. Affordable tapas and cerveza in a passionate football atmosphere.', NULL, 4.0, 520, 6, 'lively', '$', true, true, false
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dow Jones Bar', 'dow-jones-bar-barcelona', c.id, 'Carrer del Bruc 97, 08009 Barcelona', 41.3945, 2.1680, 'Unique concept sports bar where drink prices fluctuate like the stock market. Shows major football and F1. A fun, quirky spot with a younger crowd.', NULL, 4.2, 750, 6, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Cervecita Craft Beer Bar', 'la-cervecita-craft-beer-bar-barcelona', c.id, 'Carrer de Girona 58, 08009 Barcelona', 41.3935, 2.1665, 'Craft beer bar in Eixample that shows football and other sports on its screens. Excellent rotating tap list and a relaxed vibe. A great alternative to the rowdier Irish pubs.', NULL, 4.4, 460, 4, 'relaxed', '$$', false, false, false
FROM cities c WHERE c.slug = 'barcelona'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SPAIN - SEVILLE VENUES (5)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Flaherty''s Irish Pub Seville', 'flahertys-irish-pub-seville', c.id, 'Calle Alemanes 7, 41004 Seville', 37.3862, -5.9930, 'Popular Irish sports bar in the center of Seville near the Cathedral. Screens all major football, rugby, and GAA matches. Great pints and a friendly expat community.', NULL, 4.2, 1200, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'seville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Second Inn', 'the-second-inn-seville', c.id, 'Calle Marques de Paradas 28, 41001 Seville', 37.3892, -5.9980, 'British-run sports pub near the Arenal district showing Premier League, Championship, and European football. Quiz nights and a welcoming atmosphere for tourists and locals alike.', NULL, 4.3, 680, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'seville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Deportivo Nervion', 'bar-deportivo-nervion-seville', c.id, 'Avenida de Eduardo Dato 22, 41005 Seville', 37.3880, -5.9780, 'Local sports bar in the Nervion neighborhood near the Sanchez-Pizjuan stadium. Packed on Sevilla FC match days with passionate fans, cold cervezas, and quality tapas.', NULL, 4.1, 450, 6, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'seville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Brien''s Seville', 'obriens-seville', c.id, 'Calle Adriano 6, 41001 Seville', 37.3870, -5.9995, 'Lively Irish bar along the river showing all major sports. Known for big screen Champions League coverage and a strong selection of Irish whiskeys and craft beers.', NULL, 4.0, 520, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'seville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Tertulia Sports Cafe', 'la-tertulia-sports-cafe-seville', c.id, 'Calle Feria 40, 41003 Seville', 37.3955, -5.9910, 'Relaxed sports cafe in the Macarena district with outdoor seating. Shows La Liga and international football on weekend afternoons alongside coffee and tapas.', NULL, 4.2, 310, 4, 'relaxed', '$', true, true, false
FROM cities c WHERE c.slug = 'seville'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SPAIN - VALENCIA VENUES (5)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Portland Ale House', 'portland-ale-house-valencia', c.id, 'Carrer de Denia 40, 46006 Valencia', 39.4680, -0.3590, 'American-style sports bar and craft beer house in the Ruzafa district. Shows NFL, NBA, Premier League, and La Liga on multiple screens. Great burgers and over 15 craft beers on tap.', 'https://www.portlandalehouse.com', 4.4, 980, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'valencia'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'St. Patrick''s Irish Pub Valencia', 'st-patricks-irish-pub-valencia', c.id, 'Carrer de Calatrava 7, 46001 Valencia', 39.4735, -0.3795, 'Classic Irish pub in the old town showing all major live sports. Popular for Six Nations rugby and Premier League weekends. Guinness on tap and traditional pub food.', NULL, 4.1, 750, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'valencia'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Finnegan''s Irish Pub Valencia', 'finnegans-irish-pub-valencia', c.id, 'Plaza de la Reina 6, 46003 Valencia', 39.4745, -0.3753, 'Right on the lively Plaza de la Reina, this Irish pub offers prime sports viewing with a terrace. Shows football, rugby, and cricket on multiple screens.', NULL, 4.0, 640, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'valencia'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Mestalla', 'bar-mestalla-valencia', c.id, 'Avenida de Suecia 15, 46010 Valencia', 39.4745, -0.3583, 'Neighborhood sports bar near the Mestalla stadium. Buzzing on Valencia CF match days with passionate local fans. Affordable drinks and classic Spanish bar snacks.', NULL, 4.1, 380, 4, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'valencia'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Slaughterhouse Sports Bar', 'slaughterhouse-sports-bar-valencia', c.id, 'Carrer del Literat Azorin 14, 46006 Valencia', 39.4660, -0.3640, 'Edgy sports bar in the Ruzafa neighborhood with big projector screenings of football and MMA events. Craft cocktails, DJs on weekends, and a young international crowd.', NULL, 4.2, 420, 6, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'valencia'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SPAIN - MALAGA VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'ZZ Pub Malaga', 'zz-pub-malaga', c.id, 'Calle Tejeros 1, 29008 Malaga', 36.7193, -4.4193, 'Popular sports bar near the port showing football, F1, and boxing on multiple screens. Known for its cheap beer deals and a lively crowd during big matches.', NULL, 4.2, 680, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'malaga'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Shakespeare Pub Malaga', 'the-shakespeare-pub-malaga', c.id, 'Calle Mendez Nunez 3, 29008 Malaga', 36.7210, -4.4200, 'English-style pub near the old town showing Premier League, Championship, and La Liga. Fish and chips, English breakfasts, and real ales make it a favourite for British visitors.', NULL, 4.3, 520, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'malaga'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Malaga', 'oneills-malaga', c.id, 'Plaza de la Merced 10, 29012 Malaga', 36.7230, -4.4170, 'Busy Irish sports bar on the iconic Plaza de la Merced. Shows all major sports with a large terrace for outdoor viewing. Great Guinness and pub grub.', NULL, 4.1, 480, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'malaga'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar La Rosaleda', 'bar-la-rosaleda-malaga', c.id, 'Calle Heroe de Sostoa 75, 29002 Malaga', 36.7160, -4.4310, 'Local sports bar near Malaga CF''s La Rosaleda stadium. Fills up with passionate Malaguenos on match days. Traditional Spanish bar with tapas and cold beer.', NULL, 4.0, 290, 4, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'malaga'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SPAIN - BILBAO VENUES (3)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bulldog Sports Bar Bilbao', 'the-bulldog-sports-bar-bilbao', c.id, 'Calle Ledesma 8, 48001 Bilbao', 43.2620, -2.9280, 'Bilbao''s top sports bar showing La Liga, Premier League, Champions League, and rugby. Big screens, craft beer selection, and a passionate Basque sports crowd.', NULL, 4.3, 540, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bilbao'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Harlem Rock Cafe', 'harlem-rock-cafe-bilbao', c.id, 'Calle Iparraguirre 34, 48011 Bilbao', 43.2645, -2.9330, 'Rock-themed bar that doubles as a sports venue for big matches. Screens football and boxing events with a great burger menu and live music on non-match nights.', NULL, 4.1, 380, 6, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'bilbao'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Berton Sasibil', 'berton-sasibil-bilbao', c.id, 'Calle Licenciado Poza 47, 48013 Bilbao', 43.2605, -2.9410, 'Traditional Basque bar near San Mames stadium beloved by Athletic Club fans. Pintxos and txakoli wine alongside match screenings. An authentic Bilbao sports experience.', NULL, 4.4, 320, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'bilbao'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ITALY - ROME VENUES (10)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Scholars Lounge', 'scholars-lounge-rome', c.id, 'Via del Plebiscito 101, 00186 Rome', 41.8970, 12.4785, 'Rome''s premier sports bar with over 20 screens across multiple floors. Shows every major sporting event from Serie A to NFL. Full pub grub menu and a massive selection of beers and whiskeys.', 'https://www.scholarslounge.com', 4.3, 3500, 22, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Highlander Pub', 'the-highlander-pub-rome', c.id, 'Vicolo di San Biagio 6, 00186 Rome', 41.8965, 12.4730, 'Scottish-themed pub near Piazza Navona that is a go-to for rugby and football in Rome. Screens Six Nations, Champions League, and Serie A. Good whisky collection and hearty food.', NULL, 4.2, 1800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Drunken Ship', 'the-drunken-ship-rome', c.id, 'Campo de'' Fiori 20, 00186 Rome', 41.8955, 12.4720, 'Iconic bar on Campo de'' Fiori that transforms into a sports hub for big matches. Shows football, rugby, and American sports. Buzzing nightlife atmosphere with cocktails and beer.', 'https://www.drunkenship.com', 4.0, 2400, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Abbey Theatre Irish Pub', 'abbey-theatre-irish-pub-rome', c.id, 'Via del Governo Vecchio 51, 00186 Rome', 41.8982, 12.4700, 'Atmospheric Irish pub in a vaulted basement near Piazza Navona. Shows GAA, rugby, Premier League, and Serie A. Live music on non-match nights and a genuine Irish craic.', NULL, 4.3, 1400, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Finnegan''s Irish Pub Rome', 'finnegans-irish-pub-rome', c.id, 'Via Leonina 66, 00184 Rome', 41.8960, 12.4930, 'Cozy Irish pub in the Monti neighborhood showing all major sports. Particularly popular for Six Nations rugby and Champions League. Warm atmosphere and quality Guinness.', NULL, 4.2, 920, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Olimpico Roma', 'bar-olimpico-roma', c.id, 'Viale dei Gladiatori 2, 00135 Rome', 41.9340, 12.4540, 'Sports bar near the Stadio Olimpico that is the heart of Roma and Lazio match day culture. Packed with Ultras before and after games. Screens Serie A and European football.', NULL, 4.0, 650, 6, 'lively', '$', true, true, false
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Trinity College Pub Rome', 'trinity-college-pub-rome', c.id, 'Via del Collegio Romano 6, 00186 Rome', 41.8985, 12.4800, 'Multi-level Irish pub with a dance floor and sports screens. Shows Premier League, Serie A, and rugby. Popular with students and tourists looking for a lively night out.', NULL, 4.1, 1100, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ristorante Sportivo Testaccio', 'ristorante-sportivo-testaccio-rome', c.id, 'Via Marmorata 39, 00153 Rome', 41.8790, 12.4755, 'Traditional Roman restaurant in the Testaccio neighborhood that shows Serie A and Champions League on its screens. Excellent pasta and Roman cuisine with football as the backdrop.', NULL, 4.3, 480, 4, 'relaxed', '$$', true, true, false
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Caffetteria Sportiva Trastevere', 'caffetteria-sportiva-trastevere-rome', c.id, 'Piazza di San Calisto 3, 00153 Rome', 41.8877, 12.4690, 'Charming cafe-bar in Trastevere that screens football matches on its small terrace. Known for its aperitivo hour and relaxed Sunday afternoon Serie A screenings.', NULL, 4.1, 340, 3, 'relaxed', '$', true, true, false
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fiddler''s Elbow', 'the-fiddlers-elbow-rome', c.id, 'Via dell''Olmata 43, 00184 Rome', 41.8980, 12.5000, 'One of Rome''s oldest Irish pubs, near Santa Maria Maggiore. Reliable for live sport including rugby, football, and GAA. Cozy interior, friendly staff, and a loyal expat following.', NULL, 4.2, 780, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'rome'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ITALY - MILAN VENUES (8)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fox Pub Milan', 'the-fox-pub-milan', c.id, 'Via Paolo Sarpi 60, 20154 Milan', 45.4780, 9.1760, 'Popular English pub in the Chinatown area of Milan with multiple screens showing Premier League, Serie A, and Champions League. Good selection of real ales and English pub food.', NULL, 4.2, 1200, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Loch Pub Milan', 'the-loch-pub-milan', c.id, 'Via Ascanio Sforza 51, 20136 Milan', 45.4440, 9.1785, 'Scottish-themed pub along the Navigli canal showing football, rugby, and F1. Big screens, craft beer, and a buzzing atmosphere on match nights. Popular with the Navigli crowd.', NULL, 4.3, 880, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hurling Pub Milan', 'hurling-pub-milan', c.id, 'Via Torino 21, 20123 Milan', 45.4620, 9.1840, 'Irish pub in the center of Milan near the Duomo. Screens GAA, rugby, football, and American sports. Wooden interior, Guinness on tap, and a solid pub food menu.', NULL, 4.1, 950, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Biergarten San Siro', 'biergarten-san-siro-milan', c.id, 'Piazzale dello Sport 14, 20151 Milan', 45.4780, 9.1240, 'Beer garden and sports bar near the San Siro stadium. Packed on AC Milan and Inter match days with a fantastic outdoor viewing area. German and Italian beers on tap.', NULL, 4.2, 620, 6, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Victory Sports Pub Milan', 'victory-sports-pub-milan', c.id, 'Corso Sempione 28, 20154 Milan', 45.4730, 9.1710, 'Dedicated sports pub near Parco Sempione showing Serie A, Premier League, and Champions League. Large projector screen and individual booth screens. Good aperitivo deals.', NULL, 4.0, 540, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Connell''s Irish Pub Milan', 'oconnells-irish-pub-milan', c.id, 'Via Carducci 44, 20123 Milan', 45.4595, 9.1720, 'Warm Irish pub in central Milan with a loyal following for live sport. Screens Six Nations, Premier League, and Serie A. Good Guinness and hearty Irish stew.', NULL, 4.3, 710, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BQ Sports Bar Milan', 'bq-sports-bar-milan', c.id, 'Via Borsieri 30, 20159 Milan', 45.4870, 9.1880, 'Modern sports bar in the Isola district with sleek decor and high-definition screens. Shows football, basketball, and tennis. Craft cocktails and gourmet bar bites.', NULL, 4.4, 380, 8, 'upscale', '$$$', true, false, false
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Trattoria Sport Porta Romana', 'trattoria-sport-porta-romana-milan', c.id, 'Corso di Porta Romana 68, 20122 Milan', 45.4530, 9.1960, 'Neighborhood trattoria that screens Serie A matches while serving excellent Milanese cuisine. A relaxed, authentic Italian sports-watching experience with pasta and vino.', NULL, 4.2, 310, 4, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'milan'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ITALY - FLORENCE VENUES (5)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Lion''s Fountain', 'the-lions-fountain-florence', c.id, 'Borgo degli Albizi 34, 50122 Florence', 43.7710, 11.2620, 'Popular Irish pub in central Florence showing all major sports on multiple screens. A favourite for rugby, football, and NFL. Good beer selection and a friendly international crowd.', NULL, 4.2, 1100, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'florence'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fiddler''s Elbow Florence', 'the-fiddlers-elbow-florence', c.id, 'Piazza Santa Maria Novella 7, 50123 Florence', 43.7735, 11.2495, 'Part of the Italian chain of Irish pubs, this Florence location near the train station is dependable for live sport. Shows football, rugby, and GAA. Solid Guinness and pub atmosphere.', NULL, 4.1, 850, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'florence'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Red Garter', 'red-garter-florence', c.id, 'Via de'' Benci 33, 50122 Florence', 43.7685, 11.2610, 'American-style bar and live music venue near Santa Croce that shows NFL, NBA, and major football. Open late with a fun party atmosphere. Burgers, cocktails, and cold beer.', NULL, 4.0, 1300, 6, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'florence'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Sportivo Artemio Franchi', 'bar-sportivo-artemio-franchi-florence', c.id, 'Viale Manfredo Fanti 14, 50137 Florence', 43.7808, 11.2822, 'Local sports bar near Fiorentina''s Stadio Artemio Franchi. Packed with Viola fans on match days. Traditional Italian bar with espresso, beer, and panini.', NULL, 4.1, 280, 4, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'florence'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Caffetteria Sportiva Oltrarno', 'caffetteria-sportiva-oltrarno-florence', c.id, 'Piazza Santo Spirito 6, 50125 Florence', 43.7665, 11.2480, 'Charming cafe-bar on one of Florence''s prettiest piazzas. Shows Serie A and Champions League on its screens with outdoor seating. Great aperitivo and Tuscan snacks.', NULL, 4.3, 350, 3, 'relaxed', '$$', true, true, false
FROM cities c WHERE c.slug = 'florence'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ITALY - NAPLES VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Beertaxi Pub Naples', 'the-beertaxi-pub-naples', c.id, 'Via Chiaia 142, 80121 Naples', 40.8370, 14.2440, 'Craft beer pub in the elegant Chiaia district showing football on big screens. Over 15 craft beers on tap and a knowledgeable staff. Popular for Champions League nights.', NULL, 4.3, 680, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'naples'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Diego Maradona', 'bar-diego-maradona-naples', c.id, 'Via dei Tribunali 188, 80138 Naples', 40.8510, 14.2580, 'A shrine to the legendary Diego Maradona in the heart of the Quartieri Spagnoli. Screens all Napoli matches with incredible passion. Walls covered in Maradona memorabilia. Unmissable atmosphere.', NULL, 4.4, 920, 4, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'naples'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Nilo', 'bar-nilo-naples', c.id, 'Via San Biagio dei Librai 129, 80138 Naples', 40.8497, 14.2565, 'Famous Neapolitan bar with a Maradona shrine that screens Napoli and Serie A matches. A cultural landmark where football is religion. Espresso, Peroni, and pure Neapolitan passion.', NULL, 4.2, 1500, 3, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'naples'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kestè Rooftop Sports Bar', 'keste-rooftop-sports-bar-naples', c.id, 'Largo San Giovanni Maggiore 26, 80134 Naples', 40.8470, 14.2540, 'Vibrant bar near the waterfront with a rooftop terrace showing football and rugby. Great Neapolitan pizza, cold Nastro Azzurro, and views of Vesuvius while watching the match.', NULL, 4.3, 560, 4, 'casual', '$$', true, true, false
FROM cities c WHERE c.slug = 'naples'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ITALY - TURIN VENUES (3)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Shamrock Inn Turin', 'the-shamrock-inn-turin', c.id, 'Corso Vittorio Emanuele II 34, 10123 Turin', 45.0660, 7.6830, 'Popular Irish pub in central Turin showing Premier League, Serie A, and Champions League. Juventus and Torino fans pack the place on derby days. Guinness on tap and pub grub.', NULL, 4.2, 720, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'turin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Sportivo Juventus Stadium', 'bar-sportivo-juventus-stadium-turin', c.id, 'Corso Gaetano Scirea 50, 10151 Turin', 45.1096, 7.6412, 'Located near the Allianz Stadium, this sports bar is the ultimate Juventus fan destination. Screens all Bianconeri matches and major European football. Filled with Juve memorabilia.', NULL, 4.1, 480, 6, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'turin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Birrificio Torino Sports', 'birrificio-torino-sports-turin', c.id, 'Via Nizza 24, 10126 Turin', 45.0600, 7.6820, 'Craft brewery and sports bar in the San Salvario district. Screens Serie A, Champions League, and rugby while serving house-brewed Italian craft beers. Relaxed, hipster vibe.', NULL, 4.4, 390, 6, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'turin'
ON CONFLICT (slug) DO NOTHING;
