DROP DATABASE IF EXISTS artistmanagement;
CREATE DATABASE artistmanagement;
USE artistmanagement;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: artistmanagement
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `Artist_ID` varchar(50) NOT NULL,
  `Artist_Name` varchar(100) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Manager_Name` varchar(50) DEFAULT NULL,
  `Contract_Start` date DEFAULT NULL,
  `Contract_End` date DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Artist_ID`),
  UNIQUE KEY `Artist_ID` (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES ('A001','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A002','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A003','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A004','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A005','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A006','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A007','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A008','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A009','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A010','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A011','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A012','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A013','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A014','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A015','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A016','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A017','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A018','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A019','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A020','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A021','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A022','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A023','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A024','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A025','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A026','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A027','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A028','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A029','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A030','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A031','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A032','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A033','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A034','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A035','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A036','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A037','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A038','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A039','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A040','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A041','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A042','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A043','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A044','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A045','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner'),('A046','Taylor Swift','Pop','212-555-0191','taylor@repmusic.com','Jack Antonoff','2018-01-01','2026-12-31','Platinum-selling artist'),('A047','Drake','Hip-Hop','416-555-8821','drake@ovo.com','Noah \'40\' Shebib','2017-05-12','2025-05-11','OVO founder'),('A048','Bad Bunny','Reggaeton','787-555-3311','badbunny@rimas.com','Noah Assad','2019-03-08','2027-03-08','Stadium tours'),('A049','The Weeknd','R&B','647-555-1202','weeknd@xo.com','Wassim \'Sal\' Slaiby','2016-02-02','2024-12-31','Super Bowl performer'),('A050','Billie Eilish','Alternative','310-555-4419','billie@darkroom.com','Danny Rukasin','2020-10-10','2028-10-10','Grammy winner');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `Project_ID` varchar(50) NOT NULL,
  `Artist_ID` varchar(50) DEFAULT NULL,
  `Project_Name` varchar(100) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Budget` varchar(50) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Project_ID`),
  UNIQUE KEY `Project_ID` (`Project_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`Artist_ID`) REFERENCES `artists` (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('P001','A001','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P002','A002','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P003','A003','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P004','A004','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P005','A005','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P006','A006','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P007','A007','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P008','A008','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P009','A009','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P010','A010','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P011','A011','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P012','A012','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P013','A013','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P014','A014','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P015','A015','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P016','A016','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P017','A017','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P018','A018','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P019','A019','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P020','A020','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P021','A021','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P022','A022','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P023','A023','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P024','A024','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P025','A025','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P026','A026','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P027','A027','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P028','A028','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P029','A029','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P030','A030','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P031','A031','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P032','A032','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P033','A033','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P034','A034','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P035','A035','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P036','A036','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P037','A037','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P038','A038','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P039','A039','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P040','A040','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P041','A041','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P042','A042','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P043','A043','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P044','A044','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P045','A045','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour'),('P046','A046','Midnights Tour Expansion','2023-03-01','2023-11-30','Completed','85000000','Additional Europe dates'),('P047','A047','OVO Fest 2024','2024-01-10','2024-08-10','Planned','15000000','Annual Toronto festival'),('P048','A048','New Album \'Nadie Sabe\'','2023-07-01','2024-02-15','In Progress','6000000','Studio sessions ongoing'),('P049','A049','Dawn FM Deluxe','2023-05-15','2023-12-01','Completed','4000000','Additional tracks release'),('P050','A050','Billie World Tour','2024-02-01','2025-01-01','Planned','70000000','Global tour');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-20 20:09:25
