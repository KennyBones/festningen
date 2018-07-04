-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 04. Jul, 2018 21:21 p.m.
-- Server-versjon: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festningen_craft`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_assetindexdata`
--

CREATE TABLE IF NOT EXISTS `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_assets`
--

CREATE TABLE IF NOT EXISTS `craft_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_assettransformindex`
--

CREATE TABLE IF NOT EXISTS `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_assettransforms`
--

CREATE TABLE IF NOT EXISTS `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_categories`
--

CREATE TABLE IF NOT EXISTS `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_categorygroups`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_categorygroups_sites`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_content`
--

CREATE TABLE IF NOT EXISTS `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, '2018-07-04 20:41:44', '2018-07-04 20:41:44', '8c6ad875-749a-4bfc-98f4-f080b958084e');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_craftidtokens`
--

CREATE TABLE IF NOT EXISTS `craft_craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_deprecationerrors`
--

CREATE TABLE IF NOT EXISTS `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_deprecationerrors`
--

INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'validation.key', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\services\\Config.php:175', '2018-07-04 21:20:52', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\services\\Config.php', 175, 'The auto-generated validation key stored at E:\\Git\\festningen\\storage\\runtime\\validation.key has been deprecated. Copy its value to the “securityKey” config setting in config/general.php.', '[{"objectClass":"craft\\\\services\\\\Deprecator","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\services\\\\Config.php","line":127,"class":"craft\\\\services\\\\Deprecator","method":"log","args":"\\"validation.key\\", \\"The auto-generated validation key stored at E:\\\\Git\\\\festningen\\\\st...\\""},{"objectClass":"craft\\\\services\\\\Config","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\services\\\\Config.php","line":175,"class":"craft\\\\services\\\\Config","method":"getConfigSettings","args":"\\"general\\""},{"objectClass":"craft\\\\services\\\\Config","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\config\\\\app.web.php","line":19,"class":"craft\\\\services\\\\Config","method":"getGeneral","args":null},{"objectClass":null,"file":null,"line":null,"class":null,"method":"{closure}","args":null},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\di\\\\Container.php","line":503,"class":null,"method":"call_user_func_array","args":"Closure, []"},{"objectClass":"yii\\\\di\\\\Container","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\BaseYii.php","line":351,"class":"yii\\\\di\\\\Container","method":"invoke","args":"Closure, []"},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\di\\\\ServiceLocator.php","line":137,"class":"yii\\\\BaseYii","method":"createObject","args":"Closure"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php","line":742,"class":"yii\\\\di\\\\ServiceLocator","method":"get","args":"\\"request\\", true"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php","line":333,"class":"yii\\\\base\\\\Module","method":"get","args":"\\"request\\", true"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php","line":160,"class":"craft\\\\web\\\\Application","method":"get","args":"\\"request\\""},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\config\\\\app.php","line":232,"class":"yii\\\\web\\\\Application","method":"getRequest","args":null},{"objectClass":null,"file":null,"line":null,"class":null,"method":"{closure}","args":null},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\di\\\\Container.php","line":503,"class":null,"method":"call_user_func_array","args":"Closure, []"},{"objectClass":"yii\\\\di\\\\Container","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\BaseYii.php","line":351,"class":"yii\\\\di\\\\Container","method":"invoke","args":"Closure, []"},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\di\\\\ServiceLocator.php","line":137,"class":"yii\\\\BaseYii","method":"createObject","args":"Closure"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php","line":742,"class":"yii\\\\di\\\\ServiceLocator","method":"get","args":"\\"log\\", true"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php","line":333,"class":"yii\\\\base\\\\Module","method":"get","args":"\\"log\\", true"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php","line":508,"class":"craft\\\\web\\\\Application","method":"get","args":"\\"log\\""},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\base\\\\ApplicationTrait.php","line":1133,"class":"yii\\\\base\\\\Application","method":"getLog","args":null},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php","line":106,"class":"craft\\\\web\\\\Application","method":"_preInit","args":null},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\BaseObject.php","line":109,"class":"craft\\\\web\\\\Application","method":"init","args":null},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php","line":206,"class":"yii\\\\base\\\\BaseObject","method":"__construct","args":"[\\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", \\"name\\" => \\"Craft CMS\\", ...]"},{"objectClass":"craft\\\\web\\\\Application","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php","line":97,"class":"yii\\\\base\\\\Application","method":"__construct","args":"[\\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", \\"name\\" => \\"Craft CMS\\", ...]"},{"objectClass":"craft\\\\web\\\\Application","file":null,"line":null,"class":"craft\\\\web\\\\Application","method":"__construct","args":"[\\"vendorPath\\" => \\"E:\\\\Git\\\\festningen\\\\vendor\\", \\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", ...]"},{"objectClass":"ReflectionClass","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\di\\\\Container.php","line":383,"class":"ReflectionClass","method":"newInstanceArgs","args":"[[\\"vendorPath\\" => \\"E:\\\\Git\\\\festningen\\\\vendor\\", \\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", ...]]"},{"objectClass":"yii\\\\di\\\\Container","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\di\\\\Container.php","line":156,"class":"yii\\\\di\\\\Container","method":"build","args":"\\"craft\\\\web\\\\Application\\", [], [\\"vendorPath\\" => \\"E:\\\\Git\\\\festningen\\\\vendor\\", \\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", ...]"},{"objectClass":"yii\\\\di\\\\Container","file":"E:\\\\Git\\\\festningen\\\\vendor\\\\yiisoft\\\\yii2\\\\BaseYii.php","line":349,"class":"yii\\\\di\\\\Container","method":"get","args":"\\"craft\\\\web\\\\Application\\", [], [\\"vendorPath\\" => \\"E:\\\\Git\\\\festningen\\\\vendor\\", \\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", ...]"},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\bootstrap\\\\bootstrap.php","line":252,"class":"yii\\\\BaseYii","method":"createObject","args":"[\\"vendorPath\\" => \\"E:\\\\Git\\\\festningen\\\\vendor\\", \\"env\\" => \\"festningen.local\\", \\"components\\" => [\\"config\\" => craft\\\\services\\\\Config, \\"api\\" => [\\"class\\" => \\"craft\\\\services\\\\Api\\"], \\"assets\\" => [\\"class\\" => \\"craft\\\\services\\\\Assets\\"], \\"assetIndexer\\" => [\\"class\\" => \\"craft\\\\services\\\\AssetIndexer\\"], ...], \\"id\\" => \\"CraftCMS\\", ...]"},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\bootstrap\\\\web.php","line":42,"class":null,"method":"require","args":"\\"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\bootstrap\\\\bootstrap.php\\""},{"objectClass":null,"file":"E:\\\\Git\\\\festningen\\\\web\\\\index.php","line":20,"class":null,"method":"require","args":"\\"E:\\\\Git\\\\festningen\\\\vendor\\\\craftcms\\\\cms\\\\bootstrap\\\\web.php\\""}]', '2018-07-04 21:20:52', '2018-07-04 21:20:52', 'b0ecd538-7910-4405-9d3c-3d3babd99c40');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_elementindexsettings`
--

CREATE TABLE IF NOT EXISTS `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_elements`
--

CREATE TABLE IF NOT EXISTS `craft_elements` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'craft\\elements\\User', 1, 0, '2018-07-04 20:41:44', '2018-07-04 20:41:44', '3383dc3c-92b6-45ba-8df6-217ab11a1d3d');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_elements_sites`
--

