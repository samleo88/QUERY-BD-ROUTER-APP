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
-- Table structure for table `entryoutput`
--

DROP TABLE IF EXISTS `entryoutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entryoutput` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dateEntry` datetime NOT NULL,
  `dateOutput` datetime DEFAULT NULL,
  `identification` varchar(12) NOT NULL,
  `dependency` varchar(40) NOT NULL,
  `personVisit` varchar(40) NOT NULL,
  `idQRCode` int(10) NOT NULL,
  `doorEntry` varchar(30) NOT NULL,
  `doorOutput` varchar(30) DEFAULT NULL,
  `comments` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entryoutput`
--

LOCK TABLES `entryoutput` WRITE;
/*!40000 ALTER TABLE `entryoutput` DISABLE KEYS */;
INSERT INTO `entryoutput` VALUES (1,'2018-12-23 00:00:00','2018-11-13 00:28:19','22222','administracion ','ana rojas',0,'norte','Norte','ninguno'),(2,'2018-11-10 01:18:22','2018-11-10 02:58:27','22222','d','ad',9999,'ad','sur','ad qjadkadla'),(3,'2018-11-10 02:32:32',NULL,'22222','sA','DFSF',9999,'SDF','SDF','DF'),(4,'2018-11-10 02:38:37',NULL,'52364','ada','asd',9999,'ad','asd','asd'),(5,'2018-11-10 02:40:28',NULL,'12353453','d','d',3,'d','d','d'),(6,'2018-11-10 03:27:33',NULL,'22222','qw','qe',4,'qe',NULL,'qe'),(7,'2018-11-10 04:44:41',NULL,'324242352525','afa','asf',6,'af',NULL,'af'),(8,'2018-11-12 11:47:17',NULL,'12366677','tic','ss',7,'ss',NULL,'sss'),(9,'2018-11-12 12:27:49',NULL,'123123123','222','222',8,'222',NULL,'222'),(10,'2018-11-12 12:29:56',NULL,'asfasf','as','asf',9,'asf',NULL,'asf'),(11,'2018-11-12 13:21:47',NULL,'889966','as','sd',10,'asd',NULL,'asd'),(12,'2018-11-12 13:30:10',NULL,'12366677','s','s',11,'s',NULL,'s'),(13,'2018-11-12 19:50:40',NULL,'889966','s','s',12,'s',NULL,'s'),(14,'2018-11-12 21:44:28',NULL,'12366677','Personal','Ninguna',14,'Novena',NULL,NULL),(15,'2018-11-12 21:51:55',NULL,'12366677','Personal','Ninguna',15,'Novena',NULL,NULL),(16,'2018-11-12 21:57:07',NULL,'12366677','Personal','Ninguna',16,'Novena',NULL,NULL),(17,'2018-11-12 22:11:30',NULL,'80978654','Personal','Ninguna',17,'Novena',NULL,NULL),(18,'2018-11-12 22:15:11',NULL,'80978654','Personal','Ninguna',18,'Novena',NULL,NULL),(19,'2018-11-12 22:20:35',NULL,'80978654','Personal','Ninguna',19,'Novena',NULL,NULL),(20,'2018-11-12 22:20:43',NULL,'80978654','Personal','Ninguna',20,'Novena',NULL,NULL),(21,'2018-11-12 22:26:52',NULL,'12366677','Personal','Ninguna',21,'Novena',NULL,NULL),(22,'2018-11-12 22:43:42',NULL,'889966','registro','juan ',22,'sur',NULL,''),(23,'2018-11-12 23:10:41',NULL,'889966','asd','asd',25,'asd',NULL,'ad'),(24,'2018-11-13 00:00:44',NULL,'52333444','qwe','qwe',26,'qwe',NULL,'qwe'),(25,'2018-11-13 00:29:31',NULL,'12366677','Personal','Ninguna',27,'Novena',NULL,NULL),(26,'2018-11-13 00:31:14',NULL,'12366677','Personal','Ninguna',28,'Novena',NULL,NULL),(27,'2018-11-13 00:32:20',NULL,'12366677','Personal','Ninguna',29,'Novena',NULL,NULL),(28,'2018-11-13 00:33:55',NULL,'12366677','Personal','Ninguna',30,'Novena',NULL,NULL),(29,'2018-11-13 00:39:39',NULL,'12366677','Personal','Ninguna',31,'Novena',NULL,NULL),(30,'2018-11-13 00:41:55',NULL,'12366677','Personal','Ninguna',32,'Novena',NULL,NULL),(31,'2018-11-13 00:42:23',NULL,'889966','dsd','fdfdf',33,'sfsg',NULL,''),(32,'2018-11-13 00:43:40',NULL,'12366677','Personal','Ninguna',34,'Novena',NULL,NULL),(33,'2018-11-13 00:46:37',NULL,'12366677','Personal','Ninguna',35,'Novena',NULL,NULL),(85,'2018-11-15 23:59:56',NULL,'12366677','Personal','Ninguna',65,'Novena',NULL,NULL),(86,'2018-11-16 17:48:26',NULL,'12366677','Personal','Ninguna',66,'Novena',NULL,NULL),(87,'2018-11-16 22:16:56',NULL,'12366677','Personal','Ninguna',67,'Novena',NULL,NULL);
/*!40000 ALTER TABLE `entryoutput` ENABLE KEYS */;
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
