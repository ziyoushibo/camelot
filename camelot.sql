-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.3.10-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 camelot 的数据库结构
DROP DATABASE IF EXISTS `camelot`;
CREATE DATABASE IF NOT EXISTS `camelot` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `camelot`;

-- 导出  表 camelot.auth_group 结构
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.auth_group 的数据：~0 rows (大约)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 导出  表 camelot.auth_group_permissions 结构
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.auth_group_permissions 的数据：~0 rows (大约)
DELETE FROM `auth_group_permissions`;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 导出  表 camelot.auth_permission 结构
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.auth_permission 的数据：~52 rows (大约)
DELETE FROM `auth_permission`;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add user', 7, 'add_user'),
	(26, 'Can change user', 7, 'change_user'),
	(27, 'Can delete user', 7, 'delete_user'),
	(28, 'Can view user', 7, 'view_user'),
	(29, 'Can add counter', 8, 'add_counter'),
	(30, 'Can change counter', 8, 'change_counter'),
	(31, 'Can delete counter', 8, 'delete_counter'),
	(32, 'Can view counter', 8, 'view_counter'),
	(33, 'Can add site', 9, 'add_site'),
	(34, 'Can change site', 9, 'change_site'),
	(35, 'Can delete site', 9, 'delete_site'),
	(36, 'Can view site', 9, 'view_site'),
	(37, 'Can add redirect', 10, 'add_redirect'),
	(38, 'Can change redirect', 10, 'change_redirect'),
	(39, 'Can delete redirect', 10, 'delete_redirect'),
	(40, 'Can view redirect', 10, 'view_redirect'),
	(41, 'Can add liuyan', 11, 'add_liuyan'),
	(42, 'Can change liuyan', 11, 'change_liuyan'),
	(43, 'Can delete liuyan', 11, 'delete_liuyan'),
	(44, 'Can view liuyan', 11, 'view_liuyan'),
	(45, 'Can add product', 12, 'add_product'),
	(46, 'Can change product', 12, 'change_product'),
	(47, 'Can delete product', 12, 'delete_product'),
	(48, 'Can view product', 12, 'view_product'),
	(49, 'Can add shopping cart', 13, 'add_shoppingcart'),
	(50, 'Can change shopping cart', 13, 'change_shoppingcart'),
	(51, 'Can delete shopping cart', 13, 'delete_shoppingcart'),
	(52, 'Can view shopping cart', 13, 'view_shoppingcart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 导出  表 camelot.auth_user 结构
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.auth_user 的数据：~0 rows (大约)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$120000$pxHrhKzFGx1A$XNmpJ0oLSs8OJsefkhA1KiXouTtrHI0hyPCiVqKYoWk=', '2018-11-29 06:46:55.233813', 1, 'guoshibo', '', '', 'ziyoushibo@gmail.com', 1, 1, '2018-11-29 06:45:49.461172');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- 导出  表 camelot.auth_user_groups 结构
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.auth_user_groups 的数据：~0 rows (大约)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- 导出  表 camelot.auth_user_user_permissions 结构
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.auth_user_user_permissions 的数据：~0 rows (大约)
DELETE FROM `auth_user_user_permissions`;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- 导出  表 camelot.camelot_counter 结构
DROP TABLE IF EXISTS `camelot_counter`;
CREATE TABLE IF NOT EXISTS `camelot_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_counter 的数据：~0 rows (大约)
DELETE FROM `camelot_counter`;
/*!40000 ALTER TABLE `camelot_counter` DISABLE KEYS */;
INSERT INTO `camelot_counter` (`id`, `counter`) VALUES
	(1, 417);
/*!40000 ALTER TABLE `camelot_counter` ENABLE KEYS */;

-- 导出  表 camelot.camelot_liuyan 结构
DROP TABLE IF EXISTS `camelot_liuyan`;
CREATE TABLE IF NOT EXISTS `camelot_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `liuyan` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_liuyan 的数据：~3 rows (大约)
DELETE FROM `camelot_liuyan`;
/*!40000 ALTER TABLE `camelot_liuyan` DISABLE KEYS */;
INSERT INTO `camelot_liuyan` (`id`, `username`, `liuyan`) VALUES
	(96, 'guoshibo', '你好'),
	(99, 'haoke', '你也好'),
	(100, 'yujunhao', '大家好'),
	(101, 'liyan', '才是真的好'),
	(102, 'guoshibo', 'hhh');
/*!40000 ALTER TABLE `camelot_liuyan` ENABLE KEYS */;

-- 导出  表 camelot.camelot_product 结构
DROP TABLE IF EXISTS `camelot_product`;
CREATE TABLE IF NOT EXISTS `camelot_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `imagesrc` varchar(2000) NOT NULL,
  `price` int(11) NOT NULL,
  `info` varchar(2000) NOT NULL,
  `shopid` int(11) NOT NULL,
  `jieshao` varchar(5000) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_product 的数据：~50 rows (大约)
DELETE FROM `camelot_product`;
/*!40000 ALTER TABLE `camelot_product` DISABLE KEYS */;
INSERT INTO `camelot_product` (`id`, `productid`, `name`, `imagesrc`, `price`, `info`, `shopid`, `jieshao`, `category`) VALUES
	(1, 9999, 'jidan', '/static/img/cangshu.png', 11, 'haochi', 1, '超好看', 'h'),
	(2, 1, 'fate 冲田总司', '/static/img/dongman/fate 冲田总司.jpg', 200, '标准', 1, 'Aquamarine Fate 冲田总司', 'dongman'),
	(3, 2, '假面骑士', '/static/img/dongman/假面骑士.jpg', 200, '标准', 1, 'ACG作品名: 假面骑士555 •	ACG角色名: 假面骑士faiz •	动漫地区: 日本 •	比例: 1/6 •	尺寸：30cm •	热门系列: RAH •	品牌: MEDICOM •	适用年龄: 16 •	周岁以上', 'dongman'),
	(4, 3, '姬丝秀忒 刃下心 忍野忍', '/static/img/dongman/小忍.jpg', 500, '标准', 1, '伤物语 姬丝秀忒 刃下心 忍野忍 小忍 12岁 坐桌手办动漫模型摆件', 'dongman'),
	(5, 4, '命运高达', '/static/img/dongman/命运高达.jpg', 400, '标准', 1, '•	ACG作品名: 机动战士高达seed destiny •	ACG角色名: destiny（命运高达） •	动漫地区: 日本 •	比例: 1/100 •	尺寸：20cm', 'dongman'),
	(6, 5, 'IU亲自签名', '/static/img/mingxing/IU亲自签名.jpg', 30, '标准', 1, 'IU亲笔签名 李智恩 IU正规4辑2017专辑', 'mingxing'),
	(7, 6, 'IU周边笔袋.', '/static/img/mingxing/IU周边笔袋.jpg', 200, '标准', 1, 'IU周边 笔袋iu简约笔袋学生大容量文具用品', 'mingxing'),
	(8, 7, '新垣结衣 抱枕', '/static/img/mingxing/新垣结衣 抱枕.jpg', 340, '标准', 1, '新垣结衣GAKKI周边抱枕', 'mingxing'),
	(9, 8, '花泽香菜 写真', '/static/img/mingxing/花泽香菜 写真.jpg', 14, '标准', 1, '花泽香菜 写真', 'mingxing'),
	(10, 9, '哈利波特 发光魔杖.jpg', '/static/img/yingshi/哈利波特 发光魔杖.jpg', 28, '标准', 1, '哈利波特发光魔杖周边', 'yingshi'),
	(11, 10, '哈利波特魔法袍', '/static/img/yingshi/哈利波特魔法袍.jpg', 200, '标准', 1, '哈利波特魔法袍格兰芬多校袍斯莱特林披风斗篷 颜色分类: 斯莱特林校袍 格兰芬多校袍 拉文克劳校袍 赫奇帕奇校袍', 'yingshi'),
	(12, 11, '嗅嗅 毛绒玩具', '/static/img/yingshi/嗅嗅 毛绒玩具.jpg', 28, '标准', 1, '嗅嗅 毛绒玩偶 哈利波特 神奇动物在哪里', 'yingshi'),
	(13, 12, '毒液手办', '/static/img/yingshi/毒液手办.jpg', 39, '标准', 1, '尺寸：17cm 材料：pvc', 'yingshi'),
	(14, 13, '塞尔达传说 荒野之息.', '/static/img/youxi/塞尔达传说 荒野之息.jpg', 500, '标准', 1, '任天堂switch NS游戏 塞尔达传说 荒野之息', 'youxi'),
	(16, 14, '怪物猎人:世界', '/static/img/youxi/怪物猎人世界.jpg', 300, '标准', 1, 'PS4游戏 怪物猎人世界 怪物世界 MHW', 'youxi'),
	(18, 15, '皮卡丘 NS主机', '/static/img/youxi/皮卡丘 NS主机.jpg', 2000, '标准', 1, '1.	精灵宝可梦 Let\'s go皮卡丘 伊布 美版限定NS主机', 'youxi'),
	(19, 16, '荒野大嫖客', '/static/img/youxi/荒野大嫖客.jpg', 400, '标准', 1, 'PS4游戏 荒野大镖客2 碧血狂杀2 救赎', 'youxi'),
	(20, 17, '上海爱乐乐团', '/static/img/piaowu/上海爱乐乐团.jpg', 40, '标准', 1, '一场音乐盛宴', 'piaowu'),
	(21, 18, '主角登场', '/static/img/piaowu/主角登场.jpg', 200, '标准', 1, '一场好戏', 'piaowu'),
	(22, 19, '百老汇原版音乐剧 芝加哥', '/static/img/piaowu/百老汇原版音乐剧 芝加哥.jpg', 67, '标准', 1, '原版音乐', 'piaowu'),
	(23, 20, '鹿先森2019演唱会北京站', '/static/img/piaowu/鹿先森2019演唱会北京站.jpg', 300, '标准', 1, '北京演唱会', 'piaowu'),
	(24, 21, '放学后', '/static/img/xiaoshuo/放学后.jpg', 45, '标准', 1, '放学后', 'xiaoshuo'),
	(25, 22, '时生', '/static/img/xiaoshuo/时生.jpg', 45, '标准', 1, '时生', 'xiaoshuo'),
	(26, 23, '白夜行', '/static/img/xiaoshuo/白夜行.jpg', 34, '标准', 1, '白夜行', 'xiaoshuo'),
	(27, 24, '雪国', '/static/img/xiaoshuo/雪国.jpg', 35, '标准', 1, '雪国', 'xiaoshuo'),
	(28, 25, 'old先画集', '/static/img/书籍画报/old先画集.jpg', 45, '标准', 1, 'old先画集 手绘贱炸 见一同名插画集 临摹本 绘本 动漫画册 天闻角川出品', '书籍画报'),
	(29, 26, '全职高手典藏版画集', '/static/img/书籍画报/全职高手典藏版画集.jpg', 45, '标准', 1, '特典版全职高手典藏版画集【赠国家队文件夹+首刷限定典藏卡x6+剧情卡3】天闻角川 猫树绘 蝴蝶蓝著 全职高手小说 官方漫画册', '书籍画报'),
	(30, 27, '山河人间 蝶澜 伊吹五月-剑侠情缘三主题-2018全新合集画集', '/static/img/书籍画报/山河人间 蝶澜 伊吹五月-剑侠情缘三主题-2018全新合集画集.png', 60, '标准', 1, '山河人间 蝶澜 伊吹五月-剑侠情缘三主题-2018全新合集画集', '书籍画报'),
	(31, 28, '山海经图鉴', '/static/img/书籍画报/山海经图鉴.jpg', 40, '标准', 1, '观山海+洛煌笈2 百鬼画师杉泽 山海经图鉴   精装 国风画集 古风插画集', '书籍画报'),
	(32, 29, 'BLACKPINK应援灯', '/static/img/应援物/BLACKPINK应援灯.jpg', 60, '标准', 1, '品牌YG ESHOP  BLACKPINK官方应援灯', '应援物'),
	(33, 30, 'MLXG纪念款应援T恤', '/static/img/应援物/MLXG纪念款应援T恤.jpg', 50, '标准', 1, '规格  颜色：肉食版、绝食版       尺码：S、M、L、XL、2XL', '应援物'),
	(34, 31, 'S8IG应援服', '/static/img/应援物/S8IG应援服.jpg', 58, '标准', 1, '加绒应援IG卫衣', '应援物'),
	(35, 32, '应援发光头箍', '/static/img/应援物/应援发光头箍.jpg', 20, '标准', 1, '粉丝应援发光头箍  LED灯发光', '应援物'),
	(36, 33, 'CLIO 圣诞限定 十色珠光眼影', '/static/img/护肤化妆/CLIO 圣诞限定 十色珠光眼影.jpg', 200, '标准', 1, '2018NARS圣诞限定  高光腮红三合一修容盒', '护肤化妆'),
	(37, 34, 'Jill stuart 圣诞系列 White love story', '/static/img/护肤化妆/Jill stuart 圣诞系列 White love story.jpg', 400, '标准', 1, '2018Jill stuart圣诞限量套装  眼影、高光、唇蜜、睫毛膏、化妆包', '护肤化妆'),
	(38, 35, 'NARS  圣诞限定 高潮三色修容腮红盘', '/static/img/护肤化妆/NARS  圣诞限定 高潮三色修容腮红盘.jpg', 300, '标准', 1, '2018NARS圣诞限定  高光腮红三合一修容盒', '护肤化妆'),
	(39, 36, '完美日记×大英博物馆 十六色眼影盘', '/static/img/护肤化妆/完美日记×大英博物馆 十六色眼影盘.jpg', 400, '标准', 1, '以陶盘“爱神丘比特”和“圣母玛利亚”为灵感 汲取点睛色宝蓝色、祖母绿  从纸盘到配色 尽显复古潮流范', '护肤化妆'),
	(40, 37, '亚克力手机支架二次元动漫摆件', '/static/img/数码配件/Moeyu 魔卡少女樱可鲁贝洛斯周边亚克力手机支架二次元动漫摆件.jpg', 30, '标准', 1, 'Moeyu 魔卡少女樱可鲁贝洛斯周边亚克力手机支架二次元动漫摆件', '数码配件'),
	(41, 38, '初音未来 无线运动 概念蓝牙耳机 动漫周边', '/static/img/数码配件/初音未来 无线运动 概念蓝牙耳机 动漫周边.jpg', 300, '标准', 1, '动漫耳机 初音未来 无线运动 概念蓝牙耳机 动漫周边', '数码配件'),
	(42, 39, '动漫 火影忍者 手机壳', '/static/img/数码配件/动漫 火影忍者 手机壳.jpg', 40, '标准', 1, '【钢化玻璃】动漫 火影忍者 手机壳 苹果XSmax华为oppo小米', '数码配件'),
	(43, 40, '动漫大桌垫 定制.jpg', '/static/img/数码配件/动漫大桌垫 定制.jpg', 40, '标准', 1, '游戏超大鼠标垫 守望先锋 英雄联盟 LOL 魔兽世界 DOTA2 动漫大桌垫 定制', '数码配件'),
	(44, 41, '四面骰子钥匙扣', '/static/img/日用百货/四面骰子钥匙扣.png', 50, '标准', 1, '•	ACG作品名: 第五人格 •	出售状态: 现货', '日用百货'),
	(45, 42, '春日野穹妹礼物水瓶', '/static/img/日用百货/春日野穹妹礼物水瓶.png', 40, '标准', 1, '•	品牌: 猫老师 •	型号: QM1128 •	ACG作品名: 缘之空 •	ACG角色名: 春日野穹', '日用百货'),
	(46, 43, '烫金黑胶太阳伞', '/static/img/日用百货/烫金黑胶太阳伞.png', 40, '标准', 1, '漫地区: 中国大陆 •	周边产品: 雨伞/阳伞 •	适用年龄: 14周岁以上', '日用百货'),
	(47, 44, '阿狸抱枕', '/static/img/日用百货/阿狸抱枕.png', 20, '标准', 1, '•	品牌: 阿狸 •	型号: 阿狸表情靠枕 •	材质: 毛绒 •	玩具类型: 靠垫/抱枕', '日用百货'),
	(48, 45, '团子帆布包', '/static/img/服装鞋包/团子帆布包.png', 20, '标准', 1, '探险系列可爱卡通帆布包', '服装鞋包'),
	(49, 46, '星辰主题帆布鞋.png', '/static/img/服装鞋包/星辰主题帆布鞋.png', 30, '标准', 1, '星尘低帮帆布鞋二次元动漫男女休闲鞋子冬', '服装鞋包'),
	(50, 47, '杰克前沿 FGO 双肩包', '/static/img/服装鞋包/杰克前沿 FGO 双肩包.png', 40, '标准', 1, '•	品牌: JACK&EDGE/杰克前沿', '服装鞋包'),
	(51, 48, '杰克衣服装纯棉T恤', '/static/img/服装鞋包/杰克衣服装纯棉T恤.png', 30, '标准', 1, '用心选好棉，拒绝二次棉：我们采用的是俱佳好棉，拒绝使用陈棉、二次棉，时肌肤更健康，更加舒适，手感舒适，做到不缩水、不起球、不褪色', '服装鞋包');
/*!40000 ALTER TABLE `camelot_product` ENABLE KEYS */;

-- 导出  表 camelot.camelot_shoppingcart 结构
DROP TABLE IF EXISTS `camelot_shoppingcart`;
CREATE TABLE IF NOT EXISTS `camelot_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordercount` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Camelot_shoppingcart_product_id_1ceabe86_fk_Camelot_product_id` (`product_id`),
  KEY `Camelot_shoppingcart_user_id_8443964c_fk_Camelot_user_id` (`user_id`),
  CONSTRAINT `Camelot_shoppingcart_product_id_1ceabe86_fk_Camelot_product_id` FOREIGN KEY (`product_id`) REFERENCES `camelot_product` (`id`),
  CONSTRAINT `Camelot_shoppingcart_user_id_8443964c_fk_Camelot_user_id` FOREIGN KEY (`user_id`) REFERENCES `camelot_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_shoppingcart 的数据：~2 rows (大约)
DELETE FROM `camelot_shoppingcart`;
/*!40000 ALTER TABLE `camelot_shoppingcart` DISABLE KEYS */;
INSERT INTO `camelot_shoppingcart` (`id`, `ordercount`, `product_id`, `user_id`) VALUES
	(36, 1, 25, 1),
	(37, 1, 18, 37),
	(38, 1, 2, 1);
/*!40000 ALTER TABLE `camelot_shoppingcart` ENABLE KEYS */;

-- 导出  表 camelot.camelot_user 结构
DROP TABLE IF EXISTS `camelot_user`;
CREATE TABLE IF NOT EXISTS `camelot_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(128) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `last_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Camelot_user_username_ce79ef77_uniq` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_user 的数据：~10 rows (大约)
DELETE FROM `camelot_user`;
/*!40000 ALTER TABLE `camelot_user` DISABLE KEYS */;
INSERT INTO `camelot_user` (`id`, `username`, `password`, `date_joined`, `email`, `first_name`, `is_active`, `is_staff`, `is_superuser`, `last_login`, `last_name`) VALUES
	(1, 'guoshibo', 'pbkdf2_sha256$120000$1tP6XP6ZBJ7g$CrlbBVih1t1Sq92EA725lJjQPZxXMogj0ehZ1XY+AnE=', '2018-11-29 14:54:54.995609', '', '', 1, 1, 1, '2018-12-25 07:12:59.126167', ''),
	(2, 'usb', 'pbkdf2_sha256$120000$cbJUhY2m83KU$B23PDU+pQaj7vMV3ChDVY+Bh2G5r7CF7J4wJHGJ2g6Y=', '2018-11-29 15:14:22.706373', '', '', 1, 0, 0, NULL, ''),
	(3, 'ziyoushibo', 'pbkdf2_sha256$120000$aINOg5xdXLG3$hMEwBpt2vgSmG4J/qOZIVBkvkAP1Tb/jsNPT0qWrt2M=', '2018-11-30 14:17:00.000000', 'ziyoushibo@gmail.com', '郭士博', 1, 1, 1, '2018-12-02 03:10:20.797886', '郭'),
	(17, 'john', 'pbkdf2_sha256$120000$msUay9y6pk4T$Lcm/r+6cNid30JYLt6zpbw67cRoi6PXKPxUl3FgIvA0=', '2018-12-02 03:32:36.125383', 'lennon@thebeatles.com', '', 1, 0, 0, NULL, 'Lennon'),
	(18, 'yyh', 'pbkdf2_sha256$120000$R5DDmOPyUfkR$i5o3yPxc53PEFtuQqxoq9sWdjqF3O5AWoLI9admL6Bg=', '2018-12-02 03:34:21.252692', 'lennon@thebeatles.com', '', 1, 0, 0, NULL, ''),
	(21, 'gzy', 'pbkdf2_sha256$120000$wpcnYh0hp3sP$vjXOxVfMGIJ1p1mRoCtXgO3Q4+q1rak0+EFPvpYmIoY=', '2018-12-02 03:59:13.309923', 'lennon@thebeatles.com', '', 1, 0, 0, '2018-12-06 02:26:03.894534', ''),
	(23, '王轩', 'pbkdf2_sha256$120000$GnY9u8aUz8E4$RRW4bkm1o18ql2khivN0RpE75C6l6wXcCk5xTya6Soc=', '2018-12-02 07:53:24.101605', 'lennon@thebeatles.com', '', 1, 0, 0, '2018-12-05 05:47:13.877588', ''),
	(34, 'haoke', 'pbkdf2_sha256$120000$XOb9OhPeS9g3$gC25WqXWv56XIb8c5yLesVAFqZRoqa8/586hjsCWrno=', '2018-12-10 14:33:19.923582', 'lennon@thebeatles.com', '', 1, 0, 0, '2018-12-10 14:33:33.621478', ''),
	(36, 'yujunhao', 'pbkdf2_sha256$120000$g9ERVfHX8uum$ahqyIvwr6Ix1laxZyPMRU3O2z9jSLvdDyfMqnR2i27k=', '2018-12-11 10:15:16.304322', 'lennon@thebeatles.com', '', 1, 0, 0, '2018-12-12 05:34:20.431341', ''),
	(37, 'liyan', 'pbkdf2_sha256$120000$JQBhdW3JD5hW$Cyjmz9wCTV5dc29nJbVC8It85L09EM9Nw6aGCa9dmmU=', '2018-12-12 07:56:06.619079', 'lennon@thebeatles.com', '', 1, 0, 0, '2018-12-12 07:56:24.388347', ''),
	(40, 'liusiyi', 'pbkdf2_sha256$120000$WAsyYGd5lB5t$oKnRu1nDy6SSbDhykcDdPcssvAwLL8LFs7DfS5PJzlo=', '2018-12-25 07:26:45.831684', 'lennon@thebeatles.com', '', 1, 0, 0, '2018-12-25 07:26:57.047504', '');
/*!40000 ALTER TABLE `camelot_user` ENABLE KEYS */;

-- 导出  表 camelot.camelot_user_groups 结构
DROP TABLE IF EXISTS `camelot_user_groups`;
CREATE TABLE IF NOT EXISTS `camelot_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Camelot_user_groups_user_id_group_id_98c3a92d_uniq` (`user_id`,`group_id`),
  KEY `Camelot_user_groups_group_id_79ab0dea_fk_auth_group_id` (`group_id`),
  CONSTRAINT `Camelot_user_groups_group_id_79ab0dea_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `Camelot_user_groups_user_id_e005439e_fk_Camelot_user_id` FOREIGN KEY (`user_id`) REFERENCES `camelot_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_user_groups 的数据：~0 rows (大约)
DELETE FROM `camelot_user_groups`;
/*!40000 ALTER TABLE `camelot_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `camelot_user_groups` ENABLE KEYS */;

-- 导出  表 camelot.camelot_user_user_permissions 结构
DROP TABLE IF EXISTS `camelot_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `camelot_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Camelot_user_user_permis_user_id_permission_id_1fa238e1_uniq` (`user_id`,`permission_id`),
  KEY `Camelot_user_user_pe_permission_id_3b71a7dc_fk_auth_perm` (`permission_id`),
  CONSTRAINT `Camelot_user_user_pe_permission_id_3b71a7dc_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `Camelot_user_user_pe_user_id_35b68516_fk_Camelot_u` FOREIGN KEY (`user_id`) REFERENCES `camelot_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.camelot_user_user_permissions 的数据：~32 rows (大约)
DELETE FROM `camelot_user_user_permissions`;
/*!40000 ALTER TABLE `camelot_user_user_permissions` DISABLE KEYS */;
INSERT INTO `camelot_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 3, 1),
	(2, 3, 2),
	(3, 3, 3),
	(4, 3, 4),
	(5, 3, 5),
	(6, 3, 6),
	(7, 3, 7),
	(8, 3, 8),
	(9, 3, 9),
	(10, 3, 10),
	(11, 3, 11),
	(12, 3, 12),
	(13, 3, 13),
	(14, 3, 14),
	(15, 3, 15),
	(16, 3, 16),
	(17, 3, 17),
	(18, 3, 18),
	(19, 3, 19),
	(20, 3, 20),
	(21, 3, 21),
	(22, 3, 22),
	(23, 3, 23),
	(24, 3, 24),
	(25, 3, 25),
	(26, 3, 26),
	(27, 3, 27),
	(28, 3, 28),
	(29, 3, 29),
	(30, 3, 30),
	(31, 3, 31),
	(32, 3, 32);
