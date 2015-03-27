CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nams` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nams`;

--
-- Temporary table structure for view `HealthView`
--

DROP TABLE IF EXISTS `HealthView`;
/*!50001 DROP VIEW IF EXISTS `HealthView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HealthView` (
  `badge` int(11),
  `eppa` varchar(9),
  `netid` varchar(128),
  `pidm` int(11),
  `usfid` varchar(9),
  `emplid` int(11),
  `bday` int(11),
  `ssn` int(11),
  `lname` varchar(100),
  `fname` varchar(100),
  `mname` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `NetIDRequestView`
--

DROP TABLE IF EXISTS `NetIDRequestView`;
/*!50001 DROP VIEW IF EXISTS `NetIDRequestView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NetIDRequestView` (
  `badge` int(11),
  `lname` varchar(100),
  `fname` varchar(100),
  `mname` varchar(100),
  `orgdate` date,
  `deptid` int(11),
  `netid` varchar(128)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `NetidsSupersetUngroupedView`
--

DROP TABLE IF EXISTS `NetidsSupersetUngroupedView`;
/*!50001 DROP VIEW IF EXISTS `NetidsSupersetUngroupedView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NetidsSupersetUngroupedView` (
  `badge` int(11),
  `netid` varchar(128)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `NetidsSupersetView`
--

DROP TABLE IF EXISTS `NetidsSupersetView`;
/*!50001 DROP VIEW IF EXISTS `NetidsSupersetView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NetidsSupersetView` (
  `badge` int(11),
  `netid` varchar(128)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `account_archive`
--

DROP TABLE IF EXISTS `account_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_archive` (
  `accountid` int(11) NOT NULL DEFAULT '0',
  `badge` int(11) NOT NULL DEFAULT '0',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `login` varchar(24) NOT NULL DEFAULT '',
  `source` char(1) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `homedir` varchar(68) NOT NULL DEFAULT '',
  `shellstat` int(11) NOT NULL DEFAULT '0',
  `quota` int(11) NOT NULL DEFAULT '0',
  `inact` int(11) NOT NULL DEFAULT '0',
  `maxpwage` int(11) NOT NULL DEFAULT '0',
  `creatime` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `password` varchar(20) NOT NULL DEFAULT '',
  `activation` char(1) NOT NULL DEFAULT '',
  `revalid` char(1) NOT NULL DEFAULT '',
  `hostid` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `accountid` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL DEFAULT '0',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `login` varchar(128) NOT NULL DEFAULT '',
  `source` char(1) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `homedir` varchar(68) NOT NULL DEFAULT '',
  `shellstat` int(11) NOT NULL DEFAULT '0',
  `quota` int(11) NOT NULL DEFAULT '0',
  `inact` int(11) NOT NULL DEFAULT '0',
  `maxpwage` int(11) NOT NULL DEFAULT '0',
  `creatime` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `password` varchar(20) NOT NULL DEFAULT '',
  `activation` char(1) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL DEFAULT '',
  `hostid` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`accountid`),
  KEY `uid_ndx` (`uid`),
  KEY `login_ndx` (`login`),
  KEY `domain_ndx` (`domainid`),
  KEY `host_ndx` (`hostid`),
  KEY `acct_badge_ndx` (`badge`),
  KEY `time_ndx` (`activation`),
  KEY `alias_ndx` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=5041714 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `addrlist`
--

DROP TABLE IF EXISTS `addrlist`;
/*!50001 DROP VIEW IF EXISTS `addrlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `addrlist` (
  `badge` int(11),
  `maildrop` varchar(169),
  `pidm` int(11),
  `usfid` varchar(9),
  `role` char(2),
  `email` varchar(48),
  `OfficialCode` varchar(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `addrlist_raw`
--

DROP TABLE IF EXISTS `addrlist_raw`;
/*!50001 DROP VIEW IF EXISTS `addrlist_raw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `addrlist_raw` (
  `badge` int(11),
  `maildrop` varchar(136),
  `pidm` int(11),
  `usfid` varchar(9),
  `role` char(2),
  `email` varchar(48)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `affiliations`
--

DROP TABLE IF EXISTS `affiliations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliations` (
  `affid` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL DEFAULT '0',
  `source` char(3) NOT NULL DEFAULT '',
  `role` char(2) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `college` char(2) NOT NULL DEFAULT '',
  `campus` char(1) NOT NULL DEFAULT '',
  `majrcode` char(4) NOT NULL DEFAULT '',
  `conc` char(4) NOT NULL DEFAULT '',
  `jobcode` char(4) NOT NULL DEFAULT '',
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgdate` date NOT NULL DEFAULT '0000-00-00',
  `enddate` date DEFAULT NULL,
  `barg_unit_code` varchar(4) DEFAULT NULL,
  `union_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`affid`),
  KEY `badge_ndx` (`badge`),
  KEY `role_ndx` (`role`),
  KEY `dept_ndx` (`deptid`),
  KEY `college_ndx` (`college`),
  KEY `campus_ndx` (`campus`)
) ENGINE=MyISAM AUTO_INCREMENT=1671908 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afftemp`
--

DROP TABLE IF EXISTS `afftemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afftemp` (
  `badge` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afftemp2`
--

DROP TABLE IF EXISTS `afftemp2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afftemp2` (
  `badge` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aggregations`
--

DROP TABLE IF EXISTS `aggregations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregations` (
  `aggid` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(20) NOT NULL DEFAULT '',
  `master` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aggid`),
  UNIQUE KEY `section_ndx` (`section`)
) ENGINE=MyISAM AUTO_INCREMENT=6492 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alt_netids`
--

DROP TABLE IF EXISTS `alt_netids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alt_netids` (
  `badge` int(11) NOT NULL,
  `netid` varchar(128) NOT NULL DEFAULT '',
  `change_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin_badge` int(11) NOT NULL,
  `admin_comment` varchar(512) DEFAULT NULL,
  KEY `badge_idx` (`badge`),
  KEY `netid_idx` (`netid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alt_netids_reconciled`
--

DROP TABLE IF EXISTS `alt_netids_reconciled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alt_netids_reconciled` (
  `badge` int(11) NOT NULL,
  `netid` varchar(128) NOT NULL,
  `change_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin_badge` int(11) NOT NULL,
  `admin_comment` varchar(512) DEFAULT NULL,
  KEY `badge_idx` (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps` (
  `name` char(20) NOT NULL DEFAULT '',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `masterslave` char(1) NOT NULL DEFAULT 'S',
  `locked` char(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `badge_duplication_on_ssn_for_gems_oasis`
--

DROP TABLE IF EXISTS `badge_duplication_on_ssn_for_gems_oasis`;
/*!50001 DROP VIEW IF EXISTS `badge_duplication_on_ssn_for_gems_oasis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `badge_duplication_on_ssn_for_gems_oasis` (
  `usfid` varchar(9),
  `emplid` int(11),
  `ssn` varchar(9),
  `oasis_badge` int(11),
  `gems_badge` int(11),
  `oasis_match_fname` varchar(100),
  `oasis_match_mname` varchar(100),
  `oasis_match_lname` varchar(100),
  `gems_match_fname` varchar(100),
  `gems_match_mname` varchar(100),
  `gems_match_lname` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bb_course_template`
--

DROP TABLE IF EXISTS `bb_course_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_course_template` (
  `mask` varchar(50) DEFAULT NULL,
  `template_course_id` varchar(50) DEFAULT NULL,
  `badge` int(11) DEFAULT NULL,
  `dtcreated` date DEFAULT NULL,
  `summer_ind` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bdays`
--

DROP TABLE IF EXISTS `bdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdays` (
  `bdayid` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL DEFAULT '0',
  `authority` char(1) NOT NULL DEFAULT '',
  `bday` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bdayid`),
  KEY `badge_ndx` (`badge`)
) ENGINE=MyISAM AUTO_INCREMENT=1666464 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`lms`@`localhost`*/ /*!50003 TRIGGER fixBdayInNames_trigger AFTER INSERT ON bdays
  FOR EACH ROW CALL fixBdayInNames(NEW.badge) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `blackbrd`
--

DROP TABLE IF EXISTS `blackbrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blackbrd` (
  `badge` int(11) NOT NULL DEFAULT '0',
  `sysrole` varchar(14) NOT NULL DEFAULT '',
  `instrole` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(40) NOT NULL DEFAULT '',
  `dept` varchar(48) NOT NULL DEFAULT '',
  `jobtitle` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(48) NOT NULL DEFAULT '',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campuses`
--

DROP TABLE IF EXISTS `campuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campuses` (
  `code` char(2) NOT NULL DEFAULT '',
  `location` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cardtypes`
--

DROP TABLE IF EXISTS `cardtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardtypes` (
  `code` char(1) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`),
  UNIQUE KEY `rankname_ndx` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chance`
--

DROP TABLE IF EXISTS `chance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chance` (
  `badge` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colleges` (
  `code` char(2) NOT NULL DEFAULT '',
  `active` char(1) DEFAULT NULL,
  `collname` char(30) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `conted`
--

DROP TABLE IF EXISTS `conted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conted` (
  `ce_id` varchar(100) NOT NULL,
  `ce_fname` varchar(100) NOT NULL,
  `ce_lname` varchar(100) NOT NULL,
  `ce_mname` varchar(100) NOT NULL,
  `ce_dob` int(11) NOT NULL DEFAULT '0',
  `ce_area` varchar(100) NOT NULL,
  `ce_role` varchar(100) NOT NULL,
  `ce_status` enum('active','inactive') NOT NULL,
  `nams_usfid` varchar(9) DEFAULT NULL,
  `nams_badge` int(11) DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ce_id`),
  KEY `nams_usfid` (`nams_usfid`),
  KEY `nams_badge` (`nams_badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `courseroles`
--

DROP TABLE IF EXISTS `courseroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courseroles` (
  `courseroleid` int(11) NOT NULL AUTO_INCREMENT,
  `termcode` int(11) NOT NULL DEFAULT '0',
  `section` varchar(24) NOT NULL DEFAULT '',
  `badge` int(11) NOT NULL DEFAULT '0',
  `crsrole` varchar(20) NOT NULL DEFAULT 'student',
  `available` char(1) NOT NULL DEFAULT 'Y',
  `enrolled` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`courseroleid`),
  KEY `section_ndx` (`section`),
  KEY `termcode_ndx` (`termcode`),
  KEY `badge_ndx` (`badge`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `subjcode` char(4) NOT NULL DEFAULT '',
  `crsenumb` char(5) NOT NULL DEFAULT '',
  `college` char(2) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`courseid`),
  KEY `course_ndx` (`subjcode`,`crsenumb`)
) ENGINE=MyISAM AUTO_INCREMENT=14014 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `deptid` int(11) NOT NULL AUTO_INCREMENT,
  `dabbr` char(3) NOT NULL DEFAULT '',
  `number` varchar(8) NOT NULL DEFAULT '',
  `deptname` varchar(60) NOT NULL DEFAULT '',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT '',
  `authority` char(1) NOT NULL DEFAULT '',
  `deptabbr` varchar(8) NOT NULL DEFAULT '',
  `college` char(2) NOT NULL DEFAULT '',
  `samas` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`deptid`),
  KEY `number_ndx` (`number`),
  KEY `dabbr_ndx` (`dabbr`),
  KEY `deptabbr_ndx` (`deptabbr`),
  KEY `samas_key` (`samas`)
) ENGINE=MyISAM AUTO_INCREMENT=2978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dialup`
--

DROP TABLE IF EXISTS `dialup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialup` (
  `ssn` varchar(9) NOT NULL DEFAULT '',
  `badge` int(11) NOT NULL DEFAULT '0',
  `cardid` int(11) NOT NULL DEFAULT '0',
  `email` varchar(48) NOT NULL DEFAULT '',
  PRIMARY KEY (`ssn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `domainid` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(8) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT '',
  `campus` char(1) NOT NULL DEFAULT '',
  `flags` int(11) NOT NULL DEFAULT '0',
  `email` varchar(28) NOT NULL DEFAULT '',
  `synctime` int(11) NOT NULL DEFAULT '0',
  `cluster` char(1) NOT NULL DEFAULT '',
  `ldapauth` char(1) NOT NULL DEFAULT 'N',
  `site` varchar(8) NOT NULL DEFAULT '',
  `location` varchar(12) NOT NULL DEFAULT '',
  `sitename` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`domainid`),
  UNIQUE KEY `dname_ndx` (`dname`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `duplicate_ssns_names_report`
--

DROP TABLE IF EXISTS `duplicate_ssns_names_report`;
/*!50001 DROP VIEW IF EXISTS `duplicate_ssns_names_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `duplicate_ssns_names_report` (
  `ssn` varbinary(9),
  `num_duplicates` bigint(21)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL,
  `type` enum('External','Work','Academic','Other') DEFAULT NULL,
  `status` enum('Verified','Unverified','Invalid') DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `display` enum('Y','N') DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emergency_notification`
--

DROP TABLE IF EXISTS `emergency_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emergency_notification` (
  `badge` int(11) NOT NULL,
  `action_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `action_taken` enum('opt-in','opt-out','removed') DEFAULT NULL,
  `subscribe_tampa` binary(1) NOT NULL DEFAULT '0',
  `subscribe_poly` binary(1) NOT NULL DEFAULT '0',
  `subscribe_stpt` binary(1) NOT NULL DEFAULT '0',
  `subscribe_sar` binary(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `facultyid` int(11) NOT NULL AUTO_INCREMENT,
  `ssn` varchar(9) NOT NULL DEFAULT '',
  `emplid` varchar(11) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(48) NOT NULL DEFAULT '',
  `jobcode` int(11) NOT NULL DEFAULT '0',
  `emplclass` char(2) NOT NULL DEFAULT '',
  `admincode` char(2) NOT NULL DEFAULT '',
  `bldg` char(3) NOT NULL DEFAULT '',
  `room` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`facultyid`),
  UNIQUE KEY `ssn_ndx` (`ssn`)
) ENGINE=MyISAM AUTO_INCREMENT=1599 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `foo`
--

DROP TABLE IF EXISTS `foo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foo` (
  `accountid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forward`
--

DROP TABLE IF EXISTS `forward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forward` (
  `forwardid` int(11) NOT NULL AUTO_INCREMENT,
  `hostid` int(11) NOT NULL DEFAULT '0',
  `login` varchar(8) NOT NULL DEFAULT '',
  `email` varchar(28) NOT NULL DEFAULT '',
  PRIMARY KEY (`forwardid`),
  KEY `login_ndx` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=1117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `freeuids`
--

DROP TABLE IF EXISTS `freeuids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freeuids` (
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gems`
--

DROP TABLE IF EXISTS `gems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gems` (
  `emplid` int(11) NOT NULL DEFAULT '0',
  `ssn` varchar(9) DEFAULT NULL,
  `badge` int(11) NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT '',
  `faculty` char(1) NOT NULL DEFAULT '',
  `jobcode` varchar(4) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `campus` char(1) NOT NULL DEFAULT '',
  `tdate` date DEFAULT NULL,
  `actdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `effdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` char(1) NOT NULL DEFAULT '',
  `office` varchar(10) NOT NULL DEFAULT '',
  `mailpoint` varchar(20) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `barg_unit_code` varchar(4) DEFAULT NULL,
  `union_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`emplid`),
  UNIQUE KEY `gems_badge_ndx` (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gemsbanner`
--

DROP TABLE IF EXISTS `gemsbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gemsbanner` (
  `pidm` int(11) NOT NULL,
  `emplid` int(11) NOT NULL,
  KEY `pidm` (`pidm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `groupings`
--

DROP TABLE IF EXISTS `groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupings` (
  `domainid` int(11) DEFAULT NULL,
  `rank` char(1) DEFAULT NULL,
  `dabbr` char(4) DEFAULT NULL,
  `cabbr` char(2) DEFAULT NULL,
  `campus` char(1) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `gname` varchar(12) NOT NULL DEFAULT '',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `homepath` varchar(36) NOT NULL DEFAULT '/home',
  `quota` int(11) NOT NULL DEFAULT '5',
  `maxpwage` int(11) NOT NULL DEFAULT '0',
  `inact` int(11) NOT NULL DEFAULT '0',
  `lifespan` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `gid_ndx` (`domainid`,`gid`),
  KEY `gname_ndx` (`gname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `badge` int(11) NOT NULL DEFAULT '0',
  `expiredate` date NOT NULL DEFAULT '0000-00-00',
  `role` char(2) NOT NULL DEFAULT '',
  `requester` varchar(48) NOT NULL DEFAULT '',
  `reason` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health` (
  `badge` int(11) NOT NULL,
  `md_badge` int(11) NOT NULL,
  `md_role` varchar(64) NOT NULL,
  `md_netid` varchar(64) NOT NULL,
  `md_pidm` int(11) NOT NULL DEFAULT '0',
  `md_usfid` varchar(9) DEFAULT NULL,
  `md_emplid` int(11) NOT NULL DEFAULT '0',
  `md_dob` int(11) DEFAULT NULL,
  `md_ssn` int(11) DEFAULT NULL,
  `md_lname` varchar(64) NOT NULL,
  `md_fname` varchar(64) NOT NULL,
  `md_mname` varchar(64) DEFAULT NULL,
  `md_active_flag` char(1) DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`badge`,`md_badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `homepaths`
--

DROP TABLE IF EXISTS `homepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepaths` (
  `homepathid` int(11) NOT NULL AUTO_INCREMENT,
  `hostid` int(11) NOT NULL DEFAULT '0',
  `dept` varchar(60) NOT NULL DEFAULT '',
  `affiliation` varchar(24) NOT NULL DEFAULT '',
  `homepath` varchar(36) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `role` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`homepathid`),
  UNIQUE KEY `home_ndx` (`hostid`,`homepath`),
  KEY `dept_ndx` (`deptid`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hostmap`
--

DROP TABLE IF EXISTS `hostmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostmap` (
  `domainid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) DEFAULT NULL,
  `rank` char(1) DEFAULT NULL,
  `dabbr` char(4) DEFAULT NULL,
  `cabbr` char(2) DEFAULT NULL,
  `hostid` int(11) NOT NULL DEFAULT '0',
  KEY `dom_ndx` (`domainid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hosts`
--

DROP TABLE IF EXISTS `hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hosts` (
  `hostid` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(12) NOT NULL DEFAULT '',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `node` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `ou` varchar(8) DEFAULT 'it',
  `fperms` char(3) NOT NULL DEFAULT '',
  `unissn` char(1) NOT NULL DEFAULT '',
  `forward` char(1) NOT NULL DEFAULT '',
  `biguid` char(1) NOT NULL DEFAULT '',
  `showdept` char(1) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hostid`),
  KEY `hostdom_ndx` (`domainid`)
) ENGINE=MyISAM AUTO_INCREMENT=460 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hsc`
--

DROP TABLE IF EXISTS `hsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hsc` (
  `hscid` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL DEFAULT '',
  `usfid` varchar(9) NOT NULL DEFAULT '',
  `pidm` int(11) NOT NULL DEFAULT '0',
  `badge` int(11) NOT NULL DEFAULT '0',
  `cohort` varchar(5) NOT NULL,
  `lname` varchar(20) NOT NULL DEFAULT '',
  `fname` varchar(16) NOT NULL DEFAULT '',
  `mname` varchar(16) NOT NULL DEFAULT '',
  `suffix` varchar(16) NOT NULL DEFAULT '',
  `college` varchar(4) NOT NULL DEFAULT '',
  `usertype` varchar(10) NOT NULL DEFAULT '',
  `activation` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`hscid`),
  KEY `hsc_badge_ndx` (`badge`),
  KEY `hsc_cohort_ndx` (`cohort`),
  KEY `hsc_pidm_ndx` (`pidm`),
  KEY `hsc_login_ndx` (`login`),
  KEY `hsc_usfid_ndx` (`usfid`)
) ENGINE=MyISAM AUTO_INCREMENT=22364 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hsc_bak`
--

DROP TABLE IF EXISTS `hsc_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hsc_bak` (
  `hscid` int(11) NOT NULL DEFAULT '0',
  `login` varchar(20) NOT NULL DEFAULT '',
  `usfid` varchar(9) NOT NULL DEFAULT '',
  `pidm` int(11) NOT NULL DEFAULT '0',
  `badge` int(11) NOT NULL DEFAULT '0',
  `cohort` varchar(5) NOT NULL DEFAULT '',
  `lname` varchar(20) NOT NULL DEFAULT '',
  `fname` varchar(16) NOT NULL DEFAULT '',
  `mname` varchar(16) NOT NULL DEFAULT '',
  `suffix` varchar(16) NOT NULL DEFAULT '',
  `college` varchar(4) NOT NULL DEFAULT '',
  `usertype` varchar(10) NOT NULL DEFAULT '',
  `activation` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hscusers`
--

DROP TABLE IF EXISTS `hscusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hscusers` (
  `username` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `idcards`
--

DROP TABLE IF EXISTS `idcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idcards` (
  `cardid` int(11) NOT NULL DEFAULT '0',
  `library` char(1) NOT NULL DEFAULT '',
  `badge` int(11) NOT NULL DEFAULT '0',
  `ssn` varchar(9) NOT NULL DEFAULT '',
  `usfid` varchar(9) NOT NULL DEFAULT '',
  `action` char(1) NOT NULL DEFAULT '',
  `role` char(2) NOT NULL DEFAULT '',
  `classcode` varchar(9) NOT NULL DEFAULT '',
  `expdate` date NOT NULL DEFAULT '0000-00-00',
  `image` varchar(40) NOT NULL DEFAULT '',
  `inbb` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`cardid`),
  KEY `card_badge_ndx` (`badge`),
  KEY `card_ssn_ndx` (`ssn`),
  KEY `usfid_ndx` (`usfid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instrolesmapping`
--

DROP TABLE IF EXISTS `instrolesmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrolesmapping` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  `role_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `code` varchar(4) NOT NULL DEFAULT '',
  `role` char(2) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ldap_attr`
--

DROP TABLE IF EXISTS `ldap_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap_attr` (
  `badge` int(11) NOT NULL,
  `attrid` int(12) NOT NULL,
  `value` varchar(256) NOT NULL,
  `status` enum('D','A') NOT NULL DEFAULT 'A',
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `badge_attrid_value` (`badge`,`attrid`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ldap_attr_defn`
--

DROP TABLE IF EXISTS `ldap_attr_defn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap_attr_defn` (
  `AttrId` int(12) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL,
  `ObjectClass` varchar(64) NOT NULL,
  `Required` tinyint(1) NOT NULL DEFAULT '0',
  `MultiValue` tinyint(1) NOT NULL DEFAULT '0',
  `Description` text,
  PRIMARY KEY (`AttrId`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loginfixes`
--

DROP TABLE IF EXISTS `loginfixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginfixes` (
  `fixid` int(11) NOT NULL AUTO_INCREMENT,
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `badge` int(11) NOT NULL DEFAULT '0',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `oldlogin` varchar(20) NOT NULL DEFAULT '',
  `newlogin` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`fixid`),
  KEY `oldlogin_ndx` (`oldlogin`)
) ENGINE=MyISAM AUTO_INCREMENT=738 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machines` (
  `ip` char(40) NOT NULL DEFAULT '',
  `machname` char(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `majors` (
  `code` varchar(4) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mapping`
--

DROP TABLE IF EXISTS `mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping` (
  `campus` char(1) DEFAULT NULL,
  `cabbr` char(2) DEFAULT NULL,
  `rank` char(1) DEFAULT NULL,
  `domainid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `maprules`
--

DROP TABLE IF EXISTS `maprules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maprules` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL DEFAULT '0',
  `category` char(2) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `cabbr` char(2) NOT NULL DEFAULT '',
  `campus` char(1) NOT NULL DEFAULT '',
  `domainid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `hostid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ruleid`),
  KEY `mapdom_ndx` (`domainid`),
  KEY `host_ndx` (`hostid`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `login` varchar(20) NOT NULL DEFAULT '',
  `badge` int(11) NOT NULL DEFAULT '0',
  `accountid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medcourses`
--

DROP TABLE IF EXISTS `medcourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medcourses` (
  `medcrsid` int(11) NOT NULL AUTO_INCREMENT,
  `crn` int(11) NOT NULL DEFAULT '0',
  `termcode` int(11) NOT NULL DEFAULT '0',
  `ptrm` char(3) NOT NULL DEFAULT '',
  `subjcode` varchar(4) NOT NULL DEFAULT '',
  `number` varchar(5) NOT NULL DEFAULT '',
  `title` varchar(30) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '0000-00-00',
  `enddate` date NOT NULL DEFAULT '0000-00-00',
  `master` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`medcrsid`),
  UNIQUE KEY `medcrs_ndx` (`termcode`,`crn`)
) ENGINE=MyISAM AUTO_INCREMENT=96540 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medrosters`
--

DROP TABLE IF EXISTS `medrosters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medrosters` (
  `medrostid` int(11) NOT NULL DEFAULT '0',
  `medcrsid` int(11) DEFAULT NULL,
  `hscid` int(11) DEFAULT NULL,
  `crsrole` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medrostersbak`
--

DROP TABLE IF EXISTS `medrostersbak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medrostersbak` (
  `medrostid` int(11) NOT NULL DEFAULT '0',
  `medcrsid` int(11) DEFAULT NULL,
  `hscid` int(11) DEFAULT NULL,
  `crsrole` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `domainid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `merges`
--

DROP TABLE IF EXISTS `merges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merges` (
  `badge_src` int(11) NOT NULL,
  `badge_dest` int(11) NOT NULL,
  `badge_user` int(11) NOT NULL,
  `merge_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `names`
--

DROP TABLE IF EXISTS `names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `names` (
  `badge` int(11) NOT NULL AUTO_INCREMENT,
  `ssn` int(11) NOT NULL DEFAULT '0',
  `login` varchar(8) NOT NULL DEFAULT '',
  `role` char(2) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `fname` varchar(100) NOT NULL DEFAULT '',
  `mname` varchar(100) NOT NULL DEFAULT '',
  `gen` varchar(4) NOT NULL DEFAULT '',
  `site` varchar(8) NOT NULL DEFAULT '',
  `maildrop` varchar(128) NOT NULL DEFAULT '',
  `hostid` int(11) NOT NULL DEFAULT '0',
  `ldap` char(1) NOT NULL DEFAULT 'D',
  `privacy` int(11) NOT NULL DEFAULT '0',
  `bday` int(11) NOT NULL DEFAULT '0',
  `authority` char(1) NOT NULL DEFAULT '',
  `hasbb` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`badge`),
  KEY `netid_ndx` (`role`),
  KEY `name_ndx` (`lname`(10),`fname`(8)),
  KEY `ssn_ndx` (`ssn`),
  KEY `maildrop_ndx` (`maildrop`),
  KEY `bday_ndx` (`bday`),
  KEY `login_ndx` (`login`),
  KEY `hostid_idx` (`hostid`),
  KEY `ldap` (`ldap`),
  KEY `role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=2288288 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger `after_names_update` after update on `names` for each row select putIdCardValues(NEW.badge)into @ignoredValue */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`chance`@`131.247.100.74`*/ /*!50003 TRIGGER `before_names_delete` BEFORE DELETE ON `names` FOR EACH ROW insert into names_reconciled select * from names where badge=OLD.badge */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `names_reconciled`
