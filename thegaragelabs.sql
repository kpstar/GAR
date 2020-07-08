-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: garage_api
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Business plans, Decks, Strategy','2020-07-08 05:19:23','2020-07-08 05:19:23'),(2,'Fund raising','2020-07-08 05:19:23','2020-07-08 05:19:23'),(3,'User-experience, Design','2020-07-08 05:19:23','2020-07-08 05:19:23'),(4,'Product Management','2020-07-08 05:19:23','2020-07-08 05:19:23'),(5,'Product Development, Programming','2020-07-08 05:19:23','2020-07-08 05:19:23'),(6,'QA, QC','2020-07-08 05:19:23','2020-07-08 05:19:23'),(7,'Growth-hacking','2020-07-08 05:19:23','2020-07-08 05:19:23'),(8,'SEO','2020-07-08 05:19:23','2020-07-08 05:19:23'),(9,'E-marketing, Advertising, SEM','2020-07-08 05:19:23','2020-07-08 05:19:23'),(10,'Sales, Business Development','2020-07-08 05:19:23','2020-07-08 05:19:23'),(11,'Legal Consulting','2020-07-08 05:19:23','2020-07-08 05:19:23'),(12,'Financial Consulting','2020-07-08 05:19:23','2020-07-08 05:19:23'),(13,'Public Relations','2020-07-08 05:19:23','2020-07-08 05:19:23'),(14,'Copy-writing, Translation','2020-07-08 05:19:23','2020-07-08 05:19:23');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_project`
--

