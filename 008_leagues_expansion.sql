-- ============================================================
-- LEAGUES EXPANSION - Major Missing Leagues & Competitions
-- Based on global viewership data analysis
-- Safe to re-run: uses ON CONFLICT (slug) DO NOTHING
-- ============================================================


-- ============================================================
-- COMBAT SPORTS
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('ONE Championship', 'ONE', 'one-championship', 'mma', 'Singapore')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Bellator MMA', 'BMMA', 'bellator-mma', 'mma', 'United States')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('WWE', 'WWE', 'wwe', 'wrestling', 'United States')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- MOTORSPORT
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('MotoGP', 'MGP', 'motogp', 'motorsport', 'Spain')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('NASCAR', 'NASCAR', 'nascar', 'motorsport', 'United States')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- GOLF
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('PGA Tour', 'PGA', 'pga-tour', 'golf', 'United States')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('The Masters', 'MSTR', 'the-masters', 'golf', 'United States')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('The Open Championship', 'OPEN', 'the-open-championship', 'golf', 'United Kingdom')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- TENNIS (Individual Grand Slams)
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Wimbledon', 'WIM', 'wimbledon', 'tennis', 'United Kingdom')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('US Open Tennis', 'USO', 'us-open-tennis', 'tennis', 'United States')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Australian Open', 'AO', 'australian-open', 'tennis', 'Australia')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Roland Garros', 'RG', 'roland-garros', 'tennis', 'France')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- CYCLING
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Tour de France', 'TDF', 'tour-de-france', 'cycling', 'France')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- EUROPEAN FOOTBALL - Additional Leagues
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('La Liga 2', 'LL2', 'la-liga-2', 'football', 'Spain')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Eredivisie', 'ERE', 'eredivisie', 'football', 'Netherlands')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Primeira Liga', 'PL', 'primeira-liga', 'football', 'Portugal')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Scottish Premiership', 'SPFL', 'scottish-premiership', 'football', 'Scotland')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- ASIAN & OCEANIAN FOOTBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('A-League', 'ALM', 'a-league', 'football', 'Australia')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('J-League', 'J1', 'j-league', 'football', 'Japan')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('K League', 'KL', 'k-league', 'football', 'South Korea')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Chinese Super League', 'CSL', 'chinese-super-league', 'football', 'China')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Indian Super League', 'ISL', 'indian-super-league', 'football', 'India')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Saudi Pro League', 'SPL', 'saudi-pro-league', 'football', 'Saudi Arabia')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- SOUTH AMERICAN FOOTBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Copa Libertadores', 'LIB', 'copa-libertadores', 'football', 'South America')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Copa America', 'CA', 'copa-america', 'football', 'South America')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- INTERNATIONAL FOOTBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('UEFA European Championship', 'EURO', 'euro-championship', 'football', 'Europe')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('FIFA World Cup', 'WC', 'fifa-world-cup', 'football', 'International')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- CRICKET - Additional Competitions
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Cricket World Cup', 'CWC', 'cricket-world-cup', 'cricket', 'International')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('The Hundred', '100', 'the-hundred', 'cricket', 'United Kingdom')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Big Bash League', 'BBL', 'big-bash-league', 'cricket', 'Australia')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- RUGBY - Additional Competitions
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Rugby Championship', 'RC', 'rugby-championship', 'rugby-union', 'International')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Top 14', 'T14', 'top-14', 'rugby-union', 'France')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Premiership Rugby', 'PREM', 'premiership-rugby', 'rugby-union', 'England')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- VOLLEYBALL
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Volleyball Nations League', 'VNL', 'volleyball-nations-league', 'volleyball', 'International')
ON CONFLICT (slug) DO NOTHING;


-- ============================================================
-- MULTI-SPORT EVENTS
-- ============================================================

INSERT INTO leagues (name, short_name, slug, sport, country)
VALUES ('Olympic Games', 'OLY', 'olympic-games', 'multi-sport', 'International')
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
