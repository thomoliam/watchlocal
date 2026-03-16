-- ============================================================
-- East Asia Venue Seed
-- Real venues researched from web searches March 2026
-- Covers: Japan, South Korea, Hong Kong, Taiwan, China
-- Cities already exist in 009_cities_extra.sql
-- ON CONFLICT (slug) DO NOTHING for idempotency
-- ============================================================


-- ============================================
-- TOKYO, JAPAN (12 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hobgoblin Shibuya', 'hobgoblin-shibuya-tokyo', c.id, '2F, 3-22-7 Dogenzaka, Shibuya-ku, Tokyo 150-0043', 35.6580, 139.6976, 'Iconic British-style pub near Shibuya Station with multiple large screens showing Premier League, rugby, and international sports. Established 2004. Wide draught beer selection and classic pub food.', 'https://www.hobgoblin.jp', 4.1, 520, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hobgoblin Roppongi', 'hobgoblin-roppongi-tokyo', c.id, '3F, 3-16-33 Roppongi, Minato-ku, Tokyo 106-0032', 35.6632, 139.7313, 'Roppongi branch of the beloved British pub chain. Screens showing EPL, Champions League, rugby, cricket, and NFL. Craft ales and pub grub in a lively international atmosphere.', 'https://www.hobgoblin.jp', 4.0, 410, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Footnik Ebisu', 'footnik-ebisu-tokyo', c.id, '1-11-2 Ebisu, Shibuya-ku, Tokyo 150-0013', 35.6468, 139.7100, 'English-friendly football pub in Ebisu with passionate matchday atmosphere. Online seat reservations for big games. Screens for Premier League, La Liga, Serie A, and J-League.', 'https://www.footnik.net', 4.2, 380, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'HUB Shibuya', 'hub-shibuya-tokyo', c.id, '1F, 2-29-11 Dogenzaka, Shibuya-ku, Tokyo 150-0043', 35.6590, 139.6983, 'Popular British-style pub chain location in Shibuya. No cover charge, pay-as-you-go system. Multiple screens for football, baseball, and major sporting events. Affordable drinks.', 'https://www.pub-hub.com', 3.9, 620, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Public Red', 'the-public-red-tokyo', c.id, '2-7-9 Kitazawa, Setagaya-ku, Tokyo 155-0031', 35.6614, 139.6688, 'Stylish sports bar near Shimokitazawa serving six types of Japanese craft beer, sake, wine, and cocktails. Relaxed atmosphere with quality screens for live sports viewing.', NULL, 4.0, 190, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'B One Sports Bar', 'b-one-sports-bar-tokyo', c.id, 'B1F, 7-13-8 Roppongi, Minato-ku, Tokyo 106-0032', 35.6598, 139.7306, 'Spacious underground sports bar in Roppongi with multiple large screens showing international sports. Features billiards, darts, and a full food menu. Popular for boxing and MMA events.', NULL, 4.1, 340, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Irish Pub Celts Kanda', 'celts-kanda-tokyo', c.id, '3-2-9 Kanda Ogawamachi, Chiyoda-ku, Tokyo 101-0052', 35.6946, 139.7618, 'Cozy Irish pub in the Kanda business district. Multiple screens for Premier League and rugby union. Guinness on tap and hearty pub food. Popular with after-work crowds.', NULL, 4.0, 260, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '2ND HALF', 'second-half-tokyo', c.id, '2F, 1-7-7 Jinnan, Shibuya-ku, Tokyo 150-0041', 35.6610, 139.6998, 'Dedicated sports bar near Shibuya with an exciting game-day atmosphere. Shows football, baseball, basketball, and combat sports. Draft beer and casual bar snacks.', NULL, 4.2, 150, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Ginza', 'hooters-ginza-tokyo', c.id, '8-4-23 Ginza, Chuo-ku, Tokyo 104-0061', 35.6700, 139.7625, 'American-style sports restaurant in upscale Ginza. Big screens for NFL, MLB, NBA, and international football. Full American menu with wings, burgers, and cold beer.', 'https://www.hooters.co.jp', 3.8, 480, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Paddy''s Junction', 'paddys-junction-tokyo', c.id, '5-3-18 Roppongi, Minato-ku, Tokyo 106-0032', 35.6626, 139.7326, 'Authentic Irish pub in Roppongi showing all major football, rugby, and GAA matches. Known for hearty Irish fare, Guinness on tap, and friendly craic.', NULL, 4.1, 290, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Golden Gate Roppongi', 'golden-gate-roppongi-tokyo', c.id, '7-14-1 Roppongi, Minato-ku, Tokyo 106-0032', 35.6594, 139.7310, 'American-style sports bar with a California vibe. Multiple screens for US sports, football, and boxing. Craft cocktails and bar bites in a modern setting.', NULL, 4.0, 200, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Nihonbashi Philly', 'nihonbashi-philly-tokyo', c.id, '2-3-4 Nihonbashi, Chuo-ku, Tokyo 103-0027', 35.6838, 139.7740, 'Philadelphia-themed sports bar in Nihonbashi showing NFL, MLB, NBA, and NHL. Cheesesteaks and American bar food. Passionate Philly fans'' hangout in Tokyo.', NULL, 4.3, 170, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'tokyo'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- OSAKA, JAPAN (6 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'DIJEST Sports Bar', 'dijest-osaka', c.id, '5F HIPS Building, 2-8-22 Shinsaibashisuji, Chuo-ku, Osaka 542-0085', 34.6716, 135.5013, 'Kansai''s largest sports bar with capacity for 200 guests and a massive 150-inch screen. Located in Dotonbori, near Namba Station Exit 15-B. Shows all major sports events.', NULL, 4.0, 310, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'osaka'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Coolabah Sports Cafe', 'coolabah-osaka', c.id, '1-9-1 Higashishinsaibashi, Chuo-ku, Osaka 542-0083', 34.6720, 135.5055, 'Australian and New Zealand themed sports cafe-bar. Live sports on big screens with wide selection of international beers. Open daily from 5 PM. Casual Aussie vibe.', 'http://coolabah.jp', 4.2, 280, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'osaka'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Australian Pub Osaka', 'australian-pub-osaka', c.id, '2-5-15 Nishi-Shinsaibashi, Chuo-ku, Osaka 542-0086', 34.6735, 135.4985, 'Newest Aussie pub in Osaka with big screens for catching all the games. Indoor and outdoor seating with Aussie-style food and drinks. Perfect for rugby and cricket fans.', 'https://www.theaustralianpub.com', 4.1, 190, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'osaka'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Foot Rock & Beers', 'foot-rock-beers-osaka', c.id, '2-3-21 Dotonbori, Chuo-ku, Osaka 542-0071', 34.6686, 135.5028, 'Vibrant sports bar in Dotonbori for sports enthusiasts and beer lovers. Lively atmosphere with big screens for football, baseball, and rugby. Craft beer selection.', NULL, 4.1, 220, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'osaka'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pumpkin Rocks', 'pumpkin-rocks-osaka', c.id, 'B1F Plaza Umeda Building, 8-17 Taiyuji-cho, Kita-ku, Osaka 530-0051', 34.7025, 135.4983, 'Basement sports bar near Umeda Station. Opens as a full sports bar during major events with projector, 130-inch screen, and five 32-inch monitors for 360-degree viewing. Reservation-based.', NULL, 4.0, 150, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'osaka'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'HUB Namba', 'hub-namba-osaka', c.id, '4-2-4 Nanba, Chuo-ku, Osaka 542-0076', 34.6654, 135.5017, 'Namba branch of Japan''s popular British-style pub chain. Pay-as-you-go, no cover charge. Multiple screens for football, baseball, and international sports. Affordable drinks.', 'https://www.pub-hub.com', 3.9, 350, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'osaka'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- KYOTO, JAPAN (4 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pig & Whistle Kyoto', 'pig-and-whistle-kyoto', c.id, '2F, 115 Nakanosho, Shinkyogoku-dori, Sanjo-sagaru, Nakagyo-ku, Kyoto 604-8042', 35.0080, 135.7670, 'Classic British pub on Sanjo with six large TVs and 13 international beers on tap. Shows all rugby, Premier League, and cricket matches including paid channels. Cozy two-floor setup.', 'http://www.pigandwhistle.beer', 4.2, 340, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'kyoto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'HUB Shijo Karasuma', 'hub-shijo-karasuma-kyoto', c.id, 'COCON KARASUMA, 620 Naginataboko-cho, Shimogyo-ku, Kyoto 600-8411', 35.0036, 135.7590, 'British-style pub in the COCON KARASUMA building near Shijo Karasuma Station. No cover charge. Multiple screens for sports. Popular with international visitors and locals alike.', 'https://www.pub-hub.com', 3.8, 270, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'kyoto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Irish Pub Wisteria', 'irish-pub-wisteria-kyoto', c.id, '2F, 261 Kitagawa, Nawate-dori, Shijo-agaru, Higashiyama-ku, Kyoto 605-0064', 35.0052, 135.7720, 'Cozy Irish pub in Gion area with affordable drinks and well-spaced seating. Shows Premier League, rugby, and GAA on multiple screens. Guinness on tap and casual bar food.', NULL, 4.1, 160, 4, 'relaxed', '$', true, false, true
FROM cities c WHERE c.slug = 'kyoto'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dining Darts Bar Bee Kawaramachi', 'bar-bee-kawaramachi-kyoto', c.id, '3F, 305 Sakuranocho, Kawaramachi-dori, Shijo-agaru, Nakagyo-ku, Kyoto 604-8024', 35.0055, 135.7695, 'Modern industrial-design sports bar with premium drinks, dartboards, and multiple screens. Upscale atmosphere with well-spaced tables for private viewing of live sports.', NULL, 4.0, 130, 5, 'upscale', '$$', true, false, true
FROM cities c WHERE c.slug = 'kyoto'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- SEOUL, SOUTH KOREA (10 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sam Ryan''s Sports Bar & Grill Itaewon', 'sam-ryans-itaewon-seoul', c.id, '34 Itaewon-ro 27ga-gil, Yongsan-gu, Seoul 04348', 37.5344, 126.9876, 'The original Itaewon sports bar serving the expat community since the early days. Multiple big screens showing NFL, EPL, NBA, MLB, and UFC. Staff will tune any channel on request.', NULL, 4.2, 680, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Rose & Crown', 'rose-and-crown-seoul', c.id, '28 Itaewon-ro 27ga-gil, Yongsan-gu, Seoul 04348', 37.5346, 126.9870, 'Iconic Itaewon British pub with authentic atmosphere. Broadcasts all major football matches including Premier League, Champions League, and international fixtures. Draught ales and pub food.', NULL, 4.1, 420, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bonghwangdang', 'bonghwangdang-seoul', c.id, '11 Wausan-ro 29na-gil, Mapo-gu, Seoul 04066', 37.5520, 126.9250, 'Legendary Liverpool FC pub in Hongdae that draws passionate football fans on matchdays. Red-themed decor and electric atmosphere during EPL fixtures. Korean craft beer and bar snacks.', NULL, 4.3, 310, 6, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beer O''Clock Sinchon', 'beer-oclock-sinchon-seoul', c.id, '55 Yonsei-ro, Seodaemun-gu, Seoul 03722', 37.5568, 126.9370, 'Popular with expats in the Sinchon university area. Affordable beer, inexpensive pizza, and all the big games and sporting events on screen. Casual student-friendly vibe.', NULL, 4.0, 250, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Double Play Chicken', 'double-play-chicken-seoul', c.id, '15 Gangnam-daero 102-gil, Gangnam-gu, Seoul 06134', 37.5005, 127.0280, 'Korean baseball-themed sports chicken pub in Gangnam. Screens showing KBO, MLB, and major sports events. Famous for Korean fried chicken and beer combos. Unique local experience.', NULL, 4.2, 380, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Wolfhound Irish Pub', 'wolfhound-itaewon-seoul', c.id, '128 Itaewon-ro, Yongsan-gu, Seoul 04349', 37.5350, 126.9900, 'Authentic Irish pub in Itaewon with Guinness and Kilkenny on tap. Shows all Six Nations rugby, Premier League, and GAA matches. Live music on weekends and hearty pub food.', NULL, 4.1, 290, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rocky Mountain Tavern', 'rocky-mountain-tavern-seoul', c.id, '20 Itaewon-ro 20-gil, Yongsan-gu, Seoul 04349', 37.5340, 126.9890, 'North American-style sports tavern in Itaewon showing NHL, NFL, NBA, and MLB. Popular with Canadian and American expats. Wings, nachos, and imported draft beers.', NULL, 4.0, 220, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Phillies Pub Gangnam', 'phillies-pub-gangnam-seoul', c.id, '8 Teheran-ro 1-gil, Gangnam-gu, Seoul 06131', 37.4985, 127.0265, 'Lively Gangnam sports pub with large screens and surround sound. Shows EPL, KBO baseball, NBA, and UFC. Cocktails, draft beer, and Korean-fusion bar food.', NULL, 4.0, 180, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Booth Brewing Gangnam', 'booth-brewing-gangnam-seoul', c.id, '442 Dosan-daero, Gangnam-gu, Seoul 06040', 37.5230, 127.0330, 'Seoul''s popular craft brewery taproom with screens for major sporting events. House-brewed IPAs, stouts, and lagers alongside quality bar food. Modern industrial design.', 'https://www.boothbrewing.com', 4.3, 550, 4, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Thursday Party Hongdae', 'thursday-party-hongdae-seoul', c.id, '19 Wausan-ro 21-gil, Mapo-gu, Seoul 04066', 37.5530, 126.9260, 'Energetic Hongdae sports bar with youthful crowd. Multiple screens for football, esports, and Korean baseball. Affordable beer towers and bar snacks. Late-night atmosphere.', NULL, 3.9, 200, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'seoul'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- BUSAN, SOUTH KOREA (5 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'HQ Bar Gwangalli', 'hq-bar-gwangalli-busan', c.id, '219 Gwanganhaebyeon-ro, Suyeong-gu, Busan 48280', 35.1533, 129.1186, 'The headquarters for expat nightlife in Busan with a million-dollar view of the Gwangan Diamond Bridge. Best place in town to watch sports with quality drinks, live music, and pub food.', NULL, 4.3, 420, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'busan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Gorilla Brewing Gwangalli', 'gorilla-brewing-gwangalli-busan', c.id, '125 Gwanganhaebeon-ro, Suyeong-gu, Busan 48280', 35.1540, 129.1210, 'Craft brewery near Gwangalli Beach with 12 taps of house-brewed beer. Big screens for major sporting events. Stunning beach views through expansive windows.', 'https://www.gorillabrewing.co.kr', 4.4, 510, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'busan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'LA Bar and Grill Busan', 'la-bar-grill-busan', c.id, '52 Gwanganhaebyeon-ro 34beon-gil, Suyeong-gu, Busan 48280', 35.1530, 129.1195, 'Sports bar directly across from the beach with views of Busan''s Diamond Bridge. Darts, great music, and international TV access for all major leagues. Lightshow and fireworks nights.', NULL, 4.1, 290, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'busan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sam Ryan''s Sports Bar Busan', 'sam-ryans-busan', c.id, '24 Gunam-ro, Haeundae-gu, Busan 48094', 35.1628, 129.1602, 'Haeundae branch of Seoul''s famous sports bar chain. Multiple screens for EPL, NFL, NBA, and UFC. Full Western bar food menu with cold draft beers.', NULL, 4.0, 350, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'busan'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fuzzy Navel Haeundae', 'fuzzy-navel-haeundae-busan', c.id, '14 Gunam-ro 20beon-gil, Haeundae-gu, Busan 48094', 35.1625, 129.1610, 'Cozy sports pub in the Haeundae nightlife district. Shows Premier League, KBO, and international football. Draft cocktails and Korean bar snacks in a relaxed setting.', NULL, 4.0, 180, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'busan'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- HONG KONG (12 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Wan Chai Stadium', 'wan-chai-stadium-hk', c.id, '166 Lockhart Road, Wan Chai, Hong Kong', 22.2778, 114.1730, 'Premier British-style sports pub on Wan Chai''s famous bar strip with seven TVs including two 100-inch screens. Shows rugby, football, F1, and golf until 3AM nightly.', NULL, 4.2, 520, 7, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Globe', 'the-globe-hk', c.id, '45-53A Graham Street, Central, Hong Kong', 22.2820, 114.1530, 'Central''s original gastropub and staple for sports viewing. Over 200 local and international draught beers, award-winning food, and spacious layout with multiple TVs for all major sports.', 'https://theglobe.com.hk', 4.3, 680, 10, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Forbes 36 Sports Bar', 'forbes-36-hk', c.id, '36 Forbes Street, Kennedy Town, Hong Kong', 22.2840, 114.1280, 'Kennedy Town sports bar with six large TV screens and surround-sound system. Open until 2AM for late-night games. Great for EPL, rugby, and UFC viewing with cold craft beers.', NULL, 4.1, 290, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Blind Pig', 'the-blind-pig-hk', c.id, '26 Tai On Street, Sai Wan Ho, Hong Kong', 22.2820, 114.2200, 'Neighbourhood gastropub in Sai Wan Ho with meaty menu and fresh draught beer. Shows football, rugby, golf, and MMA on three large TVs. Relaxed local atmosphere.', NULL, 4.2, 210, 3, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Centrico', 'centrico-hk', c.id, 'G/F, 52 Lockhart Road, Wan Chai, Hong Kong', 22.2775, 114.1720, 'Corner bar on Lockhart and Luard Road with multiple flat-screens and comfortable seating. Open until 4AM nightly, perfect for catching games in other time zones. Bar snacks and drinks.', NULL, 4.0, 340, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Spot Bar', 'the-spot-bar-hk', c.id, '40 Staunton Street, Central, Hong Kong', 22.2810, 114.1530, 'Located near Staunton Street in Central, shows American football, EPL, rugby, and F1 on a 65-inch screen. Intimate setting with craft cocktails and bar snacks.', NULL, 4.0, 180, 3, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '17 Fenwick', 'seventeen-fenwick-hk', c.id, '17 Fenwick Street, Wan Chai, Hong Kong', 22.2780, 114.1710, 'Spacious interactive sports bar in Wan Chai boasting a 170-inch HD screen and several smaller screens. Premium sports viewing for major international events with bar food and drinks.', NULL, 4.1, 310, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Trafalgar Wan Chai', 'trafalgar-wan-chai-hk', c.id, 'G/F, 23 Luard Road, Wan Chai, Hong Kong', 22.2772, 114.1700, 'Traditional British pub with eight TV screens inside and two 120-inch outdoor projectors on the beer garden balcony. Great for rugby sevens season and EPL weekends.', NULL, 4.2, 380, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The White Stag', 'the-white-stag-hk', c.id, '14A Lockhart Road, Wan Chai, Hong Kong', 22.2776, 114.1715, 'Steadfast Lockhart Road bar known for affordable prices and friendly service. Multiple screens for football, motorsports, and rugby. Popular with regulars and expats.', NULL, 4.0, 250, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Joe''s Billiards & Bar', 'joes-billiards-hk', c.id, '11/F, 1 Knutsford Terrace, Tsim Sha Tsui, Kowloon, Hong Kong', 22.2990, 114.1740, 'Tsim Sha Tsui sports bar with TVs screening sports all day, pool tables, dart machines, and beer pong tables. Great for groups watching games across the harbour.', NULL, 4.0, 390, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Dusk Till Dawn', 'dusk-till-dawn-hk', c.id, 'G/F, 76-84 Jaffe Road, Wan Chai, Hong Kong', 22.2780, 114.1740, 'Late-night Wan Chai bar with screens showing football, rugby, and combat sports. Open until 6AM on weekends. Affordable drinks and a buzzy late-night sports-watching crowd.', NULL, 3.9, 270, 6, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Delaney''s Wan Chai', 'delaneys-wan-chai-hk', c.id, 'G/F, One Capital Place, 18 Luard Road, Wan Chai, Hong Kong', 22.2774, 114.1705, 'Long-established Irish pub in Wan Chai showing all major rugby, football, and GAA matches. Guinness on tap, traditional Irish fare, and an authentic pub atmosphere.', 'https://www.delaneys.com.hk', 4.1, 450, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'hong-kong'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- TAIPEI, TAIWAN (8 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'On Tap', 'on-tap-taipei', c.id, 'No. 15, Lane 553, Zhongxiao East Road, Section 4, Da''an District, Taipei 106', 25.0416, 121.5570, 'British-style sports bar between MRT Zhongxiao Dunhua and National Father''s Memorial Hall stations. Diverse sports from football and rugby to F1 and cricket. Stays open late for Six Nations and UFC.', NULL, 4.2, 380, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Brass Monkey', 'brass-monkey-taipei', c.id, 'No. 166, Fuxing North Road, Songshan District, Taipei 105', 25.0520, 121.5440, 'Near Nanjing Fuxing MRT, owned by a former football player. American vintage feel with soccer jerseys on walls. Multiple screens for football, CPBL baseball, F1, and rugby.', NULL, 4.1, 520, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'G Club Bar', 'g-club-bar-taipei', c.id, 'B1, No. 30, Kunming Street, Wanhua District, Taipei 108', 25.0430, 121.5060, 'Spacious basement sports bar in Ximending with comfortable viewing areas. Several TV screens broadcasting football, baseball, and basketball. Cocktails and bar snacks.', NULL, 4.0, 240, 8, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mingle Bar & Bistro', 'mingle-bar-bistro-taipei', c.id, 'No. 10, Lane 25, Nanjing West Road, Zhongshan District, Taipei 104', 25.0530, 121.5230, 'Hidden in an alleyway near Zhongshan Station with a big screen for baseball and basketball. Craft cocktails, bistro food, and a cozy atmosphere for sports fans.', NULL, 4.1, 190, 4, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sports Nation Taipei Dome', 'sports-nation-taipei', c.id, 'Taipei Dome, No. 2, Section 4, Zhongxiao East Road, Xinyi District, Taipei 110', 25.0442, 121.5630, 'Located inside the Taipei Dome complex. Large screens broadcasting live games with semi-private booth areas and dedicated group TVs. Modern sports bar experience with full food menu.', NULL, 4.3, 150, 12, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Revolver', 'revolver-taipei', c.id, 'No. 72, Section 1, Anhe Road, Da''an District, Taipei 106', 25.0380, 121.5490, 'Rock-themed bar in Da''an that doubles as a sports venue during major events. Shows EPL, NBA, and NFL on big screens. Craft beers, whiskey, and American-style bar food.', NULL, 4.0, 280, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'My Other Place', 'my-other-place-taipei', c.id, 'No. 9, Lane 8, Tianmu East Road, Shilin District, Taipei 111', 25.1150, 121.5310, 'Tianmu institution popular with American expats. Shows all NFL, NBA, and MLB games. Classic American sports bar food with cold beer. Neighbourhood hangout with loyal regulars.', NULL, 4.2, 310, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Babe 18', 'babe-18-taipei', c.id, 'No. 18, Songshou Road, Xinyi District, Taipei 110', 25.0360, 121.5670, 'Upscale lounge-bar in Xinyi that screens major sporting events on weekends. Multiple TVs and a stylish ambiance. Premium cocktails and international cuisine.', 'https://www.babe18.com', 4.0, 420, 6, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'taipei'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- SHANGHAI, CHINA (8 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Camel Sports Bar', 'the-camel-shanghai', c.id, '1 Yueyang Road, Xuhui District, Shanghai 200031', 31.2120, 121.4485, 'Voted Shanghai''s Best Sports Bar since opening. Features 4 TV walls and 11 additional 70-inch screens. Australian management ensures rugby, AFL, NFL, baseball, and college basketball coverage.', NULL, 4.3, 620, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'CAGES Bar & Sports', 'cages-shanghai', c.id, '58 Shimen Er Lu, Jing''an District, Shanghai 200041', 31.2280, 121.4560, 'Shanghai''s largest sports complex with 70+ screens, batting cages, turf field, and arcade games. American-style food and massive beer selection. Ultimate sports entertainment destination.', 'https://www.cagesbar.com', 4.2, 890, 70, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Big Bamboo', 'big-bamboo-shanghai', c.id, '132 Nanyang Lu, Jing''an District, Shanghai 200040', 31.2305, 121.4430, 'Shanghai''s longest running foreign-owned restaurant brand. Sports on numerous TVs, bar games, and a party atmosphere. American-style food and cold beers. An expat institution.', 'https://www.bigbamboo.cn', 4.0, 580, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shanghai Brewery', 'shanghai-brewery', c.id, '15 Dongping Lu, Xuhui District, Shanghai 200031', 31.2100, 121.4475, 'Craft brewery with hardwood floors and high ceilings. 14 flat-screen TVs and 4 large-screen projectors. House-brewed beers and quality Western food in a relaxed setting.', 'https://www.shanghaibrewery.com', 4.2, 470, 18, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Spot Shanghai', 'the-spot-shanghai', c.id, '255 Tongren Lu, Jing''an District, Shanghai 200040', 31.2290, 121.4500, 'Live bands and global sports events with patio seating. Popular on weekends with a cosmopolitan crowd. Full bar menu with craft cocktails and international cuisine.', NULL, 4.1, 310, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Park Tavern', 'park-tavern-shanghai', c.id, '168 Datian Lu, Jing''an District, Shanghai 200041', 31.2340, 121.4510, 'Classic British pub open for over 12 years in Shanghai. Two screens showing just about every sport. Authentic pub atmosphere with real ales, Guinness, and traditional pub grub.', NULL, 4.0, 280, 2, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boxing Cat Brewery', 'boxing-cat-shanghai', c.id, '82 Fuxing Xi Lu, Xuhui District, Shanghai 200031', 31.2090, 121.4440, 'Award-winning Shanghai craft brewery with multiple screens for live sports. House-brewed ales and lagers with American-style bar food. Relaxed atmosphere with loyal expat following.', 'https://www.boxingcatbrewery.com', 4.3, 520, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Perry''s Sports Bar', 'perrys-sports-bar-shanghai', c.id, '40 Yongfu Lu, Xuhui District, Shanghai 200031', 31.2110, 121.4460, 'Intimate sports bar in the Former French Concession. Multiple screens showing Premier League, NBA, and rugby. Comfortable seating, cold beers, and late-night sports viewing.', NULL, 4.0, 180, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'shanghai'
ON CONFLICT (slug) DO NOTHING;


-- ============================================
-- BEIJING, CHINA (6 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Frank''s Place', 'franks-place-beijing', c.id, 'West of Rosedale Hotel, Jiangtai Xi Lu, Chaoyang District, Beijing 100015', 39.9640, 116.4860, 'The oldest expat bar in Beijing, like being transported to a sports bar in the heart of America. Numerous TVs, pool table, Guinness on tap, and classic bar grub. Shows NFL, EPL, and MLB.', NULL, 4.1, 380, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'beijing'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'V Sports Bar', 'v-sports-bar-beijing', c.id, '1/F Workers'' Stadium North Road, Chaoyang District, Beijing 100027', 39.9310, 116.4460, 'Fine sports bar near Workers'' Stadium with raised long tables and spacious booths. Plentiful TV screens including a mini jumbotron hanging in the middle of the room. Great for football and basketball.', NULL, 4.0, 290, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'beijing'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'CuJu', 'cuju-beijing', c.id, '50 Beiluogu Xiang, Dongcheng District, Beijing 100009', 39.9380, 116.4060, 'Cozy hutong sports bar south of Beixin Qiao. Serves rum, Moroccan food, and screens live sports. Named after the ancient Chinese ball game. Intimate neighbourhood gem since 2012.', NULL, 4.2, 210, 4, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'beijing'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Local Bar & Grill', 'the-local-beijing', c.id, '4 Gongti Bei Lu, Chaoyang District, Beijing 100027', 39.9330, 116.4480, 'Sanlitun''s go-to sports bar with a comprehensive live sports schedule. Multiple screens, Western bar food, craft beer, and late-night hours. Popular with expats for NFL and EPL weekends.', 'https://beijing-local.com', 4.1, 420, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'beijing'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Paddy O''Shea''s', 'paddy-osheas-beijing', c.id, '28 Dongzhimenwai Dajie, Chaoyang District, Beijing 100600', 39.9390, 116.4360, 'Classic Irish pub in Beijing''s Dongzhimen area. Shows all Premier League, rugby, and GAA matches. Guinness on tap, pub quiz nights, and traditional Irish food. A long-standing expat favourite.', NULL, 4.0, 350, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'beijing'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Solidaz (The Pavilion)', 'solidaz-pavilion-beijing', c.id, 'Opposite Yonghegong Lama Temple, Dongcheng District, Beijing 100007', 39.9480, 116.4170, 'Cosmopolitan bar near Yonghegong with outdoor summer area. Brilliant for watching rugby from both hemispheres. Multiple screens for football, cricket, and tennis. International crowd.', NULL, 4.1, 230, 6, 'relaxed', '$$', true, true, true
FROM cities c WHERE c.slug = 'beijing'
ON CONFLICT (slug) DO NOTHING;
