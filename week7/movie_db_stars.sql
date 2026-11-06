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
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stars` (
  `star_id` smallint unsigned NOT NULL,
  `country_id` tinyint unsigned NOT NULL,
  `star_name` varchar(45) NOT NULL,
  PRIMARY KEY (`star_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES (1,1,'Tim Robbins'),(2,1,'Morgan Freeman'),(3,1,'Bob Gunton'),(4,1,'Marlon Brando'),(5,1,'Al Pacino'),(6,1,'James Caan'),(7,1,'Robert Duvall'),(8,1,'Diane Keaton'),(9,1,'John Travolta'),(10,1,'Samuel L. Jackson'),(11,3,'Bruce Willis'),(12,1,'Eli Wallach'),(13,1,'Clint Eastwood'),(14,1,'Lee Van Cleef'),(15,1,'Martin Balsam'),(16,1,'John Fieldler'),(17,1,'Lee J. Cobb'),(18,6,'Christian Bale'),(19,1,'Heath Ledger'),(20,1,'Aaron Eckhart'),(21,6,'Liam Neeson'),(22,6,'Ben Kingsley'),(23,6,'Ralph Fiennes'),(24,6,'Orlando Bloom'),(25,6,'Ian McKellen'),(26,1,'Viggo Mortensen'),(27,1,'Edward Norton'),(28,1,'Brad Pitt'),(29,6,'Helena Bonham Carter'),(30,1,'Mark Hamill'),(31,1,'Harrison Ford'),(32,1,'Carrie Fisher'),(33,1,'Elijah Wood'),(34,6,'Sean Bean'),(35,1,'Michael Berryman'),(36,1,'Peter Brocco'),(37,1,'Louise Fletcher'),(38,1,'Leonardo DiCaprio'),(39,1,'Joseph Gordon-Levitt'),(40,9,'Ellen Page'),(41,1,'Robert De Niro'),(42,1,'Ray Liotta'),(43,1,'Joe Pesci'),(44,10,'Toshiro Mifune'),(45,10,'Takashi Shimura'),(46,10,'Keiko Tsushima'),(47,1,'Tom Hanks'),(48,1,'Sally Field'),(49,1,'Robin Wright'),(50,12,'Keanu Reeves'),(51,1,'Laurence Fishburne'),(52,9,'Carrie-Anne Moss');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
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
