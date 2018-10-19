/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.38 : Database - vport
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vport` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vport`;

/*Table structure for table `evaluation_content` */

DROP TABLE IF EXISTS `evaluation_content`;

CREATE TABLE `evaluation_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ch_name` varchar(255) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `evaluation_content` */

insert  into `evaluation_content`(`id`,`name`,`ch_name`,`type`) values (1,'Front Hand','正拍',1),(2,'Back Hand','反拍',1),(3,'Front Volley','正拦',1),(4,'Back Volley','反拦',1),(5,'Smash','高压',1),(6,'Serve','发球',1),(7,'Speed','速度',2),(8,'Strength','力量',2),(9,'Explosive Force','爆发力',2),(10,'Flexibility','柔韧性',2),(11,'Coordination','协调性',2);

/*Table structure for table `evaluation_type` */

DROP TABLE IF EXISTS `evaluation_type`;

CREATE TABLE `evaluation_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ch_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `evaluation_type` */

insert  into `evaluation_type`(`id`,`name`,`ch_name`) values (1,'Cognitive Techniques','技术认知'),(2,'Athletic Ability','运动能力');

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

/*Data for the table `information` */

insert  into `information`(`id`,`user_id`,`content`,`url`,`time`,`status`) values (262,21,'Joined New Class','http://www.vport.com/rest/course/classInfoByClassIdForStu?classId=17','2018-10-19 22:15:23',0),(263,20,'New Student Joined','http://www.vport.com/rest/course/classInfoByClassIdForStu?classId=17','2018-10-19 22:15:23',0),(264,10,'New Student Joined','http://www.vport.com/rest/course/classInfoByClassIdForStu?classId=17','2018-10-19 22:15:23',1),(265,15,'New Training Plan','http://www.vport.com/rest/course/toEachPlan?id=37','2018-10-19 22:19:46',0),(266,16,'New Training Plan','http://www.vport.com/rest/course/toEachPlan?id=37','2018-10-19 22:19:46',0),(267,17,'New Training Plan','http://www.vport.com/rest/course/toEachPlan?id=37','2018-10-19 22:19:46',0),(268,18,'New Training Plan','http://www.vport.com/rest/course/toEachPlan?id=37','2018-10-19 22:19:46',0),(269,16,'Training Data Updated','http://www.vport.com/rest/common/showStu?id=16','2018-10-19 22:20:51',0),(270,27,'Joined New Class','http://www.vport.com/rest/course/classInfoByClassIdForStu?classId=15','2018-10-19 22:55:39',0),(271,19,'New Student Joined','http://www.vport.com/rest/course/classInfoByClassIdForStu?classId=15','2018-10-19 22:55:39',1),(272,10,'New Student Joined','http://www.vport.com/rest/course/classInfoByClassIdForStu?classId=15','2018-10-19 22:55:39',0);

/*Table structure for table `performance_assess` */

DROP TABLE IF EXISTS `performance_assess`;

CREATE TABLE `performance_assess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `player` bigint(20) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `trainer` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `performance_assess` */

