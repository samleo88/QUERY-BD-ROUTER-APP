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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userName` varchar(8) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `fullName` varchar(60) NOT NULL,
  `identification` varchar(12) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `dateLastPassword` datetime DEFAULT NULL,
  `active` varchar(1) NOT NULL,
  `userType` varchar(12) NOT NULL,
  `failedAttempts` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','cf8122d5c7e2825a780391c756020b60','MARIA LOPEZ','52333444','pruebasisingreso@gmail.com','3012334457','2018-11-12 13:20:55','A','ADMIN',0),(2,'estu1','cf8122d5c7e2825a780391c756020b60','Estudiante 1','12366677','pruebasisingreso@gmail.com','2445582','2018-11-16 22:16:43','A','ESTUDIANTE',0),(3,'estu2','e822df47cd88b366810b2ba409327a4a','JOSE GOMEZ H. J','23444555','pruebasisingreso@gmail.com','2333444',NULL,'A','ESTUDIANTE',0),(4,'opera1','dc86373b561f0e4d13e409d967f89cb3','ana lopez','99998','pruebasisingreso@gmail.com','222221',NULL,'A','OPERATIVO',0),(5,'opera2','cf8122d5c7e2825a780391c756020b60','Marcos Fernandez','80978654','pruebasisingreso@gmail.com','2334455','2018-11-12 22:11:07','A','OPERATIVO',0),(6,'estu3','31f20c6b941291959279363b78b95dc0','CARLOS GARZON','78999098','pruebasisingreso@gmail.com','32223',NULL,'I','ESTUDIANTE',0),(19,'visita1','cf8122d5c7e2825a780391c756020b60','CLARA SANCHEZ','889966','pruebasisingreso@gmail.com','215141412','2018-11-12 17:59:33','A','VISITANTE',0),(20,'estu8','a902ddf0964f0d4be529c1155c9654b0','Sara','12345678','saramilenaos@hotmail.com','2334455',NULL,'A','Estudiante',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
