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
-- Table structure for table `busstop`
--

DROP TABLE IF EXISTS `busstop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busstop` (
  `StopID` varchar(10) NOT NULL,
  `StopName` varchar(100) NOT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busstop`
--

LOCK TABLES `busstop` WRITE;
/*!40000 ALTER TABLE `busstop` DISABLE KEYS */;
INSERT INTO `busstop` VALUES ('S001','Trạm 1','Ngã 3 Trường Chinh'),('S002','Trạm 2','Ngã tư sở'),('S003','Trạm 3','Đại học Quốc Gia'),('S004','Trạm 4','Phạm Văn Đồng'),('S005','Trạm 5','Văn Miếu - Quốc Tử Giám'),('S006','Trạm 6','Nhà Hát Lớn'),('S007','Trạm 7','Lạc Long Quân'),('S008','Trạm 8','Đại lộ Thăng Long'),('S009','Trạm 9','Ngã tư Khuất Duy Tiến'),('S010','Trạm 10','Nguyễn Xiển - Thanh Xuân'),('S011','Trạm 11','Láng Hạ'),('S012','Trạm 12','Nhổn'),('S013','Trạm 13','Văn Quán'),('S014','Trạm 14','Long Biên'),('S015','Trạm 15','Aeon Mall Hà Đông');
/*!40000 ALTER TABLE `busstop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23  0:12:11
