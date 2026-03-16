-- ============================================================================
-- USA Sports Venues
-- Cities: New York, Los Angeles, Chicago, Miami, Las Vegas, San Francisco,
--         Austin, Boston, Denver, Seattle, Nashville
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('New York', 'new-york', 'United States', 'US', 40.7128, -74.0060, 'America/New_York')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Los Angeles', 'los-angeles', 'United States', 'US', 34.0522, -118.2437, 'America/Los_Angeles')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Chicago', 'chicago', 'United States', 'US', 41.8781, -87.6298, 'America/Chicago')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Miami', 'miami', 'United States', 'US', 25.7617, -80.1918, 'America/New_York')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Las Vegas', 'las-vegas', 'United States', 'US', 36.1699, -115.1398, 'America/Los_Angeles')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('San Francisco', 'san-francisco', 'United States', 'US', 37.7749, -122.4194, 'America/Los_Angeles')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Austin', 'austin', 'United States', 'US', 30.2672, -97.7431, 'America/Chicago')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Boston', 'boston', 'United States', 'US', 42.3601, -71.0589, 'America/New_York')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Denver', 'denver', 'United States', 'US', 39.7392, -104.9903, 'America/Denver')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Seattle', 'seattle', 'United States', 'US', 47.6062, -122.3321, 'America/Los_Angeles')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Nashville', 'nashville', 'United States', 'US', 36.1627, -86.7816, 'America/Chicago')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NEW YORK (12 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Legends Bar NYC', 'legends-bar-nyc', c.id, '6 W 33rd St, New York, NY 10001', 40.7484, -73.9856, 'Massive sports bar near the Empire State Building with over 80 screens covering every major league and international match. A go-to destination for soccer fans and NFL supporters alike.', 'https://www.legendsbarnyc.com', 4.3, 1850, 80, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Ainsworth', 'the-ainsworth-nyc', c.id, '122 W 26th St, New York, NY 10001', 40.7452, -73.9918, 'Upscale sports bar in Chelsea offering craft cocktails and elevated bar food alongside a full wall of screens. Popular for weekend brunch watch parties.', 'https://www.theainsworth.com', 4.2, 1200, 20, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Smithfield Hall', 'smithfield-hall-nyc', c.id, '138 W 25th St, New York, NY 10001', 40.7446, -73.9930, 'Premier soccer pub in Manhattan with a dedicated following of Premier League and Champions League fans. Known for early morning match day atmosphere and proper English breakfast.', 'https://www.smithfieldhall.com', 4.4, 980, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Professor Thom''s', 'professor-thoms-nyc', c.id, '219 2nd Ave, New York, NY 10003', 40.7315, -73.9862, 'East Village sports bar beloved by local fans for its casual vibe and no-nonsense approach to watching games. Strong craft beer selection and solid pub grub.', 'https://www.professorthoms.com', 4.1, 750, 12, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stout NYC', 'stout-nyc', c.id, '133 W 33rd St, New York, NY 10001', 40.7504, -73.9912, 'Multi-level sports bar near Penn Station with a massive screen setup across three floors. Ideal for catching games before or after events at Madison Square Garden.', 'https://www.stoutnyc.com', 4.0, 1400, 40, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Banter Bar', 'banter-bar-nyc', c.id, '132 Havemeyer St, Brooklyn, NY 11211', 40.7126, -73.9568, 'Williamsburg''s favorite soccer bar with a passionate crowd for Premier League and international football. Intimate space that fills up fast on match days.', 'https://www.banterbar.com', 4.3, 620, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Feile Bar & Lounge', 'feile-bar-nyc', c.id, '131 W 33rd St, New York, NY 10001', 40.7503, -73.9914, 'Irish pub near MSG with a strong sports program covering GAA, soccer, and American sports. Great Guinness and traditional Irish fare.', 'https://www.feilenyc.com', 4.1, 530, 18, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hudson Station Bar & Grill', 'hudson-station-nyc', c.id, '440 9th Ave, New York, NY 10001', 40.7544, -73.9978, 'Spacious Midtown sports bar with a strong beer list and screens visible from every seat. Popular with after-work crowds and game day regulars.', 'https://www.hudsonstationnyc.com', 4.0, 680, 25, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Standings Bar', 'standings-bar-nyc', c.id, '43 E 7th St, New York, NY 10003', 40.7274, -73.9877, 'Tiny but mighty East Village sports bar known for its die-hard community of soccer and rugby fans. Opens early for European matches and never misses a big game.', 'https://www.standingsbar.com', 4.5, 410, 6, 'lively', '$', false, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Playwright Irish Pub', 'the-playwright-nyc', c.id, '202 W 49th St, New York, NY 10019', 40.7608, -73.9856, 'Times Square area Irish pub with a warm atmosphere and plenty of screens for live sports. Popular for Premier League mornings and NFL Sundays.', 'https://www.playwrightirishpub.com', 4.1, 890, 14, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Black Tap Craft Burgers & Shakes', 'black-tap-nyc', c.id, '529 Broome St, New York, NY 10013', 40.7232, -74.0013, 'SoHo burger joint doubling as a lively sports bar with big screens and a fun atmosphere. Famous for its over-the-top milkshakes and craft burgers.', 'https://www.blacktap.com', 4.2, 1650, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Woodwork Bar', 'woodwork-bar-nyc', c.id, '583 Vanderbilt Ave, Brooklyn, NY 11238', 40.6801, -73.9688, 'Prospect Heights neighborhood bar with a curated beer list and well-placed screens for all major sporting events. A relaxed alternative to the Midtown megabars.', 'https://www.woodworkbk.com', 4.3, 340, 8, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'new-york'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LOS ANGELES (10 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Big Wangs', 'big-wangs-la', c.id, '5300 Lankershim Blvd, North Hollywood, CA 91601', 34.1688, -118.3790, 'North Hollywood''s ultimate sports bar with massive projection screens, dozens of TVs, and a menu built around award-winning chicken wings.', 'https://www.bigwangs.com', 4.3, 2100, 50, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Joxer Daly''s', 'joxer-dalys-la', c.id, '11168 Santa Monica Blvd, Los Angeles, CA 90025', 34.0416, -118.4560, 'Beloved Westside Irish pub and one of LA''s best football watching spots. Opens at dawn for Premier League matches and serves a proper fry-up on weekends.', 'https://www.joxerdalys.com', 4.4, 780, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fox & Hounds', 'fox-and-hounds-la', c.id, '2922 Main St, Santa Monica, CA 90405', 34.0041, -118.4939, 'British-style pub in Santa Monica with a loyal football following and solid selection of English ales. A staple for expats and soccer fans on the Westside.', 'https://www.thefoxandhounds.com', 4.2, 650, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tom''s Watch Bar', 'toms-watch-bar-la', c.id, '1011 S Figueroa St, Los Angeles, CA 90015', 34.0435, -118.2659, 'LA Live''s premier sports viewing destination with over 100 screens and multiple levels. Perfect for catching games before or after Lakers and Clippers action.', 'https://www.tomswatchbar.com', 4.1, 1800, 100, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cabo Cantina', 'cabo-cantina-la', c.id, '8301 Sunset Blvd, West Hollywood, CA 90069', 34.0977, -118.3667, 'Sunset Strip sports bar with a lively Mexican cantina vibe, strong margaritas, and plenty of screens. Popular for UFC fight nights and NFL weekends.', 'https://www.cabocantina.com', 4.0, 920, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Greyhound Bar & Grill', 'greyhound-bar-la', c.id, '5570 W Pico Blvd, Los Angeles, CA 90019', 34.0482, -118.3592, 'Mid-City sports bar popular with local supporters'' groups. Known for its welcoming atmosphere and solid food menu that goes beyond typical bar fare.', 'https://www.greyhoundbargrill.com', 4.3, 480, 14, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The 35er Bar', 'the-35er-bar-la', c.id, '12501 Ventura Blvd, Studio City, CA 91604', 34.1426, -118.3968, 'Classic Valley dive bar and sports spot with strong drinks, friendly regulars, and every game you could want. No frills, just good times.', 'https://www.the35erbar.com', 4.1, 310, 8, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rocco''s Tavern', 'roccos-tavern-la', c.id, '12514 Ventura Blvd, Studio City, CA 91604', 34.1428, -118.3971, 'Popular Studio City hangout with a massive patio, wood-fired pizza, and a full sports package. Great spot for watching games under the California sun.', 'https://www.roccostavern.com', 4.2, 1100, 22, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Village Idiot', 'village-idiot-la', c.id, '7383 Melrose Ave, Los Angeles, CA 90046', 34.0836, -118.3503, 'Gastropub on Melrose with a creative menu and well-curated beer list. Screens are strategically placed so you can enjoy the game without it overwhelming the space.', 'https://www.villageidiotla.com', 4.3, 870, 8, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Goal Sports Cafe', 'goal-sports-cafe-la', c.id, '2815 Sunset Blvd, Los Angeles, CA 90026', 34.0787, -118.2627, 'Silver Lake soccer bar with a global football focus. Decorated with scarves and jerseys from around the world, it draws a passionate international crowd on match days.', 'https://www.goalsportscafe.com', 4.4, 390, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'los-angeles'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- CHICAGO (8 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Globe Pub', 'the-globe-pub-chicago', c.id, '1934 W Irving Park Rd, Chicago, IL 60613', 41.9544, -87.6771, 'Chicago''s definitive soccer bar with an encyclopedic coverage of football from around the world. Opens early for European matches and serves a full English breakfast.', 'https://www.theglobepub.com', 4.5, 720, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sluggers World Class Sports Bar', 'sluggers-chicago', c.id, '3540 N Clark St, Chicago, IL 60657', 41.9487, -87.6537, 'Iconic Wrigleyville sports bar across from Wrigley Field. Two floors of screens, batting cages upstairs, and a rooftop patio with views of the ballpark.', 'https://www.sluggersbar.com', 4.1, 1600, 35, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Timothy O''Toole''s Pub', 'timothy-otooles-chicago', c.id, '622 N Fairbanks Ct, Chicago, IL 60611', 41.8930, -87.6204, 'Streeterville institution with a massive TV setup and a menu of hearty pub favorites. A dependable spot for any game day in downtown Chicago.', 'https://www.timothyotooles.com', 4.2, 1300, 40, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fatpour Tap Works', 'fatpour-tap-works-chicago', c.id, '2206 S Indiana Ave, Chicago, IL 60616', 41.8530, -87.6221, 'South Loop craft beer haven with an impressive tap list and wall-to-wall screens. Great for Bears, Bulls, and Blackhawks watch parties.', 'https://www.fatpour.com', 4.3, 580, 20, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Benchmark Bar', 'benchmark-bar-chicago', c.id, '1510 N Wells St, Chicago, IL 60610', 41.9098, -87.6344, 'Old Town sports bar with a modern feel, strong cocktail program, and ample screens. Popular with young professionals catching weeknight games.', 'https://www.benchmarkchicago.com', 4.0, 450, 18, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kirkwood Bar & Grill', 'kirkwood-bar-chicago', c.id, '2934 N Sheffield Ave, Chicago, IL 60657', 41.9349, -87.6537, 'Lincoln Park neighborhood bar with a big outdoor patio and tons of TVs. A reliable choice for NFL Sundays and college football Saturdays.', 'https://www.kirkwoodbar.com', 4.1, 620, 22, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Declan''s Irish Pub', 'declans-irish-pub-chicago', c.id, '1240 N Wells St, Chicago, IL 60610', 41.9053, -87.6343, 'Cozy Old Town Irish pub with a loyal crowd of sports fans. Shows Premier League, Six Nations rugby, and all major American sports on multiple screens.', 'https://www.declanschicago.com', 4.2, 380, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Pony Inn', 'the-pony-inn-chicago', c.id, '1638 W Belmont Ave, Chicago, IL 60657', 41.9397, -87.6694, 'Lakeview dive bar with cheap drinks and a surprisingly strong sports setup. Beloved by locals for its unpretentious vibe and late-night energy.', 'https://www.theponyinn.com', 4.0, 290, 8, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'chicago'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MIAMI (6 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Duffy''s Sports Grill', 'duffys-sports-grill-miami', c.id, '3969 NE 163rd St, North Miami Beach, FL 33160', 25.9285, -80.1453, 'South Florida sports bar chain known for its impressive screen count and game day specials. Family-friendly with a menu that covers all the bases.', 'https://www.duffysmvp.com', 4.1, 1400, 45, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'miami'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Batch Gastropub', 'batch-gastropub-miami', c.id, '30 SW 12th St, Miami, FL 33130', 25.7622, -80.1960, 'Brickell gastropub with elevated pub grub and a well-curated drink list. Screens throughout the stylish space make it a top pick for sports fans who want more than wings and beer.', 'https://www.batchgastropub.com', 4.3, 680, 16, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'miami'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooligans Pub', 'hooligans-pub-miami', c.id, '8500 SW 8th St, Miami, FL 33144', 25.7641, -80.3316, 'Westchester''s go-to soccer pub with passionate crowds for Liga MX, Premier League, and international matches. Latin-flavored sports bar energy at its best.', 'https://www.hooliganspub.com', 4.2, 420, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'miami'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'American Social', 'american-social-miami', c.id, '690 SW 1st Ct, Miami, FL 33130', 25.7654, -80.1978, 'Waterfront sports bar along the Miami River with stunning views and a massive indoor-outdoor setup. Great for watching games with a tropical breeze.', 'https://www.americansocialbar.com', 4.2, 1950, 30, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'miami'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tap 42 Craft Kitchen & Bar', 'tap-42-miami', c.id, '1411 S Andrews Ave, Fort Lauderdale, FL 33316', 26.1016, -80.1441, 'Craft-focused sports bar with rotating taps and a scratch kitchen. A refined take on the sports bar experience in the greater Miami area.', 'https://www.tap42.com', 4.4, 1100, 18, 'upscale', '$$', true, true, true
FROM cities c WHERE c.slug = 'miami'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Blackbird Ordinary', 'blackbird-ordinary-miami', c.id, '729 SW 1st Ave, Miami, FL 33130', 25.7667, -80.1975, 'Brickell cocktail bar with a sprawling outdoor area and screens for major events. More lounge than sports bar, but perfect for watching big games in style.', 'https://www.blackbirdordinary.com', 4.3, 870, 8, 'upscale', '$$$', false, true, true
FROM cities c WHERE c.slug = 'miami'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LAS VEGAS (6 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lagasse''s Stadium', 'lagasses-stadium-las-vegas', c.id, '3325 S Las Vegas Blvd, Las Vegas, NV 89109', 36.1260, -115.1693, 'Emeril Lagasse''s sports bar inside The Palazzo with a stadium-style seating layout and gourmet bar food. A truly premium sports viewing experience on the Strip.', 'https://www.emerilsrestaurants.com/lagasses-stadium', 4.3, 2200, 100, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'las-vegas'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beer Park', 'beer-park-las-vegas', c.id, '3655 S Las Vegas Blvd, Las Vegas, NV 89109', 36.1209, -115.1715, 'Rooftop sports bar at Paris Las Vegas with sweeping views of the Strip and Bellagio fountains. Outdoor screens and a massive beer selection make it a unique watch spot.', 'https://www.beerpark.com', 4.1, 1500, 20, 'lively', '$$$', true, true, true
FROM cities c WHERE c.slug = 'las-vegas'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Circa Resort & Casino Stadium Swim', 'stadium-swim-las-vegas', c.id, '8 Fremont St, Las Vegas, NV 89101', 36.1715, -115.1420, 'Downtown Vegas''s spectacular pool amphitheater with a 143-foot screen and tiered pool decks. Watch sports while swimming in the desert sun.', 'https://www.circalasvegas.com/stadium-swim', 4.4, 3100, 6, 'lively', '$$$', true, true, true
FROM cities c WHERE c.slug = 'las-vegas'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'PT''s Gold', 'pts-gold-las-vegas', c.id, '1091 S Rainbow Blvd, Las Vegas, NV 89145', 36.1561, -115.2434, 'Local favorite off-Strip tavern with video poker at the bar and reliable sports coverage. Where Vegas locals go for affordable drinks and game watching.', 'https://www.ptsgold.com', 4.0, 420, 15, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'las-vegas'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tailgate Social', 'tailgate-social-las-vegas', c.id, '6587 S Las Vegas Blvd, Las Vegas, NV 89119', 36.0817, -115.1735, 'Palace Station''s modern sports bar with a wall of screens and a tailgate-inspired menu. A strong off-Strip option for dedicated sports watching.', 'https://www.stationcasinos.com', 4.1, 590, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'las-vegas'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Book at The LINQ', 'the-book-linq-las-vegas', c.id, '3535 S Las Vegas Blvd, Las Vegas, NV 89109', 36.1231, -115.1695, 'Modern sportsbook lounge at The LINQ with comfortable seating, individual screens at many seats, and a cocktail-forward drink menu. Perfect blend of betting and watching.', 'https://www.caesars.com/linq', 4.2, 780, 40, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'las-vegas'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SAN FRANCISCO (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kezar Pub', 'kezar-pub-sf', c.id, '770 Stanyan St, San Francisco, CA 94117', 37.7680, -122.4534, 'Haight-Ashbury institution across from Kezar Stadium. One of SF''s best spots for 49ers games with a loyal local crowd that packs the place every Sunday.', 'https://www.kezarpub.com', 4.4, 650, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'san-francisco'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Mad Dog in the Fog', 'mad-dog-in-the-fog-sf', c.id, '530 Haight St, San Francisco, CA 94117', 37.7720, -122.4310, 'Lower Haight British pub known for its passionate soccer fan base. Opens early for Premier League and Champions League, serving proper pints and a full English.', 'https://www.themaddoginthefog.com', 4.3, 480, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'san-francisco'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hi Tops', 'hi-tops-sf', c.id, '2247 Market St, San Francisco, CA 94114', 37.7643, -122.4336, 'Castro''s premier sports bar with a vibrant atmosphere and creative pub menu. Welcoming to all fans and known for raucous watch parties during playoffs.', 'https://www.hitopssf.com', 4.2, 720, 16, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'san-francisco'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pete''s Tavern', 'petes-tavern-sf', c.id, '128 King St, San Francisco, CA 94107', 37.7780, -122.3929, 'SoMa sports bar near Oracle Park with a strong Giants and Warriors following. Convenient pre- and post-game spot with cold beer and a straightforward menu.', 'https://www.petestavernsf.com', 4.1, 390, 12, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'san-francisco'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boardroom', 'the-boardroom-sf', c.id, '1600 Ocean Beach, San Francisco, CA 94122', 37.7605, -122.5085, 'Oceanfront sports bar right on the Great Highway with views of Ocean Beach. Surf culture meets sports fandom in this uniquely San Francisco venue.', 'https://www.theboardroomsf.com', 4.3, 510, 10, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'san-francisco'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- AUSTIN (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pluckers Wing Bar', 'pluckers-wing-bar-austin', c.id, '2222 Rio Grande St, Austin, TX 78705', 30.2842, -97.7489, 'Austin''s wing institution near UT campus with over 25 flavors and wall-to-wall screens. A must-visit for Longhorns football and any major sporting event.', 'https://www.pluckers.com', 4.3, 1800, 30, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'austin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Haymaker', 'haymaker-austin', c.id, '2310 Manor Rd, Austin, TX 78722', 30.2745, -97.7208, 'East Austin''s favorite neighborhood sports bar with a massive backyard, ping pong, and screens inside and out. Laid-back Austin vibes with serious sports coverage.', 'https://www.haymakeraustin.com', 4.4, 690, 14, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'austin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Black Sheep Lodge', 'black-sheep-lodge-austin', c.id, '2108 S Lamar Blvd, Austin, TX 78704', 30.2483, -97.7718, 'South Lamar staple with a huge outdoor deck and tons of TVs. Known for its affordable beer, solid food truck fare, and being packed for every UT game.', 'https://www.blacksheeplodge.com', 4.2, 820, 20, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'austin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lavaca Street Bar', 'lavaca-street-bar-austin', c.id, '405 Lavaca St, Austin, TX 78701', 30.2660, -97.7467, 'Downtown Austin sports bar popular with the after-work crowd. Multiple rooms with screens, pool tables, and a solid happy hour make it a weekday go-to.', 'https://www.lavacastreetbar.com', 4.1, 540, 16, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'austin'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Crow Bar', 'crow-bar-austin', c.id, '3116 S Congress Ave, Austin, TX 78704', 30.2384, -97.7506, 'South Congress dog-friendly patio bar with outdoor screens and a relaxed vibe. Perfect for watching games with your pup under the Texas sky.', 'https://www.crowbaraustin.com', 4.3, 470, 6, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'austin'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BOSTON (5 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Banshee', 'the-banshee-boston', c.id, '934 Dorchester Ave, Dorchester, MA 02125', 42.3198, -71.0559, 'Dorchester''s beloved Irish pub and soccer haven. Home to passionate supporters'' groups and opens bright and early for Premier League and Champions League fixtures.', 'https://www.bansheeboston.com', 4.4, 520, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'boston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tony C''s Sports Bar & Grill', 'tony-cs-boston', c.id, '1265 Boylston St, Boston, MA 02215', 42.3454, -71.0967, 'Fenway-area sports bar named after Red Sox legend Tony Conigliaro. Massive screen setup and a menu of elevated bar favorites make it a pre-game must.', 'https://www.tonycsboston.com', 4.1, 1400, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'boston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Fours', 'the-fours-boston', c.id, '166 Canal St, Boston, MA 02114', 42.3664, -71.0612, 'Legendary Boston sports bar near TD Garden that has been serving fans since 1976. Walls covered in memorabilia and a menu of classic American bar food.', 'https://www.thefours.com', 4.2, 980, 20, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'boston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jerry Remy''s Sports Bar & Grill', 'jerry-remys-boston', c.id, '1265 Boylston St, Boston, MA 02215', 42.3455, -71.0970, 'Another Fenway gem from the late Red Sox broadcaster. Known for its game day energy and prime location steps from the ballpark.', 'https://www.jerryremys.com', 4.0, 1100, 25, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'boston'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Stats Bar and Grille', 'stats-bar-boston', c.id, '77 Causeway St, Boston, MA 02114', 42.3653, -71.0615, 'Modern sports bar near TD Garden with a sleek design and wall of screens. Popular pre-game spot for Celtics and Bruins fans with a solid craft beer selection.', 'https://www.statsbarandgrille.com', 4.1, 670, 28, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'boston'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- DENVER (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Blake Street Tavern', 'blake-street-tavern-denver', c.id, '2301 Blake St, Denver, CO 80205', 39.7534, -104.9870, 'Denver''s biggest sports bar with 22,000 square feet of screens and seating. Walking distance to Coors Field and a top destination for Broncos watch parties.', 'https://www.blakestreettavern.com', 4.2, 1600, 60, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'denver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Three Lions Pub', 'three-lions-pub-denver', c.id, '2239 E Colfax Ave, Denver, CO 80206', 39.7401, -104.9558, 'Denver''s original soccer pub serving the beautiful game since 2007. English breakfast on match mornings and a passionate community of supporters.', 'https://www.threelionspub.com', 4.5, 480, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'denver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jackson''s All American Sports Grill', 'jacksons-sports-grill-denver', c.id, '1520 20th St, Denver, CO 80202', 39.7553, -104.9934, 'LoDo sports bar with a massive patio overlooking downtown Denver. Strong drink specials and a full menu make it a game day favorite near Union Station.', 'https://www.jacksonslodo.com', 4.1, 890, 25, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'denver'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sobo 151', 'sobo-151-denver', c.id, '151 S Broadway, Denver, CO 80209', 39.7193, -104.9876, 'South Broadway neighborhood bar with a killer craft beer selection and screens at every turn. A low-key spot for catching games without the downtown crowds.', 'https://www.sobo151.com', 4.3, 340, 12, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'denver'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SEATTLE (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fuel Sports', 'fuel-sports-seattle', c.id, '2300 N 45th St, Seattle, WA 98103', 47.6614, -122.3359, 'Wallingford''s premier sports bar with a strong local following for Seahawks, Sounders, and Mariners. Big screen projectors and a neighborhood feel.', 'https://www.fuelsportseattle.com', 4.2, 580, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'seattle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Buckley''s in Belltown', 'buckleys-belltown-seattle', c.id, '2331 2nd Ave, Seattle, WA 98121', 47.6148, -122.3463, 'Belltown sports bar and gastropub with craft cocktails and elevated pub food. Screens throughout and a great happy hour make it a go-to for after-work games.', 'https://www.buckleysseattle.com', 4.1, 720, 16, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'seattle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Flatstick Pub', 'flatstick-pub-seattle', c.id, '240 2nd Ave S, Seattle, WA 98104', 47.5999, -122.3327, 'Pioneer Square bar combining mini golf with sports watching. Local craft beers on tap and screens showing all major Seattle sports. A fun twist on the sports bar formula.', 'https://www.flatstickpub.com', 4.3, 890, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'seattle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'George & Dragon Pub', 'george-and-dragon-seattle', c.id, '206 N 36th St, Seattle, WA 98103', 47.6519, -122.3520, 'Fremont''s English pub and soccer headquarters. Opens early for Premier League matches with a devoted crowd of football fans and a cozy, authentic atmosphere.', 'https://www.georgeanddragonpub.com', 4.4, 410, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'seattle'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NASHVILLE (4 venues)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Double Dogs', 'double-dogs-nashville', c.id, '1807 21st Ave S, Nashville, TN 37212', 36.1318, -86.7989, 'Hillsboro Village sports bar popular with Vanderbilt students and local sports fans. Great wings, cold beer, and screens covering every major game.', 'https://www.doubledogs.biz', 4.1, 780, 24, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'nashville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The George Jones Rooftop Bar', 'george-jones-rooftop-nashville', c.id, '128 2nd Ave N, Nashville, TN 37201', 36.1641, -86.7755, 'Broadway rooftop bar with panoramic Nashville views and big screens for game day. Live music meets live sports in true Nashville fashion.', 'https://www.georgejones.com/rooftop', 4.2, 1200, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'nashville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Winners Bar & Grill', 'winners-bar-nashville', c.id, '1913 Division St, Nashville, TN 37203', 36.1508, -86.7949, 'Midtown Nashville sports bar with a dedicated Titans and Predators following. Multiple rooms with screens and a lively game day atmosphere.', 'https://www.winnersbarandgrill.com', 4.0, 450, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'nashville'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Slider House', 'slider-house-nashville', c.id, '1907 Division St, Nashville, TN 37203', 36.1510, -86.7945, 'Midtown gastropub known for creative sliders and a well-stocked bar. Screens throughout and a relaxed vibe that makes it easy to settle in for a full day of games.', 'https://www.thesliderhouse.com', 4.3, 620, 14, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'nashville'
ON CONFLICT (slug) DO NOTHING;
