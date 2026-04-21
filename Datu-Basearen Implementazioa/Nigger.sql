-- Base de Datos: Festibalak
-- Versión corregida para importación directa

SET FOREIGN_KEY_CHECKS = 0; -- Desactivamos temporalmente para evitar errores de orden

-- 1. Herrialde (Tabla base)
DROP TABLE IF EXISTS `Herrialde`;
CREATE TABLE `Herrialde` (
  `CIzena` varchar(20) NOT NULL,
  `Kontinentea` varchar(20) DEFAULT NULL,
  `Klima` varchar(20) DEFAULT NULL,
  `Populazioa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Hiria (Depende de Herrialde)
DROP TABLE IF EXISTS `Hiria`;
CREATE TABLE `Hiria` (
  `HIzena` varchar(20) NOT NULL,
  `CIzena` varchar(20) DEFAULT NULL,
  `Komarka` varchar(20) DEFAULT NULL,
  `PostaKodea` int DEFAULT NULL,
  PRIMARY KEY (`HIzena`),
  CONSTRAINT `Hiria_ibfk_1` FOREIGN KEY (`CIzena`) REFERENCES `Herrialde` (`CIzena`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Aretoa (Depende de Hiria)
DROP TABLE IF EXISTS `Aretoa`;
CREATE TABLE `Aretoa` (
  `LIzena` varchar(20) NOT NULL,
  `HIzena` varchar(20) DEFAULT NULL,
  `Helbidea` varchar(20) DEFAULT NULL,
  `Edukiera` int DEFAULT NULL,
  `Estalia` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`LIzena`),
  CONSTRAINT `Aretoa_ibfk_1` FOREIGN KEY (`HIzena`) REFERENCES `Hiria` (`HIzena`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Antzezlekua (Depende de Aretoa)
DROP TABLE IF EXISTS `Antzezlekua`;
CREATE TABLE `Antzezlekua` (
  `EId` int NOT NULL,
  `LIzena` varchar(20) DEFAULT NULL,
  `Ekipmendua` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EId`),
  CONSTRAINT `Antzezlekua_ibfk_1` FOREIGN KEY (`LIzena`) REFERENCES `Aretoa` (`LIzena`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. Abeslaria (Depende de Herrialde)
DROP TABLE IF EXISTS `Abeslaria`;
CREATE TABLE `Abeslaria` (
  `ArtId` int NOT NULL,
  `CIzena` varchar(20) DEFAULT NULL,
  `Izena` varchar(20) DEFAULT NULL,
  `Estiloa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ArtId`),
  CONSTRAINT `Abeslaria_ibfk_1` FOREIGN KEY (`CIzena`) REFERENCES `Herrialde` (`CIzena`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 6. Abestia (Depende de Abeslaria)
DROP TABLE IF EXISTS `Abestia`;
CREATE TABLE `Abestia` (
  `SId` int NOT NULL,
  `Izenburua` varchar(20) DEFAULT NULL,
  `Iraupena` int DEFAULT NULL,
  `ArtId` int DEFAULT NULL,
  PRIMARY KEY (`SId`),
  CONSTRAINT `Abestia_ibfk_1` FOREIGN KEY (`ArtId`) REFERENCES `Abeslaria` (`ArtId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 7. Playlist (Independiente)
DROP TABLE IF EXISTS `Playlist`;
CREATE TABLE `Playlist` (
  `PId` int NOT NULL,
  `Izena` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 8. Playlist_Abestia (N:M entre Playlist y Abestia)
DROP TABLE IF EXISTS `Playlist_Abestia`;
CREATE TABLE `Playlist_Abestia` (
  `PId` int NOT NULL,
  `SId` int NOT NULL,
  PRIMARY KEY (`PId`,`SId`),
  CONSTRAINT `Playlist_Abestia_ibfk_1` FOREIGN KEY (`PId`) REFERENCES `Playlist` (`PId`) ON DELETE CASCADE,
  CONSTRAINT `Playlist_Abestia_ibfk_2` FOREIGN KEY (`SId`) REFERENCES `Abestia` (`SId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 9. Edizioa (En tu dump dependía de Hiria)
DROP TABLE IF EXISTS `Edizioa`;
CREATE TABLE `Edizioa` (
  `EIzena` varchar(20) NOT NULL,
  `HIzena` varchar(20) DEFAULT NULL,
  `Webgunea` varchar(20) DEFAULT NULL,
  `Estiloa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EIzena`),
  CONSTRAINT `Edizioa_ibfk_1` FOREIGN KEY (`HIzena`) REFERENCES `Hiria` (`HIzena`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 10. Saioa (Tabla triple relación)
DROP TABLE IF EXISTS `Saioa`;
CREATE TABLE `Saioa` (
  `ArtId` int NOT NULL,
  `EId` int NOT NULL,
  `PId` int NOT NULL,
  `Iraupena` time DEFAULT NULL,
  `Eguna` date DEFAULT NULL,
  PRIMARY KEY (`ArtId`,`EId`,`PId`),
  CONSTRAINT `Saioa_ibfk_1` FOREIGN KEY (`ArtId`) REFERENCES `Abeslaria` (`ArtId`),
  CONSTRAINT `Saioa_ibfk_2` FOREIGN KEY (`EId`) REFERENCES `Antzezlekua` (`EId`),
  CONSTRAINT `Saioa_ibfk_3` FOREIGN KEY (`PId`) REFERENCES `Playlist` (`PId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 11. Sarrerak (Depende de Edizioa)
DROP TABLE IF EXISTS `Sarrerak`;
CREATE TABLE `Sarrerak` (
  `NId` int NOT NULL,
  `EIzena` varchar(20) DEFAULT NULL,
  `Mota` varchar(20) DEFAULT NULL,
  `Prezioa` int DEFAULT NULL,
  `Izena` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NId`),
  CONSTRAINT `Sarrerak_ibfk_1` FOREIGN KEY (`EIzena`) REFERENCES `Edizioa` (`EIzena`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1; -- Reactivamos la seguridad
