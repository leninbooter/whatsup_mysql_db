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
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specials` (
  `pk_special` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `fk_place_id` int(10) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `currency_simbol` varchar(5) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `sunday` bit(1) DEFAULT NULL,
  `monday` bit(1) DEFAULT NULL,
  `tuesday` bit(1) DEFAULT NULL,
  `wednsday` bit(1) DEFAULT NULL,
  `thursday` bit(1) DEFAULT NULL,
  `friday` bit(1) DEFAULT NULL,
  `saturday` bit(1) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`pk_special`),
  UNIQUE KEY `pk_special_UNIQUE` (`pk_special`),
  KEY `idx_from_date` (`fk_place_id`,`from_date`,`to_date`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,'Firma Autógrafos de Chino y Nacho',11051,NULL,NULL,'2014-06-24 00:00:00','2014-06-24 23:59:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/whatsup/places_images/30184358.png'),(2,'Jornada de Cedulación',11051,NULL,NULL,'2014-06-24 09:00:00','2014-06-28 15:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Jornada de Cartas Médicas',11051,NULL,NULL,'2014-06-24 09:00:00','2014-07-24 15:00:00',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
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
