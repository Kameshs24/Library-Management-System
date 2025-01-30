-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: librarymanagement
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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS books;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE books (
  book_id int NOT NULL AUTO_INCREMENT,
  title varchar(50) DEFAULT NULL,
  author varchar(50) DEFAULT NULL,
  copies_available int NOT NULL,
  PRIMARY KEY (book_id)
) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES books WRITE;
/*!40000 ALTER TABLE books DISABLE KEYS */;
INSERT INTO books VALUES (1000,'Engineering Analysis','Yen-Ching Pao',28),(1001,'Competitive Engineering','Tom Gilb',12),(1002,'Success Through Failure','Henry Petroski',16),(1003,'Mechanical Variables','John G',10),(1004,'Engineer to Win','Carroll Smith',14),(1005,'Clean Code','Robert C',25),(1006,'Mechanics of Fatigue','Vladimir V',20),(1007,'The Gecko’s Foot','Peter Forbes',21),(1008,'Sustainable Materials','Julian Allwood',33),(1009,'Theory of Structures','RS Khurmi',23),(1010,'Constructing a Bridge','Eda Kranakis',15),(1011,'Rapid Development','Steve McConnell',21),(1012,'The Perfectionists','Simon W',27),(1013,'Digital Logic Techniques','John Stonham',24),(1014,'The Electronics Handbook','Jerry C. W',14),(1015,'Gossamer Odyssey','Morton Grosser',17),(1016,'Theory of Machines','RS Khurmi',33),(1017,'The Love Hypothesis','Ali Hazelwood',31),(1018,'Sled Driver','Brian Shul',20),(1019,'The Everything Store','Brad Stone',14),(1020,'Invention By Design','Henry Petroski',30),(1021,'Electric Powertrain','John G. Hayes',32),(1022,'Designing Your Life','Bill Burnett',24),(1023,'Mechanism Analysis','Lyndon O',29),(1024,'Mechanics of Machines','Viswanatha Ramamurti',40),(1025,'Skunk Works','Leo Janos',39),(1026,'Architecting for Scale','Lee Atchison',35),(1027,'Introduction to IoT','Sudip Misra',6),(1028,'Engineering Mechanics','S. S. Bhavikatti',11),(1029,'Managing Humans','Michael Lopp',26);
/*!40000 ALTER TABLE books ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS members;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE members (
  member_id int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  email varchar(50) NOT NULL,
  membership_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (member_id),
  UNIQUE KEY email (email)
) ENGINE=InnoDB AUTO_INCREMENT=202443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES members WRITE;
/*!40000 ALTER TABLE members DISABLE KEYS */;
INSERT INTO members VALUES (202421,'Siva B','sivavjk@gmail.com','2020-04-13 18:30:00'),(202422,'Sathya Prakash','sathya123@gmail.com','2020-06-18 18:30:00'),(202423,'Avinash P','avirugged@gmail.com','2020-05-12 18:30:00'),(202424,'Kishore Kumar','kichadealer@gmail.com','2021-01-10 18:30:00'),(202425,'Joshua Benny','joshuahinn@gmail.com','2021-02-08 18:30:00'),(202426,'Karthick Annamalai','annamalai143@gmail.com','2021-02-19 18:30:00'),(202427,'Preethi Nikkitha','nikkidungdung@gmail.com','2021-03-02 18:30:00'),(202428,'Bromoh M','bromohrapper@gmail.com','2022-01-22 18:30:00'),(202429,'Shravan Vignesh ','shravanvikki@gmail.com','2022-02-10 18:30:00'),(202430,'Jeyaram MK','jeya123@gmail.com','2022-03-22 18:30:00'),(202431,'Johith singaram','johithsigh@gmail.com','2022-04-28 18:30:00'),(202432,'Surya Mappi','suryaeec@gmail.com','2022-06-21 18:30:00'),(202433,'Sivaraj Krishnan','sivasandi@gmail.com','2022-06-22 18:30:00'),(202434,'Ravikanth M','raviorangepilot@gmail.com','2022-06-23 18:30:00'),(202435,'Tamil Arasan','tamileie@gmail.com','2023-05-04 18:30:00'),(202436,'Kamala Kannan','kamalmorty@gmail.com','2022-12-31 18:30:00'),(202437,'Dani Jeyakumar','danijeya@gmail.com','2023-01-04 18:30:00'),(202438,'Vishnu Varthan','vishnurajpala@gmail.com','2024-02-23 18:30:00'),(202439,'Raghul Raj','raghulkoli@gmail.com','2024-03-21 18:30:00'),(202440,'Shesha Thri','sheshapulli@gmail.com','2024-06-18 18:30:00'),(202441,'Mohana Krishnan','mohankrish@gmail.com','2025-01-29 11:49:03'),(202442,'Adnaan','adnaan143@gmail.com','2025-01-29 11:52:22');
/*!40000 ALTER TABLE members ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS rental;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE rental (
  rental_id int NOT NULL AUTO_INCREMENT,
  book_id int NOT NULL,
  member_id int NOT NULL,
  rental_date date NOT NULL,
  return_date date DEFAULT NULL,
  rental_status enum('Rented','Returned') DEFAULT 'Rented',
  PRIMARY KEY (rental_id),
  KEY book_id (book_id),
  KEY member_id (member_id),
  CONSTRAINT rental_ibfk_1 FOREIGN KEY (book_id) REFERENCES books (book_id),
  CONSTRAINT rental_ibfk_2 FOREIGN KEY (member_id) REFERENCES members (member_id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES rental WRITE;
/*!40000 ALTER TABLE rental DISABLE KEYS */;
INSERT INTO rental VALUES (1,1004,202425,'2025-01-29','2025-01-29','Returned'),(2,1004,202426,'2025-01-29','2025-02-05','Rented'),(3,1007,202428,'2025-01-29','2025-02-05','Rented');
/*!40000 ALTER TABLE rental ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER after_book_return AFTER UPDATE ON rental FOR EACH ROW BEGIN
    IF NEW.return_date IS NOT NULL THEN
        UPDATE books
        SET copies_available = copies_available + 1
        WHERE book_id = NEW.book_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'librarymanagement'
--
/*!50003 DROP PROCEDURE IF EXISTS Add_new_member */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE Add_new_member(IN p_email VARCHAR(50), p_name VARCHAR(50))
BEGIN
	DECLARE ex_count INT;
    SELECT COUNT(*) INTO ex_count FROM members WHERE email = p_email;
	
    IF ex_count > 0 THEN 
		SIGNAL SQLSTATE '45000' SET message_text = 'Member already exists';
	ELSE
        INSERT INTO members (name, email) VALUES (p_name, p_email);
        SELECT 'New member added successfully' AS message;
    END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS check_book_availability */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE check_book_availability(IN p_bookid INT)
