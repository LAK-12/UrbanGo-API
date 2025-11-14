USE urbango;

INSERT INTO places
(id, name, city_name, country_code, category, lat, lng, address,
 rating, rating_count, price_tier, is_halal, opening_hours_json)
VALUES
-- ===== Germany =====
(UUID_TO_BIN(UUID()), 'Berlin Street Bites', 'Berlin', 'DE', 'FOOD',
 52.5200, 13.4050, 'Alexanderplatz, Berlin',
 4.6, 210, 2, 0, NULL),

(UUID_TO_BIN(UUID()), 'Kreuzberg Kebab House', 'Berlin', 'DE', 'FOOD',
 52.4986, 13.4033, 'Oranienstraße, Berlin',
 4.7, 340, 1, 1, NULL),

(UUID_TO_BIN(UUID()), 'Museum Island', 'Berlin', 'DE', 'ATTRACTION',
 52.5169, 13.4010, 'Museumsinsel, Berlin',
 4.8, 12000, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Main River Promenade', 'Frankfurt', 'DE', 'ATTRACTION',
 50.1060, 8.6810, 'Mainufer, Frankfurt am Main',
 4.6, 5400, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Sachsenhausen Grill House', 'Frankfurt', 'DE', 'FOOD',
 50.1010, 8.6845, 'Brückenstraße, Frankfurt am Main',
 4.4, 480, 2, 0, NULL),

-- ===== Italy =====
(UUID_TO_BIN(UUID()), 'Trastevere Trattoria', 'Rome', 'IT', 'FOOD',
 41.8892, 12.4700, 'Trastevere, Roma',
 4.6, 870, 2, 0, NULL),

(UUID_TO_BIN(UUID()), 'Colosseum', 'Rome', 'IT', 'ATTRACTION',
 41.8902, 12.4922, 'Piazza del Colosseo, Roma',
 4.9, 25000, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Navona Gelato Bar', 'Rome', 'IT', 'FOOD',
 41.8992, 12.4731, 'Piazza Navona, Roma',
 4.5, 430, 1, 0, NULL),

(UUID_TO_BIN(UUID()), 'Duomo Rooftop View', 'Milan', 'IT', 'ATTRACTION',
 45.4642, 9.1910, 'Piazza del Duomo, Milano',
 4.8, 16000, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Brera Pasta Kitchen', 'Milan', 'IT', 'FOOD',
 45.4712, 9.1870, 'Via Brera, Milano',
 4.4, 510, 3, 0, NULL),

-- ===== France =====
(UUID_TO_BIN(UUID()), 'Eiffel Tower', 'Paris', 'FR', 'ATTRACTION',
 48.8584, 2.2945, 'Champ de Mars, Paris',
 4.8, 30000, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Seine Riverside Bistro', 'Paris', 'FR', 'FOOD',
 48.8550, 2.3440, 'Quai de la Tournelle, Paris',
 4.5, 760, 3, 0, NULL),

(UUID_TO_BIN(UUID()), 'Le Marais Falafel Spot', 'Paris', 'FR', 'FOOD',
 48.8575, 2.3611, 'Rue des Rosiers, Paris',
 4.7, 980, 2, 1, NULL),

(UUID_TO_BIN(UUID()), 'Old Town Viewpoint', 'Nice', 'FR', 'ATTRACTION',
 43.6950, 7.2710, 'Colline du Château, Nice',
 4.6, 4100, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Promenade Seafood Grill', 'Nice', 'FR', 'FOOD',
 43.6955, 7.2620, 'Promenade des Anglais, Nice',
 4.3, 390, 3, 0, NULL),

-- ===== United Kingdom =====
(UUID_TO_BIN(UUID()), 'Tower Bridge', 'London', 'GB', 'ATTRACTION',
 51.5055, -0.0754, 'Tower Bridge Rd, London',
 4.8, 21000, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'Shoreditch Street Eats', 'London', 'GB', 'FOOD',
 51.5245, -0.0774, 'Shoreditch High St, London',
 4.5, 820, 2, 0, NULL),

(UUID_TO_BIN(UUID()), 'Hyde Park Halal Grill', 'London', 'GB', 'FOOD',
 51.5073, -0.1657, 'Hyde Park Corner, London',
 4.4, 560, 2, 1, NULL),

(UUID_TO_BIN(UUID()), 'Royal Mile Lookout', 'Edinburgh', 'GB', 'ATTRACTION',
 55.9498, -3.1903, 'Royal Mile, Edinburgh',
 4.7, 6800, 0, 0, NULL),

(UUID_TO_BIN(UUID()), 'New Town Coffee House', 'Edinburgh', 'GB', 'FOOD',
 55.9550, -3.1930, 'George Street, Edinburgh',
 4.6, 430, 2, 0, NULL),

(UUID_TO_BIN(UUID()), 'Northern Quarter Bites', 'Manchester', 'GB', 'FOOD',
 53.4830, -2.2350, 'Northern Quarter, Manchester',
 4.4, 510, 2, 0, NULL);
