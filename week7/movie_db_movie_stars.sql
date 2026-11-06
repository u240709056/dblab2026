CREATE DATABASE  IF NOT EXISTS `movie_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movie_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: movie_db
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.22.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movie_stars`
--

DROP TABLE IF EXISTS `movie_stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_stars` (
  `movie_id` tinyint unsigned NOT NULL,
  `star_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`movie_id`,`star_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_stars`
--

LOCK TABLES `movie_stars` WRITE;
/*!40000 ALTER TABLE `movie_stars` DISABLE KEYS */;
INSERT INTO `movie_stars` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,5),(3,7),(3,8),(4,9),(4,10),(4,11),(5,12),(5,13),(5,14),(6,15),(6,16),(6,17),(7,18),(7,19),(7,20),(8,21),(8,22),(8,23),(9,24),(9,25),(9,26),(10,27),(10,28),(10,29),(11,30),(11,31),(11,32),(12,24),(12,33),(12,34),(13,35),(13,36),(13,37),(14,38),(14,39),(14,40),(15,41),(15,42),(15,43),(16,30),(16,31),(16,32),(17,44),(17,45),(17,46),(18,47),(18,48),(18,49),(19,50),(19,51),(19,52),(20,24),(20,25),(20,26);
/*!40000 ALTER TABLE `movie_stars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-06 12:29:38
