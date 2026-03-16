-- WatchLocal Cities Expansion: Top 1,000 cities by tourist visitors
-- Generated 2026-03-16
-- Uses ON CONFLICT (slug) DO NOTHING to avoid duplicates with existing 614 cities

BEGIN;

-- =============================================
-- UNITED STATES (Top 100)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('New York City', 'new-york-city', 'United States', 40.7128, -74.0060, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Los Angeles', 'los-angeles', 'United States', 34.0522, -118.2437, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chicago', 'chicago', 'United States', 41.8781, -87.6298, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Miami', 'miami', 'United States', 25.7617, -80.1918, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Las Vegas', 'las-vegas', 'United States', 36.1699, -115.1398, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Francisco', 'san-francisco', 'United States', 37.7749, -122.4194, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Orlando', 'orlando', 'United States', 28.5383, -81.3792, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Washington D.C.', 'washington-dc', 'United States', 38.9072, -77.0369, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Boston', 'boston', 'United States', 42.3601, -71.0589, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Seattle', 'seattle', 'United States', 47.6062, -122.3321, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('New Orleans', 'new-orleans', 'United States', 29.9511, -90.0715, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nashville', 'nashville', 'United States', 36.1627, -86.7816, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Diego', 'san-diego', 'United States', 32.7157, -117.1611, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Denver', 'denver', 'United States', 39.7392, -104.9903, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Austin', 'austin', 'United States', 30.2672, -97.7431, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Portland', 'portland', 'United States', 45.5155, -122.6789, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Phoenix', 'phoenix', 'United States', 33.4484, -112.0740, 'America/Phoenix') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dallas', 'dallas', 'United States', 32.7767, -96.7970, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Houston', 'houston', 'United States', 29.7604, -95.3698, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Atlanta', 'atlanta', 'United States', 33.7490, -84.3880, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Philadelphia', 'philadelphia', 'United States', 39.9526, -75.1652, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Minneapolis', 'minneapolis', 'United States', 44.9778, -93.2650, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Detroit', 'detroit', 'United States', 42.3314, -83.0458, 'America/Detroit') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('St. Louis', 'st-louis', 'United States', 38.6270, -90.1994, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tampa', 'tampa', 'United States', 27.9506, -82.4572, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Charlotte', 'charlotte', 'United States', 35.2271, -80.8431, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Baltimore', 'baltimore', 'United States', 39.2904, -76.6122, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pittsburgh', 'pittsburgh', 'United States', 40.4406, -79.9959, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Antonio', 'san-antonio', 'United States', 29.4241, -98.4936, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sacramento', 'sacramento', 'United States', 38.5816, -121.4944, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salt Lake City', 'salt-lake-city', 'United States', 40.7608, -111.8910, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Honolulu', 'honolulu', 'United States', 21.3069, -157.8583, 'Pacific/Honolulu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Anchorage', 'anchorage', 'United States', 61.2181, -149.9003, 'America/Anchorage') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Savannah', 'savannah', 'United States', 32.0809, -81.0912, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Charleston', 'charleston', 'United States', 32.7765, -79.9311, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fort Lauderdale', 'fort-lauderdale', 'United States', 26.1224, -80.1373, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Scottsdale', 'scottsdale', 'United States', 33.4942, -111.9261, 'America/Phoenix') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kansas City', 'kansas-city', 'United States', 39.0997, -94.5786, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Raleigh', 'raleigh', 'United States', 35.7796, -78.6382, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Indianapolis', 'indianapolis', 'United States', 39.7684, -86.1581, 'America/Indiana/Indianapolis') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Columbus', 'columbus', 'United States', 39.9612, -82.9988, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cincinnati', 'cincinnati', 'United States', 39.1031, -84.5120, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cleveland', 'cleveland', 'United States', 41.4993, -81.6944, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Milwaukee', 'milwaukee', 'United States', 43.0389, -87.9065, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Memphis', 'memphis', 'United States', 35.1495, -90.0490, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Louisville', 'louisville', 'United States', 38.2527, -85.7585, 'America/Kentucky/Louisville') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Richmond', 'richmond', 'United States', 37.5407, -77.4360, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jacksonville', 'jacksonville', 'United States', 30.3322, -81.6557, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Oklahoma City', 'oklahoma-city', 'United States', 35.4676, -97.5164, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Albuquerque', 'albuquerque', 'United States', 35.0844, -106.6504, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tucson', 'tucson', 'United States', 32.2226, -110.9747, 'America/Phoenix') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Maui', 'maui', 'United States', 20.7984, -156.3319, 'Pacific/Honolulu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Key West', 'key-west', 'United States', 24.5551, -81.7800, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Palm Springs', 'palm-springs', 'United States', 33.8303, -116.5453, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santa Fe', 'santa-fe', 'United States', 35.6870, -105.9378, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aspen', 'aspen', 'United States', 39.1911, -106.8175, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Park City', 'park-city', 'United States', 40.6461, -111.4980, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sedona', 'sedona', 'United States', 34.8697, -111.7610, 'America/Phoenix') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Napa', 'napa', 'United States', 38.2975, -122.2869, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Myrtle Beach', 'myrtle-beach', 'United States', 33.6891, -78.8867, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Virginia Beach', 'virginia-beach', 'United States', 36.8529, -75.9780, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Jose', 'san-jose-us', 'United States', 37.3382, -121.8863, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fort Worth', 'fort-worth', 'United States', 32.7555, -97.3308, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('El Paso', 'el-paso', 'United States', 31.7619, -106.4850, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Omaha', 'omaha', 'United States', 41.2565, -95.9345, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Boise', 'boise', 'United States', 43.6150, -116.2023, 'America/Boise') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Buffalo', 'buffalo', 'United States', 42.8864, -78.8784, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Providence', 'providence', 'United States', 41.8240, -71.4128, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Des Moines', 'des-moines', 'United States', 41.5868, -93.6250, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Madison', 'madison', 'United States', 43.0731, -89.4012, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Asheville', 'asheville', 'United States', 35.5951, -82.5515, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Annapolis', 'annapolis', 'United States', 38.9784, -76.4922, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hilton Head', 'hilton-head', 'United States', 32.2163, -80.7526, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Monterey', 'monterey', 'United States', 36.6002, -121.8947, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santa Barbara', 'santa-barbara', 'United States', 34.4208, -119.6982, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Williamsburg', 'williamsburg', 'United States', 37.2707, -76.7075, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pensacola', 'pensacola', 'United States', 30.4213, -87.2169, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Branson', 'branson', 'United States', 36.6437, -93.2185, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gatlinburg', 'gatlinburg', 'United States', 35.7143, -83.5102, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Juneau', 'juneau', 'United States', 58.3005, -134.4197, 'America/Anchorage') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jackson Hole', 'jackson-hole', 'United States', 43.4799, -110.7624, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Moab', 'moab', 'United States', 38.5733, -109.5498, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lake Tahoe', 'lake-tahoe', 'United States', 39.0968, -120.0324, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sarasota', 'sarasota', 'United States', 27.3364, -82.5307, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Naples', 'naples-us', 'United States', 26.1420, -81.7948, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chattanooga', 'chattanooga', 'United States', 35.0456, -85.3097, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Reno', 'reno', 'United States', 39.5296, -119.8138, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Little Rock', 'little-rock', 'United States', 34.7465, -92.2896, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tulsa', 'tulsa', 'United States', 36.1540, -95.9928, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Knoxville', 'knoxville', 'United States', 35.9606, -83.9207, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hartford', 'hartford', 'United States', 41.7658, -72.6734, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Wilmington', 'wilmington', 'United States', 34.2257, -77.9447, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bend', 'bend', 'United States', 44.0582, -121.3153, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cabo San Lucas', 'cabo-san-lucas', 'Mexico', 22.8905, -109.9167, 'America/Mazatlan') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Telluride', 'telluride', 'United States', 37.9375, -107.8123, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vail', 'vail', 'United States', 39.6403, -106.3742, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('St. Augustine', 'st-augustine', 'United States', 29.9012, -81.3124, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rapid City', 'rapid-city', 'United States', 44.0805, -103.2310, 'America/Denver') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- CANADA (Top 25)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Toronto', 'toronto', 'Canada', 43.6532, -79.3832, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vancouver', 'vancouver', 'Canada', 49.2827, -123.1207, 'America/Vancouver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Montreal', 'montreal', 'Canada', 45.5017, -73.5673, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ottawa', 'ottawa', 'Canada', 45.4215, -75.6972, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Calgary', 'calgary', 'Canada', 51.0447, -114.0719, 'America/Edmonton') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Edmonton', 'edmonton', 'Canada', 53.5461, -113.4938, 'America/Edmonton') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Winnipeg', 'winnipeg', 'Canada', 49.8951, -97.1384, 'America/Winnipeg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Quebec City', 'quebec-city', 'Canada', 46.8139, -71.2080, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Halifax', 'halifax', 'Canada', 44.6488, -63.5752, 'America/Halifax') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Victoria', 'victoria', 'Canada', 48.4284, -123.3656, 'America/Vancouver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Whistler', 'whistler', 'Canada', 50.1163, -122.9574, 'America/Vancouver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Banff', 'banff', 'Canada', 51.1784, -115.5708, 'America/Edmonton') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Niagara Falls', 'niagara-falls', 'Canada', 43.0896, -79.0849, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kelowna', 'kelowna', 'Canada', 49.8880, -119.4960, 'America/Vancouver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Saskatoon', 'saskatoon', 'Canada', 52.1332, -106.6700, 'America/Regina') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Regina', 'regina', 'Canada', 50.4452, -104.6189, 'America/Regina') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('St. Johns', 'st-johns', 'Canada', 47.5615, -52.7126, 'America/St_Johns') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Charlottetown', 'charlottetown', 'Canada', 46.2382, -63.1311, 'America/Halifax') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fredericton', 'fredericton', 'Canada', 45.9636, -66.6431, 'America/Moncton') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Yellowknife', 'yellowknife', 'Canada', 62.4540, -114.3718, 'America/Yellowknife') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Whitehorse', 'whitehorse', 'Canada', 60.7212, -135.0568, 'America/Whitehorse') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hamilton', 'hamilton-canada', 'Canada', 43.2557, -79.8711, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('London', 'london-canada', 'Canada', 42.9849, -81.2453, 'America/Toronto') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jasper', 'jasper', 'Canada', 52.8737, -117.0814, 'America/Edmonton') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tofino', 'tofino', 'Canada', 49.1530, -125.9066, 'America/Vancouver') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- MEXICO (Top 15)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mexico City', 'mexico-city', 'Mexico', 19.4326, -99.1332, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cancun', 'cancun', 'Mexico', 21.1619, -86.8515, 'America/Cancun') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Guadalajara', 'guadalajara', 'Mexico', 20.6597, -103.3496, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Playa del Carmen', 'playa-del-carmen', 'Mexico', 20.6296, -87.0739, 'America/Cancun') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Vallarta', 'puerto-vallarta', 'Mexico', 20.6534, -105.2253, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tulum', 'tulum', 'Mexico', 20.2115, -87.4654, 'America/Cancun') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Oaxaca', 'oaxaca', 'Mexico', 17.0732, -96.7266, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Miguel de Allende', 'san-miguel-de-allende', 'Mexico', 20.9144, -100.7452, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Merida', 'merida-mexico', 'Mexico', 20.9674, -89.5926, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Monterrey', 'monterrey', 'Mexico', 25.6866, -100.3161, 'America/Monterrey') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puebla', 'puebla', 'Mexico', 19.0414, -98.2063, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tijuana', 'tijuana', 'Mexico', 32.5149, -117.0382, 'America/Tijuana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mazatlan', 'mazatlan', 'Mexico', 23.2494, -106.4111, 'America/Mazatlan') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Guanajuato', 'guanajuato', 'Mexico', 21.0190, -101.2574, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cozumel', 'cozumel', 'Mexico', 20.4318, -86.9223, 'America/Cancun') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- UNITED KINGDOM (Top 30)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('London', 'london', 'United Kingdom', 51.5074, -0.1278, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Manchester', 'manchester', 'United Kingdom', 53.4808, -2.2426, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Edinburgh', 'edinburgh', 'United Kingdom', 55.9533, -3.1883, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Glasgow', 'glasgow', 'United Kingdom', 55.8642, -4.2518, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Birmingham', 'birmingham', 'United Kingdom', 52.4862, -1.8904, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Liverpool', 'liverpool', 'United Kingdom', 53.4084, -2.9916, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bristol', 'bristol', 'United Kingdom', 51.4545, -2.5879, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leeds', 'leeds', 'United Kingdom', 53.8008, -1.5491, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cardiff', 'cardiff', 'United Kingdom', 51.4816, -3.1791, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Belfast', 'belfast', 'United Kingdom', 54.5973, -5.9301, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Newcastle', 'newcastle', 'United Kingdom', 54.9783, -1.6178, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Brighton', 'brighton', 'United Kingdom', 50.8225, -0.1372, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bath', 'bath', 'United Kingdom', 51.3758, -2.3599, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Oxford', 'oxford', 'United Kingdom', 51.7520, -1.2577, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cambridge', 'cambridge', 'United Kingdom', 52.2053, 0.1218, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('York', 'york', 'United Kingdom', 53.9591, -1.0815, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nottingham', 'nottingham', 'United Kingdom', 52.9548, -1.1581, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sheffield', 'sheffield', 'United Kingdom', 53.3811, -1.4701, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leicester', 'leicester', 'United Kingdom', 52.6369, -1.1398, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aberdeen', 'aberdeen', 'United Kingdom', 57.1497, -2.0943, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Inverness', 'inverness', 'United Kingdom', 57.4778, -4.2247, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Canterbury', 'canterbury', 'United Kingdom', 51.2802, 1.0789, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stratford-upon-Avon', 'stratford-upon-avon', 'United Kingdom', 52.1917, -1.7083, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Windsor', 'windsor', 'United Kingdom', 51.4846, -0.6044, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Swansea', 'swansea', 'United Kingdom', 51.6214, -3.9436, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Exeter', 'exeter', 'United Kingdom', 50.7184, -3.5339, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Plymouth', 'plymouth', 'United Kingdom', 50.3755, -4.1427, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dundee', 'dundee', 'United Kingdom', 56.4620, -2.9707, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stirling', 'stirling', 'United Kingdom', 56.1165, -3.9369, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salisbury', 'salisbury', 'United Kingdom', 51.0688, -1.7945, 'Europe/London') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- FRANCE (Top 25)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Paris', 'paris', 'France', 48.8566, 2.3522, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nice', 'nice', 'France', 43.7102, 7.2620, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lyon', 'lyon', 'France', 45.7640, 4.8357, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Marseille', 'marseille', 'France', 43.2965, 5.3698, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bordeaux', 'bordeaux', 'France', 44.8378, -0.5792, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Strasbourg', 'strasbourg', 'France', 48.5734, 7.7521, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Toulouse', 'toulouse', 'France', 43.6047, 1.4442, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lille', 'lille', 'France', 50.6292, 3.0573, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nantes', 'nantes', 'France', 47.2184, -1.5536, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Montpellier', 'montpellier', 'France', 43.6108, 3.8767, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cannes', 'cannes', 'France', 43.5528, 7.0174, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Avignon', 'avignon', 'France', 43.9493, 4.8055, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aix-en-Provence', 'aix-en-provence', 'France', 43.5297, 5.4474, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rennes', 'rennes', 'France', 48.1173, -1.6778, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dijon', 'dijon', 'France', 47.3220, 5.0415, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Grenoble', 'grenoble', 'France', 45.1885, 5.7245, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rouen', 'rouen', 'France', 49.4432, 1.0999, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Colmar', 'colmar', 'France', 48.0794, 7.3588, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Annecy', 'annecy', 'France', 45.8992, 6.1294, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Biarritz', 'biarritz', 'France', 43.4832, -1.5586, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Saint-Malo', 'saint-malo', 'France', 48.6493, -2.0061, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chamonix', 'chamonix', 'France', 45.9237, 6.8694, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tours', 'tours', 'France', 47.3941, 0.6848, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Carcassonne', 'carcassonne', 'France', 43.2130, 2.3491, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ajaccio', 'ajaccio', 'France', 41.9192, 8.7386, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- GERMANY (Top 25)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Berlin', 'berlin', 'Germany', 52.5200, 13.4050, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Munich', 'munich', 'Germany', 48.1351, 11.5820, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Frankfurt', 'frankfurt', 'Germany', 50.1109, 8.6821, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hamburg', 'hamburg', 'Germany', 53.5511, 9.9937, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cologne', 'cologne', 'Germany', 50.9375, 6.9603, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dusseldorf', 'dusseldorf', 'Germany', 51.2277, 6.7735, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stuttgart', 'stuttgart', 'Germany', 48.7758, 9.1829, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dresden', 'dresden', 'Germany', 51.0504, 13.7373, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leipzig', 'leipzig', 'Germany', 51.3397, 12.3731, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nuremberg', 'nuremberg', 'Germany', 49.4521, 11.0767, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Heidelberg', 'heidelberg', 'Germany', 49.3988, 8.6724, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hanover', 'hanover', 'Germany', 52.3759, 9.7320, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bremen', 'bremen', 'Germany', 53.0793, 8.8017, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rothenburg ob der Tauber', 'rothenburg-ob-der-tauber', 'Germany', 49.3769, 10.1789, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Freiburg', 'freiburg', 'Germany', 47.9990, 7.8421, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bamberg', 'bamberg', 'Germany', 49.8988, 10.9028, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Potsdam', 'potsdam', 'Germany', 52.3906, 13.0645, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bonn', 'bonn', 'Germany', 50.7374, 7.0982, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Weimar', 'weimar', 'Germany', 50.9795, 11.3235, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lubeck', 'lubeck', 'Germany', 53.8655, 10.6866, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mainz', 'mainz', 'Germany', 49.9929, 8.2473, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Trier', 'trier', 'Germany', 49.7490, 6.6371, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Regensburg', 'regensburg', 'Germany', 49.0134, 12.1016, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Garmisch-Partenkirchen', 'garmisch-partenkirchen', 'Germany', 47.4917, 11.0958, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aachen', 'aachen', 'Germany', 50.7753, 6.0839, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- ITALY (Top 25)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rome', 'rome', 'Italy', 41.9028, 12.4964, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Milan', 'milan', 'Italy', 45.4642, 9.1900, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Florence', 'florence', 'Italy', 43.7696, 11.2558, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Venice', 'venice', 'Italy', 45.4408, 12.3155, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Naples', 'naples', 'Italy', 40.8518, 14.2681, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Turin', 'turin', 'Italy', 45.0703, 7.6869, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bologna', 'bologna', 'Italy', 44.4949, 11.3426, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Palermo', 'palermo', 'Italy', 38.1157, 13.3615, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Genoa', 'genoa', 'Italy', 44.4056, 8.9463, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Verona', 'verona', 'Italy', 45.4384, 10.9916, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pisa', 'pisa', 'Italy', 43.7228, 10.4017, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Siena', 'siena', 'Italy', 43.3188, 11.3308, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Amalfi', 'amalfi', 'Italy', 40.6340, 14.6027, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cinque Terre', 'cinque-terre', 'Italy', 44.1461, 9.6439, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Catania', 'catania', 'Italy', 37.5079, 15.0830, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bari', 'bari', 'Italy', 41.1171, 16.8719, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Perugia', 'perugia', 'Italy', 43.1107, 12.3908, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Positano', 'positano', 'Italy', 40.6280, 14.4850, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ravenna', 'ravenna', 'Italy', 44.4184, 12.2035, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lecce', 'lecce', 'Italy', 40.3516, 18.1750, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Taormina', 'taormina', 'Italy', 37.8516, 15.2853, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sorrento', 'sorrento', 'Italy', 40.6263, 14.3758, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Como', 'como', 'Italy', 45.8081, 9.0852, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lucca', 'lucca', 'Italy', 43.8430, 10.5027, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Trieste', 'trieste', 'Italy', 45.6495, 13.7768, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- SPAIN (Top 25)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Madrid', 'madrid', 'Spain', 40.4168, -3.7038, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Barcelona', 'barcelona', 'Spain', 41.3874, 2.1686, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Seville', 'seville', 'Spain', 37.3891, -5.9845, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Valencia', 'valencia', 'Spain', 39.4699, -0.3763, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bilbao', 'bilbao', 'Spain', 43.2630, -2.9350, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Malaga', 'malaga', 'Spain', 36.7213, -4.4214, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Granada', 'granada', 'Spain', 37.1773, -3.5986, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Sebastian', 'san-sebastian', 'Spain', 43.3183, -1.9812, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ibiza', 'ibiza', 'Spain', 38.9067, 1.4206, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Palma de Mallorca', 'palma-de-mallorca', 'Spain', 39.5696, 2.6502, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Toledo', 'toledo-spain', 'Spain', 39.8628, -4.0273, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cordoba', 'cordoba-spain', 'Spain', 37.8882, -4.7794, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santiago de Compostela', 'santiago-de-compostela', 'Spain', 42.8782, -8.5448, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salamanca', 'salamanca', 'Spain', 40.9701, -5.6635, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zaragoza', 'zaragoza', 'Spain', 41.6488, -0.8891, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Alicante', 'alicante', 'Spain', 38.3452, -0.4810, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tenerife', 'tenerife', 'Spain', 28.2916, -16.6291, 'Atlantic/Canary') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Las Palmas', 'las-palmas', 'Spain', 28.1235, -15.4363, 'Atlantic/Canary') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cadiz', 'cadiz', 'Spain', 36.5271, -6.2886, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Girona', 'girona', 'Spain', 41.9794, 2.8214, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Segovia', 'segovia', 'Spain', 40.9429, -4.1088, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Marbella', 'marbella', 'Spain', 36.5099, -4.8862, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pamplona', 'pamplona', 'Spain', 42.8125, -1.6458, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ronda', 'ronda', 'Spain', 36.7462, -5.1612, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Menorca', 'menorca', 'Spain', 39.9496, 4.1104, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- PORTUGAL (Top 10)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lisbon', 'lisbon', 'Portugal', 38.7223, -9.1393, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Porto', 'porto', 'Portugal', 41.1579, -8.6291, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Faro', 'faro', 'Portugal', 37.0194, -7.9322, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Funchal', 'funchal', 'Portugal', 32.6669, -16.9241, 'Atlantic/Madeira') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Braga', 'braga', 'Portugal', 41.5518, -8.4229, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Coimbra', 'coimbra', 'Portugal', 40.2033, -8.4103, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sintra', 'sintra', 'Portugal', 38.7980, -9.3880, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Evora', 'evora', 'Portugal', 38.5711, -7.9093, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lagos', 'lagos-portugal', 'Portugal', 37.1028, -8.6732, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ponta Delgada', 'ponta-delgada', 'Portugal', 37.7483, -25.6666, 'Atlantic/Azores') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- NETHERLANDS (Top 10)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Amsterdam', 'amsterdam', 'Netherlands', 52.3676, 4.9041, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rotterdam', 'rotterdam', 'Netherlands', 51.9244, 4.4777, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('The Hague', 'the-hague', 'Netherlands', 52.0705, 4.3007, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Utrecht', 'utrecht', 'Netherlands', 52.0907, 5.1214, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Eindhoven', 'eindhoven', 'Netherlands', 51.4416, 5.4697, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Groningen', 'groningen', 'Netherlands', 53.2194, 6.5665, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Maastricht', 'maastricht', 'Netherlands', 50.8514, 5.6910, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Delft', 'delft', 'Netherlands', 52.0116, 4.3571, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leiden', 'leiden', 'Netherlands', 52.1601, 4.4970, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Haarlem', 'haarlem', 'Netherlands', 52.3874, 4.6462, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- BELGIUM (Top 8)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Brussels', 'brussels', 'Belgium', 50.8503, 4.3517, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bruges', 'bruges', 'Belgium', 51.2093, 3.2247, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ghent', 'ghent', 'Belgium', 51.0543, 3.7174, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Antwerp', 'antwerp', 'Belgium', 51.2194, 4.4025, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Liege', 'liege', 'Belgium', 50.6326, 5.5797, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leuven', 'leuven', 'Belgium', 50.8798, 4.7005, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Namur', 'namur', 'Belgium', 50.4674, 4.8720, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mechelen', 'mechelen', 'Belgium', 51.0259, 4.4776, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- SWITZERLAND (Top 10)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zurich', 'zurich', 'Switzerland', 47.3769, 8.5417, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Geneva', 'geneva', 'Switzerland', 46.2044, 6.1432, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Basel', 'basel', 'Switzerland', 47.5596, 7.5886, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bern', 'bern', 'Switzerland', 46.9480, 7.4474, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lucerne', 'lucerne', 'Switzerland', 47.0502, 8.3093, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Interlaken', 'interlaken', 'Switzerland', 46.6863, 7.8632, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lausanne', 'lausanne', 'Switzerland', 46.5197, 6.6323, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zermatt', 'zermatt', 'Switzerland', 46.0207, 7.7491, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('St. Moritz', 'st-moritz', 'Switzerland', 46.4908, 9.8355, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lugano', 'lugano', 'Switzerland', 46.0037, 8.9511, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- AUSTRIA (Top 8)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vienna', 'vienna', 'Austria', 48.2082, 16.3738, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salzburg', 'salzburg', 'Austria', 47.8095, 13.0550, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Innsbruck', 'innsbruck', 'Austria', 47.2692, 11.4041, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Graz', 'graz', 'Austria', 47.0707, 15.4395, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Linz', 'linz', 'Austria', 48.3069, 14.2858, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hallstatt', 'hallstatt', 'Austria', 47.5622, 13.6493, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Klagenfurt', 'klagenfurt', 'Austria', 46.6247, 14.3050, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bregenz', 'bregenz', 'Austria', 47.5031, 9.7471, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- IRELAND (Top 8)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dublin', 'dublin', 'Ireland', 53.3498, -6.2603, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cork', 'cork', 'Ireland', 51.8985, -8.4756, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Galway', 'galway', 'Ireland', 53.2707, -9.0568, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Limerick', 'limerick', 'Ireland', 52.6638, -8.6267, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Killarney', 'killarney', 'Ireland', 52.0599, -9.5044, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kilkenny', 'kilkenny', 'Ireland', 52.6541, -7.2448, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Waterford', 'waterford', 'Ireland', 52.2593, -7.1101, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Derry', 'derry', 'Ireland', 54.9966, -7.3086, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- SCANDINAVIA
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Copenhagen', 'copenhagen', 'Denmark', 55.6761, 12.5683, 'Europe/Copenhagen') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aarhus', 'aarhus', 'Denmark', 56.1629, 10.2039, 'Europe/Copenhagen') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Helsinki', 'helsinki', 'Finland', 60.1699, 24.9384, 'Europe/Helsinki') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tampere', 'tampere', 'Finland', 61.4978, 23.7610, 'Europe/Helsinki') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rovaniemi', 'rovaniemi', 'Finland', 66.5039, 25.7294, 'Europe/Helsinki') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Oslo', 'oslo', 'Norway', 59.9139, 10.7522, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bergen', 'bergen', 'Norway', 60.3913, 5.3221, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tromso', 'tromso', 'Norway', 69.6492, 18.9553, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stavanger', 'stavanger', 'Norway', 58.9700, 5.7331, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stockholm', 'stockholm', 'Sweden', 59.3293, 18.0686, 'Europe/Stockholm') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gothenburg', 'gothenburg', 'Sweden', 57.7089, 11.9746, 'Europe/Stockholm') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Malmo', 'malmo', 'Sweden', 55.6050, 13.0038, 'Europe/Stockholm') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Uppsala', 'uppsala', 'Sweden', 59.8586, 17.6389, 'Europe/Stockholm') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Reykjavik', 'reykjavik', 'Iceland', 64.1466, -21.9426, 'Atlantic/Reykjavik') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- GREECE (Top 10)
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Athens', 'athens', 'Greece', 37.9838, 23.7275, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Thessaloniki', 'thessaloniki', 'Greece', 40.6401, 22.9444, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mykonos', 'mykonos', 'Greece', 37.4467, 25.3289, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santorini', 'santorini', 'Greece', 36.3932, 25.4615, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Heraklion', 'heraklion', 'Greece', 35.3387, 25.1442, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rhodes', 'rhodes', 'Greece', 36.4341, 28.2176, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Corfu', 'corfu', 'Greece', 39.6243, 19.9217, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nafplio', 'nafplio', 'Greece', 37.5673, 22.8016, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chania', 'chania', 'Greece', 35.5138, 24.0180, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zakynthos', 'zakynthos', 'Greece', 37.7870, 20.8979, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- EASTERN EUROPE
-- =============================================
-- Poland (Top 8)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Warsaw', 'warsaw', 'Poland', 52.2297, 21.0122, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Krakow', 'krakow', 'Poland', 50.0647, 19.9450, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gdansk', 'gdansk', 'Poland', 54.3520, 18.6466, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Wroclaw', 'wroclaw', 'Poland', 51.1079, 17.0385, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Poznan', 'poznan', 'Poland', 52.4064, 16.9252, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lodz', 'lodz', 'Poland', 51.7592, 19.4560, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Torun', 'torun', 'Poland', 53.0138, 18.5984, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zakopane', 'zakopane', 'Poland', 49.2992, 19.9496, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;

