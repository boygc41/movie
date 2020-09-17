/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50648
 Source Host           : localhost:3306
 Source Schema         : middle

 Target Server Type    : MySQL
 Target Server Version : 50648
 File Encoding         : 65001

 Date: 14/08/2020 20:54:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add user', 6, 'add_user');
INSERT INTO `auth_permission` VALUES (22, 'Can change user', 6, 'change_user');
INSERT INTO `auth_permission` VALUES (23, 'Can delete user', 6, 'delete_user');
INSERT INTO `auth_permission` VALUES (24, 'Can view user', 6, 'view_user');
INSERT INTO `auth_permission` VALUES (25, 'Can add banner', 7, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change banner', 7, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete banner', 7, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can view banner', 7, 'view_banner');
INSERT INTO `auth_permission` VALUES (29, 'Can add Bookmark', 8, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (30, 'Can change Bookmark', 8, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (31, 'Can delete Bookmark', 8, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (32, 'Can view Bookmark', 8, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (33, 'Can add User Setting', 9, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (34, 'Can change User Setting', 9, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (35, 'Can delete User Setting', 9, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (36, 'Can view User Setting', 9, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (37, 'Can add User Widget', 10, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (38, 'Can change User Widget', 10, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (39, 'Can delete User Widget', 10, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (40, 'Can view User Widget', 10, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (41, 'Can add log entry', 11, 'add_log');
INSERT INTO `auth_permission` VALUES (42, 'Can change log entry', 11, 'change_log');
INSERT INTO `auth_permission` VALUES (43, 'Can delete log entry', 11, 'delete_log');
INSERT INTO `auth_permission` VALUES (44, 'Can view log entry', 11, 'view_log');
INSERT INTO `auth_permission` VALUES (45, 'Can add revision', 12, 'add_revision');
INSERT INTO `auth_permission` VALUES (46, 'Can change revision', 12, 'change_revision');
INSERT INTO `auth_permission` VALUES (47, 'Can delete revision', 12, 'delete_revision');
INSERT INTO `auth_permission` VALUES (48, 'Can view revision', 12, 'view_revision');
INSERT INTO `auth_permission` VALUES (49, 'Can add version', 13, 'add_version');
INSERT INTO `auth_permission` VALUES (50, 'Can change version', 13, 'change_version');
INSERT INTO `auth_permission` VALUES (51, 'Can delete version', 13, 'delete_version');
INSERT INTO `auth_permission` VALUES (52, 'Can view version', 13, 'view_version');
INSERT INTO `auth_permission` VALUES (53, 'Can add 导演', 14, 'add_director');
INSERT INTO `auth_permission` VALUES (54, 'Can change 导演', 14, 'change_director');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 导演', 14, 'delete_director');
INSERT INTO `auth_permission` VALUES (56, 'Can view 导演', 14, 'view_director');
INSERT INTO `auth_permission` VALUES (57, 'Can add 电影分类', 15, 'add_moviecategory');
INSERT INTO `auth_permission` VALUES (58, 'Can change 电影分类', 15, 'change_moviecategory');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 电影分类', 15, 'delete_moviecategory');
INSERT INTO `auth_permission` VALUES (60, 'Can view 电影分类', 15, 'view_moviecategory');
INSERT INTO `auth_permission` VALUES (61, 'Can add 演员', 16, 'add_performer');
INSERT INTO `auth_permission` VALUES (62, 'Can change 演员', 16, 'change_performer');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 演员', 16, 'delete_performer');
INSERT INTO `auth_permission` VALUES (64, 'Can view 演员', 16, 'view_performer');
INSERT INTO `auth_permission` VALUES (65, 'Can add 电影', 17, 'add_movie');
INSERT INTO `auth_permission` VALUES (66, 'Can change 电影', 17, 'change_movie');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 电影', 17, 'delete_movie');
INSERT INTO `auth_permission` VALUES (68, 'Can view 电影', 17, 'view_movie');
INSERT INTO `auth_permission` VALUES (69, 'Can add 评论', 18, 'add_comment');
INSERT INTO `auth_permission` VALUES (70, 'Can change 评论', 18, 'change_comment');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 评论', 18, 'delete_comment');
INSERT INTO `auth_permission` VALUES (72, 'Can view 评论', 18, 'view_comment');
INSERT INTO `auth_permission` VALUES (73, 'Can add 订单记录', 19, 'add_order');
INSERT INTO `auth_permission` VALUES (74, 'Can change 订单记录', 19, 'change_order');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 订单记录', 19, 'delete_order');
INSERT INTO `auth_permission` VALUES (76, 'Can view 订单记录', 19, 'view_order');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `orders` int(11) NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `movie_title_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_movie_title_id_26cf2997`(`movie_title_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 0, 1, '2020-08-13 19:02:03.000000', '2020-08-13 19:02:13.000000', 1, 'boygc', '66666', '2020-08-12 12:10:43.000000', 6);
INSERT INTO `comment` VALUES (2, 0, 1, '2020-08-13 19:02:07.000000', '2020-08-13 19:02:16.000000', 2, '1', '1', '2020-08-12 12:34:15.000000', 6);
INSERT INTO `comment` VALUES (3, 0, 1, '2020-08-13 19:02:10.000000', '2020-08-13 19:02:20.000000', 3, 'lqz', '77777', '2020-08-12 14:10:23.000000', 7);
INSERT INTO `comment` VALUES (6, 0, 1, '2020-08-12 15:00:07.581370', '2020-08-12 15:00:07.581370', NULL, 'boygc', '<p>不错</p>', '2020-08-12 15:00:07.581370', 7);
INSERT INTO `comment` VALUES (7, 0, 1, '2020-08-12 15:00:16.720082', '2020-08-12 15:00:16.720082', NULL, 'boygc', '<p>不错</p>', '2020-08-12 15:00:16.720082', 7);
INSERT INTO `comment` VALUES (8, 0, 1, '2020-08-12 15:00:19.296342', '2020-08-12 15:00:19.296342', NULL, 'boygc', '<p>不错</p>', '2020-08-12 15:00:19.296342', 7);
INSERT INTO `comment` VALUES (9, 0, 1, '2020-08-12 15:03:02.138988', '2020-08-12 15:03:02.138988', NULL, 'boygc', '<p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[坏笑]\" data-w-e=\"1\"><br></p>', '2020-08-12 15:03:02.138988', 7);
INSERT INTO `comment` VALUES (10, 0, 1, '2020-08-12 15:12:36.426253', '2020-08-12 15:12:36.426253', NULL, 'boygc', '<p>66</p>', '2020-08-12 15:12:36.426253', 7);
INSERT INTO `comment` VALUES (11, 0, 1, '2020-08-12 15:14:56.999341', '2020-08-12 15:14:56.999341', NULL, 'boygc', '<p>777</p>', '2020-08-12 15:14:56.999341', 7);
INSERT INTO `comment` VALUES (12, 0, 1, '2020-08-12 15:15:41.033092', '2020-08-12 15:15:41.033092', NULL, 'boygc', '<p>8</p><p><br></p>', '2020-08-12 15:15:41.033092', 7);
INSERT INTO `comment` VALUES (13, 0, 1, '2020-08-12 15:17:54.265696', '2020-08-12 15:17:54.265696', NULL, 'boygc', '<p>9</p>', '2020-08-12 15:17:54.265696', 7);
INSERT INTO `comment` VALUES (14, 0, 1, '2020-08-12 16:05:20.226106', '2020-08-12 16:05:20.226106', NULL, 'boygc', '<p>7</p>', '2020-08-12 16:05:20.226106', 6);
INSERT INTO `comment` VALUES (15, 0, 1, '2020-08-13 15:42:23.361593', '2020-08-13 15:42:23.361593', NULL, '16533639085', '<p>6</p>', '2020-08-13 15:42:23.361593', 246);

-- ----------------------------
-- Table structure for director
-- ----------------------------
DROP TABLE IF EXISTS `director`;
CREATE TABLE `director`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `orders` int(11) NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of director
-- ----------------------------
INSERT INTO `director` VALUES (2, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '弗兰克·德拉邦特');
INSERT INTO `director` VALUES (3, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '奥利维埃·纳卡什');
INSERT INTO `director` VALUES (4, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗伯·莱纳');
INSERT INTO `director` VALUES (5, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '刘伟强');
INSERT INTO `director` VALUES (6, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '加布里埃莱·穆奇诺');
INSERT INTO `director` VALUES (7, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '弗朗西斯·福特·科波拉');
INSERT INTO `director` VALUES (8, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '拜伦·霍华德');
INSERT INTO `director` VALUES (9, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (10, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '黄东赫');
INSERT INTO `director` VALUES (11, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '刘镇伟');
INSERT INTO `director` VALUES (12, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '比利·怀德');
INSERT INTO `director` VALUES (13, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (14, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '岩井俊二');
INSERT INTO `director` VALUES (15, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '理查德·林克莱特');
INSERT INTO `director` VALUES (16, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '马克·赫尔曼');
INSERT INTO `director` VALUES (17, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '路易·西霍尤斯');
INSERT INTO `director` VALUES (18, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '阿兰·葛斯彭纳');
INSERT INTO `director` VALUES (19, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '马基德·马基迪');
INSERT INTO `director` VALUES (20, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '朱塞佩·托纳多雷');
INSERT INTO `director` VALUES (21, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂文·斯皮尔伯格');
INSERT INTO `director` VALUES (22, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '安德鲁·斯坦顿');
INSERT INTO `director` VALUES (23, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '奥里奥尔·保罗');
INSERT INTO `director` VALUES (24, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托夫·巴拉蒂');
INSERT INTO `director` VALUES (25, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼得·法雷里');
INSERT INTO `director` VALUES (26, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '大卫·芬奇');
INSERT INTO `director` VALUES (27, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李安');
INSERT INTO `director` VALUES (28, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '米洛斯·福尔曼');
INSERT INTO `director` VALUES (29, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '盖·里奇');
INSERT INTO `director` VALUES (30, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '莉莉·沃卓斯基');
INSERT INTO `director` VALUES (31, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '姜文');
INSERT INTO `director` VALUES (32, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗曼·波兰斯基');
INSERT INTO `director` VALUES (33, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '朗·霍华德');
INSERT INTO `director` VALUES (34, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '弗洛里安·亨克尔·冯·多纳斯马尔克');
INSERT INTO `director` VALUES (35, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂文·斯皮尔伯格');
INSERT INTO `director` VALUES (36, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼得·杰克逊');
INSERT INTO `director` VALUES (37, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '万籁鸣');
INSERT INTO `director` VALUES (38, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼得·杰克逊');
INSERT INTO `director` VALUES (39, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '托马斯·温特伯格');
INSERT INTO `director` VALUES (40, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗杰·阿勒斯');
INSERT INTO `director` VALUES (41, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李安');
INSERT INTO `director` VALUES (42, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '奉俊昊');
INSERT INTO `director` VALUES (43, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '大卫·叶茨');
INSERT INTO `director` VALUES (44, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '卢卡·瓜达尼诺');
INSERT INTO `director` VALUES (45, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '让-皮埃尔·热内');
INSERT INTO `director` VALUES (46, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '戈尔·维宾斯基');
INSERT INTO `director` VALUES (47, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '詹姆斯·曼高德');
INSERT INTO `director` VALUES (48, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '周星驰');
INSERT INTO `director` VALUES (49, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '蒂姆·波顿');
INSERT INTO `director` VALUES (50, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '梅尔·吉布森');
INSERT INTO `director` VALUES (51, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '查理·卓别林');
INSERT INTO `director` VALUES (52, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '中岛哲也');
INSERT INTO `director` VALUES (53, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王家卫');
INSERT INTO `director` VALUES (54, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '韦斯·安德森');
INSERT INTO `director` VALUES (55, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '詹姆斯·卡梅隆');
INSERT INTO `director` VALUES (56, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '格斯·范·桑特');
INSERT INTO `director` VALUES (57, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '埃里克·布雷斯');
INSERT INTO `director` VALUES (58, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '马丁·斯科塞斯');
INSERT INTO `director` VALUES (59, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '乔纳森·戴米');
INSERT INTO `director` VALUES (60, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '赛尔乔·莱昂内');
INSERT INTO `director` VALUES (61, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '昆汀·塔伦蒂诺');
INSERT INTO `director` VALUES (62, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼得·威尔');
INSERT INTO `director` VALUES (63, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '大卫·芬奇');
INSERT INTO `director` VALUES (64, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (65, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂文·斯皮尔伯格');
INSERT INTO `director` VALUES (66, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗伯特·怀斯');
INSERT INTO `director` VALUES (67, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宁浩');
INSERT INTO `director` VALUES (68, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '弗兰克·德拉邦特');
INSERT INTO `director` VALUES (69, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (70, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '斯坦利·多南');
INSERT INTO `director` VALUES (71, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·史密斯');
INSERT INTO `director` VALUES (72, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '热拉尔·乌里');
INSERT INTO `director` VALUES (73, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '伦尼·阿伯拉罕森');
INSERT INTO `director` VALUES (74, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '是枝裕和');
INSERT INTO `director` VALUES (75, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '郭柯');
INSERT INTO `director` VALUES (76, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '斯蒂芬·卓博斯基');
INSERT INTO `director` VALUES (77, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '阿尔弗雷德·希区柯克');
INSERT INTO `director` VALUES (78, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '卡洛斯·沙尔丹哈');
INSERT INTO `director` VALUES (79, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '瑞奇·摩尔');
INSERT INTO `director` VALUES (80, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '尼克·卡萨维蒂');
INSERT INTO `director` VALUES (81, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '肯尼思·洛纳根');
INSERT INTO `director` VALUES (82, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '是枝裕和');
INSERT INTO `director` VALUES (83, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '藤森雅也');
INSERT INTO `director` VALUES (84, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '巴瑞·莱文森');
INSERT INTO `director` VALUES (85, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '今敏');
INSERT INTO `director` VALUES (86, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '朴勋政');
INSERT INTO `director` VALUES (87, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼特·道格特');
INSERT INTO `director` VALUES (88, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '莫滕·泰杜姆');
INSERT INTO `director` VALUES (89, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '姜炯哲');
INSERT INTO `director` VALUES (90, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '达伦·阿伦诺夫斯基');
INSERT INTO `director` VALUES (91, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '蒂姆·波顿');
INSERT INTO `director` VALUES (92, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '大森贵弘');
INSERT INTO `director` VALUES (93, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '陈可辛');
INSERT INTO `director` VALUES (94, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '唐·霍尔');
INSERT INTO `director` VALUES (95, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '是枝裕和');
INSERT INTO `director` VALUES (96, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '亚当·艾略特');
INSERT INTO `director` VALUES (97, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '中岛哲也');
INSERT INTO `director` VALUES (98, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '近藤喜文');
INSERT INTO `director` VALUES (99, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '托尼·凯耶');
INSERT INTO `director` VALUES (100, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '程小东');
INSERT INTO `director` VALUES (101, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (102, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李力持');
INSERT INTO `director` VALUES (103, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '杨德昌');
INSERT INTO `director` VALUES (104, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '理查德·林克莱特');
INSERT INTO `director` VALUES (105, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '大卫·芬奇');
INSERT INTO `director` VALUES (106, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '森淳一');
INSERT INTO `director` VALUES (107, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '今敏');
INSERT INTO `director` VALUES (108, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, 'M·奈特·沙马兰');
INSERT INTO `director` VALUES (109, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '泷田洋二郎');
INSERT INTO `director` VALUES (110, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王家卫');
INSERT INTO `director` VALUES (111, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李焕庆');
INSERT INTO `director` VALUES (112, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李安');
INSERT INTO `director` VALUES (113, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '森淳一');
INSERT INTO `director` VALUES (114, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '姜文');
INSERT INTO `director` VALUES (115, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '昆汀·塔伦蒂诺');
INSERT INTO `director` VALUES (116, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '延尚昊');
INSERT INTO `director` VALUES (117, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '严定宪');
INSERT INTO `director` VALUES (118, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '费尔南多·梅里尔斯');
INSERT INTO `director` VALUES (119, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '温子仁');
INSERT INTO `director` VALUES (120, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '理查德·柯蒂斯');
INSERT INTO `director` VALUES (121, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '弗朗西斯·福特·科波拉');
INSERT INTO `director` VALUES (122, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (123, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王树忱');
INSERT INTO `director` VALUES (124, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '乔·赖特');
INSERT INTO `director` VALUES (125, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李·昂克里奇');
INSERT INTO `director` VALUES (126, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼特·道格特');
INSERT INTO `director` VALUES (127, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '梅尔·吉布森');
INSERT INTO `director` VALUES (128, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '伏原健之');
INSERT INTO `director` VALUES (129, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克林特·伊斯特伍德');
INSERT INTO `director` VALUES (130, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '皮埃尔·柯芬');
INSERT INTO `director` VALUES (131, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '周星驰');
INSERT INTO `director` VALUES (132, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '金秉祐');
INSERT INTO `director` VALUES (133, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '北野武');
INSERT INTO `director` VALUES (134, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂文·斯皮尔伯格');
INSERT INTO `director` VALUES (135, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '米林宏昌');
INSERT INTO `director` VALUES (136, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '理查德·林克莱特');
INSERT INTO `director` VALUES (137, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '神山征二郎');
INSERT INTO `director` VALUES (138, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '刘镇伟');
INSERT INTO `director` VALUES (139, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王家卫');
INSERT INTO `director` VALUES (140, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯·哥伦布');
INSERT INTO `director` VALUES (141, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (142, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '理查德·柯蒂斯');
INSERT INTO `director` VALUES (143, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '达米恩·查泽雷');
INSERT INTO `director` VALUES (144, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '丹尼·博伊尔');
INSERT INTO `director` VALUES (145, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王家卫');
INSERT INTO `director` VALUES (146, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '新海诚');
INSERT INTO `director` VALUES (147, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '高畑勋');
INSERT INTO `director` VALUES (148, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '达米安·斯兹弗隆');
INSERT INTO `director` VALUES (149, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '汉内斯·赫尔姆');
INSERT INTO `director` VALUES (150, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '忻钰坤');
INSERT INTO `director` VALUES (151, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '让-马克·瓦雷');
INSERT INTO `director` VALUES (152, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '柯克·德·米科');
INSERT INTO `director` VALUES (153, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '吴宇森');
INSERT INTO `director` VALUES (154, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '特瑞·乔治');
INSERT INTO `director` VALUES (155, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '马丁·麦克唐纳');
INSERT INTO `director` VALUES (156, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '杰茜·尼尔森');
INSERT INTO `director` VALUES (157, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗启锐');
INSERT INTO `director` VALUES (158, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂文·斯皮尔伯格');
INSERT INTO `director` VALUES (159, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '保罗·格林格拉斯');
INSERT INTO `director` VALUES (160, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '阿方索·卡隆');
INSERT INTO `director` VALUES (161, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (162, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '莉莉·沃卓斯基');
INSERT INTO `director` VALUES (163, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '黑泽明');
INSERT INTO `director` VALUES (164, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '吴宇森');
INSERT INTO `director` VALUES (165, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '迪恩·德布洛斯');
INSERT INTO `director` VALUES (166, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '卡比尔·汗');
INSERT INTO `director` VALUES (167, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '小津安二郎');
INSERT INTO `director` VALUES (168, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '周申');
INSERT INTO `director` VALUES (169, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '丹尼斯·甘塞尔');
INSERT INTO `director` VALUES (170, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂芬·戴德利');
INSERT INTO `director` VALUES (171, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '约翰·卡尼');
INSERT INTO `director` VALUES (172, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '汤姆·麦卡锡');
INSERT INTO `director` VALUES (173, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '詹姆斯·沃德·布柯特');
INSERT INTO `director` VALUES (174, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '布莱恩·辛格');
INSERT INTO `director` VALUES (175, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '迈克·内威尔');
INSERT INTO `director` VALUES (176, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '道格·里曼');
INSERT INTO `director` VALUES (177, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '乔治·米勒');
INSERT INTO `director` VALUES (178, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '是枝裕和');
INSERT INTO `director` VALUES (179, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '安德鲁·尼科尔');
INSERT INTO `director` VALUES (180, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '丹尼·博伊尔');
INSERT INTO `director` VALUES (181, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王晶');
INSERT INTO `director` VALUES (182, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '阿米尔·汗');
INSERT INTO `director` VALUES (183, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '汤姆·提克威');
INSERT INTO `director` VALUES (184, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '保罗·格林格拉斯');
INSERT INTO `director` VALUES (185, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗伯·莱纳');
INSERT INTO `director` VALUES (186, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '王家卫');
INSERT INTO `director` VALUES (187, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '保罗·杰诺维塞');
INSERT INTO `director` VALUES (188, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '邓肯·琼斯');
INSERT INTO `director` VALUES (189, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '黄信尧');
INSERT INTO `director` VALUES (190, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '爱德华·兹威克');
INSERT INTO `director` VALUES (191, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '徐克');
INSERT INTO `director` VALUES (192, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李惠民');
INSERT INTO `director` VALUES (193, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '昆汀·塔伦蒂诺');
INSERT INTO `director` VALUES (194, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '杨德昌');
INSERT INTO `director` VALUES (195, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '细田守');
INSERT INTO `director` VALUES (196, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李安');
INSERT INTO `director` VALUES (197, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '爱德华·兹威克');
INSERT INTO `director` VALUES (198, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '查理·卓别林');
INSERT INTO `director` VALUES (199, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '斯坦利·库布里克');
INSERT INTO `director` VALUES (200, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '陆川');
INSERT INTO `director` VALUES (201, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '茂文·勒鲁瓦');
INSERT INTO `director` VALUES (202, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '普特鹏·普罗萨卡·那·萨克那卡林');
INSERT INTO `director` VALUES (203, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '詹姆斯·卡梅隆');
INSERT INTO `director` VALUES (204, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '雅克·贝汉');
INSERT INTO `director` VALUES (205, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '黑泽明');
INSERT INTO `director` VALUES (206, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '弗朗西斯·福特·科波拉');
INSERT INTO `director` VALUES (207, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '大卫·芬奇');
INSERT INTO `director` VALUES (208, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '威廉·惠勒');
INSERT INTO `director` VALUES (209, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '马丁·布莱斯特');
INSERT INTO `director` VALUES (210, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '杨宇硕');
INSERT INTO `director` VALUES (211, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '朱塞佩·托纳多雷');
INSERT INTO `director` VALUES (212, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯·哥伦布');
INSERT INTO `director` VALUES (213, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '文牧野');
INSERT INTO `director` VALUES (214, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '刘镇伟');
INSERT INTO `director` VALUES (215, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '西德尼·吕美特');
INSERT INTO `director` VALUES (216, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '姜文');
INSERT INTO `director` VALUES (217, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (218, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李濬益');
INSERT INTO `director` VALUES (219, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (220, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼特·道格特');
INSERT INTO `director` VALUES (221, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李安');
INSERT INTO `director` VALUES (222, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼得·杰克逊');
INSERT INTO `director` VALUES (223, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '涅提·蒂瓦里');
INSERT INTO `director` VALUES (224, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '维克多·弗莱明');
INSERT INTO `director` VALUES (225, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '贝纳尔多·贝托鲁奇');
INSERT INTO `director` VALUES (226, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '娜丁·拉巴基');
INSERT INTO `director` VALUES (227, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (228, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '李·昂克里奇');
INSERT INTO `director` VALUES (229, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '拉吉库马尔·希拉尼');
INSERT INTO `director` VALUES (230, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (231, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '张艺谋');
INSERT INTO `director` VALUES (232, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '朱塞佩·托纳多雷');
INSERT INTO `director` VALUES (233, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '彼得·威尔');
INSERT INTO `director` VALUES (234, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '拉斯·霍尔斯道姆');
INSERT INTO `director` VALUES (235, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗伯托·贝尼尼');
INSERT INTO `director` VALUES (236, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '陈凯歌');
INSERT INTO `director` VALUES (237, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '宫崎骏');
INSERT INTO `director` VALUES (238, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '吕克·贝松');
INSERT INTO `director` VALUES (239, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '罗伯特·泽米吉斯');
INSERT INTO `director` VALUES (240, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '阿斯哈·法哈蒂');
INSERT INTO `director` VALUES (241, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '詹姆斯·卡梅隆');
INSERT INTO `director` VALUES (242, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '史蒂文·斯皮尔伯格');
INSERT INTO `director` VALUES (243, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '斯坦利·库布里克');
INSERT INTO `director` VALUES (244, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '雷德利·斯科特');
INSERT INTO `director` VALUES (245, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '克里斯托弗·诺兰');
INSERT INTO `director` VALUES (246, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '安德鲁·尼科尔');
INSERT INTO `director` VALUES (247, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '陆庆屹');
INSERT INTO `director` VALUES (248, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '莉莉·沃卓斯基');
INSERT INTO `director` VALUES (249, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '阿尼什·查甘蒂');
INSERT INTO `director` VALUES (250, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 0, '秋昌旼');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'home', 'banner');
INSERT INTO `django_content_type` VALUES (18, 'movie', 'comment');
INSERT INTO `django_content_type` VALUES (14, 'movie', 'director');
INSERT INTO `django_content_type` VALUES (17, 'movie', 'movie');
INSERT INTO `django_content_type` VALUES (15, 'movie', 'moviecategory');
INSERT INTO `django_content_type` VALUES (16, 'movie', 'performer');
INSERT INTO `django_content_type` VALUES (19, 'order', 'order');
INSERT INTO `django_content_type` VALUES (12, 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES (13, 'reversion', 'version');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'user', 'user');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (11, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-08-01 16:34:44.446188');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-08-01 16:34:45.031608');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-08-01 16:34:45.842629');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-08-01 16:34:48.328021');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-08-01 16:34:48.348981');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-08-01 16:34:48.373933');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-08-01 16:34:48.402845');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-08-01 16:34:48.443714');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-08-01 16:34:48.465651');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-08-01 16:34:48.490616');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-08-01 16:34:48.519534');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-08-01 16:34:48.855352');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-08-01 16:34:48.875299');
INSERT INTO `django_migrations` VALUES (14, 'user', '0001_initial', '2020-08-01 16:34:49.409506');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2020-08-01 16:34:52.049705');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2020-08-01 16:34:52.801931');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-01 16:34:52.829825');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0004_auto_20200729_1819', '2020-08-01 16:34:53.297588');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2020-08-01 16:34:53.557895');
INSERT INTO `django_migrations` VALUES (20, 'user', '0002_auto_20200801_1659', '2020-08-01 16:59:30.703642');
INSERT INTO `django_migrations` VALUES (21, 'user', '0003_auto_20200805_1851', '2020-08-05 18:51:26.970210');
INSERT INTO `django_migrations` VALUES (22, 'home', '0001_initial', '2020-08-05 20:42:43.913571');
INSERT INTO `django_migrations` VALUES (23, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-08-05 21:37:17.436405');
INSERT INTO `django_migrations` VALUES (24, 'reversion', '0002_auto_20200729_1819', '2020-08-05 21:37:19.057678');
INSERT INTO `django_migrations` VALUES (25, 'xadmin', '0001_initial', '2020-08-05 21:37:19.820474');
INSERT INTO `django_migrations` VALUES (26, 'xadmin', '0002_log', '2020-08-05 21:37:21.625036');
INSERT INTO `django_migrations` VALUES (27, 'xadmin', '0003_auto_20160715_0100', '2020-08-05 21:37:22.744165');
INSERT INTO `django_migrations` VALUES (28, 'xadmin', '0004_auto_20200729_1819', '2020-08-05 21:37:24.566214');
INSERT INTO `django_migrations` VALUES (29, 'movie', '0001_initial', '2020-08-07 10:31:46.675481');
INSERT INTO `django_migrations` VALUES (30, 'user', '0002_user_over_time', '2020-08-07 10:31:47.522795');
INSERT INTO `django_migrations` VALUES (31, 'movie', '0002_auto_20200807_1938', '2020-08-07 19:38:14.381975');
INSERT INTO `django_migrations` VALUES (32, 'movie', '0003_auto_20200807_2021', '2020-08-07 20:21:36.721046');
INSERT INTO `django_migrations` VALUES (33, 'movie', '0004_auto_20200812_1209', '2020-08-12 12:09:49.529119');
INSERT INTO `django_migrations` VALUES (34, 'home', '0002_auto_20200812_1450', '2020-08-12 14:51:04.292869');
INSERT INTO `django_migrations` VALUES (35, 'movie', '0005_auto_20200812_1450', '2020-08-12 14:51:04.364674');
INSERT INTO `django_migrations` VALUES (36, 'home', '0003_auto_20200812_1452', '2020-08-12 14:52:55.767449');
INSERT INTO `django_migrations` VALUES (37, 'movie', '0006_auto_20200812_1452', '2020-08-12 14:52:56.941419');
INSERT INTO `django_migrations` VALUES (38, 'home', '0004_auto_20200812_1455', '2020-08-12 14:55:24.514467');
INSERT INTO `django_migrations` VALUES (39, 'movie', '0007_auto_20200812_1455', '2020-08-12 14:55:24.572313');
INSERT INTO `django_migrations` VALUES (40, 'home', '0005_auto_20200812_1456', '2020-08-12 14:56:21.314033');
INSERT INTO `django_migrations` VALUES (41, 'movie', '0008_auto_20200812_1456', '2020-08-12 14:56:22.279475');
INSERT INTO `django_migrations` VALUES (42, 'order', '0001_initial', '2020-08-12 18:32:53.026281');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5bcwzcwslua77gbmuv2wtm2iwjb62m5u', 'ZWU5NDc0MTZlZDljY2U3YjUyMzNjN2QxNDdjNzYxNjk2NDgyZGZkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzAxZjRmNWNkZGUyY2M1ZGYyMzY2YWQzOTkxZmQ5MGFjZDg0M2FmIiwiTElTVF9RVUVSWSI6W1sibW92aWUiLCJtb3ZpZSJdLCIiXX0=', '2020-08-21 20:52:18.132421');

-- ----------------------------
-- Table structure for home_banner
-- ----------------------------
DROP TABLE IF EXISTS `home_banner`;
CREATE TABLE `home_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `orders` int(11) NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of home_banner
-- ----------------------------
INSERT INTO `home_banner` VALUES (1, 0, 1, '2020-08-05 21:40:54.305820', '2020-08-05 21:40:54.305820', 1, 'banner1', 'banner/banner1.jpg', 'detail/245', '泰坦尼克号');
INSERT INTO `home_banner` VALUES (2, 0, 1, '2020-08-05 21:41:35.800184', '2020-08-05 21:41:35.800184', 2, 'banner2', 'banner/banner2.jpg', 'detail/50', '加勒比海盗');
INSERT INTO `home_banner` VALUES (3, 0, 1, '2020-08-05 21:41:57.013155', '2020-08-05 21:41:57.013155', 3, 'banner3', 'banner/banner3.jpg', 'detail/26', '机器人总动员');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `orders` int(11) NULL DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_type` smallint(6) NOT NULL,
  `brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `level` decimal(3, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `show_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(6, 2) NOT NULL,
  `people` int(11) NOT NULL,
  `director_id` int(11) NULL DEFAULT NULL,
  `movie_category_id` int(11) NULL DEFAULT NULL,
  `performer` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `movie_director_id_a1a23574`(`director_id`) USING BTREE,
  INDEX `movie_movie_category_id_40150349`(`movie_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 255 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (6, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 1, '肖申克的救赎 The Shawshank Redemption', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg', 1, '\n                                    　　20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为鲨堡的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗 里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……\n                                        ', 9.70, '2020-08-13', '1994-09-10(多伦多电影节)', NULL, 0.00, 0, 2, 1, '蒂姆·罗宾斯');
INSERT INTO `movie` VALUES (7, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 25, '触不可及 Intouchables', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1454261925.jpg', 0, '\n                                　　因为一次跳伞事故，白人富翁菲利普Philippe（弗朗索瓦·克鲁塞 François Cluzet 饰）瘫痪在床，欲招聘一名全职陪护。由于薪酬高，应聘者云集，个个舌灿莲花，却无法打动他的心。直到黑人德希斯Driss（奥玛·赛 Omar Sy 饰）的出现才让他作出决定。德希斯刚从监狱出来，背负家庭重担，一心只想寻张辞退信以申领救济金，而且他明显对女助理的兴趣要远大于这份工作。但是菲利普还是一眼相中了这个小伙子。于是，德希斯开始了一个月的试用期。虽然舒适的豪宅环境让他倍感虚荣，但是他仍面临很多挑战：不仅要为菲利普作身体复健，还得给他洗浴、灌肠、拆信、穿丝袜等。起初，两人的思维方式与价值观大相径庭，但是，随着了解的不断深入，他们成为了朋友……\n                                    ', 9.20, '2020-08-13', '2011-11-02(法国)', NULL, 0.00, 0, 26, 1, '弗朗索瓦·克鲁塞');
INSERT INTO `movie` VALUES (8, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 24, '怦然心动 Flipped', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p501177648.jpg', 0, '\n                                    　　布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直攒钱照顾傻弟弟，所以生活拮据。她理解了父母，自己动手，还得到了他外公的鼎力相助。他向她道歉，但是并未解决问题。他开始关注她。鸡蛋风波未平，家庭晚宴与午餐男孩评选...\n                            ', 9.10, '2020-08-13', '2010-07-26(好莱坞首映)', NULL, 0.00, 0, 25, 4, '玛德琳·卡罗尔');
INSERT INTO `movie` VALUES (9, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 20, '无间道 無間道', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564556863.jpg', 0, '\n                                　　1991年，香港黑帮三合会会员刘健明（刘德华）听从老大韩琛（曾志伟）的吩咐，加入警察部队成为黑帮卧底，韩琛许诺刘健明会帮其在七年后晋升为见习督察。1992年，警察训练学校优秀学员陈永仁（梁朝伟）被上级要求深入到三合会做卧底，终极目标是成为韩琛身边的红人。2002年，两人都不负重望，也都身背重压，刘健明渐想成为一个真正的好人，陈永仁则盼着尽快回归警察身份。\n                                    ', 9.20, '2020-08-13', '2002-12-12(中国香港)', NULL, 0.00, 0, 21, 3, '刘德华');
INSERT INTO `movie` VALUES (10, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 23, '当幸福来敲门 The Pursuit of Happyness', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614359276.jpg', 0, '\n                                　　克里斯•加纳（威尔·史密斯 Will Smith 饰）用尽全部积蓄买下了高科技治疗仪，到处向医院推销，可是价格高昂，接受的人不多。就算他多努力都无法提供一个良好的生活环境给妻儿，妻子（桑迪·牛顿 Thandie Newton 饰）最终选择离开家。从此他带着儿子克里斯托夫（贾登·史密斯 Jaden Smith 饰）相依为命。克里斯好不容易争取回来一个股票投资公司实习的机会，就算没有报酬，成功机会只有百分之五，他仍努力奋斗，儿子是他的力量。他看尽白眼，与儿子躲在地铁站里的公共厕所里，住在教堂的收容所里…… 他坚信，幸福明天就会来临。\n                        ', 9.10, '2020-08-13', '2008-01-17(中国大陆)', NULL, 0.00, 0, 24, 1, '威尔·史密斯');
INSERT INTO `movie` VALUES (11, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 22, '教父 The Godfather', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p616779645.jpg', 0, '\n                                　　40年代的美国，“教父”维托·柯里昂（马龙·白兰度 饰）是黑手党柯里昂家族的首领，带领家族从事非法的勾当，但同时他也是许多弱小平民的保护神，深得人们爱戴。\n                                    ', 9.30, '2020-08-13', '1972-03-15(纽约首映)', NULL, 0.00, 0, 23, 10, '马龙·白兰度');
INSERT INTO `movie` VALUES (12, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 19, '疯狂动物城 Zootopia', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2614500649.jpg', 0, '\n                                　　故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？\n                                    ', 9.20, '2020-08-13', '2016-03-04(中国大陆/美国)', NULL, 0.00, 0, 20, 6, '金妮弗·古德温');
INSERT INTO `movie` VALUES (13, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 21, '龙猫 となりのトトロ', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg', 0, '\n                                　　小月的母亲生病住院了，父亲带着她与四岁的妹妹小梅到乡间的居住。她们对那里的环境都感到十分新奇，也发现了很多有趣的事情。她们遇到了很多小精灵，她们来到属于她们的环境中，看到了她们世界中很多的奇怪事物，更与一只大大胖胖的龙猫成为了朋友。龙猫与小精灵们利用他们的神奇力量，为小月与妹妹带来了很多神奇的景观，令她们大开眼界。\n                                    ', 9.20, '2020-08-13', '2018-12-14(中国大陆)', NULL, 0.00, 0, 22, 6, '日高法子');
INSERT INTO `movie` VALUES (14, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 18, '熔炉 도가니', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1363250216.jpg', 0, '\n                                　　来自首尔的哑语美术老师仁浩（孔宥 饰）来到雾津，应聘慈爱聋哑人学校。天降大雾，他意外撞车，维修时邂逅了人权组织成员柔珍（郑有美 饰）。仁浩妻子早亡，8岁女儿天生哮喘由祖母照看，所以他不辞辛苦谋职养家。然而，双胞胎的校长与教导主任竟逼仁浩索贿5千万韩元。同时，仁浩逐渐发现学校笼罩着一种紧张压抑的气氛，令人窒息。有三个孩子引人关注：聪颖的金妍斗（金贤秀 饰）、贪吃的陈宥利（郑仁絮 饰）和弟弟自杀身亡的全民秀（白承焕 饰），民秀总是满脸淤青。下课后，仁浩还听到女厕所中有呼喊与哭泣，在门卫的阻拦下他未深究。之后。他意外目睹了校长行贿警察，教导员毒打民秀，宿导溺罚妍斗的行径。一个惊天的隐秘被慢慢揭开，真相令韩国震惊……\n                                    ', 9.30, '2020-08-13', '2011-09-22(韩国)', NULL, 0.00, 0, 19, 1, '孔侑');
INSERT INTO `movie` VALUES (15, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 17, '大话西游之大圣娶亲 西遊記大結局之仙履奇緣', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2455050536.jpg', 0, '\n                                　　至尊宝（周星驰 饰）被月光宝盒带回到五百年前，遇见紫霞仙子（朱茵 饰），被对方打上烙印成为对方的人，并发觉自己已变成孙悟空。\n                                    ', 9.20, '2020-08-13', '1995-02-04(中国香港)', NULL, 0.00, 0, 18, 2, '周星驰');
INSERT INTO `movie` VALUES (16, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 26, '控方证人 Witness for the Prosecution', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1505392928.jpg', 0, '\n                                    　　伦敦著名刑案辩护律师韦菲爵士（查尔斯•劳顿 Charles Laughton 饰）接受了心脏病治疗，但是身体依旧虚弱，第一天回家休养，护士一直严厉监督他服药，并杜绝烟酒。管家为了便于上楼，还专门为他修了电梯。但是，种种关心照顾，对于这位桀骜不驯、牙尖嘴利的大律师根本不起作用，反倒是一纸诉状令他倍感兴奋。律师梅休和当事人沃尔（泰隆•鲍华 Tyrone Power饰）登门拜访，请他出山打官司。原来，沃尔结识了富婆，两人相见甚欢，虽然仆人对他发明的打蛋器充满鄙夷，但是富婆却对他充满爱意，甚至为他修改了遗嘱，把8万英镑留给了他。然而，富婆却惨遭毒手。于是，沃尔成为警方的头号嫌疑犯。他的唯一证人是妻子克里斯汀（玛琳•黛德丽 Marlene Dietrich饰），然而后者登门时的冷漠与淡定，令韦菲爵士怀疑这其中另有隐情。在扑朔迷离的案件背后，隐藏着一个个环环相扣...\n                            ', 9.60, '2020-08-13', '1957-12-17(美国)', NULL, 0.00, 0, 27, 7, '泰隆·鲍华');
INSERT INTO `movie` VALUES (17, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 16, '星际穿越 Interstellar', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2614988097.jpg', 0, '\n                                    　　近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes B...\n                            ', 9.30, '2020-08-13', '2014-11-12(中国大陆)', NULL, 0.00, 0, 17, 5, '马修·麦康纳');
INSERT INTO `movie` VALUES (18, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 75, '情书 Love Letter', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p449897379.jpg', 0, '\n                                　　日本神户某个飘雪的冬日，渡边博子（中山美穗）在前未婚夫藤井树的三周年祭日上又一次悲痛到不能自已。正因为无法抑制住对已逝恋人的思念，渡边博子在其中学同学录里发现“藤井树” 在小樽市读书时的地址时，依循着寄发了一封本以为是发往天国的情书。\n                                    ', 8.90, '2020-08-13', '1999-03(中国大陆)', NULL, 0.00, 0, 76, 4, '中山美穗');
INSERT INTO `movie` VALUES (19, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 201, '爱在午夜降临前 Before Midnight', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2074715729.jpg', 0, '\n                                    　　被影迷奉为爱情圭臬的《爱在黎明破晓前》、《爱在日落黄昏时》终于迎来了第三部《爱在午夜降临前》。第一部中美国青年杰西（伊桑·霍克 Ethan Hawke 饰）坐火车邂逅法国女孩赛琳（朱莉·德尔佩 Julie Delpy 饰），两人在维也纳度过难忘一晚；9年后的第二部，杰西已成 为作家，他的小说让他和赛琳在巴黎重逢，两人于日落前再续前缘。如今又一个9年过去了，杰西与赛琳已经一起生活并有了一对双胞胎女儿，对人生和爱情也有了更多感悟。《爱在午夜降临前》就是撷取他们在希腊伯罗奔尼撒南部小岛度假的最后一天。\n                                        ', 8.80, '2020-08-13', '2013-06-14(美国)', NULL, 0.00, 0, 202, 4, '伊桑·霍克');
INSERT INTO `movie` VALUES (20, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 74, '穿条纹睡衣的男孩 The Boy in the Striped Pajamas', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1473670352.jpg', 0, '\n                                　　八岁男孩布鲁诺（Asa Butterfield 饰）一家随着纳粹军官父亲的一纸调令，由柏林搬迁到了乡下。失去了朋友们的布鲁诺很快对新家附近的“农庄”产生了兴趣，那里有一群身穿“条纹睡衣”的人终日忙碌，并且其中一个为布鲁诺一家服务，他形容肮脏，态度慎微。周遭环境和布鲁诺的举止让母亲暗暗担忧，但纳粹父亲制止家中任何怀疑既定政策的行为。\n                                    ', 9.10, '2020-08-13', '2008-09-12(英国)', NULL, 0.00, 0, 75, 2, '阿萨·巴特菲尔德');
INSERT INTO `movie` VALUES (21, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 73, '海豚湾 The Cove', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2559579779.jpg', 0, '\n                                　　日本和歌山县太地，是一个景色优美的小渔村，然而这里却常年上演着惨无人道的一幕。每年，数以万计的海豚经过这片海域，他们的旅程却在太地戛然而止。渔民们将海豚驱赶到靠近岸边的一个地方，来自世界各地的海豚训练师挑选合适的对象，剩下的大批海豚则被渔民毫无理由地赶尽杀绝。这些屠杀，这些罪行，因为种种利益而被政府和相关组织所隐瞒。\n                                    ', 9.30, '2020-08-13', '2009-07-31(美国)', NULL, 0.00, 0, 74, 2, 'Richard O\'Barry');
INSERT INTO `movie` VALUES (22, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 72, '海蒂和爷爷 Heidi', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2554525534.jpg', 0, '\n                                　　孤儿海蒂（阿努克·斯特芬 饰）被姨母迪蒂（安娜·希恩斯 饰）送上了阿尔卑斯山，与远离小镇独居于高山的祖父（布鲁诺·甘茨 饰）一同生活。活泼的海蒂在这里如鱼得水，不仅收获了羊倌彼得（奎林·阿格里皮 饰）的友情和孤僻祖父的亲情，还与山下彼得的家人打成一片。一天，海蒂同彼得在山上放羊，姨母突然出现，连哄带骗将海蒂卖到法兰克福的泽塞曼家。从此，目不识A的海蒂成为了小姐克拉拉（伊莎贝尔·奥特曼 饰）的伴读。克拉拉幼年丧母，大病一场再不能站立，只能被困在豪宅中与轮椅相伴。父亲（马克西姆·梅米特 饰）常年在外很少回家，寂寞的克拉拉把海蒂当成了救命稻草。海蒂能适应泽塞曼家的新生活吗？远在天边的祖父和彼得还能再见吗？克拉拉的腿还有好起来的希望吗？\n                        ', 9.20, '2020-08-13', '2019-05-16(中国大陆)', NULL, 0.00, 0, 73, 1, '阿努克·斯特芬');
INSERT INTO `movie` VALUES (23, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 70, '小鞋子 بچههای آسمان', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2173580536.jpg', 0, '\n                                　　家境贫寒的男孩Ali（Amir Farrokh Hashemian）帮妹妹Zahra（Bahare Seddiqi）取修补好的鞋子时，不慎将鞋子弄丢，为了不被父（Mohammad Amir Naji）、母（Fereshte Sarabandi ）责罚，他央求Zahra暂时保密，说两人可以替换着穿他的鞋子上学，并答应一定会帮她买双新鞋子。\n                                    ', 9.20, '2020-08-13', '1997-02(伊朗)', NULL, 0.00, 0, 71, 1, '法拉赫阿米尔·哈什米安');
INSERT INTO `movie` VALUES (24, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 69, '西西里的美丽传说 Malèna', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2448029416.jpg', 0, '\n                                    　　当我还只是十三岁时，1941年春末的那一天，我初次见到了她那一天，墨索里尼向英法宣战，而我，得到了生命里的第一辆脚踏车。\n                                        ', 8.90, '2020-08-13', '2000-10-27(意大利)', NULL, 0.00, 0, 70, 1, '莫妮卡·贝鲁奇');
INSERT INTO `movie` VALUES (25, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 71, '拯救大兵瑞恩 Saving Private Ryan', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1014542496.jpg', 0, '\n                                　　瑞恩（马特•达蒙 Matt Damon饰 ）是二战期间的美国伞兵，被困在了敌人后方。更不幸的是，他的三个兄弟全部在战争中死亡，如果他也遇难，家中的老母亲将无依无靠。\n                                    ', 9.00, '2020-08-13', '1998-11-13(中国大陆)', NULL, 0.00, 0, 72, 13, '汤姆·汉克斯');
INSERT INTO `movie` VALUES (26, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 14, '机器人总动员 WALL·E', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1461851991.jpg', 0, '\n                                　　公元2805年，人类文明高度发展，却因污染和生活垃圾大量增加使得地球不再适于人类居住。地球人被迫乘坐飞船离开故乡，进行一次漫长无边的宇宙之旅。临行前他们委托Buynlarge的公司对地球垃圾进行清理，该公司开发了名为WALL·E（Waste Allocation Loa d Lifters – Earth 地球废品分装员）的机器人担当此重任。\n                                    ', 9.30, '2020-08-13', '2008-06-27(美国)', NULL, 0.00, 0, 15, 5, '本·贝尔特');
INSERT INTO `movie` VALUES (27, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 67, '看不见的客人 Contratiempo', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg', 0, '\n                                　　艾德里安（马里奥·卡萨斯 Mario Casas 饰）经营着一间科技公司，事业蒸蒸日上，家中有美丽贤惠的妻子和活泼可爱的女儿，事业家庭双丰收的他是旁人羡慕的对象。然而，野心勃勃的艾德里安并未珍惜眼前来之不易的生活，一直以来，他和一位名叫劳拉（芭芭拉·蓝妮 Bárbara Lennie 饰）的女摄影师保持着肉体关系。\n                                    ', 8.80, '2020-08-13', '2017-09-15(中国大陆)', NULL, 0.00, 0, 68, 1, '马里奥·卡萨斯');
INSERT INTO `movie` VALUES (28, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 15, '放牛班的春天 Les choristes', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910824951.jpg', 0, '\n                                　　1949年的法国乡村，音乐家克莱门特（杰勒德•尊诺 饰）到了一间外号叫“塘低”的男子寄宿学校当助理教师。学校里的学生大部分都是难缠的问题儿童，体罚在这里司空见惯，学校的校长（弗朗西斯•贝尔兰德 饰）只顾自己的前途，残暴高压。\n                                    ', 9.30, '2020-08-13', '2004-10-16(中国大陆)', NULL, 0.00, 0, 16, 1, '热拉尔·朱尼奥');
INSERT INTO `movie` VALUES (29, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 68, '绿皮书 Green Book', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2549177902.jpg', 0, '\n                                　　托尼（维果·莫腾森 Viggo Mortensen 饰）是一个吊儿郎当游手好闲的混混，在一家夜总会做侍者。这间夜总会因故要停业几个月，可托尼所要支付的房租和生活费不会因此取消，所以他的当务之急是去寻找另一份工作来填补这几个月的空缺。在这个节骨眼上，一位名叫唐雪莉（马赫沙拉·阿里 Mahershala Ali 饰）的黑人钢琴家提出雇佣托尼。\n                                    ', 8.90, '2020-08-13', '2019-03-01(中国大陆)', NULL, 0.00, 0, 69, 1, '维果·莫腾森');
INSERT INTO `movie` VALUES (30, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 64, '本杰明·巴顿奇事 The Curious Case of Benjamin Button', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2192535722.jpg', 0, '\n                                　　飓风正在侵袭美国新奥尔良，一位病危的老妇睁开了她的睡眼。老妇名叫戴茜（凯特·布兰切特饰），她叫女儿凯若琳（朱莉娅•奥蒙德饰）为她阅读一本日记。这本日记的作者叫本杰明•巴顿（布拉德•皮特饰）。本杰明出生在第一次世界大战停战之时，但生来便像个老人的他被父亲当作怪物，被遗弃在了养老院。本杰明在养老院与老人们一起生活。但谁都没有想到，本杰明逆向发育——越活越年轻！也许“越活越年轻”是某些人的梦想，但真正这样成长的本杰明却有了别人无法理解的烦恼与快乐。穿越半世纪的世界变革，本杰明身处其中，感受别人感受不到的感受。\n                                    ', 8.90, '2020-08-13', '2008-12-25(美国)', NULL, 0.00, 0, 65, 1, '凯特·布兰切特');
INSERT INTO `movie` VALUES (31, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 62, '饮食男女 飲食男女', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910899751.jpg', 0, '\n                                　　台湾中国菜硕果仅存的大师老朱（郎雄）退休后，渐尝老年生活的诸多尴尬：每周日费心做出的一桌丰盛菜肴，并无将三个女儿（杨贵媚、吴倩莲、王渝文）齐齐拉到饭桌的吸引力，已经长大成人的她们，心里藏了许多比陪父亲吃饭更重要的事；多年老友的突然离世，令他在友情这块也有了缺口；而对厨师来讲最重要的味觉的丧失，则将其彻底推到人生的低谷。\n                                    ', 9.10, '2020-08-13', '1994-08-03(美国)', NULL, 0.00, 0, 63, 1, '郎雄');
INSERT INTO `movie` VALUES (32, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 63, '飞越疯人院 One Flew Over the Cuckoo\'s Nest', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792238287.jpg', 0, '\n                                　　麦克墨菲（杰克·尼科尔森 Jack Nicholson 饰）为了逃避监狱里的强制劳动，装作精神异常，被送进了精神病院，他的到来，给死气沉沉的精神病院带来了剧烈的冲击。\n                                    ', 9.10, '2020-08-13', '1975-11-19(美国)', NULL, 0.00, 0, 64, 1, '杰克·尼科尔森');
INSERT INTO `movie` VALUES (33, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 61, '两杆大烟枪 Lock, Stock and Two Smoking Barrels', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792443418.jpg', 0, '\n                                　　艾迪（尼克·莫伦）思维敏捷，是个玩牌高手。在三个好友的支持下，艾迪携巨资参加了黑社会的高额赌局，不想落入圈套，欠下50万的赌债。为了还清赌债，艾迪和朋友们绞尽脑汁，最终算计到一群毒贩身上，并为打劫购买了两杆老式烟枪。\n                                    ', 9.10, '2020-08-13', '1998-08-28(英国)', NULL, 0.00, 0, 62, 2, '杰森·弗莱明');
INSERT INTO `movie` VALUES (34, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 59, '黑客帝国 The Matrix', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p451926968.jpg', 0, '\n                                　　不久的将来，网络黑客尼奥（基奴李维斯 饰）对这个看似正常的现实世界产生了怀疑。他结识了黑客崔妮蒂（凯莉·安·摩丝 饰），并见到了黑客组织的首领墨菲斯（劳伦斯·菲什伯恩 饰）。墨菲斯告诉他，现实世界其实是由一个名叫“母体”的计算机人工智能系统控制，人们就像他们饲养的动物，没有自由和思想，而尼奥就是能够拯救人类的救世主。\n                                    ', 9.00, '2020-08-13', '1999-03-31(美国)', NULL, 0.00, 0, 60, 5, '基努·里维斯');
INSERT INTO `movie` VALUES (35, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 65, '让子弹飞', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1512562287.jpg', 0, '\n                                　　民国年间，花钱捐得县长的马邦德（葛优 饰）携妻（刘嘉玲 饰）及随从走马上任。途经南国某地，遭劫匪张麻子（姜文 饰）一伙伏击，随从尽死，只夫妻二人侥幸活命。马为保命，谎称自己是县长的汤 师爷。为汤师爷许下的财富所动，张麻子摇身一变化身县长，带着手下赶赴鹅城上任。有道是天高皇帝远，鹅城地处偏僻，一方霸主黄四郎（周润发 饰）只手遮天，全然不将这个新来的县长放在眼里。张麻子痛打了黄的武教头（姜武 饰），黄则设计害死张的义子小六（张默 饰）。原本只想赚钱的马邦德，怎么也想不到竟会被卷入这场土匪和恶霸的角力之中。鹅城上空愁云密布，血雨腥风在所难免……\n                                    ', 8.80, '2020-08-13', '2010-12-16(中国大陆)', NULL, 0.00, 0, 66, 2, '姜文');
INSERT INTO `movie` VALUES (36, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 58, '钢琴家 The Pianist', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792376093.jpg', 0, '\n                                　　史标曼（艾德里安•布洛迪 Adrien Brody 饰）是波兰一家电台的钢琴师。二战即将爆发之时，他们全家被迫被赶进华沙的犹太区。在战争的颠沛流离中，家人和亲戚最终被纳粹杀害，而标曼本人也受尽种种羞辱和折磨，他侥幸得到一位朋友的帮助，暂时有了藏身之处。战争愈加猛烈，朋友 不得不抛下 他回老家寻得安全的住所养育儿女。此时史标曼恶病缠身，却还要在搜捕中逃亡。在废墟的阁楼上他遇见了一名德国军官，在军官的要求下他弹奏了钢琴曲。美妙的琴声令德国军官萌发了恻隐之心，他暗暗帮助标曼直到苏军对波兰的解放到来……\n                                    ', 9.20, '2020-08-13', '2002-05-24(戛纳电影节)', NULL, 0.00, 0, 59, 11, '艾德里安·布洛迪');
INSERT INTO `movie` VALUES (37, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 60, '美丽心灵 A Beautiful Mind', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1665997400.jpg', 0, '\n                                　　本片是关于20世纪伟大数学家小约翰•福布斯-纳什的人物传记片。\n                                    ', 9.00, '2020-08-13', '2001-12-13(加州首映)', NULL, 0.00, 0, 61, 1, '罗素·克劳');
INSERT INTO `movie` VALUES (38, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 56, '窃听风暴 Das Leben der Anderen', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1808872109.jpg', 0, '\n                                　　1984年的东德，整个社会笼罩在国家安全局的高压统治之下，特工魏斯曼（乌尔利希·穆厄 饰）奉命监听剧作家德莱曼（塞巴斯蒂安·寇治 饰）及其女友演员克里斯蒂娜（玛蒂娜·杰蒂克 饰）的生活，监听过程中，魏斯曼渐渐对这家人的生活产生了兴趣，开始暗中帮助他们。一篇刊登在西德《明 镜》报上的文章引起了特工头目的注意，他们认为这篇文章是德莱曼写的，并逮捕了克里斯蒂娜，希望能够从她口中得出她丈夫的秘密？而审问克里斯蒂娜的正是魏斯曼……\n                        ', 9.10, '2020-08-13', '2006-03-23(德国)', NULL, 0.00, 0, 57, 1, '乌尔里希·穆埃');
INSERT INTO `movie` VALUES (39, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 55, '猫鼠游戏 Catch Me If You Can', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p453924541.jpg', 0, '\n                                    　　弗兰克（莱昂纳多·迪卡普里奥 Leonardo DiCaprio饰）是FBI有史以来年龄最小的通缉犯。他的犯罪手段神通广大，伪装身份的能力超乎常人，全美各地几乎都留下他的犯罪足迹。乔装医生、律师、飞行员，统统都是他曾经的身份。当然，弗兰克凭着这个“本领”，骗取了高达几百万的金额。\n                                        ', 9.00, '2020-08-13', '2003-04-11(中国大陆)', NULL, 0.00, 0, 56, 1, '莱昂纳多·迪卡普里奥');
INSERT INTO `movie` VALUES (40, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 57, '指环王1：魔戒再现 The Lord of the Rings: The Fellowship of the Ring', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1354436051.jpg', 0, '\n                                    　　比尔博•巴金斯是100多岁的哈比人，住在故乡夏尔，生性喜欢冒险，在年轻时的一次探险经历中，他从怪物咕噜手中得到了至尊魔戒，这枚戒指是黑暗魔君索伦打造的至尊魔戒，拥有奴役世界的邪恶力量，能够统领其他几枚力量之戒，在3000年前的人类联盟和半兽人大军的战役中，联盟取得了胜利 ，并得到了至尊魔戒，数千年的辗转后，魔戒落到咕噜手中，被比尔博碰巧得到。\n                                        ', 9.00, '2020-08-13', '2002-04-04(中国大陆)', NULL, 0.00, 0, 58, 5, '伊利亚·伍德');
INSERT INTO `movie` VALUES (41, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 54, '大闹天宫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2184505167.jpg', 0, '\n                                　　话说在东土傲来国有一座花果山，山上有一尊石猴吸收日精月华化身为一只神猴（邱岳峰 音），统领着山中的猴子猴孙。为求得一件称心的宝贝，神猴孙大圣潜入龙宫，强硬求来大禹治水时的定海神针如意金箍棒。东海龙王（毕克 音）心有不甘，于是上天将此事诉诸玉帝（富润生 音）。玉皇大帝命令太白金星（尚华 音）下界招安，许以爵位。不知有诈的孙大圣欣然前往，却发现只是负责养马的弼马温。得知受骗的猴王反下天庭，与天兵天将在花果山展开大战……\n                                    ', 9.30, '2020-08-13', '1961(中国大陆)', NULL, 0.00, 0, 55, 6, '邱岳峰');
INSERT INTO `movie` VALUES (42, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 53, '指环王2：双塔奇兵 The Lord of the Rings: The Two Towers', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p909265336.jpg', 0, '\n                                    　　第二部在延续第一部风格的同时，故事呈现出多线发展的格局，情节有了更高的观赏性。\n                                        ', 9.10, '2020-08-13', '2003-04-25(中国大陆)', NULL, 0.00, 0, 54, 5, '伊利亚·伍德');
INSERT INTO `movie` VALUES (43, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 99, '狩猎 Jagten', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1546987967.jpg', 0, '\n                                　　刚刚和妻子离婚的卢卡斯（麦斯·米科尔森 Mads Mikkelsen 饰）目前在一家托儿所工作，心地善良个性温和的他很快就受到了同事和孩子们的喜爱，其中，一个名叫卡拉（安妮卡·韦德科普 Annika Wedderkopp 饰）的早熟女孩对卢卡斯尤为的亲近。面对女孩幼稚 而单纯的示好，卢卡斯只能婉转的拒绝，可令他没有想到的是，这一举动将他的生活推向了风口浪尖。\n                                    ', 9.10, '2020-08-13', '2012-05-20(戛纳电影节)', NULL, 0.00, 0, 100, 8, '麦斯·米科尔森');
INSERT INTO `movie` VALUES (44, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 52, '狮子王 The Lion King', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2277799019.jpg', 0, '\n                                　　辛巴是狮子王国的小王子，他的父亲穆法沙是一个威严的国王。然而叔叔刀疤却对穆法沙的王位觊觎已久。\n                                    ', 9.00, '2020-08-13', '1995-07-15(中国大陆)', NULL, 0.00, 0, 53, 6, '乔纳森·泰勒·托马斯');
INSERT INTO `movie` VALUES (45, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 97, '断背山 Brokeback Mountain', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2514704949.jpg', 0, '\n                                　　美国怀俄明州的西部，沉默寡言的农夫恩尼斯（希斯•莱杰饰）和热情开朗的牛仔杰克（杰克•吉伦希尔饰)一道被派到山上牧羊，那里人迹罕至，他们只有与羊群为伴，生活单调无味。一个天寒地冻的夜晚，在酒精与荷尔蒙的作用下，他们做了“不该做的事情”，也就此他们在断背山上度过了人生中最美好的时光。\n                                    ', 8.80, '2020-08-13', '2005-09-02(威尼斯电影节)', NULL, 0.00, 0, 98, 1, '希斯·莱杰');
INSERT INTO `movie` VALUES (46, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 98, '杀人回忆 살인의 추억', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p657823840.jpg', 0, '\n                                　　1986年，韩国京畿道华城郡，热得发昏的夏天，在田野边发现一具女尸，早已发臭。小镇警察朴探员（宋康昊饰）和汉城来的苏探员（金相庆饰）接手案件，唯一可证实的是这具女尸生前被强奸过。线索的严重缺乏让毫无经验的朴探员和搭档曹探员（金罗河饰）只凭粗暴逼供和第六感推断，几次将犯罪 嫌疑人屈打成招。而苏探员客观冷静，据理分析，几次排除嫌疑，警察内部为了证明与推翻矛盾不断，然而无辜女子还是接二连三被残忍杀害，他们只好达成共识一起合作。此时，一个极其符合作案特征的小青年（朴海日饰）成为最大嫌疑人，警方神经绷紧地锁定住他，同时DNA检测报告也被送往美国，然而案件并未在此处停止。\n                        ', 8.80, '2020-08-13', '2003-05-02(韩国)', NULL, 0.00, 0, 99, 8, '宋康昊');
INSERT INTO `movie` VALUES (47, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 96, '哈利·波特与死亡圣器(下) Harry Potter and the Deathly Hallows: Part 2', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p917846733.jpg', 0, '\n                                　　当又一次和伏地魔（拉尔夫·费因斯 Ralph Fiennes 饰）的意识连通，哈利·波特（丹尼尔·雷德克里夫 Daniel Radcliffe 饰）断定最后一件魂器藏在霍格沃茨，于是和罗恩（鲁伯特·格林特 Rupert Grint 饰）、赫敏（艾玛·沃森 Emma Watson 饰）一同返回阴云密布的学校。在好友们的帮助下，他们成功驱逐了斯内普（艾伦·瑞克曼 Alan Rickman 饰），然而觉察到哈利目的的伏地魔则率领徒众向霍格沃茨逼近。食死徒、摄魂怪、巨人疯狂涌入这所有着悠久历史的魔法学校，正邪决战旋即爆发，一时间血雨腥风，死伤无数。从斯内普的眼泪中，哈利不仅了解到父辈的故事，也证实了藏缅于他体内最后的秘密。在此之后，他也和伏地魔迎来了最后的对决……\n                                    ', 8.80, '2020-08-13', '2011-08-04(中国大陆)', NULL, 0.00, 0, 97, 8, '丹尼尔·雷德克里夫');
INSERT INTO `movie` VALUES (48, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 100, '请以你的名字呼唤我 Call Me by Your Name', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg', 0, '\n                                　　故事发生在八十年代的意大利里维埃拉，每年夏天，十七岁的少年艾力奥（提莫西·查拉梅 Timothée Chalamet 饰）都会跟家人一起来此地度假。今年，和他们共享假日时光的，还有来自美国的奥利弗（艾米·汉莫 Armie Hammer 饰），高大英俊热情开朗的奥利弗很快就获得了艾力奥一家人的喜爱。\n                                    ', 8.90, '2020-08-13', '2017-01-22(圣丹斯电影节)', NULL, 0.00, 0, 101, 1, '艾米·汉莫');
INSERT INTO `movie` VALUES (49, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 94, '天使爱美丽 Le fabuleux destin d\'Amélie Poulain', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2447590313.jpg', 0, '\n                                　　艾米莉（奥黛丽·塔图 Audrey Tautou 饰）有着别人看来不幸的童年——父亲给她做健康检查时，发现她心跳过快，便断定她患上心脏病，从此艾米莉与学校绝缘。随后因为一桩意外，母亲在她眼前突然死去。这一切都毫不影响艾米莉对生活的豁达乐观。\n                                    ', 8.70, '2020-08-13', '2001-04-25(法国)', NULL, 0.00, 0, 95, 2, '奥黛丽·塔图');
INSERT INTO `movie` VALUES (50, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 95, '加勒比海盗 Pirates of the Caribbean: The Curse of the Black Pearl', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1596085504.jpg', 0, '\n                                    　　故事发生在17世纪，传说中海盗最为活跃的加勒比海。风趣迷人的杰克·斯伯洛（约翰尼·德普 Johnny Depp 饰），是活跃在加勒比海上的海盗，拥有属于自己的“黑珍珠”号海盗船。对他来说，最惬意的生活就是驾驶着“黑珍珠”号在加勒比海上游荡，自由自在的打劫过往船只。但不幸的是，他的仇敌，老谋深算的巴尔巴罗萨船长(杰弗里·拉什 Geoffrey Rush 饰)偷走了他的“黑珍珠”号。巴伯萨是一个无恶不作的坏蛋，他抢劫了杰克的\"黑珍珠号\"后，更加猖狂，在加勒比海上横行霸道，一时成为整个加勒比海的霸主。\n                                        ', 8.80, '2020-08-13', '2003-11-21(中国大陆)', NULL, 0.00, 0, 96, 3, '约翰尼·德普');
INSERT INTO `movie` VALUES (51, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 93, '致命ID Identity', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2558364386.jpg', 0, '\n                                　　一个典型而又引人入胜的悬疑故事：一个汽车旅馆里，住进了10个人，他们中间有司机、妓女、过气女星、夫妇、警探和他的犯人，还有神秘的旅馆经理。这天风雨大作，通讯中断，10人被困在了旅馆里，惊悚的故事开始了。\n                                    ', 8.80, '2020-08-13', '2003-04-25(美国)', NULL, 0.00, 0, 94, 1, '约翰·库萨克');
INSERT INTO `movie` VALUES (52, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 92, '喜剧之王 喜劇之王', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2579932167.jpg', 0, '\n                                　　尹天仇（周星驰 饰）一直醉心戏剧，想成为一名演员，平时除了做跑龙套以外，还会在街坊福利会里开设演员训练班。此时舞小姐柳飘飘在妈妈桑的带领下来到这里要求学做戏，原来柳飘飘有一段非常不愉快的经历，在尹天仇对她指导的过程中，柳飘飘对尹天仇渐生情愫，同时她也成为了夜总会里当红的小姐。尹天仇受到了极多白眼之后，终于得到了大明星鹃姐（莫文蔚 饰）的赏识，提携他担演新戏中的男主角，但没想到突然把他的角色换掉了，令他失望不已。在片场当场务的卧底警员（吴孟达 饰）身份被识穿，尹天仇阴差阳错的帮忙破了案。之后尹天仇继续活跃在街坊福利会的演员训练班里。\n                        ', 8.70, '2020-08-13', '1999-02-13(中国香港)', NULL, 0.00, 0, 93, 2, '周星驰');
INSERT INTO `movie` VALUES (53, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 90, '剪刀手爱德华 Edward Scissorhands', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p480956937.jpg', 0, '\n                                　　爱德华（约翰尼•戴普 饰）是一个机器人，他拥有人的心智，却有一双剪刀手，孤独地生活在古堡里，闯入古堡的化妆品推销员佩格把他带回家，让他走进了人类的世界。单纯的爱德华爱上了佩格的女儿金（薇诺娜•瑞德 饰），金也慢慢的被爱德华的善良所吸引。\n                                    ', 8.70, '2020-08-13', '1990-12-06(美国)', NULL, 0.00, 0, 91, 1, '约翰尼·德普');
INSERT INTO `movie` VALUES (54, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 91, '勇敢的心 Braveheart', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2004174709.jpg', 0, '\n                                　　威廉•华莱士童年时，其父、苏格兰民族英雄马索•华莱士在与英军的斗争中牺牲，他开始接受父亲好友的指导，学习苏格兰文化和武术。青年华莱士（梅尔•吉布森）学成回到故乡，向美丽的少女梅伦求婚，不想梅伦被英军抢去且遭杀害。在广大村民“英雄之后”的呼声中，华莱士率众揭竿起义，并与苏格兰贵族罗伯结成联盟，但不久他发现，苏格兰贵族考虑的只是自身的利益。\n                                    ', 8.90, '2020-08-13', '1995-05-18(西雅图电影节)', NULL, 0.00, 0, 92, 13, '梅尔·吉布森');
INSERT INTO `movie` VALUES (55, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 89, '摩登时代 Modern Times', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2263408369.jpg', 0, '\n                                　　二十年代的美国处于经济萧条时期，失业率居高不下，工人受尽压榨，成为了大机器生产中的一颗螺丝钉。查理（查理·卓别林 Charles Chaplin 饰）就是一个底层市民，他在一个机器隆隆的厂房里日以继夜地工作，以赚取微薄的收入。重复繁重的工作压得他喘不过气，他把人们的鼻子当成螺丝钉来拧，卷入流水线机器的皮带里，令人苦笑不得。\n                                    ', 9.30, '2020-08-13', '1936-02-25(美国)', NULL, 0.00, 0, 90, 1, '查理·卓别林');
INSERT INTO `movie` VALUES (56, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 87, '被嫌弃的松子的一生 嫌われ松子の一生', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p884763596.jpg', 0, '\n                                　　有一天父亲（香川照之饰）突然来找阿笙（瑛太饰），告诉他有个素未谋面的姑姑死了，叫他去收拾下姑姑的房子。在河边的破烂小屋里，阿笙渐渐开始了解父亲口中的姑姑，到底有着怎样的一生。\n                                    ', 8.90, '2020-08-13', '2006-05-27(日本)', NULL, 0.00, 0, 88, 1, '中谷美纪');
INSERT INTO `movie` VALUES (57, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 85, '春光乍泄 春光乍洩', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p465939041.jpg', 0, '\n                                　　黎耀辉（梁朝伟）与何宝荣（张国荣）是一对同性恋人，为了有新的开始，他们怀着美丽的梦想（去看南美洲大瀑布）离开香港来到阿根廷，却在布宜诺斯艾利斯迷了路。黎耀辉想安下心来过日子，无奈何宝荣于夜夜笙歌中放纵着自己的生命，以期找寻更多的刺激，只当黎耀辉是他受伤后的港湾，两人分歧 、争吵越来越多，心的距离越来越远。\n                                    ', 8.90, '2020-08-13', '1997-05-30(中国香港)', NULL, 0.00, 0, 86, 1, '张国荣');
INSERT INTO `movie` VALUES (58, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 86, '布达佩斯大饭店 The Grand Budapest Hotel', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2178872593.jpg', 0, '\n                                    　　故事要从一位无名作家（裘德·洛 Jude Law 饰）说起，为了专心创作，他来到了名为“布达佩斯”的饭店，在这里，作家遇见了饭店的主人穆斯塔法（F·莫里·亚伯拉罕 F. Murray Abraham 饰），穆斯塔法邀请作家共进晚餐，席间，他向作家讲述了这座饱经风雨的大饭店的前世今生。\n                                        ', 8.80, '2020-08-13', '2014-02-06(柏林电影节)', NULL, 0.00, 0, 87, 1, '拉尔夫·费因斯');
INSERT INTO `movie` VALUES (59, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 88, '阿凡达 Avatar', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2180085848.jpg', 0, '\n                                    　　战斗中负伤而下身瘫痪的前海军战士杰克•萨利（萨姆•沃辛顿 Sam Worthington 饰）决定替死去的同胞哥哥来到潘多拉星操纵格蕾丝博士（西格妮•韦弗 Sigourney Weaver 饰）用人类基因与当地纳美部族基因结合创造出的 “阿凡达” 混血生物。杰克的目的是打入纳美部落，外交说服他们自愿离开世代居住的家园，从而SecFor公司可砍伐殆尽该地区的原始森林，开采地下昂贵的“不可得”矿。在探索潘多拉星的过程中，杰克遇到了纳美部落的公主娜蒂瑞（佐伊•索尔达娜 Zoe Saldana 饰），向她学习了纳美人的生存技能与对待自然的态度。与此同时，SecFor公司的经理和军方代表上校迈尔斯（史蒂芬•朗 Stephen Lang 饰）逐渐丧失耐心，决定诉诸武力驱赶纳美人……\n                                        ', 8.70, '2020-08-13', '2010-01-04(中国大陆)', NULL, 0.00, 0, 89, 5, '萨姆·沃辛顿');
INSERT INTO `movie` VALUES (60, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 84, '心灵捕手 Good Will Hunting', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p480965695.jpg', 0, '\n                                　　麻省理工学院的数学教授蓝波在席上公布了一道困难的数学题，却被年轻的清洁工威尔（马特·戴蒙 饰）解了出来。可是威尔却是个问题少年，成天和好朋友查克（本·阿弗莱特 饰）等人四处闲逛，打架滋事。当蓝波找到这个天才的时候，他正因为打架袭警被法庭宣判送进看守所。蓝波向法官求情保释，才使他免于牢狱之灾。\n                                    ', 8.90, '2020-08-13', '1997-12-05(美国)', NULL, 0.00, 0, 85, 3, '马特·达蒙');
INSERT INTO `movie` VALUES (61, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 82, '蝴蝶效应 The Butterfly Effect', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2209066019.jpg', 0, '\n                                　　伊万（艾什顿·库奇 Ashton Kutcher 饰）曾经有一个糟糕的童年，因为他行为闯下了大祸，令他童年充满不堪回忆的往事。而事实上，他确实只是依稀记得一点可怕的情景，这些情景一直纠缠着他的正常生活。伊万接受心理学家建议，把琐碎生活记在记事本里，却偶然发现通过记事本回到过去。\n                                    ', 8.80, '2020-08-13', '2004-01-23(美国)', NULL, 0.00, 0, 83, 1, '阿什顿·库彻');
INSERT INTO `movie` VALUES (62, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 83, '禁闭岛 Shutter Island', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1832875827.jpg', 0, '\n                                　　本片根据美国小说家丹尼斯·勒翰（Dennis Lehane）的同名小说改编。 1954年，联邦警官泰迪（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）和搭档查克（马克·鲁弗洛 Mark Ruffalo 饰）乘船来到波士顿附近的禁闭岛精神病犯监狱调查一桩离奇失踪案。手刃亲生骨肉的女犯蕾切尔（艾米莉·莫迪默 Emily Mortimer 饰）从戒备森严的牢室神秘逃脱，藏匿于孤岛深处。泰迪怀疑监狱的主治精神病医师约翰·考利（本·金斯利 Ben Kingsley 饰）有意隐瞒内情，并向查克透露他上岛的真实目的其实是寻找当年纵火烧死他妻子德洛丽丝（米歇尔·威廉姆斯 Michelle Williams 饰）的管理员，并揭露美国政府利用精神病犯人进行人体科学实验的罪行。但随着调查的逐渐深入，真相却变得越来越扑朔迷离……\n                        ', 8.80, '2020-08-13', '2010-02-13(柏林电影节)', NULL, 0.00, 0, 84, 10, '莱昂纳多·迪卡普里奥');
INSERT INTO `movie` VALUES (63, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 81, '沉默的羔羊 The Silence of the Lambs', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1593414327.jpg', 0, '\n                                　　联调局学院学员 Clarice M. Starling（乔迪·福斯特 饰）受行为科学组的 Jack Crawford（斯科特·格伦 饰）指派，前往州立巴尔的摩法医院访问被监禁的精神科医生 Hannibal Lecter（安东尼·霍普金斯 饰）。Lecter要求转到条件较 好的联邦机构，远离常常折磨他的 Frederick Chilton 医生（安东尼·希尔德 饰），并愿意为此提供持续作案的连环杀手水牛比尔（泰德·莱文 饰）的心理分析……\n                        ', 8.80, '2020-08-13', '1991-02-14(美国)', NULL, 0.00, 0, 82, 10, '朱迪·福斯特');
INSERT INTO `movie` VALUES (64, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 77, '美国往事 Once Upon a Time in America', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p477229647.jpg', 0, '\n                                    　　1933年，纽约流氓Noodles（罗伯特·德·尼罗 饰）因向哈洛伦警司（布鲁斯·巴伦堡 饰）通风报信害死了三名同伙而被追杀。逃亡之前，他打开了存放帮派基金的手提箱，里面却只有报纸。 1968年，已改名换姓的Noodles收到一封犹太会堂通知迁葬亲友的信。Noodles联系拉比，得知信是八个月前寄出的，他的三名同伙已被迁葬至一所豪华公墓。Noodles回到纽约，找老友莫（拉里·拉普 饰）了解情况，却一无所获。闲谈中，Noodles问起莫的妹妹黛博拉（伊丽莎白·麦戈文 饰）的情况，得知其已成名角。 原来，两人少时互有好感，但黛博拉（詹妮弗·康纳利 饰）志向高远脚踏实地，理智地将街头混混Noodles（斯科特·提勒 饰）拒于门外。 Noodles在公墓发现了一把钥匙，并用钥匙打开了当年存放手提箱的储物柜。这一次，箱子里有满满的百元钞，还有写着“下一份工作...\n                            ', 9.20, '2020-08-13', '1984-02-17(波士顿首映)', NULL, 0.00, 0, 78, 10, '罗伯特·德尼罗');
INSERT INTO `movie` VALUES (65, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 79, '低俗小说 Pulp Fiction', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910902213.jpg', 0, '\n                                    　　《低俗小说》由“文森特和马沙的妻子”、“金表”、“邦妮的处境”三个故事以及影片首尾的序幕和尾声五个部分组成。看似独立的小故事里面，却又有环环相扣的人和事。\n                                        ', 8.80, '2020-08-13', '1994-05-12(戛纳电影节)', NULL, 0.00, 0, 80, 10, '约翰·特拉沃尔塔');
INSERT INTO `movie` VALUES (66, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 51, '死亡诗社 Dead Poets Society', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2575465690.jpg', 0, '\n                                　　威尔顿预备学院以其沉稳凝重的教学风格和较高的升学率闻名，作为其毕业班的学生，理想就是升入名校。新学期文学老师约翰·基汀（罗宾·威廉姆斯 饰）的到来如同一阵春风，一反传统名校的严肃刻板。\n                                    ', 9.10, '2020-08-13', '1989-06-02(多伦多首映)', NULL, 0.00, 0, 52, 10, '罗宾·威廉姆斯');
INSERT INTO `movie` VALUES (67, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 80, '七宗罪 Se7en', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2219586434.jpg', 0, '\n                                　　“暴食”、“贪婪”、“懒惰”、“嫉妒”、“骄傲”、“淫欲”、“愤怒”，这是天主教教义所指的人性七宗罪。城市中发生的连坏杀人案，死者恰好都是犯有这些教义的人。凶手故弄玄虚的作案手法，令资深冷静的警员沙摩塞（摩根•弗里曼 Morgan Freeman 饰）和血气方刚的新扎警员米尔斯（布拉德•皮特 Brad Pitt 饰）都陷入了破案的谜团中。他们去图书馆研读但丁的《神曲》，企图从人间地狱的描绘中找到线索，最后从宗教文学哲学的世界中找到了凶手作案计划和手段的蛛丝马迹。凶手前来投案自首，这令众人都松了一口气，以为案件就此结束，怎料还是逃不出七宗罪的杀人逻辑，这次凶手瞄准的目标，是那个犯了“愤怒”罪的人……\n                        ', 8.80, '2020-08-13', '1995-09-22(美国)', NULL, 0.00, 0, 81, 10, '摩根·弗里曼');
INSERT INTO `movie` VALUES (68, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 78, '致命魔术 The Prestige', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p480383375.jpg', 0, '\n                                　　19世纪末，人们对科学文明还不是认识得太过清楚，于是，安吉尔（休•杰克曼Hugh Jackman饰）和伯登（克里斯蒂安•贝尔Christian Bale饰）的魔术，成为了伦敦城内的神奇人物。安吉尔出身贵族，魔术手段华丽丰富，是富人圈子里的表演常客。而伯登即使出身平平，争强好胜的心智和充满创造力的魔术技巧，却也令他有了名气。两人自小本是要好的伙伴，然而，现在魔术界二人各有领地，并且都有野心想成为音乐大厅里的顶级魔术师，一番明争暗斗如箭在弦上。\n                                    ', 8.90, '2020-08-13', '2006-10-17(罗马电影节)', NULL, 0.00, 0, 79, 8, '休·杰克曼');
INSERT INTO `movie` VALUES (69, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 200, '人工智能 Artificial Intelligence: AI', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792257137.jpg', 0, '\n                                　　21世纪中期，由于温室效应，南北极冰川融化，地球上很多城市被淹没。此时，人类科技已经高度发达，人工智能机器人就是人类发明出来用以应对恶劣自然环境的科技手段之一，而且，机器人制造技术已经高度发达，先进的机器人不但拥有可以乱真的人类外表，还能感知自身的存在。\n                                    ', 8.60, '2020-08-13', '2001-06-29(美国)', NULL, 0.00, 0, 201, 5, '海利·乔·奥斯蒙');
INSERT INTO `movie` VALUES (70, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 76, '音乐之声 The Sound of Music', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p453788577.jpg', 0, '\n                                　　玛利亚（朱丽·安德鲁斯  饰）是一个年轻活泼的修女，喜欢在大自然下高声歌唱，所以她常常忘记了修道院里的规矩。院长认为玛利亚并不属于规矩严格的修道院。院长与众嬷嬷商量后，决定安排玛利亚到一位名叫特拉普（克里斯托弗·普卢默 饰）上校家当家庭教师。\n                                    ', 9.00, '2020-08-13', '1965-03-02(美国)', NULL, 0.00, 0, 77, 1, '朱莉·安德鲁斯');
INSERT INTO `movie` VALUES (71, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 199, '疯狂的石头', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p712241453.jpg', 0, '\n                                　　重庆一间工艺品厂已经濒临倒闭，却不料在拆倒旧厂房的时候，发现了厕所里的一件宝物——一块价值连城的翡翠。厂里决定用这块翡翠举办一个展览，赚些钱发拖欠了几个月的工人工资。期间由工艺品厂保卫科长包世宏（郭涛 饰）负责看守这件宝物。但是，国际大盗麦克与本地一帮小偷却让包世宏一筹莫展，他们各施其技接近翡翠，展览馆开始了一场明争暗斗的较量。黑色幽默也开始幕幕上演。翡翠的价值几何？最后谁是胜出者？事情远没有表面那么简单……\n                        ', 8.50, '2020-08-13', '2006-06-30(中国大陆)', NULL, 0.00, 0, 200, 2, '郭涛');
INSERT INTO `movie` VALUES (72, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 198, '绿里奇迹 The Green Mile', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p767586451.jpg', 0, '\n                                　　狱监保罗（汤姆•汉克斯 Tom Hanks 饰）这天迎来了一位不平凡的杀人犯――约翰•考夫利（迈克•克拉克•邓肯 Michael Clarke Duncan 饰）。约翰因杀了两名幼女被判死刑来到了这座著名的冷山监狱，监狱里有一片称为“绿里”的绿地，绿地那头就是刑场。\n                                    ', 8.80, '2020-08-13', '1999-12-10(美国)', NULL, 0.00, 0, 199, 1, '汤姆·汉克斯');
INSERT INTO `movie` VALUES (73, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 195, '魔女宅急便 魔女の宅急便', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456676352.jpg', 0, '\n                                　　琪琪今年13岁了，按照魔法界的规矩，魔法少女年满13岁就要出外进行为期一年的修行。所以琪琪带着宠物黑猫吉吉踏上了修行之旅。然而，修行之旅开始得并不顺利，当琪琪来到海边一座大城市时，人们并没有欢迎她的到来，人人都不搭理她。幸亏琪琪有一颗善良的心，当她拾到了一件别人的失物时，热心的琪琪找到了失主。她的善良赢得了面包店老板娘的好感，琪琪就在面包店开始了她用飞行魔法为客人服务的快递业务。琪琪很快适应了新环境，一次，一个热衷于飞机制造的男孩邀请琪琪去参加飞行俱乐部的聚会，途中琪琪因为帮一位老大娘送东西而被雨淋了。从此，琪琪突然发现自己的魔法正在一天天变弱。\n                        ', 8.60, '2020-08-13', '1989-07-29(日本)', NULL, 0.00, 0, 196, 6, '高山南');
INSERT INTO `movie` VALUES (74, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 196, '雨中曲 Singin\' in the Rain', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1612355875.jpg', 0, '\n                                　　1927年，由唐·洛克伍德（吉恩·凯利 饰）和丽娜·雷蒙德（简·哈根 饰）主演的《皇家流氓》在好莱坞首映。由于丽娜刺耳的嗓音无法匹配其夺目的外貌，为了维护明星形象，宣传部只得安排唐一人讲话。首映后，由于钢琴师科斯莫·布朗（唐纳德·奥康纳 饰）的汽车爆胎，为了躲避疯狂的影迷，唐意外结识了能歌善舞的凯西·塞尔登（黛比·雷诺斯 饰），并被其深深吸引。数周后，首部有声电影《爵士歌手》爆红，唐与丽娜的新片《决斗骑士》不得不临时改变拍摄方式，而凯西也成为歌舞片演员。因预映口碑极差，科斯莫提议将《决斗骑士》改为歌舞片，由凯西为丽娜配音，凯西积极附议。与凯西吻别后，唐心花怒放，在雨中载歌载舞。科斯莫的计划能否奏效？幕后的凯西能否走到台前接受观众的掌声？\n                        ', 9.00, '2020-08-13', '1952-04-11(美国)', NULL, 0.00, 0, 197, 2, '吉恩·凯利');
INSERT INTO `movie` VALUES (75, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 192, '恐怖游轮 Triangle', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p462470694.jpg', 0, '\n                                　　单亲母亲杰西（梅利莎·乔治 饰）和一帮朋友乘游艇出海游玩，但她总有一种有不好的事情发生的感觉。不久，他们便在海上遭遇一场强烈的风暴。游艇翻船，众人落海，几经挣扎他们好不容易爬到游艇残骸上来。正当他们无计可施之时，一艘巨大的游轮向众人缓缓驶来。众人欣喜过望，未加思索便登上这艘名为“艾俄洛斯”的游轮，结果发现这竟是一艘1930年便告失踪的神秘之船，而船上更是空无一人。\n                                    ', 8.50, '2020-08-13', '2009-10-16(英国)', NULL, 0.00, 0, 193, 1, '梅利莎·乔治');
INSERT INTO `movie` VALUES (76, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 194, '虎口脱险 La grande vadrouille', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2399597512.jpg', 0, '\n                                　　二战期间，英国一架飞机在执行轰炸任务中，被德军击中，几名英国士兵被迫跳伞逃生。他们约好在土耳其浴室见面，并用这次行动的代号“鸳鸯茶”作为接头暗号。\n                                    ', 8.90, '2020-08-13', '1966-12-08(法国)', NULL, 0.00, 0, 195, 2, '路易·德·菲奈斯');
INSERT INTO `movie` VALUES (77, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 193, '房间 Room', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2259715855.jpg', 0, '\n                                　　女孩乔伊（布丽·拉尔森 Brie Larson 饰）被一个叫“老尼克”的男人拐骗，之后被他囚禁在其房子后院的棚屋里长达七年之久。在此期间她遭到强奸，并生下儿子杰克（雅各布·特伦布莱 Jacob Tremblay 饰）。靠着老尼克时不时的物资补给，母子二人艰难度日。尽管如此，母亲还是竭尽所能，为儿子杰克创造了一个安全而开心的成长空间。这个狭小逼仄的房间，成了杰克生活成长的神奇小天地。在杰克度过了他的五岁生日后，母亲决定告诉他真相，在这个小小的房间外面，有着更广阔的世界。他们开始策划逃跑计划，决心要逃出这个囚禁他们的房间……\n                                    ', 8.80, '2020-08-13', '2015-09-04(特柳赖德电影节)', NULL, 0.00, 0, 194, 1, '布丽·拉尔森');
INSERT INTO `movie` VALUES (78, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 197, '小偷家族 万引き家族', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2530599636.jpg', 0, '\n                                　　东京的都市丛林中央，残存着一栋古旧寒酸的老房子，这里局促地生活着柴田一家五口人。在工地当临时工的男人阿治（Lily Franky 饰）经常带着儿子祥太（城桧吏 饰）到超市盗窃生活用品，这一天，他们回家路上遇到了独自待在户外的四岁女孩由里（佐佐木美结 饰）。妻子信代（安藤樱 饰）起初极力主张将女孩送回父母身边，但当看到女孩原生家庭的状况时又心生恻隐。原本柴田家就靠着老奶奶初枝（树木希林 饰）的养老金度日，而今多了一口人，自然更艰辛了几分。包括信代的妹妹亚纪（松冈茉优 饰）在内，虽然一家人游走在贫困和违法的边缘，但笃深的羁绊将他们紧紧联系在一起，使他们的心不会随着冰冷的都市而寒冷下去……\n                                    ', 8.70, '2020-08-13', '2018-08-03(中国大陆)', NULL, 0.00, 0, 198, 1, '中川雅也');
INSERT INTO `movie` VALUES (79, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 189, '二十二', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2457609817.jpg', 0, '\n                                　　在日本侵华战争的八年间，至少20万中国妇女被迫沦为日军的性奴隶，也就是我们经常提及的“慰安妇”。在影片2014年开拍之时，中国内地仅剩22位“慰安妇”幸存者。当光阴慢慢划过，时间抚平伤口，这些经历了常人无法想象的磨难的老人们，如今又身在何处，过着怎样的生活，经历着怎样的悲喜忧乐？\n                        ', 8.70, '2020-08-13', '2017-08-14(中国大陆)', NULL, 0.00, 0, 190, 12, NULL);
INSERT INTO `movie` VALUES (80, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 191, '奇迹男孩 Wonder', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2507709428.jpg', 0, '\n                                　　奥吉（雅各布·特瑞布雷 Jacob Tremblay 饰）是一个10岁的男孩，除了头戴一个巨大的太空头盔外，他和其他的同年龄孩子别无二致。头盔下隐藏了奥吉因为各种手术而伤痕累累的脸庞，它不仅完美的隐藏起了奥吉脆弱自卑的内心，也成功的防止了奥吉的模样吓到别的孩子。\n                                    ', 8.60, '2020-08-13', '2018-01-19(中国大陆)', NULL, 0.00, 0, 192, 1, '雅各布·特伦布莱');
INSERT INTO `movie` VALUES (81, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 188, '惊魂记 Psycho', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1021883305.jpg', 0, '\n                                    　　年轻的马里恩·克兰（珍妮特·利 饰）在Phoenix工作，深受老板洛厄里（沃恩·泰勒 饰）信任。男友萨姆·卢米斯（约翰·加文 饰）在Fairvale经营一家五金店，因要替亡父还债又要支付前妻赡养费而无力再婚，只能借出差的机会偶尔来与马里恩幽会。马里恩对此感到不满，于是在周五下午趁机携四万美元公款驾车潜逃。可是马里恩的潜逃之路并不顺利：先是在出城的时候被洛厄里目击，周六一大早又被警察怀疑。花了七百美元以旧车换新车之后，马里恩继续忐忑地行驶。入夜后，天降大雨，视线模糊，无法行驶，马里恩只得将车泊入路边的贝茨汽车旅馆投宿。老板诺尔曼（安东尼·珀金斯 饰）十分友善，试图邀请马里恩到家里共进晚餐，可惜被凶恶的母亲粗暴阻止，只得将晚餐端至旅馆客厅。马里恩在客厅一边进餐一边与诺尔曼交谈，终于决定周日返回Phoenix。用餐完毕，马里恩回房沐浴。这时，一个老妇的身影...\n                            ', 9.00, '2020-08-13', '1960-06-16(纽约首映)', NULL, 0.00, 0, 189, 8, '安东尼·博金斯');
INSERT INTO `movie` VALUES (82, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 186, '冰川时代 Ice Age', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910895719.jpg', 0, '\n                                　　冰河时期降至，动物们都急着迁徙到温暖的地方及储存食物。长毛象曼弗瑞德、树獭希德、剑齿虎迪亚戈为了帮助一个人类的婴儿回到父母身边，因而也掉了动物们迁徙的队伍。三只性格各异的动物，觉得集合力量帮助婴儿。一路上，善良的曼弗瑞德总觉得迪亚戈心怀鬼胎，想吃掉婴儿，互相猜疑。他们一起经历了无数艰难险阻，终于能够真诚相对。\n                                    ', 8.60, '2020-08-13', '2002-03-15(美国)', NULL, 0.00, 0, 187, 2, '雷·罗马诺');
INSERT INTO `movie` VALUES (83, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 185, '无敌破坏王 Wreck-It Ralph', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1735642656.jpg', 0, '\n                                    　　无敌破坏王（约翰·C·赖利 John C. Reilly 配音）生活在一个80年代出品的低精度游戏中。他的设定身份是一个反派，每天的生活就是在游戏《快手阿修》中大搞破坏，其后由玩家操作的英雄人物快手阿修（杰克·麦克布瑞尔 Jack McBrayer 配音） 会及时赶到进行修补，赢得奖牌，包揽一切荣耀。身为反派，破坏王厌倦了自己的生活，眼看阿修被胜利者的光环围绕，自己却日复一日在无趣中过活，他终于决定改变。单纯的他以为只要自己也能得到一枚奖牌，就可以摆脱反派的身份，于是某日在游戏厅歇业后，破坏王偷偷离开了自己的游戏，前去闯荡其他电子游戏的世界。\n                                        ', 8.70, '2020-08-13', '2012-11-06(中国大陆)', NULL, 0.00, 0, 186, 2, '约翰·C·赖利');
INSERT INTO `movie` VALUES (84, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 187, '恋恋笔记本 The Notebook', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p483604864.jpg', 0, '\n                                　　一个浸润着鲜红与纯白的爱情故事，写在一本洒满昏黄的笔记本上，被一位老先生(詹姆斯·加纳 饰)，一遍一遍的讲述。老太太(吉娜·罗兰兹 饰)总是静静的听着，好奇的追问结果。在一家疗养院，这样不变的场景每天都会上演。\n                                    ', 8.50, '2020-08-13', '2004-06-25(美国)', NULL, 0.00, 0, 188, 1, '瑞恩·高斯林');
INSERT INTO `movie` VALUES (85, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 190, '海边的曼彻斯特 Manchester by the Sea', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2421855655.jpg', 0, '\n                                　　李（卡西·阿弗莱克 Casey Affleck 饰）是一名颓废压抑的修理工，在得知哥哥乔伊（凯尔·钱德勒 Kyle Chandler 饰）去世的消息后，李回到了故乡——海边的曼彻斯特处理乔伊的后事。根据乔伊的遗嘱，李将会成为乔伊的儿子帕特里克（卢卡斯·赫奇斯 Lucas Hedg es 饰）的监护人，李打算将帕特里克带回波士顿，但很显然帕特里克并不愿意离开家乡和朋友们，但李亦不愿在这片伤心地久留。\n                                    ', 8.60, '2020-08-13', '2017-08-25(中国大陆)', NULL, 0.00, 0, 191, 1, '卡西·阿弗莱克');
INSERT INTO `movie` VALUES (86, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 184, '海街日记 海街diary', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2242546753.jpg', 0, '\n                                　　临海古都镰仓，顺山而成的小镇，不起眼的角落里生活着香田家四姐妹。她们的父亲早年和情人离家出走，母亲则干脆将女儿们抛给了外婆照顾。外婆去世后，外孙女们继承了这栋有着悠久历史的大房子。过早担负起家庭重任的大姐香田幸（绫濑遥 饰），尽心尽力照顾着两个妹妹佳乃（长泽雅美 饰）、千佳（夏帆 饰）健康成长。这一天，父亲去世的消息传到姐妹手中。她们结伴而行参加了父亲的葬礼，并且结识了从未谋面的异母妹妹浅野铃（广濑丝丝 饰）。许是血缘中的亲近之感，幸在临行前邀请铃搬来镰仓同住。未过多久，抱着对姐姐们的憧憬，铃迈入了父亲曾经生活过的房子。四季流转，姐妹们的故事悄然上演……\n                                    ', 8.80, '2020-08-13', '2015-05-14(戛纳电影节)', NULL, 0.00, 0, 185, 1, '绫濑遥');
INSERT INTO `movie` VALUES (87, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 182, '你看起来好像很好吃 おまえうまそうだな', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p709670262.jpg', 0, '\n                                　　哈特（山口胜平 饰）是一只被草食性恐龙养大的霸王龙。其实，早在它破壳而出时，草食性恐龙的首领就曾命令哈特的母亲（原田知世 饰）抛弃它，但母亲却最终还是偷偷把它养大。随着年龄的增长，每天只吃野果的哈特每天饥饿难耐，最终还是抵不住本能的驱使，开始了自己食肉的残暴生涯。然而，由于母亲的影响，在哈特的内心深处，始终涌动着一颗善良的心灵。一天，偶尔遇到一只破壳而出的食草恐龙宝宝，哈特阴差阳错的被恐龙宝宝误认为是“爸爸”，而且为小恐龙取名为“很美味”，自此开始了又一段奇异的恐龙父子情。然而，伴随着生存环境的恶化，恐龙们的生存遭受着前所未有的破坏，哈特和它的亲人最终能否经得起考验……\n                                    ', 8.90, '2020-08-13', '2010-10-16(日本)', NULL, 0.00, 0, 183, 5, '山口胜平');
INSERT INTO `movie` VALUES (88, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 183, '雨人 Rain Man', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2353324612.jpg', 0, '\n                                　　查理（汤姆·克鲁斯 Tom Cruise 饰）父亲去世，留下了300万美元的遗产。然而令他意外的是，遗产全部给了一个他不认识的哥哥雷蒙（达斯汀·霍夫曼 Dustin Hoffman 饰）。雷蒙的名字查理从没听过，这个事件让他气愤不已。他决定前去寻找哥哥。谁知雷蒙的住处就在一个精神病院里，原来他自幼患有自闭症，母亲去世后就被送到精神病院治疗。查理心中有了算计，他把雷蒙带出精神病院，企图骗他出让遗产。\n                                    ', 8.70, '2020-08-13', '1988-12-16(美国)', NULL, 0.00, 0, 184, 1, '达斯汀·霍夫曼');
INSERT INTO `movie` VALUES (89, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 181, '未麻的部屋 Perfect Blue', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1351050722.jpg', 0, '\n                                　　当红三人少女偶像团体Charming Bird面临解散，核心成员雾越未麻在事务所的安排下不得不退出团体，转型成为一名电视剧演员。万事开头难，对于偶像歌手转型而来的未麻尤其如此，她在工作中承受着压力，闷闷不乐。与此同时，各种恐吓信不断、经纪人田所先生遇袭以及以自己的口吻在网站上写日记的神秘人都让未麻焦虑不已，恍惚间她甚至看到另一个自己。\n                                    ', 8.90, '2020-08-13', '1997-07(加拿大奇幻电影节)', NULL, 0.00, 0, 182, 6, '岩男润子');
INSERT INTO `movie` VALUES (90, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 180, '新世界 신세계', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1903379979.jpg', 0, '\n                                　　金门集团会长、暴力组织在虎派大佬石东出遭遇车祸身亡，该事件在黑白两道引起不小震荡。为了遏制金门集团进一步向合法领域渗透并持续壮大，警方及时提出“新世界计划”，旨在干预金门集团继任大佬的选举。而围绕会长头衔，金门旗下三号人物华侨出身的丁青（黄正民 饰）和四号人物常务理事李仲久（朴圣雄 饰）展开一连串明争暗斗。在危机四伏的当下，警方姜科长（崔岷植 饰）命令卧底十年之久的李子成（李政宰 饰）左右选举结果。子成六年前和丁青结识，并且得到对方的器重和信任。早已厌倦黑道生活的子成无奈受命，却无疑将自己投入了凶险非常的黑色漩涡之中。\n                                    ', 8.80, '2020-08-13', '2013-02-21(韩国)', NULL, 0.00, 0, 181, 1, '李政宰');
INSERT INTO `movie` VALUES (91, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 179, '头脑特工队 Inside Out', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2266293606.jpg', 0, '\n                                　　可爱的小女孩莱莉（凯特林·迪亚斯 Kaitlyn Dias 配音）出生在明尼苏达州一个平凡的家庭中，从小她在父母的呵护下长大，脑海中保存着无数美好甜蜜的回忆。当然这些记忆还与几个莱莉未曾谋面的伙伴息息相关，他们就是人类的五种主要情绪：乐乐（艾米·波勒 Amy Poehl er 配音）、忧忧（菲利丝·史密斯 Phyllis Smith 配音）、怕怕（比尔·哈德尔 Bill Hader 配音）、厌厌（敏迪·卡灵 Mindy Kaling 配音）和怒怒（刘易斯·布莱克 Lewis Black 配音）。乐乐作为团队的领导，她协同其他伙伴致力于为小主人营造更多美好的珍贵回忆。某天，莱莉随同父母搬到了旧金山，肮脏逼仄的公寓、陌生的校园环境、逐渐失落的友情都让莱莉无所适从，她的负面情绪逐渐累积，内心美好的世界渐次崩塌。\n                                    ', 8.70, '2020-08-13', '2015-10-06(中国大陆)', NULL, 0.00, 0, 180, 2, '艾米·波勒');
INSERT INTO `movie` VALUES (92, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 178, '模仿游戏 The Imitation Game', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2255040492.jpg', 0, '\n                                　　二战期间，盟军苦于德国的秘密系统”英格玛“无法破译，政府召集了一批民间数学家、逻辑学家进行秘密破解工作，图灵（本尼迪克特·康伯巴奇 Benedict Cumberbatch 饰）就是其中之一。计划刚开始图灵遭到了以休（马修·古迪 Matthew Goode）为首的组员和领导的排斥，幸好军情处部长孟席斯（马克·斯特朗 Mark Strong 饰）帮助他立项研究破译密码的机器，而图灵则变成了负责人，招收了新的成员琼（凯拉·奈特莉 Keira Knightley）开始了艰难的工作。琼很快就迷上了图灵，由于她的帮助所有组员空前的团结，并于两年后成功破解德军的密码。图灵一度与琼订婚，但实际上他隐瞒了一个秘密，因为这个秘密他也遭受了非人的待遇……\n                                    ', 8.70, '2020-08-13', '2015-07-21(中国大陆)', NULL, 0.00, 0, 179, 12, '本尼迪克特·康伯巴奇');
INSERT INTO `movie` VALUES (93, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 124, '阳光姐妹淘 써니', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1374786017.jpg', 0, '\n                                　　25年前，高中生任娜美（沈恩京 饰）一家从全罗道搬到汉城，娜美入读真德女子高中，因方言浓重怯于开口的娜美幸运的得到了同班大姐头夏春花（姜索拉 饰）的维护，并与围绕在夏春花周围的执着于双眼皮的金玫瑰、满嘴脏话的黄珍熙、梦想成为作家的徐金玉、要成为韩国小姐的俞福姬以及沉默傲慢的美人郑秀智等五人结识。在一次和不良少女团对决之后，春花和娜美等七人组成了“Sunny”团体……\n                                    ', 8.80, '2020-08-13', '2011-05-04(韩国)', NULL, 0.00, 0, 125, 1, '沈恩京');
INSERT INTO `movie` VALUES (94, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 177, '黑天鹅 Black Swan', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2549648344.jpg', 0, '\n                                    　　纽约剧团要重排《天鹅湖》，因前领舞Beth（薇诺娜•赖德 Winona Ryder 饰）离去，总监Thomas（文森特•卡索尔 Vincent Cassel. 饰）决定海选新领舞，且要求领舞要分饰黑天鹅与白天鹅。Nina（娜塔莉•波特曼Natalie Portman 饰）自幼练习芭蕾舞，在母亲的细心关照下，技艺出众。这次，她希望可以脱颖而出。然而，在竞争中，她发现心机颇重的Lily（米拉•库妮丝 Mila Kunis 饰）是自己的强劲对手。在选拔中，她的白天鹅表演的无可挑剔，但是黑天鹅不及Lily。她感到身心俱疲，回家还发现了背部的红斑与脚伤。她一个人找到总监，希望争取一下。总监趁机亲吻她，却被她强硬拒绝。结果，总监居然选了她。队友怀疑她靠色相上位。在酒会上，Beth甚至当众发泄。这种压力外加伤病，一直影响着她的发挥。总监启发她要释放激情，表现出黑天...\n                            ', 8.60, '2020-08-13', '2010-09-01(威尼斯电影节)', NULL, 0.00, 0, 178, 1, '娜塔莉·波特曼');
INSERT INTO `movie` VALUES (95, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 123, '大鱼 Big Fish', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p692813374.jpg', 0, '\n                                　　爱德华（伊万·麦克格雷格 Ewan McGregor 饰）生性热爱自由，成年之后，他选择离开家乡，踏上了环游世界的旅程。一路上，爱德华遇见了各种各样稀奇古怪的角色，经历了无数精彩绝伦的的冒险，而他日后最大的兴趣，就是向他人喋喋不休的重复讲述他的这一段奇幻旅程。\n                                    ', 8.80, '2020-08-13', '2003-12-04(纽约首映)', NULL, 0.00, 0, 124, 1, '伊万·麦克格雷格');
INSERT INTO `movie` VALUES (96, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 122, '萤火之森 蛍火の杜へ', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1675053073.jpg', 0, '\n                                　　某年夏天，6岁小女孩竹川萤来到爷爷家度假，她闯进了传说住满妖怪的山神森林。正当她因为迷路而焦急万分的时候，一个戴着狐狸面具的大男孩出现在她面前，并引领着萤找到回家的路。虽然萤分外感激，可是男孩却禁止她碰触自己的身体，原来这名叫银的男孩并非人类，他一旦被人类碰触就会烟消云散。在此后的日子里，萤和银成为好朋友，他们走遍了森林的每一个角落玩耍。日复一日，年复一年，每到夏天的时候萤就会如约来到森林和好朋友见面。她遵守着和银的约定，无论如何也不碰触银的身体。随着年龄的增长，萤和银对彼此的情感都悄悄发生了变化，他们共同期待相聚的日子，共同期待拥抱对方……\n                                    ', 8.90, '2020-08-13', '2011-09-17(日本)', NULL, 0.00, 0, 123, 1, '佐仓绫音');
INSERT INTO `movie` VALUES (97, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 121, '甜蜜蜜', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2223011274.jpg', 0, '\n                                　　改革开放初期，黎小军（黎明 饰）告别女友小婷（杨恭如 饰）从天津（国语版中为无锡）来到香港讨生活，期望有天挣到大钱把小婷接来与之风风光光地成婚，没料想日子会比想象中的难熬许多。\n                                    ', 8.80, '2020-08-13', '1996-11-02(中国香港)', NULL, 0.00, 0, 122, 1, '黎明');
INSERT INTO `movie` VALUES (98, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 125, '超能陆战队 Big Hero 6', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2614500883.jpg', 0, '\n                                　　未来世界的超级都市旧京山（San Fransokyo），热爱发明创造的天才少年小宏，在哥哥泰迪的鼓励下参加了罗伯特·卡拉汉教授主持的理工学院机器人专业的入学大赛。他凭借神奇的微型磁力机器人赢得观众、参赛者以及考官的一致好评，谁知突如其来的灾难却将小宏的梦想和人生毁于一旦。大火烧毁了展示会场，而哥哥为了救出受困的卡拉汉教授命丧火场。身心饱受创伤的小宏闭门不出，哥哥生前留下的治疗型机器人大白则成为安慰他的唯一伙伴。原以为微型机器人也毁于火灾，谁知小宏和大白竟意外发现有人在某座废弃工厂内大批量地生产他的发明。\n                                    ', 8.70, '2020-08-13', '2015-02-28(中国大陆)', NULL, 0.00, 0, 126, 2, '斯科特·安第斯');
INSERT INTO `movie` VALUES (99, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 120, '无人知晓 誰も知らない', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p661160053.jpg', 0, '\n                                　　新搬来的公寓这家人是母亲惠子（You饰）带着四个孩子：明（柳乐优弥饰）、京子、茂、雪。但母亲却得对周围的人们撒谎说丈夫去海外工作，自己与长子两个人在一起生活。事实是其它三名弟妹是“黑孩子”，因为四个孩子有着各自不同的父亲。他们一直呆在家中，没有去学校上学。\n                                    ', 9.10, '2020-08-13', '2004-05-13(戛纳电影节)', NULL, 0.00, 0, 121, 1, '柳乐优弥');
INSERT INTO `movie` VALUES (100, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 118, '玛丽和马克思 Mary and Max', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2162822165.jpg', 0, '\n                                    　　1976年，8岁的玛丽·黛西·丁格尔（贝丝妮·惠特摩尔 Bethany Whitmore 配音）是澳大利亚墨尔本的一个小女孩，喜欢动画片“诺布利特”、甜炼乳和巧克力。玛丽的妈妈是个酒鬼，而在茶叶包装厂工作的父亲平日只喜欢制作鸟标本。孤独的玛丽没有朋友，某一天心血来潮给美国纽约市的马克思·杰瑞·霍罗威茨（菲利普·塞默·霍夫曼 Philip Seymour Hoffman 配音）写了一封信询问美国小孩从哪里来，并附上一根樱桃巧克力棒。44岁的马克思患有自闭症及肥胖，碰巧也喜欢看“诺布利特”动画片及吃巧克力。二人的笔友关系从1976年维持到1994年，期间各自经历了许多人生起伏，直到成年的玛丽（托妮·科莱特 Toni Collette 配音）终于来到纽约看望马克思……\n                                        ', 8.90, '2020-08-13', '2009-01-15(圣丹斯电影节)', NULL, 0.00, 0, 119, 1, '托妮·科莱特');
INSERT INTO `movie` VALUES (101, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 119, '告白', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p689520756.jpg', 0, '\n                                　　一所平凡的中学，1年B组即将迎来春假。不知天高地厚的学生们肆意吵闹，殊不知一场绵亘数月的风暴正向他们袭来。级任教师森口悠子（松隆子 饰）全然无视这片混乱，静静地向学生们做出最后的告白。这个单亲妈妈独自抚养着可爱的女儿（芦田爱菜 饰），然而女儿最终在游泳池中溺水身亡。警察 认定这是一起意外，森口则认定女儿死于班上两个学生之手。她不动声色地指责着犯人A和B，并宣布用自己的方式进行复仇。在此之后，森口辞去教师职务，1年B班的学生也心怀惴惴迎来了春假。新学期开始，残酷的风暴袭向了这群无知无畏的少男少女……\n                                    ', 8.70, '2020-08-13', '2010-06-05(日本)', NULL, 0.00, 0, 120, 1, '松隆子');
INSERT INTO `movie` VALUES (102, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 113, '侧耳倾听 耳をすませば', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456692072.jpg', 0, '\n                                　　正在读初三的月岛雯是一个喜欢看书的女孩，她每次都能在借书卡上看到一个叫天泽圣司名字，因此她对这个人充满了好奇。 雯一直喜欢写诗，有一天她跟好友夕子在讨论写诗的事，夕子告诉雯自己收到了情书，但事实上夕子已有了喜欢的人。更没有想到的是，夕子喜欢的杉村喜欢的是雯，雯一时间感到十分困惑。 雯无意中来到了一个小店，原来店主是圣司的爷爷。认识了圣司之后，听到了圣司对自己理想的追求之后，也激发了雯对自己理想的追求之念。当圣司离开了到意大利学习做小提琴时，雯决定要专心写作。当雯完成了作品之后，她发现原来自己高估了自己，就这样她选择继续考高中，这时她非常想念圣司。 一天凌晨，她站到窗边，突然看到了一个熟悉的身影……\n                        ', 8.90, '2020-08-13', '1995-07-15(日本)', NULL, 0.00, 0, 114, 1, '本名阳子');
INSERT INTO `movie` VALUES (103, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 115, '超脱 Detachment', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1305562621.jpg', 0, '\n                                    　　亨利•巴赫特（艾德里安•布洛迪 Adrien Brody 饰）来到社区学校担任代课老师。学校因学生反叛、经营不善而濒临绝境，多丽丝（刘玉玲 饰）为首的一批教师备受煎熬。亨利的第一堂课就遭遇了顽劣学生的挑衅，但是被他巧妙地化解。他赢得了女教师萨沙（克里斯蒂娜•亨德里克斯 Christina Hendricks）的好感。同时，他的教学方式引起了同学们的兴趣，其中就包括因肥胖而苦闷的梅丽迪斯。她一直默默地承受着因体重带来的各种责骂与嘲笑。但是因为老师，她似乎又找到了一切的理由……\n                                        ', 8.90, '2020-08-13', '2011-04-25(翠贝卡电影节)', NULL, 0.00, 0, 116, 1, '艾德里安·布洛迪');
INSERT INTO `movie` VALUES (104, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 116, '倩女幽魂', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2414157745.jpg', 0, '\n                                　　书生宁采臣（张国荣饰）收账不成，无处可归，遂夜宿鬼寺兰若寺，遇上侠士燕赤霞（午马饰），二人成为邻居。一日偶遇艳女小倩（王祖贤饰），二人两情相悦，但小倩乃是被树妖姥姥控制的鬼魂，专门迷惑精壮男子代姥姥吸取阳气。小倩见宁采臣心地善良不忍加害，并与他感情逐渐加深。宁采臣欲救小倩脱离姥姥魔掌，但苦于姥姥功力深厚，小倩无法脱离其魔掌。二人遂向燕赤霞求救......\n                        ', 8.70, '2020-08-13', '1987-07-18(中国香港)', NULL, 0.00, 0, 117, 8, '张国荣');
INSERT INTO `movie` VALUES (105, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 117, '蝙蝠侠：黑暗骑士崛起 The Dark Knight Rises', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1706428744.jpg', 0, '\n                                    　　检察官哈维·登特（艾伦·艾克哈特 Aaron Eckhart 饰）死后的八年间，哥谭市在戈登警长（加里·奥德曼 Gary Oldman 饰）的努力下有效地遏制了犯罪活动。而蝙蝠侠布鲁斯·韦恩（克里斯蒂安·贝尔 Christian Bale 饰）因为背负谋杀登特的罪名，被 警方通缉，在哥谭市销声匿迹。然而，这看似平静的状态被恐怖分子贝恩（汤姆·哈迪 Tom Hardy 饰）的出现打破，他利用猫女（安妮·海瑟薇 Anne Hathaway 饰）偷取布鲁斯的指纹，致使韦恩集团面临破财，布鲁斯被赶出董事会。为了保证韦恩集团投资的能源项目不被坏人利用制造核弹，布鲁斯帮助米兰达（玛丽昂·歌迪亚 Marion Cotillard 饰）成为董事会主席。贝恩接下来一连串精密设计的计划将哥谭市陷入孤绝之境，毁灭之日指日可待。布鲁斯只能再次肩负起拯救哥谭的重任，然而至亲的...\n                            ', 8.80, '2020-08-13', '2012-08-27(中国大陆)', NULL, 0.00, 0, 118, 1, '克里斯蒂安·贝尔');
INSERT INTO `movie` VALUES (106, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 114, '唐伯虎点秋香 唐伯虎點秋香', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2357915564.jpg', 0, '\n                                　　唐伯虎（周星驰 饰）身为江南四大才子之首，却有道不尽的心酸。宁王想唐伯虎帮忙图谋作反，唐伯虎只好用内功改变脉象，令众人都相信他命不久矣。母亲埋怨他不应该把功夫暴露，因为他们家族一直被当年的仇人追杀。唐伯虎在与朋友出游时，遇到了貌若天仙的秋香并对她一见钟情，决心要到华府当家丁以追求秋香，唐伯虎被取名华安。期间华太师遇到了宁王上门刁难，幸好有唐伯虎出面相助，并暴露了自己是唐伯虎的身份。秋香才知道华安是自己欣赏的唐伯虎。华夫人跟唐家有怨，因此二人便开始斗法。怎料宁王跟夺面书生再次上门，华夫人不是对手，幸得唐伯虎出手，华夫人也答应把秋香许配给唐伯虎。\n                        ', 8.60, '2020-08-13', '1993-07-01(中国香港)', NULL, 0.00, 0, 115, 2, '周星驰');
INSERT INTO `movie` VALUES (107, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 112, '一一', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567845803.jpg', 0, '\n                                　　NJ（吴念真）是个很有原则的生意人，同妻子敏敏（金燕玲）、女儿婷婷（李凯莉）、儿子洋洋（张杨洋）以及外婆住在台北某所普通公寓里。小舅子的一场麻烦婚礼过后，因为外婆突然中风昏迷，他迎来更加混乱的日子。\n                                    ', 9.00, '2020-08-13', '2017-07-28(中国台湾)', NULL, 0.00, 0, 113, 1, '吴念真');
INSERT INTO `movie` VALUES (108, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 111, '爱在黎明破晓前 Before Sunrise', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2555762374.jpg', 0, '\n                                　　美国青年杰西（伊桑·霍克 Ethan Hawke 饰）在火车上偶遇了法国女学生塞琳娜（朱莉·德尔佩 Julie Delpy 饰），两人在火车上交谈甚欢。当火车到达维也纳时，杰西盛情邀请塞琳娜一起在维也纳游览一番，即使杰西翌日便要坐飞机离开。与杰西一见钟情的塞琳娜接受了杰西的邀请。\n                                    ', 8.80, '2020-08-13', '1995-01-27(美国)', NULL, 0.00, 0, 112, 1, '伊桑·霍克');
INSERT INTO `movie` VALUES (109, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 110, '消失的爱人 Gone Girl', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2221768894.jpg', 0, '\n                                　　结婚五周年纪念日的早上，尼克·邓恩（本·阿弗莱克 Ben Affleck 饰）来到妹妹玛戈（凯莉·库恩 Carrie Coon 饰）的酒吧，咒骂抱怨那个曾经彼此恩爱缠绵的妻子艾米（罗莎蒙德·派克 Rosamund Pike 饰）以及全然看不见希望的婚姻。当他返回家中时， 却发现客厅留下了暴行的痕迹，而妻子竟不见了踪影。女探员朗达·邦妮（金·迪肯斯 Kim Dickens 饰）接到报案后赶来调查，而现场留下的种种蛛丝马迹似乎昭示着这并非是一件寻常的失踪案，其背后或许隐藏着裂变于夫妻之情的谋杀罪行。艾米的失踪通过媒体大肆渲染和妄加揣测很快闻名全国，品行不端的尼克被推上风口浪尖，至今不见踪影的爱人对他进行无情审判，你侬我侬的甜言蜜语早已化作以血洗血的复仇与折磨……\n                                    ', 8.70, '2020-08-13', '2014-09-26(纽约电影节)', NULL, 0.00, 0, 111, 1, '本·阿弗莱克');
INSERT INTO `movie` VALUES (110, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 109, '小森林 冬春篇 リトル・フォレスト 冬・春', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2258078370.jpg', 0, '\n                                　　于无法融入喧嚣吵闹的大城市，平凡女孩市子（桥本爱 饰）选择回到自幼生长的老家——位于日本东北地区的小森村。这里没有过多时尚文明的色彩，当地人过着日出而作日落而息的传统生活，他们靠天吃饭，靠着双手经营人生。生活虽不富裕，心中则是满满的充实和欢喜。受妈妈（桐島かれん 饰） 影响，市子似乎对亲手制作各种美味而廉价的料理有着格外浓厚的兴趣。妈妈失踪已经很久，对料理的回忆与再现成为母女间别具特色的交流方式。更何况还有取自大自然的各种食材，又怎能暴殄天物浪费了大好的韶光？在好友纪子（松冈茉优 饰）和裕太（三浦贵大 饰）的陪伴下，市子静静地走过了春夏秋冬……\n                                    ', 9.00, '2020-08-13', '2015-02-14(日本)', NULL, 0.00, 0, 110, 1, '桥本爱');
INSERT INTO `movie` VALUES (111, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 108, '红辣椒 パプリカ', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p456825720.jpg', 0, '\n                                　　近未来，为了治疗现代人类越来越多、越来越严重的精神疾病，位于东京的精神医疗综合研究所开发出一种可以反映他人梦境的机器。通过微型DC的帮助，梦境在显示器上呈现出来，更方便找到一个人焦虑的症结。\n                                    ', 9.00, '2020-08-13', '2006-09-02(威尼斯电影节)', NULL, 0.00, 0, 109, 5, '林原惠美');
INSERT INTO `movie` VALUES (112, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 106, '第六感 The Sixth Sense', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2220184425.jpg', 0, '\n                                　　麦克（布鲁斯·威利斯 饰）是著名儿童心理学家，却也有始终未能治愈的患者，甚至因此遭到枪击，这名少年随后也饮枪自毙。这给麦克带来很大心理阴影，一年后他找到另一个症状很像这名患者的男孩柯尔（海利·乔·奥斯蒙 饰），并耐心的做起了他的医生。柯尔并不容易接近，但麦克还是慢慢赢得 了他的信任，得知了柯尔的秘密。原来柯尔有着灵异的第六感，可以看到鬼魂。虽然这令人感到难以置信，但麦克在证实了事情的真相后还是帮助柯尔接受了这个事实。\n                                    ', 8.90, '2020-08-13', '1999-08-06(美国)', NULL, 0.00, 0, 107, 1, '布鲁斯·威利斯');
INSERT INTO `movie` VALUES (113, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 107, '入殓师 おくりびと', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1583839859.jpg', 0, '\n                                　　买了昂贵的大提琴，想要成就一番事业的小林大悟（本木雅弘 饰），经历了4个月的管弦乐演奏，得到的却是“乐团解散”的噩耗与购买乐器的高昂债务。迫不得已，大悟与妻子美香（广末凉子 饰）搬到老屋，过着清贫的日子。某日，一则广告吸引了大悟的注意：NK代理公司，帮助旅行，高薪短工时。大悟来到NK代理公司面试，社长佐佐木生荣（山崎努 饰）二话不说就决定聘用大悟，但却对工作内容避而不谈。在大悟的再三追问下，佐佐木社长终于道明：是入殓（日语Nou Kan）工作！\n                                    ', 8.80, '2020-08-13', '2008-09-13(日本)', NULL, 0.00, 0, 108, 9, '本木雅弘');
INSERT INTO `movie` VALUES (114, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 105, '重庆森林 重慶森林', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792381411.jpg', 0, '\n                                　　编号为223的警察（金城武）失恋后患上失恋综合症，在与金发女杀手（林青霞）擦肩而过又离奇相遇并有了一晚温情后，原本以为包括“爱情”在内的所有东西都有保质期的他意外地迎来心灵的短暂温暖。可是，他们的爱情还是结束了。\n                                    ', 8.70, '2020-08-13', '1994-07-14(中国香港)', NULL, 0.00, 0, 106, 9, '林青霞');
INSERT INTO `movie` VALUES (115, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 104, '7号房的礼物 7번방의 선물', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1816276065.jpg', 0, '\n                                　　1997年，只有6岁儿童智商的智障男子李龙久（柳成龙 饰）和可爱的女儿艺胜（葛素媛 饰）相依为命，生活虽然简单清贫，却充满幸福。某天，执着为女儿买美少女战士书包的龙久意外卷入一起幼童诱拐奸杀案，而死者竟是警察局长的女儿。龙久懵懂无知，搞不清状况，昏头昏脑就被投入监狱。在7号牢房中，聚集着走私犯蘇杨浩（吴达洙 饰）、诈骗犯崔春浩（朴元尚 饰）、通奸犯姜万范（金正泰 饰）、恐吓犯老徐（金基灿 饰）和抢劫犯申奉植（郑万植 饰）等五毒俱全的“社会渣滓”。龙久孩子般纯洁的心渐渐感动了这几个“大坏蛋”，他们甚至不惜冒险将艺胜带入牢房与父亲相会。\n                                    ', 8.90, '2020-08-13', '2013-01-23(韩国)', NULL, 0.00, 0, 105, 8, '柳承龙');
INSERT INTO `movie` VALUES (116, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 150, '喜宴 囍宴', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2173713676.jpg', 0, '\n                                　　伟同（赵文瑄）是事业有成的男同志，与男友赛门（Mitchell Lichtenstein）在美国过着幸福的同居日子，烦恼来自要用各种招数应对远在台北的父（郎雄）母（归亚蕾）的一次次逼婚。伟同被逼以“乖乖仔”形象修书一封声称会在美国结婚，没料父母想亲眼见证。无奈，他只得拉上来自上海的不得志的女艺术家葳葳（金素梅）“假婚”，想逃过一劫。\n                                    ', 8.90, '2020-08-13', '1993-02(柏林电影节)', NULL, 0.00, 0, 151, 1, '赵文瑄');
INSERT INTO `movie` VALUES (117, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 103, '小森林 夏秋篇 リトル・フォレスト 夏・秋', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564498893.jpg', 0, '\n                                　　平凡女孩市子（桥本爱 饰）自幼生长在位于日本东北地区的村庄小森。这里远离都市的喧嚣和浮躁，为青山绿水所环绕，俨然一个幽静怡然的世外桃源。村民们日出而作，日落而息，依靠一双勤劳的双手经营渺小却舒适的生活，与世无争。市子曾经前往东京闯荡，只不过她终究无法适应都市快节奏的步伐，最终回到了妈妈早已不在的老宅。童年时妈妈福子利用山川田野各种食材做出胡乱命名的美食，实心眼的市子在感叹受骗之余，也将美好的回忆留在了味蕾深处。仿佛遵循着母亲的步伐，她将对故乡的热爱融入了美食的烹制中。在朋友佑太（三浦贵大 饰）和吉子（松冈茉优 饰）的环绕下，享受着无忧无虑的人生……\n                                    ', 9.00, '2020-08-13', '2014-08-30(日本)', NULL, 0.00, 0, 104, 1, '桥本爱');
INSERT INTO `movie` VALUES (118, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 102, '阳光灿烂的日子', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2564685215.jpg', 0, '\n                                　　20世纪70年代初的北京，忙着“闹革命”大人无空理会小孩，加上学校停课无事可做，以军队大院男孩为突出代表的少年人便自找乐子，靠起哄、打架、闹事、拍婆子等方式挥霍过量的荷尔蒙。马小军（夏雨 饰）就是这样的少年，他的嗜好之一是趁别人家无人用万能钥匙将其锁打开，溜进去耍玩一番，正是用这样的方式，少女米兰（宁静 饰）的照片先于其人入了马小军的双眼。通过院里的“头儿”刘忆苦（耿乐 饰），马小军又见到之前在炮局偶然瞥见过一眼的米兰，开始正式将其当作梦中情人，然而在米兰眼中，马小军不过是毛孩一个，她中意的人是成熟、稳重、帅气的刘忆苦。自此，马小军迎来五味混杂的青春期生活。\n                                    ', 8.80, '2020-08-13', '1995-06-28(中国香港)', NULL, 0.00, 0, 103, 1, '夏雨');
INSERT INTO `movie` VALUES (119, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 148, '被解救的姜戈 Django Unchained', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1959232369.jpg', 0, '\n                                    　　1858年，美国南北战争前两年。德国赏金猎人金·舒尔茨（克里斯托弗·瓦尔兹 Christoph Waltz饰）从贩奴商人手中买下黑奴姜戈（杰米·福克斯 Jamie Foxx饰），让其重获自由。舒尔茨实则是要把姜戈培养成无法无天的赏金猎人，为其缉拿各种通缉犯以换取报酬。姜 戈的唯一条件是：从暴虐的糖果庄园主卡尔文·坎迪（莱昂纳多·迪卡普里奥 Leonardo DiCaprio饰）手中解救出自己的妻子布鲁姆希尔达（凯丽·华盛顿 Kerry Washington饰）。本片是昆汀向1966年由塞吉奥·考布西执导的经典意大利西部片《迪亚戈》的致敬之作。\n                                        ', 8.70, '2020-08-13', '2013-05-12(中国大陆)', NULL, 0.00, 0, 149, 1, '杰米·福克斯');
INSERT INTO `movie` VALUES (120, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 147, '釜山行 부산행', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2360940399.jpg', 0, '\n                                　　证券公司基金管理人石宇（孔侑 饰）光鲜精干，却也是个重利轻义之徒。妻子为此与之决裂，女儿秀安（金秀安 饰）则对如此自私的父亲越来越失望，决定前往釜山和母亲生活。在秀安生日这天，石宇抽出时间陪伴女儿登上开往釜山的特快列车。而与此同时，城市四处出现了极为可疑的暴动事件。政府极力洗白无法掩盖丧尸肆虐的事实，即便懵然无知的列车乘客也因为不速之客的到来而堕入恐慌绝望的地狱中。开车的刹那，一名感染者冲入车厢，而她很快尸变并对目光所及之处的健康人展开血腥屠杀。未过多久，丧尸便呈几何数爆发性地增长。石宇被迫和幸存者的乘客们在逼仄的空间中奋力求生。\n                                    ', 8.50, '2020-08-13', '2016-05-13(戛纳电影节)', NULL, 0.00, 0, 148, 9, '孔侑');
INSERT INTO `movie` VALUES (121, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 149, '哪吒闹海', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516566783.jpg', 0, '\n                                　　商末时期，陈塘关总兵李靖的夫人怀胎3年6个月，最终生下一个肉球，肉球中跳出一个伶俐可爱的男孩。李靖原当他是妖孽欲杀之而后快，幸太乙真人前来收之为徒，赐名哪吒，并赐以乾坤圈和混天绫两件宝贝。某年，天下大旱，甘露未降。哪吒和家将到东海洗澡玩耍。他用混天绫搅动海水，撼动龙宫，惹出巡海夜叉李艮和龙王三太子敖丙。几番言语不和，哪吒杀此二人，由此闯下通天大祸。四海龙王齐聚陈塘关索命，为救一方百姓，哪吒决定交出生命……\n                                    ', 9.10, '2020-08-13', '1979-05-19(中国大陆)', NULL, 0.00, 0, 150, 6, '梁正晖');
INSERT INTO `movie` VALUES (122, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 145, '上帝之城 Cidade de Deus', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p455677490.jpg', 0, '\n                                    　　巴西里约热内卢的贫民窟，这里是“上帝之城”，更是魔鬼也会叹息着转身的地方。\n                                        ', 8.90, '2020-08-13', '2002-05-18(戛纳电影节)', NULL, 0.00, 0, 146, 1, '亚历桑德雷·罗德里格斯');
INSERT INTO `movie` VALUES (123, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 146, '电锯惊魂 Saw', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2565332644.jpg', 0, '\n                                　　一觉醒来的亚当（雷•沃纳尔 Leigh Whannell饰）发现自己被困在一个废弃的厕所里。他的对面是同样命运的劳伦斯（加利•艾尔维斯 Cary Elwes 饰）——他们被人用铁链绑住了腿，并吃惊发现二人中间横亘着一个恐怖的死人。死人鲜血淋漓，左手拿录放机右手拿枪。\n                                    ', 8.70, '2020-08-13', '2004-01-19(圣丹斯电影节)', NULL, 0.00, 0, 147, 9, '雷·沃纳尔');
INSERT INTO `movie` VALUES (124, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 144, '时空恋旅人 About Time', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2070153774.jpg', 0, '\n                                　　Tim（多姆纳尔·格利森 Domhnall Gleeson 饰）21岁了，他的老爸（比尔·奈伊 Bill Nighy 饰）告诉他，他们家族的男人都有时光旅行的超能力，可以回到过去。于是Tim将信就疑地试了一下，回到了夏天，在那里他试图改变和暗恋对象的关系，却发现怎么穿越时空都不能让不爱你的人爱上你。之后Tim来到了伦敦，成为了一个律师。他爱上了一个漂亮的姑娘Mary（瑞秋·麦克亚当斯 Rachel McAdams 饰），他通过几次时空旅行，努力地想成为Mary的男朋友。再后来，他又试图通过时光旅行，去挽回一场失败的话剧，去改善妹妹的生活，去更好地和亲人、朋友相处，度过生命中的每一天。\n                        ', 8.70, '2020-08-13', '2013-09-04(英国)', NULL, 0.00, 0, 145, 2, '多姆纳尔·格里森');
INSERT INTO `movie` VALUES (125, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 143, '教父3 The Godfather: Part III', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2169664351.jpg', 0, '\n                                　　转眼间已经是1979年，第二代教父麦克•柯里昂（阿尔•帕西诺 饰）到了垂暮之年，为了灵魂的救赎，麦克慢慢结束家族的黑道事业，转投正当生意。\n                                    ', 8.90, '2020-08-13', '1990-12-25(美国)', NULL, 0.00, 0, 144, 10, '阿尔·帕西诺');
INSERT INTO `movie` VALUES (126, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 142, '风之谷 風の谷のナウシカ', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1917567652.jpg', 0, '\n                                　　工业文明的高度发展，却最终带来灾难，一场为期7天的虫族毁灭战争摧毁了人类文明。一千年后，工业文明遗留下来的症结仍在困扰这个星球。带有强烈毒性的植物组成了令人望而却步的“腐海”森林，随着时间的推移，腐海有条不紊地向四周蔓延，蚕食周边世界。在一片腐海森林的旁边，居住着一群御风而行的人类。女主角娜乌茜卡和族人依靠海风的力量抵御着有毒孢子的侵蚀，过着平静祥和的生活。\n                                    ', 8.90, '2020-08-13', '1992-05(中国大陆)', NULL, 0.00, 0, 143, 6, '岛本须美');
INSERT INTO `movie` VALUES (127, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 141, '天书奇谭', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2515539487.jpg', 0, '\n                                　　天庭有珍奇书籍“天书”，被锁在石龛门里三千年。看守天书的袁公对天书的内容好奇不已，他乘无人之际，偷偷拿出观看。原来，天书上记录了一百〇八条法术，袁公偷偷下凡，把天书上的内容刻在石壁上。但本意造福人类的袁公此举却触犯了天条，遭到了玉帝的惩罚。\n                                    ', 9.20, '2020-08-13', '1983(中国大陆)', NULL, 0.00, 0, 142, 6, '丁建华');
INSERT INTO `movie` VALUES (128, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 139, '傲慢与偏见 Pride & Prejudice', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2016401659.jpg', 0, '\n                                　　根据简·奥斯汀同名小说改编。伊丽莎白·班纳特(凯拉·奈特丽 饰)出身于小地主家庭，有四个姐妹，母亲班纳特太太整天操心着为女儿物色称心如意的丈夫。新来的邻居宾格来先生和他的朋友达西（马修·麦克菲迪恩 饰）打破了她们一家人单调的乡村生活。宾格来和伊丽莎白的姐姐简·班纳特互生情愫；达西对善良聪明的伊丽莎白产生了好感，而伊丽莎白却对达西不可一世的傲慢心存偏见，不接受他的感情。然而，世事难料，宾格来和简·班纳特因为误会，关系危在旦夕；达西的种种作为，展示了性格中和伊丽莎白相同的善良一面，逐渐赢得了伊丽莎白的好感。两对有情人能否终成眷属？班纳特姐妹们能否得到自己想要的生活？\n                                    ', 8.60, '2020-08-13', '2005-09-16(英国)', NULL, 0.00, 0, 140, 1, '凯拉·奈特莉');
INSERT INTO `movie` VALUES (129, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 138, '玩具总动员3 Toy Story 3', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1283675359.jpg', 0, '\n                                　　距上一次的冒险已经过去11个年头，转眼间安迪（约翰·莫里斯 John Morris 配音）变成了17岁的阳光男孩。这年夏天，安迪即将开始大学生活，他必须将自己的房间收拾整齐留给妹妹。此前，伍迪（汤姆·汉克斯 Tom Hanks 配音）与巴斯光年（蒂姆·艾伦 Tim Allen 配音）等玩具一直期待安迪再和他们玩耍，但是随着岁月的流逝，他们被冷落在箱子里很久了。安迪十分珍惜这些童年的玩伴，于是准备将他们收在阁楼。谁曾想，妈妈却把玩具们当作废物扔到街道上。玩具们误解了安迪，于是愤然出走，宁可被捐赠到阳光之家幼儿园。\n                                    ', 8.80, '2020-08-13', '2010-06-16(中国大陆)', NULL, 0.00, 0, 139, 2, '汤姆·汉克斯');
INSERT INTO `movie` VALUES (130, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 137, '怪兽电力公司 Monsters, Inc.', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2513247938.jpg', 0, '\n                                    　　我们不知道，在那样的世界里住着那样一群怪物。他们长相滑稽，却必须装作狰狞。因为，在夜深的时候，他们要悄悄的出现在孩子的衣橱里，吓唬刚刚甜美睡去的宝宝。一切，只因为他们是怪物电力公司的员工，而孩子的尖叫，则是怪物王国发电的全部能量。怪物们害怕孩子，却又必须让孩子尖叫。在怪物的国度里，他们都是为全民造福的英雄。\n                                        ', 8.70, '2020-08-13', '2001-11-02(美国)', NULL, 0.00, 0, 138, 2, '约翰·古德曼');
INSERT INTO `movie` VALUES (131, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 140, '血战钢锯岭 Hacksaw Ridge', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2398141939.jpg', 0, '\n                                　　1945年，第二次世界大战接近尾声，作为邪恶轴心重要成员的日本，其嚣张态势已成强弩之末。是年，决定战局走向的冲绳岛战役拉开序幕，成千上万斗志昂扬的美国大兵被派往冲绳，等待他们的则是敌军重兵防守、凶险异常的钢锯岭。在这群人中间，却有一个不愿拿起武器的军医。他名叫戴斯蒙德·道斯（安德鲁·加菲尔德 Andrew Garfield 饰），来自美国的弗吉尼亚。太平洋爆发之际，瘦弱的戴斯蒙德志愿成为救死扶伤的军医而应征入伍。可因童年和家庭的原因，他始终不愿拿起枪支操练，为此宁愿背上拒服兵役的罪名被送上军事法庭。几经周折，戴斯蒙德最终和战友来到了钢锯岭。枪林弹雨，转瞬之间无数人应声倒地。在信仰和信念的支持下，戴斯蒙德仅凭一己之力拯救了数十条濒死的生命……\n                                    ', 8.70, '2020-08-13', '2016-12-08(中国大陆)', NULL, 0.00, 0, 141, 12, '安德鲁·加菲尔德');
INSERT INTO `movie` VALUES (132, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 135, '人生果实 人生フルーツ', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544912792.jpg', 0, '\n                                    　　一部极其感人的纪录电影《积存时间的生活》，日本导演伏原健之拍摄，由日本影后树木希林担任旁白，日本现代陶渊明津端夫妇生活纪录片。藉由津端修一夫妇丰富的生活阅历，一幢深居林间的小屋，探索那些深藏于时间长河中的真正瑰宝。\n                                        ', 9.50, '2020-08-13', '2017-01-02(日本)', NULL, 0.00, 0, 136, 1, '津端修一');
INSERT INTO `movie` VALUES (133, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 133, '完美的世界 A Perfect World', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2190556408.jpg', 0, '\n                                　　单亲孩子菲利普·佩里（T·J·劳瑟 T.J. Lowther 饰）的母亲对他管教甚严，8岁的小菲利普甚至从未参加过一次鬼节讨糖果的游戏。附近州监狱的两名罪犯越狱成功，劫持了菲利普作为人质，向德州边界逃窜。途中，罪犯之一的布奇（凯文·科斯特纳 Kevin Costner 饰）干掉了鲁莽愚蠢的同伙，却对小菲利普照顾有加。与此同时，德州警探瑞德（克林特·伊斯特伍德 Clint Eastwood 饰）带着手下和州长特派的犯罪专家萨利（劳拉·邓恩 Laura Dern 饰）一同火速追捕布奇。双方在德克萨斯州境内展开了一场公路赛大竞技；而小菲利普也经历了很多从未想过过的刺激与快乐，并与布奇产生了一种近似父子的不寻常感情……\n                        ', 9.10, '2020-08-13', '1993-11-24(美国)', NULL, 0.00, 0, 134, 1, '凯文·科斯特纳');
INSERT INTO `movie` VALUES (134, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 136, '神偷奶爸 Despicable Me', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792776858.jpg', 0, '\n                                　　超级坏蛋格鲁（史蒂夫·卡瑞尔 Steve Carell 配音）在听说埃及金字塔被盗的新闻后不满市面上新贼辈出，决定在纳法利欧博士（拉塞尔·布兰德 Russell Brand 配音）的帮助下建造火箭升空盗取月亮。在向坏蛋银行贷款的过程中，格鲁盗取的收缩射线枪被新贼维克托（杰森·席格尔 Jason Segel 配音）抢走。为了夺回收缩射线枪，格鲁决定领养三位孤儿——玛戈（米兰达·卡斯格拉夫 Miranda Cosgrove 配音）、伊迪丝（达娜·盖伊 Dana Gaier 配音）和阿格蕾丝（埃尔希·费舍 Elsie Fisher 配音），利用她们进入维克托的城堡兜售饼干的机会实施偷盗，计划成功后再偷偷处理掉三个小孩。然而在平凡的日常相处中，格鲁却发现自己越来越离不开这三个小鬼，但这样的感情用事却将严重影响周密的盗月计划……\n                        ', 8.60, '2020-08-13', '2010-06-20(莫斯科电影节)', NULL, 0.00, 0, 137, 6, '史蒂夫·卡瑞尔');
INSERT INTO `movie` VALUES (135, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 134, '功夫', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.jpg', 0, '\n                                　　1940年代的上海，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。\n                                    ', 8.60, '2020-08-13', '2004-12-23(中国大陆/中国香港)', NULL, 0.00, 0, 135, 2, '周星驰');
INSERT INTO `movie` VALUES (136, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 132, '恐怖直播 더 테러 라이브', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2016930906.jpg', 0, '\n                                　　韩国首尔某个平凡的早上，广播电台Daily Topic节目的主持人尹英华（河正宇 饰）正就税率改革与听众进行连线，这时一个自称住在首尔昌信洞的普通工人朴鲁圭打入电话，大肆抱怨超高的电费和相关部门对他的威胁。尹英华颇不耐烦，以偏离主题为由强行切断电话。谁知连线无法单方面由电台方面中断，愤怒的朴鲁圭继续抱怨，并扬言炸掉汉江大桥。尹英华不以为然，进而怂恿对方想做就做，谁知话音刚落，窗外的麻浦大桥便炸作废墟。大惊失色的尹英华很快冷静下来，他决定利用这次难得的机会打一次事业的翻身仗。\n                                    ', 8.80, '2020-08-13', '2013-07-31(韩国)', NULL, 0.00, 0, 133, 8, '河正宇');
INSERT INTO `movie` VALUES (137, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 130, '菊次郎的夏天 菊次郎の夏', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p751835224.jpg', 0, '\n                                　　暑假到来，自幼丧父的小学三年级学生正男（关口雄介饰），如今和奶奶生活在一起，暑假特别无聊。他拿出母亲从外地寄回的信，准备自己一个人去爱知县丰桥市看望母亲。\n                                    ', 8.80, '2020-08-13', '1999-05-20(戛纳电影节)', NULL, 0.00, 0, 131, 1, '北野武');
INSERT INTO `movie` VALUES (138, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 129, '幸福终点站 The Terminal', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p854757687.jpg', 0, '\n                                　　为了完成父亲的心愿，维克多（汤姆•汉克斯 Tom Hanks 饰）从故国乘坐飞机前往美国肯尼迪机场，但戏剧性的事情发生了：他被告知祖国发生政变，而他的身份证护照一一失效，同时他的签证也无法再使用。进退两难的维克多只有在机场滞留，等待新证件的办理。\n                                    ', 8.80, '2020-08-13', '2005-01-14(中国大陆)', NULL, 0.00, 0, 130, 1, '汤姆·汉克斯');
INSERT INTO `movie` VALUES (139, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 128, '借东西的小人阿莉埃蒂 借りぐらしのアリエッティ', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p617533616.jpg', 0, '\n                                　　虽然患有心脏方面的疾病，但是少年翔（神木隆之介 配音）的父母依然对他疏于呵护。为了准备即将到来的手术，翔来到了位于偏远乡间的姨婆（竹下景子 配音）家静养。姨婆家位于一片幽静的丛林中，这是一幢有着上百年历史的欧式别墅。这里除了生活着姨婆和女佣阿春（树木希林 配音）外，还有一个奇特的三口之家，“借东西一族”——小人阿莉埃蒂（志田未来 配音）和她的爸爸（三浦友和 配音）妈妈（大竹忍 配音），他们生活在别墅的地板下，只有几公分高，过着不为人类察觉的生活。遇到所需的日常用品时，便会在夜深人静之时偷偷潜入厨房借出来。翔无意中瞥见阿莉埃蒂的身影，他有心接近这些传说中的小人，却不知不觉打扰了他们的生活…… 本片根据英国作家玛丽·诺顿的原著《借东西的小人》改编，并荣获2011年日本电影学院奖最佳动画片奖。\n                        ', 8.80, '2020-08-13', '2010-07-17(日本)', NULL, 0.00, 0, 129, 6, '志田未来');
INSERT INTO `movie` VALUES (140, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 131, '爱在日落黄昏时 Before Sunset', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542458.jpg', 0, '\n                                　　九年前，杰西（伊桑·霍克 Ethan Hawke 饰）与席琳（朱莉·德尔佩 Julie Delpy 饰）在火车上不期而遇，怦然心动。在维也纳渡过疯狂而又浪漫的一夜后，他们在日出前分手，并相约在维也纳重逢。\n                                    ', 8.80, '2020-08-13', '2004-02-10(柏林电影节)', NULL, 0.00, 0, 132, 1, '伊桑·霍克');
INSERT INTO `movie` VALUES (141, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 175, '忠犬八公物语 ハチ公物語', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1576418852.jpg', 0, '\n                                　　1923年，日本秋田县大馆市天降大雪，近藤家纯种秋田犬产仔，赠与县土木科长间濑。后者将其中一犬转赠东京帝国大学教授上野秀次郎（仲代达矢 Tatsuya Nakadai 饰）驯养。上野的独生女千鹤子对此欢欣鼓舞，而上野夫妇却面露难色。后来，千鹤子（石野真子 Mako Ishino饰）谈恋爱，竟怀了男友的孩子。男友专程登门造访。上野与之对谈，后者诚惶诚恐，坦言要对其女儿负责，事不宜迟，即日便举行婚礼，上野闻听此言，转怒为喜。千鹤子出嫁后，上野旋即把全部的心血与爱都投注在幼犬身上，并取名为阿八。每日上下班，阿八必在涩谷车站等候，一年四季，风雨无阻，令路人叹为观止，成为地方一道风景，主仆之情感动天地……\n                                    ', 9.20, '2020-08-13', '1987-08-01(日本)', NULL, 0.00, 0, 176, 1, '山本圭');
INSERT INTO `movie` VALUES (142, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 127, '射雕英雄传之东成西就 射鵰英雄傳之東成西就', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2609063925.jpg', 0, '\n                                　　金轮国王妃（叶玉卿 饰）与表哥欧阳锋（梁朝伟 饰）有染，为霸占江山，他们毒死了国王，但没找到传国玉玺。得知玉玺在前往九宫山找寻其师父求助的三公主（林青霞 饰）手里后，欧阳锋企图抢到手但没成功。糊涂国师（张曼玉 饰）在淫威下屈服，查出三公主的具体下落，欧阳锋乘火箭金靴追赶 ，却误脱落一只插死刚出关的王重阳（钟镇涛 饰），奄奄一息的王重阳恳求适逢路过的三公主找到其师弟周伯通（刘嘉玲 饰）代为报仇。逃到九宫山的三公主邀得师弟黄药师（张国荣 饰）与师妹（王祖贤 饰）相助，再加上前来寻找表妹的洪七（张学友 饰）、找到真心人才能成仙的段智兴（梁家辉 饰），一场与欧阳锋的生死恶战蓄势待发……\n                        ', 8.70, '2020-08-13', '1993-02-05(中国香港)', NULL, 0.00, 0, 128, 2, '梁朝伟');
INSERT INTO `movie` VALUES (143, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 172, '东邪西毒 東邪西毒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1982176012.jpg', 0, '\n                                　　在恋人（张曼玉）负气嫁给兄长的当晚，欧阳锋（张国荣）黯然离开白陀山，走进沙漠某个小镇，成为一名杀手中介人。他的朋友、风流剑客黄药师（梁家辉）每年都来小镇与他畅饮，酒话里有关白陀山的消息令他忘却往事的念想渐次演变成自欺行为。\n                                    ', 8.60, '2020-08-13', '1994-09-17(中国大陆)', NULL, 0.00, 0, 173, 1, '张国荣');
INSERT INTO `movie` VALUES (144, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 174, '哈利·波特与密室 Harry Potter and the Chamber of Secrets', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1082651990.jpg', 0, '\n                                　　哈利波特（丹尼尔•雷德克里夫 Daniel Radcliffe 饰）结束了假期，即将回到霍格沃兹继续学习魔法。一个叫多比的家养小精灵警告哈利不要回到霍格沃兹，否则会陷入极大的危险。哈利没有听从多比的劝告，回到了霍格沃兹。很快，霍格沃兹发生了一连窜怪事:接二连三出现学生被石化，一直找不出原因。而哈利总能听到一种奇怪的声音，从墙壁里传出来。\n                                    ', 8.60, '2020-08-13', '2003-01-24(中国大陆)', NULL, 0.00, 0, 175, 8, '丹尼尔·雷德克里夫');
INSERT INTO `movie` VALUES (145, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 171, '记忆碎片 Memento', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p641688453.jpg', 0, '\n                                　　当记忆支离破碎后，你该怎样面对生活？本片的主人公就遭遇了这样的事情。\n                                    ', 8.60, '2020-08-13', '2000-09-05(威尼斯电影节)', NULL, 0.00, 0, 172, 7, '盖·皮尔斯');
INSERT INTO `movie` VALUES (146, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 170, '真爱至上 Love Actually', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p475600770.jpg', 0, '\n                                　　这是一出10个爱情故事串成的喜剧杂烩：\n                                    ', 8.60, '2020-08-13', '2003-09-07(多伦多电影节)', NULL, 0.00, 0, 171, 1, '休·格兰特');
INSERT INTO `movie` VALUES (147, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 173, '爆裂鼓手 Whiplash', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2220776342.jpg', 0, '\n                                    　　19岁少年安德鲁（迈尔斯·特勒 Miles Teller 饰）成长在单亲家庭，一心想成为顶级爵士乐鼓手。某晚他在学校练习时被魔鬼导师弗莱彻（J·K·西蒙斯 J.K. Simmons 饰）相中，进入正规乐队，同时也开始为追求完美付出代价。安德鲁越是刻苦练习，与外部世界越是隔膜。唯一理解他的是弗莱彻，但后者的暴躁与喜怒无常扭曲了这段师生关系，更让安德鲁耳濡目染，连带自身的性格亦发生变化。最后当安德鲁终于登上纽约音乐厅的舞台，他才惊恐的发现原来弗莱彻一直等着将他打入尘埃......\n                                        ', 8.70, '2020-08-13', '2014-01-16(圣丹斯电影节)', NULL, 0.00, 0, 174, 11, '迈尔斯·特勒');
INSERT INTO `movie` VALUES (148, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 169, '贫民窟的百万富翁 Slumdog Millionaire', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2434249040.jpg', 0, '\n                                　　2006年，印度孟买。\n                                    ', 8.60, '2020-08-13', '2009-03-26(中国大陆)', NULL, 0.00, 0, 170, 1, '戴夫·帕特尔');
INSERT INTO `movie` VALUES (149, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 168, '花样年华 花樣年華', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910828286.jpg', 0, '\n                                　　1960年代的香港，报馆编辑周慕云（梁朝伟 饰）与太太搬进一间住户多是上海人的公寓，和某家日资公司的贸易代表陈先生与太太苏丽珍（张曼玉 饰）成了邻居。因为发现各自在外工作的配偶背着他们有了婚外情，周慕云和苏丽珍开始见面商讨未来可能发生的事情以及相应对策。\n                                    ', 8.70, '2020-08-13', '2000-09-29(中国香港)', NULL, 0.00, 0, 169, 11, '梁朝伟');
INSERT INTO `movie` VALUES (150, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 167, '你的名字。 君の名は。', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2395733377.jpg', 0, '\n                                　　在远离大都会的小山村，住着巫女世家出身的高中女孩宫水三叶（上白石萌音 配音）。校园和家庭的原因本就让她充满烦恼，而近一段时间发生的奇怪事件，又让三叶摸不清头脑。不知从何时起，三叶在梦中就会变成一个住在东京的高中男孩。那里有陌生的同学和朋友，有亲切的前辈和繁华的街道，一切都是如此诱人而真实。另一方面，住在东京的高中男孩立花泷（神木隆之介 配音）则总在梦里来到陌生的小山村，以女孩子的身份过着全新的生活。许是受那颗神秘彗星的影响，立花和三叶在梦中交换了身份。他们以他者的角度体验着对方的人生，这期间有愤怒、有欢笑也有暖心。只是两人并不知道，身份交换的背后隐藏着重大而锥心的秘密……\n                                    ', 8.40, '2020-08-13', '2016-12-02(中国大陆)', NULL, 0.00, 0, 168, 6, '神木隆之介');
INSERT INTO `movie` VALUES (151, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 165, '萤火虫之墓 火垂るの墓', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1157334208.jpg', 0, '\n                                　　美日战争爆发，14岁的清太带着年幼的妹妹到处逃命，当他们到达防空洞的时候，母亲已身受重伤，没过多久便不久人世。两兄妹自此过着相依为命的日子。他们只好投靠了母亲的姐妹，纵使他们把家里所有的家当都送给了阿姨，但当食物吃完，他们就越感到了寄人篱下的感觉，清太决定带着妹妹离开独自生活。火灾硝烟中的生活并不好过，清太为了妹妹四处偷取食物，但妹妹还是严重营养不良……\n                        ', 8.70, '2020-08-13', '1988-04-16(日本)', NULL, 0.00, 0, 166, 6, '辰己努');
INSERT INTO `movie` VALUES (152, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 166, '荒蛮故事 Relatos salvajes', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2584519452.jpg', 0, '\n                                　　《荒蛮故事》是一部黑色喜剧，由6个独立的暴力复仇小故事构成。影片是一次对于人类失控行径的颠覆性创作，从怪异的幽默感，独特的画面和大胆的配乐，到对于身处绝境的普通人这一题材的偏爱，都可以清晰地看到南美鬼才导演达米安·斯兹弗隆与阿莫多瓦在创作方面的相似之处。不过，斯兹弗隆仍然通过这部影片发出了自己独特的声音：一场对于一个腐败成风、经济和社会严重不平等的社会的尖锐抨击。\n                        ', 8.80, '2020-08-13', '2014-05-17(戛纳电影节)', NULL, 0.00, 0, 167, 1, '达里奥·格兰迪内蒂');
INSERT INTO `movie` VALUES (153, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 162, '一个叫欧维的男人决定去死 En man som heter Ove', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2406624993.jpg', 0, '\n                                　　欧维（罗夫·拉斯加德 Rolf Lassgård 饰）是一个刻板而又固执的老头，他的妻子半年前死于疾病，留他一人生活在这个混乱不堪的世界之中。每天早晨，欧维都会定时在社区里进行巡视，确认所有的车辆都停在应停的位置，呵斥违反规定私自驶入社区的车辆，赶走四处乱转破坏环境的猫狗，在社区居民眼里，欧维是“来自地狱的恶邻”，可每个人都明白，这其实是欧维对于社区爱之深刻的表现。\n                                    ', 8.80, '2020-08-13', '2015-12-25(瑞典)', NULL, 0.00, 0, 163, 1, '罗夫·拉斯加德');
INSERT INTO `movie` VALUES (154, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 161, '心迷宫', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2276780256.jpg', 0, '\n                                　　一个想要挣脱父权控制的青年，在一次争执中失手杀死了同村的痞子，被迫逃亡。他没有想过会用这样的方式逃离安逸的生活，离开之际却惊人的发现宿命早已将他和专制的父亲紧紧连接在一起，走或留他都将失去一切。\n                                    ', 8.70, '2020-08-13', '2015-10-16(中国大陆)', NULL, 0.00, 0, 162, 7, '霍卫民');
INSERT INTO `movie` VALUES (155, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 163, '达拉斯买家俱乐部 Dallas Buyers Club', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2166160837.jpg', 0, '\n                                    　　1986年美国达拉斯市，恐同的德州电工罗恩·伍德鲁夫（马修·麦康纳 Matthew McConaughey 饰）发现自己患上“同志病”——艾滋，生命只剩30天。他使用的AZT（叠氮胸苷）是当时美国药管局唯一批准面市的抗艾药物，但毒性极大。为了活下去，罗恩开始研究各种抗艾 处方和替代疗法，甚至走私来自世界各地未经批准的药物。在医生萨克斯（詹妮弗·加纳 Jennifer Garner 饰）和异装癖同性恋雷蒙（杰瑞德·莱托 Jared Leto 饰）的帮助下，罗恩开始成立了一个叫做“达拉斯买家俱乐部”的地下组织，为艾滋病人提供更多“非常规疗法”，很多患病的男同性恋亦求助于他。他的举动自然受到了药管局和药商的阻挠和施压。罗恩最终在1992年9月去世，离他被告知只剩30天可活已经过去了2557天。在这近7年时间里，他坚持不懈的与病魔、与药管局及制药商进行艰苦的...\n                            ', 8.80, '2020-08-13', '2013-09-07(多伦多电影节)', NULL, 0.00, 0, 164, 1, '马修·麦康纳');
INSERT INTO `movie` VALUES (156, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 159, '疯狂原始人 The Croods', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1867084027.jpg', 0, '\n                                    　　原始人咕噜一家六口在老爸Grug（尼古拉斯·凯奇 Nicolas Cage 配音）的庇护下生活。每天抢夺鸵鸟蛋为食，躲避野兽的追击，每晚听老爸叙述同一个故事，在山洞里过着一成不变的生活。大女儿Eep（艾玛·斯通 Emma Stone 配音）是一个和老爸性格截然相反的充满好奇心的女孩，她不满足一辈子留在这个小山洞里，一心想要追逐山洞外面的新奇世界。\n                                        ', 8.70, '2020-08-13', '2013-04-20(中国大陆)', NULL, 0.00, 0, 160, 6, '尼古拉斯·凯奇');
INSERT INTO `movie` VALUES (157, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 158, '纵横四海 緃横四海', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2597918718.jpg', 0, '\n                                　　砵仔糕（周润发饰）、阿占（张国荣饰）和红豆（锺楚红饰）均是孤儿，在养父（曾江饰）栽培下成为国际大盗。长大后成了帮他赚钱的艺术品大盗，而三人同时又认了警察（朱江饰）为干爹。\n                                    ', 8.80, '2020-08-13', '1991-02-02(中国香港)', NULL, 0.00, 0, 159, 1, '周润发');
INSERT INTO `movie` VALUES (158, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 164, '卢旺达饭店 Hotel Rwanda', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p470419493.jpg', 0, '\n                                　　1994年卢旺达宣布独立后，胡图族与图西族两部族之间矛盾重重，多次发生冲突，战事持续不断。胡图族大肆屠杀图西族人，在这种背景下，卢旺达饭店经理保罗一直四面奔走，最终成功挽救了饭店里一千多名图西族和胡图族难民。\n                        ', 8.90, '2020-08-13', '2004-09-11(多伦多电影节)', NULL, 0.00, 0, 165, 12, '唐·钱德尔');
INSERT INTO `movie` VALUES (159, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 160, '三块广告牌 Three Billboards Outside Ebbing, Missouri', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2510081688.jpg', 0, '\n                                　　米尔德雷德（弗兰西斯·麦克多蒙德 Frances McDormand 饰）的女儿在外出时惨遭奸杀，米尔德雷德和丈夫查理（约翰·哈克斯 John Hawkes 饰）之间的婚姻因此走到了尽头，如今，她同儿子罗比（卢卡斯·赫奇斯 Lucas Hedges饰）过着相依为命的生活。一晃眼几个月过去了，案件仍然没有告破预兆，而警方似乎早已经将注意力从案子上转移了开来。\n                                    ', 8.70, '2020-08-13', '2018-03-02(中国大陆)', NULL, 0.00, 0, 161, 10, '弗兰西斯·麦克多蒙德');
INSERT INTO `movie` VALUES (160, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 154, '我是山姆 I Am Sam', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p652417775.jpg', 0, '\n                                　　在星巴克工作的山姆（西恩•潘 Sean Penn 饰），虽已成人，但智力水平只有7岁。一次偶然，他收留了一个流浪女。该女子帮山姆生下了一个女儿后消失得无影无踪。\n                                    ', 8.90, '2020-08-13', '2001-12-03(美国)', NULL, 0.00, 0, 155, 12, '西恩·潘');
INSERT INTO `movie` VALUES (161, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 156, '岁月神偷 歲月神偷', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p659427316.jpg', 0, '\n                                    　　60年代的香港，风云变幻。一面要忍受港英政府的压制，一面又受到内地运动的波及，更要面对不时登陆的台风暴雨。老字号的永利街就处在这样一个风暴的旋涡中心。\n                                        ', 8.70, '2020-08-13', '2010-03-11(中国香港)', NULL, 0.00, 0, 157, 1, '吴君如');
INSERT INTO `movie` VALUES (162, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 157, '头号玩家 Ready Player One', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2516578307.jpg', 0, '\n                                　　故事发生在2045年，虚拟现实技术已经渗透到了人类生活的每一个角落。詹姆斯哈利迪（马克·里朗斯 Mark Rylance 饰）一手建造了名为“绿洲”的虚拟现实游戏世界，临终前，他宣布自己在游戏中设置了一个彩蛋，找到这枚彩蛋的人即可成为绿洲的继承人。要找到这枚彩蛋，必须先获得三把钥匙，而寻找钥匙的线索就隐藏在詹姆斯的过往之中。\n                                    ', 8.70, '2020-08-13', '2018-03-30(中国大陆)', NULL, 0.00, 0, 158, 6, '泰伊·谢里丹');
INSERT INTO `movie` VALUES (163, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 153, '谍影重重3 The Bourne Ultimatum', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p792223507.jpg', 0, '\n                                　　失去了心爱的女人，波恩（马特•戴蒙 饰）面临更为艰难的日子，他努力回忆，却只能在睡梦中被脑海里一知半解的闪回所惊醒，依然无法记起自己的身份。\n                                    ', 8.80, '2020-08-13', '2007-11-15(中国大陆)', NULL, 0.00, 0, 154, 3, '马特·达蒙');
INSERT INTO `movie` VALUES (164, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 155, '哈利·波特与阿兹卡班的囚徒 Harry Potter and the Prisoner of Azkaban', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910812549.jpg', 0, '\n                                　　哈利（丹尼尔·雷德克里夫）即将在霍格沃兹渡过第三个年头，此时在阿兹塔班却传出恶棍小天狼星（加里·奥德曼）越狱的消息。据说小天狼星正是背叛哈利父母的好友，他的教父，而这次小天狼星越狱似乎正是为了找他。哈利的心里悄悄的滋生了为父母报仇的想法，期待着小天狼星的出现。\n                                    ', 8.70, '2020-08-13', '2004-09-10(中国大陆)', NULL, 0.00, 0, 156, 7, '丹尼尔·雷德克里夫');
INSERT INTO `movie` VALUES (165, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 101, '幽灵公主 もののけ姫', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1613191025.jpg', 0, '\n                                　　为了拯救危难中的村民，阿斯达卡的右手中了凶煞神的诅咒。达卡只好离开亲人往西方流浪以寻找解除诅咒的方法。旅途中他遇到了由幻姬大人带领的穷苦村民在麒麟兽的森林里开采铁矿，提炼矿石。 白狼神莫娜和她养大的人类女孩“幽灵公主”桑对幻姬恨之入骨，因为她们觉得幻姬带领众人破坏了森林。想帮助人类的阿斯达卡被桑深深吸引，他理解她，但为了帮助穷人又不得不和她作战。一次战斗中，阿斯达卡被麒麟兽所救，他的立场更加摇摆不定。 这时，以疙瘩和尚为首的一群人来杀麒麟兽，幻姬以火枪击毙了麒麟，麒麟的头被疙瘩和尚抢走。愤怒的麒麟的灵魂为夺回自己的头，大肆破坏着森林。阿斯达卡和桑联手决定帮麒麟夺回头颅。\n                        ', 8.90, '2020-08-13', '1997-07-12(日本)', NULL, 0.00, 0, 102, 6, '松田洋治');
INSERT INTO `movie` VALUES (166, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 176, '黑客帝国3：矩阵革命 The Matrix Revolutions', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2220873438.jpg', 0, '\n                                    　　第二集中，尼奥（基努·里维斯 Keanu Reeves 饰）没有能从内部摧毁“母体”，他的身体在真实世界的飞船上陷于昏迷，思想却被困在介于“母体”和真实世界的中间地带，这个地方由“火车人”控制。墨菲斯（劳伦斯·菲什伯恩 Laurence Fishburne 饰）和崔妮蒂（凯瑞-安·莫斯 Carrie-Anne Moss 饰）等人知道了尼奥的情况，在守护天使的带领下， 找到了“火车人”的控制者梅罗纹奇，经过一番激斗，将尼奥救了出来。\n                                        ', 8.80, '2020-08-13', '2003-11-05(美国/中国大陆)', NULL, 0.00, 0, 177, 3, '基努·里维斯');
INSERT INTO `movie` VALUES (167, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 151, '七武士 七人の侍', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2215886505.jpg', 0, '\n                                　　日本战国时代，一小山村面临着山贼的威胁，为了保护秋天的收成，村中长老决定让去请武士来保护村子安全，但只能拿出的报酬是一天三顿的白米饭。在城里，他们遭到了武士白眼甚至被打。直到勘兵卫（志村乔饰）的出现，他现今已沦为浪人，几经考虑最后答应了。他对农民说至少需要七名武士，于是久藏（宫口精二饰）、胜四郎（木村功饰）、五郎（稻叶义男饰）、七郎（加东大介饰）、平八（千秋实饰）和菊千代（三船敏郎饰）等六人也加入了队伍，七个人肩负保卫村子的任务。\n                                    ', 9.20, '2020-08-13', '1954-04-26(日本)', NULL, 0.00, 0, 152, 12, '三船敏郎');
INSERT INTO `movie` VALUES (168, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 152, '英雄本色', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2504997087.jpg', 0, '\n                                　　香港某个国际伪钞集团重要分子宋子豪（狄龙 饰）和Mark（周润发 饰）情同手足，某次宋子豪带手下谭成（李子雄 饰）去台北交易时被其出卖受枪伤被捕入狱，为替好兄弟报仇，Mark孤身赴台，结果被人打成瘸子，江湖地位自此一落千丈，而宋子豪的父亲也在不久丧命。 一向视宋子豪为偶像的宋子杰（张国荣 饰）得知哥哥的真实身份后，对黑社会及他恨之入骨，立誓利用警察身份将黑帮势力斩草除根，宋子豪出狱后不顾苦等他想重创辉煌的Mark的劝阻，决心弃暗投明，无奈得不到宋子杰的谅解。而此时已成帮会老大的谭成欲找宋子豪再合作，遭拒绝后放言会害宋子杰，被逼走投无路，宋子豪决定再与Mark连手共抗强敌。\n                        ', 8.70, '2020-08-13', '1986-08-02(中国香港)', NULL, 0.00, 0, 153, 3, '周润发');
INSERT INTO `movie` VALUES (169, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 126, '驯龙高手 How to Train Your Dragon', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2210954024.jpg', 0, '\n                                　　维京岛国的少年小嗝嗝（杰伊•巴鲁切尔 Jay Baruchel 配音）是部落统领伟大的斯托里克（杰拉德·巴特勒 Gerard Butler 配音）的儿子，他非常想像自己的父亲一样亲手屠龙——这些飞龙是岛上维京人放牧羊群的主要天敌——但他每次出现在部落屠龙的战斗中都只给大家徒增烦恼。在一次对抗飞龙的战斗中，希卡普偷偷用射龙器击伤了一只最神秘的“夜之怒龙”，并背着族人放生、豢养，甚至驯服了这只龙，还给它起名“无牙”。希卡普的神秘行径引起了一同训练屠龙技巧的女孩阿斯特丽德（亚美莉卡·费雷拉 America Ferrera 配音）的怀疑。阿斯特丽德发现了希卡普的秘密，却同时被身骑“无牙”御风而飞的美妙体验所震撼。格雷决定在屠龙成人礼上向远征归来的斯托里克和族人讲明真相，说服大家放弃屠龙，却偏偏弄巧成拙，害得“无牙”被俘，一场更大的灾难就在眼前……\n                        ', 8.70, '2020-08-13', '2010-05-14(中国大陆)', NULL, 0.00, 0, 127, 6, '杰伊·巴鲁切尔');
INSERT INTO `movie` VALUES (170, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 236, '小萝莉的猴神大叔 Bajrangi Bhaijaan', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2510956726.jpg', 0, '\n                                　　电影讲述了一个拥有虔诚宗教信仰的单纯印度男人帮助巴基斯坦哑女与父母重聚的故事。印度教教徒帕万（萨尔曼·汗 饰）在一次机缘巧合下结识了与母亲走失并有语言障碍的穆斯林小女孩沙希达（哈尔莎莉·马尔霍特 饰）。在得知沙希达是巴基斯坦人后，帕万决定帮助她回家，可在回巴基斯坦途中却四处碰壁，遭遇领事馆冲突、被旅游局欺骗之后，帕万立志将不惜一切代价尽其所能带沙希达回到自己的家乡与家人团聚。\n                        ', 8.40, '2020-08-13', '2018-03-02(中国大陆)', NULL, 0.00, 0, 237, 1, '萨尔曼·汗');
INSERT INTO `movie` VALUES (171, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 240, '东京物语 東京物語', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1925331564.jpg', 0, '\n                                　　儿女们都大了，各自成家。父亲周吉（笠智众饰）和老伴（东山千荣子饰）要去东京看望他们，老两口带着愉快心情上路。可另一边，还没等他们到大儿子家，孙子就因为爷爷奶奶到来腾地方哭闹不停。老人开始觉得尴尬，大儿子幸一（山村聪饰）在东京当医生，二女儿繁（杉村春子饰）在东京开美容店，二儿媳纪子（原节子饰），小女儿京子（香川京子饰）外，大阪还有三子敬三。\n                                    ', 9.20, '2020-08-13', '1953-11-03(日本)', NULL, 0.00, 0, 241, 1, '笠智众');
INSERT INTO `movie` VALUES (172, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 237, '驴得水', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2393044761.jpg', 0, '\n                                　　一群“品行不端”却怀揣教育梦想的大学教师，从大城市来到偏远乡村开办了一所小学校。学校待遇惨淡、生活艰苦，但老师们都自得其乐，每天嘻嘻哈哈打成一片。然而教育部特派员要来突击检查的消息打破了安宁，因为学校有一位“驴得水老师”隐藏着不可告人的秘密。就在所有人都担心丑事即将败露的时候，一个神奇天才的出现拯救了大家，然而谁能料到真正的麻烦才刚刚开始……\n                        ', 8.40, '2020-08-13', '2016-10-28(中国大陆)', NULL, 0.00, 0, 238, 1, '任素汐');
INSERT INTO `movie` VALUES (173, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 235, '浪潮 Die Welle', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1344888983.jpg', 0, '\n                                　　赖纳•文格尔（Jürgen Vogel 饰）是德国某所高中的老师，该学校正在进行“国家体制”的主题活动周。由于他最喜欢的“无政府主义”课被另一位老师捷足先登，因此他只能主讲“独裁统治”课程。\n                                    ', 8.70, '2020-08-13', '2008-03-13(德国)', NULL, 0.00, 0, 236, 1, '于尔根·福格尔');
INSERT INTO `movie` VALUES (174, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 234, '朗读者 The Reader', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1140984198.jpg', 0, '\n                                    　　15岁的少年米夏·伯格（大卫·克劳斯 David Kross 饰）偶遇36岁的中年神秘女列车售票员汉娜（凯特·温丝莱特 Kate Winslet 饰），后来两个发展出一段秘密的情人关系。汉娜最喜欢躺在米夏怀里听米夏为他读书，她总是沉浸在那朗朗的读书声中。年轻的米夏沉溺于这种关系不能自拔的同时，却发现他自己根本不了解汉娜。忽然有一天，这个神秘女人不告而别，米夏在短暂的迷惑和悲伤之后，开始了新的生活。\n                                        ', 8.60, '2020-08-13', '2008-12-10(纽约首映)', NULL, 0.00, 0, 235, 11, '凯特·温丝莱特');
INSERT INTO `movie` VALUES (175, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 239, '再次出发之纽约遇见你 Begin Again', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2250287733.jpg', 0, '\n                                　　格雷塔（凯拉·奈特莉 Keira Knightley 饰）抛弃了一切跟随着男友戴夫（亚当·李维 Adam Levine 饰）来到美国纽约实现他们的音乐和爱情梦想，没想到曾经幻想过的美好一切化作泡影，在获得了更好的工作机会后，戴夫果断抛弃了格雷塔，留下她一人苦苦在底层挣扎。\n                                    ', 8.60, '2020-08-13', '2015-06-26(中国大陆)', NULL, 0.00, 0, 240, 2, '凯拉·奈特莉');
INSERT INTO `movie` VALUES (176, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 241, '聚焦 Spotlight', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2263822658.jpg', 0, '\n                                　　“聚焦”是波士顿环球报的一个专栏，罗比·罗宾森（迈克尔·基顿饰）是\"聚焦\"栏目的编辑，栏目拥有一个独立的调查小组，组员包括萨夏·菲弗（瑞秋·麦克亚当斯饰），迈克尔（马克·鲁弗洛饰），马特·卡罗尔（布莱恩·达西·詹姆斯饰）。当马蒂·巴伦（列维·施瑞博尔饰）接替了环球报的总编辑一职，他开始指派罗宾森和他的团队，紧跟一桩被雪藏已久的案件，一个天主教牧师性骚扰教区里的孩子。虽然最开始他们以为这只是个小任务，但很快他们就发现，其背后还隐藏一系列事件，涉及了上百名受害者，而教会已经私下赔偿了受害者，并派人掩盖了这些罪行。随着调查的越发深入，他们发现这一阴谋的更多证据，不仅仅是神职人员，就在波士顿以外，甚至全世界，都在上演着这种暴行。罗宾森和他的团队遭遇到了当地官员们的掣肘。教会内的，教会外的势力都在向他们施压，想让他们放弃这个案件。\n                        ', 8.80, '2020-08-13', '2015-09-03(威尼斯电影节)', NULL, 0.00, 0, 242, 1, '马克·鲁弗洛');
INSERT INTO `movie` VALUES (177, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 231, '彗星来的那一夜 Coherence', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2187896734.jpg', 0, '\n                                　　在一个静得有些诡异阴森的夜晚，年轻女子艾米丽（艾米丽·芭尔多尼 Emily Baldoni 饰）驱车来到朋友家参加聚会。此前她一边开车一边和男友打电话，然而通话突然中断，她的手机屏也莫名其妙出现裂痕。这一事件让艾米丽的心中升起隐隐不安，因为当晚一颗彗星刚好接近地球，一个 很久之前听过的传说使她对彗星的到来有着不祥的预感。稍后，朋友们落座，大家彼此交谈，叙说近况，虽然言语中有着许多莫名其妙、蹊跷反常的线索，然而均被一带而过。突然间，灯光尽灭。当光明重新来临时，众人发现附近只有一户人家还在亮灯，而亮灯人家里坐着的竟是……\n                                    ', 8.50, '2020-08-13', '2013-09-19(奇幻电影节)', NULL, 0.00, 0, 232, 5, '艾米丽·芭尔多尼');
INSERT INTO `movie` VALUES (178, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 238, '波西米亚狂想曲 Bohemian Rhapsody', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2549558913.jpg', 0, '\n                                　　本片是对皇后乐队、传奇主唱弗雷迪·莫库里以及他们音乐的致敬盛宴，这是一段充满爱、痛苦、接纳和音乐的旅程。\n                                    ', 8.70, '2020-08-13', '2019-03-22(中国大陆)', NULL, 0.00, 0, 239, 11, '拉米·马雷克');
INSERT INTO `movie` VALUES (179, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 232, '哈利·波特与火焰杯 Harry Potter and the Goblet of Fire', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2220723219.jpg', 0, '\n                                　　这是一个不同寻常的学期，魔法学校的盛事：三强争霸赛在霍格沃茨举行。学生们争先报名，希翼获得永恒无上的荣誉。火焰杯在选出三所学校的三名勇士后，竟将未足年龄的哈利也挑选出来。\n                                    ', 8.50, '2020-08-13', '2005-11-18(中国大陆)', NULL, 0.00, 0, 233, 7, '丹尼尔·雷德克里夫');
INSERT INTO `movie` VALUES (180, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 229, '谍影重重 The Bourne Identity', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1597183981.jpg', 0, '\n                                　　杰森·伯恩（马特·达蒙 饰）在意大利被人从海上救起，他失去了记忆，除了臀部的瑞士银行帐号之外，他完全没有办法证明自己的身份。\n                                    ', 8.60, '2020-08-13', '2002-11-21(中国大陆)', NULL, 0.00, 0, 230, 3, '马特·达蒙');
INSERT INTO `movie` VALUES (181, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 228, '疯狂的麦克斯4：狂暴之路 Mad Max: Fury Road', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2236181653.jpg', 0, '\n                                　　未来世界，水资源短缺引发了连绵的战争。人们相互厮杀，争夺有限的资源，地球变成了血腥十足的杀戮死战场。面容恐怖的不死乔在戈壁山谷建立了难以撼动的强大武装王国，他手下的战郎驾驶装备尖端武器的战车四下抢掠，杀伐无度，甚至将自己的孩子打造成战争机器。在最近一次行动中，不死乔的得力战将弗瑞奥萨（查理兹·塞隆 Charlize Theron 饰）带着生育者们叛逃，这令不死乔恼羞成怒，发誓要追回生育者。经历了激烈的追逐战和摧毁力极强的沙尘暴，弗瑞奥萨和作为血主的麦克斯（汤姆·哈迪 Tom Hardy 饰）被迫上路，而身后不仅有不死乔的追兵，还有汽油镇、子弹农场的重兵追逐。\n                                    ', 8.60, '2020-08-13', '2015-05-14(澳大利亚)', NULL, 0.00, 0, 229, 3, '汤姆·哈迪');
INSERT INTO `movie` VALUES (182, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 230, '步履不停 歩いても 歩いても', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p926535516.jpg', 0, '\n                                　　“人生路上步履不停，为何总是慢一拍”。\n                                    ', 8.80, '2020-08-13', '2008-06-28(日本)', NULL, 0.00, 0, 231, 1, '阿部宽');
INSERT INTO `movie` VALUES (183, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 227, '战争之王 Lord of War', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p792282381.jpg', 0, '\n                                　　本来美国移民尤瑞（尼古拉斯•凯奇 Nicolas Cage 饰）的家族生意是开饭馆。但是一个偶然的机会令他踏入了军火生意的大门，从此开始了贩卖武器的“职业生涯”。尤瑞遇事机智，胆大心细，这不仅让他成功俘获了美女埃娃的心，还使得他在地下军火生意中愈战愈勇。但是，不顺心的事情也随之而来：出现了生意上的死对头和一名老是盯着他的国际警察；弟弟染上毒瘾，并在一单生意交易中丧了命，而且，尽管他在竭力维护自己在家庭里的正义形象，但却掩盖不了真相。尤瑞开始反省自己生意的正义性，拷问自己的良心，但一切太迟，他已经众叛亲离……\n                        ', 8.60, '2020-08-13', '2005-09-16(美国)', NULL, 0.00, 0, 228, 13, '尼古拉斯·凯奇');
INSERT INTO `movie` VALUES (184, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 233, '猜火车 Trainspotting', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p513567548.jpg', 0, '\n                                    　　苏格兰爱丁堡，雷登（伊万·麦克格雷格 Ewan McGregor 饰）、土豆（艾文·布莱纳 Ewen Bremner 饰）和病仔（约翰尼·李·米勒 Jonny Lee Miller 饰）三个青年过着混沌糜烂的生活，他们吸毒、滥交、诈骗无所不作，而在如此肆无忌惮挥霍青春的过程中，毒品成为一切万恶之源。雷登对之亦爱亦恨，试图戒毒却最终重蹈覆辙。在一次纵情狂欢后，他们三个不知谁和少女爱丽森（Susan Vidler 饰）所生的婴儿死去。以此为开端，噩梦真正降临。土豆抢劫时锒铛入狱，雷登吸食毒品过量被送往医院抢救，后被强制戒毒。恐怖的幻觉和心底生气的恐惧迫使他不得不和毒品一刀两断。看似美好的新生活，但往日狐朋狗友贝格比（罗伯特·卡莱尔 Robert Carlyle 饰）等找上门来，再度给他带来无限的烦恼……\n                                        ', 8.50, '2020-08-13', '1996-02-23(英国)', NULL, 0.00, 0, 234, 1, '伊万·麦克格雷格');
INSERT INTO `movie` VALUES (185, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 226, '九品芝麻官', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p648370300.jpg', 0, '\n                                　　包龙星（周星驰 饰）用钱买来了一个候补知县的职位，可是为人贪婪，县上的人都对他痛恨之极。在他代替正式知县的时候，戚家媳妇戚秦氏（张敏 饰）遭到了常威( 邹兆龙 饰 )的强暴，后来常威动了杀机把戚家上下都杀害了，更嫁祸于戚秦氏。常威是水师提督大人的儿子，请来大状方唐镜（吴启华 饰），收买了所有证人以便洗脱罪名。包龙星虽然极力寻找证据，也被迫害至落难他乡。他决定要上京告御状，后来他因没钱不得不在妓院打工，向老板娘学习了一身斗嘴的好功夫。他在妓院里误打误撞认识了皇上，帮助皇上有功他被封了大官，重审戚家被害的案件。他凭着聪慧与口才，全力为戚秦氏讨回公道。\n                        ', 8.50, '2020-08-13', '1994-03-31(中国香港)', NULL, 0.00, 0, 227, 2, '周星驰');
INSERT INTO `movie` VALUES (186, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 225, '地球上的星星 Taare Zameen Par', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1973489335.jpg', 0, '\n                                　　对于8岁的男孩伊夏（达席尔·萨法瑞 Darsheel Safary 饰）来说，世界是充满了惊奇和快乐的万花筒，他正在用一切他能够想到的方式和这个陌生的世界进行着交流，同时也充分的享受着大地万物慷慨的赠与。可是，这样的伊夏却是成年人眼中的问题儿童，他的成绩不好，在班上的排名靠后， 脑子里还充满了各种匪夷所思的鬼点子，在又一次闯下大祸后，忍无可忍的父母将他送往了寄宿学校。\n                                    ', 8.90, '2020-08-13', '2007-12-21(印度)', NULL, 0.00, 0, 226, 1, '达席尔·萨法瑞');
INSERT INTO `movie` VALUES (187, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 224, '香水 Perfume: The Story of a Murderer', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2441127736.jpg', 0, '\n                                　　十八世纪，让-马普蒂斯特•格雷诺耶（本•韦肖 Ben Whishaw 饰）出生在巴黎最肮脏、最恶臭不堪的地方——鱼市场上。格雷诺耶天生对气味有着惊人的天赋：无论恶臭还芳香，他都一一记住，并能轻易分辨各种气味。\n                                    ', 8.50, '2020-08-13', '2006-09-07(德国)', NULL, 0.00, 0, 225, 1, '本·卫肖');
INSERT INTO `movie` VALUES (188, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 223, '谍影重重2 The Bourne Supremacy', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p667644866.jpg', 0, '\n                                　　经过上一集的腥风血雨之后，伯恩（马特·达蒙 饰）和女朋友玛丽（弗兰卡·泼坦特 饰）隐居在印度偏僻的海边小镇，想忘记以前的生活。一天，神秘组织的杀手来到小镇，打破了伯恩二人世界的宁静，女友玛丽在逃亡途中被枪杀。\n                                    ', 8.70, '2020-08-13', '2004-11-14(中国大陆)', NULL, 0.00, 0, 224, 8, '马特·达蒙');
INSERT INTO `movie` VALUES (189, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 220, '遗愿清单 The Bucket List', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1208653481.jpg', 0, '\n                                　　老富翁爱德华•科尔（杰克•尼克尔森 Jack Nicholson 饰）近年来在公立医院的私有化改造事业中获利颇丰，他为节省成本，规定病房“一房两床”的做法颇受非议，但性格强势的科尔不以为意，岂料他不久被检查出罹患癌症，本欲入住单人病房的科尔在舆论压力下只得与另一位病人——老卡特（摩根•弗里曼 Morgan Freeman 饰）同处一室。汽车修理技师老卡特博闻强识，将三个子女培养成才，但代价是牺牲了年轻时要做历史教授的梦想。曾经结婚多次如今却孤身一人的科尔逐渐对卡特产生了兴趣，两位老人在病房中结下了友谊。科尔偶然发现了卡特的“遗愿清单”，他决定运用自己的力量，让那些纸面上的疯狂构想一一实现，去发现人生的真正意义……\n                        ', 8.60, '2020-08-13', '2007-12-25(多伦多电影节)', NULL, 0.00, 0, 221, 1, '杰克·尼科尔森');
INSERT INTO `movie` VALUES (190, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 219, '阿飞正传 阿飛正傳', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2525770523.jpg', 0, '\n                                　　1960年代的香港，因生母在阿飞旭仔（张国荣）长大成人过程中的缺失，他把自己优雅地比喻为“无根鸟”，对生命中遇到的每一个女人都表现得放荡不羁，售票员苏丽珍（张曼玉）和舞女咪咪（刘嘉玲）先后令他感受过温暖，可是她们也只能当当小情人。为摆脱沉重和无力感，旭仔抛下一切去南洋找寻生母。\n                                    ', 8.50, '2020-08-13', '1990-12-15(中国香港)', NULL, 0.00, 0, 220, 13, '张国荣');
INSERT INTO `movie` VALUES (191, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 218, '完美陌生人 Perfetti sconosciuti', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2522331945.jpg', 0, '\n                                　　三对处于各个婚姻阶段的伴侣和一个宅男，七人聚在一起吃晚餐。女主人提议下拍板决定当夜所有人分享每一个电话、每一条短信、邮件的内容,由此许多秘密开始不再是秘密，他们之间的关系也开始发生波动。无数疮痍在这场“坦白局”中被揭开，复杂的男女情感让所有人陷入困局，什么是婚姻感情中最不可触碰的底线？众人遭遇是难言的禁忌还是隐藏的真心，月食过后，谎言能否继续？\n                        ', 8.50, '2020-08-13', '2018-05-25(中国大陆)', NULL, 0.00, 0, 219, 1, '马可·贾利尼');
INSERT INTO `movie` VALUES (192, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 217, '源代码 Source Code', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p988260245.jpg', 0, '\n                                    　　在阿富汗执行任务的美国空军飞行员科特史蒂文斯上尉（杰克·吉伦哈尔 Jake Gyllenhaal 饰）突然惊醒，发现自己在一辆高速行驶的列车上，而他的身边坐着一个素不相识的女子克里斯蒂安（米歇尔·莫娜汉 Michelle Monaghan 饰）正在与自己讲话。科尔不知自己为什么会在这辆车上，而且他发现自己居然是以另一个人的身份存在，正当他迷惑不解的时候，列车上忽然发生爆炸……\n                                        ', 8.40, '2020-08-13', '2011-08-30(中国大陆)', NULL, 0.00, 0, 218, 5, '杰克·吉伦哈尔');
INSERT INTO `movie` VALUES (193, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 222, '大佛普拉斯', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505928032.jpg', 0, '\n                                　　菜埔（庄益增 饰）是一家雕塑厂的夜间保安，家中有一位重病的老母亲需要照顾。肚财（陈竹昇 饰）是菜埔唯一的朋友，菜埔经常在值夜班的时候把肚财叫过来和他作伴。一天，两人突发奇想决定看一看菜埔的老板黄启文（戴立忍 饰）的行车记录仪里记录了哪些影像，希望向来风流的老板能够贡献出一些精彩的片段以解两个独身男人内心里的寂寞之苦。\n                                    ', 8.70, '2020-08-13', '2017-10-13(中国台湾)', NULL, 0.00, 0, 223, 1, '庄益增');
INSERT INTO `movie` VALUES (194, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 221, '血钻 Blood Diamond', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1244017073.jpg', 0, '\n                                　　九十年代非洲塞拉利昂，连连战火使这片土地饱受摧残，非法钻石贸易日益猖獗。\n                                    ', 8.70, '2020-08-13', '2006-12-08(美国)', NULL, 0.00, 0, 222, 12, '莱昂纳多·迪卡普里奥');
INSERT INTO `movie` VALUES (195, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 215, '青蛇', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1616799505.jpg', 0, '\n                                　　南宋是一个人妖难分的时期，法海和尚（赵文卓 饰）到处收服妖精，也扰乱了在西湖底修炼的白青二蛇。青（张曼玉 饰）曾获白（王祖贤 饰）相救，二者便以姐妹相称。姐妹俩受惑佯装成人生活在民间，白更嫁于老实书生许仙，青也同时看上了许仙，便常常以媚态勾引许仙，无奈许仙只深爱白一个。白开设了药店，以为可以自此过上安定的生活，可许仙却受不了青的百般挑逗，更发现了青白二蛇的真实身份，可他却不舍得离开家中的天姿国色。法海得知了青白二蛇的下落，更抓走了许仙。原来白为了爱情放弃修成正果，更怀有了身孕。为了救回丈夫，二蛇与法海展开了搏斗……\n                        ', 8.50, '2020-08-13', '1993-11-04(中国香港)', NULL, 0.00, 0, 216, 4, '张曼玉');
INSERT INTO `movie` VALUES (196, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 214, '新龙门客栈 新龍門客棧', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1421018669.jpg', 0, '\n                                　　宦官专权的明朝中叶，东厂曹少钦（甄子丹）假造圣旨杀害了忠良杨宇轩，并想斩草除根杀死其后代。侠女邱莫言（林青霞）、江湖义士贺虎等人冒死救出忠良后代后，逃至边关沙漠里的龙门客栈，与杨宇轩部下周淮安（梁家辉）会合。龙门客栈实则黑店，老板娘金镶玉（张曼玉）利用乱世，以美貌和风骚 作诱饵杀人越货聚敛钱财，但她却为英俊潇洒的周淮安动了真心。为了摸清潜藏于龙门客栈中的出关暗道，周淮安将计就计，答应与金镶玉成亲。\n                                    ', 8.60, '2020-08-13', '1992-08-27(中国香港)', NULL, 0.00, 0, 215, 3, '张曼玉');
INSERT INTO `movie` VALUES (197, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 216, '无耻混蛋 Inglourious Basterds', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2575043939.jpg', 0, '\n                                    　　故事分五章进行。二战中德占法国，德军上校汉斯（克里斯托弗·瓦尔兹 Christoph Waltz 饰）号称“犹太猎人”，在一次屠犹行动中，少女苏珊娜（梅勒尼·劳伦特 Mélanie Laurent 饰）侥幸逃脱。与此同时，八名美国犹太士兵在中尉奥尔多（布拉德·皮特 饰） 的带领下潜入德占法国刺杀德国军人，其行动神出鬼没，手法残忍，对德军造成相当威胁，被称为“杂种”。三年后苏珊娜来到巴黎继承了姑母的电影院，结识了德国战斗英雄，电影《国家荣耀》的主演弗里德里克（丹尼尔·布鲁赫 Daniel Brühl 饰）。对苏珊娜一见钟情的弗里德里克说服德国宣传部长约瑟夫·戈培尔（西尔维斯特·格洛斯 Sylvester Groth 饰）在苏珊娜的影院首映《国家荣耀》，希特勒（马丁·乌特克 Martin Wuttke 饰）本人也将出席。苏珊娜决定借放映之机烧毁影院；而在...\n                            ', 8.60, '2020-08-13', '2009-05-20(戛纳电影节)', NULL, 0.00, 0, 217, 1, '布拉德·皮特');
INSERT INTO `movie` VALUES (198, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 212, '牯岭街少年杀人事件 牯嶺街少年殺人事件', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p848381236.jpg', 0, '\n                                　　结识小明（杨静怡）前，小四（张震）是典型的乖仔，是父母的希望和兄妹的骄傲（一家人指望他考上名牌大学将来提升全家的社会地位），他有一个喜欢摇滚乐的自称“小猫王（王启赞）”的好友，两人虽会去树林看人幽会，但过的是与周围诸多在“小公园”混的少年人完全两样的生活。\n                                    ', 8.80, '2020-08-13', '1991-07-27(中国台湾)', NULL, 0.00, 0, 213, 9, '张震');
INSERT INTO `movie` VALUES (199, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 211, '穿越时空的少女 時をかける少女', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2079334286.jpg', 0, '\n                                　　17岁少女绀野真琴是一个活泼跳脱的少女。在一次普通值日工作中，真琴不小心摔倒了，自此她发现自己拥有了穿越时空的能力。她兴奋不已，掌握了穿越时空的方法后，她经常用这个方法去解决生活中许多令她困扰十分的事。\n                                    ', 8.60, '2020-08-13', '2006-07-15(日本)', NULL, 0.00, 0, 212, 7, '仲里依纱');
INSERT INTO `movie` VALUES (200, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 213, '色，戒', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p453716305.jpg', 0, '\n                                　　本是岭南大学学生的王佳芝（汤唯 饰）因战争辗转到了香港读书，她在香港大学加入了爱国青年邝裕民（王力宏 饰）组织的话剧组，他们主演的爱国话剧更激起了他们的爱国情操。当邝裕民得知汪伪政府的特务头子易先生（梁朝伟 饰）正在香港的时候，他们便密谋要刺杀易先生。化名“麦太太”的王佳芝很快得到了易太太（陈冲 饰）的信任与喜爱，同时美丽的“麦太太”也吸引了易先生的眼球，正当事情进行得如火如荼之际，易先生突然要回到上海去。\n                                    ', 8.50, '2020-08-13', '2007-09-24(中国台湾)', NULL, 0.00, 0, 214, 12, '梁朝伟');
INSERT INTO `movie` VALUES (201, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 209, '燃情岁月 Legends of the Fall', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1023654037.jpg', 0, '\n                                    　　辽阔的西部草原住着一位父亲和他的三个儿子——父亲是退了休的骑兵上校，三个儿子个性鲜明：大儿子艾尔弗莱德（艾丹•奎因 Aidan Quinn  饰）忠厚老实，二儿子特里斯坦（布拉德•皮特 Brad Pitt 饰）狂放不羁，最小的儿子塞缪尔（亨瑞•托马斯Henry Thomas饰）温文尔雅。\n                                        ', 8.80, '2020-08-13', '1994-12-16(美国)', NULL, 0.00, 0, 210, 11, '布拉德·皮特');
INSERT INTO `movie` VALUES (202, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 210, '城市之光 City Lights', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2170238828.jpg', 0, '\n                                　　他是一个流浪汉（查理·卓别林 Charles Chaplin 饰），身无分文，遇上了双目失明的卖花女，却不忍袖手旁观。他想尽办法去凑够费用，供卖花女治病。一天，他搭救了一个富翁，富翁当晚和他称兄道弟，第二天却翻脸不认人。本来打算向他求助的主意行不通了。流浪汉去参加拳击比 赛，以图获得奖金，却输得一败涂地。谁知这时重遇富翁，二人不计前嫌，富翁答应出钱资助卖花女。在交给流浪汉1000元后，富翁遭到偷袭，身上剩下的钱被强盗抢走。流浪汉奋不顾身去追赶，却因为误会被警察押回警局坐牢。另一方面，卖花女凭借流浪汉的资助重获光明，开了一家体面的花店。\n                        ', 9.30, '2020-08-13', '1931-01-30(洛杉矶首映)', NULL, 0.00, 0, 211, 1, '查理·卓别林');
INSERT INTO `movie` VALUES (203, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 208, '2001太空漫游 2001: A Space Odyssey', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2560717825.jpg', 0, '\n                                　　这部影片是库布里克花了四年时间制作的充满哲学命题的鸿篇巨制。一块大黑石树立在史前人类的面前，他们刚刚开始认识工具，进入到进化的里程碑。同样的黑石还在宇宙多处出现，它们矗立在月球上，漂浮在太空中，带着某种神秘的寓意。\n                                    ', 8.80, '2020-08-13', '1968-04-02(华盛顿首映)', NULL, 0.00, 0, 209, 5, '凯尔·杜拉');
INSERT INTO `movie` VALUES (204, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 207, '可可西里', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2414771522.jpg', 0, '\n                                　　尕玉（张磊 饰）本来是个警察，为了调查藏羚羊猎杀状况，他假扮记者身份，随考察团来到可可西里——那里气候寒冷、空气稀薄，含氧量极低。就在这个人类生存的“禁区”，尕玉目睹了一幕幕人性的贪婪以及人类与环境的狂暴冲突。首先是藏羚羊保护站的巡山队员被盗猎人枪杀，接下来他们见到了悲惨的一幕：盗猎者逃走，只留下众多只剩嶙峋白骨的藏羚羊。巡山队员在恶劣的环境中追捕凶手，最终只夺回了一部份的藏羚羊皮毛。一方面要与恶劣的自然环境抗争、另一方面还要与凶残的盗猎者周旋，巡山队员和尕玉面临着生死考验。\n                        ', 8.80, '2020-08-13', '2004-10-01(中国大陆)', NULL, 0.00, 0, 208, 1, '多布杰');
INSERT INTO `movie` VALUES (205, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 206, '魂断蓝桥 Waterloo Bridge', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2351134499.jpg', 0, '\n                                　　第一次世界大战期间，回国度假的陆军中尉罗伊（罗伯特·泰勒）在滑铁卢桥上邂逅了舞蹈演员玛拉（费雯·丽），两人彼此倾心，爱情迅速升温。就在两人决定结婚之时，罗伊应招回营地，两人被迫分离。由于错过剧团演出，玛拉被开除，只能和好友相依为命。\n                                    ', 8.80, '2020-08-13', '1940-05-17(美国)', NULL, 0.00, 0, 207, 1, '费雯·丽');
INSERT INTO `movie` VALUES (206, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 204, '初恋这件小事 สิ่งเล็กเล็กที่เรียกว่า...รัก', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1505312273.jpg', 0, '\n                                　　初中生小水相貌平平，家境一般，所以在学校里并不受重视。但是她心地善良，又有一群死党，日子过得倒也开心。某天，她遇见了帅气的学长阿亮（马里奥·毛瑞尔 Mario Maurer 饰），春心萌动，无 法遏制。她喜欢看他踢足球，看他拍照，如痴如狂。上英语课时，她不停地给死党传纸条 表达对阿亮的爱慕。然而，英语老师则指出她除了英语一无是处。回到家，叔叔从美国捎来了父亲的消息，说如果她能考全校第一，就可以去美国。于是，她按下决心要努力加油。某天，小水等人在买饮料时，碰到篮球队员蛮横插队。阿亮挺身而出，为她们教训了对方，并挨了校长的责骂。小水也第一次听说，阿亮的父亲因为射失点球而退役的事情，理解了他心中的隐痛。由于舞蹈队是给美女准备的，所以小水等一干姐妹准备在话剧社大展身手，没想到学长也来到这个社团。两人还扮演王子公主，他们的恋情会由此展开么？……\n                        ', 8.40, '2020-08-13', '2012-06-05(中国大陆)', NULL, 0.00, 0, 205, 4, '平采娜·乐维瑟派布恩');
INSERT INTO `movie` VALUES (207, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 203, '终结者2：审判日 Terminator 2: Judgment Day', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p1910909085.jpg', 0, '\n                                　　上一部中，超级电脑“天网”阻止人类抵抗领袖约翰·康纳诞生的行动失败，时隔13年后，在“审判日”到来之前，“天网”派出了更加先进的生化机器人T-1000（罗伯特·帕特里克 饰）从公元2029年回到洛杉矶追杀已经长大的约翰，与此同时，约翰也派出了机器人T-800（阿诺· 施瓦辛格 饰）回去保护年幼的自己。\n                                    ', 8.70, '2020-08-13', '1991-07-03(美国)', NULL, 0.00, 0, 204, 3, '阿诺·施瓦辛格');
INSERT INTO `movie` VALUES (208, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 205, '海洋 Océans', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2173334947.jpg', 0, '\n                                　　《海洋》耗时五年，耗资5000万欧元，动用12个摄制组、70艘船，在全球50个拍摄地，有超过100个物种被拍摄，超过500小时的海底世界及海洋相关素材，是史上投资最大的纪录片。\n                                    ', 9.10, '2020-08-13', '2011-08-12(中国大陆)', NULL, 0.00, 0, 206, 1, '皮尔斯·布鲁斯南');
INSERT INTO `movie` VALUES (209, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 202, '罗生门 羅生門', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1598883511.jpg', 0, '\n                                　　罗生门，日本京都的正南门。云游和尚、砍柴人和乞丐在城门底下避雨，三人闲聊，话题开始，故事的序幕拉开：一个武士和他妻子路过荒山，遭遇了不测。妻子被侮辱，而武士惨遭杀害。惨案如何酿成？凶手、妻子、借武士亡魂来做证的女巫，都各有说法。\n                                    ', 8.80, '2020-08-13', '1950-08-26(日本)', NULL, 0.00, 0, 203, 1, '三船敏郎');
INSERT INTO `movie` VALUES (210, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 50, '教父2 The Godfather: Part Ⅱ', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2194138787.jpg', 0, '\n                                　　迈克尔（阿尔·帕西诺 饰）是美利坚黑手党科利昂家族的头目。 迈克尔的父亲维托·安多里尼（罗伯特·德尼罗 饰）出生于意大利科利昂镇。1901年，维托的父亲安东尼奥、兄长保罗、母亲（玛丽亚·卡塔 饰）都死于黑手党西乔家族之手。9岁的维托只得漂洋过海逃亡美利坚谋生。入境时，海关官员（理查德·沃森 饰）将其名姓登记为维托·科利昂。 1958年，迈克尔为儿子安东尼（詹姆斯·古纳瑞斯 饰）举办了初领圣体的聚会，不想当晚便遭遇暗杀。迈克尔侥幸躲过一劫，两名杀手却被人灭口。 维托在异国他乡如何生存？他身负的血海深仇能否得报？想要迈克尔性命的是谁？将杀手灭口的又是谁？\n                        ', 9.20, '2020-08-13', '1974-12-12(纽约首映)', NULL, 0.00, 0, 51, 1, '阿尔·帕西诺');
INSERT INTO `movie` VALUES (211, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 49, '搏击俱乐部 Fight Club', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910926158.jpg', 0, '\n                                　　杰克（爱德华•诺顿 饰）是一个大汽车公司的职员，患有严重的失眠症，对周围的一切充满危机和憎恨。\n                                    ', 9.00, '2020-08-13', '1999-09-10(威尼斯电影节)', NULL, 0.00, 0, 50, 1, '爱德华·诺顿');
INSERT INTO `movie` VALUES (212, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 45, '罗马假日 Roman Holiday', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2189265085.jpg', 0, '\n                                　　欧洲某国的安妮公主（奥黛丽·赫本 Audrey Hepburn 饰）到访罗马，国务烦身，但她又厌倦繁文缛节。一天晚上，身心俱疲的她偷偷来到民间欣赏夜景，巧遇报社记者乔（格里高利·派克 Gregory Peck 饰）。二人把手同游，相当快乐。公主更是到乔的家中作客并在那过夜。\n                                    ', 9.00, '2020-08-13', '1953-08-20(威尼斯电影节)', NULL, 0.00, 0, 46, 4, '奥黛丽·赫本');
INSERT INTO `movie` VALUES (213, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 46, '闻香识女人 Scent of a Woman', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2550757929.jpg', 0, '\n                                　　查理（克里斯•奥唐纳 Chris O\'Donnell  饰）是一个普通的中学生，他因为见证着一件恶作剧但又不想出卖朋友，于是面临着一道艰难的选择题——要么坦白，要么被学校勒退。而史法兰（阿尔•帕西诺 Al Pacino  饰）是一个退伍军官，因为意外失明，人生从顶点的辉煌滑落谷底。\n                                    ', 9.10, '2020-08-13', '1992-12-23(美国)', NULL, 0.00, 0, 47, 1, '阿尔·帕西诺');
INSERT INTO `movie` VALUES (214, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 47, '辩护人 변호인', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2158166535.jpg', 0, '\n                                　　1978年，只有高中学历的宋佑硕（宋康昊 饰）通过多年的艰苦努力，终于通过司法考试，并在成为法官后很快转行成为一名律师。他敏锐地从最新政策中嗅到商机，以不动产代书业务起家。虽然被同行讥讽为随时随地派发名片的夜店小弟，但佑硕不以为忤，一步一步朝着心中的目标迈进。他依靠赚来的钱让妻儿过上富足的生活，也还了七年前在饭店大婶那里欠下的良心债。进入20世纪80年代，韩国民主化斗争愈演愈烈。佑硕全然不管窗外事，关起门来继续赚钱。然而社会的巨变已经不容他置身事外，饭店大婶的儿子朴镇宇因从属的釜山读书联合会被控为左翼社团而遭到逮捕，更受到残酷的虐待和不公的指控。\n                                    ', 9.20, '2020-08-13', '2013-12-18(韩国)', NULL, 0.00, 0, 48, 1, '宋康昊');
INSERT INTO `movie` VALUES (215, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 44, '天堂电影院 Nuovo Cinema Paradiso', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2559577569.jpg', 0, '\n                                    　　意大利南部小镇，古灵精怪的小男孩多多（萨瓦特利·卡西欧 饰）喜欢看电影，更喜欢看放映师艾佛特（菲利浦·诺瓦雷 饰）放电影，他和艾佛特成为了忘年之交，在胶片中找到了童年生活的乐趣。\n                                        ', 9.20, '2020-08-13', '1988-11-17(意大利)', NULL, 0.00, 0, 45, 1, '安东内拉·阿蒂利');
INSERT INTO `movie` VALUES (216, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 43, '哈利·波特与魔法石 Harry Potter and the Sorcerer\'s Stone', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614949805.jpg', 0, '\n                                　　哈利波特是一个孤儿，从小寄养在姨妈家，受尽欺凌。但就在哈利11岁生日的时候，他意外收到了霍格沃茨学院的入学通知书。哈利从该学院派来接他的巨人海格口中得知，这是一间魔法学院，并得知了自己的身世，原来哈利的父母都是伟大的魔法师，在对付伏地魔的战斗中双双献身，唯有哈利幸免于难。\n                                    ', 9.00, '2020-08-13', '2002-01-26(中国大陆)', NULL, 0.00, 0, 44, 7, '丹尼尔·雷德克里夫');
INSERT INTO `movie` VALUES (217, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 48, '我不是药神', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2561305376.jpg', 0, '\n                                　　普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。\n                                    ', 9.00, '2020-08-13', '2018-07-05(中国大陆)', NULL, 0.00, 0, 49, 1, '徐峥');
INSERT INTO `movie` VALUES (218, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 42, '大话西游之月光宝盒 西遊記第壹佰零壹回之月光寶盒', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561721372.jpg', 0, '\n                                　　孙悟空（周星驰）护送唐三藏（罗家英）去西天取经路上，与牛魔王合谋欲杀害唐三藏，并偷走了月光宝盒，此举使观音萌生将其铲除心思，经唐三藏请求，孙悟空被判五百年后重新投胎做人赎其罪孽。\n                                    ', 9.00, '2020-08-13', '1995-01-21(中国香港)', NULL, 0.00, 0, 43, 2, '周星驰');
INSERT INTO `movie` VALUES (219, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 37, '十二怒汉 12 Angry Men', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2173577632.jpg', 0, '\n                                　　一个在贫民窟长大的18岁少年因为涉嫌杀害自己的父亲被告上法庭，证人言之凿凿，各方面的证据都对他极为不利。十二个不同职业的人组成了这个案件的陪审团，他们要在休息室达成一致的意见，裁定少年是否有罪，如果罪名成立，少年将会被判处死刑。\n                                    ', 9.40, '2020-08-13', '1957-04-13(美国)', NULL, 0.00, 0, 38, 1, '亨利·方达');
INSERT INTO `movie` VALUES (220, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 38, '鬼子来了', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2553104888.jpg', 0, '\n                                　　第二次世界大战期间，中国河北挂甲台村的农民马大三（姜文饰）在日本人的统治下过着平静的生活。一个晚上，游击队绑架了日军陆军士兵花屋小三郎（香川照之饰）和翻译董汉臣，把他们捆绑塞入麻袋放在马大三家里，并吩咐马好好看管，几天后的大年三十来带人。马大三和村民战战兢兢地看守两人，花屋小三郎和董汉臣数次发出求救信号，皆被村民化解。半年过去了，村民们担心事情暴露，却又不敢把花屋等放了。\n                                    ', 9.20, '2020-08-13', '2000-05-12(戛纳电影节)', NULL, 0.00, 0, 39, 12, '姜文');
INSERT INTO `movie` VALUES (221, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 40, '哈尔的移动城堡 ハウルの動く城', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2174346180.jpg', 0, '\n                                　　继母因无力负担生活，将苏菲和她的两个妹妹都送到了制帽店去当学徒。两个妹妹很快先后就离开了制帽店去追寻各自的梦想，只有苏菲坚持了下来。一天，小镇旁边来了一座移动堡垒，传说堡垒的主人哈尔专吸取年青姑娘的灵魂，所以小镇的姑娘都不敢靠近。\n                                    ', 9.10, '2020-08-13', '2004-09-05(威尼斯电影节)', NULL, 0.00, 0, 41, 6, '倍赏千惠子');
INSERT INTO `movie` VALUES (222, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 39, '素媛 소원', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2118532944.jpg', 0, '\n                                　　她（李来 饰）是一个美丽平凡的小女孩，和爸爸妈妈生活在位于街角的家中。家里经营着以她的名字素媛命名的杂货店，母亲（严智媛 饰）作为老板娘日夜忙碌不得闲暇，父亲则在工厂干着繁重的工作。在那个飘雨的早上，素媛打着雨伞独自上学。在离学校近在咫尺的地方，她遭遇一个相貌猥琐、酒气冲天的大叔，由此开启了她的悲剧之旅。柔嫩的小花遭到暴风雨无情摧残，受伤的岂止枝枝叶叶，更是那迎着阳光无忧成长的心。无良媒体铺天盖地大肆渲染，作为受害者的素媛一家仿佛成了周身污秽的耻辱之人，被四周诧异好奇的目光所包围。\n                                    ', 9.20, '2020-08-13', '2013-10-02(韩国)', NULL, 0.00, 0, 40, 1, '薛景求');
INSERT INTO `movie` VALUES (223, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 41, '天空之城 天空の城ラピュタ', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1446261379.jpg', 0, '\n                                　　古老帝国拉比达是一座漂浮在空中的巨大的机器岛，传说那里已经无人居住，蕴藏着巨大的财富。因此，无论军方还是海盗，都在找寻着这座传说中的飞行岛。\n                                    ', 9.10, '2020-08-13', '1992-05-01(中国大陆)', NULL, 0.00, 0, 42, 6, '田中真弓');
INSERT INTO `movie` VALUES (224, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 35, '飞屋环游记 Up', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p485887754.jpg', 0, '\n                                    　　小男孩卡尔（Carl Fredricksen）怀揣着对于冒险的热爱偶遇假小子艾丽（Ellie），而艾丽把整个屋子当成一艘大飞船游戏居然使他对这个女孩子有些着迷，相同的爱好最终使两个人成为了一生的爱侣。\n                                        ', 9.00, '2020-08-13', '2009-08-04(中国大陆)', NULL, 0.00, 0, 36, 1, '爱德华·阿斯纳');
INSERT INTO `movie` VALUES (225, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 36, '少年派的奇幻漂流 Life of Pi', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1784592701.jpg', 0, '\n                                    　　故事开始于蒙特娄，也结束于蒙特娄。一名在找寻灵感的作家（拉菲·斯波 Rafe Spall 饰）无意间得知派·帕帖尔（伊尔凡·可汗 Irrfan Khan 饰）的传奇故事。派的父亲（阿迪勒·侯赛因 Adil Hussain 饰）开了一家动物园。因这样特殊的生活环境，少年派（苏拉·沙玛 Suraj Sharma 饰 ）对信仰与人的本性自有一套看法。在派17岁那一年，他的父母决定举家移民加拿大以追求更好的生活，而他也必须离开他的初恋情人。在前往加拿大的船上，他们遇见一位残忍成性的法国厨师（杰拉尔·德帕迪约 Gérard Depardieu 饰）。当天深夜在茫茫大海中，原本令派感到刺激无比的暴风雨一瞬间就成了吞噬货船的大灾难。派却奇迹般地活了下来，搭着救生船在太平洋上漂流，而且有一名最令人意想不到的同伴——理查德·帕克，一只孟加拉老虎。神奇的冒险旅程就这样意...\n                            ', 9.10, '2020-08-13', '2012-11-22(中国大陆)', NULL, 0.00, 0, 37, 13, '苏拉·沙玛');
INSERT INTO `movie` VALUES (226, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 34, '指环王3：王者无敌 The Lord of the Rings: The Return of the King', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825503.jpg', 0, '\n                                　　魔幻战争逐渐进入高潮阶段。霍比特人弗拉多（伊利亚·伍德 Elijah Wood 饰）携带着魔戒，与伙伴山姆（Sean Astin 饰）以及狡猾阴暗的咕噜等前往末日山，一路上艰难险阻不断，魔君索伦为阻止魔戒被销毁用尽全力阻挠。另一方面，白袍巫师甘道夫（伊安·麦克莱恩 Ian McKellen 饰）率中土勇士们镇守刚铎首都——白城米那斯提里斯。魔兽大军压境，黑暗与光明的决战即将来临……\n                                    ', 9.20, '2020-08-13', '2004-03-12(中国大陆)', NULL, 0.00, 0, 35, 13, '伊利亚·伍德');
INSERT INTO `movie` VALUES (227, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 33, '摔跤吧！爸爸 Dangal', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg', 0, '\n                                　　马哈维亚（阿米尔·汗 Aamir Khan 饰）曾经是一名前途无量的摔跤运动员，在放弃了职业生涯后，他最大的遗憾就是没有能够替国家赢得金牌。马哈维亚将这份希望寄托在了尚未出生的儿子身上，哪知道妻子接连给他生了两个女儿，取名吉塔（法缇玛·萨那·纱卡 Fatima Sana Shaikh 饰）和巴比塔（桑亚·玛荷塔 Sanya Malhotra 饰）。让马哈维亚没有想到的是，两个姑娘展现出了杰出的摔跤天赋，让他幡然醒悟，就算是女孩，也能够昂首挺胸的站在比赛场上，为了国家和她们自己赢得荣誉。\n                                    ', 9.00, '2020-08-13', '2017-05-05(中国大陆)', NULL, 0.00, 0, 34, 1, '阿米尔·汗');
INSERT INTO `movie` VALUES (228, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 31, '乱世佳人 Gone with the Wind', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1963126880.jpg', 0, '\n                                　　美国南北战争前夕，南方农场塔拉庄园的千金斯嘉丽（费雯·丽 Vivien Leigh 饰）爱上了另一个农场主的儿子艾希礼（莱斯利·霍华德 Leslie Howard 饰），遭到了拒绝，为了报复，她嫁给了自己不爱的男人，艾希礼妻子梅兰（奥利维娅·德哈维兰 Olivia de Havilland 饰）的弟弟查尔斯。\n                                    ', 9.30, '2020-08-13', '1939-12-15(亚特兰大首映)', NULL, 0.00, 0, 32, 12, '费雯·丽');
INSERT INTO `movie` VALUES (229, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 30, '末代皇帝 The Last Emperor', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p452089833.jpg', 0, '\n                                　　溥仪（尊龙 饰）的一生在电影中娓娓道来。他从三岁起登基，年幼的眼光中只有大臣身上的一只蝈蝈，江山在他心中只是一个不明所以的名词。长大了，他以为可以变革，却被太监一把烧了朝廷账本。他以为是大清江山的主人，却做了日本人的傀儡。\n                                    ', 9.30, '2020-08-13', '1987-10-04(东京国际电影节)', NULL, 0.00, 0, 31, 1, '尊龙');
INSERT INTO `movie` VALUES (230, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 32, '何以为家 كفرناحوم', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555295759.jpg', 0, '\n                                　　法庭上，十二岁的男孩赞恩向法官状告他的亲生父母，原因是，他们给了他生命。是什么样的经历让一个孩子做出如此不可思议的举动？故事中，赞恩的父母在无力抚养和教育的状况下依然不停生育，作为家中的长子赞恩，弱小的肩膀承担了无数生活的重压。当妹妹被强行卖给商贩为妻时，赞恩愤怒离家，之后遇到一对没有合法身份的母子，相互扶持勉强生活。然而生活并没有眷顾赞恩，重重磨难迫使他做出了令人震惊的举动……\n                        ', 9.10, '2020-08-13', '2019-04-29(中国大陆)', NULL, 0.00, 0, 33, 1, '赞恩·阿尔·拉菲亚');
INSERT INTO `movie` VALUES (231, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 9, '盗梦空间 Inception', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2616355133.jpg', 0, '\n                                    　　道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩 Michael Caine 饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉 Ellen Page 饰）、梦境演员艾姆斯（汤姆·哈迪 Tom Hardy 饰）和药剂师约瑟夫（迪利普·劳 Dileep Rao 饰）加入行动。在一层层...\n                            ', 9.30, '2020-08-13', '2010-09-01(中国大陆)', NULL, 0.00, 0, 10, 8, '莱昂纳多·迪卡普里奥');
INSERT INTO `movie` VALUES (232, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 29, '寻梦环游记 Coco', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614500706.jpg', 0, '\n                                　　热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。\n                                    ', 9.10, '2020-08-13', '2017-11-24(中国大陆)', NULL, 0.00, 0, 30, 2, '安东尼·冈萨雷斯');
INSERT INTO `movie` VALUES (233, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 13, '三傻大闹宝莱坞 3 Idiots', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p579729551.jpg', 0, '\n                                    　　本片根据印度畅销书作家奇坦·巴哈特（Chetan Bhagat）的处女作小说《五点人》（Five Point Someone）改编而成。法兰（马德哈万 R Madhavan 饰）、拉杜（沙曼·乔希 Sharman Joshi 饰）与兰乔（阿米尔·汗 Aamir Khan 饰）是皇家工程学院的学生，三人共居一室，结为好友。在以严格著称的学院里，兰乔是个非常与众不同的学生，他不死记硬背，甚至还公然顶撞校长“病毒”（波曼·伊拉尼 Boman Irani 饰），质疑他的教学方法。他不仅鼓动法兰与拉杜去勇敢追寻理想，还劝说校长的二女儿碧雅（卡琳娜·卡普 Kareena Kapoor 饰）离开满眼铜臭的未婚夫。兰乔的特立独行引起了模范学生“消音器”（奥米·维嘉 Omi Vaidya 饰）的不满，他约定十年后再与兰乔一决高下，看哪种生活方式更能取得成功。\n                                        ', 9.20, '2020-08-13', '2011-12-08(中国大陆)', NULL, 0.00, 0, 14, 2, '阿米尔·汗');
INSERT INTO `movie` VALUES (234, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 27, '蝙蝠侠：黑暗骑士 The Dark Knight', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p462657443.jpg', 0, '\n                                    　　从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着，毕竟对方是能够上天入地的“蝙蝠侠”，不借两个胆子谁还敢造次呢？不过像高谭这种科技与污秽并存的城市，平静是不可能维持太久的，果不其然，新一轮的混乱很快就席卷了整个城市，人们再一被被恐慌所笼罩着，而声称愿意为这一切负责的，自然就是所有混乱的源头以及支配者--“小丑”了。\n                                        ', 9.20, '2020-08-13', '2008-07-14(纽约首映)', NULL, 0.00, 0, 28, 1, '克里斯蒂安·贝尔');
INSERT INTO `movie` VALUES (236, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 11, '海上钢琴师 La leggenda del pianista sull\'oceano', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574551676.jpg', 0, '\n                                　　本片讲述了一个钢琴天才传奇的一生。\n                                    ', 9.30, '2020-08-13', '2019-11-15(中国大陆)', NULL, 0.00, 0, 12, 11, '蒂姆·罗斯');
INSERT INTO `movie` VALUES (237, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 12, '楚门的世界 The Truman Show', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p479682972.jpg', 0, '\n                                　　楚门（金•凯瑞 Jim Carrey 饰）是一个平凡得不能再平凡的人，除了一些有些稀奇的经历之外——初恋女友突然失踪、溺水身亡的父亲忽然似乎又出现在眼前，他和绝大多数30多岁的美国男人绝无异样。这令他倍感失落。他也曾试过离开自己生活了多年的地方，但总因种种理由而不能成行。\n                                    ', 9.30, '2020-08-13', '1998-06-05(美国)', NULL, 0.00, 0, 13, 1, '金·凯瑞');
INSERT INTO `movie` VALUES (238, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 10, '忠犬八公的故事 Hachi: A Dog\'s Tale', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p524964039.jpg', 0, '\n                                    　　八公（Forest 饰）是一条谜一样的犬，因为没有人知道它从哪里来。教授帕克（理查·基尔 Richard Gere 饰）在小镇的火车站拣到一只走失的小狗，冥冥中似乎注定小狗和帕克教授有着某种缘分，帕克一抱起这只小狗就再也放不下来，最终，帕克对小狗八公的疼爱感化了起初极力反对养狗的妻子卡特（琼·艾伦 Joan Allen 饰）。八公在帕克的呵护下慢慢长大，帕克上班时八公会一直把他送到车站，下班时八公也会早早便爬在车站等候，八公的忠诚让小镇的人家对它更加疼爱。有一天，八公在帕克要上班时表现异常，居然玩起了以往从来不会的捡球游戏，八公的表现让帕克非常满意，可是就是在那天，帕克因病去世。帕克的妻子、女儿安迪（萨拉·罗默尔 Sarah Roemer 饰）及女婿迈克尔（罗比·萨布莱特 Robbie Sublett 饰）怀着无比沉痛的心情埋葬了帕克，可是不明就里的...\n                            ', 9.40, '2020-08-13', '2009-06-13(西雅图电影节)', NULL, 0.00, 0, 11, 1, '理查·基尔');
INSERT INTO `movie` VALUES (239, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 6, '美丽人生 La vita è bella', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2578474613.jpg', 0, '\n                                　　犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。\n                                    ', 9.50, '2020-08-13', '2020-01-03(中国大陆)', NULL, 0.00, 0, 7, 1, '罗伯托·贝尼尼');
INSERT INTO `movie` VALUES (240, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 2, '霸王别姬', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg', 0, '\n                                　　段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分。\n                                    ', 9.60, '2020-08-13', '1993-01-01(中国香港)', NULL, 0.00, 0, 3, 1, '张国荣');
INSERT INTO `movie` VALUES (241, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 7, '千与千寻 千と千尋の神隠し', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg', 0, '\n                                　　千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。\n                                    ', 9.40, '2020-08-13', '2019-06-21(中国大陆)', NULL, 0.00, 0, 8, 6, '柊瑠美');
INSERT INTO `movie` VALUES (242, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 4, '这个杀手不太冷 Léon', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg', 0, '\n                                　　里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。\n                                    ', 9.40, '2020-08-13', '1994-09-14(法国)', NULL, 0.00, 0, 5, 1, '让·雷诺');
INSERT INTO `movie` VALUES (243, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 3, '阿甘正传 Forrest Gump', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2372307693.jpg', 0, '\n                                　　阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。\n                                    ', 9.50, '2020-08-13', '1994-06-23(洛杉矶首映)', NULL, 0.00, 0, 4, 12, '汤姆·汉克斯');
INSERT INTO `movie` VALUES (244, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 245, '一次别离 جدایی نادر از سیمین', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2189835254.jpg', 0, '\n                                    　　纳德（佩曼•莫阿迪 Peyman Moadi 饰）与西敏（蕾拉•哈塔米 Leila Hatami 饰）是一对夫妻，他们的女儿叫特梅（萨日娜•法哈蒂 Sarina Farhadi 饰）。西敏希望一家三口移居国外，但是纳德坚决反对，原因是纳德的父亲患有老年痴呆症需要照顾。两人为此对薄公堂，准备离婚，但是法院驳回了她的请求。西敏赌气回了娘家。西敏走后，纳德分身乏术，聘请了一位护工瑞茨（萨瑞•巴亚特 Sareh Bayat 饰）照顾父亲。但是，父亲如厕问题始终困扰瑞茨，依《古兰经》教义，她感到禁忌重重。瑞茨的女儿陪伴在她左右，也令她分神。几个回合下来，纳德某次回家发现，父亲被绑在床上，出离愤怒的他推倒了瑞茨。没想到怀孕的瑞茨竟然流产，瑞茨丈夫怒不可遏将纳德告上了法庭，他们各执一词，然而真相却出人意料……\n                                        ', 8.70, '2020-08-13', '2012-11-13(中国大陆)', NULL, 0.00, 0, 246, 1, '佩曼·莫阿迪');
INSERT INTO `movie` VALUES (245, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 5, '泰坦尼克号 Titanic', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg', 0, '\n                                　　1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。\n                                    ', 9.40, '2020-08-13', '1998-04-03(中国大陆)', NULL, 0.00, 0, 6, 4, '莱昂纳多·迪卡普里奥');
INSERT INTO `movie` VALUES (246, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 8, '辛德勒的名单 Schindler\'s List', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg', 0, '\n                                　　1939年，波兰在纳粹德国的统治下，党卫军对犹太人进行了隔离统治。德国商人奥斯卡·辛德勒（连姆·尼森 Liam Neeson 饰）来到德军统治下的克拉科夫，开设了一间搪瓷厂，生产军需用品。凭着出众的社交能力和大量的金钱，辛德勒和德军建立了良好的关系，他的工厂雇用犹太人工作，大发战争财。\n                                    ', 9.50, '2020-08-13', '1993-11-30(华盛顿首映)', NULL, 0.00, 0, 9, 12, '连姆·尼森');
INSERT INTO `movie` VALUES (247, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 250, '发条橙 A Clockwork Orange', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p529908155.jpg', 0, '\n                                　　阿利斯（马尔科姆•麦克道尔）是一位无恶不作的少年，他的特殊喜好是边听贝多芬的交响曲边奸淫女性，某次他进入一所别墅抢劫一番后，打残了该别墅的主人——一名小说家，并用特殊喜好蹂躏了其妻子。后来因为杀了一名单身女子，阿利斯入狱并接受了特殊的人格治疗，出狱后，他对淫乐之事产生彻底的厌倦。\n                                    ', 8.60, '2020-08-13', '1971-12-19(纽约首映)', NULL, 0.00, 0, 251, 10, '马尔科姆·麦克道威尔');
INSERT INTO `movie` VALUES (248, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 246, '黑鹰坠落 Black Hawk Down', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910900710.jpg', 0, '\n                                　　1992年，连年的部落战争令东非国家索马里山河破败，民不聊生，由此引发的大饥荒更造成三十万人死亡。掌控首都摩加迪休的独裁者默罕默德•法拉•艾迪德抢走国际组织的救援物资，此举引起世人公愤。丧心病狂的艾迪德向国际维和组织宣战，美国方面派出160名特种部队成员前往摩加迪休以推翻艾迪德政权。\n                                    ', 8.70, '2020-08-13', '2001-12-18(美国)', NULL, 0.00, 0, 247, 3, '乔什·哈奈特');
INSERT INTO `movie` VALUES (249, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 242, '追随 Following', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561545031.jpg', 0, '\n                                　　比尔（杰里米•希尔伯德 Jeremy Theobald 饰）是个游手好闲的作家，借跟踪陌生人打发时间。这让他体验到形形色色的人生，很神秘，也很刺激。不过，有一次，比尔盯上了一个西服革履的家伙克布（艾利克斯•浩尔 Alex Haw 饰）。尾随到餐厅之后，他却被对方识破，只得摊牌。克布是个贩卖盗版光碟的商贩，此外还做拧门撬锁的勾当。克布带着比尔潜入了陌生人家中，但比尔发现克布根本不取财物，而是寻找主人蓄意掩盖的隐私。同时，克布还提醒比尔要注意仪表。后来，比尔认识了一个神秘的金发女人（露西•拉塞尔 Lucy Russell 饰）。在酒吧，比尔主动与她调情，但是对方冷若冰霜。原来她是黑社会大佬的女人，但是不可遏制的激情让比尔失去了理智，从而堕入了万劫不复的深渊……\n                        ', 8.90, '2020-08-13', '1998-09-12(多伦多电影节)', NULL, 0.00, 0, 243, 7, '杰里米·西奥伯德');
INSERT INTO `movie` VALUES (250, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 243, '千钧一发 Gattaca', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2195672555.jpg', 0, '\n                                　　未来的世界，科技的力量胜过一切，基因决定命运，几乎成为金科玉律。不幸文森特（伊桑•霍克 Ethan Hawke  饰）是一个基因不良的人，出生以来就决定了他近视和心脏病的缺陷，他只能活到30岁。于是父母为文森特增添了一个有着优良基因的弟弟。\n                                    ', 8.80, '2020-08-13', '1997-10-24(美国)', NULL, 0.00, 0, 244, 5, '伊桑·霍克');
INSERT INTO `movie` VALUES (251, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 248, '四个春天', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2540578887.jpg', 0, '\n                                　　《四个春天》是一部以真实家庭生活为背景的纪录片。15岁离家，在异乡漂泊多年的导演以自己南方小城里的父母为主角，在四年光阴里，以一己之力记录了他们的美丽日常。在如诗的乐活慢生活图景中，影像缓缓雕刻出一个幸福家庭近二十年的温柔变迁，以及他们如何以自己的方式面对流转的时间、人生的得失起落。\n                        ', 8.90, '2020-08-13', '2019-01-04(中国大陆)', NULL, 0.00, 0, 249, 1, '陆运坤');
INSERT INTO `movie` VALUES (252, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 249, '黑客帝国2：重装上阵 The Matrix Reloaded', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p443461390.jpg', 0, '\n                                　　上一部结尾，尼奥（基奴李维斯 饰）终于意识到自己的能力和使命，中弹复活后，变成了无所不能的“救世主”，他和女友崔妮蒂（凯莉·安·摩丝 饰），舰长墨菲斯（劳伦斯·菲什伯恩 饰）回到了人类的基地锡安，受到人们的热烈欢迎。\n                                    ', 8.60, '2020-08-13', '2003-07-18(中国大陆)', NULL, 0.00, 0, 250, 3, '基努·里维斯');
INSERT INTO `movie` VALUES (253, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 247, '网络谜踪 Searching', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2542848758.jpg', 0, '\n                                　　工程师大卫·金（约翰·赵 饰）一直引以为傲的16岁乖女玛戈特突然失踪。前来调查此案的警探怀疑女儿离家出走。不满这一结论的父亲为了寻找真相，独自展开调查。他打开了女儿的笔记本电脑，用社交软件开始寻找破案线索。大卫必须在女儿消失之前，沿着她在虚拟世界的足迹找到她…\n                        ', 8.60, '2020-08-13', '2018-12-14(中国大陆)', NULL, 0.00, 0, 248, 1, '约翰·赵');
INSERT INTO `movie` VALUES (254, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 244, '我爱你 그대를 사랑합니다', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1075591188.jpg', 0, '\n                                　　飘雪的坡道上，送牛奶的老头子金万皙（李顺载 饰）邂逅了收废品的老太太宋怡芬（尹秀晶 饰）。他们的前半生各自背负着艰辛的人生：万皙年轻时我行我素，直到妻子病逝才深觉愧疚；怡芬被心爱的男人抛弃在城市角落，孩子夭折后至老未嫁。两位老人在每天凌晨寂静的街道上相遇，孤独而苦难的生活令他们渐渐靠近。在万皙孙女妍儿（宋智孝 饰）的穿针引线下，如初恋般的悸动萌发在了彼此心中。万皙的朋友、停车场管理员张军峰（宋在河 饰）一直耐心的看护着患有老年痴呆症的老伴。直到有一天，军峰得知老伴已患绝症。目睹她一次次痛苦病发，心如刀绞的军峰做出了悲伤的决定……\n                                    ', 9.00, '2020-08-13', '2011-02-17(韩国)', NULL, 0.00, 0, 245, 1, '宋在浩');

-- ----------------------------
-- Table structure for movie_category
-- ----------------------------
DROP TABLE IF EXISTS `movie_category`;
CREATE TABLE `movie_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `orders` int(11) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movie_category
-- ----------------------------
INSERT INTO `movie_category` VALUES (1, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 1, '剧情');
INSERT INTO `movie_category` VALUES (2, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 2, '喜剧');
INSERT INTO `movie_category` VALUES (3, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 3, '动作');
INSERT INTO `movie_category` VALUES (4, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 4, '爱情');
INSERT INTO `movie_category` VALUES (5, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 5, '科幻');
INSERT INTO `movie_category` VALUES (6, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 6, '动画');
INSERT INTO `movie_category` VALUES (7, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 7, '悬疑');
INSERT INTO `movie_category` VALUES (8, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 8, '惊悚');
INSERT INTO `movie_category` VALUES (9, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 9, '恐怖');
INSERT INTO `movie_category` VALUES (10, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 10, '犯罪');
INSERT INTO `movie_category` VALUES (11, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 11, '音乐');
INSERT INTO `movie_category` VALUES (12, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 12, '战争');
INSERT INTO `movie_category` VALUES (13, 0, 1, '2020-08-13 18:53:17.000000', '2020-08-13 18:53:17.000000', 13, '冒险');

-- ----------------------------
-- Table structure for movie_order
-- ----------------------------
DROP TABLE IF EXISTS `movie_order`;
CREATE TABLE `movie_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `out_trade_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trade_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_status` smallint(6) NOT NULL,
  `pay_type` smallint(6) NOT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `out_trade_no`(`out_trade_no`) USING BTREE,
  INDEX `movie_order_user_id_5ace6d58`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of movie_order
-- ----------------------------
INSERT INTO `movie_order` VALUES (1, '月会员', 15.00, 'd1ecbf1011d649ad8b1f5f94611fd7b9', NULL, 0, 1, NULL, '2020-08-12 18:32:59.475409', '2020-08-12 18:32:59.476406', 1);
INSERT INTO `movie_order` VALUES (2, '一月VIP', 15.00, '560f102b8db145ed9ca89cc79204ffc3', NULL, 0, 1, NULL, '2020-08-12 20:01:47.109655', '2020-08-12 20:01:47.109655', 1);
INSERT INTO `movie_order` VALUES (3, '半年VIP', 75.00, 'bb064574ad0d4de39b4a1bf0d3edcda5', NULL, 0, 1, NULL, '2020-08-12 20:01:58.536284', '2020-08-12 20:01:58.536284', 1);
INSERT INTO `movie_order` VALUES (4, '一季VIP', 40.00, '00f7ec00cdf34b29a019b530a27b7c26', NULL, 0, 1, NULL, '2020-08-12 20:30:08.750809', '2020-08-12 20:30:08.750809', 1);
INSERT INTO `movie_order` VALUES (5, '半年VIP', 75.00, '9b7d1dbd17b84e1e9207874526f0f4aa', NULL, 0, 1, NULL, '2020-08-12 20:35:16.001159', '2020-08-12 20:35:16.001159', 1);
INSERT INTO `movie_order` VALUES (6, '一月VIP', 15.00, '821eb386f2f44b5cb0fa844ae403d785', NULL, 0, 1, NULL, '2020-08-12 20:55:55.509725', '2020-08-12 20:55:55.509725', 1);
INSERT INTO `movie_order` VALUES (7, '一月VIP', 15.00, '810c3638319b4b0d8c1841134c38b8ab', NULL, 0, 1, NULL, '2020-08-13 09:19:04.972909', '2020-08-13 09:19:04.972909', 1);
INSERT INTO `movie_order` VALUES (8, '一月VIP', 15.00, '05e0eece2bca49fc9a49229e108d2a6a', NULL, 0, 1, NULL, '2020-08-13 09:26:15.347663', '2020-08-13 09:26:15.347663', 1);
INSERT INTO `movie_order` VALUES (9, '一季VIP', 40.00, '50576b2eb7394df7a3b555b9db41ecfd', NULL, 0, 1, NULL, '2020-08-13 15:47:26.843048', '2020-08-13 15:47:26.843048', 15);

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reversion_revision_date_created_96f7c20c`(`date_created`) USING BTREE,
  INDEX `reversion_revision_user_id_17095f45_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serialized_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `object_repr` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `reversion_version_db_content_type_id_objec_b2c54f65_uniq`(`db`, `content_type_id`, `object_id`, `revision_id`) USING BTREE,
  INDEX `reversion_version_content_type_id_7d0ff25c_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id`(`revision_id`) USING BTREE,
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_vip` tinyint(1) NOT NULL,
  `over_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES (1, 'pbkdf2_sha256$150000$yTsP9Mf3hG6Q$PlgfDXh0XKRYHsKJo/C/a8Y9f6W3vup+E1b2hHi9JbI=', '2020-08-05 20:48:30.383314', 1, 'boygc', '', '', '3@qq.com', 1, 1, '2020-08-01 16:59:58.444422', '13132116220', 'icon/avator1.jpg', 0, '2020-08-01 09:26:44.000000');
INSERT INTO `user_user` VALUES (2, 'pbkdf2_sha256$150000$4gKyqqHIZwZ6$BLpu8V+tgrGkMlhyrJkjhCcGMZD2zJR5DQm4Keoo7VQ=', NULL, 0, '16533639084', '', '', '', 0, 1, '2020-08-13 11:54:45.273805', '16533639084', 'icon/default.png', 0, '2020-08-13 18:57:39.000000');
INSERT INTO `user_user` VALUES (3, 'pbkdf2_sha256$150000$5TH2pZtFhZLt$U7HQPmInD0K8I4/Or9hhoW4wXJR9N9WXmlBF32oYnI0=', NULL, 0, '16533639085', '', '', '', 0, 1, '2020-08-13 12:02:10.230644', '16533639085', 'icon/banner3.jpg', 0, '2020-08-20 18:57:46.000000');
INSERT INTO `user_user` VALUES (15, 'pbkdf2_sha256$150000$35KTBuOmKC50$fjj+QV4TfVWy95MVPn7ojnnLpcYfikYA04jRawMrQRg=', NULL, 0, '16533639087', '', '', '', 0, 1, '2020-08-13 14:37:27.681714', '16533639087', 'icon/default.png', 1, '2020-11-12 15:48:29.065741');

-- ----------------------------
-- Table structure for user_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_user_groups`;
CREATE TABLE `user_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_user_groups_user_id_group_id_bb60391f_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `user_user_groups_group_id_c57f13c0_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_user_user_permissions`;
CREATE TABLE `user_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2020-08-05 21:40:54.309810', '127.0.0.1', '1', 'banner1', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (2, '2020-08-05 21:41:35.803181', '127.0.0.1', '2', 'banner2', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (3, '2020-08-05 21:41:57.016151', '127.0.0.1', '3', 'banner3', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (4, '2020-08-07 10:45:09.619271', '127.0.0.1', '1', 'tank', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (5, '2020-08-07 10:45:56.313822', '127.0.0.1', '1', '动作', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (6, '2020-08-07 10:46:00.160233', '127.0.0.1', '1', '十二生肖', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (7, '2020-08-07 11:42:31.991348', '127.0.0.1', '1', 'jason', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (8, '2020-08-07 11:42:34.225461', '127.0.0.1', '1', '十二生肖', 'change', '修改 performer', 17, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
