-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: jobs
-- ------------------------------------------------------
-- Server version	5.6.26-log

/* !40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/* !40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/* !40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/* !40101 SET NAMES utf8 */;
/* !40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/* !40103 SET TIME_ZONE='+00:00' */;
/* !40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/* !40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/* !40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/* !40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `job_opening_tbl`
--

DROP TABLE IF EXISTS `job_opening_tbl`;
/* !40101 SET @saved_cs_client     = @@character_set_client */;
/* !40101 SET character_set_client = utf8 */;
CREATE TABLE `job_opening_tbl` (
  `uniq_id` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_descr` varchar(5000) NOT NULL,
  PRIMARY KEY (`uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* !40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_dim`
--

DROP TABLE IF EXISTS `location_dim`;
/* !40101 SET @saved_cs_client     = @@character_set_client */;
/* !40101 SET character_set_client = utf8 */;
CREATE TABLE `location_dim` (
  `uniq_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(3) NOT NULL,
  `zip_code` int(11) NOT NULL,
  PRIMARY KEY (`uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* !40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tech_skills_dim`
--

DROP TABLE IF EXISTS `tech_skills_dim`;

/* !40101 SET SQL_MODE=@OLD_SQL_MODE */;
/* !40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* !40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/* !40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* !40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* !40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* !40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `job_dim`
--

DROP TABLE IF EXISTS `job_dim`;

/* !40101 SET SQL_MODE=@OLD_SQL_MODE */;
/* !40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* !40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/* !40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* !40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* !40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* !40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `company_dim`
--

DROP TABLE IF EXISTS `company_dim`;

/* !40101 SET SQL_MODE=@OLD_SQL_MODE */;
/* !40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* !40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/* !40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* !40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* !40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* !40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed 