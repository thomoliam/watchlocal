-- ============================================================================
-- North & East Europe Sports Venues
-- Countries: Hungary, Netherlands, Belgium, Denmark, Sweden, Norway,
--            Czech Republic, Poland
-- Cities: Budapest, Amsterdam, Brussels, Copenhagen, Stockholm, Oslo,
--         Prague, Warsaw, Krakow
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Budapest', 'budapest', 'Hungary', 'HU', 47.4979, 19.0402, 'Europe/Budapest')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Amsterdam', 'amsterdam', 'Netherlands', 'NL', 52.3676, 4.9041, 'Europe/Amsterdam')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Brussels', 'brussels', 'Belgium', 'BE', 50.8503, 4.3517, 'Europe/Brussels')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Copenhagen', 'copenhagen', 'Denmark', 'DK', 55.6761, 12.5683, 'Europe/Copenhagen')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Stockholm', 'stockholm', 'Sweden', 'SE', 59.3293, 18.0686, 'Europe/Stockholm')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Oslo', 'oslo', 'Norway', 'NO', 59.9139, 10.7522, 'Europe/Oslo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Prague', 'prague', 'Czech Republic', 'CZ', 50.0755, 14.4378, 'Europe/Prague')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Warsaw', 'warsaw', 'Poland', 'PL', 52.2297, 21.0122, 'Europe/Warsaw')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Krakow', 'krakow', 'Poland', 'PL', 50.0647, 19.9450, 'Europe/Warsaw')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BUDAPEST, HUNGARY (8 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champs Sport Pub', 'champs-sport-pub-budapest', c.id, 'Dohány u. 20, 1074 Budapest', 47.4965, 19.0620, 'Budapest''s premier sports bar with over 40 screens and 1900 channels. Founded by Olympic athletes and decorated with sports memorabilia. A dream destination for visiting football fans.', 'https://champs.hu', 4.3, 1250, 40, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stifler Sports Bar', 'stifler-sports-bar-budapest', c.id, 'Erzsébet krt. 19, 1073 Budapest', 47.4990, 19.0650, 'The place to watch Ferencváros or Hungary surrounded by passionate locals. Covers football, F1, tennis, handball, water polo and every major sporting event. Open until 5am.', 'https://stiflersportsbar.hu', 4.1, 890, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jack Doyle''s Irish Pub', 'jack-doyles-budapest', c.id, 'Pilvax köz 1, 1052 Budapest', 47.4930, 19.0540, 'Irish-run pub in the heart of Budapest with windows and natural light — unlike most underground sports bars. Big on sport, food, live music and atmosphere. A favourite with expats.', 'https://jackdoyles.hu', 4.4, 1450, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Winners Sports Pub', 'winners-sports-pub-budapest', c.id, 'Akácfa u. 34, 1073 Budapest', 47.5000, 19.0670, 'Features 14 screens plus a huge maxiscreen with over 100 seats and a VIP room. Reasonable prices with drinks deals for special events like Champions League nights.', NULL, 4.0, 520, 15, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bulldog Pub Budapest', 'bulldog-pub-budapest', c.id, 'Lövölde tér 3, 1062 Budapest', 47.5060, 19.0710, 'British-style pub near Heroes'' Square showing Premier League, Champions League and Six Nations rugby. A reliable spot for English-language commentary and pub grub.', NULL, 4.2, 380, 8, 'casual', '$$', true, true, false
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Szimpla Sport', 'szimpla-sport-budapest', c.id, 'Kazinczy u. 14, 1075 Budapest', 47.4975, 19.0630, 'The sporty sibling of Budapest''s famous ruin bar scene. Screens set up across quirky rooms showing live football, with craft beers and a vibrant ruin-bar atmosphere.', NULL, 4.1, 640, 6, 'lively', '$$', true, true, false
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Caledonia Scottish Pub', 'caledonia-scottish-pub-budapest', c.id, 'Mozsár u. 9, 1066 Budapest', 47.5070, 19.0620, 'Authentic Scottish pub and one of Budapest''s oldest expat hangouts. Shows Six Nations rugby, Premier League football and major sporting events with a fine whisky selection.', 'https://caledoniabudapest.com', 4.3, 720, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stifler Ház Sports Bar', 'stifler-haz-budapest', c.id, 'Klauzál u. 19, 1072 Budapest', 47.4985, 19.0645, 'Multi-level entertainment complex in the Jewish Quarter with a dedicated sports bar floor. Watch matches until morning on large screens while enjoying billiards, darts and cocktails.', 'https://stiflerhaz.hu', 4.0, 560, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'budapest'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- AMSTERDAM, NETHERLANDS (8 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Coco''s Outback', 'cocos-outback-amsterdam', c.id, 'Thorbeckeplein 12, 1017 CS Amsterdam', 52.3650, 4.8960, 'The largest sports bar in Amsterdam and self-proclaimed No. 1 in the Netherlands. Over 30 screens showing live football, rugby, F1 and basketball. Located on lively Rembrandtplein.', 'https://cocosoutback.com', 4.2, 1850, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Satellite Sports Café', 'satellite-sports-cafe-amsterdam', c.id, 'Leidseplein 11, 1017 PS Amsterdam', 52.3637, 4.8826, 'Iconic sports café on Leidseplein with multiple screens showing live sports from around the world. Famous for their all-you-can-eat spareribs at €21.95.', NULL, 4.1, 920, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Plan B Amsterdam', 'plan-b-amsterdam', c.id, 'Overtoom 561, 1054 LK Amsterdam', 52.3590, 4.8590, 'Cosy sports bar next to Vondelpark with 10 TVs and a massive 160-inch LED screen in the living room. Also features billiards, ping-pong and board games.', NULL, 4.3, 470, 10, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Belushi''s Amsterdam', 'belushis-amsterdam', c.id, 'Warmoesstraat 129, 1012 JA Amsterdam', 52.3740, 4.8970, 'Where match day meets mayhem near Dam Square. Draws students, travellers and die-hard fans for Premier League, Champions League and major tournaments.', 'https://www.belushis.com/bars/amsterdam', 4.0, 780, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Regular & Jack', 'regular-and-jack-amsterdam', c.id, 'Reguliersdwarsstraat 10, 1017 BM Amsterdam', 52.3650, 4.8930, 'Sports bar and eatery near Rembrandtplein open 365 days a year with 15 large screens. Great for watching Eredivisie, Premier League and Champions League.', NULL, 4.1, 560, 15, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shots & Sportsbar', 'shots-sportsbar-amsterdam', c.id, 'Warmoesstraat 16, 1012 JD Amsterdam', 52.3750, 4.8960, 'Energetic sportsbar in the heart of Amsterdam showing all major sports events. Popular pre-game spot with a great selection of shots and craft beers.', NULL, 4.0, 340, 8, 'lively', '$', false, false, false
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Tara', 'the-tara-amsterdam', c.id, 'Rokin 85-89, 1012 KL Amsterdam', 52.3700, 4.8930, 'Large Irish pub on the Rokin with dedicated sports area showing Premier League, GAA, rugby and all major events on big screens. Legendary craic and Guinness.', NULL, 4.2, 610, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Three Sisters Grand Pub', 'three-sisters-grand-pub-amsterdam', c.id, 'Heiligeweg 42, 1012 XP Amsterdam', 52.3680, 4.8890, 'Sprawling multi-level pub near Kalverstraat with large screens throughout. A go-to for watching Ajax, Eredivisie and international football with Dutch fans.', NULL, 4.1, 430, 8, 'casual', '$$', true, true, false
FROM cities c WHERE c.slug = 'amsterdam'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BRUSSELS, BELGIUM (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Big Game', 'the-big-game-brussels', c.id, 'Boulevard Anspach 53, 1000 Brussels', 50.8490, 4.3470, 'Brussels'' best-known sports bar with 60 screens across 2 floors next to the majestic Bourse. Shows every major league and tournament with never-ending happy hour deals.', NULL, 4.2, 680, 60, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'brussels'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rooster''s Brussels', 'roosters-brussels', c.id, 'Rue du Marché aux Poulets 24, 1000 Brussels', 50.8505, 4.3505, 'Notable city centre sports bar with many TVs, good draught beer selection, free wifi and solid pub food. A reliable choice for Belgian Pro League and Champions League nights.', 'https://roostersbrussels.be', 4.1, 520, 12, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'brussels'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'De Valera''s Irish Pub', 'de-valeras-brussels', c.id, 'Place Eugène Flagey 9, 1050 Ixelles', 50.8270, 4.3720, 'Iconic Irish pub on Place Flagey with 14 screens showing ice hockey, rugby, GAA and major football. Large terrace for warm-weather watching in the Ixelles neighbourhood.', NULL, 4.3, 890, 14, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'brussels'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wild Geese', 'the-wild-geese-brussels', c.id, 'Avenue Livingstone 2-4, 1000 Brussels', 50.8420, 4.3740, 'Popular Irish pub steps from the European Commission in the EU Quarter. A hub for international civil servants watching Premier League, Six Nations and major events.', NULL, 4.2, 710, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'brussels'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'James Joyce Brussels', 'james-joyce-brussels', c.id, 'Rue Archimède 34, 1000 Brussels', 50.8410, 4.3810, 'Flagship Irish pub between the Squares neighbourhood and Cinquantenaire Park. Friendly international crowd watching all manner of live sports with quality Guinness on tap.', NULL, 4.1, 480, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'brussels'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- COPENHAGEN, DENMARK (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pub & Sport', 'pub-and-sport-copenhagen', c.id, 'Rådhuspladsen 13, 1550 Copenhagen', 55.6760, 12.5700, 'Copenhagen''s best sports bar right next to City Hall. 10 TVs and 2 big screens plus pool, darts and foosball. Full schedule of Premier League, Danish Superliga and major events.', 'https://pubogsport.dk', 4.2, 750, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'copenhagen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Shamrock Inn', 'shamrock-inn-copenhagen', c.id, 'Vestergade 7, 1456 Copenhagen', 55.6770, 12.5680, 'Pouring pints and screening sport since 1989, located between Tivoli and Rådhuspladsen. Full schedule of Premier League fixtures and major internationals since opening.', NULL, 4.3, 620, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'copenhagen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Southern Cross Pub', 'southern-cross-pub-copenhagen', c.id, 'Løngangstræde 37, 1468 Copenhagen', 55.6755, 12.5665, 'Classic British-style pub where you can enjoy football and pints of Guinness with an eclectic crowd of locals and visitors. Great atmosphere for big match days.', NULL, 4.1, 410, 6, 'casual', '$$', true, false, false
FROM cities c WHERE c.slug = 'copenhagen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Dubliner Copenhagen', 'the-dubliner-copenhagen', c.id, 'Amagertorv 5, 1160 Copenhagen', 55.6780, 12.5790, 'Cosy Irish pub on one of Copenhagen''s main shopping streets. Multiple screens showing GAA, rugby, Premier League and Danish Superliga in a warm pub atmosphere.', NULL, 4.0, 530, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'copenhagen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Barkowski Sports Bar', 'barkowski-copenhagen', c.id, 'Nørrebrogade 13, 2200 Copenhagen', 55.6870, 12.5600, 'Trendy Nørrebro sports bar popular with young locals. Shows Superliga, Premier League and Champions League on multiple screens with quality craft beer selection.', NULL, 4.2, 350, 8, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'copenhagen'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- STOCKHOLM, SWEDEN (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Learys Tolv Stockholm', 'olearys-tolv-stockholm', c.id, 'Arenavägen 69, 121 77 Johanneshov', 59.2910, 18.0790, 'One of Europe''s largest sports bars right next to Tele2 Arena. Features a unique arena stand and jumbotron for watching matches. Massive venue with food and entertainment.', 'https://www.olearys.se', 4.1, 1340, 25, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'stockholm'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Retro Bar Stockholm', 'retro-bar-stockholm', c.id, 'Hantverkargatan 55, 112 31 Stockholm', 59.3340, 18.0380, 'Named Official Supporter Bar by the Swedish FA. Buzzy Kungsholmen venue showing Allsvenskan, Premier League, European football and internationals on plenty of screens.', NULL, 4.3, 580, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'stockholm'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bryggeriet Stockholm', 'bryggeriet-stockholm', c.id, 'Odengatan 40, 113 51 Stockholm', 59.3440, 18.0540, 'Cosy pub-like sports bar on Odengatan in Vasastan with walls covered in sports photos. Shows La Liga, Premier League, Swedish football and ice hockey with great beers and whiskies.', NULL, 4.2, 420, 8, 'casual', '$$', true, false, false
FROM cities c WHERE c.slug = 'stockholm'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Auld Dub Stockholm', 'the-auld-dub-stockholm', c.id, 'Rödbodgatan 3, 111 52 Stockholm', 59.3350, 18.0600, 'Sweden''s longest-running Irish pub in Norrmalm. Spacious and raucous, showing all the big games including rugby and Champions League with a loyal following.', NULL, 4.3, 690, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'stockholm'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Allé Kitchen & Bar', 'alle-kitchen-bar-stockholm', c.id, 'Hammarby Allé 49, 120 63 Stockholm', 59.3060, 18.0960, 'Popular Hammarby sjöstad sports bar drawing fans from across Stockholm. Shows all major matches with a focus on quality food and drink alongside the action.', NULL, 4.4, 350, 6, 'casual', '$$', true, true, false
FROM cities c WHERE c.slug = 'stockholm'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- OSLO, NORWAY (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bohemen Sportspub', 'bohemen-sportspub-oslo', c.id, 'Arbeidergata 2, 0159 Oslo', 59.9140, 10.7370, 'Considered the best sports bar in Oslo, especially for football. Plenty of TVs showing matches from many leagues at prices far lower than competitors. Central location.', 'https://www.bohemen.no', 4.4, 1120, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'oslo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Learys Oslo', 'olearys-oslo', c.id, 'Karl Johans gate 39, 0162 Oslo', 59.9130, 10.7460, 'Part of the Scandinavian sports bar chain on Oslo''s main boulevard. Multiple screens, American-style food and a wide selection of beers. Great for NFL and Premier League.', 'https://www.olearys.no', 4.0, 640, 12, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'oslo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pokalen Bar', 'pokalen-bar-oslo', c.id, 'Trondheimsveien 2, 0560 Oslo', 59.9230, 10.7660, 'Beloved neighbourhood sports bar doubling as a concert venue. Cozy seating, great bartenders and a loyal crowd of football fans. Excellent atmosphere for Eliteserien and European matches.', NULL, 4.2, 380, 6, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'oslo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Oslo Sportsbar', 'oslo-sportsbar', c.id, 'Kristian IVs gate 1, 0164 Oslo', 59.9140, 10.7410, 'Numerous screens positioned so you can watch from almost any seat. Multiple rooms for different matches. A go-to for Champions League, Eliteserien and international football.', NULL, 4.1, 490, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'oslo'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- PRAGUE, CZECH REPUBLIC (8 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rocky O''Reilly''s', 'rocky-oreillys-prague', c.id, 'Štěpánská 32, 110 00 Prague 1', 50.0790, 14.4260, 'Irish sports bar near Wenceslas Square with 4 bar areas showing Champions League, Rugby League, F1 and GAA via Sky Sports and Setanta channels. A Prague institution.', 'https://www.rockyoreillys.cz', 4.2, 980, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Dubliner Prague', 'the-dubliner-prague', c.id, 'Týn 1, 110 00 Prague 1', 50.0880, 14.4230, 'Impressive setup with 14 screens and 2 large plasmas in the main bar area seating 130 people. Outside terrace fits 100 more. Perfect for big match days in the Old Town.', 'https://aulddubliner.cz', 4.3, 1250, 16, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'James Joyce Prague', 'james-joyce-prague', c.id, 'U Obecního dvora 4, 110 00 Prague 1', 50.0900, 14.4270, 'The first and oldest Irish pub in the Czech Republic. A legendary spot for sports fans known for having one of the best Guinness on tap outside Ireland.', NULL, 4.1, 870, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hockey''ka Restaurant & Pub', 'hockeyка-prague', c.id, 'Karlova 12, 110 00 Prague 1', 50.0860, 14.4170, 'Hockey-themed restaurant and pub serving Czech classics, burgers and fish at very reasonable prices. Dedicated to Czech ice hockey culture with screens for all major sports.', NULL, 4.2, 560, 6, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Londoners Prague', 'the-londoners-prague', c.id, 'Růžová 3, 110 00 Prague 1', 50.0830, 14.4220, 'British-themed pub near Wenceslas Square showing Premier League, Championship and all English football on multiple screens. Full English breakfasts and pub classics.', NULL, 4.0, 420, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Winghaus Prague', 'winghaus-prague', c.id, 'Senovážné nám. 2, 110 00 Prague 1', 50.0840, 14.4310, 'Modern sports restaurant with wings and burgers as the stars of the menu. Screens throughout showing live football, ice hockey and major international events.', NULL, 4.3, 380, 8, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sport Bar Pohoda', 'sport-bar-pohoda-prague', c.id, 'Bořivojova 90, 130 00 Prague 3', 50.0860, 14.4510, 'Authentic Czech neighbourhood sports bar in the lively Žižkov district. Cheap beer, friendly locals and screens showing Czech Fortuna Liga and European football. No frills, all heart.', NULL, 4.1, 230, 4, 'relaxed', '$', true, false, false
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'U Sporťáka', 'u-sportaka-prague', c.id, 'Milíčova 13, 130 00 Prague 3', 50.0840, 14.4530, 'Classic Žižkov sports pub where locals gather for Czech Premier League and ice hockey. Traditional pub food, great Pilsner on tap and a passionately local atmosphere.', NULL, 4.0, 190, 4, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'prague'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- WARSAW, POLAND (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Sports Bar & Restaurant', 'champions-sports-bar-warsaw', c.id, 'Aleje Jerozolimskie 65/79, 00-697 Warsaw', 52.2280, 21.0030, 'The only American sports bar in Warsaw with 41 TVs and 2 projection screens inside the Marriott Hotel. A top destination for watching NFL, NBA and Premier League in style.', NULL, 4.2, 920, 43, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'warsaw'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Molly Malone''s Warsaw', 'molly-malones-warsaw', c.id, 'Krakowskie Przedmieście 41, 00-071 Warsaw', 52.2430, 21.0140, 'Irish pub minutes from Warsaw''s Old Town with large screens for big sporting events. A Warsaw institution near Zygmunt''s Column, popular with expats and locals alike.', NULL, 4.1, 680, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'warsaw'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'British Bulldog Pub Warsaw', 'british-bulldog-pub-warsaw', c.id, 'Żurawia 22, 00-515 Warsaw', 52.2260, 21.0140, 'British-style pub showing European football, World Cup, boxing and more on request. A reliable spot for English-language sports viewing in central Warsaw.', NULL, 4.0, 340, 6, 'casual', '$$', true, false, false
FROM cities c WHERE c.slug = 'warsaw'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pub Irlandzki Warsaw', 'pub-irlandzki-warsaw', c.id, 'Miodowa 3, 00-080 Warsaw', 52.2470, 21.0100, 'The first Irish pub in Poland and still the leader. Known locally as simply "the Irish Pub in Warsaw" with live sports on TV, great Guinness and a loyal expat following.', NULL, 4.3, 510, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'warsaw'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- KRAKOW, POLAND (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '442 Sport Pub', '442-sport-pub-krakow', c.id, 'Św. Tomasza 20, 31-020 Kraków', 50.0640, 19.9400, 'Kraków''s newest and biggest sports bar with a whopping 30 screens across two floors and multiple rooms. The go-to venue for watching football in the Old Town.', NULL, 4.3, 620, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'krakow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'English Football Club Krakow', 'english-football-club-krakow', c.id, 'Mikołajska 5, 31-027 Kraków', 50.0620, 19.9390, 'Underground rooms dedicated to the English Premier League with commentary in English. Carlsberg on tap and a dedicated crowd of EPL fanatics in the heart of the Old Town.', NULL, 4.1, 440, 8, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'krakow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bull Pub Krakow', 'bull-pub-krakow', c.id, 'Mikołajska 2, 31-027 Kraków', 50.0625, 19.9395, 'Not the biggest or fanciest, but the best atmosphere for watching a big game in the Old Town. A favourite with locals and visitors for its buzzing match-day energy.', NULL, 4.2, 370, 6, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'krakow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Duffy''s Irish Bar Krakow', 'duffys-irish-bar-krakow', c.id, 'Miodowa 3, 31-055 Kraków', 50.0530, 19.9460, 'The go-to sports pub in the Kazimierz Jewish Quarter. If you''re in the neighbourhood and want to watch a match, Duffy''s delivers with screens, Guinness and a welcoming vibe.', NULL, 4.0, 290, 4, 'relaxed', '$$', true, false, false
FROM cities c WHERE c.slug = 'krakow'
ON CONFLICT (slug) DO NOTHING;
