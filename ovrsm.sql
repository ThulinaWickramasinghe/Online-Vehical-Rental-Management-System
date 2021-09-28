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
-- Table structure for table `carownerpay`
--

DROP TABLE IF EXISTS `carownerpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carownerpay` (
  `vehiOwnerID` int NOT NULL,
  `managerID` int NOT NULL,
  `paymentID` int NOT NULL,
  `paidAcc` int NOT NULL,
  PRIMARY KEY (`vehiOwnerID`,`managerID`,`paymentID`),
  KEY `managerID_idx` (`managerID`),
  KEY `paymentID_idx` (`paymentID`),
  CONSTRAINT `managerIDcarOPay` FOREIGN KEY (`managerID`) REFERENCES `emp_manager` (`empID`) ON DELETE CASCADE,
  CONSTRAINT `paymentIDcarO` FOREIGN KEY (`paymentID`) REFERENCES `payment` (`paymentID`) ON DELETE CASCADE,
  CONSTRAINT `vehiOwnerIDcarOwpay` FOREIGN KEY (`vehiOwnerID`) REFERENCES `vehicleowner` (`veOID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carownerpay`
--

LOCK TABLES `carownerpay` WRITE;
/*!40000 ALTER TABLE `carownerpay` DISABLE KEYS */;
/*!40000 ALTER TABLE `carownerpay` ENABLE KEYS */;
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
  `carexpertLevel` char(15) NOT NULL,
  `bikeexpertLevel` char(15) NOT NULL,
  `vanexpertLevel` char(15) NOT NULL,
  PRIMARY KEY (`driverID`),
  UNIQUE KEY `driverID_UNIQUE` (`driverID`),
  CONSTRAINT `driverID` FOREIGN KEY (`driverID`) REFERENCES `vendor` (`vendorID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
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
  `accoutNo` int NOT NULL,
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
  UNIQUE KEY `phoneNo_UNIQUE` (`phoneNo`),
  CONSTRAINT `exuserID` FOREIGN KEY (`exuserID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externaluser`
--

LOCK TABLES `externaluser` WRITE;
/*!40000 ALTER TABLE `externaluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `externaluser` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
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
  PRIMARY KEY (`reservationID`,`cusID`),
  KEY `cusID_idx` (`cusID`),
  CONSTRAINT `cusIDres` FOREIGN KEY (`cusID`) REFERENCES `customer` (`cusID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
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
  `passowrd` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `propic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `usercol_UNIQUE` (`userName`),
  UNIQUE KEY `usercol1_UNIQUE` (`passowrd`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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
  PRIMARY KEY (`vehicleID`,`veOID`),
  KEY `veOID&vehi` (`veOID`),
  CONSTRAINT `veOID&vehi` FOREIGN KEY (`veOID`) REFERENCES `vehicleowner` (`veOID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `vehicleowner` ENABLE KEYS */;
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

-- Dump completed on 2021-09-28 18:14:26
