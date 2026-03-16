-- ============================================================
-- South Asia Venue Seed
-- Real venues researched from web searches March 2026
-- Countries: India, Nepal, Sri Lanka, Maldives
-- ON CONFLICT (slug) DO NOTHING for idempotency
-- ============================================================

-- ============================================================
-- CITIES
-- ============================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Mumbai', 'mumbai', 'India', 'IN', 19.0760, 72.8777, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Delhi', 'delhi', 'India', 'IN', 28.6139, 77.2090, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bangalore', 'bangalore', 'India', 'IN', 12.9716, 77.5946, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Goa', 'goa', 'India', 'IN', 15.4909, 73.8278, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Kolkata', 'kolkata', 'India', 'IN', 22.5726, 88.3639, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Kathmandu', 'kathmandu', 'Nepal', 'NP', 27.7172, 85.3240, 'Asia/Kathmandu')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Colombo', 'colombo', 'Sri Lanka', 'LK', 6.9271, 79.8612, 'Asia/Colombo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Kandy', 'kandy', 'Sri Lanka', 'LK', 7.2906, 80.6337, 'Asia/Colombo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Male', 'male', 'Maldives', 'MV', 4.1755, 73.5093, 'Indian/Maldives')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- MUMBAI, INDIA (10 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Studs Sports Bar & Grill', 'the-studs-andheri-mumbai', c.id, 'Andheri West, Mumbai, Maharashtra 400053', 19.1364, 72.8296, 'Founded in Mumbai in 2017 with 15+ outlets across India. Large screens create a stadium-like atmosphere for IPL cricket and football. Live pub music between matches and craft beer on tap.', 'https://www.thestuds.in', 4.2, 1450, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The United Sports Bar & Grill', 'the-united-sports-bar-mumbai', c.id, 'Powai, Mumbai, Maharashtra 400076', 19.1176, 72.9060, 'Located in the eastern suburbs, this bar features a pool table, a big screen and HD TVs ideal for watching football, cricket and other sports matches live. Great pub grub and cold beers.', 'https://theunitedsportsbar.com', 4.1, 820, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bar Stock Exchange', 'bar-stock-exchange-lower-parel-mumbai', c.id, '1st Floor, C Wing, Trade World, Kamala Mills Compound, Lower Parel, Mumbai 400013', 19.0048, 72.8310, 'India''s first stock-exchange-themed bar where drink prices fluctuate based on real-time demand. Multiple screens show live cricket, football and F1. Electric atmosphere on match nights.', 'https://thebarstockexchange.com', 4.3, 3200, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'TAP Resto Bar', 'tap-resto-bar-mumbai', c.id, 'Andheri West, Off New Link Road, Mumbai, Maharashtra 400053', 19.1340, 72.8270, 'Features beer on tap, hearty pub food and big screens for live matches. Popular with ardent sports fans who gather for cricket and tennis. Buzzing atmosphere during IPL season.', 'https://taprestobar.com', 4.0, 950, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Havana Cafe & Bar', 'havana-cafe-bar-mumbai', c.id, 'Linking Road, Bandra West, Mumbai, Maharashtra 400050', 19.0596, 72.8295, 'Screens live football, tennis and cricket matches with an electric atmosphere during India''s cricket games. Fans cheer enthusiastically in a warm Latin-inspired setting with cocktails and bar bites.', NULL, 4.1, 680, 5, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boston Butt', 'the-boston-butt-mumbai', c.id, 'Hill Road, Bandra West, Mumbai, Maharashtra 400050', 19.0560, 72.8310, 'Popular for English Premier League screenings with a big screen and loyal crowd of football fans. Special EPL match-day drink deals. Arrive early as it fills up fast on game nights.', NULL, 4.0, 520, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bar Stock Exchange Bandra', 'bar-stock-exchange-bandra-mumbai', c.id, 'Kenilworth Building, 3rd Floor, Linking Road, Bandra West, Mumbai 400050', 19.0610, 72.8340, 'Bandra branch of the popular stock-exchange bar chain. Drink prices rise and fall in real time. Multiple screens for live sports and a buzzing crowd on IPL and EPL nights.', 'https://thebarstockexchange.com', 4.2, 2100, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Studs Thane', 'the-studs-thane-mumbai', c.id, 'Thane West, Mumbai Metropolitan Region, Maharashtra 400601', 19.2183, 72.9781, 'Thane branch of The Studs chain with large screens creating a stadium-like vibe. Popular for IPL and Champions League screenings. Live music between matches and extensive cocktail menu.', 'https://www.thestuds.in', 4.1, 980, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Irish House Colaba', 'irish-house-colaba-mumbai', c.id, 'Colaba Causeway, Colaba, Mumbai, Maharashtra 400005', 18.9217, 72.8317, 'Hand-picked selections of international beers, hearty Irish-inspired pub food and multiple screens for live sports. A favourite for football fans in South Mumbai.', 'https://theirishhouse.in', 4.3, 2800, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Underdoggs Sports Bar & Grill', 'underdoggs-mumbai', c.id, 'Phoenix Marketcity, LBS Marg, Kurla West, Mumbai 400070', 19.0860, 72.8910, 'India''s No.1 sports bar chain with projector screens, HD TVs and craft beers brewed in-house. Shows all major cricket, football and F1 events. Stadium-style seating for big matches.', 'https://underdoggs.com', 4.2, 1600, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'mumbai'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- DELHI, INDIA (8 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Underdoggs Sports Bar & Grill Aerocity', 'underdoggs-aerocity-delhi', c.id, 'Worldmark 2, Aerocity, New Delhi 110037', 28.5562, 77.1001, 'India''s premier sports bar chain. The Aerocity outlet features massive screens, craft beers, and a roaring crowd on IPL and EPL match nights. Full bar menu with Indian and Tex-Mex options.', 'https://underdoggs.com', 4.3, 1420, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'My Bar Headquarter', 'my-bar-hq-delhi', c.id, 'N-17, Outer Circle, Connaught Place, New Delhi 110001', 28.6315, 77.2167, 'A local favourite in Connaught Place with moderately priced drinks and an unmissable vibe. Popular among youngsters for cricket and football screenings on multiple screens.', NULL, 4.1, 3500, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Social Offline Hauz Khas', 'social-hauz-khas-delhi', c.id, '9-A & 12, Hauz Khas Village, New Delhi 110016', 28.5530, 77.1940, 'Trendy co-working-by-day, bar-by-night concept in Hauz Khas Village. Puts up huge screens for IPL with special drink deals. A magnet for sports lovers and the creative crowd.', 'https://socialoffline.in', 4.2, 4200, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Glued Reloaded', 'glued-reloaded-noida-delhi', c.id, 'Gardens Galleria Mall, Sector 38, Noida, Uttar Pradesh 201301', 28.5674, 77.3260, 'A 400-seater sports screening venue with a massive 20-feet screen for live sports. One of Delhi-NCR''s largest dedicated sports viewing spaces with surround sound and an energetic crowd.', NULL, 4.0, 780, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Irish House CP', 'irish-house-cp-delhi', c.id, 'E-18, Inner Circle, Connaught Place, New Delhi 110001', 28.6328, 77.2195, 'Popular Irish pub chain with a great selection of international beers and big screens for Premier League, IPL and rugby. Cosy wood-panelled interiors and excellent pub food.', 'https://theirishhouse.in', 4.3, 2600, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Yes Minister', 'yes-minister-delhi', c.id, 'Worldmark 1, Aerocity, New Delhi 110037', 28.5558, 77.0988, 'Retro-inspired gastrobar doubling as a gaming arcade with bowling lanes, pool tables, video games and foosball. Multiple screens for live sports with a fun, vibrant atmosphere.', NULL, 4.1, 920, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Castle''s Barbeque', 'castles-barbeque-delhi', c.id, 'Rajouri Garden, New Delhi 110027', 28.6466, 77.1225, 'Features seven live counters with 100+ delicacies, unlimited buffets and live dhol performances during IPL screenings. A unique sports dining experience with big screens everywhere.', NULL, 4.0, 1100, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Delhi Pavilion at Sheraton', 'delhi-pavilion-sheraton-delhi', c.id, 'Sheraton New Delhi Hotel, Saket District Centre, New Delhi 110017', 28.5241, 77.2144, 'Luxurious sports viewing inside the Sheraton Hotel. Reserve the venue for a special game. Upscale Indian and continental dining with premium cocktails and attentive service.', NULL, 4.4, 1850, 4, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'delhi'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- BANGALORE, INDIA (8 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dave & Buster''s Koramangala', 'dave-busters-koramangala-bangalore', c.id, '1st Floor, Forum Mall, Koramangala, Bengaluru 560095', 12.9344, 77.6117, 'Watch live sports on 25+ 4K screens with great food, drinks and game-day vibes. Crystal-clear coverage of cricket, F1, football, UFC, basketball and global tournaments like FIFA World Cup.', 'https://daveandbustersindia.com', 4.3, 2400, 25, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Buffalo Wild Wings', 'buffalo-wild-wings-bangalore', c.id, 'Indiranagar, 100 Feet Road, Bengaluru 560038', 12.9784, 77.6408, 'Touted as Bangalore''s largest sports screening bar with LED plasma screens everywhere including one massive display. Shows ISL, IPL, Formula 1, La Liga and EPL. Famous wings and cold beers.', 'https://buffalowildwings.in', 4.2, 1800, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Xtreme Sports Bar', 'xtreme-sports-bar-bangalore', c.id, 'Koramangala 5th Block, Bengaluru 560095', 12.9352, 77.6145, 'Sports-themed bar with three outlets in the city. State-of-the-art screens, spacious seating and a fine range of spirits and food. Top-rated for watching EPL and IPL in groups.', NULL, 4.1, 1200, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Big Pitcher', 'big-pitcher-bangalore', c.id, 'Old Airport Road, Domlur, Bengaluru 560071', 12.9601, 77.6387, 'One of Bangalore''s biggest brewpubs where you can catch live sports events over house-brewed beers and delicious bar bites. Massive open-air seating with screens and a party atmosphere.', 'https://bigpitcher.in', 4.2, 5500, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jeff''s at Royal Orchid', 'jeffs-royal-orchid-bangalore', c.id, 'Hotel Royal Orchid, 1 Golf Avenue, Old Airport Road, Bengaluru 560008', 12.9597, 77.6440, 'Jeff''s at Hotel Royal Orchid hosts all live sports screenings from EPL to IPL season. Extensive drinks menu in a refined hotel-bar setting. Perfect for a more relaxed sports viewing experience.', NULL, 4.3, 900, 6, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Doff Pub & Lounge', 'doff-pub-lounge-bangalore', c.id, 'Church Street, Bengaluru 560001', 12.9735, 77.6080, 'Top choice for sports enthusiasts with multiple screens and live streaming of football matches. Ideal for F1 races, cricket and football with a vibrant pub atmosphere and craft cocktails.', NULL, 4.0, 750, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Underdoggs Sports Bar Bangalore', 'underdoggs-bangalore', c.id, 'Residency Road, Bengaluru 560025', 12.9698, 77.6020, 'India''s No.1 sports bar chain with craft beers brewed in-house. Projector screens, HD TVs and stadium-style seating for cricket, football and F1. Lively crowd on match nights.', 'https://underdoggs.com', 4.2, 1350, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Le Meridien Sports Bar', 'le-meridien-sports-bar-bangalore', c.id, 'Le Meridien Bangalore, 28 Sankey Road, Bengaluru 560052', 12.9890, 77.5770, 'Upscale sports bar inside Le Meridien hotel. Large LED screens, luxe ambiance, great service, and premium food and drinks. A sophisticated setting for big-match evenings.', NULL, 4.4, 650, 6, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'bangalore'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- GOA, INDIA (6 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Underdoggs Sports Bar Goa', 'underdoggs-goa', c.id, 'Calangute-Baga Road, Calangute, North Goa 403516', 15.5449, 73.7554, 'Goa branch of India''s No.1 sports bar chain. Big screens showing IPL and football leagues. Craft beers you won''t find anywhere else in Goa, plus hearty bar food.', 'https://underdoggs.com', 4.1, 920, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'goa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sportsman Bar Calangute', 'sportsman-bar-calangute-goa', c.id, 'Calangute Beach Road, Calangute, North Goa 403516', 15.5438, 73.7558, 'Classic Goa sports bar with 2 TVs showing different matches, a free pool table and good-priced drinks. Friendly staff and a relaxed holiday vibe. Popular with tourists and locals alike.', NULL, 4.0, 1800, 2, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'goa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Angaara BBQ Grill n Kickass Sportsbar', 'angaara-bbq-sportsbar-goa', c.id, 'Fort Aguada Road, Candolim, North Goa 403515', 15.5152, 73.7700, 'Screens everywhere showing different sports with fans cheering on their teams. Serves Indian, Chinese, Italian and Goan cuisine. A lively match-night destination in Candolim.', NULL, 4.2, 640, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'goa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'J29''s Sports Bar', 'j29s-sports-bar-goa', c.id, 'Beach Road, Candolim, North Goa 403515', 15.5170, 73.7690, 'Features 2 massive outdoor screens and shows all sports with different games on each. Perfect for watching football and cricket in Goa''s balmy weather with a cold Kingfisher.', NULL, 4.1, 420, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'goa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Penalty Box', 'the-penalty-box-goa', c.id, 'Tito''s Lane, Baga, North Goa 403516', 15.5540, 73.7515, 'A sports bar perfect for match-day excitement and lively conversation on Baga''s famous Tito''s Lane. Cold beers, pub grub and football on big screens in a buzzing atmosphere.', NULL, 4.0, 380, 4, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'goa'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Peace Bar at Park Calangute', 'peace-bar-park-calangute-goa', c.id, 'The Park Calangute, Calangute, North Goa 403516', 15.5430, 73.7580, 'Hotel bar at The Park Calangute with picture-perfect sunset views and cricket matches on a large screen. Upscale cocktails and Pan-Asian bites in a chic resort setting.', NULL, 4.3, 560, 3, 'relaxed', '$$$', true, true, true
FROM cities c WHERE c.slug = 'goa'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- KOLKATA, INDIA (4 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dugout Kolkata', 'dugout-kolkata', c.id, 'Park Street Area, Kolkata 700016', 22.5518, 88.3530, 'Football-themed sports bar with artificial grass flooring, football-themed lights and a huge projection screen for live sports. One of Kolkata''s most popular match-night destinations.', NULL, 4.1, 680, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'kolkata'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Five Mad Men', 'five-mad-men-kolkata', c.id, 'Camac Street, Kolkata 700017', 22.5450, 88.3520, 'India''s first gastropub featuring six TV sets including a massive 200-square-foot screen for live sports. Offers 1+1 drink deals on match days. A pioneer in Kolkata''s sports bar scene.', NULL, 4.2, 1500, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'kolkata'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Scrapyard', 'scrapyard-kolkata', c.id, 'Prince Anwar Shah Road, Kolkata 700045', 22.5080, 88.3670, 'Energetic live screening bar with a 4.6-star rating and a vibrant atmosphere. Stellar selection of drinks and lively crowd make it the best place to enjoy IPL with friends.', NULL, 4.3, 920, 5, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'kolkata'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Irish House Quest Mall', 'irish-house-quest-kolkata', c.id, 'Quest Mall, Syed Amir Ali Avenue, Kolkata 700019', 22.5380, 88.3500, 'High-energy match-day destination inside Quest Mall. Extensive selection of beers and cocktails with a lively atmosphere. Perfect for enjoying IPL, EPL and Champions League with friends.', 'https://theirishhouse.in', 4.2, 1100, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'kolkata'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- KATHMANDU, NEPAL (5 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Arena Sports Lounge', 'arena-sports-lounge-kathmandu', c.id, 'Thamel, 75m NW from Kathmandu Guest House, Kathmandu 44600', 27.7153, 85.3120, 'Kathmandu''s top sports bar since 2013. Caters to every sport from across the world on big screens with surround sound. Takes advance bookings and delivers the matches fans love to watch.', NULL, 4.2, 580, 6, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'kathmandu'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tranzit Cafe and Sports Bar', 'tranzit-cafe-sports-bar-kathmandu', c.id, 'Maitighar, Kathmandu 44600', 27.6940, 85.3230, 'Carefully placed large screens ensure no matter where you sit, you can watch the game. Popular for Premier League and Champions League screenings with cold beers and cafe bites.', NULL, 4.0, 340, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'kathmandu'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hops & Herbs', 'hops-and-herbs-kathmandu', c.id, 'Gairidhara, Kathmandu 44600', 27.7200, 85.3180, 'Nepal''s first-ever beer garden with a huge screen for live match screenings. Craft beers, garden seating and a laidback atmosphere for watching Premier League and cricket.', NULL, 4.1, 420, 3, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'kathmandu'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'London Pub', 'london-pub-kathmandu', c.id, 'Durbarmarg, Kathmandu 44600', 27.7130, 85.3160, 'English-themed pub in central Kathmandu featuring live music, indoor games, an overwhelming liquor selection and sports screening. A popular spot for EPL nights.', NULL, 4.0, 380, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'kathmandu'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Strand', 'the-strand-kathmandu', c.id, 'Battisputali, Kathmandu 44600', 27.7090, 85.3390, 'Beach-themed rooftop restaurant showing most Premier League matches. Relaxed rooftop setting with views of the Kathmandu valley, cold drinks and a loyal crowd of football fans.', NULL, 4.1, 290, 3, 'relaxed', '$', true, true, true
FROM cities c WHERE c.slug = 'kathmandu'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- COLOMBO, SRI LANKA (5 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Playtrix Sports Bar and Cafe', 'playtrix-sports-bar-colombo', c.id, 'Colombo City Centre, Level 1, 137 Sir James Pieris Mawatha, Colombo 00200', 6.9271, 79.8550, 'Colombo''s premier sports bar with giant HD TVs and digital transmissions of every sport channel available. Open from 11am to 3:30am daily. Football, rugby and cricket on demand.', 'https://playtrix.lk', 4.3, 1200, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'colombo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Bradman Bar at Cricket Club Cafe', 'bradman-bar-cricket-club-colombo', c.id, '34 Queens Road, Colombo 03', 6.9110, 79.8570, 'The doyen of Colombo''s sports bars. Cricket memorabilia adorns the walls and display cabinets. Cricket videos shown on two screens all day. A pilgrimage for cricket lovers visiting Sri Lanka.', NULL, 4.4, 850, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'colombo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Cheers Pub at Cinnamon Grand', 'cheers-pub-cinnamon-grand-colombo', c.id, 'Cinnamon Grand Hotel, 77 Galle Road, Colombo 02', 6.9175, 79.8485, 'Lively pub inside the Cinnamon Grand hotel. Multiple screens for cricket, football and rugby. Premium drinks and pub food in a polished hotel setting. A favourite for expats and locals.', NULL, 4.2, 680, 6, 'casual', '$$$', true, false, true
FROM cities c WHERE c.slug = 'colombo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'ALL STAR Sports Lounge', 'all-star-sports-lounge-colombo', c.id, 'Bauddhaloka Mawatha, Colombo 04', 6.8980, 79.8610, 'Dedicated sports lounge in Colombo with HD screens showing live sports events from cricket to Premier League football. Cold beers, cocktails and hearty Sri Lankan and Western bar food.', 'https://www.allstar.lk', 4.1, 450, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'colombo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Main Sports Bar & Restaurant', 'main-sports-bar-colombo', c.id, 'Duplication Road, Colombo 04', 6.8952, 79.8560, 'Popular sports bar and restaurant in Colombo with multiple screens for live match viewing. Wide menu of Sri Lankan and international cuisine. Regular crowd for cricket and football.', NULL, 4.0, 320, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'colombo'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- KANDY, SRI LANKA (3 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sizzle Sports Pub', 'sizzle-sports-pub-kandy', c.id, 'Dalada Veediya, Kandy 20000', 7.2935, 80.6350, 'Kandy''s go-to sports pub with karaoke, live sports on screens and delicious food. Friendly staff, cold beers and pool tables make it a fun match-night hangout.', NULL, 4.0, 280, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'kandy'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Slightly Chilled Rooftop & Sports Bar', 'slightly-chilled-kandy', c.id, 'Kandy City Centre Area, Kandy 20000', 7.2910, 80.6340, 'Rooftop sports bar with the best sunset views in Kandy. Happy hour from 5-6 PM. Chinese and international cuisine with live sports on screens. A relaxed spot above the city.', NULL, 4.1, 350, 3, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'kandy'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Pub Kandy', 'the-pub-kandy', c.id, 'Peradeniya Road, Kandy 20000', 7.2880, 80.6290, 'Popular spot where sports fans gather to cheer on their favourite teams. Cold Lion lagers, pub grub and screens showing cricket, football and rugby.', NULL, 3.9, 210, 3, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'kandy'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- MALE, MALDIVES (3 venues)
-- ============================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Jazz Cafe Male', 'jazz-cafe-male', c.id, 'Boduthakurufaanu Magu, Male 20026', 4.1753, 73.5089, 'Male''s most popular cafe-bar with live jazz performances and sports screenings. Watch cricket and football over excellent coffee and mocktails in an enchanting ambience.', NULL, 4.2, 480, 3, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'male'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'De Public Lounge & Restaurant', 'de-public-lounge-male', c.id, 'Majeedhee Magu, Male 20045', 4.1748, 73.5095, 'Vibrant lounge in central Male offering Arabic cuisine, mocktails and live sports on screens. Popular for cricket and football viewing with locals and expats alike.', NULL, 4.0, 320, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'male'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'IB Lounge & Bistro', 'ib-lounge-bistro-male', c.id, 'Ameenee Magu, Male 20040', 4.1740, 73.5100, 'Karaoke meets live sports in this popular Male hangout. Screens show cricket World Cup, Premier League and international football. Delicious cuisine and a sociable crowd.', NULL, 4.1, 260, 3, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'male'
ON CONFLICT (slug) DO NOTHING;