insert  into `performance_assess`(`id`,`player`,`time`,`comment`,`trainer`) values (22,11,'2018-09-03','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(23,12,'2018-09-03','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(24,13,'2018-09-03','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(25,14,'2018-09-03','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(26,11,'2018-09-14','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(27,12,'2018-09-14','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(28,13,'2018-09-14','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(29,14,'2018-09-14','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(30,11,'2018-09-21','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(31,12,'2018-09-21','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(32,13,'2018-09-21','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(33,14,'2018-09-21','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(34,11,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(35,12,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(36,13,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(37,14,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(38,15,'2018-09-19','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(39,16,'2018-09-19','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(40,17,'2018-09-19','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(41,18,'2018-09-19','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(42,15,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(43,16,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(44,17,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(45,18,'2018-09-28','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(46,11,'2018-10-05','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10),(47,16,'2018-10-19','You have made a progress forward so far. However, you should pay attention to your front volley. You should lay down your center of gravity.',10);

/*Table structure for table `performance_data` */

DROP TABLE IF EXISTS `performance_data`;

CREATE TABLE `performance_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assess_id` bigint(20) DEFAULT NULL,
  `content_id` bigint(20) DEFAULT NULL,
  `count` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=utf8;

/*Data for the table `performance_data` */

insert  into `performance_data`(`id`,`assess_id`,`content_id`,`count`) values (212,22,1,2),(213,22,2,1),(214,22,3,1),(215,22,4,1),(216,22,5,1),(217,22,6,0.5),(218,22,7,2),(219,22,8,1.5),(220,22,9,1.5),(221,22,10,1),(222,22,11,2),(223,23,1,2),(224,23,2,1.5),(225,23,3,0.5),(226,23,4,0.5),(227,23,5,1),(228,23,6,0.5),(229,23,7,2),(230,23,8,1),(231,23,9,0.5),(232,23,10,1),(233,23,11,2),(234,24,1,1),(235,24,2,1),(236,24,3,0.5),(237,24,4,0.5),(238,24,5,1),(239,24,6,1),(240,24,7,2),(241,24,8,2),(242,24,9,2.5),(243,24,10,1),(244,24,11,1),(245,25,1,2),(246,25,2,1),(247,25,3,0.5),(248,25,4,0.5),(249,25,5,0.5),(250,25,6,1),(251,25,7,1),(252,25,8,1),(253,25,9,1),(254,25,10,2),(255,25,11,2),(256,26,1,1),(257,26,2,1),(258,26,3,2),(259,26,4,1.5),(260,26,5,1.5),(261,26,6,1),(262,26,7,1.5),(263,26,8,2),(264,26,9,2),(265,26,10,1.5),(266,26,11,2),(267,27,1,1.5),(268,27,2,1.5),(269,27,3,1.5),(270,27,4,2),(271,27,5,2),(272,27,6,1.5),(273,27,7,1),(274,27,8,1),(275,27,9,1.5),(276,27,10,1.5),(277,27,11,1.5),(278,28,1,1.5),(279,28,2,1.5),(280,28,3,2),(281,28,4,1.5),(282,28,5,1.5),(283,28,6,1.5),(284,28,7,1.5),(285,28,8,2),(286,28,9,2),(287,28,10,1.5),(288,28,11,1.5),(289,29,1,1.5),(290,29,2,1.5),(291,29,3,1.5),(292,29,4,1.5),(293,29,5,1),(294,29,6,1.5),(295,29,7,1.5),(296,29,8,1),(297,29,9,1.5),(298,29,10,2),(299,29,11,1.5),(300,30,1,1.5),(301,30,2,2),(302,30,3,1),(303,30,4,2),(304,30,5,1.5),(305,30,6,1.5),(306,30,7,2),(307,30,8,1),(308,30,9,1),(309,30,10,1.5),(310,30,11,2),(311,31,1,1.5),(312,31,2,1.5),(313,31,3,1.5),(314,31,4,1.5),(315,31,5,1.5),(316,31,6,1.5),(317,31,7,1.5),(318,31,8,1.5),(319,31,9,1.5),(320,31,10,1.5),(321,31,11,1.5),(322,32,1,1.5),(323,32,2,1),(324,32,3,2),(325,32,4,2),(326,32,5,2),(327,32,6,1.5),(328,32,7,2),(329,32,8,2),(330,32,9,2),(331,32,10,2),(332,32,11,2),(333,33,1,1),(334,33,2,1),(335,33,3,2),(336,33,4,1.5),(337,33,5,1.5),(338,33,6,1),(339,33,7,2),(340,33,8,1),(341,33,9,1.5),(342,33,10,2),(343,33,11,2),(344,34,1,1.5),(345,34,2,2),(346,34,3,2),(347,34,4,1.5),(348,34,5,1.5),(349,34,6,1.5),(350,34,7,1.5),(351,34,8,2),(352,34,9,1.5),(353,34,10,2),(354,34,11,1.5),(355,35,1,1.5),(356,35,2,2),(357,35,3,1.5),(358,35,4,2),(359,35,5,1.5),(360,35,6,2),(361,35,7,2),(362,35,8,1.5),(363,35,9,1.5),(364,35,10,2),(365,35,11,1.5),(366,36,1,1.5),(367,36,2,1.5),(368,36,3,1.5),(369,36,4,2),(370,36,5,1),(371,36,6,2),(372,36,7,2),(373,36,8,1.5),(374,36,9,1.5),(375,36,10,2),(376,36,11,2),(377,37,1,2),(378,37,2,2),(379,37,3,1.5),(380,37,4,2),(381,37,5,1.5),(382,37,6,2),(383,37,7,2),(384,37,8,2),(385,37,9,2),(386,37,10,2.5),(387,37,11,2.5),(388,38,1,1),(389,38,2,1),(390,38,3,1.5),(391,38,4,1.5),(392,38,5,1),(393,38,6,1.5),(394,38,7,2),(395,38,8,1.5),(396,38,9,1.5),(397,38,10,1),(398,38,11,2),(399,39,1,1),(400,39,2,1.5),(401,39,3,1.5),(402,39,4,1),(403,39,5,2),(404,39,6,2),(405,39,7,1.5),(406,39,8,2),(407,39,9,1.5),(408,39,10,2),(409,39,11,1.5),(410,40,1,2),(411,40,2,1.5),(412,40,3,1.5),(413,40,4,1),(414,40,5,2),(415,40,6,1.5),(416,40,7,1),(417,40,8,2),(418,40,9,1.5),(419,40,10,1.5),(420,40,11,1.5),(421,41,1,1.5),(422,41,2,1.5),(423,41,3,2),(424,41,4,1.5),(425,41,5,1.5),(426,41,6,1.5),(427,41,7,2),(428,41,8,1),(429,41,9,2),(430,41,10,2),(431,41,11,2),(432,42,1,2),(433,42,2,2.5),(434,42,3,1.5),(435,42,4,2),(436,42,5,2),(437,42,6,2),(438,42,7,2),(439,42,8,1.5),(440,42,9,1.5),(441,42,10,1),(442,42,11,2),(443,43,1,2),(444,43,2,2),(445,43,3,1.5),(446,43,4,2),(447,43,5,1.5),(448,43,6,1),(449,43,7,1.5),(450,43,8,2),(451,43,9,1.5),(452,43,10,1.5),(453,43,11,1.5),(454,44,1,2),(455,44,2,1.5),(456,44,3,2),(457,44,4,2),(458,44,5,1),(459,44,6,2),(460,44,7,1.5),(461,44,8,1.5),(462,44,9,2),(463,44,10,1.5),(464,44,11,1),(465,45,1,2.5),(466,45,2,2),(467,45,3,1.5),(468,45,4,1.5),(469,45,5,2),(470,45,6,2),(471,45,7,1.5),(472,45,8,2),(473,45,9,2),(474,45,10,2.5),(475,45,11,2.5),(476,46,1,3),(477,46,2,3),(478,46,3,2.5),(479,46,4,2.5),(480,46,5,2),(481,46,6,3),(482,46,7,2),(483,46,8,2),(484,46,9,2),(485,46,10,1),(486,46,11,1),(487,47,1,4),(488,47,2,4),(489,47,3,3.5),(490,47,4,3.5),(491,47,5,3.5),(492,47,6,4),(493,47,7,5),(494,47,8,4),(495,47,9,3),(496,47,10,2),(497,47,11,5);

/*Table structure for table `physical_detail` */

DROP TABLE IF EXISTS `physical_detail`;

CREATE TABLE `physical_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '体能详细表id',
  `physical_type` bigint(11) DEFAULT NULL COMMENT '体能四类外键id',
  `count` int(11) DEFAULT NULL COMMENT '训练数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

/*Data for the table `physical_detail` */

insert  into `physical_detail`(`id`,`physical_type`,`count`) values (24,13,5),(25,22,5),(26,28,20),(27,41,10),(28,11,5),(29,20,5),(30,43,15),(31,45,15),(32,12,5),(33,22,5),(34,31,5),(35,35,5),(36,14,5),(37,22,5),(38,42,30),(39,13,5),(40,20,5),(41,23,15),(42,24,15),(43,14,5),(44,20,5),(45,42,20),(46,45,20),(47,11,5),(48,22,5),(49,27,15),(50,30,20),(51,13,5),(52,20,5),(53,23,20),(54,24,20),(55,11,5),(56,22,5),(57,43,15),(58,45,15),(59,11,5),(60,20,5),(61,40,15),(62,45,15),(63,13,5),(64,22,5),(65,36,15),(66,45,15),(67,14,5),(68,21,5),(69,33,10),(70,42,15),(71,13,5),(72,22,5),(73,28,15),(74,36,15),(75,13,5),(76,22,5),(77,42,15),(78,44,15),(79,12,5),(80,20,5),(81,37,15),(82,38,15),(83,13,5),(84,20,5),(85,25,15),(86,26,15),(87,13,5),(88,21,5),(89,28,15),(90,30,15),(91,13,5),(92,20,5),(93,37,15),(94,38,15),(95,13,5),(96,21,5),(97,40,15),(98,41,15),(99,13,5),(100,21,5),(101,28,30),(102,43,30),(103,14,5),(104,20,5),(105,23,30),(106,24,30),(107,11,5),(108,12,5),(109,22,5),(110,13,5),(111,21,5),(112,30,30),(113,31,15),(114,11,5),(115,21,5),(116,29,15),(117,36,15),(118,13,5),(119,22,5),(120,29,20),(121,45,30),(122,11,5),(123,22,5),(124,39,15),(125,40,20),(126,13,10),(127,21,5),(128,22,5),(129,13,5),(130,20,5),(131,28,15),(132,11,5),(133,21,5),(134,41,15),(135,42,30);

/*Table structure for table `physical_schema_detail` */

DROP TABLE IF EXISTS `physical_schema_detail`;

CREATE TABLE `physical_schema_detail` (
  `training_schenma_id` bigint(11) NOT NULL COMMENT 'Training-schema的id',
  `physical_detail_id` bigint(11) DEFAULT NULL COMMENT '体能详细表id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `physical_schema_detail` */

insert  into `physical_schema_detail`(`training_schenma_id`,`physical_detail_id`) values (9,24),(9,25),(9,26),(9,27),(10,28),(10,29),(10,30),(10,31),(11,32),(11,33),(11,34),(11,35),(12,36),(12,37),(12,38),(13,39),(13,40),(13,41),(13,42),(14,43),(14,44),(14,45),(14,46),(15,47),(15,48),(15,49),(15,50),(16,51),(16,52),(16,53),(16,54),(17,55),(17,56),(17,57),(17,58),(18,59),(18,60),(18,61),(18,62),(19,63),(19,64),(19,65),(19,66),(20,67),(20,68),(20,69),(20,70),(21,71),(21,72),(21,73),(21,74),(22,75),(22,76),(22,77),(22,78),(23,79),(23,80),(23,81),(23,82),(24,83),(24,84),(24,85),(24,86),(25,87),(25,88),(25,89),(25,90),(26,91),(26,92),(26,93),(26,94),(27,95),(27,96),(27,97),(27,98),(28,99),(28,100),(28,101),(28,102),(29,103),(29,104),(29,105),(29,106),(30,107),(30,108),(30,109),(31,110),(31,111),(31,112),(31,113),(32,114),(32,115),(32,116),(32,117),(33,118),(33,119),(33,120),(33,121),(34,122),(34,123),(34,124),(34,125),(35,126),(35,127),(35,128),(36,129),(36,130),(36,131),(37,132),(37,133),(37,134),(37,135);

/*Table structure for table `player` */

DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
  `player` bigint(11) DEFAULT NULL,
  `class_id` bigint(11) DEFAULT NULL COMMENT '训练班id（外键）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `player` */

insert  into `player`(`player`,`class_id`) values (11,10),(12,10),(13,10),(14,10),(15,12),(16,12),(17,12),(18,12),(21,14),(21,17),(27,15);

/*Table structure for table `recover_code` */

DROP TABLE IF EXISTS `recover_code`;

CREATE TABLE `recover_code` (
  `user_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recover_code` */

insert  into `recover_code`(`user_id`,`code`) values (10,'ff40e676ba094be1800019820aafb48e'),(10,'e48185b77d6a4ec6ba51f5d453946e5c'),(10,'11ca0353a8324c5cb9f0a48f7c08e14b'),(10,'89da747e71c04543b124ef1e1d6aaf77'),(10,'7108f947259b4f429c31aec2da59e84f'),(10,'a5e7f6a284d5448288af088d7943100f');

/*Table structure for table `rewards` */

DROP TABLE IF EXISTS `rewards`;

CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `reward_time` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `rewards` */

insert  into `rewards`(`id`,`user_id`,`title`,`content`,`reward_time`,`create_time`,`update_time`) values (15,10,'ITF Teen Tournament','The men\'s singles champion','2008-07-07','2018-10-01',NULL),(16,10,'National Collegiate Tennis League','The men\'s doubles champion','2009-08-08','2018-10-01',NULL),(17,15,'ITF Teen Tournament','The men\'s singles champion','2016-06-05','2018-10-02',NULL),(18,16,'National Collegiate Tennis League','The men\'s doubles champion','2016-03-03','2018-10-02',NULL),(19,17,'ITF Teen Tournament','The wemon\'s singles champion','2015-06-03','2018-10-02',NULL),(20,18,'National Collegiate Tennis League','The wemon\'s doubles champion','2017-08-08','2018-10-02',NULL),(21,19,'ITF Teen Tournament','The wemon\'s singles champion','2008-07-10','2018-10-02',NULL),(22,20,'Australian Open ','The men\'s singles champion','2009-12-12','2018-10-17',NULL),(23,21,'ITF Teen Tournament','The men\'s singles champion','2017-12-12','2018-10-19',NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`role_name`) values (1,'教练员'),(2,'成人'),(3,'未成年');

/*Table structure for table `skill_detail` */

DROP TABLE IF EXISTS `skill_detail`;

CREATE TABLE `skill_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `isLimitedTime` varchar(255) DEFAULT NULL COMMENT '限时或不限时',
  `isContinuous` varchar(255) DEFAULT NULL COMMENT '连续或不连续',
  `isMoved` varchar(255) DEFAULT NULL COMMENT '移动或定点',
  `isMultiple` varchar(255) DEFAULT NULL COMMENT '来回或多球',
  `groupNum` int(11) DEFAULT NULL COMMENT '组数',
  `countNumOfGroup` int(11) DEFAULT NULL COMMENT '每组次数',
  `numOfSuccess` int(11) DEFAULT NULL COMMENT '成功数',
  `requiredTime` int(11) DEFAULT NULL COMMENT '时间（如果限时）',
  `isTarget` varchar(255) DEFAULT NULL COMMENT '有无目标',
  `isCombined` varchar(64) DEFAULT NULL COMMENT '正拍或反拍或组合',
  `typeOfSkill` bigint(20) DEFAULT NULL COMMENT '技术训练类别(外键)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

/*Data for the table `skill_detail` */

insert  into `skill_detail`(`id`,`isLimitedTime`,`isContinuous`,`isMoved`,`isMultiple`,`groupNum`,`countNumOfGroup`,`numOfSuccess`,`requiredTime`,`isTarget`,`isCombined`,`typeOfSkill`) values (19,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',46),(20,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',49),(21,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',47),(22,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',51),(23,'Non-Limited Time','Non-Continuous','Fixed','Bandy',5,20,10,NULL,'Target','Front Hand',58),(24,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',48),(25,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',49),(26,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',47),(27,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',49),(28,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',50),(29,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',51),(30,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(31,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',53),(32,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',54),(33,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',55),(34,'Non-Limited Time','Non-Continuous','Fixed','Bandy',5,20,NULL,NULL,'Non-Target','Front Hand',54),(35,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',55),(36,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',58),(37,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',49),(38,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',51),(39,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',55),(40,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',53),(41,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',54),(42,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(43,'Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,30,'Non-Target','Combine',48),(44,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(45,'Non-Limited Time','Continuous','Fixed','Bandy',5,30,NULL,NULL,'Non-Target','Combine',49),(46,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',52),(47,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',53),(48,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',49),(49,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',53),(50,'Non-Limited Time','Continuous','Move','Bandy',5,30,NULL,NULL,'Non-Target','Combine',48),(51,'Non-Limited Time','Continuous','Fixed','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',53),(52,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,15,NULL,'Target','Front Hand',58),(53,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',46),(54,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(55,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',49),(56,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(57,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',50),(58,'Non-Limited Time','Continuous','Move','Bandy',5,10,NULL,NULL,'Non-Target','Combine',53),(59,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(60,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,10,NULL,'Target','Combine',48),(61,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',53),(62,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(63,'Non-Limited Time','Continuous','Move','Bandy',5,30,NULL,NULL,'Non-Target','Combine',46),(64,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',54),(65,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(66,'Non-Limited Time','Non-Continuous','Move','Bandy',5,20,10,NULL,'Target','Back Hand',49),(67,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',54),(68,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,10,NULL,'Target','Front Hand',58),(69,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,12,NULL,'Target','Back Hand',48),(70,'Non-Limited Time','Continuous','Move','Bandy',5,20,NULL,NULL,'Non-Target','Combine',53),(71,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',55),(72,'Non-Limited Time','Continuous','Move','Bandy',5,20,NULL,NULL,'Non-Target','Front Hand',49),(73,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Back Hand',53),(74,'Non-Limited Time','Continuous','Move','Bandy',5,20,NULL,NULL,'Non-Target','Combine',55),(75,'Non-Limited Time','Continuous','Move','Bandy',5,30,NULL,NULL,'Non-Target','Front Hand',46),(76,'Non-Limited Time','Non-Continuous','Move','Multi-Ball',5,20,12,NULL,'Target','Back Hand',53),(77,'Non-Limited Time','Continuous','Move','Multi-Ball',5,30,15,NULL,'Target','Front Hand',47),(78,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',53),(79,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,30,20,NULL,'Target','Front Hand',58),(80,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',49),(81,'Non-Limited Time','Continuous','Move','Multi-Ball',5,15,NULL,NULL,'Non-Target','Front Hand',54),(82,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',51),(83,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',53),(84,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,15,NULL,'Target','Front Hand',58),(85,'Non-Limited Time','Continuous','Move','Bandy',5,20,NULL,NULL,'Non-Target','Combine',53),(86,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',54),(87,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Combine',55),(88,'Non-Limited Time','Continuous','Move','Bandy',5,20,NULL,NULL,'Non-Target','Front Hand',48),(89,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,30,20,NULL,'Target','Front Hand',58),(90,'Non-Limited Time','Continuous','Move','Multi-Ball',5,20,NULL,NULL,'Non-Target','Front Hand',46),(91,'Non-Limited Time','Continuous','Move','Bandy',5,20,15,NULL,'Target','Combine',49),(92,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,15,NULL,'Target','Front Hand',58),(93,'Non-Limited Time','Continuous','Move','Bandy',5,20,15,NULL,'Target','Combine',47),(94,'Non-Limited Time','Continuous','Move','Bandy',5,20,15,NULL,'Target','Combine',49),(95,'Non-Limited Time','Non-Continuous','Fixed','Multi-Ball',5,20,15,NULL,'Target','Front Hand',58);

/*Table structure for table `skill_schema_detail` */

DROP TABLE IF EXISTS `skill_schema_detail`;

CREATE TABLE `skill_schema_detail` (
  `training_schema_id` bigint(11) NOT NULL COMMENT 'Training-schema的id(外键)',
  `skill_detail_id` bigint(11) DEFAULT NULL COMMENT '训练详细表id（外键）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `skill_schema_detail` */

insert  into `skill_schema_detail`(`training_schema_id`,`skill_detail_id`) values (9,19),(9,20),(10,21),(10,22),(10,23),(11,24),(11,25),(12,26),(12,27),(13,28),(13,29),(13,30),(14,31),(14,32),(14,33),(15,34),(15,35),(15,36),(16,37),(16,38),(16,39),(17,40),(17,41),(17,42),(18,43),(18,44),(19,45),(19,46),(19,47),(20,48),(20,49),(21,50),(21,51),(21,52),(22,53),(22,54),(23,55),(23,56),(24,57),(24,58),(24,59),(25,60),(25,61),(25,62),(26,63),(26,64),(26,65),(27,66),(27,67),(27,68),(28,69),(28,70),(28,71),(29,72),(29,73),(29,74),(30,75),(30,76),(31,77),(31,78),(31,79),(32,80),(32,81),(33,82),(33,83),(33,84),(34,85),(34,86),(34,87),(35,88),(35,89),(36,90),(36,91),(36,92),(37,93),(37,94),(37,95);

/*Table structure for table `trainer` */

DROP TABLE IF EXISTS `trainer`;

CREATE TABLE `trainer` (
  `trainer` bigint(11) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `is_chief` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trainer` */

insert  into `trainer`(`trainer`,`class_id`,`is_chief`) values (10,10,1),(10,11,1),(10,12,1),(19,13,1),(10,14,1),(19,15,1),(20,17,1);

/*Table structure for table `training_class` */

DROP TABLE IF EXISTS `training_class`;

CREATE TABLE `training_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL COMMENT '教练员id(外键)',
  `period` varchar(255) DEFAULT NULL,
  `hour_to` varchar(255) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `starttime` date DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `is_open` tinyint(4) DEFAULT NULL,
  `is_finish` tinyint(4) DEFAULT NULL,
  `deadLine` date DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  `age_range` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `training_class` */

insert  into `training_class`(`id`,`class_name`,`place`,`period`,`hour_to`,`rank`,`description`,`starttime`,`createtime`,`is_open`,`is_finish`,`deadLine`,`pic`,`age_range`,`address`) values (10,'Teenager Tennis Beginner','Seasons School','1-2-3-4-5','19:00-21:00','D','This is a course for beginners of tennis between the ages of 12 and 14. After learning this course, students can have basic tennis skills and lay the foundation for the next stage of improvement training!!\r\nJoin us right now!','2018-09-03','2018-08-26 18:48:21',0,0,'2018-09-01','58ce4aa9552c45c6821ca0667772e446.jpg,f60bf6726dd7473ba7f2bd0bcce6b630.jpg,6bcb76970b6f4cc6ab7e810653ff35b8.jpg','12-14','Court Ave, Kingsford NSW 2032'),(12,'Teenager Improvement Program','Bay Club','1-3-5-6','09:00-11:00','C','This is a course for the players who have completed the rank D between the ages of 12 and 14. After learning this course, students can have further improvement of the tennis skills \r\nJoin us right now!','2018-09-19','2018-09-01 23:43:01',0,0,'2018-09-17','f7e8baee3c9e45bca1f38e3dde826e7a.jpg,6c05b86880064ac5a939e268793c0549.jpg,2e67dd78218e443dabcfd3bcb0112ae2.jpg','12-14','Physics Rd, Camperdown NSW 2006'),(13,'Junior Tennis Introduction','Bay Club','1-3-5','18:00-20:00','D','This is a course for beginners of tennis between the ages of 8 and 10. After learning this course, students can have basic tennis skills and lay the foundation for the next stage of improvement training!!\r\nJoin us right now!','2018-10-24','2018-10-02 14:57:03',1,0,'2018-10-23','fb29815d323a4326abc910a382524c35.jpg,820e006ed0064ffe8b5979e6bc231e7c.jpg','8-10','Physics Rd, Camperdown NSW 2006'),(14,'Advanced Skill Improvment','Bay Club','2-4-6','13:00-15:00','S','This is a course for the players who have completed the rank A between the ages of 14 and 16. After learning this course, students can have further improvement of the tennis skills and own the strategy of the matches.\r\nJoin us right now!','2018-10-24','2018-10-02 15:02:10',1,0,'2018-10-22','0250b376572340f8b14392fd2327964e.jpg,9f30ab8509c04ca99d1d3e7e1a7a8e08.jpg,1e3b9db9fd054418995e3316ed449095.jpg','14-16','Physics Rd, Camperdown NSW 2006'),(15,'Beginner Enhancement Program','Seasons School','0-5-6','09:00-11:00','B','This is a course for the players who have completed the rank C between the ages of 10 and 12. After learning this course, students can have further improvement of the tennis skills \r\nJoin us right now!','2018-10-26','2018-10-02 15:10:50',1,0,'2018-10-24','fec2c30bec964df5a851a84b79815cf8.jpg','10-12','Court Ave, Kingsford NSW 2032'),(17,'Senior Tennis Introduction','Seasons School','1-3-5','19:00-21:00','A','This is a course for the players who have completed the rank B between the ages of 14 and 16. After learning this course, students can have further improvement of the tennis skills and own the strategy of the matches.\r\nJoin us right now!','2018-10-31','2018-10-19 21:53:40',1,0,'2018-10-29','7aab72e4a4034a0288572dcfee85a639.jpg,0c38a2e493b84a8da366b649b3ed72c4.jpg,d39ea1ac6c8940fa9348de55a4a77020.jpg','14-16','Court Ave, Kingsford NSW 2032');

/*Table structure for table `training_hierarchy` */

DROP TABLE IF EXISTS `training_hierarchy`;

CREATE TABLE `training_hierarchy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ch_type_name` varchar(64) DEFAULT NULL COMMENT '训练类目名称',
  `type_name` varchar(64) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目id',
  `is_parent` tinyint(1) DEFAULT NULL COMMENT '是否是父类目',
  `unit_id` bigint(20) DEFAULT NULL COMMENT '单位id（外键）',
  `layer_num` int(11) DEFAULT NULL COMMENT '层数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `training_hierarchy` */

insert  into `training_hierarchy`(`id`,`ch_type_name`,`type_name`,`parent_id`,`is_parent`,`unit_id`,`layer_num`) values (1,'体能类','physical',0,1,NULL,1),(2,'技战术类','skill',0,1,NULL,1),(3,'热身','warm-up',1,1,NULL,2),(4,'专项训练','specialized training',1,1,NULL,2),(5,'放松','relaxiation',1,1,NULL,2),(6,'相持区','stalemate area',2,1,NULL,2),(7,'压迫区','oppression area',2,1,NULL,2),(8,'得分区','score area',2,1,NULL,2),(9,'有效区外','out-side area',2,1,NULL,2),(10,'起始区','serving area',2,1,NULL,2),(11,'静态牵拉','static traction',3,0,2,3),(12,'动态牵拉（行进操）','dynamic traction',3,0,2,3),(13,'游戏','game',3,0,2,3),(14,'神经及肌肉唤醒','nerve and muscle awakening',3,0,2,3),(15,'协调敏捷','coordination and dexterity',4,1,NULL,3),(16,'速度素质','speed quality',4,1,NULL,3),(17,'力量素质','strength quality',4,1,NULL,3),(18,'耐力素质','stamina quality',4,1,NULL,3),(19,'功能素质','function quality',4,1,NULL,3),(20,'按摩','massage',5,0,2,3),(21,'牵拉','traction',5,0,2,3),(22,'有氧放松','aerobic relaxiation',5,0,2,3),(23,'左脚正六边形跳','hexagonal jump on left',15,0,1,4),(24,'右脚正六边形跳','hexagonal jump on right',15,0,1,4),(25,'左边线转前冲刺','left side boundary sprint',15,0,1,4),(26,'右边线转前冲刺','right side boundary sprint',15,0,1,4),(27,'前进后退跑','forward and backward run',15,0,1,4),(28,'5m冲刺跑','5m sprint',16,0,1,4),(29,'10m冲刺跑','10m sprint',16,0,1,4),(30,'20m冲刺跑','20m sprint',16,0,1,4),(31,'发球站位头上抛实心球','serving point medicine ball',17,0,3,4),(32,'正手位关闭式步法抛实心球','forhand medicine ball',17,0,3,4),(33,'反手位关闭式步法抛实心球','backhand medicine ball',17,0,3,4),(34,'立定跳远','standing broad jump',17,0,3,4),(35,'单腿三级跳','hop skip and jump ',17,0,3,4),(36,'俯卧撑','push-up',17,0,4,4),(37,'左腿平蹲','squatting on left foot',17,0,4,4),(38,'右腿平蹲','squatting on right foot',17,0,4,4),(39,'仰卧两头起','abdominal crunch',17,0,4,4),(40,'八级腹桥','eight grade abdominal Bridge',17,0,5,4),(41,'Beep-Test','Beep-Test',18,0,5,4),(42,'双打线折返跑','double line run back',18,0,1,4),(43,'旋转稳定性','spin stability',19,0,6,4),(44,'直腿主动上抬','staight feet initiative raising',19,0,6,4),(45,'肩部灵活性','shoulder flexibility',19,0,6,4),(46,'稳定性训练','stability training',6,0,NULL,3),(47,'力量训练','strength training',6,0,NULL,3),(48,'角度训练','angles training',6,0,NULL,3),(49,'旋转训练','spin training',6,0,NULL,3),(50,'落地球压迫','one hop oppressing',7,0,NULL,3),(51,'凌空压迫与截击','approach shot and volley',7,0,NULL,3),(52,'高压压迫','smash',7,0,NULL,3),(53,'截击','volley',8,0,NULL,3),(54,'高压','smash',8,0,NULL,3),(55,'落地球','half-volley',8,0,NULL,3),(56,'反击','strike back',9,0,NULL,3),(57,'防守','defence',9,0,NULL,3),(58,'发球','serve',10,0,NULL,3),(59,'接发球','service return',10,0,NULL,3);

/*Table structure for table `training_schema` */

DROP TABLE IF EXISTS `training_schema`;

CREATE TABLE `training_schema` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'training-schema的id',
  `chief_trainer_id` bigint(11) DEFAULT NULL COMMENT '主教练员的id（外键）',
  `class_id` bigint(11) DEFAULT NULL COMMENT '训练班的id（外键）',
  `training_time` datetime DEFAULT NULL COMMENT '训练时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  `assistant_trainer_id` bigint(11) DEFAULT NULL COMMENT '助理教练员的id（外键）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `training_schema` */

insert  into `training_schema`(`id`,`chief_trainer_id`,`class_id`,`training_time`,`created`,`updated`,`assistant_trainer_id`) values (9,10,10,'2018-09-03 19:00:00','2018-09-02 19:39:22',NULL,NULL),(10,10,10,'2018-09-04 19:00:00','2018-10-01 21:34:45',NULL,NULL),(11,10,10,'2018-09-05 19:00:00','2018-10-01 21:37:12',NULL,NULL),(12,10,10,'2018-09-06 19:00:00','2018-10-01 21:39:07',NULL,NULL),(13,10,10,'2018-09-07 19:00:00','2018-10-01 21:41:07',NULL,NULL),(14,10,10,'2018-09-10 19:00:00','2018-10-01 22:48:26',NULL,NULL),(15,10,10,'2018-09-11 19:00:00','2018-10-01 22:50:23',NULL,NULL),(16,10,10,'2018-09-12 19:00:00','2018-10-01 22:52:16',NULL,NULL),(17,10,10,'2018-09-13 19:00:00','2018-10-01 22:54:06',NULL,NULL),(18,10,10,'2018-09-17 19:00:00','2018-10-01 23:06:11',NULL,NULL),(19,10,10,'2018-09-18 19:00:00','2018-10-01 23:11:39',NULL,NULL),(20,10,10,'2018-09-19 19:00:00','2018-10-01 23:14:18',NULL,NULL),(21,10,10,'2018-09-20 19:00:00','2018-10-01 23:17:04',NULL,NULL),(22,10,10,'2018-09-24 19:00:00','2018-10-02 10:41:50',NULL,NULL),(23,10,10,'2018-09-25 19:00:00','2018-10-02 10:44:14',NULL,NULL),(24,10,10,'2018-09-26 19:00:00','2018-10-02 10:46:02',NULL,NULL),(25,10,10,'2018-09-27 19:00:00','2018-10-02 10:47:56',NULL,NULL),(26,10,10,'2018-10-02 19:00:00','2018-10-02 11:15:07',NULL,NULL),(27,10,10,'2018-10-03 19:00:00','2018-10-02 11:16:56',NULL,NULL),(28,10,12,'2018-09-19 09:00:00','2018-10-02 13:35:33',NULL,NULL),(29,10,12,'2018-09-21 09:00:00','2018-10-02 13:40:09',NULL,NULL),(30,10,12,'2018-09-24 09:00:00','2018-10-02 13:41:54',NULL,NULL),(31,10,12,'2018-09-26 09:00:00','2018-10-02 14:00:05',NULL,NULL),(32,10,12,'2018-09-28 09:00:00','2018-10-02 14:02:12',NULL,NULL),(33,10,12,'2018-10-01 09:00:00','2018-10-02 14:37:37',NULL,NULL),(34,10,12,'2018-10-03 09:00:00','2018-10-02 14:41:16',NULL,NULL),(35,10,12,'2018-10-05 09:00:00','2018-10-02 14:42:43',NULL,NULL),(36,10,10,'2018-10-04 19:00:00','2018-10-03 18:44:53',NULL,NULL),(37,10,12,'2018-10-20 09:00:00','2018-10-19 22:19:46',NULL,NULL);

/*Table structure for table `unit` */

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '单位id',
  `unit_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `unit` */

insert  into `unit`(`id`,`unit_name`) values (1,'(Sec)'),(2,'(Min)'),(3,'(M)'),(4,'个'),(5,'(Gr)'),(6,'(Sc)');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL COMMENT '用户密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `birthday` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `introduction` varchar(800) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '账户状态',
  `role` int(10) DEFAULT NULL COMMENT '角色外键',
  `code` varchar(64) DEFAULT NULL COMMENT '激活码',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`email`,`phone`,`birthday`,`gender`,`height`,`weight`,`city`,`icon`,`introduction`,`status`,`role`,`code`,`createtime`,`updatetime`) values (10,'Roger','123','20432708@qq.com','420686067','1989-08-08',NULL,181,65,NULL,'3a2fa36eacb74811bce08d8326f5d370.jpg','Facilitated adult and junior tennis instruction, crafted teaching plans and supervised teaching staff.\r\nChampioned new junior tennis program to include a summer tennis camp.\r\nPlanned and directed physical conditioning programs to enable adult and junior students to achieve maximum performance.\r\nServed as key liaison between the tennis and sales departments.\r\nDeveloped promotional strategies, and managed charitable and special events.',1,3,NULL,'2018-10-01 18:40:24','2018-10-19 22:29:49'),(11,'Mike','123','123@qq.com','12345678','2006-09-13',NULL,155,44,NULL,'913547431a8e47428cf5a8f122ad68ef.jpg','I am a tennis fan, but I do not have much experience, I hope to learn and improve with everyone. My favorite star is Roger Federer',1,2,NULL,'2018-10-01 18:50:38','2018-10-01 18:54:36'),(12,'Elena','123','222@qq.com','1232131','2007-09-09',NULL,160,43,NULL,'1576657581be43a988251e6e98e0c6c6.jpg','I am a tennis fan, but I do not have much experience, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-01 19:05:19','2018-10-01 19:12:18'),(13,'George','123','111@qq.com','12345678','2007-03-15',NULL,157,45,NULL,'b439336123304674aaa1bac36c6c5f25.jpg','I am a tennis fan, but I do not have much experience, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-01 19:15:32','2018-10-01 19:18:39'),(14,'Daisy','123','333@qq.com','12345678','2005-12-12',NULL,165,48,NULL,'f9066a2d149d4639a5f6acc5b92693e7.jpg','I am a tennis fan, but I do not have much experience, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-01 19:21:17','2018-10-01 19:23:05'),(15,'Jenson','123','444@qq.com','12345678','2006-02-12','male',166,55,NULL,'0019100a23b140668086406f67126f5c.png','I am a tennis fan, I have completed the rank C courses, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-02 12:54:18','2018-10-16 18:05:04'),(16,'Stanley','123','555@qq.com','1232131','2006-04-04',NULL,165,55,NULL,'d657ac3fc6394c7d9e743d9179f5f73f.jpg','I am a tennis fan, I have completed the rank C courses, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-02 13:02:12','2018-10-02 13:08:31'),(17,'Darcie','123','666@qq.com','1232131','2007-06-02',NULL,158,45,NULL,'9e7e853d237e47308084a5b7f07f9ff8.jpg','I am a tennis fan, I have completed the rank C courses, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-02 13:10:38','2018-10-02 13:12:19'),(18,'Luna','123','777@qq.com','1232131','2007-08-21',NULL,166,47,NULL,'08e999138f834d1f9df4cebbf15426d5.jpg','I am a tennis fan, I have completed the rank C courses, I hope to learn and improve with everyone. My favorite star is Nadal',1,2,NULL,'2018-10-02 13:14:43','2018-10-02 13:16:20'),(19,'Abigail','123','20432709@qq.com','13888216067','1994-01-11',NULL,175,55,NULL,'278dad7c66234583a472aabfa947c134.jpg','Facilitated adult and junior tennis instruction, crafted teaching plans and supervised teaching staff.\r\nChampioned new junior tennis program to include a summer tennis camp.\r\nPlanned and directed physical conditioning programs to enable adult and junior students to achieve maximum performance.\r\nServed as key liaison between the tennis and sales departments.\r\nDeveloped promotional strategies, and managed charitable and special events.',1,1,NULL,'2018-10-02 14:51:40','2018-10-02 14:53:43'),(20,'Joe','123','justwe77@163.com','1232131','1993-12-26',NULL,178,65,NULL,'6186bda55d3748ecbba4c49ca88c9ab4.png','I am a big tennis fan of Roger Fereder. I want to hook some girl in this app and fuck her',1,1,NULL,'2018-10-17 13:03:56','2018-10-17 13:07:20'),(21,'Tony','123','999@qq.com','12345678','2005-07-07',NULL,165,45,NULL,'09266cc17d3044c89bd0f31208dc9dd0.jpg','I am a tennis fan, but I do not have much experience, I hope to learn and improve with everyone. My favorite star is Roger Federer',1,2,NULL,'2018-10-19 21:33:43','2018-10-19 21:38:36'),(27,'Tracy','123','20432707@qq.com','12345678','2008-05-05',NULL,155,44,NULL,'f515eae8f73a4a97b9678f9c34537737.jpg','I am a tennis fan, but I do not have much experience, I hope to learn and improve with everyone. My favorite star is Roger Federer',1,2,NULL,'2018-10-19 22:53:43','2018-10-19 22:54:59');

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `e_monitor` */

/*!50106 DROP EVENT IF EXISTS `e_monitor`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `e_monitor` ON SCHEDULE EVERY 12 HOUR STARTS '2018-09-16 21:40:53' ON COMPLETION PRESERVE ENABLE DO CALL update_course_status() */$$
DELIMITER ;

/* Procedure structure for procedure `update_course_status` */

/*!50003 DROP PROCEDURE IF EXISTS  `update_course_status` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `update_course_status`()
BEGIN
UPDATE training_class SET is_open = 0 WHERE is_open = 1 AND deadLine < NOW();
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
