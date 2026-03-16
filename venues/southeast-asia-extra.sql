-- ============================================================
-- Southeast Asia EXTRA Venue Seed (supplementary)
-- Real venues researched from web searches March 2026
-- Run after southeast-asia.sql
-- ON CONFLICT (slug) DO NOTHING for idempotency
-- ============================================================

-- ============================================
-- BANGKOK, THAILAND (14 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Robin Hood Pub',
  'robin-hood-pub-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '597-597/1-3 P.B Building, Sukhumvit Road, Soi 33/1, Watthana, Bangkok 10110',
  13.7310, 100.5690,
  'Large traditional English pub in the heart of Sukhumvit with multiple screens showing live sport. Strong on Premier League, rugby and cricket. Full English breakfasts and pub classics.',
  'lively', 12, true, true, false, '$$', 'THB', true,
  'https://www.facebook.com/Robin.Hood.Pub.BKK'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Clubhouse Sports Bar & Grill',
  'the-clubhouse-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '21/1-3 Soi Sukhumvit 23, Klongtoey Nua, Wattana, Bangkok 10110',
  13.7350, 100.5620,
  'Well-known for showing an amazing range of sports, particularly popular with golfers and fight fans. All EPL, rugby and cricket games shown on multiple screens. Full menu of Western and Thai food.',
  'lively', 15, true, true, false, '$$', 'THB', true,
  'https://theclubhousebangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Buddy''s Bar & Grill Soi 89',
  'buddys-soi-89-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 89, Phra Khanong, Bangkok 10260',
  13.7140, 100.5910,
  'Quieter On Nut branch of the popular Buddy''s chain. All major EPL, Champions League and Europa League matches shown. American-style bar food and drinks at competitive prices.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  'https://buddybarbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Buddy''s Bar & Grill Soi 20',
  'buddys-soi-20-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 20, Khlong Toei, Bangkok 10110',
  13.7280, 100.5610,
  'Sukhumvit Soi 20 branch with strong sports coverage. Shows all Premier League, Champions League and major international fixtures. Classic burgers, wings and bar snacks.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  'https://buddybarbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Scruffy Murphy''s Silom',
  'scruffy-murphys-silom-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Soi Saladaeng 1, Silom Road, Bang Rak, Bangkok 10500',
  13.7270, 100.5380,
  'Authentic Irish pub in Silom area showing all major football and rugby on multiple screens. Great Guinness, Irish pub grub and lively match-day atmosphere.',
  'lively', 6, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Kiwi Sports Pub & Grill',
  'kiwi-sports-pub-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 8, Khlong Toei, Bangkok 10110',
  13.7380, 100.5550,
  'New Zealand-themed sports pub on Sukhumvit Soi 8. All Black rugby, cricket, EPL and NRL coverage. Kiwi pies, burgers and cold draught beer.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Roadhouse Barbecue',
  'roadhouse-bbq-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '942/1 Sukhumvit Road, Phra Khanong, Bangkok 10110',
  13.7190, 100.5870,
  'American-style BBQ restaurant with big screens showing NFL, NBA, EPL and UFC. Authentic slow-smoked ribs and brisket. Popular with American and European expats.',
  'lively', 6, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Pickled Liver',
  'pickled-liver-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 11, Khlong Toei Nuea, Watthana, Bangkok 10110',
  13.7400, 100.5570,
  'British-style pub on popular Soi 11 with multiple screens showing Premier League, Champions League and international rugby. Fish and chips, Sunday roasts and cold beers.',
  'lively', 8, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Flann O''Brien''s Irish Pub',
  'flann-obriens-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Silom Road, Soi Thaniya, Suriyawong, Bangkok 10500',
  13.7260, 100.5360,
  'Authentic Irish pub in Silom/Thaniya area with Guinness on tap and live sport on multiple screens. Popular for Six Nations rugby, EPL and Champions League.',
  'lively', 6, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Maggie Choo''s',
  'maggie-choos-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '320 Silom Road, Suriyawong, Bang Rak, Bangkok 10500',
  13.7250, 100.5310,
  'Upscale underground bar that screens major sporting events like World Cup and Champions League finals on a big screen. Cocktail-focused with an elegant vibe.',
  'relaxed', 3, true, true, false, '$$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'O''Malleys Irish Bar',
  'omalleys-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Marriott Hotel, Sukhumvit Soi 2, Khlong Toei, Bangkok 10110',
  13.7430, 100.5530,
  'Classic Irish pub inside the Marriott Hotel showing all major sports. EPL, Six Nations, Champions League on big screens. Good Guinness and pub food.',
  'relaxed', 6, true, true, false, '$$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Australian Pub & BBQ',
  'the-australian-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 11, Khlong Toei Nuea, Watthana, Bangkok 10110',
  13.7410, 100.5570,
  'Aussie-themed pub on Soi 11 with big screens for AFL, NRL, cricket and rugby. Specialises in Australian-style BBQ, meat pies and XXXX beer.',
  'lively', 10, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Three Lions',
  'three-lions-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 33, Khlong Tan Nuea, Watthana, Bangkok 10110',
  13.7310, 100.5710,
  'English football-themed pub dedicated to Premier League coverage. Every EPL match shown live. Full English breakfasts, fish and chips, pies. Darts and pool.',
  'lively', 10, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The London Calling Pub',
  'london-calling-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 22, Khlong Tan, Khlong Toei, Bangkok 10110',
  13.7280, 100.5640,
  'British pub with strong Premier League focus. Multiple screens across two floors. Craft beers, pub quizzes and Sunday roasts. Expat favourite on Soi 22.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PHUKET, THAILAND (9 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Aussie Pub Kamala',
  'aussie-pub-kamala-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Kamala Beach, Kathu, Phuket 83150',
  7.9520, 98.2830,
  'Australian-themed sports pub in Kamala showing AFL, NRL, rugby, cricket, motorsport and EPL on 7 large TVs. Regular special events and Australian pub grub.',
  'lively', 7, false, true, true, '$$', 'THB', true,
  'https://phuketaussiebar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Angus O''Tool''s Karon',
  'angus-otools-karon-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  '66 Patak Road, Karon, Muang, Phuket 83100',
  7.8490, 98.2970,
  'Irish-owned pub with 2 x 100-inch projector screens and 5 flat-screen TVs. Focus on European sports: EPL, rugby, cricket, boxing, UFC, horseracing and motorsports. International menu.',
  'lively', 7, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Woody''s Sports Bar Rawai',
  'woodys-rawai-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Sai Yuan Road, Rawai, Muang, Phuket 83130',
  7.7770, 98.3250,
  'Popular expat sports bar in Rawai area with pool tables, darts and multiple screens showing EPL, rugby and motorsports. Cold beers and Western pub grub.',
  'relaxed', 6, false, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Piccadilly Bar Patong',
  'piccadilly-bar-patong-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Soi Bangla, Patong, Kathu, Phuket 83150',
  7.8900, 98.2960,
  'Sports bar on the edge of Bangla Road, Patong. Big screen EPL and Champions League coverage. Pool tables, darts and late-night atmosphere.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Green Man Pub',
  'green-man-pub-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Chalong Bay Road, Chalong, Muang, Phuket 83130',
  7.8310, 98.3460,
  'British pub in Chalong area with multiple screens showing EPL, rugby and cricket. Traditional pub food, Sunday roasts and quiz nights. Strong local expat crowd.',
  'relaxed', 5, false, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Nicky''s Handlebar',
  'nickys-handlebar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  '37/9 Rasda Road, Muang, Phuket Town 83000',
  7.8780, 98.3850,
  'Popular Phuket Town bar with biker theme and multiple TVs showing live sport. EPL, MotoGP and UFC coverage. Known for cocktails, burgers and a fun atmosphere.',
  'lively', 5, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sanaeha Sports Bar',
  'sanaeha-sports-bar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Kata Beach, Muang, Phuket 83100',
  7.8200, 98.2990,
  'Beachside sports bar in Kata showing all major football, rugby and combat sports. Thai and Western food, cold Chang and Singha. Friendly family-run spot.',
  'relaxed', 4, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Friendship Beach Bar',
  'friendship-beach-bar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  '27/1 Soi Mittraphap, Rawai, Muang, Phuket 83130',
  7.7810, 98.3190,
  'Beachfront bar on Rawai showing live sports including EPL and major tournaments. Relaxed beach vibe, Thai and international food, great sunset views.',
  'relaxed', 3, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Aussie Bar Bangla Patong',
  'aussie-bar-bangla-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Soi Bangla, Patong Beach, Kathu, Phuket 83150',
  7.8910, 98.2950,
  'Phuket''s biggest sports pub with 60+ TV screens over 2 floors on Bangla Road. Shows all major sports events live. Known for late-night atmosphere and huge crowds during big matches.',
  'lively', 60, true, true, false, '$$', 'THB', true,
  'https://phuketaussiebar.com'
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- CHIANG MAI, THAILAND (7 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Downunder Pub & Bistro',
  'downunder-pub-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Ratvithi Road, Si Phum, Muang, Chiang Mai 50200',
  18.7940, 98.9830,
  'The best place for AFL and NRL in Chiang Mai. Walls covered in Australian sports memorabilia. Traditional Aussie food menu makes it a home away from home for expat travellers.',
  'lively', 6, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Winstons Pool & Sports Club',
  'winstons-sports-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Loi Kroh Road, Chang Khlan, Muang, Chiang Mai 50100',
  18.7830, 98.9960,
  'Features 1 overhead projector on a large screen and 5 x 55-inch TVs covering most major games. Free pool tables. Open daily 5pm to midnight.',
  'relaxed', 6, true, true, false, '$$', 'THB', true,
  'https://www.winstonsportsbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Corner Bar Chiang Mai',
  'the-corner-bar-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Moon Muang Road, Sri Phum, Muang, Chiang Mai 50200',
  18.7920, 98.9880,
  'Friendly neighbourhood sports bar near Thapae Gate. Multiple screens for EPL and European football. Pool table, darts and cold draught beers.',
  'relaxed', 4, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'TK Sports Bar',
  'tk-sports-bar-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Thapae Road, Chang Khlan, Muang, Chiang Mai 50100',
  18.7870, 98.9950,
  'Small but popular sports pub on Thapae Road with a loyal expat following. Shows EPL, La Liga, Champions League and Thai League on flat screens.',
  'relaxed', 4, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'UN Irish Pub Annex',
  'un-irish-pub-annex-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Ratvithi Road, Si Phum, Muang, Chiang Mai 50200',
  18.7950, 98.9840,
  'Extension of the popular UN Irish Pub showing overflow matches on additional screens. NBA, NFL, NHL, Premier League, UFC, Formula 1 and Gaelic Football.',
  'lively', 4, true, true, false, '$$', 'THB', true,
  'https://unirishpubrestaurant.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Writer''s Club & Wine Bar',
  'writers-club-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  '141/3 Rachadamnoen Rd, Si Phum, Muang, Chiang Mai 50200',
  18.7930, 98.9860,
  'Upscale wine bar and pub in the Old City that screens major sporting events including EPL and Champions League finals. Quiet vibe for a relaxed match-watching experience.',
  'relaxed', 2, true, true, false, '$$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Stumpy''s Sports Bar',
  'stumpys-sports-bar-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Nimman Road, Suthep, Muang, Chiang Mai 50200',
  18.7960, 98.9680,
  'Sports bar in the trendy Nimman area with screens showing EPL, AFL, cricket and rugby. Craft beer selection and Western food. Popular with digital nomads.',
  'relaxed', 5, false, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PATTAYA, THAILAND (10 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'I-Rovers Sports Bar',
  'i-rovers-sports-bar-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  '33/126 Soi LK Metro, Moo 10, Nongprue, Banglamung, Chonburi 20150',
  12.9270, 100.8790,
  'Pattaya''s premier 24-hour sports bar with 21 screens. Shows all EPL, Championship, NRL, AFL, Rugby, UFC, NFL and more. Full restaurant and guesthouse.',
  'lively', 21, true, true, false, '$$', 'THB', true,
  'https://i-rovers.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Danny''s Sports Bar Soi Buakhao',
  'dannys-soi-buakhao-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  '350 Soi Buakhao, Nongprue, Bang Lamung, Chon Buri 20150',
  12.9290, 100.8830,
  'Friendly no-nonsense sports bar since 2019 with strong expat following. Relaxed but energetic atmosphere during major events. Mix of regulars and travellers.',
  'lively', 8, true, true, true, '$', 'THB', true,
  'https://www.facebook.com/dannyspattaya'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Sportsman Pub Pattaya',
  'the-sportsman-pub-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Soi Pattaya 13, Beach Road, Nongprue, Banglamung 20150',
  12.9390, 100.8810,
  'Traditional English pub opened in 1997 with pool tables and large TVs showing live Football, F1 and Rugby. One of Pattaya''s most established sports venues.',
  'relaxed', 6, true, true, false, '$$', 'THB', true,
  'https://sportsmanpub.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Pattaya Sports Hub',
  'pattaya-sports-hub',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Soi Buakhao, Nongprue, Bang Lamung, Chon Buri 20150',
  12.9300, 100.8830,
  'Go-to spot for sports fans on Soi Buakhao with live sports, golf events, pool tables and dart boards. Strong coverage of EPL and Championship football.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Stumble Inn Pattaya',
  'stumble-inn-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Walking Street, South Pattaya, Banglamung 20150',
  12.9260, 100.8760,
  'Walking Street sports bar with multiple screens showing EPL, Champions League and UFC. Late-night venue with full bar and Thai/Western food.',
  'lively', 6, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Jameson''s Irish Pub Pattaya',
  'jamesons-irish-pub-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Second Road, North Pattaya, Banglamung 20150',
  12.9450, 100.8820,
  'Irish pub with Guinness on tap showing all Six Nations rugby, EPL, Champions League and GAA. Pub grub and live music on weekends.',
  'lively', 5, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Legends Sports Bar Pattaya',
  'legends-sports-bar-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Soi 7, Pattaya Klang, Banglamung 20150',
  12.9350, 100.8800,
  'Spacious sports bar with wall-to-wall screens on Soi 7. Shows EPL, Bundesliga, La Liga, UFC and boxing. Pool and darts. Affordable drinks.',
  'lively', 10, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Shenanigans Jomtien',
  'shenanigans-jomtien-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Jomtien Beach Road, Jomtien, Banglamung 20150',
  12.8970, 100.8710,
  'Irish-themed sports bar in Jomtien with multiple screens for EPL, rugby and GAA. Friendly neighbourhood feel with regular quiz nights and pub food.',
  'relaxed', 5, false, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sports World Pattaya',
  'sports-world-bar-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Third Road, Pattaya City, Banglamung 20150',
  12.9330, 100.8860,
  'Live sports bar and restaurant showing all major leagues on multiple screens. Thai and Western menu. Spacious air-conditioned venue.',
  'lively', 12, true, true, false, '$$', 'THB', true,
  'https://www.sportsworldpattaya.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hemingway''s Jomtien',
  'hemingways-jomtien-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Jomtien Complex, Jomtien, Banglamung 20150',
  12.8950, 100.8700,
  'Modern spacious sports bar in Jomtien Complex. Popular with expats and digital nomads. Multiple screens showing EPL, UFC and F1. Good cocktails and food.',
  'relaxed', 8, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KOH SAMUI, THAILAND (5 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Islander Koh Samui',
  'the-islander-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Lamai Beach, Koh Samui, Surat Thani 84310',
  9.4840, 100.0530,
  'The Home of Live Sports in Koh Samui since 1995. English breakfast, daily roast, Thai food. Pub quiz Thursdays, pool competitions Fridays.',
  'lively', 6, true, true, true, '$$', 'THB', true,
  'https://www.facebook.com/Islander1995'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Shamrock Irish Pub Samui',
  'shamrock-irish-pub-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Chaweng Beach Road, Bophut, Koh Samui, Surat Thani 84320',
  9.5310, 100.0700,
  'Shows all sport events on big screens, pool tables, pub grub. Open daily 9:30am-2am with live music from 9:30pm. Popular Irish pub in Chaweng.',
  'lively', 6, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Tropical Murphy''s Samui',
  'tropical-murphys-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Chaweng Beach Road, Bophut, Koh Samui, Surat Thani 84320',
  9.5290, 100.0680,
  'Over 5 satellites, 8 LCD flat-screen TVs and 2 big screens covering all sports from around the world. Lively Irish pub atmosphere in the heart of Chaweng.',
  'lively', 10, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Nikki Beach Sports Lounge',
  'nikki-beach-sports-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Lipa Noi Beach, Koh Samui, Surat Thani 84140',
  9.4850, 99.9490,
  'Upscale beachfront venue screening major sporting events on a large projector screen. Premium cocktails and Mediterranean dining. Relaxed beach club vibe.',
  'relaxed', 2, true, true, true, '$$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Solo Bar Samui',
  'solo-bar-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Fisherman''s Village, Bophut, Koh Samui, Surat Thani 84320',
  9.5430, 100.0290,
  'Sports bar in Fisherman''s Village showing EPL and Champions League on multiple screens. Pool table, darts, cold beers and casual beach town atmosphere.',
  'relaxed', 4, false, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HUA HIN, THAILAND (5 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Buckley''s Bar Hua Hin',
  'buckleys-bar-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Soi Bintabaht, Hua Hin, Prachuap Khiri Khan 77110',
  12.5680, 99.9530,
  'Favourite with Aussie sports fans showing all live AFL and NRL games. Popular with the local expat community. Friendly owners, cold beers and a welcoming atmosphere.',
  'relaxed', 5, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hua Hin Sports Bar',
  'hua-hin-sports-bar',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Soi 80, Hua Hin, Prachuap Khiri Khan 77110',
  12.5520, 99.9590,
  'Dedicated sports bar on Soi 80 with full Truevision coverage. EPL, rugby, F1, golf, cricket and NFL all shown live. Pool table and darts.',
  'lively', 6, false, true, false, '$$', 'THB', true,
  'http://huahinsportsbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Murphy''s Law Irish Pub',
  'murphys-law-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Soi Bintabaht, Hua Hin, Prachuap Khiri Khan 77110',
  12.5690, 99.9540,
  'Irish pub on the main expat strip showing all Six Nations, EPL, Champions League and GAA on multiple screens. Guinness on tap and traditional pub grub.',
  'lively', 4, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Sports Lounge Hua Hin',
  'sports-lounge-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Dechanuchit Road, Hua Hin, Prachuap Khiri Khan 77110',
  12.5710, 99.9550,
  'Air-conditioned sports lounge near the night market showing all EPL, La Liga, Bundesliga and Champions League. Comfortable seating and big screen projector.',
  'relaxed', 5, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Wild Hawks Sportsbar',
  'wild-hawks-sportsbar-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Damnernkasem Road, Hua Hin, Prachuap Khiri Khan 77110',
  12.5700, 99.9560,
  'One of the best places for Premier League in Hua Hin with 4 big screens. EPL, Aussie sports, boxing, UFC and Formula 1. Great food and drinks.',
  'lively', 4, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KRABI, THAILAND (2 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Carlito''s Bar Ao Nang',
  'carlitos-bar-ao-nang-krabi',
  (SELECT id FROM cities WHERE slug='krabi'),
  'Ao Nang Beach Road, Ao Nang, Muang Krabi 81180',
  8.0360, 98.8210,
  'Popular sports bar in Ao Nang showing EPL, Champions League and major sporting events on big screens. International food, pool table and friendly atmosphere.',
  'lively', 5, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Last Fisherman Bar',
  'last-fisherman-bar-krabi',
  (SELECT id FROM cities WHERE slug='krabi'),
  'Ao Nang, Muang Krabi 81180',
  8.0340, 98.8200,
  'Beachfront bar that screens major football matches and UFC fights. Relaxed vibe with great sunset views, Thai food and cold beers on the beach.',
  'relaxed', 2, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- CHIANG RAI, THAILAND (2 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'O''Kane''s Irish Pub',
  'okanes-irish-pub-chiang-rai',
  (SELECT id FROM cities WHERE slug='chiang-rai'),
  'Jedyod Road, Muang, Chiang Rai 57000',
  19.9080, 99.8310,
  'Irish pub with two screens showing virtually any sport you want. Open 09:30-00:30 daily. Guinness on tap, Irish and Thai food. Friendly expat atmosphere.',
  'relaxed', 2, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Coconuts Bar Chiang Rai',
  'coconuts-bar-chiang-rai',
  (SELECT id FROM cities WHERE slug='chiang-rai'),
  'Jedyod Road, Muang, Chiang Rai 57000',
  19.9070, 99.8320,
  'Lively bar on Jedyod Road with big screen sports, pool tables and quiz nights. Shows EPL, AFL, NRL, F1 and rugby. Great food and a fun crowd.',
  'lively', 3, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- BALI, INDONESIA (17 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Barn Canggu',
  'the-barn-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Badung, Bali 80351',
  -8.6530, 115.1310,
  'Modern British gastropub in the heart of Batu Bolong with six big screens. EPL, rugby, F1 and cricket. Classic pub food, Sunday roasts and craft beers.',
  'lively', 6, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Faraway Canggu',
  'faraway-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6560, 115.1280,
  'Typical Australian sports bar minutes from Echo Beach. Shows football, AFL, NRL, F1 and UFC. Big projector screen and multiple TVs. Cold Bintang on tap.',
  'lively', 8, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Bench Canggu',
  'the-bench-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pantai Batu Bolong, Canggu, Kec. Kuta Utara, Badung, Bali 80351',
  -8.6520, 115.1320,
  'One of Canggu''s most popular sports bars on Batu Bolong Street. Pre-booking essential for big matches. Multiple screens, cold drinks and bar snacks.',
  'lively', 6, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Y Sports Bar Legian',
  'y-sports-bar-legian-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Legian, Kuta, Badung, Bali 80361',
  -8.7100, 115.1690,
  'Wall-to-wall sports action in Legian. AFL, NRL, cricket, UFC and Formula 1 all shown live. Air-conditioned comfort and well-priced drinks.',
  'lively', 10, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Forge Bali',
  'the-forge-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Kayu Aya, Seminyak, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6830, 115.1570,
  'Famous gastropub with several large screens and projectors. Rugby, UEFA Europa League, UFC and NFL. Hearty food with craft beer selection.',
  'lively', 8, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Blue Door Ubud',
  'the-blue-door-ubud-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Monkey Forest, Ubud, Kec. Ubud, Gianyar, Bali 80571',
  -8.5190, 115.2620,
  'Sports bar and grill on Monkey Forest Road in Ubud showing EPL, Champions League and major events. Live music some nights, Western and Indonesian food.',
  'relaxed', 4, true, true, false, '$$', 'IDR', true,
  'https://thebluedoorbali.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Melting Pot Ubud',
  'the-melting-pot-ubud-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Raya Pengosekan 22x, Ubud, Gianyar, Bali 80571',
  -8.5270, 115.2650,
  'Relaxed cafe bar in Ubud that screens live sport on multiple TVs. Good for a quiet EPL viewing with Indonesian and international food.',
  'relaxed', 3, false, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Nirvana Sports Bar Seminyak',
  'nirvana-sports-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Kayu Aya, Seminyak, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6840, 115.1560,
  'Ultimate game day experience with the biggest screens and best atmosphere in Seminyak. EPL, AFL, NRL, UFC and all major events. Full food and cocktail menu.',
  'lively', 12, true, true, true, '$$', 'IDR', true,
  'https://nirvanaseminyak.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Goat Canggu',
  'the-goat-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pantai Berawa, Canggu, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6610, 115.1420,
  'Popular sports pub in Canggu''s Berawa area with multiple screens showing AFL, NRL, football, UFC and more. Aussie-style food and cold beers.',
  'lively', 8, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sandbar Canggu',
  'sandbar-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pantai Batu Bolong, Canggu, Kec. Kuta Utara, Badung, Bali 80351',
  -8.6510, 115.1330,
  'Beachside sports bar on Batu Bolong showing live sport on large screens. Casual surf-town vibe with good cocktails, local food and sunset views.',
  'relaxed', 4, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Ball Sports Bar Kuta',
  'ball-sports-bar-kuta-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Legian, Kuta, Badung, Bali 80361',
  -8.7180, 115.1700,
  'Dedicated sports bar in Kuta with wall-to-wall screens. EPL, La Liga, Serie A, Bundesliga all covered. Pool table, darts and late-night hours.',
  'lively', 10, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'De Ja Vu Music Lounge',
  'deja-vu-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Kayu Aya, Seminyak, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6850, 115.1550,
  'Music lounge and sports bar in Seminyak showing major football matches and UFC events. Live music on non-match nights. Cocktails and tapas.',
  'lively', 4, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Bali Joe Sports Bar',
  'bali-joe-sports-bar-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Camplung Tanduk, Seminyak, Kec. Kuta, Badung, Bali 80361',
  -8.6930, 115.1620,
  'Sports bar in central Seminyak with multiple screens and air-conditioning. Shows EPL, Serie A and major tournaments. Food and drink specials on match days.',
  'lively', 6, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Stadium Sports Bar Canggu',
  'stadium-sports-bar-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Raya Semat, Canggu, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6580, 115.1350,
  'Purpose-built sports bar in Canggu with giant projector and surround sound. Every EPL, Champions League and major fixture guaranteed. Pre-match food specials.',
  'lively', 8, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Batu Bolong Social Club',
  'batu-bolong-social-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pantai Batu Bolong No. 99, Canggu, Badung, Bali 80351',
  -8.6540, 115.1300,
  'Social club and sports bar on the main Canggu drag. Multiple screens for EPL and AFL. Craft cocktails, pub food and a surf-town social scene.',
  'lively', 5, false, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Coconut Bar Uluwatu',
  'coconut-bar-uluwatu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Labuansait, Pecatu, Kec. Kuta Selatan, Badung, Bali 80361',
  -8.8100, 115.0970,
  'Laid-back surf bar near Uluwatu cliff showing live sport on big screens. EPL and Champions League shown to a relaxed crowd of surfers and travellers.',
  'relaxed', 3, true, true, true, '$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Lawn Canggu',
  'the-lawn-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Pura Dalem, Canggu, Kec. Kuta Utara, Badung, Bali 80361',
  -8.6550, 115.1340,
  'Beachfront bar and restaurant that screens major sporting events on a big projector. Premium cocktails, international menu and ocean views. Upscale sports watching.',
  'relaxed', 2, true, true, true, '$$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- JAKARTA, INDONESIA (5 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Fez Sports Bar',
  'fez-sports-bar-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Jl. Kemang Raya No. 5, Kemang, Jakarta Selatan 12730',
  -6.2600, 106.8130,
  'Multiple screens over the bar showing a wide variety of sports from football to rugby, cricket to baseball. Classic pub atmosphere in Kemang.',
  'lively', 10, true, true, false, '$$', 'IDR', true,
  'https://www.instagram.com/fezsportsbar'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Caz Bar',
  'the-caz-bar-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Mega Kuningan, Jl. Dr. Ide Anak Agung Gde Agung, Jakarta 12950',
  -6.2340, 106.8230,
  'Established since 2005 with an upstairs area dedicated to sports watching. Strong on EPL and Rugby coverage. Warm casual atmosphere in Mega Kuningan.',
  'relaxed', 6, true, true, false, '$$', 'IDR', true,
  'https://www.thecaz.bar'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'De Hooi',
  'de-hooi-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Jl. Pondok Indah Raya, Pondok Indah, Jakarta Selatan 12310',
  -6.2820, 106.7830,
  'Pondok Indah''s most popular venue with excellent food, full bar, friendly staff and live sport on screens. Dutch-inspired pub popular with expats.',
  'relaxed', 6, false, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Pizza e Birra SCBD',
  'pizza-e-birra-scbd-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'SCBD Lot 8, Jl. Jend. Sudirman, Jakarta 12190',
  -6.2270, 106.8090,
  'Regarded as the best sports bar in Jakarta with curated music, delicious pizza and excellent beers. Big screens for EPL and major football events.',
  'lively', 8, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Eastern Promise Jakarta',
  'eastern-promise-bar-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Jl. Kemang Selatan, Kemang, Jakarta Selatan 12730',
  -6.2640, 106.8140,
  'Great venue for football, basketball and motorsport. Excellent destination for sports enthusiasts in the Kemang area with a loyal expat crowd.',
  'lively', 6, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- YOGYAKARTA, INDONESIA (3 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Spark Resto Sports Bar',
  'spark-resto-sports-bar-yogyakarta',
  (SELECT id FROM cities WHERE slug='yogyakarta'),
  'Jl. Prawirotaman No. 1, Brontokusuman, Mergangsan, Yogyakarta 55153',
  -7.8100, 110.3710,
  'The best sports bar in Jogja with multiple big screens showing different sports simultaneously. EPL, Champions League and Indonesian league coverage.',
  'lively', 8, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Via Via Jogja',
  'via-via-jogja-yogyakarta',
  (SELECT id FROM cities WHERE slug='yogyakarta'),
  'Jl. Prawirotaman No. 30, Brontokusuman, Mergangsan, Yogyakarta 55153',
  -7.8110, 110.3720,
  'Belgian-run traveller cafe on Prawirotaman Street that screens major football matches and tournaments. International food, cold Bintang and a backpacker crowd.',
  'relaxed', 2, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Tavern Jogja',
  'tavern-jogja-yogyakarta',
  (SELECT id FROM cities WHERE slug='yogyakarta'),
  'Jl. Sosrowijayan, Gedongtengen, Yogyakarta 55271',
  -7.7870, 110.3620,
  'Backpacker-area pub near Malioboro Street showing EPL, La Liga and major tournaments on flat screens. Budget-friendly drinks and international food.',
  'relaxed', 3, false, true, false, '$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- LOMBOK, INDONESIA (3 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'De Upper Deck Senggigi',
  'de-upper-deck-senggigi-lombok',
  (SELECT id FROM cities WHERE slug='lombok'),
  'Jl. Raya Senggigi, Senggigi, Lombok Barat, NTB 83355',
  -8.4900, 116.0420,
  'Located atop Temptations Cafe near Senggigi with three big-screen TVs for live sport. Darts, cold beers and ocean views while watching EPL.',
  'relaxed', 3, false, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'I Am Bagus Sport Bar',
  'i-am-bagus-sport-bar-lombok',
  (SELECT id FROM cities WHERE slug='lombok'),
  'Gili Trawangan, North Lombok, NTB 83352',
  -8.3510, 116.0340,
  'Lively bistro on Gili Trawangan with multiple screens showing live sport. Popular island spot for EPL, Champions League and UFC viewing.',
  'lively', 4, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Exile Kuta Lombok',
  'the-exile-kuta-lombok',
  (SELECT id FROM cities WHERE slug='lombok'),
  'Jl. Pariwisata, Kuta, Lombok Tengah, NTB 83573',
  -8.8960, 116.2870,
  'Surf-town sports bar in Kuta Lombok showing EPL and major football on big screens. Relaxed vibe, Western breakfast and cold Bintang.',
  'relaxed', 3, true, true, true, '$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HO CHI MINH CITY, VIETNAM (10 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Phatty''s Sports Bar & Grill',
  'phattys-sports-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  '46 Ton That Thiep, District 1, Ho Chi Minh City',
  10.7730, 106.7020,
  'Heart of District 1 sports bar showing NRL, AFL, Rugby Union, Soccer, F1, Golf, UFC, Boxing, MotoGP, Cricket, NFL and NBA on multiple big screens. Open 7 days.',
  'lively', 10, true, true, false, '$$', 'VND', true,
  'https://www.phattysbar.vn'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Game On Saigon',
  'game-on-saigon-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Nguyen Cong Tru, District 1, Ho Chi Minh City',
  10.7710, 106.7050,
  'Three large projection screens and 12 flat screens in the new District 1 location. Shows all major football leagues, rugby and combat sports.',
  'lively', 15, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Rabbit Hole Irish Sports Bar',
  'rabbit-hole-irish-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Pham Viet Chanh, Binh Thanh District, Ho Chi Minh City',
  10.7890, 106.6940,
  'Irish sports bar in the vibrant Pham Viet Chanh area. Pool tables, dartboard, foosball and shuffleboard. Shows all EPL, rugby and GAA.',
  'lively', 6, true, true, false, '$$', 'VND', true,
  'https://www.therabbitholeirishbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'DTWO Sports Pub',
  'dtwo-sports-pub-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Thao Dien, District 2, Ho Chi Minh City',
  10.8010, 106.7320,
  'Favourite amongst sports fans in Thao Dien with multiple screens showing live sports from around the world. Popular expat hangout in District 2.',
  'lively', 8, true, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Evita Sports Bar',
  'evita-sports-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'District 1, Ho Chi Minh City',
  10.7740, 106.6980,
  'Run by Australian-Vietnamese couple. Massive screens, cold drinks and a welcoming vibe for locals and expats. All major football and Aussie sports.',
  'lively', 6, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Orient Bar District 2',
  'the-orient-bar-d2-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Thao Dien, District 2, Ho Chi Minh City',
  10.8020, 106.7350,
  'Recently relocated to District 2 with open front, high ceilings and exposed brick. Screen so big passersby can see the score from the street. Packs in hundreds.',
  'lively', 8, true, true, true, '$$', 'VND', true,
  'https://orientbarsaigon.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Murphy''s Law Saigon',
  'murphys-law-saigon-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Le Thanh Ton, District 1, Ho Chi Minh City',
  10.7750, 106.7010,
  'Irish pub in the heart of District 1 showing EPL, Six Nations, Champions League and GAA on multiple screens. Guinness on tap and pub grub.',
  'lively', 5, false, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Spotted Cow Bar',
  'spotted-cow-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Bui Vien Street, District 1, Ho Chi Minh City',
  10.7680, 106.6930,
  'Backpacker-area sports bar on Bui Vien showing EPL, Champions League and UFC on big screens. Budget-friendly beers and late-night opening.',
  'lively', 4, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Deck Saigon',
  'the-deck-saigon-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  '38 Nguyen U Di, Thao Dien, District 2, Ho Chi Minh City',
  10.8000, 106.7370,
  'Riverside bar in Thao Dien that screens major sporting events. Upscale atmosphere with craft cocktails, Western food and Saigon River views.',
  'relaxed', 3, true, true, true, '$$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Heart of Darkness Saigon',
  'heart-of-darkness-saigon-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  '31D Ly Tu Trong, District 1, Ho Chi Minh City',
  10.7760, 106.7000,
  'Popular craft beer bar in District 1 that screens big football matches and UFC events. Excellent craft beer selection and American-style food.',
  'lively', 4, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HANOI, VIETNAM (7 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Local Sports Bar Tay Ho',
  'the-local-sports-bar-tay-ho-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Tay Ho District, Hanoi',
  21.0640, 105.8250,
  'The biggest sports bar in Hanoi with many screens, dart board and pool table (free for paying customers). Draws a large expat crowd. EPL, AFL and rugby.',
  'lively', 10, true, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Puku Cafe & Sports Bar',
  'puku-cafe-sports-bar-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  '16-18 Tong Duy Tan, Hoan Kiem, Hanoi',
  21.0290, 105.8460,
  'Located in the lively Tong Duy Tan Street area. AFL, NRL, Premier League, NBA and Rugby Union. 24/7 operation with cheap drinks from 40,000 VND.',
  'lively', 6, true, true, false, '$', 'VND', true,
  'https://www.facebook.com/PukuCafeHanoi'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Thao''s Pub Hanoi',
  'thaos-pub-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Old Quarter, Hoan Kiem, Hanoi',
  21.0340, 105.8520,
  'Cosy sports pub with one big screen above the bar. Cheapest beer of any sports bar in Hanoi with a super-friendly atmosphere. Perfect for a quiet match.',
  'relaxed', 1, false, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Moose & Roo',
  'the-moose-and-roo-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Ma May Street, Old Quarter, Hoan Kiem, Hanoi',
  21.0360, 105.8530,
  'Canadian-Australian pub in the Old Quarter showing NHL, AFL, NRL, EPL and rugby. Poutine, burgers and craft beers. Fun match-day vibe.',
  'lively', 5, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Legends Beer Hanoi',
  'legends-beer-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Ta Hien Street, Old Quarter, Hoan Kiem, Hanoi',
  21.0350, 105.8540,
  'Craft beer bar on famous Ta Hien "Beer Street" with screens showing EPL and Champions League. Local craft beers and Vietnamese bar snacks.',
  'lively', 4, false, true, true, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Bia Hoi Corner Sports',
  'bia-hoi-corner-sports-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Corner of Ta Hien & Luong Ngoc Quyen, Old Quarter, Hanoi',
  21.0340, 105.8530,
  'Famous corner spot on beer street that sets up big screens for major football matches. Ultra-cheap fresh bia hoi and street food. Iconic Hanoi experience.',
  'lively', 2, true, true, true, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Finnegan''s Irish Pub Hanoi',
  'finnegans-irish-pub-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Bat Su Street, Hoan Kiem, Hanoi',
  21.0330, 105.8470,
  'Irish pub in the Old Quarter with Guinness on tap and multiple screens for EPL, Six Nations rugby, Champions League and GAA. Pub quizzes and live music.',
  'lively', 4, false, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- DA NANG, VIETNAM (4 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Bamboo 2 Bar Da Nang',
  'bamboo-2-bar-riverside-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  '216 Bach Dang Street, Hai Chau District, Da Nang',
  16.0660, 108.2240,
  'Best sports bar near the Dragon Bridge overlooking the river. Pool tables, happy hour, loads of food options. Shows AFL, soccer and rugby on many TVs.',
  'lively', 8, true, true, true, '$$', 'VND', true,
  'https://bamboo2bar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Mad Den Irish Bar',
  'the-mad-den-irish-bar-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  '4 An Thuong 8, An Thuong, Da Nang',
  16.0540, 108.2430,
  'Irish-owned and operated with multiple big screens. Premier League, UFC, F1, NFL, Rugby and more. Guinness on tap, whiskey and delicious pub food.',
  'lively', 6, true, true, false, '$$', 'VND', true,
  'https://themaddenirishbardanang.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hybrid Sports Lounge',
  'hybrid-sports-lounge-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  'An Thuong, Ngu Hanh Son, Da Nang',
  16.0530, 108.2440,
  'Cutting-edge sports lounge in An Thuong with top-notch cocktails, state-of-the-art TVs and a lively social atmosphere. EPL, UFC and F1 coverage.',
  'lively', 8, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Scallywags Bar & Grill',
  'scallywags-ngu-hanh-son-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  'Ngu Hanh Son, Da Nang',
  16.0510, 108.2420,
  'Da Nang''s premier sports bar showing live AFL, NRL, Premier League, F1, MotoGP, UFC and more. Open from 8am with Western breakfast. Cold beers and pub food.',
  'lively', 6, true, true, true, '$$', 'VND', true,
  'https://www.scallywagsvietnam.com'
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HOI AN, VIETNAM (2 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  '3 Dragons Sports Bar',
  '3-dragons-extra-hoi-an',
  (SELECT id FROM cities WHERE slug='hoi-an'),
  'Nguyen Phuc Chu, Cam Pho, Hoi An, Quang Nam',
  15.8790, 108.3340,
  'Hoi An''s first sports bar with 6 big screens plus a 7th in the riverside restaurant. Upstairs "stadium" with projection screen and surround sound. 3-4 games simultaneously on weekends.',
  'lively', 7, true, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Shamrock Irish Pub Hoi An',
  'shamrock-irish-pub-hoi-an',
  (SELECT id FROM cities WHERE slug='hoi-an'),
  'An Bang Beach, Cam An, Hoi An, Quang Nam',
  15.8930, 108.3530,
  'Friendly Irish pub near An Bang Beach showing AFL, EPL and rugby. Live music some nights, Guinness on tap and a welcoming atmosphere for expats.',
  'relaxed', 3, false, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- NHA TRANG, VIETNAM (3 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Booze Cruise Sports Bar & Grill',
  'booze-cruise-sports-bar-nha-trang',
  (SELECT id FROM cities WHERE slug='nha-trang'),
  'Nguyen Thien Thuat Street, Nha Trang, Khanh Hoa',
  12.2430, 109.1930,
  'Popular with 20-somethings, cosmopolitan feel with screens showing EPL, Champions League and UFC. Full food menu and late-night bar.',
  'lively', 6, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Guava Bar Nha Trang',
  'guava-bar-nha-trang',
  (SELECT id FROM cities WHERE slug='nha-trang'),
  'Tran Phu Street, Nha Trang, Khanh Hoa',
  12.2450, 109.1940,
  'Laid-back bar except when the football is on. Rich lounge music, comfortable seating and big screens for EPL and Champions League matches.',
  'relaxed', 3, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Louisiane Brewhouse',
  'louisiane-brewhouse-nha-trang',
  (SELECT id FROM cities WHERE slug='nha-trang'),
  '29 Tran Phu, Loc Tho, Nha Trang, Khanh Hoa',
  12.2390, 109.1960,
  'Beachfront brewhouse serving homebrewed beers made with Australian and NZ malts. Screens major football and sporting events. Sun loungers and ocean views.',
  'relaxed', 4, true, true, true, '$$', 'VND', true,
  'https://www.louisianebrewhouse.com.vn'
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KUALA LUMPUR, MALAYSIA (8 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Gridiron Sports Cafe & Lounge',
  'gridiron-sports-cafe-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  '11-15 Jalan Telawi 2, Bangsar, Kuala Lumpur 59100',
  3.1300, 101.6710,
  '33 screens offering 360-degree sports viewing so you never miss a second of EPL action. One of KL''s top-rated sports bars in Bangsar. Open daily 11am-1am.',
  'lively', 33, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sid''s Pub TTDI',
  'sids-pub-ttdi-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  '34 Lorong Rahim Kajai 14, TTDI, Kuala Lumpur 60000',
  3.1350, 101.6290,
  'Popular British pub since 2007. Whether F1, EPL, Super Rugby, tennis or golf, Sid''s has you covered. Open Mon-Fri 11am-12am, Sat-Sun 10am-12am.',
  'relaxed', 8, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hall of Fame Sports Bar',
  'hall-of-fame-sports-bar-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'G-2B, Ground Floor, Nexus Bangsar South, Jalan Kerinchi, KL 59200',
  3.1100, 101.6660,
  'Large projector screen flanked by multiple TVs. Go-to sports bar in KL for live EPL and F1 races. Open daily 11am-2am.',
  'lively', 10, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Blue Tee Sports Bar',
  'blue-tee-sports-bar-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'MST Golf Arena, Jalan Kerinchi, Bangsar South, KL 59200',
  3.1090, 101.6650,
  'Part of MST Golf Arena with a huge multi-concept area including one big screen and multiple screens spread throughout. Golf simulators plus live sport.',
  'relaxed', 8, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Bee Publika',
  'the-bee-publika-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Publika, Solaris Dutamas, Jalan Dutamas 1, KL 50480',
  3.1710, 101.6620,
  'Live music venue and craft beer bar that screens major sporting events on big screens. EPL, Champions League and F1. Popular Publika hangout.',
  'lively', 4, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Locker Room',
  'the-locker-room-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Jalan Mesui, Bukit Bintang, Kuala Lumpur 50200',
  3.1510, 101.7130,
  'Sports-themed bar in Bukit Bintang area with memorabilia on the walls. Multiple screens for EPL, La Liga and Champions League. Craft cocktails and pub food.',
  'lively', 6, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Turf Sports Bar',
  'the-turf-sports-bar-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Ascott Sentral, Jalan Tun Sambanthan, KL Sentral, KL 50470',
  3.1340, 101.6860,
  'Sports bar near KL Sentral with multiple screens showing EPL, F1, cricket and rugby. Western and Asian food menu. After-work crowd on weekdays.',
  'relaxed', 6, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Healy Mac''s Changkat',
  'healy-macs-changkat-extra-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Jalan P Ramlee Crown Regency, No. 12 Ground Floor, KL 50250',
  3.1520, 101.7120,
  'Popular Irish bar on Changkat with enormous HD screens showing EPL, rugby, F1 and more. Excellent drink selection and welcoming environment.',
  'lively', 8, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PENANG, MALAYSIA (5 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Brew Sports Bar Georgetown',
  'brew-sports-bar-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  '326 Chulia Street, Georgetown, Penang 10200',
  5.4220, 100.3380,
  'Dedicated sports bar on Chulia Street with multiple screens showing EPL, Champions League and F1. Craft beers, pub food and a lively atmosphere.',
  'lively', 6, true, true, false, '$$', 'MYR', true,
  'https://www.facebook.com/brewsportsbar'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Crossbar Penang',
  'the-crossbar-extra-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  'Lebuh Pantai, Georgetown, Penang 10300',
  5.4190, 100.3440,
  'Great bar and restaurant for watching football in Penang. Wide range of wine and beers. EPL, La Liga and Champions League on multiple screens.',
  'relaxed', 5, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Healy Mac''s Straits Quay',
  'healy-macs-straits-quay-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  'Straits Quay, Jalan Seri Tanjung Pinang, Tanjung Tokong, Penang 10470',
  5.4560, 100.3100,
  'Irish bar at Straits Quay that posts sport schedules on a board showing all upcoming matches. EPL, rugby, F1 and cricket on big screens.',
  'lively', 6, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Upper Penang Road Pub',
  'upper-penang-road-pub-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  'Upper Penang Road, Georgetown, Penang 10200',
  5.4230, 100.3350,
  'Popular nightlife strip pub showing EPL and major football on screens. Local and international beers at reasonable prices. Late-night atmosphere.',
  'lively', 3, false, true, false, '$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Pelita Bayan Baru',
  'pelita-bayan-baru-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  'Bayan Baru, Penang 11900',
  5.3300, 100.2810,
  'One of the best mamak spots to watch football in Penang with a giant HD projector screen. EPL, Champions League and Asian football. 24-hour operation.',
  'lively', 2, true, true, true, '$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- LANGKAWI, MALAYSIA (3 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Rockafellers Langkawi',
  'rockafellers-langkawi',
  (SELECT id FROM cities WHERE slug='langkawi'),
  'Pantai Cenang, Langkawi, Kedah 07000',
  6.3050, 99.7250,
  'Best sports bar in Langkawi with most EPL games shown live. Loads of space, comfy chairs and big-screen TVs pointing at every angle. Pool and darts.',
  'lively', 8, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Blarney Stone Langkawi',
  'the-blarney-stone-extra-langkawi',
  (SELECT id FROM cities WHERE slug='langkawi'),
  'Pantai Cenang, Langkawi, Kedah 07000',
  6.3060, 99.7260,
  'Best Irish pub on the island with 5 big-screen TVs spread over 3 floors. Live sport, Guinness on tap and Irish pub grub. EPL, rugby and cricket.',
  'lively', 5, false, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Cappuccino House Bistro',
  'cappuccino-house-bistro-langkawi',
  (SELECT id FROM cities WHERE slug='langkawi'),
  'Pantai Cenang, Langkawi, Kedah 07000',
  6.3040, 99.7240,
  'Small cafe bar with Astro SuperSport behind the bar covering all the important sporting action. EPL, F1 and Champions League. Relaxed and affordable.',
  'relaxed', 1, false, true, false, '$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- SINGAPORE (10 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'BQ Bar',
  'bq-bar-extra-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '39 Boat Quay, Singapore 049828',
  1.2870, 103.8500,
  'The true home of televised sport in Singapore. Multiple sports shown simultaneously across several screens with evenings focused on football including EPL.',
  'lively', 10, true, true, false, '$$$', 'SGD', true,
  'https://www.bqbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Al Capone''s Kallang',
  'al-capones-kallang-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '1 Stadium Place, #01-15 Kallang Wave Mall, Singapore 397628',
  1.3030, 103.8740,
  'Part of the Al Capone''s chain with 14 locations. Known for affordable beer at $9.50/pint Guinness. Major EPL and F1 coverage on multiple screens.',
  'lively', 10, true, true, false, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Penny Black',
  'penny-black-extra-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '26/27 Boat Quay, Singapore 049817',
  1.2870, 103.8490,
  'Authentic British pub designed and built in England, shipped piece-by-piece to Singapore. 15+ British and international beers. EPL, rugby and cricket on screens.',
  'relaxed', 6, true, true, false, '$$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Muddy Murphy''s Orchard',
  'muddy-murphys-orchard-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '442 Orchard Road, #01-02 to 05 Claymore Connect, Singapore 238879',
  1.3070, 103.8290,
  'Cosy intimate Irish pub with 6 big screens for all the best live sports. Traditional pub food and UK favourites like Strongbow Cider. Orchard Road location.',
  'relaxed', 6, false, true, false, '$$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Harry''s Clarke Quay',
  'harrys-clarke-quay-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '3C River Valley Road, Clarke Quay, Singapore 179022',
  1.2900, 103.8460,
  'Part of the 20-location Harry''s chain. Regularly screens live football, cricket and rugby. Craft beers and cocktails in the lively Clarke Quay area.',
  'lively', 6, true, true, true, '$$', 'SGD', true,
  'https://www.harrys.com.sg'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Boomarang Robertson Quay',
  'boomarang-robertson-quay-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '60 Robertson Quay, #01-15, Singapore 238252',
  1.2900, 103.8380,
  'Australian bistro and bar with regular live football screenings. Open daily 6am-3am. EPL, AFL, NRL and rugby. Robertson Quay riverside location.',
  'lively', 8, true, true, true, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Great Beer Experiment',
  'great-beer-experiment-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '87 Circular Road, Singapore 049436',
  1.2870, 103.8490,
  'Craft beer bar on Circular Road that screens EPL and Champions League on big screens. Over 100 craft beers, pizza and bar snacks. Lively match nights.',
  'lively', 4, true, true, false, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Butcher Boy',
  'the-butcher-boy-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '31 Keong Saik Road, Singapore 089138',
  1.2800, 103.8420,
  'Gastrobar on Keong Saik Road that shows big football matches on a projector. Quality cocktails, steak and seafood. More upscale sports viewing.',
  'relaxed', 2, true, true, false, '$$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Naughty Nuri''s Singapore',
  'naughty-nuris-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '9 Scotts Road, Pacific Plaza, Singapore 228210',
  1.3060, 103.8330,
  'Bali-born BBQ restaurant in the Orchard area that shows live sport on screens. Famous martinis, ribs and a fun party atmosphere during big games.',
  'lively', 4, false, true, false, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Vaults Craft Beer Bar',
  'the-vaults-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '11 Stamford Road, Capitol Piazza, Singapore 178884',
  1.2940, 103.8520,
  'Craft beer bar at Capitol Piazza with multiple screens for EPL and F1. Rotating taps of local and international craft beers. Central location near City Hall.',
  'relaxed', 4, false, true, false, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- MANILA, PHILIPPINES (6 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Snaps Sports Bar',
  'snaps-sports-bar-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Sofitel Philippine Plaza Manila, CCP Complex, Roxas Blvd, Pasay City, Manila',
  14.5530, 120.9820,
  'Modern sports hub at Sofitel Manila with large LCD screens for major tournaments including FIFA World Cup, EPL and NBA. Premium hotel bar setting.',
  'relaxed', 8, true, true, false, '$$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Skinny Mike''s Sports Bar',
  'skinny-mikes-extra-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Jupiter Street, Makati, Metro Manila',
  14.5580, 121.0190,
  'Manila football fans'' favourite with 20 x 42-inch LCD TVs and a projection screen using HD internet TV to stream live games. EPL, La Liga, Serie A.',
  'lively', 21, true, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Mulligan''s Manila',
  'mulligans-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Poblacion, Makati, Metro Manila',
  14.5630, 121.0300,
  'Irish pub in Poblacion showing all EPL, Champions League, Six Nations and GAA. Guinness on tap, pub grub and quiz nights. Expat favourite.',
  'lively', 6, true, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Brotzeit German Bier Bar',
  'brotzeit-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Shangri-La at the Fort, BGC, Taguig, Metro Manila',
  14.5520, 121.0530,
  'German bier bar with LCD TVs streaming different sports from basketball to football to MMA. German sausages, schnitzel and imported beers.',
  'relaxed', 6, false, true, true, '$$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Naked Turtle Sports Diner',
  'naked-turtle-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Jupiter Street, Makati, Metro Manila',
  14.5590, 121.0200,
  'Sports diner in Makati showing live EPL, NBA, PBA and boxing on multiple screens. American-style food, burgers, wings and cold San Miguel.',
  'lively', 8, true, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Howzat Sports Bar',
  'howzat-extra-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Greenbelt, Ayala Center, Makati, Metro Manila',
  14.5530, 121.0210,
  'One of Manila''s best sports bars with expansive space and long kitchen hours. Shows EPL, Champions League, NBA and UFC on big screens.',
  'lively', 10, true, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- CEBU, PHILIPPINES (5 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Billy''s Sports Bar Cebu',
  'billys-sports-bar-extra-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Mango Avenue, Cebu City, Cebu 6000',
  10.3080, 123.8930,
  'Best bar in Cebu with over 5000 sport channels. Great menu, pool tables and darts. Shows EPL, NBA, boxing and all major international sports.',
  'lively', 12, true, true, false, '$$', 'PHP', true,
  'https://www.facebook.com/Billysbarcebu'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'League Sports Bar Cebu',
  'league-sports-bar-extra-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'A.S. Fortuna Street, Mandaue City, Cebu 6014',
  10.3310, 123.9290,
  'Premier destination for sports fans with vibrant atmosphere. Wide range of sports broadcasts on multiple screens. EPL, NBA and UFC.',
  'lively', 10, true, true, false, '$$', 'PHP', true,
  'https://www.facebook.com/leaguesportsbar.ph'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Semi-Final Sports Bar Cebu',
  'semi-final-sports-bar-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Mango Avenue, Cebu City, Cebu 6000',
  10.3090, 123.8940,
  'The biggest sports bar/restobar on Mango Avenue. Multiple screens for EPL, NBA, boxing and PBA. Full food menu and live entertainment.',
  'lively', 8, true, true, false, '$$', 'PHP', true,
  'https://www.facebook.com/semifinalcebu'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Keg Cebu',
  'the-keg-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Banilad, Cebu City, Cebu 6000',
  10.3380, 123.9050,
  'Craft beer bar and sports pub in Banilad showing EPL, Champions League and NBA on flat screens. Rotating craft beer taps and gastropub food.',
  'relaxed', 4, false, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sunflower Sports Grill',
  'sunflower-sports-grill-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Mango Avenue, Cebu City, Cebu 6000',
  10.3070, 123.8920,
  'Sports grill on Mango Avenue with big screens showing NBA, EPL and boxing. Filipino and international food, cheap beers and a late-night crowd.',
  'lively', 6, true, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- BORACAY, PHILIPPINES (2 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Rumba''s Sports Bar',
  'rumbas-sports-bar-boracay',
  (SELECT id FROM cities WHERE slug='boracay'),
  'Station 2, Boracay Island, Malay, Aklan 5608',
  11.9640, 121.9240,
  'Number one sports bar on the island since 2005. Widescreen TVs showing regular sports events via satellite. Game schedules posted on a board by the entrance.',
  'lively', 6, true, true, true, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Monkey Business Sports Bar',
  'monkey-business-boracay',
  (SELECT id FROM cities WHERE slug='boracay'),
  'Station 3, Boracay Island, Malay, Aklan 5608',
  11.9570, 121.9210,
  'Go-to sports bar in Station 3 for watching favourite sports live. EPL, NBA and boxing on multiple screens. Relaxed beach-town bar atmosphere.',
  'relaxed', 4, true, true, true, '$$', 'PHP', true,
  'https://www.facebook.com/monkeybusinessboracay'
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PHNOM PENH, CAMBODIA (5 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Score Sports Bar & Grill PP',
  'score-sports-bar-extra-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'No. 5 Street 282, Wat Lanka, Phnom Penh',
  11.5560, 104.9240,
  'Premier sports venue since 2010 with 3 bars, 4 pool tables, lounge area, mezzanine, terrace and the biggest screen in town. 7 simultaneous EPL matches on weekends.',
  'lively', 15, true, true, true, '$$', 'USD', true,
  'https://scorekh.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Aussie XL Sports Bar',
  'aussie-xl-sports-bar-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'Street 130, Phnom Penh',
  11.5680, 104.9200,
  'Phnom Penh''s best Australian pub and sports bar. AFL, NRL, cricket and rugby on multiple screens. Australian pub food and cold beers.',
  'lively', 8, true, true, false, '$$', 'USD', true,
  'https://www.facebook.com/AussieXLCafeBar'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Offside Burger Bar',
  'offside-burger-bar-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'Street 172, Phnom Penh',
  11.5640, 104.9210,
  'Football-themed burger bar showing EPL, La Liga and Champions League. Great burgers, craft beers and a dedicated football fan atmosphere.',
  'lively', 6, true, true, false, '$$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Lucky Girl Sports Bar',
  'lucky-girl-sports-bar-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'Street 172, Phnom Penh',
  11.5650, 104.9220,
  'Popular expat sports bar on Street 172 near the riverside. EPL, Champions League, boxing and UFC on screens. Pool table and late-night hours.',
  'lively', 4, false, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Big Easy PP',
  'the-big-easy-extra-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'Street 172, Phnom Penh',
  11.5630, 104.9200,
  'Located at the bottom of legendary Street 172 near the riverside. Great food including poutine. Shows EPL, rugby and cricket on screens.',
  'relaxed', 4, true, true, true, '$$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- SIEM REAP, CAMBODIA (4 additional venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Score Bar Siem Reap',
  'score-bar-extra-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Pub Street Area, Siem Reap',
  13.3530, 103.8570,
  'Fully dedicated sports bar screening everything from rugby and football to basketball, UFC, cricket and golf. Huge screen, multiple HD TVs, four pool tables and terrace.',
  'lively', 12, true, true, true, '$$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Siem Reap Brewpub',
  'siem-reap-brewpub',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Pub Street Area, Siem Reap',
  13.3540, 103.8560,
  'Town''s first microbrewery screening sporting events on large flat-screen TV while serving ales brewed onsite. EPL, Champions League and rugby.',
  'relaxed', 3, false, true, true, '$$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Laundry Bar Siem Reap',
  'laundry-bar-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Pub Street, Siem Reap',
  13.3520, 103.8580,
  'Popular Pub Street bar that pulls out projectors for major sporting events. EPL, Champions League and World Cup matches shown live to big crowds.',
  'lively', 3, true, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Angkor What? Bar',
  'angkor-what-bar-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Pub Street, Siem Reap',
  13.3510, 103.8580,
  'Iconic Pub Street bar that shows big football matches and UFC fights on screens. Known for cheap drinks, late nights and a backpacker crowd.',
  'lively', 2, true, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;
