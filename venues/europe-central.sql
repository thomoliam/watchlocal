-- ============================================================================
-- Central Europe Sports Venues - Germany
-- Cities: Berlin, Munich, Hamburg, Frankfurt, Cologne, Düsseldorf
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Berlin', 'berlin', 'Germany', 'DE', 52.5200, 13.4050, 'Europe/Berlin')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Munich', 'munich', 'Germany', 'DE', 48.1351, 11.5820, 'Europe/Berlin')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Hamburg', 'hamburg', 'Germany', 'DE', 53.5511, 9.9937, 'Europe/Berlin')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Frankfurt', 'frankfurt', 'Germany', 'DE', 50.1109, 8.6821, 'Europe/Berlin')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cologne', 'cologne', 'Germany', 'DE', 50.9375, 6.9603, 'Europe/Berlin')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Düsseldorf', 'dusseldorf', 'Germany', 'DE', 51.2277, 6.7735, 'Europe/Berlin')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BERLIN (10 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Belushi''s Berlin', 'belushis-berlin', c.id, 'Schönhauser Allee 134, 10437 Berlin', 52.5410, 13.4130, 'Lively international sports bar in Prenzlauer Berg with big screens showing live sports from around the world. Popular with expats and travelers for Premier League and NFL.', 'https://www.belushis.com/bars/berlin', 4.1, 820, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Magnet Bar', 'magnet-bar-berlin', c.id, 'Greifswalder Str. 212, 10405 Berlin', 52.5340, 13.4420, 'Neighborhood sports bar near Alexanderplatz known for showing Bundesliga, Champions League, and international football on multiple screens. Great beer selection on tap.', 'https://www.magnet-bar.de', 4.3, 390, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Max & Moritz Sportbar', 'max-moritz-sportbar-berlin', c.id, 'Oranienstr. 162, 10969 Berlin', 52.5020, 13.4220, 'Traditional Berlin Kneipe with a sports twist in Kreuzberg. Screens showing Bundesliga and Hertha BSC matches alongside classic German pub food and local beers.', NULL, 4.0, 210, 6, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Oscar''s Sports Bar Berlin', 'oscars-sports-bar-berlin', c.id, 'Kantstr. 126, 10625 Berlin', 52.5070, 13.3110, 'Popular Charlottenburg sports bar with a huge projector screen and several TVs. Known for showing UFC, boxing, and late-night American sports alongside European football.', NULL, 4.2, 340, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Café Kicken', 'cafe-kicken-berlin', c.id, 'Sonnenallee 64, 12045 Berlin', 52.4830, 13.4370, 'Football-themed bar in Neukölln with walls covered in memorabilia. Shows all major European leagues and has table football for halftime entertainment.', NULL, 4.4, 180, 5, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Barn Sports Pub', 'the-barn-sports-pub-berlin', c.id, 'Schönhauser Allee 175, 10119 Berlin', 52.5380, 13.4120, 'Rustic-style pub near Mauerpark popular for weekend football viewing. Features a large beer garden for summer match days and hearty German-American bar food.', NULL, 4.0, 270, 7, 'relaxed', '$$', true, true, false
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Sportsbar Berlin', 'champions-sportsbar-berlin', c.id, 'Alexanderplatz 7, 10178 Berlin', 52.5219, 13.4132, 'Upscale sports bar inside a major hotel near Alexanderplatz. Premium viewing experience with HD screens, craft cocktails, and elevated bar snacks.', 'https://www.champions-sportsbar.de', 4.1, 510, 15, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Friedrichs Sportsbar', 'friedrichs-sportsbar-berlin', c.id, 'Friedrichstr. 101, 10117 Berlin', 52.5240, 13.3880, 'Central Berlin sports bar on the famous Friedrichstrasse. Shows Bundesliga, DFB-Pokal, and international tournaments with a great atmosphere on big match nights.', NULL, 4.2, 290, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stadion an der Spree', 'stadion-an-der-spree-berlin', c.id, 'Stralauer Allee 1, 10245 Berlin', 52.5010, 13.4510, 'Waterside sports bar along the Spree in Friedrichshain. Massive outdoor screen for summer viewing events and a cozy interior for winter Bundesliga sessions.', NULL, 4.3, 440, 9, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Corner Kick Berlin', 'corner-kick-berlin', c.id, 'Torstr. 89, 10119 Berlin', 52.5290, 13.4010, 'Compact but vibrant sports bar in Mitte showing all major football leagues. Known for its passionate matchday crowds and affordable German draught beers.', NULL, 4.0, 160, 5, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'berlin'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MUNICH (10 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Sportsbar Munich', 'champions-sportsbar-munich', c.id, 'Karlsplatz 25, 80335 Munich', 48.1390, 11.5660, 'Munich''s premier sports bar at the Marriott hotel near Stachus. High-end screens, craft beers, and a buzzing atmosphere for Bayern Munich and Champions League matches.', 'https://www.champions-sportsbar.de/munich', 4.3, 920, 18, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kilians Irish Pub Munich', 'kilians-irish-pub-munich', c.id, 'Frauenplatz 11, 80331 Munich', 48.1385, 11.5735, 'Iconic Irish pub right next to the Frauenkirche showing Premier League, Six Nations rugby, and all major European football. Lively atmosphere with Guinness on tap.', 'https://www.kiliansirishpub.com', 4.2, 1450, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shamrock Irish Pub Munich', 'shamrock-irish-pub-munich', c.id, 'Trautenwolfstr. 6, 80802 Munich', 48.1610, 11.5870, 'Cozy Schwabing pub with a devoted following for Premier League and GAA sports. Warm atmosphere, pub quizzes, and hearty food make it a local favorite.', NULL, 4.4, 380, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Niederlassung', 'niederlassung-munich', c.id, 'Buttermelcherstr. 6, 80469 Munich', 48.1290, 11.5770, 'Trendy Glockenbachviertel bar doubling as a sports venue on match days. Shows Bundesliga and Champions League on a projector with a relaxed, hip crowd.', 'https://www.niederlassung.org', 4.1, 520, 4, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kennedy''s Bar & Restaurant', 'kennedys-bar-munich', c.id, 'Sendlinger-Tor-Platz 11, 80336 Munich', 48.1340, 11.5680, 'Large Irish-American sports bar near Sendlinger Tor with generous screen coverage for NFL, NBA, and European football. Serves burgers, wings, and a wide beer selection.', 'https://www.kennedys.de', 4.0, 680, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Substanz', 'substanz-munich', c.id, 'Ruppertstr. 28, 80337 Munich', 48.1260, 11.5640, 'Beloved local pub in the Westend area showing Bundesliga and Bayern Munich matches. No-frills atmosphere, cheap beer, and passionate football fans.', NULL, 4.3, 210, 4, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hofbräuhaus Sporteck', 'hofbrauhaus-sporteck-munich', c.id, 'Innere Wiener Str. 19, 81667 Munich', 48.1310, 11.5950, 'Traditional Bavarian pub atmosphere with a sports corner dedicated to live games. Enjoy Bundesliga with Weisswurst and a Mass of beer in Haidhausen.', NULL, 4.5, 350, 6, 'casual', '$$', true, true, false
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The George Murphy''s', 'george-murphys-munich', c.id, 'Georgenstr. 33, 80799 Munich', 48.1530, 11.5790, 'Popular Irish pub near the university quarter with rugby, football, and cricket on multiple screens. Strong expat community and excellent pub grub.', NULL, 4.1, 290, 7, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mr. Kennedy''s', 'mr-kennedys-munich', c.id, 'Gräfstr. 22, 81241 Munich', 48.1420, 11.5020, 'Neighborhood sports bar in Pasing with a loyal local crowd. Shows all Bundesliga matches and major international tournaments with great drink specials.', NULL, 4.2, 170, 5, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Flaschenöffner', 'flaschenoffner-munich', c.id, 'Baumstr. 11, 80469 Munich', 48.1300, 11.5750, 'Quirky sports-friendly bar in the Glockenbach neighborhood with creative cocktails and a projector for big matches. Perfect blend of sports and nightlife.', NULL, 4.0, 230, 3, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'munich'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- HAMBURG (6 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sportsbar Hamburg', 'sportsbar-hamburg', c.id, 'Beim Schlump 84, 20144 Hamburg', 53.5720, 9.9720, 'Dedicated sports bar near the university quarter with wall-to-wall screens. Shows Bundesliga, HSV matches, Champions League, and American sports late into the night.', NULL, 4.2, 460, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'hamburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Malley''s Irish Pub Hamburg', 'omalleys-irish-pub-hamburg', c.id, 'Reeperbahn 42, 20359 Hamburg', 53.5493, 9.9620, 'Lively Irish pub on the legendary Reeperbahn showing Premier League, rugby, and GAA alongside HSV and Bundesliga. Great craic and live music on non-match nights.', NULL, 4.1, 590, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'hamburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Zum Anleger', 'zum-anleger-hamburg', c.id, 'Ditmar-Koel-Str. 4, 20459 Hamburg', 53.5440, 9.9740, 'Harborside sports pub near Landungsbrücken with views over the Elbe. Shows football on big screens and serves fresh fish dishes alongside German beers.', NULL, 4.3, 310, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'hamburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Clockers Pub', 'clockers-pub-hamburg', c.id, 'Paul-Roosen-Str. 27, 22767 Hamburg', 53.5520, 9.9510, 'Altona neighborhood pub with a strong football culture. HSV and St. Pauli fans gather here for derbies, with affordable beers and a no-nonsense vibe.', NULL, 4.4, 190, 4, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'hamburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Paddy''s Pit', 'paddys-pit-hamburg', c.id, 'Neuer Pferdemarkt 5, 20359 Hamburg', 53.5570, 9.9610, 'Compact but passionate sports pub near Sternschanze. Known for showing every Premier League and Champions League match with a dedicated crowd of football enthusiasts.', NULL, 4.0, 250, 6, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'hamburg'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Elbsport Arena', 'elbsport-arena-hamburg', c.id, 'Elbchaussee 44, 22765 Hamburg', 53.5470, 9.9350, 'Modern sports bar along the Elbe with a sleek interior and premium viewing setup. Shows Bundesliga, Formula 1, and tennis with upscale food and craft beers.', NULL, 4.2, 340, 10, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'hamburg'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- FRANKFURT (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fox & Hound Frankfurt', 'fox-and-hound-frankfurt', c.id, 'Niedenau 2, 60325 Frankfurt', 50.1170, 8.6690, 'Popular English-style sports pub in the Westend catering to Frankfurt''s international business crowd. Shows Premier League, NFL, and Eintracht Frankfurt matches on multiple screens.', NULL, 4.1, 530, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'frankfurt'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Reilly''s Irish Pub Frankfurt', 'oreillys-irish-pub-frankfurt', c.id, 'Heiligkreuzgasse 11, 60313 Frankfurt', 50.1140, 8.6850, 'Authentic Irish pub near the Zeil shopping street with Guinness on tap and live sport on every screen. Premier League, rugby, and Bundesliga all shown regularly.', 'https://www.oreillys-frankfurt.de', 4.2, 670, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'frankfurt'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Eintracht Stammtisch', 'eintracht-stammtisch-frankfurt', c.id, 'Berger Str. 268, 60385 Frankfurt', 50.1280, 8.7120, 'Dedicated Eintracht Frankfurt fan bar on the lively Berger Strasse. Every Eagles match shown with passionate commentary from the regulars. Traditional Apfelwein available.', NULL, 4.5, 210, 5, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'frankfurt'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Waxy''s Irish Pub Frankfurt', 'waxys-irish-pub-frankfurt', c.id, 'Taunusstr. 10, 60329 Frankfurt', 50.1100, 8.6700, 'Welcoming Irish pub near the main train station with extensive sport coverage. Shows GAA, rugby, and all European football leagues on well-placed screens throughout.', NULL, 4.0, 410, 9, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'frankfurt'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mainufer Sportsbar', 'mainufer-sportsbar-frankfurt', c.id, 'Schaumainkai 45, 60596 Frankfurt', 50.1050, 8.6780, 'Riverside sports bar in Sachsenhausen with a terrace overlooking the Main. Shows Bundesliga and international football while serving traditional Frankfurt cuisine and Apfelwein.', NULL, 4.3, 280, 7, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'frankfurt'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- COLOGNE (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jameson''s Sports Bar Cologne', 'jamesons-sports-bar-cologne', c.id, 'Friesenstr. 64, 50670 Cologne', 50.9460, 6.9490, 'Popular sports pub in the Belgian Quarter showing all major football leagues, NFL, and boxing events. Extensive whiskey collection and hearty pub food.', NULL, 4.2, 420, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cologne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Päffgen am Dom', 'paffgen-am-dom-cologne', c.id, 'Heumarkt 62, 50667 Cologne', 50.9360, 6.9610, 'Traditional Kölsch brewery pub near the cathedral with screens for FC Köln and Bundesliga match days. Authentic Cologne atmosphere with freshly brewed Kölsch from the barrel.', 'https://www.paeffgen-koelsch.de', 4.4, 780, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'cologne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Corkonian Irish Pub', 'the-corkonian-irish-pub-cologne', c.id, 'Alter Markt 28, 50667 Cologne', 50.9380, 6.9590, 'Cozy Irish pub in the Altstadt with a warm crowd for Six Nations rugby, Premier League, and Champions League nights. Live music after the final whistle.', NULL, 4.1, 340, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cologne'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kölner Sporteck', 'kolner-sporteck-cologne', c.id, 'Aachener Str. 58, 50674 Cologne', 50.9350, 6.9380, 'Relaxed neighborhood sports bar near Rudolfplatz beloved by FC Köln fans. Affordable Kölsch, friendly regulars, and every Effzeh match shown without fail.', NULL, 4.3, 190, 5, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'cologne'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- DÜSSELDORF (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McLaughlin''s Irish Pub', 'mclaughlins-irish-pub-dusseldorf', c.id, 'Kurze Str. 11, 40213 Düsseldorf', 51.2260, 6.7730, 'Altstadt Irish pub with a great reputation for live sports. Shows Premier League, Champions League, and rugby on multiple screens with Kilkenny and Guinness on tap.', NULL, 4.2, 480, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dusseldorf'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fortuna Eck', 'fortuna-eck-dusseldorf', c.id, 'Bilker Str. 36, 40213 Düsseldorf', 51.2210, 6.7760, 'The go-to spot for Fortuna Düsseldorf fans in the Altstadt. Every Fortuna match on the big screen plus Bundesliga coverage, served with fresh Altbier from the tap.', NULL, 4.4, 230, 5, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'dusseldorf'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sportsbar Düsseldorf', 'sportsbar-dusseldorf', c.id, 'Graf-Adolf-Str. 81, 40210 Düsseldorf', 51.2180, 6.7850, 'Modern dedicated sportsbar south of the Hauptbahnhof with extensive screen coverage for Bundesliga, Premier League, NFL, and Formula 1. Good cocktail menu.', NULL, 4.1, 350, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'dusseldorf'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rheinblick Sportsbar', 'rheinblick-sportsbar-dusseldorf', c.id, 'Mannesmannufer 16, 40213 Düsseldorf', 51.2230, 6.7680, 'Upscale sports lounge along the Rhine promenade with panoramic river views. Premium HD screens, signature cocktails, and refined bar food for an elevated viewing experience.', NULL, 4.3, 290, 8, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'dusseldorf'
ON CONFLICT (slug) DO NOTHING;
