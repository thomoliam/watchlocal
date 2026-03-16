-- ============================================================================
-- UK Sports Venues Part 2: Scotland, Wales, Northern Ireland & More
-- Generated: 2026-03-16
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Edinburgh', 'edinburgh', 'United Kingdom', 'GB', 55.9533, -3.1883, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Glasgow', 'glasgow', 'United Kingdom', 'GB', 55.8642, -4.2518, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Aberdeen', 'aberdeen', 'United Kingdom', 'GB', 57.1497, -2.0943, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Inverness', 'inverness', 'United Kingdom', 'GB', 57.4778, -4.2247, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cardiff', 'cardiff', 'United Kingdom', 'GB', 51.4816, -3.1791, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Belfast', 'belfast', 'United Kingdom', 'GB', 54.5973, -5.9301, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bath', 'bath', 'United Kingdom', 'GB', 51.3811, -2.3590, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Oxford', 'oxford', 'United Kingdom', 'GB', 51.7520, -1.2577, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Cambridge', 'cambridge', 'United Kingdom', 'GB', 52.2053, 0.1218, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('York', 'york', 'United Kingdom', 'GB', 53.9591, -1.0815, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- EDINBURGH VENUES (12)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Malones Irish Bar', 'malones-irish-bar-edinburgh', c.id, '14 Forrest Road, Edinburgh EH1 2QN', 55.9469, -3.1920, 'Award-winning Irish sports bar with state-of-the-art Ultra HD screens and projectors. Winner of SLTN Best Place to Watch the Match 2025. Covers Premier League, Champions League, NFL, boxing, and F1 with over 250 whiskies on offer.', 'https://malonesedinburgh.com/', 4.4, 1200, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Three Sisters', 'the-three-sisters-edinburgh', c.id, '139 Cowgate, Edinburgh EH1 1JS', 55.9484, -3.1880, 'Massive multi-room venue with one of Edinburgh''s largest beer gardens. Transforms into a fan zone during Six Nations with a huge outdoor screen. Multiple HD screens throughout for all major sports.', 'https://thethreesistersbar.co.uk/', 4.1, 3500, 15, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Footlights Bar & Grill', 'footlights-bar-grill-edinburgh', c.id, '46 Rose Street, Edinburgh EH2 2NH', 55.9527, -3.1987, 'Popular Rose Street sports bar offering great atmosphere for big-screen football, rugby, and all major sporting events. Sky Sports for live fixtures including the Grand National and Wimbledon.', 'https://www.footlightsbar.co.uk/', 4.3, 900, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Black Bull', 'the-black-bull-edinburgh', c.id, '12 Grassmarket, Edinburgh EH1 2JU', 55.9473, -3.1945, 'No-fuss sports bar in the Grassmarket with 8 HD screens. Official Edinburgh Rugby away match hub. Shows all the biggest games with a straightforward, welcoming atmosphere.', 'https://blackbulledinburgh.co.uk/', 4.2, 650, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Belushi''s Edinburgh', 'belushis-edinburgh', c.id, '9 Market Street, Edinburgh EH1 1DE', 55.9509, -3.1886, 'Lively sports bar with Sky, BT, and ESPN showing everything from football and rugby to NFL and Formula One across huge screens and projectors. Cheap drinks and a constantly buzzing atmosphere.', 'https://belushis.com/edinburgh-old-town', 4.0, 800, 10, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rose Street Brewery', 'rose-street-brewery-edinburgh', c.id, '55-57 Rose Street, Edinburgh EH2 2NH', 55.9529, -3.1976, 'Traditional Nicholson''s pub on Rose Street showing live sports with Sky and BT Sports. Craft ales brewed on-site paired with classic pub food in a warm, welcoming setting.', 'https://www.nicholsonspubs.co.uk/restaurants/scotlandandnorthernireland/rosestreetbreweryedinburgh', 4.2, 1100, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Amber Rose', 'amber-rose-edinburgh', c.id, '58 Rose Street, Edinburgh EH2 2NH', 55.9528, -3.1981, 'Vibrant Rose Street bar with numerous HD screens showing both BT and Sky Sports. Known for affordable food with weekly deals and a friendly atmosphere for watching live matches.', NULL, 4.1, 500, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Waiting Room', 'the-waiting-room-edinburgh', c.id, '237 Morningside Road, Edinburgh EH10 4QT', 55.9260, -3.2088, 'Cosy Morningside neighbourhood pub with large HD screens strategically placed for optimal viewing. A more relaxed alternative to city-centre sports bars with quality food and drink.', NULL, 4.3, 350, 5, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Malones Leith', 'malones-leith-edinburgh', c.id, '4 Junction Place, Leith, Edinburgh EH6 5JA', 55.9740, -3.1720, 'Sister venue to Malones on Forrest Road, this Leith Irish bar serves up live sport in 4K Ultra HD with tank Tennent''s, live music, and great craic in a buzzing waterfront neighbourhood.', 'https://www.malonesleith.com/', 4.3, 600, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Golf Tavern', 'the-golf-tavern-edinburgh', c.id, '30-31 Wright''s Houses, Edinburgh EH10 4HR', 55.9388, -3.2068, 'Historic pub overlooking Bruntsfield Links, one of Edinburgh''s oldest golf courses. Shows live sport on multiple screens while serving classic pub food and a great selection of ales.', NULL, 4.3, 450, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Southern', 'the-southern-edinburgh', c.id, '22-26 South Clerk Street, Edinburgh EH8 9PR', 55.9416, -3.1824, 'Popular Southside pub with big screens showing all major sporting events via Sky Sports and BT Sport. Known for its real ales and hearty pub food in a friendly local atmosphere.', NULL, 4.1, 400, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Haileybury Bar', 'haileybury-bar-edinburgh', c.id, '55 Lothian Road, Edinburgh EH1 2DJ', 55.9476, -3.2052, 'Lothian Road sports bar with multiple HD screens and a dedicated sports-watching setup. Shows Premier League, Champions League, Six Nations, and more with a lively weekend matchday crowd.', NULL, 4.0, 300, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'edinburgh'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- GLASGOW VENUES (10)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Horseshoe Bar', 'the-horseshoe-bar-glasgow', c.id, '17-19 Drury Street, Glasgow G2 5AE', 55.8612, -4.2555, 'Iconic Glasgow institution with the longest bar in Europe at 104 feet. Eleven screens showing all major sports with excellent views from every angle. A must-visit for any sports fan.', NULL, 4.4, 2800, 11, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Glasgow', 'walkabout-glasgow', c.id, '98 Renfield Street, Glasgow G2 1NH', 55.8625, -4.2570, 'Australian-themed sports bar and the ultimate sports destination in Glasgow. HD screens show everything from Premier League clashes to boxing showdowns with ice-cold pints and burgers.', 'https://www.walkaboutbars.co.uk/glasgow', 4.0, 1500, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Ark Glasgow', 'the-ark-glasgow', c.id, '40 North Frederick Street, Glasgow G1 2BS', 55.8625, -4.2492, 'Winner of the SLTN Best Venue to Watch the Match 2023. Shows all major sporting events including Cheltenham, Six Nations, Euros, SPL, and Premier League on multiple HD screens.', NULL, 4.2, 700, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tennent''s Bar', 'tennents-bar-glasgow', c.id, '191 Byres Road, Glasgow G12 8TN', 55.8735, -4.2920, 'West End institution with 9 screens spread across 2 bars. Shows SPL, Premier League, Six Nations Rugby, and Champions League. A beloved local haunt with a great beer selection.', NULL, 4.3, 1200, 9, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Graces Irish Sports Bar', 'graces-irish-sports-bar-glasgow', c.id, '48 Candleriggs, Glasgow G1 1LE', 55.8576, -4.2443, 'Family-friendly Merchant City sports bar with 15 HD big screens covering every live sporting event. Irish-themed with great food, drinks, and a warm welcoming atmosphere.', 'https://www.gracesglasgow.com/', 4.3, 850, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Curler''s Rest', 'the-curlers-rest-glasgow', c.id, '256 Byres Road, Glasgow G12 8SH', 55.8748, -4.2935, 'The West End''s rugby HQ, packed on Six Nations match days. Popular for burgers, pints, and passionate crowd atmosphere. Great spot for watching rugby and football.', NULL, 4.2, 600, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Waxy O''Connor''s Glasgow', 'waxy-oconnors-glasgow', c.id, '44 West George Street, Glasgow G2 1DH', 55.8614, -4.2544, 'Sprawling Irish-themed bar across multiple levels with HD TVs scattered throughout. Mad about sports with incredible banter and big-screen action for football, rugby, and more.', NULL, 4.1, 1800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Glasgow', 'oneills-glasgow', c.id, '11 Merchant Square, Glasgow G1 1LE', 55.8572, -4.2440, 'Popular Irish bar in Merchant Square with full Sky Sports and TNT Sports access. Shows every Premier League match, Champions League, and top European football live and loud.', 'https://www.oneills.co.uk/national-search/scotland-and-northern-ireland/merchant-square-in-glasgow', 4.0, 900, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Tap Yard', 'the-tap-yard-glasgow', c.id, '76 Queen Street, Glasgow G1 3DN', 55.8608, -4.2508, 'Modern craft beer and sports bar in the city centre with a great selection of taps and multiple screens for live sport. Stone-baked pizzas and a contemporary, welcoming vibe.', 'https://tapyardglasgow.com/', 4.2, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Gallus', 'bar-gallus-glasgow', c.id, '80 Dumbarton Road, Glasgow G11 6NX', 55.8688, -4.2880, 'West End neighbourhood sports pub with a loyal local following. Multiple screens show football, rugby, and other sports. Known for its no-nonsense Glasgow atmosphere and good-value drinks.', NULL, 4.1, 400, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'glasgow'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- ABERDEEN VENUES (5)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Aberdeen', 'oneills-aberdeen', c.id, '9 Back Wynd, Aberdeen AB10 1JN', 57.1490, -2.0980, 'Popular Irish bar with full Sky Sports and TNT Sports access. Shows every Premier League match, Champions League, Europa League, GAA, and rugby live and loud on multiple screens.', 'https://www.oneills.co.uk/national-search/scotland-and-northern-ireland/aberdeen', 4.1, 900, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'aberdeen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Malones Aberdeen', 'malones-aberdeen', c.id, '180 Union Street, Aberdeen AB10 1QS', 57.1480, -2.1010, 'Best place in Aberdeen to watch football, rugby, F1, GAA, boxing, and UFC in 4K Ultra HD. Quality food, excellent drink selection, and great craic with TV screens throughout the pub.', 'https://malonesbaraberdeen.com/', 4.3, 750, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'aberdeen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Legends Sports Bar', 'legends-sports-bar-aberdeen', c.id, '3 Langstane Place, Aberdeen AB11 6EN', 57.1455, -2.0985, 'Modern and vibrant sports bar with ten full-size pool tables, dart boards, and plenty of screens for live sport. Family-run with a fantastic food and drink menu.', 'https://www.legendsaberdeen.co.uk/', 4.2, 500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'aberdeen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McNasty''s', 'mcnastys-aberdeen', c.id, '153 Union Street, Aberdeen AB11 6BB', 57.1475, -2.0990, 'Spacious and modern city centre sports bar with 11 big TV screens showing live sports constantly throughout the week. Popular with locals for its relaxed vibe and good beer selection.', NULL, 4.0, 400, 11, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'aberdeen'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ma Cameron''s', 'ma-camerons-aberdeen', c.id, '6 Little Belmont Street, Aberdeen AB10 1JG', 57.1492, -2.0965, 'Aberdeen''s oldest pub, serving the city for over 300 years. Boasts an incredible 43 television screens for live sports coverage including an outdoor screen. Better sound system than most venues.', NULL, 4.3, 1100, 43, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'aberdeen'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- INVERNESS VENUES (3)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Auctioneers', 'the-auctioneers-inverness', c.id, '4 Millburn Road, Inverness IV2 3PS', 57.4760, -4.2180, 'Self-styled Home of All Sports with 14 screens ensuring you won''t miss a thing. Covers football, rugby, horse racing, and all major events in a buzzing Highland capital atmosphere.', NULL, 4.1, 350, 14, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'inverness'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Platform 8', 'platform-8-inverness', c.id, '8 Lotland Street, Inverness IV1 1ST', 57.4785, -4.2230, 'Great service and reasonable prices with 3 HD Sky boxes and 11 screens including a massive 86-inch TV. Wide-ranging food menu to keep you fuelled throughout the match.', 'https://www.belhaven.co.uk/pubs/inverness-shire/platform-8/', 4.2, 280, 11, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'inverness'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Chieftain', 'the-chieftain-inverness', c.id, '2 Millburn Road, Inverness IV2 3PS', 57.4758, -4.2175, 'Warm and welcoming Inverness pub with loads of screens for catching all the biggest games. A favourite with locals for its friendly Highland atmosphere and reliable sports coverage.', NULL, 4.0, 200, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'inverness'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- CARDIFF VENUES (8)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Elevens Bar & Grill', 'elevens-bar-grill-cardiff', c.id, '15 Castle Street, Cardiff CF10 1BS', 51.4826, -3.1810, 'Founded by Welsh football legend Gareth Bale, featuring 20 screens streaming in glorious 4K with surround sound. Premium sports bar experience with top-quality food and drinks.', NULL, 4.3, 1800, 20, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ludo Cardiff', 'ludo-cardiff', c.id, 'Westgate Street, Cardiff CF10 1DD', 51.4790, -3.1830, 'Premium sports bar with live sports on big screens, handcrafted cocktails, and Cardiff''s best beer garden with outdoor bar and basketball court. Unbeatable matchday atmosphere.', 'https://www.ludobars.com/venues/ludo-cardiff/', 4.2, 700, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Philharmonic Cardiff', 'the-philharmonic-cardiff', c.id, '76 St Mary Street, Cardiff CF10 1FA', 51.4780, -3.1770, 'The Capital''s No.1 venue for sports and entertainment with 4 bars across three floors, 17 big screens including 2 large projectors, and a rooftop terrace for matchday festivities.', NULL, 4.1, 1200, 17, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Cardiff', 'walkabout-cardiff', c.id, '45 St Mary Street, Cardiff CF10 1AD', 51.4785, -3.1765, 'Australian-themed bar showing all kinds of live sports, especially Six Nations and the Superbowl. Great food and drink deals and stays open later than most other sports bars in Cardiff.', 'https://www.walkaboutbars.co.uk/cardiff', 4.0, 1500, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Cardiff', 'oneills-cardiff', c.id, '30 St Mary Street, Cardiff CF10 1AB', 51.4788, -3.1768, 'The UK''s favourite Irish bar with big screens across the venue showing rugby, football, cricket, and more. Reliable sports coverage with a warm Irish pub atmosphere.', 'https://www.oneills.co.uk/national-search/wales/st-mary-street-in-cardiff', 4.0, 950, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mackintosh Hotel', 'mackintosh-hotel-cardiff', c.id, '66 Cardiff Road, Whitchurch, Cardiff CF14 3JP', 51.5035, -3.1820, 'Hub for drinking, dining, and live sports screenings. Catch the latest fixtures while enjoying burgers and cask ales, with pool tables and darts available during halftime.', NULL, 4.2, 450, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Gassy''s Bar', 'gassys-bar-cardiff', c.id, '36 The Hayes, Cardiff CF10 1AJ', 51.4792, -3.1760, 'Screening all the fixtures across HD TVs with a pool table and mouthwatering pub grub. A Cardiff favourite for matchday gatherings with a welcoming, down-to-earth vibe.', NULL, 4.1, 380, 6, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pen & Wig', 'pen-and-wig-cardiff', c.id, '1 Park Grove, Cardiff CF10 3BJ', 51.4855, -3.1750, 'Traditional-style pub near the law courts, great for watching football and rugby on multiple screens. Known for its classic pub atmosphere, real ales, and good-value food.', NULL, 4.2, 320, 4, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'cardiff'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BELFAST VENUES (8)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Franklins Sports Bar', 'franklins-sports-bar-belfast', c.id, '8-10 Brunswick Street, Belfast BT2 7GE', 54.5985, -5.9310, 'Belfast''s first and only dedicated sports bar with 14 large screens and the biggest indoor screen in Northern Ireland. Shows all live sports from football and rugby to ice hockey and NBA.', 'https://franklinsbelfast.co.uk/', 4.3, 600, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Kitchen Bar', 'the-kitchen-bar-belfast', c.id, 'Victoria Square, 1 Victoria Street, Belfast BT1 3GQ', 54.5975, -5.9275, 'Belfast institution dating back to 1859 with the biggest screen in Belfast City Centre. Historic venue combining traditional Irish character with modern sports viewing facilities.', NULL, 4.4, 2200, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Garrick Bar', 'the-garrick-bar-belfast', c.id, '29 Chichester Street, Belfast BT1 4JB', 54.5978, -5.9290, 'One of Belfast''s oldest pubs showing football, rugby, GAA, golf, and more every day of the week. Traditional Irish bar with bags of character and a loyal sporting crowd.', NULL, 4.3, 1500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Lavery''s Belfast', 'laverys-belfast', c.id, '12-18 Bradbury Place, Belfast BT7 1RS', 54.5920, -5.9350, 'Oldest family-owned pub in Belfast, hosting punters since 1918. Stunning modern interior with a gigantic HD screen. Multi-floor venue with different vibes on each level.', NULL, 4.1, 2500, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ulster Sports Club', 'ulster-sports-club-belfast', c.id, '34 High Street, Belfast BT1 2BE', 54.5990, -5.9280, 'Craft beers and tasty wings served alongside regular screenings of all the big matches. Pool tables and live music events complement the sports offering in a relaxed members'' club atmosphere.', NULL, 4.2, 350, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Felons', 'the-felons-belfast', c.id, '580 Falls Road, Belfast BT12 6EN', 54.5940, -5.9640, 'One of Belfast''s best spots for live sports with HD screens for rugby and GAA fixtures. Located on the Falls Road with a strong community atmosphere and excellent food.', NULL, 4.4, 800, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Monico Bars', 'monico-bars-belfast', c.id, '14 Lombard Street, Belfast BT1 1RD', 54.5982, -5.9268, 'One of the few remaining traditional Irish bars in Belfast, serving live sports including horse racing and football alongside home-cooked food and live music.', NULL, 4.1, 300, 4, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Points', 'the-points-belfast', c.id, '44 Dublin Road, Belfast BT2 7HN', 54.5945, -5.9340, 'Popular Dublin Road sports pub with multiple screens showing all major sports. Well-known for its buzzing matchday atmosphere, affordable pints, and central location near the university area.', NULL, 4.0, 450, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'belfast'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BATH VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'LUDO Bath', 'ludo-bath', c.id, 'Manvers Street, Bath BA1 1JW', 51.3790, -2.3555, 'Premium sports bar above Bath Spa Station with 30 ultra HD screens and a top-of-the-range sound system. The ultimate Bath destination for watching live sport in style.', 'https://www.ludobars.com/', 4.2, 500, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bath'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Boater', 'the-boater-bath', c.id, '9 Argyle Street, Bath BA2 4BQ', 51.3815, -2.3570, 'Perfect live sports pub for Premier League, rugby, cricket and more, set right by Pulteney Bridge. Enjoy craft ales and pub food while catching all the action on multiple screens.', 'https://www.boaterbath.co.uk/', 4.3, 1200, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'bath'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Flan O''Brien''s Bath', 'flan-obriens-bath', c.id, '16 Westgate Buildings, Bath BA1 1EB', 51.3818, -2.3630, 'Bath''s premier Irish bar serving excellent Guinness with live football, rugby, and major sporting events from Sky Sports and ESPN. A warm, welcoming atmosphere for every big match.', NULL, 4.2, 650, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bath'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Canon Bath', 'the-canon-bath', c.id, '4-5 Queen Street, Bath BA1 1HE', 51.3825, -2.3610, 'Shows football, rugby, boxing, cricket, and more with live sports screenings of big games in HD. Beers and tasty food served in a friendly neighbourhood pub setting.', 'https://www.socialpubandkitchen.co.uk/canon-bath/', 4.1, 380, 5, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bath'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- OXFORD VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Oxford', 'oneills-oxford', c.id, '37 George Street, Oxford OX1 2AY', 51.7535, -1.2600, 'Classic Irish pub with huge screens displaying all the best sports. BT and Sky Sports cover top European football, darts, boxing, and cricket. Live music and Irish food and drink menus.', 'https://www.oneills.co.uk/national-search/south-east/oxford', 4.0, 800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'oxford'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The City Arms', 'the-city-arms-oxford', c.id, '288 Cowley Road, Oxford OX4 1UR', 51.7480, -1.2365, 'Oxford''s number-one destination for students and live sport. Large heated beer garden, pool table, and live sport from Sky Sports and TNT Sports with 2 skyboxes, big screen, and outside TV.', 'https://www.socialpubandkitchen.co.uk/city-arms-oxford/', 4.1, 550, 8, 'lively', '$', true, true, true
FROM cities c WHERE c.slug = 'oxford'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Chequers', 'the-chequers-oxford', c.id, '131 High Street, Oxford OX1 4DH', 51.7520, -1.2530, 'Traditional Nicholson''s pub on the High Street, home to BT Sports and Sky Sports. Historic setting in the heart of Oxford with quality food, real ales, and reliable sports coverage.', 'https://www.nicholsonspubs.co.uk/restaurants/southeast/thechequersoxford', 4.2, 700, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'oxford'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The St Aldates Tavern', 'st-aldates-tavern-oxford', c.id, '108 St Aldates, Oxford OX1 1BU', 51.7490, -1.2570, 'Victorian pub in the heart of the city showing sport on their TVs, hosting live comedy nights and monthly movies. Board games and screens for live fixtures in a charming, historic setting.', NULL, 4.1, 400, 4, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'oxford'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- CAMBRIDGE VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Cambridge Brew House', 'the-cambridge-brew-house', c.id, '1 King Street, Cambridge CB1 1LH', 52.2065, 0.1230, 'Top Sky Sports pub with its own on-site microbrewery. Shows all the big games on the big screen in The Locker Room and throughout the pub with a cracking atmosphere and house-brewed ales.', 'https://www.thecambridgebrewhouse.com/', 4.3, 1400, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cambridge'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Carpenter''s Arms', 'the-carpenters-arms-cambridge', c.id, '182 Victoria Road, Cambridge CB4 3DZ', 52.2120, 0.1250, 'Local hub for live sports showing all the big matches on HD screens, whether football, rugby, or F1. Sky Sports, TNT Sports, plus box office for a comprehensive line-up of fixtures.', 'https://www.carpentersarmscambridge.com/', 4.2, 500, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'cambridge'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Mitre Cambridge', 'the-mitre-cambridge', c.id, '17 Bridge Street, Cambridge CB2 1UF', 52.2080, 0.1175, 'Traditional pub founded in 1754 serving delicious food and showing the biggest live sport of the year. Home to BT Sports and Sky Sports in a historic Cambridge setting.', 'https://www.nicholsonspubs.co.uk/restaurants/eastofengland/themitrecambridge', 4.2, 800, 6, 'relaxed', '$$', true, false, true
FROM cities c WHERE c.slug = 'cambridge'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Alma', 'the-alma-cambridge', c.id, '26 Russell Court, Cambridge CB2 1HG', 52.2010, 0.1210, 'Known as the town''s rugby and authentic ale pub, always filled with a buzzing sporting atmosphere. BT, Sky Sports, and ESPN with three large screens in a traditional ale-house setting.', NULL, 4.3, 400, 3, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'cambridge'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- YORK VENUES (4)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Terrace Sports Bar & Kitchen', 'the-terrace-york', c.id, '1 George Hudson Street, York YO1 6JL', 53.9575, -1.0865, 'York city centre''s only dedicated sports bar with over ten HD screens broadcasting Sky Sports and TNT Sports. Covers football, cricket, tennis, American football, and rugby in a lively atmosphere.', 'https://www.theterraceyork.com/', 4.2, 600, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tank & Paddle', 'tank-and-paddle-york', c.id, '27-29 Swinegate, York YO1 8AZ', 53.9588, -1.0830, 'Craft beer paradise with stone-baked pizzas and 18 screens showing live sports. Impressive range of craft and cask beers alongside sharing plates and burgers for the perfect matchday.', NULL, 4.3, 750, 18, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Old Bank', 'the-old-bank-york', c.id, '1-3 Ousegate, York YO1 8NH', 53.9565, -1.0810, 'Stylish two-floor pub in the city centre with a hidden sunken garden. Over 20 HD screens showing everything from Premier League football and Six Nations rugby to F1, boxing, and NFL.', NULL, 4.1, 500, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'york'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Keystones', 'keystones-york', c.id, '54 Nunnery Lane, York YO23 1AA', 53.9540, -1.0870, 'Quirky and cosy pub just outside York''s historic city walls with Sky Sports and TNT Sports in HD. Huge beer garden with stunning views of the city walls, and dogs are welcome too.', NULL, 4.3, 400, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'york'
ON CONFLICT (slug) DO NOTHING;
