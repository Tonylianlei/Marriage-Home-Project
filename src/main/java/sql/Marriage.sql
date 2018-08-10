/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.13 : Database - matchmaking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`matchmaking` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `matchmaking`;

/*Table structure for table `le_user` */

DROP TABLE IF EXISTS `le_user`;

CREATE TABLE `le_user` (
  `id` varchar(35) NOT NULL COMMENT '主id',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登录名',
  `cn_name` varchar(255) DEFAULT NULL COMMENT '中文名称',
  `en_name` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `tel` varchar(50) DEFAULT NULL COMMENT '手机号',
  `identity_id` varchar(500) DEFAULT NULL COMMENT '身份证',
  `identity_encrypt` varchar(500) DEFAULT NULL COMMENT '身份证加密',
  `password` varchar(500) DEFAULT NULL COMMENT '登录密码',
  `sex` int(1) DEFAULT '1' COMMENT '性别：0：男，1：女',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '出生年月日',
  `province` int(5) DEFAULT NULL COMMENT '省',
  `city` int(5) DEFAULT NULL COMMENT '市',
  `area` int(5) DEFAULT NULL COMMENT '区',
  `address` varchar(255) DEFAULT NULL COMMENT '所在地址',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_id` varchar(35) DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(35) DEFAULT NULL COMMENT '修改人id',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `state` int(1) DEFAULT '1' COMMENT '状态：1正常，2删除。。。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `le_user` */

insert  into `le_user`(`id`,`login_name`,`cn_name`,`en_name`,`tel`,`identity_id`,`identity_encrypt`,`password`,`sex`,`age`,`birthday`,`province`,`city`,`area`,`address`,`last_login_time`,`create_id`,`create_time`,`update_id`,`update_time`,`state`) values ('c09b1c77f07e4359b9090bb1cc047ef5','zhang','张廷辉',NULL,'15631521396','130******566','P06mKAvM6wrIpte3e06duGHxmR7SH2qZVJMriWuUszI=','Ka3CtLusGBoD3lA0Rg4CVg==',0,20,'1970-01-19',NULL,NULL,NULL,NULL,'2018-07-23 19:17:36',NULL,'2018-07-23 19:17:00',NULL,'2018-07-23 19:17:00',1);

/*Table structure for table `le_user_login_log` */

DROP TABLE IF EXISTS `le_user_login_log`;

CREATE TABLE `le_user_login_log` (
  `id` varchar(35) NOT NULL COMMENT '主id',
  `user_id` varchar(35) NOT NULL COMMENT '用户id',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `login_address` varchar(500) DEFAULT NULL COMMENT '登录地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录日志';

/*Data for the table `le_user_login_log` */

insert  into `le_user_login_log`(`id`,`user_id`,`login_time`,`login_address`) values ('1d9f96d1183c421b981827ada7adf7d0','c09b1c77f07e4359b9090bb1cc047ef5','2018-07-23 19:17:36',NULL),('705a85e9070044cf824b968d5f4ed972','2cd24baae9e04a9d884cb54fb37a4784','2018-07-23 19:16:04',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