-- Czech Republic (Top 5)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Prague', 'prague', 'Czech Republic', 50.0755, 14.4378, 'Europe/Prague') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Brno', 'brno', 'Czech Republic', 49.1951, 16.6068, 'Europe/Prague') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cesky Krumlov', 'cesky-krumlov', 'Czech Republic', 48.8127, 14.3175, 'Europe/Prague') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Karlovy Vary', 'karlovy-vary', 'Czech Republic', 50.2325, 12.8713, 'Europe/Prague') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Olomouc', 'olomouc', 'Czech Republic', 49.5938, 17.2509, 'Europe/Prague') ON CONFLICT (slug) DO NOTHING;

-- Slovakia (Top 3)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bratislava', 'bratislava', 'Slovakia', 48.1486, 17.1077, 'Europe/Bratislava') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kosice', 'kosice', 'Slovakia', 48.7164, 21.2611, 'Europe/Bratislava') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('High Tatras', 'high-tatras', 'Slovakia', 49.1399, 20.0861, 'Europe/Bratislava') ON CONFLICT (slug) DO NOTHING;

-- Hungary
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Budapest', 'budapest', 'Hungary', 47.4979, 19.0402, 'Europe/Budapest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Debrecen', 'debrecen', 'Hungary', 47.5316, 21.6273, 'Europe/Budapest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Eger', 'eger', 'Hungary', 47.9025, 20.3772, 'Europe/Budapest') ON CONFLICT (slug) DO NOTHING;