CREATE TABLE IF NOT EXISTS `craft_elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_elements_sites`
--

INSERT INTO `craft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2018-07-04 20:41:44', '2018-07-04 20:41:44', '660aaca0-cff9-4206-b92f-c68888039e11');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_entries`
--

CREATE TABLE IF NOT EXISTS `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_entrydrafts`
--

CREATE TABLE IF NOT EXISTS `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `data` mediumtext NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_entrytypes`
--

CREATE TABLE IF NOT EXISTS `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_entryversions`
--

CREATE TABLE IF NOT EXISTS `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `siteId` int(11) NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` text,
  `data` mediumtext NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_fieldgroups`
--

CREATE TABLE IF NOT EXISTS `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Meny og oppskrifter', '2018-07-04 21:13:31', '2018-07-04 21:13:31', '64cbfbea-5910-4d95-acca-092d608e5939'),
(2, 'Lokaler', '2018-07-04 21:13:40', '2018-07-04 21:13:40', '288243eb-42d3-473d-b16b-e758866b6140'),
(3, 'Hva skjer', '2018-07-04 21:13:45', '2018-07-04 21:13:45', 'aa788ece-857f-4ba3-8e58-e457e968a0fc'),
(4, 'Forside', '2018-07-04 21:13:51', '2018-07-04 21:13:51', '3de0f940-c996-4a52-9516-20aa7d1fcfc7'),
(5, 'Designblokker', '2018-07-04 21:13:55', '2018-07-04 21:13:55', '18f7eb6d-f46b-4b60-a5c0-94d1f493a10b');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_fieldlayoutfields`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_fieldlayouts`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_fieldlayouttabs`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_fields`
--

