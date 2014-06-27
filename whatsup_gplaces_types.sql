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
-- Table structure for table `gplaces_types`
--

DROP TABLE IF EXISTS `gplaces_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gplaces_types` (
  `pk_types_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `name_eng` varchar(45) NOT NULL,
  `name_esp` varchar(45) NOT NULL,
  PRIMARY KEY (`pk_types_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `name_esp_UNIQUE` (`name_esp`),
  UNIQUE KEY `name_eng_UNIQUE` (`name_eng`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gplaces_types`
--

LOCK TABLES `gplaces_types` WRITE;
/*!40000 ALTER TABLE `gplaces_types` DISABLE KEYS */;
INSERT INTO `gplaces_types` VALUES (1,'amusement_park','Amusement park','Parque de diversiones'),(2,'aquarium','Aquarium','Acuario'),(3,'art_gallery','Art gallery','Galería de Arte'),(4,'bar','Bar','Bar'),(5,'beauty_salon','Beauty Salon','Salón de Belleza'),(6,'book_store','Book store','Tienda de Libros'),(7,'bowling_alley','Bowling alley','Bolos'),(8,'cafe','Cafe','Café'),(9,'campground','Camping','Terreno de camping'),(10,'casino','Casino','Casino'),(11,'church','Church','Iglesia'),(12,'clothing_store','Clothing store','Tienda de ropa'),(13,'department_store','Department store','Tienda por departamentos'),(14,'establishment','Establishment','Establecimiento'),(15,'food','Food','Comida'),(16,'furniture_store','Furniture store','Tienda de muebles'),(17,'grocery_or_supermarket','Grocery or supermarket','Bodega o tienda de comestibles'),(18,'gym','Gym','Gimnasio'),(19,'hardware_store','Hardware store','Ferretería'),(20,'home_goods_store','Home goods store','Tienda de artítulos para el hogar'),(21,'movie_theater','Movie theater','Cine'),(22,'museum','Museum','Museo'),(23,'night_club','Night club','Club nocturno o discoteca'),(24,'park','Park','Parque'),(25,'restaurant','Restaurant','Restaurant'),(26,'shoe_store','Shoe store','Zapatería'),(27,'shopping_mall','Shopping mall','Centro comercial'),(28,'spa','Spa','Spa'),(29,'store','Store','Tienda'),(30,'zoo','Zoo','Zoológico');
/*!40000 ALTER TABLE `gplaces_types` ENABLE KEYS */;
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
