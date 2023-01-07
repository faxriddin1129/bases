-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ba
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ID`
--

DROP TABLE IF EXISTS `ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ID` (
  `id` int NOT NULL AUTO_INCREMENT,
  `centre_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ID`
--

LOCK TABLES `ID` WRITE;
/*!40000 ALTER TABLE `ID` DISABLE KEYS */;
INSERT INTO `ID` VALUES (1,401);
/*!40000 ALTER TABLE `ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `telegram_1` varchar(255) DEFAULT NULL,
  `telegram_2` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `coin` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `bot_token` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'https://t.me/parvoz_pmt','998903139798','https://t.me/parvoz_pmt','https://t.me/parvoz_pmt','https://t.me/parvoz_pmt','Simply','logo (1).svg','Karimbek Tojiyev','5984303541:AAHEqgbuVPl8uCDucdvqQI7LlnazesQmSus');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_razdel`
--

DROP TABLE IF EXISTS `all_razdel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_razdel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_razdel`
--

LOCK TABLES `all_razdel` WRITE;
/*!40000 ALTER TABLE `all_razdel` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_razdel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_employee`
--

DROP TABLE IF EXISTS `attendance_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `result` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_employee`
--

LOCK TABLES `attendance_employee` WRITE;
/*!40000 ALTER TABLE `attendance_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avans`
--

DROP TABLE IF EXISTS `avans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` int DEFAULT '0',
  `date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avans`
--

LOCK TABLES `avans` WRITE;
/*!40000 ALTER TABLE `avans` DISABLE KEYS */;
/*!40000 ALTER TABLE `avans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `back_money`
--

DROP TABLE IF EXISTS `back_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `back_money` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pupil_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `back_price` int DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `day` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_money`
--

LOCK TABLES `back_money` WRITE;
/*!40000 ALTER TABLE `back_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `back_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ball`
--

DROP TABLE IF EXISTS `ball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ball` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `ball` float DEFAULT NULL,
  `created_at` varchar(55) DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ball`
--

LOCK TABLES `ball` WRITE;
/*!40000 ALTER TABLE `ball` DISABLE KEYS */;
INSERT INTO `ball` VALUES (1,3,1,100,'2022-12-18','2022-12'),(2,4,1,98.4,'2022-12-18','2022-12'),(3,5,1,96.9,'2022-12-18','2022-12'),(4,7,1,15.6,'2022-12-18','2022-12'),(5,8,1,15.6,'2022-12-18','2022-12'),(6,9,1,39.1,'2022-12-18','2022-12'),(7,10,1,6.3,'2022-12-18','2022-12'),(8,11,1,85.9,'2022-12-18','2022-12'),(9,12,1,84.4,'2022-12-18','2022-12'),(10,6,1,70.3,'2022-12-18','2022-12');
/*!40000 ALTER TABLE `ball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bot`
--

DROP TABLE IF EXISTS `bot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_id` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bot`
--

LOCK TABLES `bot` WRITE;
/*!40000 ALTER TABLE `bot` DISABLE KEYS */;
INSERT INTO `bot` VALUES (1,'2140451805','+998907291129','faxriddin1129',1670337536,1670337536),(2,'1758450044','998903139798','TojiyevKarim9798',1671369945,1671369945);
/*!40000 ALTER TABLE `bot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bot_user`
--

DROP TABLE IF EXISTS `bot_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bot_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bot_id` int DEFAULT NULL,
  `pupil_id` int DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx-bot_user-bot_id` (`bot_id`),
  KEY `idx-bot_user-pupil_id` (`pupil_id`),
  CONSTRAINT `fk-bot_user-bot_id` FOREIGN KEY (`bot_id`) REFERENCES `bot` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-bot_user-pupil_id` FOREIGN KEY (`pupil_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bot_user`
--

LOCK TABLES `bot_user` WRITE;
/*!40000 ALTER TABLE `bot_user` DISABLE KEYS */;
INSERT INTO `bot_user` VALUES (1,2,5,1),(2,2,4,1);
/*!40000 ALTER TABLE `bot_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'Asosiy',NULL);
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `send_user_id` int DEFAULT NULL,
  `receiver_user_id` int DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` text,
  `group_id` int DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(55) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `description` text,
  `status` int DEFAULT '0',
  `created_at` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_expenses`
--

DROP TABLE IF EXISTS `control_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(55) DEFAULT NULL,
  `expenses_type_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_expenses`
--

LOCK TABLES `control_expenses` WRITE;
/*!40000 ALTER TABLE `control_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `davomat`
--

DROP TABLE IF EXISTS `davomat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `davomat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `result` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `davomat`
--

LOCK TABLES `davomat` WRITE;
/*!40000 ALTER TABLE `davomat` DISABLE KEYS */;
INSERT INTO `davomat` VALUES (1,3,1,'2022-12-18',NULL,'true'),(2,4,1,'2022-12-18',NULL,'true'),(3,5,1,'2022-12-18',NULL,'true'),(4,7,1,'2022-12-18',NULL,'true'),(5,8,1,'2022-12-18',NULL,'true'),(6,9,1,'2022-12-18',NULL,'true'),(7,10,1,'2022-12-18',NULL,'true'),(8,11,1,'2022-12-18',NULL,'true'),(9,12,1,'2022-12-18',NULL,'true'),(10,6,1,'2022-12-18',NULL,'false'),(11,15,2,'2022-12-19',NULL,'true'),(12,14,2,'2022-12-19',NULL,'true'),(13,16,2,'2022-12-19',NULL,'true'),(14,17,2,'2022-12-19',NULL,'true'),(15,19,2,'2022-12-19',NULL,'true'),(16,18,2,'2022-12-19',NULL,'true'),(17,20,3,'2022-12-20',NULL,'true'),(18,8,3,'2022-12-20',NULL,'true'),(19,21,3,'2022-12-20',NULL,'true'),(20,22,3,'2022-12-20',NULL,'true'),(21,3,1,'2022-12-21',NULL,'true'),(22,4,1,'2022-12-21',NULL,'true'),(23,5,1,'2022-12-21',NULL,'true'),(24,7,1,'2022-12-21',NULL,'true'),(25,8,1,'2022-12-21',NULL,'false'),(26,9,1,'2022-12-21',NULL,'true'),(27,10,1,'2022-12-21',NULL,'false'),(28,11,1,'2022-12-21',NULL,'true'),(29,12,1,'2022-12-21',NULL,'false'),(30,6,1,'2022-12-21',NULL,'true');
/*!40000 ALTER TABLE `davomat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debts`
--

DROP TABLE IF EXISTS `debts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  `price` float DEFAULT '0',
  `debt` float DEFAULT '0',
  `status` int DEFAULT '0',
  `created_date` varchar(55) DEFAULT NULL,
  `percent` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debts`
--

LOCK TABLES `debts` WRITE;
/*!40000 ALTER TABLE `debts` DISABLE KEYS */;
INSERT INTO `debts` VALUES (1,1,3,NULL,'2022-12',200000,0,0,'2022-12-18',70),(2,1,4,NULL,'2022-12',200000,0,0,'2022-12-18',70),(3,1,5,NULL,'2022-12',200000,0,0,'2022-12-18',70),(4,1,7,NULL,'2022-12',200000,0,0,'2022-12-18',70),(5,1,8,NULL,'2022-12',200000,0,0,'2022-12-18',70),(6,1,9,NULL,'2022-12',200000,0,0,'2022-12-18',70),(7,1,10,NULL,'2022-12',200000,0,0,'2022-12-18',70),(8,1,11,NULL,'2022-12',200000,0,0,'2022-12-18',70),(9,1,12,NULL,'2022-12',200000,0,0,'2022-12-18',70),(10,1,6,NULL,'2022-12',180000,180000,1,'2022-12-18',70),(11,3,20,NULL,'2022-12',200000,0,0,'2022-12-20',70),(12,3,8,NULL,'2022-12',199900,0,0,'2022-12-20',70),(13,3,21,NULL,'2022-12',200000,0,0,'2022-12-20',70),(14,3,22,NULL,'2022-12',199975,150000,0,'2022-12-20',70),(15,2,15,NULL,'2022-12',200000,0,0,'2022-12-25',70),(16,2,14,NULL,'2022-12',200000,0,0,'2022-12-25',70),(17,2,16,NULL,'2022-12',200000,0,0,'2022-12-25',70),(18,2,17,NULL,'2022-12',200000,0,0,'2022-12-25',70),(19,2,19,NULL,'2022-12',200000,0,0,'2022-12-25',70),(20,2,18,NULL,'2022-12',200000,0,0,'2022-12-25',70),(21,2,26,NULL,'2022-12',60000,0,0,'2022-12-25',70),(22,4,25,NULL,'2022-12',200000,0,0,'2022-12-25',70),(23,4,23,NULL,'2022-12',200000,0,0,'2022-12-25',70),(24,4,24,NULL,'2022-12',200000,0,0,'2022-12-25',70),(25,4,15,NULL,'2022-12',200000,0,0,'2022-12-25',70),(26,4,14,NULL,'2022-12',200000,0,0,'2022-12-25',70),(27,4,17,NULL,'2022-12',200000,0,0,'2022-12-25',70),(28,4,16,NULL,'2022-12',200000,0,0,'2022-12-25',70);
/*!40000 ALTER TABLE `debts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debts_check_time`
--

DROP TABLE IF EXISTS `debts_check_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debts_check_time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debts_check_time`
--

LOCK TABLES `debts_check_time` WRITE;
/*!40000 ALTER TABLE `debts_check_time` DISABLE KEYS */;
INSERT INTO `debts_check_time` VALUES (1,1,'2022-12-25'),(2,3,'2022-12-20'),(3,2,'2022-12-25'),(4,4,'2022-12-25');
/*!40000 ALTER TABLE `debts_check_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debts_employe`
--

DROP TABLE IF EXISTS `debts_employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debts_employe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `all_money` float DEFAULT NULL,
  `payment_card` float DEFAULT NULL,
  `payment_uzs` float DEFAULT NULL,
  `debt` float DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '0',
  `inspect` int DEFAULT NULL,
  `premium` int DEFAULT NULL,
  `pupil_count` int DEFAULT NULL,
  `group_count` int DEFAULT NULL,
  `percent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debts_employe`
--

LOCK TABLES `debts_employe` WRITE;
/*!40000 ALTER TABLE `debts_employe` DISABLE KEYS */;
INSERT INTO `debts_employe` VALUES (1,13,180000,0,0,126000,'2022-12','2022-12-18',NULL,0,0,0,10,1,NULL);
/*!40000 ALTER TABLE `debts_employe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expencess_type`
--

DROP TABLE IF EXISTS `expencess_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expencess_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expencess_type`
--

LOCK TABLES `expencess_type` WRITE;
/*!40000 ALTER TABLE `expencess_type` DISABLE KEYS */;
INSERT INTO `expencess_type` VALUES (1,'Oziq-ovqat'),(2,'Kamunal'),(3,'Soliq'),(4,'Ish haqi'),(5,'Konseleriya'),(6,'Xo`jalik'),(7,'Boshqa');
/*!40000 ALTER TABLE `expencess_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_date` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `expencess_type_id` int DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_archive_users`
--

DROP TABLE IF EXISTS `group_archive_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_archive_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pupil_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `stat_davomat` float DEFAULT NULL,
  `stat_ball` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_archive_users`
--

LOCK TABLES `group_archive_users` WRITE;
/*!40000 ALTER TABLE `group_archive_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_archive_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `lesson` text,
  `start_time` varchar(55) DEFAULT NULL,
  `finish_time` varchar(55) DEFAULT NULL,
  `room` int DEFAULT NULL,
  `lesson_time` varchar(55) DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `discount_day` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `start_datetime` varchar(55) DEFAULT NULL,
  `end_datetime` varchar(55) DEFAULT NULL,
  `status` int DEFAULT '1',
  `branch_id` int DEFAULT NULL,
  `lid_id` int DEFAULT NULL,
  `chegirmali` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'A guruh',200000,'','Toq kunlari','08:00','09:50',1,NULL,13,NULL,NULL,'2022-12-01','2023-08-31',1,1,NULL,0),(2,'D GURUH ',200000,'Darslar quyidagi kitoblar orqali òtiladi. \r\n\r\n1. Yosh  iqtidor egalari uchun 1\r\n2. 5 sinf matematika 1- qism\r\n3. 4 sinf matematika darslik\r\n4. Mantiqiy matematika testlari 1 qism','Toq kunlari','03:00','17:00',1,NULL,13,NULL,NULL,'2022-12-01','2023-08-31',1,1,NULL,0),(3,'E Guruh',200000,'Yosh iqtidor egalari uchun 1 qism ','Juft kunlari','08:00','10:00',1,NULL,13,NULL,NULL,'2022-12-01','2023-08-31',1,1,NULL,0),(4,'G guruh ',200000,'','Juft kunlari','01:00','03:00',1,NULL,13,NULL,NULL,'2022-12-01','2023-08-31',1,1,NULL,0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_pupils`
--

DROP TABLE IF EXISTS `groups_pupils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_pupils` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `pupil_id` int DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `come_price` int DEFAULT NULL,
  `come_status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_pupils`
--

LOCK TABLES `groups_pupils` WRITE;
/*!40000 ALTER TABLE `groups_pupils` DISABLE KEYS */;
INSERT INTO `groups_pupils` VALUES (1,1,3,'2022-12-01','2022-12',NULL,NULL,0),(2,1,4,'2022-12-01','2022-12',NULL,NULL,0),(3,1,5,'2022-12-01','2022-12',NULL,NULL,0),(4,1,7,'2022-12-01','2022-12',NULL,NULL,0),(5,1,8,'2022-12-01','2022-12',NULL,NULL,0),(6,1,9,'2022-12-01','2022-12',NULL,NULL,0),(7,1,10,'2022-12-01','2022-12',NULL,NULL,0),(8,1,11,'2022-12-01','2022-12',NULL,NULL,0),(9,1,12,'2022-12-01','2022-12',NULL,NULL,0),(10,1,6,'2022-12-01','2022-12',NULL,NULL,0),(11,2,15,'2022-12-01','2022-12',NULL,NULL,0),(12,2,14,'2022-12-01','2022-12',NULL,NULL,0),(13,2,16,'2022-12-01','2022-12',NULL,NULL,0),(14,2,17,'2022-12-01','2022-12',NULL,NULL,0),(15,2,19,'2022-12-01','2022-12',NULL,NULL,0),(16,2,18,'2022-12-01','2022-12',NULL,NULL,0),(17,3,20,'2022-12-01','2022-12',NULL,NULL,0),(18,3,8,'2022-12-01','2022-12',NULL,NULL,0),(19,3,21,'2022-12-01','2022-12',NULL,NULL,0),(20,3,22,'2022-12-01','2022-12',NULL,NULL,0),(21,4,25,'2022-12-01','2022-12',NULL,NULL,0),(22,4,23,'2022-12-01','2022-12',NULL,NULL,0),(23,4,24,'2022-12-01','2022-12',NULL,NULL,0),(24,4,15,'2022-12-01','2022-12',NULL,NULL,0),(25,4,14,'2022-12-01','2022-12',NULL,NULL,0),(26,4,17,'2022-12-01','2022-12',NULL,NULL,0),(27,4,16,'2022-12-01','2022-12',NULL,NULL,0),(28,2,26,'2022-12-21','2022-12',NULL,NULL,0);
/*!40000 ALTER TABLE `groups_pupils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lids`
--

DROP TABLE IF EXISTS `lids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(55) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `lesson` text,
  `start_time` varchar(55) DEFAULT NULL,
  `finish_time` varchar(55) DEFAULT NULL,
  `room` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `start_datetime` varchar(55) DEFAULT NULL,
  `end_datetime` varchar(55) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lids`
--

LOCK TABLES `lids` WRITE;
/*!40000 ALTER TABLE `lids` DISABLE KEYS */;
INSERT INTO `lids` VALUES (1,'B Guruh',200000,'','Juft kunlari','10:00','11:50',1,13,'2022-12-01','2023-08-31',0,NULL,1);
/*!40000 ALTER TABLE `lids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lids_user`
--

DROP TABLE IF EXISTS `lids_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lids_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `lids_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lids_user`
--

LOCK TABLES `lids_user` WRITE;
/*!40000 ALTER TABLE `lids_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `lids_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1669665136),('m130524_201442_init',1669665139),('m190124_110200_add_verification_token_column_to_user_table',1669665139),('m221102_121414_create_address_table',1669665139),('m221102_121904_create_attendance_employee_table',1669665139),('m221103_092816_create_back_money_table',1669665139),('m221103_093306_create_ball_table',1669665139),('m221103_093531_create_branches_table',1669665139),('m221103_093730_create_chat_table',1669665139),('m221103_094504_create_chat_log_table',1669665139),('m221103_094738_create_contact_table',1669665139),('m221103_095137_create_control_expenses_table',1669665139),('m221103_100339_create_davomat_table',1669665139),('m221103_100815_create_debts_table',1669665139),('m221103_101037_create_debts_check_time_table',1669665139),('m221103_102138_create_debts_employe_table',1669665139),('m221103_102402_create_expencess_type_table',1669665140),('m221103_102724_create_expenses_table',1669665140),('m221103_103349_create_groups_table',1669665140),('m221103_103657_create_groups_pupils_table',1669665140),('m221103_103930_create_group_archive_users_table',1669665140),('m221103_104454_create_lids_table',1669665140),('m221103_104813_create_lids_user_table',1669665140),('m221103_104952_create_months_pay_table',1669665140),('m221103_105104_create_positions_table',1669665140),('m221103_105329_create_pupil_pay_table',1669665140),('m221103_105532_create_questions_table',1669665140),('m221103_105715_create_questions_group_table',1669665140),('m221103_105812_create_questions_group_ids_table',1669665140),('m221103_110243_create_quiz_table',1669665140),('m221103_110421_create_quiz_pay_table',1669665140),('m221103_111207_create_quiz_result_table',1669665140),('m221103_111400_create_request_money_table',1669665140),('m221103_111500_create_rooms_table',1669665140),('m221103_111542_create_social_table',1669665140),('m221103_111715_create_teacher_pay_table',1669665140),('m221103_111947_create_transactions_table',1669665140),('m221103_112040_create_type_table',1669665140),('m221103_123447_create_avans_table',1669665141),('m221103_173328_create_all_razdel_table',1669665141),('m221106_142338_create_ID_table',1669665141),('m221110_155942_alter_table_debts_employe',1669665141),('m221114_180554_add_salary_salary_status_column_to_user_table',1669665141),('m221129_174455_create_bot_table',1670335747),('m221129_174607_create_bot_user_table',1670335747),('m221130_181136_add_status_column_to_bot_user_table',1670335747),('m221201_175540_add_bot_token_column_to_address_table',1670335747);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `months_pay`
--

DROP TABLE IF EXISTS `months_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `months_pay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pupil_id` int DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months_pay`
--

LOCK TABLES `months_pay` WRITE;
/*!40000 ALTER TABLE `months_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `months_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_uz` varchar(55) DEFAULT NULL,
  `name_ru` varchar(55) DEFAULT NULL,
  `name_en` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Admistrator','Admistrator','Admistrator'),(2,'Axrana','Axrana','Axrana'),(3,'Nazoratchi','Nazoratchi','Nazoratchi'),(4,'Direktor','Direktor','Direktor'),(5,'Operator','Operator','Operator'),(6,'Oshpaz','Oshpaz','Oshpaz'),(7,'Farrosh','Farrosh','Farrosh'),(8,'IT Manager','IT Manager','IT Manager'),(9,'Kassir','Kassir','Kassir'),(10,'Hamshira','Hamshira','Hamshira'),(11,'Psixolog','Psixolog','Psixolog');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_pay`
--

DROP TABLE IF EXISTS `pupil_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_pay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `guruh_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `pay_from` varchar(55) DEFAULT NULL,
  `pay_to` varchar(55) DEFAULT NULL,
  `chegirma` int DEFAULT NULL,
  `description` text,
  `type_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_pay`
--

LOCK TABLES `pupil_pay` WRITE;
/*!40000 ALTER TABLE `pupil_pay` DISABLE KEYS */;
INSERT INTO `pupil_pay` VALUES (1,6,1,1,180000,'10',NULL,NULL,'',3,'2022-12-18 13:10:00','2022-12-18'),(2,22,1,3,150000,'14',NULL,25,'',3,'2022-12-20 04:20:00','2022-12-20'),(3,8,1,3,0,'12',NULL,100,'',3,'2022-12-20 04:21:00','2022-12-20');
/*!40000 ALTER TABLE `pupil_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz` text,
  `a` text,
  `b` text,
  `c` text,
  `tru_key` varchar(2) DEFAULT NULL,
  `status` int DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_group`
--

DROP TABLE IF EXISTS `questions_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_group`
--

LOCK TABLES `questions_group` WRITE;
/*!40000 ALTER TABLE `questions_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_group_ids`
--

DROP TABLE IF EXISTS `questions_group_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_group_ids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questions_group_id` int DEFAULT NULL,
  `questions_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_group_ids`
--

LOCK TABLES `questions_group_ids` WRITE;
/*!40000 ALTER TABLE `questions_group_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_group_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start` varchar(55) DEFAULT NULL,
  `end` varchar(55) DEFAULT NULL,
  `time` int DEFAULT NULL,
  `status` int DEFAULT '1',
  `status_degree` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `all` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `questions_group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_pay`
--

DROP TABLE IF EXISTS `quiz_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_pay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pupil_id` int DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `quiz_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_pay`
--

LOCK TABLES `quiz_pay` WRITE;
/*!40000 ALTER TABLE `quiz_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_result`
--

DROP TABLE IF EXISTS `quiz_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `true` int DEFAULT NULL,
  `false` int DEFAULT NULL,
  `time` varchar(55) DEFAULT NULL,
  `pupil_id` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_result`
--

LOCK TABLES `quiz_result` WRITE;
/*!40000 ALTER TABLE `quiz_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_money`
--

DROP TABLE IF EXISTS `request_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_money` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '0',
  `title` varchar(55) DEFAULT NULL,
  `description` text,
  `date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_money`
--

LOCK TABLES `request_money` WRITE;
/*!40000 ALTER TABLE `request_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(55) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Parvoz katta xona',1,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES (1,'Instagram'),(2,'Telegram'),(3,'Websayt'),(4,'Facebook'),(5,'Do`stim Orqali'),(6,'Boshqa');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_pay`
--

DROP TABLE IF EXISTS `teacher_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_pay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `pay_from` varchar(55) DEFAULT NULL,
  `pay_to` varchar(55) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_date` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_pay`
--

LOCK TABLES `teacher_pay` WRITE;
/*!40000 ALTER TABLE `teacher_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `money` float DEFAULT NULL,
  `type` int DEFAULT NULL,
  `comment` text,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `create_user_id` int DEFAULT NULL,
  `pupil_status` int DEFAULT '0',
  `view_status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Teminal Humo'),(2,'Teminal Uzcard'),(3,'Naqd'),(4,'Xisob raqam'),(5,'Click');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` smallint NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `fullName` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(13) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `work_time` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coming_date` timestamp NULL DEFAULT NULL,
  `role` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `coin` int DEFAULT NULL,
  `coin_date` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `money` float DEFAULT NULL,
  `social_id` int DEFAULT NULL,
  `procent` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `token` text COLLATE utf8mb3_unicode_ci,
  `verification_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `salary_status` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'api-api-api','cPdHtSFlOFFNPMyDdWL8OGZWep3o2jCL','$2y$13$ZdG6p.AVwZ2mJnOxDprKEeVtfAPtpxWdrjU8HX1pnHG0e1cA3yvsC',NULL,10,1669665139,1669665139,'Simply Admin','+998907291129',NULL,NULL,NULL,'superadmin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'j_0K-vmDhKG0X2yO45bQolnbn3pn5UAFMyXXI8k1OJbQmP1LpzKlH6wU32gOWmZn',NULL,NULL,0),(2,'superadmin9798','PVD9nDaJNLUFUO81Gr0KBci4O459RYyD','$2y$13$0mCeeR9tuLKkVlBuNPKIDe0hAau9pzjOo7oltxjNmIAtiibKhRQqi','',10,1671365960,1671365960,'Karimbek Tojiyev','998903139798','','',NULL,'superadmin',2,1,NULL,'',NULL,NULL,NULL,NULL,'','',NULL,0),(3,'998997544586','T3fkaD_CMrn16h4Tl4m0Z-mg18UNh88Z','$2y$13$sEUTYd4uZRbvtI1.SHpVveTP498bMjSFKm8tMqpNfWdIESXym9uHe',NULL,10,1671367461,1671367461,'Hamdamov Shaxzod','998997544586',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(4,'998916391070','17toOIqgF_POkizGumrDYOFKtSS15Y6E','$2y$13$3s0HtZQw5xpVfeDzeL36y.SbDQgQrqn0Qjb2KCAsCur6b3dFlCfEm',NULL,10,1671367540,1671367540,'Hamdamov Dilshod','998916391070',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(5,'998916444453','DngU-GtmKxvcfKh0TQIJNj0_wiB_-SML','$2y$13$ta6z8TXtrs4NSZ/G9KQ8Y.NOtLbCxngifSu1hk9gMtOLIxfw407yS',NULL,10,1671367568,1671368684,'Shavkatov Mohirbek','998916444453',NULL,NULL,NULL,'pupil',NULL,1,5,'2022-12-18',NULL,6,NULL,NULL,NULL,NULL,NULL,0),(6,'998991861159','RZRnnzzORsZdYUslKrpQGa1bJ1dzNbgU','$2y$13$nKdsflXRa7Rn1x9CPnQiJeWND/BosciDp9Z3ttUucnOypb9.jNBce',NULL,10,1671367616,1671367616,'Turdiyev Asadbek','998991861159',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,4,NULL,10,NULL,NULL,NULL,0),(7,'998936970968','bjD9iEB44dvMnwitIFc2lAViHK0ASBPV','$2y$13$uJ5gFjiFYyh/lD6q0VAXnub/IWYYANE5iRSOolaDmDDJ2whyI.bdO',NULL,10,1671367652,1671367652,'Ochilov Ibrohim','998936970968',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(8,'998886779502','S-ohGwavA7hq2TY8NoqRDOL5vPb8hako','$2y$13$.pcusE3PzU/aTdbi5ed30uxq9LhgzkY/lSFKn64GrQuDaC1YfHcmi',NULL,10,1671367689,1671367689,'Yorqulov Umidjon','998886779502',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(9,'998976706979','F-0ZqnbTV0UfaAzBF6O29b_K3yKD4Myp','$2y$13$RBk0D7sw01SjUQpBCInir.CnnGFCIAZrT10wFDiOjISiDdesrnewC',NULL,10,1671367720,1671367720,'Xolmirzayev Mahmud','998976706979',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(10,'998995525538','Eo_gLG43g5gGUkmQVBJYeSJZQ-3kO5up','$2y$13$Iso33brMTJrr34HRvXXmWenwHrXXG6L/DHKI7.oBxf88vryH6mE.6',NULL,10,1671367765,1671367765,'Xolmirzayev Madrahim','998995525538',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(11,'998883170755','0b_bv78RBKpTf8geTyGNtf9XEs8xoI0X','$2y$13$fqqa3nUmkGKzFdlQJADl6O1uGi/8MAS7du6qJXSMznCbQPN5qEsCu',NULL,10,1671367792,1671367792,'Madminova Go\'zal','998883170755',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(12,'998912575739','MXFm5_seM6lxKAoDNujPeq_qEJ4YdZFi','$2y$13$VwBmT6Qs6ceKiYWU9x5yiePeIq.Wrrrfs2TcVHgPiANSknWduPOVm',NULL,10,1671367862,1671367862,'Olimov Muhammadiy','998912575739',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,0),(13,'Karimbek Tojiyev','2kO11lW__YFbhsX7JWw7FM6f5GkJPD5K','$2y$13$hXLCFDIxhTO6nTOhxejj4ezJ7DGCO5xARgC2PmNUaEMEIL2kvyjpG',NULL,10,1671367991,1671367991,'Karimbek Tojiyev','998903139795',NULL,NULL,NULL,'teacher',NULL,1,NULL,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL,0),(14,'998973835150','gYqyQVbHFvQ1T6L6pAuTI_cgDDEZHEGY','$2y$13$aQUEoFtTl/93leqU6Pd6yOlnYsFDAeEdFMsDtbUdbDJFxtt.Q3kMy',NULL,10,1671452005,1671452005,'Boymurodov Behruzbek','998973835150',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(15,'998906715251','P1QDMZO2K4475C0F1i966zJ1RxaS6zUO','$2y$13$yQhPzX8c1QI5DTs.U8UWWOYoB6svvkSAWv9FwP0bNwBbIpi0iJXPy',NULL,10,1671452068,1671452068,'Mardonov Asilbek','998906715251',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(16,'998883120701','GP5d5h8gkM-hoIxVdXAzyXuMRqRMFlcw','$2y$13$9kXSpkNoYv0c1bBLFaE0puNbOniWcsdbyAJNTi7tJ59Zd11Mv3Kgy',NULL,10,1671452129,1671452129,'Ramazonov Murodillo','998883120701',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(17,'998919538014','P6KjILcECSJEqC5SlrCWYU3SIWQjsOy_','$2y$13$Byici1JzpAWJ1wNKBooO2O98507nA2BP1sVYVrmAa2.JcVNl2noyS',NULL,10,1671452222,1671452222,'Mamadillayev Sherbek','998919538014',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(18,'998883177811','skELLQibl31sYVr82PPG5al5x_GyxZWo','$2y$13$bNCZa7oh7mGK19i1BuOml.KC0HzDr0Z5bb9kwKjJVHShz0CkzMuGG',NULL,10,1671452399,1671452399,'Uzoqov Umidjon','998883177811',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(19,'998919469393','Id6HKy1rG0_XOuQM03U-mTFcGgOGpTXN','$2y$13$I127tNTUxciaZ1kqNW6da.VZcBVotEBYcAQI0LhGPC991khH/HdAy',NULL,10,1671452474,1671452474,'Dovudov Diyorbek','998919469393',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(20,'998970711892','2HHWpdi0WSvIowEonv2UKpVvrB-3wWZS','$2y$13$zQqmsgZ51ACngSoXABHu5e.RYiSnQVAX716QruEk4kGdi45lxl6e.',NULL,10,1671509430,1671509430,'G\'afurov Asilbek','998970711892',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(21,'998939365161','p6zCZT3c8DCuqXzX9G9XTPWmjpnp81Lq','$2y$13$Gm3YD4ptszgd/tgXEMUIhuGWW5Mzq4KKvOD1dEK4lSI.rTTLSLs0y',NULL,10,1671509498,1671509498,'Muzaffarova Muhabbat','998939365161',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(22,'998336920084','ACTfIlRH0f6FU0PQcaU0L8UQbKy6D-pc','$2y$13$9hzxQd8Fqj2zUd/KlbxkLusytv84KqFpKo23ppHSQZXqPnGtWRhTS',NULL,10,1671509550,1671509550,'Tòraqulov Shohjahon','998336920084',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(23,'998999648655','a9kPcpGp740aDSLzfkOSl16xJTKLvRV3','$2y$13$4VQSxzRRY9RirT.Dq9dkzeE9An558MVTwVBXwJPEQoSelHRVs/MQS',NULL,10,1671528476,1671528476,'Ochilova Madina','998999648655',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(24,'998907223598','9JwBOJaqKuLPRxlpqsIeg1exaqdCUpjw','$2y$13$wPmu/bif.9VjveO34yhIgu0CcM.OSBXZckZeD6LaA24Stes65Fz9S',NULL,10,1671528520,1671528520,'Jòrayev Daler','998907223598',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(25,'998886396611','v1WGQJd_NrQWp79nfJIWosLqykyHGcY1','$2y$13$38Td4PVF5J4mTInX42Kc3uU7.P8FKRNYm6tmL5pwqYB8TduOqSzj2',NULL,10,1671528567,1671528567,'Saidov Asilbek','998886396611',NULL,NULL,NULL,'pupil',NULL,1,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,0),(26,'998912208101','aehhYDhkAykf_VOo5PRNi50Cf-W7Jd1p','$2y$13$Suo1VrEquPyr.hc59ol1cOL.3rP23.Gnth2vEGufH6VHigo9BzXBu',NULL,10,1671792481,1671792593,'Nuriddinov Denisbek','998912208101',NULL,NULL,NULL,'pupil',NULL,1,5,'2022-12-23',NULL,5,NULL,NULL,NULL,NULL,NULL,0);
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

-- Dump completed on 2023-01-07 17:09:03