CREATE TABLE IF NOT EXISTS `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_globalsets`
--

CREATE TABLE IF NOT EXISTS `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_info`
--

CREATE TABLE IF NOT EXISTS `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `edition` tinyint(3) unsigned NOT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `on` tinyint(1) NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `timezone`, `name`, `on`, `maintenance`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.0.14', '3.0.91', 0, 'America/Los_Angeles', 'Festningen', 1, 0, 'Lsy17gDJ8tqA', '2018-07-04 20:41:43', '2018-07-04 20:58:12', '9aa07e5d-cbc6-4ebd-949c-c577ba98df45');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_matrixblocks`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `ownerSiteId` int(11) DEFAULT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_matrixblocktypes`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_migrations`
--

CREATE TABLE IF NOT EXISTS `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '0089f1c5-874a-4aa5-af26-a48b6059435a'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'd0fac3b1-d4c1-4f61-892d-1b313d7ded72'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '1e369e24-6588-4ea7-885c-e6d98b035e38'),
(4, NULL, 'app', 'm150403_184533_field_version', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '7935d76a-8526-44c5-803a-19048f4d3b77'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '378163d9-5d5b-4bb3-ba3b-10a29db5d3ff'),
(6, NULL, 'app', 'm150403_185142_volumes', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '3910ea49-17e6-4747-a132-b6b509d52be3'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'd0a244fb-79c7-4df7-bf85-cc00f65d353f'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '5696e078-6599-4d5d-ae0e-b7a9876be8a5'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '45f17b2f-12ef-4540-b059-b8419ea7ac96'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'be7818c1-3cc2-4623-8de5-d71486196004'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '649edb42-ea2d-4136-bd83-99dbcc8a7117'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '76a1f403-82f9-4af2-b060-a3d909838407'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '3f5c0960-8a9f-4c07-9bfb-0cf9268209a5'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '8d36e8ca-60e8-4471-a6df-9b1cf4661900'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '4bbc9b73-a677-4e56-908f-626499c8bdbc'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'cf215439-5b01-462d-98ef-68ecc856efaa'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '000702d5-7906-4205-9b18-2ddc15a70931'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'dc8665f5-10b0-4b59-9de9-9e3f3ed5ebc8'),
(19, NULL, 'app', 'm160707_000000_rename_richtext_assetsource_setting', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'cfc8fafc-ef51-4998-932c-b6ae35ec92d7'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '7140fcc1-47b7-4eba-b15e-c3d3e6dba6f0'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'b4621754-38ef-41a1-9637-ff0087d1193f'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'fd67e8e1-cc6b-466f-b9a7-7da0141fbf50'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '6bc1ea93-d988-4512-9382-2b1f7d3a3c2b'),
(24, NULL, 'app', 'm160807_144858_sites', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'f66b6b66-6564-4108-8e78-d425a0d2b33b'),
(25, NULL, 'app', 'm160817_161600_move_assets_cache', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '88f0d910-36ea-42b1-9ef5-bc50c69d6615'),
(26, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '4440ef59-0a19-4841-bc4b-9324e3380989'),
(27, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '1db230bf-c2cd-402f-b0bf-3562fcd92e30'),
(28, NULL, 'app', 'm160912_230520_require_entry_type_id', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'bd739e87-8195-4acf-903c-d27583e72d06'),
(29, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'b91bf63a-1117-4459-b17d-d092273bfcfc'),
(30, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '8d3b6179-9536-4b3b-a0bc-9f9fc0b454df'),
(31, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '1ba50bc6-ea02-42ec-a79d-ab5f72608562'),
(32, NULL, 'app', 'm160925_113941_route_uri_parts', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '674bcfd9-3204-4faa-a6f8-b9d2fdcab3b4'),
(33, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '00852334-a627-47dc-aff7-db4742b21b4c'),
(34, NULL, 'app', 'm161007_130653_update_email_settings', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'e14e929c-3482-40be-82c1-5456e4c1d5ac'),
(35, NULL, 'app', 'm161013_175052_newParentId', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'ba3f8d5b-ea4d-46c9-922a-0d1551bca89a'),
(36, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '755dc9f8-ce49-434a-b4da-5271ff139b84'),
(37, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '417f1c81-372b-425c-9850-18bf5a3fdf76'),
(38, NULL, 'app', 'm161025_000000_fix_char_columns', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2ce24d5b-2b09-4bea-99c2-146c2c13402c'),
(39, NULL, 'app', 'm161029_124145_email_message_languages', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '9fb0227f-9122-4b43-91b6-186e6d9c8554'),
(40, NULL, 'app', 'm161108_000000_new_version_format', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'b5aaa81b-ca93-4c3a-8205-1923187b5d66'),
(41, NULL, 'app', 'm161109_000000_index_shuffle', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'babb8c9d-f430-47ab-b829-ff6e6f25d109'),
(42, NULL, 'app', 'm161122_185500_no_craft_app', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '630fab33-fc88-4a2f-9716-85a4e0759797'),
(43, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '60127d32-91ac-4d27-8dd3-efa5d5528862'),
(44, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '7fda825d-3cb0-4340-8af1-23c405caa547'),
(45, NULL, 'app', 'm170114_161144_udates_permission', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '0b64b715-ae1e-4d57-8ed6-3f1b4d40fc6d'),
(46, NULL, 'app', 'm170120_000000_schema_cleanup', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2dba8e4c-472f-4478-82ae-6f543fd7990a'),
(47, NULL, 'app', 'm170126_000000_assets_focal_point', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '14b0f556-07bc-449a-a8d8-be59dd5534dd'),
(48, NULL, 'app', 'm170206_142126_system_name', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '0dcb1770-e314-4180-ad51-afcf60ea6a96'),
(49, NULL, 'app', 'm170217_044740_category_branch_limits', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '17d5d75e-0129-4c79-890d-543b7b905027'),
(50, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'cd123ead-8d47-4e6a-bfe9-d0281564b52a'),
(51, NULL, 'app', 'm170223_224012_plain_text_settings', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '9a812e9c-e0fb-4f2d-a162-d8f199b06294'),
(52, NULL, 'app', 'm170227_120814_focal_point_percentage', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '7d4513c0-2e1e-4f2d-a797-c84e59686130'),
(53, NULL, 'app', 'm170228_171113_system_messages', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', 'a32b9af8-def3-4930-974a-0b0e6678564c'),
(54, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '96319db3-e6ca-4085-95c8-b0471469dca9'),
(55, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '919e134b-68e2-402d-8696-2ff185006aa1'),
(56, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '334cb391-baa0-472d-ad5c-6d0230450448'),
(57, NULL, 'app', 'm170414_162429_rich_text_config_setting', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '2018-07-04 20:58:04', '6d6310c1-dd8a-47d7-96bc-bbdd3df18606'),
(58, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '57bb4f26-6f0e-413c-8e40-6d296834c06d'),
(59, NULL, 'app', 'm170612_000000_route_index_shuffle', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '9cd31bb1-9520-4d8c-a898-eb3a55797189'),
(60, NULL, 'app', 'm170621_195237_format_plugin_handles', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '2018-07-04 20:58:05', 'c42cd6c6-59b8-4276-bd4c-50c5a5c4f5be'),
(61, NULL, 'app', 'm170630_161028_deprecation_changes', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '2018-07-04 20:58:05', 'be5a34e3-20fe-47c3-9a48-2cc7939dc2a4'),
(62, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '2018-07-04 20:58:05', '8b54686c-d490-4b95-a2f0-b673f858185f'),
(63, NULL, 'app', 'm170704_134916_sites_tables', '2018-07-04 20:58:09', '2018-07-04 20:58:09', '2018-07-04 20:58:09', 'ca31cf07-25b0-430c-8d7f-ce222e80483b'),
(64, NULL, 'app', 'm170706_183216_rename_sequences', '2018-07-04 20:58:09', '2018-07-04 20:58:09', '2018-07-04 20:58:09', 'd0edcac6-8e6b-4732-8b6b-0cda67184988'),
(65, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2018-07-04 20:58:09', '2018-07-04 20:58:09', '2018-07-04 20:58:09', '784a81b7-6cc3-4799-b069-0e64a0e31f62'),
(66, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2018-07-04 20:58:09', '2018-07-04 20:58:09', '2018-07-04 20:58:09', 'a0eb26ec-b7ab-41c4-8795-bc958d1746d6'),
(67, NULL, 'app', 'm170810_201318_create_queue_table', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'e7eab105-eccc-4f5e-b25f-39fd5e784f7d'),
(68, NULL, 'app', 'm170816_133741_delete_compiled_behaviors', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '15a482ee-7ea7-4cb8-a6b2-ff39c93c1307'),
(69, NULL, 'app', 'm170821_180624_deprecation_line_nullable', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '99bcd351-96cc-4723-b82c-125162ca02da'),
(70, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'b77e1f0c-2bd6-4720-9397-57da29df61ac'),
(71, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '545a9178-ee50-4f73-ac3c-37d5e0a206c6'),
(72, NULL, 'app', 'm171011_214115_site_groups', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'd6b024c0-1a66-4299-89e4-b7a0054c44d5'),
(73, NULL, 'app', 'm171012_151440_primary_site', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '6daec5e7-17ce-4559-b416-7dcea4d35bdc'),
(74, NULL, 'app', 'm171013_142500_transform_interlace', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'c2983952-2b78-4f3c-b0e2-ad5cc1c6bdf6'),
(75, NULL, 'app', 'm171016_092553_drop_position_select', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '08e08024-88f6-425c-b985-b0670bb2325c'),
(76, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2efe3e2b-d754-49b8-bada-221e23510576'),
(77, NULL, 'app', 'm171107_000000_assign_group_permissions', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'aeb50ce7-9af6-4a65-bc52-bb512d828923'),
(78, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '76270a59-9365-4b2a-88d7-8e92165b0c31'),
(79, NULL, 'app', 'm171126_105927_disabled_plugins', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'f6f59036-4db6-4578-8adb-d8064ad05482'),
(80, NULL, 'app', 'm171130_214407_craftidtokens_table', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'ca707899-f4fb-435d-bb01-9f45c5e795c2'),
(81, NULL, 'app', 'm171202_004225_update_email_settings', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '2018-07-04 20:58:10', 'a25991ef-6f37-4a95-bb27-1ee68b70cc2b'),
(82, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', 'aafcb44c-8a1e-4eb5-96fd-d3b161e6828b'),
(83, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '6faf167b-c2bd-4e1b-b755-083aee5af0fe'),
(84, NULL, 'app', 'm171218_143135_longtext_query_column', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2d5c105a-9c77-413e-bf8e-a817b0f9a4de'),
(85, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '0c08fbd1-a2b1-4ff6-9eb5-45b89c59b663'),
(86, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '80b139b8-dbb7-4acd-a0b0-792f67ced654'),
(87, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '41b36186-1254-4f5c-b450-a402331309f2'),
(88, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', 'd4c9bd58-0537-4707-8fae-ab2003baab23'),
(89, NULL, 'app', 'm180128_235202_set_tag_slugs', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '135642e8-6e0f-4ad7-a313-ca2935142bb9'),
(90, NULL, 'app', 'm180202_185551_fix_focal_points', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '9f4e0792-0d94-4c55-8922-ac1c0aabf4f5'),
(91, NULL, 'app', 'm180217_172123_tiny_ints', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '4a6e0b2a-2228-43af-9a75-6a2c07ed6f06'),
(92, NULL, 'app', 'm180321_233505_small_ints', '2018-07-04 20:58:11', '2018-07-04 20:58:11', '2018-07-04 20:58:11', 'e8b151ec-3762-42cd-a26d-ca4ef9346faa'),
(93, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '2018-07-04 20:58:12', 'a226e957-8744-485f-b6aa-e2274133ec10'),
(94, NULL, 'app', 'm180404_182320_edition_changes', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '2018-07-04 20:58:12', 'd89dafbc-0fb7-4fd3-b6b9-7ed3da3dcf06'),
(95, NULL, 'app', 'm180411_102218_fix_db_routes', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '2018-07-04 20:58:12', 'b5fb779a-9ff1-4ea8-a1e9-a30cdd1dc41b'),
(96, NULL, 'app', 'm180416_205628_resourcepaths_table', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '0b9cc837-e08f-4a1b-ba7a-7e3c61d3f687'),
(97, NULL, 'app', 'm180418_205713_widget_cleanup', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '2018-07-04 20:58:12', '943c0a92-da90-4064-aab5-8c28565ce574'),
(98, 2, 'plugin', 'Install', '2018-07-04 21:02:21', '2018-07-04 21:02:21', '2018-07-04 21:02:21', '408c8930-da15-4d45-9f37-3315cabb2899');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_plugins`
--