/*!40000 ALTER TABLE `camelot_user_user_permissions` ENABLE KEYS */;

-- 导出  表 camelot.django_admin_log 结构
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.django_admin_log 的数据：~132 rows (大约)
DELETE FROM `django_admin_log`;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2018-11-30 14:17:25.692717', '3', 'ziyoushibo', 1, '[{"added": {}}]', 7, 1),
	(2, '2018-11-30 14:18:08.806688', '3', 'ziyoushibo', 2, '[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser", "user_permissions"]}}]', 7, 1),
	(5, '2018-12-06 01:46:05.573286', '98', '王轩', 3, '', 11, 1),
	(6, '2018-12-06 01:46:25.533084', '97', '王轩', 3, '', 11, 1),
	(7, '2018-12-06 02:08:35.379015', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(8, '2018-12-06 02:09:44.123528', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(9, '2018-12-06 02:11:51.865142', '1', 'jidan', 2, '[]', 12, 1),
	(10, '2018-12-06 02:12:47.556295', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(11, '2018-12-06 17:33:38.623680', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(12, '2018-12-06 17:53:07.861005', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(13, '2018-12-06 18:09:44.338187', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(14, '2018-12-06 18:11:25.062114', '1', 'jidan', 2, '[{"changed": {"fields": ["imagesrc"]}}]', 12, 1),
	(15, '2018-12-06 18:30:41.627607', '1', 'jidan', 2, '[{"changed": {"fields": ["productid"]}}]', 12, 1),
	(16, '2018-12-06 18:32:42.752424', '1', 'guoshibo', 2, '[{"changed": {"fields": ["password"]}}]', 7, 1),
	(17, '2018-12-06 18:37:37.312213', '2', 'fate 冲田总司', 1, '[{"added": {}}]', 12, 1),
	(18, '2018-12-06 18:43:39.793768', '2', 'fate 冲田总司', 2, '[{"changed": {"fields": ["jieshao"]}}]', 12, 1),
	(19, '2018-12-06 18:45:37.817167', '3', '假面骑士', 1, '[{"added": {}}]', 12, 1),
	(20, '2018-12-06 18:48:30.886062', '4', '冥王 哈帝斯', 1, '[{"added": {}}]', 12, 1),
	(21, '2018-12-06 18:50:47.796063', '5', '命运高达', 1, '[{"added": {}}]', 12, 1),
	(22, '2018-12-06 18:57:07.428585', '6', 'IU亲自签名', 1, '[{"added": {}}]', 12, 1),
	(23, '2018-12-06 18:58:26.052061', '7', 'IU周边笔袋.', 1, '[{"added": {}}]', 12, 1),
	(24, '2018-12-06 19:01:06.592928', '8', '新垣结衣 抱枕', 1, '[{"added": {}}]', 12, 1),
	(25, '2018-12-06 19:02:53.446513', '9', '花泽香菜 写真', 1, '[{"added": {}}]', 12, 1),
	(26, '2018-12-06 19:05:04.325600', '10', '哈利波特 发光魔杖.jpg', 1, '[{"added": {}}]', 12, 1),
	(27, '2018-12-06 19:07:15.514268', '11', '哈利波特魔法袍', 1, '[{"added": {}}]', 12, 1),
	(28, '2018-12-06 19:08:47.422269', '12', '嗅嗅 毛绒玩具', 1, '[{"added": {}}]', 12, 1),
	(29, '2018-12-06 19:10:03.089274', '13', '毒液手办', 1, '[{"added": {}}]', 12, 1),
	(30, '2018-12-06 19:13:47.926559', '14', '塞尔达传说 荒野之息.', 1, '[{"added": {}}]', 12, 1),
	(31, '2018-12-06 19:14:02.154731', '15', '塞尔达传说 荒野之息.', 1, '[{"added": {}}]', 12, 1),
	(32, '2018-12-06 19:15:23.997897', '16', '怪物猎人世界', 1, '[{"added": {}}]', 12, 1),
	(33, '2018-12-06 19:15:30.415988', '17', '怪物猎人世界', 1, '[{"added": {}}]', 12, 1),
	(34, '2018-12-06 19:16:44.742394', '18', '皮卡丘 NS主机', 1, '[{"added": {}}]', 12, 1),
	(35, '2018-12-06 19:17:56.853327', '19', '荒野大嫖客', 1, '[{"added": {}}]', 12, 1),
	(36, '2018-12-06 19:21:48.823397', '20', '上海爱乐乐团', 1, '[{"added": {}}]', 12, 1),
	(37, '2018-12-06 19:23:35.232159', '21', '主角登场', 1, '[{"added": {}}]', 12, 1),
	(38, '2018-12-06 19:24:48.851020', '22', '百老汇原版音乐剧 芝加哥', 1, '[{"added": {}}]', 12, 1),
	(39, '2018-12-06 19:25:48.704715', '23', '鹿先森2019演唱会北京站.jpg', 1, '[{"added": {}}]', 12, 1),
	(40, '2018-12-06 19:26:54.498199', '24', '放学后', 1, '[{"added": {}}]', 12, 1),
	(41, '2018-12-06 19:28:09.286006', '25', '时生', 1, '[{"added": {}}]', 12, 1),
	(42, '2018-12-06 19:29:08.567709', '26', '白夜行', 1, '[{"added": {}}]', 12, 1),
	(43, '2018-12-06 19:30:05.140916', '27', '雪国', 1, '[{"added": {}}]', 12, 1),
	(44, '2018-12-07 03:13:01.893489', '28', 'old先画集', 1, '[{"added": {}}]', 12, 1),
	(45, '2018-12-07 03:14:10.574088', '29', '全职高手典藏版画集', 1, '[{"added": {}}]', 12, 1),
	(46, '2018-12-07 03:16:02.445587', '30', '山河人间 蝶澜 伊吹五月-剑侠情缘三主题-2018全新合集画集', 1, '[{"added": {}}]', 12, 1),
	(47, '2018-12-07 03:17:09.235424', '31', '山海经图鉴', 1, '[{"added": {}}]', 12, 1),
	(48, '2018-12-07 03:19:29.084131', '32', 'BLACKPINK应援灯', 1, '[{"added": {}}]', 12, 1),
	(49, '2018-12-07 03:21:03.819012', '33', 'MLXG纪念款应援T恤.jpg', 1, '[{"added": {}}]', 12, 1),
	(50, '2018-12-07 03:22:11.882936', '34', 'S8IG应援服', 1, '[{"added": {}}]', 12, 1),
	(51, '2018-12-07 03:24:12.259839', '35', '应援发光头箍.jpg', 1, '[{"added": {}}]', 12, 1),
	(52, '2018-12-07 03:26:18.221575', '36', 'CLIO 圣诞限定 十色珠光眼影', 1, '[{"added": {}}]', 12, 1),
	(53, '2018-12-07 03:28:37.636284', '37', 'Jill stuart 圣诞系列 White love story', 1, '[{"added": {}}]', 12, 1),
	(54, '2018-12-07 03:30:31.594964', '38', 'NARS  圣诞限定 高潮三色修容腮红盘', 1, '[{"added": {}}]', 12, 1),
	(55, '2018-12-07 03:32:00.340949', '39', '完美日记×大英博物馆 十六色眼影盘', 1, '[{"added": {}}]', 12, 1),
	(56, '2018-12-07 03:35:15.086370', '40', '亚克力手机支架二次元动漫摆件', 1, '[{"added": {}}]', 12, 1),
	(57, '2018-12-07 03:37:02.498548', '41', '初音未来 无线运动 概念蓝牙耳机 动漫周边', 1, '[{"added": {}}]', 12, 1),
	(58, '2018-12-07 03:39:08.554751', '42', '动漫 火影忍者 手机壳', 1, '[{"added": {}}]', 12, 1),
	(59, '2018-12-07 03:40:43.422089', '43', '动漫大桌垫 定制.jpg', 1, '[{"added": {}}]', 12, 1),
	(60, '2018-12-07 03:43:10.154302', '44', '四面骰子钥匙扣', 1, '[{"added": {}}]', 12, 1),
	(61, '2018-12-07 03:45:20.039339', '45', '春日野穹妹礼物水瓶', 1, '[{"added": {}}]', 12, 1),
	(62, '2018-12-07 03:46:53.604014', '46', '烫金黑胶太阳伞', 1, '[{"added": {}}]', 12, 1),
	(63, '2018-12-07 03:48:24.629040', '47', '阿狸抱枕', 1, '[{"added": {}}]', 12, 1),
	(64, '2018-12-07 03:53:26.236828', '48', '团子帆布包', 1, '[{"added": {}}]', 12, 1),
	(65, '2018-12-07 03:54:35.484091', '49', '星辰主题帆布鞋.png', 1, '[{"added": {}}]', 12, 1),
	(66, '2018-12-07 03:56:14.760381', '50', '杰克前沿 FGO 双肩包', 1, '[{"added": {}}]', 12, 1),
	(67, '2018-12-07 03:58:24.126514', '51', '杰克衣服装纯棉T恤', 1, '[{"added": {}}]', 12, 1),
	(68, '2018-12-07 03:59:00.829570', '35', '应援发光头箍', 2, '[{"changed": {"fields": ["name"]}}]', 12, 1),
	(69, '2018-12-07 03:59:15.810969', '33', 'MLXG纪念款应援T恤', 2, '[{"changed": {"fields": ["name"]}}]', 12, 1),
	(70, '2018-12-07 03:59:30.626384', '23', '鹿先森2019演唱会北京站', 2, '[{"changed": {"fields": ["name"]}}]', 12, 1),
	(71, '2018-12-07 05:04:25.571024', '2', 'fate 冲田总司', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(72, '2018-12-07 05:04:38.080073', '3', '假面骑士', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(73, '2018-12-07 05:04:56.408349', '4', '冥王 哈帝斯', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(74, '2018-12-07 05:05:15.734250', '5', '命运高达', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(75, '2018-12-07 05:05:39.778941', '6', 'IU亲自签名', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(76, '2018-12-07 05:06:01.800906', '7', 'IU周边笔袋.', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(77, '2018-12-07 05:06:12.453266', '8', '新垣结衣 抱枕', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(78, '2018-12-07 05:08:42.945789', '9', '花泽香菜 写真', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(79, '2018-12-07 05:09:03.269641', '20', '上海爱乐乐团', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(80, '2018-12-07 05:09:13.529678', '21', '主角登场', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(81, '2018-12-07 05:09:25.814279', '22', '百老汇原版音乐剧 芝加哥', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(82, '2018-12-07 05:09:46.806858', '23', '鹿先森2019演唱会北京站', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(83, '2018-12-07 05:10:10.225334', '24', '放学后', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(84, '2018-12-07 05:10:18.471130', '25', '时生', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(85, '2018-12-07 05:10:33.146107', '26', '白夜行', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(86, '2018-12-07 05:10:40.701779', '27', '雪国', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(87, '2018-12-07 05:11:04.929827', '10', '哈利波特 发光魔杖.jpg', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(88, '2018-12-07 05:11:20.937401', '11', '哈利波特魔法袍', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(89, '2018-12-07 05:11:39.378182', '12', '嗅嗅 毛绒玩具', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(90, '2018-12-07 05:11:50.281287', '13', '毒液手办', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(91, '2018-12-07 05:12:42.817837', '14', '塞尔达传说 荒野之息.', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(92, '2018-12-07 05:13:33.192848', '17', '怪物猎人世界', 3, '', 12, 1),
	(93, '2018-12-07 05:13:33.240815', '15', '塞尔达传说 荒野之息.', 3, '', 12, 1),
	(94, '2018-12-07 05:14:03.586680', '16', '怪物猎人世界', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(95, '2018-12-07 05:14:41.585404', '18', '皮卡丘 NS主机', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(96, '2018-12-07 05:14:49.911153', '19', '荒野大嫖客', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(97, '2018-12-07 05:15:20.613141', '28', 'old先画集', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(98, '2018-12-07 05:15:29.766894', '29', '全职高手典藏版画集', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(99, '2018-12-07 05:15:40.559628', '30', '山河人间 蝶澜 伊吹五月-剑侠情缘三主题-2018全新合集画集', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(100, '2018-12-07 05:15:54.779763', '31', '山海经图鉴', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(101, '2018-12-07 05:31:20.815563', '32', 'BLACKPINK应援灯', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(102, '2018-12-07 05:32:21.299162', '33', 'MLXG纪念款应援T恤', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(103, '2018-12-07 05:32:39.251006', '34', 'S8IG应援服', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(104, '2018-12-07 05:32:47.868275', '35', '应援发光头箍', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(105, '2018-12-07 05:33:23.196731', '36', 'CLIO 圣诞限定 十色珠光眼影', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(106, '2018-12-07 05:33:40.924856', '37', 'Jill stuart 圣诞系列 White love story', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(107, '2018-12-07 05:33:52.478744', '38', 'NARS  圣诞限定 高潮三色修容腮红盘', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(108, '2018-12-07 05:34:00.996236', '39', '完美日记×大英博物馆 十六色眼影盘', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(109, '2018-12-07 05:34:49.397468', '40', '亚克力手机支架二次元动漫摆件', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(110, '2018-12-07 05:34:59.051479', '41', '初音未来 无线运动 概念蓝牙耳机 动漫周边', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(111, '2018-12-07 05:35:10.464159', '42', '动漫 火影忍者 手机壳', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(112, '2018-12-07 05:35:18.742160', '43', '动漫大桌垫 定制.jpg', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(113, '2018-12-07 07:37:08.527528', '44', '四面骰子钥匙扣', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(114, '2018-12-07 07:37:18.527201', '45', '春日野穹妹礼物水瓶', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(115, '2018-12-07 07:37:30.096977', '46', '烫金黑胶太阳伞', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(116, '2018-12-07 07:37:37.979771', '47', '阿狸抱枕', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(117, '2018-12-07 07:37:55.429749', '48', '团子帆布包', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(118, '2018-12-07 07:38:08.748580', '49', '星辰主题帆布鞋.png', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(119, '2018-12-07 07:38:14.793719', '50', '杰克前沿 FGO 双肩包', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(120, '2018-12-07 07:38:22.880861', '51', '杰克衣服装纯棉T恤', 2, '[{"changed": {"fields": ["category"]}}]', 12, 1),
	(121, '2018-12-10 14:45:41.468959', '16', '怪物猎人:世界', 2, '[{"changed": {"fields": ["name"]}}]', 12, 1),
	(122, '2018-12-10 16:15:49.940449', '30', '山河人间 蝶澜 伊吹五月-剑侠情缘三主题-2018全新合集画集', 2, '[{"changed": {"fields": ["productid"]}}]', 12, 1),
	(123, '2018-12-11 08:59:26.044592', '4', '姬丝秀忒 刃下心 忍野忍', 2, '[{"changed": {"fields": ["name", "imagesrc", "jieshao"]}}]', 12, 1),
	(124, '2018-12-12 06:24:59.318223', '35', 'ShoppingCart object (35)', 3, '', 13, 1),
	(125, '2018-12-12 06:24:59.434150', '34', 'ShoppingCart object (34)', 3, '', 13, 1),
	(126, '2018-12-12 06:24:59.460132', '33', 'ShoppingCart object (33)', 3, '', 13, 1),
	(127, '2018-12-12 06:24:59.495111', '32', 'ShoppingCart object (32)', 3, '', 13, 1),
	(128, '2018-12-12 06:24:59.515099', '31', 'ShoppingCart object (31)', 3, '', 13, 1),
	(129, '2018-12-12 06:24:59.552076', '30', 'ShoppingCart object (30)', 3, '', 13, 1),
	(130, '2018-12-12 06:24:59.571064', '29', 'ShoppingCart object (29)', 3, '', 13, 1),
	(131, '2018-12-12 06:24:59.596049', '28', 'ShoppingCart object (28)', 3, '', 13, 1),
	(132, '2018-12-12 06:24:59.616038', '27', 'ShoppingCart object (27)', 3, '', 13, 1),
	(133, '2018-12-12 06:24:59.673001', '26', 'ShoppingCart object (26)', 3, '', 13, 1),
	(134, '2018-12-12 06:24:59.695987', '25', 'ShoppingCart object (25)', 3, '', 13, 1),
	(135, '2018-12-12 06:24:59.763946', '24', 'ShoppingCart object (24)', 3, '', 13, 1),
	(136, '2018-12-12 06:24:59.892996', '23', 'ShoppingCart object (23)', 3, '', 13, 1),
	(137, '2018-12-12 06:24:59.918123', '22', 'ShoppingCart object (22)', 3, '', 13, 1),
	(138, '2018-12-12 06:24:59.938136', '21', 'ShoppingCart object (21)', 3, '', 13, 1),
	(139, '2018-12-12 06:25:00.020162', '20', 'ShoppingCart object (20)', 3, '', 13, 1),
	(140, '2018-12-12 06:25:00.039164', '19', 'ShoppingCart object (19)', 3, '', 13, 1),
	(141, '2018-12-12 06:25:00.062170', '18', 'ShoppingCart object (18)', 3, '', 13, 1),
	(142, '2018-12-12 06:25:00.095207', '17', 'ShoppingCart object (17)', 3, '', 13, 1),
	(143, '2018-12-12 06:25:00.118466', '16', 'ShoppingCart object (16)', 3, '', 13, 1),
	(144, '2018-12-12 06:25:00.150239', '15', 'ShoppingCart object (15)', 3, '', 13, 1),
	(145, '2018-12-12 06:25:00.208259', '14', 'ShoppingCart object (14)', 3, '', 13, 1),
	(146, '2018-12-12 06:25:00.228109', '13', 'ShoppingCart object (13)', 3, '', 13, 1),
	(147, '2018-12-12 06:25:00.284203', '12', 'ShoppingCart object (12)', 3, '', 13, 1),
	(148, '2018-12-12 06:25:00.305838', '11', 'ShoppingCart object (11)', 3, '', 13, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 导出  表 camelot.django_content_type 结构
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.django_content_type 的数据：~12 rows (大约)
DELETE FROM `django_content_type`;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(8, 'Camelot', 'counter'),
	(11, 'Camelot', 'liuyan'),
	(12, 'Camelot', 'product'),
	(13, 'Camelot', 'shoppingcart'),
	(7, 'Camelot', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(10, 'redirects', 'redirect'),
	(6, 'sessions', 'session'),
	(9, 'sites', 'site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 导出  表 camelot.django_migrations 结构
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.django_migrations 的数据：~27 rows (大约)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2018-11-29 06:36:50.435272'),
	(2, 'auth', '0001_initial', '2018-11-29 06:36:58.851685'),
	(3, 'admin', '0001_initial', '2018-11-29 06:37:00.874739'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-29 06:37:00.968467'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-29 06:37:01.015332'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2018-11-29 06:37:02.218346'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2018-11-29 06:37:03.061190'),
	(8, 'auth', '0003_alter_user_email_max_length', '2018-11-29 06:37:03.962145'),
	(9, 'auth', '0004_alter_user_username_opts', '2018-11-29 06:37:04.009024'),
	(10, 'auth', '0005_alter_user_last_login_null', '2018-11-29 06:37:04.662399'),
	(11, 'auth', '0006_require_contenttypes_0002', '2018-11-29 06:37:04.709268'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2018-11-29 06:37:04.756139'),
	(13, 'auth', '0008_alter_user_username_max_length', '2018-11-29 06:37:05.648672'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2018-11-29 06:37:06.586123'),
	(15, 'sessions', '0001_initial', '2018-11-29 06:37:07.289206'),
	(16, 'Camelot', '0001_initial', '2018-11-29 06:42:49.120035'),
	(17, 'Camelot', '0002_auto_20181129_2254', '2018-11-29 14:55:05.938491'),
	(18, 'Camelot', '0003_counter', '2018-11-30 12:56:51.175285'),
	(19, 'Camelot', '0004_counter_counter', '2018-11-30 13:49:52.437013'),
	(20, 'sites', '0001_initial', '2018-12-02 03:47:41.695114'),
	(21, 'sites', '0002_alter_domain_unique', '2018-12-02 03:47:41.929483'),
	(22, 'redirects', '0001_initial', '2018-12-02 03:50:50.749353'),
	(23, 'Camelot', '0005_liuyan', '2018-12-02 15:16:52.074212'),
	(24, 'Camelot', '0006_product_shoppingcart', '2018-12-05 09:28:10.233158'),
	(25, 'Camelot', '0007_product_shopid', '2018-12-05 09:50:23.675406'),
	(26, 'Camelot', '0008_product_jieshao', '2018-12-06 18:40:55.302757'),
	(27, 'Camelot', '0009_product_category', '2018-12-07 05:01:27.606655');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 导出  表 camelot.django_redirect 结构
DROP TABLE IF EXISTS `django_redirect`;
CREATE TABLE IF NOT EXISTS `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_old_path_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_old_path_c6cc94d3` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.django_redirect 的数据：~0 rows (大约)
DELETE FROM `django_redirect`;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;

-- 导出  表 camelot.django_session 结构
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.django_session 的数据：~4 rows (大约)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('0b4dbwjjavqt7c9zwuoz0uawi3cktbj9', 'NjBiMmM1Y2E3ZDIyNGFiZjFjN2IzZTNlNDYxYWYzYjllYzcwMjE2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzA1YzdhODAxOWQxZmFiYjA3MzJiYzFjZTEzNmM4ZTA1OWQ4ZDY1In0=', '2018-12-24 15:23:44.039757'),
	('e7xavafwze1c6lkk4pp4bjydge2k2v8t', 'NDBkZjBiOGU3NzM5MzE4NmJiMzE2ZTdhMjFjMzhhOWQ5ZWRiNTVmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDUxZGEwMjJiNTU4OGVhZjQ1YjQ1M2E1MjVlZTkzZDUxOTUxNDc2In0=', '2018-12-13 14:57:43.528169'),
	('f4be6eaxgisjpg4nwsekgwx6koyswzpy', 'NjBiMmM1Y2E3ZDIyNGFiZjFjN2IzZTNlNDYxYWYzYjllYzcwMjE2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzA1YzdhODAxOWQxZmFiYjA3MzJiYzFjZTEzNmM4ZTA1OWQ4ZDY1In0=', '2019-01-08 07:12:59.226139'),
	('iq6hteufexx4vaxinoar75jj4eqcmcai', 'YzhjZGFkNWNkZmVhNzc2N2E0MTU5OWY4ODQ3MGM1Mjk4ZjY4ODRjZDp7Il9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDM4NDQ3NGNiZGQ1Zjk3N2I0ZmMzZjNmNGZiNWFjZjhmYzc2NzlmOCJ9', '2019-01-08 07:26:57.115482');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 导出  表 camelot.django_site 结构
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  camelot.django_site 的数据：~0 rows (大约)
DELETE FROM `django_site`;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
	(1, 'example.com', 'example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
