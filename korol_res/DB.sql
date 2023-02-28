-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (285);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mashin_and_equipment`
--

DROP TABLE IF EXISTS `mashin_and_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mashin_and_equipment` (
  `id` bigint NOT NULL,
  `date_of_registration2` date DEFAULT NULL,
  `depreciation_group2` varchar(255) DEFAULT NULL,
  `invert_number2` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `quantity2` varchar(255) DEFAULT NULL,
  `room2` varchar(255) DEFAULT NULL,
  `useful_life2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mashin_and_equipment`
--

LOCK TABLES `mashin_and_equipment` WRITE;
/*!40000 ALTER TABLE `mashin_and_equipment` DISABLE KEYS */;
INSERT INTO `mashin_and_equipment` VALUES (6,'2011-09-07','3','1101040161','Видеокамера «Сони»',21345.45,'1','AVTO','60'),(7,'2011-09-07','3','1101040162','Проектор',24207.75,'1','AVTO','60'),(8,'2011-09-07','3','1101040172','Экран настенный',7155.75,'1','CHIT','60'),(9,'2011-12-30','3','1101040187','Комплект спутник. оборудования',9490,'1','DIR','60'),(46,'2011-12-30','3','1101040188','Телевизор ЖК 24 ВВК',9418.5,'1','','60'),(47,'2012-11-01','2','1101040192','МФУ лазерное HP LaserJet Pro',7143.29,'1','','36'),(48,'2012-11-30','4','1101040193-199','Тифлофлешплеер ElecGeste DTBP-101',69300,'7','','84'),(49,'2012-12-29','3','1101040200','Факс/копир Panasonic',5398.5,'1','','60'),(50,'2012-12-29','2','1101040201-202','Жесткий диск внеший 2,5\" USB3.0',6006.28,'2','','36'),(51,'2012-12-29','2','1101040203','Компьютер РЕТ, i5-3450 3.1 ГГц',23583.06,'1','','36'),(52,'2012-12-29','2','1101040204','Компьютер РЕТ,Pentium G850',12532.02,'1','','36'),(53,'2012-12-29','2','1101040205','Монитор ЖК 22\" LG Flatron',5940.27,'1','','36'),(54,'2012-12-29','3','1101040206','МФУ лазерное Toshiba E-Studio',21120.96,'1','','36'),(55,'2013-08-02','4','1101040242','Сплит-система Dantex RK-07',15000,'1','','84'),(56,'2013-09-02','2','1101040245','Компьютер\"ЭлСис 207\"',47150,'1','','36'),(57,'2013-09-02','3','1101040246','Микшерный пульт Yamaha МG-82CX c ПО',27500,'1','AVTO','36'),(58,'2013-09-02','3','1101040247','Переговорное устройство\"звукооператор-диктор\"',6000,'1','','36'),(59,'2013-09-27','2','1101040254','Тактильный стенд',9161,'1','','36'),(60,'2013-10-29','3','1101040258','Тифло-Маршрутизатор WiFiASUS',9541.95,'1','','36'),(61,'2013-10-30','2','1101040257','Тифло-коммутатор НР',26075.16,'1','','36'),(62,'2013-11-21','5','1101040263','\"Draftsman\"прибор для рельефного рисования и черчения',6200,'1','','84'),(63,'2013-11-21','2','1101040266','Тактильный стенд ФБ',49950,'1','','36'),(64,'2013-12-03','3','11010402666-86','Направляющая тактильная',147123,'20','','84'),(65,'2013-12-03','3','1101040287-309','Напольная тактильная плитка',151917.76,'23','','84'),(66,'2013-12-05','4','1101040310-363','Тифлофлешплеер ElecGeste DTBP-101',663564.96,'54','','120'),(67,'2013-12-09','','1101040365','Принтер для печати шрифта \"Брайля\"',499000,'1','COMP','60'),(68,'2013-12-18','3','1101040367','Видео-увеличитель\"TOPAZ-20\"',91000,'1','COMP','60'),(69,'2013-12-24','2','1101040368','Звуковой маяк\"Hostcall-SB-1\"',24500,'1','','36'),(70,'2013-12-24','2','1101040369-377','Браслет SH-220-VDE',75411,'9','','36'),(71,'2021-11-25','','1101340551','Механическая пишущая машинка Tatrapoint Standart',60000,'1','','24'),(72,'2013-12-24','2','1101040378-383','Информатор SH-200-VDE',187740,'6','','36'),(73,'2021-10-26','','1101340528','Системный блок Компакт office 1',17114,'1','','24'),(74,'2014-09-25','2','1101040395','Система информирования\"Вирапром NF-FM\"',34000,'1','','36'),(75,'2014-10-27','2','1101040396-97','Компьютер \"Intel Core i3-4330',55489.66,'2','','36'),(76,'2018-12-18','4','1101040415-418','Тифлофлешплеер ElecGeste DTBP-101s',52000,'4','','84'),(77,'2003-11-01','','3101040002','Брошуровщик',22560,'1','','108'),(78,'2005-07-01','6','3101040037','Спутниковая антенна',29232.4,'1','','180'),(79,'2014-10-27','2','1101040398','Компьютер \"Intel Core i5-4570\"',30625.72,'1','','36'),(80,'2020-12-22','','1101340506','Системный блок А8',21815,'1','','24'),(81,'2020-12-22','','1101340507','МФУ pantum M6500',10190,'1','','24'),(82,'2020-12-15','1','1101340500','Компьютер NL-AMD 8gb',16000,'1','','24'),(83,'2020-12-15','3','1101340502','Компьютер NL-AMD 8gb D-Link',17250,'1','','24'),(84,'2020-12-15','1','1101340501','Компьютер NL-AMD 8gb2',16000,'1','','24'),(85,'2021-10-26','','1101340529','Системный блок Компакт office 2',17114,'1','','24'),(86,'2021-10-26','','1101340523','МФУ Pantum (копир/принтер/сканер) 2',14424,'1','','24'),(87,'2021-10-26','','1101340526','Монитор 23.8 Black 2',11800,'1','','24'),(88,'2021-10-26','','1101340527','Монитор 23.8 Black 3',11800,'1','','24'),(89,'2021-12-29','','1101340579','Кресло офисное BRABIX Enter EX-511 экокожа',10816.04,'1','',''),(90,'2021-10-26','','1101340525','Монитор 23.8 Black 1',11800,'1','','24'),(91,'2014-12-03','2','1101040400','Жесткий диск 3.5\"',4970,'1','','36'),(92,'2014-12-08','10','1101040401','Металлические поручни',29668,'1','','300'),(93,'2014-10-27','2','1101040402-404','Монитор ЖК 22\"LG',13880.49,'3','','36'),(94,'2015-09-29','2','1101040405','Цифровые\"говор\".книги на внеш.жестком диске(900 книг)',105000,'1','','36'),(95,'2016-09-01','2','1101040406','Цифровые\"говорящие\"книги с криптозащитойдля записи на флеш-карт.внеш.ж.диск(1100)',159500,'1','','36'),(96,'2018-12-24','','1101040409','Компьютер IRU Office Intel i5 7400',26990,'1','','36'),(97,'2018-12-24','','1101040410','Компьютер IRU Office 315 Intel Core i5 7400',26990,'1','','36'),(98,'2018-12-24','','1101040411','Компьютер С513195Ц NL-Intel Core i3-8100',26990,'1','','36'),(99,'2018-12-24','','1101040412','Компьютер С513195Ц NL-Intel Core i3-8100',26990,'1','','36'),(100,'2018-12-24','','1101040413','Сервер HPE Proliant ML30 Gen9',82000,'1','','36'),(101,'2018-12-24','2','1101040414','Принтер лазерный HP LaserJet Pro M402n',16990,'1','AVTO','36'),(102,'2018-12-18','5','1101040419','Устроиство спец.для чтения\"Говорящих кнаг\"ТФП-СОЛО-1\"',13000,'1','','120'),(103,'2006-12-28','2','1101040073','Монитор LCD 17',5712,'1','','36'),(104,'2007-12-23','2','1101040092','Компьютер',30922.11,'1','','36'),(105,'2007-12-23','2','1101040093','Компьютер',24229.11,'1','','36'),(106,'2007-12-01','2','1101040094','Монитор \"Самсунг\"',9598,'1','','36'),(107,'2008-11-28','2','1101040110','Компьютер',28191.69,'1','','36'),(108,'2008-11-28','2','1101040111','Компьютер',28191.69,'1','','36'),(109,'2008-11-28','2','1101040112','Компьютер',28191.69,'1','','36'),(110,'2008-11-28','2','1101040113','Компьютер',28191.69,'1','','36'),(111,'2009-12-17','2','1101040116','Компьютер',20041.41,'1','','36'),(112,'2009-12-03','4','1101040119','Диктофон цифровой',6664.14,'1','','36'),(113,'2010-11-22','2','1101040121','Компьютер Эверест (грант)',28380.14,'1','','36'),(114,'2010-11-22','2','1101040122','Компьютер Эверест (Грант)',30083.63,'1','','36'),(115,'2010-11-22','2','1101040123','Компьютер Эверест (грант)',11763.1,'1','','36'),(116,'2010-11-22','2','1101040124','Принтер (грант)',14773.13,'1','','36'),(117,'2010-12-29','4','1101040126-129','Сплит-система, 2,15',62000,'4','','84'),(118,'2010-12-29','4','1101040130-133','Сплит-системы 2,95',78000,'4','','84'),(119,'2011-03-21','2','1101040135','Компьютер РЕТ',26874.72,'1','','36'),(120,'2011-04-12','2','1101040136','Термотрансферный принтер',24970,'1','','36'),(121,'2011-04-12','2','1101040137','Ручной лазерный сканер',5900,'1','','36'),(122,'2011-04-12','2','1101040138','Ручной лазерный сканер',5900,'1','','36'),(123,'2011-04-12','2','1101040139','Ручной лазерный сканер',5900,'1','','36'),(124,'2011-08-29','2','1101040141-142','ПК \"Эверест Премиум\"',56074,'1','','36'),(125,'2011-08-29','2','1101040143-144','Принтер лазерный НР',9006,'2','','36'),(126,'2011-08-29','2','1101040145-150','ИПБ АРС',15150,'5','','36'),(127,'2011-09-07','2','1101040160','Ламинатор',3917.39,'1','','36'),(128,'2005-12-31','4','1101040046','Факс \"Panasonic\"',8564.28,'1','','84'),(129,'2006-12-28','2','1101040062','Компьютер',14861.4,'1','','36'),(130,'2006-12-28','2','1101040063','Компьютер',14861.4,'1','','36'),(131,'2006-12-28','2','1101040064','Компьютер',20498.94,'1','','36'),(132,'2006-12-28','2','1101040066','Компьютер',20722.32,'1','','36'),(133,'2007-12-23','2','1101040091','Компьютер',42926.58,'1','','36'),(134,'2019-12-26','2','1101040423','Компьютер HP Desktop Pr A G2, AMD Ryzen 3 Pr 2200G, DDR4 4Gb, 1000Gb, AMD Radeon',18000,'1','','36'),(135,'2019-12-26','3','1101040424','Зеркальная камера Canon EOS 4000D Kit18-55mm III черный',20000,'1','','60'),(136,'2009-12-03','2','110104117','Компьютер',23331.59,'1','','36'),(137,'2021-11-25','','1101340553','Прибор Ориентир',19000,'1','','24'),(138,'2021-10-26','1','1101340521','МФУ Pantum (копир/принтер/сканер) 1',14424,'1','BUH','24'),(139,'2021-11-09','','1101340530','Коммутатор TP-LINK TL-SG3452',30000,'1','AVTO',''),(140,'2021-11-25','','1101340552','Настольный тактильный глобус',40000,'1','COMP','24'),(141,'2021-11-25','','1101340556','Альбом рельефно-графическое пособие',21000,'1','COMP','24'),(142,'2021-11-25','','1101340557','Стенд Joker 6 карманов',17000,'1','SKLAD',''),(143,'2021-11-29','','1101340558','Принтер струйный A3 Epson L1300',49900,'1','PRESTUD',''),(144,'2011-08-29','','11010401511','ИБП\"Кибер\"',4758,'1','списан',''),(145,'2011-09-27','','','Комплект для маркировки брайлем',400,'1','',''),(146,'2021-05-14','1','1101340509','Системный блок Pentium Gold G5420',25214,'1','DOC','24'),(147,'2021-05-28','','1101340510','Сетевое хранилище ZYXEL NAS326',105000,'1','AVTO','24'),(148,'2021-10-26','','1101340524','МФУ Pantum (копир/принтер/сканер) 3',14424,'1','COMP','24'),(149,'2022-05-11','','1101340685','МФУ струйный HP Smart Tank 530 AIO A4 цветной, струйный',30400,'1','BUH',''),(150,'2021-12-28','','1101340577','Ноутбук Lenovo IdeaPad 2',57588,'1','AVTO',''),(151,'2021-12-28','','1101340575','Камера Web Logitech',10370,'1','AVTO',''),(152,'2021-12-28','','1101340578','Персональный компьютер IndexIT BE',24454,'1','AVTO',''),(153,'2021-12-28','','1101340576','Ноутбук Lenovo IdeaPad 1',57588,'1','AVTO',''),(256,'2010-12-24','2','1101040134','Внешний жестк.диск с цифр.говорящ.книгами/1206шт./ ',114459.46,'1','AVTO','36'),(257,'2013-12-11','4','1101040384-393','Тифлофлэшплеер ТФП-432',89900,'10','ZAV','120'),(258,'2014-06-30','2','1101040394','Внешн.жесткий дискс \"говорящ.книг.\"(2000 шт)',186000,'1','AVTO','36'),(259,'2019-04-19','2','1101040421','Цифровые \"говорящие\" книги для записи на флеш-картах накопит. на внеш.жд 1 нак 1',202000,'1','AVTO','36'),(260,'2011-11-15','2','1101040184','Сканир. и читающ.машина для незрячих',78000,'1','COMP','36'),(261,'2021-10-01','1','1101340617','Цифровые \"говорящие\" книги с крипт для записи на флеш-картах (1 накоп 1100 кн)',237770,'1','AVTO','24'),(262,'2011-11-15','3','1101040185','Стац.электрон.видеоувеличитель',84000,'1','COMP','120'),(263,'2013-11-21','4','1101040260-62','Система навигации для незрячих Kap Ten Mobility',72000,'3','ZAV','84'),(264,'2010-08-18','2','1101040120','Брайлевский принтер цвет',250000,'1','COMP','36'),(265,'2011-09-28','4','1101040170','Тифломикрофон со стойкой',5250,'1','STUD','84'),(266,'2013-09-01','2','1101040243','Устройство для чтения PEARL с ПО OpenBook',49000,'1','COMP','36'),(267,'2013-09-02','2','1101040244','Компьютер\"ЭлСиС 207\"спец.раб.место',52000,'1','','36'),(268,'2012-03-16','2','1101040191','Внешн.жестк.диск с цифр.\"говор.\"книгами(2000шт.)',186000,'1','AVTO','36'),(269,'2011-11-15','3','1101040186','Оборуд.для печати тактильн.графики',74000,'1','COMP','120'),(270,'2008-11-13','2','1101040114','Брайлевский портат.дисплей',105000,'1','AVTO','36'),(271,'2017-12-13','2','1101040407','Цифровые\"говорящие\" книги с криптозащитой(1100 книг)',176000,'1','AVTO','36'),(272,'2018-06-27','','1101040408','Цифровые говор.книги внеш.жесткий диск (1 нак.1100 книг)',185900,'1','AVTO','36'),(273,'2009-06-17','2','1101040115','Внешний жёсткий диск с цифр.говор.книгами (678 шт)',67444.98,'1','AVTO','60'),(274,'2013-06-28','2','1101040241','Внешний жесткий диск с цифров.говор.книгами',186000,'1','AVTO','36'),(275,'2011-12-30','2','1101040190','Внешний жесткий диск с\"говорящ.книг.\"-1250шт',110000,'1','AVTO','36');
/*!40000 ALTER TABLE `mashin_and_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movable_property`
--

DROP TABLE IF EXISTS `movable_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movable_property` (
  `id` bigint NOT NULL,
  `date_of_registration` date DEFAULT NULL,
  `depreciation_group` varchar(255) DEFAULT NULL,
  `invert_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `useful_life` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movable_property`
--

LOCK TABLES `movable_property` WRITE;
/*!40000 ALTER TABLE `movable_property` DISABLE KEYS */;
INSERT INTO `movable_property` VALUES (159,'2013-04-25','4','1101060239','Шкаф встроенный 2000*850*270',7230,'1','','84'),(160,'1993-11-01','','1101060005','Сейф',4809.49,'1','','120'),(161,'2005-12-30','','1101060007','Холодильник \"Саратов\"',7269.58,'1','','84'),(162,'2005-12-31','','1101060009','Шкаф комбинированный',4278.93,'1','','60'),(163,'2005-12-30','','1101060011','Стол криволинейный',5794.05,'1','','60'),(164,'2005-12-30','','1101060012','Каркас тумбы приставной',3415.44,'1','','60'),(165,'2005-12-30','','1101060013','Стол компактный',3139.38,'1','','60'),(166,'2006-09-04','','1101060017','Пылесос LG 4258',3641.4,'1','','36'),(167,'2006-09-08','','1101060018','Сейф огнестойкий TOPAZ',9812.4,'1','','120'),(168,'2006-12-28','','1101060022','Шкаф двухстворч./комп.кл./',5508,'1','','84'),(169,'2006-12-28','','1101060024-28','Стол компьютерный с надстройкой/комп.кл./ ',20298,'5','','84'),(170,'2006-12-28','','1101060029','Рецепшен /комп.кл./',10863,'1','','84'),(171,'2007-10-21','','1101060037','Стол компьютерный',3500,'1','AVTO','84'),(172,'2007-10-21','','1101060038-39','Стеллаж',9940,'2','','84'),(173,'2007-10-19','','1101060040','Стол компьютерный',5800,'1','AVTO','84'),(174,'2007-10-19','','1101060041','Стенка двухсекц.',6250,'1','','84'),(175,'2007-10-19','','1101060042','Стойка',5500,'1','','84'),(176,'2007-10-19','','1101060048','Гардероб',3950,'1','','84'),(177,'2007-10-05','','1101060049','Корзина для мусора',3036.59,'1','','60'),(178,'2007-10-01','','1101060050','Весы',3510,'1','','84'),(179,'2008-03-24','','1101060055','Пылесос \"Кёршер\"',12000,'1','','60'),(180,'2008-11-01','','1101060056-61','Стеллаж полуоткрытый',24500,'5','','84'),(181,'2008-11-01','','1101060062','Гардероб',9800,'1','','84'),(182,'2008-11-01','','1101060064-66','Стол рабочий',20400,'3','','84'),(183,'2008-11-01','','1101060068','Стол 2-х тумбовый',7100,'1','','84'),(184,'2008-11-01','','1101060069-70','Витрина стеллаж 900*450*2000',21120,'2','','84'),(185,'2008-11-01','','1101060071-74','Витрина -стелаж 900*450*2400',45600,'4','','84'),(186,'2008-11-01','','1101060075-76','Витрина-стеллаж',17560,'2','','84'),(187,'2008-11-01','','1101060084','Гардероб',4800,'1','','84'),(188,'2009-12-03','','1101060089','Холодильник',9500,'1','','84'),(189,'2009-12-03','','1101060090','Картотека библиотеч.',9563.24,'1','HALL3','84'),(190,'2010-06-30','','1101060091-93','Антресоль к стеллажу',25164,'3','','84'),(191,'2010-06-30','','1101060094','Антресоль к шкафу',8388,'1','','84'),(192,'2010-06-30','','','Шкаф-купе',16581,'1','','84'),(193,'2010-11-15','','1101060099-100','Стол прямоуг.с тумб.',12600,'2','','84'),(194,'2010-11-15','','1101060101','Стол прямоуг.с тумб.',5400,'1','','84'),(195,'2010-11-15','','','Стеллаж книжный',3800,'1','','84'),(196,'2011-06-06','','1101060108','Стол письменный',13720,'1','','84'),(197,'2011-06-05','','1101060109','Шкаф платяной',5300,'1','','84'),(198,'2011-06-05','','1101060110','Шкаф платяной с антресолью',8790,'1','AVTO','84'),(199,'2011-06-05','','1101060111','Шкаф-стеллаж',9360,'1','','84'),(200,'2011-06-05','','1101060112','Стеллаж открытый',28660,'1','','84'),(201,'2011-06-05','','1101060113','Стеллаж открытый стумбой',33820,'1','','84'),(202,'2011-09-07','','1101060114-118','Шкаф с антресолью',45200,'5','','84'),(203,'2011-09-07','','1101060119-121','Полка открытая',11400,'3','','84'),(204,'2011-09-07','','1101060122-124','Стол однотумбовый',10800,'3','','84'),(205,'2011-09-07','','1101060127','Стеллаж',7800,'1','','84'),(206,'2011-09-07','','1101060129','Тумба угловая',5600,'1','','84'),(207,'2011-11-30','4','1101060132','Холодильник Атлант 365',10500,'1','','84'),(208,'2011-12-30','4','1101060134','Шкаф-купе',14950,'1','','84'),(209,'2011-12-30','4','1101060135','Шкаф для одежды',8100,'1','','84'),(210,'2011-12-30','4','1101060136','Стеллаж для документов',6400,'1','','84'),(211,'2011-12-30','4','1101060137','Антресоль',4700,'1','','84'),(212,'2011-12-30','4','1101060138','Стол рабочий угловой',10200,'1','','84'),(213,'2011-12-30','4','1101060139','Стол однотумбовый',4800,'1','','84'),(214,'2011-12-30','4','1101060140','Стол компьютерный',4600,'1','','84'),(215,'2011-12-30','4','1101060141','Тумба приставная',3250,'1','','84'),(216,'2011-12-30','4','1101060142','Тумба выкатная',3500,'1','','84'),(217,'2011-12-30','','1101060143','Шкаф для одежды',9400,'1','','84'),(218,'2011-12-30','','1101060144-145','Шкаф-купе',29900,'2','','84'),(219,'2012-04-23','4','1101060146','Стол рабочий',4400,'1','','84'),(220,'2012-04-23','4','1101060147','Тумба выкатная',3300,'1','','84'),(221,'2012-04-23','4','1101060148','Тумба под оргтехнику',3800,'1','','84'),(222,'2012-04-23','4','1101060149','Стеллаж для документов',7100,'1','','84'),(223,'2012-04-23','','1101060150','Стеллаж для документов',7300,'1','','84'),(224,'2012-04-23','4','1101060151','Шкаф',8300,'1','','84'),(225,'2012-04-23','4','1101060152','Тумба приставная',3800,'1','','84'),(226,'2012-04-23','4','1101060153','Стол однотумбовый',5000,'1','','84'),(227,'2012-08-30','4','1101060158-162','Стол рабочий',22500,'5','','84'),(228,'2012-08-30','','1101060163-167','Тумба выкатная',19750,'5','','84'),(229,'2012-08-30','4','1101060168','Стол двухтумбовый',10380,'1','','84'),(230,'2012-08-30','4','1101060169','Стеллаж для документов',9800,'1','','84'),(231,'2012-08-30','','1101060170','Стеллаж для документов',5640,'1','','84'),(232,'2012-08-30','4','1101060171','Стеллаж для документов',5360,'1','','84'),(233,'2012-08-30','4','1101060172','Шкаф-купе',4400,'1','','84'),(234,'2012-08-30','4','1101060173','Шкаф-купе',19080,'1','','84'),(235,'2012-08-30','4','1101060174','Антресоль-купе 3-дверная',9300,'1','','84'),(236,'2012-08-30','4','1101060175','Шкаф платяной',5850,'1','','84'),(237,'2012-08-30','4','1101060176-177','Антресоль-купе',17180,'2','','84'),(238,'2012-08-30','','1101060178-179','Шкаф-купе',31360,'2','','84'),(239,'2012-08-30','4','1101060180','Антресоль-купе',9400,'1','','84'),(240,'2012-08-30','4','1101060181','Шкаф платяной',18300,'1','','84'),(241,'2012-08-30','4','1101060182','Антресоль тречстворч.',8400,'1','','84'),(242,'2012-12-29','4','1101060191-205','Стеллаж 2300*1200',73950,'15','','84'),(243,'2012-12-29','4','1101060206-208','Стеллаж 2300*800',13710,'3','','84'),(244,'2012-12-29','4','1101060209-210','Стеллаж 2050*750',12300,'2','','84'),(245,'2013-04-25','4','1101060211','Стеллаж 2150*600*180',5180,'1','','84'),(246,'2013-04-25','4','1101060212','Стеллаж 2350*800*250',6210,'1','','84'),(247,'2013-04-25','4','1101060213-215','Стеллаж 2150*900*250',19380,'3','','84'),(248,'2013-04-25','4','1101060216','Стеллаж 2205*1000*300',7050,'1','','84'),(249,'2013-04-25','4','1101060217-238','Стеллаж 2350*1000*250',155980,'22','','84'),(250,'2013-04-25','4','1101060240','Шкаф навесной',3890,'1','','84'),(251,'2013-09-18','4','1101060241-259','Стеллаж для книг',135660,'19','','84'),(252,'2013-09-18','4','1101060261','Тумба для документов',4270,'1','','84'),(253,'2010-06-30','4','1101060095-97','Закрытый стеллаж',49743,'3','','84'),(254,'2011-09-07','4','1101060130-131','Шкаф с антресолью',12400,'2','','84'),(255,'1995-01-01','','','Стол',7914.64,'1','','');
/*!40000 ALTER TABLE `movable_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'my_db'
--

--
-- Dumping routines for database 'my_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 12:00:42