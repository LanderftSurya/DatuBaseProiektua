--- ======================================================
--- 1. HERRIALDE (Países)
--- ======================================================
INSERT INTO Herrialde (CIzena, Kontinentea, Klima, Populazioa) VALUES 
('Espainia', 'Europa', 'Mediterraneoa', 47500000),
('Frantzia', 'Europa', 'Epela', 67500000),
('AEB', 'Ipar Amerika', 'Anitza', 332000000),
('Erresuma Batua', 'Europa', 'Ozeanikoa', 68000000),
('Alemania', 'Europa', 'Kontinentala', 83000000),
('Kolonbia', 'Hego Amerika', 'Tropikala', 51000000),
('Mexiko', 'Ipar Amerika', 'Lehorra/Tropikala', 126000000),
('Hego Korea', 'Asia', 'Epela', 51700000),
('Argentina', 'Hego Amerika', 'Epela', 45800000),
('Italia', 'Europa', 'Mediterraneoa', 59000000),
('Kanada', 'Ipar Amerika', 'Hotza', 38000000),
('Brasil', 'Hego Amerika', 'Tropikala', 214000000),
('Japonia', 'Asia', 'Epela', 125000000),
('Australia', 'Oseania', 'Lehorra', 25000000),
('Islandia', 'Europa', 'Polarra', 370000);

--- ======================================================
--- 2. HIRIA (Ciudades con múltiples sedes)
--- ======================================================
INSERT INTO Hiria (HIzena, CIzena, Komarka, PostaKodea) VALUES 
('Bilbo', 'Espainia', 'Bizkaia', '48001'),
('Donostia', 'Espainia', 'Gipuzkoa', '20001'),
('Madril', 'Espainia', 'Madril', '28001'),
('London', 'Erresuma Batua', 'Greater London', 'E1 6AN'),
('New York', 'AEB', 'Manhattan', '10001'),
('Los Angeles', 'AEB', 'California', '90001'),
('Berlin', 'Alemania', 'Berlin', '10115'),
('Bogota', 'Kolonbia', 'Cundinamarca', '110111'),
('Tokyo', 'Japonia', 'Kanto', '100-0001'),
('Reykjavik', 'Islandia', 'Capital Region', '101');

--- ======================================================
--- 3. ARETOA (Recintos)
--- ======================================================
INSERT INTO Aretoa (LIzena, HIzena, Helbidea, Edukiera, Estalia) VALUES 
('BEC Arena', 'Bilbo', 'Barakaldo', 18000, 'Bai'),
('Kafe Antzokia', 'Bilbo', 'Done Bikendi Kalea', 500, 'Bai'),
('Kursaal', 'Donostia', 'Zurriola', 1800, 'Bai'),
('Wizink Center', 'Madril', 'Av. Felipe II', 17450, 'Bai'),
('Wembley Stadium', 'London', 'Wembley', 90000, 'Ez'),
('O2 Arena', 'London', 'Peninsula Square', 20000, 'Bai'),
('Madison Square Garden', 'New York', '4 Pennsylvania Plaza', 20000, 'Bai'),
('SoFi Stadium', 'Los Angeles', 'Inglewood', 70000, 'Ez'),
('Berghain', 'Berlin', 'Am Wriezener Bahnhof', 1500, 'Bai'),
('Movistar Arena', 'Bogota', 'Diagonal 61C', 14000, 'Bai'),
('Budokan', 'Tokyo', 'Chiyoda', 14471, 'Bai');

--- ======================================================
--- 4. ANTZEZLEKUA (Ampliación masiva de escenarios)
--- ======================================================

INSERT INTO Antzezlekua (EId, LIzena, Ekipamendua) VALUES 
-- Escenarios en Bilbao (BEC y Kafe Antzokia)
('BIL-BEC-01', 'BEC Arena', 'Main Stage - L-Acoustics K1 & Video Wall 8K'),
('BIL-BEC-02', 'BEC Arena', 'Black Box - Intimate Lighting & Surround Sound'),
('BIL-BEC-03', 'BEC Arena', 'Outdoor Terrace - Weatherproof Sound System'),
('BIL-KAF-01', 'Kafe Antzokia', 'Eszenatoki Nagusia - Analog Mixing Console'),
('BIL-KAF-02', 'Kafe Antzokia', 'Kutxa Beltza - Small Club PA System'),

-- Escenarios en Madrid (Wizink Center)
('MAD-WIZ-01', 'Wizink Center', 'North Stage - Flying Line Array'),
('MAD-WIZ-02', 'Wizink Center', 'South Stage - 360 Degree Rigging'),
('MAD-WIZ-03', 'Wizink Center', 'VIP Acoustic Lounge - Soft Lighting'),

-- Escenarios en London (Wembley y O2)
('LON-WEM-01', 'Wembley Stadium', 'Great North Stage - Massive LED Pyrotechnics'),
('LON-WEM-02', 'Wembley Stadium', 'Pitch B Stage - Circular Hydronic Lift'),
('LON-O2A-01', 'O2 Arena', 'Main Arena - Dolby Atmos Live Install'),
('LON-O2A-02', 'O2 Arena', 'Indigo Stage - High Definition Projection'),

-- Escenarios en New York (Madison Square Garden)
('NY-MSG-01', 'Madison Square Garden', 'The Garden Floor - Immersive Audio Rig'),
('NY-MSG-02', 'Madison Square Garden', 'Theater Stage - Broadway Grade Lighting'),

-- Escenarios en Los Angeles (SoFi Stadium)
('LA-SOF-01', 'SoFi Stadium', 'The Infinity Screen Center - 4K Wrap-around'),
('LA-SOF-02', 'SoFi Stadium', 'North End Zone - Mobile PA Unit'),
('LA-SOF-03', 'SoFi Stadium', 'Performance Plaza - Open Air Sound'),

-- Escenarios en Berlin (Berghain y Olympic)
('BER-BGH-01', 'Berghain', 'Main Floor - Funktion-One Sound System'),
('BER-BGH-02', 'Berghain', 'Panorama Bar - House Mix Audio Set'),
('BER-BGH-03', 'Berghain', 'Säule - Experimental Lighting Rig'),

-- Escenarios en Bogota (Movistar Arena)
('BOG-MOV-01', 'Movistar Arena', 'Escenario Principal - Acoustic Treatment v2'),
('BOG-MOV-02', 'Movistar Arena', 'Club Movistar - Intimate LED Setup'),

-- Escenarios en Donostia (Kursaal)
('SS-KUR-01', 'Kursaal', 'Auditorio Nagusia - Natural Timber Acoustics'),
('SS-KUR-02', 'Kursaal', 'Ganbera Aretoa - Chamber Music Setup'),

-- Escenarios en Tokyo (Budokan / Tokyo Dome)
('TYO-BUD-01', 'Budokan', 'Center Octagon - Traditional Martial Arts Rig'),
('TYO-BUD-02', 'Budokan', 'Backstage Studio - Live Broadcast Unit'),