DROP TABLE IF EXISTS `category_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_project` (
  `category_id` int unsigned NOT NULL,
  `project_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_project`
--

LOCK TABLES `category_project` WRITE;
/*!40000 ALTER TABLE `category_project` DISABLE KEYS */;
INSERT INTO `category_project` VALUES (1,1,NULL,NULL),(1,6,NULL,NULL),(1,7,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(3,2,NULL,NULL),(3,3,NULL,NULL),(3,4,NULL,NULL),(3,5,NULL,NULL),(3,6,NULL,NULL);
/*!40000 ALTER TABLE `category_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_startup`
--

DROP TABLE IF EXISTS `category_startup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_startup` (
  `start_up_id` int unsigned NOT NULL,
  `s_category_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_startup`
--

LOCK TABLES `category_startup` WRITE;
/*!40000 ALTER TABLE `category_startup` DISABLE KEYS */;
INSERT INTO `category_startup` VALUES (1,1,NULL,NULL),(2,1,NULL,NULL),(3,1,NULL,NULL),(3,2,NULL,NULL),(4,1,NULL,NULL),(5,3,NULL,NULL);
/*!40000 ALTER TABLE `category_startup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_name_country_id_unique` (`name`,`country_id`),
  KEY `cities_country_id_index` (`country_id`),
  CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `start_up_id` int unsigned NOT NULL,
  `author_id` int unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,2,8,'Im applying to your PO post','2020-06-18 06:29:48','2020-06-18 06:29:48'),(2,3,3,'hi','2020-06-19 05:31:58','2020-06-19 05:31:58'),(3,1,8,'applying','2020-06-22 16:00:24','2020-06-22 16:00:24'),(4,3,1,'hi','2020-07-03 16:20:06','2020-07-03 16:20:06'),(5,3,9,'Hello ','2020-07-03 16:52:17','2020-07-03 16:52:17'),(6,2,9,'Hello','2020-07-03 16:52:33','2020-07-03 16:52:33');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL,
  `proposal_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversations_project_id_index` (`project_id`),
  KEY `conversations_proposal_id_index` (`proposal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES (1,1,1,'2020-06-15 08:14:02','2020-06-15 08:14:02'),(2,2,2,'2020-06-18 06:48:48','2020-06-18 06:48:48'),(3,2,3,'2020-06-19 05:32:58','2020-06-19 05:32:58'),(4,3,4,'2020-06-21 09:58:08','2020-06-21 09:58:08'),(5,4,5,'2020-06-22 08:08:38','2020-06-22 08:08:38'),(6,5,6,'2020-07-01 11:23:19','2020-07-01 11:23:19'),(7,6,7,'2020-07-03 16:53:34','2020-07-03 16:53:34'),(8,7,8,'2020-07-07 18:32:46','2020-07-07 18:32:46');
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_name_unique` (`name`),
  KEY `countries_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'Afghanistan','AF',NULL,NULL),(5,'Åland Islands','AX',NULL,NULL),(6,'Albania','AL',NULL,NULL),(7,'Algeria','DZ',NULL,NULL),(8,'American Samoa','AS',NULL,NULL),(9,'Andorra','AD',NULL,NULL),(10,'Angola','AO',NULL,NULL),(11,'Anguilla','AI',NULL,NULL),(12,'Antarctica','AQ',NULL,NULL),(13,'Antigua and Barbuda','AG',NULL,NULL),(14,'Argentina','AR',NULL,NULL),(15,'Armenia','AM',NULL,NULL),(16,'Aruba','AW',NULL,NULL),(17,'Australia','AU',NULL,NULL),(18,'Austria','AT',NULL,NULL),(19,'Azerbaijan','AZ',NULL,NULL),(20,'Bahamas','BS',NULL,NULL),(21,'Bahrain','BH',NULL,NULL),(22,'Bangladesh','BD',NULL,NULL),(23,'Barbados','BB',NULL,NULL),(24,'Belarus','BY',NULL,NULL),(25,'Belgium','BE',NULL,NULL),(26,'Belize','BZ',NULL,NULL),(27,'Benin','BJ',NULL,NULL),(28,'Bermuda','BM',NULL,NULL),(29,'Bhutan','BT',NULL,NULL),(30,'Bolivia, Plurinational State of','BO',NULL,NULL),(31,'Bonaire, Sint Eustatius and Saba','BQ',NULL,NULL),(32,'Bosnia and Herzegovina','BA',NULL,NULL),(33,'Botswana','BW',NULL,NULL),(34,'Bouvet Island','BV',NULL,NULL),(35,'Brazil','BR',NULL,NULL),(36,'British Indian Ocean Territory','IO',NULL,NULL),(37,'Brunei Darussalam','BN',NULL,NULL),(38,'Bulgaria','BG',NULL,NULL),(39,'Burkina Faso','BF',NULL,NULL),(40,'Burundi','BI',NULL,NULL),(41,'Cambodia','KH',NULL,NULL),(42,'Cameroon','CM',NULL,NULL),(43,'Canada','CA',NULL,NULL),(44,'Cape Verde','CV',NULL,NULL),(45,'Cayman Islands','KY',NULL,NULL),(46,'Central African Republic','CF',NULL,NULL),(47,'Chad','TD',NULL,NULL),(48,'Chile','CL',NULL,NULL),(49,'China','CN',NULL,NULL),(50,'Christmas Island','CX',NULL,NULL),(51,'Cocos (Keeling) Islands','CC',NULL,NULL),(52,'Colombia','CO',NULL,NULL),(53,'Comoros','KM',NULL,NULL),(54,'Congo','CG',NULL,NULL),(55,'Congo, the Democratic Republic of the','CD',NULL,NULL),(56,'Cook Islands','CK',NULL,NULL),(57,'Costa Rica','CR',NULL,NULL),(58,'Côte d\'Ivoire','CI',NULL,NULL),(59,'Croatia','HR',NULL,NULL),(60,'Cuba','CU',NULL,NULL),(61,'Curaçao','CW',NULL,NULL),(62,'Cyprus','CY',NULL,NULL),(63,'Czech Republic','CZ',NULL,NULL),(64,'Denmark','DK',NULL,NULL),(65,'Djibouti','DJ',NULL,NULL),(66,'Dominica','DM',NULL,NULL),(67,'Dominican Republic','DO',NULL,NULL),(68,'Ecuador','EC',NULL,NULL),(69,'Egypt','EG',NULL,NULL),(70,'El Salvador','SV',NULL,NULL),(71,'Equatorial Guinea','GQ',NULL,NULL),(72,'Eritrea','ER',NULL,NULL),(73,'Estonia','EE',NULL,NULL),(74,'Ethiopia','ET',NULL,NULL),(75,'Falkland Islands (Malvinas)','FK',NULL,NULL),(76,'Faroe Islands','FO',NULL,NULL),(77,'Fiji','FJ',NULL,NULL),(78,'Finland','FI',NULL,NULL),(79,'France','FR',NULL,NULL),(80,'French Guiana','GF',NULL,NULL),(81,'French Polynesia','PF',NULL,NULL),(82,'French Southern Territories','TF',NULL,NULL),(83,'Gabon','GA',NULL,NULL),(84,'Gambia','GM',NULL,NULL),(85,'Georgia','GE',NULL,NULL),(86,'Germany','DE',NULL,NULL),(87,'Ghana','GH',NULL,NULL),(88,'Gibraltar','GI',NULL,NULL),(89,'Greece','GR',NULL,NULL),(90,'Greenland','GL',NULL,NULL),(91,'Grenada','GD',NULL,NULL),(92,'Guadeloupe','GP',NULL,NULL),(93,'Guam','GU',NULL,NULL),(94,'Guatemala','GT',NULL,NULL),(95,'Guernsey','GG',NULL,NULL),(96,'Guinea','GN',NULL,NULL),(97,'Guinea-Bissau','GW',NULL,NULL),(98,'Guyana','GY',NULL,NULL),(99,'Haiti','HT',NULL,NULL),(100,'Heard Island and McDonald Mcdonald Islands','HM',NULL,NULL),(101,'Holy See (Vatican City State)','VA',NULL,NULL),(102,'Honduras','HN',NULL,NULL),(103,'Hong Kong','HK',NULL,NULL),(104,'Hungary','HU',NULL,NULL),(105,'Iceland','IS',NULL,NULL),(106,'India','IN',NULL,NULL),(107,'Indonesia','ID',NULL,NULL),(108,'Iran, Islamic Republic of','IR',NULL,NULL),(109,'Iraq','IQ',NULL,NULL),(110,'Ireland','IE',NULL,NULL),(111,'Isle of Man','IM',NULL,NULL),(112,'Israel','IL',NULL,NULL),(113,'Italy','IT',NULL,NULL),(114,'Jamaica','JM',NULL,NULL),(115,'Japan','JP',NULL,NULL),(116,'Jersey','JE',NULL,NULL),(117,'Jordan','JO',NULL,NULL),(118,'Kazakhstan','KZ',NULL,NULL),(119,'Kenya','KE',NULL,NULL),(120,'Kiribati','KI',NULL,NULL),(121,'Korea, Democratic People\'s Republic of','KP',NULL,NULL),(122,'Korea, Republic of','KR',NULL,NULL),(123,'Kuwait','KW',NULL,NULL),(124,'Kyrgyzstan','KG',NULL,NULL),(125,'Lao People\'s Democratic Republic','LA',NULL,NULL),(126,'Latvia','LV',NULL,NULL),(127,'Lebanon','LB',NULL,NULL),(128,'Lesotho','LS',NULL,NULL),(129,'Liberia','LR',NULL,NULL),(130,'Libya','LY',NULL,NULL),(131,'Liechtenstein','LI',NULL,NULL),(132,'Lithuania','LT',NULL,NULL),(133,'Luxembourg','LU',NULL,NULL),(134,'Macao','MO',NULL,NULL),(135,'Macedonia, the Former Yugoslav Republic of','MK',NULL,NULL),(136,'Madagascar','MG',NULL,NULL),(137,'Malawi','MW',NULL,NULL),(138,'Malaysia','MY',NULL,NULL),(139,'Maldives','MV',NULL,NULL),(140,'Mali','ML',NULL,NULL),(141,'Malta','MT',NULL,NULL),(142,'Marshall Islands','MH',NULL,NULL),(143,'Martinique','MQ',NULL,NULL),(144,'Mauritania','MR',NULL,NULL),(145,'Mauritius','MU',NULL,NULL),(146,'Mayotte','YT',NULL,NULL),(147,'Mexico','MX',NULL,NULL),(148,'Micronesia, Federated States of','FM',NULL,NULL),(149,'Moldova, Republic of','MD',NULL,NULL),(150,'Monaco','MC',NULL,NULL),(151,'Mongolia','MN',NULL,NULL),(152,'Montenegro','ME',NULL,NULL),(153,'Montserrat','MS',NULL,NULL),(154,'Morocco','MA',NULL,NULL),(155,'Mozambique','MZ',NULL,NULL),(156,'Myanmar','MM',NULL,NULL),(157,'Namibia','NA',NULL,NULL),(158,'Nauru','NR',NULL,NULL),(159,'Nepal','NP',NULL,NULL),(160,'Netherlands','NL',NULL,NULL),(161,'New Caledonia','NC',NULL,NULL),(162,'New Zealand','NZ',NULL,NULL),(163,'Nicaragua','NI',NULL,NULL),(164,'Niger','NE',NULL,NULL),(165,'Nigeria','NG',NULL,NULL),(166,'Niue','NU',NULL,NULL),(167,'Norfolk Island','NF',NULL,NULL),(168,'Northern Mariana Islands','MP',NULL,NULL),(169,'Norway','NO',NULL,NULL),(170,'Oman','OM',NULL,NULL),(171,'Pakistan','PK',NULL,NULL),(172,'Palau','PW',NULL,NULL),(173,'Palestine, State of','PS',NULL,NULL),(174,'Panama','PA',NULL,NULL),(175,'Papua New Guinea','PG',NULL,NULL),(176,'Paraguay','PY',NULL,NULL),(177,'Peru','PE',NULL,NULL),(178,'Philippines','PH',NULL,NULL),(179,'Pitcairn','PN',NULL,NULL),(180,'Poland','PL',NULL,NULL),(181,'Portugal','PT',NULL,NULL),(182,'Puerto Rico','PR',NULL,NULL),(183,'Qatar','QA',NULL,NULL),(184,'Réunion','RE',NULL,NULL),(185,'Romania','RO',NULL,NULL),(186,'Russian Federation','RU',NULL,NULL),(187,'Rwanda','RW',NULL,NULL),(188,'Saint Barthélemy','BL',NULL,NULL),(189,'Saint Helena, Ascension and Tristan da Cunha','SH',NULL,NULL),(190,'Saint Kitts and Nevis','KN',NULL,NULL),(191,'Saint Lucia','LC',NULL,NULL),(192,'Saint Martin (French part)','MF',NULL,NULL),(193,'Saint Pierre and Miquelon','PM',NULL,NULL),(194,'Saint Vincent and the Grenadines','VC',NULL,NULL),(195,'Samoa','WS',NULL,NULL),(196,'San Marino','SM',NULL,NULL),(197,'Sao Tome and Principe','ST',NULL,NULL),(198,'Saudi Arabia','SA',NULL,NULL),(199,'Senegal','SN',NULL,NULL),(200,'Serbia','RS',NULL,NULL),(201,'Seychelles','SC',NULL,NULL),(202,'Sierra Leone','SL',NULL,NULL),(203,'Singapore','SG',NULL,NULL),(204,'Sint Maarten (Dutch part)','SX',NULL,NULL),(205,'Slovakia','SK',NULL,NULL),(206,'Slovenia','SI',NULL,NULL),(207,'Solomon Islands','SB',NULL,NULL),(208,'Somalia','SO',NULL,NULL),(209,'South Africa','ZA',NULL,NULL),(210,'South Georgia and the South Sandwich Islands','GS',NULL,NULL),(211,'South Sudan','SS',NULL,NULL),(212,'Spain','ES',NULL,NULL),(213,'Sri Lanka','LK',NULL,NULL),(214,'Sudan','SD',NULL,NULL),(215,'Suriname','SR',NULL,NULL),(216,'Svalbard and Jan Mayen','SJ',NULL,NULL),(217,'Swaziland','SZ',NULL,NULL),(218,'Sweden','SE',NULL,NULL),(219,'Switzerland','CH',NULL,NULL),(220,'Syrian Arab Republic','SY',NULL,NULL),(221,'Taiwan','TW',NULL,NULL),(222,'Tajikistan','TJ',NULL,NULL),(223,'Tanzania, United Republic of','TZ',NULL,NULL),(224,'Thailand','TH',NULL,NULL),(225,'Timor-Leste','TL',NULL,NULL),(226,'Togo','TG',NULL,NULL),(227,'Tokelau','TK',NULL,NULL),(228,'Tonga','TO',NULL,NULL),(229,'Trinidad and Tobago','TT',NULL,NULL),(230,'Tunisia','TN',NULL,NULL),(231,'Turkey','TR',NULL,NULL),(232,'Turkmenistan','TM',NULL,NULL),(233,'Turks and Caicos Islands','TC',NULL,NULL),(234,'Tuvalu','TV',NULL,NULL),(235,'Uganda','UG',NULL,NULL),(236,'Ukraine','UA',NULL,NULL),(237,'United Arab Emirates','AE',NULL,NULL),(238,'United Kingdom','GB',NULL,NULL),(239,'United States','US',NULL,NULL),(240,'United States Minor Outlying Islands','UM',NULL,NULL),(241,'Uruguay','UY',NULL,NULL),(242,'Uzbekistan','UZ',NULL,NULL),(243,'Vanuatu','VU',NULL,NULL),(244,'Venezuela, Bolivarian Republic of','VE',NULL,NULL),(245,'Viet Nam','VN',NULL,NULL),(246,'Virgin Islands, British','VG',NULL,NULL),(247,'Virgin Islands, U.S.','VI',NULL,NULL),(248,'Wallis and Futuna','WF',NULL,NULL),(249,'Western Sahara','EH',NULL,NULL),(250,'Yemen','YE',NULL,NULL),(251,'Zambia','ZM',NULL,NULL),(252,'Zimbabwe','ZW',NULL,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvc` int DEFAULT NULL,
  `expired_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (1,3,'card_1Gu09DDmiY9zOyHqn3nGek2a','cus_HSw1jVfd16TJkN','4242',123,'2020/12','2020-06-14 18:01:36','2020-06-14 18:01:36'),(2,7,'card_1GvHgEDmiY9zOyHqeFwKiYuK','cus_HUGCoYcQ2NdPNy','4242',123,'2022/12','2020-06-18 06:56:59','2020-06-18 06:56:59'),(3,8,'card_1GwQFdDmiY9zOyHqxpBHgkRB','cus_HVR71OEqbS5hdX','4242',123,'2020/12','2020-06-21 10:18:14','2020-06-21 10:18:14'),(4,2,'card_1GyLWGDmiY9zOyHqa3vtudVA','cus_HXQNmx5hWvL740','4242',333,'2020/12','2020-06-26 17:39:21','2020-06-26 17:39:21'),(5,3,'card_1Gu09DDmiY9zOyHqn3nGek2a','cus_HSw1jVfd16TJkN','4242',123,'2021/12','2020-06-30 18:49:46','2020-06-30 18:49:46'),(6,8,'card_1GwQFdDmiY9zOyHqxpBHgkRB','cus_HVR71OEqbS5hdX','4242',122,'2020/12','2020-07-03 16:57:00','2020-07-03 16:57:00');
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD',1.00,NULL,'2020-06-27 20:05:17'),(2,'EUR',0.89,NULL,'2020-06-27 20:03:03'),(3,'GBP',0.81,NULL,'2020-06-27 20:03:03');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_supports`
--

DROP TABLE IF EXISTS `customer_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_supports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('package','milestone') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'package',
  `service_id` int unsigned NOT NULL,
  `author_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_supports`
--

LOCK TABLES `customer_supports` WRITE;
/*!40000 ALTER TABLE `customer_supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_milestones`
--

DROP TABLE IF EXISTS `delivery_milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_milestones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `milestone_id` int unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_milestones`
--

LOCK TABLES `delivery_milestones` WRITE;
/*!40000 ALTER TABLE `delivery_milestones` DISABLE KEYS */;
INSERT INTO `delivery_milestones` VALUES (1,2,'g','2020-06-21 09:55:58','2020-06-21 09:55:58'),(2,4,'here','2020-06-30 18:54:08','2020-06-30 18:54:08'),(3,6,'fghjk','2020-07-01 11:16:08','2020-07-01 11:16:08'),(4,6,'fghj','2020-07-01 11:17:27','2020-07-01 11:17:27'),(5,5,'here delivery','2020-07-04 08:57:16','2020-07-04 08:57:16'),(6,8,'oki','2020-07-04 09:01:08','2020-07-04 09:01:08'),(7,10,'dfdf','2020-07-06 21:14:43','2020-07-06 21:14:43'),(8,11,'ok','2020-07-07 18:36:32','2020-07-07 18:36:32');
/*!40000 ALTER TABLE `delivery_milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documents_filename_unique` (`filename`),
  KEY `documents_author_id_index` (`author_id`),
  CONSTRAINT `documents_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,3,'CEa58NSHQq.png','2020-06-14 14:01:26','2020-06-14 14:01:26'),(2,7,'z6YHh8qGFe.jpg','2020-06-18 06:37:20','2020-06-18 06:37:20'),(3,7,'ZCBVLYToVY.jpg','2020-06-18 06:37:25','2020-06-18 06:37:25'),(4,7,'P079tkSmPA.jpeg','2020-06-18 06:37:29','2020-06-18 06:37:29'),(5,7,'iO5EhrSrFr.jpeg','2020-06-18 06:37:40','2020-06-18 06:37:40'),(6,7,'uzXxBlVz8y.jpg','2020-06-18 06:42:56','2020-06-18 06:42:56'),(7,7,'1xlJHazr8m.jpg','2020-06-18 06:43:05','2020-06-18 06:43:05'),(8,8,'ZHzqmK5opB.pdf','2020-06-21 09:57:38','2020-06-21 09:57:38'),(9,8,'Z8s4ESb5Be.jpg','2020-07-03 16:34:09','2020-07-03 16:34:09');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documenttables`
--

DROP TABLE IF EXISTS `documenttables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documenttables` (
  `document_id` int unsigned NOT NULL,
  `documenttable_id` int unsigned NOT NULL,
  `documenttable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documenttables`
--

LOCK TABLES `documenttables` WRITE;
/*!40000 ALTER TABLE `documenttables` DISABLE KEYS */;
INSERT INTO `documenttables` VALUES (1,1,'App\\Project',NULL,NULL),(8,3,'App\\Project',NULL,NULL);
/*!40000 ALTER TABLE `documenttables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int unsigned NOT NULL,
  `receiver_id` int unsigned NOT NULL,
  `project_id` int unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `communication` int NOT NULL DEFAULT '0',
  `skill` int NOT NULL DEFAULT '0',
  `deadline` int NOT NULL DEFAULT '0',
  `experience` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedbacks_author_id_index` (`author_id`),
  KEY `feedbacks_receiver_id_index` (`receiver_id`),
  KEY `feedbacks_project_id_index` (`project_id`),
  CONSTRAINT `feedbacks_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `feedbacks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `feedbacks_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,7,8,2,'jk',2,3,2,3,2,'2020-06-21 09:56:38','2020-06-21 09:56:38'),(2,3,1,1,'',5,5,5,5,5,'2020-06-30 18:55:45','2020-06-30 18:55:45'),(3,8,7,4,'very good',3,3,2,5,3,'2020-07-01 11:17:48','2020-07-01 11:17:48'),(4,3,1,1,'ok good',5,5,5,5,5,'2020-07-04 08:58:08','2020-07-04 08:58:08'),(5,3,1,1,'',5,5,5,5,5,'2020-07-04 09:03:26','2020-07-04 09:03:26'),(6,3,1,1,'',0,0,0,0,0,'2020-07-06 21:15:09','2020-07-06 21:15:09'),(7,3,1,7,'',0,0,0,0,0,'2020-07-07 18:37:46','2020-07-07 18:37:46');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonds_types`
--

DROP TABLE IF EXISTS `fonds_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonds_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonds_types`
--

LOCK TABLES `fonds_types` WRITE;
/*!40000 ALTER TABLE `fonds_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `fonds_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraisings`
--

DROP TABLE IF EXISTS `fundraisings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fundraisings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `problem` text COLLATE utf8_unicode_ci,
  `business_model` text COLLATE utf8_unicode_ci,
  `team` text COLLATE utf8_unicode_ci,
  `author_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraisings`
--

LOCK TABLES `fundraisings` WRITE;
/*!40000 ALTER TABLE `fundraisings` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundraisings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('image','video') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'image',
  `service_id` int unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (4,'image',1,'gallery/y0jKY4m6bi.jpeg','2020-06-12 13:34:44','2020-06-12 13:34:44'),(5,'image',1,'gallery/djC1FQhbSq.jpeg','2020-06-12 13:34:44','2020-06-12 13:34:44'),(6,'video',1,'https://www.youtube.com/watch?v=wgAVb_rz848','2020-06-12 13:34:44','2020-06-12 13:34:44'),(7,'image',2,'gallery/Cilh42Dpq6.jpeg','2020-06-14 13:54:47','2020-06-14 13:54:47'),(8,'video',2,'https://www.youtube.com/watch?v=96TDXR0DzTc','2020-06-14 13:54:47','2020-06-14 13:54:47'),(14,'video',5,'https://www.youtube.com/watch?v=Usszgr1gTf8','2020-06-22 08:17:07','2020-06-22 08:17:07'),(15,'image',6,'gallery/z6vpeXAkBZ.jpeg','2020-07-01 11:39:53','2020-07-01 11:39:53');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id_seller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id_buyer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `buyer_id` bigint unsigned NOT NULL,
  `seller_id` bigint unsigned NOT NULL,
  `invoice_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracer_tail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_ref` bigint unsigned NOT NULL,
  `trace_id` bigint unsigned NOT NULL,
  `amount_for_buyer` decimal(8,2) NOT NULL,
  `amount_for_seller` decimal(8,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cleared_on` date DEFAULT NULL,
  `status` enum('waiting','pending','cleared') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_invoice_id_seller_index` (`invoice_id_seller`),
  KEY `invoices_invoice_id_buyer_index` (`invoice_id_buyer`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'INV-S-0000001','INV-C-0000001',2,1,'Gig','package_orders',13,16,95.20,115.92,'USD','2020-07-14','pending','2020-07-06 19:22:06','2020-07-06 19:23:33'),(2,'INV-S-0000002','INV-C-0000002',3,1,'Job','milestones',1,10,850.00,1035.00,'GBP','2020-07-14','pending','2020-07-06 21:13:16','2020-07-06 21:15:09'),(3,'INV-S-0000003','INV-C-0000003',3,1,'Job','milestones',7,11,425.00,517.50,'GBP','2020-07-15','pending','2020-07-07 18:35:27','2020-07-07 18:37:46');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `conversation_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`conversation_id`,`user_id`),
  KEY `members_user_id_foreign` (`user_id`),
  CONSTRAINT `members_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(3,3,NULL,NULL),(3,7,NULL,NULL),(4,7,NULL,NULL),(4,8,NULL,NULL),(5,7,NULL,NULL),(5,8,NULL,NULL),(6,7,NULL,NULL),(6,8,NULL,NULL),(7,8,NULL,NULL),(7,9,NULL,NULL),(8,1,NULL,NULL),(8,3,NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int unsigned NOT NULL,
  `sender_id` int unsigned NOT NULL,
  `receiver_id` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_conversation_id_index` (`conversation_id`),
  KEY `messages_sender_id_index` (`sender_id`),
  KEY `messages_receiver_id_index` (`receiver_id`),
  CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,1,3,15.00,'Hello \n Offer is %amount%',0,'2020-06-15 08:14:02','2020-06-15 08:14:02'),(2,2,8,7,120.00,'porposal for app\n Offer is %amount%',0,'2020-06-18 06:48:48','2020-06-18 06:48:48'),(3,3,3,7,120.00,'i can do this app\n Offer is %amount%',0,'2020-06-19 05:32:58','2020-06-19 05:32:58'),(4,1,3,1,15.00,'Proposal was accepted. Amount: %amount%',0,'2020-06-19 05:34:05','2020-06-19 05:34:05'),(5,2,7,8,120.00,'Proposal was accepted. Amount: %amount%',0,'2020-06-20 07:40:23','2020-06-20 07:40:23'),(6,4,7,8,60.00,'I can do the app for 6k\n Offer is %amount%',0,'2020-06-21 09:58:08','2020-06-21 09:58:08'),(7,4,8,7,60.00,'Proposal was accepted. Amount: %amount%',0,'2020-06-21 09:58:49','2020-06-21 09:58:49'),(8,5,7,8,120.00,'I have done already 6 different COVID-19 apps for the government of USA.\n Offer is %amount%',0,'2020-06-22 08:08:38','2020-06-22 08:08:38'),(9,5,8,7,120.00,'Proposal was accepted. Amount: %amount%',0,'2020-06-22 12:46:53','2020-06-22 12:46:53'),(10,6,7,8,800.00,'hello i want the job\n Offer is %amount%',0,'2020-07-01 11:23:19','2020-07-01 11:23:19'),(11,6,7,8,900.00,'Offer was updated. Amount: %amount%',0,'2020-07-01 11:23:52','2020-07-01 11:23:52'),(12,6,7,8,1100.00,'Offer was updated. Amount: %amount%',0,'2020-07-01 11:25:36','2020-07-01 11:25:36'),(13,6,8,7,1100.00,'Proposal was accepted. Amount: %amount%',0,'2020-07-01 11:26:29','2020-07-01 11:26:29'),(14,7,9,8,1300.00,'Ok but i need more budget\n Offer is %amount%',0,'2020-07-03 16:53:34','2020-07-03 16:53:34'),(15,7,9,8,15000.00,'Offer was updated. Amount: %amount%',0,'2020-07-03 16:55:23','2020-07-03 16:55:23'),(16,7,8,9,15000.00,'Proposal was accepted. Amount: %amount%',0,'2020-07-03 16:55:35','2020-07-03 16:55:35'),(17,8,1,3,1235.96,'Hi, 1100 €?\n Offer is %amount%',0,'2020-07-07 18:32:46','2020-07-07 18:32:46'),(18,8,3,1,1235.96,'Proposal was accepted. Amount: %amount%',0,'2020-07-07 18:34:18','2020-07-07 18:34:18');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_10_27_221217_create_currencies_table',1),(2,'2019_10_28_092344_create_categories_table',1),(3,'2019_10_28_092344_create_category_project_table',1),(4,'2019_10_28_092344_create_category_startup_table',1),(5,'2019_10_28_092344_create_cities_table',1),(6,'2019_10_28_092344_create_contacts_table',1),(7,'2019_10_28_092344_create_conversations_table',1),(8,'2019_10_28_092344_create_countries_table',1),(9,'2019_10_28_092344_create_credit_cards_table',1),(10,'2019_10_28_092344_create_customer_supports_table',1),(11,'2019_10_28_092344_create_delivery_milestones_table',1),(12,'2019_10_28_092344_create_documents_table',1),(13,'2019_10_28_092344_create_documenttables_table',1),(14,'2019_10_28_092344_create_feedbacks_table',1),(15,'2019_10_28_092344_create_fonds_types_table',1),(16,'2019_10_28_092344_create_fundraisings_table',1),(17,'2019_10_28_092344_create_galleries_table',1),(18,'2019_10_28_092344_create_members_table',1),(19,'2019_10_28_092344_create_messages_table',1),(20,'2019_10_28_092344_create_milestone_documents_table',1),(21,'2019_10_28_092344_create_milestones_table',1),(22,'2019_10_28_092344_create_notifications_table',1),(23,'2019_10_28_092344_create_package_categories_table',1),(24,'2019_10_28_092344_create_package_deliveries_table',1),(25,'2019_10_28_092344_create_package_delivery_documents_table',1),(26,'2019_10_28_092344_create_package_documents_table',1),(27,'2019_10_28_092344_create_package_feedback_table',1),(28,'2019_10_28_092344_create_package_orders_table',1),(29,'2019_10_28_092344_create_package_revision_documents_table',1),(30,'2019_10_28_092344_create_package_revisions_table',1),(31,'2019_10_28_092344_create_packages_table',1),(32,'2019_10_28_092344_create_password_resets_table',1),(33,'2019_10_28_092344_create_portfolios_table',1),(34,'2019_10_28_092344_create_project_histories_table',1),(35,'2019_10_28_092344_create_project_tag_table',1),(36,'2019_10_28_092344_create_projects_table',1),(37,'2019_10_28_092344_create_proposals_table',1),(38,'2019_10_28_092344_create_references_table',1),(39,'2019_10_28_092344_create_revisions_table',1),(40,'2019_10_28_092344_create_scategories_table',1),(41,'2019_10_28_092344_create_service_categories_table',1),(42,'2019_10_28_092344_create_service_contact_table',1),(43,'2019_10_28_092344_create_service_message_documents_table',1),(44,'2019_10_28_092344_create_service_messages_table',1),(45,'2019_10_28_092344_create_service_subcategories_table',1),(46,'2019_10_28_092344_create_services_table',1),(47,'2019_10_28_092344_create_skill_startup_table',1),(48,'2019_10_28_092344_create_skill_user_table',1),(49,'2019_10_28_092344_create_skills_table',1),(50,'2019_10_28_092344_create_startup_member_table',1),(51,'2019_10_28_092344_create_startup_members_table',1),(52,'2019_10_28_092344_create_startup_message_documents_table',1),(53,'2019_10_28_092344_create_startup_messages_table',1),(54,'2019_10_28_092344_create_startups_table',1),(55,'2019_10_28_092344_create_tags_table',1),(56,'2019_10_28_092344_create_user_bank_table',1),(57,'2019_10_28_092344_create_user_company_table',1),(58,'2019_10_28_092344_create_users_table',1),(59,'2019_10_28_092346_add_foreign_keys_to_cities_table',1),(60,'2019_10_28_092346_add_foreign_keys_to_documents_table',1),(61,'2019_10_28_092346_add_foreign_keys_to_feedbacks_table',1),(62,'2019_10_28_092346_add_foreign_keys_to_members_table',1),(63,'2019_10_28_092346_add_foreign_keys_to_messages_table',1),(64,'2019_10_28_092346_add_foreign_keys_to_portfolios_table',1),(65,'2019_10_28_092346_add_foreign_keys_to_references_table',1),(66,'2019_10_28_095001_create_personal_services_table',1),(67,'2019_10_28_100133_create_personal_packages_table',1),(68,'2019_10_28_100635_create_personal_package_order_table',1),(69,'2019_10_28_100921_create_personal_package_documents_table',1),(70,'2019_10_28_101032_create_personal_package_deliveries_table',1),(71,'2019_10_28_101146_create_personal_package_delivery_documents_table',1),(72,'2019_10_28_101238_create_personal_package_revisions_table',1),(73,'2019_10_28_101351_create_personal_package_revision_documents_table',1),(74,'2019_10_28_101438_create_personal_package_feedback_table',1),(75,'2019_10_29_095001_add_chat_personal_services_table',1),(76,'2019_11_06_115233_add_currency_users_table',1),(77,'2019_12_04_095001_add_coordinates_users_table',1),(78,'2019_12_17_095001_add_coordinates_startup_table',1),(79,'2020_05_30_212139_add_is_verified_field_to_users',1),(80,'2020_06_01_162318_add_progress_field_to_startup',1),(81,'2020_06_01_200935_create_startup_profiles_table',1),(82,'2020_06_03_201545_add_timezone_to_users_table',1),(83,'2020_07_03_021014_update_user_company_fields',2),(84,'2020_07_04_003659_create_invoices_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestone_documents`
--

DROP TABLE IF EXISTS `milestone_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestone_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `milestone_id` int unsigned DEFAULT NULL,
  `revision_id` int unsigned DEFAULT NULL,
  `type` enum('milestone','delivery','revision') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'milestone',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestone_documents`
--

LOCK TABLES `milestone_documents` WRITE;
/*!40000 ALTER TABLE `milestone_documents` DISABLE KEYS */;
INSERT INTO `milestone_documents` VALUES (1,'3gYM7SyMIc.jpg',1,NULL,'delivery','2020-06-21 09:55:58','2020-06-21 09:55:58'),(2,'JwGpOjVEHi.png',2,NULL,'delivery','2020-06-30 18:54:08','2020-06-30 18:54:08'),(3,'AErSvCeune.png',3,NULL,'delivery','2020-07-01 11:16:08','2020-07-01 11:16:08'),(4,'EJXA69TO41.png',4,NULL,'delivery','2020-07-01 11:17:27','2020-07-01 11:17:27'),(5,'YXdjPrExqt.png',5,NULL,'delivery','2020-07-04 08:57:16','2020-07-04 08:57:16'),(6,'dH1czu3XFV.png',6,NULL,'delivery','2020-07-04 09:01:08','2020-07-04 09:01:08'),(7,'62NWD8215t.png',7,NULL,'delivery','2020-07-06 21:14:43','2020-07-06 21:14:43'),(8,'6Mdur6dnR9.png',8,NULL,'delivery','2020-07-07 18:36:32','2020-07-07 18:36:32');
/*!40000 ALTER TABLE `milestone_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `status` enum('revision','waiting','accepted','rejected','submitted','approved','new') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'waiting',
  `author_id` int unsigned NOT NULL,
  `supplier_inv_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_inv_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_created_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `funding_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,2,'mielestone','zsert','2020-06-27',120.00,'waiting',7,NULL,NULL,NULL,'2020-06-20 07:40:44','2020-06-20 07:40:44','2020-06-20 07:40:44'),(2,2,'mielestone','zsert','2020-06-27',120.00,'approved',7,'DOLWE528-21062020','DOLWE527-21062020','2020-06-21 09:56:38','2020-06-20 16:28:22','2020-06-21 09:56:38','2020-06-20 16:28:22'),(3,4,'Milestone','miledtoe','2020-06-25',20.20,'waiting',8,NULL,NULL,NULL,'2020-06-22 08:49:57','2020-06-22 08:49:57','2020-06-22 08:49:57'),(4,1,'First milestone','Hellmo','2020-07-04',246.91,'approved',3,'ZXZV3E41-30062020','ZXZV3E43-30062020','2020-06-30 18:55:45','2020-06-30 18:49:46','2020-06-30 18:55:45','2020-06-30 18:49:46'),(5,1,'second milestone','sdddsd','2020-07-11',1851.85,'approved',3,'7MPPPM51-04072020','7MPPPM53-04072020','2020-07-04 08:58:08','2020-06-30 18:56:48','2020-07-04 08:58:08','2020-06-30 18:56:48'),(6,5,'milesone funding test','g','2020-07-02',119.75,'approved',8,'FGRALV67-01072020','FGRALV68-01072020','2020-07-01 11:17:48','2020-07-01 11:14:03','2020-07-01 11:17:48','2020-07-01 11:14:03'),(7,7,'First milestone','Description ','2020-07-10',1481.48,'waiting',8,NULL,NULL,NULL,'2020-07-03 16:57:00','2020-07-03 16:57:00','2020-07-03 16:57:00'),(8,1,'ml3 :)','do x y z','2020-07-25',370.37,'approved',3,'FOHU5781-04072020','FOHU5783-04072020','2020-07-04 09:03:26','2020-07-04 08:59:04','2020-07-04 09:03:26','2020-07-04 08:59:04'),(9,1,'ml4 :)csdsd','do hxozu zui','2020-07-31',308.64,'waiting',3,NULL,NULL,NULL,'2020-07-04 08:59:53','2020-07-04 09:04:21','2020-07-04 09:04:21'),(10,1,'miles 5','sdsds','2020-07-08',1234.57,'approved',3,'L4FJGG101-06072020','L4FJGG103-06072020','2020-07-06 21:15:09','2020-07-06 21:13:15','2020-07-06 21:15:09','2020-07-06 21:13:15'),(11,8,'mil 1','1st ml','2020-07-24',617.28,'approved',3,'3V4AVS111-07072020','3V4AVS113-07072020','2020-07-07 18:37:46','2020-07-07 18:35:26','2020-07-07 18:37:46','2020-07-07 18:35:26');
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `receiver_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_receiver_id_index` (`receiver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,2,'New start-up','Your start-up has been successfully created',NULL,'/startups/name-of-a-startup-2-274',1,'2020-06-11 19:42:04','2020-07-06 19:23:30'),(2,1,'New service \"New Test Gig\"','Your service has been successfully created',NULL,'/service/detail/1',1,'2020-06-12 12:58:01','2020-07-07 20:59:08'),(5,1,'New package  was ordered','New package of your service \"New Test Gig\" was ordered. Amount: %amount%',0.20,'/user/order-status/1',1,'2020-06-14 18:01:37','2020-07-07 20:59:08'),(9,8,'New start-up','Your start-up has been successfully created',NULL,'/startups/digital-cube-669',1,'2020-06-18 06:18:14','2020-07-01 11:40:54'),(10,8,'New start-up','Your start-up has been successfully created',NULL,'/startups/digital-cube-669',1,'2020-06-18 06:28:44','2020-07-01 11:40:54'),(20,8,'New Contact to your startup','K S:\nhi',NULL,'/user/messages/startup-thread/startup-2-3-8',1,'2020-06-19 05:31:58','2020-07-01 11:40:54'),(26,8,'Your proposal was accepted','User Maria Lopez has accepted your proposal.\nOffer: %amount%',120.00,'/projects/corona-tracking-mobile-app-project-753',1,'2020-06-20 07:40:23','2020-07-01 11:40:54'),(27,8,'New milestone \"mielestone\" was created','New milestone mielestone was created. Amount: %amount%',120.00,'/projects/milestone/management/2',1,'2020-06-20 07:40:45','2020-07-01 11:40:54'),(28,8,'Milestone \"mielestone\" was funded','A milestone has been funded, %amount% on project: Corona tracking Mobile app project',120.00,'/projects/milestone/management/2',1,'2020-06-20 07:40:49','2020-07-01 11:40:54'),(29,8,'New milestone \"mielestone\" was created','New milestone mielestone was created. Amount: %amount%',120.00,'/projects/milestone/management/2',1,'2020-06-20 16:28:23','2020-07-01 11:40:54'),(32,8,'The milestone \"mielestone\" was approved','The milestone mielestone was approved\nAmount: %amount%',120.00,'/projects/milestone/management/2',1,'2020-06-21 09:56:38','2020-07-01 11:40:54'),(33,8,'New project','Your project has been successfully created',NULL,'/projects/android-app-for-real-estate-909',1,'2020-06-21 09:57:42','2020-07-01 11:40:54'),(34,8,'New proposal to your project','User Maria Lopez has made proposal to your project.\nOffer: %amount%',60.00,'/user/messages/thread/project-4-7-8',1,'2020-06-21 09:58:08','2020-07-01 11:40:54'),(38,8,'The package  was delivered','The package of your service \"Jungle Corp Gig\" was delivered. Amount: %amount%',0.20,'/user/ordered-package/4',1,'2020-06-21 11:37:34','2020-07-01 11:40:54'),(40,8,'New project','Your project has been successfully created',NULL,'/projects/build-a-covid-19-tracking-app-365',1,'2020-06-22 08:04:04','2020-07-01 11:40:54'),(41,8,'New proposal to your project','User Maria Lopez has made proposal to your project.\nOffer: %amount%',120.00,'/user/messages/thread/project-5-7-8',1,'2020-06-22 08:08:38','2020-07-01 11:40:54'),(42,8,'New service \"I will design a whole website\"','Your service has been successfully created',NULL,'/service/detail/4',1,'2020-06-22 08:14:25','2020-07-01 11:40:54'),(50,8,'New package  was ordered','New package of your service \"I will do a video montage\" was ordered. Amount: %amount%',2.20,'/user/order-status/8',1,'2020-06-26 17:39:23','2020-07-01 11:40:54'),(55,1,'New milestone \"First milestone\" was created','New milestone First milestone was created. Amount: %amount%',246.91,'/projects/milestone/management/1',1,'2020-06-30 18:49:48','2020-07-07 20:59:08'),(56,1,'Milestone \"First milestone\" was funded','A milestone has been funded, %amount% on project: Jungle Project',246.91,'/projects/milestone/management/1',1,'2020-06-30 18:49:48','2020-07-07 20:59:08'),(58,1,'The milestone \"First milestone\" was approved','The milestone First milestone was approved\nAmount: %amount%',246.91,'/projects/milestone/management/1',1,'2020-06-30 18:55:45','2020-07-07 20:59:08'),(59,1,'New milestone \"second milestone\" was created','New milestone second milestone was created. Amount: %amount%',1851.85,'/projects/milestone/management/1',1,'2020-06-30 18:56:49','2020-07-07 20:59:08'),(67,8,'New project','Your project has been successfully created',NULL,'/projects/create-crm-campaign-505',1,'2020-07-01 11:23:01','2020-07-01 11:40:54'),(68,8,'New proposal to your project','User Maria Lopez has made proposal to your project.\nOffer: %amount%',800.00,'/user/messages/thread/project-6-7-8',1,'2020-07-01 11:23:19','2020-07-01 11:40:54'),(71,7,'Your proposal was accepted','User Ghariba Messaoudi has accepted your proposal.\nOffer: %amount%',1100.00,'/projects/create-crm-campaign-505',1,'2020-07-01 11:26:29','2020-07-01 11:41:13'),(76,8,'New start-up','Your start-up has been successfully created',NULL,'/startups/digital-cube-669',0,'2020-07-01 11:44:32','2020-07-01 11:44:32'),(77,8,'New package  was ordered','New package of your service \"I will do a video montage\" was ordered. Amount: %amount%',2.20,'/user/order-status/12',0,'2020-07-01 16:57:43','2020-07-01 16:57:43'),(78,7,'New package  was ordered','New package of your service \"testing Gig publish + currency\" was ordered. Amount: %amount%',299.00,'/user/order-status/13',0,'2020-07-01 21:04:19','2020-07-01 21:04:19'),(81,8,'New Contact to your startup','Shehbaz Malik:\nhi',NULL,'/user/messages/startup-thread/startup-4-1-8',0,'2020-07-03 16:20:06','2020-07-03 16:20:06'),(82,8,'New project','Your project has been successfully created',NULL,'/projects/build-a-social-step-counting-app-355',0,'2020-07-03 16:51:08','2020-07-03 16:51:08'),(83,8,'New Contact to your startup','Jennifer Van der Laan:\nHello ',NULL,'/user/messages/startup-thread/startup-5-9-8',0,'2020-07-03 16:52:17','2020-07-03 16:52:17'),(84,7,'New Contact to your startup','Jennifer Van der Laan:\nHello',NULL,'/user/messages/startup-thread/startup-6-9-7',0,'2020-07-03 16:52:33','2020-07-03 16:52:33'),(85,8,'New proposal to your project','User Jennifer Van der Laan has made proposal to your project.\nOffer: %amount%',1300.00,'/user/messages/thread/project-7-9-8',0,'2020-07-03 16:53:34','2020-07-03 16:53:34'),(86,8,'The offer was updated','User Jennifer Van der Laan has updated the offer.\nNew Offer: %amount%',15000.00,'/projects/build-a-social-step-counting-app-355',0,'2020-07-03 16:55:23','2020-07-03 16:55:23'),(87,9,'Your proposal was accepted','User Ghariba Messaoudi has accepted your proposal.\nOffer: %amount%',15000.00,'/projects/build-a-social-step-counting-app-355',0,'2020-07-03 16:55:35','2020-07-03 16:55:35'),(88,9,'New milestone \"First milestone\" was created','New milestone First milestone was created. Amount: %amount%',1481.48,'/projects/milestone/management/7',0,'2020-07-03 16:57:01','2020-07-03 16:57:01'),(89,9,'Milestone \"First milestone\" was funded','A milestone has been funded, %amount% on project: Build a social step counting app ',1481.48,'/projects/milestone/management/7',0,'2020-07-03 16:57:02','2020-07-03 16:57:02'),(91,1,'The milestone \"second milestone\" was approved','The milestone second milestone was approved\nAmount: %amount%',1851.85,'/projects/milestone/management/1',1,'2020-07-04 08:58:08','2020-07-07 20:59:08'),(92,1,'New milestone \"ml3 :)\" was created','New milestone ml3 :) was created. Amount: %amount%',370.37,'/projects/milestone/management/1',1,'2020-07-04 08:59:05','2020-07-07 20:59:08'),(93,1,'Milestone \"ml3 :)\" was funded','A milestone has been funded, %amount% on project: Jungle Project',370.37,'/projects/milestone/management/1',1,'2020-07-04 08:59:09','2020-07-07 20:59:08'),(96,1,'The milestone \"ml3 :)\" was approved','The milestone ml3 :) was approved\nAmount: %amount%',370.37,'/projects/milestone/management/1',1,'2020-07-04 09:03:26','2020-07-07 20:59:08'),(99,8,'New start-up','Your start-up has been successfully created',NULL,'/startups/tech-lab-203',0,'2020-07-04 18:11:50','2020-07-04 18:11:50'),(100,7,'New package  was ordered','New package of your service \"testing Gig publish + currency\" was ordered. Amount: %amount%',299.00,'/user/order-status/15',0,'2020-07-05 19:05:03','2020-07-05 19:05:03'),(103,1,'The package  was approved','The package of your service \"MY GIG\" was approved\nAmount: %amount%',112.36,'/user/sold-package/16',1,'2020-07-06 19:23:33','2020-07-07 20:59:08'),(108,3,'New project','Your project has been successfully created',NULL,'/projects/new-job-app-mobile-react-462',1,'2020-07-07 18:32:17','2020-07-08 08:29:34'),(110,1,'Your proposal was accepted','User K S has accepted your proposal.\nOffer: %amount%',1235.96,'/projects/new-job-app-mobile-react-462',1,'2020-07-07 18:34:18','2020-07-07 20:59:08');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_categories`
--

DROP TABLE IF EXISTS `package_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_categories`
--

LOCK TABLES `package_categories` WRITE;
/*!40000 ALTER TABLE `package_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_deliveries`
--

DROP TABLE IF EXISTS `package_deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_deliveries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ordered_package_id` int unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('new','revision') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_deliveries`
--

LOCK TABLES `package_deliveries` WRITE;
/*!40000 ALTER TABLE `package_deliveries` DISABLE KEYS */;
INSERT INTO `package_deliveries` VALUES (1,2,'here','new','2020-06-18 06:57:40','2020-06-18 06:57:40'),(2,2,'here better','new','2020-06-18 06:58:18','2020-06-18 06:58:18'),(4,4,'thanks for your order, this is your delivery. BYE.','new','2020-06-21 11:37:34','2020-06-21 11:37:34'),(5,11,'hjklm=','new','2020-07-01 11:40:45','2020-07-01 11:40:45'),(6,16,'ok','new','2020-07-06 19:23:14','2020-07-06 19:23:14');
/*!40000 ALTER TABLE `package_deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_delivery_documents`
--

DROP TABLE IF EXISTS `package_delivery_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_delivery_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_delivery_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_delivery_documents`
--

LOCK TABLES `package_delivery_documents` WRITE;
/*!40000 ALTER TABLE `package_delivery_documents` DISABLE KEYS */;
INSERT INTO `package_delivery_documents` VALUES (1,'package_delivery/EhH0vrxI75.jpg',2,'2020-06-18 06:58:18','2020-06-18 06:58:18'),(2,'package_delivery/rcxlFFlfhj.png',4,'2020-06-21 11:37:34','2020-06-21 11:37:34'),(3,'package_delivery/R6QSpOhXPN.jpg',5,'2020-07-01 11:40:45','2020-07-01 11:40:45');
/*!40000 ALTER TABLE `package_delivery_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_documents`
--

DROP TABLE IF EXISTS `package_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_id` int unsigned NOT NULL,
  `package_order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_documents`
--

LOCK TABLES `package_documents` WRITE;
/*!40000 ALTER TABLE `package_documents` DISABLE KEYS */;
INSERT INTO `package_documents` VALUES (1,'instruction/9fT4FgZKlu.jpeg',9,2,'2020-06-18 06:57:19','2020-06-18 06:57:19'),(2,'instruction/LFxvElWJ3X.png',11,8,'2020-06-26 17:39:34','2020-06-26 17:39:34'),(3,'instruction/qMYYdQKIBH.xlsx',11,10,'2020-06-27 17:43:37','2020-06-27 17:43:37');
/*!40000 ALTER TABLE `package_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_feedback`
--

DROP TABLE IF EXISTS `package_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_feedback` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int unsigned NOT NULL,
  `buyer_id` int unsigned NOT NULL,
  `package_id` int unsigned NOT NULL,
  `ordered_package_id` int unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `communication` tinyint(1) NOT NULL DEFAULT '0',
  `skill` tinyint(1) NOT NULL DEFAULT '0',
  `deadline` tinyint(1) NOT NULL DEFAULT '0',
  `experience` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ordered_package_id` (`ordered_package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_feedback`
--

LOCK TABLES `package_feedback` WRITE;
/*!40000 ALTER TABLE `package_feedback` DISABLE KEYS */;
INSERT INTO `package_feedback` VALUES (1,8,7,9,2,'Not bad but slow',3,0,0,0,0,'2020-06-18 06:58:52','2020-06-18 06:58:52'),(2,8,7,8,3,'super',3,0,0,0,0,'2020-06-20 07:36:59','2020-06-20 07:36:59'),(3,1,2,13,16,'',0,0,0,0,0,'2020-07-06 19:23:37','2020-07-06 19:23:37');
/*!40000 ALTER TABLE `package_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_orders`
--

DROP TABLE IF EXISTS `package_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `paying_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `package_id` int unsigned NOT NULL,
  `instruction` text COLLATE utf8_unicode_ci,
  `buyer_id` int unsigned NOT NULL,
  `status` enum('waiting','approved','new','submitted','revision') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `asked_revisions` smallint unsigned NOT NULL DEFAULT '0',
  `seller_id` int unsigned NOT NULL,
  `supplier_inv_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_inv_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_created_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_orders`
--

LOCK TABLES `package_orders` WRITE;
/*!40000 ALTER TABLE `package_orders` DISABLE KEYS */;
INSERT INTO `package_orders` VALUES (1,'2020-06-14 18:01:36',4,'hi',3,'waiting',0,1,NULL,NULL,NULL,'2020-06-14 18:01:36','2020-06-14 18:01:44'),(2,'2020-06-18 06:57:00',9,'here is UX',7,'approved',1,8,'OQFYCJ27-18062020','OQFYCJ28-18062020','2020-06-18 06:58:35','2020-06-18 06:57:00','2020-06-18 06:58:35'),(4,'2020-06-21 10:18:14',6,'instructions',8,'submitted',0,3,NULL,NULL,NULL,'2020-06-21 10:18:14','2020-06-21 11:37:34'),(5,'2020-06-22 07:48:05',9,'ok',3,'waiting',0,8,NULL,NULL,NULL,'2020-06-22 07:48:05','2020-06-22 07:48:12'),(6,'2020-06-24 07:35:46',11,'hehe',7,'waiting',0,8,NULL,NULL,NULL,'2020-06-24 07:35:46','2020-06-24 07:35:56'),(7,'2020-06-25 05:20:06',11,'sending instructions and a file',7,'waiting',0,8,NULL,NULL,NULL,'2020-06-25 05:20:06','2020-06-25 05:20:37'),(8,'2020-06-26 17:39:22',11,'Hello',2,'waiting',0,8,NULL,NULL,NULL,'2020-06-26 17:39:22','2020-06-26 17:39:34'),(9,'2020-06-27 15:58:39',10,'ok',2,'waiting',0,8,NULL,NULL,NULL,'2020-06-27 15:58:39','2020-06-27 15:58:47'),(10,'2020-06-27 17:43:04',11,'Sending instructions',7,'waiting',0,8,NULL,NULL,NULL,'2020-06-27 17:43:04','2020-06-27 17:43:36'),(11,'2020-07-01 11:40:15',12,'jkl',8,'approved',0,7,'MFRZ5X118-01072020','MFRZ5X117-01072020','2020-07-01 11:40:57','2020-07-01 11:40:15','2020-07-01 11:40:57'),(12,'2020-07-01 16:57:42',11,'hiii',3,'waiting',0,8,NULL,NULL,NULL,'2020-07-01 16:57:42','2020-07-01 16:57:49'),(13,'2020-07-01 21:04:18',12,'ok',3,'waiting',0,7,NULL,NULL,NULL,'2020-07-01 21:04:18','2020-07-01 21:04:24'),(14,'2020-07-02 18:57:12',14,'ok',2,'waiting',0,1,NULL,NULL,NULL,'2020-07-02 18:57:12','2020-07-02 18:57:17'),(15,'2020-07-05 19:05:02',12,'hi',3,'waiting',0,7,NULL,NULL,NULL,'2020-07-05 19:05:02','2020-07-05 19:05:09'),(16,'2020-07-06 19:22:05',13,'hi',2,'approved',0,1,'3Y39HA162-06072020','3Y39HA161-06072020','2020-07-06 19:23:33','2020-07-06 19:22:05','2020-07-06 19:23:33');
/*!40000 ALTER TABLE `package_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_revision_documents`
--

DROP TABLE IF EXISTS `package_revision_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_revision_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_revision_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_revision_documents`
--

LOCK TABLES `package_revision_documents` WRITE;
/*!40000 ALTER TABLE `package_revision_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_revision_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_revisions`
--

DROP TABLE IF EXISTS `package_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ordered_package_id` int unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('new','delivered') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_revisions`
--

LOCK TABLES `package_revisions` WRITE;
/*!40000 ALTER TABLE `package_revisions` DISABLE KEYS */;
INSERT INTO `package_revisions` VALUES (1,2,'make it better','new','2020-06-18 06:57:55','2020-06-18 06:57:55');
/*!40000 ALTER TABLE `package_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int unsigned NOT NULL,
  `author_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `days_to_deliver` smallint unsigned NOT NULL,
  `number_devisions` smallint unsigned NOT NULL,
  `instruction` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (3,1,1,'Starter Gig','starter gig desc',0.10,10,10,'starter gig inst','2020-06-12 13:34:44','2020-06-12 13:34:44'),(4,1,1,'Starter Gig 2','starter gig desc',0.20,20,20,'starter gig inst','2020-06-12 13:34:44','2020-06-12 13:34:44'),(5,2,3,'Jungle Gig','j desc',0.10,10,10,'j client','2020-06-14 13:54:47','2020-06-14 13:54:47'),(6,2,3,'Jungle 2','j Desc',0.20,20,20,'J Client','2020-06-14 13:54:47','2020-06-14 13:54:47'),(7,2,3,'Jungle 3','j Desc',0.20,20,20,'J Client','2020-06-14 13:54:47','2020-06-14 13:54:47'),(9,3,8,'I will convert your UX to UI','I will do nice UI with Skecth',5.00,5,1,'Please send me your UX pages','2020-06-18 06:56:29','2020-06-18 06:56:29'),(10,4,8,'I will design webpages','I will design a whole website',0.10,2,2,'Send me your brief','2020-06-22 08:14:24','2020-06-22 08:14:24'),(11,5,8,'Video max 4 minutes','Video max 4 minutes',2.20,2,2,'Video max 4 minutes','2020-06-22 08:17:07','2020-06-22 08:17:07'),(12,6,7,'option one','cfhkjlm',299.00,2,2,'give lme brief','2020-07-01 11:39:53','2020-07-01 11:39:53'),(13,7,1,'A','option A is cool.',112.36,2,1,'instru A','2020-07-02 18:56:15','2020-07-02 18:56:15'),(14,7,1,'B','Option B is better.',168.54,1,4,'instru B','2020-07-02 18:56:15','2020-07-02 18:56:15');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('g.el.messaoudi@gmail.com','UUDbP4q3W96hGN33gXlmqR3FXFubruKEjl41SGhcoQA1OP20mDk3CrIMc218','2020-06-22 12:48:24');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_deliveries`
--

DROP TABLE IF EXISTS `personal_package_deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_deliveries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ordered_package_id` int unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('new','revision') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_deliveries`
--

LOCK TABLES `personal_package_deliveries` WRITE;
/*!40000 ALTER TABLE `personal_package_deliveries` DISABLE KEYS */;
INSERT INTO `personal_package_deliveries` VALUES (1,6,'','new','2020-06-30 10:46:39','2020-06-30 10:46:39');
/*!40000 ALTER TABLE `personal_package_deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_delivery_documents`
--

DROP TABLE IF EXISTS `personal_package_delivery_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_delivery_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_delivery_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_delivery_documents`
--

LOCK TABLES `personal_package_delivery_documents` WRITE;
/*!40000 ALTER TABLE `personal_package_delivery_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_package_delivery_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_documents`
--

DROP TABLE IF EXISTS `personal_package_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_id` int unsigned NOT NULL,
  `package_order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_documents`
--

LOCK TABLES `personal_package_documents` WRITE;
/*!40000 ALTER TABLE `personal_package_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_package_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_feedback`
--

DROP TABLE IF EXISTS `personal_package_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_feedback` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int unsigned NOT NULL,
  `buyer_id` int unsigned NOT NULL,
  `package_id` int unsigned NOT NULL,
  `ordered_package_id` int unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `rating` tinyint NOT NULL DEFAULT '0',
  `communication` tinyint NOT NULL DEFAULT '0',
  `skill` tinyint NOT NULL DEFAULT '0',
  `deadline` tinyint NOT NULL DEFAULT '0',
  `experience` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ordered_package_id` (`ordered_package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_feedback`
--

LOCK TABLES `personal_package_feedback` WRITE;
/*!40000 ALTER TABLE `personal_package_feedback` DISABLE KEYS */;
INSERT INTO `personal_package_feedback` VALUES (1,1,3,1,6,'ok',5,0,0,0,0,'2020-06-30 10:47:27','2020-06-30 10:47:27');
/*!40000 ALTER TABLE `personal_package_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_order`
--

DROP TABLE IF EXISTS `personal_package_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `paying_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `package_id` int unsigned NOT NULL,
  `instruction` text COLLATE utf8_unicode_ci,
  `buyer_id` int unsigned NOT NULL,
  `status` enum('waiting','approved','new','submitted','revision') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `asked_revisions` smallint unsigned NOT NULL DEFAULT '0',
  `seller_id` int unsigned NOT NULL,
  `supplier_inv_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_inv_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_created_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_order`
--

LOCK TABLES `personal_package_order` WRITE;
/*!40000 ALTER TABLE `personal_package_order` DISABLE KEYS */;
INSERT INTO `personal_package_order` VALUES (1,'2020-06-17 20:47:37',1,NULL,3,'waiting',0,1,NULL,NULL,NULL,'2020-06-17 20:47:37','2020-06-17 20:47:37'),(2,'2020-06-17 20:51:05',1,NULL,3,'waiting',0,1,NULL,NULL,NULL,'2020-06-17 20:51:05','2020-06-17 20:51:05'),(3,'2020-06-18 21:56:21',1,NULL,3,'waiting',0,1,NULL,NULL,NULL,'2020-06-18 21:56:21','2020-06-18 21:56:21'),(4,'2020-06-19 13:14:11',1,NULL,3,'waiting',0,1,NULL,NULL,NULL,'2020-06-19 13:14:11','2020-06-19 13:14:11'),(5,'2020-06-21 10:08:53',2,NULL,7,'waiting',0,8,NULL,NULL,NULL,'2020-06-21 10:08:53','2020-06-21 10:08:53'),(6,'2020-06-21 21:18:06',1,NULL,3,'approved',0,1,'BV41IP63-30062020','BV41IP61-30062020','2020-06-30 10:47:20','2020-06-21 21:18:06','2020-06-30 10:47:20'),(7,'2020-06-22 08:55:47',2,NULL,7,'waiting',0,8,NULL,NULL,NULL,'2020-06-22 08:55:47','2020-06-22 08:55:47');
/*!40000 ALTER TABLE `personal_package_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_revision_documents`
--

DROP TABLE IF EXISTS `personal_package_revision_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_revision_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_revision_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_revision_documents`
--

LOCK TABLES `personal_package_revision_documents` WRITE;
/*!40000 ALTER TABLE `personal_package_revision_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_package_revision_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_package_revisions`
--

DROP TABLE IF EXISTS `personal_package_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_package_revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ordered_package_id` int unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('new','delivered') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_package_revisions`
--

LOCK TABLES `personal_package_revisions` WRITE;
/*!40000 ALTER TABLE `personal_package_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_package_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_packages`
--

DROP TABLE IF EXISTS `personal_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int unsigned NOT NULL,
  `author_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` decimal(8,2) DEFAULT NULL,
  `days_to_deliver` smallint unsigned NOT NULL,
  `number_devisions` smallint unsigned NOT NULL,
  `instruction` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_packages`
--

LOCK TABLES `personal_packages` WRITE;
/*!40000 ALTER TABLE `personal_packages` DISABLE KEYS */;
INSERT INTO `personal_packages` VALUES (1,1,1,'',NULL,1.00,2,2,'kbkj','2020-06-17 20:45:29','2020-06-17 20:45:29'),(2,2,8,'',NULL,12.00,4,4,'Snd me your brief please','2020-06-21 10:07:00','2020-06-21 10:07:00');
/*!40000 ALTER TABLE `personal_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_services`
--

DROP TABLE IF EXISTS `personal_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `from_chat_data` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_services`
--

LOCK TABLES `personal_services` WRITE;
/*!40000 ALTER TABLE `personal_services` DISABLE KEYS */;
INSERT INTO `personal_services` VALUES (1,'Developer to build one scrolling long page','developer-to-build-one-scrolling-long-page-162',1,'2020-06-17 20:45:29','2020-06-17 20:45:29','{\"userID\": \"1\", \"authorID\": \"3\", \"serviceId\": \"1\"}'),(2,'Custom offer for Corona app','custom-offer-for-corona-app-710',8,'2020-06-21 10:07:00','2020-06-21 10:07:00','{\"userID\": \"8\", \"authorID\": \"7\", \"serviceId\": \"3\"}');
/*!40000 ALTER TABLE `personal_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `item_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_portfolio_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_histories`
--

DROP TABLE IF EXISTS `project_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int unsigned NOT NULL,
  `proposal_id` int unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_histories`
--

LOCK TABLES `project_histories` WRITE;
/*!40000 ALTER TABLE `project_histories` DISABLE KEYS */;
INSERT INTO `project_histories` VALUES (1,1,1,'cykadev offered %amount%',15.00,NULL,'2020-06-15 08:14:02','2020-06-15 08:14:02'),(2,8,2,'Creative offered %amount%',120.00,NULL,'2020-06-18 06:48:48','2020-06-18 06:48:48'),(3,3,3,'ks offered %amount%',120.00,NULL,'2020-06-19 05:32:58','2020-06-19 05:32:58'),(4,3,1,'cykadev offered %amount% (accepted by ks)',15.00,NULL,'2020-06-19 05:34:05','2020-06-19 05:34:05'),(5,7,2,'Creative offered %amount% (accepted by Mariasdesign)',120.00,NULL,'2020-06-20 07:40:23','2020-06-20 07:40:23'),(6,7,2,'Milestone \"mielestone\" funded on 20/06/2020(%amount%) - waiting for acceptation',120.00,NULL,'2020-06-20 07:40:45','2020-06-20 07:40:45'),(7,7,2,'Milestone \"mielestone\" funded on 20/06/2020(%amount%) - waiting for acceptation',120.00,NULL,'2020-06-20 16:28:23','2020-06-20 16:28:23'),(8,8,2,'Milestone \"mielestone\" was submitted by Creative(%amount%)',120.00,NULL,'2020-06-21 09:55:59','2020-06-21 09:55:59'),(9,7,2,'Milestone  \"mielestone\" was approved by Mariasdesign(%amount%)',120.00,NULL,'2020-06-21 09:56:38','2020-06-21 09:56:38'),(10,7,4,'Mariasdesign offered %amount%',60.00,NULL,'2020-06-21 09:58:08','2020-06-21 09:58:08'),(11,8,4,'Mariasdesign offered %amount% (accepted by Creative)',60.00,NULL,'2020-06-21 09:58:49','2020-06-21 09:58:49'),(12,7,5,'Mariasdesign offered %amount%',120.00,NULL,'2020-06-22 08:08:38','2020-06-22 08:08:38'),(13,8,4,'Milestone \"Milestone\" funded on 22/06/2020(%amount%) - waiting for acceptation',20.20,NULL,'2020-06-22 08:49:58','2020-06-22 08:49:58'),(14,8,5,'Mariasdesign offered %amount% (accepted by Creative)',120.00,NULL,'2020-06-22 12:46:53','2020-06-22 12:46:53'),(15,3,1,'Milestone \"First milestone\" funded on 30/06/2020(%amount%) - waiting for acceptation',246.91,NULL,'2020-06-30 18:49:47','2020-06-30 18:49:47'),(16,1,1,'Milestone \"First milestone\" was submitted by cykadev(%amount%)',247.19,NULL,'2020-06-30 18:54:08','2020-06-30 18:54:08'),(17,3,1,'Milestone  \"First milestone\" was approved by ks(%amount%)',246.91,NULL,'2020-06-30 18:55:45','2020-06-30 18:55:45'),(18,3,1,'Milestone \"second milestone\" funded on 30/06/2020(%amount%) - waiting for acceptation',1851.85,NULL,'2020-06-30 18:56:49','2020-06-30 18:56:49'),(19,8,5,'Milestone \"milesone funding test\" funded on 01/07/2020(%amount%) - waiting for acceptation',119.75,NULL,'2020-07-01 11:14:04','2020-07-01 11:14:04'),(20,7,5,'Milestone \"milesone funding test\" was submitted by Mariasdesign(%amount%)',120.00,NULL,'2020-07-01 11:16:08','2020-07-01 11:16:08'),(21,8,5,'Revision asked on for milestone \"milesone funding test\" was asked on 01/07/2020',NULL,NULL,'2020-07-01 11:17:07','2020-07-01 11:17:07'),(22,7,5,'Milestone \"milesone funding test\" was submitted by Mariasdesign(%amount%)',120.00,NULL,'2020-07-01 11:17:27','2020-07-01 11:17:27'),(23,8,5,'Milestone  \"milesone funding test\" was approved by Creative(%amount%)',119.75,NULL,'2020-07-01 11:17:48','2020-07-01 11:17:48'),(24,7,6,'Mariasdesign offered %amount%',800.00,NULL,'2020-07-01 11:23:19','2020-07-01 11:23:19'),(25,7,6,'Mariasdesign modified offer to %amount% - waiting for accepting',900.00,NULL,'2020-07-01 11:23:52','2020-07-01 11:23:52'),(26,7,6,'Mariasdesign modified offer to %amount% - waiting for accepting',1100.00,NULL,'2020-07-01 11:25:36','2020-07-01 11:25:36'),(27,8,6,'Mariasdesign offered %amount% (accepted by Creative)',1100.00,NULL,'2020-07-01 11:26:29','2020-07-01 11:26:29'),(28,9,7,'Jenni offered %amount%',1300.00,NULL,'2020-07-03 16:53:34','2020-07-03 16:53:34'),(29,9,7,'Jenni modified offer to %amount% - waiting for accepting',15000.00,NULL,'2020-07-03 16:55:23','2020-07-03 16:55:23'),(30,8,7,'Jenni offered %amount% (accepted by Creative)',15000.00,NULL,'2020-07-03 16:55:34','2020-07-03 16:55:34'),(31,8,7,'Milestone \"First milestone\" funded on 03/07/2020(%amount%) - waiting for acceptation',1481.48,NULL,'2020-07-03 16:57:01','2020-07-03 16:57:01'),(32,1,1,'Milestone \"second milestone\" was submitted by cykadev(%amount%)',1851.69,NULL,'2020-07-04 08:57:16','2020-07-04 08:57:16'),(33,3,1,'Milestone  \"second milestone\" was approved by ks(%amount%)',1851.85,NULL,'2020-07-04 08:58:08','2020-07-04 08:58:08'),(34,3,1,'Milestone \"ml3 :)\" funded on 04/07/2020(%amount%) - waiting for acceptation',370.37,NULL,'2020-07-04 08:59:05','2020-07-04 08:59:05'),(35,3,1,'Milestone \"ml4 :)csdsd\" was created on 04/07/2020',NULL,NULL,'2020-07-04 08:59:53','2020-07-04 08:59:53'),(36,1,1,'Milestone \"ml3 :)\" was submitted by cykadev(%amount%)',370.79,NULL,'2020-07-04 09:01:08','2020-07-04 09:01:08'),(37,3,1,'Milestone  \"ml3 :)\" was approved by ks(%amount%)',370.37,NULL,'2020-07-04 09:03:26','2020-07-04 09:03:26'),(38,3,1,'Milestone \"ml4 :)csdsd\" was edited 04/07/2020 (%amount%)',308.64,NULL,'2020-07-04 09:04:17','2020-07-04 09:04:17'),(39,3,1,'Milestone \"ml4 :)csdsd\" funded on 04/07/2020(%amount%) - waiting for acceptation',308.64,NULL,'2020-07-04 09:04:22','2020-07-04 09:04:22'),(40,3,1,'Milestone \"miles 5\" funded on 06/07/2020(%amount%) - waiting for acceptation',1234.57,NULL,'2020-07-06 21:13:16','2020-07-06 21:13:16'),(41,1,1,'Milestone \"miles 5\" was submitted by cykadev(%amount%)',1234.83,NULL,'2020-07-06 21:14:44','2020-07-06 21:14:44'),(42,3,1,'Milestone  \"miles 5\" was approved by ks(%amount%)',1234.57,NULL,'2020-07-06 21:15:09','2020-07-06 21:15:09'),(43,1,8,'cykadev offered %amount%',1235.96,NULL,'2020-07-07 18:32:46','2020-07-07 18:32:46'),(44,3,8,'cykadev offered %amount% (accepted by ks)',1235.80,NULL,'2020-07-07 18:34:18','2020-07-07 18:34:18'),(45,3,8,'Milestone \"mil 1\" funded on 07/07/2020(%amount%) - waiting for acceptation',617.28,NULL,'2020-07-07 18:35:27','2020-07-07 18:35:27'),(46,1,8,'Milestone \"mil 1\" was submitted by cykadev(%amount%)',616.85,NULL,'2020-07-07 18:36:32','2020-07-07 18:36:32'),(47,3,8,'Milestone  \"mil 1\" was approved by ks(%amount%)',617.28,NULL,'2020-07-07 18:37:46','2020-07-07 18:37:46');
/*!40000 ALTER TABLE `project_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_tag`
--

DROP TABLE IF EXISTS `project_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_tag` (
  `project_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`,`tag_id`),
  KEY `project_tag_project_id_index` (`project_id`),
  KEY `project_tag_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tag`
--

LOCK TABLES `project_tag` WRITE;
/*!40000 ALTER TABLE `project_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('project','mission') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'project',
  `status` enum('opened','closed','hold','completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'opened',
  `author_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` enum('by day','flat price') COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` decimal(10,2) NOT NULL,
  `starts_at` date NOT NULL,
  `ends_at` date DEFAULT NULL,
  `place` text COLLATE utf8_unicode_ci,
  `show_email` tinyint(1) NOT NULL DEFAULT '1',
  `show_phone` tinyint(1) NOT NULL DEFAULT '1',
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_slug_unique` (`slug`),
  KEY `projects_author_id_index` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'project','opened',3,'Jungle Project','jugnle project desc','jungle-project-208',NULL,0.10,'2020-06-15','2020-06-18',NULL,1,1,'','khaled@thejunglecorp.com',60,'2020-06-14 14:01:40','2020-07-07 11:19:41'),(2,'project','opened',7,'Corona tracking Mobile app project','Need developer for Corona tracking Mobile app project','corona-tracking-mobile-app-project-753',NULL,140.00,'2020-06-22','2020-08-28',NULL,1,1,'','thejunglecorp17@gmail.com',30,'2020-06-18 06:34:47','2020-07-05 19:04:03'),(3,'project','opened',8,'Android app for real estate ','Android app for real estate ','android-app-for-real-estate-909',NULL,80.00,'2020-06-22','2020-06-29',NULL,1,1,'','g.el.messaoudi@gmail.com',12,'2020-06-21 09:57:42','2020-07-01 21:11:54'),(4,'project','opened',8,'Build a COVID-19 tracking app ','Build a COVID-19 tracking app, android & iOS','build-a-covid-19-tracking-app-365',NULL,185.00,'2020-06-23','2020-07-05',NULL,1,1,'','g.el.messaoudi@gmail.com',20,'2020-06-22 08:04:04','2020-07-03 16:48:19'),(5,'project','opened',8,'Create CRM campaign','Create CRM campaign','create-crm-campaign-505',NULL,1481.48,'2020-07-15','2020-07-25',NULL,1,1,'','g.el.messaoudi@gmail.com',18,'2020-07-01 11:23:01','2020-07-05 19:04:09'),(6,'project','opened',8,'Build a social step counting app ','I have this idea to build a step counting app. It will not only count steps, but track all activities. The app first Android. It will be app that people can see each others steps.','build-a-social-step-counting-app-355',NULL,1604.94,'2020-07-26','2020-07-31',NULL,1,1,'','g.el.messaoudi@gmail.com',12,'2020-07-03 16:51:08','2020-07-07 06:10:29'),(7,'project','opened',3,'NEW JOB APP MOBILE REACT','A social network for dogs.','new-job-app-mobile-react-462',NULL,987.65,'2020-07-08','2020-07-31',NULL,1,1,'','khaled@thejunglecorp.com',11,'2020-07-07 18:32:17','2020-07-08 05:19:48');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposals`
--

DROP TABLE IF EXISTS `proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int unsigned NOT NULL,
  `project_id` int unsigned NOT NULL,
  `offer` decimal(8,2) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('waiting','accepted','rejected') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proposals_author_id_project_id_unique` (`author_id`,`project_id`),
  KEY `proposals_author_id_index` (`author_id`),
  KEY `proposals_project_id_index` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposals`
--

LOCK TABLES `proposals` WRITE;
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
INSERT INTO `proposals` VALUES (1,1,1,15.00,'Hello ','accepted','2020-06-15 08:14:02','2020-06-19 05:34:05'),(2,8,2,120.00,'porposal for app','accepted','2020-06-18 06:48:48','2020-06-20 07:40:23'),(3,3,2,120.00,'i can do this app','waiting','2020-06-19 05:32:58','2020-06-19 05:32:58'),(4,7,3,60.00,'I can do the app for 6k','accepted','2020-06-21 09:58:08','2020-06-21 09:58:49'),(5,7,4,120.00,'I have done already 6 different COVID-19 apps for the government of USA.','accepted','2020-06-22 08:08:38','2020-06-22 12:46:53'),(6,7,5,1100.00,'hello i want the job','accepted','2020-07-01 11:23:19','2020-07-01 11:26:29'),(7,9,6,15000.00,'Ok but i need more budget','accepted','2020-07-03 16:53:34','2020-07-03 16:55:34'),(8,1,7,1235.96,'Hi, 1100 €?','accepted','2020-07-07 18:32:46','2020-07-07 18:34:18');
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `references` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `references_user_id_index` (`user_id`),
  CONSTRAINT `references_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `milestone_id` int unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,6,'revise plese','2020-07-01 11:17:07','2020-07-01 11:17:07');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scategories`
--

DROP TABLE IF EXISTS `scategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scategories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scategories`
--

LOCK TABLES `scategories` WRITE;
/*!40000 ALTER TABLE `scategories` DISABLE KEYS */;
INSERT INTO `scategories` VALUES (1,'Advertising','2020-07-08 05:19:23','2020-07-08 05:19:23'),(2,'E-commerce','2020-07-08 05:19:23','2020-07-08 05:19:23'),(3,'Transactional Marketplace','2020-07-08 05:19:23','2020-07-08 05:19:23'),(4,'Relational Marketplace','2020-07-08 05:19:23','2020-07-08 05:19:23'),(5,'FinTech','2020-07-08 05:19:23','2020-07-08 05:19:23'),(6,'Cyber-security','2020-07-08 05:19:23','2020-07-08 05:19:23'),(7,'FoodTech','2020-07-08 05:19:23','2020-07-08 05:19:23'),(8,'EdTech','2020-07-08 05:19:23','2020-07-08 05:19:23'),(9,'Education','2020-07-08 05:19:23','2020-07-08 05:19:23'),(10,'Electronic','2020-07-08 05:19:23','2020-07-08 05:19:23'),(11,'Gaming','2020-07-08 05:19:23','2020-07-08 05:19:23'),(12,'Retail, Distribution','2020-07-08 05:19:23','2020-07-08 05:19:23'),(13,'SaaS Softwares','2020-07-08 05:19:23','2020-07-08 05:19:23'),(14,'Media, Marketing','2020-07-08 05:19:23','2020-07-08 05:19:23'),(15,'Mobility, Micro-mobility','2020-07-08 05:19:23','2020-07-08 05:19:23'),(16,'Hospitality','2020-07-08 05:19:23','2020-07-08 05:19:23'),(17,'Healthcare, Sport','2020-07-08 05:19:23','2020-07-08 05:19:23'),(18,'Pet Care','2020-07-08 05:19:23','2020-07-08 05:19:23'),(19,'Digital Services, Software','2020-07-08 05:19:23','2020-07-08 05:19:23'),(20,'Social Network','2020-07-08 05:19:23','2020-07-08 05:19:23'),(21,'Real Estate','2020-07-08 05:19:23','2020-07-08 05:19:23'),(22,'Renewable Energy','2020-07-08 05:19:23','2020-07-08 05:19:23'),(23,'Technology','2020-07-08 05:19:23','2020-07-08 05:19:23'),(24,'Other','2020-07-08 05:19:23','2020-07-08 05:19:23');
/*!40000 ALTER TABLE `scategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
INSERT INTO `service_categories` VALUES (1,'Business plans, Decks, Strategy','2020-07-08 05:19:23','2020-07-08 05:19:23'),(2,'Fund raising','2020-07-08 05:19:23','2020-07-08 05:19:23'),(3,'User-experience, Design','2020-07-08 05:19:23','2020-07-08 05:19:23'),(4,'Product Management','2020-07-08 05:19:23','2020-07-08 05:19:23'),(5,'Product Development, Programming','2020-07-08 05:19:23','2020-07-08 05:19:23'),(6,'QA, QC','2020-07-08 05:19:23','2020-07-08 05:19:23'),(7,'Growth-hacking','2020-07-08 05:19:23','2020-07-08 05:19:23'),(8,'SEO','2020-07-08 05:19:23','2020-07-08 05:19:23'),(9,'E-marketing, Advertising, SEM','2020-07-08 05:19:23','2020-07-08 05:19:23'),(10,'Sales, Business Development','2020-07-08 05:19:23','2020-07-08 05:19:23'),(11,'Legal Consulting','2020-07-08 05:19:23','2020-07-08 05:19:23'),(12,'Financial Consulting','2020-07-08 05:19:23','2020-07-08 05:19:23'),(13,'Public Relations','2020-07-08 05:19:23','2020-07-08 05:19:23'),(14,'Copy-writing, Translation','2020-07-08 05:19:23','2020-07-08 05:19:23');
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_contact`
--

DROP TABLE IF EXISTS `service_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_contact`
--

LOCK TABLES `service_contact` WRITE;
/*!40000 ALTER TABLE `service_contact` DISABLE KEYS */;
INSERT INTO `service_contact` VALUES (1,1,1,3,'','2020-06-14 18:00:55','2020-06-14 18:00:55'),(4,2,3,8,'','2020-06-21 10:17:39','2020-06-21 10:17:39'),(5,6,7,1,'','2020-07-02 14:53:45','2020-07-02 14:53:45');
/*!40000 ALTER TABLE `service_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_message_documents`
--

DROP TABLE IF EXISTS `service_message_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_message_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_message_id` int unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_message_documents`
--

LOCK TABLES `service_message_documents` WRITE;
/*!40000 ALTER TABLE `service_message_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_message_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_messages`
--

DROP TABLE IF EXISTS `service_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ordered_package_id` int unsigned NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sender_id` int unsigned NOT NULL,
  `receiver_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_messages`
--

LOCK TABLES `service_messages` WRITE;
/*!40000 ALTER TABLE `service_messages` DISABLE KEYS */;
INSERT INTO `service_messages` VALUES (1,1,'hi',0,3,1,'2020-06-14 18:01:44','2020-06-14 18:01:44'),(2,2,'here is UX',0,7,8,'2020-06-18 06:57:19','2020-06-18 06:57:19'),(4,4,'instructions',0,8,3,'2020-06-21 10:18:23','2020-06-21 10:18:23'),(5,5,'ok',0,3,8,'2020-06-22 07:48:13','2020-06-22 07:48:13'),(6,6,'hehe',0,7,8,'2020-06-24 07:35:56','2020-06-24 07:35:56'),(7,7,'sending instructions and a file',0,7,8,'2020-06-25 05:20:37','2020-06-25 05:20:37'),(8,8,'Hello',0,2,8,'2020-06-26 17:39:34','2020-06-26 17:39:34'),(9,9,'ok',0,2,8,'2020-06-27 15:58:47','2020-06-27 15:58:47'),(10,10,'Sending instructions',0,7,8,'2020-06-27 17:43:36','2020-06-27 17:43:36'),(11,11,'jkl',0,8,7,'2020-07-01 11:40:28','2020-07-01 11:40:28'),(12,12,'hiii',0,3,8,'2020-07-01 16:57:49','2020-07-01 16:57:49'),(13,13,'ok',0,3,7,'2020-07-01 21:04:25','2020-07-01 21:04:25'),(14,14,'ok',0,2,1,'2020-07-02 18:57:17','2020-07-02 18:57:17'),(15,15,'hi',0,3,7,'2020-07-05 19:05:09','2020-07-05 19:05:09'),(16,16,'hi',0,2,1,'2020-07-06 19:22:12','2020-07-06 19:22:12');
/*!40000 ALTER TABLE `service_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_subcategories`
--

DROP TABLE IF EXISTS `service_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_subcategories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_subcategories`
--

LOCK TABLES `service_subcategories` WRITE;
/*!40000 ALTER TABLE `service_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` int NOT NULL,
  `avg_stars` decimal(10,0) NOT NULL DEFAULT '0',
  `author_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `subcategory_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'New Test Gig','test desc',0,0,1,1,0,'2020-06-12 12:58:00','2020-06-12 12:58:00'),(2,'Jungle Corp Gig','Jungle Corp DESC',0,0,3,2,0,'2020-06-14 13:54:47','2020-06-14 13:54:47'),(4,'I will design a whole website','I will design a whole website',0,0,8,2,0,'2020-06-22 08:14:24','2020-06-22 08:14:24'),(5,'I will do a video montage','I will do a video montage',0,0,8,3,0,'2020-06-22 08:17:07','2020-06-22 08:17:07'),(6,'testing Gig publish + currency','testing Gig publish + currency',0,0,7,3,0,'2020-07-01 11:39:53','2020-07-01 11:39:53'),(7,'MY GIG','HELLO I DO ANYTHING FOR ANY PRICE.',0,0,1,2,0,'2020-07-02 18:56:15','2020-07-02 18:56:15');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_startup`
--

DROP TABLE IF EXISTS `skill_startup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_startup` (
  `skill_id` int unsigned NOT NULL,
  `start_up_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`skill_id`,`start_up_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_startup`
--

LOCK TABLES `skill_startup` WRITE;
/*!40000 ALTER TABLE `skill_startup` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_startup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_user`
--

DROP TABLE IF EXISTS `skill_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_user` (
  `user_id` int unsigned NOT NULL,
  `skill_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_user`
--

LOCK TABLES `skill_user` WRITE;
/*!40000 ALTER TABLE `skill_user` DISABLE KEYS */;
INSERT INTO `skill_user` VALUES (1,2,NULL,NULL),(2,1,NULL,NULL),(3,4,NULL,NULL),(4,2,NULL,NULL),(5,2,NULL,NULL),(6,2,NULL,NULL),(7,23,NULL,NULL),(8,20,NULL,NULL),(9,2,NULL,NULL),(10,2,NULL,NULL);
/*!40000 ALTER TABLE `skill_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Business plans, Decks, Strategy','2020-07-08 05:19:23','2020-07-08 05:19:23'),(2,'Fund raising','2020-07-08 05:19:23','2020-07-08 05:19:23'),(3,'User-experience, Design','2020-07-08 05:19:23','2020-07-08 05:19:23'),(4,'Product Management','2020-07-08 05:19:23','2020-07-08 05:19:23'),(5,'Product Development, Programming','2020-07-08 05:19:23','2020-07-08 05:19:23'),(6,'QA, QC','2020-07-08 05:19:23','2020-07-08 05:19:23'),(7,'Growth-hacking','2020-07-08 05:19:23','2020-07-08 05:19:23'),(8,'SEO','2020-07-08 05:19:23','2020-07-08 05:19:23'),(9,'E-marketing, Advertising, SEM','2020-07-08 05:19:23','2020-07-08 05:19:23'),(10,'Sales, Business Development','2020-07-08 05:19:23','2020-07-08 05:19:23'),(11,'Legal Consulting','2020-07-08 05:19:23','2020-07-08 05:19:23'),(12,'Financial Consulting','2020-07-08 05:19:23','2020-07-08 05:19:23'),(13,'Public Relations','2020-07-08 05:19:23','2020-07-08 05:19:23'),(14,'Copy-writing, Translation','2020-07-08 05:19:23','2020-07-08 05:19:23');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup_member`
--

DROP TABLE IF EXISTS `startup_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startup_member` (
  `start_up_id` int NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'saber ouarezzamen',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`start_up_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup_member`
--

LOCK TABLES `startup_member` WRITE;
/*!40000 ALTER TABLE `startup_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `startup_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup_members`
--

DROP TABLE IF EXISTS `startup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startup_members` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `start_up_id` int unsigned NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `joined_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup_members`
--

LOCK TABLES `startup_members` WRITE;
/*!40000 ALTER TABLE `startup_members` DISABLE KEYS */;
INSERT INTO `startup_members` VALUES (1,1,'','khaled@thegaragelabs.com',2,'khaled shehata','CEO','Good guy.','http://api.thegaragelabs.com/assets/images/avatar/user.svg',1,'2020-06-11 19:42:04','2020-06-11 19:42:04',NULL),(2,2,'','thejunglecorp17@gmail.com',7,'Maria Lopez','CEO','Founder & CEO','http://api.thegaragelabs.com/assets/images/avatar/user.svg',1,'2020-06-18 06:06:22','2020-06-18 06:06:22',NULL),(3,3,'','g.el.messaoudi@gmail.com',8,'Ghariba Messaoudi','CEO','founder','http://api.thegaragelabs.com/assets/images/avatar/user.svg',1,'2020-06-18 06:18:14','2020-06-18 06:18:14',NULL),(4,3,'1a5hCOubkusIOwz11QRb','ghariba05077@gmail.com',0,'Maryam','CEO','Adding you to be  a team member','/vendor/img/startup-logo.jpg',0,'2020-06-18 06:28:44','2020-06-18 06:29:04',NULL),(5,3,'18VaVlNegi569RRwJErz','ghariba050782@gmail.com',10,'Maryam Mess','PO','join us\n','http://api.thegaragelabs.com/assets/images/avatar/user.svg',0,'2020-07-01 11:44:32','2020-07-01 11:44:32',NULL),(6,4,'','g.el.messaoudi@gmail.com',8,'Ghariba Messaoudi','CTO','just CTO','http://api.thegaragelabs.com/assets/images/avatar/user.svg',1,'2020-07-04 18:11:50','2020-07-04 18:11:50',NULL),(7,5,'','khaled@thejunglecorp.com',3,'K S','Boss','-','http://api.thegaragelabs.com/storage/wFOGO1u7Xl.jpeg',1,'2020-07-08 08:06:31','2020-07-08 08:06:31',NULL);
/*!40000 ALTER TABLE `startup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup_message_documents`
--

DROP TABLE IF EXISTS `startup_message_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startup_message_documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `startup_message_id` int unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup_message_documents`
--

LOCK TABLES `startup_message_documents` WRITE;
/*!40000 ALTER TABLE `startup_message_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `startup_message_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup_messages`
--

DROP TABLE IF EXISTS `startup_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startup_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int unsigned NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sender_id` int unsigned NOT NULL,
  `receiver_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup_messages`
--

LOCK TABLES `startup_messages` WRITE;
/*!40000 ALTER TABLE `startup_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `startup_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup_profiles`
--

DROP TABLE IF EXISTS `startup_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startup_profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `start_up_id` int unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skills` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locations` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commitment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counterpart` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_requirements` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `startup_profiles_start_up_id_foreign` (`start_up_id`),
  CONSTRAINT `startup_profiles_start_up_id_foreign` FOREIGN KEY (`start_up_id`) REFERENCES `startups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup_profiles`
--

LOCK TABLES `startup_profiles` WRITE;
/*!40000 ALTER TABLE `startup_profiles` DISABLE KEYS */;
INSERT INTO `startup_profiles` VALUES (2,1,'CTO','1','Remote_Onsite','40','Full Time_Part Time','Equity_Cash','Must be cool.','2020-06-14 07:41:14','2020-06-14 07:41:14'),(3,1,'Looking for CFO','1','Remote_Onsite','30','Full Time','Other_Cash','Dunno','2020-06-14 07:41:14','2020-06-14 07:41:14'),(4,2,'PO','20','Remote','20','Part Time','Cash_Equity','Fluent in English','2020-06-18 06:06:22','2020-06-18 06:06:22'),(5,2,'Designer','23','Remote','10','Part Time','Cash','Sketch','2020-06-18 06:06:22','2020-06-18 06:06:22'),(9,3,'CCO','38','Onsite','40','Full Time','Equity','BD','2020-06-20 07:39:48','2020-06-20 07:39:48'),(10,3,'Virtual Assistant','18','Remote','5','Part Time','Other_Cash','EST time zone ','2020-06-20 07:39:48','2020-06-20 07:39:48'),(12,4,'CTO','3','Remote','22','Part Time','Other','no','2020-07-04 18:11:50','2020-07-04 18:11:50'),(13,5,'CTO','5','Remote','30','Full Time','Equity','Laravel/VueJS','2020-07-08 08:06:31','2020-07-08 08:06:31');
/*!40000 ALTER TABLE `startup_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startups`
--

DROP TABLE IF EXISTS `startups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `finding` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `montant_recherche` decimal(10,0) DEFAULT NULL,
  `parts_sociales_cedees` decimal(10,0) DEFAULT NULL,
  `valorisation_societe` decimal(10,0) DEFAULT NULL,
  `montant_leve` decimal(10,0) DEFAULT NULL,
  `montant_utilisation` text COLLATE utf8_unicode_ci,
  `concept` text COLLATE utf8_unicode_ci,
  `business_model` text COLLATE utf8_unicode_ci,
  `competitors` text COLLATE utf8_unicode_ci,
  `project_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `looking_partners` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concept_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int unsigned NOT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'startups',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `fonds_types_id` int unsigned DEFAULT NULL,
  `longitude` double(8,2) DEFAULT NULL,
  `latitude` double(8,2) DEFAULT NULL,
  `progress` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fonds_types_id` (`fonds_types_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startups`
--

LOCK TABLES `startups` WRITE;
/*!40000 ALTER TABLE `startups` DISABLE KEYS */;
INSERT INTO `startups` VALUES (1,'Name of a startup 2','',0,0,0,0,'','c','bm','cp','0_1_2_3_4','','','',2,41,'name-of-a-startup-2-274','startups','','2020-06-11 19:42:04','2020-07-07 06:10:11','France','Paris',0,2.35,48.86,'pr'),(2,'BIO food','',0,0,0,0,'','La 1ère plateforme de mise en relation entre fournisseurs, producteurs, acheteurs et revendeurs de produits BIO et écologoqies.\n\n','Membership fee','Biobeep','1_2','','','',7,14,'bio-food-406','startups','jrvghbDJo9.jpg','2020-06-18 06:06:22','2020-07-04 06:55:59','Spain','Málaga',0,-4.42,36.72,'Launch MVP'),(3,'Digital Cube','',0,0,0,0,'','Digital platform','Money','competiotion','0_4_3','','','',8,53,'digital-cube-669','startups','FNRfGUE4rY.jpg','2020-06-18 06:18:14','2020-07-07 21:41:03','Belgium','Brussels',0,4.35,50.85,'progress'),(4,'Tech Lab','',0,0,0,0,'','Lab for tech people','Giving free work space to tech people','Giving free work space to tech people','0','','','',8,4,'tech-lab-203','startups','AuEeECRD5G.jpg','2020-07-04 18:11:50','2020-07-07 07:52:48','Germany','Hamburg',0,9.99,53.55,'Giving free work space to tech people'),(5,'OKI COMMERCE','',0,0,0,0,'','C','BM','COMP','0_1_2_3','','','',3,2,'oki-commerce-595','startups','','2020-07-08 08:06:31','2020-07-08 08:29:34','France','Paris',0,2.35,48.86,'PR');
/*!40000 ALTER TABLE `startups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_bank`
--

DROP TABLE IF EXISTS `user_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_bank` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `iban` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sift_bic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_bank`
--

LOCK TABLES `user_bank` WRITE;
/*!40000 ALTER TABLE `user_bank` DISABLE KEYS */;
INSERT INTO `user_bank` VALUES (1,'Shehbaz Malik',171,'21123213123213','1243214124124',1,'2020-07-03 04:06:51','2020-07-03 04:06:51');
/*!40000 ALTER TABLE `user_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_company`
--

DROP TABLE IF EXISTS `user_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_company` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `incorporation_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_company`
--

LOCK TABLES `user_company` WRITE;
/*!40000 ALTER TABLE `user_company` DISABLE KEYS */;
INSERT INTO `user_company` VALUES (1,'ABC Company',0,'243324324324','234324234234555',1,'2020-07-03 04:07:34','2020-07-03 04:10:18','Model Colony Rd, C & D Aarea Saudabad Saudabad, Karachi, Karachi City, Sindh 75080, Pakistan');
/*!40000 ALTER TABLE `user_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `i_am` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displaying_i_am` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` text COLLATE utf8_unicode_ci,
  `avg_stars` tinyint(1) NOT NULL DEFAULT '0',
  `num_reviews` smallint unsigned NOT NULL DEFAULT '0',
  `card_no` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `longitude` double(8,2) DEFAULT NULL,
  `latitude` double(8,2) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `dstoffset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rawOffset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeZoneId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`),
  KEY `users_country_id_index` (`country`),
  KEY `users_city_id_index` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shehbaz','Malik','cykadev','shebazmalik1@gmail.com','$2y$10$KY0rkuQL59YTD5p3XwgcGu98rVgVfiaX2zjZ.XXiY6euMbZez23Ce','IAMo15Lcz4bkDJ9H1PB0P7yhCRnlaVH6YhCYribHZv4mOZhs9u5nSwlyvX26','','','','','','Pakistan','Karachi',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg','','','0','A provider','',NULL,NULL,NULL,NULL,3,2,NULL,'2020-06-11 19:31:47','2020-07-06 19:23:37','EUR',67.00,24.86,1,1,'0','18000','Asia/Karachi'),(2,'khaled','shehata','khaleds','khaled@thegaragelabs.com','$2y$10$g9Xj1qNkROa61Bwiek63b.6Xv1pbEdTxCDRrhZysw.N/YNMScaY8C','WRAjok3au22anbQRe1U1UsrBdg9wqa2eWlB9iCEA3yxbPTCSrrIgTcOPMJKC','','','','','','Émirats arabes unis','Dubaï',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg','','','2_1_0','A investisseur|A entrepreneur|A provider','','cus_HXQNmx5hWvL740',NULL,'card_1GyLWGDmiY9zOyHqa3vtudVA',NULL,0,0,'udVA','2020-06-11 19:38:26','2020-06-27 15:58:39','USD',55.27,25.20,1,0,'0','14400','Asia/Dubai'),(3,'K','S','ks','khaled@thejunglecorp.com','$2y$10$Hj.lnHiXIj7vlIWXMI2RZu02G70Gr0h4VKtJa7g81bO3b0OL8vFoC','YCBHLiFEs2QKpQAmBPsqsA5PNUIsCHaUPpNfgjaqdSOh1fWN6nWrLfiGoP5g','','','','','','Émirats arabes unis','Dubaï',NULL,'http://api.thegaragelabs.com/storage/wFOGO1u7Xl.jpeg','','','2_1_0','A investisseur|A entrepreneur|A provider','','cus_HSw1jVfd16TJkN',NULL,'card_1Gu09DDmiY9zOyHqn3nGek2a','zz',0,0,'ek2a','2020-06-14 08:17:53','2020-07-01 16:57:42','GBP',55.27,25.20,1,0,'0','14400','Asia/Dubai'),(6,'Shehbaz','2','cykadev2','shebazmalik8@gmail.com','$2y$10$56jNOJ4MrsWwqwf2vdhTHuLkJl9w28CbvTtjfwhoAwoXfUMonNu8K','6XygH8bjyWtRAmnRgTc4tYE6BW8wZ3wRtnjGaXh8yV4HSElTyJqOdKV3SEwr','',NULL,NULL,NULL,NULL,'United Arab Emirates','Dubai',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg',NULL,'','2_1','A investisseur|A entrepreneur','1d9793b0f385e04b58e38a712ef2e972166afe439OjrjRkaaWTF8jJCkoMFMfEL3pv1aTwgiKjiaPL3zzWM7wzjKiuMnNh49BDH',NULL,NULL,NULL,NULL,0,0,NULL,'2020-06-14 14:52:01','2020-06-14 14:52:01','USD',55.27,25.20,0,0,'0','14400','Asia/Dubai'),(7,'Maria','Lopez','Mariasdesign','thejunglecorp17@gmail.com','$2y$10$8U928mlj7UXDtJQGQOLO3uTJVmr6BDkaInYdOe3K3JNMgT00QJybm','7mTUr5fAmm1gixgXzgjK9pmVKgnViIOag5CEuxhSKg8qGSFYA5NiPGkDg4ej','','','','','','United States','Denver',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg','','','2_1_0','A investisseur|A entrepreneur|A provider','','cus_HUGCoYcQ2NdPNy',NULL,'card_1GvHgEDmiY9zOyHqeFwKiYuK',NULL,0,0,'iYuK','2020-06-18 05:21:45','2020-06-22 08:44:34','USD',55.27,25.20,1,0,'0','14400','Asia/Dubai'),(8,'Ghariba','Messaoudi','Creative','g.el.messaoudi@gmail.com','$2y$10$LAq034bQuL3NKYD/coRl9OZAGNnMGfa.HNq/jEFwSm.66n.SotmFC','wsFLb25LQUMNAFHMjwvUxJleOSjMxr6yIJeZ9q600fUlPBJ22xgggjhNkWFJ','','','','','','United Kingdom','London',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg','','','2_1_0','A investisseur|A entrepreneur|A provider','','cus_HVR71OEqbS5hdX',NULL,'card_1GwQFdDmiY9zOyHqxpBHgkRB',NULL,3,2,'4242','2020-06-18 06:15:52','2020-07-03 16:57:00','GBP',4.89,52.37,1,0,'3600','3600','Europe/Amsterdam'),(9,'Jennifer','Van der Laan','Jenni','ghariba05077@gmail.com','$2y$10$HTEr5/5RDEVlQofOb/MA7ebjRTZQbFDwSOM8Glwtz45VUZMgsKZlC','sgHaqSYLhxosp2V7O9yg8gizRci85RLUwiNnprZfCZvC31TXzsMPCPIZlgFh','',NULL,NULL,NULL,NULL,'United Arab Emirates','Sharjah',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg',NULL,'','2_1_0','A investisseur|A entrepreneur|A provider','',NULL,NULL,NULL,NULL,0,0,NULL,'2020-06-22 16:47:00','2020-06-22 16:47:52','USD',55.42,25.35,1,0,'0','14400','Asia/Dubai'),(10,'Maryam','Mess','Maryam','ghariba050782@gmail.com','$2y$10$JOkgdX0HjE9qlf80YMzb2O/NqiX9mAv1NZeqjGW8.WAQfTBEu4vQy','vdnoAkbv405VDeVL92zMfc4MwEyq8jWGNiXSlHsoJgFguoTr670TokhvSi8b','',NULL,NULL,NULL,NULL,'Spain','Málaga',NULL,'http://api.thegaragelabs.com/assets/images/avatar/user.svg',NULL,'','2','A investisseur','',NULL,NULL,NULL,NULL,0,0,NULL,'2020-06-22 16:50:45','2020-06-22 16:51:28','EURO',-4.42,36.72,1,0,'3600','3600','Europe/Madrid');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08 10:24:51
