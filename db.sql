CREATE DATABASE  IF NOT EXISTS `akaklaundry` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `akaklaundry`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: akaklaundry
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `AssignmentID` char(5) NOT NULL,
  `StaffID` char(4) DEFAULT NULL,
  `CustID` char(4) DEFAULT NULL,
  `AssignmentDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`AssignmentID`),
  KEY `StaffID` (`StaffID`),
  KEY `CustID` (`CustID`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES ('AA121','L005','C001','2024-06-02','2024-06-05'),('AA122','L007','C002','2024-06-05','2024-06-07'),('AA123','L009','C003','2024-06-06','2024-06-07'),('AA124','L011','C004','2024-06-07','2024-06-09'),('AA125','L005','C005','2024-06-09','2024-06-14'),('AA126','L012','C006','2024-06-14','2024-06-16'),('AA127','L007','C007','2024-06-17','2024-06-19'),('AA128','L013','C008','2024-06-20','2024-06-23'),('AA129','L009','C009','2024-06-23','2024-06-26'),('AA130','L014','C010','2024-06-24','2024-06-25'),('AA131','L011','C011','2024-06-27','2024-07-01'),('AA132','L012','C012','2024-06-29','2024-07-04'),('AA133','L013','C013','2024-06-30','2024-07-02'),('AA134','L014','C014','2024-07-01','2024-07-03'),('AA135','L012','C015','2024-07-02','2024-07-04');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustID` char(4) NOT NULL,
  `CustName` varchar(100) DEFAULT NULL,
  `CustPhone` varchar(20) DEFAULT NULL,
  `CustEmail` varchar(50) DEFAULT NULL,
  `CustAddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C001','Ahmad Syafiq bin Hassan','+60 12-654 3210','syafiq987@gmail.com','No. 10 Jalan Jasin Perdana 5 Taman Jasin Perdana 77000 Jasin Melaka'),('C002','Nurul Ain binti Iskandar','+60 13-765 4321','ain657@gmail.com','No. 32 Jalan Murni 2 Taman Murni 77000 Jasin Melaka'),('C003','Mohammad Faiz bin Hamid','+60 14-876 5432','faiz123@gmail.com','No. 18 Lorong Tasek Utama 3 Taman Tasek Utama 77000 Jasin Melaka'),('C004','Siti Aisyah binti Abdullah','+60 16-987 6543','aisyah546@gmail.com','No. 27 Jalan Jasin Indah 4 Taman Jasin Indah 77000 Jasin Melaka'),('C005','Azman bin Zainuddin','+60 17-098 7654','azman666gmail.com','No. 44 Jalan Jasin Bestari 2 Taman Jasin Bestari 77000 Jasin Melaka'),('C006','Nadia binti Kamal','+60 18-109 8765','nadia232@gmail.com','No. 7 Lorong Kesang 6 Taman Kesang 77000 Jasin Melaka'),('C007','Irfan bin Rahim','+60 19-210 9876','irfan545@gmail.com','No. 15 Jalan Merlimau Jaya 2 Taman Merlimau Jaya 77300 Merlimau Melaka'),('C008','Hafizah binti Zulkifli','+60 11-321 0987','hafizah121@gmail.com','No. 24 Lorong Desa Merlimau 4 Taman Desa Merlimau 77300 Merlimau Melaka'),('C009','Rashid bin Idris','+60 10-432 1098','rashid090@gmail.com','No. 36 Jalan Merlimau Indah 3 Taman Merlimau Indah 77300 Merlimau Melaka'),('C010','Aminah binti Osman','+60 12-543 2109','aminah345@gmail.com','No. 9 Jalan Seri Merlimau 1 Taman Seri Merlimau 77300 Merlimau Melaka'),('C011','Faris bin Malik','+60 13-654 3210','faris317@gmail.com','No. 43 Lorong Merlimau Permai 2 Taman Merlimau Permai 77300 Merlimau Melaka'),('C012','Zulaikha binti Harun','+60 14-765 4321','zulaikha645@gmail.com','No. 50 Jalan Puteri 3 Taman Puteri 77000 Jasin Melaka'),('C013','Khairul bin Jamal','+60 16-876 5432','khairul888@gmail.com','No. 3 Jalan Seri Jasin 5 Taman Seri Jasin 77000 Jasin Melaka'),('C014','Aisyah binti Yazid','+60 17-987 6543','aisyah999@gmail.com','No. 28 Jalan Jasin Mutiara 4 Taman Jasin Mutiara 77000 Jasin Melaka'),('C015','Hakim bin Sulaiman','+60 18-098 7654','hakim111@gmail.com','No. 11 Lorong Desa Permai 3 Taman Desa Permai 77000 Jasin Melaka');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` char(25) NOT NULL,
  `CustID` char(4) DEFAULT NULL,
  `PaymentAmount` decimal(9,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentMethod` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `CustID` (`CustID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('PAY0012345678','C001',40.00,'2024-06-02','Cash'),('PAY0012345679','C002',225.00,'2024-06-05','Card'),('PAY0012345680','C003',25.00,'2024-06-06','QR'),('PAY0012345681','C004',30.00,'2024-08-07','QR'),('PAY0012345682','C005',48.00,'2024-06-09','QR'),('PAY0012345683','C006',60.00,'2024-06-14','Cash'),('PAY0012345684','C007',100.00,'2024-06-17','Card'),('PAY0012345685','C008',180.00,'2024-06-20','Card'),('PAY0012345686','C009',20.00,'2024-06-23','Cash'),('PAY0012345687','C010',55.00,'2024-06-24','QR'),('PAY0012345688','C011',70.00,'2024-06-27','QR'),('PAY0012345689','C012',84.00,'2024-06-29','Card'),('PAY0012345690','C013',15.00,'2024-06-30','Cash'),('PAY0012345691','C014',90.00,'2024-07-01','Card'),('PAY0012345692','C015',175.00,'2024-07-02','Card');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `ServID` char(4) NOT NULL,
  `ServType` varchar(35) DEFAULT NULL,
  `ServPrice` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`ServID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES ('S101','Basic Laundry',10.00),('S102','Dry Cleaning',25.00),('S103','Ironing Service',5.00),('S104','Stain Removal',15.00),('S105','Wash and Fold',12.00),('S106','Delicate Fabric Care',30.00),('S107','Bedding and Linen Cleaning',20.00),('S108','Curtain Cleaning',15.00),('S109','Carpet Cleaning',5.00),('S110','Uniform Cleaning',10.00);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicerecord`
--

DROP TABLE IF EXISTS `servicerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicerecord` (
  `ServiceRecordID` char(5) NOT NULL,
  `ServID` char(4) DEFAULT NULL,
  `CustID` char(4) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `QuantityUnit` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ServiceRecordID`),
  KEY `ServID` (`ServID`),
  KEY `CustID` (`CustID`),
  CONSTRAINT `servicerecord_ibfk_1` FOREIGN KEY (`ServID`) REFERENCES `service` (`ServID`),
  CONSTRAINT `servicerecord_ibfk_2` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicerecord`
--

LOCK TABLES `servicerecord` WRITE;
/*!40000 ALTER TABLE `servicerecord` DISABLE KEYS */;
INSERT INTO `servicerecord` VALUES ('SR241','S104','C001',4,'Completed','kilogram'),('SR242','S101','C002',9,'Completed','item'),('SR243','S109','C003',5,'Completed','item'),('SR245','S105','C004',2,'Completed','item'),('SR246','S102','C005',4,'Completed','kilogram'),('SR247','S107','C006',2,'Completed','item'),('SR248','S103','C007',5,'Completed','item'),('SR249','S110','C008',12,'Completed','item'),('SR250','S106','C009',4,'Completed','square foot'),('SR251','S104','C010',11,'Completed','item'),('SR252','S108','C011',7,'Completed','kilogram'),('SR253','S108','C012',7,'Pending','kilogram'),('SR254','S104','C013',1,'Pending','item'),('SR255','S109','C014',3,'Pending','item'),('SR256','S103','C015',7,'Pending','item');
/*!40000 ALTER TABLE `servicerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` char(4) NOT NULL,
  `StaffName` varchar(100) DEFAULT NULL,
  `StaffPosition` varchar(50) DEFAULT NULL,
  `StaffPhone` varchar(20) DEFAULT NULL,
  `StaffAddress` varchar(100) DEFAULT NULL,
  `StaffEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('L001','Ahmad Firdaus bin Abdullah','Marketing and Sales Coordinator','+60 12-345 6789','No. 12 Jalan Jasin Bestari 1 Taman Jasin Bestari 77000 Jasin Melaka','firdaus123@gmail.com'),('L002','Nur Aisyah binti Ismail','Manager','+60 13-456 7890','No. 45 Lorong Jasin Indah 2 Taman Jasin Indah 77000 Jasin Melaka','aisyah234@gmail.com'),('L003','Muhammad Hafiz bin Rahman','Marketing and Sales Coordinator','+60 16-678 9012','No. 8 Jalan Murni 4 Taman Murni 77000 Jasin Melaka','hafiz466@gmail.com'),('L004','Siti Khadijah binti Hassan','Supervisor','+60 14-567 8901','No. 22 Jalan Kesang 3 Taman Kesang 77000 Jasin Melaka','khadijah345@gmail.com'),('L005','Mohd Faizal bin Mohamad','Staff','+60 17-789 0123','No. 30, Jalan Puteri 1 Taman Puteri 77000 Jasin Melaka','faizal177@gmail.com'),('L006','Nurul Iman binti Idris','Manager','+60 18-890 1234','No. 5 Jalan Tasek Utama 6 Taman Tasek Utama 77000 Jasin Melaka','iman688@gmail.com'),('L007','Amirul Hakim bin Zainal','Staff','+60 19-901 2345','No. 17 Jalan Jasin Perdana 2 Taman Jasin Perdana 77000 Jasin Melaka','hakim299@gmail.com'),('L008','Aisyah Humaira binti Salleh','Cashier','+60 11-012 3456','No. 14 Lorong Desa Permai 1 Taman Desa Permai 77000 Jasin Melaka','humaira110@gmail.com'),('L009','Ahmad Zaki bin Yusof','Staff','+60 10-123 4567','No. 27 Jalan Bunga Raya 3 Taman Bunga Raya 77000 Jasin Melaka','zaki301@gmail.com'),('L010','Siti Nurhaliza binti Ahmad','Manager','+60 12-234 5678','No. 35, Jalan Seri Jasin 1 Taman Seri Jasin 77000 Jasin Melaka','nurhaliza122@gmail.com'),('L011','Muhammad Iqbal bin Hamzah','Staff','+60 13-345 6789','No. 9 Jalan Jasin Mutiara 2 Taman Jasin Mutiara 77000 Jasin Melaka','iqbal233@gmail.com'),('L012','Nur Farhana binti Saad','Staff','+60 14-456 7890','No. 20 Jalan Sri Kesang 4 Taman Sri Kesang 77000 Jasin Melaka','farhana444@gmail.com'),('L013','Mohd Zulkifli bin Ali','Staff','+60 16-567 8901','No. 33 Jalan Aman 5 Taman Aman 77000 Jasin Melaka','zulkifli565@gmail.com'),('L014','Aina Sabrina binti Anwar','Staff','+60 17-678 901','No. 11 Lorong Jasin Jaya 2 Taman Jasin Jaya 77000 Jasin Melaka','sabrina276@gmail.com'),('L015','Ahmad Danial bin Sulaiman','Cashier','+60 18-789 0123','No. 18 Jalan Jasin Perdana 3 Taman Jasin Perdana 77000 Jasin Melaka','danial387@gmail.com');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffservice`
--

DROP TABLE IF EXISTS `staffservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffservice` (
  `StaffServiceID` char(4) NOT NULL,
  `StaffID` char(4) DEFAULT NULL,
  `ServID` char(4) DEFAULT NULL,
  `ServDuration` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StaffServiceID`),
  KEY `StaffID` (`StaffID`),
  KEY `ServID` (`ServID`),
  CONSTRAINT `staffservice_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  CONSTRAINT `staffservice_ibfk_2` FOREIGN KEY (`ServID`) REFERENCES `service` (`ServID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffservice`
--

LOCK TABLES `staffservice` WRITE;
/*!40000 ALTER TABLE `staffservice` DISABLE KEYS */;
INSERT INTO `staffservice` VALUES ('1101','L005','S101',''),('1102','L007','S102','2 days'),('1103','L009','S103','1 days'),('1104','L014','S104','2 days'),('1105','L011','S105',''),('1106','L007','S106','2 days'),('1107','L012','S107','2 days'),('1108','L013','S108','3 days'),('1109','L009','S109',''),('1110','L012','S110','1 days');
/*!40000 ALTER TABLE `staffservice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04  7:15:48
