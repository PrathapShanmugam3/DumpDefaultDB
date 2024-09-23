-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: datacode-datacode.d.aivencloud.com    Database: defaultdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '00c68132-3f6f-11ef-897e-320b953de1d4:1-271';

--
-- Table structure for table `application_queries`
--

DROP TABLE IF EXISTS `application_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_queries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `query_content` varchar(255) DEFAULT NULL,
  `query_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_queries`
--

LOCK TABLES `application_queries` WRITE;
/*!40000 ALTER TABLE `application_queries` DISABLE KEYS */;
INSERT INTO `application_queries` VALUES (1,'SELECT * FROM country_master;','SELECT_ALL_COUNTRY_LIST'),(2,'select * from user_info where username=${username};','GET_USER_DETAILS_BY_USERNAME'),(3,'select * from user_info where email=${email};','GET_USER_DETAILS_BY_EMAIL'),(4,'SELECT * FROM district_master;','SELECT_ALL_DISTRICT_FROM_TAMILNADU'),(5,'select * from taluk_master where district_id=${districtId};','GET_TALUK_DETAILS_WHERE_DISTRICTID_DROP_DOWN'),(6,'select email from user_info  where email LIKE \'${email}%\';','ALREADY_EMAIL_OCCUR_OR_NOT'),(7,'SELECT sm.config_content FROM custom_config cm  JOIN config_for_all_services sm ON sm.id = cm.config_content_id  WHERE cm.config_name =${customConfig};','CUSTOM_CONFIG_SERVICE_FOR_ALL_SERVICES');
/*!40000 ALTER TABLE `application_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_for_all_services`
--

DROP TABLE IF EXISTS `config_for_all_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_for_all_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `config_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_for_all_services`
--

