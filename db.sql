/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - fd-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fd-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fd-ssmj`;

/*Table structure for table `baojianxinxi` */

DROP TABLE IF EXISTS `baojianxinxi`;

CREATE TABLE `baojianxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bjnumber` int(11) DEFAULT NULL COMMENT '包间编号',
  `bjname` varchar(255) DEFAULT NULL COMMENT '包间名称 Search',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `money` decimal(10,0) DEFAULT NULL COMMENT '包间定金',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '详情信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='包间信息表';

/*Data for the table `baojianxinxi` */

insert  into `baojianxinxi`(`id`,`bjnumber`,`bjname`,`img_photo`,`money`,`notice_content`) values (1,101,'包间1','http://localhost:8080/fd-ssmj/file/download?fileName=1613712806851.jpg','100','详情信息\r\n'),(2,102,'包间2','http://localhost:8080/fd-ssmj/file/download?fileName=1613712820836.jpg','200','详情信息\r\n'),(3,103,'包间3','http://localhost:8080/fd-ssmj/file/download?fileName=1613712838250.jpg','300','详情信息\r\n'),(4,104,'包间4','http://localhost:8080/fd-ssmj/file/download?fileName=1613712859586.jpg','400','详情信息\r\n'),(5,105,'包间5','http://localhost:8080/fd-ssmj/file/download?fileName=1613712885141.jpg','500','详情信息\r\n');

/*Table structure for table `baojianyuy` */

DROP TABLE IF EXISTS `baojianyuy`;

CREATE TABLE `baojianyuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bjnumber` int(11) DEFAULT NULL COMMENT '包间编号',
  `bjname` varchar(255) DEFAULT NULL COMMENT '包间名称 Search',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `money` decimal(10,0) DEFAULT NULL COMMENT '包间定金',
  `yh_types` int(11) DEFAULT NULL COMMENT '预约用户',
  `notice_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='包间预约表';

/*Data for the table `baojianyuy` */

insert  into `baojianyuy`(`id`,`bjnumber`,`bjname`,`img_photo`,`money`,`yh_types`,`notice_time`,`notice_content`) values (3,105,'包间5','http://localhost:8080/fd-ssmj/file/download?fileName=1613712885141.jpg','500',2,'2021-02-20 09:28:51','请输入备注信息xxxx\r\n'),(10,101,'包间1','http://localhost:8080/fd-ssmj/file/download?fileName=1613712806851.jpg','100',1,'2021-02-20 13:38:19','请输入备注信息qaweqweqwe\r\n'),(15,104,'包间4','http://localhost:8080/fd-ssmj/file/download?fileName=1613712859586.jpg','400',1,'2021-02-09 00:00:00','<p>请输入备注信息23132132</p>'),(16,104,'包间4','http://localhost:8080/fd-ssmj/file/download?fileName=1613712859586.jpg','400',6,'2021-03-03 00:00:00','<p>请输入备注信息ASDASD</p>');

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cpname` varchar(255) DEFAULT NULL COMMENT '菜品名称 Search',
  `lx_types` tinyint(255) DEFAULT NULL COMMENT '类型 Search',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `money` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '详情信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='菜品表';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`cpname`,`lx_types`,`img_photo`,`money`,`notice_content`) values (1,'菜品1',2,'http://localhost:8080/fd-ssmj/file/download?fileName=1613712936346.jpg','50','详情信息\r\n'),(2,'菜品2',3,'http://localhost:8080/fd-ssmj/file/download?fileName=1613718427389.gif','40','详情信息\r\n'),(3,'菜品3',2,'http://localhost:8080/fd-ssmj/file/download?fileName=1613712960529.jpg','60','详情信息\r\n'),(4,'饮料1',3,'http://localhost:8080/fd-ssmj/file/download?fileName=1613712966959.jpg','20','详情信息\r\n'),(5,'菜品4',2,'http://localhost:8080/fd-ssmj/file/download?fileName=1613712987818.jpg','70','详情信息\r\n'),(6,'菜品5',2,'http://localhost:8080/fd-ssmj/file/download?fileName=1613713008792.jpg','80','详情信息\r\n'),(7,'套餐1',4,'http://localhost:8080/fd-ssmj/file/download?fileName=1613727019177.jpg','999','详情信息\r\n'),(8,'菜品3333333',3,'http://localhost:8080/fd-ssmj/file/download?fileName=1613799445818.JPG','900','我是菜品描述信息111111\r\n');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yaopin' COMMENT '商品表名',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `goodid` int(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1,'2021-02-20 13:45:45','caipinxinxi',1,5,'菜品4','http://localhost:8080/fd-ssmj/file/download?fileName=1613712987818.jpg',5,70,0),(2,'2021-02-20 14:09:07','caipinxinxi',1,6,'菜品5','http://localhost:8080/fd-ssmj/file/download?fileName=1613713008792.jpg',1,80,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `adminid` int(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1,'2020-12-24 11:46:45',1,NULL,'这里可以咨询  可以求救 后台管理员会回复',NULL,0),(2,'2021-02-20 14:11:24',6,NULL,'‍12312312\r\n','TERERTETR\r\n',0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg'),(2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg'),(3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG'),(4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg'),(5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg'),(6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `discussbaojianxinxi` */

DROP TABLE IF EXISTS `discussbaojianxinxi`;

CREATE TABLE `discussbaojianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1363002887396401154 DEFAULT CHARSET=utf8 COMMENT='医生坐诊评论表';

