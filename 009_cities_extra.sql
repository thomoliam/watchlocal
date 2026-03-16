-- 009_cities_extra.sql
-- Tourist cities for 25 additional countries
-- Generated 2026-03-16

-- ============================================
-- 1. Japan
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Tokyo', 'tokyo', 'Japan', 35.6762, 139.6503, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Osaka', 'osaka', 'Japan', 34.6937, 135.5023, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kyoto', 'kyoto', 'Japan', 35.0116, 135.7681, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hiroshima', 'hiroshima', 'Japan', 34.3853, 132.4553, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Sapporo', 'sapporo', 'Japan', 43.0618, 141.3545, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Fukuoka', 'fukuoka', 'Japan', 33.5904, 130.4017, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Nagoya', 'nagoya', 'Japan', 35.1815, 136.9066, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Naha', 'naha', 'Japan', 26.2124, 127.6809, 'Asia/Tokyo')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 2. South Korea
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Seoul', 'seoul', 'South Korea', 37.5665, 126.9780, 'Asia/Seoul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Busan', 'busan', 'South Korea', 35.1796, 129.0756, 'Asia/Seoul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Jeju', 'jeju', 'South Korea', 33.4996, 126.5312, 'Asia/Seoul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Incheon', 'incheon', 'South Korea', 37.4563, 126.7052, 'Asia/Seoul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Daegu', 'daegu', 'South Korea', 35.8714, 128.6014, 'Asia/Seoul')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 3. Hong Kong
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hong Kong', 'hong-kong', 'Hong Kong', 22.3193, 114.1694, 'Asia/Hong_Kong')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 4. Taiwan
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Taipei', 'taipei', 'Taiwan', 25.0330, 121.5654, 'Asia/Taipei')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kaohsiung', 'kaohsiung', 'Taiwan', 22.6273, 120.3014, 'Asia/Taipei')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Taichung', 'taichung', 'Taiwan', 24.1477, 120.6736, 'Asia/Taipei')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Tainan', 'tainan', 'Taiwan', 22.9998, 120.2269, 'Asia/Taipei')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hualien', 'hualien', 'Taiwan', 23.9910, 121.6111, 'Asia/Taipei')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 5. China
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Beijing', 'beijing', 'China', 39.9042, 116.4074, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Shanghai', 'shanghai', 'China', 31.2304, 121.4737, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Guangzhou', 'guangzhou', 'China', 23.1291, 113.2644, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Shenzhen', 'shenzhen', 'China', 22.5431, 114.0579, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Chengdu', 'chengdu', 'China', 30.5728, 104.0668, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Xi''an', 'xian', 'China', 34.3416, 108.9398, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Guilin', 'guilin', 'China', 25.2744, 110.2990, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hangzhou', 'hangzhou', 'China', 30.2741, 120.1551, 'Asia/Shanghai')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 6. India
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Mumbai', 'mumbai', 'India', 19.0760, 72.8777, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Delhi', 'delhi', 'India', 28.7041, 77.1025, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Bangalore', 'bangalore', 'India', 12.9716, 77.5946, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Panaji', 'panaji', 'India', 15.4909, 73.8278, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Jaipur', 'jaipur', 'India', 26.9124, 75.7873, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Agra', 'agra', 'India', 27.1767, 78.0081, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kolkata', 'kolkata', 'India', 22.5726, 88.3639, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Chennai', 'chennai', 'India', 13.0827, 80.2707, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hyderabad', 'hyderabad', 'India', 17.3850, 78.4867, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kochi', 'kochi', 'India', 9.9312, 76.2673, 'Asia/Kolkata')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 7. Nepal
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kathmandu', 'kathmandu', 'Nepal', 27.7172, 85.3240, 'Asia/Kathmandu')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Pokhara', 'pokhara', 'Nepal', 28.2096, 83.9856, 'Asia/Kathmandu')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Chitwan', 'chitwan', 'Nepal', 27.5291, 84.3542, 'Asia/Kathmandu')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 8. Sri Lanka
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Colombo', 'colombo', 'Sri Lanka', 6.9271, 79.8612, 'Asia/Colombo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kandy', 'kandy', 'Sri Lanka', 7.2906, 80.6337, 'Asia/Colombo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Galle', 'galle', 'Sri Lanka', 6.0535, 80.2210, 'Asia/Colombo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Ella', 'ella', 'Sri Lanka', 6.8667, 81.0466, 'Asia/Colombo')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 9. Maldives
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Male', 'male', 'Maldives', 4.1755, 73.5093, 'Indian/Maldives')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hulhumale', 'hulhumale', 'Maldives', 4.2108, 73.5400, 'Indian/Maldives')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 10. UAE
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Dubai', 'dubai', 'UAE', 25.2048, 55.2708, 'Asia/Dubai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Abu Dhabi', 'abu-dhabi', 'UAE', 24.4539, 54.3773, 'Asia/Dubai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Sharjah', 'sharjah', 'UAE', 25.3573, 55.4033, 'Asia/Dubai')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Ras Al Khaimah', 'ras-al-khaimah', 'UAE', 25.7895, 55.9432, 'Asia/Dubai')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 11. Turkey
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Istanbul', 'istanbul', 'Turkey', 41.0082, 28.9784, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Ankara', 'ankara', 'Turkey', 39.9334, 32.8597, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Antalya', 'antalya', 'Turkey', 36.8969, 30.7133, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Izmir', 'izmir', 'Turkey', 38.4237, 27.1428, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Bodrum', 'bodrum', 'Turkey', 37.0344, 27.4305, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Goreme', 'goreme', 'Turkey', 38.6431, 34.8283, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Fethiye', 'fethiye', 'Turkey', 36.6515, 29.1164, 'Europe/Istanbul')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 12. Morocco
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Marrakech', 'marrakech', 'Morocco', 31.6295, -7.9811, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Casablanca', 'casablanca', 'Morocco', 33.5731, -7.5898, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Fez', 'fez', 'Morocco', 34.0181, -5.0078, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Tangier', 'tangier', 'Morocco', 35.7595, -5.8340, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Chefchaouen', 'chefchaouen', 'Morocco', 35.1688, -5.2636, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Rabat', 'rabat', 'Morocco', 34.0209, -6.8416, 'Africa/Casablanca')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 13. Egypt
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Cairo', 'cairo', 'Egypt', 30.0444, 31.2357, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Alexandria', 'alexandria', 'Egypt', 31.2001, 29.9187, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Luxor', 'luxor', 'Egypt', 25.6872, 32.6396, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Aswan', 'aswan', 'Egypt', 24.0889, 32.8998, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Hurghada', 'hurghada', 'Egypt', 27.2579, 33.8116, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Sharm El Sheikh', 'sharm-el-sheikh', 'Egypt', 27.9158, 34.3300, 'Africa/Cairo')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 14. Jordan
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Amman', 'amman', 'Jordan', 31.9454, 35.9284, 'Asia/Amman')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Aqaba', 'aqaba', 'Jordan', 29.5267, 35.0078, 'Asia/Amman')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Wadi Musa', 'wadi-musa', 'Jordan', 30.3168, 35.4784, 'Asia/Amman')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 15. Israel
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Tel Aviv', 'tel-aviv', 'Israel', 32.0853, 34.7818, 'Asia/Jerusalem')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Jerusalem', 'jerusalem', 'Israel', 31.7683, 35.2137, 'Asia/Jerusalem')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Haifa', 'haifa', 'Israel', 32.7940, 34.9896, 'Asia/Jerusalem')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Eilat', 'eilat', 'Israel', 29.5577, 34.9519, 'Asia/Jerusalem')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 16. South Africa
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Cape Town', 'cape-town', 'South Africa', -33.9249, 18.4241, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Johannesburg', 'johannesburg', 'South Africa', -26.2041, 28.0473, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Durban', 'durban', 'South Africa', -29.8587, 31.0218, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Pretoria', 'pretoria', 'South Africa', -25.7479, 28.2293, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Stellenbosch', 'stellenbosch', 'South Africa', -33.9321, 18.8602, 'Africa/Johannesburg')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 17. Kenya
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Nairobi', 'nairobi', 'Kenya', -1.2921, 36.8219, 'Africa/Nairobi')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Mombasa', 'mombasa', 'Kenya', -4.0435, 39.6682, 'Africa/Nairobi')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Diani Beach', 'diani-beach', 'Kenya', -4.3477, 39.5682, 'Africa/Nairobi')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Malindi', 'malindi', 'Kenya', -3.2138, 40.1169, 'Africa/Nairobi')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 18. Tanzania
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Dar es Salaam', 'dar-es-salaam', 'Tanzania', -6.7924, 39.2083, 'Africa/Dar_es_Salaam')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Stone Town', 'stone-town', 'Tanzania', -6.1659, 39.1980, 'Africa/Dar_es_Salaam')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Arusha', 'arusha', 'Tanzania', -3.3869, 36.6830, 'Africa/Dar_es_Salaam')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Moshi', 'moshi', 'Tanzania', -3.3350, 37.3404, 'Africa/Dar_es_Salaam')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 19. Rwanda
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kigali', 'kigali', 'Rwanda', -1.9403, 29.8739, 'Africa/Kigali')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Musanze', 'musanze', 'Rwanda', -1.4994, 29.6346, 'Africa/Kigali')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 20. Jamaica
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Kingston', 'kingston', 'Jamaica', 18.0179, -76.8099, 'America/Jamaica')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Montego Bay', 'montego-bay', 'Jamaica', 18.4762, -77.8939, 'America/Jamaica')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Ocho Rios', 'ocho-rios', 'Jamaica', 18.4075, -77.1050, 'America/Jamaica')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Negril', 'negril', 'Jamaica', 18.2680, -78.3494, 'America/Jamaica')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 21. Dominican Republic
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Santo Domingo', 'santo-domingo', 'Dominican Republic', 18.4861, -69.9312, 'America/Santo_Domingo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Punta Cana', 'punta-cana', 'Dominican Republic', 18.5601, -68.3725, 'America/Santo_Domingo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Puerto Plata', 'puerto-plata', 'Dominican Republic', 19.7934, -70.6884, 'America/Santo_Domingo')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('La Romana', 'la-romana', 'Dominican Republic', 18.4274, -68.9728, 'America/Santo_Domingo')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 22. Cuba
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Havana', 'havana', 'Cuba', 23.1136, -82.3666, 'America/Havana')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Varadero', 'varadero', 'Cuba', 23.1536, -81.2447, 'America/Havana')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Trinidad', 'trinidad-cuba', 'Cuba', 21.8022, -79.9805, 'America/Havana')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Santiago de Cuba', 'santiago-de-cuba', 'Cuba', 20.0169, -75.8269, 'America/Havana')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 23. Bahamas
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Nassau', 'nassau', 'Bahamas', 25.0343, -77.3963, 'America/Nassau')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Freeport', 'freeport', 'Bahamas', 26.5285, -78.6968, 'America/Nassau')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 24. Fiji
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Suva', 'suva', 'Fiji', -18.1416, 178.4419, 'Pacific/Fiji')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Nadi', 'nadi', 'Fiji', -17.7765, 177.9447, 'Pacific/Fiji')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Denarau', 'denarau', 'Fiji', -17.7725, 177.3714, 'Pacific/Fiji')
ON CONFLICT (slug) DO NOTHING;

-- ============================================
-- 25. Hungary
-- ============================================
INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Budapest', 'budapest', 'Hungary', 47.4979, 19.0402, 'Europe/Budapest')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Debrecen', 'debrecen', 'Hungary', 47.5316, 21.6273, 'Europe/Budapest')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO cities (name, slug, country, latitude, longitude, timezone)
VALUES ('Eger', 'eger', 'Hungary', 47.9025, 20.3772, 'Europe/Budapest')
ON CONFLICT (slug) DO NOTHING;