-- Croatia (Top 8)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zagreb', 'zagreb', 'Croatia', 45.8150, 15.9819, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dubrovnik', 'dubrovnik', 'Croatia', 42.6507, 18.0944, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Split', 'split', 'Croatia', 43.5081, 16.4402, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zadar', 'zadar', 'Croatia', 44.1194, 15.2314, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pula', 'pula', 'Croatia', 44.8666, 13.8496, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rovinj', 'rovinj', 'Croatia', 45.0812, 13.6387, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hvar', 'hvar', 'Croatia', 43.1729, 16.4412, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rijeka', 'rijeka', 'Croatia', 45.3271, 14.4422, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;

-- Baltics
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tallinn', 'tallinn', 'Estonia', 59.4370, 24.7536, 'Europe/Tallinn') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tartu', 'tartu', 'Estonia', 58.3780, 26.7290, 'Europe/Tallinn') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Riga', 'riga', 'Latvia', 56.9496, 24.1052, 'Europe/Riga') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vilnius', 'vilnius', 'Lithuania', 54.6872, 25.2797, 'Europe/Vilnius') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kaunas', 'kaunas', 'Lithuania', 54.8985, 23.9036, 'Europe/Vilnius') ON CONFLICT (slug) DO NOTHING;

-- Romania
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bucharest', 'bucharest', 'Romania', 44.4268, 26.1025, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Brasov', 'brasov', 'Romania', 45.6427, 25.5887, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cluj-Napoca', 'cluj-napoca', 'Romania', 46.7712, 23.6236, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sibiu', 'sibiu', 'Romania', 45.7983, 24.1256, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;

-- Bulgaria
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sofia', 'sofia', 'Bulgaria', 42.6977, 23.3219, 'Europe/Sofia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Plovdiv', 'plovdiv', 'Bulgaria', 42.1354, 24.7453, 'Europe/Sofia') ON CONFLICT (slug) DO NOTHING;

-- Slovenia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ljubljana', 'ljubljana', 'Slovenia', 46.0569, 14.5058, 'Europe/Ljubljana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bled', 'bled', 'Slovenia', 46.3684, 14.1146, 'Europe/Ljubljana') ON CONFLICT (slug) DO NOTHING;

-- Serbia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Belgrade', 'belgrade', 'Serbia', 44.7866, 20.4489, 'Europe/Belgrade') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Novi Sad', 'novi-sad', 'Serbia', 45.2671, 19.8335, 'Europe/Belgrade') ON CONFLICT (slug) DO NOTHING;

-- Montenegro
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Podgorica', 'podgorica', 'Montenegro', 42.4304, 19.2594, 'Europe/Podgorica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kotor', 'kotor', 'Montenegro', 42.4247, 18.7712, 'Europe/Podgorica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Budva', 'budva', 'Montenegro', 42.2914, 18.8400, 'Europe/Podgorica') ON CONFLICT (slug) DO NOTHING;

-- Bosnia and Herzegovina
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sarajevo', 'sarajevo', 'Bosnia and Herzegovina', 43.8563, 18.4131, 'Europe/Sarajevo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mostar', 'mostar', 'Bosnia and Herzegovina', 43.3438, 17.8078, 'Europe/Sarajevo') ON CONFLICT (slug) DO NOTHING;

-- North Macedonia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Skopje', 'skopje', 'North Macedonia', 41.9973, 21.4280, 'Europe/Skopje') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ohrid', 'ohrid', 'North Macedonia', 41.1231, 20.8016, 'Europe/Skopje') ON CONFLICT (slug) DO NOTHING;

-- Albania
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tirana', 'tirana', 'Albania', 41.3275, 19.8187, 'Europe/Tirane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Saranda', 'saranda', 'Albania', 39.8661, 20.0050, 'Europe/Tirane') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- CENTRAL AMERICA
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Belize City', 'belize-city', 'Belize', 17.5046, -88.1962, 'America/Belize') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Pedro', 'san-pedro-belize', 'Belize', 17.9214, -87.9611, 'America/Belize') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Jose', 'san-jose-costa-rica', 'Costa Rica', 9.9281, -84.0907, 'America/Costa_Rica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tamarindo', 'tamarindo', 'Costa Rica', 10.2996, -85.8374, 'America/Costa_Rica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('La Fortuna', 'la-fortuna', 'Costa Rica', 10.4678, -84.6427, 'America/Costa_Rica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Salvador', 'san-salvador', 'El Salvador', 13.6929, -89.2182, 'America/El_Salvador') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Guatemala City', 'guatemala-city', 'Guatemala', 14.6349, -90.5069, 'America/Guatemala') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Antigua Guatemala', 'antigua-guatemala', 'Guatemala', 14.5586, -90.7295, 'America/Guatemala') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tegucigalpa', 'tegucigalpa', 'Honduras', 14.0723, -87.1921, 'America/Tegucigalpa') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Roatan', 'roatan', 'Honduras', 16.3297, -86.5231, 'America/Tegucigalpa') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Managua', 'managua', 'Nicaragua', 12.1150, -86.2362, 'America/Managua') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Granada', 'granada-nicaragua', 'Nicaragua', 11.9344, -85.9560, 'America/Managua') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Panama City', 'panama-city', 'Panama', 8.9824, -79.5199, 'America/Panama') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bocas del Toro', 'bocas-del-toro', 'Panama', 9.3403, -82.2419, 'America/Panama') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- CARIBBEAN
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Havana', 'havana', 'Cuba', 23.1136, -82.3666, 'America/Havana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kingston', 'kingston', 'Jamaica', 18.0179, -76.8099, 'America/Jamaica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Montego Bay', 'montego-bay', 'Jamaica', 18.4762, -77.8939, 'America/Jamaica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santo Domingo', 'santo-domingo', 'Dominican Republic', 18.4861, -69.9312, 'America/Santo_Domingo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Punta Cana', 'punta-cana', 'Dominican Republic', 18.5601, -68.3725, 'America/Santo_Domingo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Juan', 'san-juan', 'Puerto Rico', 18.4655, -66.1057, 'America/Puerto_Rico') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nassau', 'nassau', 'Bahamas', 25.0480, -77.3554, 'America/Nassau') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bridgetown', 'bridgetown', 'Barbados', 13.1132, -59.5988, 'America/Barbados') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Port of Spain', 'port-of-spain', 'Trinidad and Tobago', 10.6596, -61.5086, 'America/Port_of_Spain') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- SOUTH AMERICA
-- =============================================
-- Argentina (Top 8)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Buenos Aires', 'buenos-aires', 'Argentina', -34.6037, -58.3816, 'America/Argentina/Buenos_Aires') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mendoza', 'mendoza', 'Argentina', -32.8895, -68.8458, 'America/Argentina/Mendoza') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bariloche', 'bariloche', 'Argentina', -41.1335, -71.3103, 'America/Argentina/Salta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cordoba', 'cordoba-argentina', 'Argentina', -31.4201, -64.1888, 'America/Argentina/Cordoba') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salta', 'salta', 'Argentina', -24.7821, -65.4232, 'America/Argentina/Salta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ushuaia', 'ushuaia', 'Argentina', -54.8019, -68.3030, 'America/Argentina/Ushuaia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('El Calafate', 'el-calafate', 'Argentina', -50.3403, -72.2648, 'America/Argentina/Rio_Gallegos') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Iguazu', 'iguazu', 'Argentina', -25.5972, -54.5786, 'America/Argentina/Cordoba') ON CONFLICT (slug) DO NOTHING;