-- Escenarios adicionales para festivales globales
('GLO-MAIN-A', 'Wembley Stadium', 'Festival Headliner Stage - Dual Screen'),
('GLO-TECH-B', 'Berghain', 'Techno Bunker - Minimalist Lighting'),
('GLO-POP-C', 'SoFi Stadium', 'Pop Icon Stage - Catwalk & Elevators'),
('GLO-ALT-D', 'BEC Arena', 'Alternative Tent - Hybrid Digital Sound');

--- ======================================================
--- 5. FESTIBAL (Expansión masiva por ciudades)
--- ======================================================

INSERT INTO Festibal (FIzena, CIzena, Webgunea, Estiloa) VALUES 
-- Festivales en España
('Mad Cool', 'Espainia', 'madcoolfestival.es', 'Rock/Indie'),
('Primavera Sound', 'Espainia', 'primaverasound.com', 'Alternatiboa'),
('Jazzaldia', 'Espainia', 'jazzaldia.eus', 'Jazz'),
('BBK Live', 'Espainia', 'bbklive.com', 'Electronic/Indie'),

-- Festivales en Reino Unido
('Reading & Leeds', 'Erresuma Batua', 'readingandleedsfestival.com', 'Rock/Punk'),
('Glastonbury', 'Erresuma Batua', 'glastonburyfestivals.co.uk', 'Eclectico'),
('Parklife', 'Erresuma Batua', 'parklife.uk.com', 'Dance/Hip Hop'),
('Wireless Festival', 'Erresuma Batua', 'wirelessfestival.co.uk', 'Urban/Rap'),

-- Festivales en Estados Unidos
('Coachella', 'AEB', 'coachella.com', 'Indie/Pop'),
('Governors Ball', 'AEB', 'govball.com', 'Indie/Pop'),
('Ultra Music Festival', 'AEB', 'ultramusicfestival.com', 'EDM'),
('Outside Lands', 'AEB', 'sfoutsidelands.com', 'Rock/Indie'),

-- Festivales en Alemania
('Lollapalooza Berlin', 'Alemania', 'lollapaloozade.com', 'Pop/Electronic'),
('Time Warp', 'Alemania', 'time-warp.de', 'Techno Underground'),
('Melt! Festival', 'Alemania', 'meltfestival.de', 'Indie/Electronic'),

-- Festivales en Asia y Sudamérica
('Fuji Rock', 'Japonia', 'fujirockfestival.com', 'Rock/Electronic'),
('Summer Sonic', 'Japonia', 'summersonic.com', 'Pop/Rock'),
('Rock in Rio', 'Brasil', 'rockinrio.com', 'Legendarioa'),
('Lollapalooza Argentina', 'Argentina', 'lollapaloozaar.com', 'Anitza'),

-- Festivales Especiales
('Iceland Airwaves', 'Islandia', 'icelandairwaves.is', 'Indie/Experimental');

--- ======================================================
--- 6. EDIZIOA (Ediciones para estos festivales - 2024/2025)
--- ======================================================

INSERT INTO Edizioa (EIzena, FIzena, Urtea, HasieraData, AmaieraData) VALUES 
-- Mad Cool (5 ediciones)
('MC-2022', 'Mad Cool', 2022, '2022-07-06', '2022-07-09'),
('MC-2023', 'Mad Cool', 2023, '2023-07-06', '2023-07-09'),
('MC-2024', 'Mad Cool', 2024, '2024-07-10', '2024-07-13'),
('MC-2025', 'Mad Cool', 2025, '2025-07-09', '2025-07-12'),
('MC-2026', 'Mad Cool', 2026, '2026-07-08', '2026-07-11'),

-- Primavera Sound (5 ediciones)
('PS-2022', 'Primavera Sound', 2022, '2022-06-02', '2022-06-05'),
('PS-2023', 'Primavera Sound', 2023, '2023-06-01', '2023-06-04'),
('PS-2024', 'Primavera Sound', 2024, '2024-05-29', '2024-06-02'),
('PS-2025', 'Primavera Sound', 2025, '2025-05-29', '2025-06-01'),
('PS-2026', 'Primavera Sound', 2026, '2026-06-04', '2026-06-07'),

-- Jazzaldia (5 ediciones)
('JAZZ-57', 'Jazzaldia', 2022, '2022-07-20', '2022-07-24'),
('JAZZ-58', 'Jazzaldia', 2023, '2023-07-19', '2023-07-23'),
('JAZZ-59', 'Jazzaldia', 2024, '2024-07-23', '2024-07-28'),
('JAZZ-60', 'Jazzaldia', 2025, '2025-07-22', '2025-07-27'),
('JAZZ-61', 'Jazzaldia', 2026, '2026-07-21', '2026-07-26'),

-- BBK Live (5 ediciones)
('BBK-22', 'BBK Live', 2022, '2022-07-07', '2022-07-09'),
('BBK-23', 'BBK Live', 2023, '2023-07-06', '2023-07-08'),
('BBK-24', 'BBK Live', 2024, '2024-08-09', '2024-08-11'),
('BBK-25', 'BBK Live', 2025, '2025-07-10', '2025-07-12'),
('BBK-26', 'BBK Live', 2026, '2026-07-09', '2026-07-11'),

-- Reading & Leeds (5 ediciones)
('RL-2022', 'Reading & Leeds', 2022, '2022-08-26', '2022-08-28'),
('RL-2023', 'Reading & Leeds', 2023, '2023-08-25', '2023-08-27'),
('RL-2024', 'Reading & Leeds', 2024, '2024-08-21', '2024-08-25'),
('RL-2025', 'Reading & Leeds', 2025, '2025-08-22', '2025-08-24'),
('RL-2026', 'Reading & Leeds', 2026, '2026-08-21', '2026-08-23'),

-- Glastonbury (5 ediciones)
('GLASS-22', 'Glastonbury', 2022, '2022-06-22', '2022-06-26'),
('GLASS-23', 'Glastonbury', 2023, '2023-06-21', '2023-06-25'),
('GLASS-24', 'Glastonbury', 2024, '2024-06-26', '2024-06-30'),
('GLASS-25', 'Glastonbury', 2025, '2025-06-25', '2025-06-29'),
('GLASS-26', 'Glastonbury', 2026, '2026-06-24', '2026-06-28'),

-- Parklife (5 ediciones)
('PARK-22', 'Parklife', 2022, '2022-06-11', '2022-06-12'),
('PARK-23', 'Parklife', 2023, '2023-06-10', '2023-06-11'),
('PARK-24', 'Parklife', 2024, '2024-06-08', '2024-06-09'),
('PARK-25', 'Parklife', 2025, '2025-06-14', '2025-06-15'),
('PARK-26', 'Parklife', 2026, '2026-06-13', '2026-06-14'),

-- Wireless Festival (5 ediciones)
('WIRE-22', 'Wireless Festival', 2022, '2022-07-01', '2022-07-03'),
('WIRE-23', 'Wireless Festival', 2023, '2023-07-07', '2023-07-09'),
('WIRE-24', 'Wireless Festival', 2024, '2024-07-12', '2024-07-14'),
('WIRE-25', 'Wireless Festival', 2025, '2025-07-11', '2025-07-13'),
('WIRE-26', 'Wireless Festival', 2026, '2026-07-10', '2026-07-12'),