/*Data for the table `discussbaojianxinxi` */

insert  into `discussbaojianxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-24 11:36:16',4,1,'评论内容1','回复内容1'),(2,'2020-12-24 11:36:16',4,2,'评论内容2','回复内容2');

/*Table structure for table `discusscaipinxinxi` */

DROP TABLE IF EXISTS `discusscaipinxinxi`;

CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='药品评论表';

/*Data for the table `discusscaipinxinxi` */

insert  into `discusscaipinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-24 11:36:16',6,1,'评论内容1','回复内容1ASASSAD'),(2,'2020-12-24 11:36:16',6,2,'评论内容2','回复内容2');

/*Table structure for table `leixing` */

DROP TABLE IF EXISTS `leixing`;

CREATE TABLE `leixing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lxname` varchar(255) DEFAULT NULL COMMENT '类型 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='类型表';

/*Data for the table `leixing` */

insert  into `leixing`(`id`,`lxname`) values (2,'菜品'),(3,'饮料'),(4,'套餐');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1,'2020-12-24 11:36:16','健身俱乐部','http://localhost:8080/fd-ssmj/upload/1613706797429.webp','饭店健身俱乐部设有室内温水游泳池，设施卓越的壁球场和室内网球场。并配有宽敞的运动室。攀岩机和离心训练机为CBD地区健身人士提供专业化体验。\r\n'),(2,'2020-12-24 11:36:16','婚宴与庆典','http://localhost:8080/fd-ssmj/upload/1613706823644.webp','\r\n典雅的婚宴场地、国贸CBD的户外露台、精美的菜式、个性化的服务，想您所想，特设婚宴专家，为客人提供一站式婚宴、庆典等专享服务，包含宝宝宴、生日宴、答谢宴等。\r\n\r\n'),(3,'2020-12-24 11:36:16','国潮宫廷主题套房','http://localhost:8080/fd-ssmj/upload/1613707301845.jpg','国潮宫廷主题套房“，还原宫廷生活场景，于国贸大商圈体味历史古典韵味和时尚气息的完美碰撞 寒辞去冬雪，暖带入春风。中国大饭店花园套房由故宫诸多稀世珍品，还原宫廷场景：宋代《千里江山图》团扇，南宋画家米友仁《云山墨戏图》屏风，玳瑁边嵌牙松鹤栢鹿图一袋一鹿铜器，宣德铜扁足熏炉，皇锦“祥云腾龙”绣品，乾隆帝题对联，清代画家邹一桂《蟠桃图》，俊朗淡然闲云壶 8888元/套，须提前预约 国潮宫廷主题套房\r\n'),(4,'2020-12-24 11:36:16','健身俱乐部','http://localhost:8080/fd-ssmj/upload/1613706797429.webp','饭店健身俱乐部设有室内温水游泳池，设施卓越的壁球场和室内网球场。并配有宽敞的运动室。攀岩机和离心训练机为CBD地区健身人士提供专业化体验。\r\n'),(5,'2020-12-24 11:36:16','婚宴与庆典','http://localhost:8080/fd-ssmj/upload/1613706823644.webp','\r\n典雅的婚宴场地、国贸CBD的户外露台、精美的菜式、个性化的服务，想您所想，特设婚宴专家，为客人提供一站式婚宴、庆典等专享服务，包含宝宝宴、生日宴、答谢宴等。\r\n\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yaopin' COMMENT '商品表名',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `goodid` int(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1,'2021-02-20 09:59:18','20212209591850798836','caipinxinxi',1,7,'套餐1','http://localhost:8080/fd-ssmj/file/download?fileName=1613727019177.jpg',4,999,999,3996,3996,1,'已退款',NULL),(2,'2021-02-20 10:16:41','202122010164128467807','caipinxinxi',1,6,'菜品5','http://localhost:8080/fd-ssmj/file/download?fileName=1613713008792.jpg',1,80,80,80,80,1,'已支付',NULL),(3,'2021-02-20 10:36:11','202122010361148436437','caipinxinxi',1,6,'菜品5','http://localhost:8080/fd-ssmj/file/download?fileName=1613713008792.jpg',3,80,80,240,240,1,'已退款',NULL),(4,'2021-02-20 14:11:07','2021220141173327241','caipinxinxi',6,7,'套餐1','http://localhost:8080/fd-ssmj/file/download?fileName=1613727019177.jpg',7,999,999,7893,6993,1,'已退款',NULL),(5,'2021-02-20 14:11:07','20212201411726929827','caipinxinxi',6,8,'菜品3333333','http://localhost:8080/fd-ssmj/file/download?fileName=1613799445818.JPG',1,900,900,7893,900,1,'已退款',NULL),(6,'2021-02-20 14:12:03','20212201412340160306','caipinxinxi',6,7,'套餐1','http://localhost:8080/fd-ssmj/file/download?fileName=1613727019177.jpg',1,0,0,0,0,1,'已退款',NULL),(7,'2021-02-20 14:13:19','202122014131978056164','caipinxinxi',6,7,'套餐1','http://localhost:8080/fd-ssmj/file/download?fileName=1613727019177.jpg',1,999,999,999,999,1,'已支付',NULL),(8,'2021-02-20 14:15:35','202122014153579895036','caipinxinxi',6,5,'菜品4','http://localhost:8080/fd-ssmj/file/download?fileName=1613712987818.jpg',1,70,70,150,70,1,'已支付',NULL),(9,'2021-02-20 14:15:36','20212201415366081996','caipinxinxi',6,6,'菜品5','http://localhost:8080/fd-ssmj/file/download?fileName=1613713008792.jpg',1,80,80,150,80,1,'已支付',NULL),(10,'2021-02-20 14:16:20','202122014162069334311','caipinxinxi',6,5,'菜品4','http://localhost:8080/fd-ssmj/file/download?fileName=1613712987818.jpg',1,70,70,90,70,1,'已支付',NULL),(11,'2021-02-20 14:16:20','202122014162091287862','caipinxinxi',6,4,'饮料1','http://localhost:8080/fd-ssmj/file/download?fileName=1613712966959.jpg',1,20,20,90,20,1,'已支付',NULL),(12,'2021-02-20 14:19:42','202122014194292734210','caipinxinxi',6,1,'菜品1','http://localhost:8080/fd-ssmj/file/download?fileName=1613712936346.jpg',1,50,50,50,50,1,'已支付',NULL);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `refid` int(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1,'2021-02-19 17:03:33',1,2,'caipinxinxi','菜品2','http://localhost:8080/fd-ssmj/file/download?fileName=1613718427389.gif');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','7l2ip2rsrvl1qgrw08wtuwby8v47txqs','2021-01-28 18:04:51','2021-02-20 16:13:58'),(2,1,'小札','users','用户','6cdarjvs1whygiz3fwe5g3uj447heghm','2021-02-03 16:33:33','2021-02-20 17:16:16'),(3,30,'123','users',NULL,'31ztl98nm0uiodqbiajww0ig3bkqm92z','2021-02-03 16:59:57','2021-02-03 17:59:57'),(4,30,'123','users','用户','y33tglpuy0aacwtcyu9x6ewodbs15tox','2021-02-03 17:05:40','2021-02-03 18:05:57'),(5,32,'1233','users','用户','vkl4u1yicgsxytzrhxztol20vp3ha6g0','2021-02-03 17:15:57','2021-02-03 18:16:16'),(6,34,'uamm','users','用户','h6dq0z9qux5jyjwfondkawy98o7mdu3l','2021-02-03 17:56:00','2021-02-03 18:56:00'),(7,1,'房东1','users','房东','0bes8lkk0ld015fl4pdbki29erz1gyrn','2021-02-06 10:36:26','2021-02-18 16:33:02'),(8,3,'123','users','用户','v0j7peroh3rcac8o3qysgf3y6zwflnlj','2021-02-20 11:54:12','2021-02-20 12:54:36'),(9,5,'123','users','用户','xzu5gh26lg90slpdl1pcoycnhwaa7dem','2021-02-20 13:25:28','2021-02-20 14:25:29'),(10,6,'123','users','用户','1nbemhqfxogo1ix47ptwoxp2nbc0d61x','2021-02-20 14:10:00','2021-02-20 15:10:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  `remaining` decimal(10,2) DEFAULT '0.00' COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`,`remaining`) values (1,'小札','111','111','http://localhost:8080/fd-ssmj/file/download?fileName=1613713052639.jpg','用户','222723.00'),(2,'小站','222','222','http://localhost:8080/fd-ssmj/file/download?fileName=1613713043574.jpg','用户','0.00'),(6,'123','123','123','http://localhost:8080/fd-ssmj/upload/1613801404751.jpg','用户','50.00');

/*Table structure for table `zhutixinxi` */

DROP TABLE IF EXISTS `zhutixinxi`;

CREATE TABLE `zhutixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '主题',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `zhutixinxi` */

insert  into `zhutixinxi`(`id`,`notice_content`,`create_time`) values (1,'酒楼又称酒家，是一种粤式餐厅，起源于广州。 现时酒楼已成为香港的主流饮食地方。现今的酒楼主要会售卖点心，午市和晚市亦会提供炒粉面饭、小菜及烧味等中式食品。','2021-02-20 16:17:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