CREATE TABLE IF NOT EXISTS `craft_plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKey` char(24) DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'imager', 'v2.0.1.2', '2.0.0', NULL, 'unknown', 1, NULL, '2018-07-04 21:00:58', '2018-07-04 21:00:58', '2018-07-04 21:20:54', '4be1ea7d-04c1-48c6-857b-047caaf86d5b'),
(2, 'simplemap', '3.3.3', '3.0.0', NULL, 'unknown', 1, NULL, '2018-07-04 21:02:21', '2018-07-04 21:02:21', '2018-07-04 21:20:54', '5e5e2e83-88a9-4111-9cb6-de79b6f147b8'),
(3, 'field-manager', '2.0.2', '1.0.0', NULL, 'unknown', 1, NULL, '2018-07-04 21:04:27', '2018-07-04 21:04:27', '2018-07-04 21:20:54', 'ed259900-e9b4-47bd-ad18-b7a4cf63dac8');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_queue`
--

CREATE TABLE IF NOT EXISTS `craft_queue` (
  `id` int(11) NOT NULL,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) unsigned NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_relations`
--

CREATE TABLE IF NOT EXISTS `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_resourcepaths`
--

CREATE TABLE IF NOT EXISTS `craft_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_resourcepaths`
--

INSERT INTO `craft_resourcepaths` (`hash`, `path`) VALUES
('10371c7d', '@bower/jquery/dist'),
('122e79dc', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\jquery.payment'),
('16bda9a0', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\fields\\dist'),
('21aad6f', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\xregexp'),
('245254af', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\sites\\dist'),
('281ddd85', '@lib'),
('370674d3', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\matrixsettings\\dist'),
('3a1b23a3', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\cp\\dist'),
('3cfda77a', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\element-resize-detector'),
('66a53428', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\velocity'),
('78adf094', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\pluginstore\\dist'),
('7ac3c580', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\jquery-ui'),
('8250c42d', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\fabric'),
('8c8922c9', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\utilities\\dist'),
('8d4c9349', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\garnishjs'),
('8eddaaea', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\jquery-touch-events'),
('b6411773', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\timepicker'),
('cf6582cc', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\picturefill'),
('d3f5994', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\d3'),
('d65f16b7', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\fileupload'),
('dde9b9c9', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\tablesettings\\dist'),
('e6876a47', 'E:\\Git\\festningen\\vendor\\ether\\simplemap\\src\\resources'),
('e9e0deab', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\datepicker-i18n'),
('f2743f93', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\src\\web\\assets\\updater\\dist'),
('fd31b85b', 'E:\\Git\\festningen\\vendor\\craftcms\\cms\\lib\\selectize');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_routes`
--

CREATE TABLE IF NOT EXISTS `craft_routes` (
  `id` int(11) NOT NULL,
  `siteId` int(11) DEFAULT NULL,
  `uriParts` varchar(255) NOT NULL,
  `uriPattern` varchar(255) NOT NULL,
  `template` varchar(500) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_searchindex`
--

CREATE TABLE IF NOT EXISTS `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' raziel014 gmail com '),
(1, 'slug', 0, 1, '');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_sections`
--

CREATE TABLE IF NOT EXISTS `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagateEntries` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_sections_sites`
--

CREATE TABLE IF NOT EXISTS `craft_sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_sessions`
--

CREATE TABLE IF NOT EXISTS `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_shunnedmessages`
--

CREATE TABLE IF NOT EXISTS `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_simplemaps`
--

CREATE TABLE IF NOT EXISTS `craft_simplemaps` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `ownerSiteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `lat` decimal(11,9) DEFAULT NULL,
  `lng` decimal(12,9) DEFAULT NULL,
  `zoom` int(2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `parts` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_sitegroups`
--

CREATE TABLE IF NOT EXISTS `craft_sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_sitegroups`
--

INSERT INTO `craft_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Festningen', '2018-07-04 20:58:10', '2018-07-04 20:58:10', '293ae8aa-0a1d-417d-9fce-c4722540f24e');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_sites`
--

CREATE TABLE IF NOT EXISTS `craft_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_sites`
--

INSERT INTO `craft_sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 'Festningen', 'default', 'nb', 1, 'http://festningen.local/', 1, '2018-07-04 20:41:43', '2018-07-04 20:58:10', 'cd7362d9-b530-4e3e-9e76-54ccb290c6b5'),
(2, 1, 0, 'Festningen Engelsk', 'festningenEngelsk', 'en', 1, '@web/en/', 2, '2018-07-04 21:03:18', '2018-07-04 21:03:18', 'f5e6612f-b421-4762-9b32-818071f4695c');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_structureelements`
--

CREATE TABLE IF NOT EXISTS `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_structures`
--

CREATE TABLE IF NOT EXISTS `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '2018-07-04 21:09:25', '2018-07-04 21:09:25', '1993d068-3c6c-4eda-85da-e50c39e548dd'),
(2, NULL, '2018-07-04 21:09:41', '2018-07-04 21:10:06', 'ce3fd7db-a89f-42a5-ad93-85f817dcd005'),
(3, NULL, '2018-07-04 21:09:55', '2018-07-04 21:10:11', '4311f370-92b2-444b-9105-f7ce0539e086');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_systemmessages`
--

CREATE TABLE IF NOT EXISTS `craft_systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_systemsettings`
--

CREATE TABLE IF NOT EXISTS `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"fromEmail":"raziel014@gmail.com","fromName":"Festningen","transportType":"craft\\\\mail\\\\transportadapters\\\\Sendmail"}', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '333007d8-a3cc-42f6-902f-5e2daebb48ca');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_taggroups`
--

CREATE TABLE IF NOT EXISTS `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_tags`
--

CREATE TABLE IF NOT EXISTS `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_templatecacheelements`
--

CREATE TABLE IF NOT EXISTS `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_templatecachequeries`
--

CREATE TABLE IF NOT EXISTS `craft_templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_templatecaches`
--

CREATE TABLE IF NOT EXISTS `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_tokens`
--

CREATE TABLE IF NOT EXISTS `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_usergroups_users`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_userpermissions`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_userpermissions_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_userpermissions_users`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_userpreferences`
--

CREATE TABLE IF NOT EXISTS `craft_userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_users`
--

CREATE TABLE IF NOT EXISTS `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'raziel014@gmail.com', '$2y$13$9Sqsq99EQLrSySgIqyJBye92ILIFoTj2kiA3q7nJuaBWexJPZaRem', 1, 0, 0, 0, '2018-07-04 20:41:44', '127.0.0.1', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2018-07-04 20:41:44', '2018-07-04 20:41:44', '2018-07-04 20:41:44', '06f3999b-6ebb-4a82-b1ff-73c97f177c0e');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_volumefolders`
--

CREATE TABLE IF NOT EXISTS `craft_volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_volumes`
--

CREATE TABLE IF NOT EXISTS `craft_volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `craft_widgets`
--

CREATE TABLE IF NOT EXISTS `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dataark for tabell `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, 0, '{"section":"*","siteId":"1","limit":10}', '2018-07-04 20:41:46', '2018-07-04 20:41:46', '07c625ff-c996-4c42-a763-9057004d17a3'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, 0, '[]', '2018-07-04 20:41:46', '2018-07-04 20:41:46', '7eaa6b69-667d-4c74-a8d8-09af1b3ed968'),
(3, 1, 'craft\\widgets\\Updates', 3, 0, '[]', '2018-07-04 20:41:46', '2018-07-04 20:41:46', '4b536fe4-e090-40f1-a84b-ce5f197c8952'),
(4, 1, 'craft\\widgets\\Feed', 4, 0, '{"url":"https://craftcms.com/news.rss","title":"Craft News","limit":5}', '2018-07-04 20:41:46', '2018-07-04 20:41:46', '9dc73020-6240-49cd-9e63-8bb258b3ff11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `craft_assetindexdata_volumeId_fk` (`volumeId`);

--
-- Indexes for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assets_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assets_folderId_fk` (`folderId`),
  ADD KEY `craft_assets_volumeId_fk` (`volumeId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `craft_categorygroups_sites_siteId_fk` (`siteId`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `craft_content_siteId_fk` (`siteId`),
  ADD KEY `craft_content_title_fk` (`title`);

--
-- Indexes for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_craftidtokens_userId_fk` (`userId`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `craft_elements_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD UNIQUE KEY `craft_elements_sites_uri_siteId_unq_idx` (`uri`,`siteId`),
  ADD KEY `craft_elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `craft_elements_sites_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_sites_siteId_fk` (`siteId`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`),
  ADD KEY `craft_entries_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entries_typeId_fk` (`typeId`);

--
-- Indexes for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_entryId_siteId_idx` (`entryId`,`siteId`),
  ADD KEY `craft_entrydrafts_siteId_fk` (`siteId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_entryId_siteId_idx` (`entryId`,`siteId`),
  ADD KEY `craft_entryversions_siteId_fk` (`siteId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`),
  ADD KEY `craft_fields_context_idx` (`context`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_fk` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_fk` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerSiteId_fk` (`ownerSiteId`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`),
  ADD KEY `craft_migrations_type_pluginId_idx` (`type`,`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_plugins_handle_unq_idx` (`handle`),
  ADD KEY `craft_plugins_enabled_idx` (`enabled`);

--
-- Indexes for table `craft_queue`
--
ALTER TABLE `craft_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `craft_queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`),
  ADD KEY `craft_relations_sourceSiteId_fk` (`sourceSiteId`);

--
-- Indexes for table `craft_resourcepaths`
--
ALTER TABLE `craft_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_routes_siteId_fk` (`siteId`),
  ADD KEY `craft_routes_uriPattern_idx` (`uriPattern`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexes for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `craft_sections_sites_siteId_fk` (`siteId`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_simplemaps`
--
ALTER TABLE `craft_simplemaps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_simplemaps_ownerId_ownerSiteId_fieldId_unq_idx` (`ownerId`,`ownerSiteId`,`fieldId`),
  ADD KEY `craft_simplemaps_lat_idx` (`lat`),
  ADD KEY `craft_simplemaps_lng_idx` (`lng`),
  ADD KEY `craft_simplemaps_ownerSiteId_fk` (`ownerSiteId`),
  ADD KEY `craft_simplemaps_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sitegroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sites_handle_unq_idx` (`handle`),
  ADD KEY `craft_sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_sites_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `craft_systemmessages_language_idx` (`language`);

--
-- Indexes for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachequeries_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachequeries_type_idx` (`type`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_siteId_fk` (`siteId`),
  ADD KEY `craft_templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `craft_templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_photoId_fk` (`photoId`);

--
-- Indexes for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `craft_volumefolders_parentId_fk` (`parentId`),
  ADD KEY `craft_volumefolders_volumeId_fk` (`volumeId`);

--
-- Indexes for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_volumes_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_volumes_handle_unq_idx` (`handle`),
  ADD KEY `craft_volumes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_queue`
--
ALTER TABLE `craft_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_simplemaps`
--
ALTER TABLE `craft_simplemaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_sites`
--
ALTER TABLE `craft_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD CONSTRAINT `craft_assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD CONSTRAINT `craft_categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD CONSTRAINT `craft_craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD CONSTRAINT `craft_elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Begrensninger for tabell `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD CONSTRAINT `craft_elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerSiteId_fk` FOREIGN KEY (`ownerSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Begrensninger for tabell `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Begrensninger for tabell `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD CONSTRAINT `craft_sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_simplemaps`
--
ALTER TABLE `craft_simplemaps`
  ADD CONSTRAINT `craft_simplemaps_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_simplemaps_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_simplemaps_ownerSiteId_fk` FOREIGN KEY (`ownerSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD CONSTRAINT `craft_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Begrensninger for tabell `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD CONSTRAINT `craft_templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrensninger for tabell `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD CONSTRAINT `craft_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `craft_assets` (`id`) ON DELETE SET NULL;

--
-- Begrensninger for tabell `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD CONSTRAINT `craft_volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Begrensninger for tabell `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD CONSTRAINT `craft_volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Begrensninger for tabell `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
