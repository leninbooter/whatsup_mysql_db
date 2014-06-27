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
-- Table structure for table `places_pictures`
--

DROP TABLE IF EXISTS `places_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_pictures` (
  `pk_picture` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gp_reference` varchar(512) DEFAULT NULL,
  `fk_place_id` int(10) unsigned NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `source` varchar(1024) DEFAULT NULL,
  `gp_html_attributions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_picture`),
  UNIQUE KEY `pk_picture_UNIQUE` (`pk_picture`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_pictures`
--

LOCK TABLES `places_pictures` WRITE;
/*!40000 ALTER TABLE `places_pictures` DISABLE KEYS */;
INSERT INTO `places_pictures` VALUES (1,NULL,11051,NULL,'/whatsup/places_images/sambil1.png',NULL),(2,NULL,11051,NULL,'/whatsup/places_images/sambil1.png',NULL),(3,NULL,11051,'2013-12-01 13:00:00','/whatsup/places_images/GetImage1.png',NULL),(4,NULL,11051,'2013-12-01 13:30:00','/whatsup/places_images/GetImage2.png',NULL),(5,NULL,11051,'2013-12-01 14:00:00','/whatsup/places_images/GetImage3.png',NULL);
/*!40000 ALTER TABLE `places_pictures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-27 14:10:50