-- Brazil (Top 15)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sao Paulo', 'sao-paulo', 'Brazil', -23.5505, -46.6333, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rio de Janeiro', 'rio-de-janeiro', 'Brazil', -22.9068, -43.1729, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salvador', 'salvador', 'Brazil', -12.9714, -38.5124, 'America/Bahia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Brasilia', 'brasilia', 'Brazil', -15.7975, -47.8919, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Florianopolis', 'florianopolis', 'Brazil', -27.5954, -48.5480, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Recife', 'recife', 'Brazil', -8.0476, -34.8770, 'America/Recife') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fortaleza', 'fortaleza', 'Brazil', -3.7172, -38.5433, 'America/Fortaleza') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Manaus', 'manaus', 'Brazil', -3.1190, -60.0217, 'America/Manaus') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Curitiba', 'curitiba', 'Brazil', -25.4284, -49.2733, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Belo Horizonte', 'belo-horizonte', 'Brazil', -19.9167, -43.9345, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Porto Alegre', 'porto-alegre', 'Brazil', -30.0346, -51.2177, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Natal', 'natal', 'Brazil', -5.7793, -35.2009, 'America/Fortaleza') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Foz do Iguacu', 'foz-do-iguacu', 'Brazil', -25.5163, -54.5854, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Paraty', 'paraty', 'Brazil', -23.2178, -44.7131, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Buzios', 'buzios', 'Brazil', -22.7469, -41.8817, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;

-- Chile (Top 5)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santiago', 'santiago', 'Chile', -33.4489, -70.6693, 'America/Santiago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Valparaiso', 'valparaiso', 'Chile', -33.0472, -71.6127, 'America/Santiago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Punta Arenas', 'punta-arenas', 'Chile', -53.1548, -70.9113, 'America/Punta_Arenas') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Pedro de Atacama', 'san-pedro-de-atacama', 'Chile', -22.9087, -68.1997, 'America/Santiago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Natales', 'puerto-natales', 'Chile', -51.7311, -72.4977, 'America/Punta_Arenas') ON CONFLICT (slug) DO NOTHING;

-- Colombia (Top 8)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bogota', 'bogota', 'Colombia', 4.7110, -74.0721, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Medellin', 'medellin', 'Colombia', 6.2442, -75.5812, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cartagena', 'cartagena', 'Colombia', 10.3910, -75.5364, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cali', 'cali', 'Colombia', 3.4516, -76.5320, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Santa Marta', 'santa-marta', 'Colombia', 11.2408, -74.1990, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Barranquilla', 'barranquilla', 'Colombia', 10.9685, -74.7813, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pereira', 'pereira', 'Colombia', 4.8133, -75.6961, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Andres', 'san-andres', 'Colombia', 12.5567, -81.7185, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;

-- Ecuador (Top 5)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Quito', 'quito', 'Ecuador', -0.1807, -78.4678, 'America/Guayaquil') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Guayaquil', 'guayaquil', 'Ecuador', -2.1710, -79.9224, 'America/Guayaquil') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cuenca', 'cuenca', 'Ecuador', -2.9001, -79.0059, 'America/Guayaquil') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Ayora', 'puerto-ayora', 'Ecuador', -0.7545, -90.3159, 'Pacific/Galapagos') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Banos', 'banos', 'Ecuador', -1.3928, -78.4269, 'America/Guayaquil') ON CONFLICT (slug) DO NOTHING;

-- Peru (Top 5)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lima', 'lima', 'Peru', -12.0464, -77.0428, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cusco', 'cusco', 'Peru', -13.5319, -71.9675, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Arequipa', 'arequipa', 'Peru', -16.4090, -71.5375, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Iquitos', 'iquitos', 'Peru', -3.7491, -73.2538, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puno', 'puno', 'Peru', -15.8402, -70.0219, 'America/Lima') ON CONFLICT (slug) DO NOTHING;

-- Uruguay (Top 3)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Montevideo', 'montevideo', 'Uruguay', -34.9011, -56.1645, 'America/Montevideo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Punta del Este', 'punta-del-este', 'Uruguay', -34.9664, -54.9509, 'America/Montevideo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Colonia del Sacramento', 'colonia-del-sacramento', 'Uruguay', -34.4626, -57.8400, 'America/Montevideo') ON CONFLICT (slug) DO NOTHING;

-- Bolivia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('La Paz', 'la-paz', 'Bolivia', -16.4897, -68.1193, 'America/La_Paz') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sucre', 'sucre', 'Bolivia', -19.0196, -65.2619, 'America/La_Paz') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Uyuni', 'uyuni', 'Bolivia', -20.4637, -66.8253, 'America/La_Paz') ON CONFLICT (slug) DO NOTHING;

-- Paraguay
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Asuncion', 'asuncion', 'Paraguay', -25.2637, -57.5759, 'America/Asuncion') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ciudad del Este', 'ciudad-del-este', 'Paraguay', -25.5097, -54.6110, 'America/Asuncion') ON CONFLICT (slug) DO NOTHING;

-- Venezuela
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Caracas', 'caracas', 'Venezuela', 10.4806, -66.9036, 'America/Caracas') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Merida', 'merida-venezuela', 'Venezuela', 8.5897, -71.1561, 'America/Caracas') ON CONFLICT (slug) DO NOTHING;

-- Guyana
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Georgetown', 'georgetown-guyana', 'Guyana', 6.8013, -58.1551, 'America/Guyana') ON CONFLICT (slug) DO NOTHING;

-- Suriname
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Paramaribo', 'paramaribo', 'Suriname', 5.8520, -55.2038, 'America/Paramaribo') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- SOUTHEAST ASIA
-- =============================================
-- Thailand (Top 10)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bangkok', 'bangkok', 'Thailand', 13.7563, 100.5018, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chiang Mai', 'chiang-mai', 'Thailand', 18.7883, 98.9853, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Phuket', 'phuket', 'Thailand', 7.8804, 98.3923, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pattaya', 'pattaya', 'Thailand', 12.9236, 100.8825, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Koh Samui', 'koh-samui', 'Thailand', 9.5120, 100.0136, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Krabi', 'krabi', 'Thailand', 8.0863, 98.9063, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chiang Rai', 'chiang-rai', 'Thailand', 19.9105, 99.8406, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ayutthaya', 'ayutthaya', 'Thailand', 14.3532, 100.5689, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hua Hin', 'hua-hin', 'Thailand', 12.5684, 99.9577, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kanchanaburi', 'kanchanaburi', 'Thailand', 14.0041, 99.5483, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;

-- Indonesia (Top 10)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jakarta', 'jakarta', 'Indonesia', -6.2088, 106.8456, 'Asia/Jakarta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bali', 'bali', 'Indonesia', -8.3405, 115.0920, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Yogyakarta', 'yogyakarta', 'Indonesia', -7.7956, 110.3695, 'Asia/Jakarta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Surabaya', 'surabaya', 'Indonesia', -7.2575, 112.7521, 'Asia/Jakarta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bandung', 'bandung', 'Indonesia', -6.9175, 107.6191, 'Asia/Jakarta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lombok', 'lombok', 'Indonesia', -8.6500, 116.3249, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Medan', 'medan', 'Indonesia', 3.5952, 98.6722, 'Asia/Jakarta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Makassar', 'makassar', 'Indonesia', -5.1477, 119.4327, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Komodo', 'komodo', 'Indonesia', -8.5500, 119.4833, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Raja Ampat', 'raja-ampat', 'Indonesia', -0.5897, 130.1057, 'Asia/Jayapura') ON CONFLICT (slug) DO NOTHING;

-- Philippines (Top 8)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Manila', 'manila', 'Philippines', 14.5995, 120.9842, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cebu', 'cebu', 'Philippines', 10.3157, 123.8854, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Boracay', 'boracay', 'Philippines', 11.9674, 121.9248, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Princesa', 'puerto-princesa', 'Philippines', 9.7392, 118.7353, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Davao', 'davao', 'Philippines', 7.1907, 125.4553, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('El Nido', 'el-nido', 'Philippines', 11.1784, 119.3926, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Siargao', 'siargao', 'Philippines', 9.8686, 126.0459, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Baguio', 'baguio', 'Philippines', 16.4023, 120.5960, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;

-- Vietnam (Top 8)
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ho Chi Minh City', 'ho-chi-minh-city', 'Vietnam', 10.8231, 106.6297, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hanoi', 'hanoi', 'Vietnam', 21.0278, 105.8342, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Da Nang', 'da-nang', 'Vietnam', 16.0544, 108.2022, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hoi An', 'hoi-an', 'Vietnam', 15.8801, 108.3380, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nha Trang', 'nha-trang', 'Vietnam', 12.2388, 109.1967, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hue', 'hue', 'Vietnam', 16.4637, 107.5909, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ha Long', 'ha-long', 'Vietnam', 20.9101, 107.1839, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Phu Quoc', 'phu-quoc', 'Vietnam', 10.2899, 103.9840, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;

-- Malaysia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kuala Lumpur', 'kuala-lumpur', 'Malaysia', 3.1390, 101.6869, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Penang', 'penang', 'Malaysia', 5.4164, 100.3327, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Langkawi', 'langkawi', 'Malaysia', 6.3500, 99.8000, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kota Kinabalu', 'kota-kinabalu', 'Malaysia', 5.9804, 116.0735, 'Asia/Kuching') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Johor Bahru', 'johor-bahru', 'Malaysia', 1.4927, 103.7414, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Malacca', 'malacca', 'Malaysia', 2.1896, 102.2501, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;

-- Cambodia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Phnom Penh', 'phnom-penh', 'Cambodia', 11.5564, 104.9282, 'Asia/Phnom_Penh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Siem Reap', 'siem-reap', 'Cambodia', 13.3671, 103.8448, 'Asia/Phnom_Penh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sihanoukville', 'sihanoukville', 'Cambodia', 10.6093, 103.5296, 'Asia/Phnom_Penh') ON CONFLICT (slug) DO NOTHING;

-- Laos
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vientiane', 'vientiane', 'Laos', 17.9757, 102.6331, 'Asia/Vientiane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Luang Prabang', 'luang-prabang', 'Laos', 19.8830, 102.1347, 'Asia/Vientiane') ON CONFLICT (slug) DO NOTHING;

-- Myanmar
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Yangon', 'yangon', 'Myanmar', 16.8661, 96.1951, 'Asia/Yangon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mandalay', 'mandalay', 'Myanmar', 21.9588, 96.0891, 'Asia/Yangon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bagan', 'bagan', 'Myanmar', 21.1717, 94.8585, 'Asia/Yangon') ON CONFLICT (slug) DO NOTHING;

-- Singapore
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Singapore', 'singapore', 'Singapore', 1.3521, 103.8198, 'Asia/Singapore') ON CONFLICT (slug) DO NOTHING;

-- Brunei
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bandar Seri Begawan', 'bandar-seri-begawan', 'Brunei', 4.9031, 114.9398, 'Asia/Brunei') ON CONFLICT (slug) DO NOTHING;

-- Timor-Leste
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dili', 'dili', 'Timor-Leste', -8.5569, 125.5603, 'Asia/Dili') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- EAST ASIA
-- =============================================
-- Japan
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tokyo', 'tokyo', 'Japan', 35.6762, 139.6503, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Osaka', 'osaka', 'Japan', 34.6937, 135.5023, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kyoto', 'kyoto', 'Japan', 35.0116, 135.7681, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hiroshima', 'hiroshima', 'Japan', 34.3853, 132.4553, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sapporo', 'sapporo', 'Japan', 43.0618, 141.3545, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fukuoka', 'fukuoka', 'Japan', 33.5904, 130.4017, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nagoya', 'nagoya', 'Japan', 35.1815, 136.9066, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Okinawa', 'okinawa', 'Japan', 26.3344, 127.8056, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nara', 'nara', 'Japan', 34.6851, 135.8048, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hakone', 'hakone', 'Japan', 35.2326, 139.1070, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;

