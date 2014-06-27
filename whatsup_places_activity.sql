CREATE DATABASE  IF NOT EXISTS `whatsup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `whatsup`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: whatsup
-- ------------------------------------------------------
-- Server version	5.6.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `places_activity`
--

DROP TABLE IF EXISTS `places_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_activity` (
  `pk_pla_act_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_place_id` int(10) unsigned NOT NULL,
  `fullness` int(10) unsigned DEFAULT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`pk_pla_act_id`),
  UNIQUE KEY `fk_place_id_UNIQUE` (`fk_place_id`),
  KEY `fk_place_id<-places_idx` (`fk_place_id`),
  CONSTRAINT `fk_place_id<-places` FOREIGN KEY (`fk_place_id`) REFERENCES `places` (`pk_place_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_activity`
--

LOCK TABLES `places_activity` WRITE;
/*!40000 ALTER TABLE `places_activity` DISABLE KEYS */;
INSERT INTO `places_activity` VALUES (2,10981,190,NULL),(3,11051,255,NULL),(4,11080,110,NULL),(5,11572,350,NULL),(9,10980,19,NULL),(10,10985,10,NULL),(11,11580,499,NULL),(12,11081,40,NULL);
/*!40000 ALTER TABLE `places_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-27 14:10:49