BEGIN
    SELECT book_id, title, copies_available
    FROM books
    WHERE book_id = p_bookiD;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS get_member_activity_report */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE get_member_activity_report()
BEGIN
    SELECT 
        m.member_id, 
        m.name AS member_name,
        b.book_id,
        b.title AS book_title,
        r.rental_date,
        r.return_date,
        CASE 
            WHEN r.return_date IS NULL THEN 'Not Returned'
            ELSE 'Returned'
        END AS rental_status
    FROM rental r
    JOIN members m ON r.member_id = m.member_id
    JOIN books b ON r.book_id = b.book_id
    ORDER BY m.member_id, r.rental_date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS get_overdue_books_report */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE get_overdue_books_report()
BEGIN
    SELECT 
        r.rental_id,
        m.member_id,
        m.name AS member_name,
        b.book_iD,
        b.title AS book_title,
        r.return_date,
        CURDATE() AS Today,
        DATEDIFF(CURDATE(), r.return_date) AS days_overdue,
        DATEDIFF(CURDATE(), r.return_date) * 5 AS penalty_amount
    FROM rental r
    JOIN members m ON r.member_id = m.member_id
    JOIN books b ON r.book_id = b.book_id
    WHERE r.return_date IS NULL AND CURDATE() > r.return_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS get_penalty_charges_report */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE get_penalty_charges_report()
BEGIN
    SELECT 
        m.member_id,
        m.name AS member_name,
        b.book_id,
        b.title AS book_title,
        r.return_date,
        CURDATE() AS Today,
        IF(r.return_date IS NULL, 'Not Returned', 'Returned') AS rental_status,
        IF(r.return_date IS NULL, 
            DATEDIFF(CURDATE(), r.return_date) * 5, 
            DATEDIFF(r.return_date, r.return_date) * 5
        ) AS penalty_amount
    FROM rental r
    JOIN members m ON r.member_id = m.member_id
    JOIN books b ON r.book_id = b.book_id
    WHERE CURDATE() > r.return_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS rent_book */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE rent_book(IN p_memberid INT, IN p_bookid INT)
BEGIN
	DECLARE book_quantity INT;
    DECLARE rented_books_count INT;
    
    SELECT copies_available INTO book_quantity
    FROM books
    WHERE book_id = p_bookid;
    
    IF book_quantity <= 0 THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Insufficient Quantity for the Book';
	ELSE
		SELECT COUNT(*) INTO rented_books_count 
        FROM rental 
        WHERE member_id = p_memberid AND rental_status = 'rented';
        
        IF rented_books_count > 0 THEN
			SIGNAL SQLSTATE '45000' SET message_text = 'Member can only rent one book at a time';
		ELSE 
			INSERT INTO rental (member_id,book_id,rental_date,return_date)
            VALUES (p_memberid, p_bookid, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY)); -- 7 days rental period:
            
			UPDATE books 
			SET copies_available = copies_available - 1 
			WHERE book_id = p_bookid;
			
			SELECT 'Book rented successfully' AS Message;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS unborrowed_books */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=root@localhost PROCEDURE unborrowed_books()
BEGIN
    SELECT 
        b.book_id, 
        b.title, 
        b.copies_available
    FROM books b
    LEFT JOIN rental r ON b.book_id = r.book_id
	WHERE r.book_id IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-30 11:00:05