-- South Korea
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Seoul', 'seoul', 'South Korea', 37.5665, 126.9780, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Busan', 'busan', 'South Korea', 35.1796, 129.0756, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jeju', 'jeju', 'South Korea', 33.4996, 126.5312, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Incheon', 'incheon', 'South Korea', 37.4563, 126.7052, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gyeongju', 'gyeongju', 'South Korea', 35.8562, 129.2247, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;

-- China
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Beijing', 'beijing', 'China', 39.9042, 116.4074, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Shanghai', 'shanghai', 'China', 31.2304, 121.4737, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hong Kong', 'hong-kong', 'China', 22.3193, 114.1694, 'Asia/Hong_Kong') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Guangzhou', 'guangzhou', 'China', 23.1291, 113.2644, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Shenzhen', 'shenzhen', 'China', 22.5431, 114.0579, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chengdu', 'chengdu', 'China', 30.5728, 104.0668, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Xian', 'xian', 'China', 34.3416, 108.9398, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Guilin', 'guilin', 'China', 25.2744, 110.2990, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Macau', 'macau', 'China', 22.1987, 113.5439, 'Asia/Macau') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hangzhou', 'hangzhou', 'China', 30.2741, 120.1551, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;

-- Taiwan
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Taipei', 'taipei', 'Taiwan', 25.0330, 121.5654, 'Asia/Taipei') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kaohsiung', 'kaohsiung', 'Taiwan', 22.6273, 120.3014, 'Asia/Taipei') ON CONFLICT (slug) DO NOTHING;

-- Mongolia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ulaanbaatar', 'ulaanbaatar', 'Mongolia', 47.8864, 106.9057, 'Asia/Ulaanbaatar') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- SOUTH ASIA
-- =============================================
-- India
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mumbai', 'mumbai', 'India', 19.0760, 72.8777, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('New Delhi', 'new-delhi', 'India', 28.6139, 77.2090, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bangalore', 'bangalore', 'India', 12.9716, 77.5946, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Goa', 'goa', 'India', 15.2993, 74.1240, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jaipur', 'jaipur', 'India', 26.9124, 75.7873, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Agra', 'agra', 'India', 27.1767, 78.0081, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kolkata', 'kolkata', 'India', 22.5726, 88.3639, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chennai', 'chennai', 'India', 13.0827, 80.2707, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hyderabad', 'hyderabad', 'India', 17.3850, 78.4867, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kochi', 'kochi', 'India', 9.9312, 76.2673, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Udaipur', 'udaipur', 'India', 24.5854, 73.7125, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Varanasi', 'varanasi', 'India', 25.3176, 82.9739, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rishikesh', 'rishikesh', 'India', 30.0869, 78.2676, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Amritsar', 'amritsar', 'India', 31.6340, 74.8723, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;

-- Sri Lanka
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Colombo', 'colombo', 'Sri Lanka', 6.9271, 79.8612, 'Asia/Colombo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kandy', 'kandy', 'Sri Lanka', 7.2906, 80.6337, 'Asia/Colombo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Galle', 'galle', 'Sri Lanka', 6.0535, 80.2210, 'Asia/Colombo') ON CONFLICT (slug) DO NOTHING;

-- Nepal
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kathmandu', 'kathmandu', 'Nepal', 27.7172, 85.3240, 'Asia/Kathmandu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pokhara', 'pokhara', 'Nepal', 28.2096, 83.9856, 'Asia/Kathmandu') ON CONFLICT (slug) DO NOTHING;

-- Bangladesh
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dhaka', 'dhaka', 'Bangladesh', 23.8103, 90.4125, 'Asia/Dhaka') ON CONFLICT (slug) DO NOTHING;

-- Pakistan
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Islamabad', 'islamabad', 'Pakistan', 33.6844, 73.0479, 'Asia/Karachi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lahore', 'lahore', 'Pakistan', 31.5204, 74.3587, 'Asia/Karachi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Karachi', 'karachi', 'Pakistan', 24.8607, 67.0011, 'Asia/Karachi') ON CONFLICT (slug) DO NOTHING;

-- Maldives
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Male', 'male', 'Maldives', 4.1755, 73.5093, 'Indian/Maldives') ON CONFLICT (slug) DO NOTHING;

-- Bhutan
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Thimphu', 'thimphu', 'Bhutan', 27.4728, 89.6390, 'Asia/Thimphu') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- MIDDLE EAST
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dubai', 'dubai', 'United Arab Emirates', 25.2048, 55.2708, 'Asia/Dubai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Abu Dhabi', 'abu-dhabi', 'United Arab Emirates', 24.4539, 54.3773, 'Asia/Dubai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Doha', 'doha', 'Qatar', 25.2854, 51.5310, 'Asia/Qatar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Riyadh', 'riyadh', 'Saudi Arabia', 24.7136, 46.6753, 'Asia/Riyadh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jeddah', 'jeddah', 'Saudi Arabia', 21.4858, 39.1925, 'Asia/Riyadh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Muscat', 'muscat', 'Oman', 23.5880, 58.3829, 'Asia/Muscat') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Amman', 'amman', 'Jordan', 31.9454, 35.9284, 'Asia/Amman') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Petra', 'petra', 'Jordan', 30.3285, 35.4444, 'Asia/Amman') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Beirut', 'beirut', 'Lebanon', 33.8938, 35.5018, 'Asia/Beirut') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tel Aviv', 'tel-aviv', 'Israel', 32.0853, 34.7818, 'Asia/Jerusalem') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jerusalem', 'jerusalem', 'Israel', 31.7683, 35.2137, 'Asia/Jerusalem') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kuwait City', 'kuwait-city', 'Kuwait', 29.3759, 47.9774, 'Asia/Kuwait') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Manama', 'manama', 'Bahrain', 26.2285, 50.5860, 'Asia/Bahrain') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aqaba', 'aqaba', 'Jordan', 29.5268, 35.0078, 'Asia/Amman') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- TURKEY & RUSSIA
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Istanbul', 'istanbul', 'Turkey', 41.0082, 28.9784, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ankara', 'ankara', 'Turkey', 39.9334, 32.8597, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Antalya', 'antalya', 'Turkey', 36.8969, 30.7133, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Izmir', 'izmir', 'Turkey', 38.4237, 27.1428, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Goreme', 'goreme', 'Turkey', 38.6431, 34.8283, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bodrum', 'bodrum', 'Turkey', 37.0344, 27.4305, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fethiye', 'fethiye', 'Turkey', 36.6520, 29.1155, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Moscow', 'moscow', 'Russia', 55.7558, 37.6173, 'Europe/Moscow') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('St. Petersburg', 'st-petersburg', 'Russia', 59.9343, 30.3351, 'Europe/Moscow') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- AFRICA
-- =============================================
-- South Africa
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cape Town', 'cape-town', 'South Africa', -33.9249, 18.4241, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Johannesburg', 'johannesburg', 'South Africa', -26.2041, 28.0473, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Durban', 'durban', 'South Africa', -29.8587, 31.0218, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pretoria', 'pretoria', 'South Africa', -25.7479, 28.2293, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;

-- Kenya
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nairobi', 'nairobi', 'Kenya', -1.2921, 36.8219, 'Africa/Nairobi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mombasa', 'mombasa', 'Kenya', -4.0435, 39.6682, 'Africa/Nairobi') ON CONFLICT (slug) DO NOTHING;

-- Morocco
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Marrakech', 'marrakech', 'Morocco', 31.6295, -7.9811, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Casablanca', 'casablanca', 'Morocco', 33.5731, -7.5898, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fez', 'fez', 'Morocco', 34.0181, -5.0078, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chefchaouen', 'chefchaouen', 'Morocco', 35.1688, -5.2636, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tangier', 'tangier', 'Morocco', 35.7595, -5.8340, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Essaouira', 'essaouira', 'Morocco', 31.5085, -9.7595, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;

-- Egypt
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cairo', 'cairo', 'Egypt', 30.0444, 31.2357, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Luxor', 'luxor', 'Egypt', 25.6872, 32.6396, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aswan', 'aswan', 'Egypt', 24.0889, 32.8998, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hurghada', 'hurghada', 'Egypt', 27.2579, 33.8116, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sharm El Sheikh', 'sharm-el-sheikh', 'Egypt', 27.9158, 34.3300, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Alexandria', 'alexandria', 'Egypt', 31.2001, 29.9187, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;

-- Tanzania
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dar es Salaam', 'dar-es-salaam', 'Tanzania', -6.7924, 39.2083, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zanzibar', 'zanzibar', 'Tanzania', -6.1659, 39.2026, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Arusha', 'arusha', 'Tanzania', -3.3869, 36.6830, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;

-- Ghana
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Accra', 'accra', 'Ghana', 5.6037, -0.1870, 'Africa/Accra') ON CONFLICT (slug) DO NOTHING;

-- Nigeria
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lagos', 'lagos', 'Nigeria', 6.5244, 3.3792, 'Africa/Lagos') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Abuja', 'abuja', 'Nigeria', 9.0765, 7.3986, 'Africa/Lagos') ON CONFLICT (slug) DO NOTHING;

-- Ethiopia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Addis Ababa', 'addis-ababa', 'Ethiopia', 9.0250, 38.7469, 'Africa/Addis_Ababa') ON CONFLICT (slug) DO NOTHING;

-- Zambia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Livingstone', 'livingstone', 'Zambia', -17.8419, 25.8544, 'Africa/Lusaka') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lusaka', 'lusaka', 'Zambia', -15.3875, 28.3228, 'Africa/Lusaka') ON CONFLICT (slug) DO NOTHING;

-- Zimbabwe
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Victoria Falls', 'victoria-falls', 'Zimbabwe', -17.9243, 25.8572, 'Africa/Harare') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Harare', 'harare', 'Zimbabwe', -17.8252, 31.0335, 'Africa/Harare') ON CONFLICT (slug) DO NOTHING;

-- Rwanda
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kigali', 'kigali', 'Rwanda', -1.9706, 30.1044, 'Africa/Kigali') ON CONFLICT (slug) DO NOTHING;

-- Uganda
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kampala', 'kampala', 'Uganda', 0.3476, 32.5825, 'Africa/Kampala') ON CONFLICT (slug) DO NOTHING;

-- Senegal
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dakar', 'dakar', 'Senegal', 14.7167, -17.4677, 'Africa/Dakar') ON CONFLICT (slug) DO NOTHING;

-- Tunisia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tunis', 'tunis', 'Tunisia', 36.8065, 10.1815, 'Africa/Tunis') ON CONFLICT (slug) DO NOTHING;

-- Mauritius
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Port Louis', 'port-louis', 'Mauritius', -20.1609, 57.5012, 'Indian/Mauritius') ON CONFLICT (slug) DO NOTHING;

-- Madagascar
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Antananarivo', 'antananarivo', 'Madagascar', -18.8792, 47.5079, 'Indian/Antananarivo') ON CONFLICT (slug) DO NOTHING;

-- Namibia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Windhoek', 'windhoek', 'Namibia', -22.5609, 17.0658, 'Africa/Windhoek') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Swakopmund', 'swakopmund', 'Namibia', -22.6784, 14.5269, 'Africa/Windhoek') ON CONFLICT (slug) DO NOTHING;

-- Botswana
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gaborone', 'gaborone', 'Botswana', -24.6282, 25.9231, 'Africa/Gaborone') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Maun', 'maun', 'Botswana', -19.9833, 23.4167, 'Africa/Gaborone') ON CONFLICT (slug) DO NOTHING;

-- Mozambique
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Maputo', 'maputo', 'Mozambique', -25.9692, 32.5732, 'Africa/Maputo') ON CONFLICT (slug) DO NOTHING;

-- Ivory Coast
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Abidjan', 'abidjan', 'Ivory Coast', 5.3600, -4.0083, 'Africa/Abidjan') ON CONFLICT (slug) DO NOTHING;

