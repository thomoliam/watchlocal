-- ============================================================================
-- UK Sports Venues - Part 1: England
-- Cities: London, Manchester, Birmingham, Liverpool, Leeds, Bristol,
--         Newcastle, Brighton, Sheffield, Nottingham, Leicester,
--         Southampton, Norwich, Exeter, Plymouth
-- ============================================================================

-- ============================================================================
-- CITIES
-- ============================================================================

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('London', 'london', 'United Kingdom', 'GB', 51.5074, -0.1278, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Manchester', 'manchester', 'United Kingdom', 'GB', 53.4808, -2.2426, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Birmingham', 'birmingham', 'United Kingdom', 'GB', 52.4862, -1.8904, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Liverpool', 'liverpool', 'United Kingdom', 'GB', 53.4084, -2.9916, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Leeds', 'leeds', 'United Kingdom', 'GB', 53.8008, -1.5491, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Bristol', 'bristol', 'United Kingdom', 'GB', 51.4545, -2.5879, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Newcastle', 'newcastle', 'United Kingdom', 'GB', 54.9783, -1.6178, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Brighton', 'brighton', 'United Kingdom', 'GB', 50.8225, -0.1372, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Sheffield', 'sheffield', 'United Kingdom', 'GB', 53.3811, -1.4701, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Nottingham', 'nottingham', 'United Kingdom', 'GB', 52.9548, -1.1581, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Leicester', 'leicester', 'United Kingdom', 'GB', 52.6369, -1.1398, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Southampton', 'southampton', 'United Kingdom', 'GB', 50.9097, -1.4044, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Norwich', 'norwich', 'United Kingdom', 'GB', 52.6309, 1.2974, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Exeter', 'exeter', 'United Kingdom', 'GB', 50.7184, -3.5339, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, country_code, latitude, longitude, timezone)
VALUES ('Plymouth', 'plymouth', 'United Kingdom', 'GB', 50.3755, -4.1427, 'Europe/London')
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LONDON VENUES (25 total)
-- ============================================================================

-- London Venues 1-15

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Famous Three Kings', 'famous-three-kings-london', c.id, '171 North End Road, London W14 9NL', 51.4905, -0.1952, 'Legendary London sports pub with access to 70,000+ TV channels showing virtually every sport from football to cricket, NFL to GAA. Multiple screens and projectors across a large Edwardian pub.', 'https://www.socialpubandkitchen.co.uk/famous-three-kings-west-kensington', 4.3, 1800, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Greenwood', 'greenwood-victoria-london', c.id, '170 Victoria Street, London SW1E 5LB', 51.4965, -0.1407, 'London''s flagship sports bar opposite Victoria Station with a dedicated sports lounge upstairs featuring oversized screens and wall-to-wall coverage of football, rugby, NFL and boxing.', 'https://www.greenwoodlondon.com', 4.2, 2200, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rileys Sports Bar Haymarket', 'rileys-haymarket-london', c.id, '80 Haymarket, London SW1Y 4TE', 51.5088, -0.1322, 'Major sports bar in the heart of the West End with huge screens across multiple floors. Shows all Premier League, Champions League, and major boxing events.', 'https://www.rileyssportsbar.co.uk', 4.1, 1500, 18, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Faltering Fullback', 'faltering-fullback-london', c.id, '19 Perth Road, London N4 3HB', 51.5685, -0.1082, 'Quirky Irish pub near the Emirates Stadium with a famous multi-level beer garden and a loyal football crowd. A north London gem for watching matches.', 'https://falteringfullback.com', 4.4, 2500, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Boxpark Croydon', 'boxpark-croydon-london', c.id, '99 George Street, Croydon CR0 1LD', 51.3727, -0.0986, 'Fan favourite for big-screen football with a festival vibe, street food vendors, craft drinks and an electric atmosphere for major matches and tournaments.', 'https://www.boxpark.co.uk/croydon', 4.0, 3500, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Boxpark Wembley', 'boxpark-wembley-london', c.id, 'Olympic Way, Wembley HA9 0JT', 51.5574, -0.2795, 'Huge pop-up venue near Wembley Stadium with massive outdoor screens, street food and craft beer. Perfect for pre-match and live screening events.', 'https://www.boxpark.co.uk/wembley', 4.1, 2800, 6, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BrewDog Waterloo', 'brewdog-waterloo-london', c.id, '46 Webber Street, London SE1 8QW', 51.5010, -0.1065, 'Central London craft beer hub with 8 massive HD projectors, 6 LED screens and state-of-the-art sound system showing Sky Sports and TNT Sports.', 'https://www.brewdog.com/uk/bars/waterloo', 4.2, 1200, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Flat Iron Square', 'flat-iron-square-london', c.id, '64 Southwark Street, London SE1 1UN', 51.5036, -0.0973, 'Sprawling London Bridge venue with 16 screens inside and outside, street food options and a rambling beer garden. All Sky Sports and TNT Sports games screened.', 'https://www.flatironsquare.co.uk', 4.2, 3000, 16, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar Kick', 'bar-kick-london', c.id, '127 Shoreditch High Street, London E1 6JE', 51.5247, -0.0771, 'Foosball-heavy Shoreditch sports bar with major games shown on HD screens across two floors. Every seat offers an unobstructed view of matches.', 'https://www.barkick.co.uk', 4.3, 800, 12, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'TOCA Social', 'toca-social-london', c.id, 'The O2, Peninsula Square, London SE10 0DX', 51.5030, 0.0032, 'Interactive football and dining experience at The O2 with giant screens, football-themed games and quality food. Great for watching big matches in a unique setting.', 'https://www.toca.social', 4.3, 2000, 10, 'lively', '$$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Alexandra', 'the-alexandra-clapham-london', c.id, '14 Clapham Common South Side, London SW4 7AA', 51.4573, -0.1538, 'Historic Clapham Common pub with two huge projector screens and five HD TVs showing live football, rugby and more. Over 150 years of history.', 'https://www.thealexandraclapham.co.uk', 4.2, 1100, 7, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Duchess of Kent', 'duchess-of-kent-london', c.id, '441 Liverpool Road, London N7 8PR', 51.5507, -0.1145, 'Popular Islington sports pub with seasonal menu and local beers on tap. Multiple screens for catching the latest rugby or football matches.', 'https://www.theduchessofkent.com', 4.3, 600, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Belushi''s Camden', 'belushis-camden-london', c.id, '48-50 Camden High Street, London NW1 0LT', 51.5372, -0.1420, 'Lively Camden bar with regular sports screenings, happy hours, beer pong and a late-night kitchen. Part of the St Christopher''s chain popular with travellers.', 'https://www.belushis.com/bars/london-camden', 4.0, 900, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Long Arm Pub & Brewery', 'long-arm-pub-london', c.id, '20-26 Worship Street, London EC2A 2DW', 51.5215, -0.0838, 'Shoreditch brewpub with freshly brewed ale straight from the tanks, giant projector screens and a menu of nachos, hot dogs and loaded waffles.', 'https://www.thelongarm.com', 4.2, 700, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Simmons Kings Cross', 'simmons-kings-cross-london', c.id, '32 Caledonian Road, London N1 9DT', 51.5316, -0.1185, 'Quirky cocktail bar near King''s Cross that shows major live sports events with a fun, party atmosphere and affordable drinks.', 'https://www.simmonsbar.co.uk/kings-cross', 4.1, 500, 5, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

-- London Venues 16-25

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rileys Sports Bar Victoria', 'rileys-victoria-london', c.id, '16 Semley Place, London SW1W 9QJ', 51.4938, -0.1468, 'Multi-floor sports bar in Victoria with huge HD screens, pool tables and darts. Shows all major football, rugby, boxing and UFC events.', 'https://www.rileyssportsbar.co.uk', 4.0, 900, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Old Tavern', 'old-tavern-clapham-london', c.id, '96 Clapham Manor Street, London SW4 6ED', 51.4625, -0.1428, 'Traditional Clapham boozer with cosy interiors, projectors to catch the game and plenty of cheap craft pints on tap.', 'https://www.theoldtavernclapham.co.uk', 4.3, 450, 4, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Beechwood Sports Bar', 'beechwood-shoreditch-london', c.id, '197-199 Shoreditch High Street, London E1 6HU', 51.5255, -0.0755, 'Stylish Shoreditch sports bar with classy interiors, huge TVs, scrumptious burgers and a selection of beers and cocktails.', 'https://www.beechwoodshoreditch.com', 4.1, 350, 8, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Boxpark Shoreditch', 'boxpark-shoreditch-london', c.id, '2-10 Bethnal Green Road, London E1 6GY', 51.5238, -0.0764, 'The original Boxpark with street food, craft beer and big screens for major sporting events. Buzzing atmosphere right next to Shoreditch High Street station.', 'https://www.boxpark.co.uk/shoreditch', 4.0, 4000, 5, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Banker', 'the-banker-london', c.id, 'Cousin Lane, London EC4R 3TE', 51.5094, -0.0902, 'Fuller''s pub right on the Thames near Cannon Street with lovely riverside terrace and screens showing Premier League and international football.', 'https://www.fullers.co.uk/pubs/the-banker', 4.1, 600, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sports Bar & Grill Waterloo', 'sports-bar-grill-waterloo-london', c.id, '63 The Cut, London SE1 8LL', 51.5044, -0.1092, 'Dedicated sports venue near Waterloo Station with wall-to-wall screens, booths with individual speakers, and a full American-style grill menu.', 'https://www.sportsbarandgrill.co.uk', 4.0, 1100, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Lamb & Flag', 'lamb-and-flag-covent-garden-london', c.id, '33 Rose Street, London WC2E 9EB', 51.5121, -0.1259, 'Historic Covent Garden pub dating back to the 1600s with character-filled interiors. Shows major football and rugby matches on multiple screens.', 'https://www.lambandflagcoventgarden.co.uk', 4.3, 3500, 4, 'casual', '$$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Camden Beer Hall', 'camden-beer-hall-london', c.id, '11 Kentish Town Road, London NW1 8NH', 51.5390, -0.1395, 'Spacious Camden venue serving delicious meals, tasty snacks and refreshing craft beer alongside live sports screenings on big screens.', 'https://www.camdenbeerhall.com', 4.2, 500, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sports Bar at The Hippodrome', 'hippodrome-sports-bar-london', c.id, 'Cranbourn Street, Leicester Square, London WC2H 7JH', 51.5107, -0.1288, 'Dedicated sports bar inside the iconic Hippodrome Casino in Leicester Square with giant screens, comfortable seating and full bar service.', 'https://www.hippodromecasino.com', 4.1, 800, 10, 'upscale', '$$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Wardour Street', 'oneills-wardour-street-london', c.id, '33-37 Wardour Street, London W1D 6PU', 51.5127, -0.1317, 'Popular Irish pub in Soho with full access to Sky Sports and TNT Sports. Multiple screens showing Premier League, Champions League and international football.', 'https://www.oneills.co.uk/national-search/london/wardour-street', 4.0, 700, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'london'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- MANCHESTER VENUES (15 total)
-- ============================================================================

-- Manchester Venues 1-15

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BOX Manchester', 'box-manchester', c.id, '125 Deansgate, Manchester M3 2BY', 53.4793, -2.2490, 'Premium sports bar on Deansgate with screens in every direction, great food and two levels of seating. One of the best sports bars in Manchester city centre.', 'https://www.theboxbar.co.uk/bars/manchester', 4.2, 1800, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mulligans Manchester', 'mulligans-manchester', c.id, '12 Southgate, Manchester M3 2RB', 53.4797, -2.2510, 'Award-winning Irish pub with over 14 big screens showing every match. A go-to spot for Premier League, Champions League and major tournaments.', 'https://www.mulligansmanchester.com', 4.3, 1200, 14, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Salmon of Knowledge', 'salmon-of-knowledge-nq-manchester', c.id, '56 Oldham Street, Manchester M4 1LE', 53.4837, -2.2354, 'Brilliant Northern Quarter venue for watching live sport with multiple screens, craft beers and great pub food. Also has locations in Didsbury and MediaCity.', 'https://www.thesalmonofknowledge.com', 4.3, 600, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Tib Street Tavern', 'tib-street-tavern-manchester', c.id, '74 Tib Street, Manchester M4 1LG', 53.4840, -2.2365, 'Most popular sports bar in the Northern Quarter. Book ahead for big games as this place fills up fast. Great selection of beers and pub grub.', 'https://www.tibstreettavern.co.uk', 4.2, 800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Sawyers Arms', 'sawyers-arms-manchester', c.id, '136 Deansgate, Manchester M3 2GP', 53.4788, -2.2486, 'Spacious Deansgate pub across the road from BOX. Head downstairs where it opens up into a cavernous space perfect for watching football.', 'https://www.sawyersarms.co.uk', 4.1, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Boom Battle Bar Printworks', 'boom-battle-bar-manchester', c.id, '27 Withy Grove, Manchester M4 2BS', 53.4853, -2.2400, 'All-singing, all-dancing bar in the Printworks with shuffleboard, pool, darts and ping pong alongside live sports screenings on multiple screens.', 'https://www.boombattlebar.com/manchester', 4.0, 900, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Manchester', 'oneills-manchester', c.id, '4 Lloyd Street, Manchester M2 5AB', 53.4793, -2.2455, 'Classic Irish pub in the city centre with Sky Sports and TNT Sports on multiple screens. Reliable spot for Premier League and Champions League football.', 'https://www.oneills.co.uk/national-search/greater-manchester/manchester', 4.0, 700, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Footage', 'the-footage-manchester', c.id, '137 Grosvenor Street, Manchester M1 7DZ', 53.4746, -2.2369, 'Popular student-friendly sports pub with huge screens, pool tables and affordable drinks. Buzzing atmosphere for big Premier League matches.', 'https://www.thefootage.co.uk', 4.0, 400, 8, 'lively', '$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Gate Northern Quarter', 'the-gate-manchester', c.id, '21 Thomas Street, Manchester M4 1NA', 53.4844, -2.2371, 'Northern Quarter pub showing all major sports on big screens. Known for its great range of craft beers and relaxed atmosphere.', 'https://www.thegatemanchester.co.uk', 4.2, 350, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Manchester', 'walkabout-manchester', c.id, '7 Quay Street, Manchester M3 3HN', 53.4784, -2.2507, 'Aussie-themed bar and club showing live sports on massive screens. Popular for Premier League matchdays, rugby and UFC events.', 'https://www.walkaboutbars.co.uk/manchester', 3.9, 1000, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bierkeller Manchester', 'bierkeller-manchester', c.id, 'The Printworks, 27 Withy Grove, Manchester M4 2BS', 53.4853, -2.2398, 'German-themed beer hall in the Printworks with the Shooters sports bar featuring massive screens and a stadium-like atmosphere for big games.', 'https://www.thebierkeller.com/manchester', 4.1, 1500, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Crafty Pig', 'crafty-pig-manchester', c.id, '100 Great Bridgewater Street, Manchester M1 5JW', 53.4741, -2.2453, 'Craft beer bar near Deansgate Locks with multiple HD screens showing football. Known for gourmet hot dogs and extensive beer selection.', 'https://www.craftypig.co.uk', 4.2, 450, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sir Ralph Abercromby', 'sir-ralph-abercromby-manchester', c.id, '35 Bootle Street, Manchester M2 5GU', 53.4780, -2.2480, 'Traditional city centre pub with a great selection of cask ales and plenty of screens showing live football. Friendly, no-frills atmosphere.', 'https://www.sirralph.co.uk', 4.1, 300, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BrewDog Manchester', 'brewdog-manchester', c.id, '35 Peter Street, Manchester M2 5BG', 53.4776, -2.2470, 'Craft beer bar with HD screens showing Premier League and Champions League football alongside an extensive beer menu and tasty food.', 'https://www.brewdog.com/uk/bars/manchester', 4.1, 600, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Brotherhood Manchester', 'brotherhood-manchester', c.id, '11 Albion Street, Manchester M1 5LN', 53.4771, -2.2380, 'Venue with live events across dozens of 4K screens, extensive food and drinks menu, and classic competitive pub games including pool and darts.', 'https://www.thisisthebrotherhood.com/manchester', 4.2, 500, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'manchester'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BIRMINGHAM VENUES (10 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shooters Sports Bar', 'shooters-bierkeller-birmingham', c.id, '190 Broad Street, Birmingham B15 1DT', 52.4754, -1.9120, 'Located within Bierkeller on Broad Street with massive screens and a stadium-like vibe. One of the best places to watch football in Birmingham with affordable drinks and pub grub.', 'https://www.thebierkeller.com/birmingham', 4.0, 1200, 15, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BOX Brindleyplace', 'box-brindleyplace-birmingham', c.id, '3 Brindleyplace, Birmingham B1 2JB', 52.4784, -1.9116, 'Vibrant sports bar with 35 HD screens showing all Sky, TNT and Box Office sporting events. High-energy match screenings with great views from every angle.', 'https://www.theboxbar.co.uk/bars/brindleyplace', 4.2, 1500, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Birmingham', 'walkabout-birmingham', c.id, '287 Broad Street, Birmingham B1 2DS', 52.4740, -1.9133, 'Large Broad Street venue with 14 screens, two projectors and 3D TVs showing all major sports events with drinks and food offers.', 'https://www.walkaboutbars.co.uk/birmingham', 3.9, 1000, 16, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hennessey''s', 'hennesseys-birmingham', c.id, '111-113 Floodgate Street, Birmingham B5 5SR', 52.4760, -1.8850, 'Spread across three levels with a heated rooftop garden and over 20 HD screens. Located in Digbeth near Moor Street station with an electric atmosphere for big games.', 'https://www.hennesseysbirmingham.co.uk', 4.3, 800, 20, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Broad Street', 'oneills-broad-street-birmingham', c.id, '216 Broad Street, Birmingham B15 1AY', 52.4748, -1.9110, 'Full access to Sky Sports including red button and TNT Sports for every Premier League, Champions League and Europa League fixture live and loud.', 'https://www.oneills.co.uk/national-search/east-and-west-midlands/broad-street-in-birmingham', 4.0, 700, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bristol Pear', 'bristol-pear-birmingham', c.id, '676 Bristol Road, Birmingham B29 6BJ', 52.4390, -1.9350, 'Popular Selly Oak pub for match days with affordable pints, tasty food and full-size pool tables. Sky Sports and TNT Sports on multiple screens.', 'https://www.bristolpear.co.uk', 4.1, 500, 8, 'casual', '$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Smokey Barrels', 'smokey-barrels-birmingham', c.id, '50 John Bright Street, Birmingham B1 1BN', 52.4760, -1.8980, 'Modern sports bar in the city centre with large screens, craft cocktails and a smokehouse BBQ menu. Shows all major live sports events.', 'https://smokeybarrels.com', 4.2, 400, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Snobs Birmingham', 'snobs-birmingham', c.id, '48 Smallbrook Queensway, Birmingham B5 4HP', 52.4753, -1.8964, 'Iconic Birmingham nightclub that also serves as a live sports venue during the day with big screens showing Premier League and Championship football.', 'https://www.snobsnightclub.co.uk', 4.0, 600, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Floodgate', 'the-floodgate-birmingham', c.id, '20 Lower Trinity Street, Birmingham B9 4AG', 52.4770, -1.8835, 'Competitive socialising venue in Digbeth with shuffleboard, beer pong, crazy golf and screens showing live sport. Fun atmosphere for groups.', 'https://www.thefloodgate.com', 4.2, 700, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BrewDog Birmingham', 'brewdog-birmingham', c.id, '79-80 John Bright Street, Birmingham B1 1BL', 52.4755, -1.8985, 'Craft beer bar with big screens showing live football and rugby. Great selection of BrewDog beers and guest taps alongside bar snacks.', 'https://www.brewdog.com/uk/bars/birmingham', 4.1, 500, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'birmingham'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LIVERPOOL VENUES (10 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Einstein Bier Haus', 'einstein-bier-haus-liverpool', c.id, '13 Concert Square, Liverpool L1 4AQ', 53.4024, -2.9808, 'Set over two floors in Concert Square with 18 beers on tap and numerous large TV screens. One of the best places to watch football in Liverpool.', 'https://www.einsteinbierhaus.com', 4.1, 1200, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Long Shot', 'the-long-shot-liverpool', c.id, 'Albert Dock, Liverpool L3 4AF', 53.3999, -2.9907, 'Contemporary sports bar on the historic Royal Albert Dock with 11 x 4K screens across two floors. World-class food, cocktails and live sports.', 'https://thelongshot.bar', 4.3, 800, 11, 'upscale', '$$$', true, true, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Pogue Mahone', 'pogue-mahone-liverpool', c.id, '30 Seel Street, Liverpool L1 4BE', 53.4013, -2.9792, 'Go-to destination in the Ropewalks district for sports enthusiasts with live screenings of Premier League, rugby, F1 and GAA on big screens.', 'https://www.poguemahone.co.uk', 4.2, 600, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bierkeller Liverpool', 'bierkeller-liverpool', c.id, 'Thomas Steers Way, Liverpool L1 8LW', 53.4007, -2.9870, 'Lively venue with the Shooters Rack ''n'' Roll American sports bar showing high-quality live sport on countless screens with an electric stadium atmosphere.', 'https://www.thebierkeller.com/liverpool', 4.0, 1000, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Hooters Liverpool', 'hooters-liverpool', c.id, 'Queen Square, Liverpool L1 1RH', 53.4073, -2.9830, 'Iconic venue with 52 85-inch TVs and four huge video walls showing all the latest sports action. American-style food and a buzzing atmosphere.', 'https://www.hootersliverpool.co.uk', 3.9, 700, 52, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Gravity MAX Liverpool', 'gravity-max-liverpool', c.id, '1 Paradise Street, Liverpool L1 8JF', 53.4017, -2.9870, 'Big screens in the bar, restaurant and outside with a food hall, garden terrace, self-pour bar and immersive gaming alongside all live sports.', 'https://www.gravity-global.com/liverpool', 4.2, 1500, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'McCooleys', 'mccooleys-liverpool', c.id, '16-20 Matthew Street, Liverpool L2 6RE', 53.4057, -2.9856, 'Located on the famous Matthew Street with large screens showing football, rugby and boxing. Irish-themed bar with live music and great craic.', 'https://www.mccooleys.co.uk', 4.1, 500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Camp and Furnace', 'camp-and-furnace-liverpool', c.id, '67 Greenland Street, Liverpool L1 0BY', 53.3965, -2.9830, 'Cavernous Baltic Triangle venue that transforms into a massive sports screening space for big events. Huge projector screens and street food traders.', 'https://www.campandfurnace.com', 4.3, 1800, 4, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Sandon', 'the-sandon-liverpool', c.id, '178 Oakfield Road, Liverpool L4 0UH', 53.4320, -2.9590, 'Historic pub closest to Anfield stadium with a dedicated fanzone. Multiple screens and a huge outdoor area perfect for matchday atmosphere.', 'https://www.thesandon.com', 4.2, 900, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Dispensary', 'the-dispensary-liverpool', c.id, '87 Renshaw Street, Liverpool L1 2SP', 53.4030, -2.9774, 'Traditional city centre pub with a good selection of cask ales and screens showing Sky Sports and TNT Sports for all major football fixtures.', 'https://www.thedispensaryliverpool.co.uk', 4.3, 400, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'liverpool'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LEEDS VENUES (8 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BOX Leeds', 'box-leeds', c.id, '15 Infirmary Street, Leeds LS1 2JP', 53.7978, -1.5450, 'Sports bar in the heart of Leeds with 35 HD screens showing all Sky, TNT and Box Office sporting events. Pizzas, burgers, kebabs and great drinks.', 'https://www.theboxbar.co.uk/bars/leeds-city-centre', 4.2, 1200, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Griffin', 'the-griffin-leeds', c.id, '31 Boar Lane, Leeds LS1 5DA', 53.7968, -1.5440, 'Old-school city centre pub with HD screens everywhere and a massive projector screen by the bar. Shows Sky, TNT and Box Office for football, rugby and boxing.', 'https://www.thegriffinleeds.co.uk', 4.1, 600, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Aire Bar', 'aire-bar-leeds', c.id, '32 The Calls, Leeds LS2 7EW', 53.7952, -1.5395, 'HD screens in every corner with cracking views across the river. Plays Sky and TNT Sports simultaneously for Premier League and other sports.', 'https://www.airebar.com', 4.2, 500, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Beck & Call', 'beck-and-call-leeds', c.id, '2 Stainbeck Lane, Leeds LS7 3QY', 53.8200, -1.5470, 'Sports-loving Meanwood pub with a huge outdoor screen for international tournaments. From the folk behind Belgrave Music Hall.', 'https://www.beckandcallleeds.co.uk', 4.3, 400, 4, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Brotherhood Leeds', 'brotherhood-leeds', c.id, '7 Albion Place, Leeds LS1 6JL', 53.7985, -1.5460, 'Live events across dozens of 4K screens with an extensive food and drinks menu plus classic competitive pub games like pool and darts.', 'https://www.thisisthebrotherhood.com/leeds-city-centre', 4.2, 500, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Toast Bar Leeds', 'toast-bar-leeds', c.id, '26 Wellington Street, Leeds LS1 4LT', 53.7970, -1.5510, 'Nestled in the business district with TVs in every corner and two projection screens reserved for big games. Great food and drinks.', 'https://www.toastbar.co.uk', 4.1, 300, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Canary Bar Leeds', 'canary-bar-leeds', c.id, '84 Call Lane, Leeds LS1 6DT', 53.7960, -1.5395, 'Call Lane bar with live sports fixtures on multiple screens alongside cocktails and craft beers. Popular for Premier League weekends.', 'https://www.canarybar.co.uk', 4.2, 350, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Headingley Taps', 'headingley-taps-leeds', c.id, '2 North Lane, Headingley, Leeds LS6 3HB', 53.8260, -1.5780, 'Popular Headingley pub close to the cricket and rugby grounds with multiple screens showing live sport. Great atmosphere on matchdays.', 'https://www.headingleytaps.co.uk', 4.3, 350, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'leeds'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BRISTOL VENUES (6 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Racks Bar & Kitchen', 'racks-bar-kitchen-bristol', c.id, '75 Whiteladies Road, Bristol BS8 2NT', 51.4620, -2.6090, 'Best place to watch live sports in Bristol with 9 screens, a projector and some of the city''s best deals on drinks and food.', 'https://www.racks-bristol.co.uk', 4.2, 800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bristol'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Bristol', 'walkabout-bristol', c.id, '59 Corn Street, Bristol BS1 1HT', 51.4543, -2.5932, 'Close to Castle Park on Corn Street showing live football from Premier League to WSL, rugby, F1, NFL and boxing. Cinema-style projector near the back.', 'https://www.walkaboutbars.co.uk/bristol', 3.9, 900, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'bristol'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The White Harte', 'white-harte-bristol', c.id, '1-3 Park Row, Bristol BS1 5LJ', 51.4548, -2.5995, 'Two large projectors, 6 TVs, loads of seating, a great menu and table service through all major sports fixtures. Reliable matchday venue.', 'https://www.thewhiteharte.co.uk', 4.1, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bristol'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Rileys Bristol', 'rileys-bristol', c.id, '29 Nelson Street, Bristol BS1 2LB', 51.4545, -2.5885, 'Features the biggest and best screens in Bristol alongside first-class pool and snooker facilities. Popular for live sport screenings.', 'https://www.rileysbristol.co.uk', 4.0, 400, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bristol'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Cider Press', 'cider-press-bristol', c.id, '69 Gloucester Road, Bristol BS7 8AD', 51.4670, -2.5910, 'Gloucester Road pub with two HD projectors and eight smaller screens showing all major sports. Great selection of local ciders and ales.', 'https://www.theciderpress.co.uk', 4.2, 350, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bristol'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Bristol', 'oneills-bristol', c.id, '28 Clare Street, Bristol BS1 1YA', 51.4540, -2.5935, 'Classic Irish pub with full Sky Sports and TNT Sports access for Premier League, Champions League and rugby. Friendly atmosphere with good food.', 'https://www.oneills.co.uk/national-search/south-west/bristol', 4.0, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'bristol'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NEWCASTLE VENUES (8 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shark Club Newcastle', 'shark-club-newcastle', c.id, '1 Scotswood Road, Newcastle upon Tyne NE1 4AD', 54.9680, -1.6230, 'The biggest and best sports bar in Newcastle with some of the largest screens available. Pool tables, great food and a buzzing matchday atmosphere.', 'https://www.sharkclub.co.uk', 4.1, 800, 20, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Nine Sports Bar', 'nine-sports-bar-newcastle', c.id, '9 Newgate Street, Newcastle upon Tyne NE1 5RE', 54.9733, -1.6152, 'The place for Newcastle fans with 35 large-screen TVs. Popular with like-minded supporters wanting to watch live football together.', 'https://www.ninesportsbar.co.uk', 4.2, 600, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Akenside Traders', 'akenside-traders-newcastle', c.id, '20 Akenside Hill, Newcastle upon Tyne NE1 3XF', 54.9700, -1.6095, 'Top sports bar in the city centre with plenty of HD screens showing all the latest sports from football to rugby and golf.', 'https://www.akensidetraders.co.uk', 4.2, 500, 10, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bar 52', 'bar-52-newcastle', c.id, '52 Westgate Road, Newcastle upon Tyne NE1 5XU', 54.9725, -1.6170, 'Newcastle''s number one sports bar with multiple large screens, great drinks deals and a lively atmosphere for every major sporting event.', 'https://bar52.co.uk', 4.1, 700, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'WonderBar Newcastle', 'wonderbar-newcastle', c.id, '2 Neville Street, Newcastle upon Tyne NE1 5EN', 54.9685, -1.6180, 'Ultimate hangout for live sports on TV with fantastic food and drink, interactive darts and live music every night of the week.', 'https://www.wonderbar.co.uk', 4.0, 400, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Three Bulls Heads', 'three-bulls-heads-newcastle', c.id, '57 Percy Street, Newcastle upon Tyne NE1 7RN', 54.9750, -1.6140, 'Hot spot for football enthusiasts near St James'' Park with pints and screens for pre-match and post-match viewing.', 'https://www.threebullsheads.co.uk', 4.1, 350, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Gosforth Hotel', 'gosforth-hotel-newcastle', c.id, '37 Salters Road, Gosforth, Newcastle upon Tyne NE3 1DH', 55.0050, -1.6180, 'Top sports bar in Gosforth with live sports from the Six Nations to the Euros alongside local cask ales and good food.', 'https://www.gosforthhotel.co.uk', 4.2, 400, 8, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Crows Nest', 'crows-nest-newcastle', c.id, '124 Percy Street, Newcastle upon Tyne NE1 7RS', 54.9765, -1.6148, 'Sports pub with a beer garden, TNT Sports and Sky Sports. All three things needed for a quality live sports experience.', 'https://www.crowsnestnewcastle.co.uk', 4.0, 300, 6, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'newcastle'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- BRIGHTON VENUES (5 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The New Unity', 'new-unity-brighton', c.id, '2-3 Viaduct Road, Brighton BN1 4ND', 50.8292, -0.1418, 'Brighton''s best sports pub with 17 screens around the pub including upstairs viewing area with rows of tables. 3 screens above the bar and 7 on tables.', 'https://www.thenewunity.co.uk', 4.2, 600, 17, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'brighton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The King & Queen', 'king-and-queen-brighton', c.id, '13-17 Marlborough Place, Brighton BN1 1UB', 50.8260, -0.1400, 'Brighton''s largest sports bar dating back to the 1700s with HD TVs and projector screens throughout showing live football from every league.', 'https://thekingandqueen.co.uk', 4.1, 800, 12, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'brighton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Fiddler''s Elbow', 'fiddlers-elbow-brighton', c.id, '11 Boyces Street, Brighton BN1 1AN', 50.8248, -0.1392, 'Irish pub showing a wide variety of live sports including football, rugby, snooker, golf, cricket, NFL and more. Friendly local atmosphere.', 'https://www.fiddlerselbow.co.uk', 4.3, 500, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'brighton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Brighton', 'walkabout-brighton', c.id, '79 West Street, Brighton BN1 2RA', 50.8222, -0.1432, 'Live sport with massive screens covering football, rugby and F1 racing alongside lagers, cask ales and tasty wings.', 'https://www.walkaboutbars.co.uk/brighton', 3.9, 700, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'brighton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Crossbar Brighton', 'crossbar-brighton', c.id, '34 Western Road, Brighton BN1 2NW', 50.8230, -0.1470, 'The UK''s first bar devoted primarily to women''s sport, screening action across eight screens while still showing selected men''s fixtures.', 'https://www.crossbarbrighton.co.uk', 4.4, 200, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'brighton'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SHEFFIELD VENUES (5 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Champs Sports Bar', 'champs-sports-bar-sheffield', c.id, '537 Ecclesall Road, Sheffield S11 8PR', 53.3645, -1.4920, 'One of the most popular spots in Sheffield for live football with a large venue, beer, cocktails and food. Gigantic HD screen in the outside beer garden.', 'https://www.champssheffield.co.uk', 4.2, 700, 10, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'sheffield'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Common Room', 'common-room-sheffield', c.id, '127-129 Devonshire Street, Sheffield S3 7SB', 53.3808, -1.4740, 'Sheffield''s original sports bar with over 50 screens across a two-storey venue plus an American Pool room. The ultimate sports viewing destination.', 'https://www.thecommonroom.co.uk', 4.1, 600, 50, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sheffield'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BOX Sheffield', 'box-sheffield', c.id, '1 Holly Street, Sheffield S1 2GT', 53.3810, -1.4700, 'Sports bar showing all Sky, TNT and Box Office events with commentary on 30 HD screens. Also features electric darts, live music and great food.', 'https://www.theboxbar.co.uk/bars/sheffield', 4.2, 800, 30, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sheffield'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Extra Time Sports Bar & Grill', 'extra-time-sheffield', c.id, '179 West Street, Sheffield S1 4EW', 53.3815, -1.4780, 'Over 40 high-definition screens showing live sports across the venue. Fantastic venue for watching sport any time of day or night.', 'https://www.extratimesportsbar.com', 4.1, 500, 40, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'sheffield'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Cavendish', 'the-cavendish-sheffield', c.id, '325 Ecclesall Road, Sheffield S11 8NX', 53.3690, -1.4860, 'Self-proclaimed best pub in Sheffield with sports on many screens alongside a welcoming atmosphere that caters to sports lovers and casual drinkers alike.', 'https://www.thecavendishsheffield.co.uk', 4.2, 400, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'sheffield'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NOTTINGHAM VENUES (5 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'BOX Nottingham', 'box-nottingham', c.id, '1 Trinity Walk, Nottingham NG1 2AN', 52.9530, -1.1540, 'One of the biggest and best sports bars in Nottingham with 35 HD screens including a giant 2m x 3m screen, the largest in the city.', 'https://www.theboxbar.co.uk/bars/nottingham', 4.2, 1000, 35, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'nottingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Blind Rabbit', 'blind-rabbit-nottingham', c.id, '58 Goldsmith Street, Nottingham NG1 5JT', 52.9545, -1.1520, 'New York-inspired games bar great for football watching with some of the best burgers and loaded fries in Nottingham alongside creative cocktails.', 'https://www.theblindrabbit.co.uk', 4.3, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'nottingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Faradays', 'faradays-nottingham', c.id, '2 Victoria Street, Nottingham NG1 2EX', 52.9525, -1.1475, 'Nottingham''s number one for sport with 16 TVs and 3 Sky boxes including 7 booths with their own TVs. Renowned sports table service so you never leave your seat.', 'https://www.faradaysnottingham.co.uk', 4.2, 400, 16, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'nottingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Bierkeller Nottingham', 'bierkeller-nottingham', c.id, '19-21 Forman Street, Nottingham NG1 4AA', 52.9528, -1.1450, 'The Shooters sports bar features multiple TV screens and a huge projector, showing up to three live sporting events at once in a stadium atmosphere.', 'https://www.thebierkeller.com/nottingham', 4.0, 800, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'nottingham'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Huddl Nottingham', 'huddl-nottingham', c.id, '19 Broad Street, Nottingham NG1 3AJ', 52.9535, -1.1500, 'Interactive darts, huge selection of beers and plenty of big screens for live sport. Unique option to move from football to private Xbox or PlayStation sessions.', 'https://www.socialpubandkitchen.co.uk/huddl-nottingham', 4.1, 350, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'nottingham'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- LEICESTER VENUES (4 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Locker Room', 'locker-room-leicester', c.id, '8 Market Place, Leicester LE1 5GF', 52.6350, -1.1360, 'City centre venue with Leicester''s largest projector and over 25 screens. Open seven days a week for all major sporting events.', 'https://www.thelockerroom.co.uk', 4.1, 500, 25, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'leicester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Leicester', 'walkabout-leicester', c.id, '19 Belvoir Street, Leicester LE1 6SL', 52.6340, -1.1340, 'Haven for sports lovers with screens showcasing Champions League, tennis and everything in between. Great drinks deals on matchdays.', 'https://www.walkaboutbars.co.uk/leicester', 3.9, 600, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'leicester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Loaded Dog', 'loaded-dog-leicester', c.id, '36-38 Braunstone Gate, Leicester LE3 5LG', 52.6330, -1.1470, 'One of the best pubs in Leicester for sport with a huge TV and 11 flat screens around the venue including one outside in the beer garden.', 'https://www.theloadeddog.co.uk', 4.2, 400, 12, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'leicester'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Leicester', 'oneills-leicester', c.id, '17 Loseby Lane, Leicester LE1 5DR', 52.6347, -1.1345, 'Irish pub showing all major live sports with TNT Sports and Sky Sports access for Premier League, Champions League and Europa League.', 'https://www.oneills.co.uk/national-search/east-and-west-midlands/leicester', 4.0, 450, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'leicester'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- SOUTHAMPTON VENUES (4 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT '5 Rivers Sports Bar & Grill', 'five-rivers-southampton', c.id, '5 Bridge Road, Southampton SO15 1AJ', 50.9060, -1.4100, 'Bright and modern venue with screens covering every inch of the bar and an indoor-outdoor shelter with many HD screens. Food served all day.', 'https://www.5rivers.pub', 4.2, 500, 12, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'southampton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Shenanigans Southampton', 'shenanigans-southampton', c.id, '142 Above Bar Street, Southampton SO14 7DU', 50.9100, -1.4040, 'The city''s best-loved Irish sports bar with big-screen TVs showing football, cricket, rugby and more. Late opening extending into early morning on weekends.', 'https://shenanigansirishsportsbar.co.uk', 4.1, 600, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'southampton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'O''Neill''s Southampton', 'oneills-southampton', c.id, '1-2 London Road, Southampton SO15 2AE', 50.9110, -1.4035, 'Irish party bar with eight screens, TNT Sport and Sky Sports for all televised Premier League and Champions League action. Great Irish atmosphere.', 'https://www.oneills.co.uk/national-search/south-east/southampton', 4.0, 500, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'southampton'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Scholars Arms', 'scholars-arms-southampton', c.id, '142 Above Bar Street, Southampton SO14 7DT', 50.9095, -1.4042, 'Ideally located in the heart of Southampton near St Mary''s Stadium with top grub, plenty of large screens and several Sky boxes.', 'https://www.scholarsarms.co.uk', 4.1, 350, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'southampton'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- NORWICH VENUES (3 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Woolpack', 'the-woolpack-norwich', c.id, '34 Maidstone Road, Norwich NR1 1EG', 52.6240, 1.3020, 'Ten big screens (two outside) with access to Sky, TNT and terrestrial broadcasts. Gourmet meals and a solid range of beers and ales.', 'https://www.greeneking.co.uk/pubs/norfolk/woolpack', 4.2, 400, 10, 'casual', '$$', true, true, true
FROM cities c WHERE c.slug = 'norwich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Mulligans Norwich', 'mulligans-norwich', c.id, '32 Timber Hill, Norwich NR1 3LB', 52.6280, 1.2960, 'Dedicated sports bar area with a 72-inch screen, just minutes from Carrow Road. Also features electro-darts, crazy golf and American pool.', 'https://www.mulligansnorwich.co.uk', 4.1, 350, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'norwich'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Coachmakers Arms', 'coachmakers-arms-norwich', c.id, '1 St Stephens Road, Norwich NR1 3SP', 52.6265, 1.2940, 'Historic 17th century pub dedicated to showing all the best football competitions. Old-world atmosphere ideal for Champions League or FA Cup viewing.', 'https://www.coachmakersarms.co.uk', 4.3, 300, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'norwich'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- EXETER VENUES (3 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Standoff', 'the-standoff-exeter', c.id, '53 Fore Street, Exeter EX4 3AH', 50.7215, -3.5310, 'Multiple large HD screens showing Premier League, live rugby, boxing, cricket and international tournaments. Also a top live music venue.', 'https://www.thestandoff.co.uk', 4.2, 500, 8, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'exeter'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'The Dugout Sports Bar', 'the-dugout-exeter', c.id, '43 Queen Street, Exeter EX4 3SR', 50.7235, -3.5340, 'Massive ultra-HD screening wall for the biggest sporting events from around the globe. Dedicated sports bar in the heart of Exeter city centre.', 'https://thedugoutbar.co.uk', 4.1, 400, 6, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'exeter'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Ludo Sports Bar & Kitchen', 'ludo-exeter', c.id, '1 Guildhall Shopping Centre, Exeter EX4 3HP', 50.7230, -3.5320, 'Plenty of ultra HD screens and state-of-the-art sound system in the restaurant and bar area with a stunning rooftop terrace for outdoor viewing.', 'https://www.ludobars.com/venues/ludo-exeter', 4.2, 350, 8, 'lively', '$$', true, true, true
FROM cities c WHERE c.slug = 'exeter'
ON CONFLICT (slug) DO NOTHING;

-- ============================================================================
-- PLYMOUTH VENUES (3 total)
-- ============================================================================

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Walkabout Plymouth', 'walkabout-plymouth', c.id, '12 Union Street, Plymouth PL1 2SR', 50.3705, -4.1410, 'Sports bar with huge HD screens showing all Premier League matches from early kick-offs to Super Sundays plus rugby, boxing and UFC.', 'https://www.walkaboutbars.co.uk/plymouth', 3.9, 600, 10, 'lively', '$$', true, false, true
FROM cities c WHERE c.slug = 'plymouth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'Brass Monkey Plymouth', 'brass-monkey-plymouth', c.id, '12-14 Royal Parade, Plymouth PL1 1DS', 50.3720, -4.1370, 'One of the best pubs to watch sport in Plymouth with cold pints, food and all the best games on the big screen. Football, rugby and horse racing.', 'https://www.thepeoplespub.co.uk/brass-monkey-plymouth', 4.1, 400, 8, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'plymouth'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO venues (name, slug, city_id, address, latitude, longitude, description, website_url, google_rating, google_review_count, number_of_screens, atmosphere, price_range, has_food, has_outdoor_area, is_verified)
SELECT 'James Street Vaults', 'james-street-vaults-plymouth', c.id, '4 James Street, Plymouth PL1 2HT', 50.3710, -4.1385, 'Historic city centre pub with Sky Sports and TNT Sports on multiple screens. Friendly atmosphere with real ales and traditional pub food.', 'https://www.jamesstreet.co.uk', 4.2, 300, 6, 'casual', '$$', true, false, true
FROM cities c WHERE c.slug = 'plymouth'
ON CONFLICT (slug) DO NOTHING;
