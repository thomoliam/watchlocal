# WatchLocal: City x League SEO Seed Priority Analysis

## Methodology

This analysis estimates relative search demand based on:
- Volume of dedicated content (articles, guides, listicles) for each city x league combo
- Number of dedicated venues catering to that league in each city
- Expat/traveler population density and English-speaking demand
- Time zone alignment (drives bar viewing vs. home streaming)
- Global league popularity + regional fanbase strength
- Presence of official fan clubs / supporter groups in-city
- Digital nomad hub status (drives English-language search)

---

## PART 1: TOP 20 City x League Combinations by Estimated Search Demand

### Rank 1: Bangkok x EPL
**Reasoning:** Bangkok is the #1 expat/digital nomad hub in SE Asia with a massive British expat community. Thailand has huge organic EPL fandom. Time zone works well (evening viewing). Dozens of dedicated articles exist. Multiple bars compete specifically for EPL viewers. Extremely high search volume for "where to watch Premier League in Bangkok."

### Rank 2: Dubai x EPL
**Reasoning:** Enormous British expat population (~240k Brits in UAE). EPL is the dominant sport. Countless dedicated articles from TimeOut, Whatson, MyBayut, etc. McGettigan's alone has 5+ locations all marketing EPL viewing. Every sports bar in Dubai leads with EPL.

### Rank 3: Bali (Canggu/Seminyak) x EPL
**Reasoning:** Massive Australian + British digital nomad community. Dedicated articles from 6+ major Bali publications. Venues like Legends, Faraway, The Barn all compete on EPL viewing. Time zone is favorable for evening matches.

### Rank 4: Singapore x EPL
**Reasoning:** Large British expat community, strong football culture across all demographics. beIN Sports broadcasting deal means bars can easily show matches. Multiple official fan clubs (Arsenal, Liverpool, Chelsea) based at specific bars. High-intent search traffic.

### Rank 5: Hong Kong x EPL
**Reasoning:** Historic British connection, massive expat community in Wan Chai/LKF/Central. Dedicated sports bars like Wan Chai Stadium, Trafalgar, and Delaney's heavily market EPL. South China Morning Post regularly publishes EPL viewing guides.

### Rank 6: London x NFL
**Reasoning:** NFL has invested heavily in London (regular season games at Tottenham/Wembley). Official NFL UK bar partnerships exist. Passyunk Avenue has 5 locations specifically marketing NFL. Super Bowl viewing parties are major events. Very high search volume.

### Rank 7: New York x EPL
**Reasoning:** NYC has the most developed soccer bar scene in the US. Football Factory at Legends hosts 30+ supporter groups. Smithfield Hall is packed every weekend. "Soccer bars NYC" is a high-volume search. Strong British expat + global football fan community.

### Rank 8: Bangkok x UFC
**Reasoning:** Thailand is a martial arts culture; UFC fandom is enormous. The Sportsman specifically markets UFC events. Time zone means fights air live in morning/afternoon. Huge search volume from both expats and Thai MMA fans.

### Rank 9: Dubai x Champions League
**Reasoning:** Same massive expat population as EPL, with CL being the premium European football product. beIN Sports has exclusive rights. Same bars that show EPL heavily promote CL nights. Midweek evening viewing times work perfectly.

### Rank 10: Bali (Canggu) x AFL
**Reasoning:** Canggu is essentially an Australian colony. AFL is the #1 searched sport by the Aussie digital nomad community there. Dedicated content from Australian-focused Bali publications. Faraway, James Cook, and Galaxy specifically market AFL. Time zone is only 2 hours off AEST.

### Rank 11: London x EPL
**Reasoning:** While locals watch at home or at the ground, tourists and visiting fans heavily search for "where to watch [team] in London." Famous Three Kings, Greenwood, and dozens of team-specific pubs. Enormous search volume but more fragmented (team-specific searches).

### Rank 12: Bangkok x Champions League
**Reasoning:** Same infrastructure as EPL viewing. The Sportsman, Buddy's, and others all show CL. Evening kick-off times in Bangkok. CL final viewing is a major event at Bangkok sports bars.

### Rank 13: Singapore x F1
**Reasoning:** Singapore hosts an F1 Grand Prix, creating year-round F1 interest. Massive search spikes around the Singapore GP specifically. Sports bars heavily market F1 viewing. Strong overlap with the EPL-watching expat demographic.