-- Seychelles
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Victoria', 'victoria-seychelles', 'Seychelles', -4.6191, 55.4513, 'Indian/Mahe') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- OCEANIA
-- =============================================
-- Australia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sydney', 'sydney', 'Australia', -33.8688, 151.2093, 'Australia/Sydney') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Melbourne', 'melbourne', 'Australia', -37.8136, 144.9631, 'Australia/Melbourne') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Brisbane', 'brisbane', 'Australia', -27.4698, 153.0251, 'Australia/Brisbane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Perth', 'perth', 'Australia', -31.9505, 115.8605, 'Australia/Perth') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Adelaide', 'adelaide', 'Australia', -34.9285, 138.6007, 'Australia/Adelaide') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gold Coast', 'gold-coast', 'Australia', -28.0167, 153.4000, 'Australia/Brisbane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cairns', 'cairns', 'Australia', -16.9186, 145.7781, 'Australia/Brisbane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hobart', 'hobart', 'Australia', -42.8821, 147.3272, 'Australia/Hobart') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Darwin', 'darwin', 'Australia', -12.4634, 130.8456, 'Australia/Darwin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Canberra', 'canberra', 'Australia', -35.2809, 149.1300, 'Australia/Sydney') ON CONFLICT (slug) DO NOTHING;

-- New Zealand
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Auckland', 'auckland', 'New Zealand', -36.8485, 174.7633, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Wellington', 'wellington', 'New Zealand', -41.2865, 174.7762, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Queenstown', 'queenstown', 'New Zealand', -45.0312, 168.6626, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Christchurch', 'christchurch', 'New Zealand', -43.5321, 172.6362, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rotorua', 'rotorua', 'New Zealand', -38.1368, 176.2497, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;

-- Fiji
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Suva', 'suva', 'Fiji', -18.1416, 178.4419, 'Pacific/Fiji') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nadi', 'nadi', 'Fiji', -17.7765, 177.9500, 'Pacific/Fiji') ON CONFLICT (slug) DO NOTHING;

-- French Polynesia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Papeete', 'papeete', 'French Polynesia', -17.5516, -149.5585, 'Pacific/Tahiti') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bora Bora', 'bora-bora', 'French Polynesia', -16.5004, -151.7415, 'Pacific/Tahiti') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- CENTRAL ASIA
-- =============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tashkent', 'tashkent', 'Uzbekistan', 41.2995, 69.2401, 'Asia/Tashkent') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Samarkand', 'samarkand', 'Uzbekistan', 39.6542, 66.9597, 'Asia/Samarkand') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bukhara', 'bukhara', 'Uzbekistan', 39.7681, 64.4556, 'Asia/Samarkand') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Almaty', 'almaty', 'Kazakhstan', 43.2220, 76.8512, 'Asia/Almaty') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Astana', 'astana', 'Kazakhstan', 51.1694, 71.4491, 'Asia/Almaty') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bishkek', 'bishkek', 'Kyrgyzstan', 42.8746, 74.5698, 'Asia/Bishkek') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dushanbe', 'dushanbe', 'Tajikistan', 38.5598, 68.7740, 'Asia/Dushanbe') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ashgabat', 'ashgabat', 'Turkmenistan', 37.9601, 58.3261, 'Asia/Ashgabat') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tbilisi', 'tbilisi', 'Georgia', 41.7151, 44.8271, 'Asia/Tbilisi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Batumi', 'batumi', 'Georgia', 41.6168, 41.6367, 'Asia/Tbilisi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Yerevan', 'yerevan', 'Armenia', 40.1792, 44.4991, 'Asia/Yerevan') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Baku', 'baku', 'Azerbaijan', 40.4093, 49.8671, 'Asia/Baku') ON CONFLICT (slug) DO NOTHING;

-- =============================================
-- ADDITIONAL GLOBAL CITIES
-- =============================================
-- Cyprus
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nicosia', 'nicosia', 'Cyprus', 35.1856, 33.3823, 'Asia/Nicosia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Paphos', 'paphos', 'Cyprus', 34.7754, 32.4218, 'Asia/Nicosia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Limassol', 'limassol', 'Cyprus', 34.7071, 33.0226, 'Asia/Nicosia') ON CONFLICT (slug) DO NOTHING;

-- Malta
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Valletta', 'valletta', 'Malta', 35.8989, 14.5146, 'Europe/Malta') ON CONFLICT (slug) DO NOTHING;

-- Luxembourg
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Luxembourg City', 'luxembourg-city', 'Luxembourg', 49.6117, 6.1319, 'Europe/Luxembourg') ON CONFLICT (slug) DO NOTHING;

-- Additional US cities to reach 100
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Scottsdale', 'scottsdale-az', 'United States', 33.4942, -111.9261, 'America/Phoenix') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lahaina', 'lahaina', 'United States', 20.8783, -156.6825, 'Pacific/Honolulu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kailua-Kona', 'kailua-kona', 'United States', 19.6400, -155.9969, 'Pacific/Honolulu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Whitefish', 'whitefish', 'United States', 48.4106, -114.3528, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sun Valley', 'sun-valley', 'United States', 43.6974, -114.3514, 'America/Boise') ON CONFLICT (slug) DO NOTHING;

-- Additional global tourist destinations
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Marrakesh', 'marrakesh', 'Morocco', 31.6295, -7.9811, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salalah', 'salalah', 'Oman', 17.0151, 54.0924, 'Asia/Muscat') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mecca', 'mecca', 'Saudi Arabia', 21.3891, 39.8579, 'Asia/Riyadh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Medina', 'medina', 'Saudi Arabia', 24.5247, 39.5692, 'Asia/Riyadh') ON CONFLICT (slug) DO NOTHING;

-- Additional Southeast Asia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kuching', 'kuching', 'Malaysia', 1.5497, 110.3592, 'Asia/Kuching') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ipoh', 'ipoh', 'Malaysia', 4.5975, 101.0901, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Battambang', 'battambang', 'Cambodia', 13.1025, 103.1986, 'Asia/Phnom_Penh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vang Vieng', 'vang-vieng', 'Laos', 18.9222, 102.4503, 'Asia/Vientiane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Inle Lake', 'inle-lake', 'Myanmar', 20.5835, 96.9116, 'Asia/Yangon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Da Lat', 'da-lat', 'Vietnam', 11.9404, 108.4583, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sa Pa', 'sa-pa', 'Vietnam', 22.3364, 103.8438, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Can Tho', 'can-tho', 'Vietnam', 10.0452, 105.7469, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;

-- Additional Japan
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kamakura', 'kamakura', 'Japan', 35.3192, 139.5466, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kanazawa', 'kanazawa', 'Japan', 36.5613, 136.6562, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kobe', 'kobe', 'Japan', 34.6901, 135.1956, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nikko', 'nikko', 'Japan', 36.7199, 139.6982, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Takayama', 'takayama', 'Japan', 36.1460, 137.2519, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;

-- Additional China
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kunming', 'kunming', 'China', 25.0389, 102.7183, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lijiang', 'lijiang', 'China', 26.8554, 100.2278, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lhasa', 'lhasa', 'China', 29.6520, 91.1721, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Suzhou', 'suzhou', 'China', 31.2990, 120.5853, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nanjing', 'nanjing', 'China', 32.0603, 118.7969, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;

-- Additional India
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jaisalmer', 'jaisalmer', 'India', 26.9157, 70.9083, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jodhpur', 'jodhpur', 'India', 26.2389, 73.0243, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Shimla', 'shimla', 'India', 31.1048, 77.1734, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Darjeeling', 'darjeeling', 'India', 27.0360, 88.2627, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pune', 'pune', 'India', 18.5204, 73.8567, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ahmedabad', 'ahmedabad', 'India', 23.0225, 72.5714, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;

-- Additional Africa
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Marsa Alam', 'marsa-alam', 'Egypt', 25.0671, 34.8981, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Djerba', 'djerba', 'Tunisia', 33.8076, 10.8451, 'Africa/Tunis') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stone Town', 'stone-town', 'Tanzania', -6.1622, 39.1921, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lamu', 'lamu', 'Kenya', -2.2717, 40.9020, 'Africa/Nairobi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ouagadougou', 'ouagadougou', 'Burkina Faso', 12.3714, -1.5197, 'Africa/Ouagadougou') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bamako', 'bamako', 'Mali', 12.6392, -8.0029, 'Africa/Bamako') ON CONFLICT (slug) DO NOTHING;

-- Additional Caribbean
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('George Town', 'george-town-cayman', 'Cayman Islands', 19.2869, -81.3674, 'America/Cayman') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Oranjestad', 'oranjestad', 'Aruba', 12.5092, -70.0086, 'America/Aruba') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Willemstad', 'willemstad', 'Curacao', 12.1696, -68.9900, 'America/Curacao') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Castries', 'castries', 'Saint Lucia', 14.0101, -60.9870, 'America/St_Lucia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Basseterre', 'basseterre', 'Saint Kitts and Nevis', 17.3026, -62.7177, 'America/St_Kitts') ON CONFLICT (slug) DO NOTHING;

-- Additional Europe
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Monaco', 'monaco', 'Monaco', 43.7384, 7.4246, 'Europe/Monaco') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Marino', 'san-marino', 'San Marino', 43.9424, 12.4578, 'Europe/San_Marino') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vaduz', 'vaduz', 'Liechtenstein', 47.1410, 9.5209, 'Europe/Vaduz') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Andorra la Vella', 'andorra-la-vella', 'Andorra', 42.5063, 1.5218, 'Europe/Andorra') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gibraltar', 'gibraltar', 'Gibraltar', 36.1408, -5.3536, 'Europe/Gibraltar') ON CONFLICT (slug) DO NOTHING;

-- Additional South America
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Maceio', 'maceio', 'Brazil', -9.6658, -35.7353, 'America/Maceio') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gramado', 'gramado', 'Brazil', -29.3781, -50.8753, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Huaraz', 'huaraz', 'Peru', -9.5260, -77.5280, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cochabamba', 'cochabamba', 'Bolivia', -17.3895, -66.1568, 'America/La_Paz') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Salento', 'salento', 'Colombia', 4.6373, -75.5712, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;

-- Additional Oceania
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Wanaka', 'wanaka', 'New Zealand', -44.7032, 169.1321, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Taupo', 'taupo', 'New Zealand', -38.6857, 176.0702, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Noumea', 'noumea', 'New Caledonia', -22.2558, 166.4505, 'Pacific/Noumea') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Apia', 'apia', 'Samoa', -13.8333, -171.7500, 'Pacific/Apia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Port Vila', 'port-vila', 'Vanuatu', -17.7334, 168.3273, 'Pacific/Efate') ON CONFLICT (slug) DO NOTHING;


-- =============================================
-- ADDITIONAL CITIES TO REACH 1000 (Batch 2)
-- =============================================

-- More US cities
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Waikiki', 'waikiki', 'United States', 21.2793, -157.8292, 'Pacific/Honolulu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Martha''s Vineyard', 'marthas-vineyard', 'United States', 41.3895, -70.6158, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nantucket', 'nantucket', 'United States', 41.2835, -70.0995, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cape Cod', 'cape-cod', 'United States', 41.6688, -70.2962, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lake Placid', 'lake-placid', 'United States', 44.2795, -73.9799, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Traverse City', 'traverse-city', 'United States', 44.7631, -85.6206, 'America/Detroit') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fredericksburg', 'fredericksburg', 'United States', 30.2752, -98.8720, 'America/Chicago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Clearwater', 'clearwater', 'United States', 27.9659, -82.8001, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Newport', 'newport', 'United States', 41.4901, -71.3128, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bar Harbor', 'bar-harbor', 'United States', 44.3876, -68.2039, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ketchikan', 'ketchikan', 'United States', 55.3422, -131.6461, 'America/Anchorage') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Skagway', 'skagway', 'United States', 59.4583, -135.3139, 'America/Anchorage') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sitka', 'sitka', 'United States', 57.0531, -135.3300, 'America/Anchorage') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Taos', 'taos', 'United States', 36.4072, -105.5731, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Durango', 'durango', 'United States', 37.2753, -107.8801, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Steamboat Springs', 'steamboat-springs', 'United States', 40.4850, -106.8317, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Breckenridge', 'breckenridge', 'United States', 39.4817, -106.0384, 'America/Denver') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Paso Robles', 'paso-robles', 'United States', 35.6264, -120.6910, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Carmel-by-the-Sea', 'carmel-by-the-sea', 'United States', 36.5554, -121.9233, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cannon Beach', 'cannon-beach', 'United States', 45.8918, -123.9615, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leavenworth', 'leavenworth', 'United States', 47.5962, -120.6615, 'America/Los_Angeles') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mackinac Island', 'mackinac-island', 'United States', 45.8492, -84.6189, 'America/Detroit') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Outer Banks', 'outer-banks', 'United States', 35.5585, -75.4665, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sanibel Island', 'sanibel-island', 'United States', 26.4430, -82.0218, 'America/New_York') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Marco Island', 'marco-island', 'United States', 25.9412, -81.7187, 'America/New_York') ON CONFLICT (slug) DO NOTHING;

