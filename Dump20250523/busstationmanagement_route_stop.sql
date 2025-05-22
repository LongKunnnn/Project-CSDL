CREATE DATABASE  IF NOT EXISTS `busstationmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `busstationmanagement`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: busstationmanagement
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `route_stop`
--

DROP TABLE IF EXISTS `route_stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_stop` (
  `RouteID` varchar(10) NOT NULL,
  `StopID` varchar(10) DEFAULT NULL,
  `StopOrder` int NOT NULL,
  PRIMARY KEY (`RouteID`,`StopOrder`),
  KEY `StopID` (`StopID`),
  CONSTRAINT `route_stop_ibfk_1` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`),
  CONSTRAINT `route_stop_ibfk_2` FOREIGN KEY (`StopID`) REFERENCES `busstop` (`StopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_stop`
--

LOCK TABLES `route_stop` WRITE;
/*!40000 ALTER TABLE `route_stop` DISABLE KEYS */;
INSERT INTO `route_stop` VALUES ('R001','S001',1),('R005','S001',1),('R008','S001',1),('R013','S001',1),('R001','S002',2),('R006','S002',1),('R009','S002',3),('R015','S002',1),('R001','S003',3),('R005','S003',2),('R007','S003',1),('R011','S003',1),('R001','S004',4),('R006','S004',2),('R010','S004',1),('R013','S004',2),('R002','S005',1),('R005','S005',3),('R007','S005',2),('R009','S005',4),('R012','S005',1),('R015','S005',2),('R002','S006',2),('R008','S006',2),('R010','S006',2),('R014','S006',1),('R002','S007',3),('R005','S007',4),('R006','S007',3),('R011','S007',2),('R002','S008',4),('R007','S008',3),('R010','S008',4),('R013','S008',3),('R003','S009',1),('R006','S009',4),('R011','S009',3),('R014','S009',2),('R007','S010',4),('R012','S010',2),('R014','S010',4),('R003','S011',2),('R004','S011',4),('R008','S011',3),('R011','S011',4),('R015','S011',3),('R003','S012',3),('R004','S012',2),('R008','S012',4),('R012','S012',3),('R009','S013',1),('R014','S013',3),('R004','S014',1),('R010','S014',3),('R012','S014',4),('R015','S014',4),('R003','S015',4),('R004','S015',3),('R009','S015',2),('R013','S015',4);
/*!40000 ALTER TABLE `route_stop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23  0:12:12