### Rank 14: Dubai x F1
**Reasoning:** Proximity to Abu Dhabi GP creates strong regional F1 interest. Multiple TimeOut/WhatsonDubai articles about F1 viewing. Media One Hotel even has race simulators. Barasti and McGettigan's run F1-themed events.

### Rank 15: New York x Champions League
**Reasoning:** Same soccer bar infrastructure as EPL. Football Factory, Smithfield Hall show all CL matches. Afternoon kick-offs in NYC work well for bar viewing. Supporter groups drive attendance.

### Rank 16: Bangkok x NRL
**Reasoning:** Significant Australian expat population in Bangkok. The Sportsman, Red Lion, and Clubhouse all specifically market NRL. Dedicated tripAtrek articles exist. State of Origin is a major viewing event.

### Rank 17: Ho Chi Minh City x EPL
**Reasoning:** Growing expat/digital nomad hub. Vietnamese people have strong organic football fandom. The Rabbit Hole, Phatty's, and multiple D1 bars compete for EPL viewers. Favorable evening time zone.

### Rank 18: Bali (Canggu) x NRL
**Reasoning:** Same Australian demographic as AFL. NRL shown at Faraway, James Cook, Legends, The Barn. State of Origin is the biggest single viewing event of the year in Canggu. Time zone nearly identical to east coast Australia.

### Rank 19: London x F1
**Reasoning:** British fans passionate about F1 (home Grand Prix at Silverstone). BOX Piccadilly, Bar Kick, Long Arm all market F1 viewing. Sunday afternoon viewing times perfect for pub culture.

### Rank 20: Barcelona x EPL
**Reasoning:** Massive expat/tourist population. Irish pubs (Flaherty's, George Payne, McCarthy's) all compete for EPL viewers. La Liga viewing at home frees expats to seek EPL at bars. Strong content ecosystem from travel/expat publishers.

---

## PART 2: Venue Data for Top 20 (SQL-Ready Format)

