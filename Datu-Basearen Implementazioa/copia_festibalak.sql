-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: Festibalak
-- ------------------------------------------------------
-- Server version	8.4.8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Abeslaria`
--

DROP TABLE IF EXISTS `Abeslaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Abeslaria` (
  `ArtId` int NOT NULL,
  `CIzena` varchar(20) DEFAULT NULL,
  `Izena` varchar(20) DEFAULT NULL,
  `Estiloa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ArtId`),
  KEY `CIzena` (`CIzena`),
  CONSTRAINT `Abeslaria_ibfk_1` FOREIGN KEY (`CIzena`) REFERENCES `Herrialde` (`CIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Abeslaria`
--

LOCK TABLES `Abeslaria` WRITE;
/*!40000 ALTER TABLE `Abeslaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Abeslaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Abestia`
--

DROP TABLE IF EXISTS `Abestia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Abestia` (
  `SId` int NOT NULL,
  `Izenburua` varchar(20) DEFAULT NULL,
  `Iraupena` int DEFAULT NULL,
  `ArtId` int DEFAULT NULL,
  PRIMARY KEY (`SId`),
  KEY `ArtId` (`ArtId`),
  CONSTRAINT `Abestia_ibfk_1` FOREIGN KEY (`ArtId`) REFERENCES `Abeslaria` (`ArtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Abestia`
--

LOCK TABLES `Abestia` WRITE;
/*!40000 ALTER TABLE `Abestia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Abestia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Antzezlekua`
--

DROP TABLE IF EXISTS `Antzezlekua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Antzezlekua` (
  `EId` int NOT NULL,
  `LIzena` varchar(20) DEFAULT NULL,
  `Ekipmendua` varchar(20) DEFAULT NULL,
  `Ekipamendua` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EId`),
  KEY `LIzena` (`LIzena`),
  CONSTRAINT `Antzezlekua_ibfk_1` FOREIGN KEY (`LIzena`) REFERENCES `Aretoa` (`LIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Antzezlekua`
--

LOCK TABLES `Antzezlekua` WRITE;
/*!40000 ALTER TABLE `Antzezlekua` DISABLE KEYS */;
INSERT INTO `Antzezlekua` VALUES (1,'Arena Amsterdam',NULL,'Stage Gamma - Meyer'),(2,'Arena Amsterdam',NULL,'Stage Beta - L-Acoustics'),(3,'Arena Amsterdam',NULL,'Stage Alpha - D&B Audio'),(4,'Stadium Amsterdam',NULL,'Stage Gamma - Meyer'),(5,'Stadium Amsterdam',NULL,'Stage Beta - L-Acoustics'),(6,'Stadium Amsterdam',NULL,'Stage Alpha - D&B Audio'),(7,'Arena Bartzelona',NULL,'Stage Gamma - Meyer'),(8,'Arena Bartzelona',NULL,'Stage Beta - L-Acoustics'),(9,'Arena Bartzelona',NULL,'Stage Alpha - D&B Audio'),(10,'Stadium Bartzelona',NULL,'Stage Gamma - Meyer'),(11,'Stadium Bartzelona',NULL,'Stage Beta - L-Acoustics'),(12,'Stadium Bartzelona',NULL,'Stage Alpha - D&B Audio'),(13,'Arena Berlin',NULL,'Stage Gamma - Meyer'),(14,'Arena Berlin',NULL,'Stage Beta - L-Acoustics'),(15,'Arena Berlin',NULL,'Stage Alpha - D&B Audio'),(16,'Stadium Berlin',NULL,'Stage Gamma - Meyer'),(17,'Stadium Berlin',NULL,'Stage Beta - L-Acoustics'),(18,'Stadium Berlin',NULL,'Stage Alpha - D&B Audio'),(19,'Arena Bilbo',NULL,'Stage Gamma - Meyer'),(20,'Arena Bilbo',NULL,'Stage Beta - L-Acoustics'),(21,'Arena Bilbo',NULL,'Stage Alpha - D&B Audio'),(22,'Stadium Bilbo',NULL,'Stage Gamma - Meyer'),(23,'Stadium Bilbo',NULL,'Stage Beta - L-Acoustics'),(24,'Stadium Bilbo',NULL,'Stage Alpha - D&B Audio'),(25,'Arena Bordele',NULL,'Stage Gamma - Meyer'),(26,'Arena Bordele',NULL,'Stage Beta - L-Acoustics'),(27,'Arena Bordele',NULL,'Stage Alpha - D&B Audio'),(28,'Stadium Bordele',NULL,'Stage Gamma - Meyer'),(29,'Stadium Bordele',NULL,'Stage Beta - L-Acoustics'),(30,'Stadium Bordele',NULL,'Stage Alpha - D&B Audio'),(31,'Arena Braga',NULL,'Stage Gamma - Meyer'),(32,'Arena Braga',NULL,'Stage Beta - L-Acoustics'),(33,'Arena Braga',NULL,'Stage Alpha - D&B Audio'),(34,'Stadium Braga',NULL,'Stage Gamma - Meyer'),(35,'Stadium Braga',NULL,'Stage Beta - L-Acoustics'),(36,'Stadium Braga',NULL,'Stage Alpha - D&B Audio'),(37,'Arena Brasilia',NULL,'Stage Gamma - Meyer'),(38,'Arena Brasilia',NULL,'Stage Beta - L-Acoustics'),(39,'Arena Brasilia',NULL,'Stage Alpha - D&B Audio'),(40,'Stadium Brasilia',NULL,'Stage Gamma - Meyer'),(41,'Stadium Brasilia',NULL,'Stage Beta - L-Acoustics'),(42,'Stadium Brasilia',NULL,'Stage Alpha - D&B Audio'),(43,'Arena Brisbane',NULL,'Stage Gamma - Meyer'),(44,'Arena Brisbane',NULL,'Stage Beta - L-Acoustics'),(45,'Arena Brisbane',NULL,'Stage Alpha - D&B Audio'),(46,'Stadium Brisbane',NULL,'Stage Gamma - Meyer'),(47,'Stadium Brisbane',NULL,'Stage Beta - L-Acoustics'),(48,'Stadium Brisbane',NULL,'Stage Alpha - D&B Audio'),(49,'Arena Buenos Aires',NULL,'Stage Gamma - Meyer'),(50,'Arena Buenos Aires',NULL,'Stage Beta - L-Acoustics'),(51,'Arena Buenos Aires',NULL,'Stage Alpha - D&B Audio'),(52,'Stadium Buenos Aires',NULL,'Stage Gamma - Meyer'),(53,'Stadium Buenos Aires',NULL,'Stage Beta - L-Acoustics'),(54,'Stadium Buenos Aires',NULL,'Stage Alpha - D&B Audio'),(55,'Arena Busan',NULL,'Stage Gamma - Meyer'),(56,'Arena Busan',NULL,'Stage Beta - L-Acoustics'),(57,'Arena Busan',NULL,'Stage Alpha - D&B Audio'),(58,'Stadium Busan',NULL,'Stage Gamma - Meyer'),(59,'Stadium Busan',NULL,'Stage Beta - L-Acoustics'),(60,'Stadium Busan',NULL,'Stage Alpha - D&B Audio'),(61,'Arena Cancun',NULL,'Stage Gamma - Meyer'),(62,'Arena Cancun',NULL,'Stage Beta - L-Acoustics'),(63,'Arena Cancun',NULL,'Stage Alpha - D&B Audio'),(64,'Stadium Cancun',NULL,'Stage Gamma - Meyer'),(65,'Stadium Cancun',NULL,'Stage Beta - L-Acoustics'),(66,'Stadium Cancun',NULL,'Stage Alpha - D&B Audio'),(67,'Arena CDMX',NULL,'Stage Gamma - Meyer'),(68,'Arena CDMX',NULL,'Stage Beta - L-Acoustics'),(69,'Arena CDMX',NULL,'Stage Alpha - D&B Audio'),(70,'Stadium CDMX',NULL,'Stage Gamma - Meyer'),(71,'Stadium CDMX',NULL,'Stage Beta - L-Acoustics'),(72,'Stadium CDMX',NULL,'Stage Alpha - D&B Audio'),(73,'Arena Chicago',NULL,'Stage Gamma - Meyer'),(74,'Arena Chicago',NULL,'Stage Beta - L-Acoustics'),(75,'Arena Chicago',NULL,'Stage Alpha - D&B Audio'),(76,'Stadium Chicago',NULL,'Stage Gamma - Meyer'),(77,'Stadium Chicago',NULL,'Stage Beta - L-Acoustics'),(78,'Stadium Chicago',NULL,'Stage Alpha - D&B Audio'),(79,'Arena Cordoba',NULL,'Stage Gamma - Meyer'),(80,'Arena Cordoba',NULL,'Stage Beta - L-Acoustics'),(81,'Arena Cordoba',NULL,'Stage Alpha - D&B Audio'),(82,'Stadium Cordoba',NULL,'Stage Gamma - Meyer'),(83,'Stadium Cordoba',NULL,'Stage Beta - L-Acoustics'),(84,'Stadium Cordoba',NULL,'Stage Alpha - D&B Audio'),(85,'Arena Daegu',NULL,'Stage Gamma - Meyer'),(86,'Arena Daegu',NULL,'Stage Beta - L-Acoustics'),(87,'Arena Daegu',NULL,'Stage Alpha - D&B Audio'),(88,'Stadium Daegu',NULL,'Stage Gamma - Meyer'),(89,'Stadium Daegu',NULL,'Stage Beta - L-Acoustics'),(90,'Stadium Daegu',NULL,'Stage Alpha - D&B Audio'),(91,'Arena Eindhoven',NULL,'Stage Gamma - Meyer'),(92,'Arena Eindhoven',NULL,'Stage Beta - L-Acoustics'),(93,'Arena Eindhoven',NULL,'Stage Alpha - D&B Audio'),(94,'Stadium Eindhoven',NULL,'Stage Gamma - Meyer'),(95,'Stadium Eindhoven',NULL,'Stage Beta - L-Acoustics'),(96,'Stadium Eindhoven',NULL,'Stage Alpha - D&B Audio'),(97,'Arena Faro',NULL,'Stage Gamma - Meyer'),(98,'Arena Faro',NULL,'Stage Beta - L-Acoustics'),(99,'Arena Faro',NULL,'Stage Alpha - D&B Audio'),(100,'Stadium Faro',NULL,'Stage Gamma - Meyer'),(101,'Stadium Faro',NULL,'Stage Beta - L-Acoustics'),(102,'Stadium Faro',NULL,'Stage Alpha - D&B Audio'),(103,'Arena Florentzia',NULL,'Stage Gamma - Meyer'),(104,'Arena Florentzia',NULL,'Stage Beta - L-Acoustics'),(105,'Arena Florentzia',NULL,'Stage Alpha - D&B Audio'),(106,'Stadium Florentzia',NULL,'Stage Gamma - Meyer'),(107,'Stadium Florentzia',NULL,'Stage Beta - L-Acoustics'),(108,'Stadium Florentzia',NULL,'Stage Alpha - D&B Audio'),(109,'Arena Frankfurt',NULL,'Stage Gamma - Meyer'),(110,'Arena Frankfurt',NULL,'Stage Beta - L-Acoustics'),(111,'Arena Frankfurt',NULL,'Stage Alpha - D&B Audio'),(112,'Stadium Frankfurt',NULL,'Stage Gamma - Meyer'),(113,'Stadium Frankfurt',NULL,'Stage Beta - L-Acoustics'),(114,'Stadium Frankfurt',NULL,'Stage Alpha - D&B Audio'),(115,'Arena Glasgow',NULL,'Stage Gamma - Meyer'),(116,'Arena Glasgow',NULL,'Stage Beta - L-Acoustics'),(117,'Arena Glasgow',NULL,'Stage Alpha - D&B Audio'),(118,'Stadium Glasgow',NULL,'Stage Gamma - Meyer'),(119,'Stadium Glasgow',NULL,'Stage Beta - L-Acoustics'),(120,'Stadium Glasgow',NULL,'Stage Alpha - D&B Audio'),(121,'Arena Guadalajara',NULL,'Stage Gamma - Meyer'),(122,'Arena Guadalajara',NULL,'Stage Beta - L-Acoustics'),(123,'Arena Guadalajara',NULL,'Stage Alpha - D&B Audio'),(124,'Stadium Guadalajara',NULL,'Stage Gamma - Meyer'),(125,'Stadium Guadalajara',NULL,'Stage Beta - L-Acoustics'),(126,'Stadium Guadalajara',NULL,'Stage Alpha - D&B Audio'),(127,'Arena Hanburgo',NULL,'Stage Gamma - Meyer'),(128,'Arena Hanburgo',NULL,'Stage Beta - L-Acoustics'),(129,'Arena Hanburgo',NULL,'Stage Alpha - D&B Audio'),(130,'Stadium Hanburgo',NULL,'Stage Gamma - Meyer'),(131,'Stadium Hanburgo',NULL,'Stage Beta - L-Acoustics'),(132,'Stadium Hanburgo',NULL,'Stage Alpha - D&B Audio'),(133,'Arena Incheon',NULL,'Stage Gamma - Meyer'),(134,'Arena Incheon',NULL,'Stage Beta - L-Acoustics'),(135,'Arena Incheon',NULL,'Stage Alpha - D&B Audio'),(136,'Stadium Incheon',NULL,'Stage Gamma - Meyer'),(137,'Stadium Incheon',NULL,'Stage Beta - L-Acoustics'),(138,'Stadium Incheon',NULL,'Stage Alpha - D&B Audio'),(139,'Arena Kyoto',NULL,'Stage Gamma - Meyer'),(140,'Arena Kyoto',NULL,'Stage Beta - L-Acoustics'),(141,'Arena Kyoto',NULL,'Stage Alpha - D&B Audio'),(142,'Stadium Kyoto',NULL,'Stage Gamma - Meyer'),(143,'Stadium Kyoto',NULL,'Stage Beta - L-Acoustics'),(144,'Stadium Kyoto',NULL,'Stage Alpha - D&B Audio'),(145,'Arena Lisboa',NULL,'Stage Gamma - Meyer'),(146,'Arena Lisboa',NULL,'Stage Beta - L-Acoustics'),(147,'Arena Lisboa',NULL,'Stage Alpha - D&B Audio'),(148,'Stadium Lisboa',NULL,'Stage Gamma - Meyer'),(149,'Stadium Lisboa',NULL,'Stage Beta - L-Acoustics'),(150,'Stadium Lisboa',NULL,'Stage Alpha - D&B Audio'),(151,'Arena Liverpool',NULL,'Stage Gamma - Meyer'),(152,'Arena Liverpool',NULL,'Stage Beta - L-Acoustics'),(153,'Arena Liverpool',NULL,'Stage Alpha - D&B Audio'),(154,'Stadium Liverpool',NULL,'Stage Gamma - Meyer'),(155,'Stadium Liverpool',NULL,'Stage Beta - L-Acoustics'),(156,'Stadium Liverpool',NULL,'Stage Alpha - D&B Audio'),(157,'Arena London',NULL,'Stage Gamma - Meyer'),(158,'Arena London',NULL,'Stage Beta - L-Acoustics'),(159,'Arena London',NULL,'Stage Alpha - D&B Audio'),(160,'Stadium London',NULL,'Stage Gamma - Meyer'),(161,'Stadium London',NULL,'Stage Beta - L-Acoustics'),(162,'Stadium London',NULL,'Stage Alpha - D&B Audio'),(163,'Arena Los Angeles',NULL,'Stage Gamma - Meyer'),(164,'Arena Los Angeles',NULL,'Stage Beta - L-Acoustics'),(165,'Arena Los Angeles',NULL,'Stage Alpha - D&B Audio'),(166,'Stadium Los Angeles',NULL,'Stage Gamma - Meyer'),(167,'Stadium Los Angeles',NULL,'Stage Beta - L-Acoustics'),(168,'Stadium Los Angeles',NULL,'Stage Alpha - D&B Audio'),(169,'Arena Lyon',NULL,'Stage Gamma - Meyer'),(170,'Arena Lyon',NULL,'Stage Beta - L-Acoustics'),(171,'Arena Lyon',NULL,'Stage Alpha - D&B Audio'),(172,'Stadium Lyon',NULL,'Stage Gamma - Meyer'),(173,'Stadium Lyon',NULL,'Stage Beta - L-Acoustics'),(174,'Stadium Lyon',NULL,'Stage Alpha - D&B Audio'),(175,'Arena Madril',NULL,'Stage Gamma - Meyer'),(176,'Arena Madril',NULL,'Stage Beta - L-Acoustics'),(177,'Arena Madril',NULL,'Stage Alpha - D&B Audio'),(178,'Stadium Madril',NULL,'Stage Gamma - Meyer'),(179,'Stadium Madril',NULL,'Stage Beta - L-Acoustics'),(180,'Stadium Madril',NULL,'Stage Alpha - D&B Audio'),(181,'Arena Manchester',NULL,'Stage Gamma - Meyer'),(182,'Arena Manchester',NULL,'Stage Beta - L-Acoustics'),(183,'Arena Manchester',NULL,'Stage Alpha - D&B Audio'),(184,'Stadium Manchester',NULL,'Stage Gamma - Meyer'),(185,'Stadium Manchester',NULL,'Stage Beta - L-Acoustics'),(186,'Stadium Manchester',NULL,'Stage Alpha - D&B Audio'),(187,'Arena Marseilla',NULL,'Stage Gamma - Meyer'),(188,'Arena Marseilla',NULL,'Stage Beta - L-Acoustics'),(189,'Arena Marseilla',NULL,'Stage Alpha - D&B Audio'),(190,'Stadium Marseilla',NULL,'Stage Gamma - Meyer'),(191,'Stadium Marseilla',NULL,'Stage Beta - L-Acoustics'),(192,'Stadium Marseilla',NULL,'Stage Alpha - D&B Audio'),(193,'Arena Melbourne',NULL,'Stage Gamma - Meyer'),(194,'Arena Melbourne',NULL,'Stage Beta - L-Acoustics'),(195,'Arena Melbourne',NULL,'Stage Alpha - D&B Audio'),(196,'Stadium Melbourne',NULL,'Stage Gamma - Meyer'),(197,'Stadium Melbourne',NULL,'Stage Beta - L-Acoustics'),(198,'Stadium Melbourne',NULL,'Stage Alpha - D&B Audio'),(199,'Arena Mendoza',NULL,'Stage Gamma - Meyer'),(200,'Arena Mendoza',NULL,'Stage Beta - L-Acoustics'),(201,'Arena Mendoza',NULL,'Stage Alpha - D&B Audio'),(202,'Stadium Mendoza',NULL,'Stage Gamma - Meyer'),(203,'Stadium Mendoza',NULL,'Stage Beta - L-Acoustics'),(204,'Stadium Mendoza',NULL,'Stage Alpha - D&B Audio'),(205,'Arena Miami',NULL,'Stage Gamma - Meyer'),(206,'Arena Miami',NULL,'Stage Beta - L-Acoustics'),(207,'Arena Miami',NULL,'Stage Alpha - D&B Audio'),(208,'Stadium Miami',NULL,'Stage Gamma - Meyer'),(209,'Stadium Miami',NULL,'Stage Beta - L-Acoustics'),(210,'Stadium Miami',NULL,'Stage Alpha - D&B Audio'),(211,'Arena Milan',NULL,'Stage Gamma - Meyer'),(212,'Arena Milan',NULL,'Stage Beta - L-Acoustics'),(213,'Arena Milan',NULL,'Stage Alpha - D&B Audio'),(214,'Stadium Milan',NULL,'Stage Gamma - Meyer'),(215,'Stadium Milan',NULL,'Stage Beta - L-Acoustics'),(216,'Stadium Milan',NULL,'Stage Alpha - D&B Audio'),(217,'Arena Monterrey',NULL,'Stage Gamma - Meyer'),(218,'Arena Monterrey',NULL,'Stage Beta - L-Acoustics'),(219,'Arena Monterrey',NULL,'Stage Alpha - D&B Audio'),(220,'Stadium Monterrey',NULL,'Stage Gamma - Meyer'),(221,'Stadium Monterrey',NULL,'Stage Beta - L-Acoustics'),(222,'Stadium Monterrey',NULL,'Stage Alpha - D&B Audio'),(223,'Arena Montreal',NULL,'Stage Gamma - Meyer'),(224,'Arena Montreal',NULL,'Stage Beta - L-Acoustics'),(225,'Arena Montreal',NULL,'Stage Alpha - D&B Audio'),(226,'Stadium Montreal',NULL,'Stage Gamma - Meyer'),(227,'Stadium Montreal',NULL,'Stage Beta - L-Acoustics'),(228,'Stadium Montreal',NULL,'Stage Alpha - D&B Audio'),(229,'Arena Munich',NULL,'Stage Gamma - Meyer'),(230,'Arena Munich',NULL,'Stage Beta - L-Acoustics'),(231,'Arena Munich',NULL,'Stage Alpha - D&B Audio'),(232,'Stadium Munich',NULL,'Stage Gamma - Meyer'),(233,'Stadium Munich',NULL,'Stage Beta - L-Acoustics'),(234,'Stadium Munich',NULL,'Stage Alpha - D&B Audio'),(235,'Arena Napoli',NULL,'Stage Gamma - Meyer'),(236,'Arena Napoli',NULL,'Stage Beta - L-Acoustics'),(237,'Arena Napoli',NULL,'Stage Alpha - D&B Audio'),(238,'Stadium Napoli',NULL,'Stage Gamma - Meyer'),(239,'Stadium Napoli',NULL,'Stage Beta - L-Acoustics'),(240,'Stadium Napoli',NULL,'Stage Alpha - D&B Audio'),(241,'Arena New York',NULL,'Stage Gamma - Meyer'),(242,'Arena New York',NULL,'Stage Beta - L-Acoustics'),(243,'Arena New York',NULL,'Stage Alpha - D&B Audio'),(244,'Stadium New York',NULL,'Stage Gamma - Meyer'),(245,'Stadium New York',NULL,'Stage Beta - L-Acoustics'),(246,'Stadium New York',NULL,'Stage Alpha - D&B Audio'),(247,'Arena Osaka',NULL,'Stage Gamma - Meyer'),(248,'Arena Osaka',NULL,'Stage Beta - L-Acoustics'),(249,'Arena Osaka',NULL,'Stage Alpha - D&B Audio'),(250,'Stadium Osaka',NULL,'Stage Gamma - Meyer'),(251,'Stadium Osaka',NULL,'Stage Beta - L-Acoustics'),(252,'Stadium Osaka',NULL,'Stage Alpha - D&B Audio'),(253,'Arena Ottawa',NULL,'Stage Gamma - Meyer'),(254,'Arena Ottawa',NULL,'Stage Beta - L-Acoustics'),(255,'Arena Ottawa',NULL,'Stage Alpha - D&B Audio'),(256,'Stadium Ottawa',NULL,'Stage Gamma - Meyer'),(257,'Stadium Ottawa',NULL,'Stage Beta - L-Acoustics'),(258,'Stadium Ottawa',NULL,'Stage Alpha - D&B Audio'),(259,'Arena Paris',NULL,'Stage Gamma - Meyer'),(260,'Arena Paris',NULL,'Stage Beta - L-Acoustics'),(261,'Arena Paris',NULL,'Stage Alpha - D&B Audio'),(262,'Stadium Paris',NULL,'Stage Gamma - Meyer'),(263,'Stadium Paris',NULL,'Stage Beta - L-Acoustics'),(264,'Stadium Paris',NULL,'Stage Alpha - D&B Audio'),(265,'Arena Perth',NULL,'Stage Gamma - Meyer'),(266,'Arena Perth',NULL,'Stage Beta - L-Acoustics'),(267,'Arena Perth',NULL,'Stage Alpha - D&B Audio'),(268,'Stadium Perth',NULL,'Stage Gamma - Meyer'),(269,'Stadium Perth',NULL,'Stage Beta - L-Acoustics'),(270,'Stadium Perth',NULL,'Stage Alpha - D&B Audio'),(271,'Arena Porto',NULL,'Stage Gamma - Meyer'),(272,'Arena Porto',NULL,'Stage Beta - L-Acoustics'),(273,'Arena Porto',NULL,'Stage Alpha - D&B Audio'),(274,'Stadium Porto',NULL,'Stage Gamma - Meyer'),(275,'Stadium Porto',NULL,'Stage Beta - L-Acoustics'),(276,'Stadium Porto',NULL,'Stage Alpha - D&B Audio'),(277,'Arena Rio Janeiro',NULL,'Stage Gamma - Meyer'),(278,'Arena Rio Janeiro',NULL,'Stage Beta - L-Acoustics'),(279,'Arena Rio Janeiro',NULL,'Stage Alpha - D&B Audio'),(280,'Stadium Rio Janeiro',NULL,'Stage Gamma - Meyer'),(281,'Stadium Rio Janeiro',NULL,'Stage Beta - L-Acoustics'),(282,'Stadium Rio Janeiro',NULL,'Stage Alpha - D&B Audio'),(283,'Arena Roma',NULL,'Stage Gamma - Meyer'),(284,'Arena Roma',NULL,'Stage Beta - L-Acoustics'),(285,'Arena Roma',NULL,'Stage Alpha - D&B Audio'),(286,'Stadium Roma',NULL,'Stage Gamma - Meyer'),(287,'Stadium Roma',NULL,'Stage Beta - L-Acoustics'),(288,'Stadium Roma',NULL,'Stage Alpha - D&B Audio'),(289,'Arena Rosario',NULL,'Stage Gamma - Meyer'),(290,'Arena Rosario',NULL,'Stage Beta - L-Acoustics'),(291,'Arena Rosario',NULL,'Stage Alpha - D&B Audio'),(292,'Stadium Rosario',NULL,'Stage Gamma - Meyer'),(293,'Stadium Rosario',NULL,'Stage Beta - L-Acoustics'),(294,'Stadium Rosario',NULL,'Stage Alpha - D&B Audio'),(295,'Arena Rotterdam',NULL,'Stage Gamma - Meyer'),(296,'Arena Rotterdam',NULL,'Stage Beta - L-Acoustics'),(297,'Arena Rotterdam',NULL,'Stage Alpha - D&B Audio'),(298,'Stadium Rotterdam',NULL,'Stage Gamma - Meyer'),(299,'Stadium Rotterdam',NULL,'Stage Beta - L-Acoustics'),(300,'Stadium Rotterdam',NULL,'Stage Alpha - D&B Audio'),(301,'Arena Salvador',NULL,'Stage Gamma - Meyer'),(302,'Arena Salvador',NULL,'Stage Beta - L-Acoustics'),(303,'Arena Salvador',NULL,'Stage Alpha - D&B Audio'),(304,'Stadium Salvador',NULL,'Stage Gamma - Meyer'),(305,'Stadium Salvador',NULL,'Stage Beta - L-Acoustics'),(306,'Stadium Salvador',NULL,'Stage Alpha - D&B Audio'),(307,'Arena Sao Paulo',NULL,'Stage Gamma - Meyer'),(308,'Arena Sao Paulo',NULL,'Stage Beta - L-Acoustics'),(309,'Arena Sao Paulo',NULL,'Stage Alpha - D&B Audio'),(310,'Stadium Sao Paulo',NULL,'Stage Gamma - Meyer'),(311,'Stadium Sao Paulo',NULL,'Stage Beta - L-Acoustics'),(312,'Stadium Sao Paulo',NULL,'Stage Alpha - D&B Audio'),(313,'Arena Seoul',NULL,'Stage Gamma - Meyer'),(314,'Arena Seoul',NULL,'Stage Beta - L-Acoustics'),(315,'Arena Seoul',NULL,'Stage Alpha - D&B Audio'),(316,'Stadium Seoul',NULL,'Stage Gamma - Meyer'),(317,'Stadium Seoul',NULL,'Stage Beta - L-Acoustics'),(318,'Stadium Seoul',NULL,'Stage Alpha - D&B Audio'),(319,'Arena Sevilla',NULL,'Stage Gamma - Meyer'),(320,'Arena Sevilla',NULL,'Stage Beta - L-Acoustics'),(321,'Arena Sevilla',NULL,'Stage Alpha - D&B Audio'),(322,'Stadium Sevilla',NULL,'Stage Gamma - Meyer'),(323,'Stadium Sevilla',NULL,'Stage Beta - L-Acoustics'),(324,'Stadium Sevilla',NULL,'Stage Alpha - D&B Audio'),(325,'Arena Sydney',NULL,'Stage Gamma - Meyer'),(326,'Arena Sydney',NULL,'Stage Beta - L-Acoustics'),(327,'Arena Sydney',NULL,'Stage Alpha - D&B Audio'),(328,'Stadium Sydney',NULL,'Stage Gamma - Meyer'),(329,'Stadium Sydney',NULL,'Stage Beta - L-Acoustics'),(330,'Stadium Sydney',NULL,'Stage Alpha - D&B Audio'),(331,'Arena Tokyo',NULL,'Stage Gamma - Meyer'),(332,'Arena Tokyo',NULL,'Stage Beta - L-Acoustics'),(333,'Arena Tokyo',NULL,'Stage Alpha - D&B Audio'),(334,'Stadium Tokyo',NULL,'Stage Gamma - Meyer'),(335,'Stadium Tokyo',NULL,'Stage Beta - L-Acoustics'),(336,'Stadium Tokyo',NULL,'Stage Alpha - D&B Audio'),(337,'Arena Toronto',NULL,'Stage Gamma - Meyer'),(338,'Arena Toronto',NULL,'Stage Beta - L-Acoustics'),(339,'Arena Toronto',NULL,'Stage Alpha - D&B Audio'),(340,'Stadium Toronto',NULL,'Stage Gamma - Meyer'),(341,'Stadium Toronto',NULL,'Stage Beta - L-Acoustics'),(342,'Stadium Toronto',NULL,'Stage Alpha - D&B Audio'),(343,'Arena Utrecht',NULL,'Stage Gamma - Meyer'),(344,'Arena Utrecht',NULL,'Stage Beta - L-Acoustics'),(345,'Arena Utrecht',NULL,'Stage Alpha - D&B Audio'),(346,'Stadium Utrecht',NULL,'Stage Gamma - Meyer'),(347,'Stadium Utrecht',NULL,'Stage Beta - L-Acoustics'),(348,'Stadium Utrecht',NULL,'Stage Alpha - D&B Audio'),(349,'Arena Vancouver',NULL,'Stage Gamma - Meyer'),(350,'Arena Vancouver',NULL,'Stage Beta - L-Acoustics'),(351,'Arena Vancouver',NULL,'Stage Alpha - D&B Audio'),(352,'Stadium Vancouver',NULL,'Stage Gamma - Meyer'),(353,'Stadium Vancouver',NULL,'Stage Beta - L-Acoustics'),(354,'Stadium Vancouver',NULL,'Stage Alpha - D&B Audio'),(355,'Arena Yokohama',NULL,'Stage Gamma - Meyer'),(356,'Arena Yokohama',NULL,'Stage Beta - L-Acoustics'),(357,'Arena Yokohama',NULL,'Stage Alpha - D&B Audio'),(358,'Stadium Yokohama',NULL,'Stage Gamma - Meyer'),(359,'Stadium Yokohama',NULL,'Stage Beta - L-Acoustics'),(360,'Stadium Yokohama',NULL,'Stage Alpha - D&B Audio');
/*!40000 ALTER TABLE `Antzezlekua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aretoa`
--

DROP TABLE IF EXISTS `Aretoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aretoa` (
  `LIzena` varchar(20) NOT NULL,
  `HIzena` varchar(20) DEFAULT NULL,
  `Helbidea` varchar(20) DEFAULT NULL,
  `Edukiera` int DEFAULT NULL,
  `Estalia` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`LIzena`),
  KEY `HIzena` (`HIzena`),
  CONSTRAINT `Aretoa_ibfk_1` FOREIGN KEY (`HIzena`) REFERENCES `Hiria` (`HIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aretoa`
--

LOCK TABLES `Aretoa` WRITE;
/*!40000 ALTER TABLE `Aretoa` DISABLE KEYS */;
INSERT INTO `Aretoa` VALUES ('Arena Amsterdam','Amsterdam','Musika Kalea 1',15000,1),('Arena Bartzelona','Bartzelona','Musika Kalea 1',15000,1),('Arena Berlin','Berlin','Musika Kalea 1',15000,1),('Arena Bilbo','Bilbo','Musika Kalea 1',15000,1),('Arena Bordele','Bordele','Musika Kalea 1',15000,1),('Arena Braga','Braga','Musika Kalea 1',15000,1),('Arena Brasilia','Brasilia','Musika Kalea 1',15000,1),('Arena Brisbane','Brisbane','Musika Kalea 1',15000,1),('Arena Buenos Aires','Buenos Aires','Musika Kalea 1',15000,1),('Arena Busan','Busan','Musika Kalea 1',15000,1),('Arena Cancun','Cancun','Musika Kalea 1',15000,1),('Arena CDMX','CDMX','Musika Kalea 1',15000,1),('Arena Chicago','Chicago','Musika Kalea 1',15000,1),('Arena Cordoba','Cordoba','Musika Kalea 1',15000,1),('Arena Daegu','Daegu','Musika Kalea 1',15000,1),('Arena Eindhoven','Eindhoven','Musika Kalea 1',15000,1),('Arena Faro','Faro','Musika Kalea 1',15000,1),('Arena Florentzia','Florentzia','Musika Kalea 1',15000,1),('Arena Frankfurt','Frankfurt','Musika Kalea 1',15000,1),('Arena Glasgow','Glasgow','Musika Kalea 1',15000,1),('Arena Guadalajara','Guadalajara','Musika Kalea 1',15000,1),('Arena Hanburgo','Hanburgo','Musika Kalea 1',15000,1),('Arena Incheon','Incheon','Musika Kalea 1',15000,1),('Arena Kyoto','Kyoto','Musika Kalea 1',15000,1),('Arena Lisboa','Lisboa','Musika Kalea 1',15000,1),('Arena Liverpool','Liverpool','Musika Kalea 1',15000,1),('Arena London','London','Musika Kalea 1',15000,1),('Arena Los Angeles','Los Angeles','Musika Kalea 1',15000,1),('Arena Lyon','Lyon','Musika Kalea 1',15000,1),('Arena Madril','Madril','Musika Kalea 1',15000,1),('Arena Manchester','Manchester','Musika Kalea 1',15000,1),('Arena Marseilla','Marseilla','Musika Kalea 1',15000,1),('Arena Melbourne','Melbourne','Musika Kalea 1',15000,1),('Arena Mendoza','Mendoza','Musika Kalea 1',15000,1),('Arena Miami','Miami','Musika Kalea 1',15000,1),('Arena Milan','Milan','Musika Kalea 1',15000,1),('Arena Monterrey','Monterrey','Musika Kalea 1',15000,1),('Arena Montreal','Montreal','Musika Kalea 1',15000,1),('Arena Munich','Munich','Musika Kalea 1',15000,1),('Arena Napoli','Napoli','Musika Kalea 1',15000,1),('Arena New York','New York','Musika Kalea 1',15000,1),('Arena Osaka','Osaka','Musika Kalea 1',15000,1),('Arena Ottawa','Ottawa','Musika Kalea 1',15000,1),('Arena Paris','Paris','Musika Kalea 1',15000,1),('Arena Perth','Perth','Musika Kalea 1',15000,1),('Arena Porto','Porto','Musika Kalea 1',15000,1),('Arena Rio Janeiro','Rio Janeiro','Musika Kalea 1',15000,1),('Arena Roma','Roma','Musika Kalea 1',15000,1),('Arena Rosario','Rosario','Musika Kalea 1',15000,1),('Arena Rotterdam','Rotterdam','Musika Kalea 1',15000,1),('Arena Salvador','Salvador','Musika Kalea 1',15000,1),('Arena Sao Paulo','Sao Paulo','Musika Kalea 1',15000,1),('Arena Seoul','Seoul','Musika Kalea 1',15000,1),('Arena Sevilla','Sevilla','Musika Kalea 1',15000,1),('Arena Sydney','Sydney','Musika Kalea 1',15000,1),('Arena Tokyo','Tokyo','Musika Kalea 1',15000,1),('Arena Toronto','Toronto','Musika Kalea 1',15000,1),('Arena Utrecht','Utrecht','Musika Kalea 1',15000,1),('Arena Vancouver','Vancouver','Musika Kalea 1',15000,1),('Arena Yokohama','Yokohama','Musika Kalea 1',15000,1),('Stadium Amsterdam','Amsterdam','Musika Kalea 1',30000,0),('Stadium Bartzelona','Bartzelona','Musika Kalea 1',30000,0),('Stadium Berlin','Berlin','Musika Kalea 1',30000,0),('Stadium Bilbo','Bilbo','Musika Kalea 1',30000,0),('Stadium Bordele','Bordele','Musika Kalea 1',30000,0),('Stadium Braga','Braga','Musika Kalea 1',30000,0),('Stadium Brasilia','Brasilia','Musika Kalea 1',30000,0),('Stadium Brisbane','Brisbane','Musika Kalea 1',30000,0),('Stadium Buenos Aires','Buenos Aires','Musika Kalea 1',30000,0),('Stadium Busan','Busan','Musika Kalea 1',30000,0),('Stadium Cancun','Cancun','Musika Kalea 1',30000,0),('Stadium CDMX','CDMX','Musika Kalea 1',30000,0),('Stadium Chicago','Chicago','Musika Kalea 1',30000,0),('Stadium Cordoba','Cordoba','Musika Kalea 1',30000,0),('Stadium Daegu','Daegu','Musika Kalea 1',30000,0),('Stadium Eindhoven','Eindhoven','Musika Kalea 1',30000,0),('Stadium Faro','Faro','Musika Kalea 1',30000,0),('Stadium Florentzia','Florentzia','Musika Kalea 1',30000,0),('Stadium Frankfurt','Frankfurt','Musika Kalea 1',30000,0),('Stadium Glasgow','Glasgow','Musika Kalea 1',30000,0),('Stadium Guadalajara','Guadalajara','Musika Kalea 1',30000,0),('Stadium Hanburgo','Hanburgo','Musika Kalea 1',30000,0),('Stadium Incheon','Incheon','Musika Kalea 1',30000,0),('Stadium Kyoto','Kyoto','Musika Kalea 1',30000,0),('Stadium Lisboa','Lisboa','Musika Kalea 1',30000,0),('Stadium Liverpool','Liverpool','Musika Kalea 1',30000,0),('Stadium London','London','Musika Kalea 1',30000,0),('Stadium Los Angeles','Los Angeles','Musika Kalea 1',30000,0),('Stadium Lyon','Lyon','Musika Kalea 1',30000,0),('Stadium Madril','Madril','Musika Kalea 1',30000,0),('Stadium Manchester','Manchester','Musika Kalea 1',30000,0),('Stadium Marseilla','Marseilla','Musika Kalea 1',30000,0),('Stadium Melbourne','Melbourne','Musika Kalea 1',30000,0),('Stadium Mendoza','Mendoza','Musika Kalea 1',30000,0),('Stadium Miami','Miami','Musika Kalea 1',30000,0),('Stadium Milan','Milan','Musika Kalea 1',30000,0),('Stadium Monterrey','Monterrey','Musika Kalea 1',30000,0),('Stadium Montreal','Montreal','Musika Kalea 1',30000,0),('Stadium Munich','Munich','Musika Kalea 1',30000,0),('Stadium Napoli','Napoli','Musika Kalea 1',30000,0),('Stadium New York','New York','Musika Kalea 1',30000,0),('Stadium Osaka','Osaka','Musika Kalea 1',30000,0),('Stadium Ottawa','Ottawa','Musika Kalea 1',30000,0),('Stadium Paris','Paris','Musika Kalea 1',30000,0),('Stadium Perth','Perth','Musika Kalea 1',30000,0),('Stadium Porto','Porto','Musika Kalea 1',30000,0),('Stadium Rio Janeiro','Rio Janeiro','Musika Kalea 1',30000,0),('Stadium Roma','Roma','Musika Kalea 1',30000,0),('Stadium Rosario','Rosario','Musika Kalea 1',30000,0),('Stadium Rotterdam','Rotterdam','Musika Kalea 1',30000,0),('Stadium Salvador','Salvador','Musika Kalea 1',30000,0),('Stadium Sao Paulo','Sao Paulo','Musika Kalea 1',30000,0),('Stadium Seoul','Seoul','Musika Kalea 1',30000,0),('Stadium Sevilla','Sevilla','Musika Kalea 1',30000,0),('Stadium Sydney','Sydney','Musika Kalea 1',30000,0),('Stadium Tokyo','Tokyo','Musika Kalea 1',30000,0),('Stadium Toronto','Toronto','Musika Kalea 1',30000,0),('Stadium Utrecht','Utrecht','Musika Kalea 1',30000,0),('Stadium Vancouver','Vancouver','Musika Kalea 1',30000,0),('Stadium Yokohama','Yokohama','Musika Kalea 1',30000,0);
/*!40000 ALTER TABLE `Aretoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Edizioa`
--

DROP TABLE IF EXISTS `Edizioa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Edizioa` (
  `EIzena` varchar(20) NOT NULL,
  `FIzena` varchar(50) DEFAULT NULL,
  `Urtea` int DEFAULT NULL,
  `HasieraData` date DEFAULT NULL,
  `AmaieraData` date DEFAULT NULL,
  PRIMARY KEY (`EIzena`),
  KEY `FIzena` (`FIzena`),
  CONSTRAINT `Edizioa_ibfk_1` FOREIGN KEY (`FIzena`) REFERENCES `Festibal` (`FIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Edizioa`
--

LOCK TABLES `Edizioa` WRITE;
/*!40000 ALTER TABLE `Edizioa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Edizioa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Festibal`
--

DROP TABLE IF EXISTS `Festibal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Festibal` (
  `FIzena` varchar(50) NOT NULL,
  `CIzena` varchar(20) DEFAULT NULL,
  `Webgunea` varchar(255) DEFAULT NULL,
  `Estiloa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FIzena`),
  KEY `CIzena` (`CIzena`),
  CONSTRAINT `Festibal_ibfk_1` FOREIGN KEY (`CIzena`) REFERENCES `Herrialde` (`CIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Festibal`
--

LOCK TABLES `Festibal` WRITE;
/*!40000 ALTER TABLE `Festibal` DISABLE KEYS */;
INSERT INTO `Festibal` VALUES ('Indie Vibe AEB','AEB','www.AEBfest.com','Indie'),('Indie Vibe Alemania','Alemania','www.Alemaniafest.com','Indie'),('Indie Vibe Argentina','Argentina','www.Argentinafest.com','Indie'),('Indie Vibe Australia','Australia','www.Australiafest.com','Indie'),('Indie Vibe Brasil','Brasil','www.Brasilfest.com','Indie'),('Indie Vibe Erresuma Batua','Erresuma Batua','www.Erresuma Batuafest.com','Indie'),('Indie Vibe Espainia','Espainia','www.Espainiafest.com','Indie'),('Indie Vibe Frantzia','Frantzia','www.Frantziafest.com','Indie'),('Indie Vibe Hego Korea','Hego Korea','www.Hego Koreafest.com','Indie'),('Indie Vibe Herbehereak','Herbehereak','www.Herbehereakfest.com','Indie'),('Jazz Day AEB','AEB','www.AEBfest.com','Jazz'),('Jazz Day Alemania','Alemania','www.Alemaniafest.com','Jazz'),('Jazz Day Argentina','Argentina','www.Argentinafest.com','Jazz'),('Jazz Day Australia','Australia','www.Australiafest.com','Jazz'),('Jazz Day Brasil','Brasil','www.Brasilfest.com','Jazz'),('Jazz Day Erresuma Batua','Erresuma Batua','www.Erresuma Batuafest.com','Jazz'),('Jazz Day Espainia','Espainia','www.Espainiafest.com','Jazz'),('Jazz Day Frantzia','Frantzia','www.Frantziafest.com','Jazz'),('Jazz Day Hego Korea','Hego Korea','www.Hego Koreafest.com','Jazz'),('Jazz Day Herbehereak','Herbehereak','www.Herbehereakfest.com','Jazz'),('Pop World AEB','AEB','www.AEBfest.com','Pop'),('Pop World Alemania','Alemania','www.Alemaniafest.com','Pop'),('Pop World Argentina','Argentina','www.Argentinafest.com','Pop'),('Pop World Australia','Australia','www.Australiafest.com','Pop'),('Pop World Brasil','Brasil','www.Brasilfest.com','Pop'),('Pop World Erresuma Batua','Erresuma Batua','www.Erresuma Batuafest.com','Pop'),('Pop World Espainia','Espainia','www.Espainiafest.com','Pop'),('Pop World Frantzia','Frantzia','www.Frantziafest.com','Pop'),('Pop World Hego Korea','Hego Korea','www.Hego Koreafest.com','Pop'),('Pop World Herbehereak','Herbehereak','www.Herbehereakfest.com','Pop'),('Summer Rock AEB','AEB','www.AEBfest.com','Rock'),('Summer Rock Alemania','Alemania','www.Alemaniafest.com','Rock'),('Summer Rock Argentina','Argentina','www.Argentinafest.com','Rock'),('Summer Rock Australia','Australia','www.Australiafest.com','Rock'),('Summer Rock Brasil','Brasil','www.Brasilfest.com','Rock'),('Summer Rock Erresuma Batua','Erresuma Batua','www.Erresuma Batuafest.com','Rock'),('Summer Rock Espainia','Espainia','www.Espainiafest.com','Rock'),('Summer Rock Frantzia','Frantzia','www.Frantziafest.com','Rock'),('Summer Rock Hego Korea','Hego Korea','www.Hego Koreafest.com','Rock'),('Summer Rock Herbehereak','Herbehereak','www.Herbehereakfest.com','Rock'),('Techno Night AEB','AEB','www.AEBfest.com','EDM'),('Techno Night Alemania','Alemania','www.Alemaniafest.com','EDM'),('Techno Night Argentina','Argentina','www.Argentinafest.com','EDM'),('Techno Night Australia','Australia','www.Australiafest.com','EDM'),('Techno Night Brasil','Brasil','www.Brasilfest.com','EDM'),('Techno Night Erresuma Batua','Erresuma Batua','www.Erresuma Batuafest.com','EDM'),('Techno Night Espainia','Espainia','www.Espainiafest.com','EDM'),('Techno Night Frantzia','Frantzia','www.Frantziafest.com','EDM'),('Techno Night Hego Korea','Hego Korea','www.Hego Koreafest.com','EDM'),('Techno Night Herbehereak','Herbehereak','www.Herbehereakfest.com','EDM');
/*!40000 ALTER TABLE `Festibal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Herrialde`
--

DROP TABLE IF EXISTS `Herrialde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Herrialde` (
  `CIzena` varchar(20) NOT NULL,
  `Kontinentea` varchar(20) DEFAULT NULL,
  `Klima` varchar(20) DEFAULT NULL,
  `populazioa` int DEFAULT NULL,
  PRIMARY KEY (`CIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Herrialde`
--

LOCK TABLES `Herrialde` WRITE;
/*!40000 ALTER TABLE `Herrialde` DISABLE KEYS */;
INSERT INTO `Herrialde` VALUES ('AEB','Ipar Amerika','Anitza',332000000),('Alemania','Europa','Kontinentala',83000000),('Argentina','Hego Amerika','Epela',45000000),('Australia','Oseania','Lehorra',25000000),('Brasil','Hego Amerika','Tropikala',214000000),('Erresuma Batua','Europa','Ozeanikoa',68000000),('Espainia','Europa','Mediterraneoa',47500000),('Frantzia','Europa','Epela',67500000),('Hego Korea','Asia','Epela',51000000),('Herbehereak','Europa','Ozeanikoa',17500000),('Italia','Europa','Mediterraneoa',60000000),('Japonia','Asia','Epela',125000000),('Kanada','Ipar Amerika','Hotza',38000000),('Mexiko','Ipar Amerika','Tropikala',128000000),('Portugal','Europa','Mediterraneoa',10300000);
/*!40000 ALTER TABLE `Herrialde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hiria`
--

DROP TABLE IF EXISTS `Hiria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hiria` (
  `HIzena` varchar(20) NOT NULL,
  `CIzena` varchar(20) DEFAULT NULL,
  `Komarka` varchar(20) DEFAULT NULL,
  `PostaKodea` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`HIzena`),
  KEY `CIzena` (`CIzena`),
  CONSTRAINT `Hiria_ibfk_1` FOREIGN KEY (`CIzena`) REFERENCES `Herrialde` (`CIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hiria`
--

LOCK TABLES `Hiria` WRITE;
/*!40000 ALTER TABLE `Hiria` DISABLE KEYS */;
INSERT INTO `Hiria` VALUES ('Amsterdam','Herbehereak','NH','1011'),('Bartzelona','Espainia','Barna','08001'),('Berlin','Alemania','BE','10115'),('Bilbo','Espainia','Bizkaia','48001'),('Bordele','Frantzia','Gironde','33000'),('Braga','Portugal','BRG','4700'),('Brasilia','Brasil','DF','70000'),('Brisbane','Australia','QLD','4000'),('Buenos Aires','Argentina','CABA','C1000'),('Busan','Hego Korea','Busan','48000'),('Cancun','Mexiko','QR','77500'),('CDMX','Mexiko','DF','06000'),('Chicago','AEB','IL','60601'),('Cordoba','Argentina','CBA','X5000'),('Daegu','Hego Korea','Daegu','41000'),('Eindhoven','Herbehereak','NB','5611'),('Faro','Portugal','FAO','8000'),('Florentzia','Italia','Toscana','50100'),('Frankfurt','Alemania','HE','60306'),('Glasgow','Erresuma Batua','SCT','G1 1QX'),('Guadalajara','Mexiko','Jalisco','44100'),('Hanburgo','Alemania','HH','20095'),('Incheon','Hego Korea','Incheon','22000'),('Kyoto','Japonia','Kansai','600-0001'),('Lisboa','Portugal','LIS','1000'),('Liverpool','Erresuma Batua','MSY','L1 0AB'),('London','Erresuma Batua','LDN','E1 6AN'),('Los Angeles','AEB','CA','90001'),('Lyon','Frantzia','Rhone','69001'),('Madril','Espainia','Madril','28001'),('Manchester','Erresuma Batua','GMC','M1 1AA'),('Marseilla','Frantzia','PACA','13001'),('Melbourne','Australia','VIC','3000'),('Mendoza','Argentina','MZA','M5500'),('Miami','AEB','FL','33101'),('Milan','Italia','Lombardia','20100'),('Monterrey','Mexiko','NL','64000'),('Montreal','Kanada','Quebec','H2Z'),('Munich','Alemania','BY','80331'),('Napoli','Italia','Campania','80100'),('New York','AEB','NY','10001'),('Osaka','Japonia','Kansai','530-0001'),('Ottawa','Kanada','Ontario','K1P'),('Paris','Frantzia','IdF','75001'),('Perth','Australia','WA','6000'),('Porto','Portugal','PRT','4000'),('Rio Janeiro','Brasil','RJ','20000'),('Roma','Italia','Lazio','00100'),('Rosario','Argentina','SF','S2000'),('Rotterdam','Herbehereak','ZH','3011'),('Salvador','Brasil','Bahia','40000'),('Sao Paulo','Brasil','SP','01000'),('Seoul','Hego Korea','Seoul','06000'),('Sevilla','Espainia','Sevilla','41001'),('Sydney','Australia','NSW','2000'),('Tokyo','Japonia','Kanto','100-0001'),('Toronto','Kanada','Ontario','M5H'),('Utrecht','Herbehereak','UT','3511'),('Vancouver','Kanada','BC','V6B'),('Yokohama','Japonia','Kanto','220-0001');
/*!40000 ALTER TABLE `Hiria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Playlist`
--

DROP TABLE IF EXISTS `Playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Playlist` (
  `PId` int NOT NULL,
  `Izena` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Playlist`
--

LOCK TABLES `Playlist` WRITE;
/*!40000 ALTER TABLE `Playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Playlist_Abestia`
--

DROP TABLE IF EXISTS `Playlist_Abestia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Playlist_Abestia` (
  `PId` int NOT NULL,
  `SId` int NOT NULL,
  PRIMARY KEY (`PId`,`SId`),
  KEY `SId` (`SId`),
  CONSTRAINT `Playlist_Abestia_ibfk_1` FOREIGN KEY (`PId`) REFERENCES `Playlist` (`PId`),
  CONSTRAINT `Playlist_Abestia_ibfk_2` FOREIGN KEY (`SId`) REFERENCES `Abestia` (`SId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Playlist_Abestia`
--

LOCK TABLES `Playlist_Abestia` WRITE;
/*!40000 ALTER TABLE `Playlist_Abestia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Playlist_Abestia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Saioa`
--

DROP TABLE IF EXISTS `Saioa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Saioa` (
  `ArtId` int NOT NULL,
  `EId` int NOT NULL,
  `PId` int NOT NULL,
  `Iraupena` time DEFAULT NULL,
  `Eguna` date DEFAULT NULL,
  `HasieraOrdua` time DEFAULT NULL,
  PRIMARY KEY (`ArtId`,`EId`,`PId`),
  KEY `EId` (`EId`),
  KEY `PId` (`PId`),
  CONSTRAINT `Saioa_ibfk_1` FOREIGN KEY (`ArtId`) REFERENCES `Abeslaria` (`ArtId`),
  CONSTRAINT `Saioa_ibfk_2` FOREIGN KEY (`EId`) REFERENCES `Antzezlekua` (`EId`),
  CONSTRAINT `Saioa_ibfk_3` FOREIGN KEY (`PId`) REFERENCES `Playlist` (`PId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Saioa`
--

LOCK TABLES `Saioa` WRITE;
/*!40000 ALTER TABLE `Saioa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Saioa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sarrerak`
--

DROP TABLE IF EXISTS `Sarrerak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sarrerak` (
  `NId` varchar(50) NOT NULL,
  `EIzena` varchar(20) DEFAULT NULL,
  `Mota` varchar(20) DEFAULT NULL,
  `Prezioa` decimal(10,2) DEFAULT NULL,
  `Izena` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NId`),
  KEY `EIzena` (`EIzena`),
  CONSTRAINT `Sarrerak_ibfk_1` FOREIGN KEY (`EIzena`) REFERENCES `Edizioa` (`EIzena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sarrerak`
--

LOCK TABLES `Sarrerak` WRITE;
/*!40000 ALTER TABLE `Sarrerak` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sarrerak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-23 18:32:16
