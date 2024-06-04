/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.18-log : Database - eams
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eams` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eams`;

/*Table structure for table `attaction` */

DROP TABLE IF EXISTS `attaction`;

CREATE TABLE `attaction` (
  `action_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '员工号',
  `enploy_Name` bigint(20) DEFAULT NULL COMMENT '员工名称',
  `first_time` date DEFAULT NULL COMMENT '早签到时间',
  `last_time` date DEFAULT NULL COMMENT '晚签到时间',
  `state_id` bigint(10) DEFAULT NULL COMMENT '所在部门',
  `desc` varchar(100) DEFAULT NULL COMMENT '说明',
  `enploy_id` bigint(10) DEFAULT NULL COMMENT '员工关联外键',
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attaction` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '员工主键ID',
  `employee_name` varchar(20) DEFAULT NULL COMMENT '员工名称',
  `adept_code` bigint(20) DEFAULT NULL COMMENT '所属部门ID',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `join_time` date DEFAULT NULL COMMENT '加入时间',
  `number` varchar(20) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`employee_name`,`adept_code`,`sex`,`phone`,`join_time`,`number`) values (1,'张三',1,'男','152357952','2023-10-30','4114812554235'),(23,'李四',1,'男','12312','2023-11-04','4114135'),(30,'张六',13,'男','1852174524','2023-11-04','4118252552525'),(33,'杨',1,'女','21644','2023-11-04','13'),(34,'阿三',12,'是','3123','2023-11-04','123123'),(35,'战国',14,'男','6456546','2023-11-04','564654'),(36,'麦当',12,'男','185222525582','2023-11-04','4114816656'),(37,'李七',15,'男','18256525252','2023-11-04','41148155265');

/*Table structure for table `g_adept` */

DROP TABLE IF EXISTS `g_adept`;

