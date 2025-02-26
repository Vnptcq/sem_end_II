<<<<<<< HEAD
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: Victory_Center
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `BlogComments`
--

DROP TABLE IF EXISTS `BlogComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogComments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text NOT NULL,
  `comment_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `BlogComments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `BlogPosts` (`post_id`),
  CONSTRAINT `BlogComments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogComments`
--

LOCK TABLES `BlogComments` WRITE;
/*!40000 ALTER TABLE `BlogComments` DISABLE KEYS */;
INSERT INTO `BlogComments` VALUES (2,1,3,'Great tips!','2024-11-14 09:46:17');
/*!40000 ALTER TABLE `BlogComments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPostTags`
--

DROP TABLE IF EXISTS `BlogPostTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogPostTags` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `BlogPostTags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `BlogPosts` (`post_id`),
  CONSTRAINT `BlogPostTags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `BlogTags` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPostTags`
--

LOCK TABLES `BlogPostTags` WRITE;
/*!40000 ALTER TABLE `BlogPostTags` DISABLE KEYS */;
INSERT INTO `BlogPostTags` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `BlogPostTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPosts`
--

DROP TABLE IF EXISTS `BlogPosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogPosts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `BlogPosts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPosts`
--

LOCK TABLES `BlogPosts` WRITE;
/*!40000 ALTER TABLE `BlogPosts` DISABLE KEYS */;
INSERT INTO `BlogPosts` VALUES (1,1,'Top Programming Tips','Content of the post','http://example.com/image.jpg','2024-11-14 09:45:44','2024-11-14 09:45:44'),(2,1,'Top Programming Tips','Content of the post','http://example.com/image.jpg','2024-11-14 09:46:03','2024-11-14 09:46:03');
/*!40000 ALTER TABLE `BlogPosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogTags`
--

DROP TABLE IF EXISTS `BlogTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogTags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogTags`
--

LOCK TABLES `BlogTags` WRITE;
/*!40000 ALTER TABLE `BlogTags` DISABLE KEYS */;
INSERT INTO `BlogTags` VALUES (1,'Java','Posts about Java programming'),(2,'Tips','General programming tips');
/*!40000 ALTER TABLE `BlogTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES 
(1, 'kids', 'Courses designed for children to learn basic English skills through fun and interactive activities.'),
(2, 'teenages', 'Courses tailored for teenagers, focusing on grammar, vocabulary, and communication skills.'),
(3, 'adults', 'English courses for adults to improve general or professional language proficiency.'),
(4, 'ielts', 'Specialized courses to prepare students for the IELTS exam, covering all four test sections.'),
(5, 'toeic', 'Focused courses to help learners succeed in the TOEIC test, emphasizing workplace English skills.');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Certificates`
--

DROP TABLE IF EXISTS `Certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Certificates` (
  `certificate_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `issued_date` timestamp NULL DEFAULT NULL,
  `certificate_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`certificate_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `Certificates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `Certificates_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certificates`
--

LOCK TABLES `Certificates` WRITE;
/*!40000 ALTER TABLE `Certificates` DISABLE KEYS */;
INSERT INTO `Certificates` VALUES (1,3,1,'2024-11-14 09:35:19','http://example.com/certificates/java_certificate.pdf');
/*!40000 ALTER TABLE `Certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salaries`
--

DROP TABLE IF EXISTS `Salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salaries` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `base_salary` decimal(10,2) NOT NULL,
  `bonus` decimal(10,2) DEFAULT '0.00',
  `deductions` decimal(10,2) DEFAULT '0.00',
  `payment_date` date NOT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `Salaries_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salaries`
--

LOCK TABLES `Salaries` WRITE;
/*!40000 ALTER TABLE `Salaries` DISABLE KEYS */;
INSERT INTO `Salaries` VALUES (1,2,3000.00,500.00,100.00,'2024-11-14');
/*!40000 ALTER TABLE `Salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VideoProgress`
--

DROP TABLE IF EXISTS `VideoProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VideoProgress` (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `video_id` int NOT NULL,
  `time_spent` int DEFAULT '0',
  `progress_percentage` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`progress_id`),
  KEY `user_id` (`user_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `VideoProgress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `VideoProgress_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `course_videos` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VideoProgress`
--

LOCK TABLES `VideoProgress` WRITE;
/*!40000 ALTER TABLE `VideoProgress` DISABLE KEYS */;
INSERT INTO `VideoProgress` VALUES (1,3,1,600,50.00);
/*!40000 ALTER TABLE `VideoProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1),(2,2),(3,16),(4,29);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_courses`
--

DROP TABLE IF EXISTS `cart_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_courses` (
  `cart_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_courses`
--

LOCK TABLES `cart_courses` WRITE;
/*!40000 ALTER TABLE `cart_courses` DISABLE KEYS */;
INSERT INTO `cart_courses` VALUES (1,4),(1,5),(1,6),(2,4),(2,5),(2,6),(2,1),(16,2),(16,3),(16,4);
/*!40000 ALTER TABLE `cart_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_reviews`
--

DROP TABLE IF EXISTS `course_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `review_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `course_reviews_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `course_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_reviews`
--