--

DROP TABLE IF EXISTS `names_reconciled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `names_reconciled` (
  `badge` int(11) NOT NULL AUTO_INCREMENT,
  `ssn` int(11) NOT NULL DEFAULT '0',
  `login` varchar(8) NOT NULL DEFAULT '',
  `role` char(2) NOT NULL DEFAULT '',
  `lname` varchar(20) NOT NULL DEFAULT '',
  `fname` varchar(16) NOT NULL DEFAULT '',
  `mname` varchar(16) NOT NULL DEFAULT '',
  `gen` varchar(4) NOT NULL DEFAULT '',
  `site` varchar(8) NOT NULL DEFAULT '',
  `maildrop` varchar(48) NOT NULL DEFAULT '',
  `hostid` int(11) NOT NULL DEFAULT '0',
  `ldap` char(1) NOT NULL DEFAULT 'D',
  `privacy` int(11) NOT NULL DEFAULT '0',
  `bday` int(11) NOT NULL DEFAULT '0',
  `authority` char(1) NOT NULL DEFAULT '',
  `hasbb` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`badge`),
  KEY `netid_ndx` (`role`),
  KEY `name_ndx` (`lname`(10),`fname`(8)),
  KEY `ssn_ndx` (`ssn`),
  KEY `maildrop_ndx` (`maildrop`),
  KEY `bday_ndx` (`bday`),
  KEY `login_ndx` (`login`),
  KEY `hostid_idx` (`hostid`)
) ENGINE=MyISAM AUTO_INCREMENT=2287558 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `netids`
--

DROP TABLE IF EXISTS `netids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `netids` (
  `netid` varchar(128) NOT NULL DEFAULT '',
  `badge` int(11) NOT NULL DEFAULT '0',
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `effdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ldap` char(1) NOT NULL DEFAULT '',
  `usealias` char(1) NOT NULL DEFAULT 'N',
  `secretq` int(11) NOT NULL DEFAULT '0',
  `secreta` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`netid`),
  UNIQUE KEY `netid_badge_ndx` (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_type` enum('Person','Account','Group') DEFAULT 'Person',
  `note_value` int(11) DEFAULT '0',
  `badge` int(11) NOT NULL,
  `badge_scribe` int(11) NOT NULL,
  `note` varchar(2048) DEFAULT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22646 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oasis`
--

DROP TABLE IF EXISTS `oasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oasis` (
  `pidm` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL DEFAULT '0',
  `ssn` varchar(9) NOT NULL DEFAULT '',
  `usfid` varchar(9) NOT NULL DEFAULT '',
  `registered` char(1) NOT NULL DEFAULT '',
  `majrcode` varchar(4) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `college` char(2) NOT NULL DEFAULT '',
  `campus` char(1) NOT NULL DEFAULT '',
  `privacy` char(1) NOT NULL DEFAULT '',
  `levelcode` char(2) NOT NULL DEFAULT '',
  `class` char(2) NOT NULL DEFAULT '',
  `lastterm` int(11) NOT NULL DEFAULT '0',
  `dead` char(1) NOT NULL DEFAULT '',
  `mailpoint` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(10) NOT NULL DEFAULT '',
  `admitterm` int(11) NOT NULL DEFAULT '0',
  `asterm` int(11) NOT NULL DEFAULT '0',
  `instterm` int(11) NOT NULL DEFAULT '0',
  `email` varchar(48) NOT NULL DEFAULT '',
  `nickname` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`pidm`),
  UNIQUE KEY `oasis_usfid_ndx` (`usfid`),
  KEY `oasis_badge_ndx` (`badge`),
  KEY `oasis_ssn_ndx` (`ssn`)
) ENGINE=MyISAM AUTO_INCREMENT=138798644 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger after_oasis_insert AFTER INSERT ON oasis for each row select putIdCardValues(NEW.badge) into @ignoredValue */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger `after_oasis_update` after update on `oasis` for each row select putIdCardValues(NEW.badge) into @ignoredValue */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `oddcases`
--

