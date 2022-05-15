-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: electro_grid
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `power`
--

DROP TABLE IF EXISTS `power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `power_connection_type` varchar(45) DEFAULT NULL,
  `power_bill_id` varchar(45) DEFAULT NULL,
  `power_used_units` varchar(45) DEFAULT NULL,
  `power_unit_value` varchar(45) DEFAULT NULL,
  `power_pay_value` varchar(45) DEFAULT NULL,
  `power_pay_balance` varchar(45) DEFAULT NULL,
  `power_bill_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `power`
--

LOCK TABLES `power` WRITE;
/*!40000 ALTER TABLE `power` DISABLE KEYS */;
INSERT INTO `power` VALUES (1,' pre-paid','Bil-Id-1','300','RS:10.00','RS:3000.00','RS:00.00','RS:300.00'),(2,'post-paid','Bil-Id-2','5','RS:10.00','RS:00.00','(+)RS:50.00','RS:50.00'),(10,'p-paid','bill-id10','100','5','3000','0','50'),(3,' pre-paid','Bil-Id-3','50','RS:10.00','RS:500.00','RS:00.00','RS:500.00'),(4,'post-paid','Bil-Id-4','80','RS:10.00','RS:800.00','RS:00.00','RS:800.00'),(5,' pre-paid','Bil-Id-5','100','RS:10.00','RS:1000.00','RS:00.00','RS:1000.00'),(6,'post-paid','Bil-Id-6','79','RS:10.00','RS:700.00','(+)RS:90.00','RS:790.00'),(7,' pre-paid','Bil-Id-7','55','RS:10.00','RS:500.00','(+)RS:50.00','RS:550.00'),(8,'post-paid','Bil-Id-8','30','RS:10.00','RS:300.00','RS:00.00','RS:300.00'),(9,'p-paid',' 10','10','5','300','0','50');
/*!40000 ALTER TABLE `power` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 18:04:51