-- More UK
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cotswolds', 'cotswolds', 'United Kingdom', 51.8330, -1.7833, 'Europe/London') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lake District', 'lake-district', 'United Kingdom', 54.4609, -3.0886, 'Europe/London') ON CONFLICT (slug) DO NOTHING;

-- More Italy
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Matera', 'matera', 'Italy', 40.6664, 16.6043, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Orvieto', 'orvieto', 'Italy', 42.7186, 12.1104, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Assisi', 'assisi', 'Italy', 43.0707, 12.6196, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Gimignano', 'san-gimignano', 'Italy', 43.4677, 11.0430, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Capri', 'capri', 'Italy', 40.5507, 14.2222, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sardinia', 'sardinia', 'Italy', 39.2238, 9.1217, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bergamo', 'bergamo', 'Italy', 45.6983, 9.6773, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Parma', 'parma', 'Italy', 44.8015, 10.3279, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Padua', 'padua', 'Italy', 45.4064, 11.8768, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Modena', 'modena', 'Italy', 44.6471, 10.9252, 'Europe/Rome') ON CONFLICT (slug) DO NOTHING;

-- More France
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Antibes', 'antibes', 'France', 43.5808, 7.1239, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Arles', 'arles', 'France', 43.6767, 4.6278, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bayeux', 'bayeux', 'France', 49.2764, -0.7024, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mont Saint-Michel', 'mont-saint-michel', 'France', 48.6361, -1.5115, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Reims', 'reims', 'France', 49.2583, 3.5741, 'Europe/Paris') ON CONFLICT (slug) DO NOTHING;

-- More Spain
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nerja', 'nerja', 'Spain', 36.7576, -3.8769, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tarragona', 'tarragona', 'Spain', 41.1189, 1.2445, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fuerteventura', 'fuerteventura', 'Spain', 28.3587, -14.0537, 'Atlantic/Canary') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lanzarote', 'lanzarote', 'Spain', 28.9638, -13.5477, 'Atlantic/Canary') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Benidorm', 'benidorm', 'Spain', 38.5411, -0.1225, 'Europe/Madrid') ON CONFLICT (slug) DO NOTHING;

-- More Germany
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Baden-Baden', 'baden-baden', 'Germany', 48.7630, 8.2408, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rugen', 'rugen', 'Germany', 54.3939, 13.3854, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Konstanz', 'konstanz', 'Germany', 47.6633, 9.1754, 'Europe/Berlin') ON CONFLICT (slug) DO NOTHING;

-- More Portugal
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tavira', 'tavira', 'Portugal', 37.1262, -7.6508, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cascais', 'cascais', 'Portugal', 38.6979, -9.4215, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Aveiro', 'aveiro', 'Portugal', 40.6405, -8.6538, 'Europe/Lisbon') ON CONFLICT (slug) DO NOTHING;

-- More Greece
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Meteora', 'meteora', 'Greece', 39.7139, 21.6308, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Delphi', 'delphi', 'Greece', 38.4824, 22.5010, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kos', 'kos', 'Greece', 36.8935, 26.9827, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Paros', 'paros', 'Greece', 37.0854, 25.1521, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Skiathos', 'skiathos', 'Greece', 39.1615, 23.4889, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Crete', 'crete', 'Greece', 35.2401, 24.4709, 'Europe/Athens') ON CONFLICT (slug) DO NOTHING;

-- More Eastern Europe
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Trogir', 'trogir', 'Croatia', 43.5167, 16.2500, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Korcula', 'korcula', 'Croatia', 42.9597, 17.1343, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sibenik', 'sibenik', 'Croatia', 43.7350, 15.8906, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Plitvice', 'plitvice', 'Croatia', 44.8654, 15.5821, 'Europe/Zagreb') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kotor Bay', 'kotor-bay', 'Montenegro', 42.4867, 18.6900, 'Europe/Podgorica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sveti Stefan', 'sveti-stefan', 'Montenegro', 42.2567, 18.8933, 'Europe/Podgorica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Berat', 'berat', 'Albania', 40.7058, 19.9522, 'Europe/Tirane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gjirokaster', 'gjirokaster', 'Albania', 40.0758, 20.1389, 'Europe/Tirane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Durres', 'durres', 'Albania', 41.3233, 19.4414, 'Europe/Tirane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Constanta', 'constanta', 'Romania', 44.1598, 28.6348, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sighisoara', 'sighisoara', 'Romania', 46.2197, 24.7919, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Timisoara', 'timisoara', 'Romania', 45.7489, 21.2087, 'Europe/Bucharest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Varna', 'varna', 'Bulgaria', 43.2141, 27.9147, 'Europe/Sofia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Veliko Tarnovo', 'veliko-tarnovo', 'Bulgaria', 43.0757, 25.6172, 'Europe/Sofia') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Piran', 'piran', 'Slovenia', 45.5282, 13.5683, 'Europe/Ljubljana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Maribor', 'maribor', 'Slovenia', 46.5547, 15.6459, 'Europe/Ljubljana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nis', 'nis', 'Serbia', 43.3209, 21.8958, 'Europe/Belgrade') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sopot', 'sopot', 'Poland', 54.4418, 18.5601, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Szczecin', 'szczecin', 'Poland', 53.4285, 14.5528, 'Europe/Warsaw') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pecs', 'pecs', 'Hungary', 46.0727, 18.2323, 'Europe/Budapest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Heviz', 'heviz', 'Hungary', 46.7903, 17.1885, 'Europe/Budapest') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Banska Bystrica', 'banska-bystrica', 'Slovakia', 48.7395, 19.1530, 'Europe/Bratislava') ON CONFLICT (slug) DO NOTHING;

-- More Scandinavia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lofoten', 'lofoten', 'Norway', 68.2342, 14.5628, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Trondheim', 'trondheim', 'Norway', 63.4305, 10.3951, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Flam', 'flam', 'Norway', 60.8631, 7.1136, 'Europe/Oslo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Turku', 'turku', 'Finland', 60.4518, 22.2666, 'Europe/Helsinki') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Visby', 'visby', 'Sweden', 57.6348, 18.2948, 'Europe/Stockholm') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kiruna', 'kiruna', 'Sweden', 67.8558, 20.2253, 'Europe/Stockholm') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Odense', 'odense', 'Denmark', 55.4038, 10.4024, 'Europe/Copenhagen') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Akureyri', 'akureyri', 'Iceland', 65.6835, -18.0878, 'Atlantic/Reykjavik') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vik', 'vik', 'Iceland', 63.4186, -19.0060, 'Atlantic/Reykjavik') ON CONFLICT (slug) DO NOTHING;

-- More Netherlands/Belgium
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Breda', 'breda', 'Netherlands', 51.5719, 4.7683, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nijmegen', 'nijmegen', 'Netherlands', 51.8126, 5.8372, 'Europe/Amsterdam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dinant', 'dinant', 'Belgium', 50.2614, 4.9117, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Spa', 'spa', 'Belgium', 50.4875, 5.8611, 'Europe/Brussels') ON CONFLICT (slug) DO NOTHING;

-- More Switzerland/Austria
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Grindelwald', 'grindelwald', 'Switzerland', 46.6244, 8.0413, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Davos', 'davos', 'Switzerland', 46.8003, 9.8360, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Montreux', 'montreux', 'Switzerland', 46.4312, 6.9107, 'Europe/Zurich') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kitzbuhel', 'kitzbuhel', 'Austria', 47.4462, 12.3920, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Villach', 'villach', 'Austria', 46.6103, 13.8558, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bad Gastein', 'bad-gastein', 'Austria', 47.1142, 13.1316, 'Europe/Vienna') ON CONFLICT (slug) DO NOTHING;

-- More Ireland
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Doolin', 'doolin', 'Ireland', 52.9979, -9.4122, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kinsale', 'kinsale', 'Ireland', 51.7065, -8.5300, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dingle', 'dingle', 'Ireland', 52.1409, -10.2686, 'Europe/Dublin') ON CONFLICT (slug) DO NOTHING;

-- More Central America
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Manuel Antonio', 'manuel-antonio', 'Costa Rica', 9.3927, -84.1367, 'America/Costa_Rica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Monteverde', 'monteverde', 'Costa Rica', 10.3167, -84.8167, 'America/Costa_Rica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Viejo', 'puerto-viejo', 'Costa Rica', 9.6551, -82.7541, 'America/Costa_Rica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lake Atitlan', 'lake-atitlan', 'Guatemala', 14.6907, -91.2047, 'America/Guatemala') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Flores', 'flores', 'Guatemala', 16.9275, -89.8930, 'America/Guatemala') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Caye Caulker', 'caye-caulker', 'Belize', 17.7514, -88.0175, 'America/Belize') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Placencia', 'placencia', 'Belize', 16.5142, -88.3651, 'America/Belize') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leon', 'leon-nicaragua', 'Nicaragua', 12.4379, -86.8783, 'America/Managua') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('San Juan del Sur', 'san-juan-del-sur', 'Nicaragua', 11.2536, -85.8679, 'America/Managua') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Copan Ruinas', 'copan-ruinas', 'Honduras', 14.8389, -89.1414, 'America/Tegucigalpa') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('La Ceiba', 'la-ceiba', 'Honduras', 15.7631, -86.7969, 'America/Tegucigalpa') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('El Tunco', 'el-tunco', 'El Salvador', 13.4925, -89.3833, 'America/El_Salvador') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('David', 'david-panama', 'Panama', 8.4275, -82.4309, 'America/Panama') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Boquete', 'boquete', 'Panama', 8.7833, -82.4411, 'America/Panama') ON CONFLICT (slug) DO NOTHING;

-- More Caribbean
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Varadero', 'varadero', 'Cuba', 23.1569, -81.2443, 'America/Havana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Trinidad', 'trinidad-cuba', 'Cuba', 21.8044, -79.9845, 'America/Havana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vinales', 'vinales', 'Cuba', 22.6165, -83.7144, 'America/Havana') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Charlotte Amalie', 'charlotte-amalie', 'US Virgin Islands', 18.3358, -64.9307, 'America/Virgin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('St. George''s', 'st-georges-grenada', 'Grenada', 12.0564, -61.7485, 'America/Grenada') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Roseau', 'roseau', 'Dominica', 15.3017, -61.3881, 'America/Dominica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gustavia', 'gustavia', 'Saint Barthelemy', 17.8963, -62.8522, 'America/St_Barthelemy') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hamilton', 'hamilton-bermuda', 'Bermuda', 32.2949, -64.7830, 'Atlantic/Bermuda') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kralendijk', 'kralendijk', 'Bonaire', 12.1443, -68.2655, 'America/Kralendijk') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Philipsburg', 'philipsburg', 'Sint Maarten', 18.0260, -63.0448, 'America/Lower_Princes') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Negril', 'negril', 'Jamaica', 18.2683, -78.3498, 'America/Jamaica') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ocho Rios', 'ocho-rios', 'Jamaica', 18.4071, -77.1046, 'America/Jamaica') ON CONFLICT (slug) DO NOTHING;

-- More South America
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Iguazu', 'puerto-iguazu', 'Argentina', -25.5972, -54.5786, 'America/Argentina/Cordoba') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mar del Plata', 'mar-del-plata', 'Argentina', -38.0055, -57.5426, 'America/Argentina/Buenos_Aires') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cafayate', 'cafayate', 'Argentina', -26.0719, -65.9764, 'America/Argentina/Salta') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jericoacoara', 'jericoacoara', 'Brazil', -2.7947, -40.5153, 'America/Fortaleza') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ouro Preto', 'ouro-preto', 'Brazil', -20.3855, -43.5035, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Fernando de Noronha', 'fernando-de-noronha', 'Brazil', -3.8540, -32.4280, 'America/Noronha') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ilha Grande', 'ilha-grande', 'Brazil', -23.1509, -44.2286, 'America/Sao_Paulo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vina del Mar', 'vina-del-mar', 'Chile', -33.0153, -71.5500, 'America/Santiago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Puerto Montt', 'puerto-montt', 'Chile', -41.4693, -72.9424, 'America/Santiago') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Huacachina', 'huacachina', 'Peru', -14.0875, -75.7626, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ollantaytambo', 'ollantaytambo', 'Peru', -13.2588, -72.2645, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mancora', 'mancora', 'Peru', -4.1081, -81.0442, 'America/Lima') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Taganga', 'taganga', 'Colombia', 11.2653, -74.1942, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Villa de Leyva', 'villa-de-leyva', 'Colombia', 5.6329, -73.5265, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leticia', 'leticia', 'Colombia', -4.2153, -69.9406, 'America/Bogota') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Montanita', 'montanita', 'Ecuador', -1.8278, -80.7531, 'America/Guayaquil') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Otavalo', 'otavalo', 'Ecuador', 0.2342, -78.2614, 'America/Guayaquil') ON CONFLICT (slug) DO NOTHING;

