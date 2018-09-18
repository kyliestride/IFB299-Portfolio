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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (11010,'Jacquelyn S','0000-00-00','800 Corrinne Court','Labour','1 (11) 543 535-016*','M'),(11011,'Curtis L','0000-00-00','224 Shoenic','Labour','1 (11) 543 535-011*','M'),(11012,'Lauren W','0000-00-00','785 Scott Street','Labour','717-535-016*','F'),(11013,'Ian J','0000-00-00','902 Hudson Ave.','Labour','817-535-018*','M'),(11014,'Sydney B','0000-00-00','7011 Tank Drive','Labour','431-535-015*','M'),(11015,'Chloe Y','0000-00-00','44 Willow Pass Road','Labour','208-535-014*','F'),(11016,'Wyatt H','0000-00-00','666 Northridge Ct.','Labour','135-535-017*','M'),(11017,'Shannon W','0000-00-00','330 Saddlehill Lane','Labour','1 (11) 543 535-019*','M'),(11018,'Clarence R','0000-00-00','44 Rivewview','Labour','1 (11) 543 535-013*','F'),(11019,'Luke L','0000-00-00','832 Landing Dr','Labour','262-535-011*','M'),(11050,'Alan Z','0000-00-00','741 Gainborough Dr.','Labour','1 (11) 543 535-013*','F'),(11051,'Daniel J','0000-00-00','85 Sunnyvale Avenue','Labour','1 (11) 543 535-015*','F'),(11052,'Heidi L','0000-00-00','514 Via Cordona','Labour','1 (11) 543 535-016*','F'),(11053,'Ana P','0000-00-00','660 Stonyhill Circle','Labour','859-535-011*','M'),(11054,'Deanna M','0000-00-00','825 B Way','Labour','1 (11) 543 535-019*','M'),(11055,'Gilbert R','0000-00-00','811 The Trees Dr.','Labour','1 (11) 543 535-012*','F'),(11056,'Michele N','0000-00-00','464 Janin Pl.','Labour','1 (11) 543 535-017*','M'),(11057,'Carl A','0000-00-00','930 Lake Nadine Place','Labour','1 (11) 543 535-018*','F'),(11058,'Marc D','0000-00-00','645 Sinaloa','Labour','1 (11) 543 535-014*','F'),(11059,'Ashlee A','0000-00-00','255 Highland Road','Labour','1 (11) 543 535-011*','F'),(11111,'Meredith G','0000-00-00','610 Northridge Ct.','Labour','1 (11) 543 535-017*','M'),(11112,'Crystal W','0000-00-00','773 Kirkwood Dr','Labour','1 (11) 543 535-013*','F'),(11113,'Micheal B','0000-00-00','96 Marfargoa Drive','Labour','1 (11) 543 535-013*','M'),(11114,'Leslie M','0000-00-00','941 Cristobal','Labour','1 (11) 543 535-011*','M'),(11115,'Alvin C','0000-00-00','759 Azalea Avenue','Labour','1 (11) 543 535-019*','M'),(11116,'Clinton C','0000-00-00','943 Cunha Ct.','Labour','1 (11) 543 535-018*','M'),(11117,'April D','0000-00-00','85 Ash Lane','Labour','1 (11) 543 535-018*','F'),(11119,'Evan J','0000-00-00','157 Sierra Ridge','Retiree','1 (11) 543 535-018*','F'),(11150,'Russell S','0000-00-00','755 Easley Drive','Retiree','1 (11) 543 535-019*','F'),(11151,'Melinda G','0000-00-00','05 Rainier Dr.','Labour','1 (11) 543 535-011*','F'),(11152,'James W','0000-00-00','827 Seagull Court','Labour','355-535-015*','F'),(11153,'Angela J','0000-00-00','877 Weatherly Drive','Labour','847-535-011*','F'),(11154,'Megan W','0000-00-00','898 Holiday Hills','Labour','918-535-018*','F'),(11155,'Hunter R','0000-00-00','356 Mori Court','Labour','891-535-012*','F'),(11156,'Maria R','0000-00-00','452 Mariposa Ct.','Labour','158-535-019*','M'),(11157,'Hannah L','0000-00-00','832 Preston Ct.','Labour','974-535-017*','M'),(11158,'Jason W','0000-00-00','771 Bundros Court','Labour','694-535-017*','F'),(11159,'Brianna H','0000-00-00','793 Bonifacio St.','Labour','319-535-018*','F'),(11210,'Edward W','0000-00-00','039 Adelaide St.','Researcher','229-535-011*','M'),(11213,'Stephanie M','0000-00-00','514 Grant Street','Researcher','293-535-015*','M'),(11214,'Charles M','0000-00-00','719 Little Dr','Researcher','389-535-011*','F'),(11215,'Ana P','0000-00-00','114 Arlington Way','Researcher','446-535-013*','M'),(11216,'Jasmine T','0000-00-00','328 San Francisco','Researcher','939-535-013*','F'),(11217,'Natalie A','0000-00-00','592 Bent Tree Lane','Researcher','300-535-015*','F'),(11218,'Olivia B','0000-00-00','964 Stony Hill Circle','Researcher','414-535-014*','M'),(11219,'Charles C','0000-00-00','871 Bel Air Dr.','Researcher','755-535-011*','F'),(11250,'Shannon L','0000-00-00','185 Keywood Ct.','Manager','1 (11) 543 535-011*','F'),(11251,'Xavier L','0000-00-00','245 Dantley Way','Retiree','243-535-011*','M'),(11252,'Nicholas T','0000-00-00','04 O St.','Retiree','377-535-014*','M'),(11253,'José H','0000-00-00','703 Donald Dr.','Retiree','712-535-013*','M'),(11254,'Johnathan V','0000-00-00','430 Versailles Pl','Retiree','494-535-016*','M'),(11255,'Colin L','0000-00-00','083 San Jose','Retiree','599-535-013*','F'),(11256,'Katelyn H','0000-00-00','496 Deerfield Dr.','Retiree','249-535-011*','M'),(11257,'Jacqueline P','0000-00-00','076 Northwood Dr','Retiree','796-535-011*','F'),(11258,'Xavier H','0000-00-00','707 Virgil Street','Retiree','559-535-014*','F'),(11259,'Victoria S','0000-00-00','623 Barquentine Court','Manager','230-535-013*','M'),(11310,'Erin S','0000-00-00','541 Black Point Pl','Manager','233-535-016*','M'),(11311,'Gabrielle L','0000-00-00','619 Parkside Dr.','Manager','783-535-017*','F'),(11312,'Sara R','0000-00-00','375 Kipling Court','Manager','296-535-017*','M'),(11313,'Trevor J','0000-00-00','697 Yosemite Dr.','Manager','120-535-012*','F'),(11314,'Mya F','0000-00-00','439 Rio Grande Drive','Manager','522-535-014*','F'),(11315,'Hailey W','0000-00-00','321 Maya','Manager','767-535-015*','F'),(11316,'Luke A','0000-00-00','19 Deermeadow Way','Manager','786-535-013*','F'),(11317,'Victoria R','0000-00-00','268 Keller Ridge','Manager','663-535-019*','M'),(11318,'Jessica W','0000-00-00','652 Willcrest Circle','Manager','702-535-018*','M'),(11319,'Jade B','0000-00-00','119 Northridge Ct','Retiree','819-535-016*','F'),(11350,'Cara Z','0000-00-00','280 Greendell Pl','Retiree','1 (11) 543 535-011*','M'),(11351,'Anne R','0000-00-00','113 Eastgate Ave.','Retiree','1 (11) 543 535-014*','M'),(11352,'Raymond R','0000-00-00','4, impasse Ste-Madeleine','Retiree','1 (11) 543 535-013*','F'),(11353,'Carrie O','0000-00-00','883 Cowell Rd.','Retiree','1 (11) 543 535-011*','M'),(11354,'Deanna S','0000-00-00','unckerstr 22525','Manager','1 (11) 543 535-014*','M'),(11355,'Roberto G','0000-00-00','545 Chickpea Ct.','Manager','1 (11) 543 535-012*','M'),(11356,'Terrence C','0000-00-00','613 Thornhill Place','Manager','1 (11) 543 535-018*','F'),(11357,'Ramon Y','0000-00-00','245 Vista Oak Dr.','Manager','1 (11) 543 535-014*','M'),(11358,'Cynthia M','0000-00-00','757 Pamplona Ct.','Manager','1 (11) 543 535-018*','F'),(11359,'Jarrod P','0000-00-00','657 H St.','Manager','1 (11) 543 535-015*','M'),(11410,'Maurice G','0000-00-00','5, avenue de la Gare','Manager','1 (11) 543 535-017*','M'),(11411,'Devin R','0000-00-00','ostenweg 2428','Manager','1 (11) 543 535-017*','M'),(11412,'Sydney B','0000-00-00','ostfach 99 92 92','Manager','1 (11) 543 535-015*','M'),(11413,'Megan S','0000-00-00','192 Seagull Court','Manager','1 (11) 543 535-011*','F'),(11414,'Ian R','0000-00-00','26 W. Buchanan Rd.','Manager','1 (11) 543 535-011*','M'),(11415,'Randy S','0000-00-00','o?str 5538','Manager','1 (11) 543 535-014*','M'),(11416,'Katrina B','0000-00-00','205, rue Malar','Manager','1 (11) 543 535-015*','F'),(11417,'Lacey Z','0000-00-00',', rue de Linois','Manager','1 (11) 543 535-017*','F'),(11418,'Rafael H','0000-00-00','eiter Weg 7765','Manager','1 (11) 543 535-015*','M'),(11419,'Kyle S','0000-00-00','381 Alpine Rd.','Manager','1 (11) 543 535-017*','M'),(11459,'Tasha D','0000-00-00','627 Kendall Rd','Nurse','1 (11) 543 535-017*','M'),(11510,'Seth R','0000-00-00','989 Concord Ave','Nurse','199-535-014*','M'),(11511,'Caleb P','0000-00-00','324 Cherry Street','Nurse','786-535-013*','F'),(11512,'Natalie C','0000-00-00','481 Broadmoor Drive','Nurse','178-535-014*','M'),(11513,'Alyssa H','0000-00-00','780 Conifer Terrace','Nurse','805-535-018*','M'),(11514,'Dalton D','0000-00-00','033 Danesta Dr.','Nurse','994-535-015*','F'),(11515,'Shannon H','0000-00-00','679 Duke Way','Nurse','458-535-011*','F'),(11516,'Mya G','0000-00-00','826 Fine Drive','Nurse','211-535-011*','F'),(11517,'Katherine B','0000-00-00','761 Dancing Court','Nurse','802-535-013*','F'),(11518,'Edward W','0000-00-00','747 Carmel Dr.','Nurse','446-535-017*','F'),(11519,'Jerome N','0000-00-00','537 Ridgewood Drive','Nurse','934-535-019*','M'),(11535,'Alexandria H','0000-00-00','1, rue de la Cavalerie','Retiree','1 (11) 543 535-018*','M'),(11550,'Deb T','0000-00-00','553 Harness Circle','Nurse','1 (11) 543 535-012*','M'),(11551,'Shannon A','0000-00-00','68, avenue de l?Europe','Nurse','1 (11) 543 535-015*','F'),(11552,'Eddie R','0000-00-00','eiderplatz 662','Nurse','1 (11) 543 535-015*','M'),(11553,'Sharon L','0000-00-00','804 Coldwater Drive','Nurse','1 (11) 543 535-011*','F'),(11554,'Sydney S','0000-00-00','8, avenue de l? Union Centrale','Retiree','1 (11) 543 535-019*','F'),(11556,'Lucas E','0000-00-00','663 A St.','Nurse','1 (11) 543 535-015*','M'),(11557,'Felicia R','0000-00-00','557 Steven Circle','Nurse','1 (11) 543 535-019*','M'),(11558,'Ivan M','0000-00-00','086 Nottingham Place','Nurse','1 (11) 543 535-019*','M'),(11559,'Frederick S','0000-00-00','otth?user Weg 636','Nurse','1 (11) 543 535-011*','M');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-18 17:33:24
