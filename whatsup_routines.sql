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
-- Dumping events for database 'whatsup'
--

--
-- Dumping routines for database 'whatsup'
--
/*!50003 DROP PROCEDURE IF EXISTS `fix_coordinates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fix_coordinates`()
BEGIN
declare last_id integer;
declare first_id integer;
declare new_value geometry;
set last_id = (select max(pk_place_id) FROM places);
set first_id = (select min(pk_place_id) FROM places);
WHILE last_id >= first_id do
	SET new_value = (SELECT geolocation FROM places WHERE pk_place_id = last_id - 1);
	UPDATE places SET geolocation = new_value WHERE pk_place_id = last_id;
	SET last_id = last_id - 1;
END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_hot_places_from` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_hot_places_from`(IN city_id INT)
BEGIN
	SELECT p.pk_place_id, p.name, AsText(p.geolocation) as 'geolocation', p.gp_formatted_address, p.gp_icon, p.gp_url_website, p.capacity, pa.fullness - p.people_margin as 'fullness'
	FROM places p INNER JOIN places_activity pa ON p.pk_place_id = pa.fk_place_id
	WHERE p.fk_city_id = city_id; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_specials_of` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_specials_of`(place_id_in int, datetime_in datetime)
BEGIN
DECLARE s binary;
DECLARE m binary;
DECLARE t binary;
DECLARE w binary;
DECLARE th binary;
DECLARE f binary;
DECLARE sa binary;

	CASE DAYOFWEEK(datetime_in)
		WHEN 1 THEN SET s = 1;
		WHEN 2 THEN SET m = 1;
		WHEN 3 THEN SET t = 1;
		WHEN 4 THEN SET w = 1;
		WHEN 5 THEN SET th = 1;
		WHEN 6 THEN SET f = 1;
		WHEN 7 THEN SET sa = 1;
	END CASE;

	SELECT title, price, currency_simbol, code, image, DATE_FORMAT(from_date, "%d/%m/%Y (%l:%i %p)") as "from_date", DATE_FORMAT(to_date, "%d/%m/%Y (%l:%i %p)") as "to_date", sunday, monday, tuesday, wednsday, thursday, friday, saturday FROM specials WHERE (from_date <= datetime_in AND to_date >= datetime_in) AND (
		(
			sunday is null and	monday is null and tuesday is null and wednsday is null and thursday is null and friday is null and saturday is null
		)
		OR 
		( 
			sunday = s or	monday = m or tuesday = t or wednsday = w or thursday = th or friday = f or saturday = sa
		)
	)
	AND
	fk_place_id = place_id_in;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_types` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_types`()
BEGIN
	SELECT pk_types_id, name FROM gplaces_types;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_place` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_place`(IN gp_id varchar(100), IN gp_reference varchar(512),  IN lat varchar(45), IN lng varchar(45), IN gp_type INT)
BEGIN
DECLARE last_id, new_place_id bigint;
SET last_id = last_insert_id();


	INSERT IGNORE INTO places (geolocation, gp_id, gp_reference)
		VALUES (GeomFromText(concat('POINT(',lng, ' ' , lat ,')')), gp_id, gp_reference);

	if last_insert_id() > 0  and last_id <> last_insert_id() then
		SET new_place_id = last_insert_id();
		INSERT INTO places_types (fk_place_id, fk_type_id) VALUES (new_place_id, gp_type);
		SELECT new_place_id as 'result' FROM DUAL;
	else
		SELECT "old" as 'result' FROM DUAL;
	END if;
				
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_place` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_place`(IN pk_place_id_in INT, IN name_in varchar(45), IN gp_formatted_address_in varchar(255), IN gp_icon_in varchar(255), IN people_margin_in INT ,IN gp_url_website_in varchar(255) )
BEGIN
	UPDATE places SET name = ifnull(name_in,name), gp_formatted_address = IFNULL(gp_formatted_address_in,gp_formatted_address), gp_icon = IFNULL(gp_icon_in,gp_icon), people_margin = ifnull(people_margin_in, people_margin), gp_url_website = ifnull(gp_url_website_in,gp_url_website) WHERE pk_place_id = pk_place_id_in + 1080;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-27 14:10:51
