-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `movie_rank`
--

DROP TABLE IF EXISTS `job_opening_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_opening_tbl` (
  `job_uniq_id` int(11) NOT NULL,
  `co_uniq_id` int(11) NOT NULL,
  `loc_uniq_id` int(11) NOT NULL,
  `tech_skill_1` int(11) NOT NULL,
  `tech_skill_2` int(11) NOT NULL,
  `tech_skill_3` int(11) DEFAULT NULL,
  `tech_skill_4` int(11) DEFAULT NULL,
  `tech_skill_5` int(11) DEFAULT NULL,
  `soft_skill_descr_1` int(11) NOT NULL,
  `soft_skill_descr_2` int(11) NOT NULL,
  `soft_skill_descr_3` int(11) DEFAULT NULL,
  `soft_skill_descr_4` int(11) DEFAULT NULL,
  `soft_skill_descr_5` int(11) DEFAULT NULL,
  `num_open_posits` int(11) NOT NULL,
  `work_remote` varchar(1)  NOT NULL,
  `etl_dt`  date NOT NULL,
  PRIMARY KEY (`job_uniq_id`, `co_uniq_id`,`loc_uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_dim`
--

DROP TABLE IF EXISTS `location_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_dim` (
  `loc_uniq_id` int(11) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(3) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `etl_nr` int(11) NOT NULL,
  `etl_dt`  date NOT NULL,
  PRIMARY KEY (`loc_uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tech_skills_dim`
--

DROP TABLE IF EXISTS `tech_skills_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_skills_dim` (
  `tech_skill_uniq_id` int(11) NOT NULL,
  `skill_nm` varchar(50) NOT NULL,
  `skill_type` varchar(25) NOT NULL,
  `etl_nr` int(11) NOT NULL,
  `etl_dt`  date NOT NULL,
   PRIMARY KEY (`tech_skill_uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `job_dim`
--

DROP TABLE IF EXISTS `job_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_dim` (
  `job_uniq_id` int(11) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_title_descr` varchar(100) NOT NULL,
  `salary_min` int(11) NOT NULL,
  `salary_max` int(11) NOT NULL,
  `etl_nr` int(11) NOT NULL,
  `etl_dt`  date NOT NULL,
   PRIMARY KEY (`job_uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `company_dim`
--

DROP TABLE IF EXISTS `company_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_dim` (
  `co_uniq_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(3) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `etl_nr` int(11) NOT NULL,
  `etl_dt`  date NOT NULL,
   PRIMARY KEY (`co_uniq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-06  5:29:16