-- More Middle East
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Haifa', 'haifa', 'Israel', 32.7940, 34.9896, 'Asia/Jerusalem') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Eilat', 'eilat', 'Israel', 29.5577, 34.9519, 'Asia/Jerusalem') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dead Sea', 'dead-sea', 'Jordan', 31.5085, 35.4732, 'Asia/Amman') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Wadi Rum', 'wadi-rum', 'Jordan', 29.5751, 35.4200, 'Asia/Amman') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sharjah', 'sharjah', 'United Arab Emirates', 25.3463, 55.4209, 'Asia/Dubai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Al Ain', 'al-ain', 'United Arab Emirates', 24.1917, 55.7606, 'Asia/Dubai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Neom', 'neom', 'Saudi Arabia', 27.9500, 35.5500, 'Asia/Riyadh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('AlUla', 'alula', 'Saudi Arabia', 26.6174, 37.9164, 'Asia/Riyadh') ON CONFLICT (slug) DO NOTHING;

-- More Turkey
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pamukkale', 'pamukkale', 'Turkey', 37.9203, 29.1187, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ephesus', 'ephesus', 'Turkey', 37.9411, 27.3500, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Trabzon', 'trabzon', 'Turkey', 41.0027, 39.7168, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kas', 'kas', 'Turkey', 36.1993, 29.6404, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Konya', 'konya', 'Turkey', 37.8746, 32.4932, 'Europe/Istanbul') ON CONFLICT (slug) DO NOTHING;

-- More Africa
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Agadir', 'agadir', 'Morocco', 30.4278, -9.5981, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rabat', 'rabat', 'Morocco', 34.0209, -6.8416, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Meknes', 'meknes', 'Morocco', 33.8730, -5.5407, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Diani Beach', 'diani-beach', 'Kenya', -4.3162, 39.5713, 'Africa/Nairobi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nungwi', 'nungwi', 'Tanzania', -5.7267, 39.2947, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Serengeti', 'serengeti', 'Tanzania', -2.3333, 34.8333, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ngorongoro', 'ngorongoro', 'Tanzania', -3.2300, 35.4650, 'Africa/Dar_es_Salaam') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Stellenbosch', 'stellenbosch', 'South Africa', -33.9321, 18.8602, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Knysna', 'knysna', 'South Africa', -34.0356, 23.0488, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Franschhoek', 'franschhoek', 'South Africa', -33.8752, 19.1174, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Port Elizabeth', 'port-elizabeth', 'South Africa', -33.9608, 25.6022, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kruger National Park', 'kruger-national-park', 'South Africa', -24.0167, 31.4833, 'Africa/Johannesburg') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lalibela', 'lalibela', 'Ethiopia', 12.0319, 39.0472, 'Africa/Addis_Ababa') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Freetown', 'freetown', 'Sierra Leone', 8.4657, -13.2317, 'Africa/Freetown') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Banjul', 'banjul', 'Gambia', 13.4549, -16.5790, 'Africa/Banjul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Praia', 'praia', 'Cape Verde', 14.9331, -23.5133, 'Atlantic/Cape_Verde') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sal', 'sal', 'Cape Verde', 16.7260, -22.9350, 'Atlantic/Cape_Verde') ON CONFLICT (slug) DO NOTHING;

-- More South Asia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ella', 'ella', 'Sri Lanka', 6.8667, 81.0500, 'Asia/Colombo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sigiriya', 'sigiriya', 'Sri Lanka', 7.9570, 80.7603, 'Asia/Colombo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Unawatuna', 'unawatuna', 'Sri Lanka', 6.0100, 80.2500, 'Asia/Colombo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Lumbini', 'lumbini', 'Nepal', 27.4734, 83.2761, 'Asia/Kathmandu') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chitwan', 'chitwan', 'Nepal', 27.5291, 84.3542, 'Asia/Kathmandu') ON CONFLICT (slug) DO NOTHING;

-- More Central Asia / Caucasus
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Khiva', 'khiva', 'Uzbekistan', 41.3775, 60.3566, 'Asia/Tashkent') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Karakol', 'karakol', 'Kyrgyzstan', 42.4907, 78.3936, 'Asia/Bishkek') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mestia', 'mestia', 'Georgia', 43.0458, 42.7275, 'Asia/Tbilisi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kutaisi', 'kutaisi', 'Georgia', 42.2679, 42.6946, 'Asia/Tbilisi') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dilijan', 'dilijan', 'Armenia', 40.7413, 44.8624, 'Asia/Yerevan') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sheki', 'sheki', 'Azerbaijan', 41.1919, 47.1706, 'Asia/Baku') ON CONFLICT (slug) DO NOTHING;

-- More Oceania
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Byron Bay', 'byron-bay', 'Australia', -28.6474, 153.6120, 'Australia/Sydney') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Uluru', 'uluru', 'Australia', -25.3444, 131.0369, 'Australia/Darwin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Broome', 'broome', 'Australia', -17.9614, 122.2359, 'Australia/Perth') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Whitsunday Islands', 'whitsunday-islands', 'Australia', -20.2500, 148.9500, 'Australia/Brisbane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Margaret River', 'margaret-river', 'Australia', -33.9533, 115.0755, 'Australia/Perth') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Alice Springs', 'alice-springs', 'Australia', -23.6980, 133.8807, 'Australia/Darwin') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Milford Sound', 'milford-sound', 'New Zealand', -44.6712, 167.9260, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Abel Tasman', 'abel-tasman', 'New Zealand', -40.9500, 173.0000, 'Pacific/Auckland') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Rarotonga', 'rarotonga', 'Cook Islands', -21.2367, -159.7777, 'Pacific/Rarotonga') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nukualofa', 'nukualofa', 'Tonga', -21.2167, -175.2000, 'Pacific/Tongatapu') ON CONFLICT (slug) DO NOTHING;

-- More Mexico
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sayulita', 'sayulita', 'Mexico', 20.8691, -105.4389, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Holbox', 'holbox', 'Mexico', 21.5234, -87.3794, 'America/Cancun') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Bacalar', 'bacalar', 'Mexico', 18.6710, -88.3936, 'America/Cancun') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Queretaro', 'queretaro', 'Mexico', 20.5888, -100.3899, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Huatulco', 'huatulco', 'Mexico', 15.7692, -96.1353, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zihuatanejo', 'zihuatanejo', 'Mexico', 17.6417, -101.5517, 'America/Mexico_City') ON CONFLICT (slug) DO NOTHING;

-- More Southeast Asia
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ubud', 'ubud', 'Indonesia', -8.5069, 115.2625, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Seminyak', 'seminyak', 'Indonesia', -8.6913, 115.1578, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nusa Penida', 'nusa-penida', 'Indonesia', -8.7275, 115.5444, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Gili Islands', 'gili-islands', 'Indonesia', -8.3500, 116.0500, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Labuan Bajo', 'labuan-bajo', 'Indonesia', -8.4906, 119.8828, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pai', 'pai', 'Thailand', 19.3580, 98.4403, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Koh Phi Phi', 'koh-phi-phi', 'Thailand', 7.7407, 98.7784, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Koh Lanta', 'koh-lanta', 'Thailand', 7.5373, 99.0460, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Koh Chang', 'koh-chang', 'Thailand', 12.0483, 102.3281, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sukhothai', 'sukhothai', 'Thailand', 17.0100, 99.8231, 'Asia/Bangkok') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Coron', 'coron', 'Philippines', 11.9986, 120.2043, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dumaguete', 'dumaguete', 'Philippines', 9.3068, 123.3054, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Vigan', 'vigan', 'Philippines', 17.5747, 120.3869, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ninh Binh', 'ninh-binh', 'Vietnam', 20.2506, 105.9745, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Mui Ne', 'mui-ne', 'Vietnam', 10.9335, 108.2872, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kampot', 'kampot', 'Cambodia', 10.5940, 104.1673, 'Asia/Phnom_Penh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Kep', 'kep', 'Cambodia', 10.4838, 104.3175, 'Asia/Phnom_Penh') ON CONFLICT (slug) DO NOTHING;

-- Additional Japan/Korea/China
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Yokohama', 'yokohama', 'Japan', 35.4437, 139.6380, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Nagasaki', 'nagasaki', 'Japan', 32.7503, 129.8779, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Miyajima', 'miyajima', 'Japan', 34.2960, 132.3196, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Matsumoto', 'matsumoto', 'Japan', 36.2381, 137.9720, 'Asia/Tokyo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Daegu', 'daegu', 'South Korea', 35.8714, 128.6014, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jeonju', 'jeonju', 'South Korea', 35.8242, 127.1480, 'Asia/Seoul') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Yangshuo', 'yangshuo', 'China', 24.7659, 110.4955, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Zhangjiajie', 'zhangjiajie', 'China', 29.1170, 110.4793, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dali', 'dali', 'China', 25.5913, 100.2295, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Chongqing', 'chongqing', 'China', 29.4316, 106.9123, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Haikou', 'haikou', 'China', 20.0174, 110.3492, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sanya', 'sanya', 'China', 18.2528, 109.5120, 'Asia/Shanghai') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Taichung', 'taichung', 'Taiwan', 24.1477, 120.6736, 'Asia/Taipei') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tainan', 'tainan', 'Taiwan', 22.9998, 120.2269, 'Asia/Taipei') ON CONFLICT (slug) DO NOTHING;


-- Final batch to reach 1000
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hualien', 'hualien', 'Taiwan', 23.9910, 121.6111, 'Asia/Taipei') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Jiufen', 'jiufen', 'Taiwan', 25.1089, 121.8444, 'Asia/Taipei') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Luang Namtha', 'luang-namtha', 'Laos', 21.0000, 101.4000, 'Asia/Vientiane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Savannakhet', 'savannakhet', 'Laos', 16.5568, 104.7497, 'Asia/Vientiane') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Cameron Highlands', 'cameron-highlands', 'Malaysia', 4.4715, 101.3762, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Tioman Island', 'tioman-island', 'Malaysia', 2.7922, 104.1489, 'Asia/Kuala_Lumpur') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Flores', 'flores-indonesia', 'Indonesia', -8.6578, 121.0794, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sumba', 'sumba', 'Indonesia', -9.6546, 119.5528, 'Asia/Makassar') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Sapa', 'sapa', 'Vietnam', 22.3402, 103.8448, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Quy Nhon', 'quy-nhon', 'Vietnam', 13.7830, 109.2197, 'Asia/Ho_Chi_Minh') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Panglao', 'panglao', 'Philippines', 9.5807, 123.7747, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Iloilo', 'iloilo', 'Philippines', 10.7202, 122.5621, 'Asia/Manila') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Hampi', 'hampi', 'India', 15.3350, 76.4600, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Munnar', 'munnar', 'India', 10.0889, 77.0595, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Leh', 'leh', 'India', 34.1526, 77.5771, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pushkar', 'pushkar', 'India', 26.4899, 74.5510, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Pondicherry', 'pondicherry', 'India', 11.9416, 79.8083, 'Asia/Kolkata') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Essaouira', 'essaouira-morocco', 'Morocco', 31.5085, -9.7595, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Toubkal', 'toubkal', 'Morocco', 31.0596, -7.9153, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Ifrane', 'ifrane', 'Morocco', 33.5228, -5.1109, 'Africa/Casablanca') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Siwa Oasis', 'siwa-oasis', 'Egypt', 29.2032, 25.5195, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;
INSERT INTO cities (name, slug, country, latitude, longitude, timezone) VALUES ('Dahab', 'dahab', 'Egypt', 28.5007, 34.5133, 'Africa/Cairo') ON CONFLICT (slug) DO NOTHING;

COMMIT;
