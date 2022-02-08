# ************************************************************
# Sequel Ace SQL dump
# Versión 20016
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Equipo: localhost (MySQL 8.0.26)
# Base de datos: parqDev
# Generation Time: 2022-02-07 20:40:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla mmp_averias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mmp_averias`;

CREATE TABLE `mmp_averias` (
  `idAveria` int NOT NULL AUTO_INCREMENT,
  `fecAveria` datetime DEFAULT NULL,
  `parqAveria` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `reportaAveria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `codigoAveria` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `tipoAveria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `obsAveria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `registroAveria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ACTIVO',
  `codDiagMM` varchar(10) COLLATE utf8mb4_general_ci DEFAULT '',
  `tipoDiagMM` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '',
  `tecnicoMM` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '',
  `fechaSolucionMM` datetime DEFAULT NULL,
  `obsMM` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '',
  `rollo` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `bateria` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `boton` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `impresora` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `pantalla` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `antitrombon` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `micros` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `modem` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `scrow` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `selector` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `panel` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `logica` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '',
  `placas` varchar(10) COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`idAveria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `mmp_averias` WRITE;
/*!40000 ALTER TABLE `mmp_averias` DISABLE KEYS */;

INSERT INTO `mmp_averias` (`idAveria`, `fecAveria`, `parqAveria`, `reportaAveria`, `codigoAveria`, `tipoAveria`, `obsAveria`, `registroAveria`, `estado`, `codDiagMM`, `tipoDiagMM`, `tecnicoMM`, `fechaSolucionMM`, `obsMM`, `rollo`, `bateria`, `boton`, `impresora`, `pantalla`, `antitrombon`, `micros`, `modem`, `scrow`, `selector`, `panel`, `logica`, `placas`)
VALUES
	(15,'2021-11-14 16:39:21','102','SUPERVISOR','T1','Requiere Limpieza Profunda ','limpieza','hector.cordero@icloud.com','FINALIZADO','500','Rollo a punto de terminarse','hector.cordero@icloud.com','2021-12-15 14:24:35','cambo de rollo','on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(16,'2021-12-15 10:11:28','309','VERIFICADOR','S1','Fuera de Servicio ','fuera servicio','hector.cordero@icloud.com','FINALIZADO','011','Pendiente de solucionar','hector.cordero@icloud.com','2021-12-15 13:35:15','impresora',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(17,'2021-12-15 14:53:30','104','RECAUDADOR','A3','Vandalismo Leve (Agresión) ','','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2021-12-20 16:46:21','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(18,'2021-12-15 14:54:18','104','MONITOREO','A3','Vandalismo Leve (Agresión) ','','hector.cordero@icloud.com','FINALIZADO','101','Paletas de scrow se atascan intermitentemente','hector.cordero@icloud.com','2021-12-15 14:57:36','','on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(19,'2021-12-15 15:12:44','102','VERIFICADOR','E1','Apagado ','','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2021-12-20 16:46:26','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(20,'2021-12-15 15:21:11','102','RECAUDADOR','T3','Requiere Limpieza Profunda ','','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2021-12-20 16:46:32','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(21,'2021-12-20 16:46:58','606','MONITOREO','B1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','','','',NULL,'','','','','','','','','','','','','',''),
	(22,'2021-12-20 16:47:14','606','MONITOREO','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:46:39','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(23,'2021-12-20 16:47:31','611','VERIFICADOR','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:46:51','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(24,'2021-12-20 16:47:48','606','SUPERVISOR','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:47:15','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(25,'2021-12-20 16:48:02','606','VERIFICADOR','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:47:26','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(26,'2021-12-20 16:48:26','509','USUARIO','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:47:48','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(27,'2021-12-20 16:48:36','417','VERIFICADOR','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:47:58','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(28,'2021-12-20 16:48:48','411','MONITOREO','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:48:19','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(29,'2021-12-20 16:49:12','405','VERIFICADOR','A2','Requiere Limpieza Profunda ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:48:38','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(30,'2021-12-20 16:49:22','205','VERIFICADOR','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:48:49','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(31,'2021-12-20 16:49:32','203','MONITOREO','A1','Vandalismo Grave ','','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:48:58','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(32,'2021-12-23 09:59:59','823','USUARIO','T1','No Da Ticket ','PRUEBA DE PLACAS','hector.cordero@icloud.com','FINALIZADO','011','Pendiente de solucionar','hector.cordero@icloud.com','2022-01-03 12:49:10','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TF7769F'),
	(33,'2021-12-23 10:02:52','215','USUARIO','T1','No Da Ticket ','OTRAS PLACAS','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:48:07','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TF7769F'),
	(34,'2021-12-23 10:06:13','312','USUARIO','T1','No Da Ticket ','placas','hector.cordero@icloud.com','FINALIZADO','010','Falsa alarma','hector.cordero@icloud.com','2022-01-03 12:49:21','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1676TSF'),
	(35,'2022-01-03 12:49:58','213','MONITOREO','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 15:12:58','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(36,'2022-01-03 12:50:48','504','USUARIO','T1','No Da Ticket ','NO DA TICKET','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 16:05:42','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(37,'2022-01-03 12:55:05','101','SUPERVISOR','S1','Fuera de Servicio ','KARINA','hector.cordero@icloud.com','FINALIZADO','011','Pendiente de solucionar','hector.cordero@icloud.com','2022-01-03 15:13:18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(38,'2022-01-03 12:56:29','304','VERIFICADOR','T4','Ticket Tamaño Irregular SIN Impresión ','ISABEL','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 15:57:02','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(39,'2022-01-03 12:57:09','503','MONITOREO','P5','No Comunica ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 16:13:18','carga bateria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(40,'2022-01-03 12:58:42','506','MONITOREO','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2022-01-03 18:37:40','carga bateria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(41,'2022-01-03 12:59:54','615','USUARIO','T2','Ticket en Blanco ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 09:08:53','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VEC7997'),
	(42,'2022-01-03 13:00:42','706','MONITOREO','T8','Está en Reserva de Tickets ','','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2022-01-03 18:42:06','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(43,'2022-01-03 13:01:25','808','MONITOREO','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2022-01-03 18:27:08','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(44,'2022-01-03 13:01:59','816','MONITOREO','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 17:42:07','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(45,'2022-01-03 13:02:38','825','MONITOREO','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2022-01-03 14:07:58','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(46,'2022-01-03 13:03:50','713','USUARIO','M3','No Recibe Monedas ','','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2022-01-03 14:07:20','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(47,'2022-01-03 13:04:39','717','MONITOREO','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 11:01:02','',NULL,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(48,'2022-01-03 13:26:24','121','RECAUDADOR','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 15:15:30','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(49,'2022-01-03 13:26:44','604','RECAUDADOR','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 08:29:46','carga de bateria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(50,'2022-01-03 13:27:06','707','RECAUDADOR','S1','Fuera de Servicio ','BATERIA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 08:29:32','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(51,'2022-01-03 14:06:42','804','VERIFICADOR','T2','Ticket en Blanco ','ANEL','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 11:01:19','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(52,'2022-01-03 15:11:10','201','USUARIO','T1','No Da Ticket ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 08:29:17','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VEF7177'),
	(53,'2022-01-03 15:27:24','122','MONITOREO','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 15:56:42','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(54,'2022-01-03 15:28:01','618','MONITOREO','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 18:46:19','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(55,'2022-01-03 15:59:06','220','MONITOREO','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-03 16:55:18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(56,'2022-01-03 16:24:15','216','MONITOREO','T8','Está en Reserva de Tickets ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 11:01:41','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(57,'2022-01-03 18:22:34','602','USUARIO','T1','No Da Ticket ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 08:31:15','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(58,'2022-01-04 08:33:38','606','USUARIO','S1','Fuera de Servicio ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 09:42:52','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(59,'2022-01-04 08:36:57','304','MONITOREO','P5','No Comunica ','','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 09:20:59','',NULL,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(60,'2022-01-04 09:28:17','101','RECAUDADOR','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 11:26:43','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(61,'2022-01-04 10:56:32','220','MONITOREO','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO','012','Avería pendiente resuelta','hector.cordero@icloud.com','2022-01-04 10:57:03','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(62,'2022-01-04 11:50:25','220','MONITOREO','S1','Fuera de Servicio ','IMPRESORA','hector.cordero@icloud.com','FINALIZADO',' - ','','hector.cordero@icloud.com','2022-01-31 09:50:40','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	(63,'2022-01-31 09:49:29','101','MONITOREO','E1','Apagado ','','hector.cordero@icloud.com','ACTIVO','','','',NULL,'','','','','','','','','','','','','','');

/*!40000 ALTER TABLE `mmp_averias` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla mmp_cat_averias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mmp_cat_averias`;

CREATE TABLE `mmp_cat_averias` (
  `idAveria` int NOT NULL AUTO_INCREMENT,
  `codigoAveria` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `descAveria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codigoGeneral` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `descGeneral` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idAveria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `mmp_cat_averias` WRITE;
/*!40000 ALTER TABLE `mmp_cat_averias` DISABLE KEYS */;

INSERT INTO `mmp_cat_averias` (`idAveria`, `codigoAveria`, `descAveria`, `codigoGeneral`, `descGeneral`)
VALUES
	(1,'A1','Vandalismo Grave','A','AGRESIONES'),
	(2,'A2','Requiere Limpieza Profunda','A','AGRESIONES'),
	(3,'A3','Vandalismo Leve (Agresión)','A','AGRESIONES'),
	(4,'S1','Fuera de Servicio','S','SIN IDENTIFICAR'),
	(5,'S2','Instalar Parquímetros','S','SIN IDENTIFICAR'),
	(6,'S3','Se Retira Parquímetro para Mantenimiento','S','SIN IDENTIFICAR'),
	(7,'S4','No Abre Envolvente de Alcancía','S','SIN IDENTIFICAR'),
	(8,'S5','Panel Solar Registra Menos de 12V','S','SIN IDENTIFICAR'),
	(9,'S6','Contabilización de orden superior','S','SIN IDENTIFICAR'),
	(10,'S7','Contabilización de orden inferior','S','SIN IDENTIFICAR'),
	(11,'M1','Monedas Atoradas','M','MONEDAS'),
	(12,'M2','No Lee Ninguna Moneda','M','MONEDAS'),
	(13,'M3','No Recibe Monedas','M','MONEDAS'),
	(14,'M4','Se Come las Monedas y No las Marca','M','MONEDAS'),
	(15,'M5','Cancela Monedas','M','MONEDAS'),
	(16,'M6','Da Menos Tiempo','M','MONEDAS'),
	(17,'M7','Toma de $10 como de $2','M','MONEDAS'),
	(18,'M8','Registra el Pago y Devuelve las Monedas','P','MONEDAS'),
	(19,'P1','Pantalla NO Muestra Información para Usuario','P','PANTALLA'),
	(20,'P2','Pantalla Muestra Horario Adelantado','P','PANTALLA'),
	(21,'P3','Pantalla Muestra Horario Atrasado','P','PANTALLA'),
	(22,'P4','Elemento Obstruye Información en Pantalla','P','PANTALLA'),
	(23,'P5','No Comunica','P','PANTALLA'),
	(24,'P6','Display Reloj en Ceros','P','PANTALLA'),
	(25,'P7','Display Reloj Dañado','P','PANTALLA'),
	(26,'T1','No Da Ticket','T','TICKET'),
	(27,'T2','Ticket en Blanco','T','TICKET'),
	(28,'T3','Ticket Borroso','T','TICKET'),
	(29,'T4','Ticket Tamaño Irregular SIN Impresión','T','TICKET'),
	(30,'T5','Ticket Tamaño Irregular CON Impresión','T','TICKET'),
	(31,'T6','No Corta el Ticket','T','TICKET'),
	(32,'T7','Da Tickets Pegados','T','TICKET'),
	(33,'T8','Está en Reserva de Tickets','T','TICKET'),
	(34,'E1','Apagado','E','ELECTRONICA'),
	(35,'E2','Tensión de Pila Placa','E','ELECTRONICA'),
	(36,'E3','Par de leds encendidos','E','ELECTRONICA'),
	(37,'B1','\"No Funciona Algún Botón','B','BOTONES');

/*!40000 ALTER TABLE `mmp_cat_averias` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla mmp_cat_diagnosticos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mmp_cat_diagnosticos`;

CREATE TABLE `mmp_cat_diagnosticos` (
  `codigoDiag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `diagnosticoDiag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `solucionDiag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `grupoDiag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `mmp_cat_diagnosticos` WRITE;
/*!40000 ALTER TABLE `mmp_cat_diagnosticos` DISABLE KEYS */;

INSERT INTO `mmp_cat_diagnosticos` (`codigoDiag`, `diagnosticoDiag`, `solucionDiag`, `grupoDiag`)
VALUES
	('010','Falsa alarma','Falsa alarma',''),
	('011','Pendiente de solucionar','Pendiente de solucionar',''),
	('012','Avería pendiente resuelta','Avería pendiente resuelta',''),
	('013','Avería pendiente por falta de refacciones','Avería pendiente por falta de refacciones',''),
	('100','Vandalismo Grave','Recaudación del parquímetro, toma de fotogrfías de',''),
	('101','Paletas de scrow se atascan intermitentemente','Limpieza de guías de scrow y test de funcionamient',''),
	('102','Paletas de scrow se atascan frecuentemente','Cambio de scrow',''),
	('103','Tope de monedas en el selector se encuentra dañado','Rehabilitación del tope.',''),
	('104','Tope de monedas en el selector se encuentra dañado','Cambio de selector de monedas.',''),
	('105','Error de lectura de monedas.','Limpieza general y calibración del selector de monedas. Verificación de funcionamiento con el test de módulo de monedas.',''),
	('106','Error de lectura de monedas.','Cambio de selector.',''),
	('107','Sensibilidad en el mecanismo de cierre de la alcan','Retirar alcancía de circulación. Poner fuera de se',''),
	('108','Parquímetro no realizó corte de recaudación.','Conciliación de cortes con sistema y ajuste de sen',''),
	('109','Panel Solar Deficiente que causa errores de carga ','Cambio de Panel Solar',''),
	('110','Sin falla aparente o indeterminada.','Revisión total del equipo: interacción de componen',''),
	('200','Mantenimiento Preventivo','Limpieza de componentes electrónicos y pruebas de ',''),
	('201','Alarma de puerta activada','Test de micros',''),
	('202','Micro de alcancía no censa','Ajuste del micro de alcancía',''),
	('203','Histórico Lleno','Captura de históricos con Psion',''),
	('204','Tensión de Pila Backup Lógica','Cambio de pila de respaldo de datos de la tarjeta ',''),
	('205','Parquímetro desconfigurado','Carga manual de configuración',''),
	('206','Bobina del seguro del envolvente no abre','Alimentación manual de energía, lubricación y ajus',''),
	('301','Objeto o monedas obstruyendo entrada de monedas (a','Se retiran monedas atascadas en ranura de ingreso',''),
	('302','Falta mantenimiento en selector de monedas.','Limpieza general y calibración del selector de mon',''),
	('303','Error de secuencia durante la lectura de alguna o ','Limpieza general y calibración del selector de mon',''),
	('304','Paleta de aceptación del scrow atascada.','Limpieza de soporte de paleta de aceptación y/o re',''),
	('305','Paleta de devolución del scrow atascada','Limpieza de soporte de paleta de devolución y/o re',''),
	('306','Scrow desbordado por mala colocación de alcancía.','Puesta en fuera de servicio por orden para program',''),
	('307','Selector dañado','Cambio de selector',''),
	('308','Objeto o monedas obstruyendo el canal de ingreso d','Se retira objeto y monedas atoradas en el canal. S',''),
	('309','Objeto o monedas atoradas en el selector de moneda','Se retira objeto y monedas atoradas en el selector',''),
	('310','Paletas de scrow se atascan intermitentemente','Limpieza de guías de scrow y test de funcionamient',''),
	('311','Paleta de antitrombón no se mueve','Recalibración de temporizador de antitrombón',''),
	('400','No Comunica con plataforma','Test de MÓDEM',''),
	('401','No Comunica por falla en la red de Telcel','Test de MÓDEM',''),
	('500','Rollo a punto de terminarse','Cambio de rollo',''),
	('501','Tickets atorados','Se retiran tickets atorados y se hace test de impr',''),
	('502','Ticket jalado durante su impresión.','Revisión de la impresión y el cortado de los ticke',''),
	('503','Fusor de impresora desgastado.','No reparable. Cambio de impresora.',''),
	('504','Impresora no detecta la marca sensora del papel.','Realizar tickets de test. Si la incidencia es muy ',''),
	('505','Cizalla de impresora no funciona correctamente.','Pruebas de corte de papel',''),
	('506','Fragmento obtenido de un ticket largo o tira de pa','Revisión de la impresión, el cortado de los tickets',''),
	('507','Cizalla de impresora no corta / no se mueve','Cambio de cizalla de impresora',''),
	('508','Objeto obstruyendo la salida de los tickets.','Limpieza de cajetín de devolución de tickets',''),
	('509','Rollo terminado','Instalación de rollo',''),
	('600','Batería Baja','Cambio de batería',''),
	('601','Panel Solar Deficiente que causa errores de carga ','Cambio de Panel Solar',''),
	('602','Corto circuito','Cambio de cableado',''),
	('700','Display no muestra datos y el horario se pone en c','Reinicio de parquímetro',''),
	('701','Cable de display con discontinuidad','Remplazo de cableabo del display',''),
	('702','Servidor de plataforma caído o se encuentra en man','Esperar que el proveedor restablezca el servidor.',''),
	('703','Desfase horario por falta de comunicación.','Test de módem o ajuste manual.',''),
	('704','Desfase horario por falla en la red de telefonía','Test de módem o ajuste manual.',''),
	('705','Fallo general de parquímetro debido a un error de ','Reinicio total de parquímetro',''),
	('800','Resorte de botón perdió su restitución.','Cambio de botón por uno de los de menos uso en el ',''),
	('801','Resorte de botón perdió su restitución.','Cambio por un botón nuevo.',''),
	('802','Falso contacto en botón','Ajuste de terminales de botón.',''),
	('803','Botón fuera de servicio','Limpieza de botón, sus terminales y prueba de func',''),
	('804','Botón fuera de servicio por vandalismo.','Cambio de Botón.',''),
	('900','Vandalismo leve','Reparación de componentes en zona',''),
	('901','Prevención de vandalismo','Se retira parquímetro de su ubicación temporalment',''),
	('902','Prevención de vandalismo','Colocar carcasas protectoras en el parquímetro','');

/*!40000 ALTER TABLE `mmp_cat_diagnosticos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla mmp_parquimetros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mmp_parquimetros`;

CREATE TABLE `mmp_parquimetros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zona` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `nParquimetro` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `nParqAnt` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `direccion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `entreCalles` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `nllave` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `latitud` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `longitud` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `codPatrimonial` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `nSerie` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `observaciones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `iccidChip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `telefono` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `imei` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `dependencia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `cuentaPadre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `cuenta` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `mmp_parquimetros` WRITE;
/*!40000 ALTER TABLE `mmp_parquimetros` DISABLE KEYS */;

INSERT INTO `mmp_parquimetros` (`id`, `zona`, `nParquimetro`, `nParqAnt`, `direccion`, `entreCalles`, `nllave`, `latitud`, `longitud`, `codPatrimonial`, `nSerie`, `observaciones`, `iccidChip`, `telefono`, `imei`, `dependencia`, `cuentaPadre`, `cuenta`, `status`)
VALUES
	(1,'1','101','48','Corregidora 145','Reforma y Pedro Moreno','072 y 432','22.153885','-100.982586','54201','33802','Funcional','8952020015460004839','4448441533','358936075429152','512700 Parquimetros','61980958','61978040','ACTIVO'),
	(2,'1','102','49','Pedro Moreno 104','Julián de los Reyes y Corregidora','1692','22.153233','-100.98235','54139','35723','Funcional','8952020015460004847 ','4442072146','358936075429152','512700 Parquimetros','61980958','61978163','ACTIVO'),
	(3,'1','103','1','Reforma 1215','Mariano Arista y Julián de los Reyes','822','22.153441','-100.981747','54104','33914','Funcional','8952020015460004516 ','4441799837','358936075429152','512700 Parquimetros','61980958','61978071','ACTIVO'),
	(4,'1','104','37','Bolívar 150','Arista y Julián de los Reyes','802','22.152869','-100.981567','54128','33903','Funcional','8952020015460004540 ','4448292148','358936075429152','512700 Parquimetros','61980958','61978103','ACTIVO'),
	(5,'1','105','31','Julián de los Reyes 526 y528','Reforma e Independencia','802','22.153398','-100.980913','54122','33907','Funcional','8952020015460004573 ','4445071668','358936075429152','512700 Parquimetros','61980958','61978191','ACTIVO'),
	(6,'1','106','251','M. Arista 470','Bolívar e Independencia','822','22.15262','-100.981039','54264','33909','Funcional','8952020015460004631 ','4448299108','358936075429152','512700 Parquimetros','61980958','61978052','ACTIVO'),
	(7,'1','107','7','M. Arista 400','Bolívar e Independencia','3372','22.1527377','-100.9804866','54153','35714','Funcional','8952020015460004672 ','4441838372','358936075429152','512700 Parquimetros','61980958','61978219','ACTIVO'),
	(8,'1','108','32','Independencia 345','San Luis y Guajardo','802','22.155425','-100.980419','54123','33905','Funcional','8952020015460004698 ','4442041384','358936075429152','512700 Parquimetros','61980958','61978104','ACTIVO'),
	(9,'1','109','33','Independencia 425','Guajardo y Manrique','802','22.154749','-100.980277','54124','33904','Funcional','8952020015460004706 ','4444224665','358936075429152','512700 Parquimetros','61980958','61978186','ACTIVO'),
	(10,'1','110','34','Independencia 535','2 de abril y Julián de los Reyes','852','22.153939','-100.980097','54125','33988','Reloj de segmentos dañado. Funcional.','8952020015460004714 ','4448038000','358936075429152','512700 Parquimetros','61980958','61978239','ACTIVO'),
	(11,'1','111','35','Julián de los Reyes 440','Independencia y 2 de abril','852','22.15364','-100.979558','54126','33989','Funcional','8952020015460004722 ','4448296649','358936075429152','512700 Parquimetros','61980958','61978247','ACTIVO'),
	(12,'1','112','36','2 de abril esq. Damián C','Manrique y Damián Carmona','802','22.1537861','-100.9791029','54127','33900','Reloj de segmentos dañado. Funcional.','8952020015460004730 ','4441653381','358936075429152','512700 Parquimetros','61980958','61978056','ACTIVO'),
	(13,'1','113','11','M. Arista 340','Independencia y Damián Carmona','3372','22.152996','-100.979443','54177','35718','Funcional','8952020015460004664 ','4441952268','358936075429152','512700 Parquimetros','61980958','61978241','ACTIVO'),
	(14,'1','114','39','Mariano Hidalgo 110','Alvarado y Damián Carmona','72','22.15547','-100.97977','54203','33792','Funcional','8952020015460002403 ','4442831010','358936075429152','512700 Parquimetros','61980958','61978174','ACTIVO'),
	(15,'1','115','40','Damián Carmona 680','San Luis y Guajardo','802','22.155563','-100.979286','54131','33896','Reloj de segmentos dañado. Funcional.','8952020015460004755 ','4441427725','358936075429152','512700 Parquimetros','61980958','61978043','ACTIVO'),
	(16,'1','116','64','Guajardo 536','Zarzosa y Allende','922','22.155365','-100.978555','54142','33889','Funcional','8952020015460004870 ','4448560301','358936075429152','512700 Parquimetros','61980958','61978274','ACTIVO'),
	(17,'1','117','301','Guajardo 591 ','Damián Carmona y Pantaleón Ipiña','892','22.15517','-100.978991','54106','33868','Funcional','8952020015460004854 ','4441887669','358936075429152','512700 Parquimetros','61980958','61978151','ACTIVO'),
	(18,'1','118','43','Pantaleón Ipiña 145','Mier y Terán y Manrique','802','22.1546191','-100.9787444','54134','33898','Funcional','8952020015460004771 ','4442205071','358936075429152','512700 Parquimetros','61980958','61978230','ACTIVO'),
	(19,'1','119','42','Damián Carmona 440','Manrique y Mier y Terán','802','22.154353','-100.978951','54133','33901','Reloj de segmentos dañado. Funcional.','8952020015460004763 ','4448292687','358936075429152','512700 Parquimetros','61980958','61978246','ACTIVO'),
	(20,'1','120','44','Guajardo 509 y 507','Pantaleón Ipiña y Allende','812','22.15544','-100.97804','54135','33847','Funcional','8952020015460004789 ','4442041974','358936075429152','512700 Parquimetros','61980958','61978060','ACTIVO'),
	(21,'1','121','45','Santa Clara 134','Pantaleón Ipiña y Allende','922','22.154968','-100.97811','54136','33888','Funcional','8952020015460004797 ','4441132360','358936075429152','512700 Parquimetros','61980958','61978109','ACTIVO'),
	(22,'1','122','46','Mier y Terán 268 (plasticos)','Pantaleón Ipiña y Allende','922','22.15452','-100.978056','54137','33866','Funcional','8952020015460004805 ','4441912698','358936075429152','512700 Parquimetros','61980958','61978037','ACTIVO'),
	(23,'1','123','47','Mier y Terán 275 (universal)','Pantaleón Ipiña y Allende','922','22.154209','-100.978265','54138','33887','Funcional','8952020015460004813 ','4444146652','358936075429152','512700 Parquimetros','61980958','61978262','ACTIVO'),
	(24,'1','124','10','Damián Carmona 235','Julián de los Reyes y Mariano Arista','892','22.1533535','-100.9787078','54113','33867','Reloj de segmentos dañado. Funcional.','8952020015460004607 ','4448037930','358936075429152','512700 Parquimetros','61980958','61978034','ACTIVO'),
	(25,'1','125','15','Julián de los Reyes 363 Y 355','Damián Carmona y Allende','892','22.153717','-100.978284','54117','33866','Funcional','8952020015460004656 ','4443127077','358936075429152','512700 Parquimetros','61980958','61978183','ACTIVO'),
	(26,'1','126','19','M. Arista (costado biblioteca UASLP)','Damián Carmona y Allende','852','22.153147','-100.978391','54121','33986','Funcional','8952020015460004615 ','4441718453','358936075429152','512700 Parquimetros','61980958','61978243','ACTIVO'),
	(27,'1','127','265','M. Arista 235','Damián Carmona y Allende','822','22.153326','-100.977509','54114','33917','Funcional','8952020015460004532 ','4442004354','358936075429152','512700 Parquimetros','61980958','61978051','ACTIVO'),
	(28,'2','201','80','Damián Carmona (Costado Coppel)','Fausto Nieto y Reforma','892','22.156784','-100.979475','54107','33860','Funcional','8952020015460005000 ','4441958989','358936075429152','512700 Parquimetros','61980958','61978058','ACTIVO'),
	(29,'2','202','303','Allende 735','San Luis y Reforma','942','22.156848','-100.9784718','54206','33935','Funcional','8952020015460002007 ','4442047190','358936075429152','512700 Parquimetros','61980958','61978157','ACTIVO'),
	(30,'2','203','79','San Luis 424','Allende y  Zarzosa','832','22.1562','-100.978862','54213','33960','Funcional','8952020015460004649 ','4445102033','358936075429152','512700 Parquimetros','61980958','61978101','ACTIVO'),
	(31,'2','204','63','Allende 643','Guajardo y San Luis','922','22.156029','-100.978064','54141','33884','Reloj de segmentos dañado. Funcional.','8952020015460004888 ','4441307301','358936075429152','512700 Parquimetros','61980958','61978038','ACTIVO'),
	(32,'2','205','66','San Luis 550','Allende e Hidalgo','922','22.1564912','-100.9776902','54143','33892','Funcional','8952020015460004995 ','4448297604','358936075429152','512700 Parquimetros','61980958','61978098','ACTIVO'),
	(33,'2','206','67','Hidalgo 505 y 565','San Luis y Guajardo','922','22.156131','-100.976872','54144','33890','Funcional','8952020015460004896 ','4441190073','358936075429152','512700 Parquimetros','61980958','61978111','ACTIVO'),
	(34,'2','207','68','Guajardo 450B y 460','Allende e Hidalgo','812','22.155664','-100.977217','54145','33842','Funcional','8952020015460004904 ','4444266243','358936075429152','512700 Parquimetros','61980958','61978244','ACTIVO'),
	(35,'2','208','69','Allende 540-2','Mier y Terán y Alcalde','922','22.154972','-100.977551','54146','33885','Funcional','8952020015460004912 ','4448463606','358936075429152','512700 Parquimetros','61980958','61978223','ACTIVO'),
	(36,'2','209','78','Mier y Terán (fte. electra)','Allende e Hidalgo','3322','22.154692','-100.977062','54195','35676','Funcional','8952020015460004920 ','4448446406','358936075429152','512700 Parquimetros','61980958','61978266','ACTIVO'),
	(37,'2','210','91','Julián de los Reyes S/N - Bancomer','Allende y Hidalgo','812','22.153984','-100.977052','54154','33843','Reloj de segmentos dañado. Funcional.','8952020015460001884 ','4441650573','358936075429152','512700 Parquimetros','61980958','61978121','ACTIVO'),
	(38,'2','211','70','Hidalgo 626','T. Vargas y San Luis','922','22.157134','-100.976983','54147','33895','Funcional','8952020015460004862 ','4448296023','358936075429152','512700 Parquimetros','61980958','61978215','ACTIVO'),
	(39,'2','212','72','Guajardo (Mercado Hidalgo)','Hidalgo y Morelos','852','22.1558383','-100.9763274','54149','33981','Reloj de segmentos dañado. Funcional.','8952020015460004946 ','4441306944','358936075429152','512700 Parquimetros','61980958','61978116','ACTIVO'),
	(40,'2','213','73','Mier y Terán - Local 2 Merc. Hgo.','Hidalgo y Morelos','812','22.1550324','-100.9761488','54150','33839','Reloj de segmentos dañado. Funcional.','8952020015460004953 ','4444240514','358936075429152','512700 Parquimetros','61980958','61978187','ACTIVO'),
	(41,'2','214','92','Julián de los Reyes 145','Morelos y Hidalgo','812','22.154174','-100.9761385','54155','33836','Funcional','8952020015460001892 ','4448025841','358936075429152','512700 Parquimetros','61980958','61978195','ACTIVO'),
	(42,'2','215','74','Escobedo 1145','Guajardo y H. Herrera','812','22.156585','-100.975382','54151','33838','Funcional','8952020015460004961 ','4444816997','358936075429152','512700 Parquimetros','61980958','61978217','ACTIVO'),
	(43,'2','216','94','Escobedo esq. Guajardo 201','Escobedo y Morelos','812','22.1559491','-100.9753966','54157','33840','Funcional','8952020015460001918 ','4441130681','358936075429152','512700 Parquimetros','61980958','61977999','ACTIVO'),
	(44,'2','217','95','Zapata 140','Morelos y Escobedo','812','22.155239','-100.975543','54158','33837','Funcional','8952020015460001959 ','4442387127','358936075429152','512700 Parquimetros','61980958','61978169','ACTIVO'),
	(45,'2','218','96','Insurgentes 5 esq. Escobedo','Morelos y Zapata','932','22.1547831','-100.9752516','54159','34012','Funcional','8952020015460001934 ','4448441890','358936075429152','512700 Parquimetros','61980958','61978100','ACTIVO'),
	(46,'2','219','77','Maclovio Herrera','20 Nov y Eje Vial','852','22.156779','-100.975051','54303','33982','Funcional','8952020015460004987 ','4441055657','358936075429152','512700 Parquimetros','61980958','61978061','ACTIVO'),
	(47,'2','220','97','Guajardo 152A','Eje Vial y Escobedo','812','22.156095','-100.974949','54160','33844','Funcional','8952020015460001942 ','4443029118','358936075429152','512700 Parquimetros','61980958','61978177','ACTIVO'),
	(48,'2','221','98','Zapata 230','Eje Vial y Escobedo','812','22.155406','-100.974864','54279','35715','Funcional','8952020015460001926 ','4441651757','358936075429152','512700 Parquimetros','61980958','61978068','ACTIVO'),
	(49,'2','222','99','Insurgentes 225','Eje Vial y Escobedo','932','22.154876','-100.974823','54162','34015','Reloj de segmentos dañado. Funcional.','8952020015460001967 ','4441130206','358936075429152','512700 Parquimetros','61980958','61977994','ACTIVO'),
	(50,'3','301','103','Eje Vial 220','Los Bravo y Manuel José Othón','822','22.1523741','-100.973467','54263','33915','Funcional','8952020015460001991 ','4448025272','358936075429152','512700 Parquimetros','61980958','61978194','ACTIVO'),
	(51,'3','302','75','Los Bravo','Quezada y Pípila','812','22.1527952','-100.9725815','54152','33845','Reloj de segmentos dañado. Funcional.','8952020015460001686 ','4448298151','358936075429152','512700 Parquimetros','61980958','61978208','ACTIVO'),
	(52,'3','303','132','Universidad 515','Villerías y Escobedo','932','22.1501018','-100.9740715','54242','33995','Funcional','8952020015460001769 ','4444301518','358936075429152','512700 Parquimetros','61980958','61977970','ACTIVO'),
	(53,'3','304','134','Villerías (cost. de Canal 13)','Guerrero y Universidad','932','22.1502258','-100.9737562','54179','34006','Reloj de segmentos dañado. Funcional.','8952020015460001785 ','4442084390','358936075429152','512700 Parquimetros','61980958','61978095','ACTIVO'),
	(54,'3','305','133','Vicente Guerrero 155','Villerías y Constitución','932','22.1506779','-100.9733848','54178','34008','Reloj de segmentos dañado. Funcional.','8952020015460001827 ','4441418985','358936075429152','512700 Parquimetros','61980958','61978067','ACTIVO'),
	(55,'3','306','135','Universidad 575 ','Villerías y Constitución','932','22.1502798','-100.9732035','54180','34007','Reloj de segmentos dañado. Funcional.','8952020015460001793 ','4441885821','358936075429152','512700 Parquimetros','61980958','61978148','ACTIVO'),
	(56,'3','307','141','Av. Constitución','Frente kiosco de la Alameda','822','22.151242','-100.972772','54268','33910','Reloj de segmentos dañado. Funcional.','8952020015460001777 ','4441343343','358936075429152','512700 Parquimetros','61980958','61978065','ACTIVO'),
	(57,'3','308','142','Manuel José Othón','Constitución y 20 de Noviembre','902','22.152086','-100.972292','54269','33883','Reloj de segmentos dañado. Funcional.','8952020015460001835 ','4442351417','358936075429152','512700 Parquimetros','61980958','61978168','ACTIVO'),
	(58,'3','309','146','Manuel José Othón','Frente Fletes y Mudanzas','902','22.152526','-100.970643','54272','33880','Funcional','8952020015460001876 ','4441418229','358936075429152','512700 Parquimetros','61980958','61978066','ACTIVO'),
	(59,'3','310','144','Universidad','Constitución y Parrodi','942 y 902','22.150842','-100.971651','54274','33873','Funcional','8952020015460001843 ','4444252474','358936075429152','512700 Parquimetros','61980958','61978190','ACTIVO'),
	(60,'3','311','145','Universidad','Frente Auditorio Raúl Gamboa','902','22.151055','-100.970801','54270','33876','Reloj de segmentos dañado. Funcional.','8952020015460001850 ','4441888120','358936075429152','512700 Parquimetros','61980958','61978153','ACTIVO'),
	(61,'3','312','147','Universidad','Negrete y Guillermo Prieto (Iglesia San José)','902','22.151209','-100.970138','54271','33881','Funcional','8952020015460001868 ','4441130310','358936075429152','512700 Parquimetros','61980958','61977998','ACTIVO'),
	(62,'3','313','136','Lerdo de Tejada 115','Universidad y Abasolo','932','22.149991','-100.973101','54181','34005','Funcional','8952020015460001801 ','4442395786','358936075429152','512700 Parquimetros','61980958','61978170','ACTIVO'),
	(63,'3','314','161','Abasolo 675','Morelos y Lerdo de Tejada','432','22.1489391','-100.9739365','54192','33808','Funcional','8952020015460001538 ','4442040072','358936075429152','512700 Parquimetros','61980958','61978083','ACTIVO'),
	(64,'3','315','162','Abasolo S/N esq. Lerdo de Tejada 200','Morelos y Lerdo de Tejada','432','22.1490863','-100.9730715','54193','33805','Reloj de segmentos dañado. Funcional.','8952020015460001546 ','4441951752','358936075429152','512700 Parquimetros','61980958','61978053','ACTIVO'),
	(65,'3','316','163','Lerdo de Tejada 210','Abasolo y Comonfort','932','22.148926','-100.972825','54165','34014','Reloj de segmentos dañado. Funcional.','8952020015460001553 ','4448038422','358936075429152','512700 Parquimetros','61980958','61978257','ACTIVO'),
	(66,'3','317','121','Comonfort S/N y Morelos 1205','Morelos y Mina','852','22.1483801','-100.9740634','54166','33991','Funcional','8952020015460001652 ','4442046993','358936075429152','512700 Parquimetros','61980958','61978253','ACTIVO'),
	(67,'3','318','168','Comonfort 325','Mina y Lerdo de Tejada','432 y 852','22.148526','-100.973132','54293','33983','Funcional','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','ACTIVO'),
	(68,'3','319','169','Lerdo de Tejada 380','Comonfort y Rayón','432','22.148437','-100.972665','54223','33939','Reloj de segmentos dañado. Funcional.','8952020015460001587 ','4441308588','358936075429152','512700 Parquimetros','61980958','61978114','ACTIVO'),
	(69,'3','320','177','Constitución 725','Abasolo y Comonfort','952','22.149027','-100.972233','54232','33945','Funcional','8952020015460001645 ','4442389021','358936075429152','512700 Parquimetros','61980958','61978050','ACTIVO'),
	(70,'4','401','126','Vallejo 135','Abasolo y Comonfort','852','22.148207','-100.976722','54171','33990','Funcional','8952020015460001702 ','4442814426','358936075429152','512700 Parquimetros','61980958','61978175','ACTIVO'),
	(71,'4','402','128','Galeana 203 esq. Zaragoza 500','5 de mayo y Zaragoza','832','22.1492151','-100.9754485','54173','33966','En almacén, en espera de refacciones (impresora).','8952020015460002114 ','4441956353','358936075429152','512700 Parquimetros','61980958','61977974','INACTIVO'),
	(72,'4','403','129','Abasolo 820 y 810','5 de mayo y Zaragoza','832','22.14869','-100.975709','54174','33956','Funcional','8952020015460001736 ','4441354550','358936075429152','512700 Parquimetros','61980958','61978105','ACTIVO'),
	(73,'4','404','151','Comonfort 555','5 de mayo y Zaragoza','832','22.1481089','-100.9755292','54182','33958','Funcional','8952020015460001751 ','4443085496','358936075429152','512700 Parquimetros','61980958','61978181','ACTIVO'),
	(74,'4','405','152','Rayón (frente al 405)','Rivas y Zaragoza','832','22.147697','-100.97535','54183','33961','Reloj de segmentos dañado. Funcional.','8952020015460004441 ','4442410302','358936075429152','512700 Parquimetros','61980958','61978236','ACTIVO'),
	(75,'4','406','153','Pascual M. Hdz. 360','Rivas y Zaragoza','072','22.146971','-100.975172','54184','33800','Reloj de segmentos dañado. Funcional.','8952020015460004458 ','4442397463','358936075429152','512700 Parquimetros','61980958','61978235','ACTIVO'),
	(76,'4','407','157','Jardín Colón esq. Norp. con P. M. Hdz.','Pascual M. Hdz. y Calzada de Gpe.','072','22.146898','-100.975037','54188','33801','Funcional','8952020015460004490 ','4444253855','358936075429152','512700 Parquimetros','61980958','61978193','ACTIVO'),
	(77,'4','408','154','Jardín Colón 31  esq. Miguel Barragán','Pascual M. Hdz. y Miguel Barragán','072','22.145987','-100.974918','54185','33794','Reloj de segmentos dañado. Funcional.','8952020015460004466 ','4441107145','358936075429152','512700 Parquimetros','61980958','61977986','ACTIVO'),
	(78,'4','409','175','Calzada de Guadalupe','Miguel Barragán y General Fuero','942','22.145688','-100.974548','54205','33937','Funcional','8952020015460001629 ','4442045924','358936075429152','512700 Parquimetros','61980958','61978054','ACTIVO'),
	(79,'4','410','130','Abasolo entre 710 y 720','Zaragoza y Morelos','932','22.148867','-100.974832','54175','34009','Reloj de segmentos dañado. Funcional.','8952020015460001744 ','4444246591','358936075429152','512700 Parquimetros','61980958','61978188','ACTIVO'),
	(80,'4','411','131','Comonfort 410','Zaragoza y Morelos','832','22.148355','-100.974639','54176','33959','Funcional','8952020015460004433 ','4443114194','358936075429152','512700 Parquimetros','61980958','61978182','ACTIVO'),
	(81,'4','412','155','Rayón 325','Zaragoza y Morelos','832','22.147796','-100.974569','54186','33967','Funcional','8952020015460004474 ','4441344950','358936075429152','512700 Parquimetros','61980958','61978102','ACTIVO'),
	(82,'4','413','156','Pascual M. Hdz. 220','Zaragoza y Morelos','072','22.147095','-100.974494','54187','33797','Funcional','8952020015460004482 ','4444208228','358936075429152','512700 Parquimetros','61980958','61978185','ACTIVO'),
	(83,'4','414','158','Pascual M. Hdz. esq. Morelos','Calzada de Gpe. y Pascual M. Hdz.','072','22.147092','-100.974053','54189','33796','Reloj de segmentos dañado. Funcional.','8952020015460004508 ','4442207319','358936075429152','512700 Parquimetros','61980958','61978233','ACTIVO'),
	(84,'4','415','159','Calz. de Guadalupe Puerta 3 mercado','Pascual M. Hdz. y Miguel Barragán','072','22.146651','-100.974339','54190','33803','Funcional','8952020015460001512 ','4448037925','358936075429152','512700 Parquimetros','61980958','61977977','ACTIVO'),
	(85,'4','416','160','Miguel Barragán - Lado sur Merc. Tang.','Calzada de Gpe. y Morelos','072','22.1461739','-100.9740104','54191','33798','Funcional','8952020015460001579 ','4441304048','358936075429152','512700 Parquimetros','61980958','61978063','ACTIVO'),
	(86,'4','417','176','Sevilla y Olmedo 100','Calzada de Guadalupe y Morelos','922','22.145794','-100.973808','54257','33875','Funcional','8952020015460001637 ','4441419133','358936075429152','512700 Parquimetros','61980958','61978117','ACTIVO'),
	(87,'4','418','167','Pascual M. Hdz.','Morelos y Mina','942','22.147148','-100.973639','54197','33933','En almacén, en espera de refacciones (impresora).','8952020015460001561 ','4441106628','358936075429152','512700 Parquimetros','61980958','61977987','INACTIVO'),
	(88,'4','419','170','Rayón esq. Mina','Mina y Lerdo de Tejada','432','22.1479951','-100.9734942','54200','33810','Funcional','8952020015460001595 ','4448037859','358936075429152','512700 Parquimetros','61980958','61978029','ACTIVO'),
	(89,'4','420','172','1º de mayo 233','Rayón y Pascual M. Hdz.','072 y 942','22.147646','-100.973095','54196','33804','Funcional','8952020015460001603 ','4448450873','358936075429152','512700 Parquimetros','61980958','61978249','ACTIVO'),
	(90,'5','501','184','Coronel Romero local 17 mercado Arriaga','Rayón y Pascual M. Hdz.','942','22.1465794','-100.9804464','54207','33941','Funcional','8952020015460004425 ','4442162892','358936075429152','512700 Parquimetros','61980958','61978097','ACTIVO'),
	(91,'5','502','186','Coronel Romero 2108 ','Pascual M. Hdz. y Miguel Barragán','942','22.1455653','-100.9806367','54209','33943','Funcional','8952020015460004136 ','4441931309','358936075429152','512700 Parquimetros','61980958','61978224','ACTIVO'),
	(92,'5','503','187','Miguel Barragán 708','Coronel Romero y Bolívar','942','22.145232','-100.980588','54210','33940','Funcional','8952020015460004144 ','4441427492','358936075429152','512700 Parquimetros','61980958','61978120','ACTIVO'),
	(93,'5','504','400','Fuente 140','Comonfort y Rayón','882','22.14715','-100.979279','54254','33931','Funcional','8952020015460004342 ','4441055382','358936075429152','512700 Parquimetros','61980958','61978107','ACTIVO'),
	(94,'5','505','193','Independencia 1330','Comonfort y Rayón','932','22.147095','-100.978738','54216','33996','Funcional','8952020015460004169 ','4442225465','358936075429152','512700 Parquimetros','61980958','61978025','ACTIVO'),
	(95,'5','506','194','Xicoténcatl 110','Comonfort y Rayón','802','22.147431','-100.977987','54217','33979','Funcional','8952020015460004177 ','4448441784','358936075429152','512700 Parquimetros','61980958','61978088','ACTIVO'),
	(96,'5','507','195','Rayón 725 A ','Independencia y Xicoténcatl','852','22.146844','-100.978394','54218','33980','Funcional','8952020015460004185 ','4441749325','358936075429152','512700 Parquimetros','61980958','61978132','ACTIVO'),
	(97,'5','508','191','Barragán s/n esq. Independencia 1590','Bolívar e Independencia','942','22.1453541','-100.9792687','54214','33932','Funcional','8952020015460004151 ','4448036542','358936075429152','512700 Parquimetros','61980958','61978256','ACTIVO'),
	(98,'5','509','201','Xicoténcatl ','M.Barragán y Pascual M. Hdez','802','22.146175','-100.977814','54129','33902','Funcional','8952020015460002411 ','4441748205','358936075429152','512700 Parquimetros','61980958','61978016','ACTIVO'),
	(99,'5','510','196','Miguel Barragán 520','Independencia y Xicoténcatl','942','22.145416','-100.978373','54212','33938','Funcional','8952020015460004193 ','4441419970','358936075429152','512700 Parquimetros','61980958','61978119','ACTIVO'),
	(100,'5','511','197','Rayón 639','Xicoténcatl y Vallejo','432','22.147202','-100.977372','54199','33809','Funcional','8952020015460004201 ','4448036092','358936075429152','512700 Parquimetros','61980958','61978197','ACTIVO'),
	(101,'5','512','198','Xicoténcatl 205 ','Rayón y Pascual M. Hdz.','842','22.146713','-100.977847','54220','33978','Funcional','8952020015460004219 ','4448294684','358936075429152','512700 Parquimetros','61980958','61977983','ACTIVO'),
	(102,'5','513','199','Pascual M. Hernández 565','Xicoténcatl y Vallejo','842','22.146472','-100.977321','54221','33974','Funcional','8952020015460004227 ','4442234135','358936075429152','512700 Parquimetros','61980958','61978091','ACTIVO'),
	(103,'5','514','202','Miguel Barragán 410','Xicoténcatl y Vallejo','942','22.14562','-100.976916','54224','33934','Funcional','8952020015460004243 ','4441309296','358936075429152','512700 Parquimetros','61980958','61978115','ACTIVO'),
	(104,'5','515','203','Jardín San Miguelito Lado Norte','Vallejo y León García','72','22.14559','-100.976466','54225','33793','Funcional','8952020015460004250 ','4443105776','358936075429152','512700 Parquimetros','61980958','61978184','ACTIVO'),
	(105,'5','516','204','Rayón 545','Vallejo y 5 de mayo','842','22.1474362','-100.9762163','54226','33977','Funcional','8952020015460004268 ','4444138015','358936075429152','512700 Parquimetros','61980958','61977967','ACTIVO'),
	(106,'5','517','205','Vallejo 345','Rayón y Pascual M. Hdz.','842','22.147071','-100.976484','54227','33969','Funcional','8952020015460004276 ','4448297883','358936075429152','512700 Parquimetros','61980958','61978093','ACTIVO'),
	(107,'5','518','206','5 de mayo 820','Rayón y Pascual M. Hdz.','842','22.147232','-100.975814','54228','33976','Funcional','8952020015460004284 ','4441884617','358936075429152','512700 Parquimetros','61980958','61978145','ACTIVO'),
	(108,'5','519','207','Pascual M. Hernández 435','Vallejo y 5 de mayo','842','22.1466851','-100.9760853','54229','33968','Funcional','8952020015460004292 ','4441262368','358936075429152','512700 Parquimetros','61980958','61978113','ACTIVO'),
	(109,'5','520','210','Vallejo (frente al 435)','Pascual M. Hdz y M. Barragán','852','22.1461913','-100.9762864','54291','33984','Display con falla en líneas. Funcional.','8952020015460004326 ','4448290477','358936075429152','512700 Parquimetros','61980958','61978094','ACTIVO'),
	(110,'5','521','208','5 de mayo 926 ','Pascual M. Hdz. y Miguel Barragán','842','22.146385','-100.975621','54230','33972','Funcional','8952020015460004300 ','4444289508','358936075429152','512700 Parquimetros','61980958','61978254','ACTIVO'),
	(111,'5','522','209','Miguel Barragán 335','Vallejo y 5 de mayo','72','22.1457142','-100.9757712','54222','33975','Funcional','8952020015460004318 ','4444132044','358936075429152','512700 Parquimetros','61980958','61977966','ACTIVO'),
	(112,'5','523','305','Vallejo 365','General Fuero y Miguel Barragán','72','22.145232','-100.975948','54202','33799','Funcional','8952020015460004334 ','4441710737','358936075429152','512700 Parquimetros','61980958','61978125','ACTIVO'),
	(113,'6','601','200','Madero S/N esq. Bolívar 500','Reforma y Bolívar','842','22.150407','-100.981243','54231','33975','Funcional','8952020015460002494 ','4448293762','358936075429152','512700 Parquimetros','61980958','61978200','ACTIVO'),
	(114,'6','602','171','Bolívar 653','Agustín Iturbide y Ocampo','922','22.149361','-100.980867','54140','33891','Funcional','8952020015460002486 ','4442036429','358936075429152','512700 Parquimetros','61980958','61978155','ACTIVO'),
	(115,'6','603','213','Bolívar S/N esq. Ocampo','Ocampo y Mtz. Castro','952','22.1485561','-100.9808408','54234','33954','Funcional','8952020015460002502 ','4444218123','358936075429152','512700 Parquimetros','61980958','61978277','ACTIVO'),
	(116,'6','604','215','Iturbide 960','Bolívar y Herrera','952','22.1500538','-100.9806048','54236','33951','Funcional','8952020015460004367 ','4444192395','358936075429152','512700 Parquimetros','61980958','61977984','ACTIVO'),
	(117,'6','605','214','Madero 415','Bolívar e Independencia','952','22.1505958','-100.9801271','54235','33944','Funcional','8952020015460004029 ','4445121945','358936075429152','512700 Parquimetros','61980958','61978084','ACTIVO'),
	(118,'6','606','217','Iturbide 923 - Del Conde','Iturbide y Ocampo','952','22.150039','-100.97988','54238','33950','Funcional','8952020015460004375 ','4442418348','358936075429152','512700 Parquimetros','61980958','61978096','ACTIVO'),
	(119,'6','607','218','Del Conde 160','Iturbide y Ocampo','952','22.1493464','-100.9798154','54239','33947','Funcional','8952020015460004383 ','4442874557','358936075429152','512700 Parquimetros','61980958','61978176','ACTIVO'),
	(120,'6','608','219','Ocampo 203 esq. Del Conde','Bolívar y Del Conde','872','22.148797','-100.979762','54240','33993','Funcional','8952020015460004391 ','4441119521','358936075429152','512700 Parquimetros','61980958','61978110','ACTIVO'),
	(121,'6','609','223','Ocampo 130','Del Conde e Independencia','872','22.14879','-100.979298','54244','33992','Funcional','8952020015460004011 ','4441951055','358936075429152','512700 Parquimetros','61980958','61978021','ACTIVO'),
	(122,'6','610','222','Martínez de Castro # 158','Bolívar e Independencia','952','22.14792','-100.9800025','54243','33952','Funcional','8952020015460004417 ','4441055086','358936075429152','512700 Parquimetros','61980958','61977985','ACTIVO'),
	(123,'6','611','226','Independencia 1215','Martínez de Castro y Comonfort','922','22.1479946','-100.9787024','54247','33953','Funcional','8952020015460004045 ','4441658857','358936075429152','512700 Parquimetros','61980958','61978123','ACTIVO'),
	(124,'6','612','224','Madero 345','Independencia y Díaz de León','952','22.150867','-100.978788','54245','33949','Funcional','8952020015460004359 ','4442417318','358936075429152','512700 Parquimetros','61980958','61978238','ACTIVO'),
	(125,'6','613','225','Díaz de León 200-A','Madero e Iturbide','952','22.150926','-100.977973','54246','33948','Funcional','8952020015460004037 ','4441883275','358936075429152','512700 Parquimetros','61980958','61978140','ACTIVO'),
	(126,'6','614','233','Díaz de León 510','Iturbide y Guerrero','842','22.150114','-100.977791','54211','33971','Funcional','8952020015460004110 ','4442047304','358936075429152','512700 Parquimetros','61980958','61978022','ACTIVO'),
	(127,'6','615','227','Vicente Guerrero  883','Independencia y Díaz de León','872','22.149547','-100.978641','54248','33999','Funcional','8952020015460004052 ','4444235610','358936075429152','512700 Parquimetros','61980958','61978264','ACTIVO'),
	(128,'6','616','228','Vicente Guerrero 825','Independencia y Díaz de León','872','22.149691','-100.97807','54249','33997','Funcional','8952020015460004060 ','4444287403','358936075429152','512700 Parquimetros','61980958','61977981','ACTIVO'),
	(129,'6','617','229','Galeana (costado Aranzazú)','Independencia y Aldama','872','22.148673','-100.978362','54250','34001','Funcional','8952020015460004078 ','4441301127','358936075429152','512700 Parquimetros','61980958','61978112','ACTIVO'),
	(130,'6','618','230','Galeana 400','Independencia y Aldama','872','22.148797','-100.977649','54251','34000','Funcional','8952020015460004086 ','4442048495','358936075429152','512700 Parquimetros','61980958','61978160','ACTIVO'),
	(131,'6','619','232','Comonfort 746 (acera de enfrente)','Xicoténcatl y Vallejo','842','22.147856','-100.977455','54253','33970','Funcional','8952020015460004102 ','4448440535','358936075429152','512700 Parquimetros','61980958','61978258','ACTIVO'),
	(132,'7','701','244','Arista 823 Frente Jardín de niños','Benigno Arriaga y General Rocha','352','22.151629','-100.987388','S/N','35705','Número de serie no registrado, no se encontró factura ni documentación sobre su integración al sistema de parquímetros. Tiene un juego de llaves distinto a los demás parquímetros. Funcional.','8952020015460002270 ','4442049983','358936075429152','512700 Parquimetros','61980958','61978079','ACTIVO'),
	(133,'7','702','241','Benigno Arriaga','M. Arista y Av. Carranza','882','22.151107','-100.987752','54299','33921','Funcional','8952020015460002247 ','4448295741','358936075429152','512700 Parquimetros','61980958','61978204','ACTIVO'),
	(134,'8','703','304','Goytortua (fte. Scotiabank)','Benigno Arriaga y General Rocha','942','22.141545','-100.999216','54204','33936','Funcional','8952020015460002197 ','4441883507','358936075429152','512700 Parquimetros','61980958','61978142','ACTIVO'),
	(135,'8','704','245','Goytortua (fte.seguros del potosi)','Benigno Arriaga y Mariel','882','22.1505207','-100.9873501','54258','33923','En almacén, en espera de refacciones (impresora).','8952020015460002288 ','4441795820','358936075429152','512700 Parquimetros','61980958','61978135','INACTIVO'),
	(136,'7','705','263','Benigno Arriaga 265','Av. Carranza y Cuauhtémoc','942','22.1496394','-100.987546','54208','33942','Funcional','8952020015460002437 ','4442038486','358936075429152','512700 Parquimetros','61980958','61978156','ACTIVO'),
	(137,'7','706','255','M. Arista 815','Tomasa Esteves y Uresti','882','22.15183','-100.9858','54295','33926','Funcional','8952020015460002379 ','4442389663','358936075429152','512700 Parquimetros','61980958','61978081','ACTIVO'),
	(138,'7','707','248','General Rocha','Av. Carranza y M. Arista','902','22.151301','-100.986419','54261','33874','Funcional','8952020015460002312 ','4441302926','358936075429152','512700 Parquimetros','61980958','61978006','ACTIVO'),
	(139,'8','708','139','Goytortua (fte. cartoons)','Tomasa Esteves y General Rocha','952','22.141025','-100.999248','54237','33955','Funcional','8952020015460001819 ','4445116632','358936075429152','512700 Parquimetros','61980958','61977971','ACTIVO'),
	(140,'7','709','242','Tres Guerras S/N','Av. Carranza y Rivas Guillén','902','22.1503126','-100.9863387','54255','33878','Funcional','8952020015460002254 ','4442049554','358936075429152','512700 Parquimetros','61980958','61978164','ACTIVO'),
	(141,'8','710','247','Goytortua (ftr edificio abandonado )','Tres Guerras y Tomasa Esteves','902','22.1505884','-100.9856467','54260','33882','En almacén, en espera de refacciones (impresora).','8952020015460004979 ','4448588501','358936075429152','512700 Parquimetros','61980958','61978315','INACTIVO'),
	(142,'7','711','264','Tomasa Esteves 410A','Nicolás Zapata y Mariano Arista','822','22.1523597','-100.9852657','54110','33912','Funcional','8952020015460002445 ','4448440065','358936075429152','512700 Parquimetros','61980958','61978108','ACTIVO'),
	(143,'7','712','266','Tomasa Esteves (entre cortinas)','Nicolás Zapata y Mariano Arista','892','22.152884','-100.985325','54118','33863','Funcional','8952020015460002452 ','4442932021','358936075429152','512700 Parquimetros','61980958','61978178','ACTIVO'),
	(144,'7','713','267','Tomasa Esteves (límite Iglesia)','Nicolás Zapata y Mariano Arista','892','22.1538523','-100.9854031','54119','33862','Funcional','8952020015460002460 ','4448294565','358936075429152','512700 Parquimetros','61980958','61977978','ACTIVO'),
	(145,'7','714','249','M. Arista (Star Médica)','Tomasa Esteves y Uresti','822','22.1520337','-100.9846732','54262','33919','Funcional','8952020015460002320 ','4441887682','358936075429152','512700 Parquimetros','61980958','61978074','ACTIVO'),
	(146,'7','715','252','M. Arista 765','Tomasa Esteves y Uresti','822','22.1519271','-100.9844878','54265','33911','Funcional','8952020015460002346 ','4441716245','358936075429152','512700 Parquimetros','61980958','61978126','ACTIVO'),
	(147,'7','716','250','M. Arista 730','Tomasa Esteves y Uresti','952','22.152193','-100.983289','54233','33946','Funcional','8952020015460002338 ','4441882027','358936075429152','512700 Parquimetros','61980958','61978139','ACTIVO'),
	(148,'7','717','253','M. Arista 745','Tomasa Esteves y Uresti','822','22.1520023','-100.9839897','54266','33918','Funcional','8952020015460002353 ','4444168352','358936075429152','512700 Parquimetros','61980958','61978273','ACTIVO'),
	(149,'7','718','254','M. Arista 723','Tomasa Esteves y Uresti','822','22.1521533','-100.9827874','54267','33908','Funcional','8952020015460002361 ','4441316566','358936075429152','512700 Parquimetros','61980958','61978008','ACTIVO'),
	(150,'8','719','257','Goytortua (costado soriana)','Tomasa Esteves y Uresti','892','22.139123','-100.998552','54112','33869','Funcional','8952020015460002304 ','4442392279','358936075429152','512700 Parquimetros','61980958','61978172','ACTIVO'),
	(151,'8','720','258','Goytortua (mariscos el amigo)','Tomasa Esteves y Uresti','902','22.138892','-100.998328','54109','33913','Funcional','8952020015460002395 ','4441702459','358936075429152','512700 Parquimetros','61980958','61978122','ACTIVO'),
	(152,'8','721','261','Goytortua (estacionamiento soriana)','Tomasa Esteves y Uresti','802','22.138579','-100.998379','54130','33897','Funcional','8952020015460004938 ','4441426137','358936075429152','512700 Parquimetros','61980958','61978035','ACTIVO'),
	(153,'8','722','260','Goytortua (sagarpa)','Tomasa Esteves y Uresti','932','22.138389','-100.998059','54156','34010','Funcional','8952020015460001983 ','4441703666','358936075429152','512700 Parquimetros','61980958','61978124','ACTIVO'),
	(154,'8','723','2','Goytortua (pm steele)','Tomasa Esteves y Uresti','822','22.139513','-100.998351','54105','33916','Funcional se le retira impresora para colocarse en pq 216 y se queda en espera de piezas para reparar impresora (26/11/2021)','8952020015460002239 ','4443075289','358936075429152','512700 Parquimetros','61980958','61978179','REPARACION'),
	(155,'1','801','342','Pedro moreno 290','Terrazas y Avanzada','882','22.150027','-100.996268','54294','33927','Funcional','8952020015460004821 ','4448290145','358936075429152','512700 Parquimetros','61980958','61978212','ACTIVO'),
	(156,'1','802','341','Pedro moreno (costado escuela)','Terrazas y Avanzada','882','22.1501113','-100.9950396','54296','33929','Funcional','8952020015460004623 ','4448292388','358936075429152','512700 Parquimetros','61980958','61978199','ACTIVO'),
	(157,'1','803','344','Pedro moreno 226','Terrazas y Avanzada','902','22.1498132','-100.9959467','54273','33877','Funcional','8952020015460004235 ','4448036442','358936075429152','512700 Parquimetros','61980958','61978092','ACTIVO'),
	(158,'1','804','343','Nicolas zapata 100 ','Terrazas y Avanzada','432','22.149903','-100.995201','54198','33811','Funcional','8952020015460002221 ','4441888214','358936075429152','512700 Parquimetros','61980958','61978085','ACTIVO'),
	(159,'7','805','291','Emilio Carranza','Mariano Arista y Av. Carranza','802','22.150603','-100.994021','54302','33906','Funcional','8952020015460002213 ','4441130857','358936075429152','512700 Parquimetros','61980958','61978002','ACTIVO'),
	(160,'1','806','290','Av. Carranza (costado Iglesia Tequis)','Emilio Carranza y Mariano Otero','852','22.150221','-100.9935','54290','33987','Funcional','8952020015460002205 ','4442049988','358936075429152','512700 Parquimetros','61980958','61978162','ACTIVO'),
	(161,'7','807','274','Mariano Otero','Av. Carranza y M. Arista','862','22.1505582','-100.9930388','54278','33856','Funcional','8952020015460002056 ','4442164444','358936075429152','512700 Parquimetros','61980958','61978166','ACTIVO'),
	(162,'7','808','271','M. Arista','Mariano Otero y Mariano Ávila','862','22.1509612','-100.9923954','54275','33855','','8952020015460002023 ','4441799840','358936075429152','512700 Parquimetros','61980958','61978073','ACTIVO'),
	(163,'4','809','273','calzada guadalupe 240','Mariano Otero y Mariano Ávila','862','22.1503','-100.9923422','54277','33857','Funcional','8952020015460002049 ','4448037931','358936075429152','512700 Parquimetros','61980958','61978205','ACTIVO'),
	(164,'7','810','272','Mariano Ávila','Av. Carranza y M. Arista','862','22.1506682','-100.9916547','54276','33854','Funcional','8952020015460002031 ','4442049971','358936075429152','512700 Parquimetros','61980958','61978080','ACTIVO'),
	(165,'10','811','275','oficina parquimetros','Mariano Otero y Vallarta','862','22.150072','-100.99276','54284','33848','En almacén, en espera de refacciones (impresora).','8952020015460002064 ','4441944110','358936075429152','512700 Parquimetros','61980958','61977973','INACTIVO'),
	(166,'8','812','276','Goytortua (TELCEL)','Vallarta y Mariano Ávila','862','22.140402','-100.998772','54280','33851','Funcional','8952020015460002072 ','4441885919','358936075429152','512700 Parquimetros','61980958','61978072','ACTIVO'),
	(167,'7','813','277','M.arista 1313 primero','M. Ávila y Anáhuac','862','22.150462','-100.991025','54281','33850','Funcional','8952020015460002080 ','4441745299','358936075429152','512700 Parquimetros','61980958','61978127','ACTIVO'),
	(168,'10','814','280','oficina parquimetros','Mariano Ávila y Justo Sierra','862','22.1502132','-100.9908155','54285','33852','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(169,'7','815','278','M.Arista 1270(esq. terrazas)','Mariano Ávila y Anáhuac','862','22.150504','-100.990362','54282','33853','Funcional','8952020015460002098 ','4441746939','358936075429152','512700 Parquimetros','61980958','61978131','ACTIVO'),
	(170,'7','816','279','Anáhuac','M. Arista y Av. Carranza','862','22.1508171','-100.9899304','54283','33859','Funcional','8952020015460002106 ','4442227986','358936075429152','512700 Parquimetros','61980958','61978167','ACTIVO'),
	(171,'7','817','287','M. Arista (frente urgencias Bene)','Benigno Arriaga y Anáhuac','902','22.1514303','-100.989488','54301','33872','Funcional','8952020015460002171 ','4442044713','358936075429152','512700 Parquimetros','61980958','61978078','ACTIVO'),
	(172,'7','818','286','M. Arista (frente al 940)','Benigno Arriaga y Anáhuac','892','22.1514955','-100.9889297','54120','33864','Funcional','8952020015460002163 ','4448036061','358936075429152','512700 Parquimetros','61980958','61978028','ACTIVO'),
	(173,'7','819','288','M. Arista 916','Benigno Arriaga y Anáhuac','872','22.151584','-100.988198','54300','34002','Funcional','8952020015460002189 ','4441749165','358936075429152','512700 Parquimetros','61980958','61978130','ACTIVO'),
	(174,'7','820','284','M. Arista (fte.picanha)','Anáhuac y Benigno Arriaga','882','22.150556','-100.9894189','54288','33925','Funcional','8952020015460002148 ','4448275898','358936075429152','512700 Parquimetros','61980958','61978201','ACTIVO'),
	(175,'8','821','285','Goytortua (ANTES CUALITAS)','Anáhuac y Benigno Arriaga','882','22.141037','-100.999007','54289','33922','Funcional','8952020015460002155 ','4442147863','358936075429152','512700 Parquimetros','61980958','61978165','ACTIVO'),
	(176,'1','822','282','Bolivar 330','Anáhuac y Benigno Arriaga','862','22.1503553','-100.9891899','54286','33849','Funcional','8952020015460002122 ','4441950466','358936075429152','512700 Parquimetros','61980958','61978075','ACTIVO'),
	(177,'1','823','283','Bolivar 207','Anáhuac y Benigno Arriaga','882','22.1503984','-100.9885402','54287','33924','Funcional','8952020015460001694 ','4448299764','358936075429152','512700 Parquimetros','61980958','61978032','ACTIVO'),
	(178,'7','824','289','Benigno Arriaga Frente Instituto Potosino','Cuauhtémoc y Av. Carranza','882','22.1501932','-100.9877063','54256','33920','Funcional','8952020015460002262 ','4441134592','358936075429152','512700 Parquimetros','61980958','61978005','ACTIVO'),
	(179,'7','825','262','Benigno Arriaga 630','Av. Carranza y Cuauhtémoc','882','22.1489235','-100.9875535','54297','33930','Funcional','8952020015460002429 ','4444276262','358936075429152','512700 Parquimetros','61980958','61978089','ACTIVO'),
	(180,'9','901','311','Unidad Administrativa Municipal','Av. Juárez esq. Reforma Agraria','802','22.132184','-100.969124','54132','33899','Funcional','8952020015460002015 ','4441130812','358936075429152','512700 Parquimetros','61980958','61978000','ACTIVO'),
	(181,'9','920','8','Oficinas de la Coordinación','Corregidora y Zapata','892','22.1541955','-100.9822339','54111','33865','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(182,'9','921','9','Oficinas de la Coordinación','Corregidora y Zapata','0','22.1543223','-100.9820559','54148','33893','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(183,'9','922','13','Oficinas de la Coordinación','Corregidora y Zapata','0','22.1544512','-100.9823517','54115','33861','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(184,'9','923','14','Oficinas de la Coordinación','Corregidora y Zapata','892','22.1544091','-100.9818627','54116','33871','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(185,'9','925','83','Oficinas de la Coordinación','Corregidora y Zapata','432','22.154042','-100.982041','54194','33806','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(186,'9','929','122','Oficinas de la Coordinación','Corregidora y Zapata','832','22.1543577','-100.9823892','54167','33957','En almacén, en espera de refacciones (impresora).','8952020015460001660 ','4441118043','358936075429152','512700 Parquimetros','61980958','61977990','INACTIVO'),
	(187,'9','930','123','Oficinas de la Coordinación','Corregidora y Zapata','832','22.1543776','-100.9827203','54164','34011','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(188,'9','932','125','Oficinas de la Coordinación','Corregidora y Zapata','832','22.1542792','-100.9823237','54163','34013','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(189,'9','933','127','Oficinas de la Coordinación','Corregidora y Zapata','832','22.1540592','-100.9822637','54172','33962','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(190,'9','935','185','Oficinas de la Coordinación','Corregidora y Zapata','942','22.1540595','-100.9825758','54298','33928','En almacén, en espera de refacciones (impresora).','#N/D','#N/D','#N/D','#N/D','#N/D','#N/D','INACTIVO'),
	(191,'9','940','246','Oficinas de la Coordinación','Corregidora y Zapata','902','22.1542782','-100.9826718','54168','33963','En almacén, en espera de refacciones (impresora).','8952020015460002296 ','4442027242','358936075429152','512700 Parquimetros','61980958','61978231','INACTIVO');

/*!40000 ALTER TABLE `mmp_parquimetros` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`session_id`, `expires`, `data`)
VALUES
	(X'6556477041704D6A78364B6A2D756A57645F577930713550526C37476C664F4E',1644348587,X'7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2270617373706F7274223A7B2275736572223A317D7D');

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `usertype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `admin_atrib` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `mto_atrib` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `recepcion_atrib` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `direccion_atrib` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `operaciones_atrib` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `name`, `password`, `usertype`, `module`, `admin_atrib`, `mto_atrib`, `recepcion_atrib`, `direccion_atrib`, `operaciones_atrib`)
VALUES
	(1,'lschhcordero@gmail.com','hector hugo','$2a$08$oko91QeY.3HFOh/y0OWXNO62NtM6xUw3lMpBMjGLiWiDNt8Lj.Day','Administrador','Monitoreo y Mantenimiento','on',NULL,NULL,NULL,NULL),
	(2,'hector.cordero@icloud.com','Hector Hugo Cordero Rodriguez','$2a$08$REZjymQrzyJPj1DSb9DIzekXRCqTXbYJq6PKxrPvs5WpMbVXnjQJ6','Recepcion','Monitoreo y Mantenimiento','','','on','',''),
	(49,'lebronhernendez120992@gmail.com','Carlos Alberto Hernandez Hernandez','$2a$10$UQo9jyXeb27zUrMHBr35ueXpP3ZZucr0uBsh.eUMy5aIXgEut0KoW','Mantenimiento','Monitoreo y Mantenimiento',NULL,NULL,NULL,NULL,'on'),
	(50,'rolis.pq98@gmail.com','Orlando Cruz Rodriguez','$2a$10$yFdFCuu23Y4uLi1NuQzrUuV2A/n1ExnFnU4vncC3U5HwDzjBwkGAu','Mantenimiento','Monitoreo y Mantenimiento',NULL,'on','',NULL,NULL),
	(52,'mario.soto.mmp@gmail.com','Mario Soto Alonso','$2a$10$PQab6XdHXfutkypG58W7dOaoBOSsd3bkXPQZf8vXwezNW5Po6zAme','Mantenimiento','Monitoreo y Mantenimiento',NULL,NULL,NULL,'on',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
