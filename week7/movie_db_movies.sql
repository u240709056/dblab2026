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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` tinyint unsigned NOT NULL,
  `title` varchar(90) NOT NULL,
  `ranking` tinyint unsigned NOT NULL,
  `rating` float unsigned NOT NULL,
  `year` year NOT NULL,
  `votes` mediumint unsigned NOT NULL,
  `duration` smallint unsigned NOT NULL,
  `oscars` tinyint unsigned DEFAULT NULL,
  `budget` int unsigned NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Shawshank Redemption',1,9.3,1994,964026,142,0,25000000),(2,'The Godfather',2,9.2,1972,686665,175,3,6000000),(3,'The Godfather: Part 2',3,9,1974,443397,200,6,13000000),(4,'Pulp Fiction',4,9,1994,749929,154,1,8000000),(5,'Il buono, il brutto, il cattivo.',5,9,1966,292458,161,1,1200000),(6,'12 Angry Men',6,8.9,1957,236958,96,0,350000),(7,'The Dark Knight',7,9,2008,937710,152,2,185000000),(8,'Schindler’s List',8,8.9,1993,494277,195,7,25000000),(9,'The Lord of the Rings: The Return of the King',9,8.9,2003,688334,201,11,94000000),(10,'Fight Club',10,8.9,1999,733668,139,0,63000000),(11,'Star Wars: Episode 5 – The Empire Strikes',11,8.8,1980,472269,124,1,18000000),(12,'The Lord of the Rings: The Fellowship of the Ring',12,8.8,2001,713058,178,4,93000000),(13,'One Flew Over the Cuckoo’s Nest',13,8.8,1975,402804,133,5,4400000),(14,'Inception',14,8.8,2010,752871,148,4,160000000),(15,'Goodfellas',15,8.8,1990,420360,146,1,25000000),(16,'Star Wars',16,8.8,1977,529356,121,6,11000000),(17,'Shichinin no samurai',17,8.8,1954,149094,207,0,2000000),(18,'Forrest Gump',18,8.7,1994,634110,142,6,55000000),(19,'The Matrix',19,8.7,1999,695310,136,4,63000000),(20,'The Lord of the Rings: The Two Towers',20,8.7,2002,617954,179,2,94000000);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
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
