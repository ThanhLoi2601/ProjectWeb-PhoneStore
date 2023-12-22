-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: mydatabase.ceorv57yblio.us-east-1.rds.amazonaws.com    Database: PhoneStore
-- ------------------------------------------------------
-- Server version	8.0.33

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Account` (
  `id` bigint NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK99h6pyuph3vnnej6xtffnhdbt` (`user_id`),
  CONSTRAINT `FK99h6pyuph3vnnej6xtffnhdbt` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (11,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Peter',14),(12,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','alenk',11),(14,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','maser5342',13),(15,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Rock',18),(16,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Hang',20),(17,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Alenk',38),(18,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Trung',39),(19,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Neko',17),(38,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','Van A',37),(40,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','Tri',39),(50,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','Alice',31),(72,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','join',71),(91,'15e2b0d3c33891ebb0f1ef609ec41942c20e320ce94c65fbc8c3312448eb225','trungpham1605',90),(161,'4760283fb359d1b37c7f5154d665b477c44219e0206be9dd1cc5c3f06fda2f27','luckyhihi',160),(238,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','trung123',237),(252,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','cong0911',251);
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cart` (
  `cartID` bigint NOT NULL,
  `totalPrice` float DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cartID`),
  KEY `FKqm79nc1396fyuhfbtx5jkl7x9` (`customer_id`),
  CONSTRAINT `FKqm79nc1396fyuhfbtx5jkl7x9` FOREIGN KEY (`customer_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
INSERT INTO `Cart` VALUES (22,1558,11),(23,907,11),(44,800,11),(49,32274,11),(64,472,31),(68,0,31),(73,32298,71),(78,108,71),(83,722,71),(92,348,90),(100,600,90),(104,1900,39),(108,58,90),(112,1783,71),(127,15000,90),(130,1216,90),(140,2370,71),(151,900,11),(154,0,11),(158,0,11),(162,1374,160),(178,1108,160),(186,300,39),(201,1450,71),(207,1400,90),(212,1800,71),(217,1500,71),(224,940,160),(231,1300,71),(239,0,237),(248,2100,160),(254,0,251),(257,1200,160),(262,1400,160),(265,160,160),(268,1400,160),(272,700,160),(275,1200,160),(279,0,160),(283,0,71);
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cart_LineItem`
--

DROP TABLE IF EXISTS `Cart_LineItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cart_LineItem` (
  `Cart_cartID` bigint NOT NULL,
  `lslineItems_id` bigint NOT NULL,
  UNIQUE KEY `UK_9vecy0by3cmkfnwnntopsml7t` (`lslineItems_id`),
  KEY `FKcj7bm14uwj080aaialr0agw71` (`Cart_cartID`),
  CONSTRAINT `FKa9g9qcn4t3w9l9ed76uig20kc` FOREIGN KEY (`lslineItems_id`) REFERENCES `LineItem` (`id`),
  CONSTRAINT `FKcj7bm14uwj080aaialr0agw71` FOREIGN KEY (`Cart_cartID`) REFERENCES `Cart` (`cartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart_LineItem`
--

LOCK TABLES `Cart_LineItem` WRITE;
/*!40000 ALTER TABLE `Cart_LineItem` DISABLE KEYS */;
INSERT INTO `Cart_LineItem` VALUES (22,26),(22,27),(22,32),(23,46),(23,47),(44,84),(49,102),(49,132),(49,148),(64,65),(64,66),(73,74),(73,75),(73,76),(78,81),(83,109),(83,110),(92,93),(100,106),(104,105),(104,183),(108,125),(112,114),(112,117),(112,137),(127,128),(130,182),(130,187),(130,188),(130,193),(140,179),(140,180),(140,190),(151,155),(151,156),(162,174),(162,175),(178,219),(178,222),(186,195),(201,208),(201,209),(201,210),(207,233),(207,236),(212,214),(212,215),(217,227),(217,229),(224,244),(224,246),(231,280),(231,281),(248,253),(248,255),(257,260),(262,263),(265,266),(268,270),(272,273),(275,276),(275,277);
/*!40000 ALTER TABLE `Cart_LineItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comment` (
  `commentID` bigint NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `star` float DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `product_productID` bigint DEFAULT NULL,
  PRIMARY KEY (`commentID`),
  KEY `FK4empc52yyy0j1lynl7f7296n8` (`customer_id`),
  KEY `FKmsq0oa22a0relcn5phbrswvld` (`product_productID`),
  CONSTRAINT `FK4empc52yyy0j1lynl7f7296n8` FOREIGN KEY (`customer_id`) REFERENCES `User` (`id`),
  CONSTRAINT `FKmsq0oa22a0relcn5phbrswvld` FOREIGN KEY (`product_productID`) REFERENCES `Product` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
INSERT INTO `Comment` VALUES (24,'good',5,11,11),(25,'good experience',5,11,12),(45,'good',4,11,6),(50,'very good',5,11,9),(69,'The phone is slow',3,31,5),(79,'modern',5,71,1),(101,'so good',5,90,11),(113,'good',4,71,4),(141,'okie',3,71,11),(142,'đẹp',4,71,9),(159,'xuất sắc',5,11,6),(194,'hiện đại, cá tính',4,71,170),(213,'very good',5,71,2),(218,'very good',5,71,4),(225,'đẹp, hiện đại',5,160,8),(226,'tạm được',3,160,171),(232,'quá đẹp',5,71,165),(249,'đẹp',5,160,2),(258,'tuyệt',4,160,165),(259,'xuất sắc',5,160,171),(269,'đẹp',4,160,164),(284,'okie nha',5,71,4);
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Discount`
--

DROP TABLE IF EXISTS `Discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Discount` (
  `discountID` bigint NOT NULL,
  `dateEnd` date DEFAULT NULL,
  `dateStart` date DEFAULT NULL,
  `discount` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`discountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Discount`
--

LOCK TABLES `Discount` WRITE;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` VALUES (13,'2023-12-12','2023-12-10',10,'12/12'),(14,'2023-12-29','2023-12-02',30,'Promotion'),(15,'2023-12-01','2023-11-15',40,'19/11'),(16,'2023-12-24','2023-12-09',30,'Noel'),(17,'2024-02-23','2023-12-02',50,'New Year');
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoryProduct`
--

DROP TABLE IF EXISTS `HistoryProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistoryProduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `product_productID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlokulkq7oltm55nx9l12k3njw` (`customer_id`),
  KEY `FKfhrveluq7c448qdpw9pmvdrax` (`product_productID`),
  CONSTRAINT `FKfhrveluq7c448qdpw9pmvdrax` FOREIGN KEY (`product_productID`) REFERENCES `Product` (`productID`),
  CONSTRAINT `FKlokulkq7oltm55nx9l12k3njw` FOREIGN KEY (`customer_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoryProduct`
--

LOCK TABLES `HistoryProduct` WRITE;
/*!40000 ALTER TABLE `HistoryProduct` DISABLE KEYS */;
INSERT INTO `HistoryProduct` VALUES (1,160,4),(4,160,166),(5,160,3),(6,71,170);
/*!40000 ALTER TABLE `HistoryProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoice` (
  `invoiceID` bigint NOT NULL,
  `dateCreate` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `totalInvoice` float DEFAULT NULL,
  `cart_cartID` bigint DEFAULT NULL,
  `discount_discountID` bigint DEFAULT NULL,
  `payMethod_methodID` bigint DEFAULT NULL,
  PRIMARY KEY (`invoiceID`),
  KEY `FKj601d622gigea5ap426ldesiq` (`cart_cartID`),
  KEY `FKe1soq1rgjlbw7pi2l6eo67s79` (`discount_discountID`),
  KEY `FK3w7gm5op8p3ro4qha88htjo5p` (`payMethod_methodID`),
  CONSTRAINT `FK3w7gm5op8p3ro4qha88htjo5p` FOREIGN KEY (`payMethod_methodID`) REFERENCES `PaymentMethod` (`methodID`),
  CONSTRAINT `FKe1soq1rgjlbw7pi2l6eo67s79` FOREIGN KEY (`discount_discountID`) REFERENCES `Discount` (`discountID`),
  CONSTRAINT `FKj601d622gigea5ap426ldesiq` FOREIGN KEY (`cart_cartID`) REFERENCES `Cart` (`cartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
INSERT INTO `Invoice` VALUES (43,'2023-12-02',_binary '',1558,22,NULL,1),(48,'2023-12-03',_binary '',634.9,23,14,1),(67,'2023-12-03',_binary '\0',330.4,64,14,1),(77,'2023-12-03',_binary '\0',22608.6,73,14,2),(82,'2023-12-03',_binary '\0',75.6,78,14,1),(85,'2023-12-03',_binary '',800,44,NULL,2),(99,'2023-12-03',_binary '',243.6,92,14,1),(107,'2023-12-03',_binary '\0',600,100,NULL,2),(111,'2023-12-03',_binary '',505.4,83,14,1),(126,'2023-12-03',_binary '\0',58,108,NULL,1),(129,'2023-12-03',_binary '',15000,127,NULL,1),(139,'2023-12-04',_binary '\0',886,112,17,1),(150,'2023-12-04',_binary '',1079,49,17,2),(157,'2023-12-04',_binary '',630,151,14,2),(177,'2023-12-04',_binary '\0',961.8,162,14,1),(185,'2023-12-04',_binary '\0',1900,104,NULL,2),(191,'2023-12-04',_binary '\0',1659,140,14,2),(206,'2023-12-04',_binary '\0',1216,130,NULL,1),(211,'2023-12-05',_binary '\0',1015,201,14,1),(216,'2023-12-04',_binary '\0',900,212,17,1),(223,'2023-12-05',_binary '\0',1108,178,NULL,1),(230,'2023-12-05',_binary '\0',1050,217,14,1),(247,'2023-12-05',_binary '\0',658,224,14,2),(256,'2023-12-09',_binary '\0',1470,248,16,1),(261,'2023-12-20',_binary '\0',1200,257,NULL,1),(264,'2023-12-21',_binary '\0',1400,262,NULL,1),(267,'2023-12-21',_binary '\0',160,265,NULL,1),(271,'2023-12-21',_binary '\0',1400,268,NULL,1),(274,'2023-12-21',_binary '\0',700,272,NULL,1),(278,'2023-12-21',_binary '\0',600,275,17,1),(282,'2023-12-21',_binary '\0',650,231,17,1);
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LineItem`
--

DROP TABLE IF EXISTS `LineItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LineItem` (
  `id` bigint NOT NULL,
  `quanlity` int NOT NULL,
  `item_productID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfpnn4no1qt41a9cvpoa3d5lo8` (`item_productID`),
  CONSTRAINT `FKfpnn4no1qt41a9cvpoa3d5lo8` FOREIGN KEY (`item_productID`) REFERENCES `Product` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LineItem`
--

LOCK TABLES `LineItem` WRITE;
/*!40000 ALTER TABLE `LineItem` DISABLE KEYS */;
INSERT INTO `LineItem` VALUES (26,1,11),(27,2,2),(32,2,6),(46,1,9),(47,2,8),(65,1,2),(66,2,5),(74,1,4),(75,2,9),(76,2,1),(81,2,8),(84,2,3),(93,6,11),(102,3,4),(105,1,12),(106,2,6),(109,1,4),(110,2,5),(114,3,11),(117,2,9),(125,1,11),(128,1,1),(132,3,11),(137,1,5),(148,2,1),(155,1,6),(156,1,7),(174,2,170),(175,3,11),(179,1,7),(180,2,170),(182,1,165),(183,2,7),(187,1,12),(188,2,11),(190,1,163),(193,1,6),(195,1,6),(208,1,2),(209,3,165),(210,1,4),(214,1,3),(215,2,4),(219,2,8),(222,1,171),(227,1,165),(229,2,4),(233,1,12),(236,1,4),(244,2,2),(246,1,164),(253,1,165),(255,2,171),(260,3,3),(263,2,4),(266,4,164),(270,2,4),(273,1,4),(276,1,166),(277,2,3),(280,1,170),(281,1,4);
/*!40000 ALTER TABLE `LineItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentMethod`
--

DROP TABLE IF EXISTS `PaymentMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaymentMethod` (
  `methodID` bigint NOT NULL,
  `information` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`methodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentMethod`
--

LOCK TABLES `PaymentMethod` WRITE;
/*!40000 ALTER TABLE `PaymentMethod` DISABLE KEYS */;
INSERT INTO `PaymentMethod` VALUES (1,'Online payment','online'),(2,'Payment on delivery','offline');
/*!40000 ALTER TABLE `PaymentMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `productID` bigint NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sale` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `stock` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'img/samsung/samsunggalaxya26.png','HOT','Galaxy A26',15000,10,_binary '',20,'Samsung'),(2,'img/samsung/samsunggalaxyzflip5.png','256GB','Samsung Galaxy ZFlip 5',450,5,_binary '',10,'Samsung'),(3,'img/samsung/samsunggalaxys22ultra.png','HOT','Samsung Galaxy S22 Ultra',400,4,_binary '',6,'Samsung'),(4,'img/samsung/samsunggalaxyzfold5.png','Samsung','Samsung Galaxy ZFold 5',700,4,_binary '',4,'Samsung'),(5,'img/samsung/samsunggalaxya26.png','Samsung','Samsung Galaxy A26',11,0,_binary '',10,'Samsung'),(6,'img/iphone/iphone14promax.png','HOT','Iphone 11',300,4,_binary '',5,'Iphone'),(7,'img/iphone/iphone14promax.png','HOT','Iphone 14 Promax',600,2,_binary '',4,'Iphone'),(8,'img/samsung/samsunggalaxys23.png','HOT','Samsung Galaxy S23',54,3,_binary '',5,'Samsung'),(9,'img/iphone/iphone15promax.png','HOT','Iphone 15 Promax',799,5,_binary '',9,'Iphone'),(10,'img/samsung/samsunggalaxya28.png','52GB','Samsung Galaxy A28',54,4,_binary '\0',5,'Samsung'),(11,'img/redmi/redminote11.png','HOT','Redmi note 11',58,5,_binary '',5,'Xiaomi'),(12,'img/realme/realme11.png','HOT','Realme note 11',700,5,_binary '',1,'Realme'),(163,'img/redmi/redminote10.png','new','Redmi note 10',570,3,_binary '',10,'Xiaomi'),(164,'img/iphone/iphone8plus.png','ROM 16GB','Iphone 8 Plus',40,2,_binary '',2,'Iphone'),(165,'img/realme/realmegtneo5.png','Donate headphones','Realme GT Neo 5',100,6,_binary '',4,'Realme'),(166,'img/realme/realmec30s.png','screen 6.5 inch','Realme C30s ',400,3,_binary '',5,'Realme'),(167,'img/realme/realmec51.png','Full HD','Realme C51',350,5,_binary '',4,'Realme'),(168,'img/iphone/iphonex.png','Luxurious','Iphone 10 XS',1000,1,_binary '',4,'Iphone'),(169,'img/iphone/iphone12.png','ROM 64GB','Iphone 12',1100,5,_binary '',5,'Iphone'),(170,'img/redmi/xiaomi14pro.png','Luxurious','Xiaomi 14 Pro',600,3,_binary '',1,'Xiaomi'),(171,'img/redmi/redminote13pro.png','5G','Redmi note 13 Pro+',1000,4,_binary '',4,'Xiaomi'),(172,'img/redmi/xiaomi12.png','','Xiaomi 12',500,4,_binary '',3,'Xiaomi'),(173,'img/realme/realme10s.png','','Realme 10s 5G',302,8,_binary '',2,'Realme');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isManager` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (11,'TPHCM','Loi.ngthanh@outlook.com',_binary '\0','Alenk','08548716662'),(13,'TPHCM','nguyenthanhloi260303@gmail.com',_binary '','Master','085827377774'),(14,'HN','peter01@gmail.com',_binary '\0','Peter','0923476810'),(16,'canTho','anhtri2003@gmail.com',_binary '\0','TrisAnh','0706407225'),(17,'DaNang','neko2001@gmail.com',_binary '\0','NeKo','0987521819'),(18,'VungTau','rock@gmail.com',_binary '\0','Rock','0982456781'),(20,'ThaiBinh','hang01@gmail.com',_binary '\0','Hang','0982451876'),(30,'123','huynhnguyenanhtri2003@gmail.com',_binary '\0','Anh Tri','123'),(31,'TPHCM','21110234@student.hcmute.edu.vn',_binary '\0','Alice','09266388716'),(37,'21313','huynhnguyenanhtri@gmail.com',_binary '\0','Anh Tri','123'),(38,'TPHCM','thanhloi@gmail.com',_binary '\0','Alenk','09873682991'),(39,'TPHCM','trungpham1605@gmail.com',_binary '\0','Trung','0869876430'),(41,'123','123@gmail.com',_binary '\0','Tri123','123'),(71,'USA','join@gmail.com',_binary '\0','Join','0928391828'),(90,'Thủ Đức','trungpham160503@gmail.com',_binary '\0','Trung Phạm','0869876430'),(160,'Canada','lucky@gmail.com',_binary '\0','Lucky Merrya','085482766'),(204,'USA','boby@gmail.com',_binary '\0','Boby','0927737828'),(237,'binh long','t@gmail.com',_binary '\0','trung','0869876430'),(251,'cong','congnguyenhuu2703@gmail.com',_binary '\0','cong','09080');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (285),(285),(285),(285),(285),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'PhoneStore'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 19:44:04
