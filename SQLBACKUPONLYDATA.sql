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
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ricardo','Robino','32400540','2000-10-05',1021),(2,'Lautaro','Tabu','40400300','1999-12-25',1022),(3,'Dante','Manucci','40400301','1999-09-18',1023),(4,'Sabina','Ailen','51050001','1999-09-19',1024),(5,'Leandro','Paredes','51050002','1999-04-18',1025),(6,'Juan Manuel','Faggio','51050003','1996-09-22',1026),(7,'Manuel','Acosta','51050004','1994-10-19',1027),(8,'Federico','Romero','51050005','1990-02-11',1028),(9,'Chope','Romero','21504609','1991-09-18',1029),(10,'Agustin','Lijo','23509199','1959-09-18',1030);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES ('Gold',5,'Leandro','Paredes'),('Normal',1,'Ricardo','Robino'),('Platinum',6,'Juan Manuel','Faggio'),('Teen',2,'Lautaro','Tabu');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (400,1,1000,'2023-02-01',1),(401,4,2000,'2023-02-01',2),(402,5,3000,'2023-02-01',3),(403,12,6700,'2023-02-01',4),(404,6,700,'2023-02-02',5),(405,8,500,'2023-02-03',6),(406,5,3000,'2023-02-04',7),(407,15,6000,'2023-02-05',8),(408,2,1000,'2023-02-06',9),(409,1,2000,'2023-02-01',10);
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1021,'Normal','Buenos Aires',1),(1022,'Teen','Cordoba',2),(1023,'Teen','Neuquen',3),(1024,'Teen','Salta',4),(1025,'Gold','Buenos Aires',5),(1026,'Platinum','Cordoba',6),(1027,'Normal','Tucuman ',7),(1028,'Gold','Tucuman ',8),(1029,'Gold','Cordoba',9),(1030,'Platinum','Buenos Aires',10);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (4,'2022-10-08 00:00:00',909,4),(5,'2022-10-09 00:00:00',909,5),(6,'2022-10-10 00:00:00',909,6),(7,'2022-10-11 00:00:00',909,7),(8,'2022-10-12 00:00:00',909,8),(9,'2022-10-13 00:00:00',909,9),(10,'2022-10-14 00:00:00',909,10);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 22:09:36