CREATE TABLE `g_adept` (
  `adept_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '企业部门ID',
  `adept_name` varchar(60) DEFAULT NULL COMMENT '企业部门名称',
  `adept_ads` varchar(100) DEFAULT NULL COMMENT '企业部门描述',
  PRIMARY KEY (`adept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `g_adept` */

insert  into `g_adept`(`adept_id`,`adept_name`,`adept_ads`) values (1,'人事部','12321'),(10,'验收部门','上线前测试压力测试'),(12,'测试','功能性测试'),(13,'研发','主要研究新技术'),(14,'开发','开发用'),(15,'清洁','情节卫生');

/*Table structure for table `g_commissioner` */

DROP TABLE IF EXISTS `g_commissioner`;

CREATE TABLE `g_commissioner` (
  `c_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '考勤ID',
  `c_phone` varchar(20) NOT NULL COMMENT '考勤专员电话',
  `c_name` varchar(20) DEFAULT NULL COMMENT '专员姓名',
  `c_address` varchar(50) DEFAULT NULL COMMENT '所在地',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `c_codejob` varchar(20) NOT NULL COMMENT '工号',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `g_commissioner` */

insert  into `g_commissioner`(`c_id`,`c_phone`,`c_name`,`c_address`,`create_time`,`c_codejob`) values (1,'13567844654','张三考勤管理','上海','2023-08-08','1'),(2,'13567844654','李四管理','北京','2023-08-14','2'),(3,'13567844654','王六管理','成都','2023-08-08','3'),(4,'234234234','1231','北京','2023-09-13','4'),(63,'1582456555','赵大','上海','2023-10-29','5');

/*Table structure for table `g_punch` */

DROP TABLE IF EXISTS `g_punch`;

CREATE TABLE `g_punch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forenoon_date` varchar(20) DEFAULT NULL COMMENT '上午打卡时间',
  `afternoon_date` varchar(20) DEFAULT NULL COMMENT '下午打开时间',
  `emp_id` bigint(20) DEFAULT NULL COMMENT '员工工号',
  `punch_date` date DEFAULT NULL COMMENT '当天日期',
  `ename` varchar(20) DEFAULT NULL COMMENT '姓名',
  `menth` varchar(20) DEFAULT NULL COMMENT '月份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `g_punch` */

insert  into `g_punch`(`id`,`forenoon_date`,`afternoon_date`,`emp_id`,`punch_date`,`ename`,`menth`) values (31,'2023-11-05 06:03:03','2023-11-05 18:34',2005,'2023-11-05','张三','11');

/*Table structure for table `g_user` */

DROP TABLE IF EXISTS `g_user`;

CREATE TABLE `g_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `loginid` varchar(20) DEFAULT NULL COMMENT '登陆名',
  `passWord` varchar(20) DEFAULT NULL COMMENT '登陆密码',
  `g_role_status` int(10) DEFAULT NULL COMMENT '权限状态，1管理2普通用户',
  `login_name` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `job_number` varchar(20) DEFAULT NULL COMMENT '员工工号',
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `g_user` */

insert  into `g_user`(`id`,`loginid`,`passWord`,`g_role_status`,`login_name`,`job_number`,`role_name`) values (1,'admin','admin',1,'张三','2005','管理员'),(3,'xiaoming','123456',1,'小明','1002','管理员'),(28,'amdin','admin',1,'赵六','4115411','管理员'),(33,'yangmi','1234',0,'杨五','31','员工'),(34,'maidang','1234',0,'麦当','36','员工'),(35,'zhan','1234',0,'战国','35','员工'),(36,'yang','123',0,'杨','33','员工');

/*Table structure for table `receipts` */

DROP TABLE IF EXISTS `receipts`;

CREATE TABLE `receipts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `eid` varchar(20) DEFAULT NULL COMMENT '员工工号ID',
  `start_time` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(20) DEFAULT NULL COMMENT '结束时间',
  `ename` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `leave_type` varchar(10) DEFAULT NULL COMMENT '请假类别',
  `leave_day` varchar(20) DEFAULT NULL COMMENT '请假天数',
  `describes` varchar(200) DEFAULT NULL COMMENT '描述',
  `evection_day` varchar(20) DEFAULT NULL COMMENT '出差天数',
  `forget_data` varchar(20) DEFAULT NULL COMMENT '忘记打卡时间',
  `affert_data` varchar(20) DEFAULT NULL COMMENT '上午实际打卡时间',
  `afternoon_data` varchar(20) DEFAULT NULL COMMENT '下午实际打卡时间',
  `site` varchar(20) DEFAULT NULL COMMENT '出差地点',
  `create_data` date DEFAULT NULL COMMENT '创建时间',
  `expense` varchar(20) DEFAULT NULL COMMENT '费用预支',
  `e_status` varchar(2) DEFAULT NULL COMMENT '审批状态1已审批0未审批',
  `status_name` varchar(20) DEFAULT NULL COMMENT '审批code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `receipts` */

insert  into `receipts`(`id`,`eid`,`start_time`,`end_time`,`ename`,`leave_type`,`leave_day`,`describes`,`evection_day`,`forget_data`,`affert_data`,`afternoon_data`,`site`,`create_data`,`expense`,`e_status`,`status_name`) values (8,'1002','2023-10-24 21:42:49','2023-10-24 21:42:52','小明','事假','1.9','风格化风格化',NULL,NULL,NULL,NULL,NULL,'2023-10-24',NULL,'1','已审批'),(13,'10021',NULL,NULL,'一','忘打卡',NULL,'啊十大大苏打',NULL,'2023-10-28','07:02:03','',NULL,'2023-10-28',NULL,'1','已审批'),(15,'1005','2023-10-28 17:58:49','2023-10-28 17:58:51','小小','调休','1.9','的方法大哥',NULL,NULL,NULL,NULL,NULL,'2023-10-28',NULL,'0','未审批'),(16,'1005','2023-10-28 17:59:10','2023-10-28 17:59:12','小小','出差',NULL,'广告费','30',NULL,NULL,NULL,'的风格','2023-10-28','655','0','未审批'),(17,'1005',NULL,NULL,'小小','忘打卡',NULL,'和法国',NULL,'2023-10-28','03:03:03','02:03:03',NULL,'2023-10-28',NULL,'0','未审批'),(18,'10020','2023-10-28 18:28:11','2023-10-28 18:28:10','小','出差',NULL,'hfghfhfggf','90',NULL,NULL,NULL,'gft','2023-10-28','655','0','未审批'),(19,'18',NULL,NULL,'张涛','忘打卡',NULL,'sdfsdfsdfsdfsdfs',NULL,'2023-10-17','06:09:04','18:19:02',NULL,'2023-10-28',NULL,'0','未审批'),(20,'18','2023-10-28 20:56:55','2023-12-05 00:00:00','张涛','出差',NULL,'大撒大撒','90',NULL,NULL,NULL,'上海','2023-10-28','234','0','未审批'),(21,'36',NULL,NULL,'麦当','忘打卡',NULL,'忘记打卡',NULL,'2023-11-05','06:06:04','',NULL,'2023-11-05',NULL,'1','已审批'),(22,'36','2023-11-05 18:12:16','2023-11-16 00:00:00','麦当','事假','3','回家吃饭',NULL,NULL,NULL,NULL,NULL,'2023-11-05',NULL,'0','未审批'),(23,'36','2023-11-05 18:12:37','2023-11-29 00:00:00','麦当','出差',NULL,'去夜店','7',NULL,NULL,NULL,'上海','2023-11-05','800','0','未审批'),(25,'2005',NULL,NULL,'张良','忘打卡',NULL,'asd',NULL,'2023-11-05','06:03:03','',NULL,'2023-11-05',NULL,'1','已审批');

/*Table structure for table `statistics` */

DROP TABLE IF EXISTS `statistics`;

CREATE TABLE `statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `eid` varchar(20) DEFAULT NULL COMMENT '员工工号',
  `e_name` varchar(20) DEFAULT NULL COMMENT '员工名称',
  `present` varchar(20) DEFAULT NULL COMMENT '是否全勤',
  `leave_day` varchar(10) DEFAULT NULL COMMENT '请假天数',
  `evection` varchar(10) DEFAULT NULL COMMENT '出差天数',
  `forget` varchar(10) DEFAULT NULL COMMENT '打卡汇总',
  `Forget_data` varchar(20) DEFAULT NULL COMMENT '打卡日期',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `statistics` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