-- Coachella (5 ediciones)
('COACH-22', 'Coachella', 2022, '2022-04-15', '2022-04-24'),
('COACH-23', 'Coachella', 2023, '2023-04-14', '2023-04-23'),
('COACH-24', 'Coachella', 2024, '2024-04-12', '2024-04-21'),
('COACH-25', 'Coachella', 2025, '2025-04-11', '2025-04-20'),
('COACH-26', 'Coachella', 2026, '2026-04-10', '2026-04-19'),

-- Governors Ball (5 ediciones)
('GOV-22', 'Governors Ball', 2022, '2022-06-10', '2022-06-12'),
('GOV-23', 'Governors Ball', 2023, '2023-06-09', '2023-06-11'),
('GOV-24', 'Governors Ball', 2024, '2024-06-07', '2024-06-09'),
('GOV-25', 'Governors Ball', 2025, '2025-06-06', '2025-06-08'),
('GOV-26', 'Governors Ball', 2026, '2026-06-05', '2026-06-07'),

-- Ultra Music Festival (5 ediciones)
('ULTRA-22', 'Ultra Music Festival', 2022, '2022-03-25', '2022-03-27'),
('ULTRA-23', 'Ultra Music Festival', 2023, '2023-03-24', '2023-03-26'),
('ULTRA-24', 'Ultra Music Festival', 2024, '2024-03-22', '2024-03-24'),
('ULTRA-25', 'Ultra Music Festival', 2025, '2025-03-28', '2025-03-30'),
('ULTRA-26', 'Ultra Music Festival', 2026, '2026-03-27', '2026-03-29'),

-- Outside Lands (5 ediciones)
('OUTSIDELANDS-22', 'Outside Lands', 2022, '2022-08-05', '2022-08-07'),
('OUTSIDELANDS-23', 'Outside Lands', 2023, '2023-08-11', '2023-08-13'),
('OUTSIDELANDS-24', 'Outside Lands', 2024, '2024-08-09', '2024-08-11'),
('OUTSIDELANDS-25', 'Outside Lands', 2025, '2025-08-08', '2025-08-10'),
('OUTSIDELANDS-26', 'Outside Lands', 2026, '2026-08-07', '2026-08-09'),

-- Lollapalooza Berlin (5 ediciones)
('LOLLA-BER-22', 'Lollapalooza Berlin', 2022, '2022-09-24', '2022-09-25'),
('LOLLA-BER-23', 'Lollapalooza Berlin', 2023, '2023-09-09', '2023-09-10'),
('LOLLA-BER-24', 'Lollapalooza Berlin', 2024, '2024-09-07', '2024-09-08'),
('LOLLA-BER-25', 'Lollapalooza Berlin', 2025, '2025-09-06', '2025-09-07'),
('LOLLA-BER-26', 'Lollapalooza Berlin', 2026, '2026-09-05', '2026-09-06'),

-- Time Warp (5 ediciones)
('WARP-22', 'Time Warp', 2022, '2022-10-28', '2022-10-29'),
('WARP-23', 'Time Warp', 2023, '2023-10-27', '2023-10-28'),
('WARP-24', 'Time Warp', 2024, '2024-10-25', '2024-10-26'),
('WARP-25', 'Time Warp', 2025, '2025-10-24', '2025-10-25'),
('WARP-26', 'Time Warp', 2026, '2026-10-23', '2026-10-24'),

-- Melt! Festival (5 ediciones)
('MELT-22', 'Melt! Festival', 2022, '2022-07-14', '2022-07-17'),
('MELT-23', 'Melt! Festival', 2023, '2023-07-13', '2023-07-16'),
('MELT-24', 'Melt! Festival', 2024, '2024-07-19', '2024-07-21'),
('MELT-25', 'Melt! Festival', 2025, '2025-07-18', '2025-07-20'),
('MELT-26', 'Melt! Festival', 2026, '2026-07-17', '2026-07-19'),

-- Fuji Rock (5 ediciones)
('FUJI-22', 'Fuji Rock', 2022, '2022-07-29', '2022-07-31'),
('FUJI-23', 'Fuji Rock', 2023, '2023-07-28', '2023-07-30'),
('FUJI-24', 'Fuji Rock', 2024, '2024-07-26', '2024-07-28'),
('FUJI-25', 'Fuji Rock', 2025, '2025-07-25', '2025-07-27'),
('FUJI-26', 'Fuji Rock', 2026, '2026-07-24', '2026-07-26'),

-- Summer Sonic (5 ediciones)
('SS-22', 'Summer Sonic', 2022, '2022-08-20', '2022-08-21'),
('SS-23', 'Summer Sonic', 2023, '2023-08-19', '2023-08-20'),
('SS-24', 'Summer Sonic', 2024, '2024-08-17', '2024-08-18'),
('SS-25', 'Summer Sonic', 2025, '2025-08-16', '2025-08-17'),
('SS-26', 'Summer Sonic', 2026, '2026-08-15', '2026-08-16'),

-- Rock in Rio (5 ediciones)
('RIO-22', 'Rock in Rio', 2022, '2022-09-02', '2022-09-11'),
('RIO-23', 'Rock in Rio', 2023, '2023-09-01', '2023-09-10'),
('RIO-24', 'Rock in Rio', 2024, '2024-09-13', '2024-09-22'),
('RIO-25', 'Rock in Rio', 2025, '2025-09-12', '2025-09-21'),
('RIO-26', 'Rock in Rio', 2026, '2026-09-11', '2026-09-20'),

-- Lollapalooza Argentina (5 ediciones)
('LOLLA-AR-22', 'Lollapalooza Argentina', 2022, '2022-03-18', '2022-03-20'),
('LOLLA-AR-23', 'Lollapalooza Argentina', 2023, '2023-03-17', '2023-03-19'),
('LOLLA-AR-24', 'Lollapalooza Argentina', 2024, '2024-03-29', '2024-03-31'),
('LOLLA-AR-25', 'Lollapalooza Argentina', 2025, '2025-03-21', '2025-03-23'),
('LOLLA-AR-26', 'Lollapalooza Argentina', 2026, '2026-03-20', '2026-03-22'),

-- Iceland Airwaves (5 ediciones)
('AIR-22', 'Iceland Airwaves', 2022, '2022-11-03', '2022-11-05'),
('AIR-23', 'Iceland Airwaves', 2023, '2023-11-02', '2023-11-04'),
('AIR-24', 'Iceland Airwaves', 2024, '2024-11-07', '2024-11-09'),
('AIR-25', 'Iceland Airwaves', 2025, '2025-11-06', '2025-11-08'),
('AIR-26', 'Iceland Airwaves', 2026, '2026-11-05', '2026-11-07');

--- ======================================================
--- 7. SARRERAK (Entradas individuales con propietario)
--- ======================================================

