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
INSERT INTO `Categories` VALUES (1,'Programming','Courses related to programming languages'),(2,'Data Science','Courses related to data analysis and machine learning');
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
INSERT INTO `course_videos` VALUES (1,7,'Test','http://example.com/videos/java_intro.mp4',1,'2024-11-14 09:35:19','2024-12-09 23:23:36'),(2,7,'Toeic Test','http://example.com/videos/java_intro.mp4',2,'2024-11-14 09:35:19','2024-12-09 23:23:36'),(6,14,'Java Test','http://example.com/videos/java_intro.mp4',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),(7,14,'PHP TEst','http://example.com/videos/java_intro.mp4',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),(42,39,'Java Test','http://example.com/videos/java_intro.mp4',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),(43,39,'PHP TEst','http://example.com/videos/java_intro.mp4',2,'2024-12-07 19:10:43','2024-12-07 19:10:43');
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
INSERT INTO `courses` VALUES (1,'Java Programming','Learn Java from scratch','beginner',49.99,'Programming','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',16,NULL,NULL,NULL),(2,'Data Science Basics','Introduction to Data Science','intermediate',69.99,'Data Science','old','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',16,NULL,NULL,NULL),(3,'Listening for Beginners 1','Learn listening skills from scratch','beginner',29.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','3',16,NULL,NULL,NULL),(4,'Listening for Beginners 2','Master the basics of listening','beginner',34.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','4',0,NULL,NULL,NULL),(5,'Listening for Beginners 3','Improve your beginner listening skills','beginner',39.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','5',0,NULL,NULL,NULL),(6,'Listening for Beginners 4','Essential listening skills for beginners','beginner',24.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',0,NULL,NULL,NULL),(7,'Speaking for Beginners 1','Learn speaking skills from scratch','beginner',29.99,'Speaking','old','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',0,NULL,NULL,NULL),(8,'Speaking for Beginners 2','Master the basics of speaking','beginner',34.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','3',0,NULL,NULL,NULL),(9,'Speaking for Beginners 3','Improve your beginner speaking skills','beginner',39.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','4',0,NULL,NULL,NULL),(10,'Speaking for Beginners 4','Essential speaking skills for beginners','beginner',24.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','5',0,NULL,NULL,NULL),(11,'Reading for Beginners 1','Learn reading skills from scratch','beginner',29.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','1',0,NULL,NULL,NULL),(12,'Reading for Beginners 2','Master the basics of reading','beginner',34.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','2',0,NULL,NULL,NULL),(13,'Reading for Beginners 3','Improve your beginner reading skills','beginner',39.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','3',0,NULL,NULL,NULL),(14,'Reading for Beginners 4','Essential reading skills for beginners','beginner',24.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','4',0,NULL,NULL,NULL),(15,'Writing for Beginners 1','Learn writing skills from scratch','beginner',29.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','5',0,NULL,NULL,NULL),(16,'Writing for Beginners 2','Master the basics of writing','beginner',34.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','1',0,NULL,NULL,NULL),(17,'Writing for Beginners 3','Improve your beginner writing skills','beginner',39.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','1',0,NULL,NULL,NULL),(18,'Writing for Beginners 4','Essential writing skills for beginners','beginner',24.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','2',0,NULL,NULL,NULL),(19,'Listening for Intermediate 1','Advance your listening skills to the next level','intermediate',49.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','3',0,NULL,NULL,NULL),(20,'Listening for Intermediate 1','Improve your intermediate listening skills','intermediate',49.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','4',0,NULL,NULL,NULL),(21,'Listening for Intermediate 2','Master advanced listening techniques','intermediate',54.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','5',0,NULL,NULL,NULL),(22,'Listening for Intermediate 3','Learn intermediate listening strategies','intermediate',59.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','2',0,NULL,NULL,NULL),(23,'Listening for Intermediate 4','Refine your intermediate listening skills','intermediate',64.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','2',0,NULL,NULL,NULL),(24,'Speaking for Intermediate 1','Enhance your intermediate speaking ability','intermediate',49.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','3',0,NULL,NULL,NULL),(25,'Speaking for Intermediate 2','Speak confidently at an intermediate level','intermediate',54.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','5',0,NULL,NULL,NULL),(26,'Speaking for Intermediate 3','Refine your speaking fluency','intermediate',59.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','1',0,NULL,NULL,NULL),(27,'Speaking for Intermediate 4','Learn advanced speech techniques','intermediate',64.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','3',0,NULL,NULL,NULL),(28,'Reading for Intermediate 1','Improve your intermediate reading skills','intermediate',49.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','5',0,NULL,NULL,NULL),(29,'Reading for Intermediate 2','Master advanced reading comprehension','intermediate',54.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','2',0,NULL,NULL,NULL),(30,'Reading for Intermediate 3','Refine your intermediate reading ability','intermediate',59.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','3',0,NULL,NULL,NULL),(31,'Reading for Intermediate 4','Learn new reading strategies','intermediate',64.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','4',0,NULL,NULL,NULL),(32,'Writing for Intermediate 1','Enhance your intermediate writing ability','intermediate',49.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','1',0,NULL,NULL,NULL),(33,'Writing for Intermediate 2','Write effectively at an intermediate level','intermediate',54.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','2',0,NULL,NULL,NULL),(34,'Writing for Intermediate 3','Refine your writing skills','intermediate',59.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','5',0,NULL,NULL,NULL),(35,'Writing for Intermediate 4','Learn advanced writing techniques','intermediate',64.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','2',0,NULL,NULL,NULL),(36,'Listening for Advanced 1','Master advanced listening skills for fluency','advanced',69.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','1',0,NULL,NULL,NULL),(37,'Listening for Advanced 2','Enhance your comprehension in advanced settings','advanced',74.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','5',0,NULL,NULL,NULL),(38,'Listening for Advanced 3','Develop expert listening strategies','advanced',79.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','3',0,NULL,NULL,NULL),(39,'Listening for Advanced 4','Achieve top-tier listening proficiency','advanced',84.99,'Listening','new','2024-11-14 09:35:19','2024-11-14 09:35:19','listening','3',0,NULL,NULL,NULL),(40,'Speaking for Advanced 1','Achieve advanced fluency in speech','advanced',69.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','3',0,NULL,NULL,NULL),(41,'Speaking for Advanced 2','Speak confidently in professional environments','advanced',74.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',0,NULL,NULL,NULL),(42,'Speaking for Advanced 3','Develop high-level speaking strategies','advanced',79.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','2',0,NULL,NULL,NULL),(43,'Speaking for Advanced 4','Excel in public speaking and presentations','advanced',84.99,'Speaking','new','2024-11-14 09:35:19','2024-11-14 09:35:19','speaking','1',0,NULL,NULL,NULL),(44,'Reading for Advanced 1','Master advanced reading comprehension skills','advanced',69.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','1',0,NULL,NULL,NULL),(45,'Reading for Advanced 2','Analyze complex texts at an advanced level','advanced',74.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','1',0,NULL,NULL,NULL),(46,'Reading for Advanced 3','Develop advanced critical reading skills','advanced',79.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','0',0,NULL,NULL,NULL),(47,'Reading for Advanced 4','Refine reading techniques for professional use','advanced',84.99,'Reading','new','2024-11-14 09:35:19','2024-11-14 09:35:19','reading','0',0,NULL,NULL,NULL),(48,'Writing for Advanced 1','Master advanced writing techniques','advanced',69.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','0',0,NULL,NULL,NULL),(49,'Writing for Advanced 2','Write professionally at an advanced level','advanced',74.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','0',0,NULL,NULL,NULL),(50,'Writing for Advanced 3','Develop advanced academic writing skills','advanced',79.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','0',0,NULL,NULL,NULL),(51,'Writing for Advanced 4','Refine advanced writing for publication','advanced',84.99,'Writing','new','2024-11-14 09:35:19','2024-11-14 09:35:19','writing','0',0,NULL,NULL,NULL),(52,'Java','Learn Java from scratch','beginner',49.00,'Reading','new','2024-12-07 09:31:10','2024-12-07 09:40:06','Listenning',NULL,16,NULL,NULL,NULL),(54,'Java Programming','Learn Java from scratch','beginner',49.00,'Programming','new','2024-12-07 11:53:51','2024-12-07 11:53:51','Listenning',NULL,16,NULL,NULL,NULL),(55,'Java Programming','Learn Java from scratch','beginner',49.00,'Programming','new','2024-12-07 11:58:45','2024-12-09 23:23:36','Listenning',NULL,29,NULL,NULL,NULL),(56,'Java Programming','Learn Java from scratch','beginner',49.00,'Programming','new','2024-12-07 12:10:19','2024-12-07 12:10:19','Listenning',NULL,16,NULL,NULL,NULL),(59,'Java Programming','Learn Java from scratch','beginner',49.00,'Programming','new','2024-12-07 13:03:28','2024-12-07 13:03:28','Listenning',NULL,16,NULL,NULL,NULL),(60,'Java Programming','Learn Java from scratch','beginner',49.00,'Programming','new','2024-12-07 19:10:43','2024-12-07 19:10:43','Listenning',NULL,16,NULL,NULL,NULL);
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
INSERT INTO `lessons` VALUES (1,1,'Introduction to Java','Content for Introduction',1,'2024-11-14 09:35:19','2024-11-14 09:35:19'),(2,1,'Java Basics','Content for Java Basics',2,'2024-11-14 09:35:19','2024-11-14 09:35:19'),(5,54,'Introduction to Java','Content for Introduction',1,'2024-12-07 11:53:51','2024-12-07 11:53:51'),(6,54,'Java Basics','Content for Java Basics',2,'2024-12-07 11:53:51','2024-12-07 11:53:51'),(7,55,'Introduction to Java','Contentn',1,'2024-12-07 11:58:45','2024-12-07 11:58:45'),(8,55,'Java Basics','Content for Java Basics',2,'2024-12-07 11:58:45','2024-12-07 11:58:45'),(9,56,'Introduction to Java','Content for Introduction',1,'2024-12-07 12:10:19','2024-12-07 12:10:19'),(10,56,'Java Basics','Content for Java Basics',2,'2024-12-07 12:10:19','2024-12-07 12:10:19'),(14,59,'Introduction to Java','Content for Introduction',1,'2024-12-07 13:03:28','2024-12-07 13:03:28'),(15,59,'Java Basics','Content for Java Basics',2,'2024-12-07 13:03:28','2024-12-07 13:03:28'),(39,60,'Introduction to Java','Content for Introduction',1,'2024-12-07 19:10:43','2024-12-07 19:10:43'),(40,60,'Java Basics','Content for Java Basics',2,'2024-12-07 19:10:43','2024-12-07 19:10:43');
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
INSERT INTO `users` VALUES (0,'hayuat1','ducanh2002@example.com','$2a$10$JVznlQGts8Tn81OhPW.4DOSMCwiWbpv03vlHjAwynF/0qa3fLNTzC',2,'2024-11-22 16:52:46'),(1,'admin1','admin1@example.com','{noop}hashed_password_1',1,'2024-11-14 09:35:19'),(2,'instructor1','instructor1@example.com','{noop}hashed_password_2',2,'2024-11-14 09:35:19'),(3,'student1','student1@example.com','{noop}hashed_password_3',1,'2024-11-14 09:35:19'),(6,'Teacher','Teacher@example.com','{noop}hashed_password_1',1,NULL),(7,'asd','Teacheadas@example.com','{noop}hashed_password_1',1,NULL),(10,'hayuta','Teacheada123s@example.com','$2a$10$IZqDwUDRP9mRhX/l2PjH9O4Qq9ZgiWFvK/2yooxidFEkUEcHZEt86',2,'2024-11-14 09:35:19'),(11,'ducanh14','Student89@example.com','111003',1,'2024-11-14 09:35:19'),(12,'dingquy','Student123@example.com','$2a$10$k8BcXPDkHvMpevRFJnGiyuyCpfuB93qyhU0Y0fQzjYqgAGl5hHJhS',1,'2024-11-21 20:37:27'),(14,'dingquyvu','Student12@example.com','111003',1,NULL),(16,'ducanh','ducanh1412@example.com','$2a$10$JVznlQGts8Tn81OhPW.4DOSMCwiWbpv03vlHjAwynF/0qa3fLNTzC',2,'2024-11-22 16:52:46'),(19,'opit','opit12345@example.com','$2a$10$vkZjLT1su83O6V4VBVWd2uqxs1Zu2tnto7pjeIEpG/HtZdipaEPuK',3,'2024-12-09 00:25:40'),(20,'ducanh14','ducanh14@example.com','$2a$10$iZ34exVyXFYD6ZLRV0h00u.E1U7gCEtgmL4dX6NjcRxy/UAoBcNE6',3,'2024-12-09 00:38:21'),(22,'andeptrai','andeptrai12345@example.com','$2a$10$NymG42ObRiMquCCnkrI3met7DeI8Giv1vkWv2ittVVu2DiG9ItG4G',3,'2024-12-09 00:52:02'),(23,'opit','opit@example.com','$2a$10$8kw48eVgdS0qmnSNpRXAP.BiLUow.kEK96KOLu7iDKD3vgPcJErKO',3,'2024-12-09 02:52:44'),(27,'opit','opit2222@example.com','$2a$10$IQKPGXO7HlPuK/tEHgn.VuTFSkjLXWsC9Q0FbGHUk55uElgNw/nNq',3,'2024-12-09 15:17:21'),(29,'opit','quy123@example.com','$2a$10$3JG9kHKJftFDr/47Wf7qfek1tyP0qATQ3Fg0viUXDz20fuXStZZRG',3,'2024-12-09 15:50:41');
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
