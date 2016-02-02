-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nyt
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `application_logs`
--

DROP TABLE IF EXISTS `application_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `message` varchar(1024) DEFAULT NULL,
  `priority` int(10) DEFAULT NULL,
  `fileobject` varchar(1024) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `relatedobject` bigint(20) DEFAULT NULL,
  `relatedobjecttype` enum('object','document','asset') DEFAULT NULL,
  `maintenanceChecked` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component` (`component`),
  KEY `timestamp` (`timestamp`),
  KEY `relatedobject` (`relatedobject`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_logs`
--

LOCK TABLES `application_logs` WRITE;
/*!40000 ALTER TABLE `application_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_logs` ENABLE KEYS */;
UNLOCK TABLES;

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
  `path` varchar(765) CHARACTER SET ascii DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `customSettings` text,
  `hasMetaData` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullpath` (`path`,`filename`),
  KEY `parentId` (`parentId`),
  KEY `filename` (`filename`),
  KEY `path` (`path`),
  KEY `modificationDate` (`modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,0,'folder','','/',NULL,1450343960,1450343960,1,1,NULL,0),(2,1,'image','plugins.png','/','image/png',1450346009,1450346359,2,2,'a:3:{s:10:\"imageWidth\";i:290;s:11:\"imageHeight\";i:290;s:25:\"imageDimensionsCalculated\";b:1;}',0),(3,1,'folder','nyt-images','/',NULL,1454315709,1454315709,2,2,'a:0:{}',0),(4,3,'image','nyt_logo_428x56.png','/nyt-images/','image/png',1454315716,1454315716,2,2,'a:3:{s:10:\"imageWidth\";i:428;s:11:\"imageHeight\";i:56;s:25:\"imageDimensionsCalculated\";b:1;}',0),(5,3,'image','devices_tablet_desktop.jpg','/nyt-images/','image/jpeg',1454325877,1454325877,2,2,'a:3:{s:10:\"imageWidth\";i:242;s:11:\"imageHeight\";i:134;s:25:\"imageDimensionsCalculated\";b:1;}',0),(6,3,'image','devices_header.jpg','/nyt-images/','image/jpeg',1454325877,1454325877,2,2,'a:3:{s:10:\"imageWidth\";i:271;s:11:\"imageHeight\";i:175;s:25:\"imageDimensionsCalculated\";b:1;}',0),(7,1,'image','favicon.ico','/','image/x-icon',1454405833,1454405833,2,2,'a:1:{s:25:\"imageDimensionsCalculated\";b:1;}',0),(8,1,'image','favicon_1.ico','/','image/x-icon',1454405872,1454405872,2,2,'a:1:{s:25:\"imageDimensionsCalculated\";b:1;}',0),(9,1,'image','arrow-left.png','/','image/png',1454405883,1454405883,2,2,'a:3:{s:10:\"imageWidth\";i:7;s:11:\"imageHeight\";i:7;s:25:\"imageDimensionsCalculated\";b:1;}',0),(10,1,'image','favicon.jpg','/','image/jpeg',1454405946,1454405946,2,2,'a:1:{s:25:\"imageDimensionsCalculated\";b:1;}',0),(11,1,'image','devices_header.jpg','/','image/jpeg',1454405960,1454405960,2,2,'a:3:{s:10:\"imageWidth\";i:271;s:11:\"imageHeight\";i:175;s:25:\"imageDimensionsCalculated\";b:1;}',0),(12,1,'image','favicon_1.jpg','/','image/jpeg',1454405968,1454405968,2,2,'a:1:{s:25:\"imageDimensionsCalculated\";b:1;}',0),(13,1,'image','favicon_2.jpg','/','image/jpeg',1454406003,1454406003,2,2,'a:3:{s:10:\"imageWidth\";i:40;s:11:\"imageHeight\";i:40;s:25:\"imageDimensionsCalculated\";b:1;}',0),(14,1,'image','icon-quotes.png','/','image/png',1454407149,1454407149,2,2,'a:3:{s:10:\"imageWidth\";i:35;s:11:\"imageHeight\";i:29;s:25:\"imageDimensionsCalculated\";b:1;}',0),(15,1,'image','corporate.png','/','image/png',1454407635,1454407635,2,2,'a:3:{s:10:\"imageWidth\";i:48;s:11:\"imageHeight\";i:70;s:25:\"imageDimensionsCalculated\";b:1;}',0),(16,1,'image','gift.png','/','image/png',1454407694,1454407694,2,2,'a:3:{s:10:\"imageWidth\";i:44;s:11:\"imageHeight\";i:44;s:25:\"imageDimensionsCalculated\";b:1;}',0),(17,1,'folder','email','/',NULL,1454416176,1454416176,2,2,'a:0:{}',0),(19,17,'image','3.jpg','/email/','image/jpeg',1454416202,1454416202,2,2,'a:3:{s:10:\"imageWidth\";i:480;s:11:\"imageHeight\";i:480;s:25:\"imageDimensionsCalculated\";b:1;}',0),(21,17,'image','11.png','/email/','image/png',1454416202,1454416202,2,2,'a:3:{s:10:\"imageWidth\";i:480;s:11:\"imageHeight\";i:480;s:25:\"imageDimensionsCalculated\";b:1;}',0),(22,17,'image','2.png','/email/','image/png',1454416202,1454416202,2,2,'a:3:{s:10:\"imageWidth\";i:480;s:11:\"imageHeight\";i:480;s:25:\"imageDimensionsCalculated\";b:1;}',0),(23,1,'folder','subs-image','/',NULL,1454416791,1454416791,2,2,'a:0:{}',0);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_metadata`
--

DROP TABLE IF EXISTS `assets_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_metadata` (
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `type` enum('input','textarea','asset','document','object','date','select','checkbox') DEFAULT NULL,
  `data` text,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_metadata`
--

LOCK TABLES `assets_metadata` WRITE;
/*!40000 ALTER TABLE `assets_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_metadata_predefined`
--

DROP TABLE IF EXISTS `assets_metadata_predefined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_metadata_predefined` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `language` varchar(255) DEFAULT NULL,
  `type` enum('input','textarea','asset','document','object','date','select','checkbox') DEFAULT NULL,
  `data` text,
  `targetSubtype` enum('image','text','audio','video','document','archive','unknown') DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  `config` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `language` (`language`),
  KEY `targetSubtype` (`targetSubtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_metadata_predefined`
--

LOCK TABLES `assets_metadata_predefined` WRITE;
/*!40000 ALTER TABLE `assets_metadata_predefined` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_metadata_predefined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `id` varchar(165) NOT NULL DEFAULT '',
  `data` longtext,
  `mtime` bigint(20) DEFAULT NULL,
  `expire` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('pimcore_asset_1','O:26:\"Pimcore\\Model\\Asset\\Folder\":17:{s:4:\"type\";s:6:\"folder\";s:2:\"id\";i:1;s:8:\"parentId\";i:0;s:8:\"filename\";s:0:\"\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";N;s:12:\"creationDate\";i:1450343960;s:16:\"modificationDate\";i:1450343960;s:9:\"userOwner\";i:1;s:16:\"userModification\";i:1;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:0:{}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454062319,1456481519),('pimcore_asset_10','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:10;s:8:\"parentId\";i:1;s:8:\"filename\";s:11:\"favicon.jpg\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454405946;s:16:\"modificationDate\";i:1454405946;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:1:{s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454410816,1456830016),('pimcore_asset_11','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:11;s:8:\"parentId\";i:1;s:8:\"filename\";s:18:\"devices_header.jpg\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454405960;s:16:\"modificationDate\";i:1454405960;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:271;s:11:\"imageHeight\";i:175;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454405960,1456825160),('pimcore_asset_12','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:12;s:8:\"parentId\";i:1;s:8:\"filename\";s:13:\"favicon_1.jpg\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454405968;s:16:\"modificationDate\";i:1454405968;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:1:{s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454410816,1456830016),('pimcore_asset_13','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:13;s:8:\"parentId\";i:1;s:8:\"filename\";s:13:\"favicon_2.jpg\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454406003;s:16:\"modificationDate\";i:1454406003;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:40;s:11:\"imageHeight\";i:40;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454406004,1456825204),('pimcore_asset_14','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:14;s:8:\"parentId\";i:1;s:8:\"filename\";s:15:\"icon-quotes.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454407149;s:16:\"modificationDate\";i:1454407149;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:35;s:11:\"imageHeight\";i:29;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454407149,1456826349),('pimcore_asset_15','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:15;s:8:\"parentId\";i:1;s:8:\"filename\";s:13:\"corporate.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454407635;s:16:\"modificationDate\";i:1454407635;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:48;s:11:\"imageHeight\";i:70;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454407636,1456826836),('pimcore_asset_16','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:16;s:8:\"parentId\";i:1;s:8:\"filename\";s:8:\"gift.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454407694;s:16:\"modificationDate\";i:1454407694;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:44;s:11:\"imageHeight\";i:44;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454407694,1456826894),('pimcore_asset_17','O:26:\"Pimcore\\Model\\Asset\\Folder\":17:{s:4:\"type\";s:6:\"folder\";s:2:\"id\";i:17;s:8:\"parentId\";i:1;s:8:\"filename\";s:5:\"email\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";N;s:12:\"creationDate\";i:1454416176;s:16:\"modificationDate\";i:1454416176;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:0:{}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454416177,1456835377),('pimcore_asset_19','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:19;s:8:\"parentId\";i:17;s:8:\"filename\";s:5:\"3.jpg\";s:4:\"path\";s:7:\"/email/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454416202;s:16:\"modificationDate\";i:1454416202;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:480;s:11:\"imageHeight\";i:480;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454416203,1456835403),('pimcore_asset_2','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:2;s:8:\"parentId\";i:1;s:8:\"filename\";s:11:\"plugins.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1450346009;s:16:\"modificationDate\";i:1450346359;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:290;s:11:\"imageHeight\";i:290;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454062320,1456481520),('pimcore_asset_21','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:21;s:8:\"parentId\";i:17;s:8:\"filename\";s:6:\"11.png\";s:4:\"path\";s:7:\"/email/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454416202;s:16:\"modificationDate\";i:1454416202;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:480;s:11:\"imageHeight\";i:480;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454416203,1456835403),('pimcore_asset_22','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:22;s:8:\"parentId\";i:17;s:8:\"filename\";s:5:\"2.png\";s:4:\"path\";s:7:\"/email/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454416202;s:16:\"modificationDate\";i:1454416202;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:480;s:11:\"imageHeight\";i:480;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454416203,1456835403),('pimcore_asset_23','O:26:\"Pimcore\\Model\\Asset\\Folder\":17:{s:4:\"type\";s:6:\"folder\";s:2:\"id\";i:23;s:8:\"parentId\";i:1;s:8:\"filename\";s:10:\"subs-image\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";N;s:12:\"creationDate\";i:1454416791;s:16:\"modificationDate\";i:1454416791;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:0:{}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454416791,1456835991),('pimcore_asset_3','O:26:\"Pimcore\\Model\\Asset\\Folder\":17:{s:4:\"type\";s:6:\"folder\";s:2:\"id\";i:3;s:8:\"parentId\";i:1;s:8:\"filename\";s:10:\"nyt-images\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";N;s:12:\"creationDate\";i:1454315709;s:16:\"modificationDate\";i:1454315709;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:0:{}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454315709,1456734909),('pimcore_asset_4','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:4;s:8:\"parentId\";i:3;s:8:\"filename\";s:19:\"nyt_logo_428x56.png\";s:4:\"path\";s:12:\"/nyt-images/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454315716;s:16:\"modificationDate\";i:1454315716;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:428;s:11:\"imageHeight\";i:56;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454315717,1456734917),('pimcore_asset_5','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:5;s:8:\"parentId\";i:3;s:8:\"filename\";s:26:\"devices_tablet_desktop.jpg\";s:4:\"path\";s:12:\"/nyt-images/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454325877;s:16:\"modificationDate\";i:1454325877;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:242;s:11:\"imageHeight\";i:134;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454325877,1456745077),('pimcore_asset_6','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:6;s:8:\"parentId\";i:3;s:8:\"filename\";s:18:\"devices_header.jpg\";s:4:\"path\";s:12:\"/nyt-images/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454325877;s:16:\"modificationDate\";i:1454325877;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:271;s:11:\"imageHeight\";i:175;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454325877,1456745077),('pimcore_asset_7','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:7;s:8:\"parentId\";i:1;s:8:\"filename\";s:11:\"favicon.ico\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:12:\"image/x-icon\";s:12:\"creationDate\";i:1454405833;s:16:\"modificationDate\";i:1454405833;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:1:{s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454410817,1456830017),('pimcore_asset_8','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:8;s:8:\"parentId\";i:1;s:8:\"filename\";s:13:\"favicon_1.ico\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:12:\"image/x-icon\";s:12:\"creationDate\";i:1454405872;s:16:\"modificationDate\";i:1454405872;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:1:{s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454410816,1456830016),('pimcore_asset_9','O:25:\"Pimcore\\Model\\Asset\\Image\":17:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:9;s:8:\"parentId\";i:1;s:8:\"filename\";s:14:\"arrow-left.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454405883;s:16:\"modificationDate\";i:1454405883;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:7;s:11:\"imageHeight\";i:7;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;}',1454405884,1456825084),('pimcore_document_1','O:27:\"Pimcore\\Model\\Document\\Page\":27:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:8:\"metaData\";a:0:{}s:4:\"type\";s:4:\"page\";s:9:\"prettyUrl\";N;s:3:\"css\";N;s:8:\"personas\";s:0:\"\";s:6:\"module\";s:7:\"website\";s:10:\"controller\";s:4:\"test\";s:6:\"action\";s:5:\"index\";s:8:\"template\";s:0:\"\";s:8:\"elements\";a:0:{}s:23:\"contentMasterDocumentId\";N;s:2:\"id\";i:1;s:8:\"parentId\";i:0;s:3:\"key\";s:0:\"\";s:4:\"path\";s:1:\"/\";s:5:\"index\";i:999999;s:9:\"published\";b:1;s:12:\"creationDate\";i:1450343960;s:16:\"modificationDate\";i:1451380880;s:9:\"userOwner\";i:1;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454062247,1456481447),('pimcore_document_14','O:29:\"Pimcore\\Model\\Document\\Folder\":14:{s:4:\"type\";s:6:\"folder\";s:2:\"id\";i:14;s:8:\"parentId\";i:1;s:3:\"key\";s:6:\"shared\";s:4:\"path\";s:1:\"/\";s:5:\"index\";i:2;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454330068;s:16:\"modificationDate\";i:1454335783;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454335789,1456754989),('pimcore_document_15','O:27:\"Pimcore\\Model\\Document\\Page\":27:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:8:\"metaData\";a:0:{}s:4:\"type\";s:4:\"page\";s:9:\"prettyUrl\";N;s:3:\"css\";s:0:\"\";s:8:\"personas\";s:0:\"\";s:6:\"module\";N;s:10:\"controller\";s:7:\"default\";s:6:\"action\";s:7:\"default\";s:8:\"template\";N;s:8:\"elements\";a:19:{s:13:\"educationRate\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:15:\"Education Rates\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:13:\"educationRate\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:3:\"faq\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:26:\"Frequently Asked Questions\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:3:\"faq\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:17:\"FaqAnsfaqQuesAns1\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:15:\"<p>Answer1</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:17:\"FaqAnsfaqQuesAns1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:17:\"FaqAnsfaqQuesAns2\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:15:\"<p>Answer2</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:17:\"FaqAnsfaqQuesAns2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:17:\"FaqAnsfaqQuesAns3\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:15:\"<p>Answer3</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:17:\"FaqAnsfaqQuesAns3\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:10:\"faqQuesAns\";O:32:\"Pimcore\\Model\\Document\\Tag\\Block\":8:{s:7:\"indices\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}s:7:\"current\";i:0;s:8:\"suffixes\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:10:\"faqQuesAns\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:19:\"FaqQuestfaqQuesAns1\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:9:\"Question1\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:19:\"FaqQuestfaqQuesAns1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:19:\"FaqQuestfaqQuesAns2\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:9:\"Question2\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:19:\"FaqQuestfaqQuesAns2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:19:\"FaqQuestfaqQuesAns3\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:9:\"Question3\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:19:\"FaqQuestfaqQuesAns3\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:7:\"goToEdu\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:220:\"<p>Save 50% on unlimited access to NYTimes.com and NYTimes apps exclusively for educators and students.<br />\n<a href=\"http://www.nytimes.com/subscriptions/edu/lp1474.html?campaignId=3KLL9\">Go to Education Rates</a></p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:7:\"goToEdu\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:11:\"goToHomeDel\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:203:\"<p>Get 50% off for 12 weeks, plus free, unlimited access to NYTimes.com and NYTimes apps.<br />\n<a href=\"https://nytimesathome.com/hd/205?MediaCode=WB7AA&amp;CMP=3FQ49\">Go to Home Delivery Rates</a></p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:11:\"goToHomeDel\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:11:\"homeDelRate\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:19:\"Home Delivery Rates\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:11:\"homeDelRate\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:13:\"moreSubsPrice\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:25:\"More Subscription Options\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:13:\"moreSubsPrice\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:13:\"privacy_block\";O:32:\"Pimcore\\Model\\Document\\Tag\\Block\":8:{s:7:\"indices\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:7:\"current\";i:0;s:8:\"suffixes\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:13:\"privacy_block\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:29:\"privacy_headingprivacy_block1\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:9:\"Question1\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:29:\"privacy_headingprivacy_block1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:29:\"privacy_headingprivacy_block2\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:9:\"Question2\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:29:\"privacy_headingprivacy_block2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:29:\"privacy_wysiwygprivacy_block1\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:15:\"<p>Answer1</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:29:\"privacy_wysiwygprivacy_block1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:29:\"privacy_wysiwygprivacy_block2\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:15:\"<p>Answer2</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:29:\"privacy_wysiwygprivacy_block2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}s:7:\"viewFAQ\";O:31:\"Pimcore\\Model\\Document\\Tag\\Link\":6:{s:4:\"data\";a:12:{s:4:\"text\";s:24:\"View our complete FAQ »\";s:4:\"path\";s:86:\"http://www.nytimes.com/content/help/account/purchases/subscriptions-and-purchases.html\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:4:\"type\";s:8:\"internal\";}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:7:\"viewFAQ\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:15;s:12:\"\0*\0inherited\";b:0;}}s:23:\"contentMasterDocumentId\";N;s:2:\"id\";i:15;s:8:\"parentId\";i:1;s:3:\"key\";s:12:\"subscription\";s:4:\"path\";s:1:\"/\";s:5:\"index\";i:3;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454330172;s:16:\"modificationDate\";i:1454411134;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454411135,1456830335),('pimcore_document_16','O:27:\"Pimcore\\Model\\Document\\Link\":19:{s:8:\"internal\";N;s:12:\"internalType\";N;s:6:\"direct\";s:0:\"\";s:8:\"linktype\";s:8:\"internal\";s:4:\"type\";s:4:\"link\";s:4:\"href\";s:0:\"\";s:2:\"id\";i:16;s:8:\"parentId\";i:14;s:3:\"key\";s:11:\"footer-menu\";s:4:\"path\";s:8:\"/shared/\";s:5:\"index\";i:2;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454334232;s:16:\"modificationDate\";i:1454335190;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454335633,1456754833),('pimcore_document_17','O:27:\"Pimcore\\Model\\Document\\Link\":19:{s:8:\"internal\";N;s:12:\"internalType\";N;s:6:\"direct\";s:14:\"www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:4:\"type\";s:4:\"link\";s:4:\"href\";s:14:\"www.google.com\";s:2:\"id\";i:17;s:8:\"parentId\";i:16;s:3:\"key\";s:4:\"help\";s:4:\"path\";s:20:\"/shared/footer-menu/\";s:5:\"index\";i:1;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454334305;s:16:\"modificationDate\";i:1454335747;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454335789,1456754989),('pimcore_document_18','O:27:\"Pimcore\\Model\\Document\\Link\":19:{s:8:\"internal\";N;s:12:\"internalType\";N;s:6:\"direct\";s:14:\"www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:4:\"type\";s:4:\"link\";s:4:\"href\";s:14:\"www.google.com\";s:2:\"id\";i:18;s:8:\"parentId\";i:16;s:3:\"key\";s:10:\"contact-us\";s:4:\"path\";s:20:\"/shared/footer-menu/\";s:5:\"index\";i:2;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454334317;s:16:\"modificationDate\";i:1454335760;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454335789,1456754989),('pimcore_document_19','O:27:\"Pimcore\\Model\\Document\\Link\":19:{s:8:\"internal\";N;s:12:\"internalType\";N;s:6:\"direct\";s:14:\"www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:4:\"type\";s:4:\"link\";s:4:\"href\";s:14:\"www.google.com\";s:2:\"id\";i:19;s:8:\"parentId\";i:16;s:3:\"key\";s:8:\"feedback\";s:4:\"path\";s:20:\"/shared/footer-menu/\";s:5:\"index\";i:3;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454334329;s:16:\"modificationDate\";i:1454335777;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454335789,1456754989),('pimcore_document_20','O:28:\"Pimcore\\Model\\Document\\Email\":25:{s:4:\"type\";s:5:\"email\";s:7:\"subject\";s:0:\"\";s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:6:\"module\";s:0:\"\";s:10:\"controller\";s:7:\"default\";s:6:\"action\";s:5:\"email\";s:8:\"template\";N;s:8:\"elements\";a:8:{s:24:\"contentblockmyAreablock1\";O:32:\"Pimcore\\Model\\Document\\Tag\\Block\":8:{s:7:\"indices\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:7:\"current\";i:0;s:8:\"suffixes\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:24:\"contentblockmyAreablock1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:50:\"content_imgmyAreablock_contentblockmyAreablock11_1\";O:32:\"Pimcore\\Model\\Document\\Tag\\Image\":14:{s:2:\"id\";i:21;s:3:\"alt\";s:5:\"sdsds\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:50:\"content_imgmyAreablock_contentblockmyAreablock11_1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:50:\"content_imgmyAreablock_contentblockmyAreablock11_2\";O:32:\"Pimcore\\Model\\Document\\Tag\\Image\":14:{s:2:\"id\";i:22;s:3:\"alt\";s:4:\"sdsd\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:50:\"content_imgmyAreablock_contentblockmyAreablock11_2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:50:\"header_textmyAreablock_contentblockmyAreablock11_1\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:390:\"<p style=\"font-style: normal;font-weight: 400;Margin-bottom: 21px;Margin-top: 16px;font-size: 15px;line-height: 24px;font-family: &quot;Open Sans&quot;,sans-serif;color: #60666d;\">Fiji has an amazing array of outdoor activities for you to sample like snorkeling, surfing, and fishing. For those looking for a slow-paced vacation, try a scenic hike, boat rides or helicopter tour.&nbsp;</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:50:\"header_textmyAreablock_contentblockmyAreablock11_1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:50:\"header_textmyAreablock_contentblockmyAreablock11_2\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:187:\"<p>Fiji has a ton of great beaches to check out, regardless of whether you\'re looking for a romantic getaway or a sporty vibe. We\'ve compiled a guide to our favorite beaches in Fiji.</p>\n\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:50:\"header_textmyAreablock_contentblockmyAreablock11_2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:51:\"header_titlemyAreablock_contentblockmyAreablock11_1\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:18:\"Outdoor adventures\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:51:\"header_titlemyAreablock_contentblockmyAreablock11_1\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:51:\"header_titlemyAreablock_contentblockmyAreablock11_2\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:17:\"Beautiful beaches\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:51:\"header_titlemyAreablock_contentblockmyAreablock11_2\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}s:11:\"myAreablock\";O:36:\"Pimcore\\Model\\Document\\Tag\\Areablock\":8:{s:7:\"indices\";a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:12:\"ContentBlock\";}}s:7:\"current\";i:0;s:12:\"currentIndex\";N;s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:11:\"myAreablock\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:20;s:12:\"\0*\0inherited\";b:0;}}s:23:\"contentMasterDocumentId\";N;s:2:\"id\";i:20;s:8:\"parentId\";i:1;s:3:\"key\";s:5:\"email\";s:4:\"path\";s:1:\"/\";s:5:\"index\";i:4;s:9:\"published\";b:1;s:12:\"creationDate\";i:1454414336;s:16:\"modificationDate\";i:1454417783;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454417784,1456836984),('pimcore_document_8','O:30:\"Pimcore\\Model\\Document\\Snippet\":20:{s:4:\"type\";s:7:\"snippet\";s:6:\"module\";s:0:\"\";s:10:\"controller\";s:7:\"default\";s:6:\"action\";s:6:\"header\";s:8:\"template\";N;s:8:\"elements\";a:19:{s:13:\"/demo/aboutUs\";O:31:\"Pimcore\\Model\\Document\\Tag\\Href\":8:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:13:\"/demo/aboutUs\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:9:\"about_nav\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:5:\"About\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:9:\"about_nav\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:11:\"contact_nav\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:7:\"Contact\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:11:\"contact_nav\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:8:\"faqs_nav\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:4:\"Faqs\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:8:\"faqs_nav\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:14:\"free_access_hd\";O:31:\"Pimcore\\Model\\Document\\Tag\\Link\":6:{s:4:\"data\";a:12:{s:4:\"text\";s:21:\"Home Delivery Account\";s:4:\"path\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:4:\"type\";s:8:\"internal\";}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:14:\"free_access_hd\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:11:\"gallary_nav\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:7:\"Gallary\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:11:\"gallary_nav\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:9:\"head-logo\";O:32:\"Pimcore\\Model\\Document\\Tag\\Image\":14:{s:2:\"id\";i:4;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:9:\"head-logo\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:15:\"header1_content\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:0:\"\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:15:\"header1_content\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:8:\"home_nav\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:4:\"Home\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:8:\"home_nav\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:9:\"login_dig\";O:31:\"Pimcore\\Model\\Document\\Tag\\Link\":6:{s:4:\"data\";a:12:{s:4:\"text\";s:6:\"Log in\";s:4:\"path\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:4:\"type\";s:8:\"internal\";}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:9:\"login_dig\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:10:\"meditation\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:10:\"Meditation\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:10:\"meditation\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:10:\"myTextarea\";O:35:\"Pimcore\\Model\\Document\\Tag\\Textarea\":6:{s:4:\"text\";s:9:\"Text Area\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:10:\"myTextarea\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:15:\"Relax_Your_Mind\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:15:\"Relax Your mind\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:15:\"Relax_Your_Mind\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:16:\"shorts_codes_nav\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:11:\"Short Codes\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:16:\"shorts_codes_nav\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:8:\"template\";O:33:\"Pimcore\\Model\\Document\\Tag\\Select\":6:{s:4:\"text\";N;s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:8:\"template\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:10:\"title-logo\";O:32:\"Pimcore\\Model\\Document\\Tag\\Image\":14:{s:2:\"id\";i:6;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:10:\"title-logo\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:9:\"titleDesc\";O:35:\"Pimcore\\Model\\Document\\Tag\\Textarea\":6:{s:4:\"text\";s:59:\"Choose the Times Digital Subscription that is best for you.\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:9:\"titleDesc\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:10:\"titlePrice\";O:32:\"Pimcore\\Model\\Document\\Tag\\Input\":6:{s:4:\"text\";s:33:\"Just 99¢ for Your First 4 Weeks.\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:10:\"titlePrice\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}s:14:\"www.google.com\";O:31:\"Pimcore\\Model\\Document\\Tag\\Link\":6:{s:4:\"data\";a:11:{s:4:\"text\";s:5:\"Login\";s:4:\"path\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:14:\"www.google.com\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:8;s:12:\"\0*\0inherited\";b:0;}}s:23:\"contentMasterDocumentId\";N;s:2:\"id\";i:8;s:8:\"parentId\";i:14;s:3:\"key\";s:6:\"header\";s:4:\"path\";s:8:\"/shared/\";s:5:\"index\";i:0;s:9:\"published\";b:1;s:12:\"creationDate\";i:1451384813;s:16:\"modificationDate\";i:1454333713;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454333713,1456752913),('pimcore_document_9','O:30:\"Pimcore\\Model\\Document\\Snippet\":20:{s:4:\"type\";s:7:\"snippet\";s:6:\"module\";s:0:\"\";s:10:\"controller\";s:7:\"default\";s:6:\"action\";s:6:\"footer\";s:8:\"template\";N;s:8:\"elements\";a:2:{s:15:\"header1_content\";O:34:\"Pimcore\\Model\\Document\\Tag\\Wysiwyg\":6:{s:4:\"text\";s:0:\"\";s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:15:\"header1_content\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:9;s:12:\"\0*\0inherited\";b:0;}s:8:\"template\";O:33:\"Pimcore\\Model\\Document\\Tag\\Select\":6:{s:4:\"text\";N;s:10:\"\0*\0options\";N;s:7:\"\0*\0name\";s:8:\"template\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:9;s:12:\"\0*\0inherited\";b:0;}}s:23:\"contentMasterDocumentId\";N;s:2:\"id\";i:9;s:8:\"parentId\";i:14;s:3:\"key\";s:6:\"footer\";s:4:\"path\";s:8:\"/shared/\";s:5:\"index\";i:1;s:9:\"published\";b:1;s:12:\"creationDate\";i:1451384832;s:16:\"modificationDate\";i:1454330074;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:6:\"locked\";N;}',1454330101,1456749301),('pimcore_document_properties_20','a:0:{}',1454417785,1456836985),('pimcore_object_1','O:27:\"Pimcore\\Model\\Object\\Folder\":14:{s:6:\"o_type\";s:6:\"folder\";s:4:\"o_id\";i:1;s:10:\"o_parentId\";i:0;s:5:\"o_key\";s:0:\"\";s:6:\"o_path\";s:1:\"/\";s:7:\"o_index\";i:999999;s:14:\"o_creationDate\";i:1450343960;s:18:\"o_modificationDate\";i:1450343960;s:11:\"o_userOwner\";i:1;s:18:\"o_userModification\";i:1;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";O:32:\"Pimcore\\Model\\Element\\AdminStyle\":3:{s:18:\"\0*\0elementCssClass\";N;s:14:\"\0*\0elementIcon\";N;s:19:\"\0*\0elementIconClass\";s:19:\"pimcore_icon_folder\";}}',1454062319,1456481519),('pimcore_object_10','O:32:\"Pimcore\\Model\\Object\\PackagePlan\":25:{s:9:\"o_classId\";i:7;s:11:\"o_className\";s:11:\"PackagePlan\";s:15:\"priceThereAfter\";s:3:\"111\";s:14:\"accessTNYTimes\";b:0;s:24:\"accessToNYTimesAppsPhone\";N;s:22:\"accessToNYTimesAppsTab\";b:1;s:28:\"accessToTheFullTimesArchives\";N;s:18:\"shareDigitalAccess\";b:1;s:8:\"isActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:10;s:10:\"o_parentId\";i:13;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:14:\"web-smartphone\";s:6:\"o_path\";s:10:\"/nyt-plan/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454396595;s:18:\"o_modificationDate\";i:1454412262;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454413330,1456832530),('pimcore_object_11','O:32:\"Pimcore\\Model\\Object\\PackagePlan\":25:{s:9:\"o_classId\";i:7;s:11:\"o_className\";s:11:\"PackagePlan\";s:15:\"priceThereAfter\";s:2:\"12\";s:14:\"accessTNYTimes\";N;s:24:\"accessToNYTimesAppsPhone\";b:1;s:22:\"accessToNYTimesAppsTab\";N;s:28:\"accessToTheFullTimesArchives\";N;s:18:\"shareDigitalAccess\";b:1;s:8:\"isActive\";b:0;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:11;s:10:\"o_parentId\";i:13;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:10:\"web-tablet\";s:6:\"o_path\";s:10:\"/nyt-plan/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454396664;s:18:\"o_modificationDate\";i:1454413531;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454413531,1456832731),('pimcore_object_12','O:32:\"Pimcore\\Model\\Object\\PackagePlan\":25:{s:9:\"o_classId\";i:7;s:11:\"o_className\";s:11:\"PackagePlan\";s:15:\"priceThereAfter\";s:3:\"100\";s:14:\"accessTNYTimes\";b:1;s:24:\"accessToNYTimesAppsPhone\";b:1;s:22:\"accessToNYTimesAppsTab\";b:1;s:28:\"accessToTheFullTimesArchives\";N;s:18:\"shareDigitalAccess\";b:1;s:8:\"isActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:12;s:10:\"o_parentId\";i:13;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:18:\"all-digital-access\";s:6:\"o_path\";s:10:\"/nyt-plan/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454396684;s:18:\"o_modificationDate\";i:1454411436;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454413330,1456832530),('pimcore_object_13','O:27:\"Pimcore\\Model\\Object\\Folder\":14:{s:6:\"o_type\";s:6:\"folder\";s:4:\"o_id\";i:13;s:10:\"o_parentId\";i:1;s:5:\"o_key\";s:8:\"nyt-plan\";s:6:\"o_path\";s:1:\"/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454397470;s:18:\"o_modificationDate\";i:1454397470;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454397470,1456816670),('pimcore_object_14','O:27:\"Pimcore\\Model\\Object\\Folder\":14:{s:6:\"o_type\";s:6:\"folder\";s:4:\"o_id\";i:14;s:10:\"o_parentId\";i:1;s:5:\"o_key\";s:12:\"subscription\";s:6:\"o_path\";s:1:\"/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454400934;s:18:\"o_modificationDate\";i:1454400934;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454400935,1456820135),('pimcore_object_26','O:32:\"Pimcore\\Model\\Object\\PackagePlan\":25:{s:9:\"o_classId\";i:7;s:11:\"o_className\";s:11:\"PackagePlan\";s:15:\"priceThereAfter\";s:3:\"111\";s:14:\"accessTNYTimes\";b:1;s:24:\"accessToNYTimesAppsPhone\";b:1;s:22:\"accessToNYTimesAppsTab\";b:1;s:28:\"accessToTheFullTimesArchives\";b:1;s:18:\"shareDigitalAccess\";b:1;s:8:\"isActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:26;s:10:\"o_parentId\";i:13;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:8:\"new-plan\";s:6:\"o_path\";s:10:\"/nyt-plan/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454401665;s:18:\"o_modificationDate\";i:1454412980;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454413330,1456832530),('pimcore_object_27','O:32:\"Pimcore\\Model\\Object\\PackagePlan\":25:{s:9:\"o_classId\";i:7;s:11:\"o_className\";s:11:\"PackagePlan\";s:15:\"priceThereAfter\";s:3:\"222\";s:14:\"accessTNYTimes\";b:1;s:24:\"accessToNYTimesAppsPhone\";N;s:22:\"accessToNYTimesAppsTab\";N;s:28:\"accessToTheFullTimesArchives\";N;s:18:\"shareDigitalAccess\";b:1;s:8:\"isActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:27;s:10:\"o_parentId\";i:13;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:10:\"new-plan-2\";s:6:\"o_path\";s:10:\"/nyt-plan/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454401698;s:18:\"o_modificationDate\";i:1454413553;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454413564,1456832764),('pimcore_object_28','O:32:\"Pimcore\\Model\\Object\\PackagePlan\":25:{s:9:\"o_classId\";i:7;s:11:\"o_className\";s:11:\"PackagePlan\";s:15:\"priceThereAfter\";s:3:\"333\";s:14:\"accessTNYTimes\";b:1;s:24:\"accessToNYTimesAppsPhone\";N;s:22:\"accessToNYTimesAppsTab\";N;s:28:\"accessToTheFullTimesArchives\";N;s:18:\"shareDigitalAccess\";b:1;s:8:\"isActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:28;s:10:\"o_parentId\";i:13;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:10:\"new-plan-3\";s:6:\"o_path\";s:10:\"/nyt-plan/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454401725;s:18:\"o_modificationDate\";i:1454401732;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454413302,1456832502),('pimcore_object_29','O:33:\"Pimcore\\Model\\Object\\Subscription\":23:{s:9:\"o_classId\";i:8;s:11:\"o_className\";s:12:\"Subscription\";s:12:\"subsTypeName\";s:13:\"Times Insider\";s:12:\"substypeDesc\";s:111:\"Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks.\";s:12:\"subsTypeIogo\";O:25:\"Pimcore\\Model\\Asset\\Image\":18:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:13;s:8:\"parentId\";i:1;s:8:\"filename\";s:13:\"favicon_2.jpg\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:12:\"creationDate\";i:1454406003;s:16:\"modificationDate\";i:1454406003;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:40;s:11:\"imageHeight\";i:40;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:24:\"____pimcore_cache_item__\";s:16:\"pimcore_asset_13\";}s:21:\"subsTypeSubscribeLink\";O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:6:\"go to \";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:12:\"subsIsActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:29;s:10:\"o_parentId\";i:14;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:12:\"timesinsider\";s:6:\"o_path\";s:14:\"/subscription/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454404968;s:18:\"o_modificationDate\";i:1454408946;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454408946,1456828146),('pimcore_object_30','O:33:\"Pimcore\\Model\\Object\\Subscription\":23:{s:9:\"o_classId\";i:8;s:11:\"o_className\";s:12:\"Subscription\";s:12:\"subsTypeName\";s:11:\"NYT Opinion\";s:12:\"substypeDesc\";s:111:\"Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks.\";s:12:\"subsTypeIogo\";O:25:\"Pimcore\\Model\\Asset\\Image\":18:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:14;s:8:\"parentId\";i:1;s:8:\"filename\";s:15:\"icon-quotes.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454407149;s:16:\"modificationDate\";i:1454407149;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:35;s:11:\"imageHeight\";i:29;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:24:\"____pimcore_cache_item__\";s:16:\"pimcore_asset_14\";}s:21:\"subsTypeSubscribeLink\";O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:7:\"opinion\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:12:\"subsIsActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:30;s:10:\"o_parentId\";i:14;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:10:\"nytopinion\";s:6:\"o_path\";s:14:\"/subscription/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454407080;s:18:\"o_modificationDate\";i:1454408957;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454408958,1456828158),('pimcore_object_31','O:33:\"Pimcore\\Model\\Object\\Subscription\":23:{s:9:\"o_classId\";i:8;s:11:\"o_className\";s:12:\"Subscription\";s:12:\"subsTypeName\";s:15:\"Corporate Rates\";s:12:\"substypeDesc\";s:83:\"Learn how organizations can save with group access to NYTimes.com and NYTimes apps.\";s:12:\"subsTypeIogo\";O:25:\"Pimcore\\Model\\Asset\\Image\":18:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:15;s:8:\"parentId\";i:1;s:8:\"filename\";s:13:\"corporate.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454407635;s:16:\"modificationDate\";i:1454407635;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:48;s:11:\"imageHeight\";i:70;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:24:\"____pimcore_cache_item__\";s:16:\"pimcore_asset_15\";}s:21:\"subsTypeSubscribeLink\";O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:9:\"corporate\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:12:\"subsIsActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:31;s:10:\"o_parentId\";i:14;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:14:\"corporaterates\";s:6:\"o_path\";s:14:\"/subscription/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454407376;s:18:\"o_modificationDate\";i:1454408479;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454408479,1456827679),('pimcore_object_32','O:33:\"Pimcore\\Model\\Object\\Subscription\":23:{s:9:\"o_classId\";i:8;s:11:\"o_className\";s:12:\"Subscription\";s:12:\"subsTypeName\";s:18:\"Gift Subscriptions\";s:12:\"substypeDesc\";s:72:\"Give unlimited access to NYTimes.com and NYTimes apps for as low as $30.\";s:12:\"subsTypeIogo\";O:25:\"Pimcore\\Model\\Asset\\Image\":18:{s:4:\"type\";s:5:\"image\";s:2:\"id\";i:16;s:8:\"parentId\";i:1;s:8:\"filename\";s:8:\"gift.png\";s:4:\"path\";s:1:\"/\";s:8:\"mimetype\";s:9:\"image/png\";s:12:\"creationDate\";i:1454407694;s:16:\"modificationDate\";i:1454407694;s:9:\"userOwner\";i:2;s:16:\"userModification\";i:2;s:8:\"metadata\";a:0:{}s:6:\"locked\";N;s:14:\"customSettings\";a:3:{s:10:\"imageWidth\";i:44;s:11:\"imageHeight\";i:44;s:25:\"imageDimensionsCalculated\";b:1;}s:11:\"hasMetaData\";b:0;s:8:\"siblings\";N;s:11:\"hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:24:\"____pimcore_cache_item__\";s:16:\"pimcore_asset_16\";}s:21:\"subsTypeSubscribeLink\";O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:17:\"gift subscription\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:12:\"subsIsActive\";b:1;s:16:\"lazyLoadedFields\";N;s:11:\"o_published\";b:1;s:4:\"o_id\";i:32;s:10:\"o_parentId\";i:14;s:6:\"o_type\";s:6:\"object\";s:5:\"o_key\";s:17:\"giftsubscriptions\";s:6:\"o_path\";s:14:\"/subscription/\";s:7:\"o_index\";i:0;s:14:\"o_creationDate\";i:1454407678;s:18:\"o_modificationDate\";i:1454408492;s:11:\"o_userOwner\";i:2;s:18:\"o_userModification\";i:2;s:10:\"o_siblings\";N;s:13:\"o_hasSiblings\";N;s:8:\"o_locked\";N;s:19:\"o_elementAdminStyle\";N;}',1454408493,1456827693),('pimcore_object_properties_29','a:0:{}',1454413627,1456832827),('pimcore_object_properties_30','a:0:{}',1454413626,1456832826),('pimcore_object_properties_31','a:0:{}',1454413624,1456832824),('pimcore_object_properties_32','a:0:{}',1454413626,1456832826),('pimcore_outputfilter_tagmngt','a:0:{}',1454062247,1456481447),('pimcore_site_domain_00543d50e587bdcfe29d4c06a2e64bf2','s:6:\"failed\";',1454411595,1456830795),('pimcore_site_domain_b9e08b3fbbb63c1ee7018482bb460968','s:6:\"failed\";',1454417214,1456836414),('pimcore_system_resource_columns_edit_lock','a:6:{i:0;s:2:\"id\";i:1;s:3:\"cid\";i:2;s:5:\"ctype\";i:3;s:6:\"userId\";i:4;s:9:\"sessionId\";i:5;s:4:\"date\";}',1454411424,1456830624),('pimcore_system_route_redirect','a:0:{}',1454417785,1456836985),('pimcore_system_route_staticroute','a:0:{}',1454417785,1456836985),('pimcore_system_supported_locales_en','a:740:{s:2:\"aa\";s:4:\"Afar\";s:5:\"aa_DJ\";s:15:\"Afar (Djibouti)\";s:5:\"aa_ER\";s:14:\"Afar (Eritrea)\";s:5:\"aa_ET\";s:15:\"Afar (Ethiopia)\";s:2:\"af\";s:9:\"Afrikaans\";s:5:\"af_NA\";s:19:\"Afrikaans (Namibia)\";s:5:\"af_ZA\";s:24:\"Afrikaans (South Africa)\";s:3:\"agq\";s:5:\"Aghem\";s:6:\"agq_CM\";s:16:\"Aghem (Cameroon)\";s:2:\"ak\";s:4:\"Akan\";s:5:\"ak_GH\";s:12:\"Akan (Ghana)\";s:2:\"sq\";s:8:\"Albanian\";s:5:\"sq_AL\";s:18:\"Albanian (Albania)\";s:5:\"sq_XK\";s:17:\"Albanian (Kosovo)\";s:5:\"sq_MK\";s:20:\"Albanian (Macedonia)\";s:5:\"en_US\";s:16:\"American English\";s:2:\"am\";s:7:\"Amharic\";s:5:\"am_ET\";s:18:\"Amharic (Ethiopia)\";s:2:\"ar\";s:6:\"Arabic\";s:5:\"ar_DZ\";s:16:\"Arabic (Algeria)\";s:5:\"ar_BH\";s:16:\"Arabic (Bahrain)\";s:5:\"ar_TD\";s:13:\"Arabic (Chad)\";s:5:\"ar_KM\";s:16:\"Arabic (Comoros)\";s:5:\"ar_DJ\";s:17:\"Arabic (Djibouti)\";s:5:\"ar_EG\";s:14:\"Arabic (Egypt)\";s:5:\"ar_ER\";s:16:\"Arabic (Eritrea)\";s:5:\"ar_IQ\";s:13:\"Arabic (Iraq)\";s:5:\"ar_IL\";s:15:\"Arabic (Israel)\";s:5:\"ar_JO\";s:15:\"Arabic (Jordan)\";s:5:\"ar_KW\";s:15:\"Arabic (Kuwait)\";s:5:\"ar_LB\";s:16:\"Arabic (Lebanon)\";s:5:\"ar_LY\";s:14:\"Arabic (Libya)\";s:5:\"ar_MR\";s:19:\"Arabic (Mauritania)\";s:5:\"ar_MA\";s:16:\"Arabic (Morocco)\";s:5:\"ar_OM\";s:13:\"Arabic (Oman)\";s:5:\"ar_PS\";s:32:\"Arabic (Palestinian Territories)\";s:5:\"ar_QA\";s:14:\"Arabic (Qatar)\";s:5:\"ar_SA\";s:21:\"Arabic (Saudi Arabia)\";s:5:\"ar_SO\";s:16:\"Arabic (Somalia)\";s:5:\"ar_SS\";s:20:\"Arabic (South Sudan)\";s:5:\"ar_SD\";s:14:\"Arabic (Sudan)\";s:5:\"ar_SY\";s:14:\"Arabic (Syria)\";s:5:\"ar_TN\";s:16:\"Arabic (Tunisia)\";s:5:\"ar_AE\";s:29:\"Arabic (United Arab Emirates)\";s:5:\"ar_EH\";s:23:\"Arabic (Western Sahara)\";s:5:\"ar_YE\";s:14:\"Arabic (Yemen)\";s:2:\"hy\";s:8:\"Armenian\";s:5:\"hy_AM\";s:18:\"Armenian (Armenia)\";s:2:\"as\";s:8:\"Assamese\";s:5:\"as_IN\";s:16:\"Assamese (India)\";s:3:\"ast\";s:8:\"Asturian\";s:6:\"ast_ES\";s:16:\"Asturian (Spain)\";s:3:\"asa\";s:3:\"Asu\";s:6:\"asa_TZ\";s:14:\"Asu (Tanzania)\";s:5:\"en_AU\";s:18:\"Australian English\";s:5:\"de_AT\";s:15:\"Austrian German\";s:2:\"az\";s:11:\"Azerbaijani\";s:5:\"az_AZ\";s:24:\"Azerbaijani (Azerbaijan)\";s:10:\"az_Cyrl_AZ\";s:24:\"Azerbaijani (Azerbaijan)\";s:10:\"az_Latn_AZ\";s:24:\"Azerbaijani (Azerbaijan)\";s:3:\"ksf\";s:5:\"Bafia\";s:6:\"ksf_CM\";s:16:\"Bafia (Cameroon)\";s:2:\"bm\";s:7:\"Bambara\";s:5:\"bm_ML\";s:14:\"Bambara (Mali)\";s:3:\"bas\";s:5:\"Basaa\";s:6:\"bas_CM\";s:16:\"Basaa (Cameroon)\";s:2:\"eu\";s:6:\"Basque\";s:5:\"eu_ES\";s:14:\"Basque (Spain)\";s:2:\"be\";s:10:\"Belarusian\";s:5:\"be_BY\";s:20:\"Belarusian (Belarus)\";s:3:\"bem\";s:5:\"Bemba\";s:6:\"bem_ZM\";s:14:\"Bemba (Zambia)\";s:3:\"bez\";s:4:\"Bena\";s:6:\"bez_TZ\";s:15:\"Bena (Tanzania)\";s:2:\"bn\";s:7:\"Bengali\";s:5:\"bn_BD\";s:20:\"Bengali (Bangladesh)\";s:5:\"bn_IN\";s:15:\"Bengali (India)\";s:3:\"byn\";s:4:\"Blin\";s:6:\"byn_ER\";s:14:\"Blin (Eritrea)\";s:3:\"brx\";s:4:\"Bodo\";s:6:\"brx_IN\";s:12:\"Bodo (India)\";s:2:\"bs\";s:7:\"Bosnian\";s:5:\"bs_BA\";s:32:\"Bosnian (Bosnia and Herzegovina)\";s:10:\"bs_Cyrl_BA\";s:32:\"Bosnian (Bosnia and Herzegovina)\";s:10:\"bs_Latn_BA\";s:32:\"Bosnian (Bosnia and Herzegovina)\";s:5:\"pt_BR\";s:20:\"Brazilian Portuguese\";s:2:\"br\";s:6:\"Breton\";s:5:\"br_FR\";s:15:\"Breton (France)\";s:5:\"en_GB\";s:15:\"British English\";s:2:\"bg\";s:9:\"Bulgarian\";s:5:\"bg_BG\";s:20:\"Bulgarian (Bulgaria)\";s:2:\"my\";s:7:\"Burmese\";s:5:\"my_MM\";s:25:\"Burmese (Myanmar (Burma))\";s:5:\"en_CA\";s:16:\"Canadian English\";s:5:\"fr_CA\";s:15:\"Canadian French\";s:2:\"ca\";s:7:\"Catalan\";s:5:\"ca_AD\";s:17:\"Catalan (Andorra)\";s:5:\"ca_FR\";s:16:\"Catalan (France)\";s:5:\"ca_IT\";s:15:\"Catalan (Italy)\";s:5:\"ca_ES\";s:15:\"Catalan (Spain)\";s:14:\"ca_ES_VALENCIA\";s:15:\"Catalan (Spain)\";s:3:\"tzm\";s:23:\"Central Atlas Tamazight\";s:11:\"tzm_Latn_MA\";s:33:\"Central Atlas Tamazight (Morocco)\";s:6:\"tzm_MA\";s:33:\"Central Atlas Tamazight (Morocco)\";s:3:\"chr\";s:8:\"Cherokee\";s:6:\"chr_US\";s:24:\"Cherokee (United States)\";s:3:\"cgg\";s:5:\"Chiga\";s:6:\"cgg_UG\";s:14:\"Chiga (Uganda)\";s:2:\"zh\";s:7:\"Chinese\";s:10:\"zh_Hans_CN\";s:15:\"Chinese (China)\";s:5:\"zh_CN\";s:15:\"Chinese (China)\";s:10:\"zh_Hans_HK\";s:29:\"Chinese (Hong Kong SAR China)\";s:10:\"zh_Hant_HK\";s:29:\"Chinese (Hong Kong SAR China)\";s:5:\"zh_HK\";s:29:\"Chinese (Hong Kong SAR China)\";s:10:\"zh_Hant_MO\";s:25:\"Chinese (Macau SAR China)\";s:5:\"zh_MO\";s:25:\"Chinese (Macau SAR China)\";s:10:\"zh_Hans_MO\";s:25:\"Chinese (Macau SAR China)\";s:10:\"zh_Hans_SG\";s:19:\"Chinese (Singapore)\";s:5:\"zh_SG\";s:19:\"Chinese (Singapore)\";s:5:\"zh_TW\";s:16:\"Chinese (Taiwan)\";s:10:\"zh_Hant_TW\";s:16:\"Chinese (Taiwan)\";s:3:\"ksh\";s:9:\"Colognian\";s:6:\"ksh_DE\";s:19:\"Colognian (Germany)\";s:3:\"swc\";s:13:\"Congo Swahili\";s:6:\"swc_CD\";s:32:\"Congo Swahili (Congo - Kinshasa)\";s:2:\"kw\";s:7:\"Cornish\";s:5:\"kw_GB\";s:24:\"Cornish (United Kingdom)\";s:2:\"hr\";s:8:\"Croatian\";s:5:\"hr_BA\";s:33:\"Croatian (Bosnia and Herzegovina)\";s:5:\"hr_HR\";s:18:\"Croatian (Croatia)\";s:2:\"cs\";s:5:\"Czech\";s:5:\"cs_CZ\";s:22:\"Czech (Czech Republic)\";s:2:\"da\";s:6:\"Danish\";s:5:\"da_DK\";s:16:\"Danish (Denmark)\";s:5:\"da_GL\";s:18:\"Danish (Greenland)\";s:3:\"dua\";s:5:\"Duala\";s:6:\"dua_CM\";s:16:\"Duala (Cameroon)\";s:2:\"nl\";s:5:\"Dutch\";s:5:\"nl_AW\";s:13:\"Dutch (Aruba)\";s:5:\"nl_BQ\";s:29:\"Dutch (Caribbean Netherlands)\";s:5:\"nl_CW\";s:16:\"Dutch (Curaçao)\";s:5:\"nl_NL\";s:19:\"Dutch (Netherlands)\";s:5:\"nl_SX\";s:20:\"Dutch (Sint Maarten)\";s:5:\"nl_SR\";s:16:\"Dutch (Suriname)\";s:2:\"dz\";s:8:\"Dzongkha\";s:5:\"dz_BT\";s:17:\"Dzongkha (Bhutan)\";s:3:\"ebu\";s:4:\"Embu\";s:6:\"ebu_KE\";s:12:\"Embu (Kenya)\";s:2:\"en\";s:7:\"English\";s:5:\"en_AS\";s:24:\"English (American Samoa)\";s:5:\"en_AI\";s:18:\"English (Anguilla)\";s:5:\"en_AG\";s:29:\"English (Antigua and Barbuda)\";s:5:\"en_BS\";s:17:\"English (Bahamas)\";s:5:\"en_BB\";s:18:\"English (Barbados)\";s:5:\"en_BE\";s:17:\"English (Belgium)\";s:5:\"en_BZ\";s:16:\"English (Belize)\";s:5:\"en_BM\";s:17:\"English (Bermuda)\";s:5:\"en_BW\";s:18:\"English (Botswana)\";s:5:\"en_IO\";s:40:\"English (British Indian Ocean Territory)\";s:5:\"en_VG\";s:32:\"English (British Virgin Islands)\";s:5:\"en_CM\";s:18:\"English (Cameroon)\";s:5:\"en_KY\";s:24:\"English (Cayman Islands)\";s:5:\"en_CX\";s:26:\"English (Christmas Island)\";s:5:\"en_CC\";s:33:\"English (Cocos (Keeling) Islands)\";s:5:\"en_CK\";s:22:\"English (Cook Islands)\";s:5:\"en_DG\";s:22:\"English (Diego Garcia)\";s:5:\"en_DM\";s:18:\"English (Dominica)\";s:5:\"en_ER\";s:17:\"English (Eritrea)\";s:6:\"en_150\";s:16:\"English (Europe)\";s:5:\"en_FK\";s:26:\"English (Falkland Islands)\";s:5:\"en_FJ\";s:14:\"English (Fiji)\";s:5:\"en_GM\";s:16:\"English (Gambia)\";s:5:\"en_GH\";s:15:\"English (Ghana)\";s:5:\"en_GI\";s:19:\"English (Gibraltar)\";s:5:\"en_GD\";s:17:\"English (Grenada)\";s:5:\"en_GU\";s:14:\"English (Guam)\";s:5:\"en_GG\";s:18:\"English (Guernsey)\";s:5:\"en_GY\";s:16:\"English (Guyana)\";s:5:\"en_HK\";s:29:\"English (Hong Kong SAR China)\";s:5:\"en_IN\";s:15:\"English (India)\";s:5:\"en_IE\";s:17:\"English (Ireland)\";s:5:\"en_IM\";s:21:\"English (Isle of Man)\";s:5:\"en_JM\";s:17:\"English (Jamaica)\";s:5:\"en_JE\";s:16:\"English (Jersey)\";s:5:\"en_KE\";s:15:\"English (Kenya)\";s:5:\"en_KI\";s:18:\"English (Kiribati)\";s:5:\"en_LS\";s:17:\"English (Lesotho)\";s:5:\"en_LR\";s:17:\"English (Liberia)\";s:5:\"en_MO\";s:25:\"English (Macau SAR China)\";s:5:\"en_MG\";s:20:\"English (Madagascar)\";s:5:\"en_MW\";s:16:\"English (Malawi)\";s:5:\"en_MT\";s:15:\"English (Malta)\";s:5:\"en_MH\";s:26:\"English (Marshall Islands)\";s:5:\"en_MU\";s:19:\"English (Mauritius)\";s:5:\"en_FM\";s:20:\"English (Micronesia)\";s:5:\"en_MS\";s:20:\"English (Montserrat)\";s:5:\"en_NA\";s:17:\"English (Namibia)\";s:5:\"en_NR\";s:15:\"English (Nauru)\";s:5:\"en_NZ\";s:21:\"English (New Zealand)\";s:5:\"en_NG\";s:17:\"English (Nigeria)\";s:5:\"en_NU\";s:14:\"English (Niue)\";s:5:\"en_NF\";s:24:\"English (Norfolk Island)\";s:5:\"en_MP\";s:34:\"English (Northern Mariana Islands)\";s:5:\"en_PK\";s:18:\"English (Pakistan)\";s:5:\"en_PW\";s:15:\"English (Palau)\";s:5:\"en_PG\";s:26:\"English (Papua New Guinea)\";s:5:\"en_PH\";s:21:\"English (Philippines)\";s:5:\"en_PN\";s:26:\"English (Pitcairn Islands)\";s:5:\"en_PR\";s:21:\"English (Puerto Rico)\";s:5:\"en_RW\";s:16:\"English (Rwanda)\";s:5:\"en_SH\";s:22:\"English (Saint Helena)\";s:5:\"en_KN\";s:31:\"English (Saint Kitts and Nevis)\";s:5:\"en_LC\";s:21:\"English (Saint Lucia)\";s:5:\"en_WS\";s:15:\"English (Samoa)\";s:5:\"en_SC\";s:20:\"English (Seychelles)\";s:5:\"en_SL\";s:22:\"English (Sierra Leone)\";s:5:\"en_SG\";s:19:\"English (Singapore)\";s:5:\"en_SX\";s:22:\"English (Sint Maarten)\";s:5:\"en_SB\";s:25:\"English (Solomon Islands)\";s:5:\"en_ZA\";s:22:\"English (South Africa)\";s:5:\"en_SS\";s:21:\"English (South Sudan)\";s:5:\"en_VC\";s:34:\"English (St. Vincent & Grenadines)\";s:5:\"en_SD\";s:15:\"English (Sudan)\";s:5:\"en_SZ\";s:19:\"English (Swaziland)\";s:5:\"en_TZ\";s:18:\"English (Tanzania)\";s:5:\"en_TK\";s:17:\"English (Tokelau)\";s:5:\"en_TO\";s:15:\"English (Tonga)\";s:5:\"en_TT\";s:29:\"English (Trinidad and Tobago)\";s:5:\"en_TC\";s:34:\"English (Turks and Caicos Islands)\";s:5:\"en_TV\";s:16:\"English (Tuvalu)\";s:5:\"en_UM\";s:31:\"English (U.S. Outlying Islands)\";s:5:\"en_VI\";s:29:\"English (U.S. Virgin Islands)\";s:5:\"en_UG\";s:16:\"English (Uganda)\";s:10:\"en_Dsrt_US\";s:23:\"English (United States)\";s:11:\"en_US_POSIX\";s:23:\"English (United States)\";s:5:\"en_VU\";s:17:\"English (Vanuatu)\";s:6:\"en_001\";s:15:\"English (World)\";s:5:\"en_ZM\";s:16:\"English (Zambia)\";s:5:\"en_ZW\";s:18:\"English (Zimbabwe)\";s:2:\"eo\";s:9:\"Esperanto\";s:6:\"eo_001\";s:17:\"Esperanto (World)\";s:2:\"et\";s:8:\"Estonian\";s:5:\"et_EE\";s:18:\"Estonian (Estonia)\";s:5:\"pt_PT\";s:19:\"European Portuguese\";s:5:\"es_ES\";s:16:\"European Spanish\";s:2:\"ee\";s:3:\"Ewe\";s:5:\"ee_GH\";s:11:\"Ewe (Ghana)\";s:5:\"ee_TG\";s:10:\"Ewe (Togo)\";s:3:\"ewo\";s:6:\"Ewondo\";s:6:\"ewo_CM\";s:17:\"Ewondo (Cameroon)\";s:2:\"fo\";s:7:\"Faroese\";s:5:\"fo_FO\";s:23:\"Faroese (Faroe Islands)\";s:3:\"fil\";s:8:\"Filipino\";s:6:\"fil_PH\";s:22:\"Filipino (Philippines)\";s:2:\"fi\";s:7:\"Finnish\";s:5:\"fi_FI\";s:17:\"Finnish (Finland)\";s:5:\"nl_BE\";s:7:\"Flemish\";s:2:\"fr\";s:6:\"French\";s:5:\"fr_DZ\";s:16:\"French (Algeria)\";s:5:\"fr_BE\";s:16:\"French (Belgium)\";s:5:\"fr_BJ\";s:14:\"French (Benin)\";s:5:\"fr_BF\";s:21:\"French (Burkina Faso)\";s:5:\"fr_BI\";s:16:\"French (Burundi)\";s:5:\"fr_CM\";s:17:\"French (Cameroon)\";s:5:\"fr_CF\";s:33:\"French (Central African Republic)\";s:5:\"fr_TD\";s:13:\"French (Chad)\";s:5:\"fr_KM\";s:16:\"French (Comoros)\";s:5:\"fr_CG\";s:28:\"French (Congo - Brazzaville)\";s:5:\"fr_CD\";s:25:\"French (Congo - Kinshasa)\";s:5:\"fr_CI\";s:25:\"French (Côte d’Ivoire)\";s:5:\"fr_DJ\";s:17:\"French (Djibouti)\";s:5:\"fr_GQ\";s:26:\"French (Equatorial Guinea)\";s:5:\"fr_FR\";s:15:\"French (France)\";s:5:\"fr_GF\";s:22:\"French (French Guiana)\";s:5:\"fr_PF\";s:25:\"French (French Polynesia)\";s:5:\"fr_GA\";s:14:\"French (Gabon)\";s:5:\"fr_GP\";s:19:\"French (Guadeloupe)\";s:5:\"fr_GN\";s:15:\"French (Guinea)\";s:5:\"fr_HT\";s:14:\"French (Haiti)\";s:5:\"fr_LU\";s:19:\"French (Luxembourg)\";s:5:\"fr_MG\";s:19:\"French (Madagascar)\";s:5:\"fr_ML\";s:13:\"French (Mali)\";s:5:\"fr_MQ\";s:19:\"French (Martinique)\";s:5:\"fr_MR\";s:19:\"French (Mauritania)\";s:5:\"fr_MU\";s:18:\"French (Mauritius)\";s:5:\"fr_YT\";s:16:\"French (Mayotte)\";s:5:\"fr_MC\";s:15:\"French (Monaco)\";s:5:\"fr_MA\";s:16:\"French (Morocco)\";s:5:\"fr_NC\";s:22:\"French (New Caledonia)\";s:5:\"fr_NE\";s:14:\"French (Niger)\";s:5:\"fr_RW\";s:15:\"French (Rwanda)\";s:5:\"fr_RE\";s:17:\"French (Réunion)\";s:5:\"fr_BL\";s:26:\"French (Saint Barthélemy)\";s:5:\"fr_MF\";s:21:\"French (Saint Martin)\";s:5:\"fr_PM\";s:34:\"French (Saint Pierre and Miquelon)\";s:5:\"fr_SN\";s:16:\"French (Senegal)\";s:5:\"fr_SC\";s:19:\"French (Seychelles)\";s:5:\"fr_SY\";s:14:\"French (Syria)\";s:5:\"fr_TG\";s:13:\"French (Togo)\";s:5:\"fr_TN\";s:16:\"French (Tunisia)\";s:5:\"fr_VU\";s:16:\"French (Vanuatu)\";s:5:\"fr_WF\";s:26:\"French (Wallis and Futuna)\";s:3:\"fur\";s:8:\"Friulian\";s:6:\"fur_IT\";s:16:\"Friulian (Italy)\";s:2:\"ff\";s:5:\"Fulah\";s:5:\"ff_CM\";s:16:\"Fulah (Cameroon)\";s:5:\"ff_GN\";s:14:\"Fulah (Guinea)\";s:5:\"ff_MR\";s:18:\"Fulah (Mauritania)\";s:5:\"ff_SN\";s:15:\"Fulah (Senegal)\";s:2:\"gl\";s:8:\"Galician\";s:5:\"gl_ES\";s:16:\"Galician (Spain)\";s:2:\"lg\";s:5:\"Ganda\";s:5:\"lg_UG\";s:14:\"Ganda (Uganda)\";s:2:\"ka\";s:8:\"Georgian\";s:5:\"ka_GE\";s:18:\"Georgian (Georgia)\";s:2:\"de\";s:6:\"German\";s:5:\"de_BE\";s:16:\"German (Belgium)\";s:5:\"de_DE\";s:16:\"German (Germany)\";s:5:\"de_LI\";s:22:\"German (Liechtenstein)\";s:5:\"de_LU\";s:19:\"German (Luxembourg)\";s:2:\"el\";s:5:\"Greek\";s:5:\"el_CY\";s:14:\"Greek (Cyprus)\";s:5:\"el_GR\";s:14:\"Greek (Greece)\";s:2:\"gu\";s:8:\"Gujarati\";s:5:\"gu_IN\";s:16:\"Gujarati (India)\";s:3:\"guz\";s:5:\"Gusii\";s:6:\"guz_KE\";s:13:\"Gusii (Kenya)\";s:2:\"ha\";s:5:\"Hausa\";s:10:\"ha_Latn_GH\";s:13:\"Hausa (Ghana)\";s:5:\"ha_GH\";s:13:\"Hausa (Ghana)\";s:5:\"ha_NE\";s:13:\"Hausa (Niger)\";s:10:\"ha_Latn_NE\";s:13:\"Hausa (Niger)\";s:10:\"ha_Latn_NG\";s:15:\"Hausa (Nigeria)\";s:5:\"ha_NG\";s:15:\"Hausa (Nigeria)\";s:3:\"haw\";s:8:\"Hawaiian\";s:6:\"haw_US\";s:24:\"Hawaiian (United States)\";s:2:\"he\";s:6:\"Hebrew\";s:5:\"he_IL\";s:15:\"Hebrew (Israel)\";s:2:\"hi\";s:5:\"Hindi\";s:5:\"hi_IN\";s:13:\"Hindi (India)\";s:2:\"hu\";s:9:\"Hungarian\";s:5:\"hu_HU\";s:19:\"Hungarian (Hungary)\";s:2:\"is\";s:9:\"Icelandic\";s:5:\"is_IS\";s:19:\"Icelandic (Iceland)\";s:2:\"ig\";s:4:\"Igbo\";s:5:\"ig_NG\";s:14:\"Igbo (Nigeria)\";s:2:\"id\";s:10:\"Indonesian\";s:5:\"id_ID\";s:22:\"Indonesian (Indonesia)\";s:2:\"ia\";s:11:\"Interlingua\";s:5:\"ia_FR\";s:20:\"Interlingua (France)\";s:2:\"ga\";s:5:\"Irish\";s:5:\"ga_IE\";s:15:\"Irish (Ireland)\";s:2:\"it\";s:7:\"Italian\";s:5:\"it_IT\";s:15:\"Italian (Italy)\";s:5:\"it_SM\";s:20:\"Italian (San Marino)\";s:5:\"it_CH\";s:21:\"Italian (Switzerland)\";s:2:\"ja\";s:8:\"Japanese\";s:5:\"ja_JP\";s:16:\"Japanese (Japan)\";s:3:\"dyo\";s:10:\"Jola-Fonyi\";s:6:\"dyo_SN\";s:20:\"Jola-Fonyi (Senegal)\";s:3:\"kea\";s:12:\"Kabuverdianu\";s:6:\"kea_CV\";s:25:\"Kabuverdianu (Cape Verde)\";s:3:\"kab\";s:6:\"Kabyle\";s:6:\"kab_DZ\";s:16:\"Kabyle (Algeria)\";s:3:\"kkj\";s:4:\"Kako\";s:6:\"kkj_CM\";s:15:\"Kako (Cameroon)\";s:2:\"kl\";s:11:\"Kalaallisut\";s:5:\"kl_GL\";s:23:\"Kalaallisut (Greenland)\";s:3:\"kln\";s:8:\"Kalenjin\";s:6:\"kln_KE\";s:16:\"Kalenjin (Kenya)\";s:3:\"kam\";s:5:\"Kamba\";s:6:\"kam_KE\";s:13:\"Kamba (Kenya)\";s:2:\"kn\";s:7:\"Kannada\";s:5:\"kn_IN\";s:15:\"Kannada (India)\";s:2:\"ks\";s:8:\"Kashmiri\";s:5:\"ks_IN\";s:16:\"Kashmiri (India)\";s:10:\"ks_Arab_IN\";s:16:\"Kashmiri (India)\";s:2:\"kk\";s:6:\"Kazakh\";s:5:\"kk_KZ\";s:19:\"Kazakh (Kazakhstan)\";s:10:\"kk_Cyrl_KZ\";s:19:\"Kazakh (Kazakhstan)\";s:2:\"km\";s:5:\"Khmer\";s:5:\"km_KH\";s:16:\"Khmer (Cambodia)\";s:2:\"ki\";s:6:\"Kikuyu\";s:5:\"ki_KE\";s:14:\"Kikuyu (Kenya)\";s:2:\"rw\";s:11:\"Kinyarwanda\";s:5:\"rw_RW\";s:20:\"Kinyarwanda (Rwanda)\";s:3:\"kok\";s:7:\"Konkani\";s:6:\"kok_IN\";s:15:\"Konkani (India)\";s:2:\"ko\";s:6:\"Korean\";s:5:\"ko_KP\";s:20:\"Korean (North Korea)\";s:5:\"ko_KR\";s:20:\"Korean (South Korea)\";s:3:\"khq\";s:12:\"Koyra Chiini\";s:6:\"khq_ML\";s:19:\"Koyra Chiini (Mali)\";s:3:\"ses\";s:15:\"Koyraboro Senni\";s:6:\"ses_ML\";s:22:\"Koyraboro Senni (Mali)\";s:3:\"nmg\";s:6:\"Kwasio\";s:6:\"nmg_CM\";s:17:\"Kwasio (Cameroon)\";s:2:\"ky\";s:6:\"Kyrgyz\";s:3:\"lkt\";s:6:\"Lakota\";s:6:\"lkt_US\";s:22:\"Lakota (United States)\";s:3:\"lag\";s:5:\"Langi\";s:6:\"lag_TZ\";s:16:\"Langi (Tanzania)\";s:2:\"lo\";s:3:\"Lao\";s:5:\"lo_LA\";s:10:\"Lao (Laos)\";s:6:\"es_419\";s:22:\"Latin American Spanish\";s:2:\"lv\";s:7:\"Latvian\";s:5:\"lv_LV\";s:16:\"Latvian (Latvia)\";s:2:\"ln\";s:7:\"Lingala\";s:5:\"ln_AO\";s:16:\"Lingala (Angola)\";s:5:\"ln_CF\";s:34:\"Lingala (Central African Republic)\";s:5:\"ln_CG\";s:29:\"Lingala (Congo - Brazzaville)\";s:5:\"ln_CD\";s:26:\"Lingala (Congo - Kinshasa)\";s:2:\"lt\";s:10:\"Lithuanian\";s:5:\"lt_LT\";s:22:\"Lithuanian (Lithuania)\";s:2:\"lu\";s:12:\"Luba-Katanga\";s:5:\"lu_CD\";s:31:\"Luba-Katanga (Congo - Kinshasa)\";s:3:\"luo\";s:3:\"Luo\";s:6:\"luo_KE\";s:11:\"Luo (Kenya)\";s:3:\"luy\";s:5:\"Luyia\";s:6:\"luy_KE\";s:13:\"Luyia (Kenya)\";s:2:\"mk\";s:10:\"Macedonian\";s:5:\"mk_MK\";s:22:\"Macedonian (Macedonia)\";s:3:\"jmc\";s:7:\"Machame\";s:6:\"jmc_TZ\";s:18:\"Machame (Tanzania)\";s:3:\"mgh\";s:14:\"Makhuwa-Meetto\";s:6:\"mgh_MZ\";s:27:\"Makhuwa-Meetto (Mozambique)\";s:3:\"kde\";s:7:\"Makonde\";s:6:\"kde_TZ\";s:18:\"Makonde (Tanzania)\";s:2:\"mg\";s:8:\"Malagasy\";s:5:\"mg_MG\";s:21:\"Malagasy (Madagascar)\";s:2:\"ms\";s:5:\"Malay\";s:10:\"ms_Latn_BN\";s:14:\"Malay (Brunei)\";s:5:\"ms_BN\";s:14:\"Malay (Brunei)\";s:5:\"ms_MY\";s:16:\"Malay (Malaysia)\";s:10:\"ms_Latn_MY\";s:16:\"Malay (Malaysia)\";s:10:\"ms_Latn_SG\";s:17:\"Malay (Singapore)\";s:5:\"ms_SG\";s:17:\"Malay (Singapore)\";s:2:\"ml\";s:9:\"Malayalam\";s:5:\"ml_IN\";s:17:\"Malayalam (India)\";s:2:\"mt\";s:7:\"Maltese\";s:5:\"mt_MT\";s:15:\"Maltese (Malta)\";s:2:\"gv\";s:4:\"Manx\";s:5:\"gv_IM\";s:18:\"Manx (Isle of Man)\";s:2:\"mr\";s:7:\"Marathi\";s:5:\"mr_IN\";s:15:\"Marathi (India)\";s:3:\"mas\";s:5:\"Masai\";s:6:\"mas_KE\";s:13:\"Masai (Kenya)\";s:6:\"mas_TZ\";s:16:\"Masai (Tanzania)\";s:3:\"mer\";s:4:\"Meru\";s:6:\"mer_KE\";s:12:\"Meru (Kenya)\";s:3:\"mgo\";s:5:\"Meta\'\";s:6:\"mgo_CM\";s:16:\"Meta\' (Cameroon)\";s:5:\"es_MX\";s:15:\"Mexican Spanish\";s:6:\"ar_001\";s:22:\"Modern Standard Arabic\";s:5:\"ro_MD\";s:9:\"Moldavian\";s:2:\"mn\";s:9:\"Mongolian\";s:10:\"mn_Cyrl_MN\";s:20:\"Mongolian (Mongolia)\";s:5:\"mn_MN\";s:20:\"Mongolian (Mongolia)\";s:3:\"mfe\";s:8:\"Morisyen\";s:6:\"mfe_MU\";s:20:\"Morisyen (Mauritius)\";s:3:\"mua\";s:7:\"Mundang\";s:6:\"mua_CM\";s:18:\"Mundang (Cameroon)\";s:3:\"naq\";s:4:\"Nama\";s:6:\"naq_NA\";s:14:\"Nama (Namibia)\";s:2:\"ne\";s:6:\"Nepali\";s:5:\"ne_IN\";s:14:\"Nepali (India)\";s:5:\"ne_NP\";s:14:\"Nepali (Nepal)\";s:3:\"nnh\";s:9:\"Ngiemboon\";s:6:\"nnh_CM\";s:20:\"Ngiemboon (Cameroon)\";s:3:\"jgo\";s:6:\"Ngomba\";s:6:\"jgo_CM\";s:17:\"Ngomba (Cameroon)\";s:2:\"nd\";s:13:\"North Ndebele\";s:5:\"nd_ZW\";s:24:\"North Ndebele (Zimbabwe)\";s:2:\"se\";s:13:\"Northern Sami\";s:5:\"se_FI\";s:23:\"Northern Sami (Finland)\";s:5:\"se_NO\";s:22:\"Northern Sami (Norway)\";s:3:\"nso\";s:14:\"Northern Sotho\";s:6:\"nso_ZA\";s:29:\"Northern Sotho (South Africa)\";s:2:\"nb\";s:17:\"Norwegian Bokmål\";s:5:\"nb_NO\";s:26:\"Norwegian Bokmål (Norway)\";s:5:\"nb_SJ\";s:42:\"Norwegian Bokmål (Svalbard and Jan Mayen)\";s:2:\"nn\";s:17:\"Norwegian Nynorsk\";s:5:\"nn_NO\";s:26:\"Norwegian Nynorsk (Norway)\";s:3:\"nus\";s:4:\"Nuer\";s:6:\"nus_SD\";s:12:\"Nuer (Sudan)\";s:3:\"nyn\";s:8:\"Nyankole\";s:6:\"nyn_UG\";s:17:\"Nyankole (Uganda)\";s:2:\"or\";s:5:\"Oriya\";s:5:\"or_IN\";s:13:\"Oriya (India)\";s:2:\"om\";s:5:\"Oromo\";s:5:\"om_ET\";s:16:\"Oromo (Ethiopia)\";s:5:\"om_KE\";s:13:\"Oromo (Kenya)\";s:2:\"os\";s:7:\"Ossetic\";s:5:\"os_GE\";s:17:\"Ossetic (Georgia)\";s:5:\"os_RU\";s:16:\"Ossetic (Russia)\";s:2:\"ps\";s:6:\"Pashto\";s:5:\"ps_AF\";s:20:\"Pashto (Afghanistan)\";s:2:\"fa\";s:7:\"Persian\";s:5:\"fa_AF\";s:21:\"Persian (Afghanistan)\";s:5:\"fa_IR\";s:14:\"Persian (Iran)\";s:2:\"pl\";s:6:\"Polish\";s:5:\"pl_PL\";s:15:\"Polish (Poland)\";s:2:\"pt\";s:10:\"Portuguese\";s:5:\"pt_AO\";s:19:\"Portuguese (Angola)\";s:5:\"pt_CV\";s:23:\"Portuguese (Cape Verde)\";s:5:\"pt_GW\";s:26:\"Portuguese (Guinea-Bissau)\";s:5:\"pt_MO\";s:28:\"Portuguese (Macau SAR China)\";s:5:\"pt_MZ\";s:23:\"Portuguese (Mozambique)\";s:5:\"pt_ST\";s:37:\"Portuguese (São Tomé and Príncipe)\";s:5:\"pt_TL\";s:24:\"Portuguese (Timor-Leste)\";s:2:\"pa\";s:7:\"Punjabi\";s:10:\"pa_Guru_IN\";s:15:\"Punjabi (India)\";s:5:\"pa_IN\";s:15:\"Punjabi (India)\";s:5:\"pa_PK\";s:18:\"Punjabi (Pakistan)\";s:10:\"pa_Arab_PK\";s:18:\"Punjabi (Pakistan)\";s:2:\"ro\";s:8:\"Romanian\";s:5:\"ro_RO\";s:18:\"Romanian (Romania)\";s:2:\"rm\";s:7:\"Romansh\";s:5:\"rm_CH\";s:21:\"Romansh (Switzerland)\";s:3:\"rof\";s:5:\"Rombo\";s:6:\"rof_TZ\";s:16:\"Rombo (Tanzania)\";s:2:\"rn\";s:5:\"Rundi\";s:5:\"rn_BI\";s:15:\"Rundi (Burundi)\";s:2:\"ru\";s:7:\"Russian\";s:5:\"ru_BY\";s:17:\"Russian (Belarus)\";s:5:\"ru_KZ\";s:20:\"Russian (Kazakhstan)\";s:5:\"ru_KG\";s:20:\"Russian (Kyrgyzstan)\";s:5:\"ru_MD\";s:17:\"Russian (Moldova)\";s:5:\"ru_RU\";s:16:\"Russian (Russia)\";s:5:\"ru_UA\";s:17:\"Russian (Ukraine)\";s:3:\"rwk\";s:3:\"Rwa\";s:6:\"rwk_TZ\";s:14:\"Rwa (Tanzania)\";s:3:\"ssy\";s:4:\"Saho\";s:6:\"ssy_ER\";s:14:\"Saho (Eritrea)\";s:3:\"sah\";s:5:\"Sakha\";s:6:\"sah_RU\";s:14:\"Sakha (Russia)\";s:3:\"saq\";s:7:\"Samburu\";s:6:\"saq_KE\";s:15:\"Samburu (Kenya)\";s:2:\"sg\";s:5:\"Sango\";s:5:\"sg_CF\";s:32:\"Sango (Central African Republic)\";s:3:\"sbp\";s:5:\"Sangu\";s:6:\"sbp_TZ\";s:16:\"Sangu (Tanzania)\";s:2:\"gd\";s:15:\"Scottish Gaelic\";s:5:\"gd_GB\";s:32:\"Scottish Gaelic (United Kingdom)\";s:3:\"seh\";s:4:\"Sena\";s:6:\"seh_MZ\";s:17:\"Sena (Mozambique)\";s:2:\"sr\";s:7:\"Serbian\";s:5:\"sr_BA\";s:32:\"Serbian (Bosnia and Herzegovina)\";s:10:\"sr_Latn_BA\";s:32:\"Serbian (Bosnia and Herzegovina)\";s:10:\"sr_Cyrl_BA\";s:32:\"Serbian (Bosnia and Herzegovina)\";s:10:\"sr_Latn_XK\";s:16:\"Serbian (Kosovo)\";s:10:\"sr_Cyrl_XK\";s:16:\"Serbian (Kosovo)\";s:5:\"sr_XK\";s:16:\"Serbian (Kosovo)\";s:10:\"sr_Cyrl_ME\";s:20:\"Serbian (Montenegro)\";s:10:\"sr_Latn_ME\";s:20:\"Serbian (Montenegro)\";s:5:\"sr_ME\";s:20:\"Serbian (Montenegro)\";s:5:\"sr_RS\";s:16:\"Serbian (Serbia)\";s:10:\"sr_Cyrl_RS\";s:16:\"Serbian (Serbia)\";s:10:\"sr_Latn_RS\";s:16:\"Serbian (Serbia)\";s:3:\"ksb\";s:8:\"Shambala\";s:6:\"ksb_TZ\";s:19:\"Shambala (Tanzania)\";s:2:\"sn\";s:5:\"Shona\";s:5:\"sn_ZW\";s:16:\"Shona (Zimbabwe)\";s:2:\"ii\";s:10:\"Sichuan Yi\";s:5:\"ii_CN\";s:18:\"Sichuan Yi (China)\";s:7:\"zh_Hans\";s:18:\"Simplified Chinese\";s:2:\"si\";s:7:\"Sinhala\";s:5:\"si_LK\";s:19:\"Sinhala (Sri Lanka)\";s:2:\"sk\";s:6:\"Slovak\";s:5:\"sk_SK\";s:17:\"Slovak (Slovakia)\";s:2:\"sl\";s:9:\"Slovenian\";s:5:\"sl_SI\";s:20:\"Slovenian (Slovenia)\";s:3:\"xog\";s:4:\"Soga\";s:6:\"xog_UG\";s:13:\"Soga (Uganda)\";s:2:\"so\";s:6:\"Somali\";s:5:\"so_DJ\";s:17:\"Somali (Djibouti)\";s:5:\"so_ET\";s:17:\"Somali (Ethiopia)\";s:5:\"so_KE\";s:14:\"Somali (Kenya)\";s:5:\"so_SO\";s:16:\"Somali (Somalia)\";s:2:\"nr\";s:13:\"South Ndebele\";s:5:\"nr_ZA\";s:28:\"South Ndebele (South Africa)\";s:2:\"st\";s:14:\"Southern Sotho\";s:5:\"st_LS\";s:24:\"Southern Sotho (Lesotho)\";s:5:\"st_ZA\";s:29:\"Southern Sotho (South Africa)\";s:2:\"es\";s:7:\"Spanish\";s:5:\"es_AR\";s:19:\"Spanish (Argentina)\";s:5:\"es_BO\";s:17:\"Spanish (Bolivia)\";s:5:\"es_IC\";s:24:\"Spanish (Canary Islands)\";s:5:\"es_EA\";s:27:\"Spanish (Ceuta and Melilla)\";s:5:\"es_CL\";s:15:\"Spanish (Chile)\";s:5:\"es_CO\";s:18:\"Spanish (Colombia)\";s:5:\"es_CR\";s:20:\"Spanish (Costa Rica)\";s:5:\"es_CU\";s:14:\"Spanish (Cuba)\";s:5:\"es_DO\";s:28:\"Spanish (Dominican Republic)\";s:5:\"es_EC\";s:17:\"Spanish (Ecuador)\";s:5:\"es_SV\";s:21:\"Spanish (El Salvador)\";s:5:\"es_GQ\";s:27:\"Spanish (Equatorial Guinea)\";s:5:\"es_GT\";s:19:\"Spanish (Guatemala)\";s:5:\"es_HN\";s:18:\"Spanish (Honduras)\";s:5:\"es_NI\";s:19:\"Spanish (Nicaragua)\";s:5:\"es_PA\";s:16:\"Spanish (Panama)\";s:5:\"es_PY\";s:18:\"Spanish (Paraguay)\";s:5:\"es_PE\";s:14:\"Spanish (Peru)\";s:5:\"es_PH\";s:21:\"Spanish (Philippines)\";s:5:\"es_PR\";s:21:\"Spanish (Puerto Rico)\";s:5:\"es_US\";s:23:\"Spanish (United States)\";s:5:\"es_UY\";s:17:\"Spanish (Uruguay)\";s:5:\"es_VE\";s:19:\"Spanish (Venezuela)\";s:3:\"zgh\";s:27:\"Standard Moroccan Tamazight\";s:6:\"zgh_MA\";s:37:\"Standard Moroccan Tamazight (Morocco)\";s:2:\"sw\";s:7:\"Swahili\";s:5:\"sw_KE\";s:15:\"Swahili (Kenya)\";s:5:\"sw_TZ\";s:18:\"Swahili (Tanzania)\";s:5:\"sw_UG\";s:16:\"Swahili (Uganda)\";s:2:\"ss\";s:5:\"Swati\";s:5:\"ss_ZA\";s:20:\"Swati (South Africa)\";s:5:\"ss_SZ\";s:17:\"Swati (Swaziland)\";s:2:\"sv\";s:7:\"Swedish\";s:5:\"sv_FI\";s:17:\"Swedish (Finland)\";s:5:\"sv_SE\";s:16:\"Swedish (Sweden)\";s:5:\"sv_AX\";s:24:\"Swedish (Åland Islands)\";s:5:\"fr_CH\";s:12:\"Swiss French\";s:3:\"gsw\";s:12:\"Swiss German\";s:6:\"gsw_LI\";s:28:\"Swiss German (Liechtenstein)\";s:6:\"gsw_CH\";s:26:\"Swiss German (Switzerland)\";s:5:\"de_CH\";s:17:\"Swiss High German\";s:3:\"shi\";s:9:\"Tachelhit\";s:6:\"shi_MA\";s:19:\"Tachelhit (Morocco)\";s:11:\"shi_Latn_MA\";s:19:\"Tachelhit (Morocco)\";s:11:\"shi_Tfng_MA\";s:19:\"Tachelhit (Morocco)\";s:3:\"dav\";s:5:\"Taita\";s:6:\"dav_KE\";s:13:\"Taita (Kenya)\";s:2:\"tg\";s:5:\"Tajik\";s:5:\"tg_TJ\";s:18:\"Tajik (Tajikistan)\";s:10:\"tg_Cyrl_TJ\";s:18:\"Tajik (Tajikistan)\";s:2:\"ta\";s:5:\"Tamil\";s:5:\"ta_IN\";s:13:\"Tamil (India)\";s:5:\"ta_MY\";s:16:\"Tamil (Malaysia)\";s:5:\"ta_SG\";s:17:\"Tamil (Singapore)\";s:5:\"ta_LK\";s:17:\"Tamil (Sri Lanka)\";s:3:\"twq\";s:7:\"Tasawaq\";s:6:\"twq_NE\";s:15:\"Tasawaq (Niger)\";s:2:\"te\";s:6:\"Telugu\";s:5:\"te_IN\";s:14:\"Telugu (India)\";s:3:\"teo\";s:4:\"Teso\";s:6:\"teo_KE\";s:12:\"Teso (Kenya)\";s:6:\"teo_UG\";s:13:\"Teso (Uganda)\";s:2:\"th\";s:4:\"Thai\";s:5:\"th_TH\";s:15:\"Thai (Thailand)\";s:2:\"bo\";s:7:\"Tibetan\";s:5:\"bo_CN\";s:15:\"Tibetan (China)\";s:5:\"bo_IN\";s:15:\"Tibetan (India)\";s:3:\"tig\";s:5:\"Tigre\";s:6:\"tig_ER\";s:15:\"Tigre (Eritrea)\";s:2:\"ti\";s:8:\"Tigrinya\";s:5:\"ti_ER\";s:18:\"Tigrinya (Eritrea)\";s:5:\"ti_ET\";s:19:\"Tigrinya (Ethiopia)\";s:2:\"to\";s:6:\"Tongan\";s:5:\"to_TO\";s:14:\"Tongan (Tonga)\";s:7:\"zh_Hant\";s:19:\"Traditional Chinese\";s:2:\"ts\";s:6:\"Tsonga\";s:5:\"ts_ZA\";s:21:\"Tsonga (South Africa)\";s:2:\"tn\";s:6:\"Tswana\";s:5:\"tn_BW\";s:17:\"Tswana (Botswana)\";s:5:\"tn_ZA\";s:21:\"Tswana (South Africa)\";s:2:\"tr\";s:7:\"Turkish\";s:5:\"tr_CY\";s:16:\"Turkish (Cyprus)\";s:5:\"tr_TR\";s:16:\"Turkish (Turkey)\";s:2:\"uk\";s:9:\"Ukrainian\";s:5:\"uk_UA\";s:19:\"Ukrainian (Ukraine)\";s:2:\"ur\";s:4:\"Urdu\";s:5:\"ur_IN\";s:12:\"Urdu (India)\";s:5:\"ur_PK\";s:15:\"Urdu (Pakistan)\";s:2:\"ug\";s:6:\"Uyghur\";s:2:\"uz\";s:5:\"Uzbek\";s:5:\"uz_AF\";s:19:\"Uzbek (Afghanistan)\";s:10:\"uz_Arab_AF\";s:19:\"Uzbek (Afghanistan)\";s:5:\"uz_UZ\";s:18:\"Uzbek (Uzbekistan)\";s:10:\"uz_Cyrl_UZ\";s:18:\"Uzbek (Uzbekistan)\";s:10:\"uz_Latn_UZ\";s:18:\"Uzbek (Uzbekistan)\";s:3:\"vai\";s:3:\"Vai\";s:6:\"vai_LR\";s:13:\"Vai (Liberia)\";s:11:\"vai_Vaii_LR\";s:13:\"Vai (Liberia)\";s:11:\"vai_Latn_LR\";s:13:\"Vai (Liberia)\";s:2:\"ve\";s:5:\"Venda\";s:5:\"ve_ZA\";s:20:\"Venda (South Africa)\";s:2:\"vi\";s:10:\"Vietnamese\";s:5:\"vi_VN\";s:20:\"Vietnamese (Vietnam)\";s:2:\"vo\";s:8:\"Volapük\";s:6:\"vo_001\";s:16:\"Volapük (World)\";s:3:\"vun\";s:5:\"Vunjo\";s:6:\"vun_TZ\";s:16:\"Vunjo (Tanzania)\";s:3:\"wae\";s:6:\"Walser\";s:6:\"wae_CH\";s:20:\"Walser (Switzerland)\";s:2:\"cy\";s:5:\"Welsh\";s:5:\"cy_GB\";s:22:\"Welsh (United Kingdom)\";s:2:\"fy\";s:15:\"Western Frisian\";s:5:\"fy_NL\";s:29:\"Western Frisian (Netherlands)\";s:3:\"wal\";s:8:\"Wolaytta\";s:6:\"wal_ET\";s:19:\"Wolaytta (Ethiopia)\";s:2:\"xh\";s:5:\"Xhosa\";s:5:\"xh_ZA\";s:20:\"Xhosa (South Africa)\";s:3:\"yav\";s:7:\"Yangben\";s:6:\"yav_CM\";s:18:\"Yangben (Cameroon)\";s:2:\"yo\";s:6:\"Yoruba\";s:5:\"yo_BJ\";s:14:\"Yoruba (Benin)\";s:5:\"yo_NG\";s:16:\"Yoruba (Nigeria)\";s:3:\"dje\";s:5:\"Zarma\";s:6:\"dje_NE\";s:13:\"Zarma (Niger)\";s:2:\"zu\";s:4:\"Zulu\";s:5:\"zu_ZA\";s:19:\"Zulu (South Africa)\";s:7:\"az_Cyrl\";s:7:\"az_Cyrl\";s:7:\"az_Latn\";s:7:\"az_Latn\";s:7:\"bs_Cyrl\";s:7:\"bs_Cyrl\";s:7:\"bs_Latn\";s:7:\"bs_Latn\";s:7:\"en_Dsrt\";s:7:\"en_Dsrt\";s:7:\"ha_Latn\";s:7:\"ha_Latn\";s:7:\"kk_Cyrl\";s:7:\"kk_Cyrl\";s:7:\"ks_Arab\";s:7:\"ks_Arab\";s:7:\"ky_Cyrl\";s:7:\"ky_Cyrl\";s:10:\"ky_Cyrl_KG\";s:10:\"ky_Cyrl_KG\";s:7:\"mn_Cyrl\";s:7:\"mn_Cyrl\";s:7:\"ms_Latn\";s:7:\"ms_Latn\";s:8:\"ordinals\";s:8:\"ordinals\";s:7:\"pa_Arab\";s:7:\"pa_Arab\";s:7:\"pa_Guru\";s:7:\"pa_Guru\";s:7:\"plurals\";s:7:\"plurals\";s:8:\"shi_Latn\";s:8:\"shi_Latn\";s:8:\"shi_Tfng\";s:8:\"shi_Tfng\";s:7:\"sr_Cyrl\";s:7:\"sr_Cyrl\";s:7:\"sr_Latn\";s:7:\"sr_Latn\";s:7:\"tg_Cyrl\";s:7:\"tg_Cyrl\";s:8:\"tzm_Latn\";s:8:\"tzm_Latn\";s:7:\"ug_Arab\";s:7:\"ug_Arab\";s:10:\"ug_Arab_CN\";s:10:\"ug_Arab_CN\";s:7:\"uz_Arab\";s:7:\"uz_Arab\";s:7:\"uz_Cyrl\";s:7:\"uz_Cyrl\";s:7:\"uz_Latn\";s:7:\"uz_Latn\";s:8:\"vai_Latn\";s:8:\"vai_Latn\";s:8:\"vai_Vaii\";s:8:\"vai_Vaii\";}',1454412750,1456831950),('pimcore_Translate_Admin_data_en','a:51:{s:15:\"__pimcore_dummy\";s:12:\"only_a_dummy\";s:17:\"access to nytimes\";s:0:\"\";s:37:\"access to nytimes apps for smartphone\";s:0:\"\";s:33:\"access to nytimes apps for tablet\";s:0:\"\";s:28:\"access to nytimes apps phone\";s:0:\"\";s:26:\"access to nytimes apps tab\";s:0:\"\";s:29:\"access to nytimes apps tablet\";s:0:\"\";s:21:\"access to nytimes.com\";s:0:\"\";s:33:\"access to the full times archives\";s:0:\"\";s:43:\"access to the full times archives from 1851\";s:0:\"\";s:15:\"accesstonytimes\";s:0:\"\";s:32:\"accesstonytimesappsforsmartphone\";s:0:\"\";s:28:\"accesstonytimesappsfortablet\";s:0:\"\";s:28:\"accesstothefulltimesarchives\";s:0:\"\";s:9:\"available\";s:0:\"\";s:8:\"category\";s:0:\"\";s:9:\"classname\";s:0:\"\";s:13:\"content block\";s:0:\"\";s:12:\"creationdate\";s:0:\"\";s:3:\"faq\";s:0:\"\";s:8:\"filename\";s:0:\"\";s:8:\"fullpath\";s:0:\"\";s:2:\"id\";s:0:\"\";s:14:\"is active plan\";s:0:\"\";s:25:\"is active plan (isactive)\";s:0:\"\";s:6:\"master\";s:0:\"\";s:19:\"master (admin mode)\";s:0:\"\";s:16:\"modificationdate\";s:0:\"\";s:4:\"name\";s:0:\"\";s:16:\"offered services\";s:0:\"\";s:11:\"packageplan\";s:0:\"\";s:11:\"packagetype\";s:0:\"\";s:11:\"plan active\";s:0:\"\";s:9:\"plan name\";s:0:\"\";s:17:\"price there after\";s:0:\"\";s:16:\"price thereafter\";s:0:\"\";s:15:\"pricethereafter\";s:0:\"\";s:9:\"published\";s:0:\"\";s:20:\"share digital access\";s:0:\"\";s:41:\"share digital access with a family member\";s:0:\"\";s:34:\"sharedigitalaccesswithfamilymember\";s:0:\"\";s:12:\"subscription\";s:0:\"\";s:22:\"subscription is active\";s:0:\"\";s:17:\"subscription link\";s:0:\"\";s:25:\"subscription package type\";s:0:\"\";s:37:\"subscription package type description\";s:0:\"\";s:30:\"subscription package type logo\";s:0:\"\";s:18:\"subscription price\";s:0:\"\";s:32:\"subscription type subscribe link\";s:0:\"\";s:13:\"subscriptions\";s:0:\"\";s:9:\"testclass\";s:0:\"\";}',1454416085,1456835285),('pimcore_Translate_Website_data_en','a:1:{s:15:\"__pimcore_dummy\";s:12:\"only_a_dummy\";}',1454416085,1456835285),('pimcore_translations_admin_data','a:50:{s:17:\"access to nytimes\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:17:\"access to nytimes\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396602;s:16:\"modificationDate\";i:1454396602;}s:37:\"access to nytimes apps for smartphone\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:37:\"access to nytimes apps for smartphone\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330512;s:16:\"modificationDate\";i:1454330512;}s:33:\"access to nytimes apps for tablet\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:33:\"access to nytimes apps for tablet\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330513;s:16:\"modificationDate\";i:1454330513;}s:28:\"access to nytimes apps phone\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:28:\"access to nytimes apps phone\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396602;s:16:\"modificationDate\";i:1454396602;}s:26:\"access to nytimes apps tab\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:26:\"access to nytimes apps tab\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396603;s:16:\"modificationDate\";i:1454396603;}s:29:\"access to nytimes apps tablet\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:29:\"access to nytimes apps tablet\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396604;s:16:\"modificationDate\";i:1454396604;}s:21:\"access to nytimes.com\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:21:\"access to nytimes.com\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330512;s:16:\"modificationDate\";i:1454330512;}s:33:\"access to the full times archives\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:33:\"access to the full times archives\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396603;s:16:\"modificationDate\";i:1454396603;}s:43:\"access to the full times archives from 1851\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:43:\"access to the full times archives from 1851\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330513;s:16:\"modificationDate\";i:1454330513;}s:15:\"accesstonytimes\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:15:\"accesstonytimes\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331231;s:16:\"modificationDate\";i:1454331231;}s:32:\"accesstonytimesappsforsmartphone\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:32:\"accesstonytimesappsforsmartphone\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331230;s:16:\"modificationDate\";i:1454331230;}s:28:\"accesstonytimesappsfortablet\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:28:\"accesstonytimesappsfortablet\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454333226;s:16:\"modificationDate\";i:1454333226;}s:28:\"accesstothefulltimesarchives\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:28:\"accesstothefulltimesarchives\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454333226;s:16:\"modificationDate\";i:1454333226;}s:9:\"available\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:9:\"available\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331232;s:16:\"modificationDate\";i:1454331232;}s:8:\"category\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:8:\"category\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454328409;s:16:\"modificationDate\";i:1454328409;}s:9:\"classname\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:9:\"classname\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413363;s:16:\"modificationDate\";i:1454413363;}s:13:\"content block\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:13:\"content block\";s:12:\"translations\";a:1:{s:2:\"en\";s:0:\"\";}s:12:\"creationDate\";i:1454416065;s:16:\"modificationDate\";i:1454416065;}s:12:\"creationdate\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:12:\"creationdate\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413361;s:16:\"modificationDate\";i:1454413361;}s:3:\"faq\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:3:\"faq\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454329459;s:16:\"modificationDate\";i:1454329459;}s:8:\"filename\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:8:\"filename\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413362;s:16:\"modificationDate\";i:1454413362;}s:8:\"fullpath\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:8:\"fullpath\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413360;s:16:\"modificationDate\";i:1454413360;}s:2:\"id\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:2:\"id\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413360;s:16:\"modificationDate\";i:1454413360;}s:14:\"is active plan\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:14:\"is active plan\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454411436;s:16:\"modificationDate\";i:1454411436;}s:25:\"is active plan (isactive)\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:25:\"is active plan (isactive)\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413363;s:16:\"modificationDate\";i:1454413363;}s:6:\"master\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:6:\"master\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330510;s:16:\"modificationDate\";i:1454330510;}s:19:\"master (admin mode)\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:19:\"master (admin mode)\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330509;s:16:\"modificationDate\";i:1454330509;}s:16:\"modificationdate\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:16:\"modificationdate\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413362;s:16:\"modificationDate\";i:1454413362;}s:4:\"name\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:4:\"name\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331229;s:16:\"modificationDate\";i:1454331229;}s:16:\"offered services\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:16:\"offered services\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331230;s:16:\"modificationDate\";i:1454331230;}s:11:\"packageplan\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:11:\"packageplan\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454328829;s:16:\"modificationDate\";i:1454328829;}s:11:\"packagetype\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:11:\"packagetype\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454328409;s:16:\"modificationDate\";i:1454328409;}s:11:\"plan active\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:11:\"plan active\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330514;s:16:\"modificationDate\";i:1454330514;}s:9:\"plan name\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:9:\"plan name\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330510;s:16:\"modificationDate\";i:1454330510;}s:17:\"price there after\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:17:\"price there after\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396601;s:16:\"modificationDate\";i:1454396601;}s:16:\"price thereafter\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:16:\"price thereafter\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330511;s:16:\"modificationDate\";i:1454330511;}s:15:\"pricethereafter\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:15:\"pricethereafter\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331231;s:16:\"modificationDate\";i:1454331231;}s:9:\"published\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:9:\"published\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454413361;s:16:\"modificationDate\";i:1454413361;}s:20:\"share digital access\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:20:\"share digital access\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454396604;s:16:\"modificationDate\";i:1454396604;}s:41:\"share digital access with a family member\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:41:\"share digital access with a family member\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330514;s:16:\"modificationDate\";i:1454330514;}s:34:\"sharedigitalaccesswithfamilymember\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:34:\"sharedigitalaccesswithfamilymember\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454333227;s:16:\"modificationDate\";i:1454333227;}s:12:\"subscription\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:12:\"subscription\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454404809;s:16:\"modificationDate\";i:1454404809;}s:22:\"subscription is active\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:22:\"subscription is active\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454404991;s:16:\"modificationDate\";i:1454404991;}s:17:\"subscription link\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:17:\"subscription link\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330515;s:16:\"modificationDate\";i:1454330515;}s:25:\"subscription package type\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:25:\"subscription package type\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454404989;s:16:\"modificationDate\";i:1454404989;}s:37:\"subscription package type description\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:37:\"subscription package type description\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454404990;s:16:\"modificationDate\";i:1454404990;}s:30:\"subscription package type logo\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:30:\"subscription package type logo\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454404990;s:16:\"modificationDate\";i:1454404990;}s:18:\"subscription price\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:18:\"subscription price\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454331232;s:16:\"modificationDate\";i:1454331232;}s:32:\"subscription type subscribe link\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:32:\"subscription type subscribe link\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454404991;s:16:\"modificationDate\";i:1454404991;}s:13:\"subscriptions\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:13:\"subscriptions\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1454330839;s:16:\"modificationDate\";i:1454330839;}s:9:\"testclass\";O:31:\"Pimcore\\Model\\Translation\\Admin\":4:{s:3:\"key\";s:9:\"testclass\";s:12:\"translations\";a:19:{s:2:\"ca\";s:0:\"\";s:2:\"cs\";s:0:\"\";s:2:\"de\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"es\";s:0:\"\";s:2:\"fa\";s:0:\"\";s:2:\"fr\";s:0:\"\";s:2:\"it\";s:0:\"\";s:2:\"ja\";s:0:\"\";s:2:\"nl\";s:0:\"\";s:2:\"pl\";s:0:\"\";s:2:\"pt\";s:0:\"\";s:5:\"pt_BR\";s:0:\"\";s:2:\"ru\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"sv\";s:0:\"\";s:2:\"tr\";s:0:\"\";s:2:\"uk\";s:0:\"\";s:7:\"zh_Hans\";s:0:\"\";}s:12:\"creationDate\";i:1451309402;s:16:\"modificationDate\";i:1451309402;}}',1454417153,1454418152),('pimcore_website_config','O:11:\"Zend_Config\":8:{s:22:\"\0*\0_allowModifications\";b:1;s:9:\"\0*\0_index\";i:0;s:9:\"\0*\0_count\";i:0;s:8:\"\0*\0_data\";a:0:{}s:21:\"\0*\0_skipNextIteration\";N;s:17:\"\0*\0_loadedSection\";N;s:11:\"\0*\0_extends\";a:0:{}s:20:\"\0*\0_loadFileErrorStr\";N;}',1454417785,1456836985),('Zend_LocaleC_en_language_aa','s:11:\"s:4:\"Afar\";\";',1454062282,1456481482),('Zend_LocaleC_en_language_aa_DJ','s:4:\"b:0;\";',1454062282,1456481482),('Zend_LocaleC_en_language_aa_ER','s:4:\"b:0;\";',1454062282,1456481482),('Zend_LocaleC_en_language_aa_ET','s:4:\"b:0;\";',1454062282,1456481482),('Zend_LocaleC_en_language_af','s:16:\"s:9:\"Afrikaans\";\";',1454062282,1456481482),('Zend_LocaleC_en_language_af_NA','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_af_ZA','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_agq','s:12:\"s:5:\"Aghem\";\";',1454062283,1456481483),('Zend_LocaleC_en_language_agq_CM','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ak','s:11:\"s:4:\"Akan\";\";',1454062283,1456481483),('Zend_LocaleC_en_language_ak_GH','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_am','s:14:\"s:7:\"Amharic\";\";',1454062283,1456481483),('Zend_LocaleC_en_language_am_ET','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar','s:13:\"s:6:\"Arabic\";\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_001','s:30:\"s:22:\"Modern Standard Arabic\";\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_AE','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_BH','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_DJ','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_DZ','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_EG','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_EH','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_ER','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_IL','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_IQ','s:4:\"b:0;\";',1454062283,1456481483),('Zend_LocaleC_en_language_ar_JO','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_KM','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_KW','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_LB','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_LY','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_MA','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_MR','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_OM','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_PS','s:4:\"b:0;\";',1454062284,1456481484),('Zend_LocaleC_en_language_ar_QA','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_SA','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_SD','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_SO','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_SS','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_SY','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_TD','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_TN','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ar_YE','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_as','s:15:\"s:8:\"Assamese\";\";',1454062285,1456481485),('Zend_LocaleC_en_language_asa','s:10:\"s:3:\"Asu\";\";',1454062285,1456481485),('Zend_LocaleC_en_language_asa_TZ','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_ast','s:15:\"s:8:\"Asturian\";\";',1454062285,1456481485),('Zend_LocaleC_en_language_ast_ES','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_as_IN','s:4:\"b:0;\";',1454062285,1456481485),('Zend_LocaleC_en_language_az','s:19:\"s:11:\"Azerbaijani\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_az_AZ','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_az_Cyrl','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_az_Cyrl_AZ','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_az_Latn','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_az_Latn_AZ','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bas','s:12:\"s:5:\"Basaa\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bas_CM','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_be','s:18:\"s:10:\"Belarusian\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bem','s:12:\"s:5:\"Bemba\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bem_ZM','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bez','s:11:\"s:4:\"Bena\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bez_TZ','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_be_BY','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bg','s:16:\"s:9:\"Bulgarian\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bg_BG','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bm','s:14:\"s:7:\"Bambara\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bm_ML','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bn','s:14:\"s:7:\"Bengali\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bn_BD','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bn_IN','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_language_bo','s:14:\"s:7:\"Tibetan\";\";',1454062286,1456481486),('Zend_LocaleC_en_language_bo_CN','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_bo_IN','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_br','s:13:\"s:6:\"Breton\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_brx','s:11:\"s:4:\"Bodo\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_brx_IN','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_br_FR','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_bs','s:14:\"s:7:\"Bosnian\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_bs_BA','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_bs_Cyrl','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_bs_Cyrl_BA','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_bs_Latn','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_bs_Latn_BA','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_byn','s:11:\"s:4:\"Blin\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_byn_ER','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_ca','s:14:\"s:7:\"Catalan\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_ca_AD','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_ca_ES','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_ca_ES_VALENCIA','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_ca_FR','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_ca_IT','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_cgg','s:12:\"s:5:\"Chiga\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_cgg_UG','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_chr','s:15:\"s:8:\"Cherokee\";\";',1454062287,1456481487),('Zend_LocaleC_en_language_chr_US','s:4:\"b:0;\";',1454062287,1456481487),('Zend_LocaleC_en_language_cs','s:12:\"s:5:\"Czech\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_cs_CZ','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_cy','s:12:\"s:5:\"Welsh\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_cy_GB','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_da','s:13:\"s:6:\"Danish\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_dav','s:12:\"s:5:\"Taita\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_dav_KE','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_da_DK','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_da_GL','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_de','s:13:\"s:6:\"German\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_de_AT','s:23:\"s:15:\"Austrian German\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_de_BE','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_de_CH','s:25:\"s:17:\"Swiss High German\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_de_DE','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_de_LI','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_de_LU','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_dje','s:12:\"s:5:\"Zarma\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_dje_NE','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_dua','s:12:\"s:5:\"Duala\";\";',1454062288,1456481488),('Zend_LocaleC_en_language_dua_CM','s:4:\"b:0;\";',1454062288,1456481488),('Zend_LocaleC_en_language_dyo','s:18:\"s:10:\"Jola-Fonyi\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_dyo_SN','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_dz','s:15:\"s:8:\"Dzongkha\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_dz_BT','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_ebu','s:11:\"s:4:\"Embu\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_ebu_KE','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_ee','s:10:\"s:3:\"Ewe\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_ee_GH','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_ee_TG','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_el','s:12:\"s:5:\"Greek\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_el_CY','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_el_GR','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en','s:14:\"s:7:\"English\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_001','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_150','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_AG','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_AI','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_AS','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_AU','s:26:\"s:18:\"Australian English\";\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_BB','s:4:\"b:0;\";',1454062289,1456481489),('Zend_LocaleC_en_language_en_BE','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_BM','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_BS','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_BW','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_BZ','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_CA','s:24:\"s:16:\"Canadian English\";\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_CC','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_CK','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_CM','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_CX','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_DG','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_DM','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_Dsrt','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_Dsrt_US','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_ER','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_FJ','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_FK','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_FM','s:4:\"b:0;\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_GB','s:23:\"s:15:\"British English\";\";',1454062290,1456481490),('Zend_LocaleC_en_language_en_GD','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_GG','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_GH','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_GI','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_GM','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_GU','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_GY','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_HK','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_IE','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_IM','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_IN','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_IO','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_JE','s:4:\"b:0;\";',1454062291,1456481491),('Zend_LocaleC_en_language_en_JM','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_KE','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_KI','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_KN','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_KY','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_LC','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_LR','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_LS','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MG','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MH','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MO','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MP','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MS','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MT','s:4:\"b:0;\";',1454062292,1456481492),('Zend_LocaleC_en_language_en_MU','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_MW','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_NA','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_NF','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_NG','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_NR','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_NU','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_NZ','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_PG','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_PH','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_PK','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_PN','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_PR','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_PW','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_RW','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_SB','s:4:\"b:0;\";',1454062293,1456481493),('Zend_LocaleC_en_language_en_SC','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SD','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SG','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SH','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SL','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SS','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SX','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_SZ','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_TC','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_TK','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_TO','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_TT','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_TV','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_TZ','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_UG','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_UM','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_US','s:24:\"s:16:\"American English\";\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_US_POSIX','s:4:\"b:0;\";',1454062294,1456481494),('Zend_LocaleC_en_language_en_VC','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_VG','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_VI','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_VU','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_WS','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_ZA','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_ZM','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_en_ZW','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_eo','s:16:\"s:9:\"Esperanto\";\";',1454062295,1456481495),('Zend_LocaleC_en_language_eo_001','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es','s:14:\"s:7:\"Spanish\";\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_419','s:30:\"s:22:\"Latin American Spanish\";\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_AR','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_BO','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_CL','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_CO','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_CR','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_CU','s:4:\"b:0;\";',1454062295,1456481495),('Zend_LocaleC_en_language_es_DO','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_EA','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_EC','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_ES','s:24:\"s:16:\"European Spanish\";\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_GQ','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_GT','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_HN','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_IC','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_MX','s:23:\"s:15:\"Mexican Spanish\";\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_NI','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_PA','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_PE','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_PH','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_PR','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_PY','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_SV','s:4:\"b:0;\";',1454062296,1456481496),('Zend_LocaleC_en_language_es_US','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_es_UY','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_es_VE','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_et','s:15:\"s:8:\"Estonian\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_et_EE','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_eu','s:13:\"s:6:\"Basque\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_eu_ES','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_ewo','s:13:\"s:6:\"Ewondo\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_ewo_CM','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_fa','s:14:\"s:7:\"Persian\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_fa_AF','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_fa_IR','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_ff','s:12:\"s:5:\"Fulah\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_ff_CM','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_ff_GN','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_ff_MR','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_ff_SN','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_fi','s:14:\"s:7:\"Finnish\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_fil','s:15:\"s:8:\"Filipino\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_fil_PH','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fi_FI','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_fo','s:14:\"s:7:\"Faroese\";\";',1454062298,1456481498),('Zend_LocaleC_en_language_fo_FO','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr','s:13:\"s:6:\"French\";\";',1454062297,1456481497),('Zend_LocaleC_en_language_fr_BE','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_BF','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_BI','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_BJ','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_BL','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CA','s:23:\"s:15:\"Canadian French\";\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CD','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CF','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CG','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CH','s:20:\"s:12:\"Swiss French\";\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CI','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_CM','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_DJ','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_DZ','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_FR','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_GA','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_GF','s:4:\"b:0;\";',1454062298,1456481498),('Zend_LocaleC_en_language_fr_GN','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_GP','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_GQ','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_HT','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_KM','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_LU','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MA','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MC','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MF','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MG','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_ML','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MQ','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MR','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_MU','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_NC','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_NE','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_PF','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_PM','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_fr_RE','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_RW','s:4:\"b:0;\";',1454062299,1456481499),('Zend_LocaleC_en_language_fr_SC','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_SN','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_SY','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_TD','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_TG','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_TN','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_VU','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fr_WF','s:4:\"b:0;\";',1454062297,1456481497),('Zend_LocaleC_en_language_fr_YT','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fur','s:15:\"s:8:\"Friulian\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_fur_IT','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_fy','s:23:\"s:15:\"Western Frisian\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_fy_NL','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_ga','s:12:\"s:5:\"Irish\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_ga_IE','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_gd','s:23:\"s:15:\"Scottish Gaelic\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_gd_GB','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_gl','s:15:\"s:8:\"Galician\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_gl_ES','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_gsw','s:20:\"s:12:\"Swiss German\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_gsw_CH','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_gsw_LI','s:4:\"b:0;\";',1454062300,1456481500),('Zend_LocaleC_en_language_gu','s:15:\"s:8:\"Gujarati\";\";',1454062300,1456481500),('Zend_LocaleC_en_language_guz','s:12:\"s:5:\"Gusii\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_guz_KE','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_gu_IN','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_gv','s:11:\"s:4:\"Manx\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_gv_IM','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_ha','s:12:\"s:5:\"Hausa\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_haw','s:15:\"s:8:\"Hawaiian\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_haw_US','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_ha_GH','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_ha_Latn','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_ha_Latn_GH','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_ha_Latn_NE','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_ha_Latn_NG','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_ha_NE','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_ha_NG','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_he','s:13:\"s:6:\"Hebrew\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_he_IL','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_hi','s:12:\"s:5:\"Hindi\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_hi_IN','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_hr','s:15:\"s:8:\"Croatian\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_hr_BA','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_hr_HR','s:4:\"b:0;\";',1454062301,1456481501),('Zend_LocaleC_en_language_hu','s:16:\"s:9:\"Hungarian\";\";',1454062301,1456481501),('Zend_LocaleC_en_language_hu_HU','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_hy','s:15:\"s:8:\"Armenian\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_hy_AM','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_ia','s:19:\"s:11:\"Interlingua\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_ia_FR','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_id','s:18:\"s:10:\"Indonesian\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_id_ID','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_ig','s:11:\"s:4:\"Igbo\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_ig_NG','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_ii','s:18:\"s:10:\"Sichuan Yi\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_ii_CN','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_is','s:16:\"s:9:\"Icelandic\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_is_IS','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_it','s:14:\"s:7:\"Italian\";\";',1454062302,1456481502),('Zend_LocaleC_en_language_it_CH','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_it_IT','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_it_SM','s:4:\"b:0;\";',1454062302,1456481502),('Zend_LocaleC_en_language_ja','s:15:\"s:8:\"Japanese\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_ja_JP','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_jgo','s:13:\"s:6:\"Ngomba\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_jgo_CM','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_jmc','s:14:\"s:7:\"Machame\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_jmc_TZ','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_ka','s:15:\"s:8:\"Georgian\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kab','s:13:\"s:6:\"Kabyle\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kab_DZ','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kam','s:12:\"s:5:\"Kamba\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kam_KE','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_ka_GE','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kde','s:14:\"s:7:\"Makonde\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kde_TZ','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kea','s:20:\"s:12:\"Kabuverdianu\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kea_CV','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_khq','s:20:\"s:12:\"Koyra Chiini\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_khq_ML','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_ki','s:13:\"s:6:\"Kikuyu\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_ki_KE','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kk','s:13:\"s:6:\"Kazakh\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kkj','s:11:\"s:4:\"Kako\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kkj_CM','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kk_Cyrl','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kk_Cyrl_KZ','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_kk_KZ','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_kl','s:19:\"s:11:\"Kalaallisut\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kln','s:15:\"s:8:\"Kalenjin\";\";',1454062303,1456481503),('Zend_LocaleC_en_language_kln_KE','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_kl_GL','s:4:\"b:0;\";',1454062303,1456481503),('Zend_LocaleC_en_language_km','s:12:\"s:5:\"Khmer\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_km_KH','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_kn','s:14:\"s:7:\"Kannada\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_kn_IN','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ko','s:13:\"s:6:\"Korean\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_kok','s:14:\"s:7:\"Konkani\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_kok_IN','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ko_KP','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ko_KR','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ks','s:15:\"s:8:\"Kashmiri\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_ksb','s:15:\"s:8:\"Shambala\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_ksb_TZ','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ksf','s:12:\"s:5:\"Bafia\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_ksf_CM','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ksh','s:16:\"s:9:\"Colognian\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_ksh_DE','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ks_Arab','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ks_Arab_IN','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ks_IN','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_kw','s:14:\"s:7:\"Cornish\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_kw_GB','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ky','s:13:\"s:6:\"Kyrgyz\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_ky_Cyrl','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_ky_Cyrl_KG','s:4:\"b:0;\";',1454062304,1456481504),('Zend_LocaleC_en_language_lag','s:12:\"s:5:\"Langi\";\";',1454062304,1456481504),('Zend_LocaleC_en_language_lag_TZ','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lg','s:12:\"s:5:\"Ganda\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_lg_UG','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lkt','s:13:\"s:6:\"Lakota\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_lkt_US','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_ln','s:14:\"s:7:\"Lingala\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_ln_AO','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_ln_CD','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_ln_CF','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_ln_CG','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lo','s:10:\"s:3:\"Lao\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_lo_LA','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lt','s:18:\"s:10:\"Lithuanian\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_lt_LT','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lu','s:20:\"s:12:\"Luba-Katanga\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_luo','s:10:\"s:3:\"Luo\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_luo_KE','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_luy','s:12:\"s:5:\"Luyia\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_luy_KE','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lu_CD','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_lv','s:14:\"s:7:\"Latvian\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_lv_LV','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_mas','s:12:\"s:5:\"Masai\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_mas_KE','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_mas_TZ','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_mer','s:11:\"s:4:\"Meru\";\";',1454062305,1456481505),('Zend_LocaleC_en_language_mer_KE','s:4:\"b:0;\";',1454062305,1456481505),('Zend_LocaleC_en_language_mfe','s:15:\"s:8:\"Morisyen\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mfe_MU','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mg','s:15:\"s:8:\"Malagasy\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mgh','s:22:\"s:14:\"Makhuwa-Meetto\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mgh_MZ','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mgo','s:12:\"s:5:\"Meta\'\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mgo_CM','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mg_MG','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mk','s:18:\"s:10:\"Macedonian\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mk_MK','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_ml','s:16:\"s:9:\"Malayalam\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_ml_IN','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mn','s:16:\"s:9:\"Mongolian\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mn_Cyrl','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mn_Cyrl_MN','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_mn_MN','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_mr','s:14:\"s:7:\"Marathi\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mr_IN','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_ms','s:12:\"s:5:\"Malay\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_ms_BN','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_ms_Latn','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_ms_Latn_BN','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_ms_Latn_MY','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_ms_Latn_SG','s:4:\"b:0;\";',1454062306,1456481506),('Zend_LocaleC_en_language_ms_MY','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_ms_SG','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_mt','s:14:\"s:7:\"Maltese\";\";',1454062306,1456481506),('Zend_LocaleC_en_language_mt_MT','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_mua','s:14:\"s:7:\"Mundang\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_mua_CM','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_my','s:14:\"s:7:\"Burmese\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_my_MM','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_naq','s:11:\"s:4:\"Nama\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_naq_NA','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nb','s:25:\"s:17:\"Norwegian Bokmål\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_nb_NO','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nb_SJ','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nd','s:21:\"s:13:\"North Ndebele\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_nd_ZW','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_ne','s:13:\"s:6:\"Nepali\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_ne_IN','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_ne_NP','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nl','s:12:\"s:5:\"Dutch\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_nl_AW','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nl_BE','s:14:\"s:7:\"Flemish\";\";',1454062307,1456481507),('Zend_LocaleC_en_language_nl_BQ','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nl_CW','s:4:\"b:0;\";',1454062307,1456481507),('Zend_LocaleC_en_language_nl_NL','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nl_SR','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nl_SX','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nmg','s:13:\"s:6:\"Kwasio\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nmg_CM','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nn','s:25:\"s:17:\"Norwegian Nynorsk\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nnh','s:16:\"s:9:\"Ngiemboon\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nnh_CM','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nn_NO','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nr','s:21:\"s:13:\"South Ndebele\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nr_ZA','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nso','s:22:\"s:14:\"Northern Sotho\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nso_ZA','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nus','s:11:\"s:4:\"Nuer\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nus_SD','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_nyn','s:15:\"s:8:\"Nyankole\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_nyn_UG','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_om','s:12:\"s:5:\"Oromo\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_om_ET','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_om_KE','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_or','s:12:\"s:5:\"Oriya\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_ordinals','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_or_IN','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_os','s:14:\"s:7:\"Ossetic\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_os_GE','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_os_RU','s:4:\"b:0;\";',1454062308,1456481508),('Zend_LocaleC_en_language_pa','s:14:\"s:7:\"Punjabi\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_pa_Arab','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pa_Arab_PK','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pa_Guru','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pa_Guru_IN','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pa_IN','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_pa_PK','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_pl','s:13:\"s:6:\"Polish\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_plurals','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pl_PL','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_ps','s:13:\"s:6:\"Pashto\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_ps_AF','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt','s:18:\"s:10:\"Portuguese\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_AO','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_BR','s:28:\"s:20:\"Brazilian Portuguese\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_CV','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_GW','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_MO','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_MZ','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_PT','s:27:\"s:19:\"European Portuguese\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_ST','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_pt_TL','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_rm','s:14:\"s:7:\"Romansh\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_rm_CH','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_rn','s:12:\"s:5:\"Rundi\";\";',1454062309,1456481509),('Zend_LocaleC_en_language_rn_BI','s:4:\"b:0;\";',1454062309,1456481509),('Zend_LocaleC_en_language_ro','s:15:\"s:8:\"Romanian\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_rof','s:12:\"s:5:\"Rombo\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_rof_TZ','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_root','s:11:\"s:4:\"Root\";\";',1454062308,1456481508),('Zend_LocaleC_en_language_ro_MD','s:16:\"s:9:\"Moldavian\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_ro_RO','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru','s:14:\"s:7:\"Russian\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru_BY','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru_KG','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru_KZ','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru_MD','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru_RU','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_ru_UA','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_rw','s:19:\"s:11:\"Kinyarwanda\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_rwk','s:10:\"s:3:\"Rwa\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_rwk_TZ','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_rw_RW','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_sah','s:12:\"s:5:\"Sakha\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_sah_RU','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_saq','s:14:\"s:7:\"Samburu\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_saq_KE','s:4:\"b:0;\";',1454062310,1456481510),('Zend_LocaleC_en_language_sbp','s:12:\"s:5:\"Sangu\";\";',1454062310,1456481510),('Zend_LocaleC_en_language_sbp_TZ','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_se','s:21:\"s:13:\"Northern Sami\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_seh','s:11:\"s:4:\"Sena\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_seh_MZ','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_ses','s:23:\"s:15:\"Koyraboro Senni\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_ses_ML','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_se_FI','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_se_NO','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_sg','s:12:\"s:5:\"Sango\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_sg_CF','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_shi','s:16:\"s:9:\"Tachelhit\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_shi_Latn','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_shi_Latn_MA','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_shi_MA','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_shi_Tfng','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_shi_Tfng_MA','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_si','s:14:\"s:7:\"Sinhala\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_si_LK','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_sk','s:13:\"s:6:\"Slovak\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_sk_SK','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_sl','s:16:\"s:9:\"Slovenian\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_sl_SI','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_sn','s:12:\"s:5:\"Shona\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_sn_ZW','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_so','s:13:\"s:6:\"Somali\";\";',1454062311,1456481511),('Zend_LocaleC_en_language_so_DJ','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_so_ET','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_so_KE','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_so_SO','s:4:\"b:0;\";',1454062311,1456481511),('Zend_LocaleC_en_language_sq','s:15:\"s:8:\"Albanian\";\";',1454062312,1456481512),('Zend_LocaleC_en_language_sq_AL','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sq_MK','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sq_XK','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr','s:14:\"s:7:\"Serbian\";\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_BA','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_sr_Cyrl','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Cyrl_BA','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Cyrl_ME','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Cyrl_RS','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Cyrl_XK','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Latn','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Latn_BA','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Latn_ME','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Latn_RS','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_Latn_XK','s:4:\"b:0;\";',1454062312,1456481512),('Zend_LocaleC_en_language_sr_ME','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_sr_RS','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_sr_XK','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_ss','s:12:\"s:5:\"Swati\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_ssy','s:11:\"s:4:\"Saho\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_ssy_ER','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_ss_SZ','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_ss_ZA','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_st','s:22:\"s:14:\"Southern Sotho\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_st_LS','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_st_ZA','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sv','s:14:\"s:7:\"Swedish\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_sv_AX','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sv_FI','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sv_SE','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sw','s:14:\"s:7:\"Swahili\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_swc','s:21:\"s:13:\"Congo Swahili\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_swc_CD','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sw_KE','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sw_TZ','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_sw_UG','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_ta','s:12:\"s:5:\"Tamil\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_ta_IN','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_ta_LK','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_ta_MY','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_ta_SG','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_te','s:13:\"s:6:\"Telugu\";\";',1454062313,1456481513),('Zend_LocaleC_en_language_teo','s:11:\"s:4:\"Teso\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_teo_KE','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_teo_UG','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_te_IN','s:4:\"b:0;\";',1454062313,1456481513),('Zend_LocaleC_en_language_tg','s:12:\"s:5:\"Tajik\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_tg_Cyrl','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tg_Cyrl_TJ','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tg_TJ','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_th','s:11:\"s:4:\"Thai\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_th_TH','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_ti','s:15:\"s:8:\"Tigrinya\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_tig','s:12:\"s:5:\"Tigre\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_tig_ER','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_ti_ER','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_ti_ET','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tn','s:13:\"s:6:\"Tswana\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_tn_BW','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tn_ZA','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_to','s:13:\"s:6:\"Tongan\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_to_TO','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tr','s:14:\"s:7:\"Turkish\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_tr_CY','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tr_TR','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_ts','s:13:\"s:6:\"Tsonga\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_ts_ZA','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_twq','s:14:\"s:7:\"Tasawaq\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_twq_NE','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tzm','s:31:\"s:23:\"Central Atlas Tamazight\";\";',1454062314,1456481514),('Zend_LocaleC_en_language_tzm_Latn','s:4:\"b:0;\";',1454062314,1456481514),('Zend_LocaleC_en_language_tzm_Latn_MA','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_tzm_MA','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_ug','s:13:\"s:6:\"Uyghur\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_ug_Arab','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_ug_Arab_CN','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uk','s:16:\"s:9:\"Ukrainian\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_uk_UA','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_ur','s:11:\"s:4:\"Urdu\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_ur_IN','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_ur_PK','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz','s:12:\"s:5:\"Uzbek\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_AF','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_uz_Arab','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_Arab_AF','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_Cyrl','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_Cyrl_UZ','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_Latn','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_Latn_UZ','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_uz_UZ','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_vai','s:10:\"s:3:\"Vai\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_vai_Latn','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_vai_Latn_LR','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_vai_LR','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_vai_Vaii','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_vai_Vaii_LR','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_ve','s:12:\"s:5:\"Venda\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_ve_ZA','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_vi','s:18:\"s:10:\"Vietnamese\";\";',1454062315,1456481515),('Zend_LocaleC_en_language_vi_VN','s:4:\"b:0;\";',1454062315,1456481515),('Zend_LocaleC_en_language_vo','s:15:\"s:8:\"Volapük\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_vo_001','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_vun','s:12:\"s:5:\"Vunjo\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_vun_TZ','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_wae','s:13:\"s:6:\"Walser\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_wae_CH','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_wal','s:15:\"s:8:\"Wolaytta\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_wal_ET','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_xh','s:12:\"s:5:\"Xhosa\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_xh_ZA','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_xog','s:11:\"s:4:\"Soga\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_xog_UG','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_yav','s:14:\"s:7:\"Yangben\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_yav_CM','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_yo','s:13:\"s:6:\"Yoruba\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_yo_BJ','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_yo_NG','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zgh','s:35:\"s:27:\"Standard Moroccan Tamazight\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_zgh_MA','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh','s:14:\"s:7:\"Chinese\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_CN','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_zh_Hans','s:26:\"s:18:\"Simplified Chinese\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hans_CN','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hans_HK','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hans_MO','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hans_SG','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hant','s:27:\"s:19:\"Traditional Chinese\";\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hant_HK','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hant_MO','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_Hant_TW','s:4:\"b:0;\";',1454062316,1456481516),('Zend_LocaleC_en_language_zh_HK','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_zh_MO','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_zh_SG','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_language_zh_TW','s:4:\"b:0;\";',1454062318,1456481518),('Zend_LocaleC_en_language_zu','s:11:\"s:4:\"Zulu\";\";',1454062317,1456481517),('Zend_LocaleC_en_language_zu_ZA','s:4:\"b:0;\";',1454062317,1456481517),('Zend_LocaleC_en_territory_','s:4:\"b:0;\";',1454062286,1456481486),('Zend_LocaleC_en_territory_001','s:12:\"s:5:\"World\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_150','s:13:\"s:6:\"Europe\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_AD','s:14:\"s:7:\"Andorra\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_AE','s:28:\"s:20:\"United Arab Emirates\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_AF','s:19:\"s:11:\"Afghanistan\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_AG','s:27:\"s:19:\"Antigua and Barbuda\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_AI','s:15:\"s:8:\"Anguilla\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_AL','s:14:\"s:7:\"Albania\";\";',1454062312,1456481512),('Zend_LocaleC_en_territory_AM','s:14:\"s:7:\"Armenia\";\";',1454062302,1456481502),('Zend_LocaleC_en_territory_AO','s:13:\"s:6:\"Angola\";\";',1454062305,1456481505),('Zend_LocaleC_en_territory_AR','s:16:\"s:9:\"Argentina\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_AS','s:22:\"s:14:\"American Samoa\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_AW','s:12:\"s:5:\"Aruba\";\";',1454062307,1456481507),('Zend_LocaleC_en_territory_AX','s:22:\"s:14:\"Åland Islands\";\";',1454062313,1456481513),('Zend_LocaleC_en_territory_AZ','s:18:\"s:10:\"Azerbaijan\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_BA','s:30:\"s:22:\"Bosnia and Herzegovina\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_BB','s:15:\"s:8:\"Barbados\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_BD','s:18:\"s:10:\"Bangladesh\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_BE','s:14:\"s:7:\"Belgium\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_BF','s:20:\"s:12:\"Burkina Faso\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_BG','s:15:\"s:8:\"Bulgaria\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_BH','s:14:\"s:7:\"Bahrain\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_BI','s:14:\"s:7:\"Burundi\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_BJ','s:12:\"s:5:\"Benin\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_BL','s:25:\"s:17:\"Saint Barthélemy\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_BM','s:14:\"s:7:\"Bermuda\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_BN','s:13:\"s:6:\"Brunei\";\";',1454062306,1456481506),('Zend_LocaleC_en_territory_BO','s:14:\"s:7:\"Bolivia\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_BQ','s:29:\"s:21:\"Caribbean Netherlands\";\";',1454062307,1456481507),('Zend_LocaleC_en_territory_BS','s:14:\"s:7:\"Bahamas\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_BT','s:13:\"s:6:\"Bhutan\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_BW','s:15:\"s:8:\"Botswana\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_BY','s:14:\"s:7:\"Belarus\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_BZ','s:13:\"s:6:\"Belize\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_CC','s:31:\"s:23:\"Cocos (Keeling) Islands\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_CD','s:24:\"s:16:\"Congo - Kinshasa\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_CF','s:32:\"s:24:\"Central African Republic\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_CG','s:27:\"s:19:\"Congo - Brazzaville\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_CH','s:19:\"s:11:\"Switzerland\";\";',1454062300,1456481500),('Zend_LocaleC_en_territory_CI','s:24:\"s:16:\"Côte d’Ivoire\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_CK','s:20:\"s:12:\"Cook Islands\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_CL','s:12:\"s:5:\"Chile\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_CM','s:15:\"s:8:\"Cameroon\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_CN','s:12:\"s:5:\"China\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_CO','s:15:\"s:8:\"Colombia\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_CR','s:18:\"s:10:\"Costa Rica\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_CU','s:11:\"s:4:\"Cuba\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_CV','s:18:\"s:10:\"Cape Verde\";\";',1454062303,1456481503),('Zend_LocaleC_en_territory_CW','s:15:\"s:8:\"Curaçao\";\";',1454062308,1456481508),('Zend_LocaleC_en_territory_CX','s:24:\"s:16:\"Christmas Island\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_CY','s:13:\"s:6:\"Cyprus\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_CZ','s:22:\"s:14:\"Czech Republic\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_DE','s:14:\"s:7:\"Germany\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_DG','s:20:\"s:12:\"Diego Garcia\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_DJ','s:15:\"s:8:\"Djibouti\";\";',1454062282,1456481482),('Zend_LocaleC_en_territory_DK','s:14:\"s:7:\"Denmark\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_DM','s:15:\"s:8:\"Dominica\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_DO','s:26:\"s:18:\"Dominican Republic\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_DZ','s:14:\"s:7:\"Algeria\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_EA','s:25:\"s:17:\"Ceuta and Melilla\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_EC','s:14:\"s:7:\"Ecuador\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_EE','s:14:\"s:7:\"Estonia\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_EG','s:12:\"s:5:\"Egypt\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_EH','s:22:\"s:14:\"Western Sahara\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_ER','s:14:\"s:7:\"Eritrea\";\";',1454062282,1456481482),('Zend_LocaleC_en_territory_ES','s:12:\"s:5:\"Spain\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_ET','s:15:\"s:8:\"Ethiopia\";\";',1454062282,1456481482),('Zend_LocaleC_en_territory_FI','s:14:\"s:7:\"Finland\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_FJ','s:11:\"s:4:\"Fiji\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_FK','s:24:\"s:16:\"Falkland Islands\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_FM','s:18:\"s:10:\"Micronesia\";\";',1454062290,1456481490),('Zend_LocaleC_en_territory_FO','s:21:\"s:13:\"Faroe Islands\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_FR','s:13:\"s:6:\"France\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_GA','s:12:\"s:5:\"Gabon\";\";',1454062298,1456481498),('Zend_LocaleC_en_territory_GB','s:22:\"s:14:\"United Kingdom\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_GD','s:14:\"s:7:\"Grenada\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_GE','s:14:\"s:7:\"Georgia\";\";',1454062303,1456481503),('Zend_LocaleC_en_territory_GF','s:21:\"s:13:\"French Guiana\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_GG','s:15:\"s:8:\"Guernsey\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_GH','s:12:\"s:5:\"Ghana\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_GI','s:16:\"s:9:\"Gibraltar\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_GL','s:16:\"s:9:\"Greenland\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_GM','s:13:\"s:6:\"Gambia\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_GN','s:13:\"s:6:\"Guinea\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_GP','s:18:\"s:10:\"Guadeloupe\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_GQ','s:25:\"s:17:\"Equatorial Guinea\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_GR','s:13:\"s:6:\"Greece\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_GT','s:16:\"s:9:\"Guatemala\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_GU','s:11:\"s:4:\"Guam\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_GW','s:21:\"s:13:\"Guinea-Bissau\";\";',1454062309,1456481509),('Zend_LocaleC_en_territory_GY','s:13:\"s:6:\"Guyana\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_HK','s:27:\"s:19:\"Hong Kong SAR China\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_HN','s:15:\"s:8:\"Honduras\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_HR','s:14:\"s:7:\"Croatia\";\";',1454062301,1456481501),('Zend_LocaleC_en_territory_HT','s:12:\"s:5:\"Haiti\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_HU','s:14:\"s:7:\"Hungary\";\";',1454062302,1456481502),('Zend_LocaleC_en_territory_IC','s:22:\"s:14:\"Canary Islands\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_ID','s:16:\"s:9:\"Indonesia\";\";',1454062302,1456481502),('Zend_LocaleC_en_territory_IE','s:14:\"s:7:\"Ireland\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_IL','s:13:\"s:6:\"Israel\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_IM','s:19:\"s:11:\"Isle of Man\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_IN','s:12:\"s:5:\"India\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_IO','s:38:\"s:30:\"British Indian Ocean Territory\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_IQ','s:11:\"s:4:\"Iraq\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_IR','s:11:\"s:4:\"Iran\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_IS','s:14:\"s:7:\"Iceland\";\";',1454062302,1456481502),('Zend_LocaleC_en_territory_IT','s:12:\"s:5:\"Italy\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_JE','s:13:\"s:6:\"Jersey\";\";',1454062291,1456481491),('Zend_LocaleC_en_territory_JM','s:14:\"s:7:\"Jamaica\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_JO','s:13:\"s:6:\"Jordan\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_JP','s:12:\"s:5:\"Japan\";\";',1454062303,1456481503),('Zend_LocaleC_en_territory_KE','s:12:\"s:5:\"Kenya\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_KG','s:18:\"s:10:\"Kyrgyzstan\";\";',1454062310,1456481510),('Zend_LocaleC_en_territory_KH','s:15:\"s:8:\"Cambodia\";\";',1454062304,1456481504),('Zend_LocaleC_en_territory_KI','s:15:\"s:8:\"Kiribati\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_KM','s:14:\"s:7:\"Comoros\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_KN','s:29:\"s:21:\"Saint Kitts and Nevis\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_KP','s:19:\"s:11:\"North Korea\";\";',1454062304,1456481504),('Zend_LocaleC_en_territory_KR','s:19:\"s:11:\"South Korea\";\";',1454062304,1456481504),('Zend_LocaleC_en_territory_KW','s:13:\"s:6:\"Kuwait\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_KY','s:22:\"s:14:\"Cayman Islands\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_KZ','s:18:\"s:10:\"Kazakhstan\";\";',1454062303,1456481503),('Zend_LocaleC_en_territory_LA','s:11:\"s:4:\"Laos\";\";',1454062305,1456481505),('Zend_LocaleC_en_territory_LB','s:14:\"s:7:\"Lebanon\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_LC','s:19:\"s:11:\"Saint Lucia\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_LI','s:21:\"s:13:\"Liechtenstein\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_LK','s:16:\"s:9:\"Sri Lanka\";\";',1454062311,1456481511),('Zend_LocaleC_en_territory_LR','s:14:\"s:7:\"Liberia\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_LS','s:14:\"s:7:\"Lesotho\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_LT','s:16:\"s:9:\"Lithuania\";\";',1454062305,1456481505),('Zend_LocaleC_en_territory_LU','s:18:\"s:10:\"Luxembourg\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_LV','s:13:\"s:6:\"Latvia\";\";',1454062305,1456481505),('Zend_LocaleC_en_territory_LY','s:12:\"s:5:\"Libya\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_MA','s:14:\"s:7:\"Morocco\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_MC','s:13:\"s:6:\"Monaco\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_MD','s:14:\"s:7:\"Moldova\";\";',1454062310,1456481510),('Zend_LocaleC_en_territory_ME','s:18:\"s:10:\"Montenegro\";\";',1454062312,1456481512),('Zend_LocaleC_en_territory_MF','s:20:\"s:12:\"Saint Martin\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_MG','s:18:\"s:10:\"Madagascar\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_MH','s:24:\"s:16:\"Marshall Islands\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_MK','s:16:\"s:9:\"Macedonia\";\";',1454062306,1456481506),('Zend_LocaleC_en_territory_ML','s:11:\"s:4:\"Mali\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_MM','s:23:\"s:15:\"Myanmar (Burma)\";\";',1454062307,1456481507),('Zend_LocaleC_en_territory_MN','s:15:\"s:8:\"Mongolia\";\";',1454062306,1456481506),('Zend_LocaleC_en_territory_MO','s:23:\"s:15:\"Macau SAR China\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_MP','s:32:\"s:24:\"Northern Mariana Islands\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_MQ','s:18:\"s:10:\"Martinique\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_MR','s:18:\"s:10:\"Mauritania\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_MS','s:18:\"s:10:\"Montserrat\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_MT','s:12:\"s:5:\"Malta\";\";',1454062292,1456481492),('Zend_LocaleC_en_territory_MU','s:16:\"s:9:\"Mauritius\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_MW','s:13:\"s:6:\"Malawi\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_MY','s:15:\"s:8:\"Malaysia\";\";',1454062306,1456481506),('Zend_LocaleC_en_territory_MZ','s:18:\"s:10:\"Mozambique\";\";',1454062306,1456481506),('Zend_LocaleC_en_territory_NA','s:14:\"s:7:\"Namibia\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_NC','s:21:\"s:13:\"New Caledonia\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_NE','s:12:\"s:5:\"Niger\";\";',1454062288,1456481488),('Zend_LocaleC_en_territory_NF','s:22:\"s:14:\"Norfolk Island\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_NG','s:14:\"s:7:\"Nigeria\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_NI','s:16:\"s:9:\"Nicaragua\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_NL','s:19:\"s:11:\"Netherlands\";\";',1454062300,1456481500),('Zend_LocaleC_en_territory_NO','s:13:\"s:6:\"Norway\";\";',1454062307,1456481507),('Zend_LocaleC_en_territory_NP','s:12:\"s:5:\"Nepal\";\";',1454062307,1456481507),('Zend_LocaleC_en_territory_NR','s:12:\"s:5:\"Nauru\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_NU','s:11:\"s:4:\"Niue\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_NZ','s:19:\"s:11:\"New Zealand\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_OM','s:11:\"s:4:\"Oman\";\";',1454062284,1456481484),('Zend_LocaleC_en_territory_PA','s:13:\"s:6:\"Panama\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_PE','s:11:\"s:4:\"Peru\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_PF','s:24:\"s:16:\"French Polynesia\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_PG','s:24:\"s:16:\"Papua New Guinea\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_PH','s:19:\"s:11:\"Philippines\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_PK','s:15:\"s:8:\"Pakistan\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_PL','s:13:\"s:6:\"Poland\";\";',1454062309,1456481509),('Zend_LocaleC_en_territory_PM','s:33:\"s:25:\"Saint Pierre and Miquelon\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_PN','s:24:\"s:16:\"Pitcairn Islands\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_PR','s:19:\"s:11:\"Puerto Rico\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_PS','s:31:\"s:23:\"Palestinian Territories\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_PW','s:12:\"s:5:\"Palau\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_PY','s:15:\"s:8:\"Paraguay\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_QA','s:12:\"s:5:\"Qatar\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_RE','s:15:\"s:8:\"Réunion\";\";',1454062299,1456481499),('Zend_LocaleC_en_territory_RO','s:14:\"s:7:\"Romania\";\";',1454062310,1456481510),('Zend_LocaleC_en_territory_RS','s:13:\"s:6:\"Serbia\";\";',1454062312,1456481512),('Zend_LocaleC_en_territory_RU','s:13:\"s:6:\"Russia\";\";',1454062309,1456481509),('Zend_LocaleC_en_territory_RW','s:13:\"s:6:\"Rwanda\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_SA','s:20:\"s:12:\"Saudi Arabia\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_SB','s:23:\"s:15:\"Solomon Islands\";\";',1454062293,1456481493),('Zend_LocaleC_en_territory_SC','s:18:\"s:10:\"Seychelles\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_SD','s:12:\"s:5:\"Sudan\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_SE','s:13:\"s:6:\"Sweden\";\";',1454062313,1456481513),('Zend_LocaleC_en_territory_SG','s:16:\"s:9:\"Singapore\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_SH','s:20:\"s:12:\"Saint Helena\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_SI','s:15:\"s:8:\"Slovenia\";\";',1454062311,1456481511),('Zend_LocaleC_en_territory_SJ','s:30:\"s:22:\"Svalbard and Jan Mayen\";\";',1454062307,1456481507),('Zend_LocaleC_en_territory_SK','s:15:\"s:8:\"Slovakia\";\";',1454062311,1456481511),('Zend_LocaleC_en_territory_SL','s:20:\"s:12:\"Sierra Leone\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_SM','s:18:\"s:10:\"San Marino\";\";',1454062302,1456481502),('Zend_LocaleC_en_territory_SN','s:14:\"s:7:\"Senegal\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_SO','s:14:\"s:7:\"Somalia\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_SR','s:15:\"s:8:\"Suriname\";\";',1454062308,1456481508),('Zend_LocaleC_en_territory_SS','s:19:\"s:11:\"South Sudan\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_ST','s:32:\"s:24:\"São Tomé and Príncipe\";\";',1454062309,1456481509),('Zend_LocaleC_en_territory_SV','s:19:\"s:11:\"El Salvador\";\";',1454062296,1456481496),('Zend_LocaleC_en_territory_SX','s:20:\"s:12:\"Sint Maarten\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_SY','s:12:\"s:5:\"Syria\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_SZ','s:16:\"s:9:\"Swaziland\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_TC','s:32:\"s:24:\"Turks and Caicos Islands\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_TD','s:11:\"s:4:\"Chad\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_TG','s:11:\"s:4:\"Togo\";\";',1454062289,1456481489),('Zend_LocaleC_en_territory_TH','s:15:\"s:8:\"Thailand\";\";',1454062314,1456481514),('Zend_LocaleC_en_territory_TJ','s:18:\"s:10:\"Tajikistan\";\";',1454062314,1456481514),('Zend_LocaleC_en_territory_TK','s:14:\"s:7:\"Tokelau\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_TL','s:19:\"s:11:\"Timor-Leste\";\";',1454062309,1456481509),('Zend_LocaleC_en_territory_TN','s:14:\"s:7:\"Tunisia\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_TO','s:12:\"s:5:\"Tonga\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_TR','s:13:\"s:6:\"Turkey\";\";',1454062314,1456481514),('Zend_LocaleC_en_territory_TT','s:27:\"s:19:\"Trinidad and Tobago\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_TV','s:13:\"s:6:\"Tuvalu\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_TW','s:13:\"s:6:\"Taiwan\";\";',1454062316,1456481516),('Zend_LocaleC_en_territory_TZ','s:15:\"s:8:\"Tanzania\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_UA','s:14:\"s:7:\"Ukraine\";\";',1454062310,1456481510),('Zend_LocaleC_en_territory_UG','s:13:\"s:6:\"Uganda\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_UM','s:29:\"s:21:\"U.S. Outlying Islands\";\";',1454062294,1456481494),('Zend_LocaleC_en_territory_US','s:21:\"s:13:\"United States\";\";',1454062287,1456481487),('Zend_LocaleC_en_territory_UY','s:14:\"s:7:\"Uruguay\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_UZ','s:18:\"s:10:\"Uzbekistan\";\";',1454062315,1456481515),('Zend_LocaleC_en_territory_VC','s:32:\"s:24:\"St. Vincent & Grenadines\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_VE','s:16:\"s:9:\"Venezuela\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_VG','s:30:\"s:22:\"British Virgin Islands\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_VI','s:27:\"s:19:\"U.S. Virgin Islands\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_VN','s:14:\"s:7:\"Vietnam\";\";',1454062316,1456481516),('Zend_LocaleC_en_territory_VU','s:14:\"s:7:\"Vanuatu\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_WF','s:25:\"s:17:\"Wallis and Futuna\";\";',1454062297,1456481497),('Zend_LocaleC_en_territory_WS','s:12:\"s:5:\"Samoa\";\";',1454062295,1456481495),('Zend_LocaleC_en_territory_XK','s:13:\"s:6:\"Kosovo\";\";',1454062312,1456481512),('Zend_LocaleC_en_territory_YE','s:12:\"s:5:\"Yemen\";\";',1454062285,1456481485),('Zend_LocaleC_en_territory_YT','s:14:\"s:7:\"Mayotte\";\";',1454062300,1456481500),('Zend_LocaleC_en_territory_ZA','s:20:\"s:12:\"South Africa\";\";',1454062283,1456481483),('Zend_LocaleC_en_territory_ZM','s:13:\"s:6:\"Zambia\";\";',1454062286,1456481486),('Zend_LocaleC_en_territory_ZW','s:15:\"s:8:\"Zimbabwe\";\";',1454062295,1456481495);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_tags`
--

DROP TABLE IF EXISTS `cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_tags` (
  `id` varchar(165) NOT NULL DEFAULT '',
  `tag` varchar(165) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`tag`),
  KEY `id` (`id`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_tags`
--

LOCK TABLES `cache_tags` WRITE;
/*!40000 ALTER TABLE `cache_tags` DISABLE KEYS */;
INSERT INTO `cache_tags` VALUES ('pimcore_asset_1','asset_1'),('pimcore_asset_10','asset_10'),('pimcore_asset_11','asset_11'),('pimcore_asset_12','asset_12'),('pimcore_asset_13','asset_13'),('pimcore_asset_14','asset_14'),('pimcore_asset_15','asset_15'),('pimcore_asset_16','asset_16'),('pimcore_asset_17','asset_17'),('pimcore_asset_19','asset_19'),('pimcore_asset_2','asset_2'),('pimcore_asset_21','asset_21'),('pimcore_asset_22','asset_22'),('pimcore_asset_23','asset_23'),('pimcore_asset_3','asset_3'),('pimcore_asset_4','asset_4'),('pimcore_asset_5','asset_5'),('pimcore_asset_6','asset_6'),('pimcore_asset_7','asset_7'),('pimcore_asset_8','asset_8'),('pimcore_asset_9','asset_9'),('pimcore_document_1','document_1'),('pimcore_document_14','document_14'),('pimcore_document_15','document_15'),('pimcore_document_16','document_16'),('pimcore_document_17','document_17'),('pimcore_document_18','document_18'),('pimcore_document_19','document_19'),('pimcore_document_20','asset_21'),('pimcore_document_20','asset_22'),('pimcore_document_20','document_20'),('pimcore_document_8','asset_4'),('pimcore_document_8','asset_6'),('pimcore_document_8','document_8'),('pimcore_document_9','document_9'),('pimcore_document_properties_20','document_20'),('pimcore_document_properties_20','document_properties'),('pimcore_document_properties_20','document_properties_20'),('pimcore_object_1','object_1'),('pimcore_object_10','class_7'),('pimcore_object_10','object_10'),('pimcore_object_11','class_7'),('pimcore_object_11','object_11'),('pimcore_object_12','class_7'),('pimcore_object_12','object_12'),('pimcore_object_13','object_13'),('pimcore_object_14','object_14'),('pimcore_object_26','class_7'),('pimcore_object_26','object_26'),('pimcore_object_27','class_7'),('pimcore_object_27','object_27'),('pimcore_object_28','class_7'),('pimcore_object_28','object_28'),('pimcore_object_29','asset_13'),('pimcore_object_29','class_8'),('pimcore_object_29','object_29'),('pimcore_object_30','asset_14'),('pimcore_object_30','class_8'),('pimcore_object_30','object_30'),('pimcore_object_31','asset_15'),('pimcore_object_31','class_8'),('pimcore_object_31','object_31'),('pimcore_object_32','asset_16'),('pimcore_object_32','class_8'),('pimcore_object_32','object_32'),('pimcore_object_properties_29','object_29'),('pimcore_object_properties_29','object_properties'),('pimcore_object_properties_29','object_properties_29'),('pimcore_object_properties_30','object_30'),('pimcore_object_properties_30','object_properties'),('pimcore_object_properties_30','object_properties_30'),('pimcore_object_properties_31','object_31'),('pimcore_object_properties_31','object_properties'),('pimcore_object_properties_31','object_properties_31'),('pimcore_object_properties_32','object_32'),('pimcore_object_properties_32','object_properties'),('pimcore_object_properties_32','object_properties_32'),('pimcore_outputfilter_tagmngt','outputfilter_tagmngt'),('pimcore_outputfilter_tagmngt','tagmanagement'),('pimcore_site_domain_00543d50e587bdcfe29d4c06a2e64bf2','site'),('pimcore_site_domain_00543d50e587bdcfe29d4c06a2e64bf2','site_domain_00543d50e587bdcfe29d4c06a2e64bf2'),('pimcore_site_domain_00543d50e587bdcfe29d4c06a2e64bf2','system'),('pimcore_site_domain_b9e08b3fbbb63c1ee7018482bb460968','site'),('pimcore_site_domain_b9e08b3fbbb63c1ee7018482bb460968','site_domain_b9e08b3fbbb63c1ee7018482bb460968'),('pimcore_site_domain_b9e08b3fbbb63c1ee7018482bb460968','system'),('pimcore_system_resource_columns_edit_lock','resource'),('pimcore_system_resource_columns_edit_lock','system'),('pimcore_system_resource_columns_edit_lock','system_resource_columns_edit_lock'),('pimcore_system_route_redirect','redirect'),('pimcore_system_route_redirect','route'),('pimcore_system_route_redirect','system'),('pimcore_system_route_redirect','system_route_redirect'),('pimcore_system_route_staticroute','route'),('pimcore_system_route_staticroute','staticroute'),('pimcore_system_route_staticroute','system'),('pimcore_system_route_staticroute','system_route_staticroute'),('pimcore_system_supported_locales_en','system'),('pimcore_system_supported_locales_en','system_supported_locales_en'),('pimcore_Translate_Admin_data_en','translate'),('pimcore_Translate_Admin_data_en','Translate_Admin_data_en'),('pimcore_Translate_Admin_data_en','translator'),('pimcore_Translate_Admin_data_en','translator_website'),('pimcore_Translate_Website_data_en','translate'),('pimcore_Translate_Website_data_en','Translate_Website_data_en'),('pimcore_Translate_Website_data_en','translator'),('pimcore_Translate_Website_data_en','translator_website'),('pimcore_translations_admin_data','translate'),('pimcore_translations_admin_data','translations_admin_data'),('pimcore_translations_admin_data','translator'),('pimcore_website_config','config'),('pimcore_website_config','output'),('pimcore_website_config','system'),('pimcore_website_config','website_config'),('Zend_LocaleC_en_language_aa','Zend_Locale'),('Zend_LocaleC_en_language_aa_DJ','Zend_Locale'),('Zend_LocaleC_en_language_aa_ER','Zend_Locale'),('Zend_LocaleC_en_language_aa_ET','Zend_Locale'),('Zend_LocaleC_en_language_af','Zend_Locale'),('Zend_LocaleC_en_language_af_NA','Zend_Locale'),('Zend_LocaleC_en_language_af_ZA','Zend_Locale'),('Zend_LocaleC_en_language_agq','Zend_Locale'),('Zend_LocaleC_en_language_agq_CM','Zend_Locale'),('Zend_LocaleC_en_language_ak','Zend_Locale'),('Zend_LocaleC_en_language_ak_GH','Zend_Locale'),('Zend_LocaleC_en_language_am','Zend_Locale'),('Zend_LocaleC_en_language_am_ET','Zend_Locale'),('Zend_LocaleC_en_language_ar','Zend_Locale'),('Zend_LocaleC_en_language_ar_001','Zend_Locale'),('Zend_LocaleC_en_language_ar_AE','Zend_Locale'),('Zend_LocaleC_en_language_ar_BH','Zend_Locale'),('Zend_LocaleC_en_language_ar_DJ','Zend_Locale'),('Zend_LocaleC_en_language_ar_DZ','Zend_Locale'),('Zend_LocaleC_en_language_ar_EG','Zend_Locale'),('Zend_LocaleC_en_language_ar_EH','Zend_Locale'),('Zend_LocaleC_en_language_ar_ER','Zend_Locale'),('Zend_LocaleC_en_language_ar_IL','Zend_Locale'),('Zend_LocaleC_en_language_ar_IQ','Zend_Locale'),('Zend_LocaleC_en_language_ar_JO','Zend_Locale'),('Zend_LocaleC_en_language_ar_KM','Zend_Locale'),('Zend_LocaleC_en_language_ar_KW','Zend_Locale'),('Zend_LocaleC_en_language_ar_LB','Zend_Locale'),('Zend_LocaleC_en_language_ar_LY','Zend_Locale'),('Zend_LocaleC_en_language_ar_MA','Zend_Locale'),('Zend_LocaleC_en_language_ar_MR','Zend_Locale'),('Zend_LocaleC_en_language_ar_OM','Zend_Locale'),('Zend_LocaleC_en_language_ar_PS','Zend_Locale'),('Zend_LocaleC_en_language_ar_QA','Zend_Locale'),('Zend_LocaleC_en_language_ar_SA','Zend_Locale'),('Zend_LocaleC_en_language_ar_SD','Zend_Locale'),('Zend_LocaleC_en_language_ar_SO','Zend_Locale'),('Zend_LocaleC_en_language_ar_SS','Zend_Locale'),('Zend_LocaleC_en_language_ar_SY','Zend_Locale'),('Zend_LocaleC_en_language_ar_TD','Zend_Locale'),('Zend_LocaleC_en_language_ar_TN','Zend_Locale'),('Zend_LocaleC_en_language_ar_YE','Zend_Locale'),('Zend_LocaleC_en_language_as','Zend_Locale'),('Zend_LocaleC_en_language_asa','Zend_Locale'),('Zend_LocaleC_en_language_asa_TZ','Zend_Locale'),('Zend_LocaleC_en_language_ast','Zend_Locale'),('Zend_LocaleC_en_language_ast_ES','Zend_Locale'),('Zend_LocaleC_en_language_as_IN','Zend_Locale'),('Zend_LocaleC_en_language_az','Zend_Locale'),('Zend_LocaleC_en_language_az_AZ','Zend_Locale'),('Zend_LocaleC_en_language_az_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_az_Cyrl_AZ','Zend_Locale'),('Zend_LocaleC_en_language_az_Latn','Zend_Locale'),('Zend_LocaleC_en_language_az_Latn_AZ','Zend_Locale'),('Zend_LocaleC_en_language_bas','Zend_Locale'),('Zend_LocaleC_en_language_bas_CM','Zend_Locale'),('Zend_LocaleC_en_language_be','Zend_Locale'),('Zend_LocaleC_en_language_bem','Zend_Locale'),('Zend_LocaleC_en_language_bem_ZM','Zend_Locale'),('Zend_LocaleC_en_language_bez','Zend_Locale'),('Zend_LocaleC_en_language_bez_TZ','Zend_Locale'),('Zend_LocaleC_en_language_be_BY','Zend_Locale'),('Zend_LocaleC_en_language_bg','Zend_Locale'),('Zend_LocaleC_en_language_bg_BG','Zend_Locale'),('Zend_LocaleC_en_language_bm','Zend_Locale'),('Zend_LocaleC_en_language_bm_ML','Zend_Locale'),('Zend_LocaleC_en_language_bn','Zend_Locale'),('Zend_LocaleC_en_language_bn_BD','Zend_Locale'),('Zend_LocaleC_en_language_bn_IN','Zend_Locale'),('Zend_LocaleC_en_language_bo','Zend_Locale'),('Zend_LocaleC_en_language_bo_CN','Zend_Locale'),('Zend_LocaleC_en_language_bo_IN','Zend_Locale'),('Zend_LocaleC_en_language_br','Zend_Locale'),('Zend_LocaleC_en_language_brx','Zend_Locale'),('Zend_LocaleC_en_language_brx_IN','Zend_Locale'),('Zend_LocaleC_en_language_br_FR','Zend_Locale'),('Zend_LocaleC_en_language_bs','Zend_Locale'),('Zend_LocaleC_en_language_bs_BA','Zend_Locale'),('Zend_LocaleC_en_language_bs_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_bs_Cyrl_BA','Zend_Locale'),('Zend_LocaleC_en_language_bs_Latn','Zend_Locale'),('Zend_LocaleC_en_language_bs_Latn_BA','Zend_Locale'),('Zend_LocaleC_en_language_byn','Zend_Locale'),('Zend_LocaleC_en_language_byn_ER','Zend_Locale'),('Zend_LocaleC_en_language_ca','Zend_Locale'),('Zend_LocaleC_en_language_ca_AD','Zend_Locale'),('Zend_LocaleC_en_language_ca_ES','Zend_Locale'),('Zend_LocaleC_en_language_ca_ES_VALENCIA','Zend_Locale'),('Zend_LocaleC_en_language_ca_FR','Zend_Locale'),('Zend_LocaleC_en_language_ca_IT','Zend_Locale'),('Zend_LocaleC_en_language_cgg','Zend_Locale'),('Zend_LocaleC_en_language_cgg_UG','Zend_Locale'),('Zend_LocaleC_en_language_chr','Zend_Locale'),('Zend_LocaleC_en_language_chr_US','Zend_Locale'),('Zend_LocaleC_en_language_cs','Zend_Locale'),('Zend_LocaleC_en_language_cs_CZ','Zend_Locale'),('Zend_LocaleC_en_language_cy','Zend_Locale'),('Zend_LocaleC_en_language_cy_GB','Zend_Locale'),('Zend_LocaleC_en_language_da','Zend_Locale'),('Zend_LocaleC_en_language_dav','Zend_Locale'),('Zend_LocaleC_en_language_dav_KE','Zend_Locale'),('Zend_LocaleC_en_language_da_DK','Zend_Locale'),('Zend_LocaleC_en_language_da_GL','Zend_Locale'),('Zend_LocaleC_en_language_de','Zend_Locale'),('Zend_LocaleC_en_language_de_AT','Zend_Locale'),('Zend_LocaleC_en_language_de_BE','Zend_Locale'),('Zend_LocaleC_en_language_de_CH','Zend_Locale'),('Zend_LocaleC_en_language_de_DE','Zend_Locale'),('Zend_LocaleC_en_language_de_LI','Zend_Locale'),('Zend_LocaleC_en_language_de_LU','Zend_Locale'),('Zend_LocaleC_en_language_dje','Zend_Locale'),('Zend_LocaleC_en_language_dje_NE','Zend_Locale'),('Zend_LocaleC_en_language_dua','Zend_Locale'),('Zend_LocaleC_en_language_dua_CM','Zend_Locale'),('Zend_LocaleC_en_language_dyo','Zend_Locale'),('Zend_LocaleC_en_language_dyo_SN','Zend_Locale'),('Zend_LocaleC_en_language_dz','Zend_Locale'),('Zend_LocaleC_en_language_dz_BT','Zend_Locale'),('Zend_LocaleC_en_language_ebu','Zend_Locale'),('Zend_LocaleC_en_language_ebu_KE','Zend_Locale'),('Zend_LocaleC_en_language_ee','Zend_Locale'),('Zend_LocaleC_en_language_ee_GH','Zend_Locale'),('Zend_LocaleC_en_language_ee_TG','Zend_Locale'),('Zend_LocaleC_en_language_el','Zend_Locale'),('Zend_LocaleC_en_language_el_CY','Zend_Locale'),('Zend_LocaleC_en_language_el_GR','Zend_Locale'),('Zend_LocaleC_en_language_en','Zend_Locale'),('Zend_LocaleC_en_language_en_001','Zend_Locale'),('Zend_LocaleC_en_language_en_150','Zend_Locale'),('Zend_LocaleC_en_language_en_AG','Zend_Locale'),('Zend_LocaleC_en_language_en_AI','Zend_Locale'),('Zend_LocaleC_en_language_en_AS','Zend_Locale'),('Zend_LocaleC_en_language_en_AU','Zend_Locale'),('Zend_LocaleC_en_language_en_BB','Zend_Locale'),('Zend_LocaleC_en_language_en_BE','Zend_Locale'),('Zend_LocaleC_en_language_en_BM','Zend_Locale'),('Zend_LocaleC_en_language_en_BS','Zend_Locale'),('Zend_LocaleC_en_language_en_BW','Zend_Locale'),('Zend_LocaleC_en_language_en_BZ','Zend_Locale'),('Zend_LocaleC_en_language_en_CA','Zend_Locale'),('Zend_LocaleC_en_language_en_CC','Zend_Locale'),('Zend_LocaleC_en_language_en_CK','Zend_Locale'),('Zend_LocaleC_en_language_en_CM','Zend_Locale'),('Zend_LocaleC_en_language_en_CX','Zend_Locale'),('Zend_LocaleC_en_language_en_DG','Zend_Locale'),('Zend_LocaleC_en_language_en_DM','Zend_Locale'),('Zend_LocaleC_en_language_en_Dsrt','Zend_Locale'),('Zend_LocaleC_en_language_en_Dsrt_US','Zend_Locale'),('Zend_LocaleC_en_language_en_ER','Zend_Locale'),('Zend_LocaleC_en_language_en_FJ','Zend_Locale'),('Zend_LocaleC_en_language_en_FK','Zend_Locale'),('Zend_LocaleC_en_language_en_FM','Zend_Locale'),('Zend_LocaleC_en_language_en_GB','Zend_Locale'),('Zend_LocaleC_en_language_en_GD','Zend_Locale'),('Zend_LocaleC_en_language_en_GG','Zend_Locale'),('Zend_LocaleC_en_language_en_GH','Zend_Locale'),('Zend_LocaleC_en_language_en_GI','Zend_Locale'),('Zend_LocaleC_en_language_en_GM','Zend_Locale'),('Zend_LocaleC_en_language_en_GU','Zend_Locale'),('Zend_LocaleC_en_language_en_GY','Zend_Locale'),('Zend_LocaleC_en_language_en_HK','Zend_Locale'),('Zend_LocaleC_en_language_en_IE','Zend_Locale'),('Zend_LocaleC_en_language_en_IM','Zend_Locale'),('Zend_LocaleC_en_language_en_IN','Zend_Locale'),('Zend_LocaleC_en_language_en_IO','Zend_Locale'),('Zend_LocaleC_en_language_en_JE','Zend_Locale'),('Zend_LocaleC_en_language_en_JM','Zend_Locale'),('Zend_LocaleC_en_language_en_KE','Zend_Locale'),('Zend_LocaleC_en_language_en_KI','Zend_Locale'),('Zend_LocaleC_en_language_en_KN','Zend_Locale'),('Zend_LocaleC_en_language_en_KY','Zend_Locale'),('Zend_LocaleC_en_language_en_LC','Zend_Locale'),('Zend_LocaleC_en_language_en_LR','Zend_Locale'),('Zend_LocaleC_en_language_en_LS','Zend_Locale'),('Zend_LocaleC_en_language_en_MG','Zend_Locale'),('Zend_LocaleC_en_language_en_MH','Zend_Locale'),('Zend_LocaleC_en_language_en_MO','Zend_Locale'),('Zend_LocaleC_en_language_en_MP','Zend_Locale'),('Zend_LocaleC_en_language_en_MS','Zend_Locale'),('Zend_LocaleC_en_language_en_MT','Zend_Locale'),('Zend_LocaleC_en_language_en_MU','Zend_Locale'),('Zend_LocaleC_en_language_en_MW','Zend_Locale'),('Zend_LocaleC_en_language_en_NA','Zend_Locale'),('Zend_LocaleC_en_language_en_NF','Zend_Locale'),('Zend_LocaleC_en_language_en_NG','Zend_Locale'),('Zend_LocaleC_en_language_en_NR','Zend_Locale'),('Zend_LocaleC_en_language_en_NU','Zend_Locale'),('Zend_LocaleC_en_language_en_NZ','Zend_Locale'),('Zend_LocaleC_en_language_en_PG','Zend_Locale'),('Zend_LocaleC_en_language_en_PH','Zend_Locale'),('Zend_LocaleC_en_language_en_PK','Zend_Locale'),('Zend_LocaleC_en_language_en_PN','Zend_Locale'),('Zend_LocaleC_en_language_en_PR','Zend_Locale'),('Zend_LocaleC_en_language_en_PW','Zend_Locale'),('Zend_LocaleC_en_language_en_RW','Zend_Locale'),('Zend_LocaleC_en_language_en_SB','Zend_Locale'),('Zend_LocaleC_en_language_en_SC','Zend_Locale'),('Zend_LocaleC_en_language_en_SD','Zend_Locale'),('Zend_LocaleC_en_language_en_SG','Zend_Locale'),('Zend_LocaleC_en_language_en_SH','Zend_Locale'),('Zend_LocaleC_en_language_en_SL','Zend_Locale'),('Zend_LocaleC_en_language_en_SS','Zend_Locale'),('Zend_LocaleC_en_language_en_SX','Zend_Locale'),('Zend_LocaleC_en_language_en_SZ','Zend_Locale'),('Zend_LocaleC_en_language_en_TC','Zend_Locale'),('Zend_LocaleC_en_language_en_TK','Zend_Locale'),('Zend_LocaleC_en_language_en_TO','Zend_Locale'),('Zend_LocaleC_en_language_en_TT','Zend_Locale'),('Zend_LocaleC_en_language_en_TV','Zend_Locale'),('Zend_LocaleC_en_language_en_TZ','Zend_Locale'),('Zend_LocaleC_en_language_en_UG','Zend_Locale'),('Zend_LocaleC_en_language_en_UM','Zend_Locale'),('Zend_LocaleC_en_language_en_US','Zend_Locale'),('Zend_LocaleC_en_language_en_US_POSIX','Zend_Locale'),('Zend_LocaleC_en_language_en_VC','Zend_Locale'),('Zend_LocaleC_en_language_en_VG','Zend_Locale'),('Zend_LocaleC_en_language_en_VI','Zend_Locale'),('Zend_LocaleC_en_language_en_VU','Zend_Locale'),('Zend_LocaleC_en_language_en_WS','Zend_Locale'),('Zend_LocaleC_en_language_en_ZA','Zend_Locale'),('Zend_LocaleC_en_language_en_ZM','Zend_Locale'),('Zend_LocaleC_en_language_en_ZW','Zend_Locale'),('Zend_LocaleC_en_language_eo','Zend_Locale'),('Zend_LocaleC_en_language_eo_001','Zend_Locale'),('Zend_LocaleC_en_language_es','Zend_Locale'),('Zend_LocaleC_en_language_es_419','Zend_Locale'),('Zend_LocaleC_en_language_es_AR','Zend_Locale'),('Zend_LocaleC_en_language_es_BO','Zend_Locale'),('Zend_LocaleC_en_language_es_CL','Zend_Locale'),('Zend_LocaleC_en_language_es_CO','Zend_Locale'),('Zend_LocaleC_en_language_es_CR','Zend_Locale'),('Zend_LocaleC_en_language_es_CU','Zend_Locale'),('Zend_LocaleC_en_language_es_DO','Zend_Locale'),('Zend_LocaleC_en_language_es_EA','Zend_Locale'),('Zend_LocaleC_en_language_es_EC','Zend_Locale'),('Zend_LocaleC_en_language_es_ES','Zend_Locale'),('Zend_LocaleC_en_language_es_GQ','Zend_Locale'),('Zend_LocaleC_en_language_es_GT','Zend_Locale'),('Zend_LocaleC_en_language_es_HN','Zend_Locale'),('Zend_LocaleC_en_language_es_IC','Zend_Locale'),('Zend_LocaleC_en_language_es_MX','Zend_Locale'),('Zend_LocaleC_en_language_es_NI','Zend_Locale'),('Zend_LocaleC_en_language_es_PA','Zend_Locale'),('Zend_LocaleC_en_language_es_PE','Zend_Locale'),('Zend_LocaleC_en_language_es_PH','Zend_Locale'),('Zend_LocaleC_en_language_es_PR','Zend_Locale'),('Zend_LocaleC_en_language_es_PY','Zend_Locale'),('Zend_LocaleC_en_language_es_SV','Zend_Locale'),('Zend_LocaleC_en_language_es_US','Zend_Locale'),('Zend_LocaleC_en_language_es_UY','Zend_Locale'),('Zend_LocaleC_en_language_es_VE','Zend_Locale'),('Zend_LocaleC_en_language_et','Zend_Locale'),('Zend_LocaleC_en_language_et_EE','Zend_Locale'),('Zend_LocaleC_en_language_eu','Zend_Locale'),('Zend_LocaleC_en_language_eu_ES','Zend_Locale'),('Zend_LocaleC_en_language_ewo','Zend_Locale'),('Zend_LocaleC_en_language_ewo_CM','Zend_Locale'),('Zend_LocaleC_en_language_fa','Zend_Locale'),('Zend_LocaleC_en_language_fa_AF','Zend_Locale'),('Zend_LocaleC_en_language_fa_IR','Zend_Locale'),('Zend_LocaleC_en_language_ff','Zend_Locale'),('Zend_LocaleC_en_language_ff_CM','Zend_Locale'),('Zend_LocaleC_en_language_ff_GN','Zend_Locale'),('Zend_LocaleC_en_language_ff_MR','Zend_Locale'),('Zend_LocaleC_en_language_ff_SN','Zend_Locale'),('Zend_LocaleC_en_language_fi','Zend_Locale'),('Zend_LocaleC_en_language_fil','Zend_Locale'),('Zend_LocaleC_en_language_fil_PH','Zend_Locale'),('Zend_LocaleC_en_language_fi_FI','Zend_Locale'),('Zend_LocaleC_en_language_fo','Zend_Locale'),('Zend_LocaleC_en_language_fo_FO','Zend_Locale'),('Zend_LocaleC_en_language_fr','Zend_Locale'),('Zend_LocaleC_en_language_fr_BE','Zend_Locale'),('Zend_LocaleC_en_language_fr_BF','Zend_Locale'),('Zend_LocaleC_en_language_fr_BI','Zend_Locale'),('Zend_LocaleC_en_language_fr_BJ','Zend_Locale'),('Zend_LocaleC_en_language_fr_BL','Zend_Locale'),('Zend_LocaleC_en_language_fr_CA','Zend_Locale'),('Zend_LocaleC_en_language_fr_CD','Zend_Locale'),('Zend_LocaleC_en_language_fr_CF','Zend_Locale'),('Zend_LocaleC_en_language_fr_CG','Zend_Locale'),('Zend_LocaleC_en_language_fr_CH','Zend_Locale'),('Zend_LocaleC_en_language_fr_CI','Zend_Locale'),('Zend_LocaleC_en_language_fr_CM','Zend_Locale'),('Zend_LocaleC_en_language_fr_DJ','Zend_Locale'),('Zend_LocaleC_en_language_fr_DZ','Zend_Locale'),('Zend_LocaleC_en_language_fr_FR','Zend_Locale'),('Zend_LocaleC_en_language_fr_GA','Zend_Locale'),('Zend_LocaleC_en_language_fr_GF','Zend_Locale'),('Zend_LocaleC_en_language_fr_GN','Zend_Locale'),('Zend_LocaleC_en_language_fr_GP','Zend_Locale'),('Zend_LocaleC_en_language_fr_GQ','Zend_Locale'),('Zend_LocaleC_en_language_fr_HT','Zend_Locale'),('Zend_LocaleC_en_language_fr_KM','Zend_Locale'),('Zend_LocaleC_en_language_fr_LU','Zend_Locale'),('Zend_LocaleC_en_language_fr_MA','Zend_Locale'),('Zend_LocaleC_en_language_fr_MC','Zend_Locale'),('Zend_LocaleC_en_language_fr_MF','Zend_Locale'),('Zend_LocaleC_en_language_fr_MG','Zend_Locale'),('Zend_LocaleC_en_language_fr_ML','Zend_Locale'),('Zend_LocaleC_en_language_fr_MQ','Zend_Locale'),('Zend_LocaleC_en_language_fr_MR','Zend_Locale'),('Zend_LocaleC_en_language_fr_MU','Zend_Locale'),('Zend_LocaleC_en_language_fr_NC','Zend_Locale'),('Zend_LocaleC_en_language_fr_NE','Zend_Locale'),('Zend_LocaleC_en_language_fr_PF','Zend_Locale'),('Zend_LocaleC_en_language_fr_PM','Zend_Locale'),('Zend_LocaleC_en_language_fr_RE','Zend_Locale'),('Zend_LocaleC_en_language_fr_RW','Zend_Locale'),('Zend_LocaleC_en_language_fr_SC','Zend_Locale'),('Zend_LocaleC_en_language_fr_SN','Zend_Locale'),('Zend_LocaleC_en_language_fr_SY','Zend_Locale'),('Zend_LocaleC_en_language_fr_TD','Zend_Locale'),('Zend_LocaleC_en_language_fr_TG','Zend_Locale'),('Zend_LocaleC_en_language_fr_TN','Zend_Locale'),('Zend_LocaleC_en_language_fr_VU','Zend_Locale'),('Zend_LocaleC_en_language_fr_WF','Zend_Locale'),('Zend_LocaleC_en_language_fr_YT','Zend_Locale'),('Zend_LocaleC_en_language_fur','Zend_Locale'),('Zend_LocaleC_en_language_fur_IT','Zend_Locale'),('Zend_LocaleC_en_language_fy','Zend_Locale'),('Zend_LocaleC_en_language_fy_NL','Zend_Locale'),('Zend_LocaleC_en_language_ga','Zend_Locale'),('Zend_LocaleC_en_language_ga_IE','Zend_Locale'),('Zend_LocaleC_en_language_gd','Zend_Locale'),('Zend_LocaleC_en_language_gd_GB','Zend_Locale'),('Zend_LocaleC_en_language_gl','Zend_Locale'),('Zend_LocaleC_en_language_gl_ES','Zend_Locale'),('Zend_LocaleC_en_language_gsw','Zend_Locale'),('Zend_LocaleC_en_language_gsw_CH','Zend_Locale'),('Zend_LocaleC_en_language_gsw_LI','Zend_Locale'),('Zend_LocaleC_en_language_gu','Zend_Locale'),('Zend_LocaleC_en_language_guz','Zend_Locale'),('Zend_LocaleC_en_language_guz_KE','Zend_Locale'),('Zend_LocaleC_en_language_gu_IN','Zend_Locale'),('Zend_LocaleC_en_language_gv','Zend_Locale'),('Zend_LocaleC_en_language_gv_IM','Zend_Locale'),('Zend_LocaleC_en_language_ha','Zend_Locale'),('Zend_LocaleC_en_language_haw','Zend_Locale'),('Zend_LocaleC_en_language_haw_US','Zend_Locale'),('Zend_LocaleC_en_language_ha_GH','Zend_Locale'),('Zend_LocaleC_en_language_ha_Latn','Zend_Locale'),('Zend_LocaleC_en_language_ha_Latn_GH','Zend_Locale'),('Zend_LocaleC_en_language_ha_Latn_NE','Zend_Locale'),('Zend_LocaleC_en_language_ha_Latn_NG','Zend_Locale'),('Zend_LocaleC_en_language_ha_NE','Zend_Locale'),('Zend_LocaleC_en_language_ha_NG','Zend_Locale'),('Zend_LocaleC_en_language_he','Zend_Locale'),('Zend_LocaleC_en_language_he_IL','Zend_Locale'),('Zend_LocaleC_en_language_hi','Zend_Locale'),('Zend_LocaleC_en_language_hi_IN','Zend_Locale'),('Zend_LocaleC_en_language_hr','Zend_Locale'),('Zend_LocaleC_en_language_hr_BA','Zend_Locale'),('Zend_LocaleC_en_language_hr_HR','Zend_Locale'),('Zend_LocaleC_en_language_hu','Zend_Locale'),('Zend_LocaleC_en_language_hu_HU','Zend_Locale'),('Zend_LocaleC_en_language_hy','Zend_Locale'),('Zend_LocaleC_en_language_hy_AM','Zend_Locale'),('Zend_LocaleC_en_language_ia','Zend_Locale'),('Zend_LocaleC_en_language_ia_FR','Zend_Locale'),('Zend_LocaleC_en_language_id','Zend_Locale'),('Zend_LocaleC_en_language_id_ID','Zend_Locale'),('Zend_LocaleC_en_language_ig','Zend_Locale'),('Zend_LocaleC_en_language_ig_NG','Zend_Locale'),('Zend_LocaleC_en_language_ii','Zend_Locale'),('Zend_LocaleC_en_language_ii_CN','Zend_Locale'),('Zend_LocaleC_en_language_is','Zend_Locale'),('Zend_LocaleC_en_language_is_IS','Zend_Locale'),('Zend_LocaleC_en_language_it','Zend_Locale'),('Zend_LocaleC_en_language_it_CH','Zend_Locale'),('Zend_LocaleC_en_language_it_IT','Zend_Locale'),('Zend_LocaleC_en_language_it_SM','Zend_Locale'),('Zend_LocaleC_en_language_ja','Zend_Locale'),('Zend_LocaleC_en_language_ja_JP','Zend_Locale'),('Zend_LocaleC_en_language_jgo','Zend_Locale'),('Zend_LocaleC_en_language_jgo_CM','Zend_Locale'),('Zend_LocaleC_en_language_jmc','Zend_Locale'),('Zend_LocaleC_en_language_jmc_TZ','Zend_Locale'),('Zend_LocaleC_en_language_ka','Zend_Locale'),('Zend_LocaleC_en_language_kab','Zend_Locale'),('Zend_LocaleC_en_language_kab_DZ','Zend_Locale'),('Zend_LocaleC_en_language_kam','Zend_Locale'),('Zend_LocaleC_en_language_kam_KE','Zend_Locale'),('Zend_LocaleC_en_language_ka_GE','Zend_Locale'),('Zend_LocaleC_en_language_kde','Zend_Locale'),('Zend_LocaleC_en_language_kde_TZ','Zend_Locale'),('Zend_LocaleC_en_language_kea','Zend_Locale'),('Zend_LocaleC_en_language_kea_CV','Zend_Locale'),('Zend_LocaleC_en_language_khq','Zend_Locale'),('Zend_LocaleC_en_language_khq_ML','Zend_Locale'),('Zend_LocaleC_en_language_ki','Zend_Locale'),('Zend_LocaleC_en_language_ki_KE','Zend_Locale'),('Zend_LocaleC_en_language_kk','Zend_Locale'),('Zend_LocaleC_en_language_kkj','Zend_Locale'),('Zend_LocaleC_en_language_kkj_CM','Zend_Locale'),('Zend_LocaleC_en_language_kk_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_kk_Cyrl_KZ','Zend_Locale'),('Zend_LocaleC_en_language_kk_KZ','Zend_Locale'),('Zend_LocaleC_en_language_kl','Zend_Locale'),('Zend_LocaleC_en_language_kln','Zend_Locale'),('Zend_LocaleC_en_language_kln_KE','Zend_Locale'),('Zend_LocaleC_en_language_kl_GL','Zend_Locale'),('Zend_LocaleC_en_language_km','Zend_Locale'),('Zend_LocaleC_en_language_km_KH','Zend_Locale'),('Zend_LocaleC_en_language_kn','Zend_Locale'),('Zend_LocaleC_en_language_kn_IN','Zend_Locale'),('Zend_LocaleC_en_language_ko','Zend_Locale'),('Zend_LocaleC_en_language_kok','Zend_Locale'),('Zend_LocaleC_en_language_kok_IN','Zend_Locale'),('Zend_LocaleC_en_language_ko_KP','Zend_Locale'),('Zend_LocaleC_en_language_ko_KR','Zend_Locale'),('Zend_LocaleC_en_language_ks','Zend_Locale'),('Zend_LocaleC_en_language_ksb','Zend_Locale'),('Zend_LocaleC_en_language_ksb_TZ','Zend_Locale'),('Zend_LocaleC_en_language_ksf','Zend_Locale'),('Zend_LocaleC_en_language_ksf_CM','Zend_Locale'),('Zend_LocaleC_en_language_ksh','Zend_Locale'),('Zend_LocaleC_en_language_ksh_DE','Zend_Locale'),('Zend_LocaleC_en_language_ks_Arab','Zend_Locale'),('Zend_LocaleC_en_language_ks_Arab_IN','Zend_Locale'),('Zend_LocaleC_en_language_ks_IN','Zend_Locale'),('Zend_LocaleC_en_language_kw','Zend_Locale'),('Zend_LocaleC_en_language_kw_GB','Zend_Locale'),('Zend_LocaleC_en_language_ky','Zend_Locale'),('Zend_LocaleC_en_language_ky_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_ky_Cyrl_KG','Zend_Locale'),('Zend_LocaleC_en_language_lag','Zend_Locale'),('Zend_LocaleC_en_language_lag_TZ','Zend_Locale'),('Zend_LocaleC_en_language_lg','Zend_Locale'),('Zend_LocaleC_en_language_lg_UG','Zend_Locale'),('Zend_LocaleC_en_language_lkt','Zend_Locale'),('Zend_LocaleC_en_language_lkt_US','Zend_Locale'),('Zend_LocaleC_en_language_ln','Zend_Locale'),('Zend_LocaleC_en_language_ln_AO','Zend_Locale'),('Zend_LocaleC_en_language_ln_CD','Zend_Locale'),('Zend_LocaleC_en_language_ln_CF','Zend_Locale'),('Zend_LocaleC_en_language_ln_CG','Zend_Locale'),('Zend_LocaleC_en_language_lo','Zend_Locale'),('Zend_LocaleC_en_language_lo_LA','Zend_Locale'),('Zend_LocaleC_en_language_lt','Zend_Locale'),('Zend_LocaleC_en_language_lt_LT','Zend_Locale'),('Zend_LocaleC_en_language_lu','Zend_Locale'),('Zend_LocaleC_en_language_luo','Zend_Locale'),('Zend_LocaleC_en_language_luo_KE','Zend_Locale'),('Zend_LocaleC_en_language_luy','Zend_Locale'),('Zend_LocaleC_en_language_luy_KE','Zend_Locale'),('Zend_LocaleC_en_language_lu_CD','Zend_Locale'),('Zend_LocaleC_en_language_lv','Zend_Locale'),('Zend_LocaleC_en_language_lv_LV','Zend_Locale'),('Zend_LocaleC_en_language_mas','Zend_Locale'),('Zend_LocaleC_en_language_mas_KE','Zend_Locale'),('Zend_LocaleC_en_language_mas_TZ','Zend_Locale'),('Zend_LocaleC_en_language_mer','Zend_Locale'),('Zend_LocaleC_en_language_mer_KE','Zend_Locale'),('Zend_LocaleC_en_language_mfe','Zend_Locale'),('Zend_LocaleC_en_language_mfe_MU','Zend_Locale'),('Zend_LocaleC_en_language_mg','Zend_Locale'),('Zend_LocaleC_en_language_mgh','Zend_Locale'),('Zend_LocaleC_en_language_mgh_MZ','Zend_Locale'),('Zend_LocaleC_en_language_mgo','Zend_Locale'),('Zend_LocaleC_en_language_mgo_CM','Zend_Locale'),('Zend_LocaleC_en_language_mg_MG','Zend_Locale'),('Zend_LocaleC_en_language_mk','Zend_Locale'),('Zend_LocaleC_en_language_mk_MK','Zend_Locale'),('Zend_LocaleC_en_language_ml','Zend_Locale'),('Zend_LocaleC_en_language_ml_IN','Zend_Locale'),('Zend_LocaleC_en_language_mn','Zend_Locale'),('Zend_LocaleC_en_language_mn_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_mn_Cyrl_MN','Zend_Locale'),('Zend_LocaleC_en_language_mn_MN','Zend_Locale'),('Zend_LocaleC_en_language_mr','Zend_Locale'),('Zend_LocaleC_en_language_mr_IN','Zend_Locale'),('Zend_LocaleC_en_language_ms','Zend_Locale'),('Zend_LocaleC_en_language_ms_BN','Zend_Locale'),('Zend_LocaleC_en_language_ms_Latn','Zend_Locale'),('Zend_LocaleC_en_language_ms_Latn_BN','Zend_Locale'),('Zend_LocaleC_en_language_ms_Latn_MY','Zend_Locale'),('Zend_LocaleC_en_language_ms_Latn_SG','Zend_Locale'),('Zend_LocaleC_en_language_ms_MY','Zend_Locale'),('Zend_LocaleC_en_language_ms_SG','Zend_Locale'),('Zend_LocaleC_en_language_mt','Zend_Locale'),('Zend_LocaleC_en_language_mt_MT','Zend_Locale'),('Zend_LocaleC_en_language_mua','Zend_Locale'),('Zend_LocaleC_en_language_mua_CM','Zend_Locale'),('Zend_LocaleC_en_language_my','Zend_Locale'),('Zend_LocaleC_en_language_my_MM','Zend_Locale'),('Zend_LocaleC_en_language_naq','Zend_Locale'),('Zend_LocaleC_en_language_naq_NA','Zend_Locale'),('Zend_LocaleC_en_language_nb','Zend_Locale'),('Zend_LocaleC_en_language_nb_NO','Zend_Locale'),('Zend_LocaleC_en_language_nb_SJ','Zend_Locale'),('Zend_LocaleC_en_language_nd','Zend_Locale'),('Zend_LocaleC_en_language_nd_ZW','Zend_Locale'),('Zend_LocaleC_en_language_ne','Zend_Locale'),('Zend_LocaleC_en_language_ne_IN','Zend_Locale'),('Zend_LocaleC_en_language_ne_NP','Zend_Locale'),('Zend_LocaleC_en_language_nl','Zend_Locale'),('Zend_LocaleC_en_language_nl_AW','Zend_Locale'),('Zend_LocaleC_en_language_nl_BE','Zend_Locale'),('Zend_LocaleC_en_language_nl_BQ','Zend_Locale'),('Zend_LocaleC_en_language_nl_CW','Zend_Locale'),('Zend_LocaleC_en_language_nl_NL','Zend_Locale'),('Zend_LocaleC_en_language_nl_SR','Zend_Locale'),('Zend_LocaleC_en_language_nl_SX','Zend_Locale'),('Zend_LocaleC_en_language_nmg','Zend_Locale'),('Zend_LocaleC_en_language_nmg_CM','Zend_Locale'),('Zend_LocaleC_en_language_nn','Zend_Locale'),('Zend_LocaleC_en_language_nnh','Zend_Locale'),('Zend_LocaleC_en_language_nnh_CM','Zend_Locale'),('Zend_LocaleC_en_language_nn_NO','Zend_Locale'),('Zend_LocaleC_en_language_nr','Zend_Locale'),('Zend_LocaleC_en_language_nr_ZA','Zend_Locale'),('Zend_LocaleC_en_language_nso','Zend_Locale'),('Zend_LocaleC_en_language_nso_ZA','Zend_Locale'),('Zend_LocaleC_en_language_nus','Zend_Locale'),('Zend_LocaleC_en_language_nus_SD','Zend_Locale'),('Zend_LocaleC_en_language_nyn','Zend_Locale'),('Zend_LocaleC_en_language_nyn_UG','Zend_Locale'),('Zend_LocaleC_en_language_om','Zend_Locale'),('Zend_LocaleC_en_language_om_ET','Zend_Locale'),('Zend_LocaleC_en_language_om_KE','Zend_Locale'),('Zend_LocaleC_en_language_or','Zend_Locale'),('Zend_LocaleC_en_language_ordinals','Zend_Locale'),('Zend_LocaleC_en_language_or_IN','Zend_Locale'),('Zend_LocaleC_en_language_os','Zend_Locale'),('Zend_LocaleC_en_language_os_GE','Zend_Locale'),('Zend_LocaleC_en_language_os_RU','Zend_Locale'),('Zend_LocaleC_en_language_pa','Zend_Locale'),('Zend_LocaleC_en_language_pa_Arab','Zend_Locale'),('Zend_LocaleC_en_language_pa_Arab_PK','Zend_Locale'),('Zend_LocaleC_en_language_pa_Guru','Zend_Locale'),('Zend_LocaleC_en_language_pa_Guru_IN','Zend_Locale'),('Zend_LocaleC_en_language_pa_IN','Zend_Locale'),('Zend_LocaleC_en_language_pa_PK','Zend_Locale'),('Zend_LocaleC_en_language_pl','Zend_Locale'),('Zend_LocaleC_en_language_plurals','Zend_Locale'),('Zend_LocaleC_en_language_pl_PL','Zend_Locale'),('Zend_LocaleC_en_language_ps','Zend_Locale'),('Zend_LocaleC_en_language_ps_AF','Zend_Locale'),('Zend_LocaleC_en_language_pt','Zend_Locale'),('Zend_LocaleC_en_language_pt_AO','Zend_Locale'),('Zend_LocaleC_en_language_pt_BR','Zend_Locale'),('Zend_LocaleC_en_language_pt_CV','Zend_Locale'),('Zend_LocaleC_en_language_pt_GW','Zend_Locale'),('Zend_LocaleC_en_language_pt_MO','Zend_Locale'),('Zend_LocaleC_en_language_pt_MZ','Zend_Locale'),('Zend_LocaleC_en_language_pt_PT','Zend_Locale'),('Zend_LocaleC_en_language_pt_ST','Zend_Locale'),('Zend_LocaleC_en_language_pt_TL','Zend_Locale'),('Zend_LocaleC_en_language_rm','Zend_Locale'),('Zend_LocaleC_en_language_rm_CH','Zend_Locale'),('Zend_LocaleC_en_language_rn','Zend_Locale'),('Zend_LocaleC_en_language_rn_BI','Zend_Locale'),('Zend_LocaleC_en_language_ro','Zend_Locale'),('Zend_LocaleC_en_language_rof','Zend_Locale'),('Zend_LocaleC_en_language_rof_TZ','Zend_Locale'),('Zend_LocaleC_en_language_root','Zend_Locale'),('Zend_LocaleC_en_language_ro_MD','Zend_Locale'),('Zend_LocaleC_en_language_ro_RO','Zend_Locale'),('Zend_LocaleC_en_language_ru','Zend_Locale'),('Zend_LocaleC_en_language_ru_BY','Zend_Locale'),('Zend_LocaleC_en_language_ru_KG','Zend_Locale'),('Zend_LocaleC_en_language_ru_KZ','Zend_Locale'),('Zend_LocaleC_en_language_ru_MD','Zend_Locale'),('Zend_LocaleC_en_language_ru_RU','Zend_Locale'),('Zend_LocaleC_en_language_ru_UA','Zend_Locale'),('Zend_LocaleC_en_language_rw','Zend_Locale'),('Zend_LocaleC_en_language_rwk','Zend_Locale'),('Zend_LocaleC_en_language_rwk_TZ','Zend_Locale'),('Zend_LocaleC_en_language_rw_RW','Zend_Locale'),('Zend_LocaleC_en_language_sah','Zend_Locale'),('Zend_LocaleC_en_language_sah_RU','Zend_Locale'),('Zend_LocaleC_en_language_saq','Zend_Locale'),('Zend_LocaleC_en_language_saq_KE','Zend_Locale'),('Zend_LocaleC_en_language_sbp','Zend_Locale'),('Zend_LocaleC_en_language_sbp_TZ','Zend_Locale'),('Zend_LocaleC_en_language_se','Zend_Locale'),('Zend_LocaleC_en_language_seh','Zend_Locale'),('Zend_LocaleC_en_language_seh_MZ','Zend_Locale'),('Zend_LocaleC_en_language_ses','Zend_Locale'),('Zend_LocaleC_en_language_ses_ML','Zend_Locale'),('Zend_LocaleC_en_language_se_FI','Zend_Locale'),('Zend_LocaleC_en_language_se_NO','Zend_Locale'),('Zend_LocaleC_en_language_sg','Zend_Locale'),('Zend_LocaleC_en_language_sg_CF','Zend_Locale'),('Zend_LocaleC_en_language_shi','Zend_Locale'),('Zend_LocaleC_en_language_shi_Latn','Zend_Locale'),('Zend_LocaleC_en_language_shi_Latn_MA','Zend_Locale'),('Zend_LocaleC_en_language_shi_MA','Zend_Locale'),('Zend_LocaleC_en_language_shi_Tfng','Zend_Locale'),('Zend_LocaleC_en_language_shi_Tfng_MA','Zend_Locale'),('Zend_LocaleC_en_language_si','Zend_Locale'),('Zend_LocaleC_en_language_si_LK','Zend_Locale'),('Zend_LocaleC_en_language_sk','Zend_Locale'),('Zend_LocaleC_en_language_sk_SK','Zend_Locale'),('Zend_LocaleC_en_language_sl','Zend_Locale'),('Zend_LocaleC_en_language_sl_SI','Zend_Locale'),('Zend_LocaleC_en_language_sn','Zend_Locale'),('Zend_LocaleC_en_language_sn_ZW','Zend_Locale'),('Zend_LocaleC_en_language_so','Zend_Locale'),('Zend_LocaleC_en_language_so_DJ','Zend_Locale'),('Zend_LocaleC_en_language_so_ET','Zend_Locale'),('Zend_LocaleC_en_language_so_KE','Zend_Locale'),('Zend_LocaleC_en_language_so_SO','Zend_Locale'),('Zend_LocaleC_en_language_sq','Zend_Locale'),('Zend_LocaleC_en_language_sq_AL','Zend_Locale'),('Zend_LocaleC_en_language_sq_MK','Zend_Locale'),('Zend_LocaleC_en_language_sq_XK','Zend_Locale'),('Zend_LocaleC_en_language_sr','Zend_Locale'),('Zend_LocaleC_en_language_sr_BA','Zend_Locale'),('Zend_LocaleC_en_language_sr_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_sr_Cyrl_BA','Zend_Locale'),('Zend_LocaleC_en_language_sr_Cyrl_ME','Zend_Locale'),('Zend_LocaleC_en_language_sr_Cyrl_RS','Zend_Locale'),('Zend_LocaleC_en_language_sr_Cyrl_XK','Zend_Locale'),('Zend_LocaleC_en_language_sr_Latn','Zend_Locale'),('Zend_LocaleC_en_language_sr_Latn_BA','Zend_Locale'),('Zend_LocaleC_en_language_sr_Latn_ME','Zend_Locale'),('Zend_LocaleC_en_language_sr_Latn_RS','Zend_Locale'),('Zend_LocaleC_en_language_sr_Latn_XK','Zend_Locale'),('Zend_LocaleC_en_language_sr_ME','Zend_Locale'),('Zend_LocaleC_en_language_sr_RS','Zend_Locale'),('Zend_LocaleC_en_language_sr_XK','Zend_Locale'),('Zend_LocaleC_en_language_ss','Zend_Locale'),('Zend_LocaleC_en_language_ssy','Zend_Locale'),('Zend_LocaleC_en_language_ssy_ER','Zend_Locale'),('Zend_LocaleC_en_language_ss_SZ','Zend_Locale'),('Zend_LocaleC_en_language_ss_ZA','Zend_Locale'),('Zend_LocaleC_en_language_st','Zend_Locale'),('Zend_LocaleC_en_language_st_LS','Zend_Locale'),('Zend_LocaleC_en_language_st_ZA','Zend_Locale'),('Zend_LocaleC_en_language_sv','Zend_Locale'),('Zend_LocaleC_en_language_sv_AX','Zend_Locale'),('Zend_LocaleC_en_language_sv_FI','Zend_Locale'),('Zend_LocaleC_en_language_sv_SE','Zend_Locale'),('Zend_LocaleC_en_language_sw','Zend_Locale'),('Zend_LocaleC_en_language_swc','Zend_Locale'),('Zend_LocaleC_en_language_swc_CD','Zend_Locale'),('Zend_LocaleC_en_language_sw_KE','Zend_Locale'),('Zend_LocaleC_en_language_sw_TZ','Zend_Locale'),('Zend_LocaleC_en_language_sw_UG','Zend_Locale'),('Zend_LocaleC_en_language_ta','Zend_Locale'),('Zend_LocaleC_en_language_ta_IN','Zend_Locale'),('Zend_LocaleC_en_language_ta_LK','Zend_Locale'),('Zend_LocaleC_en_language_ta_MY','Zend_Locale'),('Zend_LocaleC_en_language_ta_SG','Zend_Locale'),('Zend_LocaleC_en_language_te','Zend_Locale'),('Zend_LocaleC_en_language_teo','Zend_Locale'),('Zend_LocaleC_en_language_teo_KE','Zend_Locale'),('Zend_LocaleC_en_language_teo_UG','Zend_Locale'),('Zend_LocaleC_en_language_te_IN','Zend_Locale'),('Zend_LocaleC_en_language_tg','Zend_Locale'),('Zend_LocaleC_en_language_tg_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_tg_Cyrl_TJ','Zend_Locale'),('Zend_LocaleC_en_language_tg_TJ','Zend_Locale'),('Zend_LocaleC_en_language_th','Zend_Locale'),('Zend_LocaleC_en_language_th_TH','Zend_Locale'),('Zend_LocaleC_en_language_ti','Zend_Locale'),('Zend_LocaleC_en_language_tig','Zend_Locale'),('Zend_LocaleC_en_language_tig_ER','Zend_Locale'),('Zend_LocaleC_en_language_ti_ER','Zend_Locale'),('Zend_LocaleC_en_language_ti_ET','Zend_Locale'),('Zend_LocaleC_en_language_tn','Zend_Locale'),('Zend_LocaleC_en_language_tn_BW','Zend_Locale'),('Zend_LocaleC_en_language_tn_ZA','Zend_Locale'),('Zend_LocaleC_en_language_to','Zend_Locale'),('Zend_LocaleC_en_language_to_TO','Zend_Locale'),('Zend_LocaleC_en_language_tr','Zend_Locale'),('Zend_LocaleC_en_language_tr_CY','Zend_Locale'),('Zend_LocaleC_en_language_tr_TR','Zend_Locale'),('Zend_LocaleC_en_language_ts','Zend_Locale'),('Zend_LocaleC_en_language_ts_ZA','Zend_Locale'),('Zend_LocaleC_en_language_twq','Zend_Locale'),('Zend_LocaleC_en_language_twq_NE','Zend_Locale'),('Zend_LocaleC_en_language_tzm','Zend_Locale'),('Zend_LocaleC_en_language_tzm_Latn','Zend_Locale'),('Zend_LocaleC_en_language_tzm_Latn_MA','Zend_Locale'),('Zend_LocaleC_en_language_tzm_MA','Zend_Locale'),('Zend_LocaleC_en_language_ug','Zend_Locale'),('Zend_LocaleC_en_language_ug_Arab','Zend_Locale'),('Zend_LocaleC_en_language_ug_Arab_CN','Zend_Locale'),('Zend_LocaleC_en_language_uk','Zend_Locale'),('Zend_LocaleC_en_language_uk_UA','Zend_Locale'),('Zend_LocaleC_en_language_ur','Zend_Locale'),('Zend_LocaleC_en_language_ur_IN','Zend_Locale'),('Zend_LocaleC_en_language_ur_PK','Zend_Locale'),('Zend_LocaleC_en_language_uz','Zend_Locale'),('Zend_LocaleC_en_language_uz_AF','Zend_Locale'),('Zend_LocaleC_en_language_uz_Arab','Zend_Locale'),('Zend_LocaleC_en_language_uz_Arab_AF','Zend_Locale'),('Zend_LocaleC_en_language_uz_Cyrl','Zend_Locale'),('Zend_LocaleC_en_language_uz_Cyrl_UZ','Zend_Locale'),('Zend_LocaleC_en_language_uz_Latn','Zend_Locale'),('Zend_LocaleC_en_language_uz_Latn_UZ','Zend_Locale'),('Zend_LocaleC_en_language_uz_UZ','Zend_Locale'),('Zend_LocaleC_en_language_vai','Zend_Locale'),('Zend_LocaleC_en_language_vai_Latn','Zend_Locale'),('Zend_LocaleC_en_language_vai_Latn_LR','Zend_Locale'),('Zend_LocaleC_en_language_vai_LR','Zend_Locale'),('Zend_LocaleC_en_language_vai_Vaii','Zend_Locale'),('Zend_LocaleC_en_language_vai_Vaii_LR','Zend_Locale'),('Zend_LocaleC_en_language_ve','Zend_Locale'),('Zend_LocaleC_en_language_ve_ZA','Zend_Locale'),('Zend_LocaleC_en_language_vi','Zend_Locale'),('Zend_LocaleC_en_language_vi_VN','Zend_Locale'),('Zend_LocaleC_en_language_vo','Zend_Locale'),('Zend_LocaleC_en_language_vo_001','Zend_Locale'),('Zend_LocaleC_en_language_vun','Zend_Locale'),('Zend_LocaleC_en_language_vun_TZ','Zend_Locale'),('Zend_LocaleC_en_language_wae','Zend_Locale'),('Zend_LocaleC_en_language_wae_CH','Zend_Locale'),('Zend_LocaleC_en_language_wal','Zend_Locale'),('Zend_LocaleC_en_language_wal_ET','Zend_Locale'),('Zend_LocaleC_en_language_xh','Zend_Locale'),('Zend_LocaleC_en_language_xh_ZA','Zend_Locale'),('Zend_LocaleC_en_language_xog','Zend_Locale'),('Zend_LocaleC_en_language_xog_UG','Zend_Locale'),('Zend_LocaleC_en_language_yav','Zend_Locale'),('Zend_LocaleC_en_language_yav_CM','Zend_Locale'),('Zend_LocaleC_en_language_yo','Zend_Locale'),('Zend_LocaleC_en_language_yo_BJ','Zend_Locale'),('Zend_LocaleC_en_language_yo_NG','Zend_Locale'),('Zend_LocaleC_en_language_zgh','Zend_Locale'),('Zend_LocaleC_en_language_zgh_MA','Zend_Locale'),('Zend_LocaleC_en_language_zh','Zend_Locale'),('Zend_LocaleC_en_language_zh_CN','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hans','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hans_CN','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hans_HK','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hans_MO','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hans_SG','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hant','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hant_HK','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hant_MO','Zend_Locale'),('Zend_LocaleC_en_language_zh_Hant_TW','Zend_Locale'),('Zend_LocaleC_en_language_zh_HK','Zend_Locale'),('Zend_LocaleC_en_language_zh_MO','Zend_Locale'),('Zend_LocaleC_en_language_zh_SG','Zend_Locale'),('Zend_LocaleC_en_language_zh_TW','Zend_Locale'),('Zend_LocaleC_en_language_zu','Zend_Locale'),('Zend_LocaleC_en_language_zu_ZA','Zend_Locale'),('Zend_LocaleC_en_territory_','Zend_Locale'),('Zend_LocaleC_en_territory_001','Zend_Locale'),('Zend_LocaleC_en_territory_150','Zend_Locale'),('Zend_LocaleC_en_territory_AD','Zend_Locale'),('Zend_LocaleC_en_territory_AE','Zend_Locale'),('Zend_LocaleC_en_territory_AF','Zend_Locale'),('Zend_LocaleC_en_territory_AG','Zend_Locale'),('Zend_LocaleC_en_territory_AI','Zend_Locale'),('Zend_LocaleC_en_territory_AL','Zend_Locale'),('Zend_LocaleC_en_territory_AM','Zend_Locale'),('Zend_LocaleC_en_territory_AO','Zend_Locale'),('Zend_LocaleC_en_territory_AR','Zend_Locale'),('Zend_LocaleC_en_territory_AS','Zend_Locale'),('Zend_LocaleC_en_territory_AW','Zend_Locale'),('Zend_LocaleC_en_territory_AX','Zend_Locale'),('Zend_LocaleC_en_territory_AZ','Zend_Locale'),('Zend_LocaleC_en_territory_BA','Zend_Locale'),('Zend_LocaleC_en_territory_BB','Zend_Locale'),('Zend_LocaleC_en_territory_BD','Zend_Locale'),('Zend_LocaleC_en_territory_BE','Zend_Locale'),('Zend_LocaleC_en_territory_BF','Zend_Locale'),('Zend_LocaleC_en_territory_BG','Zend_Locale'),('Zend_LocaleC_en_territory_BH','Zend_Locale'),('Zend_LocaleC_en_territory_BI','Zend_Locale'),('Zend_LocaleC_en_territory_BJ','Zend_Locale'),('Zend_LocaleC_en_territory_BL','Zend_Locale'),('Zend_LocaleC_en_territory_BM','Zend_Locale'),('Zend_LocaleC_en_territory_BN','Zend_Locale'),('Zend_LocaleC_en_territory_BO','Zend_Locale'),('Zend_LocaleC_en_territory_BQ','Zend_Locale'),('Zend_LocaleC_en_territory_BS','Zend_Locale'),('Zend_LocaleC_en_territory_BT','Zend_Locale'),('Zend_LocaleC_en_territory_BW','Zend_Locale'),('Zend_LocaleC_en_territory_BY','Zend_Locale'),('Zend_LocaleC_en_territory_BZ','Zend_Locale'),('Zend_LocaleC_en_territory_CC','Zend_Locale'),('Zend_LocaleC_en_territory_CD','Zend_Locale'),('Zend_LocaleC_en_territory_CF','Zend_Locale'),('Zend_LocaleC_en_territory_CG','Zend_Locale'),('Zend_LocaleC_en_territory_CH','Zend_Locale'),('Zend_LocaleC_en_territory_CI','Zend_Locale'),('Zend_LocaleC_en_territory_CK','Zend_Locale'),('Zend_LocaleC_en_territory_CL','Zend_Locale'),('Zend_LocaleC_en_territory_CM','Zend_Locale'),('Zend_LocaleC_en_territory_CN','Zend_Locale'),('Zend_LocaleC_en_territory_CO','Zend_Locale'),('Zend_LocaleC_en_territory_CR','Zend_Locale'),('Zend_LocaleC_en_territory_CU','Zend_Locale'),('Zend_LocaleC_en_territory_CV','Zend_Locale'),('Zend_LocaleC_en_territory_CW','Zend_Locale'),('Zend_LocaleC_en_territory_CX','Zend_Locale'),('Zend_LocaleC_en_territory_CY','Zend_Locale'),('Zend_LocaleC_en_territory_CZ','Zend_Locale'),('Zend_LocaleC_en_territory_DE','Zend_Locale'),('Zend_LocaleC_en_territory_DG','Zend_Locale'),('Zend_LocaleC_en_territory_DJ','Zend_Locale'),('Zend_LocaleC_en_territory_DK','Zend_Locale'),('Zend_LocaleC_en_territory_DM','Zend_Locale'),('Zend_LocaleC_en_territory_DO','Zend_Locale'),('Zend_LocaleC_en_territory_DZ','Zend_Locale'),('Zend_LocaleC_en_territory_EA','Zend_Locale'),('Zend_LocaleC_en_territory_EC','Zend_Locale'),('Zend_LocaleC_en_territory_EE','Zend_Locale'),('Zend_LocaleC_en_territory_EG','Zend_Locale'),('Zend_LocaleC_en_territory_EH','Zend_Locale'),('Zend_LocaleC_en_territory_ER','Zend_Locale'),('Zend_LocaleC_en_territory_ES','Zend_Locale'),('Zend_LocaleC_en_territory_ET','Zend_Locale'),('Zend_LocaleC_en_territory_FI','Zend_Locale'),('Zend_LocaleC_en_territory_FJ','Zend_Locale'),('Zend_LocaleC_en_territory_FK','Zend_Locale'),('Zend_LocaleC_en_territory_FM','Zend_Locale'),('Zend_LocaleC_en_territory_FO','Zend_Locale'),('Zend_LocaleC_en_territory_FR','Zend_Locale'),('Zend_LocaleC_en_territory_GA','Zend_Locale'),('Zend_LocaleC_en_territory_GB','Zend_Locale'),('Zend_LocaleC_en_territory_GD','Zend_Locale'),('Zend_LocaleC_en_territory_GE','Zend_Locale'),('Zend_LocaleC_en_territory_GF','Zend_Locale'),('Zend_LocaleC_en_territory_GG','Zend_Locale'),('Zend_LocaleC_en_territory_GH','Zend_Locale'),('Zend_LocaleC_en_territory_GI','Zend_Locale'),('Zend_LocaleC_en_territory_GL','Zend_Locale'),('Zend_LocaleC_en_territory_GM','Zend_Locale'),('Zend_LocaleC_en_territory_GN','Zend_Locale'),('Zend_LocaleC_en_territory_GP','Zend_Locale'),('Zend_LocaleC_en_territory_GQ','Zend_Locale'),('Zend_LocaleC_en_territory_GR','Zend_Locale'),('Zend_LocaleC_en_territory_GT','Zend_Locale'),('Zend_LocaleC_en_territory_GU','Zend_Locale'),('Zend_LocaleC_en_territory_GW','Zend_Locale'),('Zend_LocaleC_en_territory_GY','Zend_Locale'),('Zend_LocaleC_en_territory_HK','Zend_Locale'),('Zend_LocaleC_en_territory_HN','Zend_Locale'),('Zend_LocaleC_en_territory_HR','Zend_Locale'),('Zend_LocaleC_en_territory_HT','Zend_Locale'),('Zend_LocaleC_en_territory_HU','Zend_Locale'),('Zend_LocaleC_en_territory_IC','Zend_Locale'),('Zend_LocaleC_en_territory_ID','Zend_Locale'),('Zend_LocaleC_en_territory_IE','Zend_Locale'),('Zend_LocaleC_en_territory_IL','Zend_Locale'),('Zend_LocaleC_en_territory_IM','Zend_Locale'),('Zend_LocaleC_en_territory_IN','Zend_Locale'),('Zend_LocaleC_en_territory_IO','Zend_Locale'),('Zend_LocaleC_en_territory_IQ','Zend_Locale'),('Zend_LocaleC_en_territory_IR','Zend_Locale'),('Zend_LocaleC_en_territory_IS','Zend_Locale'),('Zend_LocaleC_en_territory_IT','Zend_Locale'),('Zend_LocaleC_en_territory_JE','Zend_Locale'),('Zend_LocaleC_en_territory_JM','Zend_Locale'),('Zend_LocaleC_en_territory_JO','Zend_Locale'),('Zend_LocaleC_en_territory_JP','Zend_Locale'),('Zend_LocaleC_en_territory_KE','Zend_Locale'),('Zend_LocaleC_en_territory_KG','Zend_Locale'),('Zend_LocaleC_en_territory_KH','Zend_Locale'),('Zend_LocaleC_en_territory_KI','Zend_Locale'),('Zend_LocaleC_en_territory_KM','Zend_Locale'),('Zend_LocaleC_en_territory_KN','Zend_Locale'),('Zend_LocaleC_en_territory_KP','Zend_Locale'),('Zend_LocaleC_en_territory_KR','Zend_Locale'),('Zend_LocaleC_en_territory_KW','Zend_Locale'),('Zend_LocaleC_en_territory_KY','Zend_Locale'),('Zend_LocaleC_en_territory_KZ','Zend_Locale'),('Zend_LocaleC_en_territory_LA','Zend_Locale'),('Zend_LocaleC_en_territory_LB','Zend_Locale'),('Zend_LocaleC_en_territory_LC','Zend_Locale'),('Zend_LocaleC_en_territory_LI','Zend_Locale'),('Zend_LocaleC_en_territory_LK','Zend_Locale'),('Zend_LocaleC_en_territory_LR','Zend_Locale'),('Zend_LocaleC_en_territory_LS','Zend_Locale'),('Zend_LocaleC_en_territory_LT','Zend_Locale'),('Zend_LocaleC_en_territory_LU','Zend_Locale'),('Zend_LocaleC_en_territory_LV','Zend_Locale'),('Zend_LocaleC_en_territory_LY','Zend_Locale'),('Zend_LocaleC_en_territory_MA','Zend_Locale'),('Zend_LocaleC_en_territory_MC','Zend_Locale'),('Zend_LocaleC_en_territory_MD','Zend_Locale'),('Zend_LocaleC_en_territory_ME','Zend_Locale'),('Zend_LocaleC_en_territory_MF','Zend_Locale'),('Zend_LocaleC_en_territory_MG','Zend_Locale'),('Zend_LocaleC_en_territory_MH','Zend_Locale'),('Zend_LocaleC_en_territory_MK','Zend_Locale'),('Zend_LocaleC_en_territory_ML','Zend_Locale'),('Zend_LocaleC_en_territory_MM','Zend_Locale'),('Zend_LocaleC_en_territory_MN','Zend_Locale'),('Zend_LocaleC_en_territory_MO','Zend_Locale'),('Zend_LocaleC_en_territory_MP','Zend_Locale'),('Zend_LocaleC_en_territory_MQ','Zend_Locale'),('Zend_LocaleC_en_territory_MR','Zend_Locale'),('Zend_LocaleC_en_territory_MS','Zend_Locale'),('Zend_LocaleC_en_territory_MT','Zend_Locale'),('Zend_LocaleC_en_territory_MU','Zend_Locale'),('Zend_LocaleC_en_territory_MW','Zend_Locale'),('Zend_LocaleC_en_territory_MY','Zend_Locale'),('Zend_LocaleC_en_territory_MZ','Zend_Locale'),('Zend_LocaleC_en_territory_NA','Zend_Locale'),('Zend_LocaleC_en_territory_NC','Zend_Locale'),('Zend_LocaleC_en_territory_NE','Zend_Locale'),('Zend_LocaleC_en_territory_NF','Zend_Locale'),('Zend_LocaleC_en_territory_NG','Zend_Locale'),('Zend_LocaleC_en_territory_NI','Zend_Locale'),('Zend_LocaleC_en_territory_NL','Zend_Locale'),('Zend_LocaleC_en_territory_NO','Zend_Locale'),('Zend_LocaleC_en_territory_NP','Zend_Locale'),('Zend_LocaleC_en_territory_NR','Zend_Locale'),('Zend_LocaleC_en_territory_NU','Zend_Locale'),('Zend_LocaleC_en_territory_NZ','Zend_Locale'),('Zend_LocaleC_en_territory_OM','Zend_Locale'),('Zend_LocaleC_en_territory_PA','Zend_Locale'),('Zend_LocaleC_en_territory_PE','Zend_Locale'),('Zend_LocaleC_en_territory_PF','Zend_Locale'),('Zend_LocaleC_en_territory_PG','Zend_Locale'),('Zend_LocaleC_en_territory_PH','Zend_Locale'),('Zend_LocaleC_en_territory_PK','Zend_Locale'),('Zend_LocaleC_en_territory_PL','Zend_Locale'),('Zend_LocaleC_en_territory_PM','Zend_Locale'),('Zend_LocaleC_en_territory_PN','Zend_Locale'),('Zend_LocaleC_en_territory_PR','Zend_Locale'),('Zend_LocaleC_en_territory_PS','Zend_Locale'),('Zend_LocaleC_en_territory_PW','Zend_Locale'),('Zend_LocaleC_en_territory_PY','Zend_Locale'),('Zend_LocaleC_en_territory_QA','Zend_Locale'),('Zend_LocaleC_en_territory_RE','Zend_Locale'),('Zend_LocaleC_en_territory_RO','Zend_Locale'),('Zend_LocaleC_en_territory_RS','Zend_Locale'),('Zend_LocaleC_en_territory_RU','Zend_Locale'),('Zend_LocaleC_en_territory_RW','Zend_Locale'),('Zend_LocaleC_en_territory_SA','Zend_Locale'),('Zend_LocaleC_en_territory_SB','Zend_Locale'),('Zend_LocaleC_en_territory_SC','Zend_Locale'),('Zend_LocaleC_en_territory_SD','Zend_Locale'),('Zend_LocaleC_en_territory_SE','Zend_Locale'),('Zend_LocaleC_en_territory_SG','Zend_Locale'),('Zend_LocaleC_en_territory_SH','Zend_Locale'),('Zend_LocaleC_en_territory_SI','Zend_Locale'),('Zend_LocaleC_en_territory_SJ','Zend_Locale'),('Zend_LocaleC_en_territory_SK','Zend_Locale'),('Zend_LocaleC_en_territory_SL','Zend_Locale'),('Zend_LocaleC_en_territory_SM','Zend_Locale'),('Zend_LocaleC_en_territory_SN','Zend_Locale'),('Zend_LocaleC_en_territory_SO','Zend_Locale'),('Zend_LocaleC_en_territory_SR','Zend_Locale'),('Zend_LocaleC_en_territory_SS','Zend_Locale'),('Zend_LocaleC_en_territory_ST','Zend_Locale'),('Zend_LocaleC_en_territory_SV','Zend_Locale'),('Zend_LocaleC_en_territory_SX','Zend_Locale'),('Zend_LocaleC_en_territory_SY','Zend_Locale'),('Zend_LocaleC_en_territory_SZ','Zend_Locale'),('Zend_LocaleC_en_territory_TC','Zend_Locale'),('Zend_LocaleC_en_territory_TD','Zend_Locale'),('Zend_LocaleC_en_territory_TG','Zend_Locale'),('Zend_LocaleC_en_territory_TH','Zend_Locale'),('Zend_LocaleC_en_territory_TJ','Zend_Locale'),('Zend_LocaleC_en_territory_TK','Zend_Locale'),('Zend_LocaleC_en_territory_TL','Zend_Locale'),('Zend_LocaleC_en_territory_TN','Zend_Locale'),('Zend_LocaleC_en_territory_TO','Zend_Locale'),('Zend_LocaleC_en_territory_TR','Zend_Locale'),('Zend_LocaleC_en_territory_TT','Zend_Locale'),('Zend_LocaleC_en_territory_TV','Zend_Locale'),('Zend_LocaleC_en_territory_TW','Zend_Locale'),('Zend_LocaleC_en_territory_TZ','Zend_Locale'),('Zend_LocaleC_en_territory_UA','Zend_Locale'),('Zend_LocaleC_en_territory_UG','Zend_Locale'),('Zend_LocaleC_en_territory_UM','Zend_Locale'),('Zend_LocaleC_en_territory_US','Zend_Locale'),('Zend_LocaleC_en_territory_UY','Zend_Locale'),('Zend_LocaleC_en_territory_UZ','Zend_Locale'),('Zend_LocaleC_en_territory_VC','Zend_Locale'),('Zend_LocaleC_en_territory_VE','Zend_Locale'),('Zend_LocaleC_en_territory_VG','Zend_Locale'),('Zend_LocaleC_en_territory_VI','Zend_Locale'),('Zend_LocaleC_en_territory_VN','Zend_Locale'),('Zend_LocaleC_en_territory_VU','Zend_Locale'),('Zend_LocaleC_en_territory_WF','Zend_Locale'),('Zend_LocaleC_en_territory_WS','Zend_Locale'),('Zend_LocaleC_en_territory_XK','Zend_Locale'),('Zend_LocaleC_en_territory_YE','Zend_Locale'),('Zend_LocaleC_en_territory_YT','Zend_Locale'),('Zend_LocaleC_en_territory_ZA','Zend_Locale'),('Zend_LocaleC_en_territory_ZM','Zend_Locale'),('Zend_LocaleC_en_territory_ZW','Zend_Locale');
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
  `allowVariants` tinyint(1) unsigned DEFAULT '0',
  `parentClass` varchar(255) DEFAULT NULL,
  `useTraits` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `propertyVisibility` text,
  `showVariants` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (3,'PackageType','',1454328402,1454404714,2,2,0,0,'','','','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0),(5,'faq','',1454329455,1454329786,2,2,0,0,'','','','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0),(7,'PackagePlan','Package Plan',1454396269,1454413094,2,2,1,0,'','','','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0),(8,'Subscription','',1454404784,1454404949,2,2,0,0,'','','','','a:2:{s:4:\"grid\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}s:6:\"search\";a:5:{s:2:\"id\";b:1;s:4:\"path\";b:1;s:9:\"published\";b:1;s:16:\"modificationDate\";b:1;s:12:\"creationDate\";b:1;}}',0);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_collectionrelations`
--

DROP TABLE IF EXISTS `classificationstore_collectionrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificationstore_collectionrelations` (
  `colId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY (`colId`,`groupId`),
  KEY `FK_classificationstore_collectionrelations_groups` (`groupId`),
  CONSTRAINT `FK_classificationstore_collectionrelations_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_collectionrelations`
--

LOCK TABLES `classificationstore_collectionrelations` WRITE;
/*!40000 ALTER TABLE `classificationstore_collectionrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_collectionrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_collections`
--

DROP TABLE IF EXISTS `classificationstore_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificationstore_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_collections`
--

LOCK TABLES `classificationstore_collections` WRITE;
/*!40000 ALTER TABLE `classificationstore_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_groups`
--

DROP TABLE IF EXISTS `classificationstore_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificationstore_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentId` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  `sorter` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_groups`
--

LOCK TABLES `classificationstore_groups` WRITE;
/*!40000 ALTER TABLE `classificationstore_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_keys`
--

DROP TABLE IF EXISTS `classificationstore_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificationstore_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` enum('input','textarea','wysiwyg','checkbox','numeric','slider','select','multiselect','date','datetime','language','languagemultiselect','country','countrymultiselect','table') DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  `definition` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  `sorter` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_keys`
--

LOCK TABLES `classificationstore_keys` WRITE;
/*!40000 ALTER TABLE `classificationstore_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_relations`
--

DROP TABLE IF EXISTS `classificationstore_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificationstore_relations` (
  `groupId` bigint(20) NOT NULL,
  `keyId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`keyId`),
  KEY `FK_classificationstore_relations_classificationstore_keys` (`keyId`),
  CONSTRAINT `FK_classificationstore_relations_classificationstore_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_classificationstore_relations_classificationstore_keys` FOREIGN KEY (`keyId`) REFERENCES `classificationstore_keys` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_relations`
--

LOCK TABLES `classificationstore_relations` WRITE;
/*!40000 ALTER TABLE `classificationstore_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_layouts`
--

DROP TABLE IF EXISTS `custom_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_layouts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classId` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_layouts`
--

LOCK TABLES `custom_layouts` WRITE;
/*!40000 ALTER TABLE `custom_layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_layouts` ENABLE KEYS */;
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
INSERT INTO `dependencies` VALUES ('document',8,'asset',4),('document',8,'asset',6),('document',17,'document',16),('document',18,'document',16),('document',19,'document',16),('document',20,'asset',21),('document',20,'asset',22),('object',29,'asset',13),('object',30,'asset',14),('object',31,'asset',15),('object',32,'asset',16);
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
  `path` varchar(765) CHARACTER SET ascii DEFAULT NULL,
  `index` int(11) unsigned DEFAULT '0',
  `published` tinyint(1) unsigned DEFAULT '1',
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullpath` (`path`,`key`),
  KEY `parentId` (`parentId`),
  KEY `key` (`key`),
  KEY `path` (`path`),
  KEY `published` (`published`),
  KEY `modificationDate` (`modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,0,'page','','/',999999,1,1450343960,1451380880,1,2),(8,14,'snippet','header','/shared/',0,1,1451384813,1454333713,2,2),(9,14,'snippet','footer','/shared/',1,1,1451384832,1454330074,2,2),(14,1,'folder','shared','/',2,1,1454330068,1454335783,2,2),(15,1,'page','subscription','/',3,1,1454330172,1454411134,2,2),(16,14,'link','footer-menu','/shared/',2,1,1454334232,1454335190,2,2),(17,16,'link','help','/shared/footer-menu/',1,1,1454334305,1454335747,2,2),(18,16,'link','contact-us','/shared/footer-menu/',2,1,1454334317,1454335760,2,2),(19,16,'link','feedback','/shared/footer-menu/',3,1,1454334329,1454335777,2,2),(20,1,'email','email','/',4,1,1454414336,1454417783,2,2);
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
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_doctypes`
--

LOCK TABLES `documents_doctypes` WRITE;
/*!40000 ALTER TABLE `documents_doctypes` DISABLE KEYS */;
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
INSERT INTO `documents_elements` VALUES (8,'/demo/aboutUs','href','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}'),(8,'about_nav','input','About'),(8,'contact_nav','input','Contact'),(8,'faqs_nav','input','Faqs'),(8,'free_access_hd','link','a:12:{s:4:\"text\";s:21:\"Home Delivery Account\";s:4:\"path\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:4:\"type\";s:8:\"internal\";}'),(8,'gallary_nav','input','Gallary'),(8,'head-logo','image','a:9:{s:2:\"id\";i:4;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(8,'header1_content','wysiwyg',''),(8,'home_nav','input','Home'),(8,'login_dig','link','a:12:{s:4:\"text\";s:6:\"Log in\";s:4:\"path\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:4:\"type\";s:8:\"internal\";}'),(8,'meditation','input','Meditation'),(8,'myTextarea','textarea','Text Area'),(8,'Relax_Your_Mind','input','Relax Your mind'),(8,'shorts_codes_nav','input','Short Codes'),(8,'template','select',NULL),(8,'title-logo','image','a:9:{s:2:\"id\";i:6;s:3:\"alt\";s:0:\"\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(8,'titleDesc','textarea','Choose the Times Digital Subscription that is best for you.'),(8,'titlePrice','input','Just 99¢ for Your First 4 Weeks.'),(8,'www.google.com','link','a:11:{s:4:\"text\";s:5:\"Login\";s:4:\"path\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}'),(9,'header1_content','wysiwyg',''),(9,'template','select',NULL),(15,'educationRate','input','Education Rates'),(15,'faq','input','Frequently Asked Questions'),(15,'FaqAnsfaqQuesAns1','wysiwyg','<p>Answer1</p>\n'),(15,'FaqAnsfaqQuesAns2','wysiwyg','<p>Answer2</p>\n'),(15,'FaqAnsfaqQuesAns3','wysiwyg','<p>Answer3</p>\n'),(15,'faqQuesAns','block','a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}'),(15,'FaqQuestfaqQuesAns1','input','Question1'),(15,'FaqQuestfaqQuesAns2','input','Question2'),(15,'FaqQuestfaqQuesAns3','input','Question3'),(15,'goToEdu','wysiwyg','<p>Save 50% on unlimited access to NYTimes.com and NYTimes apps exclusively for educators and students.<br />\n<a href=\"http://www.nytimes.com/subscriptions/edu/lp1474.html?campaignId=3KLL9\">Go to Education Rates</a></p>\n'),(15,'goToHomeDel','wysiwyg','<p>Get 50% off for 12 weeks, plus free, unlimited access to NYTimes.com and NYTimes apps.<br />\n<a href=\"https://nytimesathome.com/hd/205?MediaCode=WB7AA&amp;CMP=3FQ49\">Go to Home Delivery Rates</a></p>\n'),(15,'homeDelRate','input','Home Delivery Rates'),(15,'moreSubsPrice','input','More Subscription Options'),(15,'privacy_block','block','a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}'),(15,'privacy_headingprivacy_block1','input','Question1'),(15,'privacy_headingprivacy_block2','input','Question2'),(15,'privacy_wysiwygprivacy_block1','wysiwyg','<p>Answer1</p>\n'),(15,'privacy_wysiwygprivacy_block2','wysiwyg','<p>Answer2</p>\n'),(15,'viewFAQ','link','a:12:{s:4:\"text\";s:24:\"View our complete FAQ »\";s:4:\"path\";s:86:\"http://www.nytimes.com/content/help/account/purchases/subscriptions-and-purchases.html\";s:6:\"target\";s:6:\"_blank\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:4:\"type\";s:8:\"internal\";}'),(20,'contentblockmyAreablock1','block','a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}'),(20,'content_imgmyAreablock_contentblockmyAreablock11_1','image','a:9:{s:2:\"id\";i:21;s:3:\"alt\";s:5:\"sdsds\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(20,'content_imgmyAreablock_contentblockmyAreablock11_2','image','a:9:{s:2:\"id\";i:22;s:3:\"alt\";s:4:\"sdsd\";s:11:\"cropPercent\";N;s:9:\"cropWidth\";N;s:10:\"cropHeight\";N;s:7:\"cropTop\";N;s:8:\"cropLeft\";N;s:8:\"hotspots\";a:0:{}s:6:\"marker\";a:0:{}}'),(20,'header_textmyAreablock_contentblockmyAreablock11_1','wysiwyg','<p style=\"font-style: normal;font-weight: 400;Margin-bottom: 21px;Margin-top: 16px;font-size: 15px;line-height: 24px;font-family: &quot;Open Sans&quot;,sans-serif;color: #60666d;\">Fiji has an amazing array of outdoor activities for you to sample like snorkeling, surfing, and fishing. For those looking for a slow-paced vacation, try a scenic hike, boat rides or helicopter tour.&nbsp;</p>\n'),(20,'header_textmyAreablock_contentblockmyAreablock11_2','wysiwyg','<p>Fiji has a ton of great beaches to check out, regardless of whether you\'re looking for a romantic getaway or a sporty vibe. We\'ve compiled a guide to our favorite beaches in Fiji.</p>\n'),(20,'header_titlemyAreablock_contentblockmyAreablock11_1','input','Outdoor adventures'),(20,'header_titlemyAreablock_contentblockmyAreablock11_2','input','Beautiful beaches'),(20,'myAreablock','areablock','a:1:{i:0;a:2:{s:3:\"key\";s:1:\"1\";s:4:\"type\";s:12:\"ContentBlock\";}}');
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
INSERT INTO `documents_email` VALUES (20,'','default','email',NULL,'','','','','');
/*!40000 ALTER TABLE `documents_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_hardlink`
--

DROP TABLE IF EXISTS `documents_hardlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_hardlink` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sourceId` int(11) DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childsFromSource` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `internalType` enum('document','asset') DEFAULT NULL,
  `internal` int(11) unsigned DEFAULT NULL,
  `direct` varchar(1000) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_link`
--

LOCK TABLES `documents_link` WRITE;
/*!40000 ALTER TABLE `documents_link` DISABLE KEYS */;
INSERT INTO `documents_link` VALUES (16,NULL,NULL,'','internal'),(17,NULL,NULL,'www.google.com','direct'),(18,NULL,NULL,'www.google.com','direct'),(19,NULL,NULL,'www.google.com','direct');
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
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `metaData` text,
  `prettyUrl` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  `css` longtext,
  `personas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prettyUrl` (`prettyUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_page`
--

LOCK TABLES `documents_page` WRITE;
/*!40000 ALTER TABLE `documents_page` DISABLE KEYS */;
INSERT INTO `documents_page` VALUES (1,'website','test','index','','','','','a:0:{}',NULL,NULL,NULL,''),(15,NULL,'default','default',NULL,'','','','a:0:{}',NULL,NULL,'','');
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
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_snippet`
--

LOCK TABLES `documents_snippet` WRITE;
/*!40000 ALTER TABLE `documents_snippet` DISABLE KEYS */;
INSERT INTO `documents_snippet` VALUES (8,'','default','header',NULL,NULL),(9,'','default','footer',NULL,NULL);
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
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(255) DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `cidtype` (`cid`,`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=755 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_lock`
--

LOCK TABLES `edit_lock` WRITE;
/*!40000 ALTER TABLE `edit_lock` DISABLE KEYS */;
INSERT INTO `edit_lock` VALUES (11,8,'asset',2,'ld4vv5t768j5mun4sqmp3hgmj8c0hkl8',1450354046),(12,9,'asset',2,'ld4vv5t768j5mun4sqmp3hgmj8c0hkl8',1450354046),(13,0,'asset',2,'ld4vv5t768j5mun4sqmp3hgmj8c0hkl8',1450354046),(247,12,'document',2,'eqs7efajsi1t83vjdot3fdpdq6fnsgs8',1454308032),(447,1,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332857),(448,4,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332857),(449,2,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332857),(450,3,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332857),(451,5,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332858),(454,13,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332858),(455,11,'document',2,'cv76r4406bv0ov3qndpa685c56',1454332858),(516,17,'document',2,'cin8j05hokqqq068gcq04kjke9u8qrjr',1454387925),(517,18,'document',2,'cin8j05hokqqq068gcq04kjke9u8qrjr',1454387927),(518,19,'document',2,'cin8j05hokqqq068gcq04kjke9u8qrjr',1454387928),(626,9,'document',2,'97laauto79cipcqcaf104p4s86',1454399762),(747,21,'asset',2,'blfa87lldv81dpkhahesoefcgskm96eg',1454416316),(752,20,'document',2,'blfa87lldv81dpkhahesoefcgskm96eg',1454416630),(753,15,'document',2,'blfa87lldv81dpkhahesoefcgskm96eg',1454416828),(754,8,'document',2,'blfa87lldv81dpkhahesoefcgskm96eg',1454416893);
/*!40000 ALTER TABLE `edit_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_blacklist`
--

DROP TABLE IF EXISTS `email_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_blacklist` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `creationDate` int(11) unsigned DEFAULT NULL,
  `modificationDate` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_blacklist`
--

LOCK TABLES `email_blacklist` WRITE;
/*!40000 ALTER TABLE `email_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_blacklist` ENABLE KEYS */;
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
  `requestUri` varchar(500) DEFAULT NULL,
  `params` text,
  `from` varchar(500) DEFAULT NULL,
  `to` longtext,
  `cc` longtext,
  `bcc` longtext,
  `sentDate` bigint(20) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
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
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `site` int(11) unsigned DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
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
  `uri` varchar(3000) CHARACTER SET ascii DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` bigint(20) DEFAULT NULL,
  `count` bigint(20) DEFAULT NULL,
  KEY `uri` (`uri`(765)),
  KEY `code` (`code`),
  KEY `date` (`date`),
  KEY `count` (`count`)
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
-- Table structure for table `keyvalue_groups`
--

DROP TABLE IF EXISTS `keyvalue_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyvalue_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyvalue_groups`
--

LOCK TABLES `keyvalue_groups` WRITE;
/*!40000 ALTER TABLE `keyvalue_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyvalue_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyvalue_keys`
--

DROP TABLE IF EXISTS `keyvalue_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyvalue_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` enum('bool','number','select','text','translated','translatedSelect','range') DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `possiblevalues` text,
  `group` int(11) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  `translator` int(11) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  CONSTRAINT `keyvalue_keys_ibfk_1` FOREIGN KEY (`group`) REFERENCES `keyvalue_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyvalue_keys`
--

LOCK TABLES `keyvalue_keys` WRITE;
/*!40000 ALTER TABLE `keyvalue_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyvalue_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyvalue_translator_configuration`
--

DROP TABLE IF EXISTS `keyvalue_translator_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyvalue_translator_configuration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `translator` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyvalue_translator_configuration`
--

LOCK TABLES `keyvalue_translator_configuration` WRITE;
/*!40000 ALTER TABLE `keyvalue_translator_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyvalue_translator_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locks` (
  `id` varchar(150) NOT NULL DEFAULT '',
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `ctype` enum('asset','document','object') DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_data`
--

DROP TABLE IF EXISTS `notes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` enum('text','date','document','asset','object','bool') DEFAULT NULL,
  `data` text,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_data`
--

LOCK TABLES `notes_data` WRITE;
/*!40000 ALTER TABLE `notes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `object_3`
--

DROP TABLE IF EXISTS `object_3`;
/*!50001 DROP VIEW IF EXISTS `object_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_3` (
  `oo_id` tinyint NOT NULL,
  `oo_classId` tinyint NOT NULL,
  `oo_className` tinyint NOT NULL,
  `typeName` tinyint NOT NULL,
  `typeDesc` tinyint NOT NULL,
  `typeIogo` tinyint NOT NULL,
  `typeSubscribeLink` tinyint NOT NULL,
  `isActive` tinyint NOT NULL,
  `o_id` tinyint NOT NULL,
  `o_parentId` tinyint NOT NULL,
  `o_type` tinyint NOT NULL,
  `o_key` tinyint NOT NULL,
  `o_path` tinyint NOT NULL,
  `o_index` tinyint NOT NULL,
  `o_published` tinyint NOT NULL,
  `o_creationDate` tinyint NOT NULL,
  `o_modificationDate` tinyint NOT NULL,
  `o_userOwner` tinyint NOT NULL,
  `o_userModification` tinyint NOT NULL,
  `o_classId` tinyint NOT NULL,
  `o_className` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_5`
--

DROP TABLE IF EXISTS `object_5`;
/*!50001 DROP VIEW IF EXISTS `object_5`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_5` (
  `oo_id` tinyint NOT NULL,
  `oo_classId` tinyint NOT NULL,
  `oo_className` tinyint NOT NULL,
  `faqQuestion` tinyint NOT NULL,
  `faqAnswer` tinyint NOT NULL,
  `faqsequence` tinyint NOT NULL,
  `faqActive` tinyint NOT NULL,
  `o_id` tinyint NOT NULL,
  `o_parentId` tinyint NOT NULL,
  `o_type` tinyint NOT NULL,
  `o_key` tinyint NOT NULL,
  `o_path` tinyint NOT NULL,
  `o_index` tinyint NOT NULL,
  `o_published` tinyint NOT NULL,
  `o_creationDate` tinyint NOT NULL,
  `o_modificationDate` tinyint NOT NULL,
  `o_userOwner` tinyint NOT NULL,
  `o_userModification` tinyint NOT NULL,
  `o_classId` tinyint NOT NULL,
  `o_className` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_7`
--

DROP TABLE IF EXISTS `object_7`;
/*!50001 DROP VIEW IF EXISTS `object_7`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_7` (
  `oo_id` tinyint NOT NULL,
  `oo_classId` tinyint NOT NULL,
  `oo_className` tinyint NOT NULL,
  `priceThereAfter` tinyint NOT NULL,
  `accessTNYTimes` tinyint NOT NULL,
  `accessToNYTimesAppsPhone` tinyint NOT NULL,
  `accessToNYTimesAppsTab` tinyint NOT NULL,
  `accessToTheFullTimesArchives` tinyint NOT NULL,
  `shareDigitalAccess` tinyint NOT NULL,
  `isActive` tinyint NOT NULL,
  `o_id` tinyint NOT NULL,
  `o_parentId` tinyint NOT NULL,
  `o_type` tinyint NOT NULL,
  `o_key` tinyint NOT NULL,
  `o_path` tinyint NOT NULL,
  `o_index` tinyint NOT NULL,
  `o_published` tinyint NOT NULL,
  `o_creationDate` tinyint NOT NULL,
  `o_modificationDate` tinyint NOT NULL,
  `o_userOwner` tinyint NOT NULL,
  `o_userModification` tinyint NOT NULL,
  `o_classId` tinyint NOT NULL,
  `o_className` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `object_8`
--

DROP TABLE IF EXISTS `object_8`;
/*!50001 DROP VIEW IF EXISTS `object_8`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `object_8` (
  `oo_id` tinyint NOT NULL,
  `oo_classId` tinyint NOT NULL,
  `oo_className` tinyint NOT NULL,
  `subsTypeName` tinyint NOT NULL,
  `substypeDesc` tinyint NOT NULL,
  `subsTypeIogo` tinyint NOT NULL,
  `subsTypeSubscribeLink` tinyint NOT NULL,
  `subsIsActive` tinyint NOT NULL,
  `o_id` tinyint NOT NULL,
  `o_parentId` tinyint NOT NULL,
  `o_type` tinyint NOT NULL,
  `o_key` tinyint NOT NULL,
  `o_path` tinyint NOT NULL,
  `o_index` tinyint NOT NULL,
  `o_published` tinyint NOT NULL,
  `o_creationDate` tinyint NOT NULL,
  `o_modificationDate` tinyint NOT NULL,
  `o_userOwner` tinyint NOT NULL,
  `o_userModification` tinyint NOT NULL,
  `o_classId` tinyint NOT NULL,
  `o_className` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `object_query_3`
--

DROP TABLE IF EXISTS `object_query_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_3` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '3',
  `oo_className` varchar(255) DEFAULT 'PackageType',
  `typeName` varchar(255) DEFAULT NULL,
  `typeDesc` longtext,
  `typeIogo` int(11) DEFAULT NULL,
  `typeSubscribeLink` text,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_3`
--

LOCK TABLES `object_query_3` WRITE;
/*!40000 ALTER TABLE `object_query_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_query_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_5`
--

DROP TABLE IF EXISTS `object_query_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_5` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '5',
  `oo_className` varchar(255) DEFAULT 'faq',
  `faqQuestion` varchar(255) DEFAULT NULL,
  `faqAnswer` longtext,
  `faqsequence` double DEFAULT NULL,
  `faqActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_5`
--

LOCK TABLES `object_query_5` WRITE;
/*!40000 ALTER TABLE `object_query_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_query_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_7`
--

DROP TABLE IF EXISTS `object_query_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_7` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '7',
  `oo_className` varchar(255) DEFAULT 'PackagePlan',
  `priceThereAfter` varchar(255) DEFAULT NULL,
  `accessTNYTimes` tinyint(1) DEFAULT NULL,
  `accessToNYTimesAppsPhone` tinyint(1) DEFAULT NULL,
  `accessToNYTimesAppsTab` tinyint(1) DEFAULT NULL,
  `accessToTheFullTimesArchives` tinyint(1) DEFAULT NULL,
  `shareDigitalAccess` tinyint(1) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_7`
--

LOCK TABLES `object_query_7` WRITE;
/*!40000 ALTER TABLE `object_query_7` DISABLE KEYS */;
INSERT INTO `object_query_7` VALUES (10,7,'PackagePlan','111',0,NULL,1,NULL,1,1),(11,7,'PackagePlan','12',NULL,1,NULL,NULL,1,0),(12,7,'PackagePlan','100',1,1,1,NULL,1,1),(26,7,'PackagePlan','111',1,1,1,1,1,1),(27,7,'PackagePlan','222',1,NULL,NULL,NULL,1,1),(28,7,'PackagePlan','333',1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `object_query_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_8`
--

DROP TABLE IF EXISTS `object_query_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_query_8` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '8',
  `oo_className` varchar(255) DEFAULT 'Subscription',
  `subsTypeName` varchar(255) DEFAULT NULL,
  `substypeDesc` longtext,
  `subsTypeIogo` int(11) DEFAULT NULL,
  `subsTypeSubscribeLink` text,
  `subsIsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_8`
--

LOCK TABLES `object_query_8` WRITE;
/*!40000 ALTER TABLE `object_query_8` DISABLE KEYS */;
INSERT INTO `object_query_8` VALUES (29,8,'Subscription','Times Insider','Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks.',13,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:6:\"go to \";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1),(30,8,'Subscription','NYT Opinion','Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks.',14,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:7:\"opinion\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1),(31,8,'Subscription','Corporate Rates','Learn how organizations can save with group access to NYTimes.com and NYTimes apps.',15,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:9:\"corporate\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1),(32,8,'Subscription','Gift Subscriptions','Give unlimited access to NYTimes.com and NYTimes apps for as low as $30.',16,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:17:\"gift subscription\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1);
/*!40000 ALTER TABLE `object_query_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_3`
--

DROP TABLE IF EXISTS `object_relations_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_3` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
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
-- Dumping data for table `object_relations_3`
--

LOCK TABLES `object_relations_3` WRITE;
/*!40000 ALTER TABLE `object_relations_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_5`
--

DROP TABLE IF EXISTS `object_relations_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_5` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
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
-- Dumping data for table `object_relations_5`
--

LOCK TABLES `object_relations_5` WRITE;
/*!40000 ALTER TABLE `object_relations_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_7`
--

DROP TABLE IF EXISTS `object_relations_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_7` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
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
-- Dumping data for table `object_relations_7`
--

LOCK TABLES `object_relations_7` WRITE;
/*!40000 ALTER TABLE `object_relations_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_8`
--

DROP TABLE IF EXISTS `object_relations_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_relations_8` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
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
-- Dumping data for table `object_relations_8`
--

LOCK TABLES `object_relations_8` WRITE;
/*!40000 ALTER TABLE `object_relations_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_3`
--

DROP TABLE IF EXISTS `object_store_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_3` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `typeName` varchar(255) DEFAULT NULL,
  `typeDesc` longtext,
  `typeIogo` int(11) DEFAULT NULL,
  `typeSubscribeLink` text,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_3`
--

LOCK TABLES `object_store_3` WRITE;
/*!40000 ALTER TABLE `object_store_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_store_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_5`
--

DROP TABLE IF EXISTS `object_store_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_5` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `faqQuestion` varchar(255) DEFAULT NULL,
  `faqAnswer` longtext,
  `faqsequence` double DEFAULT NULL,
  `faqActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_5`
--

LOCK TABLES `object_store_5` WRITE;
/*!40000 ALTER TABLE `object_store_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_store_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_7`
--

DROP TABLE IF EXISTS `object_store_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_7` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `priceThereAfter` varchar(255) DEFAULT NULL,
  `accessTNYTimes` tinyint(1) DEFAULT NULL,
  `accessToNYTimesAppsPhone` tinyint(1) DEFAULT NULL,
  `accessToNYTimesAppsTab` tinyint(1) DEFAULT NULL,
  `accessToTheFullTimesArchives` tinyint(1) DEFAULT NULL,
  `shareDigitalAccess` tinyint(1) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_7`
--

LOCK TABLES `object_store_7` WRITE;
/*!40000 ALTER TABLE `object_store_7` DISABLE KEYS */;
INSERT INTO `object_store_7` VALUES (10,'111',0,NULL,1,NULL,1,1),(11,'12',NULL,1,NULL,NULL,1,0),(12,'100',1,1,1,NULL,1,1),(26,'111',1,1,1,1,1,1),(27,'222',1,NULL,NULL,NULL,1,1),(28,'333',1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `object_store_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_8`
--

DROP TABLE IF EXISTS `object_store_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_store_8` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `subsTypeName` varchar(255) DEFAULT NULL,
  `substypeDesc` longtext,
  `subsTypeIogo` int(11) DEFAULT NULL,
  `subsTypeSubscribeLink` text,
  `subsIsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_8`
--

LOCK TABLES `object_store_8` WRITE;
/*!40000 ALTER TABLE `object_store_8` DISABLE KEYS */;
INSERT INTO `object_store_8` VALUES (29,'Times Insider','Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks.',13,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:6:\"go to \";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1),(30,'NYT Opinion','Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks.',14,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:7:\"opinion\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1),(31,'Corporate Rates','Learn how organizations can save with group access to NYTimes.com and NYTimes apps.',15,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:9:\"corporate\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1),(32,'Gift Subscriptions','Give unlimited access to NYTimes.com and NYTimes apps for as low as $30.',16,'O:30:\"Pimcore\\Model\\Object\\Data\\Link\":14:{s:4:\"text\";s:17:\"gift subscription\";s:12:\"internalType\";N;s:8:\"internal\";N;s:6:\"direct\";s:21:\"http://www.google.com\";s:8:\"linktype\";s:6:\"direct\";s:6:\"target\";s:5:\"_self\";s:10:\"parameters\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"accesskey\";s:0:\"\";s:3:\"rel\";s:0:\"\";s:8:\"tabindex\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}',1);
/*!40000 ALTER TABLE `object_store_8` ENABLE KEYS */;
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
  `o_path` varchar(765) CHARACTER SET ascii DEFAULT NULL,
  `o_index` int(11) unsigned DEFAULT '0',
  `o_published` tinyint(1) unsigned DEFAULT '1',
  `o_creationDate` bigint(20) unsigned DEFAULT NULL,
  `o_modificationDate` bigint(20) unsigned DEFAULT NULL,
  `o_userOwner` int(11) unsigned DEFAULT NULL,
  `o_userModification` int(11) unsigned DEFAULT NULL,
  `o_classId` int(11) unsigned DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  UNIQUE KEY `fullpath` (`o_path`,`o_key`),
  KEY `key` (`o_key`),
  KEY `path` (`o_path`),
  KEY `published` (`o_published`),
  KEY `parentId` (`o_parentId`),
  KEY `type` (`o_type`),
  KEY `o_modificationDate` (`o_modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,0,'folder','','/',999999,1,1450343960,1450343960,1,1,NULL,NULL),(10,13,'object','web-smartphone','/nyt-plan/',0,1,1454396595,1454412262,2,2,7,'PackagePlan'),(11,13,'object','web-tablet','/nyt-plan/',0,1,1454396664,1454413531,2,2,7,'PackagePlan'),(12,13,'object','all-digital-access','/nyt-plan/',0,1,1454396684,1454411436,2,2,7,'PackagePlan'),(13,1,'folder','nyt-plan','/',NULL,1,1454397470,1454397470,2,2,NULL,NULL),(14,1,'folder','subscription','/',NULL,1,1454400934,1454400934,2,2,NULL,NULL),(26,13,'object','new-plan','/nyt-plan/',0,1,1454401665,1454412980,2,2,7,'PackagePlan'),(27,13,'object','new-plan-2','/nyt-plan/',0,1,1454401698,1454413553,2,2,7,'PackagePlan'),(28,13,'object','new-plan-3','/nyt-plan/',0,1,1454401725,1454413035,2,2,7,'PackagePlan'),(29,14,'object','timesinsider','/subscription/',0,1,1454404968,1454408946,2,2,8,'Subscription'),(30,14,'object','nytopinion','/subscription/',0,1,1454407080,1454408957,2,2,8,'Subscription'),(31,14,'object','corporaterates','/subscription/',0,1,1454407376,1454408479,2,2,8,'Subscription'),(32,14,'object','giftsubscriptions','/subscription/',0,1,1454407678,1454408492,2,2,8,'Subscription');
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
  `cpath` varchar(765) CHARACTER SET ascii DEFAULT NULL,
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
INSERT INTO `properties` VALUES (8,'document','/shared/header','navigation_target','text','',0),(14,'document','/shared','language','text','',1),(14,'document','/shared','navigation_target','text','',0),(15,'document','/subscription','navigation_name','text','subscription',1),(16,'document','/shared/footer-menu','language','text','',1),(16,'document','/shared/footer-menu','navigation_exclude','text','',0),(16,'document','/shared/footer-menu','navigation_name','text','',0),(16,'document','/shared/footer-menu','navigation_target','text','',0),(16,'document','/shared/footer-menu','navigation_title','text','',0),(16,'document','/shared/footer-menu','navProp','document','16',1),(17,'document','/shared/footer-menu/help','navigation_exclude','text','',0),(17,'document','/shared/footer-menu/help','navigation_name','text','Help',0),(17,'document','/shared/footer-menu/help','navigation_target','text','_self',0),(17,'document','/shared/footer-menu/help','navigation_title','text','Help',0),(18,'document','/shared/footer-menu/contact-us','navigation_exclude','text','',0),(18,'document','/shared/footer-menu/contact-us','navigation_name','text','Contact Us',0),(18,'document','/shared/footer-menu/contact-us','navigation_target','text','_self',0),(18,'document','/shared/footer-menu/contact-us','navigation_title','text','Contact Us',0),(19,'document','/shared/footer-menu/feedback','navigation_exclude','text','',0),(19,'document','/shared/footer-menu/feedback','navigation_name','text','Feedback',0),(19,'document','/shared/footer-menu/feedback','navigation_target','text','_self',0),(19,'document','/shared/footer-menu/feedback','navigation_title','text','Feedback',0);
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
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `id` (`id`),
  KEY `key` (`key`),
  KEY `type` (`type`),
  KEY `ctype` (`ctype`),
  KEY `inheritable` (`inheritable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_predefined`
--

LOCK TABLES `properties_predefined` WRITE;
/*!40000 ALTER TABLE `properties_predefined` DISABLE KEYS */;
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
  `path` varchar(765) DEFAULT NULL,
  `amount` int(3) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `deletedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recyclebin`
--

LOCK TABLES `recyclebin` WRITE;
/*!40000 ALTER TABLE `recyclebin` DISABLE KEYS */;
INSERT INTO `recyclebin` VALUES (1,'asset','image','/featured_speed1.jpg',1,1450346090,'admin'),(2,'asset','image','/pcmsban2.jpg',1,1450346181,'admin'),(3,'document','page','/test',1,1451309633,'admin'),(4,'document','page','/default_page',1,1451376584,'admin'),(5,'document','snippet','/home/header',1,1451384789,'admin'),(6,'document','snippet','/home/leftbar',1,1451384792,'admin'),(7,'document','snippet','/home/footer',1,1451384796,'admin'),(8,'document','snippet','/left-bar',1,1451385190,'admin'),(9,'document','snippet','/home/about_us',1,1454330051,'admin'),(10,'document','snippet','/home/leftbar',1,1454330055,'admin'),(11,'document','page','/blog',1,1454330062,'admin'),(12,'document','page','/home',1,1454330118,'admin'),(13,'document','page','/shared/footer-menu/ttt',1,1454335782,'admin'),(14,'document','page','/shared/faq',1,1454337172,'admin'),(15,'object','object','/subscription/timesinsider',1,1454401000,'admin');
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
  `sourceEntireUrl` tinyint(1) DEFAULT NULL,
  `sourceSite` int(11) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int(11) DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `expiry` bigint(20) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
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
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `date` bigint(20) unsigned DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') DEFAULT NULL,
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
  `fullpath` varchar(765) CHARACTER SET ascii DEFAULT NULL,
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
  KEY `id` (`id`),
  KEY `fullpath` (`fullpath`),
  KEY `maintype` (`maintype`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `published` (`published`),
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
INSERT INTO `search_backend_data` VALUES (2,'/plugins.png','asset','image','image',1,1450346009,1450346359,2,2,'ID: 2  \nPath: /plugins.png  \nplugins.png Pimcore logo: alt: copyright:',''),(27,'/nyt-plan/new-plan-2','object','object','PackagePlan',1,1454401698,1454413553,2,2,'ID: 27  \nPath: /nyt-plan/new-plan-2  \n222 1 1 1 ',''),(1,'/','document','page','page',1,1450343960,1451380880,1,2,'ID: 1  \nPath: /  \n ',''),(14,'/shared','document','folder','folder',1,1454330068,1454335783,2,2,'ID: 14  \nPath: /shared  \nshared','language: navigation_target: '),(8,'/shared/header','document','snippet','snippet',1,1451384813,1454333713,2,2,'ID: 8  \nPath: /shared/header  \n About Contact Faqs Home Delivery Account Gallary Home Log in Meditation Text Area Relax Your mind Short Codes Choose the Times Digital Subscription that is best for you. Just 99¢ for Your First 4 Weeks. Login ','navigation_target: '),(9,'/shared/footer','document','snippet','snippet',1,1451384832,1454330074,2,2,'ID: 9  \nPath: /shared/footer  \n ',''),(16,'/shared/footer-menu','document','link','link',1,1454334232,1454335190,2,2,'ID: 16  \nPath: /shared/footer-menu  \n ','navProp:/shared/footer-menu language: navigation_exclude: navigation_name: navigation_title: navigation_target: '),(17,'/shared/footer-menu/help','document','link','link',1,1454334305,1454335747,2,2,'ID: 17  \nPath: /shared/footer-menu/help  \n www.google.com','navProp:/shared/footer-menu language: navigation_exclude: navigation_name:Help navigation_title:Help navigation_target:_self '),(18,'/shared/footer-menu/contact-us','document','link','link',1,1454334317,1454335760,2,2,'ID: 18  \nPath: /shared/footer-menu/contact-us  \n www.google.com','navProp:/shared/footer-menu language: navigation_exclude: navigation_name:Contact Us navigation_title:Contact Us navigation_target:_self '),(3,'/nyt-images','asset','folder','folder',1,1454315709,1454315709,2,2,'ID: 3  \nPath: /nyt-images  \nnyt-images',''),(4,'/nyt-images/nyt_logo_428x56.png','asset','image','image',1,1454315716,1454315716,2,2,'ID: 4  \nPath: /nyt-images/nyt_logo_428x56.png  \nnyt_logo_428x56.png',''),(5,'/nyt-images/devices_tablet_desktop.jpg','asset','image','image',1,1454325877,1454325877,2,2,'ID: 5  \nPath: /nyt-images/devices_tablet_desktop.jpg  \ndevices_tablet_desktop.jpg',''),(6,'/nyt-images/devices_header.jpg','asset','image','image',1,1454325877,1454325877,2,2,'ID: 6  \nPath: /nyt-images/devices_header.jpg  \ndevices_header.jpg',''),(15,'/subscription','document','page','page',1,1454330172,1454411134,2,2,'ID: 15  \nPath: /subscription  \nEducation Rates Frequently Asked Questions Answer1 Answer2 Question1 Question2 Save 50% on unlimited access to NYTimes.com and NYTimes apps exclusively for educators and students. Go to Education Rates Get 50% off for 12 weeks, plus free, unlimited access to NYTimes.com and NYTimes apps. Go to Home Delivery Rates Home Delivery Rates More Subscription Options Question1 Question2 Answer1 Answer2 View our complete FAQ » Question3 Answer3 ','navigation_name:subscription '),(19,'/shared/footer-menu/feedback','document','link','link',1,1454334329,1454335777,2,2,'ID: 19  \nPath: /shared/footer-menu/feedback  \n www.google.com','navProp:/shared/footer-menu language: navigation_exclude: navigation_name:Feedback navigation_title:Feedback navigation_target:_self '),(26,'/nyt-plan/new-plan','object','object','PackagePlan',1,1454401665,1454412980,2,2,'ID: 26  \nPath: /nyt-plan/new-plan  \n111 1 1 1 1 1 1 ',''),(10,'/nyt-plan/web-smartphone','object','object','PackagePlan',1,1454396595,1454412262,2,2,'ID: 10  \nPath: /nyt-plan/web-smartphone  \n111 1 1 1 ',''),(11,'/nyt-plan/web-tablet','object','object','PackagePlan',1,1454396664,1454413531,2,2,'ID: 11  \nPath: /nyt-plan/web-tablet  \n12 1 1 ',''),(12,'/nyt-plan/all-digital-access','object','object','PackagePlan',1,1454396684,1454411436,2,2,'ID: 12  \nPath: /nyt-plan/all-digital-access  \n100 1 1 1 1 1 ',''),(13,'/nyt-plan','object','folder','folder',1,1454397470,1454397470,2,2,'ID: 13  \nPath: /nyt-plan  \nnyt-plan',''),(14,'/subscription','object','folder','folder',1,1454400934,1454400934,2,2,'ID: 14  \nPath: /subscription  \nsubscription',''),(28,'/nyt-plan/new-plan-3','object','object','PackagePlan',1,1454401725,1454413035,2,2,'ID: 28  \nPath: /nyt-plan/new-plan-3  \n333 1 1 1 ',''),(29,'/subscription/timesinsider','object','object','Subscription',1,1454404968,1454408946,2,2,'ID: 29  \nPath: /subscription/timesinsider  \nTimes Insider Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks. /favicon_2.jpg TzozMDoiUGltY29yZVxNb2RlbFxPYmplY3RcRGF0YVxMaW5rIjoxNDp7czo0OiJ0ZXh0IjtzOjY6ImdvIHRvICI7czoxMjoiaW50ZXJuYWxUeXBlIjtOO3M6ODoiaW50ZXJuYWwiO047czo2OiJkaXJlY3QiO3M6MjE6Imh0dHA6Ly93d3cuZ29vZ2xlLmNvbSI7czo4OiJsaW5rdHlwZSI7czo2OiJkaXJlY3QiO3M6NjoidGFyZ2V0IjtzOjU6Il9zZWxmIjtzOjEwOiJwYXJhbWV0ZXJzIjtzOjA6IiI7czo2OiJhbmNob3IiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo5OiJhY2Nlc3NrZXkiO3M6MDoiIjtzOjM6InJlbCI7czowOiIiO3M6ODoidGFiaW5kZXgiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czoxMDoiYXR0cmlidXRlcyI7czowOiIiO30= 1 ',''),(7,'/favicon.ico','asset','image','image',1,1454405833,1454405833,2,2,'ID: 7  \nPath: /favicon.ico  \nfavicon.ico',''),(8,'/favicon_1.ico','asset','image','image',1,1454405872,1454405872,2,2,'ID: 8  \nPath: /favicon_1.ico  \nfavicon_1.ico',''),(9,'/arrow-left.png','asset','image','image',1,1454405883,1454405883,2,2,'ID: 9  \nPath: /arrow-left.png  \narrow-left.png',''),(10,'/favicon.jpg','asset','image','image',1,1454405946,1454405946,2,2,'ID: 10  \nPath: /favicon.jpg  \nfavicon.jpg',''),(11,'/devices_header.jpg','asset','image','image',1,1454405960,1454405960,2,2,'ID: 11  \nPath: /devices_header.jpg  \ndevices_header.jpg',''),(12,'/favicon_1.jpg','asset','image','image',1,1454405968,1454405968,2,2,'ID: 12  \nPath: /favicon_1.jpg  \nfavicon_1.jpg',''),(13,'/favicon_2.jpg','asset','image','image',1,1454406003,1454406003,2,2,'ID: 13  \nPath: /favicon_2.jpg  \nfavicon_2.jpg',''),(30,'/subscription/nytopinion','object','object','Subscription',1,1454407080,1454408957,2,2,'ID: 30  \nPath: /subscription/nytopinion  \nNYT Opinion Enjoy the ultimate insider experience with exclusive behind-the-scenes access.Just 99¢ for your first 4 weeks. /icon-quotes.png TzozMDoiUGltY29yZVxNb2RlbFxPYmplY3RcRGF0YVxMaW5rIjoxNDp7czo0OiJ0ZXh0IjtzOjc6Im9waW5pb24iO3M6MTI6ImludGVybmFsVHlwZSI7TjtzOjg6ImludGVybmFsIjtOO3M6NjoiZGlyZWN0IjtzOjIxOiJodHRwOi8vd3d3Lmdvb2dsZS5jb20iO3M6ODoibGlua3R5cGUiO3M6NjoiZGlyZWN0IjtzOjY6InRhcmdldCI7czo1OiJfc2VsZiI7czoxMDoicGFyYW1ldGVycyI7czowOiIiO3M6NjoiYW5jaG9yIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6OToiYWNjZXNza2V5IjtzOjA6IiI7czozOiJyZWwiO3M6MDoiIjtzOjg6InRhYmluZGV4IjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6MTA6ImF0dHJpYnV0ZXMiO3M6MDoiIjt9 1 ',''),(14,'/icon-quotes.png','asset','image','image',1,1454407149,1454407149,2,2,'ID: 14  \nPath: /icon-quotes.png  \nicon-quotes.png',''),(31,'/subscription/corporaterates','object','object','Subscription',1,1454407376,1454408479,2,2,'ID: 31  \nPath: /subscription/corporaterates  \nCorporate Rates Learn how organizations can save with group access to NYTimes.com and NYTimes apps. /corporate.png TzozMDoiUGltY29yZVxNb2RlbFxPYmplY3RcRGF0YVxMaW5rIjoxNDp7czo0OiJ0ZXh0IjtzOjk6ImNvcnBvcmF0ZSI7czoxMjoiaW50ZXJuYWxUeXBlIjtOO3M6ODoiaW50ZXJuYWwiO047czo2OiJkaXJlY3QiO3M6MjE6Imh0dHA6Ly93d3cuZ29vZ2xlLmNvbSI7czo4OiJsaW5rdHlwZSI7czo2OiJkaXJlY3QiO3M6NjoidGFyZ2V0IjtzOjU6Il9zZWxmIjtzOjEwOiJwYXJhbWV0ZXJzIjtzOjA6IiI7czo2OiJhbmNob3IiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo5OiJhY2Nlc3NrZXkiO3M6MDoiIjtzOjM6InJlbCI7czowOiIiO3M6ODoidGFiaW5kZXgiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czoxMDoiYXR0cmlidXRlcyI7czowOiIiO30= 1 ',''),(15,'/corporate.png','asset','image','image',1,1454407635,1454407635,2,2,'ID: 15  \nPath: /corporate.png  \ncorporate.png',''),(32,'/subscription/giftsubscriptions','object','object','Subscription',1,1454407678,1454408492,2,2,'ID: 32  \nPath: /subscription/giftsubscriptions  \nGift Subscriptions Give unlimited access to NYTimes.com and NYTimes apps for as low as $30. /gift.png TzozMDoiUGltY29yZVxNb2RlbFxPYmplY3RcRGF0YVxMaW5rIjoxNDp7czo0OiJ0ZXh0IjtzOjE3OiJnaWZ0IHN1YnNjcmlwdGlvbiI7czoxMjoiaW50ZXJuYWxUeXBlIjtOO3M6ODoiaW50ZXJuYWwiO047czo2OiJkaXJlY3QiO3M6MjE6Imh0dHA6Ly93d3cuZ29vZ2xlLmNvbSI7czo4OiJsaW5rdHlwZSI7czo2OiJkaXJlY3QiO3M6NjoidGFyZ2V0IjtzOjU6Il9zZWxmIjtzOjEwOiJwYXJhbWV0ZXJzIjtzOjA6IiI7czo2OiJhbmNob3IiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo5OiJhY2Nlc3NrZXkiO3M6MDoiIjtzOjM6InJlbCI7czowOiIiO3M6ODoidGFiaW5kZXgiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czoxMDoiYXR0cmlidXRlcyI7czowOiIiO30= 1 ',''),(16,'/gift.png','asset','image','image',1,1454407694,1454407694,2,2,'ID: 16  \nPath: /gift.png  \ngift.png',''),(20,'/email','document','email','email',1,1454414336,1454417783,2,2,'ID: 20  \nPath: /email  \n Fiji has an amazing array of outdoor activities for you to sample like snorkeling, surfing, and fishing. For those looking for a slow-paced vacation, try a scenic hike, boat rides or helicopter tour.&nbsp; Fiji has a ton of great beaches to check out, regardless of whether you\'re looking for a romantic getaway or a sporty vibe. We\'ve compiled a guide to our favorite beaches in Fiji. Outdoor adventures Beautiful beaches ',''),(17,'/email','asset','folder','folder',1,1454416176,1454416176,2,2,'ID: 17  \nPath: /email  \nemail',''),(19,'/email/3.jpg','asset','image','image',1,1454416202,1454416202,2,2,'ID: 19  \nPath: /email/3.jpg  \n3.jpg',''),(22,'/email/2.png','asset','image','image',1,1454416202,1454416202,2,2,'ID: 22  \nPath: /email/2.png  \n2.png',''),(21,'/email/11.png','asset','image','image',1,1454416202,1454416202,2,2,'ID: 21  \nPath: /email/11.png  \n11.png',''),(23,'/subs-image','asset','folder','folder',1,1454416791,1454416791,2,2,'ID: 23  \nPath: /subs-image  \nsubs-image','');
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
  `mainDomain` varchar(255) DEFAULT NULL,
  `domains` text,
  `rootId` int(11) unsigned DEFAULT NULL,
  `errorDocument` varchar(255) DEFAULT NULL,
  `redirectToMainDomain` tinyint(1) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
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
  `name` varchar(50) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL,
  `reverse` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `variables` varchar(255) DEFAULT NULL,
  `defaults` varchar(255) DEFAULT NULL,
  `siteId` int(11) DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticroutes`
--

LOCK TABLES `staticroutes` WRITE;
/*!40000 ALTER TABLE `staticroutes` DISABLE KEYS */;
/*!40000 ALTER TABLE `staticroutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_personas`
--

DROP TABLE IF EXISTS `targeting_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targeting_personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `conditions` longtext,
  `threshold` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_personas`
--

LOCK TABLES `targeting_personas` WRITE;
/*!40000 ALTER TABLE `targeting_personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_rules`
--

DROP TABLE IF EXISTS `targeting_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targeting_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `scope` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `conditions` longtext,
  `actions` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_rules`
--

LOCK TABLES `targeting_rules` WRITE;
/*!40000 ALTER TABLE `targeting_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_store`
--

DROP TABLE IF EXISTS `tmp_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_store` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `data` longtext,
  `serialized` tinyint(2) NOT NULL DEFAULT '0',
  `date` int(10) DEFAULT NULL,
  `expiryDate` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `date` (`date`),
  KEY `expiryDate` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_store`
--

LOCK TABLES `tmp_store` WRITE;
/*!40000 ALTER TABLE `tmp_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_events`
--

DROP TABLE IF EXISTS `tracking_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) unsigned DEFAULT NULL,
  `year` int(5) unsigned DEFAULT NULL,
  `month` int(2) unsigned DEFAULT NULL,
  `day` int(2) unsigned DEFAULT NULL,
  `dayOfWeek` int(1) unsigned DEFAULT NULL,
  `dayOfYear` int(3) unsigned DEFAULT NULL,
  `weekOfYear` int(2) unsigned DEFAULT NULL,
  `hour` int(2) unsigned DEFAULT NULL,
  `minute` int(2) unsigned DEFAULT NULL,
  `second` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `year` (`year`),
  KEY `month` (`month`),
  KEY `day` (`day`),
  KEY `dayOfWeek` (`dayOfWeek`),
  KEY `dayOfYear` (`dayOfYear`),
  KEY `weekOfYear` (`weekOfYear`),
  KEY `hour` (`hour`),
  KEY `minute` (`minute`),
  KEY `second` (`second`),
  KEY `category` (`category`),
  KEY `action` (`action`),
  KEY `label` (`label`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_events`
--

LOCK TABLES `tracking_events` WRITE;
/*!40000 ALTER TABLE `tracking_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_admin`
--

DROP TABLE IF EXISTS `translations_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations_admin` (
  `key` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
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
INSERT INTO `translations_admin` VALUES ('access to nytimes','ca','',1454396602,1454396602),('access to nytimes','cs','',1454396602,1454396602),('access to nytimes','de','',1454396602,1454396602),('access to nytimes','en','',1454396602,1454396602),('access to nytimes','es','',1454396602,1454396602),('access to nytimes','fa','',1454396602,1454396602),('access to nytimes','fr','',1454396602,1454396602),('access to nytimes','it','',1454396602,1454396602),('access to nytimes','ja','',1454396602,1454396602),('access to nytimes','nl','',1454396602,1454396602),('access to nytimes','pl','',1454396602,1454396602),('access to nytimes','pt','',1454396602,1454396602),('access to nytimes','pt_BR','',1454396602,1454396602),('access to nytimes','ru','',1454396602,1454396602),('access to nytimes','sk','',1454396602,1454396602),('access to nytimes','sv','',1454396602,1454396602),('access to nytimes','tr','',1454396602,1454396602),('access to nytimes','uk','',1454396602,1454396602),('access to nytimes','zh_Hans','',1454396602,1454396602),('access to nytimes apps for smartphone','ca','',1454330512,1454330512),('access to nytimes apps for smartphone','cs','',1454330512,1454330512),('access to nytimes apps for smartphone','de','',1454330512,1454330512),('access to nytimes apps for smartphone','en','',1454330512,1454330512),('access to nytimes apps for smartphone','es','',1454330512,1454330512),('access to nytimes apps for smartphone','fa','',1454330512,1454330512),('access to nytimes apps for smartphone','fr','',1454330512,1454330512),('access to nytimes apps for smartphone','it','',1454330512,1454330512),('access to nytimes apps for smartphone','ja','',1454330512,1454330512),('access to nytimes apps for smartphone','nl','',1454330512,1454330512),('access to nytimes apps for smartphone','pl','',1454330512,1454330512),('access to nytimes apps for smartphone','pt','',1454330512,1454330512),('access to nytimes apps for smartphone','pt_BR','',1454330512,1454330512),('access to nytimes apps for smartphone','ru','',1454330512,1454330512),('access to nytimes apps for smartphone','sk','',1454330512,1454330512),('access to nytimes apps for smartphone','sv','',1454330512,1454330512),('access to nytimes apps for smartphone','tr','',1454330512,1454330512),('access to nytimes apps for smartphone','uk','',1454330512,1454330512),('access to nytimes apps for smartphone','zh_Hans','',1454330512,1454330512),('access to nytimes apps for tablet','ca','',1454330513,1454330513),('access to nytimes apps for tablet','cs','',1454330513,1454330513),('access to nytimes apps for tablet','de','',1454330513,1454330513),('access to nytimes apps for tablet','en','',1454330513,1454330513),('access to nytimes apps for tablet','es','',1454330513,1454330513),('access to nytimes apps for tablet','fa','',1454330513,1454330513),('access to nytimes apps for tablet','fr','',1454330513,1454330513),('access to nytimes apps for tablet','it','',1454330513,1454330513),('access to nytimes apps for tablet','ja','',1454330513,1454330513),('access to nytimes apps for tablet','nl','',1454330513,1454330513),('access to nytimes apps for tablet','pl','',1454330513,1454330513),('access to nytimes apps for tablet','pt','',1454330513,1454330513),('access to nytimes apps for tablet','pt_BR','',1454330513,1454330513),('access to nytimes apps for tablet','ru','',1454330513,1454330513),('access to nytimes apps for tablet','sk','',1454330513,1454330513),('access to nytimes apps for tablet','sv','',1454330513,1454330513),('access to nytimes apps for tablet','tr','',1454330513,1454330513),('access to nytimes apps for tablet','uk','',1454330513,1454330513),('access to nytimes apps for tablet','zh_Hans','',1454330513,1454330513),('access to nytimes apps phone','ca','',1454396602,1454396602),('access to nytimes apps phone','cs','',1454396602,1454396602),('access to nytimes apps phone','de','',1454396602,1454396602),('access to nytimes apps phone','en','',1454396602,1454396602),('access to nytimes apps phone','es','',1454396602,1454396602),('access to nytimes apps phone','fa','',1454396602,1454396602),('access to nytimes apps phone','fr','',1454396602,1454396602),('access to nytimes apps phone','it','',1454396602,1454396602),('access to nytimes apps phone','ja','',1454396602,1454396602),('access to nytimes apps phone','nl','',1454396602,1454396602),('access to nytimes apps phone','pl','',1454396602,1454396602),('access to nytimes apps phone','pt','',1454396602,1454396602),('access to nytimes apps phone','pt_BR','',1454396602,1454396602),('access to nytimes apps phone','ru','',1454396602,1454396602),('access to nytimes apps phone','sk','',1454396602,1454396602),('access to nytimes apps phone','sv','',1454396602,1454396602),('access to nytimes apps phone','tr','',1454396602,1454396602),('access to nytimes apps phone','uk','',1454396602,1454396602),('access to nytimes apps phone','zh_Hans','',1454396602,1454396602),('access to nytimes apps tab','ca','',1454396603,1454396603),('access to nytimes apps tab','cs','',1454396603,1454396603),('access to nytimes apps tab','de','',1454396603,1454396603),('access to nytimes apps tab','en','',1454396603,1454396603),('access to nytimes apps tab','es','',1454396603,1454396603),('access to nytimes apps tab','fa','',1454396603,1454396603),('access to nytimes apps tab','fr','',1454396603,1454396603),('access to nytimes apps tab','it','',1454396603,1454396603),('access to nytimes apps tab','ja','',1454396603,1454396603),('access to nytimes apps tab','nl','',1454396603,1454396603),('access to nytimes apps tab','pl','',1454396603,1454396603),('access to nytimes apps tab','pt','',1454396603,1454396603),('access to nytimes apps tab','pt_BR','',1454396603,1454396603),('access to nytimes apps tab','ru','',1454396603,1454396603),('access to nytimes apps tab','sk','',1454396603,1454396603),('access to nytimes apps tab','sv','',1454396603,1454396603),('access to nytimes apps tab','tr','',1454396603,1454396603),('access to nytimes apps tab','uk','',1454396603,1454396603),('access to nytimes apps tab','zh_Hans','',1454396603,1454396603),('access to nytimes apps tablet','ca','',1454396604,1454396604),('access to nytimes apps tablet','cs','',1454396604,1454396604),('access to nytimes apps tablet','de','',1454396604,1454396604),('access to nytimes apps tablet','en','',1454396604,1454396604),('access to nytimes apps tablet','es','',1454396604,1454396604),('access to nytimes apps tablet','fa','',1454396604,1454396604),('access to nytimes apps tablet','fr','',1454396604,1454396604),('access to nytimes apps tablet','it','',1454396604,1454396604),('access to nytimes apps tablet','ja','',1454396604,1454396604),('access to nytimes apps tablet','nl','',1454396604,1454396604),('access to nytimes apps tablet','pl','',1454396604,1454396604),('access to nytimes apps tablet','pt','',1454396604,1454396604),('access to nytimes apps tablet','pt_BR','',1454396604,1454396604),('access to nytimes apps tablet','ru','',1454396604,1454396604),('access to nytimes apps tablet','sk','',1454396604,1454396604),('access to nytimes apps tablet','sv','',1454396604,1454396604),('access to nytimes apps tablet','tr','',1454396604,1454396604),('access to nytimes apps tablet','uk','',1454396604,1454396604),('access to nytimes apps tablet','zh_Hans','',1454396604,1454396604),('access to nytimes.com','ca','',1454330512,1454330512),('access to nytimes.com','cs','',1454330512,1454330512),('access to nytimes.com','de','',1454330512,1454330512),('access to nytimes.com','en','',1454330512,1454330512),('access to nytimes.com','es','',1454330512,1454330512),('access to nytimes.com','fa','',1454330512,1454330512),('access to nytimes.com','fr','',1454330512,1454330512),('access to nytimes.com','it','',1454330512,1454330512),('access to nytimes.com','ja','',1454330512,1454330512),('access to nytimes.com','nl','',1454330512,1454330512),('access to nytimes.com','pl','',1454330512,1454330512),('access to nytimes.com','pt','',1454330512,1454330512),('access to nytimes.com','pt_BR','',1454330512,1454330512),('access to nytimes.com','ru','',1454330512,1454330512),('access to nytimes.com','sk','',1454330512,1454330512),('access to nytimes.com','sv','',1454330512,1454330512),('access to nytimes.com','tr','',1454330512,1454330512),('access to nytimes.com','uk','',1454330512,1454330512),('access to nytimes.com','zh_Hans','',1454330512,1454330512),('access to the full times archives','ca','',1454396603,1454396603),('access to the full times archives','cs','',1454396603,1454396603),('access to the full times archives','de','',1454396603,1454396603),('access to the full times archives','en','',1454396603,1454396603),('access to the full times archives','es','',1454396603,1454396603),('access to the full times archives','fa','',1454396603,1454396603),('access to the full times archives','fr','',1454396603,1454396603),('access to the full times archives','it','',1454396603,1454396603),('access to the full times archives','ja','',1454396603,1454396603),('access to the full times archives','nl','',1454396603,1454396603),('access to the full times archives','pl','',1454396603,1454396603),('access to the full times archives','pt','',1454396603,1454396603),('access to the full times archives','pt_BR','',1454396603,1454396603),('access to the full times archives','ru','',1454396603,1454396603),('access to the full times archives','sk','',1454396603,1454396603),('access to the full times archives','sv','',1454396603,1454396603),('access to the full times archives','tr','',1454396603,1454396603),('access to the full times archives','uk','',1454396603,1454396603),('access to the full times archives','zh_Hans','',1454396603,1454396603),('access to the full times archives from 1851','ca','',1454330513,1454330513),('access to the full times archives from 1851','cs','',1454330513,1454330513),('access to the full times archives from 1851','de','',1454330513,1454330513),('access to the full times archives from 1851','en','',1454330513,1454330513),('access to the full times archives from 1851','es','',1454330513,1454330513),('access to the full times archives from 1851','fa','',1454330513,1454330513),('access to the full times archives from 1851','fr','',1454330513,1454330513),('access to the full times archives from 1851','it','',1454330513,1454330513),('access to the full times archives from 1851','ja','',1454330513,1454330513),('access to the full times archives from 1851','nl','',1454330513,1454330513),('access to the full times archives from 1851','pl','',1454330513,1454330513),('access to the full times archives from 1851','pt','',1454330513,1454330513),('access to the full times archives from 1851','pt_BR','',1454330513,1454330513),('access to the full times archives from 1851','ru','',1454330513,1454330513),('access to the full times archives from 1851','sk','',1454330513,1454330513),('access to the full times archives from 1851','sv','',1454330513,1454330513),('access to the full times archives from 1851','tr','',1454330513,1454330513),('access to the full times archives from 1851','uk','',1454330513,1454330513),('access to the full times archives from 1851','zh_Hans','',1454330513,1454330513),('accesstonytimes','ca','',1454331231,1454331231),('accesstonytimes','cs','',1454331231,1454331231),('accesstonytimes','de','',1454331231,1454331231),('accesstonytimes','en','',1454331231,1454331231),('accesstonytimes','es','',1454331231,1454331231),('accesstonytimes','fa','',1454331231,1454331231),('accesstonytimes','fr','',1454331231,1454331231),('accesstonytimes','it','',1454331231,1454331231),('accesstonytimes','ja','',1454331231,1454331231),('accesstonytimes','nl','',1454331231,1454331231),('accesstonytimes','pl','',1454331231,1454331231),('accesstonytimes','pt','',1454331231,1454331231),('accesstonytimes','pt_BR','',1454331231,1454331231),('accesstonytimes','ru','',1454331231,1454331231),('accesstonytimes','sk','',1454331231,1454331231),('accesstonytimes','sv','',1454331231,1454331231),('accesstonytimes','tr','',1454331231,1454331231),('accesstonytimes','uk','',1454331231,1454331231),('accesstonytimes','zh_Hans','',1454331231,1454331231),('accesstonytimesappsforsmartphone','ca','',1454331230,1454331230),('accesstonytimesappsforsmartphone','cs','',1454331230,1454331230),('accesstonytimesappsforsmartphone','de','',1454331230,1454331230),('accesstonytimesappsforsmartphone','en','',1454331230,1454331230),('accesstonytimesappsforsmartphone','es','',1454331230,1454331230),('accesstonytimesappsforsmartphone','fa','',1454331230,1454331230),('accesstonytimesappsforsmartphone','fr','',1454331230,1454331230),('accesstonytimesappsforsmartphone','it','',1454331230,1454331230),('accesstonytimesappsforsmartphone','ja','',1454331230,1454331230),('accesstonytimesappsforsmartphone','nl','',1454331230,1454331230),('accesstonytimesappsforsmartphone','pl','',1454331230,1454331230),('accesstonytimesappsforsmartphone','pt','',1454331230,1454331230),('accesstonytimesappsforsmartphone','pt_BR','',1454331230,1454331230),('accesstonytimesappsforsmartphone','ru','',1454331230,1454331230),('accesstonytimesappsforsmartphone','sk','',1454331230,1454331230),('accesstonytimesappsforsmartphone','sv','',1454331230,1454331230),('accesstonytimesappsforsmartphone','tr','',1454331230,1454331230),('accesstonytimesappsforsmartphone','uk','',1454331230,1454331230),('accesstonytimesappsforsmartphone','zh_Hans','',1454331230,1454331230),('accesstonytimesappsfortablet','ca','',1454333226,1454333226),('accesstonytimesappsfortablet','cs','',1454333226,1454333226),('accesstonytimesappsfortablet','de','',1454333226,1454333226),('accesstonytimesappsfortablet','en','',1454333226,1454333226),('accesstonytimesappsfortablet','es','',1454333226,1454333226),('accesstonytimesappsfortablet','fa','',1454333226,1454333226),('accesstonytimesappsfortablet','fr','',1454333226,1454333226),('accesstonytimesappsfortablet','it','',1454333226,1454333226),('accesstonytimesappsfortablet','ja','',1454333226,1454333226),('accesstonytimesappsfortablet','nl','',1454333226,1454333226),('accesstonytimesappsfortablet','pl','',1454333226,1454333226),('accesstonytimesappsfortablet','pt','',1454333226,1454333226),('accesstonytimesappsfortablet','pt_BR','',1454333226,1454333226),('accesstonytimesappsfortablet','ru','',1454333226,1454333226),('accesstonytimesappsfortablet','sk','',1454333226,1454333226),('accesstonytimesappsfortablet','sv','',1454333226,1454333226),('accesstonytimesappsfortablet','tr','',1454333226,1454333226),('accesstonytimesappsfortablet','uk','',1454333226,1454333226),('accesstonytimesappsfortablet','zh_Hans','',1454333226,1454333226),('accesstothefulltimesarchives','ca','',1454333226,1454333226),('accesstothefulltimesarchives','cs','',1454333226,1454333226),('accesstothefulltimesarchives','de','',1454333226,1454333226),('accesstothefulltimesarchives','en','',1454333226,1454333226),('accesstothefulltimesarchives','es','',1454333226,1454333226),('accesstothefulltimesarchives','fa','',1454333226,1454333226),('accesstothefulltimesarchives','fr','',1454333226,1454333226),('accesstothefulltimesarchives','it','',1454333226,1454333226),('accesstothefulltimesarchives','ja','',1454333226,1454333226),('accesstothefulltimesarchives','nl','',1454333226,1454333226),('accesstothefulltimesarchives','pl','',1454333226,1454333226),('accesstothefulltimesarchives','pt','',1454333226,1454333226),('accesstothefulltimesarchives','pt_BR','',1454333226,1454333226),('accesstothefulltimesarchives','ru','',1454333226,1454333226),('accesstothefulltimesarchives','sk','',1454333226,1454333226),('accesstothefulltimesarchives','sv','',1454333226,1454333226),('accesstothefulltimesarchives','tr','',1454333226,1454333226),('accesstothefulltimesarchives','uk','',1454333226,1454333226),('accesstothefulltimesarchives','zh_Hans','',1454333226,1454333226),('available','ca','',1454331232,1454331232),('available','cs','',1454331232,1454331232),('available','de','',1454331232,1454331232),('available','en','',1454331232,1454331232),('available','es','',1454331232,1454331232),('available','fa','',1454331232,1454331232),('available','fr','',1454331232,1454331232),('available','it','',1454331232,1454331232),('available','ja','',1454331232,1454331232),('available','nl','',1454331232,1454331232),('available','pl','',1454331232,1454331232),('available','pt','',1454331232,1454331232),('available','pt_BR','',1454331232,1454331232),('available','ru','',1454331232,1454331232),('available','sk','',1454331232,1454331232),('available','sv','',1454331232,1454331232),('available','tr','',1454331232,1454331232),('available','uk','',1454331232,1454331232),('available','zh_Hans','',1454331232,1454331232),('category','ca','',1454328409,1454328409),('category','cs','',1454328409,1454328409),('category','de','',1454328409,1454328409),('category','en','',1454328409,1454328409),('category','es','',1454328409,1454328409),('category','fa','',1454328409,1454328409),('category','fr','',1454328409,1454328409),('category','it','',1454328409,1454328409),('category','ja','',1454328409,1454328409),('category','nl','',1454328409,1454328409),('category','pl','',1454328409,1454328409),('category','pt','',1454328409,1454328409),('category','pt_BR','',1454328409,1454328409),('category','ru','',1454328409,1454328409),('category','sk','',1454328409,1454328409),('category','sv','',1454328409,1454328409),('category','tr','',1454328409,1454328409),('category','uk','',1454328409,1454328409),('category','zh_Hans','',1454328409,1454328409),('classname','ca','',1454413363,1454413363),('classname','cs','',1454413363,1454413363),('classname','de','',1454413363,1454413363),('classname','en','',1454413363,1454413363),('classname','es','',1454413363,1454413363),('classname','fa','',1454413363,1454413363),('classname','fr','',1454413363,1454413363),('classname','it','',1454413363,1454413363),('classname','ja','',1454413363,1454413363),('classname','nl','',1454413363,1454413363),('classname','pl','',1454413363,1454413363),('classname','pt','',1454413363,1454413363),('classname','pt_BR','',1454413363,1454413363),('classname','ru','',1454413363,1454413363),('classname','sk','',1454413363,1454413363),('classname','sv','',1454413363,1454413363),('classname','tr','',1454413363,1454413363),('classname','uk','',1454413363,1454413363),('classname','zh_Hans','',1454413363,1454413363),('content block','en','',1454416065,1454416065),('creationdate','ca','',1454413361,1454413361),('creationdate','cs','',1454413361,1454413361),('creationdate','de','',1454413361,1454413361),('creationdate','en','',1454413361,1454413361),('creationdate','es','',1454413361,1454413361),('creationdate','fa','',1454413361,1454413361),('creationdate','fr','',1454413361,1454413361),('creationdate','it','',1454413361,1454413361),('creationdate','ja','',1454413361,1454413361),('creationdate','nl','',1454413361,1454413361),('creationdate','pl','',1454413361,1454413361),('creationdate','pt','',1454413361,1454413361),('creationdate','pt_BR','',1454413361,1454413361),('creationdate','ru','',1454413361,1454413361),('creationdate','sk','',1454413361,1454413361),('creationdate','sv','',1454413361,1454413361),('creationdate','tr','',1454413361,1454413361),('creationdate','uk','',1454413361,1454413361),('creationdate','zh_Hans','',1454413361,1454413361),('faq','ca','',1454329459,1454329459),('faq','cs','',1454329459,1454329459),('faq','de','',1454329459,1454329459),('faq','en','',1454329459,1454329459),('faq','es','',1454329459,1454329459),('faq','fa','',1454329459,1454329459),('faq','fr','',1454329459,1454329459),('faq','it','',1454329459,1454329459),('faq','ja','',1454329459,1454329459),('faq','nl','',1454329459,1454329459),('faq','pl','',1454329459,1454329459),('faq','pt','',1454329459,1454329459),('faq','pt_BR','',1454329459,1454329459),('faq','ru','',1454329459,1454329459),('faq','sk','',1454329459,1454329459),('faq','sv','',1454329459,1454329459),('faq','tr','',1454329459,1454329459),('faq','uk','',1454329459,1454329459),('faq','zh_Hans','',1454329459,1454329459),('filename','ca','',1454413362,1454413362),('filename','cs','',1454413362,1454413362),('filename','de','',1454413362,1454413362),('filename','en','',1454413362,1454413362),('filename','es','',1454413362,1454413362),('filename','fa','',1454413362,1454413362),('filename','fr','',1454413362,1454413362),('filename','it','',1454413362,1454413362),('filename','ja','',1454413362,1454413362),('filename','nl','',1454413362,1454413362),('filename','pl','',1454413362,1454413362),('filename','pt','',1454413362,1454413362),('filename','pt_BR','',1454413362,1454413362),('filename','ru','',1454413362,1454413362),('filename','sk','',1454413362,1454413362),('filename','sv','',1454413362,1454413362),('filename','tr','',1454413362,1454413362),('filename','uk','',1454413362,1454413362),('filename','zh_Hans','',1454413362,1454413362),('fullpath','ca','',1454413360,1454413360),('fullpath','cs','',1454413360,1454413360),('fullpath','de','',1454413360,1454413360),('fullpath','en','',1454413360,1454413360),('fullpath','es','',1454413360,1454413360),('fullpath','fa','',1454413360,1454413360),('fullpath','fr','',1454413360,1454413360),('fullpath','it','',1454413360,1454413360),('fullpath','ja','',1454413360,1454413360),('fullpath','nl','',1454413360,1454413360),('fullpath','pl','',1454413360,1454413360),('fullpath','pt','',1454413360,1454413360),('fullpath','pt_BR','',1454413360,1454413360),('fullpath','ru','',1454413360,1454413360),('fullpath','sk','',1454413360,1454413360),('fullpath','sv','',1454413360,1454413360),('fullpath','tr','',1454413360,1454413360),('fullpath','uk','',1454413360,1454413360),('fullpath','zh_Hans','',1454413360,1454413360),('id','ca','',1454413360,1454413360),('id','cs','',1454413360,1454413360),('id','de','',1454413360,1454413360),('id','en','',1454413360,1454413360),('id','es','',1454413360,1454413360),('id','fa','',1454413360,1454413360),('id','fr','',1454413360,1454413360),('id','it','',1454413360,1454413360),('id','ja','',1454413360,1454413360),('id','nl','',1454413360,1454413360),('id','pl','',1454413360,1454413360),('id','pt','',1454413360,1454413360),('id','pt_BR','',1454413360,1454413360),('id','ru','',1454413360,1454413360),('id','sk','',1454413360,1454413360),('id','sv','',1454413360,1454413360),('id','tr','',1454413360,1454413360),('id','uk','',1454413360,1454413360),('id','zh_Hans','',1454413360,1454413360),('is active plan','ca','',1454411436,1454411436),('is active plan','cs','',1454411436,1454411436),('is active plan','de','',1454411436,1454411436),('is active plan','en','',1454411436,1454411436),('is active plan','es','',1454411436,1454411436),('is active plan','fa','',1454411436,1454411436),('is active plan','fr','',1454411436,1454411436),('is active plan','it','',1454411436,1454411436),('is active plan','ja','',1454411436,1454411436),('is active plan','nl','',1454411436,1454411436),('is active plan','pl','',1454411436,1454411436),('is active plan','pt','',1454411436,1454411436),('is active plan','pt_BR','',1454411436,1454411436),('is active plan','ru','',1454411436,1454411436),('is active plan','sk','',1454411436,1454411436),('is active plan','sv','',1454411436,1454411436),('is active plan','tr','',1454411436,1454411436),('is active plan','uk','',1454411436,1454411436),('is active plan','zh_Hans','',1454411436,1454411436),('is active plan (isactive)','ca','',1454413363,1454413363),('is active plan (isactive)','cs','',1454413363,1454413363),('is active plan (isactive)','de','',1454413363,1454413363),('is active plan (isactive)','en','',1454413363,1454413363),('is active plan (isactive)','es','',1454413363,1454413363),('is active plan (isactive)','fa','',1454413363,1454413363),('is active plan (isactive)','fr','',1454413363,1454413363),('is active plan (isactive)','it','',1454413363,1454413363),('is active plan (isactive)','ja','',1454413363,1454413363),('is active plan (isactive)','nl','',1454413363,1454413363),('is active plan (isactive)','pl','',1454413363,1454413363),('is active plan (isactive)','pt','',1454413363,1454413363),('is active plan (isactive)','pt_BR','',1454413363,1454413363),('is active plan (isactive)','ru','',1454413363,1454413363),('is active plan (isactive)','sk','',1454413363,1454413363),('is active plan (isactive)','sv','',1454413363,1454413363),('is active plan (isactive)','tr','',1454413363,1454413363),('is active plan (isactive)','uk','',1454413363,1454413363),('is active plan (isactive)','zh_Hans','',1454413363,1454413363),('master','ca','',1454330510,1454330510),('master','cs','',1454330510,1454330510),('master','de','',1454330510,1454330510),('master','en','',1454330510,1454330510),('master','es','',1454330510,1454330510),('master','fa','',1454330510,1454330510),('master','fr','',1454330510,1454330510),('master','it','',1454330510,1454330510),('master','ja','',1454330510,1454330510),('master','nl','',1454330510,1454330510),('master','pl','',1454330510,1454330510),('master','pt','',1454330510,1454330510),('master','pt_BR','',1454330510,1454330510),('master','ru','',1454330510,1454330510),('master','sk','',1454330510,1454330510),('master','sv','',1454330510,1454330510),('master','tr','',1454330510,1454330510),('master','uk','',1454330510,1454330510),('master','zh_Hans','',1454330510,1454330510),('master (admin mode)','ca','',1454330509,1454330509),('master (admin mode)','cs','',1454330509,1454330509),('master (admin mode)','de','',1454330509,1454330509),('master (admin mode)','en','',1454330509,1454330509),('master (admin mode)','es','',1454330509,1454330509),('master (admin mode)','fa','',1454330509,1454330509),('master (admin mode)','fr','',1454330509,1454330509),('master (admin mode)','it','',1454330509,1454330509),('master (admin mode)','ja','',1454330509,1454330509),('master (admin mode)','nl','',1454330509,1454330509),('master (admin mode)','pl','',1454330509,1454330509),('master (admin mode)','pt','',1454330509,1454330509),('master (admin mode)','pt_BR','',1454330509,1454330509),('master (admin mode)','ru','',1454330509,1454330509),('master (admin mode)','sk','',1454330509,1454330509),('master (admin mode)','sv','',1454330509,1454330509),('master (admin mode)','tr','',1454330509,1454330509),('master (admin mode)','uk','',1454330509,1454330509),('master (admin mode)','zh_Hans','',1454330509,1454330509),('modificationdate','ca','',1454413362,1454413362),('modificationdate','cs','',1454413362,1454413362),('modificationdate','de','',1454413362,1454413362),('modificationdate','en','',1454413362,1454413362),('modificationdate','es','',1454413362,1454413362),('modificationdate','fa','',1454413362,1454413362),('modificationdate','fr','',1454413362,1454413362),('modificationdate','it','',1454413362,1454413362),('modificationdate','ja','',1454413362,1454413362),('modificationdate','nl','',1454413362,1454413362),('modificationdate','pl','',1454413362,1454413362),('modificationdate','pt','',1454413362,1454413362),('modificationdate','pt_BR','',1454413362,1454413362),('modificationdate','ru','',1454413362,1454413362),('modificationdate','sk','',1454413362,1454413362),('modificationdate','sv','',1454413362,1454413362),('modificationdate','tr','',1454413362,1454413362),('modificationdate','uk','',1454413362,1454413362),('modificationdate','zh_Hans','',1454413362,1454413362),('name','ca','',1454331229,1454331229),('name','cs','',1454331229,1454331229),('name','de','',1454331229,1454331229),('name','en','',1454331229,1454331229),('name','es','',1454331229,1454331229),('name','fa','',1454331229,1454331229),('name','fr','',1454331229,1454331229),('name','it','',1454331229,1454331229),('name','ja','',1454331229,1454331229),('name','nl','',1454331229,1454331229),('name','pl','',1454331229,1454331229),('name','pt','',1454331229,1454331229),('name','pt_BR','',1454331229,1454331229),('name','ru','',1454331229,1454331229),('name','sk','',1454331229,1454331229),('name','sv','',1454331229,1454331229),('name','tr','',1454331229,1454331229),('name','uk','',1454331229,1454331229),('name','zh_Hans','',1454331229,1454331229),('offered services','ca','',1454331230,1454331230),('offered services','cs','',1454331230,1454331230),('offered services','de','',1454331230,1454331230),('offered services','en','',1454331230,1454331230),('offered services','es','',1454331230,1454331230),('offered services','fa','',1454331230,1454331230),('offered services','fr','',1454331230,1454331230),('offered services','it','',1454331230,1454331230),('offered services','ja','',1454331230,1454331230),('offered services','nl','',1454331230,1454331230),('offered services','pl','',1454331230,1454331230),('offered services','pt','',1454331230,1454331230),('offered services','pt_BR','',1454331230,1454331230),('offered services','ru','',1454331230,1454331230),('offered services','sk','',1454331230,1454331230),('offered services','sv','',1454331230,1454331230),('offered services','tr','',1454331230,1454331230),('offered services','uk','',1454331230,1454331230),('offered services','zh_Hans','',1454331230,1454331230),('packageplan','ca','',1454328829,1454328829),('packageplan','cs','',1454328829,1454328829),('packageplan','de','',1454328829,1454328829),('packageplan','en','',1454328829,1454328829),('packageplan','es','',1454328829,1454328829),('packageplan','fa','',1454328829,1454328829),('packageplan','fr','',1454328829,1454328829),('packageplan','it','',1454328829,1454328829),('packageplan','ja','',1454328829,1454328829),('packageplan','nl','',1454328829,1454328829),('packageplan','pl','',1454328829,1454328829),('packageplan','pt','',1454328829,1454328829),('packageplan','pt_BR','',1454328829,1454328829),('packageplan','ru','',1454328829,1454328829),('packageplan','sk','',1454328829,1454328829),('packageplan','sv','',1454328829,1454328829),('packageplan','tr','',1454328829,1454328829),('packageplan','uk','',1454328829,1454328829),('packageplan','zh_Hans','',1454328829,1454328829),('packagetype','ca','',1454328409,1454328409),('packagetype','cs','',1454328409,1454328409),('packagetype','de','',1454328409,1454328409),('packagetype','en','',1454328409,1454328409),('packagetype','es','',1454328409,1454328409),('packagetype','fa','',1454328409,1454328409),('packagetype','fr','',1454328409,1454328409),('packagetype','it','',1454328409,1454328409),('packagetype','ja','',1454328409,1454328409),('packagetype','nl','',1454328409,1454328409),('packagetype','pl','',1454328409,1454328409),('packagetype','pt','',1454328409,1454328409),('packagetype','pt_BR','',1454328409,1454328409),('packagetype','ru','',1454328409,1454328409),('packagetype','sk','',1454328409,1454328409),('packagetype','sv','',1454328409,1454328409),('packagetype','tr','',1454328409,1454328409),('packagetype','uk','',1454328409,1454328409),('packagetype','zh_Hans','',1454328409,1454328409),('plan active','ca','',1454330514,1454330514),('plan active','cs','',1454330514,1454330514),('plan active','de','',1454330514,1454330514),('plan active','en','',1454330514,1454330514),('plan active','es','',1454330514,1454330514),('plan active','fa','',1454330514,1454330514),('plan active','fr','',1454330514,1454330514),('plan active','it','',1454330514,1454330514),('plan active','ja','',1454330514,1454330514),('plan active','nl','',1454330514,1454330514),('plan active','pl','',1454330514,1454330514),('plan active','pt','',1454330514,1454330514),('plan active','pt_BR','',1454330514,1454330514),('plan active','ru','',1454330514,1454330514),('plan active','sk','',1454330514,1454330514),('plan active','sv','',1454330514,1454330514),('plan active','tr','',1454330514,1454330514),('plan active','uk','',1454330514,1454330514),('plan active','zh_Hans','',1454330514,1454330514),('plan name','ca','',1454330510,1454330510),('plan name','cs','',1454330510,1454330510),('plan name','de','',1454330510,1454330510),('plan name','en','',1454330510,1454330510),('plan name','es','',1454330510,1454330510),('plan name','fa','',1454330510,1454330510),('plan name','fr','',1454330510,1454330510),('plan name','it','',1454330510,1454330510),('plan name','ja','',1454330510,1454330510),('plan name','nl','',1454330510,1454330510),('plan name','pl','',1454330510,1454330510),('plan name','pt','',1454330510,1454330510),('plan name','pt_BR','',1454330510,1454330510),('plan name','ru','',1454330510,1454330510),('plan name','sk','',1454330510,1454330510),('plan name','sv','',1454330510,1454330510),('plan name','tr','',1454330510,1454330510),('plan name','uk','',1454330510,1454330510),('plan name','zh_Hans','',1454330510,1454330510),('price there after','ca','',1454396601,1454396601),('price there after','cs','',1454396601,1454396601),('price there after','de','',1454396601,1454396601),('price there after','en','',1454396601,1454396601),('price there after','es','',1454396601,1454396601),('price there after','fa','',1454396601,1454396601),('price there after','fr','',1454396601,1454396601),('price there after','it','',1454396601,1454396601),('price there after','ja','',1454396601,1454396601),('price there after','nl','',1454396601,1454396601),('price there after','pl','',1454396601,1454396601),('price there after','pt','',1454396601,1454396601),('price there after','pt_BR','',1454396601,1454396601),('price there after','ru','',1454396601,1454396601),('price there after','sk','',1454396601,1454396601),('price there after','sv','',1454396601,1454396601),('price there after','tr','',1454396601,1454396601),('price there after','uk','',1454396601,1454396601),('price there after','zh_Hans','',1454396601,1454396601),('price thereafter','ca','',1454330511,1454330511),('price thereafter','cs','',1454330511,1454330511),('price thereafter','de','',1454330511,1454330511),('price thereafter','en','',1454330511,1454330511),('price thereafter','es','',1454330511,1454330511),('price thereafter','fa','',1454330511,1454330511),('price thereafter','fr','',1454330511,1454330511),('price thereafter','it','',1454330511,1454330511),('price thereafter','ja','',1454330511,1454330511),('price thereafter','nl','',1454330511,1454330511),('price thereafter','pl','',1454330511,1454330511),('price thereafter','pt','',1454330511,1454330511),('price thereafter','pt_BR','',1454330511,1454330511),('price thereafter','ru','',1454330511,1454330511),('price thereafter','sk','',1454330511,1454330511),('price thereafter','sv','',1454330511,1454330511),('price thereafter','tr','',1454330511,1454330511),('price thereafter','uk','',1454330511,1454330511),('price thereafter','zh_Hans','',1454330511,1454330511),('pricethereafter','ca','',1454331231,1454331231),('pricethereafter','cs','',1454331231,1454331231),('pricethereafter','de','',1454331231,1454331231),('pricethereafter','en','',1454331231,1454331231),('pricethereafter','es','',1454331231,1454331231),('pricethereafter','fa','',1454331231,1454331231),('pricethereafter','fr','',1454331231,1454331231),('pricethereafter','it','',1454331231,1454331231),('pricethereafter','ja','',1454331231,1454331231),('pricethereafter','nl','',1454331231,1454331231),('pricethereafter','pl','',1454331231,1454331231),('pricethereafter','pt','',1454331231,1454331231),('pricethereafter','pt_BR','',1454331231,1454331231),('pricethereafter','ru','',1454331231,1454331231),('pricethereafter','sk','',1454331231,1454331231),('pricethereafter','sv','',1454331231,1454331231),('pricethereafter','tr','',1454331231,1454331231),('pricethereafter','uk','',1454331231,1454331231),('pricethereafter','zh_Hans','',1454331231,1454331231),('published','ca','',1454413361,1454413361),('published','cs','',1454413361,1454413361),('published','de','',1454413361,1454413361),('published','en','',1454413361,1454413361),('published','es','',1454413361,1454413361),('published','fa','',1454413361,1454413361),('published','fr','',1454413361,1454413361),('published','it','',1454413361,1454413361),('published','ja','',1454413361,1454413361),('published','nl','',1454413361,1454413361),('published','pl','',1454413361,1454413361),('published','pt','',1454413361,1454413361),('published','pt_BR','',1454413361,1454413361),('published','ru','',1454413361,1454413361),('published','sk','',1454413361,1454413361),('published','sv','',1454413361,1454413361),('published','tr','',1454413361,1454413361),('published','uk','',1454413361,1454413361),('published','zh_Hans','',1454413361,1454413361),('share digital access','ca','',1454396604,1454396604),('share digital access','cs','',1454396604,1454396604),('share digital access','de','',1454396604,1454396604),('share digital access','en','',1454396604,1454396604),('share digital access','es','',1454396604,1454396604),('share digital access','fa','',1454396604,1454396604),('share digital access','fr','',1454396604,1454396604),('share digital access','it','',1454396604,1454396604),('share digital access','ja','',1454396604,1454396604),('share digital access','nl','',1454396604,1454396604),('share digital access','pl','',1454396604,1454396604),('share digital access','pt','',1454396604,1454396604),('share digital access','pt_BR','',1454396604,1454396604),('share digital access','ru','',1454396604,1454396604),('share digital access','sk','',1454396604,1454396604),('share digital access','sv','',1454396604,1454396604),('share digital access','tr','',1454396604,1454396604),('share digital access','uk','',1454396604,1454396604),('share digital access','zh_Hans','',1454396604,1454396604),('share digital access with a family member','ca','',1454330514,1454330514),('share digital access with a family member','cs','',1454330514,1454330514),('share digital access with a family member','de','',1454330514,1454330514),('share digital access with a family member','en','',1454330514,1454330514),('share digital access with a family member','es','',1454330514,1454330514),('share digital access with a family member','fa','',1454330514,1454330514),('share digital access with a family member','fr','',1454330514,1454330514),('share digital access with a family member','it','',1454330514,1454330514),('share digital access with a family member','ja','',1454330514,1454330514),('share digital access with a family member','nl','',1454330514,1454330514),('share digital access with a family member','pl','',1454330514,1454330514),('share digital access with a family member','pt','',1454330514,1454330514),('share digital access with a family member','pt_BR','',1454330514,1454330514),('share digital access with a family member','ru','',1454330514,1454330514),('share digital access with a family member','sk','',1454330514,1454330514),('share digital access with a family member','sv','',1454330514,1454330514),('share digital access with a family member','tr','',1454330514,1454330514),('share digital access with a family member','uk','',1454330514,1454330514),('share digital access with a family member','zh_Hans','',1454330514,1454330514),('sharedigitalaccesswithfamilymember','ca','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','cs','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','de','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','en','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','es','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','fa','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','fr','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','it','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','ja','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','nl','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','pl','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','pt','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','pt_BR','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','ru','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','sk','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','sv','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','tr','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','uk','',1454333227,1454333227),('sharedigitalaccesswithfamilymember','zh_Hans','',1454333227,1454333227),('subscription','ca','',1454404809,1454404809),('subscription','cs','',1454404809,1454404809),('subscription','de','',1454404809,1454404809),('subscription','en','',1454404809,1454404809),('subscription','es','',1454404809,1454404809),('subscription','fa','',1454404809,1454404809),('subscription','fr','',1454404809,1454404809),('subscription','it','',1454404809,1454404809),('subscription','ja','',1454404809,1454404809),('subscription','nl','',1454404809,1454404809),('subscription','pl','',1454404809,1454404809),('subscription','pt','',1454404809,1454404809),('subscription','pt_BR','',1454404809,1454404809),('subscription','ru','',1454404809,1454404809),('subscription','sk','',1454404809,1454404809),('subscription','sv','',1454404809,1454404809),('subscription','tr','',1454404809,1454404809),('subscription','uk','',1454404809,1454404809),('subscription','zh_Hans','',1454404809,1454404809),('subscription is active','ca','',1454404991,1454404991),('subscription is active','cs','',1454404991,1454404991),('subscription is active','de','',1454404991,1454404991),('subscription is active','en','',1454404991,1454404991),('subscription is active','es','',1454404991,1454404991),('subscription is active','fa','',1454404991,1454404991),('subscription is active','fr','',1454404991,1454404991),('subscription is active','it','',1454404991,1454404991),('subscription is active','ja','',1454404991,1454404991),('subscription is active','nl','',1454404991,1454404991),('subscription is active','pl','',1454404991,1454404991),('subscription is active','pt','',1454404991,1454404991),('subscription is active','pt_BR','',1454404991,1454404991),('subscription is active','ru','',1454404991,1454404991),('subscription is active','sk','',1454404991,1454404991),('subscription is active','sv','',1454404991,1454404991),('subscription is active','tr','',1454404991,1454404991),('subscription is active','uk','',1454404991,1454404991),('subscription is active','zh_Hans','',1454404991,1454404991),('subscription link','ca','',1454330515,1454330515),('subscription link','cs','',1454330515,1454330515),('subscription link','de','',1454330515,1454330515),('subscription link','en','',1454330515,1454330515),('subscription link','es','',1454330515,1454330515),('subscription link','fa','',1454330515,1454330515),('subscription link','fr','',1454330515,1454330515),('subscription link','it','',1454330515,1454330515),('subscription link','ja','',1454330515,1454330515),('subscription link','nl','',1454330515,1454330515),('subscription link','pl','',1454330515,1454330515),('subscription link','pt','',1454330515,1454330515),('subscription link','pt_BR','',1454330515,1454330515),('subscription link','ru','',1454330515,1454330515),('subscription link','sk','',1454330515,1454330515),('subscription link','sv','',1454330515,1454330515),('subscription link','tr','',1454330515,1454330515),('subscription link','uk','',1454330515,1454330515),('subscription link','zh_Hans','',1454330515,1454330515),('subscription package type','ca','',1454404989,1454404989),('subscription package type','cs','',1454404989,1454404989),('subscription package type','de','',1454404989,1454404989),('subscription package type','en','',1454404989,1454404989),('subscription package type','es','',1454404989,1454404989),('subscription package type','fa','',1454404989,1454404989),('subscription package type','fr','',1454404989,1454404989),('subscription package type','it','',1454404989,1454404989),('subscription package type','ja','',1454404989,1454404989),('subscription package type','nl','',1454404989,1454404989),('subscription package type','pl','',1454404989,1454404989),('subscription package type','pt','',1454404989,1454404989),('subscription package type','pt_BR','',1454404989,1454404989),('subscription package type','ru','',1454404989,1454404989),('subscription package type','sk','',1454404989,1454404989),('subscription package type','sv','',1454404989,1454404989),('subscription package type','tr','',1454404989,1454404989),('subscription package type','uk','',1454404989,1454404989),('subscription package type','zh_Hans','',1454404989,1454404989),('subscription package type description','ca','',1454404990,1454404990),('subscription package type description','cs','',1454404990,1454404990),('subscription package type description','de','',1454404990,1454404990),('subscription package type description','en','',1454404990,1454404990),('subscription package type description','es','',1454404990,1454404990),('subscription package type description','fa','',1454404990,1454404990),('subscription package type description','fr','',1454404990,1454404990),('subscription package type description','it','',1454404990,1454404990),('subscription package type description','ja','',1454404990,1454404990),('subscription package type description','nl','',1454404990,1454404990),('subscription package type description','pl','',1454404990,1454404990),('subscription package type description','pt','',1454404990,1454404990),('subscription package type description','pt_BR','',1454404990,1454404990),('subscription package type description','ru','',1454404990,1454404990),('subscription package type description','sk','',1454404990,1454404990),('subscription package type description','sv','',1454404990,1454404990),('subscription package type description','tr','',1454404990,1454404990),('subscription package type description','uk','',1454404990,1454404990),('subscription package type description','zh_Hans','',1454404990,1454404990),('subscription package type logo','ca','',1454404990,1454404990),('subscription package type logo','cs','',1454404990,1454404990),('subscription package type logo','de','',1454404990,1454404990),('subscription package type logo','en','',1454404990,1454404990),('subscription package type logo','es','',1454404990,1454404990),('subscription package type logo','fa','',1454404990,1454404990),('subscription package type logo','fr','',1454404990,1454404990),('subscription package type logo','it','',1454404990,1454404990),('subscription package type logo','ja','',1454404990,1454404990),('subscription package type logo','nl','',1454404990,1454404990),('subscription package type logo','pl','',1454404990,1454404990),('subscription package type logo','pt','',1454404990,1454404990),('subscription package type logo','pt_BR','',1454404990,1454404990),('subscription package type logo','ru','',1454404990,1454404990),('subscription package type logo','sk','',1454404990,1454404990),('subscription package type logo','sv','',1454404990,1454404990),('subscription package type logo','tr','',1454404990,1454404990),('subscription package type logo','uk','',1454404990,1454404990),('subscription package type logo','zh_Hans','',1454404990,1454404990),('subscription price','ca','',1454331232,1454331232),('subscription price','cs','',1454331232,1454331232),('subscription price','de','',1454331232,1454331232),('subscription price','en','',1454331232,1454331232),('subscription price','es','',1454331232,1454331232),('subscription price','fa','',1454331232,1454331232),('subscription price','fr','',1454331232,1454331232),('subscription price','it','',1454331232,1454331232),('subscription price','ja','',1454331232,1454331232),('subscription price','nl','',1454331232,1454331232),('subscription price','pl','',1454331232,1454331232),('subscription price','pt','',1454331232,1454331232),('subscription price','pt_BR','',1454331232,1454331232),('subscription price','ru','',1454331232,1454331232),('subscription price','sk','',1454331232,1454331232),('subscription price','sv','',1454331232,1454331232),('subscription price','tr','',1454331232,1454331232),('subscription price','uk','',1454331232,1454331232),('subscription price','zh_Hans','',1454331232,1454331232),('subscription type subscribe link','ca','',1454404991,1454404991),('subscription type subscribe link','cs','',1454404991,1454404991),('subscription type subscribe link','de','',1454404991,1454404991),('subscription type subscribe link','en','',1454404991,1454404991),('subscription type subscribe link','es','',1454404991,1454404991),('subscription type subscribe link','fa','',1454404991,1454404991),('subscription type subscribe link','fr','',1454404991,1454404991),('subscription type subscribe link','it','',1454404991,1454404991),('subscription type subscribe link','ja','',1454404991,1454404991),('subscription type subscribe link','nl','',1454404991,1454404991),('subscription type subscribe link','pl','',1454404991,1454404991),('subscription type subscribe link','pt','',1454404991,1454404991),('subscription type subscribe link','pt_BR','',1454404991,1454404991),('subscription type subscribe link','ru','',1454404991,1454404991),('subscription type subscribe link','sk','',1454404991,1454404991),('subscription type subscribe link','sv','',1454404991,1454404991),('subscription type subscribe link','tr','',1454404991,1454404991),('subscription type subscribe link','uk','',1454404991,1454404991),('subscription type subscribe link','zh_Hans','',1454404991,1454404991),('subscriptions','ca','',1454330839,1454330839),('subscriptions','cs','',1454330839,1454330839),('subscriptions','de','',1454330839,1454330839),('subscriptions','en','',1454330839,1454330839),('subscriptions','es','',1454330839,1454330839),('subscriptions','fa','',1454330839,1454330839),('subscriptions','fr','',1454330839,1454330839),('subscriptions','it','',1454330839,1454330839),('subscriptions','ja','',1454330839,1454330839),('subscriptions','nl','',1454330839,1454330839),('subscriptions','pl','',1454330839,1454330839),('subscriptions','pt','',1454330839,1454330839),('subscriptions','pt_BR','',1454330839,1454330839),('subscriptions','ru','',1454330839,1454330839),('subscriptions','sk','',1454330839,1454330839),('subscriptions','sv','',1454330839,1454330839),('subscriptions','tr','',1454330839,1454330839),('subscriptions','uk','',1454330839,1454330839),('subscriptions','zh_Hans','',1454330839,1454330839),('testclass','ca','',1451309402,1451309402),('testclass','cs','',1451309402,1451309402),('testclass','de','',1451309402,1451309402),('testclass','en','',1451309402,1451309402),('testclass','es','',1451309402,1451309402),('testclass','fa','',1451309402,1451309402),('testclass','fr','',1451309402,1451309402),('testclass','it','',1451309402,1451309402),('testclass','ja','',1451309402,1451309402),('testclass','nl','',1451309402,1451309402),('testclass','pl','',1451309402,1451309402),('testclass','pt','',1451309402,1451309402),('testclass','pt_BR','',1451309402,1451309402),('testclass','ru','',1451309402,1451309402),('testclass','sk','',1451309402,1451309402),('testclass','sv','',1451309402,1451309402),('testclass','tr','',1451309402,1451309402),('testclass','uk','',1451309402,1451309402),('testclass','zh_Hans','',1451309402,1451309402);
/*!40000 ALTER TABLE `translations_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_website`
--

DROP TABLE IF EXISTS `translations_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations_website` (
  `key` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
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
  `language` varchar(10) DEFAULT NULL,
  `admin` tinyint(1) unsigned DEFAULT '0',
  `active` tinyint(1) unsigned DEFAULT '1',
  `permissions` varchar(1000) DEFAULT NULL,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  `memorizeTabs` tinyint(1) DEFAULT NULL,
  `docTypes` varchar(255) DEFAULT NULL,
  `classes` varchar(255) DEFAULT NULL,
  `apiKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`),
  KEY `parentId` (`parentId`),
  KEY `name` (`name`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,0,'user','system',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'user','admin','$2y$10$thUbwkXVWg9muZaUAaNhYOkXKLJaZ1OKsB.IfmbasXNbwQbettVjS',NULL,NULL,NULL,'en',1,1,'','',0,1,1,'','',NULL),(3,0,'role','​ Trainee Read Only',NULL,NULL,NULL,NULL,NULL,0,1,'application_logging,assets,classes,clear_cache,clear_temp_files,dashboards,documents,document_style_editor,document_types,glossary,http_errors,newsletter,notes_events,objects,plugins,predefined_properties,qr_codes,recyclebin,redirects,reports,robots.txt,routes,seemode,seo_document_editor,tag_snippet_management,targeting,thumbnails,translations,website_settings',NULL,NULL,NULL,NULL,'','',NULL),(4,0,'role','Trainee',NULL,NULL,NULL,NULL,NULL,0,1,'application_logging,assets,backup,classes,clear_cache,clear_temp_files,dashboards,documents,document_style_editor,document_types,emails,glossary,http_errors,newsletter,notes_events,objects,plugins,predefined_properties,qr_codes,recyclebin,redirects,reports,robots.txt,routes,seemode,seo_document_editor,system_settings,tag_snippet_management,targeting,thumbnails,translations,users',NULL,NULL,NULL,NULL,'','',NULL),(5,0,'user','vikash','$2y$10$PvocDXKaVJ9ZNaQS/j0dpOretcwKI.QTLeONYQ.ZHRLMYO0QgcawC','vikash','kumar','vikash.kumar@osscube.com','en',0,1,'','3',0,1,1,'','','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permission_definitions`
--

DROP TABLE IF EXISTS `users_permission_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permission_definitions` (
  `key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permission_definitions`
--

LOCK TABLES `users_permission_definitions` WRITE;
/*!40000 ALTER TABLE `users_permission_definitions` DISABLE KEYS */;
INSERT INTO `users_permission_definitions` VALUES ('application_logging'),('assets'),('backup'),('classes'),('clear_cache'),('clear_temp_files'),('dashboards'),('documents'),('document_style_editor'),('document_types'),('emails'),('glossary'),('http_errors'),('newsletter'),('notes_events'),('objects'),('plugins'),('predefined_properties'),('qr_codes'),('recyclebin'),('redirects'),('reports'),('robots.txt'),('routes'),('seemode'),('seo_document_editor'),('system_settings'),('tag_snippet_management'),('targeting'),('thumbnails'),('translations'),('users'),('website_settings');
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
  `cpath` varchar(765) CHARACTER SET ascii DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
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
INSERT INTO `users_workspaces_asset` VALUES (1,'/',3,1,1,0,0,0,0,0,0,0),(1,'/',4,1,1,1,1,1,1,1,1,1);
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
  `cpath` varchar(765) CHARACTER SET ascii DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
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
  `cpath` varchar(765) CHARACTER SET ascii DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
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
  `lEdit` text,
  `lView` text,
  `layouts` text,
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
-- Table structure for table `uuids`
--

DROP TABLE IF EXISTS `uuids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uuids` (
  `uuid` char(36) NOT NULL,
  `itemId` bigint(20) unsigned NOT NULL,
  `type` varchar(25) NOT NULL,
  `instanceIdentifier` varchar(50) NOT NULL,
  PRIMARY KEY (`itemId`,`type`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uuids`
--

LOCK TABLES `uuids` WRITE;
/*!40000 ALTER TABLE `uuids` DISABLE KEYS */;
/*!40000 ALTER TABLE `uuids` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,2,'asset',2,NULL,1450346009,0,1),(4,2,'asset',2,NULL,1450346286,0,1),(5,2,'asset',2,NULL,1450346311,0,1),(6,2,'asset',2,NULL,1450346359,0,1),(55,1,'document',2,NULL,1451380824,0,1),(56,1,'document',2,NULL,1451380848,0,1),(57,1,'document',2,NULL,1451380880,0,1),(75,8,'document',2,NULL,1451384813,0,1),(76,8,'document',2,NULL,1451384825,0,1),(77,9,'document',2,NULL,1451384832,0,1),(79,9,'document',2,NULL,1451384859,0,1),(82,9,'document',2,NULL,1451384883,0,1),(83,8,'document',2,NULL,1451384931,0,1),(84,8,'document',2,NULL,1451384980,0,1),(85,8,'document',2,NULL,1451385051,0,1),(92,8,'document',2,NULL,1451385309,0,1),(93,8,'document',2,NULL,1451385352,0,1),(94,8,'document',2,NULL,1451386476,0,1),(95,9,'document',2,NULL,1451386478,0,1),(97,8,'document',2,NULL,1451386527,0,1),(98,8,'document',2,NULL,1451386555,0,1),(108,8,'document',2,NULL,1454307955,0,1),(109,8,'document',2,NULL,1454307960,0,1),(110,9,'document',2,NULL,1454308003,0,1),(115,9,'document',2,NULL,1454310462,0,1),(116,8,'document',2,NULL,1454310521,0,1),(117,9,'document',2,NULL,1454310536,0,1),(118,8,'document',2,NULL,1454310689,0,1),(119,8,'document',2,NULL,1454310958,0,1),(120,8,'document',2,NULL,1454311064,0,1),(121,8,'document',2,NULL,1454311079,0,1),(122,8,'document',2,NULL,1454311350,0,1),(123,8,'document',2,NULL,1454311632,0,1),(124,9,'document',2,NULL,1454311905,0,1),(126,8,'document',2,NULL,1454312662,0,1),(127,9,'document',2,NULL,1454312664,0,1),(128,8,'document',2,NULL,1454313728,0,1),(129,9,'document',2,NULL,1454314372,0,1),(130,8,'document',2,NULL,1454315432,0,1),(132,4,'asset',2,NULL,1454315716,0,1),(133,8,'document',2,NULL,1454315729,0,1),(134,8,'document',2,NULL,1454315748,0,1),(135,8,'document',2,NULL,1454319212,0,1),(136,8,'document',2,NULL,1454319334,0,1),(137,8,'document',2,NULL,1454319488,0,1),(138,8,'document',2,NULL,1454319500,0,1),(142,8,'document',2,NULL,1454320387,0,1),(143,8,'document',2,NULL,1454320412,0,1),(144,8,'document',2,NULL,1454320452,0,1),(145,8,'document',2,NULL,1454320483,0,1),(146,8,'document',2,NULL,1454320522,0,1),(147,8,'document',2,NULL,1454321094,0,1),(148,8,'document',2,NULL,1454323980,0,1),(149,8,'document',2,NULL,1454325549,0,1),(150,8,'document',2,NULL,1454325565,0,1),(151,5,'asset',2,NULL,1454325877,0,1),(152,6,'asset',2,NULL,1454325877,0,1),(153,8,'document',2,NULL,1454325947,0,1),(159,8,'document',2,NULL,1454330072,0,1),(160,9,'document',2,NULL,1454330074,0,1),(161,15,'document',2,NULL,1454330172,0,1),(162,15,'document',2,NULL,1454330174,0,1),(166,15,'document',2,NULL,1454333401,0,1),(167,15,'document',2,NULL,1454333478,0,1),(168,15,'document',2,NULL,1454333493,0,1),(169,8,'document',2,NULL,1454333636,0,1),(170,15,'document',2,NULL,1454333644,0,1),(171,8,'document',2,NULL,1454333688,0,1),(172,8,'document',2,NULL,1454333713,0,1),(173,15,'document',2,NULL,1454333836,0,1),(174,15,'document',2,NULL,1454333901,0,1),(175,15,'document',2,NULL,1454333968,0,1),(176,15,'document',2,NULL,1454334064,0,1),(177,15,'document',2,NULL,1454334105,0,1),(178,15,'document',2,NULL,1454334533,0,1),(181,15,'document',2,NULL,1454335788,0,1),(185,15,'document',2,NULL,1454336715,0,1),(186,15,'document',2,NULL,1454336845,0,1),(187,15,'document',2,NULL,1454336879,0,1),(188,15,'document',2,NULL,1454336903,0,1),(189,15,'document',2,NULL,1454337205,0,1),(190,15,'document',2,NULL,1454337245,0,1),(193,15,'document',2,NULL,1454390890,0,1),(194,15,'document',2,NULL,1454392035,0,1),(203,10,'object',2,NULL,1454396595,0,1),(204,10,'object',2,NULL,1454396607,0,1),(205,10,'object',2,NULL,1454396634,0,1),(206,10,'object',2,NULL,1454396655,0,1),(207,11,'object',2,NULL,1454396664,0,1),(208,11,'object',2,NULL,1454396672,0,1),(209,12,'object',2,NULL,1454396684,0,1),(210,12,'object',2,NULL,1454396695,0,1),(211,12,'object',2,NULL,1454396697,0,1),(212,12,'object',2,NULL,1454397473,0,1),(213,10,'object',2,NULL,1454397477,0,1),(214,11,'object',2,NULL,1454397480,0,1),(215,10,'object',2,NULL,1454397492,0,1),(216,11,'object',2,NULL,1454397495,0,1),(217,11,'object',2,NULL,1454397504,0,1),(218,15,'document',2,NULL,1454397652,0,1),(219,12,'object',2,NULL,1454397658,0,1),(220,15,'document',2,NULL,1454397675,0,1),(221,10,'object',2,NULL,1454399458,0,1),(222,15,'document',2,NULL,1454399585,0,1),(224,15,'document',2,NULL,1454401486,0,1),(225,26,'object',2,NULL,1454401665,0,1),(226,26,'object',2,NULL,1454401674,0,1),(227,26,'object',2,NULL,1454401675,0,1),(228,27,'object',2,NULL,1454401698,0,1),(229,27,'object',2,NULL,1454401704,0,1),(230,27,'object',2,NULL,1454401705,0,1),(231,28,'object',2,NULL,1454401725,0,1),(232,28,'object',2,NULL,1454401731,0,1),(233,28,'object',2,NULL,1454401732,0,1),(234,29,'object',2,NULL,1454404968,0,1),(235,7,'asset',2,NULL,1454405833,0,1),(236,29,'object',2,NULL,1454405840,0,1),(237,8,'asset',2,NULL,1454405872,0,1),(238,9,'asset',2,NULL,1454405883,0,1),(239,29,'object',2,NULL,1454405886,0,1),(240,29,'object',2,NULL,1454405888,0,1),(241,10,'asset',2,NULL,1454405946,0,1),(242,29,'object',2,NULL,1454405952,0,1),(243,11,'asset',2,NULL,1454405960,0,1),(244,12,'asset',2,NULL,1454405968,0,1),(245,13,'asset',2,NULL,1454406003,0,1),(246,29,'object',2,NULL,1454406007,0,1),(247,30,'object',2,NULL,1454407080,0,1),(248,14,'asset',2,NULL,1454407149,0,1),(249,30,'object',2,NULL,1454407171,0,1),(250,30,'object',2,NULL,1454407172,0,1),(251,31,'object',2,NULL,1454407376,0,1),(252,15,'asset',2,NULL,1454407635,0,1),(253,31,'object',2,NULL,1454407655,0,1),(254,31,'object',2,NULL,1454407656,0,1),(255,32,'object',2,NULL,1454407678,0,1),(256,16,'asset',2,NULL,1454407694,0,1),(257,32,'object',2,NULL,1454407715,0,1),(258,32,'object',2,NULL,1454407716,0,1),(259,31,'object',2,NULL,1454408479,0,1),(260,32,'object',2,NULL,1454408492,0,1),(261,15,'document',2,NULL,1454408526,0,1),(262,15,'document',2,NULL,1454408713,0,1),(263,29,'object',2,NULL,1454408866,0,1),(264,29,'object',2,NULL,1454408946,0,1),(265,30,'object',2,NULL,1454408957,0,1),(266,15,'document',2,NULL,1454411134,0,1),(267,12,'object',2,NULL,1454411436,0,1),(268,11,'object',2,NULL,1454411458,0,1),(269,26,'object',2,NULL,1454412250,0,1),(270,10,'object',2,NULL,1454412262,0,1),(271,26,'object',2,NULL,1454412933,0,1),(272,26,'object',2,NULL,1454412980,0,1),(273,28,'object',2,NULL,1454413035,0,1),(274,11,'object',2,NULL,1454413409,0,1),(275,11,'object',2,NULL,1454413531,0,1),(276,27,'object',2,NULL,1454413553,0,1),(277,20,'document',2,NULL,1454414336,0,1),(278,20,'document',2,NULL,1454414470,0,1),(279,19,'asset',2,NULL,1454416202,0,1),(280,22,'asset',2,NULL,1454416202,0,1),(281,21,'asset',2,NULL,1454416202,0,1),(282,20,'document',2,NULL,1454416435,0,1),(283,20,'document',2,NULL,1454416648,0,1),(284,20,'document',2,NULL,1454416675,0,1),(285,20,'document',2,NULL,1454416810,0,1),(286,20,'document',2,NULL,1454417783,0,1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` enum('text','document','asset','object','bool') DEFAULT NULL,
  `data` text,
  `siteId` int(11) unsigned DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT '0',
  `modificationDate` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `siteId` (`siteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_settings`
--

LOCK TABLES `website_settings` WRITE;
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `object_3`
--

/*!50001 DROP TABLE IF EXISTS `object_3`*/;
/*!50001 DROP VIEW IF EXISTS `object_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_3` AS select `object_query_3`.`oo_id` AS `oo_id`,`object_query_3`.`oo_classId` AS `oo_classId`,`object_query_3`.`oo_className` AS `oo_className`,`object_query_3`.`typeName` AS `typeName`,`object_query_3`.`typeDesc` AS `typeDesc`,`object_query_3`.`typeIogo` AS `typeIogo`,`object_query_3`.`typeSubscribeLink` AS `typeSubscribeLink`,`object_query_3`.`isActive` AS `isActive`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_3` join `objects` on((`objects`.`o_id` = `object_query_3`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_5`
--

/*!50001 DROP TABLE IF EXISTS `object_5`*/;
/*!50001 DROP VIEW IF EXISTS `object_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_5` AS select `object_query_5`.`oo_id` AS `oo_id`,`object_query_5`.`oo_classId` AS `oo_classId`,`object_query_5`.`oo_className` AS `oo_className`,`object_query_5`.`faqQuestion` AS `faqQuestion`,`object_query_5`.`faqAnswer` AS `faqAnswer`,`object_query_5`.`faqsequence` AS `faqsequence`,`object_query_5`.`faqActive` AS `faqActive`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_5` join `objects` on((`objects`.`o_id` = `object_query_5`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_7`
--

/*!50001 DROP TABLE IF EXISTS `object_7`*/;
/*!50001 DROP VIEW IF EXISTS `object_7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_7` AS select `object_query_7`.`oo_id` AS `oo_id`,`object_query_7`.`oo_classId` AS `oo_classId`,`object_query_7`.`oo_className` AS `oo_className`,`object_query_7`.`priceThereAfter` AS `priceThereAfter`,`object_query_7`.`accessTNYTimes` AS `accessTNYTimes`,`object_query_7`.`accessToNYTimesAppsPhone` AS `accessToNYTimesAppsPhone`,`object_query_7`.`accessToNYTimesAppsTab` AS `accessToNYTimesAppsTab`,`object_query_7`.`accessToTheFullTimesArchives` AS `accessToTheFullTimesArchives`,`object_query_7`.`shareDigitalAccess` AS `shareDigitalAccess`,`object_query_7`.`isActive` AS `isActive`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_7` join `objects` on((`objects`.`o_id` = `object_query_7`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_8`
--

/*!50001 DROP TABLE IF EXISTS `object_8`*/;
/*!50001 DROP VIEW IF EXISTS `object_8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_8` AS select `object_query_8`.`oo_id` AS `oo_id`,`object_query_8`.`oo_classId` AS `oo_classId`,`object_query_8`.`oo_className` AS `oo_className`,`object_query_8`.`subsTypeName` AS `subsTypeName`,`object_query_8`.`substypeDesc` AS `substypeDesc`,`object_query_8`.`subsTypeIogo` AS `subsTypeIogo`,`object_query_8`.`subsTypeSubscribeLink` AS `subsTypeSubscribeLink`,`object_query_8`.`subsIsActive` AS `subsIsActive`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_8` join `objects` on((`objects`.`o_id` = `object_query_8`.`oo_id`))) */;
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

-- Dump completed on 2016-02-02 18:35:04
