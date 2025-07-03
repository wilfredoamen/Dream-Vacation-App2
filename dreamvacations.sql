-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: dreamvacations
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `population` bigint DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinations`
--

LOCK TABLES `destinations` WRITE;
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
INSERT INTO `destinations` VALUES (3,'Nigeria','Abuja',206139587,'Africa'),(4,'USA','Washington, D.C.',329484123,'Americas'),(5,'Ghana','Accra',31072945,'Africa'),(6,'Togo','Lomé',8278737,'Africa'),(7,'India','New Delhi',1380004385,'Asia'),(8,'Canada','Ottawa',38005238,'Americas'),(9,'Russia','Moscow',144104080,'Europe'),(10,'United kingdom','London',67215293,'Europe'),(11,'Chile','Santiago',19116209,'Americas'),(12,'France','Paris',67391582,'Europe'),(13,'Argentina','Buenos Aires',45376763,'Americas'),(14,'Algeria','Algiers',44700000,'Africa'),(15,'Estonia','Tallinn',1331057,'Europe'),(16,'Cape Verde','Praia',555988,'Africa'),(17,'Ireland','London',67215293,'Europe'),(18,'Iceland','Reykjavik',366425,'Europe'),(19,'Finland','Helsinki',5530719,'Europe'),(20,'South Africa','Pretoria',59308690,'Africa'),(21,'Qatar','Doha',2881060,'Asia'),(22,'Poland','Warsaw',37950802,'Europe'),(23,'Philippines','Manila',109581085,'Asia'),(24,'Panama','Panama City',4314768,'Americas'),(25,'Senegal','Dakar',16743930,'Africa'),(26,'Romania','Bucharest',19286123,'Europe'),(27,'Taiwan','Taipei',23503349,'Asia'),(28,'Sri Lanka','Sri Jayawardenepura Kotte',21919000,'Asia'),(29,'brazil','Brasília',212559409,'Americas'),(30,'brazil','Brasília',212559409,'Americas'),(31,'Denmark','Copenhagen',5831404,'Europe'),(32,'Estonia','Tallinn',1331057,'Europe'),(33,'Lithuania','Vilnius',2794700,'Europe'),(34,'Norway','Oslo',5379475,'Europe'),(35,'Iraq','Baghdad',40222503,'Asia'),(36,'Iran','Tehran',83992953,'Asia'),(37,'SA','Basseterre',53192,'Americas'),(38,'SA','Basseterre',53192,'Americas'),(39,'Iraq','Baghdad',40222503,'Asia'),(40,'Iran','Tehran',83992953,'Asia'),(41,'South Africa','Pretoria',59308690,'Africa');
/*!40000 ALTER TABLE `destinations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 16:37:28
