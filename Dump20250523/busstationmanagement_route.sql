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
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `RouteID` varchar(10) NOT NULL,
  `RouteName` varchar(100) NOT NULL,
  `StartPoint` varchar(100) NOT NULL,
  `EndPoint` varchar(100) NOT NULL,
  `Distance` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`RouteID`),
  CONSTRAINT `route_chk_1` CHECK ((`Distance` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('R001','Tuyến 1','Bến xe A','Bến xe B',15.50),('R002','Tuyến 1','Bến xe A','Bến xe B',16.50),('R003','Tuyến 1','Bến xe A','Bến xe B',17.50),('R004','Tuyến 1','Bến xe A','Bến xe B',18.50),('R005','Tuyến 1','Bến xe A','Bến xe B',19.50),('R006','Tuyến 2','Bến xe B','Bến xe A',15.50),('R007','Tuyến 2','Bến xe B','Bến xe A',15.40),('R008','Tuyến 2','Bến xe B','Bến xe A',15.30),('R009','Tuyến 2','Bến xe B','Bến xe A',17.50),('R010','Tuyến 1','Bến xe A','Bến xe B',11.50),('R011','Tuyến 1','Bến xe A','Bến xe B',14.50),('R012','Tuyến 1','Bến xe A','Bến xe B',15.50),('R013','Tuyến 2','Bến xe B','Bến xe A',15.40),('R014','Tuyến 2','Bến xe B','Bến xe A',15.30),('R015','Tuyến 1','Bến xe A','Bến xe B',15.50);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
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
