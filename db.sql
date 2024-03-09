/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - cantingdiancanhuaiyin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cantingdiancanhuaiyin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cantingdiancanhuaiyin`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(2,3,'收货人2','17703786902','地址2',1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(3,1,'收货人3','17703786903','地址3',1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(4,1,'收货人4','17703786904','地址4',1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(5,2,'收货人5','17703786905','地址5',1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46');

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '菜品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '菜品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `caipin_content` text COMMENT '菜品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_name`,`caipin_photo`,`caipin_types`,`caipin_kucun_number`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`shangxia_types`,`caipin_delete`,`caipin_content`,`create_time`) values (1,'菜品名称1','http://localhost:8080/cantingdiancanhuaiyin/upload/caipin1.jpg',2,100,'639.27','182.69',157,1,1,'菜品简介1','2022-03-28 13:11:46'),(2,'菜品名称2','http://localhost:8080/cantingdiancanhuaiyin/upload/caipin2.jpg',1,101,'601.14','298.53',41,1,1,'菜品简介2','2022-03-28 13:11:46'),(3,'菜品名称3','http://localhost:8080/cantingdiancanhuaiyin/upload/caipin3.jpg',1,101,'638.42','229.60',134,1,1,'菜品简介3','2022-03-28 13:11:46'),(4,'菜品名称4','http://localhost:8080/cantingdiancanhuaiyin/upload/caipin4.jpg',3,104,'908.41','218.34',484,1,1,'菜品简介4','2022-03-28 13:11:46'),(5,'菜品名称5','http://localhost:8080/cantingdiancanhuaiyin/upload/caipin5.jpg',3,104,'537.07','309.80',304,1,1,'菜品简介5','2022-03-28 13:11:46');

/*Table structure for table `caipin_commentback` */

DROP TABLE IF EXISTS `caipin_commentback`;

CREATE TABLE `caipin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipin_commentback` */

insert  into `caipin_commentback`(`id`,`caipin_id`,`yonghu_id`,`caipin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2022-03-28 13:11:46','回复信息1','2022-03-28 13:11:46','2022-03-28 13:11:46'),(2,2,1,'评价内容2','2022-03-28 13:11:46','回复信息2','2022-03-28 13:11:46','2022-03-28 13:11:46'),(3,3,1,'评价内容3','2022-03-28 13:11:46','回复信息3','2022-03-28 13:11:46','2022-03-28 13:11:46'),(4,4,1,'评价内容4','2022-03-28 13:11:46','回复信息4','2022-03-28 13:11:46','2022-03-28 13:11:46'),(5,5,2,'评价内容5','2022-03-28 13:11:46','回复信息5','2022-03-28 13:11:46','2022-03-28 13:11:46'),(6,1,1,'订单完成后可评论','2022-03-28 13:56:41',NULL,NULL,'2022-03-28 13:56:41');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`address_id`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_true_price`,`caipin_order_types`,`caipin_order_payment_types`,`insert_time`,`create_time`) values (1,'1648446721211',3,5,1,1,'309.80',1,1,'2022-03-28 13:52:01','2022-03-28 13:52:01'),(2,'1648446721211',3,2,1,1,'298.53',1,1,'2022-03-28 13:52:01','2022-03-28 13:52:01'),(3,'1648446721211',3,1,1,1,'182.69',5,1,'2022-03-28 13:52:01','2022-03-28 13:52:01'),(4,'1648446937664',3,3,1,1,'229.60',1,1,'2022-03-28 13:55:38','2022-03-28 13:55:38'),(5,'1648446982638',3,3,1,1,'229.60',1,1,'2022-03-28 13:56:23','2022-03-28 13:56:23'),(6,'1648446982638',3,4,1,1,'218.34',2,1,'2022-03-28 13:56:23','2022-03-28 13:56:23');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/cantingdiancanhuaiyin/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/cantingdiancanhuaiyin/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/cantingdiancanhuaiyin/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-28 13:11:37'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-28 13:11:37'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-28 13:11:37'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-28 13:11:37'),(5,'caipin_types','菜品类型',1,'菜品类型1',NULL,NULL,'2022-03-28 13:11:37'),(6,'caipin_types','菜品类型',2,'菜品类型2',NULL,NULL,'2022-03-28 13:11:37'),(7,'caipin_types','菜品类型',3,'菜品类型3',NULL,NULL,'2022-03-28 13:11:37'),(8,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-03-28 13:11:37'),(9,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-28 13:11:37'),(10,'caipin_order_types','订单类型',3,'已出餐',NULL,NULL,'2022-03-28 13:11:37'),(11,'caipin_order_types','订单类型',4,'已取餐',NULL,NULL,'2022-03-28 13:11:37'),(12,'caipin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-03-28 13:11:37'),(13,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-28 13:11:37'),(14,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-28 13:11:37'),(15,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-28 13:11:37'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-28 13:11:37'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-28 13:11:37'),(18,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-28 13:19:15'),(19,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-28 13:19:15'),(20,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-28 13:19:15');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-03-28 13:11:46','2022-03-28 13:11:46','2022-03-28 13:11:46'),(6,NULL,NULL,1,'管理回复',5,2,'2022-03-28 13:53:40',NULL,'2022-03-28 13:53:40'),(7,NULL,1,NULL,'用户回复',5,2,'2022-03-28 13:55:55',NULL,'2022-03-28 13:55:55');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/cantingdiancanhuaiyin/upload/news1.jpg','2022-03-12 17:40:45','公告详情1','2022-03-12 17:40:45'),(2,'公告标题2',1,'http://localhost:8080/cantingdiancanhuaiyin/upload/news2.jpg','2022-03-12 17:40:45','公告详情2','2022-03-12 17:40:45'),(3,'公告标题3',1,'http://localhost:8080/cantingdiancanhuaiyin/upload/news3.jpg','2022-03-12 17:40:45','公告详情3','2022-03-12 17:40:45'),(4,'公告标题4',3,'http://localhost:8080/cantingdiancanhuaiyin/upload/news4.jpg','2022-03-12 17:40:45','公告详情4','2022-03-12 17:40:45'),(5,'公告标题5',3,'http://localhost:8080/cantingdiancanhuaiyin/upload/news5.jpg','2022-03-12 17:40:45','公告详情5','2022-03-12 17:40:45');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ao8qoesfwyp28mqhxql8p3i0rdl6hja8','2022-03-28 13:29:40','2022-03-28 14:59:50'),(2,1,'a1','yonghu','用户','8hxx1pf51gjwkx7wes8xul888qkc49ym','2022-03-28 13:50:16','2022-03-28 15:00:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/cantingdiancanhuaiyin/upload/yonghu1.jpg',2,'1@qq.com','10588.43','2022-03-28 13:11:46'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/cantingdiancanhuaiyin/upload/yonghu2.jpg',2,'2@qq.com','71.98','2022-03-28 13:11:46'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/cantingdiancanhuaiyin/upload/yonghu3.jpg',1,'3@qq.com','360.64','2022-03-28 13:11:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