LOCK TABLES `course_reviews` WRITE;
/*!40000 ALTER TABLE `course_reviews` DISABLE KEYS */;
INSERT INTO `course_reviews` VALUES (1,1,3,5,'Great course!','2024-11-14 09:35:19'),(2,2,3,4,'Informative content.','2024-11-14 09:35:19'),(3,1,2,3,'greatest','2024-11-14 09:35:30'),(4,1,1,5,'Amazing course!','2024-11-14 09:35:19'),(5,2,1,4,'Very informative.','2024-11-15 10:30:00'),(6,3,2,3,'Needs improvement.','2024-11-16 11:20:15'),(7,1,2,5,'Best course ever!','2024-11-17 08:45:00'),(8,3,3,2,'Not up to the mark.','2024-11-18 13:55:10'),(9,2,1,5,'Excellent materials!','2024-11-19 09:15:25'),(10,1,3,4,'Well explained.','2024-11-20 14:40:30'),(11,2,2,5,'Highly recommend!','2024-11-21 12:10:45'),(12,3,1,3,'Decent content.','2024-11-22 07:30:55'),(13,1,2,4,'Good practice examples.','2024-11-23 18:00:00');
/*!40000 ALTER TABLE `course_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_videos`
--

DROP TABLE IF EXISTS `course_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_videos` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `order_in_course` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `CourseVideos_ibfk_1_idx` (`lesson_id`),
  CONSTRAINT `fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_videos`
--

LOCK TABLES `course_videos` WRITE;
/*!40000 ALTER TABLE `course_videos` DISABLE KEYS */;
INSERT INTO `course_videos` VALUES 
(101,1,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/by1QAoRcc-U?si=8QS8LH45D1XxZ_5m&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(102,2,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/xjnlymFLSdM?si=DHa_NiKEv6yymFe_&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(103,3,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/ybt2jhCQ3lA?si=hO6ob6DWbNyLsnkQ&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(104,4,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/CA6Mofzh7jo?si=GTEC3C9ofFjNTZwS&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(105,5,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/RKCxrbuKNx8?si=1d2EaDyqfwbrUD2a&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(106,6,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/A0_5XwajbrA?si=ZiJ8Dx_i6aP8YlpH&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(107,7,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/pmgkj01uUTw?si=7UHZawtd9x8A7SCm&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(108,8,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/6fvJUPh28Ow?si=qb_2Egd2_QPEsF9S&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(201,9,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/Fw0rdSHzWFY?si=0GiiowNPXeSzZm3l&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(202,10,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/cs81UdOc9TU?si=W2UnU7tSbPTgkFvV&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(203,11,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/FoOZwLvVK78?si=T_EdprZ7RbM1BJsG&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(204,12,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/ZFjfUnRWmUg?si=WkFMM_QB8kgGIqXK&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(205,13,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/yezpvLy6eRM?si=ZRzucSUfKFN1YJqW&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(206,14,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/z595z_DmpmQ?si=vVVL2q84PtmUr2kz&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(207,15,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/b5vAlBp6YGg?si=bdJf5If5lKdBXUyp&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(208,16,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/2pk3luzDleU?si=x0LikxpvM2RmOXAl&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(301,17,'Middle School English Mastery','https://www.youtube.com/embed/UnEmEbWytI8?si=rcczeYFTA44EukqK&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(302,18,'Middle School English Mastery','https://www.youtube.com/embed/zHWtWOIn3RY?si=_Q9ntoqXtqFPnBUZ&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(303,19,'Middle School English Mastery','https://www.youtube.com/embed/pEugHaQl80o?si=90T6GmOO_qMh5tL1&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(304,20,'Middle School English Mastery','https://www.youtube.com/embed/Fc8X4SAjJeo?si=vtHI30Jmm9yK7SQF&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(305,21,'Middle School English Mastery','https://www.youtube.com/embed/f7KX1AwgZ3w?si=3pL3Vpg0ZfSODljC&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(306,22,'Middle School English Mastery','https://www.youtube.com/embed/CkwcvqqEO3E?si=zKuwaijGfmg2l-jy&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(307,23,'Middle School English Mastery','https://www.youtube.com/embed/8WDVTU701FY?si=aU2aF4A4ildGFuCp&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(308,24,'Middle School English Mastery','https://www.youtube.com/embed/pI5JNcQm6s0?si=oS8k5woSlrAS6W-z&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(401,25,'High School English Success','https://www.youtube.com/embed/EkqpxBsiwJA?si=pv2YA2ols25RBSHN&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(402,26,'High School English Success','https://www.youtube.com/embed/tgVtVoxzwDI?si=9NIJUEogLPJDb2Z9&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(403,27,'High School English Success','https://www.youtube.com/embed/dgqFsUAuP24?si=Pc-O9VkS9mZ5PyV6&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(404,28,'High School English Success','https://www.youtube.com/embed/InwUQgGhwRU?si=-s-5XHdbxt2P-V3g&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(405,29,'High School English Success','https://www.youtube.com/embed/4rE64EAIGt4?si=3pyBUPYsa8ndhx37&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(406,30,'High School English Success','https://www.youtube.com/embed/YOmC5Tyk-nU?si=nEogF06rSahooDba&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(407,31,'High School English Success','https://www.youtube.com/embed/2Lkb7OSRdGE?si=Ceab3Hq5m7pmtC04&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(408,32,'High School English Success','https://www.youtube.com/embed/Oa7ntoCf8yU?si=IO-iEMTs-eamPRq9&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(501,33,'Academic English for College Readiness','https://www.youtube.com/embed/bMEMqjrupHk?si=Yh7n36lbIWoj2S-A&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(502,34,'Academic English for College Readiness','https://www.youtube.com/embed/nUNc3SrCBSg?si=PLyTgAfg1dBbJcUL&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(503,35,'Academic English for College Readiness','https://www.youtube.com/embed/f929vOwODJs?si=IwltdxHPJbyZT8En&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(504,36,'Academic English for College Readiness','https://www.youtube.com/embed/Bhx4mi649YQ?si=OfYQ6y70yDzYHpJZ&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(505,37,'Academic English for College Readiness','https://www.youtube.com/embed/gmfc0rH9Lpg?si=y7vQrLJaqhv3IM6r&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(506,38,'Academic English for College Readiness','https://www.youtube.com/embed/dbKjqkA9BXc?si=jZdA7_nhdYkkWzXF&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(507,39,'Academic English for College Readiness','https://www.youtube.com/embed/W7BW9gv_OkU?si=wMxwzenA9FLSV6cY&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(508,40,'Academic English for College Readiness','https://www.youtube.com/embed/xl-nuzBnRLU?si=F5tHwTd_8ymvADds&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(601,41,'Professional English for the Workplace','https://www.youtube.com/embed/UHCgzff8X3U?si=qA2Q691oQ5Wkvq--&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(602,42,'Professional English for the Workplace','https://www.youtube.com/embed/aO3Det4ir8U?si=ewWMrHyUqOAwA9Nk&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(603,43,'Professional English for the Workplace','https://www.youtube.com/embed/CAU2zx2Ri_M?si=yR7CX0pehhg0l-NK&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(604,44,'Professional English for the Workplace','https://www.youtube.com/embed/fm6PtyM4qMw?si=vMi7JvfoBTcmgGiR&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(605,45,'Professional English for the Workplace','https://www.youtube.com/embed/860LtRxP3rw?si=uItIuInXi5iQOBjK&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(606,46,'Professional English for the Workplace','https://www.youtube.com/embed/IesWWZEh604?si=zCKTOI-1eyEazmys&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(607,47,'Professional English for the Workplace','https://www.youtube.com/embed/ODgy-wY0WhU?si=G47jPt08JJdIvaX0&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(608,48,'Professional English for the Workplace','https://www.youtube.com/embed/oXEanzlcoPg?si=NrOCEcP0l05hRw7c&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(701,49,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/awIXN5LgWKY?si=5UrMpvNE911qJAFE&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(702,50,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/pZR5Ox8duog?si=3D4QTwZfyw0L3sH1&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(703,51,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/9YoWeSJc2wU?si=FYoSTWC7Ul7xcEGf&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(704,52,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/DPaU8kYS3mI?si=tHJVjJ-wnItFs2cm&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(705,53,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/EK-S1dj6QK8?si=oy785Udp80BGFBq2&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(706,54,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/6LFjVC3cHjI?si=P_q6yRKZe2kkRSEJ&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(707,55,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/AGGqhJoSnko?si=ZMGA0Ohv_maGP6vg&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(708,56,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/CPdFoNsefaE?si=BH0kQ8vtomswdvGe&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(801,57,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/DfWkxpdOEP8?si=P0lNiW1r3tYMFP1l&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(802,58,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/pZR5Ox8duog?si=urJL9YYOKU9mInDO&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(803,59,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/KLKZdMo7cLE?si=xAZvAYDuXGMrtYac&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(804,60,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/flthk8SNiiE?si=5hHeklKM1SdI6cMu&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(805,61,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/bEPRxLzDiyo?si=IhLjE86OgwpEm-Z2&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(806,62,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/XeSO0pUr2yg?si=o2krl7el1gVKSNud&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(807,63,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/Li-gB_FUiFI?si=3MBa4HzLA1b_Lgvb&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(808,64,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/s2M1t-pHJcc?si=nWSpQe3mHMoljrMA&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(901,65,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/NG44swIzykA?si=67XyYp2VQj_ai8n1&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(902,66,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/h8z4HWTblw8?si=6TvZujiAeb5xoSHK&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(903,67,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/DzHK4_sOm0o?si=d2T0e-VI0khi6A8G&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(904,68,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/D5sNRn9p8RQ?si=nhhp6cad6y5dh33l&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(905,69,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/560sfA1YhaY?si=ftVdCReOuRfrPRH-&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(906,70,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/kHePysoZN2Y?si=fCjfgxTRky4V4BYO&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(907,71,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/X9OSCGVU3x8?si=ZOdIum8QU-MaQQw1&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(908,72,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/9M_oYH6p85g?si=Kqlpq7ttv6QkWvCp&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1001,73,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/Ixf9ySuIHjg?si=Rk0_ctCHOKonvCCk&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1002,74,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/Wb0G0Ht9TqE?si=IztSHN2aUp1gk9CN&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1003,75,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/p0u0-TZf_lU?si=mmYhqiQqJiljklIu&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1004,76,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/XHbwcSimTEA?si=q286nMfuHYIU32WC&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1005,77,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/gRkhIq7yed0?si=npn0I4gcQTHp5fQY&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(1006,78,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/teGrsuPeTNw?si=d3vNccm1OPEWVXMT&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1007,79,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/SuKuN59TzNY?si=2Xe7f5Rk_Ijgvjgv&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1008,80,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/wzYyO4YRYIE?si=4EhOeTe-ZCnkqUNH&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1101,81,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/xWq0SfhZrFQ?si=cLDH9UnaIHiyHlXI&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1102,82,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/VumxAXtd-1E?si=h02dyZVcUu8wy0bc&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1103,83,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/3OgYAkN7vGE?si=TV1VcrhTbWNX4p8F&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1104,84,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/rS8f1MifvjE?si=uC5zMZ-SR7E5Ptq2&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1105,85,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/ylil8UGfOwE?si=nmKaPReNMTVDbrcJ&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(1106,86,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/4O-EeACTFRM?si=Q4wRzB6MC2-iBWp1&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1107,87,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/CgEHrCnPf0A?si=SXU6a2OAgsYOPmki&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1108,88,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/58fTwqX39HY?si=DEhqwcPzRn3kCtHz&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1201,89,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/7wL9XFkzEiw?si=SrB7KVBY6QkTC3Yb&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1202,90,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/UFvUnF5pY2Y?si=oJD3L1gUnkZNA2rI&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1203,91,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/nTzEq-iz_uA?si=GCKtFhLG70wPppZ4&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1204,92,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/e2f6n2b_Ixk?si=cBreB5ivYkXd1sFM&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1205,93,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/q6uUsLNaIBY?si=DGGl6c5LN6ARaAz6&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(1206,94,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/9M_oYH6p85g?si=VUOKESl1h6Y2Dxic&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1207,95,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/SsWB9x-Ph-M?si=O7pyY30d7bg6CqXE&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1208,96,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/gqUgdABxQIA?si=guT4Vnsb3GH1A9cW&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28');
/*!40000 ALTER TABLE `course_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `level` varchar(50) DEFAULT 'beginner',
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skill` varchar(45) NOT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `teacher_id` int NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES 
(1,'Early English Explorers (Ages 3-6)','This course introduces young learners to the basics of English in a fun and engaging way. Through interactive activities, songs, and games, children will develop essential listening and speaking skills, building a strong foundation for their language journey.','beginner',150,'kids','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',16,
'https://i.pinimg.com/1200x/ff/8e/e7/ff8ee7249edba64d921c8b716796d5d0.jpg','https://i.pinimg.com/736x/eb/bd/09/ebbd093dc8a3060fe644f7d34d23c5f9.jpg',NULL),
(2,'Fun English Adventures (Ages 6-12)','Designed for curious minds, this course helps children expand their vocabulary and improve their grammar through stories, interactive lessons, and creative projects. Perfect for boosting confidence and preparing for school-level English.','beginner',200,'kids','Coming Soon','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',16,
'https://i.pinimg.com/1200x/6b/84/ae/6b84aee046b8d4bf6b34b262a52e33d3.jpg','https://i.pinimg.com/736x/eb/bd/09/ebbd093dc8a3060fe644f7d34d23c5f9.jpg',NULL),
(3,'Middle School English Mastery','This course equips middle school students with the skills they need to excel in reading, writing, and speaking English. Focused on academic and practical use, it builds a solid base for higher education and everyday communication.',
'intermediate',250,'teenages','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','3',16,
'https://i.pinimg.com/1200x/2f/ad/99/2fad9966e9aa7dd9053d3a3497ea640f.jpg','https://i.pinimg.com/736x/c1/0d/17/c10d1709dd6c38aac957c51be661565f.jpg',NULL),
(4,'High School English Success',
'Tailored for high schoolers, this course sharpens critical reading, writing, and analytical skills. Students will gain confidence in tackling exams and assignments while preparing for future academic and career challenges.',
'intermediate',300,'teenages','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','4',0,
'https://i.pinimg.com/1200x/a2/f8/06/a2f806918b762f5f740c8874857048b1.jpg','https://i.pinimg.com/736x/c1/0d/17/c10d1709dd6c38aac957c51be661565f.jpg',NULL),
(5,'Academic English for College Readiness',
'This course is ideal for students preparing for university-level studies. It focuses on academic writing, research skills, and advanced vocabulary, ensuring students can excel in their coursework and presentations.',
'intermediate',350,'teenages','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','5',0,
'https://i.pinimg.com/1200x/c6/0c/24/c60c2402f6fe5f012e815b987adebf4f.jpg','https://i.pinimg.com/736x/c1/0d/17/c10d1709dd6c38aac957c51be661565f.jpg',NULL),
(6,'Professional English for the Workplace',
'Perfect for professionals, this course hones communication skills essential for emails, meetings, and presentations. Learn how to express yourself clearly and confidently in any professional setting.',
'intermediate',400,'adults','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',0,
'https://i.pinimg.com/1200x/3a/62/27/3a62275b2108939cb2ba6a0f7831e921.jpg','https://i.pinimg.com/736x/91/50/0a/91500acfb4576b1f89a276782b0ea6ef.jpg',NULL),
(7,'IELTS Band 5.0 - Build Your Basics',
'Start your IELTS journey with this foundational course. Focused on basic grammar, vocabulary, and strategies, it helps you reach the 5.0 band with confidence in all four test sections',
'beginner',150,'ielts','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',0,
'https://i.pinimg.com/1200x/87/72/bb/8772bba4fb10abd8963a836c19f015ed.jpg','https://i.pinimg.com/736x/a5/11/15/a511155dd4ab57b9f73fd3ac8760b525.jpg',NULL),
(8,'IELTS Band 6.5 - Step Towards Success',
'Prepare to achieve a competitive IELTS score with this course. It emphasizes effective techniques for listening, reading, writing, and speaking, ensuring you meet the requirements for academic or work opportunities.',
'intermediate',250,'ielts','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','3',0,
'https://i.pinimg.com/1200x/bd/61/e4/bd61e44020839b3686ce0bf1f7fc4c66.jpg','https://i.pinimg.com/736x/a5/11/15/a511155dd4ab57b9f73fd3ac8760b525.jpg',NULL),
(9,'IELTS Band 8++ - Achieve Excellence',
'Target the highest IELTS bands with this advanced course. Designed for top scorers, it provides in-depth practice, expert tips, and personalized feedback to help you excel in every section of the test.',
'advanced',400,'ielts','Coming Soon','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','4',0,
'https://i.pinimg.com/1200x/8d/b4/51/8db451df16fcaf0ae4f77b5a2de0d711.jpg','https://i.pinimg.com/736x/a5/11/15/a511155dd4ab57b9f73fd3ac8760b525.jpg',NULL),
(10,'TOEIC 605-780 - Master Basic Communication',
'This course helps learners build confidence in handling basic workplace communication. Improve your listening and reading skills to meet the requirements of limited working proficiency.',
'beginner',150,'toeic','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','5',0,
'https://i.pinimg.com/1200x/8f/7e/03/8f7e035d83201dc93041e52a11eca899.jpg','https://i.pinimg.com/736x/e9/0c/ba/e90cbaa0eb5abe80d48a87d606ea9f5a.jpg',NULL),
(11,'TOEIC 785-900 - Advance to Professional Level',
'Aimed at professionals, this course focuses on effective communication for most work situations. Strengthen your English to meet expectations with accuracy and clarity.',
'intermediate',250,'toeic','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','1',0,
'https://i.pinimg.com/1200x/59/75/02/597502f7c92ead7e17393928429ece43.jpg','https://i.pinimg.com/736x/e9/0c/ba/e90cbaa0eb5abe80d48a87d606ea9f5a.jpg',NULL),
(12,'TOEIC 905-990 - Excel in Global Communication',
'Master English for international proficiency with this advanced course. Develop the skills to communicate confidently and effectively in any global professional environment.',
'advanced',400,'toeic','Coming Soon','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','2',0,
'https://i.pinimg.com/1200x/14/cd/b6/14cdb68c7bcaa83c8bafbf817a869744.jpg','https://i.pinimg.com/736x/e9/0c/ba/e90cbaa0eb5abe80d48a87d606ea9f5a.jpg',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `enrollment_date` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  PRIMARY KEY (`enrollment_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,16,1,'2024-11-14 09:35:19','active'),(2,16,2,'2024-11-14 09:35:19','active'),(3,16,4,'2024-12-02 19:39:13','active'),(4,16,5,'2024-12-02 19:39:13','active'),(50,16,6,'2024-12-08 14:27:54','active'),(51,16,7,'2024-12-08 14:27:54','active'),(52,16,8,'2024-12-08 14:27:54','active');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_progress`
--

DROP TABLE IF EXISTS `learning_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_progress` (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `course_video_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`progress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_progress`
--

LOCK TABLES `learning_progress` WRITE;
/*!40000 ALTER TABLE `learning_progress` DISABLE KEYS */;
INSERT INTO `learning_progress` VALUES (1,1,16,'done');
/*!40000 ALTER TABLE `learning_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `lesson_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `order_in_course` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES 
(1,1,'Hello, English!',
'Start your journey into English with this fun-filled lesson where learners explore basic greetings like "Hi" and "Hello." Through songs, games, and roleplay, young learners will build confidence in saying their first English words while making new friends.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(2,1,'Colors and Shapes Around Us',
'Discover the vibrant world of colors and shapes! In this lesson, children will learn to identify and name common colors and shapes through interactive games, hands-on activities, and creative drawings.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(3,1,'Animals We Love',
'Meet your favorite animals and learn what they say! This lesson introduces common animal names and their sounds through exciting stories, matching games, and playful sound activities.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(4,1,'Counting with Fun',
'Numbers become exciting in this interactive lesson where kids practice counting from 1 to 10. Through songs, games, and hands-on activities, they’ll develop their numerical skills and build confidence in basic math concepts.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(5,1,'My Family and Friends',
'Celebrate the people you love! In this heartwarming lesson, learners will talk about their family members and friends using simple English words. They’ll create family trees, share stories, and build meaningful connections.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(6,1,'Weather and Seasons',
'Explore sunny skies, rainy days, and snowy winters in this imaginative lesson on weather and seasons. Kids will learn to describe different weather conditions and seasons through fun flashcards, songs, and storytelling.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(7,1,'Let’s Play with Actions',
'Get moving and learn action words like "run," "jump," and "clap"! This energetic lesson combines language learning with physical activities, helping kids associate English verbs with actions through games, songs, and group play.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(8,1,'Storytime Adventures',
'Dive into the magical world of storytelling! This lesson engages young minds with classic tales and interactive storytelling. Kids will listen, act out, and retell stories, boosting their imagination and comprehension skills.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(9,2,'Let’s Introduce Ourselves',
'Kickstart your English learning by practicing how to introduce yourself and get to know others! This lesson focuses on simple self-introductions, sharing your name, age, and where you are from, making it easy to connect with classmates.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(10,2,'Fun with Numbers and Time',
'Master the basics of numbers and telling the time in this engaging lesson. Through games, songs, and hands-on activities, learners will confidently count and talk about time like true pros.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(11,2,'Adventures in the Animal Kingdom',
'Embark on a journey to explore the exciting world of animals! This lesson introduces learners to the names, sounds, and fun facts about animals, encouraging curiosity and imagination.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(12,2,'Discovering the World Around Us',
'Learn about the wonders of nature, weather, and the environment! This lesson teaches simple phrases and vocabulary to describe the world, seasons, and weather through creative storytelling and activities.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(13,2,'My Favorite Hobbies',
'What do you love to do? This lesson helps learners talk about their favorite hobbies and interests, from playing sports to drawing pictures, using simple sentences and engaging vocabulary.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(14,2,'Simple Stories, Big Ideas',
'Step into the world of storytelling! In this lesson, learners explore short, easy-to-understand stories while building vocabulary, comprehension, and creativity through discussions and retelling activities.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(15,2,'Let’s Write and Share',
'Discover the joy of writing in English! This lesson focuses on expressing thoughts in simple sentences and paragraphs, encouraging learners to write about their experiences and share with their peers.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(16,2,'Making New Friends in English',
'Build connections and practice conversational English with this fun lesson on making friends. Learners will practice greetings, asking questions, and talking about themselves in friendly, interactive activities.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(17,3,'Grammar Basics: Nouns, Verbs, and Adjectives',
'Learn the foundation of English grammar in this essential lesson. Through fun activities and clear examples, students will master the basic building blocks of sentences: nouns, verbs, and adjectives, enabling them to create more meaningful sentences.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(18,3,'Writing Short Stories',
'Unleash your creativity and dive into storytelling! This lesson guides students through the process of writing short stories, from brainstorming ideas to crafting a clear beginning, middle, and end.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(19,3,'Exploring Descriptive Writing',
'Bring your writing to life! In this lesson, students will learn to use vivid adjectives and sensory details to describe people, places, and events, enhancing their ability to paint pictures with words.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(20,3,'Understanding Paragraph Structure',
'Build strong paragraphs with confidence. This lesson covers how to write clear topic sentences, support them with details, and conclude effectively, ensuring students can organize their ideas logically.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(21,3,'Speaking with Confidence',
'Develop fluency and confidence in spoken English! This lesson focuses on pronunciation, tone, and conversational skills, helping students engage in everyday conversations with ease and poise.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(22,3,'Reading Comprehension Made Easy',
'Boost your understanding of written texts! In this lesson, students will practice strategies to identify key ideas, find supporting details, and make inferences, improving their reading comprehension skills.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(23,3,'The Power of Persuasion',
'Master the art of persuasion! This lesson teaches students how to present compelling arguments, use persuasive language, and support their opinions with evidence in both speech and writing.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(24,3,'Everyday English Expressions',
'Learn the phrases native speakers use every day! This lesson introduces common idioms, expressions, and conversational phrases, enabling students to sound more natural in casual conversations.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(25,4,'Advanced Grammar in Action',
'Take your grammar skills to the next level! In this lesson, students will explore advanced grammatical structures such as conditional sentences, passive voice, and complex sentence constructions, enhancing their ability to express ideas clearly and accurately in both speech and writing.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(26,4,'Crafting Essays with Impact',
'Learn the art of writing persuasive and impactful essays. This lesson teaches students how to organize their ideas into well-structured essays, focusing on introduction, body paragraphs, and conclusion, while using compelling arguments and strong evidence to make their writing stand out.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(27,4,'Analyzing Texts Like a Pro',
'Develop the skills of a critical reader! This lesson equips students with strategies to analyze texts deeply, focusing on identifying themes, tone, literary devices, and the author"s purpose, allowing them to interpret and discuss texts with insight and confidence.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(28,4,'Debates and Discussions',
'Engage in thought-provoking debates and discussions! In this lesson, students will learn how to formulate arguments, express opinions clearly, and respond to opposing viewpoints in a respectful and persuasive manner, improving both their speaking and critical thinking skills.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(29,4,'Writing Formal Letters and Emails',
'Master the art of professional communication! This lesson covers the essential techniques for writing formal letters and emails, focusing on tone, structure, and etiquette, ensuring students can communicate effectively in academic or workplace settings.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(30,4,'Preparing for Public Speaking',
'Become a confident public speaker! This lesson helps students develop the skills needed for effective presentations, including voice control, body language, and audience engagement, preparing them to speak with confidence in front of any audience.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(31,4,'Unlocking Academic Vocabulary',
'Expand your academic vocabulary! In this lesson, students will learn key academic words and phrases that will help them excel in reading, writing, and speaking in academic contexts, boosting their ability to express complex ideas clearly.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(32,4,'Critical Thinking in Writing',
'Sharpen your writing with critical thinking! This lesson teaches students how to analyze information, question assumptions, and construct well-reasoned arguments, enabling them to write persuasive, thoughtful essays and reports.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(33,5,'Writing for Academic Success',
'Set the foundation for academic excellence! This lesson teaches students the skills needed to write clear, organized, and well-researched academic papers. It focuses on structure, argument development, and using evidence effectively to support ideas.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(34,5,'Mastering Research Papers',
'Become a research expert! This lesson walks students through the process of writing a research paper, from selecting a topic and gathering sources to crafting a strong thesis and organizing findings into a cohesive argument.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(35,5,'Complex Sentences Made Simple',
'Make complex sentences easy to understand! This lesson breaks down advanced sentence structures, such as compound and complex sentences, helping students combine ideas effectively and write with clarity and sophistication.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(36,5,'Citing Sources Correctly',
'Learn how to give credit where it is due! This lesson covers the essentials of proper citation formats (APA, MLA, Chicago, etc.), ensuring students can cite sources accurately and avoid plagiarism in academic writing.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(37,5,'Effective Presentation Skills',
'Speak like a pro in front of any audience! This lesson provides tips and techniques to help students improve their presentation skills, including structuring a presentation, using visual aids, managing stage fright, and engaging the audience.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(38,5,'Debating and Critical Analysis',
'Sharpen your debating and critical thinking skills! This lesson focuses on how to present and defend arguments, analyze different perspectives, and think critically about complex issues, preparing students for debates and discussions in academic settings.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(39,5,'Expanding Your Vocabulary',
'Boost your academic vocabulary! This lesson introduces students to new words and phrases commonly used in academic writing, helping them articulate ideas more clearly and precisely. Students will also learn strategies for retaining and using new vocabulary effectively.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(40,5,'Common Academic Pitfalls',
'Avoid the traps that hinder academic success! This lesson highlights common mistakes students make in academic writing, such as weak thesis statements, improper use of sources, and poor organization, and teaches strategies to overcome them.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(41,6,'Introducing Yourself in a Professional Setting',
'Make a lasting first impression! This lesson teaches students how to introduce themselves confidently in a professional environment, covering key phrases and strategies for introducing yourself to colleagues, clients, and superiors in various business settings.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(42,6,'Writing Emails That Matter',
'Master the art of professional email communication! This lesson focuses on writing clear, concise, and polite emails for different business scenarios, from requesting information to making formal requests and responding to inquiries effectively.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(43,6,'Mastering the Art of Small Talk',
'Build rapport and strengthen professional relationships! This lesson explores how to engage in small talk at work, offering students the tools and confidence to discuss light topics like the weather, current events, or workplace happenings, making it easier to connect with colleagues.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(44,6,'Conducting Effective Meetings',
'Run meetings that get results! This lesson teaches students how to plan, structure, and lead meetings effectively, covering the essentials of agenda-setting, time management, facilitating discussions, and ensuring productive outcomes.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(45,6,'Presenting Ideas Confidently',
'Present your ideas with impact! This lesson helps students develop public speaking skills for the workplace, including techniques for organizing thoughts, managing nerves, and delivering presentations clearly and persuasively to any audience.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(46,6,'Problem-Solving in Teams',
'Tackle challenges together! In this lesson, students will learn strategies for effective team problem-solving, including brainstorming, evaluating solutions, and collaborating on projects to reach the best possible outcome in a group setting.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(47,6,'Handling Workplace Challenges',
'Navigate difficult situations with confidence! This lesson focuses on common workplace challenges, such as conflicts with coworkers, dealing with deadlines, and managing stress, offering practical strategies for overcoming obstacles and maintaining professionalism.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(48,6,'Global Business Etiquette',
'Do business across cultures with ease! This lesson introduces students to the cultural differences in business practices around the world, helping them understand the importance of respect, communication, and customs in a global business environment to build stronger international relationships.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(49,7,'English Sounds and Pronunciation Tips',
'Perfect your pronunciation and sound more natural! This lesson focuses on understanding and practicing the sounds of English, including tricky vowels and consonants, and provides tips to help students improve their accent and pronunciation for clearer communication.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(50,7,'Building Everyday Vocabulary',
'Expand your vocabulary with words you will use every day! This lesson helps students learn essential words and phrases related to common daily activities, from shopping to dining, equipping them with the vocabulary to handle everyday situations confidently',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(51,7,'Listening for Key Information',
'Develop strong listening skills! This lesson teaches students how to listen actively and extract important information from conversations, interviews, or short talks, improving their ability to understand spoken English in a variety of contexts',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(52,7,'Crafting Simple Sentences',
'Start building your English sentences with ease! This lesson guides students through the process of forming simple sentences, focusing on structure, word order, and the use of basic verbs, adjectives, and nouns to create clear, grammatically correct statements.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(53,7,'Talking About Yourself and Hobbies',
'Express yourself and your interests in English! In this lesson, students learn how to talk about their personal life, including hobbies, interests, and daily activities, using simple sentences and key vocabulary to share about themselves with others.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(54,7,'Writing Short Notes and Messages',
'Learn to write clear and concise messages! This lesson covers how to write brief and effective notes, whether for a quick reminder, an invitation, or a thank-you message, focusing on structure and tone appropriate for different situations.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(55,7,'Understanding Short Passages',
'Improve your reading comprehension skills! This lesson helps students practice reading short passages and answering questions related to the content, enabling them to identify key ideas and understand texts with greater accuracy.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(56,7,'Speaking Fluently with Confidence',
'Speak with ease and fluency! This lesson focuses on strategies to build confidence in speaking, including exercises to improve pronunciation, sentence construction, and smooth flow of conversation, helping students speak English confidently in daily interactions.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(57,8,'Expanding Your Vocabulary for IELTS',
'Boost your vocabulary for the IELTS exam! This lesson focuses on expanding your range of academic and everyday vocabulary to improve both your speaking and writing scores. Students will learn how to use precise words and phrases, enhancing their ability to respond to IELTS questions effectively.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(58,8,'Writing a Well-Structured Essay',
'Craft essays that impress! This lesson covers the essential components of writing a strong IELTS essay, from understanding the question to structuring your introduction, body paragraphs, and conclusion. Students will learn how to develop clear arguments and present their ideas logically.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(59,8,'Tackling the Listening Section',
'Conquer the listening section with ease! In this lesson, students will practice listening to various audio recordings, focusing on strategies to identify key information, understand different accents, and answer questions accurately under time pressure.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(60,8,'Reading for Specific Information',
'Sharpen your reading skills for the IELTS! This lesson teaches students how to skim and scan texts effectively to locate specific information, understand the structure of texts, and answer comprehension questions quickly and accurately.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(61,8,'Expressing Opinions in Speaking',
'Give clear, confident responses in the speaking section! This lesson helps students develop the skills to express and support their opinions on various topics, practicing strategies for speaking fluently and coherently under exam conditions.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(62,8,'Improving Sentence Variety',
'Enhance your writing and speaking with varied sentence structures! This lesson teaches students how to use different sentence types—simple, compound, and complex—to improve the clarity and sophistication of their responses in both the speaking and writing sections of the IELTS.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(63,8,'Common Mistakes to Avoid in IELTS',
'Learn from the most common mistakes! In this lesson, students will explore frequent errors made in all sections of the IELTS exam and practice strategies to avoid them, ensuring that they don’t lose points for simple mistakes',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(64,8,'Practice Test Strategies',
'Get ready for the real exam with practice test strategies! This lesson teaches students how to approach IELTS practice tests efficiently, manage time effectively during each section, and analyze their performance to identify areas for improvement before the exam.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(65,9,'Advanced Vocabulary for Top Scores',
'Achieve a higher band score with a rich vocabulary! This lesson focuses on advanced vocabulary techniques, helping students expand their lexical range for the IELTS exam. It covers complex adjectives, phrasal verbs, collocations, and idiomatic expressions to enhance writing and speaking responses.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(66,9,'Writing with Precision and Impact',
'Write essays that stand out! In this lesson, students will learn to write clearly and concisely, focusing on crafting well-developed arguments, using precise vocabulary, and organizing ideas effectively to make a strong impact in the writing section.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(67,9,'Perfecting Your Listening Skills',
'Boost your listening score with targeted strategies! This lesson teaches students how to improve their ability to focus on key details, follow complex audio recordings, and interpret a variety of accents and speech patterns commonly found in the IELTS listening section.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(68,9,'Understanding Complex Texts',
'Tackle challenging reading passages with ease! This lesson helps students develop strategies for understanding dense or complex texts, such as identifying main ideas, finding supporting details, and managing time efficiently during the IELTS reading section.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(69,9,'Mastering the Speaking Cue Card',
'Prepare for the speaking section with confidence! In this lesson, students will practice answering the IELTS speaking cue card, focusing on structuring responses, expanding ideas, and speaking fluently on unfamiliar topics under time pressure.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(70,9,'Linking Ideas in Writing and Speaking',
'Make your speech and writing more cohesive! This lesson focuses on techniques for linking ideas effectively, using transition words, connectors, and cohesive devices to improve the flow and coherence of responses in both writing and speaking.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(71,9,'Grammar Mastery for Excellence',
'Ensure grammatical accuracy in every section! This lesson covers advanced grammar concepts like conditionals, passive voice, and complex sentence structures, helping students avoid common errors and improve their grammar for higher band scores.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(72,9,'Achieving Fluency and Pronunciation',
'Speak naturally and clearly! This lesson provides strategies for improving fluency, reducing hesitation, and mastering pronunciation. Students will practice common sounds, stress patterns, and intonation, enhancing their ability to communicate confidently and intelligibly in the speaking section.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(73,10,'Everyday Vocabulary for Success',
'Build a solid foundation of practical vocabulary! This lesson focuses on essential words and phrases that will help students navigate daily conversations and workplace situations, from greetings to common expressions used in professional settings, ensuring success in both casual and formal contexts.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(74,10,'Making Requests and Suggestions',
'Learn how to make polite requests and offer suggestions in English! This lesson teaches students the appropriate phrases and structures to use when asking for help, making recommendations, or suggesting ideas in both formal and informal settings.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(75,10,'Writing Simple Emails',
'Write clear and concise emails! This lesson covers the basics of professional email writing, including how to structure a simple email, use polite language, and convey messages effectively while maintaining a professional tone in various contexts.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(76,10,'Understanding Short Conversations',
'Improve your listening comprehension skills! In this lesson, students practice understanding short conversations, focusing on identifying key points, main ideas, and important details, helping them feel more confident when listening to conversations in everyday or work-related contexts.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(77,10,'Listening for Directions and Instructions',
'Master the art of following directions! This lesson helps students practice listening carefully for directions and instructions, enabling them to understand and respond to verbal cues accurately, whether in the workplace, while traveling, or in daily life.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(78,10,'Reading Workplace Notices',
'Enhance your reading comprehension at work! In this lesson, students learn how to read and interpret workplace notices, announcements, and memos, focusing on identifying key information quickly and understanding the purpose of different types of professional written communication.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(79,10,'Describing Objects and Places',
'Sharpen your descriptive skills! This lesson teaches students how to describe objects, places, and environments clearly and effectively, using relevant vocabulary and adjectives, to help them express themselves with more precision in both written and spoken English.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(80,10,'Basic Grammar for Business',
'Master the essentials of grammar for the workplace! This lesson focuses on key grammar concepts necessary for professional communication, including sentence structure, verb tenses, and subject-verb agreement, helping students communicate clearly and accurately in business settings.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(81,11,'Expanding Business Vocabulary',
'Boost your professional vocabulary! This lesson helps students expand their business-related vocabulary by focusing on key terms and phrases commonly used in the workplace. Students will learn to use specific vocabulary related to finance, marketing, management, and other industries to communicate effectively in business settings.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(82,11,'Writing Clear and Polished Emails',
'Write emails that get results! This lesson teaches students how to write clear, concise, and professional emails for various business contexts, from addressing clients and colleagues to handling requests or providing updates. Students will learn the key components of an email, including tone, structure, and appropriate language.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(83,11,'Listening to Business Meetings',
'Sharpen your listening skills in a business environment! In this lesson, students practice listening to business meetings, focusing on identifying key points, main ideas, and decisions. This will help them understand spoken English in the context of formal discussions, negotiations, and presentations.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(84,11,'Reading Contracts and Reports',
'Develop your reading comprehension for business documents! This lesson guides students through the process of reading and interpreting business contracts, reports, and other formal documents. They will focus on understanding complex legal terms, clauses, and the overall structure of professional documents.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(85,11,'Expressing Ideas in Discussions',
'Communicate your ideas effectively in discussions! In this lesson, students will practice how to express their thoughts clearly during business meetings or group discussions. They will learn how to structure their ideas, make arguments, and respond to others in a polite, professional manner.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(86,11,'Presenting Data and Information',
'Present data with clarity and confidence! This lesson teaches students how to present business data, statistics, and reports effectively. Students will learn how to organize their data, use visual aids, and explain complex information in a simple and understandable way for their audience.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(87,11,'Advanced Grammar in Business Contexts',
'Master advanced grammar for professional communication! This lesson focuses on more complex grammatical structures, such as passive voice, conditional sentences, and advanced tenses, helping students communicate more accurately and effectively in a business environment.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(88,11,'Polishing Pronunciation for Impact',
'Make a powerful impression with clear pronunciation! This lesson helps students refine their pronunciation to ensure clarity in spoken English. Emphasis is placed on intonation, stress, and rhythm to help students sound more confident and professional in business conversations and presentations.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(89,12,'Global English for Professionals',
'Communicate effectively in any international business setting! This lesson focuses on developing the language skills needed to navigate global business environments. Students will learn how to adapt their English for cross-cultural interactions, collaborate with colleagues from different backgrounds, and understand diverse business practices.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(90,12,'Writing Reports with Confidence',
'Write clear, professional reports! This lesson teaches students how to structure and write comprehensive business reports, from outlining findings to making recommendations. It focuses on clarity, precision, and presenting information in a way that is easily understood by decision-makers.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(91,12,'Negotiating in English',
'Negotiate like a pro in English! This lesson covers the essential language and strategies used in business negotiations, from making proposals to handling objections. Students will practice the key phrases and techniques needed to negotiate successfully in international business settings.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(92,12,'Handling Complex Conversations',
'Tackle challenging business conversations with ease! This lesson helps students develop the skills to handle complex and high-pressure conversations, such as difficult negotiations or sensitive discussions, by focusing on active listening, clarifying, and responding diplomatically.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(93,12,'Reading Advanced Business Texts',
'Enhance your ability to understand complex business texts! In this lesson, students will practice reading and interpreting advanced business documents, including financial reports, strategic plans, and market analyses. Emphasis will be placed on analyzing content critically and extracting relevant information efficiently.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(94,12,'Mastering Business Presentations',
'Deliver presentations that leave a lasting impact! This lesson focuses on mastering the art of business presentations. Students will learn to organize their ideas, engage the audience, use visual aids effectively, and present data confidently, ensuring that their ideas are communicated clearly and persuasively.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(95,12,'Cultural Sensitivity in Communication',
'Communicate with respect and understanding across cultures! This lesson focuses on developing cultural awareness in communication, teaching students to recognize cultural differences in business practices and adapt their language and behavior accordingly to build stronger relationships in a global context.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(96,12,'Preparing for TOEIC Excellence',
'Achieve your target TOEIC score! This lesson provides focused strategies for excelling in the TOEIC exam, with practice in all four sections (Listening, Reading, Speaking, and Writing). Students will learn how to manage time effectively, improve test-taking techniques, and maximize their score potential.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_courses`
--

DROP TABLE IF EXISTS `pay_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_courses` (
  `payment_history_id` int NOT NULL,
  `courses_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_courses`
--

LOCK TABLES `pay_courses` WRITE;
/*!40000 ALTER TABLE `pay_courses` DISABLE KEYS */;
INSERT INTO `pay_courses` VALUES (1,1),(1,2),(1,3),(3,1),(3,2),(3,3),(4,4),(4,5),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,6),(9,7),(9,8),(10,6),(10,7),(10,8),(11,6),(11,7),(11,8),(12,6),(12,7),(12,8),(13,6),(13,7),(13,8),(14,6),(14,7),(14,8),(15,6),(15,7),(15,8),(16,6),(16,7),(16,8),(17,6),(17,7),(17,8),(18,6),(18,7),(18,8),(19,6),(19,7),(19,8),(20,6),(20,7),(20,8),(21,6),(21,7),(21,8),(22,6),(22,7),(22,8),(23,6),(23,7),(23,8),(24,6),(24,7),(24,8),(25,6),(25,7),(25,8),(26,6),(26,7),(26,8),(27,6),(27,7),(27,8),(28,6),(28,7),(28,8),(29,9),(30,9),(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),(40,10);
/*!40000 ALTER TABLE `pay_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_history` (
  `payment_history_id` int NOT NULL AUTO_INCREMENT,
  `payment_date` datetime(6) NOT NULL,
  `total_cost` double NOT NULL,
  `status` varchar(45) NOT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_history_id`),
  KEY `payment_idx` (`payment_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
INSERT INTO `payment_history` VALUES (1,'2024-11-14 09:35:19.000000',1500,'success',1),(2,'2024-11-14 09:35:50.000000',3200,'fail',1),(3,'2024-12-02 17:55:39.000000',2000,'success',1),(4,'2024-12-02 19:39:13.000000',2000,'success',1),(27,'2024-12-08 14:27:54.000000',87,'success',1),(28,'2024-12-08 14:43:12.000000',100,'success',1),(29,'2024-12-08 14:46:02.000000',0,'success',1),(30,'2024-12-08 14:46:43.000000',0,'success',1);
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `payment_method_id` int NOT NULL AUTO_INCREMENT,
  `method_name` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_method_id`),
  UNIQUE KEY `method_name` (`method_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (3,'Bank Transfer'),(1,'Credit Card'),(2,'PayPal');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `payment_method_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,16,1);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Teacher'),(3,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_payments`
--

DROP TABLE IF EXISTS `teacher_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `course_id` int NOT NULL,
  `revenue_share` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `teacher_payments_ibfk_3` (`course_id`),
  CONSTRAINT `teacher_payments_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `teacher_payments_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `enrollments` (`enrollment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_payments`
--

LOCK TABLES `teacher_payments` WRITE;
/*!40000 ALTER TABLE `teacher_payments` DISABLE KEYS */;
INSERT INTO `teacher_payments` VALUES (1,2,1,34.99,'2024-11-14');
/*!40000 ALTER TABLE `teacher_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES 
(0,'hayuat1','ducanh2002@example.com','$2a$10$JVznlQGts8Tn81OhPW.4DOSMCwiWbpv03vlHjAwynF/0qa3fLNTzC',2,'2024-11-22 16:52:46'),
(1,'admin1','admin1@example.com','{noop}hashed_password_1',1,'2024-11-14 09:35:19'),
(2,'instructor1','instructor1@example.com','{noop}hashed_password_2',2,'2024-11-14 09:35:19'),
(3,'student1','student1@example.com','{noop}hashed_password_3',1,'2024-11-14 09:35:19'),
(6,'Teacher','Teacher@example.com','{noop}hashed_password_1',1,NULL),
(7,'asd','Teacheadas@example.com','{noop}hashed_password_1',1,NULL),
(10,'hayuta','Teacheada123s@example.com','$2a$10$IZqDwUDRP9mRhX/l2PjH9O4Qq9ZgiWFvK/2yooxidFEkUEcHZEt86',2,'2024-11-14 09:35:19'),
(11,'ducanh14','Student89@example.com','111003',1,'2024-11-14 09:35:19'),
(12,'dingquy','Student123@example.com','$2a$10$k8BcXPDkHvMpevRFJnGiyuyCpfuB93qyhU0Y0fQzjYqgAGl5hHJhS',1,'2024-11-21 20:37:27'),
(14,'dingquyvu','Student12@example.com','111003',1,NULL),
(16,'ducanh','ducanh1412@example.com','$2a$10$JVznlQGts8Tn81OhPW.4DOSMCwiWbpv03vlHjAwynF/0qa3fLNTzC',2,'2024-11-22 16:52:46'),
(19,'opit','opit12345@example.com','$2a$10$vkZjLT1su83O6V4VBVWd2uqxs1Zu2tnto7pjeIEpG/HtZdipaEPuK',3,'2024-12-09 00:25:40'),
(20,'ducanh14','ducanh14@example.com','$2a$10$iZ34exVyXFYD6ZLRV0h00u.E1U7gCEtgmL4dX6NjcRxy/UAoBcNE6',3,'2024-12-09 00:38:21'),
(22,'andeptrai','andeptrai12345@example.com','$2a$10$NymG42ObRiMquCCnkrI3met7DeI8Giv1vkWv2ittVVu2DiG9ItG4G',3,'2024-12-09 00:52:02'),
(23,'opit','opit@example.com','$2a$10$8kw48eVgdS0qmnSNpRXAP.BiLUow.kEK96KOLu7iDKD3vgPcJErKO',3,'2024-12-09 02:52:44'),
(27,'opit','opit2222@example.com','$2a$10$IQKPGXO7HlPuK/tEHgn.VuTFSkjLXWsC9Q0FbGHUk55uElgNw/nNq',3,'2024-12-09 15:17:21'),
(29,'opit','quy123@example.com','$2a$10$3JG9kHKJftFDr/47Wf7qfek1tyP0qATQ3Fg0viUXDz20fuXStZZRG',3,'2024-12-09 15:50:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Victory_Center'
--

--
-- Dumping routines for database 'Victory_Center'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 12:04:22
=======
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: Victory_Center
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `BlogComments`
--

DROP TABLE IF EXISTS `BlogComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogComments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text NOT NULL,
  `comment_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `BlogComments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `BlogPosts` (`post_id`),
  CONSTRAINT `BlogComments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogComments`
--

LOCK TABLES `BlogComments` WRITE;
/*!40000 ALTER TABLE `BlogComments` DISABLE KEYS */;
INSERT INTO `BlogComments` VALUES (2,1,3,'Great tips!','2024-11-14 09:46:17');
/*!40000 ALTER TABLE `BlogComments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPostTags`
--

DROP TABLE IF EXISTS `BlogPostTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogPostTags` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `BlogPostTags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `BlogPosts` (`post_id`),
  CONSTRAINT `BlogPostTags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `BlogTags` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPostTags`
--

LOCK TABLES `BlogPostTags` WRITE;
/*!40000 ALTER TABLE `BlogPostTags` DISABLE KEYS */;
INSERT INTO `BlogPostTags` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `BlogPostTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogPosts`
--

DROP TABLE IF EXISTS `BlogPosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogPosts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `BlogPosts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogPosts`
--

LOCK TABLES `BlogPosts` WRITE;
/*!40000 ALTER TABLE `BlogPosts` DISABLE KEYS */;
INSERT INTO `BlogPosts` VALUES (1,1,'Top Programming Tips','Content of the post','http://example.com/image.jpg','2024-11-14 09:45:44','2024-11-14 09:45:44'),(2,1,'Top Programming Tips','Content of the post','http://example.com/image.jpg','2024-11-14 09:46:03','2024-11-14 09:46:03');
/*!40000 ALTER TABLE `BlogPosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogTags`
--

DROP TABLE IF EXISTS `BlogTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlogTags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogTags`
--

LOCK TABLES `BlogTags` WRITE;
/*!40000 ALTER TABLE `BlogTags` DISABLE KEYS */;
INSERT INTO `BlogTags` VALUES (1,'Java','Posts about Java programming'),(2,'Tips','General programming tips');
/*!40000 ALTER TABLE `BlogTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES 
(1, 'kids', 'Courses designed for children to learn basic English skills through fun and interactive activities.'),
(2, 'teenages', 'Courses tailored for teenagers, focusing on grammar, vocabulary, and communication skills.'),
(3, 'adults', 'English courses for adults to improve general or professional language proficiency.'),
(4, 'ielts', 'Specialized courses to prepare students for the IELTS exam, covering all four test sections.'),
(5, 'toeic', 'Focused courses to help learners succeed in the TOEIC test, emphasizing workplace English skills.');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Certificates`
--

DROP TABLE IF EXISTS `Certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Certificates` (
  `certificate_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `issued_date` timestamp NULL DEFAULT NULL,
  `certificate_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`certificate_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `Certificates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `Certificates_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certificates`
--

LOCK TABLES `Certificates` WRITE;
/*!40000 ALTER TABLE `Certificates` DISABLE KEYS */;
INSERT INTO `Certificates` VALUES (1,3,1,'2024-11-14 09:35:19','http://example.com/certificates/java_certificate.pdf');
/*!40000 ALTER TABLE `Certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salaries`
--

DROP TABLE IF EXISTS `Salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salaries` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `base_salary` decimal(10,2) NOT NULL,
  `bonus` decimal(10,2) DEFAULT '0.00',
  `deductions` decimal(10,2) DEFAULT '0.00',
  `payment_date` date NOT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `Salaries_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salaries`
--

LOCK TABLES `Salaries` WRITE;
/*!40000 ALTER TABLE `Salaries` DISABLE KEYS */;
INSERT INTO `Salaries` VALUES (1,2,3000.00,500.00,100.00,'2024-11-14');
/*!40000 ALTER TABLE `Salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VideoProgress`
--

DROP TABLE IF EXISTS `VideoProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VideoProgress` (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `video_id` int NOT NULL,
  `time_spent` int DEFAULT '0',
  `progress_percentage` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`progress_id`),
  KEY `user_id` (`user_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `VideoProgress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `VideoProgress_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `course_videos` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VideoProgress`
--

LOCK TABLES `VideoProgress` WRITE;
/*!40000 ALTER TABLE `VideoProgress` DISABLE KEYS */;
INSERT INTO `VideoProgress` VALUES (1,3,1,600,50.00);
/*!40000 ALTER TABLE `VideoProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1),(2,2),(3,16),(4,29);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_courses`
--

DROP TABLE IF EXISTS `cart_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_courses` (
  `cart_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_courses`
--

LOCK TABLES `cart_courses` WRITE;
/*!40000 ALTER TABLE `cart_courses` DISABLE KEYS */;
INSERT INTO `cart_courses` VALUES (1,4),(1,5),(1,6),(2,4),(2,5),(2,6),(2,1),(16,2),(16,3),(16,4);
/*!40000 ALTER TABLE `cart_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_reviews`
--

DROP TABLE IF EXISTS `course_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `review_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `course_reviews_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `course_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_reviews`
--

LOCK TABLES `course_reviews` WRITE;
/*!40000 ALTER TABLE `course_reviews` DISABLE KEYS */;
INSERT INTO `course_reviews` VALUES (1,1,3,5,'Great course!','2024-11-14 09:35:19'),(2,2,3,4,'Informative content.','2024-11-14 09:35:19'),(3,1,2,3,'greatest','2024-11-14 09:35:30'),(4,1,1,5,'Amazing course!','2024-11-14 09:35:19'),(5,2,1,4,'Very informative.','2024-11-15 10:30:00'),(6,3,2,3,'Needs improvement.','2024-11-16 11:20:15'),(7,1,2,5,'Best course ever!','2024-11-17 08:45:00'),(8,3,3,2,'Not up to the mark.','2024-11-18 13:55:10'),(9,2,1,5,'Excellent materials!','2024-11-19 09:15:25'),(10,1,3,4,'Well explained.','2024-11-20 14:40:30'),(11,2,2,5,'Highly recommend!','2024-11-21 12:10:45'),(12,3,1,3,'Decent content.','2024-11-22 07:30:55'),(13,1,2,4,'Good practice examples.','2024-11-23 18:00:00');
/*!40000 ALTER TABLE `course_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_videos`
--

DROP TABLE IF EXISTS `course_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_videos` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `order_in_course` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `CourseVideos_ibfk_1_idx` (`lesson_id`),
  CONSTRAINT `fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_videos`
--

LOCK TABLES `course_videos` WRITE;
/*!40000 ALTER TABLE `course_videos` DISABLE KEYS */;
INSERT INTO `course_videos` VALUES 
(101,1,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/by1QAoRcc-U?si=8QS8LH45D1XxZ_5m&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(102,2,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/xjnlymFLSdM?si=DHa_NiKEv6yymFe_&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(103,3,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/ybt2jhCQ3lA?si=hO6ob6DWbNyLsnkQ&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(104,4,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/CA6Mofzh7jo?si=GTEC3C9ofFjNTZwS&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(105,5,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/RKCxrbuKNx8?si=1d2EaDyqfwbrUD2a&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(106,6,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/A0_5XwajbrA?si=ZiJ8Dx_i6aP8YlpH&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(107,7,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/pmgkj01uUTw?si=7UHZawtd9x8A7SCm&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(108,8,'Early English Explorers (Ages 3-6)','https://www.youtube.com/embed/6fvJUPh28Ow?si=qb_2Egd2_QPEsF9S&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(201,9,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/Fw0rdSHzWFY?si=0GiiowNPXeSzZm3l&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(202,10,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/cs81UdOc9TU?si=W2UnU7tSbPTgkFvV&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(203,11,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/FoOZwLvVK78?si=T_EdprZ7RbM1BJsG&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(204,12,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/ZFjfUnRWmUg?si=WkFMM_QB8kgGIqXK&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(205,13,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/yezpvLy6eRM?si=ZRzucSUfKFN1YJqW&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(206,14,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/z595z_DmpmQ?si=vVVL2q84PtmUr2kz&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(207,15,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/b5vAlBp6YGg?si=bdJf5If5lKdBXUyp&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(208,16,'Fun English Adventures (Ages 6-12)','https://www.youtube.com/embed/2pk3luzDleU?si=x0LikxpvM2RmOXAl&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(301,17,'Middle School English Mastery','https://www.youtube.com/embed/UnEmEbWytI8?si=rcczeYFTA44EukqK&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(302,18,'Middle School English Mastery','https://www.youtube.com/embed/zHWtWOIn3RY?si=_Q9ntoqXtqFPnBUZ&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(303,19,'Middle School English Mastery','https://www.youtube.com/embed/pEugHaQl80o?si=90T6GmOO_qMh5tL1&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(304,20,'Middle School English Mastery','https://www.youtube.com/embed/Fc8X4SAjJeo?si=vtHI30Jmm9yK7SQF&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(305,21,'Middle School English Mastery','https://www.youtube.com/embed/f7KX1AwgZ3w?si=3pL3Vpg0ZfSODljC&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(306,22,'Middle School English Mastery','https://www.youtube.com/embed/CkwcvqqEO3E?si=zKuwaijGfmg2l-jy&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(307,23,'Middle School English Mastery','https://www.youtube.com/embed/8WDVTU701FY?si=aU2aF4A4ildGFuCp&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(308,24,'Middle School English Mastery','https://www.youtube.com/embed/pI5JNcQm6s0?si=oS8k5woSlrAS6W-z&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(401,25,'High School English Success','https://www.youtube.com/embed/EkqpxBsiwJA?si=pv2YA2ols25RBSHN&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(402,26,'High School English Success','https://www.youtube.com/embed/tgVtVoxzwDI?si=9NIJUEogLPJDb2Z9&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(403,27,'High School English Success','https://www.youtube.com/embed/dgqFsUAuP24?si=Pc-O9VkS9mZ5PyV6&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(404,28,'High School English Success','https://www.youtube.com/embed/InwUQgGhwRU?si=-s-5XHdbxt2P-V3g&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(405,29,'High School English Success','https://www.youtube.com/embed/4rE64EAIGt4?si=3pyBUPYsa8ndhx37&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(406,30,'High School English Success','https://www.youtube.com/embed/YOmC5Tyk-nU?si=nEogF06rSahooDba&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(407,31,'High School English Success','https://www.youtube.com/embed/2Lkb7OSRdGE?si=Ceab3Hq5m7pmtC04&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(408,32,'High School English Success','https://www.youtube.com/embed/Oa7ntoCf8yU?si=IO-iEMTs-eamPRq9&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(501,33,'Academic English for College Readiness','https://www.youtube.com/embed/bMEMqjrupHk?si=Yh7n36lbIWoj2S-A&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(502,34,'Academic English for College Readiness','https://www.youtube.com/embed/nUNc3SrCBSg?si=PLyTgAfg1dBbJcUL&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(503,35,'Academic English for College Readiness','https://www.youtube.com/embed/f929vOwODJs?si=IwltdxHPJbyZT8En&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(504,36,'Academic English for College Readiness','https://www.youtube.com/embed/Bhx4mi649YQ?si=OfYQ6y70yDzYHpJZ&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(505,37,'Academic English for College Readiness','https://www.youtube.com/embed/gmfc0rH9Lpg?si=y7vQrLJaqhv3IM6r&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(506,38,'Academic English for College Readiness','https://www.youtube.com/embed/dbKjqkA9BXc?si=jZdA7_nhdYkkWzXF&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(507,39,'Academic English for College Readiness','https://www.youtube.com/embed/W7BW9gv_OkU?si=wMxwzenA9FLSV6cY&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(508,40,'Academic English for College Readiness','https://www.youtube.com/embed/xl-nuzBnRLU?si=F5tHwTd_8ymvADds&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(601,41,'Professional English for the Workplace','https://www.youtube.com/embed/UHCgzff8X3U?si=qA2Q691oQ5Wkvq--&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(602,42,'Professional English for the Workplace','https://www.youtube.com/embed/aO3Det4ir8U?si=ewWMrHyUqOAwA9Nk&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(603,43,'Professional English for the Workplace','https://www.youtube.com/embed/CAU2zx2Ri_M?si=yR7CX0pehhg0l-NK&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(604,44,'Professional English for the Workplace','https://www.youtube.com/embed/fm6PtyM4qMw?si=vMi7JvfoBTcmgGiR&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(605,45,'Professional English for the Workplace','https://www.youtube.com/embed/860LtRxP3rw?si=uItIuInXi5iQOBjK&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(606,46,'Professional English for the Workplace','https://www.youtube.com/embed/IesWWZEh604?si=zCKTOI-1eyEazmys&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(607,47,'Professional English for the Workplace','https://www.youtube.com/embed/ODgy-wY0WhU?si=G47jPt08JJdIvaX0&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(608,48,'Professional English for the Workplace','https://www.youtube.com/embed/oXEanzlcoPg?si=NrOCEcP0l05hRw7c&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(701,49,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/awIXN5LgWKY?si=5UrMpvNE911qJAFE&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(702,50,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/pZR5Ox8duog?si=3D4QTwZfyw0L3sH1&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(703,51,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/9YoWeSJc2wU?si=FYoSTWC7Ul7xcEGf&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(704,52,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/DPaU8kYS3mI?si=tHJVjJ-wnItFs2cm&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(705,53,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/EK-S1dj6QK8?si=oy785Udp80BGFBq2&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(706,54,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/6LFjVC3cHjI?si=P_q6yRKZe2kkRSEJ&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(707,55,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/AGGqhJoSnko?si=ZMGA0Ohv_maGP6vg&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(708,56,'IELTS Band 5.0 - Build Your Basics','https://www.youtube.com/embed/CPdFoNsefaE?si=BH0kQ8vtomswdvGe&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(801,57,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/DfWkxpdOEP8?si=P0lNiW1r3tYMFP1l&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(802,58,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/pZR5Ox8duog?si=urJL9YYOKU9mInDO&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(803,59,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/KLKZdMo7cLE?si=xAZvAYDuXGMrtYac&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(804,60,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/flthk8SNiiE?si=5hHeklKM1SdI6cMu&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(805,61,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/bEPRxLzDiyo?si=IhLjE86OgwpEm-Z2&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(806,62,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/XeSO0pUr2yg?si=o2krl7el1gVKSNud&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(807,63,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/Li-gB_FUiFI?si=3MBa4HzLA1b_Lgvb&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(808,64,'IELTS Band 6.5 - Step Towards Success','https://www.youtube.com/embed/s2M1t-pHJcc?si=nWSpQe3mHMoljrMA&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(901,65,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/NG44swIzykA?si=67XyYp2VQj_ai8n1&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(902,66,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/h8z4HWTblw8?si=6TvZujiAeb5xoSHK&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(903,67,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/DzHK4_sOm0o?si=d2T0e-VI0khi6A8G&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(904,68,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/D5sNRn9p8RQ?si=nhhp6cad6y5dh33l&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(905,69,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/560sfA1YhaY?si=ftVdCReOuRfrPRH-&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(906,70,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/kHePysoZN2Y?si=fCjfgxTRky4V4BYO&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(907,71,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/X9OSCGVU3x8?si=ZOdIum8QU-MaQQw1&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(908,72,'IELTS Band 8++ - Achieve Excellence','https://www.youtube.com/embed/9M_oYH6p85g?si=Kqlpq7ttv6QkWvCp&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1001,73,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/Ixf9ySuIHjg?si=Rk0_ctCHOKonvCCk&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1002,74,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/Wb0G0Ht9TqE?si=IztSHN2aUp1gk9CN&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1003,75,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/p0u0-TZf_lU?si=mmYhqiQqJiljklIu&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1004,76,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/XHbwcSimTEA?si=q286nMfuHYIU32WC&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1005,77,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/gRkhIq7yed0?si=npn0I4gcQTHp5fQY&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(1006,78,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/teGrsuPeTNw?si=d3vNccm1OPEWVXMT&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1007,79,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/SuKuN59TzNY?si=2Xe7f5Rk_Ijgvjgv&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1008,80,'TOEIC 605-780 - Master Basic Communication','https://www.youtube.com/embed/wzYyO4YRYIE?si=4EhOeTe-ZCnkqUNH&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1101,81,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/xWq0SfhZrFQ?si=cLDH9UnaIHiyHlXI&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1102,82,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/VumxAXtd-1E?si=h02dyZVcUu8wy0bc&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1103,83,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/3OgYAkN7vGE?si=TV1VcrhTbWNX4p8F&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1104,84,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/rS8f1MifvjE?si=uC5zMZ-SR7E5Ptq2&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1105,85,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/ylil8UGfOwE?si=nmKaPReNMTVDbrcJ&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(1106,86,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/4O-EeACTFRM?si=Q4wRzB6MC2-iBWp1&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1107,87,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/CgEHrCnPf0A?si=SXU6a2OAgsYOPmki&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1108,88,'TOEIC 785-900 - Advance to Professional Level','https://www.youtube.com/embed/58fTwqX39HY?si=DEhqwcPzRn3kCtHz&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1201,89,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/7wL9XFkzEiw?si=SrB7KVBY6QkTC3Yb&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1202,90,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/UFvUnF5pY2Y?si=oJD3L1gUnkZNA2rI&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1203,91,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/nTzEq-iz_uA?si=GCKtFhLG70wPppZ4&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1204,92,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/e2f6n2b_Ixk?si=cBreB5ivYkXd1sFM&rel=0',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(1205,93,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/q6uUsLNaIBY?si=DGGl6c5LN6ARaAz6&rel=0',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),
(1206,94,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/9M_oYH6p85g?si=VUOKESl1h6Y2Dxic&rel=0',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1207,95,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/SsWB9x-Ph-M?si=O7pyY30d7bg6CqXE&rel=0',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),
(1208,96,'TOEIC 905-990 - Excel in Global Communication','https://www.youtube.com/embed/gqUgdABxQIA?si=guT4Vnsb3GH1A9cW&rel=0',1,'2024-12-07 13:03:28','2024-12-07 13:03:28');
/*!40000 ALTER TABLE `course_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `level` varchar(50) DEFAULT 'beginner',
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skill` varchar(45) NOT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `teacher_id` int NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES 
(1,'Early English Explorers (Ages 3-6)','This course introduces young learners to the basics of English in a fun and engaging way. Through interactive activities, songs, and games, children will develop essential listening and speaking skills, building a strong foundation for their language journey.','beginner',150,'kids','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',16,
'https://i.pinimg.com/1200x/ff/8e/e7/ff8ee7249edba64d921c8b716796d5d0.jpg','https://i.pinimg.com/736x/eb/bd/09/ebbd093dc8a3060fe644f7d34d23c5f9.jpg',NULL),
(2,'Fun English Adventures (Ages 6-12)','Designed for curious minds, this course helps children expand their vocabulary and improve their grammar through stories, interactive lessons, and creative projects. Perfect for boosting confidence and preparing for school-level English.','beginner',200,'kids','Coming Soon','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',16,
'https://i.pinimg.com/1200x/6b/84/ae/6b84aee046b8d4bf6b34b262a52e33d3.jpg','https://i.pinimg.com/736x/eb/bd/09/ebbd093dc8a3060fe644f7d34d23c5f9.jpg',NULL),
(3,'Middle School English Mastery','This course equips middle school students with the skills they need to excel in reading, writing, and speaking English. Focused on academic and practical use, it builds a solid base for higher education and everyday communication.',
'intermediate',250,'teenages','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','3',16,
'https://i.pinimg.com/1200x/2f/ad/99/2fad9966e9aa7dd9053d3a3497ea640f.jpg','https://i.pinimg.com/736x/c1/0d/17/c10d1709dd6c38aac957c51be661565f.jpg',NULL),
(4,'High School English Success',
'Tailored for high schoolers, this course sharpens critical reading, writing, and analytical skills. Students will gain confidence in tackling exams and assignments while preparing for future academic and career challenges.',
'intermediate',300,'teenages','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','4',0,
'https://i.pinimg.com/1200x/a2/f8/06/a2f806918b762f5f740c8874857048b1.jpg','https://i.pinimg.com/736x/c1/0d/17/c10d1709dd6c38aac957c51be661565f.jpg',NULL),
(5,'Academic English for College Readiness',
'This course is ideal for students preparing for university-level studies. It focuses on academic writing, research skills, and advanced vocabulary, ensuring students can excel in their coursework and presentations.',
'intermediate',350,'teenages','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','5',0,
'https://i.pinimg.com/1200x/c6/0c/24/c60c2402f6fe5f012e815b987adebf4f.jpg','https://i.pinimg.com/736x/c1/0d/17/c10d1709dd6c38aac957c51be661565f.jpg',NULL),
(6,'Professional English for the Workplace',
'Perfect for professionals, this course hones communication skills essential for emails, meetings, and presentations. Learn how to express yourself clearly and confidently in any professional setting.',
'intermediate',400,'adults','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',0,
'https://i.pinimg.com/1200x/3a/62/27/3a62275b2108939cb2ba6a0f7831e921.jpg','https://i.pinimg.com/736x/91/50/0a/91500acfb4576b1f89a276782b0ea6ef.jpg',NULL),
(7,'IELTS Band 5.0 - Build Your Basics',
'Start your IELTS journey with this foundational course. Focused on basic grammar, vocabulary, and strategies, it helps you reach the 5.0 band with confidence in all four test sections',
'beginner',150,'ielts','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',0,
'https://i.pinimg.com/1200x/87/72/bb/8772bba4fb10abd8963a836c19f015ed.jpg','https://i.pinimg.com/736x/a5/11/15/a511155dd4ab57b9f73fd3ac8760b525.jpg',NULL),
(8,'IELTS Band 6.5 - Step Towards Success',
'Prepare to achieve a competitive IELTS score with this course. It emphasizes effective techniques for listening, reading, writing, and speaking, ensuring you meet the requirements for academic or work opportunities.',
'intermediate',250,'ielts','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','3',0,
'https://i.pinimg.com/1200x/bd/61/e4/bd61e44020839b3686ce0bf1f7fc4c66.jpg','https://i.pinimg.com/736x/a5/11/15/a511155dd4ab57b9f73fd3ac8760b525.jpg',NULL),
(9,'IELTS Band 8++ - Achieve Excellence',
'Target the highest IELTS bands with this advanced course. Designed for top scorers, it provides in-depth practice, expert tips, and personalized feedback to help you excel in every section of the test.',
'advanced',400,'ielts','Coming Soon','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','4',0,
'https://i.pinimg.com/1200x/8d/b4/51/8db451df16fcaf0ae4f77b5a2de0d711.jpg','https://i.pinimg.com/736x/a5/11/15/a511155dd4ab57b9f73fd3ac8760b525.jpg',NULL),
(10,'TOEIC 605-780 - Master Basic Communication',
'This course helps learners build confidence in handling basic workplace communication. Improve your listening and reading skills to meet the requirements of limited working proficiency.',
'beginner',150,'toeic','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','5',0,
'https://i.pinimg.com/1200x/8f/7e/03/8f7e035d83201dc93041e52a11eca899.jpg','https://i.pinimg.com/736x/e9/0c/ba/e90cbaa0eb5abe80d48a87d606ea9f5a.jpg',NULL),
(11,'TOEIC 785-900 - Advance to Professional Level',
'Aimed at professionals, this course focuses on effective communication for most work situations. Strengthen your English to meet expectations with accuracy and clarity.',
'intermediate',250,'toeic','Available','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','1',0,
'https://i.pinimg.com/1200x/59/75/02/597502f7c92ead7e17393928429ece43.jpg','https://i.pinimg.com/736x/e9/0c/ba/e90cbaa0eb5abe80d48a87d606ea9f5a.jpg',NULL),
(12,'TOEIC 905-990 - Excel in Global Communication',
'Master English for international proficiency with this advanced course. Develop the skills to communicate confidently and effectively in any global professional environment.',
'advanced',400,'toeic','Coming Soon','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','2',0,
'https://i.pinimg.com/1200x/14/cd/b6/14cdb68c7bcaa83c8bafbf817a869744.jpg','https://i.pinimg.com/736x/e9/0c/ba/e90cbaa0eb5abe80d48a87d606ea9f5a.jpg',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `enrollment_date` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  PRIMARY KEY (`enrollment_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,16,1,'2024-11-14 09:35:19','active'),(2,16,2,'2024-11-14 09:35:19','active'),(3,16,4,'2024-12-02 19:39:13','active'),(4,16,5,'2024-12-02 19:39:13','active'),(50,16,6,'2024-12-08 14:27:54','active'),(51,16,7,'2024-12-08 14:27:54','active'),(52,16,8,'2024-12-08 14:27:54','active');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_progress`
--

DROP TABLE IF EXISTS `learning_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_progress` (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `course_video_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`progress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_progress`
--

LOCK TABLES `learning_progress` WRITE;
/*!40000 ALTER TABLE `learning_progress` DISABLE KEYS */;
INSERT INTO `learning_progress` VALUES (1,1,16,'done');
/*!40000 ALTER TABLE `learning_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `lesson_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `order_in_course` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES 
(1,1,'Hello, English!',
'Start your journey into English with this fun-filled lesson where learners explore basic greetings like "Hi" and "Hello." Through songs, games, and roleplay, young learners will build confidence in saying their first English words while making new friends.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(2,1,'Colors and Shapes Around Us',
'Discover the vibrant world of colors and shapes! In this lesson, children will learn to identify and name common colors and shapes through interactive games, hands-on activities, and creative drawings.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(3,1,'Animals We Love',
'Meet your favorite animals and learn what they say! This lesson introduces common animal names and their sounds through exciting stories, matching games, and playful sound activities.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(4,1,'Counting with Fun',
'Numbers become exciting in this interactive lesson where kids practice counting from 1 to 10. Through songs, games, and hands-on activities, they’ll develop their numerical skills and build confidence in basic math concepts.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(5,1,'My Family and Friends',
'Celebrate the people you love! In this heartwarming lesson, learners will talk about their family members and friends using simple English words. They’ll create family trees, share stories, and build meaningful connections.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(6,1,'Weather and Seasons',
'Explore sunny skies, rainy days, and snowy winters in this imaginative lesson on weather and seasons. Kids will learn to describe different weather conditions and seasons through fun flashcards, songs, and storytelling.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(7,1,'Let’s Play with Actions',
'Get moving and learn action words like "run," "jump," and "clap"! This energetic lesson combines language learning with physical activities, helping kids associate English verbs with actions through games, songs, and group play.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(8,1,'Storytime Adventures',
'Dive into the magical world of storytelling! This lesson engages young minds with classic tales and interactive storytelling. Kids will listen, act out, and retell stories, boosting their imagination and comprehension skills.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(9,2,'Let’s Introduce Ourselves',
'Kickstart your English learning by practicing how to introduce yourself and get to know others! This lesson focuses on simple self-introductions, sharing your name, age, and where you are from, making it easy to connect with classmates.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(10,2,'Fun with Numbers and Time',
'Master the basics of numbers and telling the time in this engaging lesson. Through games, songs, and hands-on activities, learners will confidently count and talk about time like true pros.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(11,2,'Adventures in the Animal Kingdom',
'Embark on a journey to explore the exciting world of animals! This lesson introduces learners to the names, sounds, and fun facts about animals, encouraging curiosity and imagination.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(12,2,'Discovering the World Around Us',
'Learn about the wonders of nature, weather, and the environment! This lesson teaches simple phrases and vocabulary to describe the world, seasons, and weather through creative storytelling and activities.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(13,2,'My Favorite Hobbies',
'What do you love to do? This lesson helps learners talk about their favorite hobbies and interests, from playing sports to drawing pictures, using simple sentences and engaging vocabulary.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(14,2,'Simple Stories, Big Ideas',
'Step into the world of storytelling! In this lesson, learners explore short, easy-to-understand stories while building vocabulary, comprehension, and creativity through discussions and retelling activities.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(15,2,'Let’s Write and Share',
'Discover the joy of writing in English! This lesson focuses on expressing thoughts in simple sentences and paragraphs, encouraging learners to write about their experiences and share with their peers.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(16,2,'Making New Friends in English',
'Build connections and practice conversational English with this fun lesson on making friends. Learners will practice greetings, asking questions, and talking about themselves in friendly, interactive activities.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(17,3,'Grammar Basics: Nouns, Verbs, and Adjectives',
'Learn the foundation of English grammar in this essential lesson. Through fun activities and clear examples, students will master the basic building blocks of sentences: nouns, verbs, and adjectives, enabling them to create more meaningful sentences.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(18,3,'Writing Short Stories',
'Unleash your creativity and dive into storytelling! This lesson guides students through the process of writing short stories, from brainstorming ideas to crafting a clear beginning, middle, and end.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(19,3,'Exploring Descriptive Writing',
'Bring your writing to life! In this lesson, students will learn to use vivid adjectives and sensory details to describe people, places, and events, enhancing their ability to paint pictures with words.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(20,3,'Understanding Paragraph Structure',
'Build strong paragraphs with confidence. This lesson covers how to write clear topic sentences, support them with details, and conclude effectively, ensuring students can organize their ideas logically.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(21,3,'Speaking with Confidence',
'Develop fluency and confidence in spoken English! This lesson focuses on pronunciation, tone, and conversational skills, helping students engage in everyday conversations with ease and poise.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(22,3,'Reading Comprehension Made Easy',
'Boost your understanding of written texts! In this lesson, students will practice strategies to identify key ideas, find supporting details, and make inferences, improving their reading comprehension skills.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(23,3,'The Power of Persuasion',
'Master the art of persuasion! This lesson teaches students how to present compelling arguments, use persuasive language, and support their opinions with evidence in both speech and writing.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(24,3,'Everyday English Expressions',
'Learn the phrases native speakers use every day! This lesson introduces common idioms, expressions, and conversational phrases, enabling students to sound more natural in casual conversations.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(25,4,'Advanced Grammar in Action',
'Take your grammar skills to the next level! In this lesson, students will explore advanced grammatical structures such as conditional sentences, passive voice, and complex sentence constructions, enhancing their ability to express ideas clearly and accurately in both speech and writing.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(26,4,'Crafting Essays with Impact',
'Learn the art of writing persuasive and impactful essays. This lesson teaches students how to organize their ideas into well-structured essays, focusing on introduction, body paragraphs, and conclusion, while using compelling arguments and strong evidence to make their writing stand out.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(27,4,'Analyzing Texts Like a Pro',
'Develop the skills of a critical reader! This lesson equips students with strategies to analyze texts deeply, focusing on identifying themes, tone, literary devices, and the author"s purpose, allowing them to interpret and discuss texts with insight and confidence.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(28,4,'Debates and Discussions',
'Engage in thought-provoking debates and discussions! In this lesson, students will learn how to formulate arguments, express opinions clearly, and respond to opposing viewpoints in a respectful and persuasive manner, improving both their speaking and critical thinking skills.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(29,4,'Writing Formal Letters and Emails',
'Master the art of professional communication! This lesson covers the essential techniques for writing formal letters and emails, focusing on tone, structure, and etiquette, ensuring students can communicate effectively in academic or workplace settings.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(30,4,'Preparing for Public Speaking',
'Become a confident public speaker! This lesson helps students develop the skills needed for effective presentations, including voice control, body language, and audience engagement, preparing them to speak with confidence in front of any audience.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(31,4,'Unlocking Academic Vocabulary',
'Expand your academic vocabulary! In this lesson, students will learn key academic words and phrases that will help them excel in reading, writing, and speaking in academic contexts, boosting their ability to express complex ideas clearly.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(32,4,'Critical Thinking in Writing',
'Sharpen your writing with critical thinking! This lesson teaches students how to analyze information, question assumptions, and construct well-reasoned arguments, enabling them to write persuasive, thoughtful essays and reports.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(33,5,'Writing for Academic Success',
'Set the foundation for academic excellence! This lesson teaches students the skills needed to write clear, organized, and well-researched academic papers. It focuses on structure, argument development, and using evidence effectively to support ideas.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(34,5,'Mastering Research Papers',
'Become a research expert! This lesson walks students through the process of writing a research paper, from selecting a topic and gathering sources to crafting a strong thesis and organizing findings into a cohesive argument.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(35,5,'Complex Sentences Made Simple',
'Make complex sentences easy to understand! This lesson breaks down advanced sentence structures, such as compound and complex sentences, helping students combine ideas effectively and write with clarity and sophistication.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(36,5,'Citing Sources Correctly',
'Learn how to give credit where it is due! This lesson covers the essentials of proper citation formats (APA, MLA, Chicago, etc.), ensuring students can cite sources accurately and avoid plagiarism in academic writing.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(37,5,'Effective Presentation Skills',
'Speak like a pro in front of any audience! This lesson provides tips and techniques to help students improve their presentation skills, including structuring a presentation, using visual aids, managing stage fright, and engaging the audience.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(38,5,'Debating and Critical Analysis',
'Sharpen your debating and critical thinking skills! This lesson focuses on how to present and defend arguments, analyze different perspectives, and think critically about complex issues, preparing students for debates and discussions in academic settings.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(39,5,'Expanding Your Vocabulary',
'Boost your academic vocabulary! This lesson introduces students to new words and phrases commonly used in academic writing, helping them articulate ideas more clearly and precisely. Students will also learn strategies for retaining and using new vocabulary effectively.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(40,5,'Common Academic Pitfalls',
'Avoid the traps that hinder academic success! This lesson highlights common mistakes students make in academic writing, such as weak thesis statements, improper use of sources, and poor organization, and teaches strategies to overcome them.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(41,6,'Introducing Yourself in a Professional Setting',
'Make a lasting first impression! This lesson teaches students how to introduce themselves confidently in a professional environment, covering key phrases and strategies for introducing yourself to colleagues, clients, and superiors in various business settings.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(42,6,'Writing Emails That Matter',
'Master the art of professional email communication! This lesson focuses on writing clear, concise, and polite emails for different business scenarios, from requesting information to making formal requests and responding to inquiries effectively.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(43,6,'Mastering the Art of Small Talk',
'Build rapport and strengthen professional relationships! This lesson explores how to engage in small talk at work, offering students the tools and confidence to discuss light topics like the weather, current events, or workplace happenings, making it easier to connect with colleagues.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(44,6,'Conducting Effective Meetings',
'Run meetings that get results! This lesson teaches students how to plan, structure, and lead meetings effectively, covering the essentials of agenda-setting, time management, facilitating discussions, and ensuring productive outcomes.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(45,6,'Presenting Ideas Confidently',
'Present your ideas with impact! This lesson helps students develop public speaking skills for the workplace, including techniques for organizing thoughts, managing nerves, and delivering presentations clearly and persuasively to any audience.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(46,6,'Problem-Solving in Teams',
'Tackle challenges together! In this lesson, students will learn strategies for effective team problem-solving, including brainstorming, evaluating solutions, and collaborating on projects to reach the best possible outcome in a group setting.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(47,6,'Handling Workplace Challenges',
'Navigate difficult situations with confidence! This lesson focuses on common workplace challenges, such as conflicts with coworkers, dealing with deadlines, and managing stress, offering practical strategies for overcoming obstacles and maintaining professionalism.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(48,6,'Global Business Etiquette',
'Do business across cultures with ease! This lesson introduces students to the cultural differences in business practices around the world, helping them understand the importance of respect, communication, and customs in a global business environment to build stronger international relationships.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(49,7,'English Sounds and Pronunciation Tips',
'Perfect your pronunciation and sound more natural! This lesson focuses on understanding and practicing the sounds of English, including tricky vowels and consonants, and provides tips to help students improve their accent and pronunciation for clearer communication.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(50,7,'Building Everyday Vocabulary',
'Expand your vocabulary with words you will use every day! This lesson helps students learn essential words and phrases related to common daily activities, from shopping to dining, equipping them with the vocabulary to handle everyday situations confidently',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(51,7,'Listening for Key Information',
'Develop strong listening skills! This lesson teaches students how to listen actively and extract important information from conversations, interviews, or short talks, improving their ability to understand spoken English in a variety of contexts',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(52,7,'Crafting Simple Sentences',
'Start building your English sentences with ease! This lesson guides students through the process of forming simple sentences, focusing on structure, word order, and the use of basic verbs, adjectives, and nouns to create clear, grammatically correct statements.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(53,7,'Talking About Yourself and Hobbies',
'Express yourself and your interests in English! In this lesson, students learn how to talk about their personal life, including hobbies, interests, and daily activities, using simple sentences and key vocabulary to share about themselves with others.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(54,7,'Writing Short Notes and Messages',
'Learn to write clear and concise messages! This lesson covers how to write brief and effective notes, whether for a quick reminder, an invitation, or a thank-you message, focusing on structure and tone appropriate for different situations.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(55,7,'Understanding Short Passages',
'Improve your reading comprehension skills! This lesson helps students practice reading short passages and answering questions related to the content, enabling them to identify key ideas and understand texts with greater accuracy.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(56,7,'Speaking Fluently with Confidence',
'Speak with ease and fluency! This lesson focuses on strategies to build confidence in speaking, including exercises to improve pronunciation, sentence construction, and smooth flow of conversation, helping students speak English confidently in daily interactions.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(57,8,'Expanding Your Vocabulary for IELTS',
'Boost your vocabulary for the IELTS exam! This lesson focuses on expanding your range of academic and everyday vocabulary to improve both your speaking and writing scores. Students will learn how to use precise words and phrases, enhancing their ability to respond to IELTS questions effectively.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(58,8,'Writing a Well-Structured Essay',
'Craft essays that impress! This lesson covers the essential components of writing a strong IELTS essay, from understanding the question to structuring your introduction, body paragraphs, and conclusion. Students will learn how to develop clear arguments and present their ideas logically.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(59,8,'Tackling the Listening Section',
'Conquer the listening section with ease! In this lesson, students will practice listening to various audio recordings, focusing on strategies to identify key information, understand different accents, and answer questions accurately under time pressure.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(60,8,'Reading for Specific Information',
'Sharpen your reading skills for the IELTS! This lesson teaches students how to skim and scan texts effectively to locate specific information, understand the structure of texts, and answer comprehension questions quickly and accurately.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(61,8,'Expressing Opinions in Speaking',
'Give clear, confident responses in the speaking section! This lesson helps students develop the skills to express and support their opinions on various topics, practicing strategies for speaking fluently and coherently under exam conditions.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(62,8,'Improving Sentence Variety',
'Enhance your writing and speaking with varied sentence structures! This lesson teaches students how to use different sentence types—simple, compound, and complex—to improve the clarity and sophistication of their responses in both the speaking and writing sections of the IELTS.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(63,8,'Common Mistakes to Avoid in IELTS',
'Learn from the most common mistakes! In this lesson, students will explore frequent errors made in all sections of the IELTS exam and practice strategies to avoid them, ensuring that they don’t lose points for simple mistakes',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(64,8,'Practice Test Strategies',
'Get ready for the real exam with practice test strategies! This lesson teaches students how to approach IELTS practice tests efficiently, manage time effectively during each section, and analyze their performance to identify areas for improvement before the exam.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(65,9,'Advanced Vocabulary for Top Scores',
'Achieve a higher band score with a rich vocabulary! This lesson focuses on advanced vocabulary techniques, helping students expand their lexical range for the IELTS exam. It covers complex adjectives, phrasal verbs, collocations, and idiomatic expressions to enhance writing and speaking responses.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(66,9,'Writing with Precision and Impact',
'Write essays that stand out! In this lesson, students will learn to write clearly and concisely, focusing on crafting well-developed arguments, using precise vocabulary, and organizing ideas effectively to make a strong impact in the writing section.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(67,9,'Perfecting Your Listening Skills',
'Boost your listening score with targeted strategies! This lesson teaches students how to improve their ability to focus on key details, follow complex audio recordings, and interpret a variety of accents and speech patterns commonly found in the IELTS listening section.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(68,9,'Understanding Complex Texts',
'Tackle challenging reading passages with ease! This lesson helps students develop strategies for understanding dense or complex texts, such as identifying main ideas, finding supporting details, and managing time efficiently during the IELTS reading section.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(69,9,'Mastering the Speaking Cue Card',
'Prepare for the speaking section with confidence! In this lesson, students will practice answering the IELTS speaking cue card, focusing on structuring responses, expanding ideas, and speaking fluently on unfamiliar topics under time pressure.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(70,9,'Linking Ideas in Writing and Speaking',
'Make your speech and writing more cohesive! This lesson focuses on techniques for linking ideas effectively, using transition words, connectors, and cohesive devices to improve the flow and coherence of responses in both writing and speaking.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(71,9,'Grammar Mastery for Excellence',
'Ensure grammatical accuracy in every section! This lesson covers advanced grammar concepts like conditionals, passive voice, and complex sentence structures, helping students avoid common errors and improve their grammar for higher band scores.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(72,9,'Achieving Fluency and Pronunciation',
'Speak naturally and clearly! This lesson provides strategies for improving fluency, reducing hesitation, and mastering pronunciation. Students will practice common sounds, stress patterns, and intonation, enhancing their ability to communicate confidently and intelligibly in the speaking section.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(73,10,'Everyday Vocabulary for Success',
'Build a solid foundation of practical vocabulary! This lesson focuses on essential words and phrases that will help students navigate daily conversations and workplace situations, from greetings to common expressions used in professional settings, ensuring success in both casual and formal contexts.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(74,10,'Making Requests and Suggestions',
'Learn how to make polite requests and offer suggestions in English! This lesson teaches students the appropriate phrases and structures to use when asking for help, making recommendations, or suggesting ideas in both formal and informal settings.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(75,10,'Writing Simple Emails',
'Write clear and concise emails! This lesson covers the basics of professional email writing, including how to structure a simple email, use polite language, and convey messages effectively while maintaining a professional tone in various contexts.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(76,10,'Understanding Short Conversations',
'Improve your listening comprehension skills! In this lesson, students practice understanding short conversations, focusing on identifying key points, main ideas, and important details, helping them feel more confident when listening to conversations in everyday or work-related contexts.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(77,10,'Listening for Directions and Instructions',
'Master the art of following directions! This lesson helps students practice listening carefully for directions and instructions, enabling them to understand and respond to verbal cues accurately, whether in the workplace, while traveling, or in daily life.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(78,10,'Reading Workplace Notices',
'Enhance your reading comprehension at work! In this lesson, students learn how to read and interpret workplace notices, announcements, and memos, focusing on identifying key information quickly and understanding the purpose of different types of professional written communication.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(79,10,'Describing Objects and Places',
'Sharpen your descriptive skills! This lesson teaches students how to describe objects, places, and environments clearly and effectively, using relevant vocabulary and adjectives, to help them express themselves with more precision in both written and spoken English.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(80,10,'Basic Grammar for Business',
'Master the essentials of grammar for the workplace! This lesson focuses on key grammar concepts necessary for professional communication, including sentence structure, verb tenses, and subject-verb agreement, helping students communicate clearly and accurately in business settings.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(81,11,'Expanding Business Vocabulary',
'Boost your professional vocabulary! This lesson helps students expand their business-related vocabulary by focusing on key terms and phrases commonly used in the workplace. Students will learn to use specific vocabulary related to finance, marketing, management, and other industries to communicate effectively in business settings.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(82,11,'Writing Clear and Polished Emails',
'Write emails that get results! This lesson teaches students how to write clear, concise, and professional emails for various business contexts, from addressing clients and colleagues to handling requests or providing updates. Students will learn the key components of an email, including tone, structure, and appropriate language.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(83,11,'Listening to Business Meetings',
'Sharpen your listening skills in a business environment! In this lesson, students practice listening to business meetings, focusing on identifying key points, main ideas, and decisions. This will help them understand spoken English in the context of formal discussions, negotiations, and presentations.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(84,11,'Reading Contracts and Reports',
'Develop your reading comprehension for business documents! This lesson guides students through the process of reading and interpreting business contracts, reports, and other formal documents. They will focus on understanding complex legal terms, clauses, and the overall structure of professional documents.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(85,11,'Expressing Ideas in Discussions',
'Communicate your ideas effectively in discussions! In this lesson, students will practice how to express their thoughts clearly during business meetings or group discussions. They will learn how to structure their ideas, make arguments, and respond to others in a polite, professional manner.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(86,11,'Presenting Data and Information',
'Present data with clarity and confidence! This lesson teaches students how to present business data, statistics, and reports effectively. Students will learn how to organize their data, use visual aids, and explain complex information in a simple and understandable way for their audience.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(87,11,'Advanced Grammar in Business Contexts',
'Master advanced grammar for professional communication! This lesson focuses on more complex grammatical structures, such as passive voice, conditional sentences, and advanced tenses, helping students communicate more accurately and effectively in a business environment.',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(88,11,'Polishing Pronunciation for Impact',
'Make a powerful impression with clear pronunciation! This lesson helps students refine their pronunciation to ensure clarity in spoken English. Emphasis is placed on intonation, stress, and rhythm to help students sound more confident and professional in business conversations and presentations.',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),
(89,12,'Global English for Professionals',
'Communicate effectively in any international business setting! This lesson focuses on developing the language skills needed to navigate global business environments. Students will learn how to adapt their English for cross-cultural interactions, collaborate with colleagues from different backgrounds, and understand diverse business practices.',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(90,12,'Writing Reports with Confidence',
'Write clear, professional reports! This lesson teaches students how to structure and write comprehensive business reports, from outlining findings to making recommendations. It focuses on clarity, precision, and presenting information in a way that is easily understood by decision-makers.',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),
(91,12,'Negotiating in English',
'Negotiate like a pro in English! This lesson covers the essential language and strategies used in business negotiations, from making proposals to handling objections. Students will practice the key phrases and techniques needed to negotiate successfully in international business settings.',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(92,12,'Handling Complex Conversations',
'Tackle challenging business conversations with ease! This lesson helps students develop the skills to handle complex and high-pressure conversations, such as difficult negotiations or sensitive discussions, by focusing on active listening, clarifying, and responding diplomatically.',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),
(93,12,'Reading Advanced Business Texts',
'Enhance your ability to understand complex business texts! In this lesson, students will practice reading and interpreting advanced business documents, including financial reports, strategic plans, and market analyses. Emphasis will be placed on analyzing content critically and extracting relevant information efficiently.',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(94,12,'Mastering Business Presentations',
'Deliver presentations that leave a lasting impact! This lesson focuses on mastering the art of business presentations. Students will learn to organize their ideas, engage the audience, use visual aids effectively, and present data confidently, ensuring that their ideas are communicated clearly and persuasively.',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),
(95,12,'Cultural Sensitivity in Communication',
'Communicate with respect and understanding across cultures! This lesson focuses on developing cultural awareness in communication, teaching students to recognize cultural differences in business practices and adapt their language and behavior accordingly to build stronger relationships in a global context.',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),
(96,12,'Preparing for TOEIC Excellence',
'Achieve your target TOEIC score! This lesson provides focused strategies for excelling in the TOEIC exam, with practice in all four sections (Listening, Reading, Speaking, and Writing). Students will learn how to manage time effectively, improve test-taking techniques, and maximize their score potential.',2,'2024-12-07 11:58:45','2024-12-07 11:58:45');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_courses`
--

DROP TABLE IF EXISTS `pay_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_courses` (
  `payment_history_id` int NOT NULL,
  `courses_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_courses`
--

LOCK TABLES `pay_courses` WRITE;
/*!40000 ALTER TABLE `pay_courses` DISABLE KEYS */;
INSERT INTO `pay_courses` VALUES (1,1),(1,2),(1,3),(3,1),(3,2),(3,3),(4,4),(4,5),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,6),(9,7),(9,8),(10,6),(10,7),(10,8),(11,6),(11,7),(11,8),(12,6),(12,7),(12,8),(13,6),(13,7),(13,8),(14,6),(14,7),(14,8),(15,6),(15,7),(15,8),(16,6),(16,7),(16,8),(17,6),(17,7),(17,8),(18,6),(18,7),(18,8),(19,6),(19,7),(19,8),(20,6),(20,7),(20,8),(21,6),(21,7),(21,8),(22,6),(22,7),(22,8),(23,6),(23,7),(23,8),(24,6),(24,7),(24,8),(25,6),(25,7),(25,8),(26,6),(26,7),(26,8),(27,6),(27,7),(27,8),(28,6),(28,7),(28,8),(29,9),(30,9),(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),(40,10);
/*!40000 ALTER TABLE `pay_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_history` (
  `payment_history_id` int NOT NULL AUTO_INCREMENT,
  `payment_date` datetime(6) NOT NULL,
  `total_cost` double NOT NULL,
  `status` varchar(45) NOT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_history_id`),
  KEY `payment_idx` (`payment_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
INSERT INTO `payment_history` VALUES (1,'2024-11-14 09:35:19.000000',1500,'success',1),(2,'2024-11-14 09:35:50.000000',3200,'fail',1),(3,'2024-12-02 17:55:39.000000',2000,'success',1),(4,'2024-12-02 19:39:13.000000',2000,'success',1),(27,'2024-12-08 14:27:54.000000',87,'success',1),(28,'2024-12-08 14:43:12.000000',100,'success',1),(29,'2024-12-08 14:46:02.000000',0,'success',1),(30,'2024-12-08 14:46:43.000000',0,'success',1);
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `payment_method_id` int NOT NULL AUTO_INCREMENT,
  `method_name` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_method_id`),
  UNIQUE KEY `method_name` (`method_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (3,'Bank Transfer'),(1,'Credit Card'),(2,'PayPal');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `payment_method_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,16,1);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Teacher'),(3,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_payments`
--

DROP TABLE IF EXISTS `teacher_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `course_id` int NOT NULL,
  `revenue_share` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `teacher_payments_ibfk_3` (`course_id`),
  CONSTRAINT `teacher_payments_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `teacher_payments_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `enrollments` (`enrollment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_payments`
--

LOCK TABLES `teacher_payments` WRITE;
/*!40000 ALTER TABLE `teacher_payments` DISABLE KEYS */;
INSERT INTO `teacher_payments` VALUES (1,2,1,34.99,'2024-11-14');
/*!40000 ALTER TABLE `teacher_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES 
(0,'hayuat1','ducanh2002@example.com','$2a$10$JVznlQGts8Tn81OhPW.4DOSMCwiWbpv03vlHjAwynF/0qa3fLNTzC',2,'2024-11-22 16:52:46'),
(1,'admin1','admin1@example.com','{noop}hashed_password_1',1,'2024-11-14 09:35:19'),
(2,'instructor1','instructor1@example.com','{noop}hashed_password_2',2,'2024-11-14 09:35:19'),
(3,'student1','student1@example.com','{noop}hashed_password_3',1,'2024-11-14 09:35:19'),
(6,'Teacher','Teacher@example.com','{noop}hashed_password_1',1,NULL),
(7,'asd','Teacheadas@example.com','{noop}hashed_password_1',1,NULL),
(10,'hayuta','Teacheada123s@example.com','$2a$10$IZqDwUDRP9mRhX/l2PjH9O4Qq9ZgiWFvK/2yooxidFEkUEcHZEt86',2,'2024-11-14 09:35:19'),
(11,'ducanh14','Student89@example.com','111003',1,'2024-11-14 09:35:19'),
(12,'dingquy','Student123@example.com','$2a$10$k8BcXPDkHvMpevRFJnGiyuyCpfuB93qyhU0Y0fQzjYqgAGl5hHJhS',1,'2024-11-21 20:37:27'),
(14,'dingquyvu','Student12@example.com','111003',1,NULL),
(16,'ducanh','ducanh1412@example.com','$2a$10$JVznlQGts8Tn81OhPW.4DOSMCwiWbpv03vlHjAwynF/0qa3fLNTzC',2,'2024-11-22 16:52:46'),
(19,'opit','opit12345@example.com','$2a$10$vkZjLT1su83O6V4VBVWd2uqxs1Zu2tnto7pjeIEpG/HtZdipaEPuK',3,'2024-12-09 00:25:40'),
(20,'ducanh14','ducanh14@example.com','$2a$10$iZ34exVyXFYD6ZLRV0h00u.E1U7gCEtgmL4dX6NjcRxy/UAoBcNE6',3,'2024-12-09 00:38:21'),
(22,'andeptrai','andeptrai12345@example.com','$2a$10$NymG42ObRiMquCCnkrI3met7DeI8Giv1vkWv2ittVVu2DiG9ItG4G',3,'2024-12-09 00:52:02'),
(23,'opit','opit@example.com','$2a$10$8kw48eVgdS0qmnSNpRXAP.BiLUow.kEK96KOLu7iDKD3vgPcJErKO',3,'2024-12-09 02:52:44'),
(27,'opit','opit2222@example.com','$2a$10$IQKPGXO7HlPuK/tEHgn.VuTFSkjLXWsC9Q0FbGHUk55uElgNw/nNq',3,'2024-12-09 15:17:21'),
(29,'opit','quy123@example.com','$2a$10$3JG9kHKJftFDr/47Wf7qfek1tyP0qATQ3Fg0viUXDz20fuXStZZRG',3,'2024-12-09 15:50:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Victory_Center'
--

--
-- Dumping routines for database 'Victory_Center'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 12:04:22
>>>>>>> 24e124a (Latest checked by opit)