LOCK TABLES `config_for_all_services` WRITE;
/*!40000 ALTER TABLE `config_for_all_services` DISABLE KEYS */;
INSERT INTO `config_for_all_services` VALUES (1,'prathapshanmugam5@gmail.com'),(2,'hdlh hkrg lfby wkrb'),(3,'587'),(4,'smtp.gmail.com'),(5,'smtp'),(6,'true'),(7,'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'),(8,'https://api.github.com/repos/PrathapShanmugam3/imageStore/contents'),(9,'https://datacode.onrender.com/'),(10,'http://localhost:10000/');
/*!40000 ALTER TABLE `config_for_all_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_master`
--

DROP TABLE IF EXISTS `country_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `dial_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_master`
--

LOCK TABLES `country_master` WRITE;
/*!40000 ALTER TABLE `country_master` DISABLE KEYS */;
INSERT INTO `country_master` VALUES (1,'AF','Afghanistan','+93'),(2,'AL','Albania','+355'),(3,'DZ','Algeria','+213'),(4,'AD','Andorra','+376'),(5,'AO','Angola','+244'),(6,'AG','Antigua and Barbuda','+1-268'),(7,'AR','Argentina','+54'),(8,'AM','Armenia','+374'),(9,'AU','Australia','+61'),(10,'AT','Austria','+43'),(11,'AZ','Azerbaijan','+994'),(12,'BS','Bahamas','+1-242'),(13,'BH','Bahrain','+973'),(14,'BD','Bangladesh','+880'),(15,'BB','Barbados','+1-246'),(16,'BY','Belarus','+375'),(17,'BE','Belgium','+32'),(18,'BZ','Belize','+501'),(19,'BJ','Benin','+229'),(20,'BT','Bhutan','+975'),(21,'BO','Bolivia','+591'),(22,'BA','Bosnia and Herzegovina','+387'),(23,'BW','Botswana','+267'),(24,'BR','Brazil','+55'),(25,'BN','Brunei Darussalam','+673'),(26,'BG','Bulgaria','+359'),(27,'BF','Burkina Faso','+226'),(28,'BI','Burundi','+257'),(29,'CV','Cabo Verde','+238'),(30,'KH','Cambodia','+855'),(31,'CM','Cameroon','+237'),(32,'CA','Canada','+1'),(33,'CF','Central African Republic','+236'),(34,'TD','Chad','+235'),(35,'CL','Chile','+56'),(36,'CN','China','+86'),(37,'CO','Colombia','+57'),(38,'KM','Comoros','+269'),(39,'CG','Congo (Congo-Brazzaville)','+242'),(40,'CR','Costa Rica','+506'),(41,'HR','Croatia','+385'),(42,'CU','Cuba','+53'),(43,'CY','Cyprus','+357'),(44,'CZ','Czech Republic','+420'),(45,'CD','Democratic Republic of the Congo','+243'),(46,'DK','Denmark','+45'),(47,'DJ','Djibouti','+253'),(48,'DM','Dominica','+1-767'),(49,'DO','Dominican Republic','+1-809'),(50,'EC','Ecuador','+593'),(51,'EG','Egypt','+20'),(52,'SV','El Salvador','+503'),(53,'GQ','Equatorial Guinea','+240'),(54,'ER','Eritrea','+291'),(55,'EE','Estonia','+372'),(56,'SZ','Eswatini','+268'),(57,'ET','Ethiopia','+251'),(58,'FJ','Fiji','+679'),(59,'FI','Finland','+358'),(60,'FR','France','+33'),(61,'GA','Gabon','+241'),(62,'GM','Gambia','+220'),(63,'GE','Georgia','+995'),(64,'DE','Germany','+49'),(65,'GH','Ghana','+233'),(66,'GR','Greece','+30'),(67,'GD','Grenada','+1-473'),(68,'GT','Guatemala','+502'),(69,'GN','Guinea','+224'),(70,'GW','Guinea-Bissau','+245'),(71,'GY','Guyana','+592'),(72,'HT','Haiti','+509'),(73,'HN','Honduras','+504'),(74,'HU','Hungary','+36'),(75,'IS','Iceland','+354'),(76,'IN','India','+91'),(77,'ID','Indonesia','+62'),(78,'IR','Iran','+98'),(79,'IQ','Iraq','+964'),(80,'IE','Ireland','+353'),(81,'IL','Israel','+972'),(82,'IT','Italy','+39'),(83,'JM','Jamaica','+1-876'),(84,'JP','Japan','+81'),(85,'JO','Jordan','+962'),(86,'KZ','Kazakhstan','+7'),(87,'KE','Kenya','+254'),(88,'KI','Kiribati','+686'),(89,'KW','Kuwait','+965'),(90,'KG','Kyrgyzstan','+996'),(91,'LA','Laos','+856'),(92,'LV','Latvia','+371'),(93,'LB','Lebanon','+961'),(94,'LS','Lesotho','+266'),(95,'LR','Liberia','+231'),(96,'LY','Libya','+218'),(97,'LI','Liechtenstein','+423'),(98,'LT','Lithuania','+370'),(99,'LU','Luxembourg','+352'),(100,'MG','Madagascar','+261'),(101,'MW','Malawi','+265'),(102,'MY','Malaysia','+60'),(103,'MV','Maldives','+960'),(104,'ML','Mali','+223'),(105,'MT','Malta','+356'),(106,'MH','Marshall Islands','+692'),(107,'MR','Mauritania','+222'),(108,'MU','Mauritius','+230'),(109,'MX','Mexico','+52'),(110,'FM','Micronesia','+691'),(111,'MD','Moldova','+373'),(112,'MC','Monaco','+377'),(113,'MN','Mongolia','+976'),(114,'ME','Montenegro','+382'),(115,'MA','Morocco','+212'),(116,'MZ','Mozambique','+258'),(117,'MM','Myanmar','+95'),(118,'NA','Namibia','+264'),(119,'NR','Nauru','+674'),(120,'NP','Nepal','+977'),(121,'NL','Netherlands','+31'),(122,'NZ','New Zealand','+64'),(123,'NI','Nicaragua','+505'),(124,'NE','Niger','+227'),(125,'NG','Nigeria','+234'),(126,'MK','North Macedonia','+389'),(127,'NO','Norway','+47'),(128,'OM','Oman','+968'),(129,'PK','Pakistan','+92'),(130,'PW','Palau','+680'),(131,'PS','Palestine','+970'),(132,'PA','Panama','+507'),(133,'PG','Papua New Guinea','+675'),(134,'PY','Paraguay','+595'),(135,'PE','Peru','+51'),(136,'PH','Philippines','+63'),(137,'PL','Poland','+48'),(138,'PT','Portugal','+351'),(139,'QA','Qatar','+974'),(140,'RO','Romania','+40'),(141,'RU','Russia','+7'),(142,'RW','Rwanda','+250'),(143,'KN','Saint Kitts and Nevis','+1-869'),(144,'LC','Saint Lucia','+1-758'),(145,'VC','Saint Vincent and the Grenadines','+1-784'),(146,'WS','Samoa','+685'),(147,'SM','San Marino','+378'),(148,'ST','Sao Tome and Principe','+239'),(149,'SA','Saudi Arabia','+966'),(150,'SN','Senegal','+221'),(151,'RS','Serbia','+381'),(152,'SC','Seychelles','+248'),(153,'SL','Sierra Leone','+232'),(154,'SG','Singapore','+65'),(155,'SK','Slovakia','+421'),(156,'SI','Slovenia','+386'),(157,'SB','Solomon Islands','+677'),(158,'SO','Somalia','+252'),(159,'ZA','South Africa','+27'),(160,'KR','South Korea','+82'),(161,'SS','South Sudan','+211'),(162,'ES','Spain','+34'),(163,'LK','Sri Lanka','+94'),(164,'SD','Sudan','+249'),(165,'SR','Suriname','+597'),(166,'SE','Sweden','+46'),(167,'CH','Switzerland','+41'),(168,'SY','Syria','+963'),(169,'TW','Taiwan','+886'),(170,'TJ','Tajikistan','+992'),(171,'TZ','Tanzania','+255'),(172,'TH','Thailand','+66'),(173,'TL','Timor-Leste','+670'),(174,'TG','Togo','+228'),(175,'TO','Tonga','+676'),(176,'TT','Trinidad and Tobago','+1-868'),(177,'TN','Tunisia','+216'),(178,'TR','Turkey','+90'),(179,'TM','Turkmenistan','+993'),(180,'TV','Tuvalu','+688'),(181,'UG','Uganda','+256'),(182,'UA','Ukraine','+380'),(183,'AE','United Arab Emirates','+971'),(184,'GB','United Kingdom','+44'),(185,'US','United States of America','+1'),(186,'UY','Uruguay','+598'),(187,'UZ','Uzbekistan','+998'),(188,'VU','Vanuatu','+678'),(189,'VE','Venezuela','+58'),(190,'VN','Vietnam','+84'),(191,'YE','Yemen','+967'),(192,'ZM','Zambia','+260'),(193,'ZW','Zimbabwe','+263');
/*!40000 ALTER TABLE `country_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_config`
--

DROP TABLE IF EXISTS `custom_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) DEFAULT NULL,
  `config_content_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `config_content_id` (`config_content_id`),
  CONSTRAINT `custom_config_ibfk_1` FOREIGN KEY (`config_content_id`) REFERENCES `config_for_all_services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_config`
--

LOCK TABLES `custom_config` WRITE;
/*!40000 ALTER TABLE `custom_config` DISABLE KEYS */;
INSERT INTO `custom_config` VALUES (1,'MAIL_USERNAME',1),(2,'MAIL_PASSWORD',2),(3,'MAIL_PORT',3),(4,'MAIL_HOST',4),(5,'TRANSPORT_PROTOCOL',5),(6,'SMTP_AUTH',6),(7,'SMTP_START_TLS_ENABLE',6),(8,'GITHUB_TOKEN',7),(9,'GITHUB_API_URL',8),(10,'STAGE_URL',9),(11,'LOCAL_URL',10);
/*!40000 ALTER TABLE `custom_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_master`
--

DROP TABLE IF EXISTS `district_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `district_code` varchar(255) DEFAULT NULL,
  `district_name` varchar(255) DEFAULT NULL,
  `state_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5j4lfqocro3n0xh0bhd2ouxc5` (`state_id`),
  CONSTRAINT `FK5j4lfqocro3n0xh0bhd2ouxc5` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`id`),
  CONSTRAINT `FK86vbghi4pps641wcg5o8fnct3` FOREIGN KEY (`state_id`) REFERENCES `country_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_master`
--

LOCK TABLES `district_master` WRITE;
/*!40000 ALTER TABLE `district_master` DISABLE KEYS */;
INSERT INTO `district_master` VALUES (1,'TN-ARI','Ariyalur',23),(2,'TN-CHN','Chennai',23),(3,'TN-CBE','Coimbatore',23),(4,'TN-CUD','Cuddalore',23),(5,'TN-DHA','Dharmapuri',23),(6,'TN-DIN','Dindigul',23),(7,'TN-ERD','Erode',23),(8,'TN-KAN','Kanchipuram',23),(9,'TN-KAR','Kanyakumari',23),(10,'TN-KARU','Karur',23),(11,'TN-KRI','Krishnagiri',23),(12,'TN-MAD','Madurai',23),(13,'TN-NAG','Nagapattinam',23),(14,'TN-NAM','Namakkal',23),(15,'TN-PER','Perambalur',23),(16,'TN-PUD','Pudukkottai',23),(17,'TN-RAM','Ramanathapuram',23),(18,'TN-SAL','Salem',23),(19,'TN-SIV','Sivaganga',23),(20,'TN-THA','Thanjavur',23),(21,'TN-THEN','Theni',23),(22,'TN-THO','Thoothukudi',23),(23,'TN-TRI','Tiruchirappalli',23),(24,'TN-TIRU','Tirunelveli',23),(25,'TN-TIRV','Tiruvallur',23),(26,'TN-TIRV1','Tiruvannamalai',23),(27,'TN-TIRU2','Tiruvarur',23),(28,'TN-VEL','Vellore',23),(29,'TN-VIL','Viluppuram',23),(30,'TN-VIR','Virudhunagar',23),(31,'TN-NIL','Nilgiris',23),(32,'TN-TNK','Tenkasi',23),(33,'TN-KAL','Kallakurichi',23),(34,'TN-CHE','Chengalpattu',23),(35,'TN-TIR','Tirupathur',23),(36,'TN-RAN','Ranipet',23),(37,'TN-MAY','Mayiladuthurai',23),(38,'TN-KAN1','Kanyakumari',23);
/*!40000 ALTER TABLE `district_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_master`
--

DROP TABLE IF EXISTS `email_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_master`
--

LOCK TABLES `email_master` WRITE;
/*!40000 ALTER TABLE `email_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_from_ip` varchar(20) DEFAULT NULL,
  `modified_from_ip` varchar(20) DEFAULT NULL,
  `version` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template`
--

LOCK TABLES `email_template` WRITE;
/*!40000 ALTER TABLE `email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `state_code` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `country_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbit3kv24ddslslqs9sy3evpjn` (`country_id`),
  CONSTRAINT `FKbit3kv24ddslslqs9sy3evpjn` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,'AP','Andhra Pradesh',76),(2,'AR','Arunachal Pradesh',76),(3,'AS','Assam',76),(4,'BR','Bihar',76),(5,'CT','Chhattisgarh',76),(6,'GA','Goa',76),(7,'GJ','Gujarat',76),(8,'HR','Haryana',76),(9,'HP','Himachal Pradesh',76),(10,'JH','Jharkhand',76),(11,'KA','Karnataka',76),(12,'KL','Kerala',76),(13,'MP','Madhya Pradesh',76),(14,'MH','Maharashtra',76),(15,'MN','Manipur',76),(16,'ML','Meghalaya',76),(17,'MZ','Mizoram',76),(18,'NL','Nagaland',76),(19,'OR','Odisha',76),(20,'PB','Punjab',76),(21,'RJ','Rajasthan',76),(22,'SK','Sikkim',76),(23,'TN','Tamil Nadu',76),(24,'TG','Telangana',76),(25,'TR','Tripura',76),(26,'UP','Uttar Pradesh',76),(27,'UT','Uttarakhand',76),(28,'WB','West Bengal',76),(29,'AN','Andaman and Nicobar Islands',76),(30,'CH','Chandigarh',76),(31,'DN','Dadra and Nagar Haveli and Daman and Diu',76),(32,'LD','Lakshadweep',76),(33,'DL','Delhi',76),(34,'PY','Puducherry',76);
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'mgr street','saran@gmail.com','saran');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taluk_master`
--

DROP TABLE IF EXISTS `taluk_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taluk_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `taluk_code` varchar(255) DEFAULT NULL,
  `talukt_name` varchar(255) DEFAULT NULL,
  `district_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7bgax9ntrt8lqbl2dkkbwt6ea` (`district_id`),
  CONSTRAINT `FK7bgax9ntrt8lqbl2dkkbwt6ea` FOREIGN KEY (`district_id`) REFERENCES `district_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taluk_master`
--

LOCK TABLES `taluk_master` WRITE;
/*!40000 ALTER TABLE `taluk_master` DISABLE KEYS */;
INSERT INTO `taluk_master` VALUES (1,'TN-ARI-TL1','Ariyalur',1),(2,'TN-ARI-TL2','Udayarpalayam',1),(3,'TN-ARI-TL3','Sendurai',1),(4,'TN-CHN-TL1','Fort-Tondiarpet',2),(5,'TN-CHN-TL2','Egmore-Nungambakkam',2),(6,'TN-CHN-TL3','Mylapore-Triplicane',2),(7,'TN-CHN-TL4','Perambur-Purasawalkam',2),(8,'TN-CHN-TL5','Mambalam-Guindy',2),(9,'TN-CBE-TL1','Coimbatore North',3),(10,'TN-CBE-TL2','Coimbatore South',3),(11,'TN-CBE-TL3','Pollachi',3),(12,'TN-CBE-TL4','Mettupalayam',3),(13,'TN-CBE-TL5','Sulur',3),(14,'TN-CBE-TL6','Valparai',3),(15,'TN-CUD-TL1','Cuddalore',4),(16,'TN-CUD-TL2','Chidambaram',4),(17,'TN-CUD-TL3','Panruti',4),(18,'TN-CUD-TL4','Kattumannarkoil',4),(19,'TN-CUD-TL5','Virudhachalam',4),(20,'TN-CUD-TL6','Tittakudi',4),(21,'TN-DHA-TL1','Dharmapuri',5),(22,'TN-DHA-TL2','Harur',5),(23,'TN-DHA-TL3','Palacode',5),(24,'TN-DHA-TL4','Pennagaram',5),(25,'TN-DHA-TL5','Pappireddipatti',5),(26,'TN-DIN-TL1','Dindigul',6),(27,'TN-DIN-TL2','Palani',6),(28,'TN-DIN-TL3','Oddanchatram',6),(29,'TN-DIN-TL4','Kodaikanal',6),(30,'TN-DIN-TL5','Natham',6),(31,'TN-DIN-TL6','Athoor',6),(32,'TN-DIN-TL7','Vedasandur',6),(33,'TN-ERD-TL1','Erode',7),(34,'TN-ERD-TL2','Gobichettipalayam',7),(35,'TN-ERD-TL3','Bhavani',7),(36,'TN-ERD-TL4','Sathyamangalam',7),(37,'TN-ERD-TL5','Perundurai',7),(38,'TN-ERD-TL6','Anthiyur',7),(39,'TN-ERD-TL7','Kodumudi',7),(40,'TN-KAN-TL1','Kanchipuram',8),(41,'TN-KAN-TL2','Sriperumbudur',8),(42,'TN-KAN-TL3','Chengalpattu',8),(43,'TN-KAN-TL4','Tiruporur',8),(44,'TN-KAN-TL5','Uthiramerur',8),(45,'TN-KAR-TL1','Agasteeswaram',9),(46,'TN-KAR-TL2','Kalkulam',9),(47,'TN-KAR-TL3','Vilavancode',9),(48,'TN-KAR-TL4','Thovalai',9),(49,'TN-KAR-TL5','Killiyoor',9),(50,'TN-KAR-TL6','Munchirai',9),(51,'TN-KARU-TL1','Karur',10),(52,'TN-KARU-TL2','Kulithalai',10),(53,'TN-KARU-TL3','Krishnarayapuram',10),(54,'TN-KARU-TL4','Aravakurichi',10),(55,'TN-KARU-TL5','Kadavur',10),(56,'TN-KRI-TL1','Krishnagiri',11),(57,'TN-KRI-TL2','Hosur',11),(58,'TN-KRI-TL3','Pochampalli',11),(59,'TN-KRI-TL4','Uthangarai',11),(60,'TN-KRI-TL5','Denkanikottai',11),(61,'TN-MAD-TL1','Madurai North',12),(62,'TN-MAD-TL2','Madurai South',12),(63,'TN-MAD-TL3','Melur',12),(64,'TN-MAD-TL4','Vadipatti',12),(65,'TN-MAD-TL5','Peraiyur',12),(66,'TN-MAD-TL6','Thirumangalam',12),(67,'TN-MAD-TL7','Usilampatti',12),(68,'TN-MAD-TL8','Kallikudi',12),(69,'TN-NAG-TL1','Nagapattinam',13),(70,'TN-NAG-TL2','Mayiladuthurai',13),(71,'TN-NAG-TL3','Sirkazhi',13),(72,'TN-NAG-TL4','Tharangambadi',13),(73,'TN-NAG-TL5','Kilvelur',13),(74,'TN-NAG-TL6','Vedaranyam',13),(75,'TN-NAG-TL7','Kuthalam',13),(76,'TN-NAM-TL1','Namakkal',14),(77,'TN-NAM-TL2','Rasipuram',14),(78,'TN-NAM-TL3','Tiruchengode',14),(79,'TN-NAM-TL4','Paramathi Velur',14),(80,'TN-NAM-TL5','Kolli Hills',14),(81,'TN-PER-TL1','Perambalur',15),(82,'TN-PER-TL2','Kunnam',15),(83,'TN-PUD-TL1','Pudukkottai',16),(84,'TN-PUD-TL2','Aranthangi',16),(85,'TN-PUD-TL3','Alangudi',16),(86,'TN-PUD-TL4','Avadaiyarkoil',16),(87,'TN-PUD-TL5','Gandarvakottai',16),(88,'TN-PUD-TL6','Karambakudi',16),(89,'TN-PUD-TL7','Kulathur',16),(90,'TN-RAM-TL1','Ramanathapuram',17),(91,'TN-RAM-TL2','Paramakudi',17),(92,'TN-RAM-TL3','Rameswaram',17),(93,'TN-RAM-TL4','Thiruvadanai',17),(94,'TN-RAM-TL5','Kamuthi',17),(95,'TN-RAM-TL6','Kadaladi',17),(96,'TN-RAM-TL7','Mudukulathur',17),(97,'TN-SAL-TL1','Salem',18),(98,'TN-SAL-TL2','Attur',18),(99,'TN-SAL-TL3','Mettur',18),(100,'TN-SAL-TL4','Sankagiri',18),(101,'TN-SAL-TL5','Omalur',18),(102,'TN-SAL-TL6','Edappadi',18),(103,'TN-SAL-TL7','Yercaud',18),(104,'TN-SAL-TL8','Gangavalli',18),(105,'TN-SAL-TL9','Vazhapadi',18),(106,'TN-SAL-TL10','Pethanaickenpalayam',18),(107,'TN-SIV-TL1','Sivaganga',19),(108,'TN-SIV-TL2','Karaikudi',19),(109,'TN-SIV-TL3','Manamadurai',19),(110,'TN-SIV-TL4','Devakottai',19),(111,'TN-SIV-TL5','Thiruppuvanam',19),(112,'TN-SIV-TL6','Ilayangudi',19),(113,'TN-SIV-TL7','Tirupathur',19),(114,'TN-THA-TL1','Thanjavur',20),(115,'TN-THA-TL2','Kumbakonam',20),(116,'TN-THA-TL3','Papanasam',20),(117,'TN-THA-TL4','Pattukkottai',20),(118,'TN-THA-TL5','Peravurani',20),(119,'TN-THA-TL6','Thiruvidaimarudur',20),(120,'TN-THA-TL7','Orathanadu',20),(121,'TN-THA-TL8','Thiruvonam',20),(122,'TN-THE-TL1','Theni',21),(123,'TN-THE-TL2','Periyakulam',21),(124,'TN-THE-TL3','Andipatti',21),(125,'TN-THE-TL4','Bodinayakanur',21),(126,'TN-THE-TL5','Uthamapalayam',21),(127,'TN-THT-TL1','Thoothukudi',22),(128,'TN-THT-TL2','Tiruchendur',22),(129,'TN-THT-TL3','Kovilpatti',22),(130,'TN-THT-TL4','Sathankulam',22),(131,'TN-THT-TL5','Vilathikulam',22),(132,'TN-THT-TL6','Srivaikuntam',22),(133,'TN-THT-TL7','Ettayapuram',22),(134,'TN-THT-TL8','Ottapidaram',22),(135,'TN-TIR-TL1','Tiruchirappalli',23),(136,'TN-TIR-TL2','Srirangam',23),(137,'TN-TIR-TL3','Manapparai',23),(138,'TN-TIR-TL4','Thuraiyur',23),(139,'TN-TIR-TL5','Thottiyam',23),(140,'TN-TIR-TL6','Musiri',23),(141,'TN-TIR-TL7','Lalgudi',23),(142,'TN-TIR-TL8','Manachanallur',23),(143,'TN-TIR-TL9','Tiruverumbur',23),(144,'TN-TIR-TL10','Marungapuri',23),(145,'TN-TIR-TL11','Pullambadi',23),(146,'TN-TNV-TL1','Tirunelveli',24),(147,'TN-TNV-TL2','Palayamkottai',24),(148,'TN-TNV-TL3','Sankarankovil',24),(149,'TN-TNV-TL4','Tenkasi',24),(150,'TN-TNV-TL5','Ambasamudram',24),(151,'TN-TNV-TL6','Nanguneri',24),(152,'TN-TNV-TL7','Radhapuram',24),(153,'TN-TNV-TL8','Valliyoor',24),(154,'TN-TNV-TL9','Veerakeralampudur',24),(155,'TN-TNV-TL10','Alangulam',24),(156,'TN-TNV-TL11','Cheranmahadevi',24),(157,'TN-TRL-TL1','Tiruvallur',25),(158,'TN-TRL-TL2','Ponneri',25),(159,'TN-TRL-TL3','Gummidipoondi',25),(160,'TN-TRL-TL4','Poonamallee',25),(161,'TN-TRL-TL5','Avadi',25),(162,'TN-TRL-TL6','Tiruttani',25),(163,'TN-TRL-TL7','Uthukkottai',25),(164,'TN-TRL-TL8','Pallipattu',25),(165,'TN-TVN-TL1','Tiruvannamalai',26),(166,'TN-TVN-TL2','Arani',26),(167,'TN-TVN-TL3','Cheyyar',26),(168,'TN-TVN-TL4','Vandavasi',26),(169,'TN-TVN-TL5','Polur',26),(170,'TN-TVN-TL6','Chengam',26),(171,'TN-TVN-TL7','Thandarampattu',26),(172,'TN-TVN-TL8','Kalasapakkam',26),(173,'TN-TVN-TL9','Chetpet',26),(174,'TN-TVR-TL1','Tiruvarur',27),(175,'TN-TVR-TL2','Mannargudi',27),(176,'TN-TVR-TL3','Thiruthuraipoondi',27),(177,'TN-TVR-TL4','Nannilam',27),(178,'TN-TVR-TL5','Kodavasal',27),(179,'TN-TVR-TL6','Valangaiman',27),(180,'TN-TVR-TL7','Needamangalam',27),(181,'TN-VEL-TL1','Vellore',28),(182,'TN-VEL-TL2','Ambur',28),(183,'TN-VEL-TL3','Gudiyatham',28),(184,'TN-VEL-TL4','Katpadi',28),(185,'TN-VEL-TL5','Vaniyambadi',28),(186,'TN-VEL-TL6','Tirupattur',28),(187,'TN-VEL-TL7','Pernambut',28),(188,'TN-VEL-TL8','Arakkonam',28),(189,'TN-VEL-TL9','Walajah',28),(190,'TN-VIL-TL1','Viluppuram',29),(191,'TN-VIL-TL2','Tindivanam',29),(192,'TN-VIL-TL3','Gingee',29),(193,'TN-VIL-TL4','Vanur',29),(194,'TN-VIL-TL5','Kallakurichi',29),(195,'TN-VIL-TL6','Sankarapuram',29),(196,'TN-VIL-TL7','Ulundurpettai',29),(197,'TN-VIL-TL8','Chinnasalem',29),(198,'TN-VIR-TL1','Virudhunagar',30),(199,'TN-VIR-TL2','Sivakasi',30),(200,'TN-VIR-TL3','Aruppukottai',30),(201,'TN-VIR-TL4','Sattur',30),(202,'TN-VIR-TL5','Rajapalayam',30),(203,'TN-VIR-TL6','Srivilliputhur',30),(204,'TN-VIR-TL7','Watrap',30),(205,'TN-VIR-TL8','Kariapatti',30),(206,'TN-VIR-TL9','Tiruchuli',30),(207,'TN-VIR-TL10','Vembakottai',30),(208,'TN-NIL-TL1','Udhagamandalam',31),(209,'TN-NIL-TL2','Coonoor',31),(210,'TN-NIL-TL3','Kotagiri',31),(211,'TN-NIL-TL4','Gudalur',31),(212,'TN-TEN-TL1','Tenkasi',32),(213,'TN-TEN-TL2','Alangulam',32),(214,'TN-TEN-TL3','Sengottai',32),(215,'TN-TEN-TL4','Veerakeralampudur',32),(216,'TN-TEN-TL5','Kadayanallur',32),(217,'TN-TEN-TL6','Courtallam',32),(218,'TN-TEN-TL7','Melagaram',32),(219,'TN-TEN-TL8','Elathur',32),(220,'TN-KAL-TL1','Kallakurichi',33),(221,'TN-KAL-TL2','Sankarapuram',33),(222,'TN-KAL-TL3','Chinnasalem',33),(223,'TN-KAL-TL4','Thirukkoilur',33),(224,'TN-KAL-TL5','Ulundurpettai',33),(225,'TN-CPT-TL1','Chengalpattu',34),(226,'TN-CPT-TL2','Tambaram',34),(227,'TN-CPT-TL3','Madhuranthakam',34),(228,'TN-CPT-TL4','Tirukalukundram',34),(229,'TN-CPT-TL5','Vandalur',34),(230,'TN-TPA-TL1','Tirupathur',35),(231,'TN-TPA-TL2','Vaniyambadi',35),(232,'TN-TPA-TL3','Natrampalli',35),(233,'TN-TPA-TL4','Ambur',35),(234,'TN-RNP-TL1','Arakkonam',36),(235,'TN-RNP-TL2','Arcot',36),(236,'TN-RNP-TL3','Walajah',36),(237,'TN-RNP-TL4','Sholinghur',36),(238,'TN-RNP-TL5','Nemili',36),(239,'TN-MYL-TL1','Mayiladuthurai',37),(240,'TN-MYL-TL2','Kuthalam',37),(241,'TN-MYL-TL3','Sirkazhi',37),(242,'TN-MYL-TL4','Tharangambadi',37),(243,'TN-KAN-TL1','Nagercoil',38),(244,'TN-KAN-TL2','Kalkulam',38),(245,'TN-KAN-TL3','Thovalai',38),(246,'TN-KAN-TL4','Padmanabhapuram',38),(247,'TN-KAN-TL5','Vilavancode',38);
/*!40000 ALTER TABLE `taluk_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKgnu0k8vv6ptioedbxbfsnan9g` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'prathapshanmugam5@gmail.com','$2a$10$0CYqZWX5z8z0RggBuszPI.cCvdCl1gIk3.n/cQFexeFvf9a0AGz9G','prathap',0),(3,'nsangeeth222@gmail.com','$2a$10$I0qRw9XICr12Y1mjD45ww.Ve/mphG0lhd2rx9mJhQp19n0IxvKZzS','sangeeth',0),(4,'rolex@gmail.com','$2a$10$EnON1iz4mdqtgEzO1egT.O3jD2/wKHuhzQuw8fL/CvjBBDAd4zEO6','hosuper',0),(9,'mohasubash07@gmail.com','$2a$10$bIsqVAbmJfhTN4Ng5k3aXuGJiRQsqneBKxrbVjDsgeXxVgANg0xB.','mohasubash07@gmail.com',0),(10,'saran13092@gmail.com','$2a$10$1jW/CVoWY87/kSJSsfFB.OWsA28MBxmTNCCoBvtFEU8SqHsnDvtIi','saran',0),(11,'prathap123@gmail.com','$2a$10$eyy2lME8SJdb7WcABinNlOEIcxZ5fQFjitazWisVfqmwWQ7hAWZHK','prathap123',0),(12,'prathapsaran@gmail.com','$2a$10$Sip.wrsvWWrx.9EBuuJp8uT/iOchnDD1Rm7uvgYKLQnsFf0Bvlz6e','prathapsaran',0),(13,'prathapshanmugam3@gmail.com','$2a$10$KSiV66ePbmfEy6/rW0v6r.K0LFY3krt2QlbgfkMkqoDf.AmB.UPXu','prathapprathap',1),(14,'sri@gmail.com','$2a$10$HubncnuyzMNipo7keTarJeY5euyfpfnHKvRN0gBzUUHg5w06BiKim','sri',0),(15,'rajan123@gmail.com','$2a$10$maM7pfvWVqhAkNr1NRKf2ezHYM8SOy.dKHD8f7yagpTP00R2m4Hj.','Rajan',0),(16,'sangeeth123@gmail.com','$2a$10$12hjshwD8L.IH02TwAzWw.duMlED3Dn0arPR5YiwY2A7bb4e6S6HO','sangeeth123',0);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 10:05:03
