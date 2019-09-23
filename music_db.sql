/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : music_db

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-09-23 13:08:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 歌曲分类', '7', 'add_label');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 歌曲分类', '7', 'change_label');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 歌曲分类', '7', 'delete_label');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 歌曲分类', '7', 'view_label');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 歌曲信息', '8', 'add_song');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 歌曲信息', '8', 'change_song');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 歌曲信息', '8', 'delete_song');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 歌曲信息', '8', 'view_song');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 歌曲动态', '9', 'add_dynamic');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 歌曲动态', '9', 'change_dynamic');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 歌曲动态', '9', 'delete_dynamic');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 歌曲动态', '9', 'view_dynamic');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 歌曲评论', '10', 'add_comment');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 歌曲评论', '10', 'change_comment');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 歌曲评论', '10', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 歌曲评论', '10', 'view_comment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('10', 'index', 'comment');
INSERT INTO `django_content_type` VALUES ('9', 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES ('7', 'index', 'label');
INSERT INTO `django_content_type` VALUES ('8', 'index', 'song');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-09-11 07:39:08.131650');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-09-11 07:39:08.549124');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-09-11 07:39:09.679146');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-09-11 07:39:09.921575');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-09-11 07:39:09.939732');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-09-11 07:39:10.506548');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-09-11 07:39:10.662605');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-09-11 07:39:10.805070');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-09-11 07:39:10.823427');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-09-11 07:39:10.936607');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-09-11 07:39:10.941608');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-09-11 07:39:10.960612');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-09-11 07:39:11.083842');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-09-11 07:39:11.267245');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2019-09-11 07:39:11.385858');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2019-09-11 07:39:11.406862');
INSERT INTO `django_migrations` VALUES ('17', 'index', '0001_initial', '2019-09-11 07:39:11.693926');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2019-09-11 07:39:12.087017');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('lxfzapmm7km2gcvadadc9fniksze0oxz', 'MDhhNmNhYmJjZjNkMzQ4YTRkYmEyYTk0Y2Y3NWE1OTczNjcyMDIzNDp7InBsYXlfbGlzdCI6W3sic29uZ19pZCI6MTEsInNvbmdfc2luZ2VyIjoiXHU3MzhiXHU1MjliXHU1YjhmL1x1NTM2Mlx1NWRlN1x1OTdmMyIsInNvbmdfbmFtZSI6Ilx1NTk3ZFx1NWZjM1x1NTIwNlx1NjI0YiIsInNvbmdfdGltZSI6IjAzOjAwIn0seyJzb25nX2lkIjoyLCJzb25nX3NpbmdlciI6Ilx1NGU4ZVx1NjU4N1x1NjU4NyIsInNvbmdfbmFtZSI6Ilx1NGY1M1x1OTc2MiIsInNvbmdfdGltZSI6IjA0OjQyIn0seyJzb25nX2lkIjo2LCJzb25nX3NpbmdlciI6Ilx1NTQzNFx1ODJlNVx1NWUwYyIsInNvbmdfbmFtZSI6Ilx1NTIyYlx1NTE4ZFx1OGJiMFx1OGQ3NyIsInNvbmdfdGltZSI6IjA0OjA0In0seyJzb25nX2lkIjoxMCwic29uZ19zaW5nZXIiOiJcdTRmYTdcdTc1MzAiLCJzb25nX25hbWUiOiJWb2xhciIsInNvbmdfdGltZSI6IjAzOjUyIn0seyJzb25nX2lkIjoxMywic29uZ19zaW5nZXIiOiJcdTVmMjBcdTYwZTBcdTY2MjUiLCJzb25nX25hbWUiOiJcdTcyMzFcdThmYzdcdTRlODYgXHU1M2M4XHU2MDBlXHU2ODM3Iiwic29uZ190aW1lIjoiMDQ6MDkifSx7InNvbmdfaWQiOjgsInNvbmdfc2luZ2VyIjoiXHU4NTliXHU0ZTRiXHU4YzI2Iiwic29uZ19uYW1lIjoiXHU2ZjE0XHU1NDU4Iiwic29uZ190aW1lIjoiMDQ6MTEifSx7InNvbmdfaWQiOjEyLCJzb25nX3NpbmdlciI6Ilx1Njc5N1x1OTFjN1x1NmIyMyIsInNvbmdfbmFtZSI6Ilx1NWMzMVx1NjYyZlx1OGZkOVx1NjgzNyIsInNvbmdfdGltZSI6IjA1OjEzIn0seyJzb25nX2lkIjoxLCJzb25nX3NpbmdlciI6Ilx1ODBlMVx1NTkwZiIsInNvbmdfbmFtZSI6Ilx1NzIzMSBcdTkwZmRcdTY2MmZcdTViZjlcdTc2ODQiLCJzb25nX3RpbWUiOiIwNDoyMCJ9XSwia3dvcmQiOiJcdTU5N2RcdTVmYzNcdTUyMDZcdTYyNGIifQ==', '2019-10-06 05:56:50.543602');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) NOT NULL,
  `comment_user` varchar(20) NOT NULL,
  `comment_date` varchar(50) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `index_comment_song_id_e60ecaa2_fk_index_song_song_id` (`song_id`),
  CONSTRAINT `index_comment_song_id_e60ecaa2_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES ('1', '几好听', '匿名用户', '2018-04-20', '6');
INSERT INTO `index_comment` VALUES ('2', '几好听', '匿名用户', '2018-04-20', '6');
INSERT INTO `index_comment` VALUES ('3', '好', '匿名用户', '2018-04-20', '6');
INSERT INTO `index_comment` VALUES ('4', '好好', '匿名用户', '2018-04-20', '6');
INSERT INTO `index_comment` VALUES ('5', '好好听', '匿名用户', '2018-04-20', '6');
INSERT INTO `index_comment` VALUES ('6', '特别好', '匿名用户', '2018-04-20', '6');
INSERT INTO `index_comment` VALUES ('7', '...', '匿名用户', '2019-09-21', '11');

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic` (
  `dynamic_id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_plays` int(11) NOT NULL,
  `dynamic_search` int(11) NOT NULL,
  `dynamic_down` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`dynamic_id`),
  KEY `index_dynamic_song_id_21bb9711_fk_index_song_song_id` (`song_id`),
  CONSTRAINT `index_dynamic_song_id_21bb9711_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES ('1', '36', '45', '22', '1');
INSERT INTO `index_dynamic` VALUES ('2', '58', '17', '22', '2');
INSERT INTO `index_dynamic` VALUES ('3', '38', '34', '14', '3');
INSERT INTO `index_dynamic` VALUES ('4', '4', '6', '2', '4');
INSERT INTO `index_dynamic` VALUES ('5', '28', '7', '5', '5');
INSERT INTO `index_dynamic` VALUES ('6', '208', '65', '42', '6');
INSERT INTO `index_dynamic` VALUES ('7', '154', '53', '20', '7');
INSERT INTO `index_dynamic` VALUES ('8', '18', '16', '33', '8');
INSERT INTO `index_dynamic` VALUES ('9', '9', '12', '18', '9');
INSERT INTO `index_dynamic` VALUES ('10', '69', '65', '35', '10');
INSERT INTO `index_dynamic` VALUES ('11', '132', '71', '51', '11');
INSERT INTO `index_dynamic` VALUES ('12', '54', '32', '45', '12');
INSERT INTO `index_dynamic` VALUES ('13', '107', '54', '12', '13');

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(10) NOT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES ('1', '情感天地');
INSERT INTO `index_label` VALUES ('2', '摇滚金属');
INSERT INTO `index_label` VALUES ('3', '经典流行');
INSERT INTO `index_label` VALUES ('4', '环境心情');
INSERT INTO `index_label` VALUES ('5', '午后场景');
INSERT INTO `index_label` VALUES ('6', '岁月流金');
INSERT INTO `index_label` VALUES ('7', '青春校园');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(50) NOT NULL,
  `song_singer` varchar(50) NOT NULL,
  `song_time` varchar(10) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `song_languages` varchar(20) NOT NULL,
  `song_type` varchar(20) NOT NULL,
  `song_release` varchar(20) NOT NULL,
  `song_img` varchar(20) NOT NULL,
  `song_lyrics` varchar(50) NOT NULL,
  `song_file` varchar(50) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `index_song_label_id_9b9b68ed_fk_index_label_label_id` (`label_id`),
  CONSTRAINT `index_song_label_id_9b9b68ed_fk_index_label_label_id` FOREIGN KEY (`label_id`) REFERENCES `index_label` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES ('1', '爱 都是对的', '胡夏', '04:20', '胡 爱夏', '国语', '流行', '2010-12-08', '1.jpg', '暂无歌词', '1.m4a', '3');
INSERT INTO `index_song` VALUES ('2', '体面', '于文文', '04:42', '《前任3：再见前任》电影插曲', '国语', '伤感', '2017-12-25', '2.jpg', '暂无歌词', '2.m4a', '4');
INSERT INTO `index_song` VALUES ('3', '三国恋', 'Tank', '04:06', 'Fighting! 生存之道', '国语', '摇滚', '2006-04-15', '3.jpg', '暂无歌词', '3.m4a', '2');
INSERT INTO `index_song` VALUES ('4', '会长大的幸福', 'Tank', '04:32', '第三回合', '国语', '励志', '2009-05-29', '4.jpg', '暂无歌词', '4.m4a', '4');
INSERT INTO `index_song` VALUES ('5', '满满', '梁文音/王铮亮', '04:44', '爱，一直存在', '国语', '甜蜜', '2009-11-20', '5.jpg', '暂无歌词', '5.m4a', '1');
INSERT INTO `index_song` VALUES ('6', '别再记起', '吴若希', '04:04', '别再记起', '粤语', '场景', '2017-12-07', '6.jpg', '暂无歌词', '6.m4a', '4');
INSERT INTO `index_song` VALUES ('7', '爱的魔法', '金莎', '03:11', '他不爱我', '国语', '甜蜜', '2012-03-19', '7.jpg', '暂无歌词', '7.m4a', '1');
INSERT INTO `index_song` VALUES ('8', '演员', '薛之谦', '04:11', '演员', '国语', '流行', '2015-06-05', '8.jpg', '暂无歌词', '8.m4a', '3');
INSERT INTO `index_song` VALUES ('9', '放爱情一个假', '许慧欣', '03:24', '谜', '国语', '安静', '2006-10-01', '9.jpg', '暂无歌词', '9.m4a', '4');
INSERT INTO `index_song` VALUES ('10', 'Volar', '侧田', '03:52', 'No Protection', '粤语', '摇滚', '2006-07-05', '10.jpg', '暂无歌词', '10.m4a', '2');
INSERT INTO `index_song` VALUES ('11', '好心分手', '王力宏/卢巧音', '03:00', '2 Love 至情挚爱', '国语', '伤感', '2015-07-24', '11.jpg', '11.txt', '11.m4a', '4');
INSERT INTO `index_song` VALUES ('12', '就是这样', '林采欣', '05:13', '单曲', '国语', '流行', '2016-10-10', '12.jpg', '暂无歌词', '12.m4a', '3');
INSERT INTO `index_song` VALUES ('13', '爱过了 又怎样', '张惠春', '04:09', '单曲', '国语', '流行', '2016-09-07', '13.jpg', '暂无歌词', '13.m4a', '3');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(50) DEFAULT NULL,
  `song_singer` varchar(50) DEFAULT NULL,
  `song_time` varchar(10) DEFAULT NULL,
  `song_album` varchar(50) DEFAULT NULL,
  `song_languages` varchar(20) DEFAULT NULL,
  `song_type` varchar(20) DEFAULT NULL,
  `song_release` varchar(20) DEFAULT NULL,
  `song_img` varchar(20) DEFAULT NULL,
  `song_lyrics` varchar(50) DEFAULT NULL,
  `song_file` varchar(50) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
