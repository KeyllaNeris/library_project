-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	9.5.0

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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '0de6a76e-f160-11f0-8218-b42e99647a25:1-46';

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'George R.R. Martin'),(2,'J.R.R. Tolkien'),(3,'Rebecca Yarros'),(4,'Laura Sebastian'),(5,'Sarah J. Maas'),(6,'Holy Black'),(7,'Dan Brown'),(8,'Kerri Maniscalco'),(9,'J.K. Rowling'),(10,'C.S. Lewis'),(11,'Kiera Cass'),(12,'Antoine de Saint-Exupéry'),(13,'John Green'),(14,'Namina Forna'),(15,'Cecelia Ahern'),(16,'Arthur Conan Doyle'),(17,'Nicholas Sparks'),(18,'Markus Zusak'),(19,'Collen Hoover'),(20,'Austin Kleon'),(21,'Bruno Perini'),(22,'Mark Wolynn'),(23,'Carissa Broadbent'),(24,'Kristen Ciccarelli'),(25,'James C. Hunter'),(26,'Marcos Lacerda'),(27,'Luciano Santos'),(28,'Chris Voss'),(29,'Darrell Huff'),(30,'Marshall B. Rosenberg'),(31,'Carol Dweck'),(32,'Taran Matharu');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  `edition` varchar(100) NOT NULL,
  `format_book` enum('E','F','A') NOT NULL,
  `book_genre` varchar(200) DEFAULT NULL,
  `book_series` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_book_author` (`author_id`),
  KEY `fk_book_publisher` (`publisher_id`),
  CONSTRAINT `fk_book_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (2,'Como o Rei de Elfhame aprendeu a odiar histórias',6,4,'8ª edição, ilustrado','F','Ficção, Literatura infantojuvenil americana','O Povo do Ar'),(3,'Trono de Vidro',5,4,'36ª edição','F','Ficção americana','Trono de Vidro'),(4,'Casa de Chama e Sombra',5,4,'Edição de Colecionador','F','Ficção americana','Cidade da Lua Crescente'),(5,'Casa de Céu e Sopro',5,4,'Edição de Colecionador','F','Ficção americana','Cidade da Lua Crescente'),(6,'Cidade da Lua Crescente',5,4,'Edição de Colecionador','F','Ficção Americana','Cidade da Lua Crescente'),(7,'Reino das Bruxas',8,9,'Capa Dura','F','Ficção norte-americana - Juvenil','Irmandade Mística'),(18,'O Príncipe Cruel',6,4,'32ª edição, Box','F','Ficção juvenil americana','O Povo do Ar'),(19,'O Rei Perverso',6,4,'25ª edição, Box','F','Romance americano','O Povo do Ar'),(20,'A Rainha do Nada',6,4,'20ª edição, Box','F','Ficção americana','O Povo do Ar'),(21,'O Canto Mais Escuro da Floresta',6,4,'13ª edição, Box','F','Ficção juvenil americana','O Povo do Ar'),(22,'Quarta Asa',3,14,'Edição de luxo, Capa dura','F','Ficção norte-americana, Literatura fantástica, Dragões','The Empyrean'),(23,'Chama de Ferro',3,14,'Edição de luxo, Capa dura','F','Ficção norte-americana, Literatura fantástica','The Empyrean'),(24,'Tempestade de Ônix',3,14,'Edição de luxo, Capa dura','F','Ficção norte-americana, Literatura fantástica','The Empyrean'),(25,'Princesa das Cinzas',4,2,'Box','F','Ficção americana','Princesa das Cinzas'),(26,'Dama da Névoa',4,2,'Box','F','Ficção americana','Princesa das Cinzas'),(27,'Rainha das Chamas',4,2,'Box','F','Ficção americana','Princesa das Cinzas');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(100) NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Sextante'),(2,'Arqueiro'),(3,'Dialética'),(4,'Galera Record'),(5,'Companhia das Letras'),(6,'Intrínseca'),(7,'Rocco'),(8,'HaperCollins'),(9,'DarkSide'),(10,'Seguinte'),(11,'Globo Livros'),(12,'Brasil Seiko'),(13,'Suma'),(14,'Planeta Minotauro');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
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

-- Dump completed on 2026-07-19 13:51:12
