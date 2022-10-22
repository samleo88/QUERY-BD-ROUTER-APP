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
-- Table structure for table `qrcode`
--

DROP TABLE IF EXISTS `qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrcode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qrCode` varchar(600) NOT NULL,
  `dateStart` datetime NOT NULL,
  `dateEnd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrcode`
--

LOCK TABLES `qrcode` WRITE;
/*!40000 ALTER TABLE `qrcode` DISABLE KEYS */;
INSERT INTO `qrcode` VALUES (1,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-10 02:32:32','2018-11-10 02:32:32'),(2,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-10 02:38:37','2018-11-10 02:38:37'),(3,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-10 02:40:28','2018-11-10 02:40:28'),(4,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-10 03:27:33','2018-11-10 03:27:33'),(5,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-10 04:35:12','2018-11-10 04:35:12'),(6,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-10 04:44:41','2018-11-10 04:44:41'),(7,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 11:47:17','2018-11-12 11:47:17'),(8,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 12:27:49','2018-11-12 12:27:49'),(9,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 12:29:56','2018-11-12 12:29:56'),(10,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 13:21:47','2018-11-12 13:21:47'),(11,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 13:30:10','2018-11-12 13:30:10'),(12,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 19:50:40','2018-11-12 19:50:40'),(13,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 20:43:53','2018-11-12 20:43:53'),(14,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 21:45:25','2018-11-12 21:45:25'),(15,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 21:52:40','2018-11-12 21:52:40'),(16,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 21:57:07','2018-11-12 21:57:07'),(17,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 22:11:30','2018-11-12 22:11:30'),(18,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 22:15:11','2018-11-12 22:15:11'),(19,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 22:20:35','2018-11-12 22:20:35'),(20,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 22:20:43','2018-11-12 22:20:43'),(21,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 22:26:52','2018-11-12 22:26:52'),(22,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 22:43:42','2018-11-12 22:43:42'),(23,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 23:05:58','2018-11-12 23:05:58'),(24,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 23:08:39','2018-11-12 23:08:39'),(25,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-12 23:11:13','2018-11-12 23:11:13'),(26,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\qrCode.png','2018-11-13 00:00:44','2018-11-13 00:00:44'),(27,'C:\\apache-tomcat-9.0.12\\bin\\qrCode.png','2018-11-13 00:29:31','2018-11-13 00:29:31'),(28,'C:\\apache-tomcat-9.0.12\\bin\\qrCode.png','2018-11-13 00:31:14','2018-11-13 00:31:14'),(29,'C:\\apache-tomcat-9.0.12\\bin\\qrCode.png','2018-11-13 00:32:20','2018-11-13 00:32:20'),(30,'C:\\apache-tomcat-9.0.12\\bin\\qrCode.png','2018-11-13 00:33:55','2018-11-13 00:33:55'),(31,'c:\\codigos\\29.png','2018-11-13 00:39:40','2018-11-13 00:39:40'),(32,'c:\\codigos\\30.png','2018-11-13 00:41:55','2018-11-13 00:41:55'),(33,'c:\\codigos\\0.png','2018-11-13 00:42:23','2018-11-13 00:42:23'),(34,'c:\\codigos\\32.png','2018-11-13 00:43:41','2018-11-13 00:43:41'),(35,'c:\\codigos\\33.png','2018-11-13 00:46:37','2018-11-13 00:46:37'),(36,'c:\\codigos\\34.png','2018-11-13 00:49:30','2018-11-13 00:49:30'),(37,'C:\\codigos\\35.png','2018-11-13 00:52:40','2018-11-13 00:52:40'),(38,'C:\\codigos\\36.png','2018-11-13 01:10:53','2018-11-13 01:10:53'),(39,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\.\\qrCode.png','2018-11-13 20:47:16','2018-11-13 20:47:16'),(40,'C:\\Users\\mao_p\\eclipse\\jee-2018-092\\eclipse\\.\\qrCode.png','2018-11-13 20:53:37','2018-11-13 20:53:37'),(41,'c:\\codigos\\qrCode.png','2018-11-13 21:18:14','2018-11-13 21:18:14'),(42,'c:\\codigos\\qrCode.png','2018-11-13 21:48:43','2018-11-13 21:48:43'),(43,'c:\\codigos\\qrCode.png','2018-11-13 22:05:22','2018-11-13 22:05:22'),(44,'c:\\codigos\\qrCode.png','2018-11-13 22:39:57','2018-11-14 06:39:57'),(45,'c:\\codigos\\qrCode.png','2018-11-13 22:41:26','2018-11-14 03:41:26'),(46,'c:\\codigos\\12366677.png','2018-11-15 19:31:14','2018-11-16 00:31:14'),(47,'c:\\codigos\\67.png','2018-11-15 19:38:07','2018-11-16 00:38:07'),(48,'c:\\codigos\\68.png','2018-11-15 21:47:08','2018-11-16 02:47:08'),(49,'c:\\codigos\\69.png','2018-11-15 22:33:38','2018-11-16 03:33:38'),(50,'c:\\codigos\\70.png','2018-11-15 22:37:11','2018-11-16 03:37:11'),(51,'c:\\codigos\\71.png','2018-11-15 22:45:03','2018-11-16 03:45:03'),(52,'c:\\codigos\\72.png','2018-11-15 22:50:09','2018-11-16 03:50:09'),(53,'c:\\codigos\\73.png','2018-11-15 22:51:55','2018-11-16 03:51:55'),(54,'c:\\codigos\\74.png','2018-11-15 23:00:05','2018-11-16 04:00:05'),(55,'c:\\codigos\\75.png','2018-11-15 23:06:04','2018-11-16 04:06:04'),(56,'c:\\codigos\\76.png','2018-11-15 23:16:39','2018-11-16 04:16:39'),(57,'c:\\codigos\\77.png','2018-11-15 23:20:16','2018-11-16 04:20:16'),(58,'c:\\codigos\\78.png','2018-11-15 23:20:52','2018-11-16 04:20:52'),(59,'c:\\codigos\\79.png','2018-11-15 23:36:09','2018-11-16 04:36:09'),(60,'c:\\codigos\\80.png','2018-11-15 23:36:23','2018-11-16 04:36:23'),(61,'c:\\codigos\\81.png','2018-11-15 23:36:39','2018-11-16 04:36:39'),(62,'c:\\codigos\\82.png','2018-11-15 23:49:58','2018-11-16 04:49:58'),(63,'c:\\codigos\\83.png','2018-11-15 23:50:15','2018-11-16 04:50:15'),(64,'c:\\codigos\\0.png','2018-11-15 23:51:55','2018-11-16 04:51:55'),(65,'c:\\codigos\\85.png','2018-11-15 23:59:56','2018-11-16 04:59:56'),(66,'c:\\codigos\\86.png','2018-11-16 17:48:26','2018-11-16 22:48:26'),(67,'c:\\codigos\\87.png','2018-11-16 22:16:56','2018-11-17 03:16:56');
/*!40000 ALTER TABLE `qrcode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 22:22:59
