CREATE DATABASE  IF NOT EXISTS `brubank_martinucci` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `brubank_martinucci`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: brubank_martinucci
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Temporary view structure for view `alertatransacciones`
--

DROP TABLE IF EXISTS `alertatransacciones`;
/*!50001 DROP VIEW IF EXISTS `alertatransacciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `alertatransacciones` AS SELECT 
 1 AS `id_trans`,
 1 AS `amount`,
 1 AS `id_client`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `name_client` varchar(30) NOT NULL,
  `lastname_client` varchar(30) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `id_card` int NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ricardo','Robino','32400540','2000-10-05',1021),(2,'Lautaro','Tabu','40400300','1999-12-25',1022),(3,'Dante','Manucci','40400301','1999-09-18',1023),(4,'Sabina','Ailen','51050001','1999-09-19',1024),(5,'Leandro','Paredes','51050002','1999-04-18',1025),(6,'Juan Manuel','Faggio','51050003','1996-09-22',1026),(7,'Manuel','Acosta','51050004','1994-10-19',1027),(8,'Federico','Romero','51050005','1990-02-11',1028),(9,'Chope','Romero','21504609','1991-09-18',1029),(10,'Agustin','Lijo','23509199','1959-09-18',1030);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientesbsas`
--

DROP TABLE IF EXISTS `clientesbsas`;
/*!50001 DROP VIEW IF EXISTS `clientesbsas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientesbsas` AS SELECT 
 1 AS `name_client`,
 1 AS `lastname_client`,
 1 AS `dni`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `acc_type` varchar(20) NOT NULL,
  `id_client` int NOT NULL,
  `name_client` varchar(30) NOT NULL,
  `lastname_client` varchar(30) NOT NULL,
  PRIMARY KEY (`acc_type`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clientes` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES ('Gold',5,'Leandro','Paredes'),('Normal',1,'Ricardo','Robino'),('Platinum',6,'Juan Manuel','Faggio'),('Teen',2,'Lautaro','Tabu');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `historialtransftotal`
--

DROP TABLE IF EXISTS `historialtransftotal`;
/*!50001 DROP VIEW IF EXISTS `historialtransftotal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historialtransftotal` AS SELECT 
 1 AS `clientes`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `trans`,
 1 AS `monto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `miembros`
--

DROP TABLE IF EXISTS `miembros`;
/*!50001 DROP VIEW IF EXISTS `miembros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `miembros` AS SELECT 
 1 AS `name_client`,
 1 AS `lastname_client`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `miembrosmayores`
--

DROP TABLE IF EXISTS `miembrosmayores`;
/*!50001 DROP VIEW IF EXISTS `miembrosmayores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `miembrosmayores` AS SELECT 
 1 AS `acc_type`,
 1 AS `id_client`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `id_loan` int NOT NULL AUTO_INCREMENT,
  `quote_n` int NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `expiration_date` date NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_loan`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clientes` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (400,1,1000,'2023-02-01',1),(401,4,2000,'2023-02-01',2),(402,5,3000,'2023-02-01',3),(403,12,6700,'2023-02-01',4),(404,6,700,'2023-02-02',5),(405,8,500,'2023-02-03',6),(406,5,3000,'2023-02-04',7),(407,15,6000,'2023-02-05',8),(408,2,1000,'2023-02-06',9),(409,1,2000,'2023-02-01',10);
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta` (
  `id_card` int NOT NULL AUTO_INCREMENT,
  `acc_type` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_card`),
  KEY `acc_type` (`acc_type`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `tarjeta_ibfk_1` FOREIGN KEY (`acc_type`) REFERENCES `cuenta` (`acc_type`),
  CONSTRAINT `tarjeta_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clientes` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1021,'Normal','Buenos Aires',1),(1022,'Teen','Cordoba',2),(1023,'Teen','Neuquen',3),(1024,'Teen','Salta',4),(1025,'Gold','Buenos Aires',5),(1026,'Platinum','Cordoba',6),(1027,'Normal','Tucuman ',7),(1028,'Gold','Tucuman ',8),(1029,'Gold','Cordoba',9),(1030,'Platinum','Buenos Aires',10);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id_trans` int NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_trans`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clientes` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (4,'2022-10-08 00:00:00',909,4),(5,'2022-10-09 00:00:00',909,5),(6,'2022-10-10 00:00:00',909,6),(7,'2022-10-11 00:00:00',909,7),(8,'2022-10-12 00:00:00',909,8),(9,'2022-10-13 00:00:00',909,9),(10,'2022-10-14 00:00:00',909,10);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'brubank_martinucci'
--
/*!50003 DROP FUNCTION IF EXISTS `dniclient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `dniclient`(id_client_param INT) RETURNS int
    DETERMINISTIC
BEGIN 
        DECLARE c_dni int;
        SELECT dni
        INTO c_dni
        FROM clientes
        WHERE id_client = id_client_param;
        RETURN c_dni;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fullname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fullname`(
    id_hues_param INT
    ) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN 
        DECLARE fullname VARCHAR (100);
        SELECT name_hues
        INTO fullname
        FROM huesped 
        WHERE id_hues = id_hues_param;
        RETURN fullname;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clientes_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clientes_sp`()
BEGIN
    SELECT * FROM clientes;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `alertatransacciones`
--

/*!50001 DROP VIEW IF EXISTS `alertatransacciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alertatransacciones` AS select `transacciones`.`id_trans` AS `id_trans`,`transacciones`.`amount` AS `amount`,`transacciones`.`id_client` AS `id_client` from `transacciones` where (`transacciones`.`amount` > 1000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientesbsas`
--

/*!50001 DROP VIEW IF EXISTS `clientesbsas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientesbsas` AS select `c`.`name_client` AS `name_client`,`c`.`lastname_client` AS `lastname_client`,`c`.`dni` AS `dni` from (`clientes` `c` join `tarjeta` `t` on((`c`.`id_client` = `t`.`id_client`))) where (`t`.`branch` like '%Buenos Aires%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historialtransftotal`
--

/*!50001 DROP VIEW IF EXISTS `historialtransftotal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historialtransftotal` AS select `c`.`id_client` AS `clientes`,`c`.`name_client` AS `nombre`,`c`.`lastname_client` AS `apellido`,`t`.`id_trans` AS `trans`,`t`.`amount` AS `monto` from (`clientes` `c` join `transacciones` `t` on((`c`.`id_client` = `t`.`id_client`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `miembros`
--

/*!50001 DROP VIEW IF EXISTS `miembros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `miembros` AS select `clientes`.`name_client` AS `name_client`,`clientes`.`lastname_client` AS `lastname_client` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `miembrosmayores`
--

/*!50001 DROP VIEW IF EXISTS `miembrosmayores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `miembrosmayores` AS select `tarjeta`.`acc_type` AS `acc_type`,`tarjeta`.`id_client` AS `id_client` from `tarjeta` where (not((`tarjeta`.`acc_type` like '%teen%'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 22:05:36
