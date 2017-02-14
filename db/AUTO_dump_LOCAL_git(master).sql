-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: festningen_craft
-- ------------------------------------------------------
-- Server version 	5.6.28
-- Date: Mon, 13 Feb 2017 22:14:12 +0000

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
-- Table structure for table `craft_amnav_navs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_amnav_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_amnav_navs_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_amnav_navs`
--

LOCK TABLES `craft_amnav_navs` WRITE;
/*!40000 ALTER TABLE `craft_amnav_navs` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_amnav_navs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_amnav_nodes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_amnav_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `elementId` int(11) DEFAULT NULL,
  `elementType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_amnav_nodes_elementId_elementType_locale_idx` (`elementId`,`elementType`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_amnav_nodes`
--

LOCK TABLES `craft_amnav_nodes` WRITE;
/*!40000 ALTER TABLE `craft_amnav_nodes` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_amnav_nodes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetfiles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfiles`
--

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assetfiles` VALUES (6,1,1,'DSC8592.jpg','image',4256,2832,751542,'2017-02-10 15:59:56','2017-02-10 15:59:56','2017-02-10 15:59:56','23aff8d3-2ea2-4cae-926f-fba950f10758'),(7,1,1,'DSC8599.jpg','image',4097,2726,623860,'2017-02-10 15:59:58','2017-02-10 15:59:58','2017-02-10 15:59:58','677c2450-a68c-4aa8-8d83-f21570a409d9'),(8,2,2,'DSC8592.jpg','image',4256,2832,751542,'2017-02-10 16:06:02','2017-02-10 16:06:03','2017-02-10 16:06:03','9a3f6459-b247-4238-8c7a-44e87828f614'),(9,2,2,'DSC8599.jpg','image',4097,2726,623860,'2017-02-10 16:06:04','2017-02-10 16:06:04','2017-02-10 16:06:04','86f2397e-a11f-4a63-9d6e-4f568d9a8b1a'),(15,7,7,'clock.svg','image',59,59,2660,'2017-02-11 01:29:53','2017-02-11 01:29:54','2017-02-11 01:29:54','62400019-ffd2-4e06-9aef-355369762727'),(16,7,7,'icon-booking.svg','image',88,50,1977,'2017-02-11 23:41:30','2017-02-11 23:41:31','2017-02-11 23:41:31','cd57c7ef-53a0-4144-aa93-58b5be7c894d'),(27,7,7,'icon-search.svg','image',63,63,628,'2017-02-13 15:17:01','2017-02-13 15:17:03','2017-02-13 15:17:03','fd15b0cb-1550-4f81-a7fe-72cf92d78ca8'),(28,7,7,'icon-silhouette.svg','image',122,320,1470,'2017-02-13 15:17:04','2017-02-13 15:17:05','2017-02-13 15:17:05','80cd4ac2-0acf-4742-aa25-5166783796a5'),(29,7,7,'icon-soup.svg','image',79,89,3514,'2017-02-13 15:17:05','2017-02-13 15:17:07','2017-02-13 15:17:07','659bd6b7-ad91-4895-b12a-643cab912fbc');
/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetfolders`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfolders`
--

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assetfolders` VALUES (1,NULL,1,'Bilder','','2015-10-23 11:09:33','2015-10-23 11:09:33','f3142658-3fb9-4b94-92e5-763bed9dc7d7'),(2,NULL,2,'Restauranten','','2017-02-10 16:02:27','2017-02-10 16:02:27','fd3cd70a-13fb-41ef-a9a7-7c10e69bd9ce'),(3,NULL,3,'Kongen','','2017-02-10 16:03:48','2017-02-10 16:03:48','67558ae5-2ba4-4d87-8cc4-c8120b8c1994'),(4,NULL,4,'Dronningen','','2017-02-10 16:04:31','2017-02-10 16:04:31','e5efab7f-bc39-4240-a939-4bcc8afd0e61'),(5,NULL,5,'Krompen','','2017-02-10 16:05:03','2017-02-10 16:05:03','05a7d9ae-e56d-47d0-bcff-5f85ce4a20cd'),(6,NULL,6,'Haubitz','','2017-02-10 16:05:27','2017-02-10 16:05:27','8b03feb8-e9ef-4cd5-bedf-b22f90533cb4'),(7,NULL,7,'Ikoner','','2017-02-11 01:16:20','2017-02-11 01:16:20','eec0175a-5ae9-4acc-9e15-2e164bd9a026');
/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetindexdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) unsigned DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetindexdata`
--

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetsources`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetsources`
--

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assetsources` VALUES (1,'Bilder','bilder','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/\"}',1,35,'2015-10-23 11:09:33','2016-06-08 08:27:39','5d69cfc0-d339-4cdc-a766-5021734e479a'),(2,'Restauranten','restauranten','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/restauranten\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/restauranten\\/\"}',2,65,'2017-02-10 16:02:27','2017-02-11 17:10:41','2bbebdf9-4d2d-4fb5-b808-20f5c4807dd7'),(3,'Kongen','kongen','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/kongen\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/kongen\\/\"}',3,46,'2017-02-10 16:03:48','2017-02-10 16:03:48','4cf3f1a9-35b2-489d-a29e-9754a20f616c'),(4,'Dronningen','dronningen','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/dronningen\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/dronningen\\/\"}',4,47,'2017-02-10 16:04:31','2017-02-10 16:04:31','19c5390b-90e3-4122-a173-f9e30fc96f75'),(5,'Krompen','krompen','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/krompen\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/krompen\\/\"}',5,48,'2017-02-10 16:05:03','2017-02-10 16:05:03','ce545dc1-98c9-4bf1-a0df-8fe69cb8f399'),(6,'Haubitz','haubitz','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/haubitz\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/haubitz\\/\"}',6,49,'2017-02-10 16:05:27','2017-02-10 16:05:27','246db442-8f7f-4966-92aa-7769c7bfe82d'),(7,'Ikoner','ikoner','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/ikoner\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/ikoner\\/\"}',7,63,'2017-02-11 01:16:20','2017-02-11 01:16:20','aea54c85-ca53-415c-80e4-76b8578cd6c0');
/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assettransformindex`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransformindex`
--

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assettransformindex` VALUES (1,8,'DSC8592.jpg',NULL,'_300xAUTO_crop_center-center',2,1,1,'2017-02-11 17:07:02','2017-02-11 17:07:02','2017-02-11 17:07:03','0ed4736d-e546-462d-b8c8-9ba7a4fa555d');
/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assettransforms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransforms`
--

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_categories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categories`
--

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_categorygroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups`
--

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_categorygroups_i18n`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

LOCK TABLES `craft_categorygroups_i18n` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_fokuspunkt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_alt` text COLLATE utf8_unicode_ci,
  `field_rikTekst` text COLLATE utf8_unicode_ci,
  `field_renTekst` text COLLATE utf8_unicode_ci,
  `field_tittel` text COLLATE utf8_unicode_ci,
  `field_defaultField1` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_content`
--

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_content` VALUES (1,1,'nb_no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-08 10:49:48','2016-03-23 14:49:38','22bdfcbe-634e-4e2b-aa58-5153c4ae4ef9'),(2,2,'nb_no','Forside',NULL,NULL,'<p>På historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten</strong> i den gamle kommandant-boligen.</p>',NULL,'Festningen servering og kulturarena',NULL,'2017-02-10 15:29:45','2017-02-13 15:27:21','d6ca2150-f1fe-43cb-8385-067cc8c01b13'),(3,3,'nb_no','Restaurant',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-10 15:30:01','2017-02-10 15:30:01','2de41c30-d3e4-4900-b8ac-c0b825607f0a'),(4,4,'nb_no','Selskap',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-10 15:30:11','2017-02-10 15:30:11','b64aba46-1ddf-4115-9465-311d19ab8ff9'),(5,5,'nb_no','Kristiansten festning',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-10 15:30:28','2017-02-10 15:30:28','119ff3d7-090c-4631-b2dd-a9d5f861c0c5'),(6,6,'nb_no','Dsc8592',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-10 15:59:56','2017-02-10 15:59:56','e65593a4-01e6-46cc-9df2-c92888790c93'),(7,7,'nb_no','Dsc8599',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-10 15:59:58','2017-02-10 15:59:58','0027f69d-070a-4e86-ae96-e27597e123d6'),(8,8,'nb_no','Dsc8592','50.35% 67.35%','',NULL,NULL,NULL,NULL,'2017-02-10 16:06:03','2017-02-11 17:11:21','3af0565a-ad46-43d5-948a-0de65cb425e8'),(9,9,'nb_no','Dsc8599',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-10 16:06:04','2017-02-10 16:06:04','6d15ca0f-b6c7-450e-b539-f19b62e1b120'),(11,15,'nb_no','Clock',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-11 01:29:54','2017-02-11 01:29:54','d9b01d02-ff0a-4cc4-9448-793edc41931a'),(12,16,'nb_no','Icon Booking',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-11 23:41:31','2017-02-11 23:41:31','741e6559-74cd-4bc5-b026-3201172b1bea'),(14,27,'nb_no','Icon Search',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-13 15:17:03','2017-02-13 15:17:03','46be460f-43d4-4847-863c-bb90842dd40c'),(15,28,'nb_no','Icon Silhouette',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-13 15:17:05','2017-02-13 15:17:05','a0fe43d0-0d9f-4953-8989-9b377f0df88d'),(16,29,'nb_no','Icon Soup',NULL,NULL,NULL,NULL,NULL,NULL,'2017-02-13 15:17:07','2017-02-13 15:17:07','cb6f838e-8a68-4c0d-8026-d8392cd9ddbe');
/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_cpnav_layouts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_cpnav_layouts`
--

LOCK TABLES `craft_cpnav_layouts` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_layouts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_cpnav_layouts` VALUES (1,'Default',1,NULL,'2015-10-25 12:33:16','2015-10-25 12:33:16','33b57956-f2e1-4083-8cab-fe3c86d701c2');
/*!40000 ALTER TABLE `craft_cpnav_layouts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_cpnav_navs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `order` int(10) DEFAULT '0',
  `prevUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customIcon` text COLLATE utf8_unicode_ci,
  `manualNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `newWindow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_cpnav_navs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_cpnav_navs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_cpnav_layouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_cpnav_navs`
--

LOCK TABLES `craft_cpnav_navs` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_navs` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_cpnav_navs` VALUES (1,1,'dashboard','Kontrollpanel','Kontrollpanel',1,0,'dashboard','dashboard','gauge',NULL,0,0,'2015-10-25 12:33:16','2016-12-13 10:27:59','8389e86d-0c7f-4ab2-ae0e-dbfc180a967b'),(3,1,'assets','Filer','Filer',1,2,'assets','assets','assets',NULL,0,0,'2015-10-25 12:33:16','2016-12-13 10:28:01','e81b6a91-78f4-4302-9c73-99f416a526a0'),(5,1,'settings','Innstillinger','Innstillinger',1,4,'settings','settings','settings',NULL,0,0,'2016-01-19 15:33:51','2016-12-13 10:28:08','6fd29f8c-59cd-4003-835d-14a411012823'),(15,1,'seomatic','SEOmatic','SEOmatic',1,4,'seomatic','seomatic','iconSvg-seomatic',NULL,0,0,'2016-06-14 12:18:20','2016-12-13 10:28:10','f22a3452-e1b2-4c14-86b5-7de93e35175f'),(16,1,'entries','Artikler','Artikler',1,1,'entries','entries','section',NULL,0,0,'2017-02-10 15:29:46','2017-02-10 15:29:46','97e0d61c-bf0d-43fe-b61d-dbbaf87d92a5'),(17,1,'amnav','a&m nav','a&m nav',1,3,'amnav','amnav','iconSvg-amnav',NULL,0,0,'2017-02-10 16:45:55','2017-02-10 16:45:55','f7c41d95-77ad-46fd-a0a2-9281d8c053ef'),(18,1,'sproutforms','Sprout Forms','Sprout Forms',1,5,'sproutforms','sproutforms','iconSvg-sproutforms',NULL,0,0,'2017-02-13 13:39:02','2017-02-13 13:39:02','c3b803f9-972e-4323-b597-4ccb349f6c93');
/*!40000 ALTER TABLE `craft_cpnav_navs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_deprecationerrors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_deprecationerrors`
--

LOCK TABLES `craft_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `craft_deprecationerrors` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_elementindexsettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elementindexsettings`
--

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_elements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements`
--

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_elements` VALUES (1,'User',1,0,'2014-10-08 10:49:48','2016-03-23 14:49:38','ffb29a05-dcce-4b95-85c8-cba0b3353fca'),(2,'Entry',1,0,'2017-02-10 15:29:45','2017-02-13 15:27:21','6a016481-1e9d-456f-812b-255cc187ff46'),(3,'Entry',1,0,'2017-02-10 15:30:01','2017-02-10 15:30:01','eb7eecf6-95e4-4de9-82fb-b049b1b60f53'),(4,'Entry',1,0,'2017-02-10 15:30:11','2017-02-10 15:30:11','2227b0ce-63f8-4802-b0ea-666e2bcd005c'),(5,'Entry',1,0,'2017-02-10 15:30:28','2017-02-10 15:30:28','9890e5f7-00e3-4efd-96e4-809cc8b9851f'),(6,'Asset',1,0,'2017-02-10 15:59:56','2017-02-10 15:59:56','bcaaffb2-9153-483b-89bf-a2f46405e3d9'),(7,'Asset',1,0,'2017-02-10 15:59:58','2017-02-10 15:59:58','ea9da6c8-4d5e-4fb2-842c-81b304e92d01'),(8,'Asset',1,0,'2017-02-10 16:06:03','2017-02-11 17:11:21','c84a3dc7-c37a-4e38-8104-2383ad1da2fc'),(9,'Asset',1,0,'2017-02-10 16:06:04','2017-02-10 16:06:04','e2fb57dd-5977-4449-8b4d-84a60a441b1c'),(10,'MatrixBlock',1,0,'2017-02-10 16:12:46','2017-02-13 15:27:22','c195184a-7fd0-4af3-a26b-de59359b212f'),(11,'MatrixBlock',1,0,'2017-02-10 16:12:46','2017-02-13 15:27:22','6711fdf2-2aaa-4fc7-8d0f-cfc20c546412'),(15,'Asset',1,0,'2017-02-11 01:29:54','2017-02-11 01:29:54','e1df8374-166e-4c4f-8ca5-d467ab334536'),(16,'Asset',1,0,'2017-02-11 23:41:31','2017-02-11 23:41:31','745bc06a-6755-49e8-8f45-5921540279bd'),(18,'MatrixBlock',1,0,'2017-02-12 16:23:11','2017-02-13 15:27:22','97e727e6-d31b-4ff6-bfb4-aa4483e35677'),(19,'MatrixBlock',1,0,'2017-02-12 16:24:57','2017-02-13 15:27:22','785f0252-c001-472b-bf5a-7509996dfe99'),(20,'SproutForms_Form',1,0,'2017-02-13 13:39:12','2017-02-13 13:39:14','4887373a-2976-479f-a3ee-c2053a57be3e'),(21,'SproutForms_Form',1,0,'2017-02-13 13:39:16','2017-02-13 13:39:20','8de0790f-9c84-4d2f-8b5e-d823f7b17f9e'),(27,'Asset',1,0,'2017-02-13 15:17:03','2017-02-13 15:17:03','61277cbc-8a7d-4495-bef6-019e5c70bbdc'),(28,'Asset',1,0,'2017-02-13 15:17:05','2017-02-13 15:17:05','9db976cd-6c74-4a3f-87a8-9b4a929db414'),(29,'Asset',1,0,'2017-02-13 15:17:07','2017-02-13 15:17:07','430d6928-4a13-443e-920c-03069b229c74'),(30,'SuperTable_Block',1,0,'2017-02-13 15:18:39','2017-02-13 15:27:22','296d0afe-7fc4-41e2-9873-759572cc5659');
/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_elements_i18n`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements_i18n`
--

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_elements_i18n` VALUES (1,1,'nb_no','',NULL,1,'2014-10-08 10:49:48','2016-03-23 14:49:39','43ed65e2-12cd-4f2c-bf52-00955b97ea18'),(2,2,'nb_no','forside','__home__',1,'2017-02-10 15:29:45','2017-02-13 15:27:22','dffac779-91e9-47d9-b1fb-2b8f226c6b2d'),(3,3,'nb_no','restaurant','restaurant',1,'2017-02-10 15:30:01','2017-02-10 15:30:01','00095e77-2a86-428b-8eef-716d47acf019'),(4,4,'nb_no','selskap','selskap',1,'2017-02-10 15:30:11','2017-02-10 15:30:11','787f19d1-448b-44ef-a779-afe73061d76e'),(5,5,'nb_no','kristiansten-festning','kristiansten-festning',1,'2017-02-10 15:30:28','2017-02-10 15:30:28','d49fca60-1972-460a-86a3-9293c546e456'),(6,6,'nb_no','dsc8592',NULL,1,'2017-02-10 15:59:56','2017-02-10 15:59:56','54c1b339-f9f1-4b88-b801-af60eda9da75'),(7,7,'nb_no','dsc8599',NULL,1,'2017-02-10 15:59:58','2017-02-10 15:59:58','7f2371bc-b4c9-4308-b935-3988ca41310d'),(8,8,'nb_no','dsc8592',NULL,1,'2017-02-10 16:06:03','2017-02-11 17:11:21','badd5f67-a4a9-4c2f-bd20-a5aae5d2865c'),(9,9,'nb_no','dsc8599',NULL,1,'2017-02-10 16:06:04','2017-02-10 16:06:04','d944e5f9-c4ae-47b3-90ce-0f23228b1ba5'),(10,10,'nb_no','',NULL,1,'2017-02-10 16:12:46','2017-02-13 15:27:22','90b89686-91d9-4dc9-8c12-e578e31ca573'),(11,11,'nb_no','',NULL,1,'2017-02-10 16:12:46','2017-02-13 15:27:22','a2bf4817-41e1-40b4-9fdc-82b3ea8bddd3'),(15,15,'nb_no','clock',NULL,1,'2017-02-11 01:29:54','2017-02-11 01:29:54','77f544b4-39cf-4d87-86cc-c2e6fc098c78'),(16,16,'nb_no','icon-booking',NULL,1,'2017-02-11 23:41:31','2017-02-11 23:41:31','783dd338-2119-4877-8511-316fc4c30373'),(18,18,'nb_no','',NULL,1,'2017-02-12 16:23:11','2017-02-13 15:27:22','b3cca169-9e11-4b83-80f3-02836517c7f6'),(19,19,'nb_no','',NULL,1,'2017-02-12 16:24:57','2017-02-13 15:27:22','c29fb8fa-c202-4b52-91f2-faea8d048dbd'),(20,20,'nb_no','',NULL,1,'2017-02-13 13:39:12','2017-02-13 13:39:14','7055bf66-e24d-4899-8367-c1c36b959061'),(21,21,'nb_no','',NULL,1,'2017-02-13 13:39:16','2017-02-13 13:39:20','11dd2ed7-a98e-41d8-937e-703432cd796e'),(27,27,'nb_no','icon-search',NULL,1,'2017-02-13 15:17:03','2017-02-13 15:17:03','34a68757-9a5c-48de-8f6f-5b3d2c0c5414'),(28,28,'nb_no','icon-silhouette',NULL,1,'2017-02-13 15:17:05','2017-02-13 15:17:05','2e44014b-c46f-4382-8729-703357307ceb'),(29,29,'nb_no','icon-soup',NULL,1,'2017-02-13 15:17:07','2017-02-13 15:17:07','7395cd02-7379-44f0-b4ed-77cc345c8738'),(30,30,'nb_no','',NULL,1,'2017-02-13 15:18:39','2017-02-13 15:27:22','9f0d0613-d53c-431e-b80a-7f04c35e24fb');
/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_emailmessages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_emailmessages`
--

LOCK TABLES `craft_emailmessages` WRITE;
/*!40000 ALTER TABLE `craft_emailmessages` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_emailmessages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entries`
--

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_entries` VALUES (2,1,NULL,NULL,'2017-02-10 15:29:45',NULL,'2017-02-10 15:29:45','2017-02-13 15:27:22','6e42adaa-98b2-47f9-b996-b40c83ff78e0'),(3,2,NULL,NULL,'2017-02-10 15:30:01',NULL,'2017-02-10 15:30:01','2017-02-10 15:30:01','f593a1ff-55df-46c5-bddd-c767fb20131d'),(4,3,NULL,NULL,'2017-02-10 15:30:11',NULL,'2017-02-10 15:30:11','2017-02-10 15:30:11','1bb02571-d859-433a-9bfc-8433822f9381'),(5,4,NULL,NULL,'2017-02-10 15:30:28',NULL,'2017-02-10 15:30:28','2017-02-10 15:30:28','5a1825c0-6840-44ed-a5ee-96c80a73d90b');
/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entrydrafts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrydrafts`
--

LOCK TABLES `craft_entrydrafts` WRITE;
/*!40000 ALTER TABLE `craft_entrydrafts` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_entrydrafts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entrytypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrytypes`
--

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_entrytypes` VALUES (1,1,116,'Forside','forside',0,NULL,'{section.name|raw}',1,'2017-02-10 15:29:45','2017-02-13 22:04:02','79338ffb-ed9f-42a6-bb97-9f6ef6310ebc'),(2,2,38,'Restaurant','restaurant',0,NULL,'{section.name|raw}',1,'2017-02-10 15:30:01','2017-02-10 15:30:01','bc770edb-99aa-4ad1-87c8-72fc2d6bd42f'),(3,3,39,'Selskap','selskap',0,NULL,'{section.name|raw}',1,'2017-02-10 15:30:11','2017-02-10 15:30:11','6ef480d0-7020-4a8f-9df9-e1cbfad9ead0'),(4,4,40,'Kristiansten festning','kristianstenFestning',0,NULL,'{section.name|raw}',1,'2017-02-10 15:30:28','2017-02-10 15:30:28','b0cd8f11-ed6e-455f-8736-14a4ad61088b'),(5,5,41,'Oppskrifter','oppskrifter',1,'Tittel',NULL,1,'2017-02-10 15:44:00','2017-02-10 15:44:00','f7f04814-05b8-4a38-8602-2e65739df67a'),(6,6,42,'Ingredienser','ingredienser',1,'Tittel',NULL,1,'2017-02-10 15:44:13','2017-02-10 15:44:13','d85ff7ce-3bb4-43c7-bcaf-60c8ab67db51');
/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entryversions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entryversions`
--

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_entryversions` VALUES (1,2,1,1,'nb_no',1,NULL,'{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2017-02-10 15:29:45','2017-02-10 15:29:45','6f725eda-010b-40c6-a8f8-70da4045b2f9'),(2,3,2,1,'nb_no',1,NULL,'{\"typeId\":\"2\",\"authorId\":null,\"title\":\"Restaurant\",\"slug\":\"restaurant\",\"postDate\":1486740601,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2017-02-10 15:30:01','2017-02-10 15:30:01','171011d4-64b8-4100-8d74-9914f8fd59d7'),(3,4,3,1,'nb_no',1,NULL,'{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Selskap\",\"slug\":\"selskap\",\"postDate\":1486740611,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2017-02-10 15:30:11','2017-02-10 15:30:11','a6724344-dd40-4374-832e-9f128d0217d3'),(4,5,4,1,'nb_no',1,NULL,'{\"typeId\":\"4\",\"authorId\":null,\"title\":\"Kristiansten festning\",\"slug\":\"kristiansten-festning\",\"postDate\":1486740628,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2017-02-10 15:30:28','2017-02-10 15:30:28','c707435e-c18f-4c1e-a883-353fc7ea71af'),(5,2,1,1,'nb_no',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"22\":[\"6\"]}}','2017-02-10 16:00:39','2017-02-10 16:00:39','293a5f00-57a5-4092-8e12-a28cb43b059e'),(6,2,1,1,'nb_no',3,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"22\":[\"8\"]}}','2017-02-10 16:06:12','2017-02-10 16:06:12','70ec1d5b-cc5d-4580-bf20-40064cd9c993'),(7,2,1,1,'nb_no',4,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-10 16:07:57','2017-02-10 16:07:57','bd5a985e-fbe3-48ac-a1d6-61d5fc47c3bf'),(8,2,1,1,'nb_no',5,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"new1\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":\"\",\"rikTekst\":\"<p>Tirsdag - Fredag<\\/p>\",\"knapp\":[{\"col1\":\"TLF: 450 52 666\",\"col2\":\"tel:+4745052666\"}]}},\"new2\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":[{\"col1\":\"Send epost\",\"col2\":\"mail:kommandanten@festningenservering.no\"}]}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-10 16:12:46','2017-02-10 16:12:46','596975fc-72f6-4527-9fb5-5f828b0c2ec9'),(9,2,1,1,'nb_no',6,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":\"\",\"rikTekst\":\"<table>\\r\\n  <tr>\\r\\n    <th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr>\\r\\n  <tr>\\r\\n    <td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr>\\r\\n<\\/table>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel: +4645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-10 16:19:10','2017-02-10 16:19:10','b8296a0a-78e8-4589-bbbd-d652f9af56c5'),(10,2,1,1,'nb_no',7,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":\"\",\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel:204645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"new1\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"bildeHoyre\"}},\"new2\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"bildeVenstre\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 01:12:01','2017-02-11 01:12:01','17335fa2-247e-4223-8839-86d35dcd8ebe'),(11,2,1,1,'nb_no',8,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":\"\",\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel:204645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 01:14:07','2017-02-11 01:14:07','c6181df6-95c6-40bd-b1b6-373d7e4bea9f'),(12,2,1,1,'nb_no',9,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":\"\",\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel:204645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 01:18:58','2017-02-11 01:18:58','e2f9ab5e-26bc-4350-bc00-c0d840cc7cc4'),(13,2,1,1,'nb_no',10,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel:204645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 01:29:59','2017-02-11 01:29:59','099c42ad-b5a5-49aa-9b8a-ff244231d2c3'),(14,2,1,1,'nb_no',11,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table><p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel:204645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 23:07:18','2017-02-11 23:07:18','2466a28b-5350-404a-99d1-d53e125d406a'),(15,2,1,1,'nb_no',12,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p><p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p>TEL:&nbsp;<a href=\\\"tel:204645052666\\\">450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 23:07:37','2017-02-11 23:07:37','a4eba83f-8aab-4982-9ef6-303b95b4210c'),(16,2,1,1,'nb_no',13,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":\"\",\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 23:17:30','2017-02-11 23:17:30','6913e1d1-c1e1-4ab2-b675-24969b475f95'),(17,2,1,1,'nb_no',14,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 23:41:35','2017-02-11 23:41:35','d48cb831-94ed-4771-a307-95a02aa1c801'),(18,2,1,1,'nb_no',15,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}},\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 23:44:11','2017-02-11 23:44:11','92d72fc3-47d9-4ecf-91be-9faf11b7c702'),(19,2,1,1,'nb_no',16,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-11 23:44:34','2017-02-11 23:44:34','04ab2ce0-48d4-4a76-8e03-40ec101fd381'),(20,2,1,1,'nb_no',17,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}},\"new1\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 11:42:02','2017-02-12 11:42:02','9d7a4709-b14f-4ad0-ad6e-cb7c94d6e7f1'),(21,2,1,1,'nb_no',18,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 11:42:18','2017-02-12 11:42:18','43334e22-03d9-4178-8b1d-9ddb656768b8'),(22,2,1,1,'nb_no',19,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 14:50:11','2017-02-12 14:50:11','6055f083-12c4-4da1-be96-c9f732836d40'),(23,2,1,1,'nb_no',20,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"left\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 14:50:41','2017-02-12 14:50:41','3ef78d2d-0407-4891-85e2-893b20092847'),(24,2,1,1,'nb_no',21,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"right\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 15:39:56','2017-02-12 15:39:56','b10aad46-5daa-4e13-aa93-0f949cf8713d'),(25,2,1,1,'nb_no',22,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"right\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 16:01:42','2017-02-12 16:01:42','c1586c28-aeb1-4d7c-a25b-695dedd723f7'),(26,2,1,1,'nb_no',23,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"right\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"46\":{\"new1\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\">Les mer<\\/a><\\/p>\",\"bilde\":[\"7\"]}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 16:23:11','2017-02-12 16:23:11','19d0f5c8-a4e3-4f32-9d48-3f14c45e649f'),(27,2,1,1,'nb_no',24,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"right\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\">Les mer<\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"new1\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p><p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":[{\"col1\":\"Lunsj\",\"col2\":\"11:00 - 16:00\"},{\"col1\":\"Klassisk\",\"col2\":\"16:00 - 23:00\"},{\"col1\":\"Ukens 3-retter\",\"col2\":\"16:00 - 23:00\"}]}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 16:24:57','2017-02-12 16:24:57','4faa5cd2-0807-4d59-992a-6797ceaf15ec'),(28,2,1,1,'nb_no',25,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"31\":{\"13\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"left\",\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\"}},\"14\":{\"type\":\"dobbel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"6\"],\"overskrift\":\"Dobbel restaurant\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3:url\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"posisjon\":\"right\"}},\"17\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"bilde\":[\"9\"],\"posisjon\":\"right\",\"overskrift\":\"Kuk\",\"tekst\":\"<p>Test<\\/p>\"}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"19\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":[{\"col1\":\"Lunsj\",\"col2\":\"11:00 - 16:00\"},{\"col1\":\"Klassisk\",\"col2\":\"16:00 - 23:00\"},{\"col1\":\"Ukens 3-retter\",\"col2\":\"16:00 - 23:00\"}]}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-12 16:29:04','2017-02-12 16:29:04','966aa300-d258-42be-98e9-2cce535fa240'),(29,2,1,1,'nb_no',26,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"19\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":[{\"col1\":\"Lunsj\",\"col2\":\"11:00 - 16:00\"},{\"col1\":\"Klassisk\",\"col2\":\"16:00 - 23:00\"},{\"col1\":\"Ukens 3-retter\",\"col2\":\"16:00 - 23:00\"}]}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-13 13:36:03','2017-02-13 13:36:03','a1b20017-1487-43ec-87ec-634e96df99a7'),(30,2,1,1,'nb_no',27,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"54\":{\"new0\":{\"modified\":\"1\",\"type\":\"designblokk\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"type\":{\"new1\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Selskap\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, bryllup adipiscing elit, sed do eiusmod d\\u00e5p og minnestund incididunt ut labore et dolore magna aliqua. Juleord og juleselskap enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p><p><strong><a href=\\\"http:\\/\\/festningen.local\\/selskap#entry:4\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"7\"],\"bildeposisjon\":\"right\"}},\"new2\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Historiske omgivelser\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p><p><strong><a href=\\\"http:\\/\\/festningen.local\\/kristiansten-festning#entry:5\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"6\"],\"bildeposisjon\":\"right\"}},\"new3\":{\"type\":\"tekstOgBilde\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Tester\",\"tekst\":\"<p>En test lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Les mer<\\/p>\",\"kolonner\":\"toKolonner\",\"bilde\":[\"7\"],\"bildetekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\"}}}}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"19\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":[{\"col1\":\"Lunsj\",\"col2\":\"11:00 - 16:00\"},{\"col1\":\"Klassisk\",\"col2\":\"16:00 - 23:00\"},{\"col1\":\"Ukens 3-retter\",\"col2\":\"16:00 - 23:00\"}]}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-13 13:42:47','2017-02-13 13:42:47','f620c068-77ce-46ac-baeb-16efbaa07b8d'),(31,2,1,1,'nb_no',28,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"54\":{\"22\":{\"modified\":\"0\",\"type\":\"designblokk\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"type\":{\"23\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Selskap\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, bryllup adipiscing elit, sed do eiusmod d\\u00e5p og minnestund incididunt ut labore et dolore magna aliqua. Juleord og juleselskap enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong><a href=\\\"http:\\/\\/festningen.local\\/selskap#entry:4:url\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"7\"],\"bildeposisjon\":\"right\"}},\"24\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Historiske omgivelser\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong><a href=\\\"http:\\/\\/festningen.local\\/kristiansten-festning#entry:5:url\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"6\"],\"bildeposisjon\":\"right\"}},\"25\":{\"type\":\"tekstOgBilde\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Tester\",\"tekst\":\"<p>En test lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Les mer<\\/p>\",\"kolonner\":\"toKolonner\",\"bilde\":[\"7\"],\"bildetekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\"}}}}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"19\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"ikon\":\"\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":{\"new1\":{\"type\":\"1\",\"fields\":{\"ikon\":[\"29\"],\"tekst\":[{\"col1\":\"Lunsj\",\"col2\":\"11:00 - 16:00\"},{\"col1\":\"Klassisk meny\",\"col2\":\"16:00 - 23:00\"},{\"col1\":\"Ukens 3-retter\",\"col2\":\"16:00 - 23:00\"}]}}}}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-13 15:18:40','2017-02-13 15:18:40','a78a9792-6f28-4984-b445-8df9dbb8dc37'),(32,2,1,1,'nb_no',29,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"54\":{\"22\":{\"modified\":\"0\",\"type\":\"designblokk\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"type\":{\"23\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Selskap\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, bryllup adipiscing elit, sed do eiusmod d\\u00e5p og minnestund incididunt ut labore et dolore magna aliqua. Juleord og juleselskap enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong><a href=\\\"http:\\/\\/festningen.local\\/selskap#entry:4:url\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"7\"],\"bildeposisjon\":\"right\"}},\"24\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Historiske omgivelser\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong><a href=\\\"http:\\/\\/festningen.local\\/kristiansten-festning#entry:5:url\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"6\"],\"bildeposisjon\":\"right\"}},\"25\":{\"type\":\"tekstOgBilde\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Tester\",\"tekst\":\"<p>En test lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Les mer<\\/p>\",\"kolonner\":\"toKolonner\",\"bilde\":[\"7\"],\"bildetekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\"}}}}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"19\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"ikon\":\"\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":{\"30\":{\"type\":\"1\",\"fields\":{\"ikon\":[\"29\"],\"tekst\":\"<table><tbody><tr><td>Lunsj<\\/td><td>11:00 - 16:00\\r\\n<\\/td><\\/tr><tr><td>Klassisk<\\/td><td>16:00 - 23:00\\r\\n<\\/td><\\/tr><tr><td>Ukens 3-retter<\\/td><td>16:00 - 23:00\\r\\n<\\/td><\\/tr><\\/tbody><\\/table>\"}}}}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-13 15:26:17','2017-02-13 15:26:17','30944371-e51b-435d-ae34-24422433d2d1'),(33,2,1,1,'nb_no',30,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486740585,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"26\":{\"10\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\\u00c5pningstider\",\"ikon\":[\"15\"],\"rikTekst\":\"<table><tbody><tr><th>Tirsdag - Fredag<\\/th>\\r\\n    <th class=\\\"tg-yw4l\\\">11:00 - 23:00<\\/th>\\r\\n  <\\/tr><tr><td>L\\u00f8rdag - S\\u00f8ndag<\\/td>\\r\\n    <td>11:00 - 23:00<\\/td>\\r\\n  <\\/tr><\\/tbody><\\/table>\\r\\n<p><br><\\/p>\\r\\n<p>M\\u00f8ter og selskap etter avtale<\\/p>\",\"knapp\":\"<p><a href=\\\"tel:45052666\\\">TLF: 450 52 666<\\/a><\\/p>\"}},\"11\":{\"type\":\"blokk\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Booking\",\"ikon\":[\"16\"],\"rikTekst\":\"<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap<\\/strong> og underholdning.&nbsp;<\\/p>\",\"knapp\":\"<p><a href=\\\"mailto:kommandanten@festningenservering.no\\\">Send epost<\\/a><\\/p>\"}}},\"54\":{\"22\":{\"modified\":\"0\",\"type\":\"designblokk\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"type\":{\"23\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Selskap\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, bryllup adipiscing elit, sed do eiusmod d\\u00e5p og minnestund incididunt ut labore et dolore magna aliqua. Juleord og juleselskap enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong><a href=\\\"http:\\/\\/festningen.local\\/selskap#entry:4:url\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"7\"],\"bildeposisjon\":\"right\"}},\"24\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Historiske omgivelser\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong><a href=\\\"http:\\/\\/festningen.local\\/kristiansten-festning#entry:5:url\\\">Les mer<\\/a><\\/strong><\\/p>\",\"bilde\":[\"6\"],\"bildeposisjon\":\"right\"}},\"25\":{\"type\":\"tekstOgBilde\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"Tester\",\"tekst\":\"<p>En test lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Les mer<\\/p>\",\"kolonner\":\"toKolonner\",\"bilde\":[\"7\"],\"bildetekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\"}}}}}},\"46\":{\"18\":{\"type\":\"enkel\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Restauranten\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br><br><a href=\\\"http:\\/\\/festningen.local\\/restaurant\\\"><strong>Les mer<\\/strong><\\/a><\\/p>\",\"bilde\":[\"7\"]}},\"19\":{\"type\":\"menyer\",\"enabled\":\"1\",\"fields\":{\"overskrift\":\"Ukens 3-retter, lunsj og klassisk meny\",\"ikon\":\"\",\"tekst\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<\\/p>\\r\\n<p><strong>Les mer &nbsp;&nbsp;<\\/strong><\\/p>\",\"menyer\":{\"30\":{\"type\":\"1\",\"fields\":{\"ikon\":[\"29\"],\"tekst\":\"<table><tbody><tr><td>Lunsj<\\/td><td>11:00 - 16:00\\r\\n<\\/td><\\/tr><tr><td>Klassisk<\\/td><td>16:00 - 23:00\\r\\n<\\/td><\\/tr><tr><td>Ukens 3-retter<\\/td><td>16:00 - 23:00\\r\\n<\\/td><\\/tr><\\/tbody><\\/table><p><strong><a href=\\\"http:\\/\\/festningen.local\\/restaurant#entry:3\\\">Les mer<\\/a><\\/strong><\\/p>\"}}}}}},\"23\":\"<p>P\\u00e5 historiske Kristiansten festning i Trondheim ligger <strong>Restaurant Kommandanten<\\/strong> i den gamle kommandant-boligen.<\\/p>\",\"25\":\"Festningen servering og kulturarena\",\"22\":[\"8\"]}}','2017-02-13 15:27:22','2017-02-13 15:27:22','752b9deb-1681-4ee4-817d-abea94b3692f');
/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldgroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldgroups`
--

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldgroups` VALUES (1,'Standard','2014-10-08 10:49:50','2014-10-08 10:49:50','420d3eaa-0708-4cce-8c20-93409caf3560'),(3,'SEO','2015-10-23 14:49:57','2015-10-23 14:49:57','fa2e2850-530c-4e24-9889-99212610e4dc'),(4,'Designblokker','2017-02-10 15:32:19','2017-02-11 01:04:13','772c73f6-c773-464b-bc89-71bf74cfa94b'),(6,'Forside','2017-02-10 15:47:09','2017-02-10 15:47:09','5516ecd4-fa90-4e82-ab3c-e000d9de777e');
/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldlayoutfields`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldlayoutfields` VALUES (75,35,26,21,0,1,'2016-06-08 08:27:39','2016-06-08 08:27:39','2688b460-dae3-4aaa-b276-0ae02239e680'),(77,35,26,18,0,3,'2016-06-08 08:27:39','2016-06-08 08:27:39','5ee3c7a7-0841-4434-8b2e-3053498fb03b'),(84,46,30,18,0,1,'2017-02-10 16:03:48','2017-02-10 16:03:48','63e0fc35-340e-4ed2-a292-ea57d3f59e78'),(85,46,30,21,0,2,'2017-02-10 16:03:48','2017-02-10 16:03:48','6f542fed-2514-40b6-87d0-121c5bd0d52d'),(86,47,31,18,0,1,'2017-02-10 16:04:31','2017-02-10 16:04:31','6106cb3b-fc34-42af-957e-248e389b0e3b'),(87,47,31,21,0,2,'2017-02-10 16:04:31','2017-02-10 16:04:31','68d70fd2-fdd5-4b07-b30f-102dc9546bd9'),(88,48,32,18,0,1,'2017-02-10 16:05:03','2017-02-10 16:05:03','2d84beb5-5559-4ec2-84bd-45b4defbdf7a'),(89,48,32,21,0,2,'2017-02-10 16:05:03','2017-02-10 16:05:03','b001c71a-cc6d-437a-a05d-45da2bce9418'),(90,49,33,18,0,1,'2017-02-10 16:05:27','2017-02-10 16:05:27','a96f1cad-48f7-4545-b5d9-e74e28a94d71'),(91,49,33,21,0,2,'2017-02-10 16:05:27','2017-02-10 16:05:27','4b64539a-6263-407e-aaa4-5e53bacd5de5'),(144,64,47,27,0,1,'2017-02-11 01:17:41','2017-02-11 01:17:41','9cb38093-bb78-4daa-968a-11280a12fbd9'),(145,64,47,28,0,2,'2017-02-11 01:17:41','2017-02-11 01:17:41','40e9382d-ef8a-49e4-b8ff-5b9101fa7369'),(146,64,47,29,0,3,'2017-02-11 01:17:41','2017-02-11 01:17:41','67da00fa-76ba-4188-8342-793413ceb2e8'),(147,64,47,30,0,4,'2017-02-11 01:17:41','2017-02-11 01:17:41','d79eac6d-f0f1-4598-8d6c-3276af30d1d9'),(148,65,48,18,0,1,'2017-02-11 17:10:41','2017-02-11 17:10:41','2a41da3e-fa20-4afb-b1fb-96ad623ba323'),(149,65,48,21,0,2,'2017-02-11 17:10:41','2017-02-11 17:10:41','38a640e3-1d31-4442-8f67-831939ead4fe'),(256,100,82,65,1,1,'2017-02-13 13:39:14','2017-02-13 13:44:15','eb577b8a-0c93-4540-a247-2f631be9de5d'),(257,100,82,66,1,2,'2017-02-13 13:39:14','2017-02-13 13:44:52','0d15607c-1f21-41a9-8732-a98edf7799c6'),(258,100,82,67,1,3,'2017-02-13 13:39:14','2017-02-13 13:45:24','524e3871-cc7d-4f23-94e0-0cc09db995c1'),(259,102,83,68,1,1,'2017-02-13 13:39:20','2017-02-13 13:39:20','013bd507-2902-4376-bad7-28754078925b'),(260,102,83,69,1,2,'2017-02-13 13:39:20','2017-02-13 13:39:20','31f9c4a7-199a-4e17-86f7-089d80dd615e'),(261,102,83,70,0,3,'2017-02-13 13:39:20','2017-02-13 13:39:20','d16a20c5-b99d-4ec6-bd71-e6ccbd08c95d'),(262,102,84,71,0,1,'2017-02-13 13:39:20','2017-02-13 13:39:20','dd3deddc-1d1b-4ad0-81d5-803b8bfd900c'),(263,102,84,72,0,2,'2017-02-13 13:39:20','2017-02-13 13:39:20','a114ec18-0254-42ed-a5e9-a05de1c7a296'),(264,102,84,73,0,3,'2017-02-13 13:39:20','2017-02-13 13:39:20','788c68d4-61e2-431e-b992-5251c3e84d59'),(265,102,84,74,0,4,'2017-02-13 13:39:20','2017-02-13 13:39:20','329514b1-a7e3-467f-92de-6b6146e95260'),(283,109,91,47,0,1,'2017-02-13 15:23:12','2017-02-13 15:23:12','59681a8d-b214-4962-a71f-5408bed308ff'),(284,109,91,48,0,2,'2017-02-13 15:23:12','2017-02-13 15:23:12','9455b5c9-cdcd-4f5b-8ebf-e49e19131071'),(285,109,91,49,0,3,'2017-02-13 15:23:12','2017-02-13 15:23:12','b0e6bf55-9431-4c2b-ab85-9fb4310d2519'),(286,110,92,77,0,1,'2017-02-13 15:23:13','2017-02-13 15:23:13','45567be4-d485-4ad3-a210-329b625f146f'),(287,110,92,78,0,2,'2017-02-13 15:23:13','2017-02-13 15:23:13','5d20d555-786e-4298-b2e1-224903919198'),(288,111,93,50,0,1,'2017-02-13 15:23:13','2017-02-13 15:23:13','f32486cc-e402-4fe1-bd86-080558adf8fe'),(289,111,93,76,0,2,'2017-02-13 15:23:13','2017-02-13 15:23:13','aefc40a6-974d-4839-9e2d-a1dd79e06fa6'),(290,111,93,51,0,3,'2017-02-13 15:23:14','2017-02-13 15:23:14','d744e8da-c664-4954-b814-1bb3eb7b1ef6'),(291,111,93,52,0,4,'2017-02-13 15:23:14','2017-02-13 15:23:14','ffc5e24d-fc56-4010-ab0a-1646d2d48d28'),(294,114,96,56,0,1,'2017-02-13 21:59:54','2017-02-13 21:59:54','a4886f6b-3112-4408-8b6a-32094487175d'),(295,114,96,57,0,2,'2017-02-13 21:59:54','2017-02-13 21:59:54','18b60854-1106-4cf5-9126-93c425af5426'),(296,114,96,58,0,3,'2017-02-13 21:59:54','2017-02-13 21:59:54','8cd4cb6f-054a-4470-9979-e229626241b7'),(297,114,96,59,0,4,'2017-02-13 21:59:54','2017-02-13 21:59:54','fc75c519-d2db-46b3-81bf-f5413ffbb9c0'),(298,115,97,60,0,1,'2017-02-13 21:59:54','2017-02-13 21:59:54','df7f9d97-d7ea-4f93-8fab-791a28e02a0b'),(299,115,97,61,0,2,'2017-02-13 21:59:54','2017-02-13 21:59:54','11554b04-50d2-4c97-ac8a-17b8596645d8'),(300,115,97,62,0,3,'2017-02-13 21:59:54','2017-02-13 21:59:54','f8de87a9-9bf6-4193-9a23-c70dd41243f4'),(301,115,97,63,0,4,'2017-02-13 21:59:54','2017-02-13 21:59:54','82d8653d-7494-4d48-bf17-d51d27b8b946'),(302,115,97,64,0,5,'2017-02-13 21:59:54','2017-02-13 21:59:54','6344812f-9edb-415a-b49b-c5ba9a176bfb'),(303,116,98,22,0,1,'2017-02-13 22:04:02','2017-02-13 22:04:02','d247c476-eb2d-41eb-9d97-fbbf7252031a'),(304,116,98,25,0,2,'2017-02-13 22:04:02','2017-02-13 22:04:02','4fb684c0-3d36-4d7c-a77e-f309a78b9126'),(305,116,98,23,0,3,'2017-02-13 22:04:02','2017-02-13 22:04:02','9f1b91bf-e63d-4899-8b99-1405e5de96b3'),(306,116,98,26,0,4,'2017-02-13 22:04:02','2017-02-13 22:04:02','6fcf58cc-2fea-4afe-98ae-be84101f93e3'),(307,116,98,46,0,5,'2017-02-13 22:04:02','2017-02-13 22:04:02','2ab09daf-2758-4dce-b663-48519e973f5b'),(308,116,98,55,0,6,'2017-02-13 22:04:02','2017-02-13 22:04:02','46e3dfa7-d4e3-4518-83fb-45c81dbc3070');
/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldlayouts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouts`
--

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldlayouts` VALUES (1,'Tag','2014-10-08 10:49:50','2014-10-08 10:49:50','735aea8d-1467-42fe-a635-fe07456aef93'),(3,'Entry','2014-10-08 10:49:51','2014-10-08 10:49:51','34c943ee-38b2-46f1-977d-5a69371e7b36'),(5,'Entry','2014-10-08 10:49:51','2014-10-08 10:49:51','abf58a12-09f1-4aa1-a709-7f4b5c553eab'),(35,'Asset','2016-06-08 08:27:39','2016-06-08 08:27:39','2f62a4dc-1f0f-431b-845c-ccffcb78f627'),(36,'Asset','2016-09-14 09:29:21','2016-09-14 09:29:21','98cb2b92-aed8-4d5a-bbb7-828546174317'),(38,'Entry','2017-02-10 15:30:01','2017-02-10 15:30:01','a6baa776-24f3-4052-bb5f-7d0fa41cdb27'),(39,'Entry','2017-02-10 15:30:11','2017-02-10 15:30:11','a7d944a6-bbc5-4f08-93ce-6ae60aac4fde'),(40,'Entry','2017-02-10 15:30:28','2017-02-10 15:30:28','6ab360d5-e418-4f18-9d4c-5a92edabc1a5'),(41,'Entry','2017-02-10 15:44:00','2017-02-10 15:44:00','97c75d75-09d3-4ca3-b034-542ebdfb29e1'),(42,'Entry','2017-02-10 15:44:13','2017-02-10 15:44:13','101a9e02-2250-449a-abbb-4edf1738f6e5'),(46,'Asset','2017-02-10 16:03:48','2017-02-10 16:03:48','f4ef6a9b-ad01-449d-9f04-53edd0f3cae3'),(47,'Asset','2017-02-10 16:04:31','2017-02-10 16:04:31','d3361999-70fc-411b-a528-79ea5f825ccd'),(48,'Asset','2017-02-10 16:05:03','2017-02-10 16:05:03','12df801a-1b5d-4456-99f1-0634fff4e323'),(49,'Asset','2017-02-10 16:05:27','2017-02-10 16:05:27','792f60f0-a21c-4f49-bd62-2f95dbff700a'),(63,'Asset','2017-02-11 01:16:20','2017-02-11 01:16:20','f2ccfb71-0089-40a6-aeda-76e2eb154d3e'),(64,'MatrixBlock','2017-02-11 01:17:41','2017-02-11 01:17:41','85cdefec-4d8d-4400-9d04-12d3cd7919e9'),(65,'Asset','2017-02-11 17:10:40','2017-02-11 17:10:40','f61e6dc1-a0d5-4d83-bbfc-4759febd5bab'),(100,'SproutForms_Form','2017-02-13 13:39:14','2017-02-13 13:39:14','390a5ec2-45c6-4b6d-8fc8-4f55cc0e0f17'),(102,'SproutForms_Form','2017-02-13 13:39:20','2017-02-13 13:39:20','9d767c64-9061-40b7-8b1e-1be9133db5ac'),(109,'MatrixBlock','2017-02-13 15:23:12','2017-02-13 15:23:12','bf9717d2-2aa0-4d05-af8b-fc8354d260b8'),(110,'SuperTable_Block','2017-02-13 15:23:13','2017-02-13 15:23:13','c691255c-7bf2-4c81-8eb1-cb598febb507'),(111,'MatrixBlock','2017-02-13 15:23:13','2017-02-13 15:23:13','2bfc7f69-9b11-4a2d-9744-6f3c18f25bd2'),(114,'MatrixBlock','2017-02-13 21:59:54','2017-02-13 21:59:54','0e009afc-17e6-4fd7-923c-23ec5dc68b3b'),(115,'MatrixBlock','2017-02-13 21:59:54','2017-02-13 21:59:54','d1febd86-633b-4fc0-9924-aa0319da8046'),(116,'Entry','2017-02-13 22:04:02','2017-02-13 22:04:02','c736aa43-6c74-446c-8c6b-df04c4b09de2');
/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldlayouttabs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldlayouttabs` VALUES (1,3,'Innhold',1,'2014-10-08 10:49:51','2014-10-08 10:49:51','d35bab09-a914-4602-91df-0a3c3baa2cfc'),(2,5,'Innhold',1,'2014-10-08 10:49:51','2014-10-08 10:49:51','c39b036d-dd74-43ad-b5f0-cc0dfbd18b00'),(4,1,'Content',1,'2014-12-12 08:34:38','2014-12-12 08:34:38','075c4aae-210e-47b1-b49d-741e200c9155'),(26,35,'Innhold',1,'2016-06-08 08:27:39','2016-06-08 08:27:39','ecb34c16-5ecd-4248-858f-4abe8652da43'),(30,46,'Innhold',1,'2017-02-10 16:03:48','2017-02-10 16:03:48','32005601-79f7-4746-a655-3afd89845f25'),(31,47,'Innhold',1,'2017-02-10 16:04:31','2017-02-10 16:04:31','5dd321ae-8b5c-4e1d-98d4-a7d746321b3d'),(32,48,'Innhold',1,'2017-02-10 16:05:03','2017-02-10 16:05:03','2715a7d0-66f7-43bf-8628-8cdf697b4e82'),(33,49,'Innhold',1,'2017-02-10 16:05:27','2017-02-10 16:05:27','5648d0bf-8199-47fa-be21-be27699209cc'),(47,64,'Content',1,'2017-02-11 01:17:41','2017-02-11 01:17:41','6e5e9e31-8de5-45fa-8349-1bc5c14e5ab6'),(48,65,'Innhold',1,'2017-02-11 17:10:40','2017-02-11 17:10:40','492c600c-f173-4d96-9a94-6cdf1b6a37c7'),(82,100,'Default',1,'2017-02-13 13:39:14','2017-02-13 13:39:14','0c4ea6d6-b2ed-46a7-b96c-2ca921d2467d'),(83,102,'Section One',1,'2017-02-13 13:39:20','2017-02-13 13:39:20','6ef9d78d-94f2-435a-b45d-08bad8912322'),(84,102,'Section Two',2,'2017-02-13 13:39:20','2017-02-13 13:39:20','ae29d8f0-2c57-4c30-8afa-80806da72d39'),(91,109,'Content',1,'2017-02-13 15:23:12','2017-02-13 15:23:12','6861f6b1-9980-4bca-866a-04f6d66dd2dd'),(92,110,'Content',1,'2017-02-13 15:23:13','2017-02-13 15:23:13','d7cb2660-4d60-48e7-b159-d95ad979c09f'),(93,111,'Content',1,'2017-02-13 15:23:13','2017-02-13 15:23:13','e0f7b33f-ce56-40b5-8952-8f69aec6453c'),(96,114,'Content',1,'2017-02-13 21:59:54','2017-02-13 21:59:54','ebfba8b0-ccc0-4cea-a53f-77c7d3fea9e7'),(97,115,'Content',1,'2017-02-13 21:59:54','2017-02-13 21:59:54','3d8c2c08-033f-4b63-9acd-519a3f57a231'),(98,116,'Forside',1,'2017-02-13 22:04:02','2017-02-13 22:04:02','76a0af46-670e-4c12-975b-464e97ab3912');
/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fields`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fields`
--

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fields` VALUES (18,1,'Fokuspunkt','fokuspunkt','global','',0,'FocalPointField_FocalPoint','{\"defaultFocalPoint\":\"\"}','2016-01-19 15:58:29','2016-01-19 15:58:29','74a3919e-0f9f-4f9d-bc71-7e0335ce7f1d'),(21,1,'Alternativ tekst','alt','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2016-02-15 11:49:15','2016-02-15 11:49:15','7592614d-9607-4aa9-9f4b-cd073d7a7de5'),(22,1,'Toppbilde','toppbilde','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2017-02-10 15:45:42','2017-02-10 15:45:42','c73d509d-119f-41c2-8839-c8f5413a6445'),(23,1,'Rik tekst','rikTekst','global','',0,'RichText','{\"configFile\":\"Simple.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-10 15:46:19','2017-02-10 15:57:15','c1dcd8f7-12f2-4a63-b62b-1377ab99843b'),(24,1,'Ren tekst','renTekst','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-10 15:46:56','2017-02-10 15:46:56','2d90381d-9ce3-4990-9046-31107f5fb4b4'),(25,1,'Tittel','tittel','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-10 16:06:50','2017-02-10 16:07:00','efad9b18-a85e-4715-9793-22442ef38880'),(26,6,'Åpningstider og booking','apningstiderOgBooking','global','Åpningstider og booking',0,'Matrix','{\"maxBlocks\":\"2\"}','2017-02-10 16:10:25','2017-02-11 01:17:40','5e9ed770-ac1b-47e3-aa83-4006a41fdde1'),(27,NULL,'Tittel','tittel','matrixBlockType:1','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-10 16:10:25','2017-02-11 01:17:40','dac4e294-7ddd-4e1b-a4d0-9c3186dab2ba'),(28,NULL,'Ikon','ikon','matrixBlockType:1','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:7\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2017-02-10 16:10:25','2017-02-11 01:17:41','27f1b220-afe4-4b71-9652-e0e339880627'),(29,NULL,'Rik tekst','rikTekst','matrixBlockType:1','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-10 16:10:25','2017-02-11 01:17:41','5c844a17-1836-44b8-b54d-81a88432b070'),(30,NULL,'Knapp','knapp','matrixBlockType:1','Knapp med lenke',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-10 16:10:25','2017-02-11 01:17:41','1d19ecd8-6aec-4c1d-b714-c66fca292fb9'),(46,6,'Restaurant','restaurant','global','',0,'Matrix','{\"maxBlocks\":\"2\"}','2017-02-12 16:19:20','2017-02-13 15:23:11','458ab69c-1df5-48ee-92f7-4388b0af869e'),(47,NULL,'Overskrift','overskrift','matrixBlockType:5','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-12 16:19:20','2017-02-13 15:23:11','8fc3f890-8c25-4e4c-be39-e2973e489aa0'),(48,NULL,'Tekst','tekst','matrixBlockType:5','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-12 16:19:20','2017-02-13 15:23:12','94dbb155-a030-42a5-88c4-5f94f805df13'),(49,NULL,'Bilde','bilde','matrixBlockType:5','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2017-02-12 16:19:20','2017-02-13 15:23:12','c73a9993-bcaf-4537-b018-eab8c2ae2dd9'),(50,NULL,'Overskrift','overskrift','matrixBlockType:6','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-12 16:21:45','2017-02-13 15:23:12','6e949a94-6c18-449a-8b7f-d58444287d24'),(51,NULL,'Tekst','tekst','matrixBlockType:6','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-12 16:21:45','2017-02-13 15:23:13','9e0f4b8c-2d6f-4167-afde-43786bd58029'),(52,NULL,'Menyer','menyer','matrixBlockType:6','',0,'SuperTable','{\"columns\":{\"77\":{\"width\":\"\"},\"78\":{\"width\":\"\"}},\"fieldLayout\":\"table\",\"staticField\":null,\"selectionLabel\":\"Legg til flere rader\",\"maxRows\":null}','2017-02-12 16:21:45','2017-02-13 15:23:13','5370a78d-b8ce-4c0c-9958-2ac1b8ac20f9'),(53,4,'Bilde','bilde','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2017-02-13 12:13:45','2017-02-13 12:13:45','af20a2c7-f21b-4369-b8d4-ed9444449899'),(55,4,'Blokktype','blokktype','global','',0,'Matrix','{\"maxBlocks\":null}','2017-02-13 12:27:28','2017-02-13 21:59:54','c0e729d3-2f0d-459e-90ef-a9e3b62bdc33'),(56,NULL,'Tittel','tittel','matrixBlockType:7','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-13 12:27:30','2017-02-13 21:59:54','7d449cd3-7128-4283-be70-1d8cc99346a3'),(57,NULL,'Tekst','tekst','matrixBlockType:7','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-13 12:27:30','2017-02-13 21:59:54','fa12c859-a122-4edd-baec-4c5bd4f72515'),(58,NULL,'Bilde','bilde','matrixBlockType:7','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2017-02-13 12:27:30','2017-02-13 21:59:54','66940e65-1d62-49ce-b97a-3d91c5c1c1f7'),(59,NULL,'Bildeposisjon','bildeposisjon','matrixBlockType:7','',0,'PositionSelect','{\"options\":[\"left\",\"right\"]}','2017-02-13 12:27:30','2017-02-13 21:59:54','73cc894d-b4cb-458d-8a22-7f25ee48266b'),(60,NULL,'Tittel','tittel','matrixBlockType:8','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-13 12:27:31','2017-02-13 21:59:54','4e6f3ffe-f89b-47eb-a4a1-1081f86bdcdf'),(61,NULL,'Tekst','tekst','matrixBlockType:8','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-13 12:27:31','2017-02-13 21:59:54','37ad78cf-a41d-449b-9585-293a13d7459f'),(62,NULL,'Kolonner','kolonner','matrixBlockType:8','',0,'RadioButtons','{\"options\":[{\"label\":\"\\u00c9n kolonne\",\"value\":\"enKolonne\",\"default\":\"\"},{\"label\":\"To kolonner\",\"value\":\"toKolonner\",\"default\":\"\"}]}','2017-02-13 12:27:32','2017-02-13 21:59:54','f6c9e295-6e4d-490e-ab2d-c0dd392e5b3c'),(63,NULL,'Bilde','bilde','matrixBlockType:8','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2017-02-13 12:27:32','2017-02-13 21:59:54','e317e21e-15b9-4abb-8320-3f6a56fc05b6'),(64,NULL,'Bildetekst','bildetekst','matrixBlockType:8','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-13 12:27:32','2017-02-13 21:59:54','eef65d07-07d5-4b3a-9dbf-6b63a45146fc'),(65,NULL,'Navn','navn','sproutForms:20','',0,'PlainText','{\"placeholder\":\"Ola Nordmann\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-13 13:39:13','2017-02-13 13:44:15','a2666431-53b3-4373-bea6-44323f966af9'),(66,NULL,'Epost','epost','sproutForms:20','ola@nordmann.no',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-02-13 13:39:13','2017-02-13 13:44:52','e68859ae-b0c8-47c2-b61c-59d385bead45'),(67,NULL,'Melding','melding','sproutForms:20','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"4\"}','2017-02-13 13:39:14','2017-02-13 13:45:23','db65a8e9-968f-46fb-b0c2-b183b7edb042'),(68,NULL,'Plain Text Field','plainText','sproutForms:21',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":0,\"initialRows\":4}','2017-02-13 13:39:17','2017-02-13 13:39:17','74855b07-7c59-441e-9c6a-d057e936b95b'),(69,NULL,'Dropdown Field','dropdown','sproutForms:21',NULL,0,'Dropdown','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2017-02-13 13:39:18','2017-02-13 13:39:18','23eb9ee9-f4e4-4486-a058-943266d1a1a2'),(70,NULL,'Number Field','number','sproutForms:21',NULL,0,'Number','{\"min\":0,\"max\":\"\",\"decimals\":\"\"}','2017-02-13 13:39:18','2017-02-13 13:39:18','216f619c-4eed-4313-85c3-7dc8e89e7330'),(71,NULL,'Radio Buttons Field','radioButtons','sproutForms:21',NULL,0,'RadioButtons','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2017-02-13 13:39:19','2017-02-13 13:39:19','ada486cd-c5b5-4adb-ae07-2d1d61531598'),(72,NULL,'Checkboxes Field','checkboxes','sproutForms:21',NULL,0,'Checkboxes','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2017-02-13 13:39:19','2017-02-13 13:39:19','a6faa0eb-a478-4272-ad38-17197a2e2276'),(73,NULL,'Multi-select Field','multiSelect','sproutForms:21',NULL,0,'MultiSelect','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2017-02-13 13:39:20','2017-02-13 13:39:20','96d9b3e2-87a7-4a3c-9af1-e94debbbc88e'),(74,NULL,'Textarea Field','textarea','sproutForms:21',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":1,\"initialRows\":4}','2017-02-13 13:39:20','2017-02-13 13:39:20','ddbeca7d-153e-45f9-bf7e-30160f74b982'),(76,NULL,'Ikon','ikon','matrixBlockType:6','',0,'Assets','{\"useSingleFolder\":\"1\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"7\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2017-02-13 15:13:23','2017-02-13 15:23:12','072dcf1b-70d5-4537-82b1-013a0b0776bc'),(77,NULL,'Ikon','ikon','superTableBlockType:1','',0,'Assets','{\"useSingleFolder\":\"1\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"7\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2017-02-13 15:15:41','2017-02-13 15:23:13','f78256d1-7d6e-4a45-b53a-2dddc2059433'),(78,NULL,'Tekst','tekst','superTableBlockType:1','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2017-02-13 15:15:42','2017-02-13 15:23:13','75138a13-5978-4126-93dd-3e44e1f2bd4d');
/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_globalsets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_globalsets`
--

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_info`
--

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_info` VALUES (1,'2.6.2959','2.6.9',0,'Festningen servering og kulturarena','{siteUrl}','Europe/Oslo',1,0,'2014-10-08 10:49:45','2017-02-08 16:28:24','ce6e6378-3719-45f4-88b1-640f0e5e22c4');
/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_locales`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_locales`
--

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_locales` VALUES ('nb_no',1,'2014-10-08 10:49:46','2014-10-08 10:49:46','60083433-3d9f-4116-8d2d-1c91c6e178bc');
/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixblocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocks`
--

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixblocks` VALUES (10,2,26,1,1,NULL,'2017-02-10 16:12:46','2017-02-13 15:27:22','ac0d97b3-b0d0-4233-a805-defd59903454'),(11,2,26,1,2,NULL,'2017-02-10 16:12:46','2017-02-13 15:27:22','b87d020a-6602-4d25-bd3a-b0fcad65049f'),(18,2,46,5,1,NULL,'2017-02-12 16:23:11','2017-02-13 15:27:22','1ebf1595-1d0b-485a-9a47-0edb0cb88a8e'),(19,2,46,6,2,NULL,'2017-02-12 16:24:57','2017-02-13 15:27:22','db71a45b-2a1c-4df4-b1c9-9a975d7617ba');
/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixblocktypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocktypes`
--

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixblocktypes` VALUES (1,26,64,'Blokk','blokk',1,'2017-02-10 16:10:25','2017-02-11 01:17:41','a3a404a8-7cf6-4808-b23b-cdc5908893c4'),(5,46,109,'Enkel','enkel',1,'2017-02-12 16:19:20','2017-02-13 15:23:12','55995f5a-8564-4512-ab00-94b089f29429'),(6,46,111,'Menyer','menyer',2,'2017-02-12 16:21:45','2017-02-13 15:23:14','f7b50894-8f27-4761-83ec-a578abb60e12'),(7,55,114,'Enkel','enkel',1,'2017-02-13 12:27:29','2017-02-13 21:59:54','ca21f0e7-6e52-459a-870a-4c6e782cadb0'),(8,55,115,'Tekst og bilde','tekstOgBilde',2,'2017-02-13 12:27:31','2017-02-13 21:59:54','b7048c92-73ef-46dc-8045-e86a83c8ffb1');
/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixcontent_apningstiderogbooking`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_apningstiderogbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_blokk_tittel` text COLLATE utf8_unicode_ci,
  `field_blokk_rikTekst` text COLLATE utf8_unicode_ci,
  `field_blokk_knapp` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_apningstiderogbookin_elementId_locale_unq_id` (`elementId`,`locale`),
  KEY `craft_matrixcontent_apningstiderogbooking_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_apningstiderogbooking_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_apningstiderogbooking_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_apningstiderogbooking`
--

LOCK TABLES `craft_matrixcontent_apningstiderogbooking` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_apningstiderogbooking` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixcontent_apningstiderogbooking` VALUES (1,10,'nb_no','Åpningstider','<table><tbody><tr><th>Tirsdag - Fredag</th>\r\n    <th class=\"tg-yw4l\">11:00 - 23:00</th>\r\n  </tr><tr><td>Lørdag - Søndag</td>\r\n    <td>11:00 - 23:00</td>\r\n  </tr></tbody></table><p><br /></p>\r\n<p>Møter og selskap etter avtale</p>','<p><a href=\"tel:45052666\">TLF: 450 52 666</a></p>','2017-02-10 16:12:46','2017-02-13 15:27:22','665657b8-12a2-4565-84dc-14fb050bfcf9'),(2,11,'nb_no','Booking','<p>Reserver bord eller book <strong>egne dedikerte selskapslokaler med eget vertskap</strong> og underholdning. </p>','<p><a href=\"mailto:kommandanten@festningenservering.no\">Send epost</a></p>','2017-02-10 16:12:46','2017-02-13 15:27:22','ebf2a9f1-e288-4a7f-9236-23009eb2a71a');
/*!40000 ALTER TABLE `craft_matrixcontent_apningstiderogbooking` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixcontent_blokktype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_blokktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_enkel_tittel` text COLLATE utf8_unicode_ci,
  `field_enkel_tekst` text COLLATE utf8_unicode_ci,
  `field_enkel_bildeposisjon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_tekstOgBilde_tittel` text COLLATE utf8_unicode_ci,
  `field_tekstOgBilde_tekst` text COLLATE utf8_unicode_ci,
  `field_tekstOgBilde_kolonner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_tekstOgBilde_bildetekst` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_blokktype_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_blokktype_locale_idx` (`locale`),
  CONSTRAINT `craft_matrixcontent_blokktype_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_blokktype_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_blokktype`
--

LOCK TABLES `craft_matrixcontent_blokktype` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_blokktype` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_matrixcontent_blokktype` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixcontent_restaurant`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_enkel_overskrift` text COLLATE utf8_unicode_ci,
  `field_enkel_tekst` text COLLATE utf8_unicode_ci,
  `field_menyer_overskrift` text COLLATE utf8_unicode_ci,
  `field_menyer_tekst` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_restaurant_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_restaurant_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_restaurant_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_restaurant_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_restaurant`
--

LOCK TABLES `craft_matrixcontent_restaurant` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_restaurant` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixcontent_restaurant` VALUES (1,18,'nb_no','Restauranten','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.<br /><br /><a href=\"http://festningen.local/restaurant\"><strong>Les mer</strong></a></p>',NULL,NULL,'2017-02-12 16:23:11','2017-02-13 15:27:22','6d4cb709-bf6d-4f22-8f9f-aca3f24e07b9'),(2,19,'nb_no',NULL,NULL,'Ukens 3-retter, lunsj og klassisk meny','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi. sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>\r\n<p><strong>Les mer   </strong></p>','2017-02-12 16:24:57','2017-02-13 15:27:22','bcae8459-c812-4d2f-99c3-07e733011eea');
/*!40000 ALTER TABLE `craft_matrixcontent_restaurant` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_migrations`
--

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_migrations` VALUES (1,NULL,'m000000_000000_base','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','42d71bf0-6913-4eaa-9e38-d36bea1be5a8'),(2,NULL,'m140730_000001_add_filename_and_format_to_transformindex','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','b3815782-326e-42bd-aab2-b7df98a331cc'),(3,NULL,'m140815_000001_add_format_to_transforms','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','d16c46c4-1e70-4db1-a35b-369052650590'),(4,NULL,'m140822_000001_allow_more_than_128_items_per_field','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','cfc81698-5ad6-4774-b348-8b83b7cb8f1e'),(5,NULL,'m140829_000001_single_title_formats','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','198b1671-c688-4a74-9897-0211fddd2566'),(6,NULL,'m140831_000001_extended_cache_keys','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','2d510d43-bb61-470e-a8ab-55672d6738ab'),(7,NULL,'m140922_000001_delete_orphaned_matrix_blocks','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','399632eb-8668-43a1-a28d-2e933310cb4f'),(9,NULL,'m141008_000001_elements_index_tune','2014-12-12 08:34:38','2014-12-12 08:34:38','2014-12-12 08:34:38','1c96e5aa-cb60-4c43-bd6a-c0bd38773675'),(10,NULL,'m141009_000001_assets_source_handle','2014-12-12 08:34:38','2014-12-12 08:34:38','2014-12-12 08:34:38','ee995679-dce6-4bb5-814a-ef4eb48d9e5c'),(11,NULL,'m141024_000001_field_layout_tabs','2014-12-12 08:34:39','2014-12-12 08:34:39','2014-12-12 08:34:39','22887b9a-b1dc-456a-b5e3-14b8f6724926'),(12,NULL,'m141030_000001_drop_structure_move_permission','2014-12-12 08:34:39','2014-12-12 08:34:39','2014-12-12 08:34:39','10e7e46a-612f-43a8-b243-170934f67e38'),(13,NULL,'m141103_000001_tag_titles','2014-12-12 08:34:39','2014-12-12 08:34:39','2014-12-12 08:34:39','0ddd1195-7ac4-4f43-a185-e2a45012e324'),(14,NULL,'m141109_000001_user_status_shuffle','2014-12-12 08:34:40','2014-12-12 08:34:40','2014-12-12 08:34:40','8f737b06-2ba4-42bf-81d4-e06786ff9fa6'),(15,NULL,'m141126_000001_user_week_start_day','2014-12-12 08:34:40','2014-12-12 08:34:40','2014-12-12 08:34:40','f08d4d0a-045b-422f-b5ce-6a5976363598'),(16,NULL,'m150210_000001_adjust_user_photo_size','2015-03-11 17:02:58','2015-03-11 17:02:58','2015-03-11 17:02:58','1f89c6e6-0589-4f44-bbe3-046d140361f8'),(17,9,'m150901_144609_superTable_fixForContentTables','2015-10-23 15:33:35','2015-10-23 15:33:35','2015-10-23 15:33:35','f418c3f0-ce4e-4294-a5a9-7c359e000d76'),(18,16,'m150314_144609_cpNav_addUrlSupport','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','711d1275-f8ec-497d-905c-5a010ada3f80'),(19,16,'m150314_144610_cpNav_addPrevUrlSupport','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','dd743bff-ee3a-4484-b928-424ae65f72b2'),(20,16,'m150314_144611_cpNav_addManualNavItemSupport','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','0df3e894-a476-47bf-a556-d28d6d7ba9e2'),(21,16,'m150314_144615_cpNav_layouts','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','0a95d82b-dad0-464b-bdf1-4508dbe91a79'),(22,16,'m150321_144616_cpNav_newWindow','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','a3f045bb-f280-43e6-845f-bbb4d1f812de'),(23,NULL,'m141030_000000_plugin_schema_versions','2016-01-19 15:32:54','2016-01-19 15:32:54','2016-01-19 15:32:54','08881d26-493b-496a-85c8-b6f4f73fa125'),(24,NULL,'m150724_000001_adjust_quality_settings','2016-01-19 15:32:54','2016-01-19 15:32:54','2016-01-19 15:32:54','0825fb2d-f665-41d5-90b2-11fff25d652a'),(25,NULL,'m150827_000000_element_index_settings','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','e90f1ddc-643a-41ef-9d4f-0f3a5779a9fa'),(26,NULL,'m150918_000001_add_colspan_to_widgets','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','5dcb9740-8fcf-4d63-a9de-4cdb8126836c'),(27,NULL,'m151007_000000_clear_asset_caches','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','34c7e193-5c82-4958-b580-fa42f2f55620'),(28,NULL,'m151109_000000_text_url_formats','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','203cfac4-935d-4813-bc6e-d1dd04bdf4e3'),(29,NULL,'m151110_000000_move_logo','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','67fb9d27-93eb-4c66-a97f-80a41c8ef549'),(30,NULL,'m151117_000000_adjust_image_widthheight','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','fa12e892-dffa-461a-8f61-7961713a0a90'),(31,NULL,'m151127_000000_clear_license_key_status','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','401e83a8-8c79-4ddf-8e8c-2d8a6c66a49f'),(32,NULL,'m151127_000000_plugin_license_keys','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','e1e28880-9184-4ab2-85d4-b7fc8b0867ee'),(33,NULL,'m151130_000000_update_pt_widget_feeds','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','f84150f9-96c1-4c46-9a3d-37371593ea04'),(38,16,'m151126_144611_cpNav_addIconSupport','2016-01-19 15:49:53','2016-01-19 15:49:53','2016-01-19 15:49:53','c7915192-1955-4aed-9c46-72ffbfd98da8'),(39,16,'m151224_144611_cpNav_populateIcons','2016-01-19 15:49:53','2016-01-19 15:49:53','2016-01-19 15:49:53','b0c0de49-5d02-4b05-acf0-6326e9630a9e'),(40,25,'m151225_000000_seomatic_addHumansField','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','be0031cc-a464-4f76-a2ca-9526c57266dd'),(41,25,'m151226_000000_seomatic_addTwitterFacebookFields','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','8c60976c-cfb9-4e93-b561-191168cd942f'),(42,25,'m160101_000000_seomatic_addRobotsFields','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','08150c39-519a-4222-8dfd-83db954844c5'),(43,25,'m160111_000000_seomatic_addTitleFields','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','6c7d54bc-41f9-48a5-b739-00f2912505c7'),(48,20,'m160117_000000_reasons_addFieldLayoutIdColumn','2016-01-19 16:53:54','2016-01-19 16:53:54','2016-01-19 16:53:54','34724ab7-fe52-41f9-87ca-ee6b4435ea79'),(49,25,'m160122_000000_seomatic_addTypeFields','2016-02-08 09:46:07','2016-02-08 09:46:07','2016-02-08 09:46:07','8ce216a7-1575-4979-80bc-890db5a21f23'),(50,25,'m160123_000000_seomatic_addOpeningHours','2016-02-08 09:46:07','2016-02-08 09:46:07','2016-02-08 09:46:07','2006f848-5e1b-4b74-b4ed-32bfc0dd74a6'),(51,25,'m160202_000000_seomatic_addSocialHandles','2016-02-08 09:46:08','2016-02-08 09:46:08','2016-02-08 09:46:08','7e72ff9e-a95f-44d4-a0b5-0ea3ed55fe03'),(52,25,'m160204_000000_seomatic_addGoogleAnalytics','2016-02-08 09:46:08','2016-02-08 09:46:08','2016-02-08 09:46:08','c8d5c4d7-2519-47d4-8195-666cb2bd7a4c'),(53,25,'m160205_000000_seomatic_addResturantMenu','2016-02-08 09:46:09','2016-02-08 09:46:09','2016-02-08 09:46:09','f6600475-3680-47b4-93e5-827112386ab8'),(54,25,'m160206_000000_seomatic_addGoogleAnalyticsPlugins','2016-02-08 09:46:09','2016-02-08 09:46:09','2016-02-08 09:46:09','5012d302-c706-485c-bfc2-6f1005340cfa'),(55,25,'m160206_000000_seomatic_addGoogleAnalyticsSendPageView','2016-02-08 09:46:10','2016-02-08 09:46:10','2016-02-08 09:46:10','970c984b-836e-448f-9d92-b730e71ced36'),(56,25,'m160209_000000_seomatic_alterDescriptionsColumns','2016-02-15 11:47:46','2016-02-15 11:47:46','2016-02-15 11:47:46','8392a067-d5be-4ba2-b2a7-77e5da743115'),(57,25,'m160209_000001_seomatic_addRobotsTxt','2016-02-15 11:47:46','2016-02-15 11:47:46','2016-02-15 11:47:46','07257513-deb5-4878-a0d1-ef6ddc7f9535'),(58,NULL,'m160223_000000_sortorder_to_smallint','2016-02-26 12:40:37','2016-02-26 12:40:37','2016-02-26 12:40:37','9588b6e5-da78-40eb-b112-b1618688367a'),(59,25,'m160227_000000_seomatic_addFacebookAppId','2016-03-01 13:46:56','2016-03-01 13:46:56','2016-03-01 13:46:56','c15345dd-a775-4498-85f3-6b5c200bbb35'),(60,NULL,'m160114_000000_asset_sources_public_url_default_true','2016-03-14 09:38:38','2016-03-14 09:38:38','2016-03-14 09:38:38','76131bfa-aac9-4838-b024-06b06f161299'),(61,NULL,'m160229_000000_set_default_entry_statuses','2016-03-14 09:38:38','2016-03-14 09:38:38','2016-03-14 09:38:38','5a0baa99-1351-4f14-833f-c6e36fcad40c'),(62,NULL,'m160304_000000_client_permissions','2016-03-14 09:38:38','2016-03-14 09:38:38','2016-03-14 09:38:38','eba0ff49-3221-4919-9e73-7a74770b311f'),(63,NULL,'m160322_000000_asset_filesize','2016-04-11 13:35:59','2016-04-11 13:35:59','2016-04-11 13:35:59','234ddd8b-d410-40eb-96c6-7f334a512904'),(64,25,'m160416_000000_seomatic_addContactPoints','2016-04-20 17:24:14','2016-04-20 17:24:14','2016-04-20 17:24:14','d99fdc19-6841-41f9-870a-bf17b73cbd40'),(65,NULL,'m160503_000000_orphaned_fieldlayouts','2016-05-06 13:23:51','2016-05-06 13:23:51','2016-05-06 13:23:51','a75d0f00-3535-4273-abc6-54175df947bc'),(66,25,'m160509_000000_seomatic_addSiteLinksBing','2016-05-12 07:40:04','2016-05-12 07:40:04','2016-05-12 07:40:04','ce57b098-b788-4311-8e26-d3eece0a73b9'),(67,NULL,'m160510_000000_tasksettings','2016-05-20 08:59:14','2016-05-20 08:59:14','2016-05-20 08:59:14','eda5bc4f-1d2d-47f4-b0d3-cbb0cd48cdc4'),(71,16,'m160625_000000_cpNav_addCustomIconSupport','2016-08-01 10:06:58','2016-08-01 10:06:58','2016-08-01 10:06:58','4b067cb3-8b53-49de-8404-adbc98cd52f3'),(72,25,'m160707_000000_seomatic_addGoogleTagManager','2016-08-01 10:10:43','2016-08-01 10:10:43','2016-08-01 10:10:43','a79ca235-293d-490d-8ec7-0cb96d6a889f'),(73,25,'m160715_000000_seomatic_addSeoImageTransforms','2016-08-01 10:10:49','2016-08-01 10:10:49','2016-08-01 10:10:49','b6ff90c1-bcae-4c9a-acd5-9cbee968a208'),(74,25,'m160723_000000_seomatic_addSeoMainEntityOfPage','2016-08-01 10:10:49','2016-08-01 10:10:49','2016-08-01 10:10:49','a0f19231-24bd-4ee4-9843-c5d39c948634'),(75,25,'m160724_000000_seomatic_addSeoMainEntityCategory','2016-08-01 10:10:49','2016-08-01 10:10:49','2016-08-01 10:10:49','dab084ae-a963-49ba-920d-95e1e8e0c5b0'),(76,25,'m160811_000000_seomatic_addVimeo','2016-08-17 11:56:29','2016-08-17 11:56:29','2016-08-17 11:56:29','a58e7d90-90d1-4eb3-92f1-aaf8bc1a5ebc'),(77,NULL,'m160829_000000_pending_user_content_cleanup','2016-09-14 09:10:17','2016-09-14 09:10:17','2016-09-14 09:10:17','cabb6533-df2b-4b90-a500-3499ec1ac4dd'),(78,NULL,'m160830_000000_asset_index_uri_increase','2016-09-14 09:10:18','2016-09-14 09:10:18','2016-09-14 09:10:18','e956d954-22b8-45bc-a593-572c6a9ceb60'),(79,25,'m160904_000000_seomatic_addTwitterFacebookImages','2016-09-14 09:10:24','2016-09-14 09:10:24','2016-09-14 09:10:24','da78c383-fa7f-467e-afa2-a8c8985febf5'),(80,NULL,'m160919_000000_usergroup_handle_title_unique','2016-09-30 07:43:49','2016-09-30 07:43:49','2016-09-30 07:43:49','50ef647c-8d70-466a-bac7-11f587f8ecd3'),(81,NULL,'m161108_000000_new_version_format','2016-12-01 09:12:23','2016-12-01 09:12:23','2016-12-01 09:12:23','658a40d1-35f7-4855-baf0-576cb8a3f434'),(82,NULL,'m161109_000000_index_shuffle','2016-12-01 09:12:23','2016-12-01 09:12:23','2016-12-01 09:12:23','2db6a1e5-fe4b-417f-bc65-a7ebb934d59d'),(83,25,'m161220_000000_seomatic_addPriceRange','2017-01-12 08:45:43','2017-01-12 08:45:43','2017-01-12 08:45:43','e5a38355-ac8e-469a-95a2-2ca518807af9'),(84,44,'m150212_145000_AmNav_renamePagesToNodes','2017-02-10 16:45:54','2017-02-10 16:45:54','2017-02-10 16:45:54','8c93b288-9c66-4131-925b-9b2b4d9119de'),(85,44,'m150217_112800_AmNav_expandPageData','2017-02-10 16:45:54','2017-02-10 16:45:54','2017-02-10 16:45:54','0cc5c15e-d94c-4aee-aeb5-30776775d3c9'),(86,44,'m150403_093000_AmNav_nodesWithElements','2017-02-10 16:45:54','2017-02-10 16:45:54','2017-02-10 16:45:54','d0182d52-0c80-4210-ab1c-fbd9430d2442'),(87,44,'m150512_105600_AmNav_addOptionalClass','2017-02-10 16:45:54','2017-02-10 16:45:54','2017-02-10 16:45:54','e5284bbe-64e3-42ec-a77e-b45e7f213f4b'),(88,46,'m160428_202308_Neo_UpdateBlockLevels','2017-02-13 11:46:01','2017-02-13 11:46:02','2017-02-13 11:46:02','ce67b8a0-67c7-4a84-aa24-c1eb456efb17'),(89,46,'m160515_005002_Neo_UpdateBlockStructure','2017-02-13 11:46:01','2017-02-13 11:46:02','2017-02-13 11:46:02','248146b4-c733-4306-8c5d-6a6154883a8c'),(90,46,'m160605_191540_Neo_UpdateBlockStructureLocales','2017-02-13 11:46:01','2017-02-13 11:46:02','2017-02-13 11:46:02','dcec2aaa-a524-480b-aee0-06a82bc21c16'),(91,46,'m161029_230849_Neo_AddMaxChildBlocksSetting','2017-02-13 11:46:01','2017-02-13 11:46:02','2017-02-13 11:46:02','5c98332a-af0a-46b4-9834-83d7dab1331d'),(92,47,'m141026_000000_sproutForms_addFormGroupsTable','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','3373ccad-8ac8-49bf-a376-1d0ccd646ba1'),(93,47,'m141026_020000_sproutForms_renameOldFormsTableAndCreateNewFormsTable','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','6fc65284-d589-46db-bf7c-756b728a9199'),(94,47,'m141026_030000_sproutForms_addFormEntryTable','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','b0171aa1-1f85-4d1e-bbe2-9bfaca50b771'),(95,47,'m141026_060000_sproutForms_migrateFieldsFormsAndEntries','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','e3363c7d-dbd9-43f7-9d19-97e104b30c07'),(96,47,'m150418_000000_sproutForms_addNotificationEnabledSetting','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','3bd90800-abe8-4383-a7c4-4860e9d8d453'),(97,47,'m150629_000000_sproutForms_updateSproutEmailNotificationOptionsFormat','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','d826b04d-df25-48aa-a356-d3166da19acb'),(98,47,'m151006_000000_sproutForms_addTemplateOverrides','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','13db670e-412f-46d3-9821-769198f2105b'),(99,47,'m151007_000000_sproutForms_addFileAttachments','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','e492ef71-280a-4f06-bcc9-b6c375d8b490'),(100,47,'m160405_000000_sproutForms_addSavePayloadColumn','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','629b2964-677d-46af-927d-50912aacbadb'),(101,47,'m160509_000000_sproutForms_addEntryStatusTable','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','5cb48f82-57cd-476b-876f-8d1f47a68cbf'),(102,47,'m160509_010000_sproutForms_addStatusIdColumn','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','bf7d802c-9640-4fb8-9e16-88c6085e43da'),(103,47,'m160509_030000_sproutForms_addStatusIdFk','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','307a33f1-5dd8-4264-8126-85e6585e55d6'),(104,47,'m160510_000000_sproutForms_installDefaultEntryStatuses','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','518633d5-92ce-4191-9b4d-cd49206c83c3'),(105,47,'m160511_000000_sproutForms_setDefaultColorToEntries','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','2a189a7d-0614-4e22-951f-ac82a9bdd41d'),(106,47,'m160524_000000_sproutForms_setAdvancedSettings','2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 13:38:56','a3f710d3-15de-49ae-b00a-838841bb54f9');
/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_neoblocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_neoblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `collapsed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_neoblocks_ownerId_idx` (`ownerId`),
  KEY `craft_neoblocks_fieldId_idx` (`fieldId`),
  KEY `craft_neoblocks_typeId_idx` (`typeId`),
  KEY `craft_neoblocks_collapsed_idx` (`collapsed`),
  KEY `craft_neoblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_neoblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_neoblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_neoblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_neoblocks`
--

LOCK TABLES `craft_neoblocks` WRITE;
/*!40000 ALTER TABLE `craft_neoblocks` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_neoblocks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_neoblockstructures`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_neoblockstructures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_neoblockstructures_structureId_idx` (`structureId`),
  KEY `craft_neoblockstructures_ownerId_idx` (`ownerId`),
  KEY `craft_neoblockstructures_fieldId_idx` (`fieldId`),
  KEY `craft_neoblockstructures_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_neoblockstructures_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblockstructures_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblockstructures_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_neoblockstructures_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_neoblockstructures`
--

LOCK TABLES `craft_neoblockstructures` WRITE;
/*!40000 ALTER TABLE `craft_neoblockstructures` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_neoblockstructures` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_neoblocktypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_neoblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maxBlocks` int(11) DEFAULT '0',
  `maxChildBlocks` int(11) DEFAULT '0',
  `childBlocks` text COLLATE utf8_unicode_ci,
  `topLevel` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_neoblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_neoblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_neoblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_neoblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_neoblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_neoblocktypes`
--

LOCK TABLES `craft_neoblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_neoblocktypes` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_neoblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_neogroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_neogroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_neogroups_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_neogroups_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_neogroups`
--

LOCK TABLES `craft_neogroups` WRITE;
/*!40000 ALTER TABLE `craft_neogroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_neogroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_plugins`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_plugins`
--

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_plugins` VALUES (1,'Directory','1.0.12',NULL,NULL,'unknown',1,NULL,'2014-10-08 10:52:21','2014-10-08 10:52:21','2014-10-08 10:52:21','aba3661c-99d2-4d34-9788-30e05197134f'),(3,'ObsoleteRedirect','0.1.0',NULL,NULL,'unknown',1,NULL,'2015-05-14 10:49:46','2015-05-14 10:49:46','2017-02-13 21:35:22','94eaed70-d03e-430c-be1f-18f0a30612d4'),(5,'AssetRev','3.0.0',NULL,NULL,'unknown',1,'{\"manifestPath\":\"..\\/cachebust.json\"}','2015-06-16 14:53:46','2015-06-16 14:53:46','2017-02-13 21:35:22','5c6c2959-e9ef-49b3-b92b-8529b4157f0d'),(6,'Guano','0.2',NULL,NULL,'unknown',1,NULL,'2015-10-08 11:08:49','2015-10-08 11:08:49','2017-02-13 21:35:22','feba2548-9685-4cfb-ad7a-d1e4776bb9cc'),(8,'ImageResizer','0.1.4','1.0.0',NULL,'unknown',1,'{\"enabled\":\"1\",\"imageWidth\":\"2048\",\"imageHeight\":\"2048\",\"imageQuality\":\"100\",\"assetSources\":\"*\"}','2015-10-23 10:00:34','2015-10-23 10:00:34','2017-02-13 21:35:22','4c10ef35-fcc0-4f06-9d43-c6d14622a053'),(9,'SuperTable','1.0.2','1.0.0',NULL,'unknown',1,NULL,'2015-10-23 15:33:34','2015-10-23 15:33:34','2017-02-13 21:35:22','f99b9499-b2b3-4189-9f1d-c4554def3374'),(11,'EntryTitleEditable','1.0',NULL,NULL,'unknown',1,NULL,'2015-10-23 16:17:02','2015-10-23 16:17:02','2016-01-19 15:50:10','07dc8a59-da92-47cc-9f30-759d07e05ac3'),(12,'LabelEnvironment','0.1.0',NULL,NULL,'unknown',1,'{\"colorMappings\":{\"development\":\"#000000\",\"staging\":\"#0000ff\",\"preview\":\"#ff0000\",\"production\":\"#16c68e\"},\"prefix\":\"\",\"suffix\":\"\"}','2015-10-25 11:35:32','2015-10-25 11:35:32','2017-02-13 21:35:22','7b4fe278-6804-4f70-b0bf-e61c7fdf6d2c'),(16,'CpNav','1.7.6','1.1.0',NULL,'unknown',1,'{\"showQuickAddMenu\":\"\"}','2015-10-25 12:33:15','2015-10-25 12:33:15','2017-02-13 21:35:22','0b042902-349c-41ef-98d8-bb2a31b445cd'),(17,'Imager','1.3.0','1.0.0',NULL,'unknown',1,NULL,'2015-10-30 15:57:14','2015-10-30 15:57:14','2017-02-13 21:35:22','b0c87aa0-53d6-4420-a297-2211da547370'),(19,'CpFieldLinks','1.2.2','1.0',NULL,'unknown',1,NULL,'2015-11-13 09:56:41','2015-11-13 09:56:41','2017-02-13 21:35:22','d5fd8f41-473d-42e9-9145-bf64eea6d7f3'),(20,'Reasons','1.0.8','1.1',NULL,'unknown',1,NULL,'2015-11-13 10:49:20','2015-11-13 10:49:20','2017-02-13 21:35:22','208a9b9d-dc2c-48a3-92f5-7e6da66d905a'),(22,'QuickField','0.3.4','1.0.0',NULL,'unknown',1,NULL,'2015-12-08 09:34:10','2015-12-08 09:34:10','2017-02-13 21:35:22','e8aac0ec-e200-4781-aacb-465aa765abb4'),(24,'FocalPointField','1.0.2',NULL,NULL,'unknown',1,NULL,'2016-01-19 15:57:13','2016-01-19 15:57:13','2017-02-13 21:35:22','623245d2-1fe2-4cbb-b4d6-405c5667e449'),(25,'Seomatic','1.1.40','1.1.23',NULL,'unknown',1,NULL,'2016-01-19 16:04:43','2016-01-19 16:04:43','2017-02-13 21:35:22','8f159c1e-3a2a-4b08-adc7-1cac6fb79747'),(26,'Sitemap','v1.0.0-alpha.4',NULL,NULL,'unknown',1,NULL,'2016-01-19 16:13:28','2016-01-19 16:13:28','2017-02-13 21:35:22','273cbb5c-e494-4e7b-aabd-464c3e5fb078'),(29,'Relabel','0.1.3','1.0.0',NULL,'unknown',1,NULL,'2016-01-19 16:57:21','2016-01-19 16:57:21','2017-02-13 21:35:22','5294ce3b-08d7-4bd3-8e2f-6ff84c6cb5ca'),(35,'Inlin','1.1',NULL,NULL,'unknown',1,NULL,'2016-04-12 14:46:20','2016-04-12 14:46:20','2017-02-13 21:35:22','dc6d6c60-82fe-4d66-bf61-d6c6fad7a3d8'),(41,'SidebarEnhancer','1.0.5','1.0.0',NULL,'unknown',1,NULL,'2016-08-23 15:05:37','2016-08-23 15:05:37','2017-02-13 21:35:22','727e244d-3684-49e7-b6c9-175cd8bc7de3'),(43,'Minify','1.1.1','1.0.0',NULL,'unknown',1,NULL,'2016-09-14 09:50:49','2016-09-14 09:50:49','2017-02-13 21:35:22','43ad78cb-1618-4d15-b6d9-92ca5769fbfc'),(44,'AmNav','1.7.4','1.7.4',NULL,'unknown',1,NULL,'2017-02-10 16:45:54','2017-02-10 16:45:54','2017-02-13 21:35:22','47e63280-74ae-4559-9955-6260acdda562'),(45,'Hue','1.0.0','0.0.0.0',NULL,'unknown',1,NULL,'2017-02-10 16:50:59','2017-02-10 16:50:59','2017-02-13 21:35:22','63c64d4b-db6b-4933-a611-014cd2a70749'),(46,'Neo','1.4.0','1.4.0',NULL,'unknown',1,NULL,'2017-02-13 11:46:01','2017-02-13 11:46:01','2017-02-13 21:35:22','40cf7d58-b23b-4e8a-84d6-c3b7dfd88980'),(47,'SproutForms','2.3.5','2.3.0',NULL,'unknown',1,NULL,'2017-02-13 13:38:56','2017-02-13 13:38:56','2017-02-13 21:35:22','5f9173bc-57b6-46cb-9189-312e0f593b18');
/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_rackspaceaccess`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_rackspaceaccess`
--

LOCK TABLES `craft_rackspaceaccess` WRITE;
/*!40000 ALTER TABLE `craft_rackspaceaccess` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_rackspaceaccess` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_reasons`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `conditionals` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_reasons_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_reasons_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_reasons`
--

LOCK TABLES `craft_reasons` WRITE;
/*!40000 ALTER TABLE `craft_reasons` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_reasons` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_relabel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_relabel_fieldId_fk` (`fieldId`),
  KEY `craft_relabel_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_relabel_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relabel_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_relabel`
--

LOCK TABLES `craft_relabel` WRITE;
/*!40000 ALTER TABLE `craft_relabel` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_relabel` VALUES (9,23,116,'Ingress',NULL,'2017-02-13 22:04:02','2017-02-13 22:04:02','242d649c-e0ba-4d1c-8862-2e18bd543e01');
/*!40000 ALTER TABLE `craft_relabel` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_relations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_relations`
--

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_relations` VALUES (124,22,2,NULL,8,1,'2017-02-13 15:27:22','2017-02-13 15:27:22','2d6e3123-f1a1-48b2-9802-221f3b211989'),(125,28,10,NULL,15,1,'2017-02-13 15:27:22','2017-02-13 15:27:22','3a8efa5d-849a-4635-876d-825477ceddb9'),(126,28,11,NULL,16,1,'2017-02-13 15:27:22','2017-02-13 15:27:22','ec3d45d7-eef3-452e-ab12-b98464ea5cea'),(127,49,18,NULL,7,1,'2017-02-13 15:27:22','2017-02-13 15:27:22','bce2dd74-ecbc-401d-89d0-1d05ee9944c7'),(128,77,30,NULL,29,1,'2017-02-13 15:27:22','2017-02-13 15:27:22','8c40fbf1-45af-43dd-87e0-52216d8c6eff');
/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_routes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  KEY `craft_routes_locale_idx` (`locale`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_routes`
--

LOCK TABLES `craft_routes` WRITE;
/*!40000 ALTER TABLE `craft_routes` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_routes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_searchindex`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_searchindex`
--

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_searchindex` VALUES (1,'username',0,'nb_no',' mustasj '),(1,'firstname',0,'nb_no',''),(1,'lastname',0,'nb_no',''),(1,'fullname',0,'nb_no',''),(1,'email',0,'nb_no',' dev mustasj no '),(1,'slug',0,'nb_no',''),(2,'slug',0,'nb_no',' forside '),(2,'title',0,'nb_no',' forside '),(3,'slug',0,'nb_no',' restaurant '),(3,'title',0,'nb_no',' restaurant '),(4,'slug',0,'nb_no',' selskap '),(4,'title',0,'nb_no',' selskap '),(5,'slug',0,'nb_no',' kristiansten festning '),(5,'title',0,'nb_no',' kristiansten festning '),(6,'field',21,'nb_no',''),(6,'field',18,'nb_no',''),(6,'filename',0,'nb_no',' dsc8592 jpg '),(6,'extension',0,'nb_no',' jpg '),(6,'kind',0,'nb_no',' image '),(6,'slug',0,'nb_no',' dsc8592 '),(6,'title',0,'nb_no',' dsc8592 '),(7,'field',21,'nb_no',''),(7,'field',18,'nb_no',''),(7,'filename',0,'nb_no',' dsc8599 jpg '),(7,'extension',0,'nb_no',' jpg '),(7,'kind',0,'nb_no',' image '),(7,'slug',0,'nb_no',' dsc8599 '),(7,'title',0,'nb_no',' dsc8599 '),(2,'field',22,'nb_no',' dsc8592 '),(2,'field',23,'nb_no',' pa historiske kristiansten festning i trondheim ligger restaurant kommandanten i den gamle kommandant boligen '),(8,'field',18,'nb_no',' 50 35% 67 35% '),(8,'field',21,'nb_no',''),(8,'filename',0,'nb_no',' dsc8592 jpg '),(8,'extension',0,'nb_no',' jpg '),(8,'kind',0,'nb_no',' image '),(8,'slug',0,'nb_no',' dsc8592 '),(8,'title',0,'nb_no',' dsc8592 '),(9,'field',18,'nb_no',''),(9,'field',21,'nb_no',''),(9,'filename',0,'nb_no',' dsc8599 jpg '),(9,'extension',0,'nb_no',' jpg '),(9,'kind',0,'nb_no',' image '),(9,'slug',0,'nb_no',' dsc8599 '),(9,'title',0,'nb_no',' dsc8599 '),(2,'field',25,'nb_no',' festningen servering og kulturarena '),(2,'field',26,'nb_no',' clock tlf 450 52 666 tirsdag fredag 11 00 23 00 lordag sondag 11 00 23 00 moter og selskap etter avtale apningstider icon booking send epost reserver bord eller book egne dedikerte selskapslokaler med eget vertskap og underholdning booking '),(10,'field',27,'nb_no',' apningstider '),(10,'field',28,'nb_no',' clock '),(10,'field',29,'nb_no',' tirsdag fredag 11 00 23 00 lordag sondag 11 00 23 00 moter og selskap etter avtale '),(10,'field',30,'nb_no',' tlf 450 52 666 '),(10,'slug',0,'nb_no',''),(11,'field',27,'nb_no',' booking '),(11,'field',28,'nb_no',' icon booking '),(11,'field',29,'nb_no',' reserver bord eller book egne dedikerte selskapslokaler med eget vertskap og underholdning '),(11,'field',30,'nb_no',' send epost '),(11,'slug',0,'nb_no',''),(2,'field',31,'nb_no',' dsc8599 restauranten left lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi les mer dsc8592 dobbel restaurant right lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi les mer dsc8599 kuk right test '),(2,'field',54,'nb_no',''),(20,'handle',0,'nb_no',' contact '),(20,'slug',0,'nb_no',''),(21,'name',0,'nb_no',' basic fields form '),(21,'handle',0,'nb_no',' basic '),(21,'slug',0,'nb_no',''),(20,'name',0,'nb_no',' contact form '),(15,'filename',0,'nb_no',' clock svg '),(15,'extension',0,'nb_no',' svg '),(15,'kind',0,'nb_no',' image '),(15,'slug',0,'nb_no',' clock '),(15,'title',0,'nb_no',' clock '),(16,'filename',0,'nb_no',' icon booking svg '),(16,'extension',0,'nb_no',' svg '),(16,'kind',0,'nb_no',' image '),(16,'slug',0,'nb_no',' icon booking '),(16,'title',0,'nb_no',' icon booking '),(2,'field',46,'nb_no',' dsc8599 restauranten lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore les mer icon soup lunsj11 00 16 00 klassisk16 00 23 00 ukens 3 retter16 00 23 00 les mer ukens 3 retter lunsj og klassisk meny lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi les mer '),(18,'field',47,'nb_no',' restauranten '),(18,'field',48,'nb_no',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore les mer '),(18,'field',49,'nb_no',' dsc8599 '),(18,'slug',0,'nb_no',''),(19,'field',50,'nb_no',' ukens 3 retter lunsj og klassisk meny '),(19,'field',51,'nb_no',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi sed do eiusmod tempor incididunt ut l abore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi les mer '),(19,'field',52,'nb_no',' icon soup lunsj11 00 16 00 klassisk16 00 23 00 ukens 3 retter16 00 23 00 les mer '),(19,'slug',0,'nb_no',''),(27,'filename',0,'nb_no',' icon search svg '),(27,'extension',0,'nb_no',' svg '),(27,'kind',0,'nb_no',' image '),(27,'slug',0,'nb_no',' icon search '),(27,'title',0,'nb_no',' icon search '),(28,'filename',0,'nb_no',' icon silhouette svg '),(28,'extension',0,'nb_no',' svg '),(28,'kind',0,'nb_no',' image '),(28,'slug',0,'nb_no',' icon silhouette '),(28,'title',0,'nb_no',' icon silhouette '),(29,'filename',0,'nb_no',' icon soup svg '),(29,'extension',0,'nb_no',' svg '),(29,'kind',0,'nb_no',' image '),(29,'slug',0,'nb_no',' icon soup '),(29,'title',0,'nb_no',' icon soup '),(19,'field',76,'nb_no',''),(30,'field',77,'nb_no',' icon soup '),(30,'field',78,'nb_no',' lunsj11 00 16 00 klassisk16 00 23 00 ukens 3 retter16 00 23 00 les mer '),(30,'slug',0,'nb_no','');
/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sections`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections`
--

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sections` VALUES (1,NULL,'Forside','forside','single',1,'index',1,'2017-02-10 15:29:45','2017-02-10 15:29:45','e237f024-262c-4886-8869-e9324bee31bc'),(2,NULL,'Restaurant','restaurant','single',1,'restaurant',1,'2017-02-10 15:30:01','2017-02-10 15:30:01','2bda4c6b-a0e6-41cb-abcc-48944b4e1685'),(3,NULL,'Selskap','selskap','single',1,'selskap',1,'2017-02-10 15:30:11','2017-02-10 15:30:11','b395e580-9e19-4bc4-9f44-f1d9dcad7c2c'),(4,NULL,'Kristiansten festning','kristianstenFestning','single',1,'kristiansten-festning',1,'2017-02-10 15:30:28','2017-02-10 15:30:28','90bf6aa8-a2af-4c9d-a209-5d20bc04272a'),(5,NULL,'Oppskrifter','oppskrifter','channel',0,NULL,1,'2017-02-10 15:44:00','2017-02-10 15:44:00','10e85eec-66d4-4e96-a479-2a3332c2ad2c'),(6,NULL,'Ingredienser','ingredienser','channel',0,NULL,1,'2017-02-10 15:44:13','2017-02-10 15:44:13','4c13035a-7c84-4e61-8248-cdd894afadbd');
/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sections_i18n`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections_i18n`
--

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sections_i18n` VALUES (1,1,'nb_no',1,'__home__',NULL,'2017-02-10 15:29:45','2017-02-10 15:29:45','cf9c3aac-8309-4171-836a-54158d1279e3'),(2,2,'nb_no',1,'restaurant',NULL,'2017-02-10 15:30:01','2017-02-10 15:30:01','a7bf8ae6-e379-4b92-a41d-e9e737d34437'),(3,3,'nb_no',1,'selskap',NULL,'2017-02-10 15:30:11','2017-02-10 15:30:11','48e9b469-7e90-49d2-aca0-1d630cb0d46b'),(4,4,'nb_no',1,'kristiansten-festning',NULL,'2017-02-10 15:30:28','2017-02-10 15:30:28','4ec5f640-1fc0-45b5-95e3-255f9e8cdd5c'),(5,5,'nb_no',1,NULL,NULL,'2017-02-10 15:44:00','2017-02-10 15:44:00','403552a2-3968-48b7-81d6-26a1b17223d8'),(6,6,'nb_no',1,NULL,NULL,'2017-02-10 15:44:13','2017-02-10 15:44:13','c173363a-ea82-4428-b1ac-3fb2cabde92f');
/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_seomatic_meta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_seomatic_meta` (
  `id` int(11) NOT NULL,
  `seoImageId` int(11) DEFAULT NULL,
  `seoFacebookImageId` int(11) DEFAULT NULL,
  `seoTwitterImageId` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'nb_no',
  `elementId` int(10) DEFAULT '0',
  `metaType` enum('default','template') COLLATE utf8_unicode_ci DEFAULT 'template',
  `metaPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoMainEntityCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoMainEntityOfPage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoTwitterImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoFacebookImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitterCardType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'summary',
  `openGraphType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'website',
  `robots` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_seomatic_meta_seoImageId_fk` (`seoImageId`),
  CONSTRAINT `craft_seomatic_meta_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_seomatic_meta_seoImageId_fk` FOREIGN KEY (`seoImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_seomatic_meta`
--

LOCK TABLES `craft_seomatic_meta` WRITE;
/*!40000 ALTER TABLE `craft_seomatic_meta` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_seomatic_meta` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_seomatic_settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_seomatic_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteSeoImageId` int(11) DEFAULT NULL,
  `siteSeoFacebookImageId` int(11) DEFAULT NULL,
  `siteSeoTwitterImageId` int(11) DEFAULT NULL,
  `genericOwnerImageId` int(11) DEFAULT NULL,
  `genericCreatorImageId` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTitleSeparator` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteSeoTitlePlacement` enum('before','after','none') COLLATE utf8_unicode_ci DEFAULT 'after',
  `siteSeoDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTwitterImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteSeoFacebookImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteSeoImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTwitterCardType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteOpenGraphType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteRobots` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteRobotsTxt` text COLLATE utf8_unicode_ci NOT NULL,
  `siteLinksQueryInput` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteLinksSearchTargets` text COLLATE utf8_unicode_ci NOT NULL,
  `googleSiteVerification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bingSiteVerification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAnalyticsAdvertising` tinyint(1) NOT NULL,
  `googleAnalyticsLinker` tinyint(1) NOT NULL,
  `googleAnalyticsLinkAttribution` tinyint(1) NOT NULL,
  `googleAnalyticsEEcommerce` tinyint(1) NOT NULL,
  `googleAnalyticsEcommerce` tinyint(1) NOT NULL,
  `googleAnalyticsUID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleTagManagerID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAnalyticsSendPageview` tinyint(1) NOT NULL,
  `siteOwnerType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteOwnerSpecificType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteOwnerSubType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genericOwnerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAlternateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerDescription` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genericOwnerUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerTelephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerStreetAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressLocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerPostalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerGeoLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerGeoLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerDuns` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFounder` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFoundingDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFoundingLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerContactPoints` text COLLATE utf8_unicode_ci NOT NULL,
  `localBusinessPriceRange` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localBusinessOwnerOpeningHours` text COLLATE utf8_unicode_ci NOT NULL,
  `corporationOwnerTickerSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerServesCuisine` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerReservationsUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurantOwnerMenuUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personOwnerGender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personOwnerBirthPlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `twitterHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookProfileId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookAppId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedInHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googlePlusHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtubeHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtubeChannelHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagramHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterestHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `githubHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vimeoHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteCreatorType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteCreatorSpecificType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteCreatorSubType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genericCreatorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAlternateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorDescription` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genericCreatorUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorTelephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorStreetAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressLocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorPostalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorGeoLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorGeoLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorDuns` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFounder` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFoundingDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFoundingLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorContactPoints` text COLLATE utf8_unicode_ci NOT NULL,
  `localBusinessCreatorOpeningHours` text COLLATE utf8_unicode_ci NOT NULL,
  `corporationCreatorTickerSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantCreatorServesCuisine` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurantCreatorReservationsUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurantCreatorMenuUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personCreatorGender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personCreatorBirthPlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorHumansTxt` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_seomatic_settings_siteSeoImageId_fk` (`siteSeoImageId`),
  KEY `craft_seomatic_settings_genericOwnerImageId_fk` (`genericOwnerImageId`),
  KEY `craft_seomatic_settings_genericCreatorImageId_fk` (`genericCreatorImageId`),
  CONSTRAINT `craft_seomatic_settings_genericCreatorImageId_fk` FOREIGN KEY (`genericCreatorImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_seomatic_settings_genericOwnerImageId_fk` FOREIGN KEY (`genericOwnerImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_seomatic_settings_siteSeoImageId_fk` FOREIGN KEY (`siteSeoImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_seomatic_settings`
--

LOCK TABLES `craft_seomatic_settings` WRITE;
/*!40000 ALTER TABLE `craft_seomatic_settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_seomatic_settings` VALUES (1,NULL,NULL,NULL,NULL,NULL,'nb_no','Standardcraft','','|','after','This is the default global natural language description of the content on the site pages.','default,global,comma-separated,keywords','','','','summary','website','','# robots.txt for {{ siteUrl }}\r\n\r\nSitemap: {{ siteUrl }}sitemap.xml\r\n\r\n# Don\'t allow web crawlers to index Craft\r\n\r\nUser-agent: *\r\nDisallow: /craft/\r\n','','[]','','',0,0,0,0,0,'','',0,'Organization','','Corporation','Standardcraft','','','http://craft.dev/','','','','','','','','','','','','','','[]','','[{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"}]','','','','','Male','','','','','','','','','','','','','','LocalBusiness','','','Mustasj','','','http://mustasj.no','+4748313760','post@mustasj.no','Kjøpmannsgata 7','Trondheim','Sør Trøndelag','7014','Norge','63.42890269999999','10.4011382','','','','','[{\"telephone\":\"+4748313760\",\"contactType\":\"customer support\"}]','','','','','','Male','','/* TEAM */\r\n\r\n{% if seomaticCreator.name is defined and seomaticCreator.name %}\r\nCreator: {{ seomaticCreator.name }}\r\n{% endif %}\r\n{% if seomaticCreator.url is defined and seomaticCreator.url %}\r\nURL: {{ seomaticCreator.url }}\r\n{% endif %}\r\n{% if seomaticCreator.description is defined and seomaticCreator.description %}\r\nDescription: {{ seomaticCreator.description }}\r\n{% endif %}\r\n\r\n/* THANKS */\r\n\r\nPixel & Tonic - https://pixelandtonic.com\r\n\r\n/* SITE */\r\n\r\nStandards: HTML5, CSS3\r\nComponents: Craft CMS, Yii, PHP, Javascript, SEOmatic','2016-01-19 16:04:47','2016-06-08 12:37:30','17e178ee-774b-4217-97d0-4548dd640b67');
/*!40000 ALTER TABLE `craft_seomatic_settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sessions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sessions`
--

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sessions` VALUES (53,1,'4893bef3c369df586e564b24061bf61b7cc38aa3czozMjoibldQaHBhdzVGMlFtYzdBWmVwVFRLUHhfaG5ZcmZ+MG4iOw==','2016-03-14 09:36:21','2016-03-14 09:36:21','5969dd47-805e-446c-a8f2-1b9864f85784'),(54,1,'36017137ebdc38be935a53fa9f3ede3bd3134846czozMjoiWkVkZWNGOUl4WXp3dG52RUdTbFNKd19vbk5ZRmZyanIiOw==','2016-03-15 14:27:23','2016-03-15 14:27:23','e975b2e2-d4c0-4248-a5df-440f68a0cde1'),(55,1,'82b5a4d5a78de76d120ef24a0121ade326160d14czozMjoiaWhjM05KZnpIX1B6S2NGSjRRbUtHSmw4aVNLVU1oQXEiOw==','2016-03-18 09:50:35','2016-03-18 09:50:35','56089d91-4731-4e3f-b205-eecacf2f0ba6'),(56,1,'35c2fa56be21797c9fdcf9ad36ab1112a0bfaf3bczozMjoiZUE3eFVGV2lfUmREV2NPdlFmUW1UYmNoSVBHemRUVlciOw==','2016-03-23 14:49:15','2016-03-23 14:49:15','d9125f70-1082-472e-98fd-e4be3c4b2be3'),(57,1,'4af3f2d2885e60b54cdcf06f2260fe9b9ed842f5czozMjoifmg1OWE0bjZvdDhoalJxNllWMjloUWdLTHNrcHZQV2wiOw==','2016-04-11 13:26:42','2016-04-11 13:26:42','bad8b6cb-52cb-4468-9980-a412255bd198'),(58,1,'2bebeae4bc62cc32e9438359bba2721227c42fcbczozMjoibmNWQjh1bkhVdUF6d3o3d185MkppNzJsbHBmbHVma1AiOw==','2016-04-12 14:45:38','2016-04-12 14:45:38','0028cafe-b363-4302-803b-96a1217579c2'),(59,1,'93982bf48378d278e89c5181578c1ef1b291b199czozMjoiOGVTRVBwSnJGTTRBWnZmdXpfSlRqRnFpOTJDYU5qUVUiOw==','2016-04-20 17:24:44','2016-04-20 17:24:44','cf15adf5-a2c8-4ed0-bda3-467ab4679182'),(60,1,'08e530b0f90255576b2cfa6dab822e7eeb722b18czozMjoiMUlid1NzVHVTdmtfMlA0SExZdklrQ3BHZGVsaHhrUE8iOw==','2016-04-26 11:07:10','2016-04-26 11:07:10','8953fec6-ce13-46ea-b188-29acf0daebb5'),(61,1,'c467fa26071f9348c29cab0fda4fb4d99e84dad3czozMjoiRjgxeE10SmVKc0IwSnoxajNSZHdzdGZ6QUVoMzZDT1oiOw==','2016-04-27 16:17:45','2016-04-27 16:17:45','f1aa051d-f85f-497e-9ab5-ad9ae6a1f9d3'),(62,1,'180823852cc582bfc4f803ab3e0cd7d796ba1be6czozMjoidXY4VlpWNDA1cXFIaFV3WTBFZmdDZn55VHVqbVJ2dXYiOw==','2016-04-29 15:12:50','2016-04-29 15:12:50','28ec656e-466c-4f19-b0e0-4af8493a2719'),(63,1,'475d52a0118759839fb87e90bbde9e8db443bdb0czozMjoiWkx3ZUo2TkJwTXVrck9hWU5iaXRiZVBRa2lIQ3gxcXkiOw==','2016-05-03 09:06:40','2016-05-03 09:06:40','80db662e-d0a0-41d3-80b4-3be2e629d90e'),(64,1,'02dd0c6652e90e0ea0b75778c3c28df0acd68c1cczozMjoiVFY3a09DXzNzMFFJUnFwRkRDbnEwa1lJckhDTFdnSngiOw==','2016-05-06 13:23:12','2016-05-06 13:23:12','fc38a153-0e41-476a-aa77-70f9c6855c7e'),(65,1,'6175a888ee253077c2d3e32afb232125088fe36dczozMjoiR0pkOEpsWkFNMXU2dlRqZVRUWGtCYWV0VDFzYjBnUzQiOw==','2016-05-09 10:56:50','2016-05-09 10:56:50','09a2e14d-6bd7-4c46-b45d-c52a9d6870d9'),(66,1,'81efffa26cf4259896a52d69b508bdee1d185042czozMjoiaVc0aXViM0NWWmtBN1pGdG5MbmRvVX5LbmlVTFNJUm8iOw==','2016-05-12 07:37:44','2016-05-12 07:37:44','f0471e5f-1389-4955-9056-ecb67a7d0de6'),(67,1,'495b9d0d119e5c1f8a4bb0f4e369cfd02b737939czozMjoiaXo0amZQR2VYQ34wUlFCfk12bTZYY3ltN1llekZrSDIiOw==','2016-05-13 14:52:00','2016-05-13 14:52:00','7a3b86d8-289a-4898-a33d-a066761ebc23'),(68,1,'ad8bbcc960a2a15e3f25b4adc85eb3fce43f0828czozMjoiZTdSeGdMWmdYVUhrVGFBWmo2aGVEU0ZWdGhBa2FnUGIiOw==','2016-05-20 08:58:11','2016-05-20 08:58:11','2cf41f3c-82d3-448c-889e-c5a40ee09f93'),(71,1,'d5a55979383a4f50847655aae1aa4e90e7a05213czozMjoia1NQfjFQT25qUzM2TzJrOTVNZW9Wa1dENU9GYXNmSHkiOw==','2016-05-25 09:56:09','2016-05-25 09:56:09','17a43c6b-fc7f-4e65-9cfd-1aa5d0823b63'),(72,1,'a29e5c409c332e141eaf74bf3dffcccf72b06764czozMjoiaTlkZGhhc3dEQU9rOHZPcGJzSTkwM0dMenFiX2ZVUlUiOw==','2016-06-03 08:20:18','2016-06-03 08:20:18','0345ad3b-b82f-4546-b01a-9df6621e0a3d'),(73,1,'44388df253fdec281d239483bd584da847fd6d5fczozMjoiRl92M1BmSUh4WWNHbHZLM0t+RUhhM3lySFJ5M1FkOEciOw==','2016-06-08 07:59:47','2016-06-08 12:34:48','75a63239-7e89-4af4-9205-3272e11b2499'),(74,1,'e09831dc4e4ac2c7ef0028b5c7c9d7234b0d9af6czozMjoiUHBHUHdZQnpoVGMwT0pMMGo0a1I4STdYeUR4RF83UF8iOw==','2016-06-10 07:36:42','2016-06-10 07:36:42','d0e01652-f6cd-4f1b-b441-cbaf73e8192d'),(75,1,'fa6c243428f428172a04a38fdaca340a188a29eeczozMjoib05wWUxKfmdaelFrT35uWXdzcEZiaTl6QjJuSkVod18iOw==','2016-06-14 07:14:28','2016-06-14 07:14:28','21259194-1de9-43c3-b722-52ef29a58fa3'),(76,1,'be201ca9d7234b1aac7d91ca449418b0b3899692czozMjoiaG42NVN+NUhFT1BjeWFXM2REUkZjUGdkQlRTVTZyZ3oiOw==','2016-08-01 10:07:11','2016-08-01 10:07:11','22bb5781-502a-4c7c-befc-685b653b5ddf'),(77,1,'cf642d761c968d67f6b3e37a695691796d321aa0czozMjoiVHpDQ3BEUk9ldjVqNExNaH50fmVxWVVYY3FYQkJuUm8iOw==','2016-08-01 10:41:26','2016-08-01 10:41:26','260f8739-4f1a-4f82-8fd1-9bb783074a98'),(78,1,'da8391b9922675b8a056bb11d464dc83ab7ae16cczozMjoiYTBNa0VLMk5OV0lzYUtiaFZNT25mRFZ2bkdFR0ExSFciOw==','2016-08-17 11:54:42','2016-08-17 11:54:42','467f3d6e-bc2e-439e-96f4-431f77b6bdca'),(79,1,'69812d4362ba7edb222763dcea11dad4bfe150bfczozMjoiYjh2S2ZqQkdKb3p1RjRFSmRZeFdzQWtIVlJWYjRkR34iOw==','2016-08-23 15:03:32','2016-08-23 15:03:32','03e0cad1-4ad9-478d-b1c5-bf294ec097ad'),(80,1,'c578675eaabe059ae56f4560caa1e1c49a719e62czozMjoiVTZtOHl4MU44cG1BUFlMaXF3dzkwWnd3TGNoVWNNQmMiOw==','2016-09-14 08:33:28','2016-09-14 08:33:28','3c99c03a-c802-41d1-9458-a7f3c07de6aa'),(81,1,'29058073eddc6773a511628f5a45289cd334d36bczozMjoiNnBlVEVMMTE5Z3VUTHNnR1FDalowVm5LTElsM1BDaWciOw==','2016-09-14 13:26:15','2016-09-14 13:26:15','ec72a6f0-e996-4fea-890e-960ee8f60601'),(82,1,'4bb2bbdc8992f03a9982d0b2a5f73bd402baee9dczozMjoiZG5JWmMwNjVffkFZblBqaGU1ZXZST21xUGNRcjdIV3AiOw==','2016-09-30 07:40:08','2016-09-30 07:40:08','77def9cd-6203-433c-aed4-ebcc15125c61'),(83,1,'e25cfc8a3dffc4303e8cc6b14754b9897116bc6aczozMjoiQjR3ZTN+SUxfZUt0czQ0ZjY2VlY0d35fNEpkYTVlODMiOw==','2016-10-13 07:58:15','2016-10-13 07:58:15','422953fa-3878-4d8f-a191-34024da92399'),(84,1,'3cb48e906f4fbfb4323a5d13b1c6b9a93fa36ad0czozMjoiNXExQV9BNGpjWTQxdnRWTFpoUzNIbVhBck5YZnBDRmoiOw==','2016-11-07 18:24:53','2016-11-07 18:24:53','c6cf1893-ad92-458d-8046-2fb33dcc176c'),(85,1,'90c1ca98d4224e3867335eadbbd0ecd978ab7ba1czozMjoieDhOcjZCamdaYkhWV3ZQbVJrN0toNXFfWDU2WmVkS1giOw==','2016-11-14 09:36:36','2016-11-14 09:36:36','cdde5745-f601-4d80-b84c-f2f3fd33f704'),(86,1,'4b1f749761ec6831b461da8955a2a1364f0b4aceczozMjoiaV9YRzhXbzBpamFpR1ZhZTFEVGptaHdsaFlDalYxOWMiOw==','2016-12-01 09:06:33','2016-12-01 09:06:33','5d58b5b8-3bbc-498a-ab29-b1ead1893ef1'),(87,1,'56d7eafd5420368bc2b7b04641f93e006e80b0ffczozMjoiYXpWNWhlTFlQckZnR1Z4bnZ2a1dUNG90NzI2TEw3RGsiOw==','2016-12-07 10:02:42','2016-12-07 10:02:42','e48a1463-4638-4f05-80ff-2c9ae02424f2'),(88,1,'342ef6751dcbebed174bd77219021326cf1f079aczozMjoiTXVRa0VNY2hhTlpnbTBTMTl3MExPM1lwQ3FDcjFISUEiOw==','2016-12-13 09:53:02','2016-12-13 09:53:02','8d800933-9ce7-4723-b6ee-4094a95d721b'),(89,1,'594abb7c2f95bb1f98d13980b38831cf242767b0czozMjoiOWlpcEZXblZmZmZ1OFpBelB2VnBHUzdxRF9neWwzR1QiOw==','2017-01-12 08:44:22','2017-01-12 08:44:22','75e95fc2-7f86-4e88-a8d1-cb8f7ddd02b7'),(90,1,'c1b9b62df6aa0c9b510459583a70c8af49c46108czozMjoieE1KeVJEaE9DOGU5Qk9pYjBLbFpKc21kTVV4MDZfRkIiOw==','2017-01-31 13:52:34','2017-01-31 13:52:34','db24202f-2405-4575-89aa-a0dd77b94599'),(91,1,'4c159c4cbf5bafa462e0eeca2304a6498f3cc8ebczozMjoiR2puZG5pQWhDQzRpU0pIMVNIdGxITTJVbGN5QVlNc1IiOw==','2017-02-08 16:23:07','2017-02-08 16:23:07','dc659a91-665b-419e-a07c-57a550b251b0'),(92,1,'56ca36cb1a5d16b6b20bbb64fd5355a6b322c6a8czozMjoia3EwRFVuZElGZHJKOUxHTm1QdWtNZnpWaVM4S3pLcE8iOw==','2017-02-09 14:20:47','2017-02-09 14:20:47','0c4a2483-ee00-4dda-a905-1604902960e1'),(93,1,'c32d780ed40bef942cdc07fd46c51e30a9ce7fd1czozMjoiRDFiM2tNTTMyckRzdE5wNGFVWERVQkRLWWxIUnFJZXQiOw==','2017-02-10 15:29:15','2017-02-10 15:29:15','567a7ecf-728f-4b99-820e-181190c407cb');
/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_shunnedmessages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_shunnedmessages`
--

LOCK TABLES `craft_shunnedmessages` WRITE;
/*!40000 ALTER TABLE `craft_shunnedmessages` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_entries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_entries` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `statusId` int(11) DEFAULT NULL,
  `ipAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sproutforms_entries_formId_fk` (`formId`),
  KEY `craft_sproutforms_entries_statusId_fk` (`statusId`),
  CONSTRAINT `craft_sproutforms_entries_formId_fk` FOREIGN KEY (`formId`) REFERENCES `craft_sproutforms_forms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutforms_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutforms_entries_statusId_fk` FOREIGN KEY (`statusId`) REFERENCES `craft_sproutforms_entrystatuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_entries`
--

LOCK TABLES `craft_sproutforms_entries` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_entries` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutforms_entries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_entrystatuses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_entrystatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` enum('green','orange','red','blue','yellow','pink','purple','turquoise','light','grey','black') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blue',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_entrystatuses`
--

LOCK TABLES `craft_sproutforms_entrystatuses` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_entrystatuses` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sproutforms_entrystatuses` VALUES (1,'Unread','unread','blue',1,1,'2017-02-13 13:38:59','2017-02-13 13:38:59','5fa61b76-2762-417b-9c42-f07f2083f04f'),(2,'Read','read','grey',2,0,'2017-02-13 13:38:59','2017-02-13 13:38:59','47a73217-7893-478d-ab85-6338fc7e8a10');
/*!40000 ALTER TABLE `craft_sproutforms_entrystatuses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_formgroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_formgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sproutforms_formgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_formgroups`
--

LOCK TABLES `craft_sproutforms_formgroups` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_formgroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutforms_formgroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_forms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_forms` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displaySectionTitles` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirectUri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitAction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitButtonText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `savePayload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notificationEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notificationRecipients` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationSubject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationSenderName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationSenderEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationReplyToEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableTemplateOverrides` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templateOverridesFolder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableFileAttachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sproutforms_forms_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_sproutforms_forms_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_sproutforms_forms_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_forms`
--

LOCK TABLES `craft_sproutforms_forms` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_forms` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sproutforms_forms` VALUES (20,100,NULL,'Contact Form','contact','{dateCreated|date(\'Y-m-d\')} – {fullName} – {message|slice(0,22)}...',0,'sproutforms/examples/contact-form?message=thank-you',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'2017-02-13 00:00:00','2017-02-13 00:00:00','0'),(21,102,NULL,'Basic Fields Form','basic','{plainText} – {dropdown}{% if object.textarea %} – {{ object.textarea|slice(0,15) }}{% endif %}',1,'sproutforms/examples/basic-fields?message=thank-you',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,'2017-02-13 00:00:00','2017-02-13 00:00:00','0');
/*!40000 ALTER TABLE `craft_sproutforms_forms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutformscontent_basic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutformscontent_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_plainText` text COLLATE utf8_unicode_ci,
  `field_dropdown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_number` int(10) unsigned DEFAULT '0',
  `field_radioButtons` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_checkboxes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_multiSelect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textarea` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sproutformscontent_basic_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_sproutformscontent_basic_locale_fk` (`locale`),
  CONSTRAINT `craft_sproutformscontent_basic_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutformscontent_basic_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutformscontent_basic`
--

LOCK TABLES `craft_sproutformscontent_basic` WRITE;
/*!40000 ALTER TABLE `craft_sproutformscontent_basic` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutformscontent_basic` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutformscontent_contact`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutformscontent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_navn` text COLLATE utf8_unicode_ci,
  `field_epost` text COLLATE utf8_unicode_ci,
  `field_melding` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sproutformscontent_contact_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_sproutformscontent_contact_locale_fk` (`locale`),
  CONSTRAINT `craft_sproutformscontent_contact_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutformscontent_contact_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutformscontent_contact`
--

LOCK TABLES `craft_sproutformscontent_contact` WRITE;
/*!40000 ALTER TABLE `craft_sproutformscontent_contact` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutformscontent_contact` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_structureelements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structureelements`
--

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_structureelements` VALUES (7,4,NULL,7,1,2,0,'2017-02-13 15:27:22','2017-02-13 15:27:22','587650db-0022-4fac-a289-bf4d7d8614fb');
/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_structures`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structures`
--

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_structures` VALUES (4,NULL,'2017-02-13 15:27:22','2017-02-13 15:27:22','eb316dcd-8000-478f-a858-62484bf7f31a');
/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertableblocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocks_ownerId_idx` (`ownerId`),
  KEY `craft_supertableblocks_fieldId_idx` (`fieldId`),
  KEY `craft_supertableblocks_typeId_idx` (`typeId`),
  KEY `craft_supertableblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_supertableblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_supertableblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertableblocks`
--

LOCK TABLES `craft_supertableblocks` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocks` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_supertableblocks` VALUES (30,19,52,1,1,NULL,'2017-02-13 15:18:39','2017-02-13 15:27:22','ee742a31-c2fd-4b89-ae44-d406d65f0f83');
/*!40000 ALTER TABLE `craft_supertableblocks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertableblocktypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertableblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_supertableblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertableblocktypes`
--

LOCK TABLES `craft_supertableblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocktypes` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_supertableblocktypes` VALUES (1,52,110,'2017-02-13 15:15:41','2017-02-13 15:23:13','5f29118b-4cec-4309-b736-216163ee70be');
/*!40000 ALTER TABLE `craft_supertableblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertablecontent_6_menyer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertablecontent_6_menyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_tekst` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_6_menyer_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_6_menyer_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_6_menyer_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_6_menyer_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertablecontent_6_menyer`
--

LOCK TABLES `craft_supertablecontent_6_menyer` WRITE;
/*!40000 ALTER TABLE `craft_supertablecontent_6_menyer` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_supertablecontent_6_menyer` VALUES (1,30,'nb_no','<table><tbody><tr><td>Lunsj</td><td>11:00 - 16:00\r\n</td></tr><tr><td>Klassisk</td><td>16:00 - 23:00\r\n</td></tr><tr><td>Ukens 3-retter</td><td>16:00 - 23:00\r\n</td></tr></tbody></table><p><strong><a href=\"{entry:3:url}\">Les mer</a></strong></p>','2017-02-13 15:18:39','2017-02-13 15:27:22','41590b55-0b0a-4cee-95d7-7d4d98c09c3a');
/*!40000 ALTER TABLE `craft_supertablecontent_6_menyer` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertablecontent_seodiv`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertablecontent_seodiv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_googleProfile` text COLLATE utf8_unicode_ci,
  `field_googlePage` text COLLATE utf8_unicode_ci,
  `field_twitterSite` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_seodiv_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_seodiv_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_seodiv_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_seodiv_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertablecontent_seodiv`
--

LOCK TABLES `craft_supertablecontent_seodiv` WRITE;
/*!40000 ALTER TABLE `craft_supertablecontent_seodiv` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_supertablecontent_seodiv` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_systemsettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_systemsettings`
--

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_systemsettings` VALUES (1,'email','{\"protocol\":\"php\",\"emailAddress\":\"dev@mustasj.no\",\"senderName\":\"Standardcraft\"}','2014-10-08 10:49:50','2014-10-08 10:49:50','13f059b8-2b49-44e6-bb6e-28bad17289af');
/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_taggroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_taggroups`
--

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_taggroups` VALUES (1,'Standard','default',1,'2014-10-08 10:49:50','2014-10-08 10:49:50','b798f6f4-4b51-4b2a-a1e8-fe03d7e54640');
/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_tags`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_fk` (`groupId`),
  KEY `craft_tags_groupId_idx` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tags`
--

LOCK TABLES `craft_tags` WRITE;
/*!40000 ALTER TABLE `craft_tags` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_tags` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_tasks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tasks`
--

LOCK TABLES `craft_tasks` WRITE;
/*!40000 ALTER TABLE `craft_tasks` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_tasks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_templatecachecriteria`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecachecriteria`
--

LOCK TABLES `craft_templatecachecriteria` WRITE;
/*!40000 ALTER TABLE `craft_templatecachecriteria` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_templatecachecriteria` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_templatecacheelements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecacheelements`
--

LOCK TABLES `craft_templatecacheelements` WRITE;
/*!40000 ALTER TABLE `craft_templatecacheelements` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_templatecaches`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  KEY `craft_templatecaches_locale_cacheKey_path_expiryDate_idx` (`locale`,`cacheKey`,`path`,`expiryDate`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecaches`
--

LOCK TABLES `craft_templatecaches` WRITE;
/*!40000 ALTER TABLE `craft_templatecaches` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_templatecaches` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_tokens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tokens`
--

LOCK TABLES `craft_tokens` WRITE;
/*!40000 ALTER TABLE `craft_tokens` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_usergroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`),
  UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups`
--

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_usergroups_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups_users`
--

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_userpermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions`
--

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_userpermissions_usergroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_usergroups`
--

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_userpermissions_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_users`
--

LOCK TABLES `craft_userpermissions_users` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_users` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL,
  `suspended` tinyint(1) NOT NULL,
  `pending` tinyint(1) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_users`
--

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_users` VALUES (1,'mustasj',NULL,'','','dev@mustasj.no','$2a$13$ueUykLaKp5jkSmJiy2E8D.kZ11QHma2O3O4mUODIkLt1e5w5OVG4W',NULL,1,1,0,0,0,0,0,'2017-02-10 15:29:15','127.0.0.1',NULL,NULL,'2017-02-09 14:20:37',NULL,NULL,NULL,NULL,0,'2014-10-08 10:49:48','2014-10-08 10:49:48','2017-02-10 15:29:15','1381d236-993f-4cd9-81bf-e97ced9e7789');
/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_widgets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_widgets`
--

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_widgets` VALUES (1,1,'QuickPost',1,NULL,'{\"section\":\"2\"}',0,'2014-10-08 10:52:10','2016-01-19 15:34:32','262b9070-0bab-4f6d-b428-4eae106b5cd8'),(2,1,'RecentEntries',2,NULL,NULL,1,'2014-10-08 10:52:10','2014-10-08 10:52:10','a60fa7d3-9e67-413e-87ed-e32498493920'),(3,1,'GetHelp',3,NULL,NULL,1,'2014-10-08 10:52:10','2014-10-08 10:52:10','95bf3c4f-3127-4561-ac45-a6c63fb67036'),(4,1,'Updates',4,NULL,NULL,1,'2014-10-08 10:52:10','2014-10-08 10:52:10','e2d736fe-350e-4db5-b1fc-f8abde34e266'),(5,1,'Feed',5,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}',1,'2014-10-08 10:52:10','2016-01-19 15:32:56','f9d6ff3f-5305-48c7-9f64-734b67436d7b'),(6,1,'Maintenance',6,NULL,'{\"title\":\"Announcements\",\"limit\":\"5\"}',0,'2016-02-24 13:36:15','2016-02-24 13:36:47','a239f863-e7eb-4ccd-95fe-993ac358ae3c'),(7,1,'Maintenance',7,NULL,'{\"title\":\"Announcements\",\"limit\":\"\"}',0,'2016-02-26 13:54:07','2016-02-26 13:54:14','42e2fb09-1170-407a-b733-443fcfdcd7e1');
/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Mon, 13 Feb 2017 22:14:13 +0000
