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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `AssignmentID` varchar(10) NOT NULL,
  `BusID` varchar(10) DEFAULT NULL,
  `DriverID` varchar(10) DEFAULT NULL,
  `RouteID` varchar(10) DEFAULT NULL,
  `AssignmentDate` date NOT NULL,
  PRIMARY KEY (`AssignmentID`),
  KEY `BusID` (`BusID`),
  KEY `DriverID` (`DriverID`),
  KEY `RouteID` (`RouteID`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `bus` (`BusID`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`DriverID`) REFERENCES `driver` (`DriverID`),
  CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES ('A001','B001','D001','R001','2024-01-01'),('A002','B002','D002','R002','2024-01-04'),('A003','B003','D003','R003','2024-01-07'),('A004','B004','D004','R004','2024-01-10'),('A005','B005','D005','R005','2024-02-01'),('A006','B006','D006','R006','2024-02-05'),('A007','B007','D007','R007','2024-02-09'),('A008','B008','D008','R008','2024-03-03'),('A009','B009','D009','R009','2024-03-06'),('A010','B010','D010','R010','2024-04-06'),('A011','B011','D011','R011','2024-04-10'),('A012','B012','D012','R012','2025-01-11'),('A013','B013','D013','R013','2025-01-15'),('A014','B014','D014','R014','2025-04-01'),('A015','B015','D015','R015','2025-08-15');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
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
