-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: takeaway
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customername` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`customername`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=10408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10000,'john_doe','johnPass123','13900139001','john@example.com','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10001,'jane_smith','janePass456','13900139002','jane@example.com','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10002,'mike_brown','mikePass789','13900139003',NULL,'2024-11-27 23:26:37','2024-11-27 23:26:37'),(10003,'sarah_white','sarahPass101','13900139004','sarah@example.com','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10004,'tom_black','tomPass202','13900139005','tom@example.com','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10005,'lisa_green','lisaPass303','13900139006','lisa@example.com','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10006,'peter_yellow','peterPass404','13900139007','peter@example.com','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10007,'uPLBfN','FAXsTm','igZDFM','qtKuljcL@burpcollaborator.net','2024-11-29 02:46:09','2024-11-29 02:46:09');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10358 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (10000,'BurgerJoint','Burger St 1','13800138001','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10001,'PizzaPalace','Pizza Ave 2','13800138002','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10002,'SushiSpot','Sushi Blvd 3','13800138003','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10003,'TacoTower','Taco Rd 4','13800138004','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10004,'NoodleNest','Noodle Ct 5','13800138005','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10005,'DessertDome','Dessert Ln 6','13800138006','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10006,'CafeCorner','Cafe Sq 7','13800138007','2024-11-27 23:26:37','2024-11-27 23:26:37'),(10007,'Test','None','12312341234','2024-11-28 15:15:58','2024-11-28 15:15:58'),(10008,'BAgWEXXy','AMdWaC','igZDFM','2024-11-29 02:46:09','2024-11-29 02:46:09'),(10012,'BAgWEXXy\'','AMdWaC','igZDFM','2024-11-29 02:46:10','2024-11-29 02:46:10'),(10013,'BAgWEXXy\"','AMdWaC','igZDFM','2024-11-29 02:46:10','2024-11-29 02:46:10'),(10014,'r918e8pj3r','AMdWaC','igZDFM','2024-11-29 02:46:10','2024-11-29 02:46:10'),(10015,'./BAgWEXXy','AMdWaC','igZDFM','2024-11-29 02:46:11','2024-11-29 02:46:11');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `merchant_id` int NOT NULL,
  `order_status` tinyint NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`customer_id`),
  KEY `merchant_id` (`merchant_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10078 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (10000,10000,10000,0,35.50,'2024-11-27 23:26:58','2024-11-27 23:26:58'),(10001,10001,10001,1,42.75,'2024-11-27 23:26:58','2024-11-27 23:26:58'),(10002,10002,10002,2,19.99,'2024-11-27 23:26:58','2024-11-27 23:26:58'),(10003,10003,10003,3,22.00,'2024-11-27 23:26:58','2024-11-27 23:26:58'),(10004,10004,10004,4,50.25,'2024-11-27 23:26:58','2024-11-27 23:26:58'),(10005,10005,10005,5,15.00,'2024-11-27 23:26:58','2024-11-27 23:26:58'),(10006,10006,10006,0,27.50,'2024-11-27 23:26:58','2024-11-27 23:26:58');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `passport` varchar(45) NOT NULL COMMENT 'User Passport',
  `password` varchar(45) NOT NULL COMMENT 'User Password',
  `nickname` varchar(45) NOT NULL COMMENT 'User Nickname',
  `create_at` datetime DEFAULT NULL COMMENT 'Created Time',
  `update_at` datetime DEFAULT NULL COMMENT 'Updated Time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'burptest','123456','123','2024-11-29 03:09:33','2024-11-29 03:09:33');
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

-- Dump completed on 2024-11-29 21:08:57
