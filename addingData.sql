use destiny2;

insert into guardian values
(1, "Titan", 1820, "Glorious"),
(2, "Warlock", 1820, "Descendant"),
(3, "Hunter", 1820, "Unbroken");

insert into npc values
(1, "Commander Zavala", "Awoken", 1),
(2, "Ikora Rey", "Human", 2),
(3, "Cayde-6", "Exo", 3);

insert into element values
(1, "Solar"),
(2, "Arc"),
(3, "Void"),
(4, "Stasis"),
(5, "Strand"),
(6, "Kinetic");

insert into subclass values
-- Titan Subclasses
(1, "Hammer of Sol", 1, 1),
(2, "Burning Mall", 1, 1),
(3, "Fists of Havoc", 1, 2),
(4, "Thundercrash", 1, 2),
(5, "Sentinel", 1, 3),
(6, "Ward of Dawn", 1, 3),
(7, "Behemoth", 1, 4),
(8, "Beserker", 1, 5),

-- Warlock Subclasses
(9, "Well of Radiance", 2, 1),
(10, "Daybreak", 2, 1),
(11, "Stormcaller", 2, 2),
(12, "Chaos Reach", 2, 2),
(13, "Nova Bomb", 2, 3),
(14, "Nova Warp", 2, 3),
(15, "Shadebinder", 2, 4),
(16, "Broodweaver", 2, 5),

-- Hunter Subclasses
(17, "Golden Gun", 3, 1),
(18, "Blade Barrage", 3, 1),
(19, "Arc Staff", 3, 2),
(20, "Gathering Storm", 3, 2),
(21, "Nightstalker", 3, 3),
(22, "Spectral Blades", 3, 3),
(23, "Revenant", 3, 4),
(24, "Threadrunner", 3, 5);

insert into weapon_type values 
-- Primary Ammo Types
(1, "Scout Rifle", "Primary Ammo"),
(2, "Pulse Rifle", "Primary Ammo"),
(3, "Hand Cannon", "Primary Ammo"),
(4, "Sidearm", "Primary Ammo"),
(5, "Submachine Gun", "Primary Ammo"),
(6, "Auto Rifle", "Primary Ammo"),

-- Special Ammo Types
(7, "Shotgun", "Special Ammo"),
(8, "Sniper Rifle", "Special Ammo"),
(9, "Grenade Launcher", "Special Ammo"),
(10, "Trace Rifle", "Special Ammo"),
(11, "Linear Fusion Rifle", "Special Ammo"),
(12, "Fusion Rifle", "Special Ammo"),

-- Heavy Ammo Types 
(13, "Rocket Launcher", "Heavy Ammo"),
(14, "Machine Gun", "Heavy Ammo"),
(15, "Sword", "Heavy Ammo");

insert into weapon values
-- Titan Kinetic Weapons
(1, "Riptide", 12, 1, 4),
(2, "Conditional Finality", 7, 1, 4),
(3, "Heritage", 7, 1, 6),
(4, "Malfeasance", 3, 1, 6),
(5, "Pardon Our Dust", 9, 1, 6),
(6, "Quicksilver Storm", 6, 1, 5),
(7, "Thoughtless", 8, 1, 4),

-- Titan Energy Weapons
(8, "Sunshot", 3, 1, 1),
(9, "Acasia's Dejection", 10, 1, 1),
(10, "CALUS Mini-Tool", 5, 1, 1),
(11, "Forbearance", 9, 1, 2),
(12, "Graviton Lance", 2, 1, 3),
(13, "IKELOS_SMG_V1.0.3", 5, 1, 2),
(14, "Targeted Redaction", 3, 1, 3),

-- Titan Power Weapons
(15, "Palmyra-B", 13, 1, 4),
(16, "Machine Gun", 14, 1, 3),
(17, "The Other Half", 15, 1, 3),

-- Warlock Kinetic Weapons
(18, "Hung Jury SR4 (Adept)", 1, 2, 6),
(19, "Arbalest", 11, 2, 6),
(20, "Liminal Vigil", 4, 2, 4),
(21, "Osteo Striga", 5, 2, 6),

-- Warlock Energy Weapons 
(22, "No Survivors", 5, 2, 1),
(23, "Doom of Chelchis", 1, 2, 3),
(24, "Polaris Lance", 1, 2, 1),

-- Warlock Power Weapons
(25, "Circular Logic", 14, 2, 5),
(26, "Cold Comfort", 13, 2, 4),
(27, "The Hothead (Adept)", 13, 2, 2),

-- Hunter Kinetic Weapons
(28, "Night Watch", 1, 3, 6),
(29, "Burden of Guilt (Adept)", 12, 3, 4),
(30, "Piece of Mind", 2, 3, 6),
(31, "Escape Velocity", 5, 3, 6),

-- Hunter Energy Weapons
(32, "Tarnished Mettle", 1, 3, 2),
(33, "Twilight Oath", 8, 3, 1),

-- Hunter Power Weapons
(34, "Royal Entry", 13, 3, 3),
(35, "Caretaker", 15, 3, 1); 