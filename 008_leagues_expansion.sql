-- ============================================================
-- LEAGUES EXPANSION - Major Missing Leagues & Competitions
-- Based on global viewership data analysis
-- Safe to re-run: uses ON CONFLICT (slug) DO NOTHING
-- ============================================================


-- ============================================================
-- COMBAT SPORTS
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('ONE Championship', 'ONE', 'one-championship', 'mma', 'Singapore', 'Asia''s largest global sports media property featuring MMA, Muay Thai, kickboxing, and submission grappling. Over 6 billion video views annually.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Bellator MMA', 'BMMA', 'bellator-mma', 'mma', 'United States', 'Major mixed martial arts promotion and the second-largest MMA organization in the world behind the UFC.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('WWE', 'WWE', 'wwe', 'wrestling', 'United States', 'World Wrestling Entertainment. The largest professional wrestling promotion globally with 8% US TV viewership share.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- MOTORSPORT
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('MotoGP', 'MGP', 'motogp', 'motorsport', 'Spain', 'The premier class of motorcycle road racing. Over 2.5 billion video views annually across 20+ Grand Prix races worldwide.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('NASCAR', 'NASCAR', 'nascar', 'motorsport', 'United States', 'The National Association for Stock Car Auto Racing. America''s most popular motorsport series with the Cup Series as its top competition.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- GOLF
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('PGA Tour', 'PGA', 'pga-tour', 'golf', 'United States', 'The premier professional golf tour in the world, organizing the majority of top-tier men''s golf tournaments.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('The Masters', 'MSTR', 'the-masters', 'golf', 'United States', 'The first of golf''s four major championships held annually at Augusta National Golf Club. One of the most prestigious events in sport.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('The Open Championship', 'OPEN', 'the-open-championship', 'golf', 'United Kingdom', 'The oldest of the four major golf championships, played on links courses in the UK. Also known as the British Open.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- TENNIS (Individual Grand Slams)
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Wimbledon', 'WIM', 'wimbledon', 'tennis', 'United Kingdom', 'The oldest and most prestigious tennis tournament in the world, held annually at the All England Club on grass courts.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('US Open Tennis', 'USO', 'us-open-tennis', 'tennis', 'United States', 'Annual Grand Slam tennis tournament held in New York City. Known for its electric atmosphere and hard-court action.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Australian Open', 'AO', 'australian-open', 'tennis', 'Australia', 'The first Grand Slam of the year, held in Melbourne. Known as the Happy Slam for its relaxed Australian atmosphere.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Roland Garros', 'RG', 'roland-garros', 'tennis', 'France', 'The French Open, the only Grand Slam played on clay courts. Held annually at Stade Roland Garros in Paris.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- CYCLING
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Tour de France', 'TDF', 'tour-de-france', 'cycling', 'France', 'The most famous and prestigious cycling race in the world. A three-week Grand Tour held annually in France and nearby countries.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- EUROPEAN FOOTBALL - Additional Leagues
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('La Liga 2', 'LL2', 'la-liga-2', 'football', 'Spain', 'The second division of Spanish football. A competitive league serving as the pathway to La Liga.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Eredivisie', 'ERE', 'eredivisie', 'football', 'Netherlands', 'The top tier of Dutch football known for its attacking philosophy and producing world-class talent.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Primeira Liga', 'PL', 'primeira-liga', 'football', 'Portugal', 'The top division of Portuguese football featuring historic clubs like Benfica, Porto, and Sporting CP.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Scottish Premiership', 'SPFL', 'scottish-premiership', 'football', 'Scotland', 'The top flight of Scottish football dominated by the historic Old Firm rivalry between Celtic and Rangers.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- ASIAN & OCEANIAN FOOTBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('A-League', 'ALM', 'a-league', 'football', 'Australia', 'Australia''s top professional men''s football league featuring clubs from across Australia and New Zealand.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('J-League', 'J1', 'j-league', 'football', 'Japan', 'Japan''s top professional football league. Known for passionate supporters and high-quality football in Asia.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('K League', 'KL', 'k-league', 'football', 'South Korea', 'South Korea''s top professional football league and one of the strongest leagues in Asian football.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Chinese Super League', 'CSL', 'chinese-super-league', 'football', 'China', 'The top division of Chinese football. The most-watched domestic football league in Asia by total viewers.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Indian Super League', 'ISL', 'indian-super-league', 'football', 'India', 'India''s premier football league launched in 2013. Growing rapidly alongside India''s massive sports audience.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Saudi Pro League', 'SPL', 'saudi-pro-league', 'football', 'Saudi Arabia', 'The top division of Saudi football. Home to major global stars following huge investment and high-profile transfers.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- SOUTH AMERICAN FOOTBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Copa Libertadores', 'LIB', 'copa-libertadores', 'football', 'South America', 'South America''s premier club competition, equivalent to the UEFA Champions League. Renowned for its intense atmosphere.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Copa America', 'CA', 'copa-america', 'football', 'South America', 'The oldest international continental football competition in the world. Held every four years featuring South American and invited nations.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- INTERNATIONAL FOOTBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('UEFA European Championship', 'EURO', 'euro-championship', 'football', 'Europe', 'The quadrennial European international football championship. One of the most-watched sporting events globally.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('FIFA World Cup', 'WC', 'fifa-world-cup', 'football', 'International', 'The biggest single-sport event in the world, held every four years. Over 3.5 billion viewers for the final.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- CRICKET - Additional Competitions
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Cricket World Cup', 'CWC', 'cricket-world-cup', 'cricket', 'International', 'The ICC Cricket World Cup, the premier international championship of men''s One Day International cricket.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('The Hundred', '100', 'the-hundred', 'cricket', 'United Kingdom', 'A 100-ball cricket competition featuring city-based teams across England and Wales. Innovative fast-paced format launched in 2021.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Big Bash League', 'BBL', 'big-bash-league', 'cricket', 'Australia', 'Australia''s premier Twenty20 cricket competition. Known for exciting cricket and family-friendly entertainment during the Australian summer.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- RUGBY - Additional Competitions
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Rugby Championship', 'RC', 'rugby-championship', 'rugby-union', 'International', 'The annual southern hemisphere rugby union competition between New Zealand, South Africa, Australia, and Argentina.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Top 14', 'T14', 'top-14', 'rugby-union', 'France', 'The premier French rugby union club competition. One of the richest and most competitive domestic rugby leagues in the world.')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Premiership Rugby', 'PREM', 'premiership-rugby', 'rugby-union', 'England', 'The top tier of English rugby union featuring historic clubs. One of the most competitive domestic rugby leagues globally.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- VOLLEYBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Volleyball Nations League', 'VNL', 'volleyball-nations-league', 'volleyball', 'International', 'The premier annual international volleyball competition for both men and women, organized by FIVB.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- MULTI-SPORT EVENTS
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country, description)
VALUES ('Olympic Games', 'OLY', 'olympic-games', 'multi-sport', 'International', 'The Summer Olympic Games. The world''s foremost multi-sport event with 35% US viewership share and billions of global viewers.')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- ============================================================
-- TEAMS / PARTICIPANTS FOR KEY LEAGUES
-- ============================================================
-- ============================================================


-- ============================================================
-- ONE CHAMPIONSHIP - Top 15 Fighters (as participants/teams)
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Adriano Moraes', 'AMO', 'adriano-moraes', id, 'Brazil'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Angela Lee', 'ALE', 'angela-lee', id, 'Singapore'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Brandon Vera', 'BVE', 'brandon-vera', id, 'United States'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Christian Lee', 'CLE', 'christian-lee', id, 'Singapore'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Demetrious Johnson', 'DJO', 'demetrious-johnson', id, 'United States'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Eduard Folayang', 'EFO', 'eduard-folayang', id, 'Philippines'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Stamp Fairtex', 'SFA', 'stamp-fairtex', id, 'Thailand'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Superbon Singha Mawynn', 'SUP', 'superbon', id, 'Thailand'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Tawanchai PK Saenchai', 'TAW', 'tawanchai', id, 'Thailand'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Rodtang Jitmuangnon', 'ROD', 'rodtang', id, 'Thailand'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Marcus Almeida', 'MAL', 'marcus-almeida', id, 'Brazil'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Anatoly Malykhin', 'AMA', 'anatoly-malykhin', id, 'Russia'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Mikey Musumeci', 'MMU', 'mikey-musumeci', id, 'United States'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Nong-O Gaiyanghadao', 'NON', 'nong-o', id, 'Thailand'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Thanh Le', 'TLE', 'thanh-le', id, 'United States'
FROM leagues WHERE slug = 'one-championship'
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- MOTOGP - Current Riders (~22)
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Francesco Bagnaia', 'BAG', 'francesco-bagnaia', id, 'Italy'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Jorge Martin', 'JMA', 'jorge-martin', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Marc Marquez', 'MM9', 'marc-marquez', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Enea Bastianini', 'BAS', 'enea-bastianini', id, 'Italy'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Pedro Acosta', 'ACO', 'pedro-acosta', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Maverick Vinales', 'VIN', 'maverick-vinales', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Brad Binder', 'BBI', 'brad-binder', id, 'South Africa'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Fabio Di Giannantonio', 'DIG', 'fabio-di-giannantonio', id, 'Italy'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Alex Marquez', 'AM7', 'alex-marquez', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Franco Morbidelli', 'MOR', 'franco-morbidelli', id, 'Italy'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Marco Bezzecchi', 'BEZ', 'marco-bezzecchi', id, 'Italy'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Fabio Quartararo', 'QUA', 'fabio-quartararo', id, 'France'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Jack Miller', 'JMI', 'jack-miller', id, 'Australia'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Johann Zarco', 'ZAR', 'johann-zarco', id, 'France'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Raul Fernandez', 'RFE', 'raul-fernandez', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Augusto Fernandez', 'AFE', 'augusto-fernandez', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Luca Marini', 'LMA', 'luca-marini', id, 'Italy'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Takaaki Nakagami', 'NAK', 'takaaki-nakagami', id, 'Japan'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Alex Rins', 'RIN', 'alex-rins', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Miguel Oliveira', 'OLI', 'miguel-oliveira', id, 'Portugal'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Aleix Espargaro', 'AES', 'aleix-espargaro', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Pol Espargaro', 'PES', 'pol-espargaro', id, 'Spain'
FROM leagues WHERE slug = 'motogp'
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- NASCAR - Top 20 Drivers
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Kyle Larson', 'LAR', 'kyle-larson', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'William Byron', 'BYR', 'william-byron', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Denny Hamlin', 'HAM', 'denny-hamlin', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Martin Truex Jr', 'TRU', 'martin-truex-jr', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Christopher Bell', 'BEL', 'christopher-bell', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Tyler Reddick', 'RED', 'tyler-reddick', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Chase Elliott', 'ELL', 'chase-elliott', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Ryan Blaney', 'BLA', 'ryan-blaney', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Ross Chastain', 'CHA', 'ross-chastain', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Joey Logano', 'LOG', 'joey-logano', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Alex Bowman', 'BOW', 'alex-bowman', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Brad Keselowski', 'KES', 'brad-keselowski', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Bubba Wallace', 'WAL', 'bubba-wallace', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Daniel Suarez', 'SUA', 'daniel-suarez', id, 'Mexico'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Austin Cindric', 'CIN', 'austin-cindric', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Chris Buescher', 'BUE', 'chris-buescher', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Kevin Harvick', 'HAR', 'kevin-harvick', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Michael McDowell', 'MCD', 'michael-mcdowell', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Erik Jones', 'JON', 'erik-jones', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Noah Gragson', 'GRA', 'noah-gragson', id, 'United States'
FROM leagues WHERE slug = 'nascar'
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- PGA TOUR - Top 20 Golfers
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Scottie Scheffler', 'SCH', 'scottie-scheffler', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Rory McIlroy', 'MCI', 'rory-mcilroy', id, 'Northern Ireland'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Jon Rahm', 'RAH', 'jon-rahm', id, 'Spain'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Xander Schauffele', 'XSC', 'xander-schauffele', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Wyndham Clark', 'WCL', 'wyndham-clark', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Viktor Hovland', 'HOV', 'viktor-hovland', id, 'Norway'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Patrick Cantlay', 'CAN', 'patrick-cantlay', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Collin Morikawa', 'MOR', 'collin-morikawa', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Ludvig Aberg', 'ABE', 'ludvig-aberg', id, 'Sweden'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Brooks Koepka', 'KOE', 'brooks-koepka', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Max Homa', 'HOM', 'max-homa', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Jordan Spieth', 'SPE', 'jordan-spieth', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Tommy Fleetwood', 'FLE', 'tommy-fleetwood', id, 'England'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Justin Thomas', 'JTH', 'justin-thomas', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Tyrrell Hatton', 'HAT', 'tyrrell-hatton', id, 'England'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Sahith Theegala', 'THE', 'sahith-theegala', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Tony Finau', 'FIN', 'tony-finau', id, 'United States'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Hideki Matsuyama', 'MAT', 'hideki-matsuyama', id, 'Japan'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Cameron Smith', 'SMI', 'cameron-smith-golf', id, 'Australia'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Shane Lowry', 'LOW', 'shane-lowry', id, 'Ireland'
FROM leagues WHERE slug = 'pga-tour'
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- SAUDI PRO LEAGUE - All 18 Teams (2024/25 Season)
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Hilal', 'HIL', 'al-hilal', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Nassr', 'NAS', 'al-nassr', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Ittihad', 'ITT', 'al-ittihad', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Ahli', 'AHL', 'al-ahli-saudi', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Shabab', 'SHA', 'al-shabab', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Ettifaq', 'ETT', 'al-ettifaq', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Fateh', 'FAT', 'al-fateh', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Taawoun', 'TAA', 'al-taawoun', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Raed', 'RAE', 'al-raed', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Fayha', 'FAY', 'al-fayha', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Khaleej', 'KHA', 'al-khaleej', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Riyadh', 'RIY', 'al-riyadh', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Wehda', 'WEH', 'al-wehda', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Damac FC', 'DAM', 'damac-fc', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Hazem', 'HAZ', 'al-hazem', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Tai', 'TAI', 'al-tai', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Akhdoud', 'AKH', 'al-akhdoud', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Al Orobah', 'ORO', 'al-orobah', id, 'Saudi Arabia'
FROM leagues WHERE slug = 'saudi-pro-league'
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- A-LEAGUE - All 13 Teams (2024/25 Season)
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Melbourne Victory', 'MVY', 'melbourne-victory', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Melbourne City FC', 'MCY', 'melbourne-city-fc', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Sydney FC', 'SFC', 'sydney-fc', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Western Sydney Wanderers', 'WSW', 'western-sydney-wanderers', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Central Coast Mariners', 'CCM', 'central-coast-mariners', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Newcastle Jets', 'NJE', 'newcastle-jets', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Brisbane Roar', 'BRR', 'brisbane-roar', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Adelaide United', 'ADU', 'adelaide-united', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Perth Glory', 'PGL', 'perth-glory', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Wellington Phoenix', 'WPH', 'wellington-phoenix', id, 'New Zealand'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Macarthur FC', 'MAC', 'macarthur-fc', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Western United', 'WUN', 'western-united', id, 'Australia'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Auckland FC', 'AKL', 'auckland-fc', id, 'New Zealand'
FROM leagues WHERE slug = 'a-league'
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- EREDIVISIE - All 18 Teams (2024/25 Season)
-- ============================================================

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Ajax', 'AJA', 'ajax', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'PSV Eindhoven', 'PSV', 'psv-eindhoven', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Feyenoord', 'FEY', 'feyenoord', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'AZ Alkmaar', 'AZ', 'az-alkmaar', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'FC Twente', 'TWE', 'fc-twente', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'FC Utrecht', 'UTR', 'fc-utrecht', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Sparta Rotterdam', 'SPA', 'sparta-rotterdam', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Go Ahead Eagles', 'GAE', 'go-ahead-eagles', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'NEC Nijmegen', 'NEC', 'nec-nijmegen', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'SC Heerenveen', 'HEE', 'sc-heerenveen', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Fortuna Sittard', 'FOR', 'fortuna-sittard', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'PEC Zwolle', 'PEC', 'pec-zwolle', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Heracles Almelo', 'HER', 'heracles-almelo', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'RKC Waalwijk', 'RKC', 'rkc-waalwijk', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'FC Groningen', 'GRO', 'fc-groningen', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Willem II', 'WIL', 'willem-ii', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'NAC Breda', 'NAC', 'nac-breda', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;

INSERT INTO teams (name, short_name, slug, league_id, country)
SELECT 'Almere City FC', 'ALM', 'almere-city-fc', id, 'Netherlands'
FROM leagues WHERE slug = 'eredivisie'
ON CONFLICT (slug) DO NOTHING;