DELETE FROM Sarrerak;

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 80
),
prezioak AS (
    SELECT 'Mad Cool' AS FIzena, 210.00 AS general_p, 450.00 AS vip_p, 800.00 AS bs_p
    UNION ALL SELECT 'Primavera Sound', 275.00, 550.00, 900.00
    UNION ALL SELECT 'Jazzaldia', 120.00, 280.00, 500.00
    UNION ALL SELECT 'BBK Live', 185.00, 380.00, 650.00
    UNION ALL SELECT 'Reading & Leeds', 320.00, 650.00, 1200.00
    UNION ALL SELECT 'Glastonbury', 300.00, 700.00, 1500.00
    UNION ALL SELECT 'Parklife', 240.00, 520.00, 980.00
    UNION ALL SELECT 'Wireless Festival', 250.00, 550.00, 1000.00
    UNION ALL SELECT 'Coachella', 429.00, 999.00, 2500.00
    UNION ALL SELECT 'Governors Ball', 260.00, 590.00, 1150.00
    UNION ALL SELECT 'Ultra Music Festival', 399.00, 899.00, 1800.00
    UNION ALL SELECT 'Outside Lands', 275.00, 600.00, 1200.00
    UNION ALL SELECT 'Lollapalooza Berlin', 230.00, 540.00, 1000.00
    UNION ALL SELECT 'Time Warp', 95.00, 250.00, 600.00
    UNION ALL SELECT 'Melt! Festival', 210.00, 480.00, 950.00
    UNION ALL SELECT 'Fuji Rock', 290.00, 640.00, 1300.00
    UNION ALL SELECT 'Summer Sonic', 290.00, 640.00, 1300.00
    UNION ALL SELECT 'Rock in Rio', 250.00, 600.00, 1500.00
    UNION ALL SELECT 'Lollapalooza Argentina', 280.00, 650.00, 1200.00
    UNION ALL SELECT 'Iceland Airwaves', 150.00, 350.00, 700.00
)
INSERT INTO Sarrerak (NId, EIzena, Mota, Prezioa, Izena)
SELECT
    CONCAT('T-', e.EIzena, '-G-', LPAD(s.n, 3, '0')) AS NId,
    e.EIzena,
    'General' AS Mota,
    p.general_p AS Prezioa,
    NULL AS Izena
FROM Edizioa e
JOIN prezioak p ON p.FIzena = e.FIzena
JOIN seq s ON s.n <= 80

UNION ALL

SELECT
    CONCAT('T-', e.EIzena, '-VIP-', LPAD(s.n, 3, '0')) AS NId,
    e.EIzena,
    'VIP' AS Mota,
    p.vip_p AS Prezioa,
    NULL AS Izena
FROM Edizioa e
JOIN prezioak p ON p.FIzena = e.FIzena
JOIN seq s ON s.n <= 40

UNION ALL

SELECT
    CONCAT('T-', e.EIzena, '-BS-', LPAD(s.n, 3, '0')) AS NId,
    e.EIzena,
    'Backstage' AS Mota,
    p.bs_p AS Prezioa,
    NULL AS Izena
FROM Edizioa e
JOIN prezioak p ON p.FIzena = e.FIzena
JOIN seq s ON s.n <= 30;


--- ======================================================
--- 8. ABESLARIA (Artistas variados)
--- ======================================================
INSERT INTO Abeslaria (ArtId, CIzena, Izena, Estiloa) VALUES 
('ART-01', 'Espainia', 'Quevedo', 'Urbano'),
('ART-02', 'AEB', 'Billie Eilish', 'Alt-Pop'),
('ART-03', 'Erresuma Batua', 'Dua Lipa', 'Pop'),
('ART-04', 'Kolonbia', 'Karol G', 'Reggaeton'),
('ART-05', 'Erresuma Batua', 'Arctic Monkeys', 'Indie Rock'),
('ART-06', 'Alemania', 'Paul Kalkbrenner', 'Techno'),
('ART-07', 'Espainia', 'Rosalia', 'Experimental'),
('ART-08', 'Erresuma Batua', 'Coldplay', 'Pop/Rock'),
('ART-09', 'AEB', 'Lana Del Rey', 'Indie Pop'),
('ART-10', 'Espainia', 'Arde Bogota', 'Rock'),
('ART-11', 'Islandia', 'Björk', 'Art Pop'),
('ART-12', 'Japonia', 'Ryuichi Sakamoto', 'Ambient'),
('ART-13', 'Espainia', 'Belako', 'Post-Punk'),
('ART-14', 'AEB', 'Kendrick Lamar', 'Hip Hop'),
('ART-15', 'Erresuma Batua', 'Fred again..', 'Electronic'),
('ART-16', 'Espainia', 'C. Tangana', 'Urbano/Flamenco'),
('ART-17', 'Mexiko', 'Natalia Lafourcade', 'Folk/Pop'),
('ART-18', 'Frantzia', 'Phoenix', 'Indie Rock'),
('ART-19', 'Brasil', 'Anitta', 'Funk/Pop'),
('ART-20', 'Australia', 'Tame Impala', 'Psychedelic Pop'),
('ART-21', 'AEB', 'Metallica', 'Heavy Metal'),
('ART-22', 'Italia', 'Måneskin', 'Rock'),
('ART-23', 'Kanada', 'The Weeknd', 'R&B/Pop'),
('ART-24', 'Japonia', 'Babymetal', 'Kawaii Metal'),
('ART-25', 'Islandia', 'Sigur Rós', 'Post-Rock'),
('ART-26', 'Argentina', 'Bizarrap', 'EDM/Trap'),
('ART-27', 'Alemania', 'Rammstein', 'Industrial Metal'),
('ART-28', 'AEB', 'Olivia Rodrigo', 'Pop/Rock'),
('ART-29', 'Erresuma Batua', 'Gorillaz', 'Art Pop'),
('ART-30', 'Espainia', 'Izaro', 'Pop/Folk'),
('ART-31', 'Kolonbia', 'J Balvin', 'Reggaeton'),
('ART-32', 'AEB', 'SZA', 'R&B'),
('ART-33', 'Hego Korea', 'Blackpink', 'K-Pop'),
('ART-34', 'AEB', 'Travis Scott', 'Hip Hop/Trap'),
('ART-35', 'AEB', 'Eminem', 'Hip Hop'),
('ART-36', 'Espainia', 'Bad Gyal', 'Reggaeton/Trap'),
('ART-37', 'Frantzia', 'David Guetta', 'EDM'),
('ART-38', 'Erresuma Batua', 'Disclosure', 'Electronic/House'),
('ART-39', 'AEB', 'Bruno Mars', 'Pop/Funk'),
('ART-40', 'Japonia', 'Fujii Kaze', 'J-Pop'),
('ART-41', 'Brasil', 'Sepultura', 'Metal'),
('ART-43', 'AEB', 'Beyoncé', 'R&B/Pop'),
('ART-45', 'Kanada', 'Drake', 'Hip Hop/R&B');

--- ======================================================
--- 9. ABESTIA (Catálogo Completo: 3-4 canciones por Artista)
--- ======================================================

