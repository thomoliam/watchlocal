-- ============================================================================
-- Middle East & North Africa Sports Venues
-- UAE: Dubai (15), Abu Dhabi (8)
-- Turkey: Istanbul (10), Antalya (4)
-- Jordan: Amman (4)
-- Israel: Tel Aviv (8), Jerusalem (3)
-- Morocco: Marrakech (5), Casablanca (3)
-- Egypt: Cairo (5), Hurghada (3)
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

-- UAE
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Dubai', 'dubai', 'United Arab Emirates', 'AE', 25.2048, 55.2708, 'Asia/Dubai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Abu Dhabi', 'abu-dhabi', 'United Arab Emirates', 'AE', 24.4539, 54.3773, 'Asia/Dubai')
ON CONFLICT (slug) DO NOTHING;

-- Turkey
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Istanbul', 'istanbul', 'Turkey', 'TR', 41.0082, 28.9784, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Antalya', 'antalya', 'Turkey', 'TR', 36.8969, 30.7133, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

-- Jordan
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Amman', 'amman', 'Jordan', 'JO', 31.9454, 35.9284, 'Asia/Amman')
ON CONFLICT (slug) DO NOTHING;

-- Israel
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Tel Aviv', 'tel-aviv', 'Israel', 'IL', 32.0853, 34.7818, 'Asia/Jerusalem')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Jerusalem', 'jerusalem', 'Israel', 'IL', 31.7683, 35.2137, 'Asia/Jerusalem')
ON CONFLICT (slug) DO NOTHING;

-- Morocco
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Marrakech', 'marrakech', 'Morocco', 'MA', 31.6295, -7.9811, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Casablanca', 'casablanca', 'Morocco', 'MA', 33.5731, -7.5898, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

