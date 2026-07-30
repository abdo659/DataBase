-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lib
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `book_authors`
--

DROP TABLE IF EXISTS `book_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_authors` (
  `BookID` int NOT NULL,
  `AuthorName` varchar(30) NOT NULL,
  KEY `BookID` (`BookID`),
  CONSTRAINT `book_authors_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_authors`
--

LOCK TABLES `book_authors` WRITE;
/*!40000 ALTER TABLE `book_authors` DISABLE KEYS */;
INSERT INTO `book_authors` VALUES (1,'Oran Juice Jones'),(2,'Momma Hen'),(3,'Grandma Hen'),(4,'Henry Asscabin Lee'),(5,'Kevyn the Cat'),(6,'GoodBoy Chief'),(7,'Stella'),(8,'Rex'),(9,'Rider Rosco'),(10,'Chance'),(11,'Stephen King'),(12,'Stephen King'),(13,'Stephen King'),(14,'Stephen King'),(15,'Stephen King'),(16,'Stephen King'),(17,'Stephen King'),(18,'Stephen King'),(19,'Stephen King'),(20,'Stephen King');
/*!40000 ALTER TABLE `book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_copies`
--

DROP TABLE IF EXISTS `book_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_copies` (
  `BookID` int NOT NULL,
  `BranchID` int NOT NULL,
  `Number_Of_Copies` int NOT NULL,
  KEY `BookID` (`BookID`),
  KEY `BranchID` (`BranchID`),
  CONSTRAINT `book_copies_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  CONSTRAINT `book_copies_ibfk_2` FOREIGN KEY (`BranchID`) REFERENCES `library_branch` (`BranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_copies`
--

LOCK TABLES `book_copies` WRITE;
/*!40000 ALTER TABLE `book_copies` DISABLE KEYS */;
INSERT INTO `book_copies` VALUES (1,1,2),(2,1,3),(3,1,3),(4,1,3),(5,1,3),(6,1,3),(7,1,3),(8,1,3),(9,1,3),(10,1,3),(11,1,3),(12,1,3),(1,2,4),(2,2,3),(3,2,3),(4,2,3),(5,2,3),(6,2,3),(7,2,3),(8,2,3),(9,2,3),(10,2,3),(11,2,3),(12,2,3),(13,2,3),(14,2,3),(15,2,3),(16,2,3),(17,2,3),(18,2,3),(1,3,4),(2,3,3),(3,3,3),(4,3,3),(5,3,3),(6,3,3),(7,3,3),(8,3,3),(9,3,3),(10,3,3),(11,3,3),(12,3,3),(13,3,3),(14,3,3),(15,3,3),(16,3,3),(17,3,3),(18,3,3),(1,4,4),(2,4,3),(3,4,3),(4,4,3),(5,4,3),(6,4,3),(7,4,3),(8,4,3),(9,4,3),(10,4,3),(11,4,3),(12,4,3),(13,4,3),(14,4,3),(15,4,3),(16,4,3),(17,4,3),(18,4,3);
/*!40000 ALTER TABLE `book_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_loans`
--

DROP TABLE IF EXISTS `book_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_loans` (
  `BookID` int NOT NULL,
  `BranchID` int NOT NULL,
  `CardNo` int NOT NULL,
  `DateOut` date NOT NULL,
  `DateDue` date NOT NULL,
  KEY `BookID` (`BookID`),
  KEY `BranchID` (`BranchID`),
  KEY `CardNo` (`CardNo`),
  CONSTRAINT `book_loans_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  CONSTRAINT `book_loans_ibfk_2` FOREIGN KEY (`BranchID`) REFERENCES `library_branch` (`BranchID`),
  CONSTRAINT `book_loans_ibfk_3` FOREIGN KEY (`CardNo`) REFERENCES `borrower` (`CardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_loans`
--

LOCK TABLES `book_loans` WRITE;
/*!40000 ALTER TABLE `book_loans` DISABLE KEYS */;
INSERT INTO `book_loans` VALUES (1,1,1000,'2025-04-30','2018-09-12'),(2,1,1000,'2025-04-30','2018-09-12'),(3,1,1000,'2025-04-30','2018-09-12'),(5,1,1003,'2025-04-30','2018-09-12'),(6,1,1003,'2025-04-30','2018-09-12'),(7,1,1003,'2025-04-30','2018-09-12'),(9,1,1003,'2025-04-30','2018-09-12'),(10,1,1003,'2025-04-30','2018-09-12'),(11,1,1003,'2025-04-30','2018-09-12'),(12,1,1003,'2025-04-30','2018-09-12'),(13,2,1006,'2025-04-30','2018-09-12'),(14,2,1006,'2025-04-30','2018-09-12'),(15,2,1006,'2025-04-30','2018-09-12'),(16,2,1006,'2025-04-30','2018-09-12'),(17,2,1009,'2025-04-30','2018-09-12'),(18,2,1009,'2025-04-30','2018-09-12'),(19,2,1009,'2025-04-30','2018-09-12'),(20,2,1009,'2025-04-30','2018-09-12'),(1,2,1024,'2025-04-30','2018-09-12'),(19,2,1009,'2025-04-30','2018-09-12'),(20,2,1009,'2025-04-30','2018-09-12'),(1,2,1000,'2025-04-30','2018-09-12'),(2,2,1000,'2025-04-30','2018-09-12'),(3,2,1000,'2025-04-30','2018-09-12'),(5,1,1003,'2025-04-30','2018-09-12'),(6,1,1003,'2025-04-30','2018-09-12'),(7,1,1003,'2025-04-30','2018-09-12'),(9,1,1003,'2025-04-30','2018-09-12'),(10,1,1003,'2025-04-30','2018-09-12'),(11,1,1003,'2025-04-30','2018-09-12'),(12,1,1003,'2025-04-30','2018-09-12'),(13,2,1006,'2025-04-30','2018-09-12'),(14,2,1006,'2025-04-30','2018-09-12'),(15,2,1006,'2025-04-30','2018-09-12'),(16,2,1006,'2025-04-30','2018-09-12'),(17,2,1009,'2025-04-30','2018-09-12'),(18,2,1009,'2025-04-30','2018-09-12'),(19,2,1009,'2025-04-30','2018-09-12'),(20,2,1009,'2025-04-30','2018-09-12'),(5,1,1000,'2025-04-30','2025-04-30');
/*!40000 ALTER TABLE `book_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(70) NOT NULL,
  `PublisherName` varchar(70) NOT NULL,
  PRIMARY KEY (`BookID`),
  KEY `PublisherName` (`PublisherName`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`PublisherName`) REFERENCES `publisher` (`PublisherName`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The Lost Tribe','Inks Pubs'),(2,'Henry\'s Tail','Inks Pubs'),(3,'Pupps on the Run','Inks Pubs'),(4,'Poochies Mooch Handbook','Inks Pubs'),(5,'Where To Do Twos','GOODBOY PUBLICATIONS'),(6,'The Tale Of The Infinite Food Dish','GOODBOY PUBLICATIONS'),(7,'One Night In The Pen','GOODBOY PUBLICATIONS'),(8,'Proper Hole Digging Technique','Times'),(9,'MOVING ROOM RIDES','Times'),(10,'Yard Intruders: The Night Before the bad one','Times'),(11,'The Book Series: 1','Inks Pubs'),(12,'The Book Series: 2','Inks Pubs'),(13,'The Book Series: 3','Inks Pubs'),(14,'The Book Series: 4','Inks Pubs'),(15,'The Book Series: 5','Inks Pubs'),(16,'The Book Series: 6','Inks Pubs'),(17,'The Book Series: 7','Inks Pubs'),(18,'The Book Series: 8','Inks Pubs'),(19,'The Book Series: 9','Inks Pubs'),(20,'The Book Series: 10','Inks Pubs');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrower` (
  `CardNo` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  PRIMARY KEY (`CardNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1029 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES (1,'Colby','123 Sandy Blvd','123-1231'),(2,'Henry','Colby\'s Yard','456-3121'),(3,'Debbie','123 Sandy Blvd','756-5163'),(4,'Katy','260 Sandy Blvd','456-3214'),(5,'Rico','123 Sandy Blvd','849-5487'),(6,'Cord','123 Sandy Blvd','465-7598'),(7,'Bob','1200 Bob Blvd','465-7598'),(8,'Sandy','100 Sandy Blvd','465-7598'),(9,'Jim','1200 Beatulgeuse Blvd','885-7598'),(10,'Billy','999 Palace Place','885-6548'),(1000,'John Doe','123 Main St','1234567890'),(1003,'Jane Smith','456 Elm St','2345678901'),(1006,'Alice Johnson','789 Oak St','3456789012'),(1009,'Bob Brown','321 Pine St','4567890123'),(1024,'Charlie White','654 Maple St','5678901234'),(1025,'Tom Lee','987 Maple St','6789012345'),(1026,'Emily White','654 Cedar St','7890123456'),(1027,'George Hall','789 Birch St','8901234567'),(1028,'Emma King','951 Elm St','9012345678');
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_branch`
--

DROP TABLE IF EXISTS `library_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_branch` (
  `BranchID` int NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_branch`
--

LOCK TABLES `library_branch` WRITE;
/*!40000 ALTER TABLE `library_branch` DISABLE KEYS */;
INSERT INTO `library_branch` VALUES (1,'Sharpstown','540 NW Park Ave'),(2,'Central','870 E State'),(3,'Portland','230 NE Sandy Blvd'),(4,'Seattle','542 Edgar Martinez Blvd'),(5,'Chewelah','100 NW Street Ave');
/*!40000 ALTER TABLE `library_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `PublisherName` varchar(70) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  PRIMARY KEY (`PublisherName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES ('GOODBOY PUBLICATIONS','Some Place St.','120-399-0911'),('Inks Pubs','Some Place St.','509-122-1234'),('Times','1200 Park Place, Dog House in front right of very secure lawn','3');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30  0:23:37