```sql
-- Schema reference:
-- venue_name, city, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range

-- ============================================
-- RANK 1: BANGKOK x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('The Sportsman Bar & Restaurant', 'Bangkok', 'Thailand', 'Unit 10/22 Trendy Condominium, Sukhumvit Soi 13, Khlong Toei, Bangkok 10110', 'Bangkok''s premier sports bar with 8 separate viewing areas. 15 Brunswick pool tables, 5 dart boards, full Thai and Western menu with vegan options. 12-hour happy hour 07:00-19:00. Opens early for UFC/NFL.', 'EPL, Champions League, NFL, NBA, NHL, UFC, NRL, AFL, F1, La Liga, Bundesliga, Serie A, Rugby, Cricket, Boxing', 'Lively, multi-zone, expat-heavy', 34, TRUE, FALSE, TRUE, '$$'),

('Buddy''s Bar & Grill', 'Bangkok', 'Thailand', 'Multiple locations: Silom, Sukhumvit Soi 8, 20, 22, 89', 'Chain of 5 sports bars across Bangkok''s main expat areas. American-style bar & grill showing all major leagues. Reliable EPL coverage at every location.', 'EPL, Champions League, NFL, NBA, NHL, MLB, NRL, AFL, UFC', 'Casual, American-style, family-friendly', 10, TRUE, TRUE, FALSE, '$$'),

('The Clubhouse Sports Bar', 'Bangkok', 'Thailand', '21 Soi Sukhumvit 23, Khlong Toei Nuea, Watthana, Bangkok', 'Well-known for showing an exceptional range of sports. 15 HD screens. Particularly popular with golf, fight, rugby and cricket fans alongside EPL coverage.', 'EPL, Champions League, NRL, AFL, UFC, Golf, Cricket, Rugby, F1', 'Relaxed, sports-focused', 15, TRUE, FALSE, FALSE, '$$'),

('Robin Hood Bar', 'Bangkok', 'Thailand', 'Sukhumvit Soi 33, Bangkok', 'Classic British pub serving fish & chips and traditional pub grub. Reliable EPL coverage in a cozy setting.', 'EPL, Champions League, Rugby, Cricket', 'Traditional British pub', 8, TRUE, FALSE, FALSE, '$');

-- ============================================
-- RANK 2: DUBAI x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('McGettigan''s JLT', 'Dubai', 'UAE', 'Voco Bonnington Hotel, Cluster J, Jumeirah Lakes Towers, Dubai', 'Dubai''s most popular Irish pub chain. Official home of Liverpool, Aston Villa, and Everton supporter clubs. Multiple large screens, live entertainment, and Irish food. Multiple locations across Dubai.', 'EPL, Champions League, F1, Rugby, GAA, UFC, Boxing, Cricket', 'Lively Irish pub, supporter club atmosphere', 15, TRUE, TRUE, FALSE, '$$$'),

('The Huddle Sports Bar & Grill', 'Dubai', 'UAE', 'Citymax Hotel, Kuwait Street, Bur Dubai (also Al Barsha location)', 'British-style sports bar with 23 screens plus a 100-inch diamond screen and digital wall at Bur Dubai location. Open until 3am. One of Dubai''s most popular EPL venues.', 'EPL, Champions League, La Liga, Bundesliga, Serie A, Cricket, Rugby, F1', 'Relaxed British pub, large capacity', 23, TRUE, FALSE, TRUE, '$$'),

('Barasti Beach Bar', 'Dubai', 'UAE', 'Le Meridien Mina Seyahi Beach Resort, Dubai Marina', 'Iconic beach bar with a massive outdoor screen and smaller screens inside. Premier League viewing with beach vibes. One of Dubai''s most famous venues.', 'EPL, Champions League, F1, UFC, Rugby, Cricket', 'Beach bar, party atmosphere, outdoor', 12, TRUE, TRUE, TRUE, '$$$'),

('Fibber Magee''s', 'Dubai', 'UAE', 'Saeed Tower 1, Sheikh Zayed Road, Downtown Dubai', 'Dubai''s oldest Irish pub, open since the early days. Cozy atmosphere with dedicated sports following. Open daily 8am-3am.', 'EPL, Champions League, La Liga, Serie A, F1, Rugby, Cricket, GAA', 'Cozy Irish pub, friendly staff', 8, TRUE, FALSE, FALSE, '$$');

-- ============================================
-- RANK 3: BALI (CANGGU/SEMINYAK) x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Legends Bistro & Sports Bar', 'Bali', 'Indonesia', 'Jl. Subak Sari 13, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali 80361', 'Modern elevated sports bar with 18 large screens and 7 content sources. Largest draught beer selection in Canggu (8+ on tap). 120+ seats with indoor and garden areas. Opens early for breakfast viewing.', 'EPL, Champions League, AFL, NRL, UFC, F1, MotoGP, Rugby, Boxing, La Liga, Bundesliga', 'Modern, elevated, good food', 18, TRUE, TRUE, FALSE, '$'),

('Faraway Sports Bar & Grill', 'Bali', 'Indonesia', 'Jl. Pantai Batu Mejan, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80351', 'Beloved laid-back Balinese sports bar near Echo Beach. No AC, open-air feel. Pool table, local live bands. Strong Aussie sport focus but shows all EPL. Cheap prices, loyal regulars.', 'EPL, NRL, AFL, F1, MotoGP, UFC, Rugby Six Nations, Cricket, Supercars, Tennis', 'Laid-back, local feel, Aussie crowd', 10, TRUE, TRUE, FALSE, '$'),

('The Barn', 'Bali', 'Indonesia', 'Canggu, Bali (quiet area near Batu Bolong)', 'Tucked-away sports bar with 6 big screens and a massive projector. Shows all major leagues in a relaxed setting.', 'EPL, Champions League, NRL, AFL, F1', 'Relaxed, slightly hidden gem', 7, TRUE, FALSE, TRUE, '$'),

('Nirvana Sports Bar', 'Bali', 'Indonesia', 'Jl. Kayu Aya, Seminyak, Bali', 'Heart-of-Seminyak sports bar with 20 screens showing all major sports. Jumbo screen for big matches.', 'EPL, Champions League, AFL, NRL, UFC, Rugby, F1, La Liga, Bundesliga', 'Energetic, central location', 20, TRUE, FALSE, TRUE, '$$');

-- ============================================
-- RANK 4: SINGAPORE x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('BQ Bar', 'Singapore', 'Singapore', '39 Boat Quay, Singapore 049828', 'Riverside sports bar with 12 HD screens across indoor, terrace, and side street areas. Multi-zone sound. Official sponsor of Arsenal Singapore Supporters Club. Shows all 380 EPL matches live.', 'EPL, Champions League, Europa League, F1, AFL, Rugby Union, Rugby League, Tennis Grand Slams', 'Riverside, buzzing match atmosphere', 12, TRUE, TRUE, FALSE, '$$$'),

('Harry''s Singapore', 'Singapore', 'Singapore', 'Multiple locations (20+ across Singapore)', 'Chain of 20+ bars with dedicated supporter club partnerships (Chelsea at Cuppage, Liverpool at Clarke Quay). Reliable EPL coverage across every outlet.', 'EPL, Champions League, F1, Rugby, Cricket', 'Chain pub, reliable, widespread', 6, TRUE, TRUE, FALSE, '$$'),

('Al Capone''s Sports Bar', 'Singapore', 'Singapore', 'Kallang Wave Mall, 1 Stadium Place, #01-15, Singapore', 'Large screens on almost every wall with flowing drinks and food. Open daily 11am-1am. Lively atmosphere for match days.', 'EPL, Champions League, La Liga, Bundesliga, Serie A, F1, UFC, NBA', 'Lively, large screens everywhere', 15, TRUE, FALSE, FALSE, '$$');

-- ============================================
-- RANK 5: HONG KONG x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Wan Chai Stadium', 'Hong Kong', 'Hong Kong', 'Shop A3, G/F, Hay Wah Building, 72-86 Lockhart Road, Wan Chai', 'Well-decorated American sports pub with 100-inch screens on each wall. Pool tables, darts machines, table football. Happy hour 3-8pm. Red Formula 1 car hanging from ceiling.', 'EPL, Champions League, F1, NFL, NBA, Rugby, UFC, Boxing', 'American-style sports pub, well-decorated', 10, TRUE, FALSE, TRUE, '$$$'),

('Trafalgar', 'Hong Kong', 'Hong Kong', '1/F, 23 Luard Road, Wan Chai, Hong Kong', 'Self-proclaimed Hong Kong''s number one sports bar. Upstairs Wan Chai bar with screens inside and on balcony. Strong EPL and rugby coverage.', 'EPL, Champions League, Rugby, Cricket, F1', 'Upstairs pub, balcony viewing', 8, TRUE, TRUE, FALSE, '$$$'),

('17 Fenwick', 'Hong Kong', 'Hong Kong', '17 Fenwick Street, Wan Chai, Hong Kong', 'Boasts a 170-inch HD television screen with several smaller screens throughout. One of the largest sports viewing screens in Hong Kong.', 'EPL, Champions League, Rugby, F1, UFC, NBA', 'Massive screen, sports-focused', 8, TRUE, FALSE, TRUE, '$$$');

-- ============================================
-- RANK 6: LONDON x NFL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Passyunk Avenue Fitzrovia', 'London', 'UK', 'Cleveland Street, Fitzrovia, London', 'American dive bar chain with 5 London locations. Nick Foles Bar on lower ground floor dedicated to Philadelphia Eagles. Neon Budweiser signs, sports paraphernalia, batting cages at Waterloo Play location.', 'NFL, NBA, MLB, NHL, College Football', 'American dive bar, authentic US sports', 12, TRUE, FALSE, TRUE, '$$'),

('BOX Piccadilly', 'London', 'UK', 'Piccadilly, London', 'Central London sports bar with 33 screens across the venue. Guaranteed good view from anywhere. Large sport-loving crowd. Sharer steins and stadium atmosphere.', 'NFL, NBA, EPL, F1, Boxing, UFC, Rugby', 'Large, central, party atmosphere', 33, TRUE, FALSE, TRUE, '$$$'),

('The Hippodrome Casino', 'London', 'UK', 'Cranbourn Street, Leicester Square, London WC2H 7JH', 'UK''s largest entertainment venue with 9 bars including Paddy''s Sportsbook. Countless screens in Leicester Square location. Open late for NFL games.', 'NFL, NBA, EPL, Boxing, UFC, F1', 'Casino/entertainment complex', 20, TRUE, FALSE, TRUE, '$$$'),

('KERB Social Club', 'London', 'UK', 'Various London locations', 'Combines American sports bar energy with British pub comfort. Multiple screens for every race/game. Super Bowl packages with wings and pints included.', 'NFL, F1, EPL, Boxing, NBA, Rugby', 'American sports bar meets British pub', 15, TRUE, FALSE, TRUE, '$$');

-- ============================================
-- RANK 7: NEW YORK x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Football Factory at Legends', 'New York', 'USA', '6 West 33rd Street, New York, NY 10001', 'NYC''s premier soccer bar across from Empire State Building. 50+ big screen TVs, 100+ live matches per week. Home to 30+ NYC-based supporter groups. Close to all major transit.', 'EPL, Champions League, La Liga, Bundesliga, Serie A, Ligue 1, MLS', 'Die-hard football fans, supporter groups', 50, TRUE, FALSE, TRUE, '$$'),

('Smithfield Hall', 'New York', 'USA', '138 West 25th Street, New York, NY 10001', 'Chelsea sports bar with 26 TVs and two bars. Official home of Manchester United and West Ham NYC fan clubs. Outdoor booths with TVs. Walking distance from MSG.', 'EPL, Champions League, La Liga, Bundesliga, MLS, Serie A', 'Dedicated football bar, outdoor TVs', 26, TRUE, TRUE, FALSE, '$$'),

('Banter Bar', 'New York', 'USA', '132 Havemeyer Street, Williamsburg, Brooklyn, NY 11211', 'Williamsburg football bar where "football never sleeps." Shows EPL, Champions League, and NYCFC matches. Relaxed Brooklyn vibe.', 'EPL, Champions League, MLS, La Liga', 'Brooklyn hipster meets football fan', 10, TRUE, FALSE, FALSE, '$$');

-- ============================================
-- RANK 8: BANGKOK x UFC
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('The Sportsman Bar & Restaurant', 'Bangkok', 'Thailand', 'Unit 10/22 Trendy Condominium, Sukhumvit Soi 13, Khlong Toei, Bangkok 10110', 'Opens early for UFC events. 8 huge projector screens and 26 TVs. The go-to venue for UFC fight nights in Bangkok with electric atmosphere during main events.', 'UFC, EPL, Champions League, NFL, NBA, NRL, AFL, Boxing, F1', 'Electric during fights, multi-zone', 34, TRUE, FALSE, TRUE, '$$'),

('Shenanigans Irish Sportsbar', 'Bangkok', 'Thailand', '840 Surawong Rd, Silom, Bangkok', 'Silom-area Irish sports bar popular for UFC events. Good atmosphere and Irish pub feel.', 'UFC, EPL, Champions League, Boxing, Rugby', 'Irish pub, lively fight nights', 8, TRUE, FALSE, FALSE, '$$'),

('The Game Bangkok', 'Bangkok', 'Thailand', '137 Soi Sukhumvit 9, Bangkok (below Nana BTS)', 'Located directly below Nana BTS station. Huge projector screen and HD TVs on every pillar. Popular for UFC, NFL, and EPL.', 'UFC, EPL, NFL, Champions League, Boxing', 'Underground sports bar, big screens', 12, TRUE, FALSE, TRUE, '$$');

-- ============================================
-- RANK 9: DUBAI x CHAMPIONS LEAGUE
-- ============================================
-- (Same venues as Dubai x EPL - all show CL)

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('The Coterie', 'Dubai', 'UAE', 'Swissotel Al Murooj, Trade Centre, Dubai', 'Dubai''s largest indoor sports screen plus 20 additional screens. Happy hour deals, Sunday roasts. Kids under 12 eat free on Sundays. Excellent for CL midweek matches.', 'Champions League, EPL, La Liga, Bundesliga, Serie A, F1, UFC, Cricket', 'Family-friendly premium sports bar', 21, TRUE, TRUE, TRUE, '$$$');

-- ============================================
-- RANK 10: BALI (CANGGU) x AFL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('James Cook Sports Bar', 'Bali', 'Indonesia', 'Jl. Raya Kerobokan, Canggu, Bali', 'Aussie pub-style open plan and open-air sports bar on the outskirts of Canggu. Loads of screens, purpose-built for Australian sports fans. Never miss a minute of AFL.', 'AFL, NRL, EPL, Cricket, Rugby, F1', 'Aussie pub, open-air, relaxed', 12, TRUE, TRUE, FALSE, '$'),

('Galaxy Sports Bar', 'Bali', 'Indonesia', 'Near Double Six Beach, Seminyak, Bali', 'Over 20 years in operation. One of Bali''s longest-running sports bars. Shows AFL, Rugby, NRL, EPL, UFC and more.', 'AFL, NRL, EPL, UFC, Rugby, Cricket', 'Established, loyal following', 10, TRUE, FALSE, FALSE, '$');

-- ============================================
-- RANK 11: LONDON x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Famous Three Kings', 'London', 'UK', '171 North End Road, West Kensington, London W14 9NL', 'Multiple-time Sports Pub of the Year winner. 15 plasma screens and 3 projectors. Access to 70,000+ TV channels. Five separate drinking areas in a large Edwardian pub. Former music venue where Sex Pistols played.', 'EPL, Champions League, La Liga, Bundesliga, Serie A, F1, NFL, Rugby, Boxing, Cricket, GAA', 'Award-winning, historic, diverse crowd', 18, TRUE, FALSE, TRUE, '$$'),

('Greenwood Victoria', 'London', 'UK', 'Victoria, London', 'London''s flagship sports bar. Dedicated sports lounge upstairs with oversized screens. Wall-to-wall coverage. Great for big match nights and weekend fixtures.', 'EPL, Champions League, Rugby, NFL, Boxing, F1', 'Flagship, premium, great atmosphere', 15, TRUE, FALSE, TRUE, '$$'),

('BrewDog Waterloo', 'London', 'UK', 'Waterloo, London', 'Central London hub for Sky Sports & TNT. Shows EPL, EFL, Six Nations, F1, NFL and more. Craft beer selection.', 'EPL, Champions League, F1, NFL, Six Nations, Golf', 'Craft beer focused, modern', 12, TRUE, FALSE, TRUE, '$$');

-- ============================================
-- RANK 12: BANGKOK x CHAMPIONS LEAGUE
-- ============================================
-- (Same venues as Bangkok x EPL - all show CL. The Sportsman, Buddy's, Clubhouse all show CL.)

-- ============================================
-- RANK 13: SINGAPORE x F1
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Muddy Murphy''s', 'Singapore', 'Singapore', 'Claymore Connect, 442 Orchard Rd, #01-05 to 08, Singapore 238879', 'One of the first Irish pubs in Singapore. Wide range of sports including F1. Popular year-round but especially during Singapore GP weekend.', 'F1, EPL, Champions League, Rugby, Six Nations, GAA', 'Traditional Irish pub', 8, TRUE, FALSE, FALSE, '$$$');

-- ============================================
-- RANK 14: DUBAI x F1
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Offside', 'Dubai', 'UAE', 'Level 2, JA Ocean View Hotel, The Walk, JBR, Dubai', 'Great for large groups and families. Biggest indoor screen in JBR and Marina. Outdoor space, playground nearby, dog-friendly. Open daily 12pm-3am.', 'F1, EPL, Champions League, La Liga, UFC, Cricket, Rugby', 'Family-friendly, huge screen, outdoor', 15, TRUE, TRUE, TRUE, '$$$'),

('Media One Hotel', 'Dubai', 'UAE', 'Al Sufouh, Dubai Media City, Dubai', 'F1 Garden Party events with themed drinks, bites and a race sim experience. Open Mon-Fri 4pm-1am, Sat noon-2am, Sun noon-1am.', 'F1, EPL, Champions League, UFC', 'Trendy, event-focused, race sims', 10, TRUE, TRUE, TRUE, '$$$');

-- ============================================
-- RANK 15: NEW YORK x CHAMPIONS LEAGUE
-- ============================================
-- (Same venues as NYC x EPL: Football Factory at Legends, Smithfield Hall both show all CL)

-- ============================================
-- RANK 16: BANGKOK x NRL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Red Lion British Pub', 'Bangkok', 'Thailand', 'Sukhumvit Soi 13 (near Hyatt Regency), Bangkok', '6 large TV screens and a large projector. Shows all Australian NRL games live. Great range of British and Thai pub food.', 'NRL, EPL, AFL, Rugby Union, Cricket', 'British pub, Aussie-friendly', 7, TRUE, FALSE, TRUE, '$$');

-- ============================================
-- RANK 17: HO CHI MINH CITY x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Phatty''s', 'Ho Chi Minh City', 'Vietnam', '46-48 Ton That Thiep Street, District 1, Ho Chi Minh City', '7 large screens showing all the action. Popular with expats in District 1. Central location in the heart of the backpacker/expat area.', 'EPL, Champions League, La Liga, UFC, F1', 'Lively, backpacker-friendly', 7, TRUE, FALSE, FALSE, '$'),

('The Rabbit Hole', 'Ho Chi Minh City', 'Vietnam', 'District 1, Ho Chi Minh City (also Phu Quoc location)', 'Irish sports bar showing EPL, Champions League, La Liga, Bundesliga, Serie A, Ligue 1 and more. Two locations in Vietnam.', 'EPL, Champions League, La Liga, Bundesliga, Serie A, Ligue 1, Rugby', 'Irish pub, expat-friendly', 8, TRUE, FALSE, FALSE, '$'),

('Play Saigon', 'Ho Chi Minh City', 'Vietnam', 'Thao Dien, District 2, Ho Chi Minh City', 'Big screens everywhere plus two pro pool tables and dart boards. Huge drinks list. Located in the upscale expat neighborhood of Thao Dien.', 'EPL, Champions League, La Liga, UFC, F1, NFL', 'Upscale expat area, pool/darts', 10, TRUE, FALSE, FALSE, '$$');

-- ============================================
-- RANK 18: BALI (CANGGU) x NRL
-- ============================================
-- (Same venues as Bali AFL: Faraway, James Cook, Legends, Galaxy all show NRL)

-- ============================================
-- RANK 19: LONDON x F1
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Bar Kick', 'London', 'UK', 'Shoreditch, London', '12 HD screens across two floors. Table football throughout. Shows F1 along with NFL, EPL, and other sports. Open late.', 'F1, EPL, Champions League, NFL, Boxing', 'Trendy Shoreditch, table football', 12, TRUE, FALSE, FALSE, '$$'),

('Long Arm Pub & Brewery', 'London', 'UK', 'Shoreditch, London', 'Sustainable brewpub with two giant projectors and additional TV screens. Freshly brewed pints while watching F1. Popular for NFL too.', 'F1, NFL, EPL, Champions League, Rugby', 'Brewpub, laidback, Shoreditch', 8, TRUE, FALSE, TRUE, '$$');

-- ============================================
-- RANK 20: BARCELONA x EPL
-- ============================================

INSERT INTO venues (venue_name, city, country, address, description, leagues_shown, atmosphere, approx_screens, has_food, has_outdoor, has_projector, price_range) VALUES
('Flaherty''s Irish Pub', 'Barcelona', 'Spain', 'Placa de Joaquim Xirau, s/n, 08002 Barcelona', 'Established 2001. 7 plasma screens and 4 giant projectors. Separate pool room and darts. Sunny terrace. Free WiFi. Food served all day until midnight. One of Barcelona''s busiest Irish pubs.', 'EPL, Champions League, La Liga, Six Nations, NFL, Rugby', 'Busy Irish pub, terrace, expat hub', 11, TRUE, TRUE, TRUE, '$$'),

('CocoVail Beer Hall', 'Barcelona', 'Spain', 'Carrer d''Arai, 08002 Barcelona', 'American-style beer hall showing all FC Barcelona matches plus EPL, NFL, and more. Craft beer selection. Central location.', 'EPL, Champions League, La Liga, NFL, NBA', 'American beer hall, craft beer', 8, TRUE, FALSE, FALSE, '$$'),

('The George Payne', 'Barcelona', 'Spain', 'Near Urquinaona Metro, Barcelona', 'Irish bar with large projection screen for EPL matches. Popular with English-speaking expats and tourists.', 'EPL, Champions League, La Liga, Six Nations, Rugby', 'Irish pub, projection screen', 6, TRUE, FALSE, TRUE, '$$');
```

