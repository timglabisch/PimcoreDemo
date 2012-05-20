-- MySQL dump 10.13  Distrib 5.1.62, for debian-linux-gnu (x86_64)
--

-- ------------------------------------------------------
-- Server version	5.1.62-0ubuntu0.11.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `filename` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `customSettings` text,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  KEY `filename` (`filename`),
  KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,0,'folder','','/',NULL,0,0,1,1,NULL),(152,1,'folder','img','/',NULL,1332677002,1332677002,1,1,'a:0:{}'),(157,263,'image','aion0168.jpg','/img/niki/','image/jpeg',1332677417,1333489272,1,1,'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}'),(172,263,'image','aion0203.jpg','/img/niki/','image/jpeg',1332677524,1333489273,1,1,'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}'),(175,263,'image','aion0208.jpg','/img/niki/','image/jpeg',1332677545,1333489275,1,1,'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}'),(177,263,'image','aion0216.jpg','/img/niki/','image/jpeg',1332677561,1333489292,1,1,'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}'),(188,263,'image','aion0245.jpg','/img/niki/','image/jpeg',1332677629,1333489278,1,1,'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}'),(191,263,'image','aion0253.jpg','/img/niki/','image/jpeg',1332677647,1333489279,1,1,'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}'),(213,263,'image','aion0319.jpg','/img/niki/','image/jpeg',1332677789,1333489281,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(214,263,'image','aion0320.jpg','/img/niki/','image/jpeg',1332677792,1333489282,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(215,263,'image','aion0321.jpg','/img/niki/','image/jpeg',1332677795,1333489283,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(216,263,'image','aion0324.jpg','/img/niki/','image/jpeg',1332677800,1333489285,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(222,263,'image','aion0337.jpg','/img/niki/','image/jpeg',1332677828,1333489287,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(240,263,'image','aion0385.jpg','/img/niki/','image/jpeg',1332677947,1333489288,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(241,263,'image','aion0386.jpg','/img/niki/','image/jpeg',1332677954,1333489290,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(256,263,'image','aion0420.jpg','/img/niki/','image/jpeg',1332678061,1333489291,1,1,'a:3:{s:10:\"imageWidth\";i:1776;s:11:\"imageHeight\";i:1000;s:25:\"imageDimensionsCalculated\";b:1;}'),(263,152,'folder','niki','/img/',NULL,1333489270,1333489270,1,1,'a:0:{}');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_tags`
--

DROP TABLE IF EXISTS `cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_tags` (
  `id` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `tag` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`tag`),
  KEY `id` (`id`),
  KEY `tag` (`tag`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_tags`
--

LOCK TABLES `cache_tags` WRITE;
/*!40000 ALTER TABLE `cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `allowInherit` tinyint(1) unsigned DEFAULT '0',
  `parentClass` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `propertyVisibility` text,
  `allowVariants` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'news','',1330861722,1332781868,1,1,0,'','/pimcore/static/img/icon/newspaper.png','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependencies`
--

DROP TABLE IF EXISTS `dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependencies` (
  `sourcetype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `sourceid` int(11) unsigned NOT NULL DEFAULT '0',
  `targettype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `targetid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sourcetype`,`sourceid`,`targetid`,`targettype`),
  KEY `sourceid` (`sourceid`),
  KEY `targetid` (`targetid`),
  KEY `sourcetype` (`sourcetype`),
  KEY `targettype` (`targettype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependencies`
--

LOCK TABLES `dependencies` WRITE;
/*!40000 ALTER TABLE `dependencies` DISABLE KEYS */;
INSERT INTO `dependencies` VALUES ('document',208,'asset',175),('document',211,'document',1),('document',213,'document',212),('document',221,'object',2),('document',221,'object',3),('document',221,'document',216),('document',221,'asset',216),('document',221,'document',219),('document',221,'asset',222),('document',222,'asset',214),('object',3,'asset',216);
/*!40000 ALTER TABLE `dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` enum('page','link','snippet','folder','hardlink','email') DEFAULT NULL,
  `key` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `index` int(11) unsigned DEFAULT '999999',
  `published` tinyint(1) unsigned DEFAULT '1',
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  KEY `key` (`key`),
  KEY `path` (`path`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,0,'page','','/',999999,1,0,1332846915,1,1),(195,1,'page','starter','/',1,1,1332545787,1333569330,1,1),(196,1,'page','beginner','/',2,1,1332545801,1333495786,1,1),(199,1,'page','worker','/',3,1,1332779647,1333495786,1,1),(200,1,'page','advanced','/',4,1,1332779660,1333495786,1,1),(201,1,'page','expert','/',5,1,1332779673,1333495786,1,1),(202,1,'page','about','/',7,1,1332779681,1333495786,1,1),(203,202,'page','the_idea','/home/',0,1,1332779703,1332782191,1,1),(204,202,'page','how_to_use','/home/',1,1,1332779713,1332782200,1,1),(205,202,'page','requirements','/home/',2,1,1332779722,1332782210,1,1),(206,195,'page','simpletypes','/starter/',NULL,1,1332779736,1333569297,1,1),(207,206,'page','wysiwyg','/starter/simpletypes/',NULL,1,1332779747,1333567794,1,1),(208,206,'page','image','/starter/simpletypes/',NULL,0,1332779754,1334490273,1,1),(209,200,'page','plugins','/advanced/',1,1,1332781314,1333495623,1,1),(210,196,'page','forms','/beginner/',0,1,1332781828,1333495665,1,1),(211,1,'link','home','/',0,1,1332784923,1333495786,1,1),(212,1,'page','de','/',8,1,1332785324,1333495786,1,1),(213,212,'link','home','/de/',NULL,1,1332786000,1332786019,1,1),(214,212,'page','about','/de/',NULL,1,1332786027,1332786036,1,1),(216,195,'page','documenttypes','/starter/',NULL,1,1333037647,1333494083,1,1),(217,195,'page','objectlist','/starter/',NULL,1,1333037656,1333494070,1,1),(218,195,'page','more','/starter/',NULL,1,1333037665,1333494057,1,1),(219,206,'page','video','/starter/simpletypes/',NULL,1,1333493382,1334490272,1,1),(220,206,'page','checkbox','/starter/simpletypes/',NULL,1,1333493653,1333809282,1,1),(221,206,'page','multihref','/starter/simpletypes/',NULL,1,1333493725,1333809322,1,1),(222,216,'page','blocks','/starter/documenttypes/',NULL,1,1333494127,1333494507,1,1),(223,196,'page','sessions','/beginner/',1,1,1333495619,1333495665,1,1),(224,199,'page','zend','/worker/',NULL,1,1333495701,1333495716,1,1),(225,201,'page','backend','/expert/',NULL,1,1333495732,1333495744,1,1),(226,1,'page','fun','/',6,1,1333495782,1333495802,1,1),(227,226,'page','javascript','/fun/',NULL,1,1333495832,1333495849,1,1),(228,206,'page','table','/starter/simpletypes/',NULL,1,1334490304,1334495224,1,1);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_doctypes`
--

DROP TABLE IF EXISTS `documents_doctypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_doctypes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` enum('page','snippet','email') DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_doctypes`
--

LOCK TABLES `documents_doctypes` WRITE;
/*!40000 ALTER TABLE `documents_doctypes` DISABLE KEYS */;
INSERT INTO `documents_doctypes` VALUES (20,'Comming Soon','','content','soon','','page',1),(21,'Standard Content','','content','default','','page',1);
/*!40000 ALTER TABLE `documents_doctypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_elements`
--

DROP TABLE IF EXISTS `documents_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_elements` (
  `documentId` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`documentId`,`name`),
  KEY `documentId` (`documentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_elements`
--

LOCK TABLES `documents_elements` WRITE;
/*!40000 ALTER TABLE `documents_elements` DISABLE KEYS */;
INSERT INTO `documents_elements` VALUES (1,'href','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(207,'content','wysiwyg','<p>\n	Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n'),(207,'Headline','input','Simple WYSIWYG Input'),(207,'simplecontent','wysiwyg','<p>\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<br />\n	<br />\n	&nbsp;</p>\n'),(208,'Headline','input','Simple Image'),(208,'simpleimage','image','a:7:{s:2:\"id\";i:175;s:3:\"alt\";s:11:\"Aion Scrren\";s:11:\"cropPercent\";b:1;s:9:\"cropWidth\";d:56.60000000000000142108547152020037174224853515625;s:10:\"cropHeight\";d:81.938325991189429942096467129886150360107421875;s:7:\"cropTop\";d:12.7753303964757716215672189719043672084808349609375;s:8:\"cropLeft\";d:36.2000000000000028421709430404007434844970703125;}'),(219,'Headline','input','Video Test'),(219,'myVideo','video','a:2:{s:2:\"id\";s:42:\"http://www.youtube.com/watch?v=shtSn23ak3k\";s:4:\"type\";s:7:\"youtube\";}'),(220,'Headline','input','Checkbox'),(220,'myCheckbox','checkbox','1'),(221,'Headline','input','Multihref'),(221,'multihref','multihref','a:6:{i:0;a:2:{s:2:\"id\";i:216;s:4:\"type\";s:8:\"document\";}i:1;a:2:{s:2:\"id\";i:219;s:4:\"type\";s:8:\"document\";}i:2;a:2:{s:2:\"id\";i:3;s:4:\"type\";s:6:\"object\";}i:3;a:2:{s:2:\"id\";i:222;s:4:\"type\";s:5:\"asset\";}i:4;a:2:{s:2:\"id\";i:2;s:4:\"type\";s:6:\"object\";}i:5;a:2:{s:2:\"id\";i:216;s:4:\"type\";s:5:\"asset\";}}'),(222,'blocktypecontentblock1','select','video'),(222,'blocktypecontentblock2','select','image'),(222,'blocktypecontentblock3','select','date'),(222,'contentblock','block','a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}'),(222,'Headline','input','Start my Blocks :-)'),(222,'myDatecontentblock3','date','1334707200'),(222,'myVideocontentblock1','video','a:2:{s:2:\"id\";s:42:\"http://www.youtube.com/watch?v=c_21FHvJ5N0\";s:4:\"type\";s:7:\"youtube\";}'),(222,'simpleimagecontentblock2','image','a:7:{s:2:\"id\";i:214;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;}'),(228,'Headline','input','Table Test'),(228,'tableName','table','a:2:{i:0;a:3:{i:0;s:7:\"Value 1\";i:1;s:7:\"Value 2\";i:2;s:7:\"Value 3\";}i:1;a:3:{i:0;s:4:\"this\";i:1;s:2:\"is\";i:2;s:4:\"test\";}}');
/*!40000 ALTER TABLE `documents_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_email`
--

DROP TABLE IF EXISTS `documents_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_email` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_email`
--

LOCK TABLES `documents_email` WRITE;
/*!40000 ALTER TABLE `documents_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_hardlink`
--

DROP TABLE IF EXISTS `documents_hardlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_hardlink` (
  `id` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childsFromSource` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_hardlink`
--

LOCK TABLES `documents_hardlink` WRITE;
/*!40000 ALTER TABLE `documents_hardlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_hardlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_link`
--

DROP TABLE IF EXISTS `documents_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_link` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `DEPRECATED_name` varchar(255) DEFAULT NULL,
  `internalType` enum('document','asset') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `internal` int(11) unsigned DEFAULT NULL,
  `direct` varchar(255) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL,
  `DEPRECATED_target` varchar(255) DEFAULT NULL,
  `DEPRECATED_parameters` varchar(255) DEFAULT NULL,
  `DEPRECATED_anchor` varchar(255) DEFAULT NULL,
  `DEPRECATED_title` varchar(255) DEFAULT NULL,
  `DEPRECATED_accesskey` varchar(255) DEFAULT NULL,
  `DEPRECATED_rel` varchar(255) DEFAULT NULL,
  `DEPRECATED_tabindex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_link`
--

LOCK TABLES `documents_link` WRITE;
/*!40000 ALTER TABLE `documents_link` DISABLE KEYS */;
INSERT INTO `documents_link` VALUES (211,NULL,'document',1,'','internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,NULL,'document',212,'','internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `documents_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_page`
--

DROP TABLE IF EXISTS `documents_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_page` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `DEPRECATED_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `prettyUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prettyUrl` (`prettyUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_page`
--

LOCK TABLES `documents_page` WRITE;
/*!40000 ALTER TABLE `documents_page` DISABLE KEYS */;
INSERT INTO `documents_page` VALUES (1,'','content','portal','','','','','',''),(195,'','content','documentlist','',NULL,'The Idea','','',''),(196,'','content','soon','',NULL,'Beginner','','',''),(199,'','content','soon','',NULL,'Worker','','',''),(200,'','content','soon','',NULL,'Advanced','','',''),(201,'','content','soon','',NULL,'Expert','','',''),(202,'','content','soon','',NULL,'About','','',''),(203,'','content','soon','',NULL,'The Idea','','',''),(204,'','content','soon','',NULL,'How to use','','',''),(205,'','content','soon','',NULL,'Requirements','','',''),(206,'','content','documentlist','',NULL,'Dokument - Tags','','',''),(207,'','content','default','/content/starter/wysiwyg.php',NULL,'WYSIWYG','','',''),(208,'','content','default','/content/starter/image.php',NULL,'Image ','','',''),(209,'','content','soon','',NULL,'Plugins','','',NULL),(210,'','content','soon','',NULL,'Forms / EMail','','',''),(212,'','content','soon','',NULL,'','','',''),(214,'','content','soon','',NULL,'','','',''),(216,'','content','soon','',NULL,'','','',''),(217,'','content','soon','',NULL,'','','',''),(218,'','content','soon','',NULL,'','','',''),(219,'','content','default','/content/starter/video.php',NULL,'','','',''),(220,'','content','default','/content/starter/checkbox.php',NULL,'','','',''),(221,'','content','default','/content/starter/multihref.php',NULL,'','','',''),(222,'','content','starter','',NULL,'','','',''),(223,'','content','soon','',NULL,'','','',NULL),(224,'','content','soon','',NULL,'','','',NULL),(225,'','content','soon','',NULL,'','','',NULL),(226,'','content','soon','',NULL,'','','',NULL),(227,'','content','soon','',NULL,'','','',NULL),(228,'','content','default','/content/starter/table.php',NULL,'','','','');
/*!40000 ALTER TABLE `documents_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_snippet`
--

DROP TABLE IF EXISTS `documents_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_snippet` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_snippet`
--

LOCK TABLES `documents_snippet` WRITE;
/*!40000 ALTER TABLE `documents_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_lock`
--

DROP TABLE IF EXISTS `edit_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edit_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `cidtype` (`cid`,`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_lock`
--

LOCK TABLES `edit_lock` WRITE;
/*!40000 ALTER TABLE `edit_lock` DISABLE KEYS */;
INSERT INTO `edit_lock` VALUES (7,12,'document',1,'m78nklg7l6h1gkiu1vskja6gq3',1332192127),(10,4,'document',1,'m78nklg7l6h1gkiu1vskja6gq3',1332192127),(11,3,'document',1,'h6tnsaj1scdorv8b0bfn5mc5m4',1332265138),(12,194,'document',1,'qhg9hlkn499ploqv61elrnssi3',1332328385),(155,212,'document',1,'00i26c1brsq2nb34588tnue472',1333050090),(156,1,'document',1,'qpajl8q30gc7tqpg64ikvobrn1',1333480689),(168,0,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333488950),(189,167,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(190,235,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(191,248,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(192,251,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(193,226,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(194,253,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(195,219,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(196,217,'asset',1,'tl5ahn6s3sdfokbic3tu03dt34',1333489848),(199,225,'document',1,'vrkd0kljrd3nbd82rip5u6pd83',1333495733),(200,226,'document',1,'vrkd0kljrd3nbd82rip5u6pd83',1333495783),(201,227,'document',1,'vrkd0kljrd3nbd82rip5u6pd83',1333495833),(202,214,'document',1,'vrkd0kljrd3nbd82rip5u6pd83',1333495869),(207,216,'document',1,'59k3up7g07a2d9364u0hsteji6',1333528083),(209,210,'document',1,'59k3up7g07a2d9364u0hsteji6',1333528172),(210,223,'document',1,'59k3up7g07a2d9364u0hsteji6',1333528176),(211,224,'document',1,'59k3up7g07a2d9364u0hsteji6',1333528188),(252,152,'asset',1,'jhttobbtcvk7qphp5jdkkfuvj1',1333643870),(253,157,'asset',1,'jhttobbtcvk7qphp5jdkkfuvj1',1333643871),(254,195,'document',1,'v9t0bpt43r9un57erecs429s95',1333809189),(258,1,'object',1,'v9t0bpt43r9un57erecs429s95',1333809309),(259,209,'document',1,'v9t0bpt43r9un57erecs429s95',1333809354),(269,206,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248847),(271,219,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248860),(272,220,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248869),(273,208,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248878),(274,221,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248902),(276,222,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248952),(277,217,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335248963),(278,218,'document',1,'if8ivm5ltba55u6lfg1jk7s7v1',1335249125),(279,228,'document',1,'54j33tr24ue9uan387pmjvhrq4',1336468495),(280,207,'document',1,'pcbbfb8r75tpdfam9ftevq3qm1',1337506915);
/*!40000 ALTER TABLE `edit_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documentId` int(11) DEFAULT NULL,
  `requestUri` varchar(255) DEFAULT NULL,
  `params` text,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `sentDate` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glossary`
--

DROP TABLE IF EXISTS `glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glossary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `abbr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `acronym` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `site` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossary`
--

LOCK TABLES `glossary` WRITE;
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_error_log`
--

DROP TABLE IF EXISTS `http_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `http_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `path` (`path`(255)),
  KEY `code` (`code`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_error_log`
--

LOCK TABLES `http_error_log` WRITE;
/*!40000 ALTER TABLE `http_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `http_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `object_1`
--

DROP TABLE IF EXISTS `object_1`;
/*!50001 DROP VIEW IF EXISTS `object_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_1` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `image` int(11),
  `date` bigint(20),
  `showfrom` bigint(20),
  `showto` bigint(20),
  `image_detail_1` int(11),
  `image_detail_2` int(11),
  `image_detail_3` int(11),
  `image_detail_4` int(11),
  `image_detail_5` int(11),
  `image_detail_6` int(11),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_localized_1_de_AT`
--

DROP TABLE IF EXISTS `object_localized_1_de_AT`;
/*!50001 DROP VIEW IF EXISTS `object_localized_1_de_AT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_localized_1_de_AT` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `image` int(11),
  `date` bigint(20),
  `showfrom` bigint(20),
  `showto` bigint(20),
  `image_detail_1` int(11),
  `image_detail_2` int(11),
  `image_detail_3` int(11),
  `image_detail_4` int(11),
  `image_detail_5` int(11),
  `image_detail_6` int(11),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255),
  `ooo_id` int(11),
  `language` varchar(5),
  `active` tinyint(1),
  `name` varchar(255),
  `teaser` longtext,
  `text` longtext
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_localized_1_default`
--

DROP TABLE IF EXISTS `object_localized_1_default`;
/*!50001 DROP VIEW IF EXISTS `object_localized_1_default`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_localized_1_default` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `image` int(11),
  `date` bigint(20),
  `showfrom` bigint(20),
  `showto` bigint(20),
  `image_detail_1` int(11),
  `image_detail_2` int(11),
  `image_detail_3` int(11),
  `image_detail_4` int(11),
  `image_detail_5` int(11),
  `image_detail_6` int(11),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255),
  `active` longblob,
  `name` varchar(341),
  `teaser` varchar(341),
  `text` varchar(341)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_localized_1_en_GB`
--

DROP TABLE IF EXISTS `object_localized_1_en_GB`;
/*!50001 DROP VIEW IF EXISTS `object_localized_1_en_GB`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_localized_1_en_GB` (
  `oo_id` int(11),
  `oo_classId` int(11),
  `oo_className` varchar(255),
  `image` int(11),
  `date` bigint(20),
  `showfrom` bigint(20),
  `showto` bigint(20),
  `image_detail_1` int(11),
  `image_detail_2` int(11),
  `image_detail_3` int(11),
  `image_detail_4` int(11),
  `image_detail_5` int(11),
  `image_detail_6` int(11),
  `o_id` int(11) unsigned,
  `o_parentId` int(11) unsigned,
  `o_type` enum('object','folder','variant'),
  `o_key` varchar(255),
  `o_path` varchar(255),
  `o_index` int(11) unsigned,
  `o_published` tinyint(1) unsigned,
  `o_creationDate` bigint(20) unsigned,
  `o_modificationDate` bigint(20) unsigned,
  `o_userOwner` int(11) unsigned,
  `o_userModification` int(11) unsigned,
  `o_classId` int(11) unsigned,
  `o_className` varchar(255),
  `ooo_id` int(11),
  `language` varchar(5),
  `active` tinyint(1),
  `name` varchar(255),
  `teaser` longtext,
  `text` longtext
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `object_localized_data_1`
--

DROP TABLE IF EXISTS `object_localized_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_localized_data_1` (
  `ooo_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL DEFAULT '',
  `active` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `teaser` longtext,
  `text` longtext,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `ooo_id` (`ooo_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_localized_data_1`
--

LOCK TABLES `object_localized_data_1` WRITE;
/*!40000 ALTER TABLE `object_localized_data_1` DISABLE KEYS */;
INSERT INTO `object_localized_data_1` VALUES (3,'en',1,'Wellcome to the PreAlpha','Some Teaser Text','<p>\n	Description</p>\n');
/*!40000 ALTER TABLE `object_localized_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_1`
--

DROP TABLE IF EXISTS `object_query_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_1` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '1',
  `oo_className` varchar(255) DEFAULT 'news',
  `image` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT '0',
  `showfrom` bigint(20) DEFAULT '0',
  `showto` bigint(20) DEFAULT '0',
  `image_detail_1` int(11) DEFAULT NULL,
  `image_detail_2` int(11) DEFAULT NULL,
  `image_detail_3` int(11) DEFAULT NULL,
  `image_detail_4` int(11) DEFAULT NULL,
  `image_detail_5` int(11) DEFAULT NULL,
  `image_detail_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_1`
--

LOCK TABLES `object_query_1` WRITE;
/*!40000 ALTER TABLE `object_query_1` DISABLE KEYS */;
INSERT INTO `object_query_1` VALUES (3,1,'news',NULL,1332630000,1332457200,1356908400,NULL,NULL,NULL,216,NULL,NULL);
/*!40000 ALTER TABLE `object_query_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_1`
--

DROP TABLE IF EXISTS `object_relations_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_1` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_1`
--

LOCK TABLES `object_relations_1` WRITE;
/*!40000 ALTER TABLE `object_relations_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_1`
--

DROP TABLE IF EXISTS `object_store_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_1` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `image` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT '0',
  `showfrom` bigint(20) DEFAULT '0',
  `showto` bigint(20) DEFAULT '0',
  `image_detail_1` int(11) DEFAULT NULL,
  `image_detail_2` int(11) DEFAULT NULL,
  `image_detail_3` int(11) DEFAULT NULL,
  `image_detail_4` int(11) DEFAULT NULL,
  `image_detail_5` int(11) DEFAULT NULL,
  `image_detail_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_1`
--

LOCK TABLES `object_store_1` WRITE;
/*!40000 ALTER TABLE `object_store_1` DISABLE KEYS */;
INSERT INTO `object_store_1` VALUES (3,NULL,1332630000,1332457200,1356908400,NULL,NULL,NULL,216,NULL,NULL);
/*!40000 ALTER TABLE `object_store_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `o_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `o_parentId` int(11) unsigned DEFAULT NULL,
  `o_type` enum('object','folder','variant') DEFAULT NULL,
  `o_key` varchar(255) DEFAULT '',
  `o_path` varchar(255) DEFAULT NULL,
  `o_index` int(11) unsigned DEFAULT '0',
  `o_published` tinyint(1) unsigned DEFAULT '1',
  `o_creationDate` bigint(20) unsigned DEFAULT NULL,
  `o_modificationDate` bigint(20) unsigned DEFAULT NULL,
  `o_userOwner` int(11) unsigned DEFAULT NULL,
  `o_userModification` int(11) unsigned DEFAULT NULL,
  `o_classId` int(11) unsigned DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `key` (`o_key`),
  KEY `path` (`o_path`),
  KEY `published` (`o_published`),
  KEY `parentId` (`o_parentId`),
  KEY `type` (`o_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,0,'folder','','/',0,1,0,0,1,1,NULL,NULL),(2,1,'folder','news','/',NULL,1,1332679255,1332679255,1,1,NULL,NULL),(3,2,'object','prealpha','/news/',NULL,1,1332679265,1333555696,1,0,1,'news');
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `cpath` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` enum('text','date','document','asset','object','bool','select') DEFAULT NULL,
  `data` text,
  `inheritable` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`cid`,`ctype`,`name`),
  KEY `cpath` (`cpath`),
  KEY `inheritable` (`inheritable`),
  KEY `ctype` (`ctype`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'document','/','language','text','en_GB',1),(1,'document','/','navigation_name','text','Pimcore Demo',0),(195,'document','/starter','codeview','bool','1',1),(195,'document','/starter','navigation_name','text','Starter',0),(196,'document','/beginner','navigation_name','text','Beginner',0),(200,'document','/advanced','navigation_name','text','Advanced',0),(201,'document','/expert','navigation_name','text','Expert',0),(202,'document','/about','navigation_name','text','about the demo',0),(203,'document','/home/the_idea','navigation_name','text','The Idea',0),(204,'document','/home/how_to_use','navigation_name','text','How to Use',0),(205,'document','/home/requirements','navigation_name','text','Requirements',0),(206,'document','/starter/simpletypes','navigation_name','text','Simple Document Tags',0),(207,'document','/starter/simpletypes/wysiwyg','navigation_name','text','WYSIWYG',0),(208,'document','/starter/simpletypes/image','navigation_name','text','Image',0),(209,'document','/advanced/plugins','navigation_name','text','Plugins',0),(210,'document','/beginner/forms','navigation_name','text','Forms (EMail)',0),(211,'document','/home','navigation_name','text','Home',0),(212,'document','/de','language','text','de_AT',1),(213,'document','/de/home','navigation_name','text','Home',0),(214,'document','/de/about','navigation_name','text','über uns',0),(216,'document','/starter/documenttypes','navigation_name','text','DocumentTypes Part 2',0),(217,'document','/starter/objectlist','navigation_name','text','Objectlist and Routes',0),(218,'document','/starter/more','navigation_name','text','more Examples for Starter',0),(219,'document','/starter/simpletypes/video','navigation_name','text','Video',0),(220,'document','/starter/simpletypes/checkbox','navigation_name','text','Checkbox',0),(221,'document','/starter/simpletypes/multihref','navigation_name','text','Multihref',0),(223,'document','/beginner/sessions','navigation_name','text','Cache & Sessions',0),(224,'document','/worker/zend','navigation_name','text','Zend Framework',0),(225,'document','/expert/backend','navigation_name','text','extend the Backend',0),(226,'document','/fun','navigation_name','text','Freaking out',0),(227,'document','/fun/javascript','navigation_name','text','cool JS Scripts',0),(228,'document','/starter/simpletypes/table','navigation_name','text','Table',0);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties_predefined`
--

DROP TABLE IF EXISTS `properties_predefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties_predefined` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `key` varchar(255) DEFAULT NULL,
  `type` enum('text','document','asset','bool','select','object') DEFAULT NULL,
  `data` text,
  `config` text,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `inheritable` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `id` (`id`),
  KEY `key` (`key`),
  KEY `type` (`type`),
  KEY `ctype` (`ctype`),
  KEY `inheritable` (`inheritable`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_predefined`
--

LOCK TABLES `properties_predefined` WRITE;
/*!40000 ALTER TABLE `properties_predefined` DISABLE KEYS */;
INSERT INTO `properties_predefined` VALUES (1,'Bild-Title (Deutsch)',NULL,'imageTitle_de','text','','','asset',0),(2,'Bild-Title (Englisch)',NULL,'imageTitle_en','text','','','asset',0),(3,'Subnavigation',NULL,'subnav','document','','','document',0),(4,'HEX-Color',NULL,'hexcolor','text','','','asset',0),(5,'Sidebar','','sidebar','document','','','document',1),(6,'Bild-Alt (Deutsch)',NULL,'imageAlt_de','text','','','asset',0),(7,'Bild-Alt (Englisch)',NULL,'imageAlt_en','text','','','asset',0),(8,'Breadcrumbs','','breadcrumbs','bool','','','document',1),(9,'Subnavigation Startpunkt','','navigationRoot','document','','','document',1),(12,'backbutton','Back Button statt Breadcrumbs','backbutton','bool','','','document',0),(13,'hasContentnav','Erlaubt die Darstellung einer Navigation im Content','hascontentnav','bool','','','document',0);
/*!40000 ALTER TABLE `properties_predefined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recyclebin`
--

DROP TABLE IF EXISTS `recyclebin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recyclebin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `amount` int(3) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recyclebin`
--

LOCK TABLES `recyclebin` WRITE;
/*!40000 ALTER TABLE `recyclebin` DISABLE KEYS */;
/*!40000 ALTER TABLE `recyclebin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `statusCode` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `expiry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanitycheck`
--

DROP TABLE IF EXISTS `sanitycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanitycheck` (
  `id` int(11) unsigned NOT NULL,
  `type` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanitycheck`
--

LOCK TABLES `sanitycheck` WRITE;
/*!40000 ALTER TABLE `sanitycheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanitycheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_tasks`
--

DROP TABLE IF EXISTS `schedule_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date` bigint(20) unsigned DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `version` bigint(20) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_tasks`
--

LOCK TABLES `schedule_tasks` WRITE;
/*!40000 ALTER TABLE `schedule_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_backend_data`
--

DROP TABLE IF EXISTS `search_backend_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_backend_data` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(510) DEFAULT NULL,
  `maintype` varchar(8) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `published` bigint(20) DEFAULT NULL,
  `creationDate` bigint(20) DEFAULT NULL,
  `modificationDate` bigint(20) DEFAULT NULL,
  `userOwner` int(11) DEFAULT NULL,
  `userModification` int(11) DEFAULT NULL,
  `data` longtext,
  `properties` text,
  PRIMARY KEY (`id`,`maintype`),
  KEY `fullpath` (`fullpath`(333)),
  KEY `maintype` (`maintype`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `published` (`published`),
  KEY `id` (`id`),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `properties` (`properties`),
  FULLTEXT KEY `fulltext` (`data`,`properties`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_backend_data`
--

LOCK TABLES `search_backend_data` WRITE;
/*!40000 ALTER TABLE `search_backend_data` DISABLE KEYS */;

/*!40000 ALTER TABLE `search_backend_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domains` text,
  `rootId` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rootId` (`rootId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staticroutes`
--

DROP TABLE IF EXISTS `staticroutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staticroutes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `reverse` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `variables` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `defaults` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticroutes`
--

LOCK TABLES `staticroutes` WRITE;
/*!40000 ALTER TABLE `staticroutes` DISABLE KEYS */;
INSERT INTO `staticroutes` VALUES (1,'news','/^\\/([a-z]{2})\\/(.*)-(.*)_n-([0-9]+)/','/%s/%s-%s_n-%d','news','detail','language,category,oname,oid','',0,NULL),(2,'project','/^\\/([a-z]{2})\\/(.*)-(.*)_p-([0-9]+)/','/%s/%s-%s_p-%d','project','detail','language,category,oname,oid','',0,NULL),(3,'casestudy_route','/^\\/([a-z]{2})\\/(.*)_c([0-9]+)/','/%language/kunden/case-studies/%text_c%id','clients','casestudydetail','language,text,id','',0,NULL),(4,'newsitem_route','/^\\/([a-z]{2})\\/(.*)_n([0-9]+)/','/%language/neues/%text_n%id','news','newsdetail','language,text,id','',0,NULL),(5,'teammember_route','/^\\/([a-z]{2})\\/(.*)_t([0-9]+)/','/%language/agentur/team/%text_t%id','content','teamdetail','language,text,id','',0,NULL);
/*!40000 ALTER TABLE `staticroutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_admin`
--

DROP TABLE IF EXISTS `translations_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations_admin` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text CHARACTER SET utf8 COLLATE utf8_bin,
  `date` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_admin`
--

LOCK TABLES `translations_admin` WRITE;
/*!40000 ALTER TABLE `translations_admin` DISABLE KEYS */;
INSERT INTO `translations_admin` VALUES ('Bild','de','',1333809333),('Bild','en','',1333809333),('Breadcrumbs','de','',1332785931),('Breadcrumbs','en','',1332785931),('Comming Soon','de','',1333036223),('Comming Soon','en','',1333036223),('Sidebar','de','',1332785931),('Sidebar','en','',1332785931),('Standard Content','de','',1333493657),('Standard Content','en','',1333493657),('Subnavigation','de','',1332785931),('Subnavigation','en','',1332785931),('Subnavigation Startpunkt','de','',1332785932),('Subnavigation Startpunkt','en','',1332785932),('backbutton','de','',1332785931),('backbutton','en','',1332785931),('hasContentnav','de','',1332785931),('hasContentnav','en','',1332785931),('news','de','',1332789880),('news','en','',1332789880);
/*!40000 ALTER TABLE `translations_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_website`
--

DROP TABLE IF EXISTS `translations_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations_website` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text CHARACTER SET utf8 COLLATE utf8_bin,
  `date` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_website`
--

LOCK TABLES `translations_website` WRITE;
/*!40000 ALTER TABLE `translations_website` DISABLE KEYS */;
INSERT INTO `translations_website` VALUES ('CodeView Document Information','en_GB','',1333489339),('English Version','de_AT','',1333495870),('German Version','en_GB','',1333489339),('Pimcore Demo Project','de_AT','',1333495870),('Pimcore Demo Project','en_GB','',1333489339),('User Template','en_GB','',1333489339),('Websites Files','en_GB','',1333489387),('head.description','de_AT','',1333522996),('head.description','en_GB','',1333493498),('|','de_AT','',1333495870),('|','en_GB','',1333489339);
/*!40000 ALTER TABLE `translations_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_locks`
--

DROP TABLE IF EXISTS `tree_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tree_locks` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` enum('asset','document','object') NOT NULL DEFAULT 'asset',
  `locked` enum('self','propagate') DEFAULT NULL,
  PRIMARY KEY (`id`,`type`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `locked` (`locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_locks`
--

LOCK TABLES `tree_locks` WRITE;
/*!40000 ALTER TABLE `tree_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tree_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` enum('user','userfolder','role','rolefolder') NOT NULL DEFAULT 'user',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL,
  `admin` tinyint(1) unsigned DEFAULT '0',
  `active` tinyint(1) unsigned DEFAULT '1',
  `permissions` varchar(1000) DEFAULT NULL,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`),
  KEY `parentId` (`parentId`),
  KEY `name` (`name`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'user','admin','ec027e0a707439dcdfbc71ee7a8c05b9','admin','','','de',1,1,'assets,classes,clear_cache,clear_temp_files,document_types,documents,glossary,objects,plugins,predefined_properties,redirects,reports,routes,seemode,system_settings,thumbnails,translations','',0,0),(3,0,'user','system',NULL,'','','','en',1,1,'assets,classes,clear_cache,clear_temp_files,document_types,documents,glossary,objects,plugins,predefined_properties,redirects,reports,routes,seemode,system_settings,thumbnails,translations','',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permission_definitions`
--

DROP TABLE IF EXISTS `users_permission_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permission_definitions` (
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permission_definitions`
--

LOCK TABLES `users_permission_definitions` WRITE;
/*!40000 ALTER TABLE `users_permission_definitions` DISABLE KEYS */;
INSERT INTO `users_permission_definitions` VALUES ('assets'),('classes'),('clear_cache'),('clear_temp_files'),('document_types'),('documents'),('glossary'),('objects'),('plugins'),('predefined_properties'),('redirects'),('reports'),('routes'),('seemode'),('system_settings'),('thumbnails'),('translations');
/*!40000 ALTER TABLE `users_permission_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_asset`
--

DROP TABLE IF EXISTS `users_workspaces_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_workspaces_asset` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `rename` tinyint(1) DEFAULT '0',
  `create` tinyint(1) DEFAULT '0',
  `settings` tinyint(1) DEFAULT '0',
  `versions` tinyint(1) DEFAULT '0',
  `properties` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_asset`
--

LOCK TABLES `users_workspaces_asset` WRITE;
/*!40000 ALTER TABLE `users_workspaces_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_document`
--

DROP TABLE IF EXISTS `users_workspaces_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_workspaces_document` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) unsigned DEFAULT '0',
  `view` tinyint(1) unsigned DEFAULT '0',
  `save` tinyint(1) unsigned DEFAULT '0',
  `publish` tinyint(1) unsigned DEFAULT '0',
  `unpublish` tinyint(1) unsigned DEFAULT '0',
  `delete` tinyint(1) unsigned DEFAULT '0',
  `rename` tinyint(1) unsigned DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT '0',
  `settings` tinyint(1) unsigned DEFAULT '0',
  `versions` tinyint(1) unsigned DEFAULT '0',
  `properties` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_document`
--

LOCK TABLES `users_workspaces_document` WRITE;
/*!40000 ALTER TABLE `users_workspaces_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_object`
--

DROP TABLE IF EXISTS `users_workspaces_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_workspaces_object` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) unsigned DEFAULT '0',
  `view` tinyint(1) unsigned DEFAULT '0',
  `save` tinyint(1) unsigned DEFAULT '0',
  `publish` tinyint(1) unsigned DEFAULT '0',
  `unpublish` tinyint(1) unsigned DEFAULT '0',
  `delete` tinyint(1) unsigned DEFAULT '0',
  `rename` tinyint(1) unsigned DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT '0',
  `settings` tinyint(1) unsigned DEFAULT '0',
  `versions` tinyint(1) unsigned DEFAULT '0',
  `properties` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_object`
--

LOCK TABLES `users_workspaces_object` WRITE;
/*!40000 ALTER TABLE `users_workspaces_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) unsigned DEFAULT NULL,
  `note` text,
  `date` bigint(1) unsigned DEFAULT NULL,
  `public` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `serialized` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (18,218,'document',1,NULL,1333494057,0,1),(19,217,'document',1,NULL,1333494070,0,1),(20,216,'document',1,NULL,1333494083,0,1),(27,222,'document',1,NULL,1333494507,0,1),(29,209,'document',1,NULL,1333495623,0,1),(32,210,'document',1,NULL,1333495665,0,1),(33,223,'document',1,NULL,1333495665,0,1),(35,224,'document',1,NULL,1333495716,0,1),(37,225,'document',1,NULL,1333495744,0,1),(40,196,'document',1,NULL,1333495786,0,1),(41,199,'document',1,NULL,1333495786,0,1),(42,200,'document',1,NULL,1333495786,0,1),(43,201,'document',1,NULL,1333495786,0,1),(44,202,'document',1,NULL,1333495786,0,1),(45,212,'document',1,NULL,1333495786,0,1),(47,226,'document',1,NULL,1333495802,0,1),(49,227,'document',1,NULL,1333495849,0,1),(50,3,'object',NULL,'Sanitycheck',1333555696,0,1),(52,207,'document',1,NULL,1333567794,0,1),(54,206,'document',1,NULL,1333569297,0,1),(55,195,'document',1,NULL,1333569330,0,1),(57,220,'document',1,NULL,1333809282,0,1),(58,221,'document',1,NULL,1333809322,0,1),(59,219,'document',1,NULL,1334490272,0,1),(60,208,'document',1,NULL,1334490273,0,1),(64,228,'document',1,NULL,1334495224,0,1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `object_1`
--

/*!50001 DROP TABLE IF EXISTS `object_1`*/;
/*!50001 DROP VIEW IF EXISTS `object_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_1` AS select `object_query_1`.`oo_id` AS `oo_id`,`object_query_1`.`oo_classId` AS `oo_classId`,`object_query_1`.`oo_className` AS `oo_className`,`object_query_1`.`image` AS `image`,`object_query_1`.`date` AS `date`,`object_query_1`.`showfrom` AS `showfrom`,`object_query_1`.`showto` AS `showto`,`object_query_1`.`image_detail_1` AS `image_detail_1`,`object_query_1`.`image_detail_2` AS `image_detail_2`,`object_query_1`.`image_detail_3` AS `image_detail_3`,`object_query_1`.`image_detail_4` AS `image_detail_4`,`object_query_1`.`image_detail_5` AS `image_detail_5`,`object_query_1`.`image_detail_6` AS `image_detail_6`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_1` join `objects` on((`objects`.`o_id` = `object_query_1`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_localized_1_de_AT`
--

/*!50001 DROP TABLE IF EXISTS `object_localized_1_de_AT`*/;
/*!50001 DROP VIEW IF EXISTS `object_localized_1_de_AT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_localized_1_de_AT` AS select `object_1`.`oo_id` AS `oo_id`,`object_1`.`oo_classId` AS `oo_classId`,`object_1`.`oo_className` AS `oo_className`,`object_1`.`image` AS `image`,`object_1`.`date` AS `date`,`object_1`.`showfrom` AS `showfrom`,`object_1`.`showto` AS `showto`,`object_1`.`image_detail_1` AS `image_detail_1`,`object_1`.`image_detail_2` AS `image_detail_2`,`object_1`.`image_detail_3` AS `image_detail_3`,`object_1`.`image_detail_4` AS `image_detail_4`,`object_1`.`image_detail_5` AS `image_detail_5`,`object_1`.`image_detail_6` AS `image_detail_6`,`object_1`.`o_id` AS `o_id`,`object_1`.`o_parentId` AS `o_parentId`,`object_1`.`o_type` AS `o_type`,`object_1`.`o_key` AS `o_key`,`object_1`.`o_path` AS `o_path`,`object_1`.`o_index` AS `o_index`,`object_1`.`o_published` AS `o_published`,`object_1`.`o_creationDate` AS `o_creationDate`,`object_1`.`o_modificationDate` AS `o_modificationDate`,`object_1`.`o_userOwner` AS `o_userOwner`,`object_1`.`o_userModification` AS `o_userModification`,`object_1`.`o_classId` AS `o_classId`,`object_1`.`o_className` AS `o_className`,`object_localized_data_1`.`ooo_id` AS `ooo_id`,`object_localized_data_1`.`language` AS `language`,`object_localized_data_1`.`active` AS `active`,`object_localized_data_1`.`name` AS `name`,`object_localized_data_1`.`teaser` AS `teaser`,`object_localized_data_1`.`text` AS `text` from (`object_1` left join `object_localized_data_1` on(((`object_1`.`o_id` = `object_localized_data_1`.`ooo_id`) and (`object_localized_data_1`.`language` = 'de_AT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_localized_1_default`
--

/*!50001 DROP TABLE IF EXISTS `object_localized_1_default`*/;
/*!50001 DROP VIEW IF EXISTS `object_localized_1_default`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_localized_1_default` AS select `object_1`.`oo_id` AS `oo_id`,`object_1`.`oo_classId` AS `oo_classId`,`object_1`.`oo_className` AS `oo_className`,`object_1`.`image` AS `image`,`object_1`.`date` AS `date`,`object_1`.`showfrom` AS `showfrom`,`object_1`.`showto` AS `showto`,`object_1`.`image_detail_1` AS `image_detail_1`,`object_1`.`image_detail_2` AS `image_detail_2`,`object_1`.`image_detail_3` AS `image_detail_3`,`object_1`.`image_detail_4` AS `image_detail_4`,`object_1`.`image_detail_5` AS `image_detail_5`,`object_1`.`image_detail_6` AS `image_detail_6`,`object_1`.`o_id` AS `o_id`,`object_1`.`o_parentId` AS `o_parentId`,`object_1`.`o_type` AS `o_type`,`object_1`.`o_key` AS `o_key`,`object_1`.`o_path` AS `o_path`,`object_1`.`o_index` AS `o_index`,`object_1`.`o_published` AS `o_published`,`object_1`.`o_creationDate` AS `o_creationDate`,`object_1`.`o_modificationDate` AS `o_modificationDate`,`object_1`.`o_userOwner` AS `o_userOwner`,`object_1`.`o_userModification` AS `o_userModification`,`object_1`.`o_classId` AS `o_classId`,`object_1`.`o_className` AS `o_className`,group_concat(`object_localized_data_1`.`active` separator ',') AS `active`,group_concat(`object_localized_data_1`.`name` separator ',') AS `name`,group_concat(`object_localized_data_1`.`teaser` separator ',') AS `teaser`,group_concat(`object_localized_data_1`.`text` separator ',') AS `text` from (`object_1` left join `object_localized_data_1` on((`object_1`.`o_id` = `object_localized_data_1`.`ooo_id`))) group by `object_1`.`o_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_localized_1_en_GB`
--

/*!50001 DROP TABLE IF EXISTS `object_localized_1_en_GB`*/;
/*!50001 DROP VIEW IF EXISTS `object_localized_1_en_GB`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */

/*!50001 VIEW `object_localized_1_en_GB` AS select `object_1`.`oo_id` AS `oo_id`,`object_1`.`oo_classId` AS `oo_classId`,`object_1`.`oo_className` AS `oo_className`,`object_1`.`image` AS `image`,`object_1`.`date` AS `date`,`object_1`.`showfrom` AS `showfrom`,`object_1`.`showto` AS `showto`,`object_1`.`image_detail_1` AS `image_detail_1`,`object_1`.`image_detail_2` AS `image_detail_2`,`object_1`.`image_detail_3` AS `image_detail_3`,`object_1`.`image_detail_4` AS `image_detail_4`,`object_1`.`image_detail_5` AS `image_detail_5`,`object_1`.`image_detail_6` AS `image_detail_6`,`object_1`.`o_id` AS `o_id`,`object_1`.`o_parentId` AS `o_parentId`,`object_1`.`o_type` AS `o_type`,`object_1`.`o_key` AS `o_key`,`object_1`.`o_path` AS `o_path`,`object_1`.`o_index` AS `o_index`,`object_1`.`o_published` AS `o_published`,`object_1`.`o_creationDate` AS `o_creationDate`,`object_1`.`o_modificationDate` AS `o_modificationDate`,`object_1`.`o_userOwner` AS `o_userOwner`,`object_1`.`o_userModification` AS `o_userModification`,`object_1`.`o_classId` AS `o_classId`,`object_1`.`o_className` AS `o_className`,`object_localized_data_1`.`ooo_id` AS `ooo_id`,`object_localized_data_1`.`language` AS `language`,`object_localized_data_1`.`active` AS `active`,`object_localized_data_1`.`name` AS `name`,`object_localized_data_1`.`teaser` AS `teaser`,`object_localized_data_1`.`text` AS `text` from (`object_1` left join `object_localized_data_1` on(((`object_1`.`o_id` = `object_localized_data_1`.`ooo_id`) and (`object_localized_data_1`.`language` = 'en_GB')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-20 12:30:57
