-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ovrs
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `bankaccount`
--

DROP TABLE IF EXISTS `bankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankaccount` (
  `accountNo` int NOT NULL,
  `vendorID` int NOT NULL,
  `bankName` varchar(45) NOT NULL,
  `brachName` varchar(45) NOT NULL,
  PRIMARY KEY (`accountNo`),
  UNIQUE KEY `accountNo_UNIQUE` (`accountNo`),
  KEY `vendorID_idx` (`vendorID`),
  CONSTRAINT `vendorIDBank` FOREIGN KEY (`vendorID`) REFERENCES `vendor` (`vendorID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankaccount`
--

LOCK TABLES `bankaccount` WRITE;
/*!40000 ALTER TABLE `bankaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cusID` int NOT NULL,
  PRIMARY KEY (`cusID`),
  UNIQUE KEY `cusID_UNIQUE` (`cusID`),
  CONSTRAINT `cusID` FOREIGN KEY (`cusID`) REFERENCES `externaluser` (`exuserID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (12),(13),(15),(16),(17);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driverID` int NOT NULL,
  `carexpertLevel` char(15) DEFAULT NULL,
  `bikeexpertLevel` char(15) DEFAULT NULL,
  `vanexpertLevel` char(15) DEFAULT NULL,
  `driverlicense` varchar(45) NOT NULL,
  `jeepexpertLevel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`driverID`),
  UNIQUE KEY `driverID_UNIQUE` (`driverID`),
  UNIQUE KEY `driverlicense_UNIQUE` (`driverlicense`),
  CONSTRAINT `driverID` FOREIGN KEY (`driverID`) REFERENCES `vendor` (`vendorID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (18,'expert','newbie','expert','23wer','medium'),(19,'medium','expert','newbie','23wersdf','medium'),(20,'medium','expert','newbie','23wersfdf','expert'),(21,'expert','newbie','expert','23wer324234','newbie'),(22,'medium','newbie','expert','6756ghg','expert');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverpayment`
--

DROP TABLE IF EXISTS `driverpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverpayment` (
  `paymentID` int NOT NULL,
  `managerID` int NOT NULL,
  `driverID` int NOT NULL,
  `payPaccNo` int NOT NULL,
  PRIMARY KEY (`paymentID`,`managerID`,`driverID`),
  KEY `managerID_idx` (`managerID`),
  KEY `driverID_idx` (`driverID`),
  CONSTRAINT `driverIDpay` FOREIGN KEY (`driverID`) REFERENCES `driver` (`driverID`) ON DELETE CASCADE,
  CONSTRAINT `managerIDpay` FOREIGN KEY (`managerID`) REFERENCES `emp_manager` (`empID`) ON DELETE CASCADE,
  CONSTRAINT `paymentIDpay` FOREIGN KEY (`paymentID`) REFERENCES `payment` (`paymentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverpayment`
--

LOCK TABLES `driverpayment` WRITE;
/*!40000 ALTER TABLE `driverpayment` DISABLE KEYS */;
INSERT INTO `driverpayment` VALUES (2,11,18,123456),(3,14,18,123456),(5,14,18,123456),(6,14,18,123456);
/*!40000 ALTER TABLE `driverpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_manager`
--

DROP TABLE IF EXISTS `emp_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_manager` (
  `empID` int NOT NULL,
  PRIMARY KEY (`empID`),
  UNIQUE KEY `empID_UNIQUE` (`empID`),
  CONSTRAINT `empID` FOREIGN KEY (`empID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_manager`
--

LOCK TABLES `emp_manager` WRITE;
/*!40000 ALTER TABLE `emp_manager` DISABLE KEYS */;
INSERT INTO `emp_manager` VALUES (11),(14),(23),(25),(26);
/*!40000 ALTER TABLE `emp_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externaluser`
--

DROP TABLE IF EXISTS `externaluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `externaluser` (
  `exuserID` int NOT NULL,
  `NIC` char(10) NOT NULL,
  `phoneNo` int NOT NULL,
  `homeNo` char(10) NOT NULL,
  `streetName` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`exuserID`),
  UNIQUE KEY `exuserID_UNIQUE` (`exuserID`),
  CONSTRAINT `exuserID` FOREIGN KEY (`exuserID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externaluser`
--

LOCK TABLES `externaluser` WRITE;
/*!40000 ALTER TABLE `externaluser` DISABLE KEYS */;
INSERT INTO `externaluser` VALUES (12,'992962062V',710957213,'177/9','Gonahean Road','Kadawatha'),(13,'992962062V',770957213,'178/9','Mahakade Road','Kadawatha'),(15,'952962062V',760957213,'179/9','kribathgoda Road','Kadawatha'),(16,'962962062V',740957213,'170/9','panasala Road','Kadawatha'),(17,'972962062V',720957213,'171/9','road Road','Kadawatha'),(18,'976862062V',770954213,'178/9','Mahakade Road','Colombo'),(19,'992962768V',723457213,'145/9','Mahakade Road','Kandy'),(20,'992976832V',776857213,'234/9','Mahakade Road','Galle'),(21,'762962062V',709857213,'876/9','Mahakade Road','Kurununagla'),(22,'976962062V',712357213,'178/9C','Mahakade Road','Kaduwela'),(24,'992907462V',745757213,'156/9','Mahakade Road','Katunayake'),(27,'992965722V',798757213,'456/9','Mahakade Road','Moratuwa'),(28,'992962007V',712557213,'9776/9','Mahakade Road','Badulla'),(29,'992962168V',716857213,'345/9','Mahakade Road','Peradeniya'),(30,'990702062V',705657213,'234/9','Mahakade Road','Kegalla');
/*!40000 ALTER TABLE `externaluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_back`
--

DROP TABLE IF EXISTS `feed_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_back` (
  `feedback` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`feedback`),
  UNIQUE KEY `feedback_UNIQUE` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_back`
--

LOCK TABLES `feed_back` WRITE;
/*!40000 ALTER TABLE `feed_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `paymentType` char(15) NOT NULL,
  `paydateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymethod` varchar(45) NOT NULL,
  PRIMARY KEY (`paymentID`),
  UNIQUE KEY `paymentID_UNIQUE` (`paymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (2,400,'debited','2021-10-18 18:30:00','receipt'),(3,560,'debited','2021-03-11 18:30:00','card'),(4,600,'creadited','2021-03-13 18:30:00','visa'),(5,560,'debited','2021-03-11 18:30:00','card'),(6,3455,'debited','2021-10-18 18:30:00','receipt'),(7,876,'debited','2021-03-11 18:30:00','card'),(8,908,'creadited','2021-03-13 18:30:00','visa'),(9,1244,'debited','2021-03-11 18:30:00','card'),(10,8978,'debited','2021-10-18 18:30:00','receipt'),(11,67865,'debited','2021-03-11 18:30:00','card'),(12,345,'creadited','2021-03-13 18:30:00','visa'),(13,987,'debited','2021-03-11 18:30:00','card'),(14,909,'debited','2021-10-18 18:30:00','receipt'),(15,1234,'debited','2021-03-11 18:30:00','card'),(16,2345,'creadited','2021-03-13 18:30:00','visa'),(17,765,'debited','2021-03-11 18:30:00','card');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendjobs`
--

DROP TABLE IF EXISTS `recommendjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendjobs` (
  `reservationID` int NOT NULL,
  `cusID` int NOT NULL,
  `driverID` int NOT NULL,
  `managerID` int NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `driverAccept` int NOT NULL DEFAULT '0',
  `vehicleID` int DEFAULT NULL,
  PRIMARY KEY (`reservationID`,`cusID`,`driverID`,`managerID`),
  KEY `cusID_idx` (`cusID`),
  KEY `managerID_idx` (`managerID`),
  CONSTRAINT `managerID` FOREIGN KEY (`managerID`) REFERENCES `emp_manager` (`empID`) ON DELETE CASCADE,
  CONSTRAINT `reservationIDcusIDjpbs` FOREIGN KEY (`reservationID`, `cusID`) REFERENCES `reservation` (`reservationID`, `cusID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendjobs`
--

LOCK TABLES `recommendjobs` WRITE;
/*!40000 ALTER TABLE `recommendjobs` DISABLE KEYS */;
INSERT INTO `recommendjobs` VALUES (1,12,18,23,'2020-12-13 18:30:00',0,NULL);
/*!40000 ALTER TABLE `recommendjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservationID` int NOT NULL AUTO_INCREMENT,
  `cusID` int NOT NULL,
  `vehicle_type` char(10) NOT NULL,
  `pickupdate` date NOT NULL,
  `pickuptime` time NOT NULL,
  `hours` int NOT NULL DEFAULT '0',
  `days` int NOT NULL DEFAULT '0',
  `minutes` int NOT NULL DEFAULT '0',
  `driverexp` char(10) NOT NULL,
  `driverstatus` int NOT NULL DEFAULT '0',
  `how_far` double NOT NULL,
  `pickup_location` varchar(45) NOT NULL,
  `fullPaid` int NOT NULL DEFAULT '0',
  `journey_status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`reservationID`,`cusID`),
  KEY `cusID_idx` (`cusID`),
  CONSTRAINT `cusIDres` FOREIGN KEY (`cusID`) REFERENCES `customer` (`cusID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,12,'car','2021-10-05','10:30:00',5,0,30,'expert',1,10,'kadawatha',0,0),(2,13,'bike','2021-10-05','10:30:00',5,0,30,'expert',1,10,'kadawatha',0,0),(3,15,'bike','2021-10-05','10:30:00',5,0,30,'expert',1,10,'kadawatha',0,0),(4,16,'bike','2021-10-05','10:30:00',5,0,30,'expert',1,10,'kadawatha',0,0);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respayment`
--

DROP TABLE IF EXISTS `respayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respayment` (
  `paymentID` int NOT NULL,
  `reservationID` int NOT NULL,
  `cusID` int NOT NULL,
  `cusReceiptNo` char(10) NOT NULL,
  PRIMARY KEY (`paymentID`,`reservationID`,`cusID`),
  KEY `reservationID_idx` (`reservationID`),
  KEY `cusID_idx` (`cusID`),
  KEY `cusIDresID` (`cusID`,`reservationID`),
  CONSTRAINT `cusIDresID` FOREIGN KEY (`cusID`, `reservationID`) REFERENCES `reservation` (`cusID`, `reservationID`) ON DELETE CASCADE,
  CONSTRAINT `paymentID` FOREIGN KEY (`paymentID`) REFERENCES `payment` (`paymentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respayment`
--

LOCK TABLES `respayment` WRITE;
/*!40000 ALTER TABLE `respayment` DISABLE KEYS */;
INSERT INTO `respayment` VALUES (4,1,12,'Ere4324'),(8,2,13,'ESddfe4324'),(12,3,15,'567fg324'),(16,4,16,'fghg#424');
/*!40000 ALTER TABLE `respayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `propic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `usercol_UNIQUE` (`userName`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'ch','jaya','sser','1234556','1234@gmail','/db/gh'),(12,'thulina','thul','thulinaaa','12345545','thulinaa@gmail','/db/gh'),(13,'anuradha','anu','sseddd','123455654','anurafha@gmail','/db/gh'),(14,'pasi','purna','kasun','1234556676','pasidu@gmail','/db/gh'),(15,'thul','ina','Wick','123455688','thulina@gmail','/db/gh'),(16,'namal','raja','namala','123445','namala@gmail','/dfg/sdf'),(17,'kamalii','la','kamala','123445','kamala@gmail','/dfg/sdf'),(18,'vimu','kla','vimala','123445','vimala@gmail','/dfg/sdf'),(19,'jami','balaka','jamala','123445','jamala@gmail','/dfg/sdf'),(20,'pami','ooo','pamala','123445','pamala@gmail','/dfg/sdf'),(21,'oop','it2060','useroo','123445','oop@gmail','/dfg/sdf'),(22,'ooc','it202la','september','123445','septem@gmail','/dfg/sdf'),(23,'dms','ssskla','sdfvimala','123445','sdfvimala@gmail','/dfg/sdf'),(24,'werjami','werbalaka','ieriejamala','123445','kljamala@gmail','/dfg/sdf'),(25,'yhpami','yuyuooo','i9pamala','123445','poipamala@gmail','/dfg/sdf'),(26,'kknamal','fgfraja','33namala','123445','gfnamala@gmail','/dfg/sdf'),(27,'mjhkamalii','ghla','ghjykamala','123445','hjkamala@gmail','/dfg/sdf'),(28,'qwerevimu','uiukla','oiuvimala','123445','poivimala@gmail','/dfg/sdf'),(29,'ytujami','tyutyrtbalaka','tyutjamala','123445','miuyjamala@gmail','/dfg/sdf'),(30,'234rtrpami','ert45ooo','ty56pamala','123445','y565pamala@gmail','/dfg/sdf');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `veOID` int NOT NULL,
  `vehicleID` int NOT NULL AUTO_INCREMENT,
  `fuel_type` char(15) NOT NULL,
  `license_no` varchar(45) NOT NULL,
  `vehi_type` char(15) NOT NULL,
  `color` varchar(45) NOT NULL,
  `body_type` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `noOfPeeps` int NOT NULL,
  `edition` varchar(45) NOT NULL,
  `pricePerKm` double NOT NULL,
  `specialNote` varchar(200) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `registrationNo` varchar(45) NOT NULL,
  `transmission` varchar(45) NOT NULL,
  `vehiclePic` varchar(200) NOT NULL,
  PRIMARY KEY (`vehicleID`,`veOID`),
  UNIQUE KEY `registrationNo_UNIQUE` (`registrationNo`),
  UNIQUE KEY `license_no_UNIQUE` (`license_no`),
  KEY `veOID&vehi` (`veOID`),
  CONSTRAINT `veOID&vehi` FOREIGN KEY (`veOID`) REFERENCES `vehicleowner` (`veOID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (27,22,'disel','342365','car','blue','big','good',4,'black',300,'4th wheel','Toyota','878787','auto','/234/erer.h'),(24,23,'disel','3423','car','blue','big','good',4,'black',300,'4th wheel','Toyota','123er','auto','/erer/324.jpg'),(24,24,'disel','34245','car','blue','big','good',4,'black',300,'4th wheel','Toyota','123e32r','auto','/sdfd/234.jpeg'),(27,25,'Diesel','sdfd','Van','Orange','cn','new',2,'2.8',200,'sdfdf','mnn','sdfd','yrd','/images/cars/car.jpg'),(27,27,'Petrol','sdddddddddddddddd','Car','Red','sdfsdfsdf','sdfsdfsdfdf',3,'sdfdff',4000,'dfdsfdsfsdfdfdf','sdfsdf','sdfsdfffffffff','sdfsdfsdfd','/images/cars/car.jpg'),(27,28,'Gasoline','sdfdf343','Bike','Orange','sdfdf','sdf',33,'dsfd',3434,'dsfsd','BMW','sdfdf34','sdfdf','/images/cars/car.jpg'),(27,29,'Gasoline','sdfdf343sdfsdfsdfyttttttttt','Bike','Orange','sdfdf','sdfsdfsdf',335555,'dsfd',343455,'dsfsdfghg','BMWdfsdf','555555555','sdfdf','/images/cars/car.jpg'),(27,30,'Natural Gas','sdfdf343sdfsdfsdfytttttttttdfggggg','Jeep','Purple','sdfdffddddddddd','sdfsdfsdfdffffffffg',335555444,'dsfdfggggggggg',3434554444444,'dsfsdfghgfddddddddddg','BMWdfsdfdffffffffg','555555555dfgdfg','sdfdfdfffffffffg','/images/cars/car.jpg'),(27,31,'Natural Gas','sdfdf343sdfsdfsdfytttttttttdfgggggdsfd','Jeep','Orange','sdfdffdddddddddfdg','sdfsdfsdfdffffffffgsdfdf',33,'dsfdfgggggggggsdfdfd',3434,'dsfsdfghgfddddddddddgfgf','BMWdfsdfdffffffffgsdfd','555555555dfgdfgfcgrter','sdfdfdfffffffffgsdfdgf','/images/cars/car.jpg'),(27,33,'Natural Gas','sf','Jeep','Purple','sdf898','sdfsdfs9889',33,'dsfdfg988',3434,'dsfsdfghgfddddddddddgfgfcvb','B77','555555555dfgdfgfcgrterdfgfg','sdf7779','/images/cars/car.jpg'),(27,34,'Diesel','3434sfd','Van','Purple','sdfdfdf','hgfhfghgh',232,'erer',343,'234','fgdfg','dsfsdf343','dsfsdf','/images/cars/car.jpg'),(27,38,'Diesel','jk90','Van','Red','yes','no',89,'1.6 turbo boost',700,'cashii','hybrid','l','auto','/images/cars/car.jpg');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleowner`
--

DROP TABLE IF EXISTS `vehicleowner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleowner` (
  `veOID` int NOT NULL,
  PRIMARY KEY (`veOID`),
  UNIQUE KEY `veOID_UNIQUE` (`veOID`),
  CONSTRAINT `veOID` FOREIGN KEY (`veOID`) REFERENCES `vendor` (`vendorID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleowner`
--

LOCK TABLES `vehicleowner` WRITE;
/*!40000 ALTER TABLE `vehicleowner` DISABLE KEYS */;
INSERT INTO `vehicleowner` VALUES (24),(27),(28),(29),(30);
/*!40000 ALTER TABLE `vehicleowner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiownerpay`
--

DROP TABLE IF EXISTS `vehiownerpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiownerpay` (
  `paymentID` int NOT NULL,
  `managerID` int NOT NULL,
  `vehiownerID` int NOT NULL,
  `payeeacc` int NOT NULL,
  PRIMARY KEY (`paymentID`,`managerID`,`vehiownerID`),
  KEY `managerID_idx` (`managerID`),
  KEY `vehicownerID_idx` (`vehiownerID`),
  CONSTRAINT `managerIDvehio` FOREIGN KEY (`managerID`) REFERENCES `emp_manager` (`empID`),
  CONSTRAINT `paymentIDvehio` FOREIGN KEY (`paymentID`) REFERENCES `payment` (`paymentID`) ON DELETE CASCADE,
  CONSTRAINT `vehicownerIDpay` FOREIGN KEY (`vehiownerID`) REFERENCES `vehicleowner` (`veOID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiownerpay`
--

LOCK TABLES `vehiownerpay` WRITE;
/*!40000 ALTER TABLE `vehiownerpay` DISABLE KEYS */;
INSERT INTO `vehiownerpay` VALUES (9,11,24,12345),(10,14,27,56765),(11,23,28,87897),(12,25,29,123778);
/*!40000 ALTER TABLE `vehiownerpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendorID` int NOT NULL,
  PRIMARY KEY (`vendorID`),
  UNIQUE KEY `vendorID_UNIQUE` (`vendorID`),
  CONSTRAINT `vendorID` FOREIGN KEY (`vendorID`) REFERENCES `externaluser` (`exuserID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (18),(19),(20),(21),(22),(24),(27),(28),(29),(30);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-01 11:08:07