-- ART-06: Paul Kalkbrenner (Alemania - Techno)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S132', 'ART-06', 'Sky and Sand', '00:03:59'),
('S133', 'ART-06', 'Feed Your Head', '00:05:46'),
('S134', 'ART-06', 'No Goodbye', '00:02:46');

-- ART-09: Lana Del Rey (AEB - Indie Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S135', 'ART-09', 'Video Games', '00:04:42'),
('S136', 'ART-09', 'Born to Die', '00:04:46'),
('S137', 'ART-09', 'West Coast', '00:04:17'),
('S138', 'ART-09', 'Say Yes to Heaven', '00:03:29');

-- ART-12: Ryuichi Sakamoto (Japonia - Ambient)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S139', 'ART-12', 'Merry Christmas Mr. Lawrence', '00:04:34'),
('S140', 'ART-12', 'Energy Flow', '00:04:33'),
('S141', 'ART-12', 'The Last Emperor', '00:05:51');

-- ART-15: Fred again.. (Erresuma Batua - Electronic)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S142', 'ART-15', 'Delilah (pull me out of this)', '00:04:10'),
('S143', 'ART-15', 'Marea (We’ve Lost Dancing)', '00:04:45'),
('S144', 'ART-15', 'Angie (I''ve been lost)', '00:04:30');

-- ART-17: Natalia Lafourcade (Mexiko - Folk)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S145', 'ART-17', 'Hasta la Raíz', '00:03:41'),
('S146', 'ART-17', 'Nunca es Suficiente', '00:03:57'),
('S147', 'ART-17', 'Tú sí sabes quererme', '00:04:05');

-- ART-18: Phoenix (Frantzia - Indie Rock)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S148', 'ART-18', 'Lisztomania', '00:04:01'),
('S149', 'ART-18', '1901', '00:03:13'),
('S150', 'ART-18', 'If I Ever Feel Better', '00:04:26');

-- ART-19: Anitta (Brasil - Pop/Funk)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S151', 'ART-19', 'Envolver', '00:03:13'),
('S152', 'ART-19', 'Bellakeo', '00:03:28'),
('S153', 'ART-19', 'Downtown', '00:03:13');

-- ART-24: Babymetal (Japonia - Metal)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S154', 'ART-24', 'Gimme Chocolate!!', '00:04:03'),
('S155', 'ART-24', 'Megitsune', '00:04:09'),
('S156', 'ART-24', 'KARATE', '00:04:23');

-- ART-25: Sigur Rós (Islandia - Post-Rock)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S157', 'ART-25', 'Hoppípolla', '00:04:28'),
('S158', 'ART-25', 'Svefn-g-englar', '00:09:14'),
('S159', 'ART-25', 'Starálfur', '00:06:46');

-- ART-28: Olivia Rodrigo (AEB - Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S160', 'ART-28', 'vampire', '00:03:39'),
('S161', 'ART-28', 'drivers license', '00:04:02'),
('S162', 'ART-28', 'good 4 u', '00:02:58'),
('S163', 'ART-28', 'get him back!', '00:03:31');

-- ART-31: J Balvin (Kolonbia - Reggaeton)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S164', 'ART-31', 'Mi Gente', '00:03:05'),
('S165', 'ART-31', 'Ginza', '00:02:51'),
('S166', 'ART-31', 'Ay Vamos', '00:03:46');

-- ART-32: SZA (AEB - R&B)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S167', 'ART-32', 'Kill Bill', '00:02:33'),
('S168', 'ART-32', 'Snooze', '00:03:21'),
('S169', 'ART-32', 'Good Days', '00:04:39');

-- ART-01: Quevedo (Espainia - Urbano)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S184', 'ART-01', 'Ella Baila Sola', '00:02:50'),
('S185', 'ART-01', 'Muévelo', '00:03:15'),
('S186', 'ART-01', 'Bzrp Session 52', '00:04:45');

-- ART-02: Billie Eilish (AEB - Alt-Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S187', 'ART-02', 'Bad Guy', '00:03:14'),
('S188', 'ART-02', 'Happier Than Ever', '00:04:34'),
('S189', 'ART-02', 'When We All Fall Asleep', '00:03:17'),
('S190', 'ART-02', 'Lost Cause', '00:03:23');

-- ART-03: Dua Lipa (Erresuma Batua - Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S191', 'ART-03', 'Levitating', '00:03:23'),
('S192', 'ART-03', 'Don''t Start Now', '00:03:33'),
('S193', 'ART-03', 'Physical', '00:03:33'),
('S194', 'ART-03', 'Break My Heart', '00:03:40');

-- ART-04: Karol G (Kolonbia - Reggaeton)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S195', 'ART-04', 'Tusa', '00:03:37'),
('S196', 'ART-04', 'Ella Baila Sola', '00:02:50'),
('S197', 'ART-04', 'TQG', '00:03:26');

-- ART-05: Arctic Monkeys (Erresuma Batua - Indie Rock)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S198', 'ART-05', 'Do I Wanna Know?', '00:02:32'),
('S199', 'ART-05', 'Fluorescent Adolescent', '00:03:05'),
('S200', 'ART-05', 'I Bet You Look Good on the Dancefloor', '00:03:00');

-- ART-07: Rosalia (Espainia - Experimental)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S201', 'ART-07', 'Malamente', '00:03:08'),
('S202', 'ART-07', 'Aute Cuture', '00:03:30'),
('S203', 'ART-07', 'Motomami', '00:03:15');

-- ART-08: Coldplay (Erresuma Batua - Pop/Rock)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S204', 'ART-08', 'Yellow', '00:04:02'),
('S205', 'ART-08', 'Fix You', '00:04:56'),
('S206', 'ART-08', 'Adventure of a Lifetime', '00:04:06');

-- ART-10: Arde Bogota (Espainia - Rock)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S207', 'ART-10', 'La Quiero A Morir', '00:04:32'),
('S208', 'ART-10', 'El Último Vals', '00:03:45'),
('S209', 'ART-10', 'Cuando Volveras', '00:04:18');

-- ART-11: Björk (Islandia - Art Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S210', 'ART-11', 'Army of Me', '00:04:04'),
('S211', 'ART-11', 'All Is Full of Love', '00:04:28'),
('S212', 'ART-11', 'Hyperballad', '00:04:40');

-- ART-16: C. Tangana (Espainia - Urbano/Flamenco)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S213', 'ART-16', 'Tití', '00:03:36'),
('S214', 'ART-16', 'Enhorabuena', '00:04:02'),
('S215', 'ART-16', 'Un x100to', '00:03:45');

-- ART-20: Tame Impala (Australia - Psychedelic Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S216', 'ART-20', 'The Less I Know the Better', '00:03:36'),
('S217', 'ART-20', 'Elephant', '00:04:23'),
('S218', 'ART-20', 'It Is Not Meant to Be', '00:04:05');

-- ART-21: Metallica (AEB - Heavy Metal)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S219', 'ART-21', 'Master of Puppets', '00:08:35'),
('S220', 'ART-21', 'One', '00:07:36'),
('S221', 'ART-21', 'Enter Sandman', '00:05:32'),
('S222', 'ART-21', 'Sad But True', '00:05:25');

-- ART-22: Måneskin (Italia - Rock)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S223', 'ART-22', 'Zitti E Buoni', '00:03:17'),
('S224', 'ART-22', 'I Wanna Be Your Slave', '00:03:38'),
('S225', 'ART-22', 'Beggin', '00:03:33');

-- ART-23: The Weeknd (Kanada - R&B/Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S226', 'ART-23', 'Blinding Lights', '00:03:20'),
('S227', 'ART-23', 'Can''t Feel My Face', '00:03:23'),
('S228', 'ART-23', 'Starboy', '00:03:50'),
('S229', 'ART-23', 'Save Your Tears', '00:03:35');

-- ART-27: Rammstein (Alemania - Industrial Metal)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S233', 'ART-27', 'Du Hast', '00:03:36'),
('S234', 'ART-27', 'Engel', '00:04:08'),
('S235', 'ART-27', 'Links 2 3 4', '00:03:36'),
('S236', 'ART-27', 'Feuer Frei', '00:03:23');

-- ART-29: Gorillaz (Erresuma Batua - Art Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S237', 'ART-29', 'Feel Good Inc', '00:03:23'),
('S238', 'ART-29', 'Clint Eastwood', '00:03:05'),
('S239', 'ART-29', 'Rhinestone Eyes', '00:03:33');

-- ART-30: Izaro (Espainia - Pop/Folk)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S240', 'ART-30', 'Cerodenero', '00:04:12'),
('S241', 'ART-30', 'Elkar', '00:03:58'),
('S242', 'ART-30', 'Bizia', '00:04:05');

-- ART-33: Blackpink (Hego Korea - K-Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S243', 'ART-33', 'Dynamite', '00:03:19'),
('S244', 'ART-33', 'Butter', '00:02:44'),
('S245', 'ART-33', 'DDU-DU DDU-DU', '00:03:35'),
('S246', 'ART-33', 'Playing with Fire', '00:03:27');

-- ART-34: Travis Scott (AEB - Hip Hop/Trap)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S247', 'ART-34', 'SICKO MODE', '00:05:13'),
('S248', 'ART-34', 'HIGHEST IN THE ROOM', '00:03:06'),
('S249', 'ART-34', 'Goosebumpz', '00:04:19');

-- ART-35: Eminem (AEB - Hip Hop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S250', 'ART-35', 'Lose Yourself', '00:05:26'),
('S251', 'ART-35', 'The Real Slim Shady', '00:04:44'),
('S252', 'ART-35', 'Stan', '00:06:44'),
('S253', 'ART-35', 'Love The Way You Lie', '00:04:05');

-- ART-36: Bad Gyal (Espainia - Reggaeton/Trap)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S254', 'ART-36', 'Boooty', '00:03:30'),
('S255', 'ART-36', 'Dick', '00:02:56'),
('S256', 'ART-36', 'Jagger', '00:03:20');

-- ART-37: David Guetta (Frantzia - EDM)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S170', 'ART-37', 'Titanium', '00:04:05'),
('S171', 'ART-37', 'Hey Mama', '00:03:12'),
('S172', 'ART-37', 'I''m Good (Blue)', '00:02:55'),
('S173', 'ART-37', 'When Love Takes Over', '00:03:11');

-- ART-38: Disclosure (Erresuma Batua - Electronic/House)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S257', 'ART-38', 'White Noise', '00:03:47'),
('S258', 'ART-38', 'Latch', '00:04:09'),
('S259', 'ART-38', 'You & Me', '00:03:26');

-- ART-39: Bruno Mars (AEB - Pop/Funk)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S174', 'ART-39', 'Uptown Funk', '00:04:29'),
('S175', 'ART-39', 'Just the Way You Are', '00:03:40'),
('S176', 'ART-39', 'Locked Out of Heaven', '00:03:53'),
('S177', 'ART-39', '24K Magic', '00:03:46');

-- ART-40: Fujii Kaze (Japonia - J-Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S178', 'ART-40', 'Shinunoga E-Wa', '00:03:05'),
('S179', 'ART-40', 'Matsuri', '00:03:45'),
('S180', 'ART-40', 'Kirari', '00:03:51');

-- ART-41: Sepultura (Brasil - Metal)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S181', 'ART-41', 'Roots Bloody Roots', '00:03:32'),
('S182', 'ART-41', 'Ratamahatta', '00:04:30'),
('S183', 'ART-41', 'Refuse/Resist', '00:03:19');

-- ART-13: Belako (Espainia - Post-Punk)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S271', 'ART-13', 'Luz Negra', '00:03:42'),
('S272', 'ART-13', 'Data de Caducidad', '00:04:15'),
('S273', 'ART-13', 'El Viaje', '00:03:28');

-- ART-14: Kendrick Lamar (AEB - Hip Hop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S274', 'ART-14', 'HUMBLE.', '00:03:15'),
('S275', 'ART-14', 'DNA.', '00:03:05'),
('S276', 'ART-14', 'Alright', '00:03:39'),
('S277', 'ART-14', 'King Kunta', '00:04:16');

-- ART-26: Bizarrap (Argentina - EDM/Trap)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S278', 'ART-26', 'Bzrp Session 52', '00:04:45'),
('S279', 'ART-26', 'Bzrp Session 53', '00:03:30'),
('S280', 'ART-26', 'Bzrp Session 91', '00:03:20');

-- ART-43: Beyoncé (AEB - R&B/Pop)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S260', 'ART-43', 'Halo', '00:04:09'),
('S261', 'ART-43', 'Single Ladies', '00:03:13'),
('S262', 'ART-43', 'Crazy in Love', '00:03:55'),
('S263', 'ART-43', 'Formation', '00:04:31');

-- ART-45: Drake (Kanada - Hip Hop/R&B)
INSERT INTO Abestia (SId, ArtId, Izenburua, Iraupena) VALUES 
('S267', 'ART-45', 'One Dance', '00:04:03'),
('S268', 'ART-45', 'God''s Plan', '00:03:18'),
('S269', 'ART-45', 'Hotline Bling', '00:04:09'),
('S270', 'ART-45', 'In My Feelings', '00:04:36');
--- ======================================================
--- 10. PLAYLIST (Setlists específicos de cada artista)
--- ======================================================

INSERT INTO Playlist (PId, Izena) VALUES 
('PL-QUEVEDO-SET', 'Quevedo - DQE Tour Setlist'),
('PL-BILLIE-SET', 'Billie Eilish - World Tour 2024'),
('PL-DUA-SET', 'Dua Lipa - Radical Optimism Tour'),
('PL-ROSALIA-SET', 'Rosalia - Motomami Final Set'),
('PL-METALLICA-SET', 'Metallica - M72 Live'),
('PL-COLDPLAY-SET', 'Coldplay - Music of the Spheres'),
('PL-ARCTIC-SET', 'Arctic Monkeys - The Car Tour'),
('PL-WEEKND-SET', 'The Weeknd - After Hours Set'),
('PL-RAMMSTEIN-SET', 'Rammstein - Europe Stadium Tour'),
('PL-BEYONCE-SET', 'Beyoncé - Renaissance Set'),
('PL-TANGANA-SET', 'C. Tangana - Sin Cantar ni Afinar'),
('PL-KAROLG-SET', 'Karol G - Bichota Season Live'),
('PL-BADGYAL-SET', 'Bad Gyal - La Joia Setlist'),
('PL-MANESKIN-SET', 'Måneskin - Rush! World Tour'),
('PL-BJORK-SET', 'Björk - Cornucopia Set'),
('PL-IZARO-SET', 'Izaro - cerodenero zuzenean'),
('PL-EXPERIMENTAL', 'Experimental & Ambient Showcase'),
('PL-GEN-01', 'Bruno Mars Greatest Hits'),
('PL-GEN-02', 'Urban & Reggaeton Mix'),
('PL-GEN-03', 'EDM & Electronic Vibes'),
('PL-GEN-04', 'Techno & House Underground'),
('PL-GEN-05', 'Trap & Hip Hop Session'),
('PL-GEN-06', 'Indie Pop Essentials'),
('PL-SET-QUEVEDO', 'Quevedo - Trap Latino'),
('PL-SET-BILLIE', 'Billie Eilish - Whisper Tour'),
('PL-SET-KAROLG', 'Karol G - Reggaeton Royalty'),
('PL-HIS-02', 'Historic Rock Legends'),
('PL-HIS-03', 'Classic Rock Icons'),
('PL-MOD-06', 'Modern Electronic Masters');
--- ======================================================
--- 11. SAIOA (Ampliación Masiva: Carteles completos)
--- ======================================================

-- --- BILBAO BBK LIVE 2024 (Consolidando los 3 escenarios del BEC) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
-- Día 1
('ART-05', 'BIL-BEC-01', 'PL-ARCTIC-SET', '100 min', '2024-07-11'), 
('ART-13', 'BIL-BEC-02', 'PL-IZARO-SET', '60 min', '2024-07-11'),
('ART-17', 'BIL-BEC-03', 'PL-EXPERIMENTAL', '70 min', '2024-07-11'), -- Natalia Lafourcade
-- Día 2
('ART-01', 'BIL-BEC-01', 'PL-QUEVEDO-SET', '90 min', '2024-07-12'), 
('ART-10', 'BIL-BEC-01', 'PL-COLDPLAY-SET', '80 min', '2024-07-12'), 
('ART-36', 'BIL-BEC-02', 'PL-BADGYAL-SET', '75 min', '2024-07-12'),
('ART-26', 'BIL-BEC-03', 'PL-GEN-05', '120 min', '2024-07-12'), -- Bizarrap
-- Día 3
('ART-16', 'BIL-BEC-01', 'PL-TANGANA-SET', '105 min', '2024-07-13'), 
('ART-15', 'BIL-BEC-03', 'PL-GEN-04', '120 min', '2024-07-13'),
('ART-30', 'BIL-BEC-02', 'PL-IZARO-SET', '80 min', '2024-07-13');

-- --- GLASTONBURY 2024 (Múltiples escenarios simultáneos) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-08', 'LON-WEM-01', 'PL-COLDPLAY-SET', '135 min', '2024-06-26'),
('ART-11', 'LON-O2A-01', 'PL-BJORK-SET', '95 min', '2024-06-26'),
('ART-34', 'LON-WEM-01', 'PL-HIS-02', '120 min', '2024-06-27'),
('ART-14', 'LON-WEM-02', 'PL-GEN-02', '100 min', '2024-06-27'),
('ART-03', 'LON-WEM-01', 'PL-DUA-SET', '110 min', '2024-06-28'),
('ART-29', 'LON-WEM-02', 'PL-SET-BILLIE', '90 min', '2024-06-28'),
('ART-38', 'LON-WEM-01', 'PL-MOD-06', '115 min', '2024-06-29'),
('ART-20', 'LON-WEM-02', 'PL-HIS-03', '110 min', '2024-06-29'),
('ART-25', 'LON-O2A-02', 'PL-EXPERIMENTAL', '100 min', '2024-06-30');

-- --- ROCK IN RIO 2024 (Río de Janeiro - Escenario Global) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-21', 'GLO-MAIN-A', 'PL-METALLICA-SET', '150 min', '2024-09-13'),
('ART-41', 'GLO-MAIN-A', 'PL-METALLICA-SET', '80 min', '2024-09-13'), -- Sepultura teloneando
('ART-27', 'GLO-MAIN-A', 'PL-RAMMSTEIN-SET', '145 min', '2024-09-14'),
('ART-22', 'GLO-MAIN-A', 'PL-MANESKIN-SET', '95 min', '2024-09-14'),
('ART-23', 'GLO-MAIN-A', 'PL-WEEKND-SET', '120 min', '2024-09-15'),
('ART-31', 'GLO-MAIN-A', 'PL-GEN-05', '100 min', '2024-09-15'),
('ART-19', 'GLO-MAIN-A', 'PL-SET-KAROLG', '90 min', '2024-09-20'),
('ART-04', 'GLO-MAIN-A', 'PL-KAROLG-SET', '110 min', '2024-09-21'),
('ART-43', 'GLO-MAIN-A', 'PL-BEYONCE-SET', '130 min', '2024-09-22'),
('ART-45', 'GLO-MAIN-A', 'PL-GEN-02', '110 min', '2024-09-22'); -- Drake cierre

-- --- MAD COOL 2024 (Madrid - Escenarios Wizink) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-28', 'MAD-WIZ-01', 'PL-SET-BILLIE', '90 min', '2024-07-10'), -- Olivia Rodrigo
('ART-02', 'MAD-WIZ-01', 'PL-BILLIE-SET', '105 min', '2024-07-11'),
('ART-05', 'MAD-WIZ-02', 'PL-ARCTIC-SET', '100 min', '2024-07-11'),
('ART-32', 'MAD-WIZ-01', 'PL-GEN-02', '85 min', '2024-07-12'),
('ART-09', 'MAD-WIZ-02', 'PL-GEN-06', '90 min', '2024-07-12'),
('ART-39', 'MAD-WIZ-01', 'PL-GEN-01', '125 min', '2024-07-13'),
('ART-35', 'MAD-WIZ-02', 'PL-SET-QUEVEDO', '100 min', '2024-07-13'); -- Eminem

-- --- SONAR BARCELONA 2024 (Electrónica y Vanguardia) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-37', 'BIL-BEC-01', 'PL-GEN-04', '120 min', '2024-06-13'), -- David Guetta
('ART-06', 'BIL-BEC-02', 'PL-GEN-04', '180 min', '2024-06-14'), -- Paul Kalkbrenner
('ART-12', 'BIL-BEC-03', 'PL-EXPERIMENTAL', '90 min', '2024-06-14'), -- Ryuichi Sakamoto
('ART-15', 'BIL-BEC-01', 'PL-GEN-04', '110 min', '2024-06-15'); -- Fred again..

-- --- PRIMAVERA SOUND 2024 (Barcelona) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-07', 'NY-MSG-01', 'PL-ROSALIA-SET', '95 min', '2024-05-29'), -- Rosalía
('ART-18', 'NY-MSG-01', 'PL-GEN-06', '85 min', '2024-05-30'), -- Phoenix
('ART-19', 'NY-MSG-02', 'PL-SET-KAROLG', '80 min', '2024-05-30'), -- Anitta
('ART-24', 'NY-MSG-01', 'PL-GEN-03', '70 min', '2024-06-01'), -- Babymetal
('ART-33', 'NY-MSG-02', 'PL-GEN-02', '90 min', '2024-06-02'); -- Blackpink

-- --- JAZZALDIA 2024 (Donostia) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-11', 'SS-KUR-01', 'PL-BJORK-SET', '100 min', '2024-07-23'), -- Björk
('ART-39', 'SS-KUR-02', 'PL-GEN-01', '95 min', '2024-07-24'), -- Bruno Mars
('ART-40', 'SS-KUR-01', 'PL-GEN-06', '75 min', '2024-07-25'), -- Fujii Kaze
('ART-27', 'SS-KUR-02', 'PL-RAMMSTEIN-SET', '120 min', '2024-07-26'), -- Rammstein
('ART-38', 'SS-KUR-01', 'PL-MOD-06', '105 min', '2024-07-27'); -- Disclosure

-- --- COACHELLA 2024 (USA) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-02', 'LA-SOF-01', 'PL-BILLIE-SET', '100 min', '2024-04-12'), -- Billie Eilish
('ART-21', 'LA-SOF-02', 'PL-METALLICA-SET', '145 min', '2024-04-13'), -- Metallica
('ART-43', 'LA-SOF-01', 'PL-BEYONCE-SET', '140 min', '2024-04-14'); -- Beyoncé

-- --- READING & LEEDS 2024 (UK) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-05', 'LON-WEM-01', 'PL-ARCTIC-SET', '105 min', '2024-08-21'), -- Arctic Monkeys
('ART-22', 'LON-WEM-02', 'PL-MANESKIN-SET', '100 min', '2024-08-23'), -- Måneskin
('ART-45', 'LON-WEM-01', 'PL-GEN-02', '115 min', '2024-08-24'); -- Drake

-- --- OUTSIDE LANDS 2024 (San Francisco) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-09', 'LA-SOF-03', 'PL-GEN-06', '95 min', '2024-08-09'), -- Lana Del Rey
('ART-20', 'LA-SOF-01', 'PL-HIS-03', '110 min', '2024-08-10'), -- Tame Impala
('ART-14', 'LA-SOF-02', 'PL-GEN-02', '105 min', '2024-08-11'); -- Kendrick Lamar

-- --- TIME WARP 2024 (Alemania) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-06', 'BER-BGH-01', 'PL-GEN-04', '180 min', '2024-10-25'), -- Paul Kalkbrenner
('ART-37', 'BER-BGH-02', 'PL-GEN-04', '120 min', '2024-10-25'), -- David Guetta
('ART-15', 'BER-BGH-01', 'PL-GEN-04', '140 min', '2024-10-26'); -- Fred again..

-- --- FUJI ROCK 2024 (Japón) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-12', 'TYO-BUD-01', 'PL-EXPERIMENTAL', '105 min', '2024-07-26'), -- Ryuichi Sakamoto
('ART-40', 'TYO-BUD-02', 'PL-GEN-06', '90 min', '2024-07-27'), -- Fujii Kaze
('ART-33', 'TYO-BUD-01', 'PL-GEN-02', '100 min', '2024-07-28'); -- Blackpink

-- --- MELT! FESTIVAL 2024 (Alemania) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-38', 'BER-BGH-03', 'PL-MOD-06', '110 min', '2024-07-19'), -- Disclosure
('ART-06', 'BER-BGH-01', 'PL-GEN-04', '130 min', '2024-07-20'), -- Paul Kalkbrenner
('ART-12', 'BER-BGH-02', 'PL-EXPERIMENTAL', '95 min', '2024-07-21'); -- Ryuichi Sakamoto

-- --- LOLLAPALOOZA ARGENTINA 2024 (Buenos Aires) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-26', 'BOG-MOV-01', 'PL-GEN-05', '120 min', '2024-03-29'), -- Bizarrap
('ART-04', 'BOG-MOV-02', 'PL-KAROLG-SET', '110 min', '2024-03-30'), -- Karol G
('ART-45', 'BOG-MOV-01', 'PL-GEN-02', '115 min', '2024-03-31'); -- Drake

-- --- ICELAND AIRWAVES 2024 (Reykjavik) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-11', 'SS-KUR-01', 'PL-BJORK-SET', '105 min', '2024-11-07'), -- Björk
('ART-25', 'SS-KUR-02', 'PL-EXPERIMENTAL', '120 min', '2024-11-08'), -- Sigur Rós
('ART-29', 'SS-KUR-01', 'PL-SET-BILLIE', '95 min', '2024-11-09'); -- Gorillaz

-- --- PARKLIFE 2024 (UK) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-14', 'LON-O2A-01', 'PL-GEN-05', '95 min', '2024-06-08'), -- Kendrick Lamar
('ART-31', 'LON-O2A-02', 'PL-GEN-02', '90 min', '2024-06-09'), -- J Balvin
('ART-32', 'LON-O2A-01', 'PL-GEN-02', '85 min', '2024-06-09'); -- SZA

-- --- GOVERNORS BALL 2024 (New York) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-02', 'NY-MSG-01', 'PL-BILLIE-SET', '95 min', '2024-06-07'), -- Billie Eilish
('ART-23', 'NY-MSG-02', 'PL-WEEKND-SET', '110 min', '2024-06-08'), -- The Weeknd
('ART-39', 'NY-MSG-01', 'PL-GEN-01', '105 min', '2024-06-09'); -- Bruno Mars

-- --- LOLLAPALOOZA BERLIN 2024 (Berlin) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-27', 'BER-BGH-01', 'PL-RAMMSTEIN-SET', '120 min', '2024-09-07'), -- Rammstein
('ART-22', 'BER-BGH-02', 'PL-MANESKIN-SET', '95 min', '2024-09-07'), -- Måneskin
('ART-38', 'BER-BGH-03', 'PL-MOD-06', '100 min', '2024-09-08'); -- Disclosure

-- --- SUMMER SONIC 2024 (Tokyo) ---
INSERT INTO Saioa (ArtId, EId, PId, Iraupena, Eguna) VALUES 
('ART-03', 'TYO-BUD-01', 'PL-DUA-SET', '100 min', '2024-08-17'), -- Dua Lipa
('ART-33', 'TYO-BUD-02', 'PL-GEN-02', '95 min', '2024-08-18'), -- Blackpink
('ART-40', 'TYO-BUD-01', 'PL-GEN-06', '85 min', '2024-08-18'); -- Fujii Kaze