-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: teste
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `CODIGO` bigint NOT NULL AUTO_INCREMENT,
  `NOME` varchar(60) NOT NULL,
  `CIDADE` varchar(60) NOT NULL,
  `UF` varchar(2) NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Gabriel','GOIÂNIA','GO'),(2,'Rafael','GOIÂNIA','GO'),(3,'Jorge','GOIÂNIA','GO'),(4,'Guilherme','GOIÂNIA','GO'),(5,'Igor','GOIÂNIA','GO'),(6,'Ana','GOIÂNIA','GO'),(7,'Maria','GOIÂNIA','GO'),(8,'Beatriz','GOIÂNIA','GO'),(9,'Jose','GOIÂNIA','GO'),(10,'Marcos','GOIÂNIA','GO'),(11,'Junior','GOIÂNIA','GO'),(12,'Neto','GOIÂNIA','GO'),(13,'Joaquim','GOIÂNIA','GO'),(14,'Benjamin','GOIÂNIA','GO'),(15,'Neia','GOIÂNIA','GO'),(16,'Jonas','GOIÂNIA','GO'),(17,'Lucas','GOIÂNIA','GO'),(18,'Rita','GOIÂNIA','GO'),(19,'Kelbia','GOIÂNIA','GO'),(20,'Leia','GOIÂNIA','GO'),(21,'João','GOIÂNIA','GO'),(22,'Ivo','GOIÂNIA','GO');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 23:54:03
