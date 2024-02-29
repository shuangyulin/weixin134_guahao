/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmu38p1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmu38p1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmu38p1`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmu38p1/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmu38p1/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmu38p1/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `huanzhe` */

DROP TABLE IF EXISTS `huanzhe`;

CREATE TABLE `huanzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618732109456 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `huanzhe` */

insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (12,'2021-04-18 15:39:48','患者2','123456','姓名2','女',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmu38p1/upload/huanzhe_touxiang2.jpg');
insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (13,'2021-04-18 15:39:48','患者3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmu38p1/upload/huanzhe_touxiang3.jpg');
insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (14,'2021-04-18 15:39:48','患者4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmu38p1/upload/huanzhe_touxiang4.jpg');
insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (15,'2021-04-18 15:39:48','患者5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmu38p1/upload/huanzhe_touxiang5.jpg');
insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (16,'2021-04-18 15:39:48','患者6','123456','姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmu38p1/upload/huanzhe_touxiang6.jpg');
insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (1618731908310,'2021-04-18 15:45:08','002','002','002','女',20,'13800654321','321@qq.com','444555222211223332',NULL);
insert  into `huanzhe`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (1618732109455,'2021-04-18 15:48:29','1','1','','',NULL,'','','','');

/*Table structure for table `keshi` */

DROP TABLE IF EXISTS `keshi`;

CREATE TABLE `keshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618732139423 DEFAULT CHARSET=utf8 COMMENT='科室';

/*Data for the table `keshi` */

insert  into `keshi`(`id`,`addtime`,`keshi`) values (31,'2021-04-18 15:39:48','ces');
insert  into `keshi`(`id`,`addtime`,`keshi`) values (33,'2021-04-18 15:39:48','科室3');
insert  into `keshi`(`id`,`addtime`,`keshi`) values (34,'2021-04-18 15:39:48','科室4');
insert  into `keshi`(`id`,`addtime`,`keshi`) values (35,'2021-04-18 15:39:48','科室5');
insert  into `keshi`(`id`,`addtime`,`keshi`) values (36,'2021-04-18 15:39:48','科室6');
insert  into `keshi`(`id`,`addtime`,`keshi`) values (1618732139422,'2021-04-18 15:48:59','测试');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618732208063 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-04-18 15:39:48','测试','测试','http://localhost:8080/ssmu38p1/upload/news_picture1.jpg','<p>测试</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (73,'2021-04-18 15:39:48','标题3','简介3','http://localhost:8080/ssmu38p1/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (74,'2021-04-18 15:39:48','标题4','简介4','http://localhost:8080/ssmu38p1/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (75,'2021-04-18 15:39:48','标题5','简介5','http://localhost:8080/ssmu38p1/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (76,'2021-04-18 15:39:48','标题6','简介6','http://localhost:8080/ssmu38p1/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1618732208062,'2021-04-18 15:50:07','1','1','http://localhost:8080/ssmu38p1/upload/1618732204525.jpg','<p>1</p>');

/*Table structure for table `quxiaoyuyueshenqing` */

DROP TABLE IF EXISTS `quxiaoyuyueshenqing`;

CREATE TABLE `quxiaoyuyueshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `suoshukeshi` varchar(200) DEFAULT NULL COMMENT '所属科室',
  `yishengxingbie` varchar(200) DEFAULT NULL COMMENT '医生性别',
  `yishengnianling` varchar(200) DEFAULT NULL COMMENT '医生年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuanmingzi` varchar(200) DEFAULT NULL COMMENT '医院名字',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `menzhenshijian` varchar(200) DEFAULT NULL COMMENT '门诊时间',
  `yishengjianjie` varchar(200) DEFAULT NULL COMMENT '医生简介',
  `yishengzhaopian` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618731996303 DEFAULT CHARSET=utf8 COMMENT='取消预约申请';

/*Data for the table `quxiaoyuyueshenqing` */

insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-18 15:39:48','医生工号1','医生姓名1','所属科室1','医生性别1','医生年龄1','联系电话1','医院名字1','地址1','门诊时间1','医生简介1','http://localhost:8080/ssmu38p1/upload/quxiaoyuyueshenqing_yishengzhaopian1.jpg','用户名1','姓名1','手机1','预约时间1','取消原因1','是','',1);
insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (62,'2021-04-18 15:39:48','医生工号2','医生姓名2','所属科室2','医生性别2','医生年龄2','联系电话2','医院名字2','地址2','门诊时间2','医生简介2','http://localhost:8080/ssmu38p1/upload/quxiaoyuyueshenqing_yishengzhaopian2.jpg','用户名2','姓名2','手机2','预约时间2','取消原因2','是','',2);
insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (63,'2021-04-18 15:39:48','医生工号3','医生姓名3','所属科室3','医生性别3','医生年龄3','联系电话3','医院名字3','地址3','门诊时间3','医生简介3','http://localhost:8080/ssmu38p1/upload/quxiaoyuyueshenqing_yishengzhaopian3.jpg','用户名3','姓名3','手机3','预约时间3','取消原因3','是','',3);
insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (64,'2021-04-18 15:39:48','医生工号4','医生姓名4','所属科室4','医生性别4','医生年龄4','联系电话4','医院名字4','地址4','门诊时间4','医生简介4','http://localhost:8080/ssmu38p1/upload/quxiaoyuyueshenqing_yishengzhaopian4.jpg','用户名4','姓名4','手机4','预约时间4','取消原因4','是','',4);
insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (65,'2021-04-18 15:39:48','医生工号5','医生姓名5','所属科室5','医生性别5','医生年龄5','联系电话5','医院名字5','地址5','门诊时间5','医生简介5','http://localhost:8080/ssmu38p1/upload/quxiaoyuyueshenqing_yishengzhaopian5.jpg','用户名5','姓名5','手机5','预约时间5','取消原因5','是','',5);
insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (66,'2021-04-18 15:39:48','医生工号6','医生姓名6','所属科室6','医生性别6','医生年龄6','联系电话6','医院名字6','地址6','门诊时间6','医生简介6','http://localhost:8080/ssmu38p1/upload/quxiaoyuyueshenqing_yishengzhaopian6.jpg','用户名6','姓名6','手机6','预约时间6','取消原因6','是','',6);
insert  into `quxiaoyuyueshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`,`userid`) values (1618731996302,'2021-04-18 15:46:36','001','001','科室1','女','44','13800123456','测试医院','测试','8:30~11:00,14:30~17:30','<p>简介测试</p>','http://localhost:8080/ssmu38p1/upload/1618731854770.jpg','002','002','13800654321','','个人原因','是','',1618731908310);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'医生1','yisheng','医生','fjxalkwfm0o3xfjtip5gcznwn538kit7','2021-04-18 15:41:46','2021-04-18 16:41:46');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1618731788249,'001','yisheng','医生','nav81zpcsprla3zsm8mtpqqdwsl401tq','2021-04-18 15:43:13','2021-04-18 16:47:31');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1618731908310,'002','huanzhe','患者','u9w07cajw1pocong1jmfksvv45tnfbgr','2021-04-18 15:45:15','2021-04-18 16:45:16');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'abo','users','管理员','1watsmecwp4xol6am9c4vz0at8an53z1','2021-04-18 15:48:13','2021-04-18 16:48:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-18 15:39:48');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `suoshukeshi` varchar(200) DEFAULT NULL COMMENT '所属科室',
  `yiyuanmingzi` varchar(200) DEFAULT NULL COMMENT '医院名字',
  `yishengxingbie` varchar(200) DEFAULT NULL COMMENT '医生性别',
  `yishengnianling` int(11) DEFAULT NULL COMMENT '医生年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yishengyouxiang` varchar(200) DEFAULT NULL COMMENT '医生邮箱',
  `yishengzhaopian` varchar(200) DEFAULT NULL COMMENT '医生照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618731788250 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`suoshukeshi`,`yiyuanmingzi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yishengyouxiang`,`yishengzhaopian`) values (21,'2021-04-18 15:39:48','医生1','123456','医生姓名1','所属科室1','医院名字1','女',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmu38p1/upload/yisheng_yishengzhaopian1.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`suoshukeshi`,`yiyuanmingzi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yishengyouxiang`,`yishengzhaopian`) values (23,'2021-04-18 15:39:48','医生3','123456','医生姓名3','所属科室3','医院名字3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmu38p1/upload/yisheng_yishengzhaopian3.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`suoshukeshi`,`yiyuanmingzi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yishengyouxiang`,`yishengzhaopian`) values (24,'2021-04-18 15:39:48','医生4','123456','医生姓名4','所属科室4','医院名字4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmu38p1/upload/yisheng_yishengzhaopian4.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`suoshukeshi`,`yiyuanmingzi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yishengyouxiang`,`yishengzhaopian`) values (25,'2021-04-18 15:39:48','医生5','123456','医生姓名5','所属科室5','医院名字5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmu38p1/upload/yisheng_yishengzhaopian5.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`suoshukeshi`,`yiyuanmingzi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yishengyouxiang`,`yishengzhaopian`) values (26,'2021-04-18 15:39:48','医生6','123456','医生姓名6','所属科室6','医院名字6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmu38p1/upload/yisheng_yishengzhaopian6.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`suoshukeshi`,`yiyuanmingzi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yishengyouxiang`,`yishengzhaopian`) values (1618731788249,'2021-04-18 15:43:08','001','001','001','科室3','测试医院','女',44,'13800123456','123@qq.com','http://localhost:8080/ssmu38p1/upload/1618731819165.jpg');

/*Table structure for table `yuyuexinxi` */

DROP TABLE IF EXISTS `yuyuexinxi`;

CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `suoshukeshi` varchar(200) DEFAULT NULL COMMENT '所属科室',
  `yishengxingbie` varchar(200) DEFAULT NULL COMMENT '医生性别',
  `yishengnianling` varchar(200) DEFAULT NULL COMMENT '医生年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuanmingzi` varchar(200) DEFAULT NULL COMMENT '医院名字',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `menzhenshijian` varchar(200) DEFAULT NULL COMMENT '门诊时间',
  `yishengjianjie` varchar(200) DEFAULT NULL COMMENT '医生简介',
  `yishengzhaopian` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618731980565 DEFAULT CHARSET=utf8 COMMENT='预约信息';

/*Data for the table `yuyuexinxi` */

insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (51,'2021-04-18 15:39:48','医生工号1','医生姓名1','所属科室1','医生性别1','医生年龄1','联系电话1','医院名字1','地址1','门诊时间1','医生简介1','http://localhost:8080/ssmu38p1/upload/yuyuexinxi_yishengzhaopian1.jpg','用户名1','姓名1','手机1','预约时间1','是','',1);
insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (52,'2021-04-18 15:39:48','医生工号2','医生姓名2','所属科室2','医生性别2','医生年龄2','联系电话2','医院名字2','地址2','门诊时间2','医生简介2','http://localhost:8080/ssmu38p1/upload/yuyuexinxi_yishengzhaopian2.jpg','用户名2','姓名2','手机2','预约时间2','是','',2);
insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (53,'2021-04-18 15:39:48','医生工号3','医生姓名3','所属科室3','医生性别3','医生年龄3','联系电话3','医院名字3','地址3','门诊时间3','医生简介3','http://localhost:8080/ssmu38p1/upload/yuyuexinxi_yishengzhaopian3.jpg','用户名3','姓名3','手机3','预约时间3','是','',3);
insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (54,'2021-04-18 15:39:48','医生工号4','医生姓名4','所属科室4','医生性别4','医生年龄4','联系电话4','医院名字4','地址4','门诊时间4','医生简介4','http://localhost:8080/ssmu38p1/upload/yuyuexinxi_yishengzhaopian4.jpg','用户名4','姓名4','手机4','预约时间4','是','',4);
insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (55,'2021-04-18 15:39:48','医生工号5','医生姓名5','所属科室5','医生性别5','医生年龄5','联系电话5','医院名字5','地址5','门诊时间5','医生简介5','http://localhost:8080/ssmu38p1/upload/yuyuexinxi_yishengzhaopian5.jpg','用户名5','姓名5','手机5','预约时间5','是','',5);
insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (56,'2021-04-18 15:39:48','医生工号6','医生姓名6','所属科室6','医生性别6','医生年龄6','联系电话6','医院名字6','地址6','门诊时间6','医生简介6','http://localhost:8080/ssmu38p1/upload/yuyuexinxi_yishengzhaopian6.jpg','用户名6','姓名6','手机6','预约时间6','是','',6);
insert  into `yuyuexinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`yonghuming`,`xingming`,`shouji`,`yuyueshijian`,`sfsh`,`shhf`,`userid`) values (1618731962981,'2021-04-18 15:46:02','001','001','科室1','女','44','13800123456','测试医院','测试','8:30~11:00,14:30~17:30','<p>简介测试</p>','http://localhost:8080/ssmu38p1/upload/1618731854770.jpg','002','002','13800654321','2021.4.20 8:30','是','',1618731908310);

/*Table structure for table `zhuanjiaxinxi` */

DROP TABLE IF EXISTS `zhuanjiaxinxi`;

CREATE TABLE `zhuanjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `suoshukeshi` varchar(200) DEFAULT NULL COMMENT '所属科室',
  `yishengxingbie` varchar(200) DEFAULT NULL COMMENT '医生性别',
  `yishengnianling` varchar(200) DEFAULT NULL COMMENT '医生年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuanmingzi` varchar(200) DEFAULT NULL COMMENT '医院名字',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `menzhenshijian` varchar(200) DEFAULT NULL COMMENT '门诊时间',
  `yishengjianjie` longtext COMMENT '医生简介',
  `yishengzhaopian` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618731866058 DEFAULT CHARSET=utf8 COMMENT='专家信息';

/*Data for the table `zhuanjiaxinxi` */

insert  into `zhuanjiaxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`clicktime`,`clicknum`,`userid`) values (42,'2021-04-18 15:39:48','医生工号2','医生姓名2','所属科室2','女','医生年龄2','联系电话2','医院名字2','地址2','门诊时间2','<p>医生简介2</p>','http://localhost:8080/ssmu38p1/upload/zhuanjiaxinxi_yishengzhaopian2.jpg','2021-04-18 15:49:15',3,2);
insert  into `zhuanjiaxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`clicktime`,`clicknum`,`userid`) values (43,'2021-04-18 15:39:48','医生工号3','医生姓名3','所属科室3','医生性别3','医生年龄3','联系电话3','医院名字3','地址3','门诊时间3','医生简介3','http://localhost:8080/ssmu38p1/upload/zhuanjiaxinxi_yishengzhaopian3.jpg','2021-04-18 15:39:48',3,3);
insert  into `zhuanjiaxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`clicktime`,`clicknum`,`userid`) values (44,'2021-04-18 15:39:48','医生工号4','医生姓名4','所属科室4','医生性别4','医生年龄4','联系电话4','医院名字4','地址4','门诊时间4','医生简介4','http://localhost:8080/ssmu38p1/upload/zhuanjiaxinxi_yishengzhaopian4.jpg','2021-04-18 15:39:48',4,4);
insert  into `zhuanjiaxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`clicktime`,`clicknum`,`userid`) values (45,'2021-04-18 15:39:48','医生工号5','医生姓名5','所属科室5','医生性别5','医生年龄5','联系电话5','医院名字5','地址5','门诊时间5','医生简介5','http://localhost:8080/ssmu38p1/upload/zhuanjiaxinxi_yishengzhaopian5.jpg','2021-04-18 15:39:48',5,5);
insert  into `zhuanjiaxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`clicktime`,`clicknum`,`userid`) values (46,'2021-04-18 15:39:48','医生工号6','医生姓名6','所属科室6','医生性别6','医生年龄6','联系电话6','医院名字6','地址6','门诊时间6','医生简介6','http://localhost:8080/ssmu38p1/upload/zhuanjiaxinxi_yishengzhaopian6.jpg','2021-04-18 15:39:48',6,6);
insert  into `zhuanjiaxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`suoshukeshi`,`yishengxingbie`,`yishengnianling`,`lianxidianhua`,`yiyuanmingzi`,`dizhi`,`menzhenshijian`,`yishengjianjie`,`yishengzhaopian`,`clicktime`,`clicknum`,`userid`) values (1618731866057,'2021-04-18 15:44:26','001','001','科室1','女','44','13800123456','测试医院','测试','8:30~11:00,14:30~17:30','<p>简介测试</p>','http://localhost:8080/ssmu38p1/upload/1618731854770.jpg','2021-04-18 15:49:10',5,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