-- Egypt
INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cairo', 'cairo', 'Egypt', 'EG', 30.0444, 31.2357, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Hurghada', 'hurghada', 'Egypt', 'EG', 27.2579, 33.8116, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- UAE - DUBAI VENUES (15)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Barasti Beach Bar', 'barasti-beach-bar-dubai', c.id, 'Le Meridien Mina Seyahi Beach Resort, Al Sufouh, Dubai', 25.0923, 55.1480, 'Iconic beach bar with a massive outdoor area overlooking the Arabian Gulf. Multiple big screens for live sports, happy hour from 4-8pm daily, and a loyal crowd for Premier League and Champions League fixtures.', 'https://www.barasti.com', 4.2, 8500, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McGettigan''s JBR', 'mcgettigans-jbr-dubai', c.id, 'Hilton Dubai Jumeirah, The Walk, JBR, Dubai', 25.0780, 55.1340, 'Award-winning Irish sports bar that transforms into a sea of cheering fans during big matches. Massive HD screens, solid pub grub menu, and special deals around major tournaments.', 'https://www.mcgettigans.com/hilton-jbr-dubai.html', 4.3, 3200, 18, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fibber Magee''s', 'fibber-magees-dubai', c.id, 'Sheikh Zayed Road, behind Ibis World Trade Centre, Dubai', 25.2230, 55.2830, 'Dubai''s oldest and most iconic Irish pub, known for the best Guinness in town. Live sports broadcasts, great pub grub, and live entertainment make it a favourite among expats.', 'https://www.fibbermagees.com', 4.4, 4100, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Goose Island Tap House', 'goose-island-tap-house-dubai', c.id, 'FIVE LUXE JBR, The Walk, JBR, Dubai', 25.0790, 55.1350, 'Craft beer haven with 19 large screens showing all live sports. Wide selection of artisan ales, a gaming area, and a buzzing atmosphere for Premier League weekends.', 'https://www.gooseislanddubai.com', 4.3, 1800, 19, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Kickers Sports Bar', 'kickers-sports-bar-dubai', c.id, 'Dubai Sports City, Dubai', 25.0375, 55.2175, 'Popular sports bar in Dubai Sports City with large screens and a terrace overlooking the floodlit football academy. Happy hour daily from 12pm-6pm with house drinks from just Dhs19.50.', NULL, 4.1, 1400, 12, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Toad in the Hole', 'toad-in-the-hole-dubai', c.id, 'Next to Topgolf Dubai, Emirates Hills, Dubai', 25.0680, 55.1730, 'Lively sports bar next to Topgolf Dubai featuring big screens and a huge projector for all major matches. Classic British pub atmosphere with hearty food and cold beer.', NULL, 4.2, 1200, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bedrock Bar & Grill', 'bedrock-bar-grill-dubai', c.id, 'Pier 7, Level 1, Dubai Marina, Dubai', 25.0770, 55.1390, 'Lively spot in Pier 7 where sports fans follow the action across 20 high-quality screens. Great burgers, steaks, and craft beers in a modern American-style setting.', NULL, 4.1, 2600, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lock, Stock & Barrel JBR', 'lock-stock-barrel-jbr-dubai', c.id, 'Rixos Premium JBR, The Walk, JBR, Dubai', 25.0785, 55.1345, 'Impressive selection of craft beers and cocktails with over 20 screens showing live sports including a giant screen for big games. Pool table, buzzing atmosphere, and late-night vibes.', NULL, 4.2, 3800, 22, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lucky Voice JBR', 'lucky-voice-jbr-dubai', c.id, 'JA Ocean View Hotel, The Walk, JBR, Dubai', 25.0775, 55.1330, 'Features a 5-metre screen and playful atmosphere that turns games into mini carnivals. Families and die-hard supporters enjoy it as a top sports bar along JBR''s strip.', NULL, 4.0, 1500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McCafferty''s Irish Pub', 'mccaffertys-irish-pub-dubai', c.id, 'Rooftop, Circle Mall, JVC, Dubai', 25.0610, 55.2070, 'Authentic Irish pub on the rooftop of Circle Mall offering gastropub classics with top-quality Irish ingredients. Electric atmosphere for live sports events and a great terrace.', NULL, 4.3, 1100, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The 44 Sports Bar', 'the-44-sports-bar-dubai', c.id, 'Grosvenor House, Dubai Marina, Dubai', 25.0830, 55.1410, 'The highest sports bar in Dubai with breathtaking views from the terrace. Premium atmosphere for watching live sports while enjoying creative cocktails and panoramic marina views.', NULL, 4.2, 900, 8, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McGettigan''s JLT', 'mcgettigans-jlt-dubai', c.id, 'Bonnington Jumeirah Lakes Towers, JLT, Dubai', 25.0750, 55.1490, 'Sister venue to the JBR location with the same winning formula of Irish hospitality and wall-to-wall live sports. Spacious indoor area with plenty of screens and a pub quiz nights.', 'https://www.mcgettigans.com', 4.2, 2100, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Phileas Fogg''s', 'phileas-foggs-dubai', c.id, 'Traders Hotel, DWTC, Sheikh Zayed Road, Dubai', 25.2275, 55.2850, 'A favourite among Business Bay sports fans with a super outdoor area featuring picnic benches and stunning views of Dubai Water Canal. Happy hour daily from 4pm-7pm.', NULL, 4.1, 1300, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Huddle Sports Bar', 'the-huddle-sports-bar-dubai', c.id, 'Citymax Hotel, Bur Dubai, Dubai', 25.2530, 55.2940, 'Welcoming sports bar in Bur Dubai showing all major football leagues, cricket, and rugby on multiple screens. Affordable drinks and a relaxed setting popular with the local expat community.', NULL, 4.0, 800, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Reform Social & Grill', 'reform-social-grill-dubai', c.id, 'The Lakes, Emirates Living, Dubai', 25.0630, 55.1830, 'British gastropub with a dedicated sports area showing Premier League, Champions League, and rugby. Outdoor garden with screens during cooler months and a farm-to-table food menu.', 'https://www.reformsocialgrill.ae', 4.4, 2900, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'dubai'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- UAE - ABU DHABI VENUES (8)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cooper''s Bar & Restaurant', 'coopers-bar-restaurant-abu-dhabi', c.id, 'Park Rotana Abu Dhabi, Khalifa Park, Abu Dhabi', 24.4290, 54.4330, 'Popular British pub that always has a football game on one of its many screens. Great pub grub including Philly cheese steak fries and quesadillas for match day snacking.', NULL, 4.2, 1800, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Belgian Cafe', 'belgian-cafe-abu-dhabi', c.id, 'InterContinental Abu Dhabi, King Abdullah Bin Abdulaziz Al Saud St, Abu Dhabi', 24.4600, 54.3280, 'One of the most reliable spots for live sports in Abu Dhabi. Known for its relaxed yet lively atmosphere with multiple screens, a spacious terrace, and a loyal crowd of sports fans.', NULL, 4.3, 2200, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Appaloosa Bar', 'appaloosa-bar-abu-dhabi', c.id, 'Abu Dhabi Marriott Downtown, Hamdan Street, Abu Dhabi', 24.4880, 54.3640, 'High-energy sports bar with multiple indoor screens and a large outdoor screen during cooler months. Attracts a vibrant crowd for major matches and is known for its spacious layout.', NULL, 4.1, 1500, 14, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ma Buckley''s', 'ma-buckleys-abu-dhabi', c.id, 'Sheraton Abu Dhabi Hotel & Resort, Corniche Road, Abu Dhabi', 24.4740, 54.3350, 'Sports bar catering specifically to football fans with Premier League, Champions League, La Liga, Serie A, and international tournaments always on screen. Great drinks and a passionate crowd.', 'https://mabuckleys.com', 4.2, 1200, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McGettigan''s Abu Dhabi', 'mcgettigans-abu-dhabi', c.id, 'Dusit Thani Abu Dhabi, Sultan Bin Zayed The First St, Abu Dhabi', 24.4920, 54.3560, 'One of the capital''s leading Irish pubs showing all football action live. Great selection of food and beverages in a friendly, buzzing atmosphere on match days.', 'https://www.mcgettigans.com', 4.3, 2800, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Blue Bar', 'blue-bar-abu-dhabi', c.id, 'Southern Sun Abu Dhabi, Al Mina Street, Abu Dhabi', 24.4890, 54.3670, 'Popular spot for football fans showing a wide variety of sports. Particularly beloved by Manchester City supporters. Relaxed vibe with good food and drink specials on match days.', NULL, 4.0, 900, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Offside Sports Lounge', 'offside-sports-lounge-abu-dhabi', c.id, 'Novotel Abu Dhabi Al Bustan, Al Bustan, Abu Dhabi', 24.4670, 54.3920, 'Dedicated sports lounge showing all major football leagues and sporting events. Multiple large screens, comfortable seating, and food and drink packages for big match days.', NULL, 4.1, 750, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hamilton''s Gastropub', 'hamiltons-gastropub-abu-dhabi', c.id, 'Le Meridien Abu Dhabi, Tourist Club Area, Abu Dhabi', 24.4830, 54.3750, 'Gastropub with a strong sports focus featuring multiple screens and projectors. Popular for F1 race weekends and Premier League matches with elevated pub food and craft beers.', NULL, 4.3, 1600, 12, 'upscale', '$$', true, true, true
FROM cities c WHERE c.slug = 'abu-dhabi'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- TURKEY - ISTANBUL VENUES (10)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'U2 Istanbul Irish Pub', 'u2-istanbul-irish-pub', c.id, 'Taksim, Imam Adnan Sk. No:24, 34433 Beyoglu, Istanbul', 41.0370, 28.9850, 'One of the most popular sports bars in Istanbul, beloved for cold Guinness and live game screenings. Over 50 beer varieties on offer. Covers rugby, football, and all major sports.', 'https://u2istanbulirishpub.com', 4.4, 1800, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'North Shield Pub Besiktas', 'north-shield-pub-besiktas-istanbul', c.id, 'Sinanpasa Mah, Besiktas, Istanbul', 41.0430, 29.0020, 'A branch of Istanbul''s most popular sports bar chain. On game days every North Shield is packed to the brim. Excellent coverage of Premier League, F1, and 6 Nations rugby.', NULL, 4.2, 2100, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Sports Bar Istanbul', 'champions-sports-bar-istanbul', c.id, 'Polat Renaissance Hotel, Yesilkoy, Istanbul', 40.9860, 28.8220, 'The most popular sports venue in Yesilkoy, spread over 1,500 sqm across two storeys including a balcony. Pool tables, pinball machines, darts, and giant screens for every major game.', NULL, 4.1, 1400, 16, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Me Gusta Taksim', 'me-gusta-taksim-istanbul', c.id, 'Istiklal Caddesi, Taksim, Beyoglu, Istanbul', 41.0340, 28.9780, 'The most popular place to watch a game in Taksim with two large projectors across both floors. The 280-capacity venue is usually packed on game days with a buzzing atmosphere.', NULL, 4.0, 1600, 6, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Harp Irish Pub Kadikoy', 'the-harp-irish-pub-kadikoy-istanbul', c.id, 'Caferaga Mah, Kadikoy, Istanbul', 40.9900, 29.0270, 'Traditional Irish pub in Kadikoy on the Asian side with live football matches, pool table, classic pub food, and Irish beers on tap. A favourite for expats on the east side.', NULL, 4.2, 950, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beer Port Besiktas', 'beer-port-besiktas-istanbul', c.id, 'Cihannuma, Barbaros Blv. No:25C, 34022 Besiktas, Istanbul', 41.0450, 29.0040, 'Lively bar offering live music, giant screen matches, delicious flavours and special cocktails. A go-to spot in Besiktas for Champions League and Super Lig nights.', 'https://www.beerportbesiktas.com', 4.1, 1100, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Craft Beer Lab Besiktas', 'craft-beer-lab-besiktas-istanbul', c.id, 'Sinanpasa, Besiktas Cd. No:19, 34353 Besiktas, Istanbul', 41.0440, 29.0010, 'Must-visit for draft and craft beer enthusiasts with a great ambience for watching live sports. Open from 9am-2am, showing football, basketball, and other events on multiple screens.', NULL, 4.3, 800, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Taps Bebek', 'taps-bebek-istanbul', c.id, 'Cevdetpasa Caddesi No 119, 34342 Bebek, Istanbul', 41.0770, 29.0430, 'Laid-back brewery bar in a three-storey mansion by the Bosphorus seaside. Stunning waterfront views while watching the game with craft beers brewed on site.', NULL, 4.2, 1300, 8, 'relaxed', '$$$', true, true, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'North Shield Pub Taksim', 'north-shield-pub-taksim-istanbul', c.id, 'Istiklal Caddesi, Taksim, Beyoglu, Istanbul', 41.0350, 28.9790, 'Centrally located branch of the North Shield chain in the heart of Taksim. Multiple screens showing Premier League, Super Lig, and European football with hearty pub food.', NULL, 4.1, 1700, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Karga Bar', 'karga-bar-istanbul', c.id, 'Kadife Sokak No:16, Kadikoy, Istanbul', 40.9870, 29.0290, 'Iconic Kadikoy bar popular for its rustic decor, dim lighting, and affordable drinks. Shows major football matches with a local Turkish crowd creating an authentic game-day vibe.', NULL, 4.3, 2200, 4, 'casual', '$', true, false, false
FROM cities c WHERE c.slug = 'istanbul'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- TURKEY - ANTALYA VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Paradise Restaurant & Bar', 'paradise-restaurant-bar-antalya', c.id, 'Kaleici, Old Town Harbour, Antalya', 36.8850, 30.7050, 'Beautiful location overlooking Kaleici harbour showing most sports from around the world. The owner sources sport broadcasts internationally, making this a top spot for any fixture.', NULL, 4.3, 1200, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'antalya'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The 19th Hole Bar', 'the-19th-hole-bar-antalya', c.id, 'Kadriye Mahallesi, Belek, Antalya', 36.8590, 31.0540, 'Family-run sports bar serving home-cooked English meals and all-day full English breakfasts. All major games shown live on multiple screens in a welcoming atmosphere.', NULL, 4.4, 850, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'antalya'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Arena Sports Bar Lounge', 'arena-sports-bar-lounge-antalya', c.id, 'Belek Turizm Merkezi, Belek, Antalya', 36.8610, 31.0570, 'Perfect for rugby, football, and all other sports with big screens and shisha. Watch your favourite sporting events with comfortable seating and a lounge atmosphere.', NULL, 4.0, 600, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'antalya'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sheffield Pub', 'the-sheffield-pub-antalya', c.id, 'Sinan Mahallesi, Antalya', 36.8930, 30.6960, 'British-style pub in central Antalya with a wide selection of beverages and screens showing live sports including tennis, football, and Premier League matches.', NULL, 4.1, 500, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'antalya'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- JORDAN - AMMAN VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champions Tavern', 'champions-tavern-amman', c.id, 'Amman Marriott Hotel, Issam Al Ajlouni Street, Shmeisani, Amman', 31.9670, 35.9100, 'One of Amman''s oldest and most popular sports bars, nestled within the Marriott Hotel. Multiple large screens broadcasting the latest games with a blend of American dining and live sports.', 'https://evendo.com/locations/jordan/ma-an-plateau/bar/champions-tavern', 4.3, 1400, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'amman'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Legends Amman', 'legends-amman', c.id, 'Abdali Boulevard, Amman', 31.9580, 35.9120, 'Celebrates all-time greats with quirky caricatures, a stadium-like screen, F1 pods, pool tables, and golf simulators. DJ nights and legendary food and drink menus make it a standout.', NULL, 4.2, 900, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'amman'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '145 Sports Bar', '145-sports-bar-amman', c.id, 'Rainbow Street area, Amman', 31.9530, 35.9200, 'Open from 3pm-2am with a happy hour from 3-7pm. Popular with expats and locals for watching Premier League, Champions League, and regional football on multiple screens.', NULL, 4.0, 600, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'amman'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rovers Return Amman', 'rovers-return-amman', c.id, 'Sweifieh, Amman', 31.9560, 35.8650, 'Though not exclusively a sports bar, Rovers Return gets rowdy during big games with big screen TVs and a loyal crowd of football fans. Good pub food and a friendly atmosphere.', NULL, 4.1, 500, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'amman'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ISRAEL - TEL AVIV VENUES (8)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mike''s Place Tayelet', 'mikes-place-tayelet-tel-aviv', c.id, 'Herbert Samuel 86, Tel Aviv Promenade, Tel Aviv', 32.0740, 34.7640, 'Israel''s leading American sports bar on the beachfront. Great burgers, chicken wings, large selection of draft beers, pool tables, and an awesome setup for watching sport on TV. Happy hour 17:00-19:00 Sun-Fri.', 'https://www.mikesplacebars.com', 4.3, 3200, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mike''s Place Ramat HaChayal', 'mikes-place-ramat-hachayal-tel-aviv', c.id, 'Raul Wallenberg 24, Ramat HaChayal, Tel Aviv', 32.1100, 34.8350, 'Popular with the local hi-tech crowd for after-work sports viewing. Great happy hour deals, HD screens for all major games, and classic American bar food in a lively setting.', 'https://www.mikesplacebars.com', 4.2, 1400, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Molly Blooms Tel Aviv', 'molly-blooms-tel-aviv', c.id, 'HaYarkon Street 2, Tel Aviv', 32.0660, 34.7650, 'The ultimate Irish pub in Tel Aviv serving refreshing beer and cider with well-rounded pub grub including homemade shepherd''s pie and Irish beef stew. The best place in the city to catch the game.', NULL, 4.3, 1800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'M.A.S.H Tel Aviv', 'mash-tel-aviv', c.id, 'Dizengoff Street 275, Tel Aviv', 32.0930, 34.7780, 'Tel Aviv''s first real pub, founded in 1982. Serves English-style pub fare with a focus on Premier League football and fine draft beer. An institution for sports fans in the city.', NULL, 4.1, 1200, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mike''s Place Herzliya', 'mikes-place-herzliya-tel-aviv', c.id, 'Maskit Street, Herzliya Industrial Area, Herzliya', 32.1620, 34.7920, 'Versatile venue offering open mics, jam nights, live bands, and sports games on HD screens. A favourite among the Herzliya business crowd for catching live games over cold beers.', 'https://www.mikesplacebars.com', 4.2, 950, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Rothschild Pub', 'the-rothschild-pub-tel-aviv', c.id, 'Rothschild Boulevard 15, Tel Aviv', 32.0640, 34.7740, 'Irish-style pub on iconic Rothschild Boulevard with over 70 different types of beer including 21 on tap. Live sports screenings of football and rugby in a welcoming atmosphere.', NULL, 4.2, 1100, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dizzy Frishdon', 'dizzy-frishdon-tel-aviv', c.id, 'Dizengoff Street 118, Tel Aviv', 32.0820, 34.7740, 'Classic Dizengoff Street bar with outdoor screens for watching games like an Israeli. Part of the famous strip that gets jam-packed with sports fans during major tournaments.', NULL, 4.0, 800, 6, 'lively', '$$', true, true, false
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Porter & Sons', 'porter-and-sons-tel-aviv', c.id, 'Nahalat Binyamin Street 14, Tel Aviv', 32.0650, 34.7720, 'Craft beer bar with a strong sports focus, featuring local Israeli craft beers and imported selections. Multiple screens for Premier League and Champions League fixtures.', NULL, 4.3, 700, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'tel-aviv'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ISRAEL - JERUSALEM VENUES (3)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mike''s Place Jerusalem', 'mikes-place-jerusalem', c.id, 'Jaffa Street 33, Jerusalem', 31.7810, 35.2190, 'Israel''s leading sports bar chain with a Jerusalem branch on Jaffa Street. American-style bar with international beers, kosher menu, live bands downstairs, and sports on HD screens. Happy hour 17:00-19:00.', 'https://www.mikesplacebars.com/branches/jerusalem', 4.3, 1600, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'jerusalem'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Lion''s Den Sports Bar & Grill', 'the-lions-den-jerusalem', c.id, 'Rivlin Street 7, City Centre, Jerusalem', 31.7800, 35.2240, 'Cool downtown sports bar with 8 screens showing lots of games. Kosher meat dishes with big portions and a comfortable atmosphere for watching Premier League and Champions League.', NULL, 4.2, 900, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'jerusalem'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Blaze Rock & Sports Bar', 'blaze-rock-sports-bar-jerusalem', c.id, 'Dorot Rishonim Street 8, Jerusalem', 31.7805, 35.2220, 'Grungy biker-bar atmosphere with live bands performing nightly offering blues, funk, and rock. Sports on screen alongside live entertainment for a unique game-day experience.', NULL, 4.1, 600, 6, 'lively', '$', true, false, false
FROM cities c WHERE c.slug = 'jerusalem'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MOROCCO - MARRAKECH VENUES (5)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fan Zone Es Saadi', 'fan-zone-es-saadi-marrakech', c.id, 'Rue Ibrahim El Mazini, Hivernage, Marrakech', 31.6230, -8.0110, 'Sports bar broadcasting the biggest events on five giant screens: Champions League, European Championships, NBA, boxing, rugby, and more. Open daily from 6pm to 5am.', 'https://www.essaadi.com/en/restaurants-marrakech/bars/fan-zone-marrakesh/', 4.2, 800, 5, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'marrakech'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'S Bar Sports Lounge', 's-bar-sports-lounge-marrakech', c.id, 'Gueliz, Avenue Mohamed V, Marrakech', 31.6340, -8.0080, 'Ultra modern sports lounge with more HD flatscreen TVs than most bars. Famous for the cheapest beer in Marrakech with buckets of 6 Casablancas at unbeatable prices.', NULL, 4.1, 650, 12, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'marrakech'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Comptoir Darna', 'le-comptoir-darna-marrakech', c.id, 'Avenue Echouhada, Hivernage, Marrakech', 31.6220, -8.0090, 'Upscale lounge in the Hivernage district showing major sporting events on large screens. Moroccan and international cuisine in an elegant setting with a vibrant bar area.', 'https://www.comptoirdarna.com', 4.3, 2200, 4, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'marrakech'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cafe du Livre', 'cafe-du-livre-marrakech', c.id, 'Rue Tarik Ibn Ziad, Gueliz, Marrakech', 31.6360, -8.0060, 'Bookshop-cafe-bar hybrid in Gueliz that screens major football matches. Relaxed expat-friendly atmosphere with good food, cocktails, and a unique literary ambience.', NULL, 4.2, 500, 3, 'relaxed', '$$', true, true, false
FROM cities c WHERE c.slug = 'marrakech'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Theatro Marrakech', 'theatro-marrakech', c.id, 'Hotel Es Saadi, Avenue El Kadissia, Hivernage, Marrakech', 31.6225, -8.0105, 'Nightclub and lounge that screens major sporting events on big screens before the evening entertainment begins. Premium cocktails and a glamorous setting for high-profile match nights.', NULL, 4.0, 1800, 4, 'upscale', '$$$', true, false, false
FROM cities c WHERE c.slug = 'marrakech'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MOROCCO - CASABLANCA VENUES (3)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Irish Pub Casablanca', 'the-irish-pub-casablanca', c.id, 'Rue Ain Harrouda, Maarif, Casablanca', 33.5780, -7.6250, 'Classic and lively Irish bar in the heart of Casablanca offering a pleasant atmosphere. Features live music and screens various sports including football, rugby, tennis, and golf.', NULL, 4.1, 1100, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'casablanca'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Jefferson', 'le-jefferson-casablanca', c.id, 'Boulevard Massira Al Khadra, Maarif, Casablanca', 33.5720, -7.6280, 'Popular pub where locals and tourists gather for a wide selection of beverages including beer, wine, and cocktails. Live music and sports screenings create a sociable atmosphere.', NULL, 4.0, 900, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'casablanca'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'La Bodega Casablanca', 'la-bodega-casablanca', c.id, 'Rue Ain Harrouda 129, Maarif, Casablanca', 33.5770, -7.6240, 'Tapas bar and restaurant with a lively atmosphere that screens major football matches. Great Spanish-Moroccan fusion cuisine and a buzzing crowd during Champions League nights.', NULL, 4.2, 1400, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'casablanca'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- EGYPT - CAIRO VENUES (5)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Live Sports Bar Cairo', 'live-sports-bar-cairo', c.id, 'Le Meridien Cairo Airport Hotel, Cairo International Airport, Cairo', 30.1120, 31.4050, '12 HD plasma screens positioned at strategic viewing points for football, rugby, and cricket. Features a resident DJ and live band three days a week alongside constant live sports.', 'https://www.live-sports-bar.com', 4.1, 1200, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cairo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Scores Sports Bar & Restaurant', 'scores-sports-bar-cairo', c.id, 'Holiday Inn Cairo Maadi, Corniche El Nil, Maadi, Cairo', 29.9600, 31.2310, 'Sports bar overlooking the majestic Nile river at the Holiday Inn Maadi. Great food and drinks while watching all major football leagues on multiple screens.', NULL, 4.0, 800, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'cairo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Seven Sports Lounge', 'seven-sports-lounge-cairo', c.id, 'Hotel Concorde El Salam, 69 Abd El-Hameed Badawi St, El Nozha, Cairo', 30.0860, 31.3520, 'English-themed sports lounge offering great lively moments and quality time. Game nights, a diverse menu, and a dedicated sports atmosphere make it a go-to for Cairo football fans.', NULL, 4.2, 650, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cairo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pub 28 Cairo', 'pub-28-cairo', c.id, 'Sheraton Cairo Hotel, Galae Square, Heliopolis, Cairo', 30.0870, 31.3400, 'Classic pub inside the Sheraton Cairo offering a comfortable setting for watching Egyptian league, Premier League, and Champions League matches. Cold beers and pub favourites on the menu.', NULL, 4.0, 550, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'cairo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cairo Jazz Club', 'cairo-jazz-club-cairo', c.id, '197 26th July Street, Agouza, Cairo', 30.0560, 31.2100, 'Iconic Cairo nightlife venue that screens major football events and World Cup matches. Live music, DJs, and a creative cocktail menu attract a trendy crowd for big game nights.', NULL, 4.3, 3500, 4, 'lively', '$$', true, false, false
FROM cities c WHERE c.slug = 'cairo'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- EGYPT - HURGHADA VENUES (3)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Retro Pub Hurghada', 'retro-pub-hurghada', c.id, 'Sheraton Road, Downtown Hurghada', 27.1880, 33.8290, 'Popular sports bar in downtown Hurghada with large screens showing all major sporting events. Pool tables, darts, and comfort pub grub in a classic British pub atmosphere.', NULL, 4.2, 900, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'hurghada'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Luca''s Pub & Grub', 'lucas-pub-grub-hurghada', c.id, 'New Marina, Hurghada', 27.1920, 33.8410, 'English sports bar in New Marina with outdoor and indoor areas and plenty of TVs showing your favourite sport at very reasonable prices. Great food and a welcoming atmosphere.', NULL, 4.1, 700, 8, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'hurghada'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'United Sports Bar & Restaurant', 'united-sports-bar-hurghada', c.id, 'Aqua Tropical Resort, Al Ahyaa, Hurghada', 27.2350, 33.8540, 'Sports bar within the Aqua Tropical Resort offering a full menu, drinks, live sports on multiple screens, plus pool table, table tennis, and darts for between-match entertainment.', NULL, 4.0, 500, 6, 'casual', '$', true, true, true
FROM cities c WHERE c.slug = 'hurghada'
ON CONFLICT (slug) DO NOTHING;