DROP TABLE IF EXISTS `oddcases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oddcases` (
  `badge` int(11) NOT NULL DEFAULT '0',
  `condition` char(20) NOT NULL DEFAULT '',
  UNIQUE KEY `oddcase_ndx` (`badge`,`condition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldids`
--

DROP TABLE IF EXISTS `oldids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldids` (
  `changeid` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idtype` char(1) NOT NULL DEFAULT 'S',
  `value` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`changeid`),
  UNIQUE KEY `constraint_ndx` (`idtype`,`value`),
  KEY `old_badge_ndx` (`badge`),
  KEY `old_value_ndx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4008 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `badge` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgs`
--

DROP TABLE IF EXISTS `orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgs` (
  `orgid` int(11) NOT NULL AUTO_INCREMENT,
  `porgid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orgid`),
  UNIQUE KEY `org_ndx` (`porgid`)
) ENGINE=MyISAM AUTO_INCREMENT=1940 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgsnaps`
--

DROP TABLE IF EXISTS `orgsnaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgsnaps` (
  `orgsnapid` int(11) NOT NULL AUTO_INCREMENT,
  `orgid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(12) NOT NULL DEFAULT '',
  `arg` varchar(40) DEFAULT NULL,
  `college` char(2) NOT NULL DEFAULT '',
  `majrcode` varchar(4) NOT NULL DEFAULT '',
  `conc` varchar(4) NOT NULL DEFAULT '',
  `campus` char(1) NOT NULL DEFAULT '',
  `role` char(2) NOT NULL DEFAULT '',
  `courserole` varchar(18) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`orgsnapid`),
  KEY `orgsnap_orgid_ndx` (`orgid`)
) ENGINE=MyISAM AUTO_INCREMENT=1834 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `outlook`
--

DROP TABLE IF EXISTS `outlook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outlook` (
  `outlookid` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(28) NOT NULL DEFAULT '',
  `fname` varchar(24) NOT NULL DEFAULT '',
  `login` varchar(24) NOT NULL DEFAULT '',
  `hostid` int(11) NOT NULL DEFAULT '0',
  `dept` varchar(8) NOT NULL DEFAULT '',
  `ssn` varchar(9) NOT NULL DEFAULT '',
  `badge` int(11) NOT NULL DEFAULT '0',
  `accountid` int(11) NOT NULL DEFAULT '0',
  `enddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `effdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`outlookid`),
  KEY `login_ndx` (`login`),
  KEY `ssn_ndx` (`ssn`),
  KEY `acct_ndx` (`accountid`)
) ENGINE=MyISAM AUTO_INCREMENT=10776 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `passwds`
--

DROP TABLE IF EXISTS `passwds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwds` (
  `machname` char(12) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `fullname` char(20) DEFAULT NULL,
  `password` char(16) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `login` char(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `people_admin`
--

DROP TABLE IF EXISTS `people_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people_admin` (
  `paid` varchar(64) DEFAULT NULL,
  `position` varchar(64) DEFAULT NULL,
  `department` varchar(256) DEFAULT NULL,
  `emplid` varchar(64) DEFAULT NULL,
  `usfid` varchar(64) DEFAULT NULL,
  `ssn` varchar(64) DEFAULT NULL,
  `dob` varchar(64) DEFAULT NULL,
  `lname` varchar(128) DEFAULT NULL,
  `fname` varchar(128) DEFAULT NULL,
  `mname` varchar(128) DEFAULT NULL,
  `gender` enum('M','F','U') DEFAULT 'U',
  `prefix` varchar(16) DEFAULT NULL,
  `suffix` varchar(16) DEFAULT NULL,
  `addrline1` varchar(256) DEFAULT NULL,
  `addrline2` varchar(256) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zip` varchar(64) DEFAULT NULL,
  `cellphone` varchar(64) DEFAULT NULL,
  `hpid` varchar(64) DEFAULT NULL,
  `baggage` text,
  `loaded_dt` datetime NOT NULL,
  `selected_dt` datetime DEFAULT NULL,
  `completed_dt` datetime DEFAULT NULL,
  `netid` varchar(32) DEFAULT NULL,
  `zfid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`zfid`),
  UNIQUE KEY `hpid` (`hpid`)
) ENGINE=MyISAM AUTO_INCREMENT=12412 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `people_admin_v1`
--

DROP TABLE IF EXISTS `people_admin_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people_admin_v1` (
  `paid` varchar(64) DEFAULT NULL,
  `position` varchar(64) DEFAULT NULL,
  `department` varchar(256) DEFAULT NULL,
  `emplid` varchar(64) DEFAULT NULL,
  `usfid` varchar(64) DEFAULT NULL,
  `ssn` varchar(64) DEFAULT NULL,
  `dob` varchar(64) DEFAULT NULL,
  `lname` varchar(128) DEFAULT NULL,
  `fname` varchar(128) DEFAULT NULL,
  `mname` varchar(128) DEFAULT NULL,
  `prefix` varchar(16) DEFAULT NULL,
  `suffix` varchar(16) DEFAULT NULL,
  `addrline1` varchar(256) DEFAULT NULL,
  `addrline2` varchar(256) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zip` varchar(64) DEFAULT NULL,
  `cellphone` varchar(64) DEFAULT NULL,
  `hpid` varchar(64) DEFAULT NULL,
  `loaded_dt` datetime NOT NULL,
  `selected_dt` datetime DEFAULT NULL,
  `completed_dt` datetime DEFAULT NULL,
  `netid` varchar(32) DEFAULT NULL,
  `zfid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`zfid`),
  UNIQUE KEY `hpid` (`hpid`)
) ENGINE=MyISAM AUTO_INCREMENT=912 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permits`
--

DROP TABLE IF EXISTS `permits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permits` (
  `permitid` int(11) NOT NULL AUTO_INCREMENT,
  `machname` char(12) NOT NULL DEFAULT '',
  `target` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permitid`),
  KEY `permits_ndx` (`machname`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL,
  `type` enum('Home','Work','Mobile','Other') DEFAULT NULL,
  `status` enum('Verified','Unverified','Invalid') DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `display` enum('Y','N') DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `porgs`
--

DROP TABLE IF EXISTS `porgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `porgs` (
  `porgid` int(11) NOT NULL AUTO_INCREMENT,
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requested` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` char(1) NOT NULL DEFAULT '',
  `followups` int(11) NOT NULL DEFAULT '0',
  `lastfollowup` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `manager` int(11) NOT NULL DEFAULT '0',
  `subjectid` int(11) NOT NULL DEFAULT '0',
  `category` varchar(8) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `contact` varchar(31) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  `details` varchar(4000) NOT NULL,
  PRIMARY KEY (`porgid`),
  UNIQUE KEY `token_ndex` (`token`),
  KEY `title_ndx` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=3158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `porgsbak`
--

DROP TABLE IF EXISTS `porgsbak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `porgsbak` (
  `porgid` int(11) NOT NULL DEFAULT '0',
  `activity` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `requested` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` char(1) NOT NULL DEFAULT '',
  `followups` int(11) NOT NULL DEFAULT '0',
  `lastfollowup` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `manager` int(11) NOT NULL DEFAULT '0',
  `subjectid` int(11) NOT NULL DEFAULT '0',
  `category` varchar(8) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `contact` varchar(31) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prefs`
--

DROP TABLE IF EXISTS `prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefs` (
  `badge` int(11) NOT NULL DEFAULT '0',
  `role` char(2) NOT NULL DEFAULT '',
  `deptid` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(15) NOT NULL DEFAULT '',
  `fullname` varchar(60) NOT NULL DEFAULT '',
  `jobtitle` varchar(40) NOT NULL DEFAULT '',
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`badge`),
  KEY `badge_ndx` (`badge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `code` char(1) NOT NULL DEFAULT '',
  `gname` varchar(8) DEFAULT NULL,
  `classification` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regterms`
--

DROP TABLE IF EXISTS `regterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regterms` (
  `regtermid` int(11) NOT NULL AUTO_INCREMENT,
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `badge` int(11) NOT NULL DEFAULT '0',
  `termcode` int(11) NOT NULL DEFAULT '0',
  `registered` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`regtermid`),
  KEY `badge_ndx` (`badge`)
) ENGINE=MyISAM AUTO_INCREMENT=2193958 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `code` char(2) NOT NULL DEFAULT '',
  `gname` varchar(8) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `instrole` varchar(20) NOT NULL DEFAULT '',
  `lmsvalid` char(1) NOT NULL DEFAULT '',
  `bblevel` int(11) NOT NULL DEFAULT '0',
  `cardtype` varchar(24) NOT NULL DEFAULT '',
  `classcode` varchar(9) DEFAULT NULL,
  `eppa` varchar(9) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles_orig`
--

DROP TABLE IF EXISTS `roles_orig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_orig` (
  `code` char(2) NOT NULL DEFAULT '',
  `gname` varchar(8) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `instrole` varchar(20) NOT NULL DEFAULT '',
  `lmsvalid` char(1) NOT NULL DEFAULT '',
  `bblevel` int(11) NOT NULL DEFAULT '0',
  `cardtype` varchar(24) NOT NULL DEFAULT '',
  `classcode` varchar(9) DEFAULT NULL,
  `eppa` varchar(9) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `sectionid` varchar(16) NOT NULL DEFAULT '',
  `crn` int(11) NOT NULL DEFAULT '0',
  `instructor` int(11) NOT NULL DEFAULT '0',
  `enddate` date NOT NULL DEFAULT '0000-00-00',
  `master` int(11) NOT NULL DEFAULT '0',
  `early` char(1) NOT NULL,
  PRIMARY KEY (`sectionid`),
  KEY `crn_ndx` (`crn`),
  KEY `inst_ndx` (`instructor`),
  KEY `master_idx` (`master`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shells`
--

DROP TABLE IF EXISTS `shells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shells` (
  `domainid` int(11) NOT NULL DEFAULT '0',
  `shellstat` int(11) NOT NULL DEFAULT '0',
  `proper` char(1) NOT NULL DEFAULT '',
  `command` char(60) NOT NULL DEFAULT '',
  UNIQUE KEY `shells_key` (`domainid`,`shellstat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `tag` char(8) NOT NULL DEFAULT '',
  `format` char(4) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `filename` char(12) NOT NULL DEFAULT '',
  `college` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snapcodes`
--

DROP TABLE IF EXISTS `snapcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snapcodes` (
  `snapcodesid` int(11) NOT NULL AUTO_INCREMENT,
  `bb_org_id` varchar(50) NOT NULL,
  `subj_code` varchar(4) NOT NULL DEFAULT '',
  `crs_numb` varchar(5) NOT NULL DEFAULT '',
  `crs_online` varchar(5) NOT NULL DEFAULT '',
  `crs_campus` varchar(5) NOT NULL DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `college` varchar(3) NOT NULL DEFAULT '',
  `department` varchar(4) NOT NULL DEFAULT '',
  `major` varchar(4) NOT NULL DEFAULT '',
  `minor` varchar(6) NOT NULL DEFAULT '',
  `concentration` varchar(4) NOT NULL DEFAULT '',
  `campus` varchar(2) NOT NULL DEFAULT '',
  `degree` varchar(6) NOT NULL DEFAULT '',
  `educ_level` varchar(5) NOT NULL DEFAULT '' COMMENT '1F 2S 3J 4R UG GR ND',
  `courserole` varchar(25) NOT NULL DEFAULT 'student',
  `query` varchar(30) NOT NULL DEFAULT '',
  `atts_code` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`snapcodesid`)
) ENGINE=MyISAM AUTO_INCREMENT=814 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sources` (
  `sourceid` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  PRIMARY KEY (`sourceid`),
  KEY `table_ndx` (`table`),
  KEY `value_ndx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ssn_duplicates`
--

DROP TABLE IF EXISTS `ssn_duplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssn_duplicates` (
  `ssn` varbinary(9) NOT NULL DEFAULT '',
  `num_duplicates` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ssnfixes`
--

DROP TABLE IF EXISTS `ssnfixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssnfixes` (
  `oldssn` int(11) NOT NULL DEFAULT '0',
  `newssn` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oldssn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `st_idname`
--

DROP TABLE IF EXISTS `st_idname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_idname` (
  `NAME_LAST` char(18) DEFAULT NULL,
  `NAME_FIRST` char(15) DEFAULT NULL,
  `NAME_MIDDLE` char(18) DEFAULT NULL,
  `USF_ID` varchar(9) NOT NULL DEFAULT '',
  `EMPLID` varchar(11) DEFAULT NULL,
  `id_class_code` varchar(9) DEFAULT 'NAH',
  `bday` int(11) NOT NULL DEFAULT '0',
  `sentToCardOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`USF_ID`),
  KEY `name_last_idx` (`NAME_LAST`),
  KEY `name_first_idx` (`NAME_FIRST`),
  KEY `name_middle_idx` (`NAME_MIDDLE`),
  KEY `emplid_idx` (`EMPLID`),
  KEY `usfid_idx` (`USF_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subjectid` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` varchar(48) NOT NULL DEFAULT '',
  PRIMARY KEY (`subjectid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `switches`
--

DROP TABLE IF EXISTS `switches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switches` (
  `sectionid` varchar(16) NOT NULL DEFAULT '' COMMENT 'sectionid of official section',
  `instructor` varchar(12) NOT NULL DEFAULT '' COMMENT 'courses that switch instructors in mid-term',
  PRIMARY KEY (`sectionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysroles`
--

DROP TABLE IF EXISTS `sysroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysroles` (
  `code` char(1) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `snapshot` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tempbadges`
--

DROP TABLE IF EXISTS `tempbadges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempbadges` (
  `badge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tpidms`
--

DROP TABLE IF EXISTS `tpidms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpidms` (
  `tpidmid` int(11) NOT NULL AUTO_INCREMENT,
  `badge` int(11) NOT NULL DEFAULT '0',
  `tpidm` varchar(12) NOT NULL DEFAULT '',
  `pidm` int(11) NOT NULL DEFAULT '0',
  `activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tpidmid`),
  UNIQUE KEY `badge_ndx` (`badge`)
) ENGINE=MyISAM AUTO_INCREMENT=4018 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usfhealth`
--

DROP TABLE IF EXISTS `usfhealth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usfhealth` (
  `usfid` varchar(9) NOT NULL,
  `badge` int(11) DEFAULT NULL,
  `md_badge` int(11) DEFAULT NULL,
  `md_role` varchar(64) NOT NULL,
  `md_netid` varchar(64) DEFAULT NULL,
  `md_pidm` int(11) NOT NULL DEFAULT '0',
  `md_usfid` varchar(9) DEFAULT NULL,
  `md_emplid` bigint(20) NOT NULL DEFAULT '0',
  `md_dob` int(11) DEFAULT NULL,
  `md_ssn` int(11) DEFAULT NULL,
  `md_lname` varchar(64) NOT NULL,
  `md_fname` varchar(64) NOT NULL,
  `md_mname` varchar(64) DEFAULT NULL,
  `md_active_flag` char(1) DEFAULT NULL,
  `md_status` char(2) DEFAULT NULL,
  `md_termination_dt` date DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`usfid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip` (
  `vip_idx` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `source` char(1) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `mname` varchar(256) DEFAULT NULL,
  `lname` varchar(256) NOT NULL,
  `nname` varchar(256) DEFAULT NULL,
  `dob` date NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `created_ip` varchar(64) DEFAULT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`vip_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_attr_defn`
--

DROP TABLE IF EXISTS `vip_attr_defn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_attr_defn` (
  `rid` int(11) NOT NULL,
  `attrid` int(11) NOT NULL,
  `label` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `required_flg` char(1) NOT NULL DEFAULT 'N',
  `default_value` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`rid`,`attrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_card`
--

DROP TABLE IF EXISTS `vip_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_card` (
  `cardid` varchar(64) NOT NULL,
  `library` char(1) NOT NULL,
  `vipid` int(11) NOT NULL,
  `ssn` varchar(9) DEFAULT NULL,
  `usfid` varchar(9) DEFAULT NULL,
  `action` char(1) DEFAULT NULL,
  `role` char(2) DEFAULT NULL,
  `classcode` varchar(9) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `image` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_ent`
--

DROP TABLE IF EXISTS `vip_ent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_ent` (
  `entid` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(64) NOT NULL,
  `service` varchar(64) NOT NULL,
  `level` varchar(64) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_vipid` int(11) NOT NULL,
  PRIMARY KEY (`entid`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_ent_removed`
--

DROP TABLE IF EXISTS `vip_ent_removed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_ent_removed` (
  `entid` int(11) NOT NULL,
  `vipid` int(11) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_vipid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_ent_user`
--

DROP TABLE IF EXISTS `vip_ent_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_ent_user` (
  `entid` int(11) NOT NULL,
  `vipid` int(11) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_vipid` int(11) NOT NULL,
  PRIMARY KEY (`entid`,`vipid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ent_removed BEFORE DELETE ON vip_ent_user
FOR EACH ROW INSERT INTO vip_ent_removed SELECT OLD.entid, OLD.vipid, OLD.created_dt, OLD.created_vipid */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vip_group`
--

DROP TABLE IF EXISTS `vip_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_group` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(256) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `ssn_flag` char(1) DEFAULT 'N',
  `role` char(2) NOT NULL DEFAULT 'X',
  `status` char(1) NOT NULL DEFAULT 'O',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_group_member`
--

DROP TABLE IF EXISTS `vip_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_group_member` (
  `gid` int(11) NOT NULL,
  `vipid` int(11) NOT NULL,
  `function` char(1) NOT NULL DEFAULT '',
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_vipid` int(11) DEFAULT NULL,
  `expiration_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`gid`,`vipid`,`function`),
  KEY `vipidx` (`vipid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER group_removed BEFORE DELETE ON vip_group_member
FOR EACH ROW INSERT INTO vip_group_removed SELECT OLD.gid, OLD.vipid, OLD.function, OLD.created_dt, OLD.created_vipid, now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vip_group_removed`
--

DROP TABLE IF EXISTS `vip_group_removed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_group_removed` (
  `gid` int(11) NOT NULL,
  `vipid` int(11) NOT NULL,
  `function` char(1) DEFAULT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_vipid` int(11) NOT NULL,
  `deleted_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_group_resource`
--

DROP TABLE IF EXISTS `vip_group_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_group_resource` (
  `gid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_res_attr`
--

DROP TABLE IF EXISTS `vip_res_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_res_attr` (
  `res_idx` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `attrid` int(11) NOT NULL,
  `value` varchar(256) DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_vipid` int(11) DEFAULT NULL,
  PRIMARY KEY (`res_idx`,`rid`,`attrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_res_set`
--

DROP TABLE IF EXISTS `vip_res_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_res_set` (
  `res_idx` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `vipid` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `status_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delay` int(11) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`res_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=21796 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_resource`
--

DROP TABLE IF EXISTS `vip_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_resource` (
  `rid` int(11) NOT NULL,
  `label` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `dependence_rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_source_code`
--

DROP TABLE IF EXISTS `vip_source_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_source_code` (
  `source` char(1) NOT NULL,
  `sorid` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `entid` int(11) DEFAULT NULL,
  PRIMARY KEY (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_sponsor`
--

DROP TABLE IF EXISTS `vip_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_sponsor` (
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `create_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_status_code`
--

DROP TABLE IF EXISTS `vip_status_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_status_code` (
  `status` char(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

