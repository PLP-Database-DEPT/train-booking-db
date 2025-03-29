/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.5.25-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: trainbookingDB
-- ------------------------------------------------------
-- Server version	10.5.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `starting_station_id` int(11) DEFAULT NULL,
  `ending_station_id` int(11) DEFAULT NULL,
  `ticket_class_id` int(11) DEFAULT NULL,
  `amount_paid` decimal(10,0) DEFAULT NULL,
  `train_journey_id` int(11) DEFAULT NULL,
  `ticket_no` int(11) DEFAULT NULL,
  `seat_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `train_journey_id` (`train_journey_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `booking_status` (`id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`train_journey_id`) REFERENCES `train_journey` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_status`
--

DROP TABLE IF EXISTS `booking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status`
--

LOCK TABLES `booking_status` WRITE;
/*!40000 ALTER TABLE `booking_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carriage_class`
--

DROP TABLE IF EXISTS `carriage_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carriage_class` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `seat_capacity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carriage_class`
--

LOCK TABLES `carriage_class` WRITE;
/*!40000 ALTER TABLE `carriage_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `carriage_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey_carriage`
--

DROP TABLE IF EXISTS `journey_carriage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journey_carriage` (
  `journey_id` int(11) DEFAULT NULL,
  `carriage_class_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  KEY `journey_id` (`journey_id`),
  KEY `carriage_class_id` (`carriage_class_id`),
  CONSTRAINT `journey_carriage_ibfk_1` FOREIGN KEY (`journey_id`) REFERENCES `booking` (`train_journey_id`),
  CONSTRAINT `journey_carriage_ibfk_2` FOREIGN KEY (`carriage_class_id`) REFERENCES `carriage_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey_carriage`
--

LOCK TABLES `journey_carriage` WRITE;
/*!40000 ALTER TABLE `journey_carriage` DISABLE KEYS */;
/*!40000 ALTER TABLE `journey_carriage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_journey`
--

DROP TABLE IF EXISTS `train_journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train_journey` (
  `id` int(11) NOT NULL,
  `scheduele_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_journey`
--

LOCK TABLES `train_journey` WRITE;
/*!40000 ALTER TABLE `train_journey` DISABLE KEYS */;
/*!40000 ALTER TABLE `train_journey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-29  0:35:18
