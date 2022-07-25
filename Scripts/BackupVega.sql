-- Tablas usadas >>> alumno, clase, director, estilo, genero_musical, historico_alumno, horario_clase, inscripcion, logs, membresia, nivel, profesor, salon, sede y tipo_pago

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academia_mambolaye
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (9,30025176,'Devon','MacGaughie',1140968817,'dmacgaughie7@si.edu','1996-03-08'),(10,30030484,'Cordie','Thorn',1158247105,'cthorn8@eventbrite.com','1991-02-25'),(11,30046159,'Doro','Gillino',1182206525,'dgillino9@godaddy.com','1994-05-22'),(12,30038482,'Willabella','Cavan',1166494965,'wcavana@nytimes.com','1993-03-25'),(13,30001846,'Alick','Bickerdike',1955141625,'abickerdikeb@chronoengine.com','1989-09-03'),(14,30022092,'Kamillah','Flanne',1091384785,'kflannec@usatoday.com','1995-08-05'),(15,30040083,'Corbet','Langstone',1904797776,'clangstoned@t-online.de','1990-08-24'),(16,30034364,'Wilmette','Crichmer',1283077416,'wcrichmere@bloglines.com','1997-08-06'),(17,30037783,'Yvon','Mapother',1033697673,'ymapotherf@stanford.edu','1989-08-15'),(18,30035585,'Elissa','Hardwidge',1510837717,'ehardwidgeg@yandex.ru','1998-03-24'),(19,30002535,'Winston','Mea',1331866727,'wmeah@bigcartel.com','1992-04-30'),(20,30050393,'Linc','Gretton',1100077087,'lgrettoni@last.fm','1989-08-11'),(21,30037639,'Husein','Lukovic',1338813527,'hlukovicj@google.co.uk','1994-06-13'),(22,30001690,'Wade','Carnow',1669056697,'wcarnowk@shop-pro.jp','1989-12-17'),(23,30046271,'Elayne','Dunks',1353671747,'edunksl@de.vu','1995-12-12'),(24,30018087,'Hetty','Mangeot',1661452277,'hmangeotm@wikispaces.com','1989-09-05'),(25,30034139,'Rainer','Ayer',1851903137,'rayern@nymag.com','2000-02-14'),(26,30005215,'Camel','Corran',1024000113,'ccorrano@reuters.com','1990-06-06'),(27,30031511,'Sybila','Zellmer',1326542944,'szellmerp@marriott.com','1997-07-10'),(28,30036425,'Dillie','Gaffey',1084015500,'dgaffeyq@free.fr','1996-04-24'),(29,30041200,'Tuesday','Cromarty',1376265386,'tcromartyr@goo.gl','1997-03-31'),(30,30038173,'Phedra','Tague',1973388139,'ptagues@sfgate.com','1992-12-06'),(31,30038571,'Raphael','Minto',1132114412,'rmintot@about.com','1990-06-22');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,1,1,1,1,2),(2,2,1,2,2,1),(3,4,2,3,3,3),(4,3,2,3,6,3);
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,12345678,'Manuel','Rosas'),(2,96035596,'Beatriz','Rosas');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estilo`
--

LOCK TABLES `estilo` WRITE;
/*!40000 ALTER TABLE `estilo` DISABLE KEYS */;
INSERT INTO `estilo` VALUES (1,'Mambo on2 (General)',1),(2,'Mambo on2 (Ladies)',1),(3,'Casino',1),(4,'Pacheco',2),(5,'Urbano',2),(6,'Free Style / Urbano',3);
/*!40000 ALTER TABLE `estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genero_musical`
--

LOCK TABLES `genero_musical` WRITE;
/*!40000 ALTER TABLE `genero_musical` DISABLE KEYS */;
INSERT INTO `genero_musical` VALUES (1,'Salsa'),(2,'Bachata'),(3,'Reggaeton');
/*!40000 ALTER TABLE `genero_musical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historico_alumno`
--

LOCK TABLES `historico_alumno` WRITE;
/*!40000 ALTER TABLE `historico_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `horario_clase`
--

LOCK TABLES `horario_clase` WRITE;
/*!40000 ALTER TABLE `horario_clase` DISABLE KEYS */;
INSERT INTO `horario_clase` VALUES (1,'Jueves','17:30:00','19:00:00'),(2,'Jueves','19:00:00','20:30:00'),(3,'Sabado','17:30:00','19:00:00'),(4,'Sabado','19:00:00','20:30:00');
/*!40000 ALTER TABLE `horario_clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `membresia`
--

LOCK TABLES `membresia` WRITE;
/*!40000 ALTER TABLE `membresia` DISABLE KEYS */;
INSERT INTO `membresia` VALUES (9,9,2,'2022-07-20 16:15:01'),(10,10,1,'2022-07-20 16:15:01'),(11,11,3,'2022-07-20 16:15:01');
/*!40000 ALTER TABLE `membresia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'Inicial'),(2,'Basico'),(3,'Avanzado');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,12345678,'Manuel','Rosas','manuel_rosas@mambolaye.com',1112345678),(2,12345668,'Beatriz','Rosas','bea_rosas@mambolaye.com',1112845678),(3,93123456,'Aymara','Orta','aymara@tiny.cc',1123466568),(4,92123456,'Erick','Lugo','ctilly1@google.com.au',1123466568),(5,96123456,'Hedvige','Kimmitt','hkimmitt2@chron.com',1123466568),(6,30122856,'Casi','Sommerling','csommerling3@nasa.gov',1123466568),(7,30533456,'Lamar','Dowle','ldowle4@trellian.com',1123466568),(8,30023456,'Gaylord','Brettoner','gbrettoner5@statcounter.com',1123466568);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
INSERT INTO `salon` VALUES (1,'Amarillo',1),(2,'Subterraneo',1),(3,'Contemporaneo',1),(4,'Llanito',2),(5,'Metro',2),(6,'Libertar',2);
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'La Huella','CABA, Bulnes 892',1161989945,1),(2,'Llano','Av. San Juan 1555',NULL,2);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
INSERT INTO `tipo_pago` VALUES (1,'Visa'),(2,'MasterCard'),(3,'Efectivo'),(4,'Transfer / Deb. Au.');
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23 14:16:16
