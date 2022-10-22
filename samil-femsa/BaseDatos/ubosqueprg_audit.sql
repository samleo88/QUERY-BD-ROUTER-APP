CREATE DATABASE  IF NOT EXISTS `ubosqueprg` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ubosqueprg`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ubosqueprg
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userId` int(5) NOT NULL,
  `operationCrud` varchar(1) NOT NULL,
  `tableName` varchar(30) NOT NULL,
  `tableId` int(20) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `addressIP` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,1,'U','user',1,'2018-11-16 20:00:49','192.168.146.1'),(2,1,'U','user',1,'2018-11-16 20:00:49','192.168.146.1'),(3,1,'U','user',1,'2018-11-16 20:17:57','192.168.146.1'),(4,1,'U','user',1,'2018-11-16 20:18:00','192.168.146.1'),(5,1,'U','user',1,'2018-11-16 20:31:41','192.168.146.1'),(6,1,'U','user',1,'2018-11-16 20:31:57','192.168.146.1'),(7,1,'U','user',1,'2018-11-16 20:32:05','192.168.146.1'),(8,1,'U','user',1,'2018-11-16 20:35:37','192.168.146.1'),(9,1,'C','user',1,'2018-11-16 20:37:04','192.168.146.1'),(10,1,'U','user',1,'2018-11-16 20:37:10','192.168.146.1'),(11,1,'U','user',1,'2018-11-16 20:37:19','192.168.146.1'),(12,1,'U','user',1,'2018-11-16 20:37:29','192.168.146.1'),(13,1,'U','user',1,'2018-11-16 20:37:45','192.168.146.1'),(14,1,'U','user',1,'2018-11-16 20:37:45','192.168.146.1'),(15,1,'U','user',1,'2018-11-16 20:37:54','192.168.146.1'),(16,1,'U','user',1,'2018-11-16 20:49:56','192.168.146.1'),(17,1,'U','user',1,'2018-11-16 20:49:56','192.168.146.1'),(18,1,'U','user',1,'2018-11-16 21:10:24','192.168.146.1'),(19,1,'U','user',1,'2018-11-16 21:11:24','192.168.146.1'),(20,1,'U','user',1,'2018-11-16 21:14:10','192.168.146.1'),(21,1,'U','user',1,'2018-11-16 21:14:10','192.168.146.1'),(22,1,'U','user',1,'2018-11-16 21:23:18','192.168.146.1'),(23,1,'U','user',1,'2018-11-16 21:23:18','192.168.146.1'),(24,1,'U','user',1,'2018-11-16 21:27:12','192.168.146.1'),(25,1,'U','user',1,'2018-11-16 21:27:12','192.168.146.1'),(26,1,'U','user',1,'2018-11-16 21:34:42','192.168.146.1'),(27,1,'U','user',1,'2018-11-16 21:34:42','192.168.146.1'),(28,1,'U','user',1,'2018-11-16 22:13:31','192.168.146.1'),(29,2,'U','user',1,'2018-11-16 22:13:31','192.168.146.1'),(30,2,'C','user',1,'2018-11-16 22:16:43','192.168.146.1'),(31,2,'U','user',1,'2018-11-16 22:16:49','192.168.146.1'),(32,2,'U','user',1,'2018-11-16 22:16:49','192.168.146.1'),(33,2,'C','entryoutput',1,'2018-11-16 22:16:56','192.168.146.1'),(34,2,'C','qrcode',1,'2018-11-16 22:16:56','192.168.146.1'),(35,2,'U','entryoutput',1,'2018-11-16 22:16:57','192.168.146.1'),(36,2,'U','user',1,'2018-11-16 22:17:21','192.168.146.1'),(37,2,'U','user',1,'2018-11-16 22:17:39','192.168.146.1');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 22:22:58
