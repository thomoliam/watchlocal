-- ============================================================
-- Southeast Asia Venue Seed
-- Real venues researched from web searches March 2026
-- Run after 007_cities_expansion.sql (cities already exist)
-- ON CONFLICT (slug) DO NOTHING for idempotency
-- ============================================================

-- ============================================
-- BANGKOK, THAILAND (11 venues — others in 003_venue_seed.sql)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Sportsman Bar & Restaurant',
  'the-sportsman-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Unit 10/22 Sukhumvit Soi 13, Khlong Toei Nuea, Watthana, Bangkok 10110',
  13.7420, 100.5560,
  'Bangkok''s biggest and best sports bar with 8 separate viewing areas showing 20+ sports simultaneously. Every EPL match guaranteed. Extensive Western, Thai, Indian and vegan menu.',
  'lively', 20, true, true, false, '$$', 'THB', true,
  'https://sportsbarbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Buddy''s Bar & Grill Soi 22',
  'buddys-soi-22-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '2/5 Sukhumvit Soi 22, Klong Toei, Bangkok 10110',
  13.7290, 100.5630,
  'Part of a 5-location Bangkok chain. Reliable EPL, Champions League, Europa League and FA Cup coverage. Classic American bar food and cold beers.',
  'lively', 10, true, true, false, '$$', 'THB', true,
  'https://buddybarbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Buddy''s Bar & Grill Silom',
  'buddys-silom-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Silom Road, Bang Rak, Bangkok 10500',
  13.7260, 100.5340,
  'Silom branch of the popular Buddy''s chain. Shows all major football and sports events on multiple screens. Full American-style bar menu.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  'https://buddybarbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Scruffy Murphy''s Irish Pub',
  'scruffy-murphys-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '10/1 Soi Sukhumvit 23, Khlong Toei Nuea, Watthana, Bangkok 10110',
  13.7370, 100.5620,
  'Authentic Irish pub near Asok BTS with dark-toned walls, wooden furniture and brick interior. Multiple screens for EPL, rugby, GAA and UFC.',
  'relaxed', 8, false, true, false, '$$', 'THB', true,
  'https://scruffymurphysbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Penalty Spot',
  'the-penalty-spot-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '507-511 Sukhumvit Rd, Soi 29, Klong Toei Nua, Wattana, Bangkok 10110',
  13.7350, 100.5680,
  'International sports pub on Sukhumvit Road corner. Three huge projector screens and 10 widescreen TVs showing Bundesliga, EPL and international football.',
  'lively', 13, true, true, false, '$$', 'THB', true,
  'https://www.the-penalty-spot.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sports on 20',
  'sports-on-20-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '394/2 Sukhumvit Soi 20, Sukhumvit Road, Klong Toey, Bangkok',
  13.7300, 100.5620,
  'Open-air sports bar with 14 HDTV screens. Shows US pro and college sports, rugby, football, F1, MotoGP. Excellent pizza, burgers and wings.',
  'lively', 14, false, true, true, '$$', 'THB', true,
  'https://sportson20.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Upperdeck Sportsbar',
  'the-upperdeck-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Level 3-4, Sukhumvit Soi 20, Sukhumvit Road, Bangkok',
  13.7300, 100.5615,
  'Bangkok''s largest sports bar on two floors at the entrance to Soi 20. Multiple giant screens. Five-minute walk from Asok and Phrom Phong BTS. Open 9:30AM-2:30AM daily.',
  'lively', 16, true, true, false, '$$', 'THB', true,
  'https://theupperdecksportsbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Mulligans Irish Bar',
  'mulligans-khao-san-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '265 Khaosan Rd, Talat Yot, Phra Nakhon, Bangkok 10200',
  13.7590, 100.4970,
  'The best sports bar on Khao San Road. Located in BUDDY Shopping Plaza. Irish pub atmosphere with reliable EPL and rugby coverage for backpacker crowds.',
  'lively', 6, true, true, false, '$', 'THB', true,
  'http://www.mulligansthailand.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Shenanigans Irish Sportsbar',
  'shenanigans-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  '840 Thanon Surawong, Si Phraya, Bang Rak, Bangkok 10500',
  13.7260, 100.5300,
  'Silom-area Irish sports bar near Patpong. Rustic brick and dark wood decor with oak barrel tables. Regular live sports events with full EPL, rugby and UFC coverage. Open 9AM-2AM.',
  'lively', 8, false, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Howler Bar & Grill',
  'howler-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Cat Tower Pier 72, Charoen Krung Rd, Bangkok 10500',
  13.7150, 100.5100,
  'Riverside sports bar opposite ICONSIAM with stunning Chao Phraya views. Modern interior with multiple TVs and projectors for live football. Pool table available.',
  'lively', 10, true, true, true, '$$', 'THB', true,
  'https://www.howlerbkk.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Buddy''s Bar & Grill Soi 8',
  'buddys-soi-8-bangkok',
  (SELECT id FROM cities WHERE slug='bangkok'),
  'Sukhumvit Soi 8, Khlong Toei, Bangkok 10110',
  13.7440, 100.5530,
  'Nana-area branch of the popular Buddy''s chain. Near Nana BTS. All major football leagues, Champions League and boxing shown live on multiple screens.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  'https://buddybarbangkok.com'
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PHUKET, THAILAND (6 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Aussie Bar Phuket',
  'aussie-bar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Bangla Road, Patong Beach, Phuket 83150',
  7.8862, 98.2960,
  'Phuket''s premier sports bar with 60+ TV screens over 2 floors. Capacity 250. One of the largest bars on Bangla Road. All major sports events live.',
  'lively', 60, true, true, false, '$$', 'THB', true,
  'https://phuketaussiebar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Angus O''Tool''s Pub',
  'angus-otools-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Laguna Area, Cherngtalay, Phuket 83110',
  7.9900, 98.2970,
  'Irish-owned pub with 2 x 100-inch projector screens and 5 flat-screen TVs. Focus on EPL, rugby, cricket, boxing, UFC and motorsports. International cuisine and live music.',
  'relaxed', 7, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Peppers Sports Bar',
  'peppers-sports-bar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Cherngtalay, Thalang, Phuket 83110',
  7.9880, 98.3010,
  'Relaxed sports bar near Laguna. One giant screen and 5 smaller TVs. Focus on NRL, AFL, football, rugby and boxing with occasional motorsport.',
  'relaxed', 6, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Walkabout Sports Bar',
  'walkabout-karon-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Karon Beach, Phuket 83100',
  7.8480, 98.2960,
  'Fun and lively sports bar in Karon Beach. Nearly a dozen screens including a 75-inch main screen. Football, rugby, cricket, boxing, UFC and more.',
  'lively', 11, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Champions Bar & Grill',
  'champions-bar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Patong Beach, Phuket 83150',
  7.8870, 98.2950,
  '8 flat-screen TVs showing American and European sports including basketball, hockey, baseball, football and motorsport. Intimate 60-person capacity with relaxed vibe.',
  'relaxed', 8, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Tony''s Sports Bar',
  'tonys-sports-bar-phuket',
  (SELECT id FROM cities WHERE slug='phuket'),
  'Patong Beach, Phuket 83150',
  7.8855, 98.2940,
  'Popular Patong sports bar showing all major football leagues, UFC and boxing. Friendly atmosphere and well-priced drinks.',
  'lively', 6, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- CHIANG MAI, THAILAND (5 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Score Restaurant & Sportsbar',
  'the-score-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  '25/5-6 Ratvithi Road, Old City, Chiang Mai 50200',
  18.7950, 98.9830,
  'Chiang Mai''s favourite sportsbar in the Old City. Access to 900+ sports channels. Best atmosphere for EPL and UCL matches. Open 7 days 10AM-midnight.',
  'lively', 10, true, true, false, '$$', 'THB', true,
  'https://scorechiangmai.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Renegade Craft Beer & Ciders',
  'renegade-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  '47 Moonmuang Rd, Mueang, Chiang Mai 50200',
  18.7920, 98.9890,
  'Huge HD screens, 300+ beers and ciders, and outstanding burgers, pizza and Thai food. Spacious sports bar with screens positioned for full visibility.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  'https://renegadecraftbeer.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'UN Irish Pub & Restaurant',
  'un-irish-pub-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Ratvithi Road, Old City, Chiang Mai 50200',
  18.7945, 98.9825,
  'Broadcasts EPL, Championship Football and more. Blend of Thai and Western pub cuisine from classic burgers to Thai favourites. Good pub quiz nights.',
  'relaxed', 6, true, true, false, '$$', 'THB', true,
  'https://unirishpubrestaurant.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'My Place Lounge',
  'my-place-lounge-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Chiang Mai, Thailand',
  18.7880, 98.9920,
  'Sports bar showing all major sports including EPL, NFL, F1, MotoGP, AFL, Rugby and NRL. Buffalo wings, burgers and craft beer.',
  'relaxed', 6, false, true, false, '$$', 'THB', true,
  'https://myplaceloungechiangmai.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Krusty''s Sports Bar & Grill',
  'krustys-chiang-mai',
  (SELECT id FROM cities WHERE slug='chiang-mai'),
  'Chiang Mai, Thailand',
  18.7860, 98.9950,
  'Popular sports bar and grill in Chiang Mai showing all major live sports with multiple screens. Good food and friendly atmosphere.',
  'lively', 6, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PATTAYA, THAILAND (5 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'I-Rovers Sports Bar',
  'i-rovers-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Soi LK Metro 33/126 Moo 10, Pattaya',
  12.9300, 100.8820,
  'Pattaya''s Home of Sport with 21 big TV screens. All live EPL, Championship, NRL, AFL, Rugby, UFC, NFL and Celtic/Rangers games shown.',
  'lively', 21, true, true, false, '$$', 'THB', true,
  'https://i-rovers.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Danny''s Sports Bar',
  'dannys-sports-bar-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Soi Buakhao, Pattaya',
  12.9280, 100.8780,
  'Best sports beer bar in Pattaya on Soi Buakhao. Friendly, no-nonsense sports bar with strong expat following. Multiple screens and energetic atmosphere during major events.',
  'lively', 10, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sports World Pattaya',
  'sports-world-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Pattaya City, Chonburi',
  12.9260, 100.8760,
  'Live sports bar and restaurant in Pattaya City showing all major sporting events on multiple large screens. Full food menu and good beer selection.',
  'lively', 12, true, true, false, '$$', 'THB', true,
  'https://www.sportsworldpattaya.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Pattaya Sports Bar',
  'pattaya-sports-bar',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Pattaya City, Chonburi',
  12.9320, 100.8800,
  'Dedicated sports pub showing EPL, EFL, international football and combat sports. First come first served screen allocation on busy match days.',
  'lively', 7, true, true, false, '$', 'THB', true,
  'https://pattayasportsbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hemingway''s Pattaya',
  'hemingways-pattaya',
  (SELECT id FROM cities WHERE slug='pattaya'),
  'Pattaya, Chonburi',
  12.9340, 100.8840,
  'Renowned for diverse sports broadcasting including EPL and boxing. Welcoming spot for sports fans and families alike. Multiple locations in Pattaya.',
  'relaxed', 8, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KOH SAMUI, THAILAND (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Premier Sports Bar',
  'premier-sports-bar-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Bangrak, Koh Samui, Surat Thani',
  9.5400, 100.0620,
  'Best bar on Samui for live football. Shows all live Premiership matches plus Championship games. Located in Bangrak area.',
  'lively', 8, true, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Bondi Aussie Bar & Grill',
  'bondi-chaweng-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Soi Green Mango, Chaweng, Koh Samui',
  9.5320, 100.0680,
  'Australian-themed family-friendly venue at the beginning of Soi Green Mango in Chaweng. Live AFL, NRL, EPL broadcasts plus daily live music.',
  'lively', 8, true, true, true, '$$', 'THB', true,
  'https://bondiasia.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Black Duck Sports Bar',
  'black-duck-koh-samui',
  (SELECT id FROM cities WHERE slug='koh-samui'),
  'Chaweng, Koh Samui, Surat Thani',
  9.5310, 100.0670,
  'Popular Chaweng sports bar with more screens than you can count. Shows all major leagues and sporting events. Great atmosphere on match days.',
  'lively', 12, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KRABI, THAILAND (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Risky Business Restaurant & Sports Bar',
  'risky-business-krabi',
  (SELECT id FROM cities WHERE slug='krabi'),
  '155/8-12 Moo 3, Ban Ao Nang, Krabi 81180',
  8.0350, 98.8210,
  'Aussie sports bar in Ao Nang showing NRL, AFL, State of Origin, EPL and MotoGP. Popular with Australian and European expats.',
  'lively', 8, true, true, true, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Irish Embassy Pub',
  'irish-embassy-krabi',
  (SELECT id FROM cities WHERE slug='krabi'),
  '259 Aonang Landmark, 76 Moo 3, Ao Nang, Krabi 81180',
  8.0340, 98.8200,
  'Irish pub and sports bar in the heart of Ao Nang. Warm atmosphere with EPL, rugby, GAA and combat sports on multiple screens.',
  'relaxed', 6, true, true, true, '$$', 'THB', true,
  'https://irishpubskrabi.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Chilling Bar & Grill',
  'chilling-bar-krabi',
  (SELECT id FROM cities WHERE slug='krabi'),
  'Ao Nang, Krabi 81180',
  8.0360, 98.8190,
  'Centre of Ao Nang sports bar serving international sports broadcasts since 2009. Multiple screens for EPL, rugby, cricket and motorsports.',
  'relaxed', 4, false, true, true, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- CHIANG RAI, THAILAND (2 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Steve''s Bar (Hangover Corner)',
  'steves-bar-chiang-rai',
  (SELECT id FROM cities WHERE slug='chiang-rai'),
  'Thanon Baanpa Pragarn Road, Tambon Wiang, Chiang Rai',
  19.9100, 99.8320,
  'Best place in Chiang Rai for live sport. Small but packed with TVs showing EPL, Aussie Rules, NRL, F1, rugby and anything else on request.',
  'lively', 6, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Cat Bar',
  'cat-bar-chiang-rai',
  (SELECT id FROM cities WHERE slug='chiang-rai'),
  'Central Chiang Rai, Tambon Wiang, Chiang Rai',
  19.9090, 99.8310,
  'Classic Thai bar in the heart of Chiang Rai with TVs showing whatever customers request. Free pool table with drinks purchase.',
  'relaxed', 2, false, true, false, '$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HUA HIN, THAILAND (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'JJ Sports Bar',
  'jj-sports-bar-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Soi 80, Hua Hin, Prachuap Khiri Khan',
  12.5500, 99.9580,
  '5 large screen TVs showing all Truevision and CTH HD sporting events. Football, rugby, F1, golf, cricket, NFL and UFC. Open 7 days 11AM-2AM.',
  'lively', 5, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Father Ted''s',
  'father-teds-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Hua Hin, Prachuap Khiri Khan',
  12.5680, 99.9570,
  'Well-equipped sports pub with loads of screens. Perfect for English football fans. Can show anything on request across multiple TVs.',
  'relaxed', 8, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Wild Hawks Sportsbar',
  'wild-hawks-hua-hin',
  (SELECT id FROM cities WHERE slug='hua-hin'),
  'Hua Hin, Prachuap Khiri Khan',
  12.5660, 99.9560,
  'One of the best places to watch Premier League football in Hua Hin. Large selection of TVs, great food and drinks, lively atmosphere.',
  'lively', 6, false, true, false, '$$', 'THB', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- BALI / DENPASAR, INDONESIA (8 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Nirvana Sports Bar',
  'nirvana-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl Kayu Aya No. 50B, Seminyak, Badung, Bali',
  -8.6880, 115.1590,
  'Heart of Seminyak sports bar. Massive screens for EPL, UFC and more. Perfectly chilled beers and incredible food. The go-to venue for AFL in Bali.',
  'lively', 12, true, true, false, '$$', 'IDR', true,
  'https://nirvanaseminyak.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Galaxy Sports Bar',
  'galaxy-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Dhyana Pura, Seminyak, Badung, Bali',
  -8.6930, 115.1570,
  'Over 20 years in Seminyak. One of Bali''s longest-running sports bars. AFL, NRL, EPL, UFC, rugby and more on large screens. A true institution.',
  'lively', 8, true, true, false, '$$', 'IDR', true,
  'https://galaxybarbali.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Fox & Rabbit Sports Bar',
  'fox-rabbit-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Camplung Tanduk No. 4, Seminyak, Kec. Kuta, Kabupaten Badung, Bali 80361',
  -8.6950, 115.1610,
  'Well-located Seminyak sports bar offering international sports from football to F1. Affordable drinks and friendly atmosphere. Multiple screens.',
  'relaxed', 8, false, true, false, '$$', 'IDR', true,
  'https://foxandrabbitbali.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Goat Seminyak',
  'the-goat-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Seminyak, Kec. Kuta, Kabupaten Badung, Bali',
  -8.6900, 115.1600,
  'Favourite among locals and tourists with multiple screens showing AFL, NRL, football, UFC and more. Great food and cold beers.',
  'lively', 8, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Lucky Day Sports Bar',
  'lucky-day-seminyak-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Seminyak, Kec. Kuta, Kabupaten Badung, Bali',
  -8.6910, 115.1580,
  'Australian-owned sports bar showing AFL, NRL, EPL, UFC on large-screen TVs. Happy hour deals and extensive food menu.',
  'lively', 6, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Gracie Kelly''s Irish Bar',
  'gracie-kellys-kuta-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Kuta, Kabupaten Badung, Bali',
  -8.7180, 115.1690,
  'Authentic Irish bar in the heart of Kuta. Live sports, air-con, hearty food, pool table, darts, jukebox. EPL, rugby and GAA coverage.',
  'relaxed', 6, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'James Cook Sports Bar',
  'james-cook-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Raya Kerobokan, Canggu, Bali',
  -8.6650, 115.1460,
  'One of Bali''s best-known sports venues with 9 TVs across 3 large rooms. AFL, NRL, football, cricket and motorsports.',
  'lively', 9, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Legends Canggu',
  'legends-canggu-bali',
  (SELECT id FROM cities WHERE slug='bali'),
  'Jl. Subak Sari 13, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali 80361',
  -8.6530, 115.1340,
  'Popular Canggu sports bar showing all major leagues on multiple screens. Good food, craft beer selection and lively atmosphere for game days.',
  'lively', 8, true, true, true, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- JAKARTA, INDONESIA (5 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Pizza e Birra',
  'pizza-e-birra-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'East Mall Grand Indonesia, Jl. M.H. Thamrin No.1, Jakarta 10310',
  -6.1950, 106.8220,
  'Jakarta''s top sports bar with curated music, delicious food and excellent beers. Located in Grand Indonesia mall. Multiple screens for all major sports.',
  'lively', 8, true, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Eastern Promise',
  'eastern-promise-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Kemang, South Jakarta',
  -6.2610, 106.8130,
  'Known for screening Premier League games with eclectic British-Indian menu and classic pub fare. Great selection of local and international beers.',
  'relaxed', 6, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Paulaner Brauhaus Jakarta',
  'paulaner-brauhaus-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Jl. Jend. Sudirman, Jakarta',
  -6.2250, 106.8100,
  'Authentic Bavarian beerhouse brewing Paulaner beers in-house. Great spot for watching football after hours with German delicacies.',
  'relaxed', 6, true, true, false, '$$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sport Stube',
  'sport-stube-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Jakarta, Indonesia',
  -6.2200, 106.8200,
  'Popular sports bar fitted with various screens for football, basketball and motorsport viewing. One of Jakarta''s go-to spots for major sporting events.',
  'lively', 8, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Double Door''s Pub',
  'double-doors-pub-jakarta',
  (SELECT id FROM cities WHERE slug='jakarta'),
  'Puri Indah, West Jakarta',
  -6.1870, 106.7370,
  'European-style, expat-managed pub in Puri Indah. Live football shows, darts, pool and casual drinks. A reliable choice for EPL in West Jakarta.',
  'relaxed', 6, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- YOGYAKARTA, INDONESIA (1 venue)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Spark Resto Sports Bar',
  'spark-resto-yogyakarta',
  (SELECT id FROM cities WHERE slug='yogyakarta'),
  'Jl. Prawirotaman No.1, Brontokusuman, Mergangsan, Yogyakarta 55153',
  -7.8130, 110.3680,
  'Yogyakarta''s number one sports bar with 7 big screens showing daily sports. Great food, friendly staff and extra cold beers. Located on the backpacker strip.',
  'lively', 7, true, true, false, '$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- LOMBOK, INDONESIA (2 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Circuit Sport Bar',
  'circuit-sport-bar-lombok',
  (SELECT id FROM cities WHERE slug='lombok'),
  'Kuta, Lombok, West Nusa Tenggara',
  -8.8950, 116.2850,
  'Best place to watch live sports in Lombok, located in the heart of Kuta. EPL, AFL, NRL and F1 on multiple screens.',
  'lively', 6, true, true, false, '$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Oseania Sports Bar',
  'oseania-sports-bar-lombok',
  (SELECT id FROM cities WHERE slug='lombok'),
  'Senggigi, Lombok, West Nusa Tenggara',
  -8.4880, 116.0440,
  'Senggigi sports bar rated 4.6 on Tripadvisor. Shows AFL, NRL, EPL and MotoGP on big screens. Full food menu and cold drinks.',
  'relaxed', 4, true, true, true, '$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- SURABAYA, INDONESIA (1 venue)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  '15 Palms Pub and Sports Bar',
  '15-palms-surabaya',
  (SELECT id FROM cities WHERE slug='surabaya'),
  'Jl. Citralan, Ruko Taman Gapura Blok H 1, Lontar, Sambikerep, Surabaya 60216',
  -7.2880, 112.6750,
  'Surabaya''s main dedicated sports bar. Pool table, dart board, good beer selection and Indonesian/Western food. Friendly environment for watching live football.',
  'relaxed', 4, false, true, false, '$$', 'IDR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HO CHI MINH CITY, VIETNAM (5 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Orient Bar',
  'the-orient-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'District 2 (Thao Dien), Ho Chi Minh City',
  10.8030, 106.7330,
  'Saigon''s best sports bar with 7 big screen TVs and large projector. 3 zones for watching sport with 3 separate sound systems. Open front, high ceilings, exposed brick.',
  'lively', 8, true, true, true, '$$', 'VND', true,
  'https://orientbarsaigon.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Phatty''s Sports Bar',
  'phattys-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  '48 Ton That Thiep, Ben Nghe, District 1, Ho Chi Minh City',
  10.7740, 106.7020,
  'Heart of District 1 sports bar. NRL, AFL, Rugby Union, Soccer, F1, Golf, UFC, Boxing, MotoGP, Cricket, NFL, NBA live 7 days a week. Best atmosphere in Saigon.',
  'lively', 12, true, true, false, '$$', 'VND', true,
  'https://www.phattysbar.vn'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Rabbit Hole Irish Sports Bar',
  'rabbit-hole-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  'Pham Viet Chanh, Binh Thanh District, Ho Chi Minh City',
  10.7950, 106.6900,
  'Irish sports bar in the vibrant Pham Viet Chanh area. Pool tables, dartboard, foosball and shuffleboard. All favourite sports on multiple screens.',
  'lively', 6, false, true, false, '$$', 'VND', true,
  'https://www.therabbitholeirishbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Station Sports Bar',
  'station-sports-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  '135-137 Bui Vien, District 1, Ho Chi Minh City',
  10.7680, 106.6930,
  'Located on famous Bui Vien backpacker street. Multiple screens showing all major sports. Affordable drinks and lively atmosphere.',
  'lively', 8, true, true, false, '$', 'VND', true,
  'https://www.stationsportbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Guru Sports Bar Ky Dong',
  'guru-sports-bar-hcmc',
  (SELECT id FROM cities WHERE slug='ho-chi-minh-city'),
  '10 Ky Dong, Phuong 9, District 3, Ho Chi Minh City',
  10.7850, 106.6890,
  'Two locations with 16 TVs hosting 200 guests. One of Saigon''s largest sports viewing venues. All major leagues and combat sports shown live.',
  'lively', 16, true, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HANOI, VIETNAM (5 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sportivo',
  'sportivo-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  '39 Hang Buom, Hoan Kiem, Hanoi',
  21.0350, 105.8530,
  'Old Quarter sports haven. Big screens throughout the spacious bar with emphasis on international football and NBA. Comfortable seating and great visibility.',
  'lively', 6, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Local Sports Bar',
  'the-local-sports-bar-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Tay Ho District, Hanoi',
  21.0680, 105.8200,
  'Located in the picturesque Tay Ho district. Multiple large screens broadcasting live events. Vietnamese dishes and classic bar favourites. Friendly mixed crowd.',
  'relaxed', 6, true, true, false, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Boom Bar',
  'boom-bar-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Off Ta Hien Street, Old Quarter, Hanoi',
  21.0340, 105.8520,
  'Just off Ta Hien Street (Beer Street) in the Old Quarter. Big screen above the bar catches constant foot traffic. Cheap beer and great atmosphere.',
  'lively', 3, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Puku Cafe and Sports Bar',
  'puku-cafe-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  '16-18 Tong Duy Tan, Hoan Kiem, Hanoi',
  21.0330, 105.8470,
  'Popular Old Quarter cafe doubling as sports bar. Shows EPL and major sporting events. Good coffee by day, sports and beers by night.',
  'relaxed', 4, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Thao''s Pub',
  'thaos-pub-hanoi',
  (SELECT id FROM cities WHERE slug='hanoi'),
  'Old Quarter, Hoan Kiem, Hanoi',
  21.0345, 105.8510,
  'Cosy sports pub with one big screen above the bar. Cheapest beer of any sports bar in Hanoi. Super-friendly atmosphere on the edge of the Old Quarter.',
  'relaxed', 1, false, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- DA NANG, VIETNAM (4 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Scallywags Bar and Grill',
  'scallywags-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  'Ngu Hanh Son, Da Nang',
  16.0370, 108.2350,
  'Open 7 days from 8AM. All favourite sports live: AFL, NRL, EPL, F1, MotoGP, Cricket, Rugby, UFC. Clean non-smoking interior plus spacious covered outdoor patio with projector.',
  'relaxed', 8, true, true, true, '$$', 'VND', true,
  'https://www.scallywagsvietnam.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Shamrock Sports Bar Da Nang',
  'shamrock-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  '11 An Thuong 32, Da Nang',
  16.0400, 108.2420,
  'Da Nang''s oldest Irish pub since 2019. Open 24/7 with live sports on 6 TVs. Football takes priority. Shows multiple sports simultaneously.',
  'lively', 6, false, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Bamboo 2 Bar',
  'bamboo-2-bar-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  'Downtown Da Nang, riverfront',
  16.0680, 108.2240,
  'Heart of downtown Da Nang with river views. Multiple flat screen TVs for EPL, NRL, AFL, Cricket, Rugby, Golf and more. Perfect for drinks and casual dining.',
  'relaxed', 6, false, true, true, '$', 'VND', true,
  'https://bamboo2bar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Mad Den Irish Bar',
  'the-mad-den-da-nang',
  (SELECT id FROM cities WHERE slug='da-nang'),
  'An Thuong District, Da Nang',
  16.0410, 108.2430,
  'Irish charm meets Vietnamese coastal flair in the An Thuong nightlife district. Multiple big screens for EPL, UFC, F1, NFL, Rugby and more.',
  'lively', 6, true, true, false, '$$', 'VND', true,
  'https://themaddenirishbardanang.com'
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- HOI AN, VIETNAM (4 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hoi An Sports Bar',
  'hoi-an-sports-bar',
  (SELECT id FROM cities WHERE slug='hoi-an'),
  'Hoi An, Quang Nam',
  15.8800, 108.3350,
  'Huge number of screens allowing up to 9 different games simultaneously. The go-to venue in Hoi An for serious sports fans.',
  'lively', 9, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  '3 Dragons Sports Bar',
  '3-dragons-hoi-an',
  (SELECT id FROM cities WHERE slug='hoi-an'),
  'Phan Boi Chau Street, Hoi An, Quang Nam',
  15.8790, 108.3290,
  'Great AFL and EPL viewing on Phan Boi Chau Street. Open daily 10:30AM-11PM with late openings for major games. Friendly, comfortable vibe.',
  'relaxed', 6, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Salt Pub',
  'salt-pub-hoi-an',
  (SELECT id FROM cities WHERE slug='hoi-an'),
  'An Bang Beach, Hoi An, Quang Nam',
  15.9040, 108.3580,
  'Beachfront sports pub at An Bang Beach. 3 large screens inside plus outdoor terrace with ocean views and comfy sofas. Perfect weekend EPL spot.',
  'relaxed', 3, false, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Paddy''s Irish Pub & Sports Bar',
  'paddys-irish-pub-hoi-an',
  (SELECT id FROM cities WHERE slug='hoi-an'),
  'Hoi An, Quang Nam',
  15.8810, 108.3340,
  'Popular Irish pub with vibrant atmosphere, live sports screenings, wide beer selection and traditional Irish pub fare.',
  'lively', 4, true, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- NHA TRANG, VIETNAM (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Cheers Sports Pub',
  'cheers-sports-pub-nha-trang',
  (SELECT id FROM cities WHERE slug='nha-trang'),
  '56A Nguyen Thien Thuat, Nha Trang, Khanh Hoa',
  12.2460, 109.1930,
  'Open 9AM-midnight. Broadcasts EPL, NBA, NFL, MLB, NHL and more. International cuisine, snacks and beverages. Popular with expats and tourists.',
  'lively', 6, false, true, false, '$', 'VND', true,
  'https://cheers-sports-pub.ueniweb.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Guru Sports Bar Nha Trang',
  'guru-sports-bar-nha-trang',
  (SELECT id FROM cities WHERE slug='nha-trang'),
  'Beach Road, Nha Trang, Khanh Hoa',
  12.2450, 109.1960,
  'Big beachfront venue hosting 200 guests with 16 TVs. Part of the Guru chain. All major sports shown live.',
  'lively', 16, true, true, true, '$$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Benchwarmers Sports Pub',
  'benchwarmers-nha-trang',
  (SELECT id FROM cities WHERE slug='nha-trang'),
  'Nha Trang, Khanh Hoa',
  12.2440, 109.1920,
  'Welcoming atmosphere with numerous TVs broadcasting all major games. Cold beers, fish and chips, Japanese-style ramen. Friendly owners.',
  'relaxed', 6, false, true, false, '$', 'VND', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KUALA LUMPUR, MALAYSIA (7 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Dark Horse Bar & Grill',
  'dark-horse-kuala-lumpur',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Lot G-05, Life Centre, 20 Jalan Sultan Ismail, 50250 Kuala Lumpur',
  3.1480, 101.7120,
  'Stylish sports bar in the heart of KL with contemporary interior and ample space. Big portions of food to share while watching games. Foosball tables.',
  'lively', 10, true, true, false, '$$', 'MYR', true,
  'https://www.darkhorse.my'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'SOULed OUT Sri Hartamas',
  'souled-out-sri-hartamas-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  '20 Jalan 30/70A, Desa Sri Hartamas, 50480 Kuala Lumpur',
  3.1580, 101.6570,
  'KL institution showing EPL matches on big screens. Casual dining and drinks in a vibrant atmosphere. One of the best-known nightlife venues.',
  'lively', 8, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Healy Mac''s KLCC',
  'healy-macs-klcc-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  '12 Jalan P. Ramlee, 50250 Kuala Lumpur',
  3.1530, 101.7140,
  'Irish bar and restaurant ideal for watching football, rugby, F1 and major sporting events. Welcoming environment with excellent drink selection.',
  'lively', 8, true, true, false, '$$', 'MYR', true,
  'https://healymacs.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Healy Mac''s Changkat',
  'healy-macs-changkat-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  '38 Changkat Bukit Bintang, 50200 Kuala Lumpur',
  3.1450, 101.7110,
  'Popular Changkat Bukit Bintang Irish sports pub. Multiple screens for EPL, rugby and F1. Lively nightlife strip location.',
  'lively', 6, true, true, true, '$$', 'MYR', true,
  'https://healymacs.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Dukes & Duchess',
  'dukes-duchess-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Kuala Lumpur',
  3.1500, 101.7100,
  'HD big screens with warm, comfortable vibe. European and local cuisine including pizza, pasta and tapas. Reliable EPL and Champions League coverage.',
  'relaxed', 6, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'SideLine Sports Bar',
  'sideline-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Kuala Lumpur',
  3.1460, 101.7080,
  'Dedicated sports bar with multiple screens showing live football. Good beer selection and bar snacks. Popular on match nights.',
  'lively', 8, true, true, false, '$$', 'MYR', true,
  'https://sideline.com.my'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Beer Factory',
  'beer-factory-kl',
  (SELECT id FROM cities WHERE slug='kuala-lumpur'),
  'Desa Sri Hartamas, Kuala Lumpur',
  3.1570, 101.6580,
  '12+ branches across KL. A frequent joint for watching live football with ice-cold beer. Big screens and affordable drinks.',
  'lively', 6, true, true, false, '$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PENANG, MALAYSIA (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Crossbar',
  'the-crossbar-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  'Urban Food Hall Gurney Paragon, 163-D Gurney Dr, Georgetown, 10250 George Town, Penang',
  5.4370, 100.3100,
  'Sports bar in Penang with chill atmosphere, drinks, food and dart board games. Men in football jerseys get 10% off. Open Sun-Mon 10AM-10PM, Fri-Sat 10AM-2AM.',
  'relaxed', 4, true, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Akasha Cafe & Pub',
  'akasha-cafe-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  '3A-G9 & 10, Straits Quay, Jalan Seri Tanjung Pinang, 10470 Tanjung Tokong, Penang',
  5.4590, 100.3070,
  'Great spot to watch football at Straits Quay with three viewing sections. Burgers and pub fare. Waterfront location.',
  'relaxed', 4, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Beer Factory Penang',
  'beer-factory-penang',
  (SELECT id FROM cities WHERE slug='penang'),
  'George Town, Penang',
  5.4140, 100.3340,
  'Penang branch of the popular Malaysian chain. Good hangout for live football with ice-cold beer and multiple screens.',
  'lively', 4, false, true, false, '$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- LANGKAWI, MALAYSIA (2 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Blarney Stone Langkawi',
  'blarney-stone-langkawi',
  (SELECT id FROM cities WHERE slug='langkawi'),
  '17 Jalan Pelangi 2 Kuah, 07000 Langkawi, Kedah',
  6.3260, 99.8490,
  'Best Irish pub on Langkawi with 5 big screen TVs spread over 3 floors showing different sports simultaneously.',
  'lively', 5, false, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Chillout Bistro & Sports Bar',
  'chillout-bistro-langkawi',
  (SELECT id FROM cities WHERE slug='langkawi'),
  'Pantai Tengah, Langkawi, Kedah',
  6.3100, 99.7280,
  'Known as a sports bar with several large LCD screens showing sports channels with great TV reception. International football and rugby matches.',
  'relaxed', 4, false, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- KOTA KINABALU, MALAYSIA (2 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Shamrock Irish Bar KK',
  'shamrock-kota-kinabalu',
  (SELECT id FROM cities WHERE slug='kota-kinabalu'),
  'Kota Kinabalu City Centre, Sabah',
  5.9800, 116.0730,
  'Irish pub in KK city centre showing live sports via Astro. EPL, rugby and major sporting events on multiple screens.',
  'relaxed', 4, false, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'El Centro KK',
  'el-centro-kota-kinabalu',
  (SELECT id FROM cities WHERE slug='kota-kinabalu'),
  'Kota Kinabalu, Sabah',
  5.9810, 116.0740,
  'Sports-friendly bar in Kota Kinabalu showing football and major sporting events on big screens via Astro. Western and local food.',
  'relaxed', 3, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- JOHOR BAHRU, MALAYSIA (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Magnum Sports Cafe',
  'magnum-sports-cafe-jb',
  (SELECT id FROM cities WHERE slug='johor-bahru'),
  'Puteri Harbour, Johor Bahru',
  1.4410, 103.6560,
  'Johor''s #1 sports cafe and bar. Numerous LCD screens screening the widest range of international sports. Giant main screen for major matches.',
  'lively', 12, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Rock Bottom Johor',
  'rock-bottom-johor-bahru',
  (SELECT id FROM cities WHERE slug='johor-bahru'),
  'Puteri Harbour, Johor Bahru',
  1.4420, 103.6570,
  'Busy Puteri Harbour sports bar great for watching football. North Indian, European, Japanese and Fusion cuisines. Typical sports concept interior.',
  'lively', 8, true, true, true, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Disconnect Sports Bar',
  'disconnect-sports-bar-jb',
  (SELECT id FROM cities WHERE slug='johor-bahru'),
  'Johor Bahru',
  1.4930, 103.7410,
  'Popular JB establishment catering to sports enthusiasts. Vibrant atmosphere with various athletic events, food and beverages.',
  'lively', 6, false, true, false, '$$', 'MYR', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- SINGAPORE (10 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'BQ Bar',
  'bq-bar-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '39 Boat Quay, Singapore 049828',
  1.2870, 103.8490,
  'Unpretentious, lively waterfront Boat Quay bar. Multiple sports shown simultaneously across indoor, terrace and side street screens. EPL, AFL, F1 and more.',
  'lively', 12, true, true, true, '$$', 'SGD', true,
  'https://www.bqbar.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Harry''s Boat Quay',
  'harrys-boat-quay-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '28 Boat Quay, Singapore 049818',
  1.2870, 103.8500,
  'Part of Singapore''s largest bar chain with 19 outlets. Official supporter club partnerships with Man United, Arsenal and more. Reliable sports coverage everywhere.',
  'lively', 8, true, true, true, '$$', 'SGD', true,
  'https://www.harrys.com.sg'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Muddy Murphy''s Irish Pub',
  'muddy-murphys-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  'Claymore Connect, 442 Orchard Rd, #01-05, Singapore 238879',
  1.3060, 103.8280,
  'One of Singapore''s first Irish pubs. Wide sports coverage including F1. Absolutely packed during Singapore GP weekend. Great pub atmosphere.',
  'lively', 8, true, true, false, '$$', 'SGD', true,
  'http://muddymurphys.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Brewerkz',
  'brewerkz-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '30 Merchant Road, #01-05/06 Riverside Point, Singapore 058282',
  1.2880, 103.8440,
  'Craft brewery with multiple outlets. Watch live football alongside juicy burgers, pizzas and freshly brewed beer. Football, motorsports, F1, cricket, golf and cycling.',
  'lively', 8, true, true, true, '$$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Boomarang Bistro & Bar',
  'boomarang-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '60 Robertson Quay, #01-15 The Quayside, Singapore 238252',
  1.2910, 103.8380,
  'Favourite among Australian expats at Robertson Quay. Screens AFL, NRL, cricket and rugby on impressive HD TVs. Authentic Australian cuisine and relaxed riverside setting.',
  'relaxed', 8, true, true, true, '$$', 'SGD', true,
  'https://www.boomarang.com.sg'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Lion Brewery Co Taproom',
  'lion-brewery-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '36 Club Street, Singapore 069469',
  1.2810, 103.8470,
  'Flagship taproom and gastropub in a heritage building on Club Street. Rugby, cricket, tennis, football and Grand Prix on screens with fresh craft beer.',
  'relaxed', 6, true, true, false, '$$$', 'SGD', true,
  'https://lionbreweryco.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Charlie''s Restaurant & Bar',
  'charlies-boat-quay-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '32 Boat Quay, Singapore 049821',
  1.2870, 103.8490,
  'Rustic old shophouse alongside the Singapore River. Massive screens for football, rugby and F1. Excellent sangria, tapas and signature stone grills.',
  'lively', 6, true, true, true, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Penny Black',
  'penny-black-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '26/27 Boat Quay, Singapore 049817',
  1.2870, 103.8490,
  'Victorian-themed pub on Boat Quay showing EPL, Champions League and rugby. Classic British pub food and wide beer selection.',
  'relaxed', 6, false, true, true, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Hero''s',
  'heros-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '69 Circular Road, Singapore 049423',
  1.2870, 103.8470,
  'Circular Road sports bar popular for live football and rugby. Multiple screens and a buzzing atmosphere on match nights. Good bar food.',
  'lively', 8, true, true, false, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'McGettigan''s Singapore',
  'mcgettigans-singapore',
  (SELECT id FROM cities WHERE slug='singapore'),
  '3A River Valley Road, Singapore 179020',
  1.2910, 103.8430,
  'Part of the international Irish pub chain. Reliable EPL, rugby and F1 coverage. Live music, pub quizzes and good craic. Near Clarke Quay.',
  'lively', 8, true, true, true, '$$', 'SGD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- MANILA, PHILIPPINES (4 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Skinny Mike''s Sports Bar',
  'skinny-mikes-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  '32nd Street corner Justicia Drive, BGC, Taguig',
  14.5510, 121.0480,
  'Legendary Manila sports bar in BGC with twenty 42-inch LCD TVs and a projection screen for simultaneous match coverage. EPL, NBA and UFC headquarters.',
  'lively', 21, true, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'H&J (Heckle & Jeckle)',
  'hj-poblacion-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Poblacion, Makati, Metro Manila',
  14.5640, 121.0310,
  'No-frills sports bar in Poblacion loved by expats and Filipino football fans. Popular for EPL and Philippine Azkals matches. Open 24 hours Fri-Sun.',
  'lively', 6, false, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Bugsy''s Sports Bar & Bistro',
  'bugsys-makati-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Unit 1, Paseo Parkview Tower, Cor Sedemo & Valero Sts, Salcedo Village, Makati',
  14.5600, 121.0240,
  'Long-time Makati favourite for NBA playoffs and EPL. Multiple flat screen TVs in a chill lounge-style setting with hearty comfort food.',
  'relaxed', 8, false, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Howzat Sports Bar',
  'howzat-manila',
  (SELECT id FROM cities WHERE slug='manila'),
  'Kalayaan Avenue, Makati, Metro Manila',
  14.5580, 121.0270,
  'Popular with locals and foreigners along Kalayaan Avenue. Good food, 24-hour service and live sports on HD screens. All major leagues shown.',
  'lively', 8, true, true, false, '$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- CEBU, PHILIPPINES (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Billy''s Sports Bar',
  'billys-sports-bar-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Cebu City, Cebu',
  10.3150, 123.8850,
  'Cebu''s best sports bar with 7,500 sports channels, free billiards and the coldest beer in town. Pool, darts and great menu.',
  'lively', 10, true, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Howling Dogs Sports Grill',
  'howling-dogs-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Cebu City, Cebu',
  10.3160, 123.8860,
  '7-8 huge flat screens with any sport you want. Billiards tables and top-notch management. Popular with expats and visitors.',
  'lively', 8, false, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'League Sports Bar',
  'league-sports-bar-cebu',
  (SELECT id FROM cities WHERE slug='cebu-city'),
  'Cebu City, Cebu',
  10.3140, 123.8840,
  'Vibrant nightlife venue with sports, drinks and fun. Wide range of sports broadcasts on multiple screens. Football, basketball and more. Open 7PM-4AM.',
  'lively', 6, true, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- BORACAY, PHILIPPINES (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Fusion Sports Bar',
  'fusion-sports-bar-boracay',
  (SELECT id FROM cities WHERE slug='boracay'),
  'Bulabog Road, Malay, Aklan, Boracay',
  11.9640, 121.9270,
  'Opened 2015 to live stream football from North America and Europe. Pool, darts and beer pong. Special event menus with discounts during big matches.',
  'lively', 6, true, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Boracay Sports Bar',
  'boracay-sports-bar',
  (SELECT id FROM cities WHERE slug='boracay'),
  'Boracay Island, Malay, Aklan',
  11.9660, 121.9260,
  'Dedicated sports bar on Boracay Island for catching live EPL, NBA and other major sporting events.',
  'lively', 4, true, true, false, '$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Fun Pub at Movenpick',
  'fun-pub-movenpick-boracay',
  (SELECT id FROM cities WHERE slug='boracay'),
  'Movenpick Resort & Spa Boracay, Punta Bunga Cove, Boracay',
  11.9780, 121.9120,
  'Watch live games at the Movenpick resort pub. Comfortable seating, TVs, gastropub dining and karaoke room.',
  'relaxed', 4, false, true, false, '$$$', 'PHP', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- PHNOM PENH, CAMBODIA (3 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'SCORE Sports Bar & Grill Phnom Penh',
  'score-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'No. 5, Street 282, Phnom Penh, Cambodia',
  11.5620, 104.9270,
  'Phnom Penh''s #1 sports venue since 2010. Up to 7 simultaneous EPL matches on weekends plus Bundesliga, La Liga, AFL, NRL, F1. 3 bars, 4 pool tables, biggest screen in town. Open 8AM-2AM.',
  'lively', 14, true, true, true, '$$', 'USD', true,
  'https://scorekh.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Big Easy Bar',
  'big-easy-phnom-penh',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'Street 172, Riverside, Phnom Penh',
  11.5680, 104.9310,
  'Near the riverside. One of the few bars that occasionally shows Cambodian Premier League alongside international football. Relaxed atmosphere.',
  'relaxed', 4, false, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'The Arena Sports Bar',
  'the-arena-nagaworld-pp',
  (SELECT id FROM cities WHERE slug='phnom-penh'),
  'NagaWorld, Samdech Techo Hun Sen Park, Phnom Penh',
  11.5570, 104.9280,
  'Located inside NagaWorld casino complex. Hosts special viewing parties for major events like the Super Bowl. Premium sports viewing experience.',
  'lively', 8, true, true, false, '$$$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- SIEM REAP, CAMBODIA (4 venues)
-- ============================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'SCORE Sports Bar & Grill Siem Reap',
  'score-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Siem Reap, Cambodia',
  13.3620, 103.8600,
  'Spacious venue with a large screen and multiple HD TVs. Rugby, football, basketball, UFC, cricket, golf. Four slate pool tables and outdoor terrace.',
  'lively', 8, true, true, true, '$$', 'USD', true,
  'https://scorekh.com'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Goal Sport Bar',
  'goal-sport-bar-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  '08 Street 08, Krong Siem Reap 1725',
  13.3600, 103.8590,
  'Hub for locals and travellers near Pub Street. Multiple large-screen TVs in every corner. Football, rugby, basketball and major sporting events.',
  'lively', 6, true, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Sport Legends Arena',
  'sport-legends-arena-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Siem Reap, Cambodia',
  13.3610, 103.8580,
  '5 large TVs and huge projector. Gaming consoles (Xbox, PlayStation, Wii). Pub snacks and delicious burgers. Fun atmosphere for sports fans.',
  'lively', 5, true, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, atmosphere, number_of_screens, has_projector, has_food, has_outdoor_area, price_range, currency, is_verified, website_url)
VALUES (
  'Mad Murphy''s Siem Reap',
  'mad-murphys-siem-reap',
  (SELECT id FROM cities WHERE slug='siem-reap'),
  'Siem Reap, Cambodia',
  13.3590, 103.8570,
  'Irish pub screening GAA, rugby, F1, AFL, NRL, EPL, World Cup qualifiers and more on a projector screen. Good craic and pub food.',
  'relaxed', 3, true, true, false, '$', 'USD', true,
  NULL
) ON CONFLICT (slug) DO NOTHING;