---

## PART 3: Next 30 Combinations to Seed (Prioritized)

| Priority | City | League | Reasoning |
|----------|------|--------|-----------|
| 21 | Melbourne | AFL | Domestic market, but huge search volume from "which pub" type queries |
| 22 | Sydney | EPL | Large British expat pop, early morning matches drive bar viewing |
| 23 | Dubai | UFC | Strong fight culture, bars open late, big expat demand |
| 24 | Chiang Mai | EPL | Major digital nomad hub, 5+ dedicated sports bars, strong content ecosystem |
| 25 | Phuket | EPL | Massive tourist volume, beach bar EPL culture |
| 26 | Amsterdam | EPL | Big expat community, Coco's Outback + O'Reilly's compete for EPL |
| 27 | New York | NFL | Domestic market but massive tourist search ("watch NFL in NYC") |
| 28 | London | Rugby/Six Nations | Heritage sport, pub culture, massive match-day search spikes |
| 29 | Singapore | Champions League | Same infrastructure as EPL, beIN Sports rights |
| 30 | Bangkok | F1 | Growing F1 interest in SE Asia, Sportsman shows all races |
| 31 | Hong Kong | Champions League | Same bars as EPL, strong midweek viewing demand |
| 32 | Tokyo | EPL | Footnik, The Highbury, British Pub 2nd Half serve dedicated fans |
| 33 | Bali (Canggu) | UFC | Fight culture meets Aussie/expat crowd, shown at multiple bars |
| 34 | Melbourne | EPL | Imperial pub is official Liverpool home, Crafty Squire popular |
| 35 | Sydney | NRL | Domestic market, massive search volume on game days |
| 36 | London | Champions League | Midweek viewing at pubs, same infrastructure as EPL |
| 37 | Kuala Lumpur | EPL | Strong football culture, Gridiron (33 screens), SOULed OUT |
| 38 | Paris | EPL | Bombardier, The Pub, Frog & Rosbif serve British/expat community |
| 39 | Dubai | La Liga | Large Spanish-speaking expat community, El Clasico events |
| 40 | Berlin | EPL | Growing expat hub, Belushi's + Irish pubs compete |
| 41 | Ho Chi Minh City | Champions League | Same venue infrastructure as EPL |
| 42 | Lisbon | EPL | Growing digital nomad hub, The Couch (80 screens across 3 locations) |
| 43 | Munich | Bundesliga | Tourist search ("where to watch Bayern"), Kilians + Champions Bar |
| 44 | Barcelona | La Liga | Tourists searching for "where to watch Barca" |
| 45 | Bangkok | La Liga | Growing interest, same bars as EPL show La Liga |
| 46 | Mexico City | EPL | Huge English football interest, growing expat community |
| 47 | Bali (Canggu) | F1 | Shown at all major sports bars, favorable time zone |
| 48 | Amsterdam | Champions League | Same bars as EPL, strong midweek demand |
| 49 | Madrid | La Liga | Tourist search for El Clasico viewing, Cerveceria Deportiva |
| 50 | Medellin | EPL | Fast-growing digital nomad hub, Patrick's Irish Pub opens early for EPL |

---

## Key Insights for WatchLocal Strategy

### Highest-Value Leagues (by cross-city search demand):
1. **EPL** - Dominant across ALL cities. Seed first everywhere.
2. **Champions League** - Same infrastructure as EPL, second-priority in every city.
3. **NFL** - Niche but passionate. Key cities: London, Bangkok, Dubai, NYC.
4. **F1** - Strong in Singapore, Dubai, London, Bangkok.
5. **UFC** - Strong in Bangkok, Dubai, Bali.
6. **AFL/NRL** - Concentrated in Bali, Bangkok, Melbourne, Sydney.

### Highest-Value Cities (by cross-league search demand):
1. **Bangkok** - Deepest sports bar ecosystem, 5+ leagues have strong demand.
2. **Dubai** - Premium market, high ad revenue potential.
3. **London** - Massive volume but fragmented (team-specific searches).
4. **Bali/Canggu** - Australian sports + EPL = unique dual-demand.
5. **Singapore** - Strong across EPL, F1, Champions League.

### Quick Wins:
- Bangkok, Dubai, and Bali sports bars show EVERYTHING - one venue seed covers 5+ leagues.
- London and NYC require more granular team-specific content.
- Canggu/Bali is underserved online despite massive demand (opportunity).
