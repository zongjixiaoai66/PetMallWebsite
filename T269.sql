/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t269`;
CREATE DATABASE IF NOT EXISTS `t269` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t269`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(2, 2, '收货人2', '17703786902', '地址2', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(6, 1, '收货人6', '17703786906', '地址6', 2, '2022-02-22 08:41:17', '2022-02-22 09:29:50', '2022-02-22 08:41:17'),
	(7, 3, '收货人7', '17703786907', '地址7', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(8, 1, '收货人8', '17703786908', '地址8', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(9, 2, '收货人9', '17703786909', '地址9', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(10, 2, '收货人10', '17703786910', '地址10', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(11, 3, '收货人11', '17703786911', '地址11', 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17');

DROP TABLE IF EXISTS `baike`;
CREATE TABLE IF NOT EXISTS `baike` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `baike_name` varchar(200) DEFAULT NULL COMMENT '百科名称 Search111  ',
  `baike_photo` varchar(200) DEFAULT NULL COMMENT '百科图片 ',
  `baike_types` int NOT NULL COMMENT '百科类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '百科发布时间 ',
  `baike_content` text COMMENT '百科详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='百科信息';

DELETE FROM `baike`;
INSERT INTO `baike` (`id`, `baike_name`, `baike_photo`, `baike_types`, `insert_time`, `baike_content`, `create_time`) VALUES
	(1, '百科名称1', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 3, '2022-02-22 08:41:17', '百科详情1', '2022-02-22 08:41:17'),
	(2, '百科名称2', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 2, '2022-02-22 08:41:17', '百科详情2', '2022-02-22 08:41:17'),
	(3, '百科名称3', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 1, '2022-02-22 08:41:17', '百科详情3', '2022-02-22 08:41:17'),
	(4, '百科名称4', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 2, '2022-02-22 08:41:17', '百科详情4', '2022-02-22 08:41:17'),
	(5, '百科名称5', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 4, '2022-02-22 08:41:17', '百科详情5', '2022-02-22 08:41:17'),
	(6, '百科名称6', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 2, '2022-02-22 08:41:17', '百科详情6', '2022-02-22 08:41:17'),
	(7, '百科名称7', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 1, '2022-02-22 08:41:17', '百科详情7', '2022-02-22 08:41:17'),
	(8, '百科名称8', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 2, '2022-02-22 08:41:17', '百科详情8', '2022-02-22 08:41:17'),
	(9, '百科名称9', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 1, '2022-02-22 08:41:17', '百科详情9', '2022-02-22 08:41:17'),
	(10, '百科名称10', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 2, '2022-02-22 08:41:17', '百科详情10', '2022-02-22 08:41:17'),
	(11, '百科名称11', 'http://localhost:8080/chongwushangchengwangzhan/upload/1645522229421.jpg', 4, '2022-02-22 08:41:17', '<p>百科详情11</p>', '2022-02-22 08:41:17');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/chongwushangchengwangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/chongwushangchengwangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/chongwushangchengwangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-22 08:39:43'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-22 08:39:43'),
	(3, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-02-22 08:39:43'),
	(4, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-02-22 08:39:43'),
	(5, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.95', '2022-02-22 08:39:43'),
	(6, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-02-22 08:39:43'),
	(7, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-02-22 08:39:43'),
	(8, 'shangpin_types', '商品类型', 1, '商品类型1', NULL, NULL, '2022-02-22 08:39:43'),
	(9, 'shangpin_types', '商品类型', 2, '商品类型2', NULL, NULL, '2022-02-22 08:39:43'),
	(10, 'shangpin_types', '商品类型', 3, '商品类型3', NULL, NULL, '2022-02-22 08:39:43'),
	(11, 'shangpin_types', '商品类型', 4, '商品类型4', NULL, NULL, '2022-02-22 08:39:43'),
	(12, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-22 08:39:43'),
	(13, 'shangpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-02-22 08:39:43'),
	(14, 'shangpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-02-22 08:39:43'),
	(15, 'shangpin_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-02-22 08:39:43'),
	(16, 'shangpin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-02-22 08:39:43'),
	(17, 'shangpin_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-02-22 08:39:43'),
	(18, 'shangpin_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-02-22 08:39:43'),
	(19, 'shangpin_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-02-22 08:39:43'),
	(20, 'shangpin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-02-22 08:39:43'),
	(21, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-02-22 08:39:43'),
	(22, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-02-22 08:39:44'),
	(23, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2022-02-22 08:39:44'),
	(24, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2022-02-22 08:39:44'),
	(25, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2022-02-22 08:39:44'),
	(26, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-02-22 08:39:44'),
	(27, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-02-22 08:39:44'),
	(28, 'baike_types', '百科类型', 1, '百科类型1', NULL, NULL, '2022-02-22 08:39:44'),
	(29, 'baike_types', '百科类型', 2, '百科类型2', NULL, NULL, '2022-02-22 08:39:44'),
	(30, 'baike_types', '百科类型', 3, '百科类型3', NULL, NULL, '2022-02-22 08:39:44'),
	(31, 'baike_types', '百科类型', 4, '百科类型4', NULL, NULL, '2022-02-22 08:39:44');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `laoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, 1, NULL, '发布内容1', NULL, 1, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(2, '帖子标题2', 1, 2, NULL, '发布内容2', NULL, 1, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(3, '帖子标题3', 2, 3, NULL, '发布内容3', NULL, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(4, '帖子标题4', 3, 4, NULL, '发布内容4', NULL, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(5, '帖子标题5', 2, 5, NULL, '发布内容5', NULL, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(6, '帖子标题6', 2, 6, NULL, '发布内容6', NULL, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(7, '帖子标题7', 2, 7, NULL, '发布内容7', NULL, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(8, '帖子标题8', 1, 8, NULL, '发布内容8', NULL, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(9, '帖子标题9', 2, 9, NULL, '发布内容9', NULL, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(10, '帖子标题10', 2, 10, NULL, '发布内容10', NULL, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(11, '帖子标题11', 1, 11, NULL, '发布内容11', NULL, 1, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(12, NULL, 1, NULL, NULL, '回复11', 11, NULL, 2, '2022-02-22 09:21:39', NULL, '2022-02-22 09:21:39'),
	(13, NULL, 1, NULL, NULL, '回复122', 11, NULL, 2, '2022-02-22 09:21:45', NULL, '2022-02-22 09:21:45'),
	(14, NULL, NULL, NULL, 6, '的地方', 11, NULL, 2, '2022-02-22 09:31:29', NULL, '2022-02-22 09:31:29'),
	(15, NULL, 1, NULL, NULL, '111', 11, NULL, 2, '2022-02-22 09:33:13', NULL, '2022-02-22 09:33:13'),
	(16, '55', 1, NULL, NULL, '555', NULL, 3, 1, '2024-07-15 05:54:00', NULL, '2024-07-15 05:54:00');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='留言版';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '回复信息1', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(2, 2, '留言标题2', '留言内容2', '回复信息2', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(3, 3, '留言标题3', '留言内容3', '回复信息3', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(4, 1, '留言标题4', '留言内容4', '回复信息4', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(5, 2, '留言标题5', '留言内容5', '回复信息5', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(6, 1, '留言标题6', '留言内容6', '回复信息6', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(7, 2, '留言标题7', '留言内容7', '回复信息7', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(8, 2, '留言标题8', '留言内容8', '回复信息8', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(9, 2, '留言标题9', '留言内容9', '回复信息9', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(10, 2, '留言标题10', '留言内容10', '回复信息10', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(11, 3, '留言标题11', '留言内容11', '回复信息11', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(12, 1, '标题99', '内容99', NULL, '2022-02-22 09:21:59', NULL, '2022-02-22 09:21:59');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `shangpin_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_name`, `shangpin_photo`, `shangpin_types`, `shangpin_kucun_number`, `shangpin_price`, `shangpin_old_money`, `shangpin_new_money`, `shangpin_clicknum`, `shangxia_types`, `shangpin_delete`, `shangpin_content`, `create_time`) VALUES
	(1, '商品名称1', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 2, 10001, 168, 568.34, 219.73, 42, 1, 1, '商品简介1', '2022-02-22 08:41:17'),
	(2, '商品名称2', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin2.jpg', 2, 10002, 455, 641.65, 331.38, 231, 1, 1, '商品简介2', '2022-02-22 08:41:17'),
	(3, '商品名称3', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin3.jpg', 4, 10003, 475, 766.49, 498.77, 111, 1, 1, '商品简介3', '2022-02-22 08:41:17'),
	(4, '商品名称4', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin4.jpg', 1, 10002, 420, 564.06, 234.25, 366, 1, 1, '商品简介4', '2022-02-22 08:41:17'),
	(5, '商品名称5', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin5.jpg', 3, 10005, 23, 628.81, 154.22, 43, 1, 1, '商品简介5', '2022-02-22 08:41:17'),
	(6, '商品名称6', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin6.jpg', 4, 10006, 322, 524.23, 498.47, 486, 1, 1, '商品简介6', '2022-02-22 08:41:17'),
	(7, '商品名称7', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin7.jpg', 3, 10007, 350, 503.56, 59.35, 449, 1, 1, '商品简介7', '2022-02-22 08:41:17'),
	(8, '商品名称8', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin8.jpg', 3, 10008, 298, 573.53, 278.33, 35, 1, 1, '商品简介8', '2022-02-22 08:41:17'),
	(9, '商品名称9', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin9.jpg', 1, 10007, 432, 766.72, 352.92, 246, 1, 1, '商品简介9', '2022-02-22 08:41:17'),
	(10, '商品名称10', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin10.jpg', 4, 100010, 322, 962.05, 117.90, 68, 1, 1, '商品简介10', '2022-02-22 08:41:17'),
	(11, '商品名称11', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin11.jpg', 3, 100011, 433, 769.25, 475.04, 343, 1, 1, '<p>商品简介11</p>', '2022-02-22 08:41:17');

DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(2, 2, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(3, 3, 1, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(4, 4, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(5, 5, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(6, 6, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(7, 7, 1, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(8, 8, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(9, 9, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(10, 10, 3, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(11, 11, 2, 1, '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(12, 11, 1, 1, '2022-02-22 09:22:16', '2022-02-22 09:22:16'),
	(13, 8, 1, 1, '2024-07-15 05:54:14', '2024-07-15 05:54:14');

DROP TABLE IF EXISTS `shangpin_commentback`;
CREATE TABLE IF NOT EXISTS `shangpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `shangpin_commentback`;
INSERT INTO `shangpin_commentback` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_commentback_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '回复信息1', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(2, 2, 2, '评价内容2', '回复信息2', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(3, 3, 3, '评价内容3', '回复信息3', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(4, 4, 3, '评价内容4', '回复信息4', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(5, 5, 3, '评价内容5', '回复信息5', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(6, 6, 3, '评价内容6', '回复信息6', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(7, 7, 2, '评价内容7', '回复信息7', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(8, 8, 1, '评价内容8', '回复信息8', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(9, 9, 3, '评价内容9', '回复信息9', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(10, 10, 2, '评价内容10', '回复信息10', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(11, 11, 2, '评价内容11', '回复信息11', '2022-02-22 08:41:17', '2022-02-22 08:41:17', '2022-02-22 08:41:17'),
	(12, 9, 1, '还成吧', '嗯嗯呢', '2022-02-22 09:33:43', '2022-02-22 09:34:11', '2022-02-22 09:33:43');

DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收获地址 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `address_id`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_types`, `shangpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1645521674717', 8, 4, 1, 2, 459.13, 5, 1, '2022-02-22 09:21:15', '2022-02-22 09:21:15'),
	(2, '1645522160462', 6, 9, 1, 2, 691.72, 1, 1, '2022-02-22 09:29:20', '2022-02-22 09:29:20'),
	(3, '1645522160462', 6, 11, 1, 3, 1396.62, 2, 1, '2022-02-22 09:29:20', '2022-02-22 09:29:20');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '18oehjgo96ly02x1fijuvogqcfmy9cix', '2022-02-22 09:06:52', '2024-07-15 06:52:18'),
	(2, 1, 'a1', 'yonghu', '用户', 'dvt8g69ck2svdzbk05btw8rega2tdlrj', '2022-02-22 09:11:02', '2024-07-15 06:53:42');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_sum_jifen`, `yonghu_new_jifen`, `huiyuandengji_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/chongwushangchengwangzhan/upload/yonghu1.jpg', 2, '1@qq.com', 9835.04, 2375.35, 2155.74, 2, '2022-02-22 08:41:17'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/chongwushangchengwangzhan/upload/yonghu2.jpg', 2, '2@qq.com', 908.55, 980.07, 474.04, 1, '2022-02-22 08:41:17'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/chongwushangchengwangzhan/upload/yonghu3.jpg', 2, '3@qq.com', 152.33, 993.05, 441.46, 1, '2022-02-22 08:41:17');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
