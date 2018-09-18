-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: brumdb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `carID` int(11) DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `pickupDate` date DEFAULT NULL,
  `pickupStore` int(11) DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `returnStore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerID_idx` (`customerID`),
  KEY `carID_idx` (`carID`),
  KEY `pickupStore_idx` (`pickupStore`),
  KEY `returnStore_idx` (`returnStore`),
  CONSTRAINT `carID` FOREIGN KEY (`carID`) REFERENCES `cars` (`id`),
  CONSTRAINT `customerID` FOREIGN KEY (`customerID`) REFERENCES `customers` (`id`),
  CONSTRAINT `pickupStore` FOREIGN KEY (`pickupStore`) REFERENCES `stores` (`id`),
  CONSTRAINT `returnStore` FOREIGN KEY (`returnStore`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (3,11014,14806,'2005-07-03','2005-07-03',3,'2005-07-11',16),(4,11012,14816,'2005-07-04','2005-07-04',12,'2005-07-09',8),(5,11011,14810,'2005-07-05','2005-07-05',5,'2005-07-10',5),(6,11011,14812,'2005-07-06','2005-07-09',6,'2005-07-15',25),(7,11014,14814,'2005-07-07','2005-07-07',7,'2005-07-15',14),(8,11016,14816,'2005-07-08','2005-07-09',8,'2005-07-16',29),(9,11014,14818,'2005-07-09','2005-07-09',9,'2005-07-18',18),(11,11059,14811,'2005-07-11','2005-07-11',11,'2005-07-16',13),(12,11017,14812,'2005-07-12','2005-07-15',25,'2005-08-13',25),(13,11054,14813,'2005-07-13','2005-07-14',50,'2005-07-21',13),(14,11055,14814,'2005-07-14','2005-07-15',14,'2005-07-19',14),(15,11056,14815,'2005-07-15','2005-07-15',15,'2005-07-24',15),(16,11052,14816,'2005-07-16','2005-07-16',29,'2005-08-17',29),(17,11011,14817,'2005-07-17','2005-07-17',17,'2005-07-22',50),(18,11055,14818,'2005-07-18','2005-07-18',18,'2005-07-23',18),(19,11017,14819,'2005-07-19','2005-07-20',14,'2005-08-10',14),(20,11052,14835,'2005-07-20','2005-07-23',15,'2005-08-04',35),(21,11053,14842,'2005-07-21','2005-07-21',50,'2005-08-10',1),(22,11018,14839,'2005-07-22','2005-07-22',17,'2005-08-08',39),(23,11015,14838,'2005-07-23','2005-07-23',15,'2005-08-07',25),(24,11018,14843,'2005-07-24','2005-07-27',19,'2005-08-12',19),(25,11016,14850,'2005-07-25','2005-07-25',25,'2005-08-14',5),(26,11018,14847,'2005-07-26','2005-07-29',21,'2005-08-14',21),(27,11051,14846,'2005-07-27','2005-07-27',19,'2005-08-12',3),(28,11054,14851,'2005-07-28','2005-07-28',50,'2005-08-21',22),(29,11016,14858,'2005-07-29','2005-07-29',29,'2005-08-18',9),(30,11016,14860,'2005-07-30','2005-07-30',30,'2005-08-20',10),(31,11012,14831,'2005-07-31','2005-07-31',21,'2005-08-24',24),(32,11015,14832,'2005-08-01','2005-08-04',21,'2005-08-06',21),(33,11019,14833,'2005-08-02','2005-08-02',33,'2005-08-07',15),(34,11057,14834,'2005-08-03','2005-08-03',21,'2005-08-24',21),(35,11056,14835,'2005-08-04','2005-08-04',35,'2005-08-13',35),(36,11057,14836,'2005-08-05','2005-08-05',23,'2005-08-26',23),(37,11013,14837,'2005-08-06','2005-08-06',37,'2005-08-15',37),(38,11012,14838,'2005-08-07','2005-08-07',25,'2005-08-28',25),(39,11014,14839,'2005-08-08','2005-08-08',39,'2005-08-16',9),(40,11013,14880,'2005-08-09','2005-08-10',40,'2005-09-21',15),(41,11016,14842,'2005-08-10','2005-08-10',1,'2005-08-19',1),(42,11015,14855,'2005-08-11','2005-08-14',13,'2005-08-16',13),(43,11059,14846,'2005-08-12','2005-08-12',3,'2005-08-17',10),(44,11051,14859,'2005-08-13','2005-08-16',15,'2005-08-28',19),(45,11053,14850,'2005-08-14','2005-08-14',5,'2005-08-23',5),(46,11051,14863,'2005-08-15','2005-08-15',17,'2005-09-01',23),(47,11053,14854,'2005-08-16','2005-08-16',7,'2005-08-24',14),(48,11017,14870,'2005-08-17','2005-08-18',22,'2005-09-08',30),(49,11053,14858,'2005-08-18','2005-08-18',9,'2005-08-27',18),(50,11050,14860,'2005-08-19','2005-08-20',10,'2005-08-29',11),(51,11015,14851,'2005-08-20','2005-08-21',22,'2005-08-25',22),(52,11015,14852,'2005-08-21','2005-08-21',23,'2005-09-07',16),(53,11018,14853,'2005-08-22','2005-08-22',9,'2005-09-10',9),(54,11053,14854,'2005-08-23','2005-08-24',14,'2005-09-12',14),(55,11012,14831,'2005-08-24','2005-08-24',24,'2005-09-15',24),(56,11019,14856,'2005-08-25','2005-08-26',16,'2005-09-10',14),(57,11018,14857,'2005-08-26','2005-08-26',13,'2005-09-14',13),(58,11011,14858,'2005-08-27','2005-08-27',18,'2005-09-12',18),(59,11019,14859,'2005-08-28','2005-08-28',19,'2005-09-13',9),(60,11012,14860,'2005-08-29','2005-08-29',11,'2005-09-10',11),(61,11054,14861,'2005-08-30','2005-08-30',17,'2005-09-18',21),(62,11011,14862,'2005-08-31','2005-08-31',50,'2005-09-16',22),(63,11053,14863,'2005-09-01','2005-09-01',23,'2005-09-10',23),(64,11052,14864,'2005-09-02','2005-09-02',17,'2005-09-23',17),(65,11054,14865,'2005-09-03','2005-09-03',18,'2005-09-11',25),(66,11056,14866,'2005-09-04','2005-09-05',26,'2005-09-13',26),(67,11011,14867,'2005-09-05','2005-09-05',27,'2005-09-10',27),(68,11057,14852,'2005-09-06','2005-09-07',16,'2005-09-07',17),(69,11057,14852,'2005-09-07','2005-09-07',17,'2005-09-28',17),(70,11055,14870,'2005-09-08','2005-09-08',30,'2005-09-13',30),(71,11011,14871,'2005-09-09','2005-09-09',31,'2005-09-14',31),(72,11010,14872,'2005-09-10','2005-09-11',32,'2005-10-01',21),(73,11015,14873,'2005-09-11','2005-09-11',23,'2005-09-16',23),(74,11015,14874,'2005-09-12','2005-09-15',24,'2005-09-17',24),(75,11017,14875,'2005-09-13','2005-09-14',28,'2005-10-14',28),(76,11015,14876,'2005-09-14','2005-09-15',26,'2005-09-19',26),(77,11013,14877,'2005-09-15','2005-09-15',37,'2005-09-24',37),(78,11014,14878,'2005-09-16','2005-09-17',38,'2005-09-24',13),(79,11014,14879,'2005-09-17','2005-09-17',39,'2005-09-25',14),(80,11017,14880,'2005-09-18','2005-09-21',15,'2005-10-19',15),(81,11051,14881,'2005-09-19','2005-09-19',13,'2005-09-24',13),(82,11057,14882,'2005-09-20','2005-09-20',12,'2005-10-11',12),(83,11055,14883,'2005-09-21','2005-09-21',3,'2005-09-26',3),(84,11010,14884,'2005-09-22','2005-09-23',4,'2005-10-10',4),(85,11052,14885,'2005-09-23','2005-09-24',20,'2005-10-14',20),(87,11058,14887,'2005-09-25','2005-09-25',7,'2005-10-13',7),(88,11052,14888,'2005-09-26','2005-09-26',23,'2005-10-17',23),(89,11051,14889,'2005-09-27','2005-09-27',21,'2005-10-12',21),(90,11057,14890,'2005-09-28','2005-09-29',20,'2005-10-19',20),(91,11014,14891,'2005-09-29','2005-09-29',11,'2005-10-17',10),(93,11012,14872,'2005-10-01','2005-10-01',21,'2005-10-07',26),(95,11015,14895,'2005-10-03','2005-10-03',25,'2005-10-08',25),(96,11051,14896,'2005-10-04','2005-10-05',26,'2005-10-09',26),(97,11014,14897,'2005-10-05','2005-10-05',17,'2005-10-13',14),(98,11012,14872,'2005-10-06','2005-10-07',26,'2005-10-27',26),(99,11017,14899,'2005-10-07','2005-10-08',14,'2005-10-28',14),(100,11016,14900,'2005-10-08','2005-10-09',20,'2005-10-17',20),(101,11113,14901,'2005-10-09','2005-10-09',21,'2005-10-18',21),(102,11114,14902,'2005-10-10','2005-10-10',17,'2005-10-18',22),(103,11114,14903,'2005-10-11','2005-10-11',18,'2005-10-22',10),(104,11116,14904,'2005-10-12','2005-10-15',24,'2005-10-21',24),(105,11115,14905,'2005-10-13','2005-10-13',25,'2005-10-18',25),(106,11112,14906,'2005-10-14','2005-10-14',21,'2005-10-25',10),(107,11113,14907,'2005-10-15','2005-10-15',27,'2005-10-24',27),(108,11111,14908,'2005-10-16','2005-10-17',20,'2005-10-21',20),(109,11119,14909,'2005-10-17','2005-10-17',29,'2005-10-22',15),(110,11112,14910,'2005-10-18','2005-10-21',25,'2005-11-19',25),(111,11117,14911,'2005-10-19','2005-10-19',21,'2005-11-10',21),(112,11119,14912,'2005-10-20','2005-10-21',32,'2005-10-25',10),(113,11114,14903,'2005-10-21','2005-10-22',10,'2005-10-26',14),(114,11111,14914,'2005-10-22','2005-10-23',26,'2005-10-27',26),(115,11115,14915,'2005-10-23','2005-10-23',35,'2005-10-28',35),(116,11111,14906,'2005-10-24','2005-10-25',10,'2005-11-08',25),(117,11114,14903,'2005-10-25','2005-10-26',14,'2005-10-26',15),(118,11112,14903,'2005-10-26','2005-10-26',15,'2005-10-28',16),(119,11114,14903,'2005-10-27','2005-10-28',16,'2005-11-15',39),(120,11117,14920,'2005-10-28','2005-10-28',12,'2005-11-10',13),(121,11114,14921,'2005-10-29','2005-10-29',18,'2005-11-17',1),(122,11158,14922,'2005-10-30','2005-10-30',2,'2005-11-18',2),(123,11116,14923,'2005-10-31','2005-10-31',3,'2005-11-12',9),(124,11111,14924,'2005-11-01','2005-11-01',15,'2005-11-12',10),(125,11116,14925,'2005-11-02','2005-11-02',5,'2005-11-11',5),(126,11112,14926,'2005-11-03','2005-11-04',20,'2005-11-24',20),(127,11115,14927,'2005-11-04','2005-11-04',7,'2005-11-28',24),(128,11158,14928,'2005-11-05','2005-11-06',8,'2005-11-13',8),(129,11159,14929,'2005-11-06','2005-11-07',20,'2005-12-01',25),(130,11114,14930,'2005-11-07','2005-11-07',24,'2005-11-15',10),(131,11157,14906,'2005-11-08','2005-11-08',25,'2005-11-14',31),(132,11156,14923,'2005-11-09','2005-11-12',9,'2005-11-15',15),(133,11158,14920,'2005-11-10','2005-11-10',13,'2005-11-14',16),(134,11114,14924,'2005-11-11','2005-11-12',10,'2005-11-12',11),(135,11150,14924,'2005-11-12','2005-11-12',11,'2005-12-10',28),(136,11119,14920,'2005-11-13','2005-11-14',16,'2005-11-16',19),(137,11157,14906,'2005-11-14','2005-11-14',31,'2005-12-15',31),(138,11156,14923,'2005-11-15','2005-11-15',15,'2005-11-24',15),(139,11151,14920,'2005-11-16','2005-11-16',19,'2005-12-06',36),(140,11155,14940,'2005-11-17','2005-11-18',20,'2005-11-22',20),(141,11154,14941,'2005-11-18','2005-11-18',21,'2005-12-10',12),(142,11152,14942,'2005-11-19','2005-11-19',18,'2005-12-10',18),(143,11154,14943,'2005-11-20','2005-11-20',23,'2005-12-02',12),(144,11153,14944,'2005-11-21','2005-11-24',21,'2005-12-06',14),(145,11116,14945,'2005-11-22','2005-11-22',25,'2005-12-11',25),(146,11155,14946,'2005-11-23','2005-11-24',26,'2005-11-28',26),(147,11117,14947,'2005-11-24','2005-11-24',18,'2005-12-05',10),(148,11119,14948,'2005-11-25','2005-11-26',28,'2005-12-10',11),(149,11153,14949,'2005-11-26','2005-11-27',26,'2005-12-15',26),(150,11154,14950,'2005-11-27','2005-11-27',30,'2005-12-15',30),(151,11111,14927,'2005-11-28','2005-11-28',24,'2005-12-13',24),(152,11157,14924,'2005-11-29','2005-11-29',28,'2005-12-10',28),(153,11153,14941,'2005-11-30','2005-11-30',12,'2005-12-19',12),(154,11111,14929,'2005-12-01','2005-12-01',25,'2005-12-06',25),(155,11156,14943,'2005-12-02','2005-12-02',12,'2005-12-07',16),(156,11155,14920,'2005-12-03','2005-12-06',36,'2005-12-08',36),(157,11159,14947,'2005-12-04','2005-12-05',10,'2005-12-09',12),(158,11157,14944,'2005-12-05','2005-12-06',14,'2005-12-08',17),(159,11156,14943,'2005-12-06','2005-12-07',16,'2005-12-07',17),(160,11153,14943,'2005-12-07','2005-12-07',17,'2005-12-11',20),(161,11152,14944,'2005-12-08','2005-12-08',17,'2005-12-12',20),(162,11154,14967,'2005-12-09','2005-12-10',2,'2006-01-03',26),(163,11156,14943,'2005-12-10','2005-12-11',20,'2005-12-15',25),(164,11150,14944,'2005-12-11','2005-12-12',20,'2005-12-18',27),(165,11158,14960,'2005-12-12','2005-12-12',5,'2005-12-22',15),(166,11154,14961,'2005-12-13','2005-12-13',6,'2005-12-19',9),(167,11154,14962,'2005-12-14','2005-12-14',7,'2005-12-24',14),(168,11156,14943,'2005-12-15','2005-12-15',25,'2005-12-24',25),(169,11158,14964,'2005-12-16','2005-12-16',9,'2005-12-24',9),(170,11156,14961,'2005-12-17','2005-12-20',9,'2005-12-19',11),(171,11157,14944,'2005-12-18','2005-12-18',27,'2005-12-20',29),(172,11156,14961,'2005-12-19','2005-12-19',11,'2006-01-11',22),(173,11152,14944,'2005-12-20','2005-12-20',29,'2006-01-11',29),(174,11158,14969,'2005-12-21','2005-12-22',14,'2006-01-01',25),(175,11158,14960,'2005-12-22','2005-12-22',15,'2006-01-10',15),(176,11157,14962,'2005-12-23','2005-12-24',14,'2005-12-24',15),(177,11152,14962,'2005-12-24','2005-12-24',15,'2005-12-26',16),(178,11152,14962,'2005-12-25','2005-12-26',16,'2005-12-26',17),(179,11152,14962,'2005-12-26','2005-12-26',17,'2005-12-28',20),(180,11155,14962,'2005-12-27','2005-12-28',20,'2006-01-10',20),(181,11154,14966,'2005-12-28','2005-12-28',21,'2006-01-03',21),(182,11157,14962,'2005-12-29','2005-12-29',20,'2006-01-15',38),(183,11156,14961,'2005-12-30','2005-12-30',22,'2006-01-06',30),(184,11159,14965,'2005-12-31','2005-12-31',19,'2006-01-16',15),(185,11158,14969,'2006-01-01','2006-01-01',25,'2006-01-05',28),(186,11151,14967,'2006-01-02','2006-01-03',26,'2006-01-06',22),(187,11153,14966,'2006-01-03','2006-01-03',21,'2006-01-12',21),(188,11151,14969,'2006-01-04','2006-01-05',28,'2006-01-09',28),(189,11157,14967,'2006-01-05','2006-01-06',22,'2006-01-07',24),(190,11151,14961,'2006-01-06','2006-01-06',30,'2006-01-11',30),(191,11152,14967,'2006-01-07','2006-01-07',24,'2006-01-10',26),(193,11157,14967,'2006-01-09','2006-01-10',26,'2006-01-12',28),(194,11150,14985,'2006-01-10','2006-01-13',9,'2006-01-12',11),(195,11152,14967,'2006-01-11','2006-01-12',28,'2006-02-12',28),(196,11150,14985,'2006-01-12','2006-01-12',11,'2006-01-13',12),(197,11150,14985,'2006-01-13','2006-01-13',12,'2006-01-21',12),(198,11158,14962,'2006-01-14','2006-01-15',38,'2006-01-22',38),(199,11156,14984,'2006-01-15','2006-01-15',15,'2006-01-24',15),(200,11154,15004,'2006-01-16','2006-01-17',40,'2006-01-21',4),(201,11250,15001,'2006-01-17','2006-01-17',1,'2006-02-03',18),(202,11259,15002,'2006-01-18','2006-01-19',2,'2006-01-23',11),(203,11258,15003,'2006-01-19','2006-01-19',18,'2006-02-11',12),(204,11256,15004,'2006-01-20','2006-01-21',4,'2006-01-29',13),(205,11251,15005,'2006-01-21','2006-01-21',5,'2006-01-27',11),(206,11259,15006,'2006-01-22','2006-01-25',6,'2006-02-11',9),(207,11253,15007,'2006-01-23','2006-01-23',7,'2006-02-12',7),(208,11258,15008,'2006-01-24','2006-01-24',23,'2006-02-24',38),(209,11253,15009,'2006-01-25','2006-01-25',9,'2006-02-02',16),(210,11251,15010,'2006-01-26','2006-01-27',10,'2006-02-11',10),(211,11254,15005,'2006-01-27','2006-01-27',11,'2006-02-11',14),(212,11251,15003,'2006-01-28','2006-01-28',12,'2006-02-24',39),(213,11259,15004,'2006-01-29','2006-01-29',13,'2006-02-14',14),(214,11251,15005,'2006-01-30','2006-01-30',14,'2006-02-18',32),(215,11255,15006,'2006-01-31','2006-01-31',9,'2006-02-20',28),(216,11254,15009,'2006-02-01','2006-02-02',16,'2006-02-18',24),(217,11250,15000,'2006-02-02','2006-02-02',17,'2006-02-10',17),(218,11250,15001,'2006-02-03','2006-02-03',18,'2006-02-16',31),(220,11251,15020,'2006-02-05','2006-02-06',20,'2006-02-10',20),(222,11251,15022,'2006-02-07','2006-02-08',22,'2006-02-12',22),(223,11253,15023,'2006-02-08','2006-02-08',23,'2006-02-17',23),(224,11256,15024,'2006-02-09','2006-02-12',24,'2006-03-10',29),(225,11258,15025,'2006-02-10','2006-02-10',19,'2006-02-18',19),(226,11252,15026,'2006-02-11','2006-02-11',15,'2006-03-12',15),(227,11256,15027,'2006-02-12','2006-02-12',27,'2006-02-21',27),(228,11256,15028,'2006-02-13','2006-02-14',28,'2006-02-22',28),(229,11259,15029,'2006-02-14','2006-02-14',29,'2006-02-19',11),(230,11252,15030,'2006-02-15','2006-02-18',19,'2006-03-16',19),(231,11251,15001,'2006-02-16','2006-02-16',31,'2006-02-21',31),(232,11254,15005,'2006-02-17','2006-02-18',32,'2006-02-25',10),(233,11255,15009,'2006-02-18','2006-02-18',24,'2006-02-20',35),(234,11217,15006,'2006-02-19','2006-02-20',28,'2006-02-22',31),(235,11256,15009,'2006-02-20','2006-02-20',35,'2006-02-28',35),(236,11252,15011,'2006-02-21','2006-02-24',25,'2006-03-12',25),(237,11217,15006,'2006-02-22','2006-02-22',31,'2006-03-13',31),(238,11251,15008,'2006-02-23','2006-02-24',38,'2006-02-28',38),(239,11256,15003,'2006-02-24','2006-02-24',39,'2006-03-13',39),(240,11219,15040,'2006-02-25','2006-02-28',13,'2006-03-15',18),(241,11219,15041,'2006-02-26','2006-02-27',14,'2006-03-12',15),(243,11213,15043,'2006-02-28','2006-02-28',20,'2006-03-08',11),(244,11218,15044,'2006-03-01','2006-03-02',4,'2006-04-05',39),(245,11215,15045,'2006-03-02','2006-03-02',5,'2006-03-20',18),(246,11217,15046,'2006-03-03','2006-03-04',22,'2006-03-28',30),(247,11218,15047,'2006-03-04','2006-03-04',7,'2006-03-12',12),(248,11216,15048,'2006-03-05','2006-03-05',25,'2006-03-20',22),(249,11214,15049,'2006-03-06','2006-03-06',9,'2006-03-24',27),(250,11219,15050,'2006-03-07','2006-03-07',23,'2006-03-12',11),(251,11259,15043,'2006-03-08','2006-03-08',11,'2006-03-14',17),(252,11254,15047,'2006-03-09','2006-03-12',12,'2006-03-13',9),(253,11257,15024,'2006-03-10','2006-03-10',29,'2006-04-11',29),(254,11210,15042,'2006-03-11','2006-03-14',12,'2006-03-18',20),(255,11256,15041,'2006-03-12','2006-03-12',15,'2006-03-16',19),(256,11252,15047,'2006-03-13','2006-03-13',9,'2006-03-19',14),(257,11256,15043,'2006-03-14','2006-03-14',17,'2006-03-23',17),(258,11251,15040,'2006-03-15','2006-03-15',18,'2006-03-24',24),(259,11259,15041,'2006-03-16','2006-03-16',19,'2006-03-24',26),(260,11259,15042,'2006-03-17','2006-03-18',20,'2006-04-10',31),(261,11252,15047,'2006-03-18','2006-03-19',14,'2006-04-10',32),(262,11253,15048,'2006-03-19','2006-03-20',22,'2006-04-03',37),(263,11255,15045,'2006-03-20','2006-03-20',18,'2006-03-23',20),(264,11256,15040,'2006-03-21','2006-03-24',24,'2006-03-26',28),(265,11255,15045,'2006-03-22','2006-03-23',20,'2006-03-26',24),(266,11250,15041,'2006-03-23','2006-03-24',26,'2006-04-11',26),(267,11251,15049,'2006-03-24','2006-03-24',27,'2006-03-29',27),(268,11259,15040,'2006-03-25','2006-03-26',28,'2006-04-01',35),(269,11255,15045,'2006-03-26','2006-03-26',24,'2006-04-11',24),(270,11253,15046,'2006-03-27','2006-03-27',30,'2006-03-28',31),(271,11254,15046,'2006-03-28','2006-03-28',31,'2006-04-12',34),(272,11254,15047,'2006-03-29','2006-03-29',32,'2006-04-05',36),(273,11257,15042,'2006-03-30','2006-03-30',31,'2006-04-11',31),(274,11251,15046,'2006-03-31','2006-03-31',34,'2006-04-16',34),(275,11256,15040,'2006-04-01','2006-04-01',35,'2006-04-10',35),(276,11259,15047,'2006-04-02','2006-04-05',36,'2006-04-07',15),(277,11259,15048,'2006-04-03','2006-04-03',37,'2006-04-08',8),(278,11255,15066,'2006-04-04','2006-04-04',12,'2006-04-15',22),(279,11256,15044,'2006-04-05','2006-04-05',39,'2006-04-14',39),(280,11257,15063,'2006-04-06','2006-04-06',17,'2006-04-13',24),(281,11251,15082,'2006-04-07','2006-04-07',1,'2006-05-13',37),(282,11256,15087,'2006-04-08','2006-04-09',2,'2006-04-17',2),(283,11252,15068,'2006-04-09','2006-04-09',15,'2006-04-11',17),(284,11254,15088,'2006-04-10','2006-04-11',4,'2006-04-19',13),(285,11252,15068,'2006-04-11','2006-04-11',17,'2006-05-12',17),(286,11256,15081,'2006-04-12','2006-04-12',6,'2006-04-19',9),(287,11258,15063,'2006-04-13','2006-04-13',24,'2006-04-16',26),(288,11255,15066,'2006-04-14','2006-04-15',22,'2006-04-19',22),(289,11258,15063,'2006-04-15','2006-04-16',26,'2006-04-23',31),(290,11258,15081,'2006-04-16','2006-04-19',9,'2006-04-24',17),(291,11250,15085,'2006-04-17','2006-04-17',11,'2006-05-07',31),(292,11251,15083,'2006-04-18','2006-04-18',12,'2006-05-15',39),(293,11256,15088,'2006-04-19','2006-04-19',13,'2006-04-23',17),(294,11257,15063,'2006-04-20','2006-04-23',31,'2006-05-11',31),(295,11255,15084,'2006-04-21','2006-04-21',11,'2006-04-26',11),(296,11254,15080,'2006-04-22','2006-04-23',16,'2006-04-25',19),(297,11259,15088,'2006-04-23','2006-04-23',17,'2006-04-28',12),(298,11257,15081,'2006-04-24','2006-04-24',17,'2006-05-15',17),(299,11259,15080,'2006-04-25','2006-04-25',19,'2006-05-10',14),(300,11253,15100,'2006-04-26','2006-04-27',20,'2006-05-15',20),(301,11355,15101,'2006-04-27','2006-04-27',21,'2006-05-08',11),(302,11359,15102,'2006-04-28','2006-04-29',22,'2006-05-13',10),(303,11351,15103,'2006-04-29','2006-04-29',19,'2006-05-14',19),(304,11350,15104,'2006-04-30','2006-04-30',24,'2006-05-12',12),(305,11353,15105,'2006-05-01','2006-05-01',25,'2006-05-10',25),(306,11354,15106,'2006-05-02','2006-05-02',23,'2006-05-14',12),(307,11355,15107,'2006-05-03','2006-05-03',27,'2006-05-08',27),(308,11352,15108,'2006-05-04','2006-05-04',25,'2006-05-25',25),(309,11353,15109,'2006-05-05','2006-05-05',29,'2006-05-14',29),(310,11351,15110,'2006-05-06','2006-05-06',24,'2006-05-11',24),(311,11350,15085,'2006-05-07','2006-05-07',31,'2006-05-11',34),(312,11354,15101,'2006-05-08','2006-05-08',11,'2006-05-09',12),(313,11354,15101,'2006-05-09','2006-05-09',12,'2006-05-17',33),(314,11359,15085,'2006-05-10','2006-05-11',34,'2006-05-15',12),(315,11350,15089,'2006-05-11','2006-05-11',35,'2006-05-19',35),(316,11351,15104,'2006-05-12','2006-05-12',12,'2006-05-17',12),(317,11353,15082,'2006-05-13','2006-05-13',37,'2006-05-22',37),(318,11357,15106,'2006-05-14','2006-05-14',12,'2006-05-27',25),(319,11350,15083,'2006-05-15','2006-05-15',39,'2006-05-23',39),(320,11350,15124,'2006-05-16','2006-05-17',40,'2006-05-21',4),(321,11350,15121,'2006-05-17','2006-05-17',1,'2006-05-25',1),(322,11354,15122,'2006-05-18','2006-05-18',21,'2006-06-24',38),(323,11356,15123,'2006-05-19','2006-05-19',3,'2006-06-18',33),(324,11353,15124,'2006-05-20','2006-05-21',4,'2006-06-20',34),(325,11358,15125,'2006-05-21','2006-05-21',5,'2006-05-29',5),(326,11352,15126,'2006-05-22','2006-05-25',25,'2006-06-13',25),(327,11357,15127,'2006-05-23','2006-05-23',21,'2006-06-03',10),(328,11358,15128,'2006-05-24','2006-05-25',8,'2006-06-11',14),(329,11357,15129,'2006-05-25','2006-05-25',23,'2006-06-02',16),(330,11352,15130,'2006-05-26','2006-05-26',29,'2006-06-17',29),(331,11312,15106,'2006-05-27','2006-05-27',25,'2006-05-29',26),(332,11312,15106,'2006-05-28','2006-05-29',26,'2006-06-19',26),(333,11318,15119,'2006-05-29','2006-05-29',14,'2006-06-12',16),(334,11350,15128,'2006-05-30','2006-05-30',14,'2006-06-18',14),(335,11317,15119,'2006-05-31','2006-05-31',16,'2006-06-12',16),(336,11314,15129,'2006-06-01','2006-06-02',16,'2006-06-04',19),(337,11312,15127,'2006-06-02','2006-06-03',10,'2006-06-03',11),(338,11312,15127,'2006-06-03','2006-06-03',11,'2006-06-22',37),(339,11319,15129,'2006-06-04','2006-06-04',19,'2006-06-20',35),(340,11351,15140,'2006-06-05','2006-06-05',15,'2006-06-16',11),(342,11314,15142,'2006-06-07','2006-06-08',22,'2006-07-06',28),(343,11311,15143,'2006-06-08','2006-06-08',23,'2006-06-13',23),(344,11316,15144,'2006-06-09','2006-06-12',24,'2006-06-18',24),(346,11311,15146,'2006-06-11','2006-06-12',26,'2006-06-16',26),(347,11312,15147,'2006-06-12','2006-06-13',20,'2006-07-13',20),(348,11317,15148,'2006-06-13','2006-06-14',26,'2006-07-14',26),(349,11317,15149,'2006-06-14','2006-06-14',27,'2006-07-15',27),(350,11314,15150,'2006-06-15','2006-06-18',30,'2006-06-23',16),(351,11318,15140,'2006-06-16','2006-06-16',11,'2006-06-17',12),(352,11318,15140,'2006-06-17','2006-06-17',12,'2006-06-24',19),(353,11311,15123,'2006-06-18','2006-06-18',33,'2006-06-26',40),(354,11311,15124,'2006-06-19','2006-06-20',34,'2006-06-24',34),(355,11316,15129,'2006-06-20','2006-06-20',35,'2006-06-24',36),(356,11314,15129,'2006-06-21','2006-06-24',36,'2006-06-29',14),(357,11319,15127,'2006-06-22','2006-06-22',37,'2006-06-27',11),(358,11313,15122,'2006-06-23','2006-06-24',38,'2006-07-12',38),(359,11317,15140,'2006-06-24','2006-06-24',19,'2006-07-15',19),(360,11314,15123,'2006-06-25','2006-06-26',40,'2006-07-13',10),(361,11316,15165,'2006-06-26','2006-06-26',1,'2006-07-06',11),(362,11313,15166,'2006-06-27','2006-06-28',2,'2006-07-08',13),(364,11316,15168,'2006-06-29','2006-06-29',4,'2006-08-10',35),(365,11316,15169,'2006-06-30','2006-06-30',5,'2006-07-04',9),(367,11316,15161,'2006-07-02','2006-07-02',7,'2006-07-13',18),(368,11313,15162,'2006-07-03','2006-07-04',8,'2006-07-10',12),(369,11311,15169,'2006-07-04','2006-07-04',9,'2006-07-10',15),(370,11317,15142,'2006-07-05','2006-07-06',28,'2006-07-26',28),(371,11313,15165,'2006-07-06','2006-07-06',11,'2006-07-12',12),(372,11319,15162,'2006-07-07','2006-07-10',12,'2006-07-12',8),(373,11314,15166,'2006-07-08','2006-07-08',13,'2006-07-12',16),(374,11318,15167,'2006-07-09','2006-07-10',14,'2006-07-17',14),(375,11313,15169,'2006-07-10','2006-07-10',15,'2006-07-14',19),(376,11319,15166,'2006-07-11','2006-07-12',16,'2006-07-18',23),(377,11312,15165,'2006-07-12','2006-07-12',12,'2006-07-17',17),(378,11310,15161,'2006-07-13','2006-07-13',18,'2006-07-16',21),(379,11319,15169,'2006-07-14','2006-07-14',19,'2006-07-22',26),(380,11310,15163,'2006-07-15','2006-07-16',20,'2006-07-24',29),(381,11319,15161,'2006-07-16','2006-07-16',21,'2006-07-21',9),(382,11312,15165,'2006-07-17','2006-07-17',17,'2006-07-21',19),(383,11318,15166,'2006-07-18','2006-07-18',23,'2006-07-28',12),(384,11312,15165,'2006-07-19','2006-07-22',19,'2006-07-21',20),(385,11312,15165,'2006-07-20','2006-07-21',20,'2006-07-23',23),(386,11318,15169,'2006-07-21','2006-07-22',26,'2006-08-14',36),(387,11314,15160,'2006-07-22','2006-07-22',27,'2006-08-10',11),(388,11312,15165,'2006-07-23','2006-07-23',23,'2006-07-26',31),(389,11313,15163,'2006-07-24','2006-07-24',29,'2006-08-13',29),(390,11318,15166,'2006-07-25','2006-07-28',12,'2006-07-28',33),(391,11313,15165,'2006-07-26','2006-07-26',31,'2006-08-15',31),(392,11315,15181,'2006-07-27','2006-07-27',11,'2006-08-16',31),(393,11310,15166,'2006-07-28','2006-07-28',33,'2006-08-16',33),(395,11310,15168,'2006-07-30','2006-07-30',35,'2006-08-18',35),(396,11310,15169,'2006-07-31','2006-07-31',36,'2006-08-19',36),(397,11312,15186,'2006-08-01','2006-08-01',11,'2006-08-02',12),(398,11312,15186,'2006-08-02','2006-08-02',12,'2006-08-23',12),(399,11315,15184,'2006-08-03','2006-08-03',15,'2006-08-08',15),(400,11315,15209,'2006-08-04','2006-08-05',16,'2006-08-13',9),(401,11410,15201,'2006-08-05','2006-08-05',1,'2006-08-13',1),(402,11419,15202,'2006-08-06','2006-08-07',2,'2006-08-21',14),(403,11415,15203,'2006-08-07','2006-08-07',3,'2006-08-12',3),(404,11410,15204,'2006-08-08','2006-08-09',4,'2006-08-19',15),(405,11418,15205,'2006-08-09','2006-08-09',5,'2006-09-08',34),(407,11411,15207,'2006-08-11','2006-08-11',23,'2006-08-19',14),(408,11416,15208,'2006-08-12','2006-08-13',8,'2006-08-23',19),(409,11416,15209,'2006-08-13','2006-08-13',9,'2006-08-22',9),(410,11412,15210,'2006-08-14','2006-08-14',29,'2006-09-15',29),(411,11419,15200,'2006-08-15','2006-08-15',11,'2006-08-21',17),(412,11412,15181,'2006-08-16','2006-08-16',31,'2006-09-17',31),(414,11416,15207,'2006-08-18','2006-08-19',14,'2006-09-09',36),(415,11419,15204,'2006-08-19','2006-08-19',15,'2006-09-06',33),(416,11411,15202,'2006-08-20','2006-08-21',14,'2006-08-25',14),(417,11413,15200,'2006-08-21','2006-08-21',17,'2006-09-06',32),(418,11414,15199,'2006-08-22','2006-08-22',19,'2006-09-10',18),(419,11419,15208,'2006-08-23','2006-08-23',19,'2006-08-28',13),(420,11418,15220,'2006-08-24','2006-08-25',20,'2006-09-04',11),(421,11416,15221,'2006-08-25','2006-08-25',21,'2006-09-14',21),(422,11411,15222,'2006-08-26','2006-08-27',20,'2006-09-11',20),(423,11418,15223,'2006-08-27','2006-08-27',23,'2006-09-08',12),(424,11415,15224,'2006-08-28','2006-08-28',24,'2006-09-26',14),(425,11412,15225,'2006-08-29','2006-08-29',26,'2006-09-25',26),(426,11411,15226,'2006-08-30','2006-08-30',24,'2006-09-15',24),(427,11411,15227,'2006-08-31','2006-08-31',25,'2006-09-16',25),(428,11413,15228,'2006-09-01','2006-09-02',28,'2006-09-10',28),(429,11411,15229,'2006-09-02','2006-09-02',24,'2006-09-07',24),(430,11416,15230,'2006-09-03','2006-09-03',30,'2006-09-12',30),(431,11414,15220,'2006-09-04','2006-09-04',11,'2006-09-12',19),(432,11415,15200,'2006-09-05','2006-09-06',32,'2006-09-12',38),(433,11418,15204,'2006-09-06','2006-09-06',33,'2006-09-14',33),(434,11410,15205,'2006-09-07','2006-09-08',34,'2006-09-10',37),(435,11411,15223,'2006-09-08','2006-09-08',12,'2006-09-13',12),(436,11418,15207,'2006-09-09','2006-09-09',36,'2006-09-17',36),(437,11415,15205,'2006-09-10','2006-09-10',37,'2006-09-15',37),(438,11416,15200,'2006-09-11','2006-09-12',38,'2006-09-20',38),(439,11414,15220,'2006-09-12','2006-09-12',19,'2006-09-20',39),(440,11418,15241,'2006-09-13','2006-09-14',40,'2006-09-14',1),(441,11418,15241,'2006-09-14','2006-09-14',1,'2006-09-26',13),(442,11415,15242,'2006-09-15','2006-09-16',2,'2006-09-28',14),(443,11416,15243,'2006-09-16','2006-09-16',3,'2006-09-28',15),(444,11410,15244,'2006-09-17','2006-09-18',4,'2006-10-06',22),(445,11412,15245,'2006-09-18','2006-09-18',25,'2006-10-10',27),(446,11416,15246,'2006-09-19','2006-09-22',6,'2006-09-28',6),(447,11419,15247,'2006-09-20','2006-09-20',7,'2006-10-02',19),(448,11412,15248,'2006-09-21','2006-09-22',28,'2006-10-12',10),(449,11415,15249,'2006-09-22','2006-09-22',9,'2006-10-10',17),(450,11414,15250,'2006-09-23','2006-09-26',12,'2006-10-11',10),(451,11417,15225,'2006-09-24','2006-09-25',26,'2006-10-15',26),(452,11412,15224,'2006-09-25','2006-09-26',14,'2006-10-16',14),(453,11419,15241,'2006-09-26','2006-09-26',13,'2006-10-12',29),(454,11419,15242,'2006-09-27','2006-09-28',14,'2006-10-10',24),(455,11415,15243,'2006-09-28','2006-09-28',15,'2006-10-12',13),(456,11417,15243,'2006-09-29','2006-09-29',13,'2006-10-03',17),(457,11416,15249,'2006-09-30','2006-09-30',17,'2006-10-08',25),(458,11413,15240,'2006-10-01','2006-10-01',18,'2006-10-10',18),(459,11419,15247,'2006-10-02','2006-10-02',19,'2006-10-18',35),(460,11411,15243,'2006-10-03','2006-10-03',17,'2006-10-04',18),(461,11411,15243,'2006-10-04','2006-10-04',18,'2006-10-07',20),(462,11416,15244,'2006-10-05','2006-10-06',22,'2006-10-10',26),(463,11411,15243,'2006-10-06','2006-10-07',20,'2006-10-16',32),(464,11419,15242,'2006-10-07','2006-10-10',24,'2006-10-16',30),(465,11412,15249,'2006-10-08','2006-10-08',25,'2006-10-14',31),(466,11415,15244,'2006-10-09','2006-10-10',26,'2006-10-14',26),(467,11415,15245,'2006-10-10','2006-10-10',27,'2006-10-16',33),(468,11414,15248,'2006-10-11','2006-10-12',10,'2006-10-19',28),(469,11416,15241,'2006-10-12','2006-10-12',29,'2006-10-24',40),(470,11413,15242,'2006-10-13','2006-10-16',30,'2006-10-18',16),(471,11415,15249,'2006-10-14','2006-10-14',31,'2006-10-19',31),(472,11410,15243,'2006-10-15','2006-10-16',32,'2006-10-23',32),(473,11413,15245,'2006-10-16','2006-10-16',33,'2006-10-20',37),(474,11414,15242,'2006-10-17','2006-10-18',16,'2006-10-25',34),(475,11413,15247,'2006-10-18','2006-10-18',35,'2006-10-22',36),(476,11418,15247,'2006-10-19','2006-10-22',36,'2006-10-27',36),(477,11415,15245,'2006-10-20','2006-10-20',37,'2006-10-25',37),(478,11411,15261,'2006-10-21','2006-10-21',17,'2006-10-22',18),(479,11411,15261,'2006-10-22','2006-10-22',18,'2006-10-28',24),(480,11410,15241,'2006-10-23','2006-10-24',40,'2006-11-11',40),(481,11410,15280,'2006-10-24','2006-10-24',1,'2006-10-26',3),(482,11417,15263,'2006-10-25','2006-10-28',19,'2006-10-27',21),(483,11410,15280,'2006-10-26','2006-10-26',3,'2006-11-10',7),(484,11417,15263,'2006-10-27','2006-10-27',21,'2006-11-08',16),(485,11411,15261,'2006-10-28','2006-10-28',24,'2006-11-12',25),(486,11411,15261,'2006-10-29','2006-10-29',25,'2006-11-03',30),(487,11418,15280,'2006-10-30','2006-10-30',7,'2006-11-12',8),(488,11415,15280,'2006-10-31','2006-10-31',8,'2006-11-03',10),(489,11411,15264,'2006-11-01','2006-11-01',25,'2006-11-06',25),(490,11418,15280,'2006-11-02','2006-11-03',10,'2006-11-05',13),(491,11412,15261,'2006-11-03','2006-11-03',30,'2006-11-07',31),(492,11412,15261,'2006-11-04','2006-11-07',31,'2006-11-25',31),(493,11415,15280,'2006-11-05','2006-11-05',13,'2006-11-09',16),(494,11459,15282,'2006-11-06','2006-11-09',12,'2006-11-11',18),(495,11412,15263,'2006-11-07','2006-11-08',16,'2006-11-28',16),(496,11413,15280,'2006-11-08','2006-11-09',16,'2006-11-29',36),(497,11417,15284,'2006-11-09','2006-11-09',13,'2006-12-10',13),(498,11414,15260,'2006-11-10','2006-11-10',19,'2006-11-18',18),(499,11414,15259,'2006-11-11','2006-11-12',20,'2006-11-19',19),(500,11412,15300,'2006-11-12','2006-11-15',21,'2006-12-10',18),(501,11559,15301,'2006-11-13','2006-11-13',21,'2006-11-18',14),(502,11552,15302,'2006-11-14','2006-11-14',18,'2006-12-15',18),(503,11559,15303,'2006-11-15','2006-11-15',23,'2006-11-20',8),(504,11554,15304,'2006-11-16','2006-11-19',24,'2006-11-24',13),(505,11557,15305,'2006-11-17','2006-11-18',26,'2006-12-18',26),(506,11556,15306,'2006-11-18','2006-11-19',26,'2006-11-27',26),(507,11554,15307,'2006-11-19','2006-11-19',27,'2006-11-27',16),(508,11550,15308,'2006-11-20','2006-11-21',28,'2006-11-28',28),(509,11550,15309,'2006-11-21','2006-11-21',29,'2006-11-29',29),(510,11554,15310,'2006-11-22','2006-11-25',30,'2006-12-10',11),(511,11557,15297,'2006-11-23','2006-11-24',14,'2006-11-26',15),(512,11557,15297,'2006-11-24','2006-11-27',15,'2006-11-26',16),(513,11557,15297,'2006-11-25','2006-11-26',16,'2006-11-26',17),(514,11558,15297,'2006-11-26','2006-11-26',17,'2006-11-27',18),(515,11558,15297,'2006-11-27','2006-11-27',18,'2006-12-15',18),(516,11556,15280,'2006-11-28','2006-11-28',36,'2006-11-29',37),(517,11550,15280,'2006-11-29','2006-11-29',37,'2006-12-01',39),(518,11535,15300,'2006-11-30','2006-11-30',18,'2006-12-15',18),(519,11550,15280,'2006-12-01','2006-12-01',39,'2006-12-09',39),(520,11551,15327,'2006-12-02','2006-12-03',40,'2006-12-09',7),(521,11551,15321,'2006-12-03','2006-12-03',1,'2007-01-08',18),(522,11535,15322,'2006-12-04','2006-12-05',20,'2006-12-13',11),(523,11558,15323,'2006-12-05','2006-12-05',24,'2006-12-19',16),(524,11556,15324,'2006-12-06','2006-12-07',4,'2006-12-15',13),(525,11553,15325,'2006-12-07','2006-12-07',5,'2006-12-17',15),(526,11559,15326,'2006-12-08','2006-12-08',6,'2007-01-12',40),(527,11554,15327,'2006-12-09','2006-12-09',7,'2007-01-02',31),(528,11553,15328,'2006-12-10','2006-12-11',8,'2006-12-20',18),(529,11554,15329,'2006-12-11','2006-12-11',9,'2006-12-21',19),(530,11553,15330,'2006-12-12','2006-12-13',10,'2006-12-21',10),(531,11553,15322,'2006-12-13','2006-12-13',11,'2006-12-22',11),(532,11558,15317,'2006-12-14','2006-12-14',15,'2006-12-16',17),(533,11553,15324,'2006-12-15','2006-12-15',13,'2006-12-19',17),(534,11557,15317,'2006-12-16','2006-12-16',17,'2007-01-17',17),(535,11550,15325,'2006-12-17','2006-12-17',15,'2006-12-25',15),(536,11551,15323,'2006-12-18','2006-12-19',16,'2007-01-06',34),(537,11551,15324,'2006-12-19','2006-12-19',17,'2007-01-06',35),(538,11550,15328,'2006-12-20','2006-12-20',18,'2007-01-10',39),(539,11550,15329,'2006-12-21','2006-12-21',19,'2006-12-29',19),(540,11535,15340,'2006-12-22','2006-12-23',20,'2007-01-08',16),(541,11551,15341,'2006-12-23','2006-12-23',21,'2006-12-28',21),(542,11513,15342,'2006-12-24','2006-12-25',26,'2007-01-13',26),(543,11514,15343,'2006-12-25','2006-12-25',23,'2007-01-05',9),(544,11518,15344,'2006-12-26','2006-12-26',24,'2007-01-14',24),(545,11519,15345,'2006-12-27','2006-12-27',25,'2007-01-12',11),(546,11517,15346,'2006-12-28','2006-12-28',29,'2007-01-19',11),(547,11519,15347,'2006-12-29','2006-12-29',9,'2007-01-14',13),(548,11551,15348,'2006-12-30','2006-12-30',28,'2007-01-15',28),(549,11550,15349,'2006-12-31','2006-12-31',29,'2007-01-19',29),(550,11550,15350,'2007-01-01','2007-01-01',30,'2007-01-09',30),(551,11515,15327,'2007-01-02','2007-01-02',31,'2007-01-07',31),(552,11519,15343,'2007-01-03','2007-01-06',9,'2007-01-05',10),(553,11519,15343,'2007-01-04','2007-01-05',10,'2007-01-18',21),(554,11518,15323,'2007-01-05','2007-01-06',34,'2007-01-13',34),(556,11512,15340,'2007-01-07','2007-01-08',16,'2007-01-18',26),(557,11513,15321,'2007-01-08','2007-01-08',18,'2007-01-17',18),(558,11511,15324,'2007-01-09','2007-01-10',38,'2007-01-14',38),(559,11518,15328,'2007-01-10','2007-01-10',39,'2007-01-18',39),(560,11511,15326,'2007-01-11','2007-01-12',40,'2007-01-16',40),(561,11515,15367,'2007-01-12','2007-01-12',1,'2007-02-03',22),(562,11516,15316,'2007-01-13','2007-01-13',23,'2007-01-22',23),(563,11511,15369,'2007-01-14','2007-01-14',3,'2007-01-24',13),(564,11519,15343,'2007-01-15','2007-01-18',21,'2007-01-20',11),(565,11511,15361,'2007-01-16','2007-01-16',5,'2007-01-23',10),(566,11517,15340,'2007-01-17','2007-01-18',26,'2007-01-18',27),(567,11512,15340,'2007-01-18','2007-01-18',27,'2007-01-20',29),(568,11516,15346,'2007-01-19','2007-01-19',11,'2007-01-28',11),(569,11512,15340,'2007-01-20','2007-01-20',29,'2007-02-10',18),(570,11515,15366,'2007-01-21','2007-01-22',10,'2007-02-13',12),(571,11519,15361,'2007-01-22','2007-01-23',10,'2007-01-26',12),(572,11514,15361,'2007-01-23','2007-01-26',12,'2007-01-27',14),(573,11515,15369,'2007-01-24','2007-01-24',13,'2007-02-12',20),(574,11514,15363,'2007-01-25','2007-01-26',14,'2007-01-28',17),(575,11519,15361,'2007-01-26','2007-01-27',14,'2007-02-02',20),(576,11512,15340,'2007-01-27','2007-01-27',18,'2007-02-18',18),(577,11515,15363,'2007-01-28','2007-01-28',17,'2007-02-19',38),(578,11515,15364,'2007-01-29','2007-01-29',18,'2007-02-05',25),(579,11518,15368,'2007-01-30','2007-01-30',19,'2007-02-09',10),(580,11514,15369,'2007-01-31','2007-01-31',20,'2007-02-07',9),(581,11517,15361,'2007-02-01','2007-02-02',20,'2007-02-04',22),(582,11511,15367,'2007-02-02','2007-02-03',22,'2007-02-07',22),(583,11517,15361,'2007-02-03','2007-02-04',22,'2007-02-04',23),(584,11510,15361,'2007-02-04','2007-02-04',23,'2007-02-06',25),(585,11513,15364,'2007-02-05','2007-02-05',25,'2007-02-14',25),(586,11512,15361,'2007-02-06','2007-02-06',25,'2007-02-10',28),(587,11513,15369,'2007-02-07','2007-02-07',9,'2007-02-11',31),(588,11516,15368,'2007-02-08','2007-02-09',10,'2007-02-17',10),(589,11512,15361,'2007-02-09','2007-02-10',28,'2007-02-12',31),(590,11513,15366,'2007-02-10','2007-02-13',12,'2007-02-19',12),(591,11514,15369,'2007-02-11','2007-02-11',31,'2007-02-15',34),(592,11517,15361,'2007-02-12','2007-02-12',31,'2007-02-13',33),(593,11518,15361,'2007-02-13','2007-02-13',33,'2007-02-21',33),(594,11515,15369,'2007-02-14','2007-02-15',34,'2007-02-19',34),(595,11511,15360,'2007-02-15','2007-02-15',35,'2007-02-20',35),(596,11512,15362,'2007-02-16','2007-02-16',17,'2007-03-17',17),(597,11514,15365,'2007-02-17','2007-02-17',37,'2007-02-25',37),(598,11511,15363,'2007-02-18','2007-02-19',38,'2007-02-23',38),(599,11513,15357,'2007-02-19','2007-02-19',21,'2007-02-28',21),(600,11514,15400,'2007-02-20','2007-02-21',40,'2007-02-28',40);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-18 17:33:23
