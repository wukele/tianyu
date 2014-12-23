/*
Navicat MySQL Data Transfer

Source Server         : myconnection
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : sss

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-12-04 14:31:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `creater` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `subtitle` varchar(40) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '国内专业的索尼PSP主机专题站,PSP掌机中文第一站!为用户提供索尼psp游戏下载及最新介绍,psp电影下载,破解信息,24小时滚动更新报道关于索尼psp的一切!', '2014-08-20 15:47:44', 'aa', '22', null, null, 'aa', 'PSP中文网-PSP游戏下载-PSP电影下载 - psp psp3000 psp2000 ');
INSERT INTO `article` VALUES ('2', '多玩PSP掌机站,提供最快最全的PSP游戏下载和电影下载,以及第一手游戏情报资讯和最全面的攻略专题、游戏讨论。', '2014-08-20 15:47:46', 'bb', '22', null, null, 'bbb', 'PSP掌机站 - PSP游戏下载 | PSP电影下载 | PSP3000破解 - 多玩...');
INSERT INTO `article` VALUES ('3', 'PSP是PlayStation Portable（プレイステーションポータブル）的简称，是日本SONY公司开发的多功能掌机系列，具有游戏、音乐、视频等多项娱乐功能。PSP1000于2004年12月12日正式... ', '2014-08-20 15:47:49', 'cc', '22', null, null, 'cc', 'psp_百度百科 ');
INSERT INTO `article` VALUES ('4', '中国最大最全的PSP中文游戏下载站... 发布小组:PSP吧汉化组 发布时间:14年07月20日 汉化程度:1.0汉化版 推荐度:★★★ 游戏详情:进入资料库实况...百科', '2014-08-20 15:47:52', 'dd', '22', null, null, 'dd', 'PSP中文游戏下载 电玩巴士中文游戏');
INSERT INTO `article` VALUES ('5', '玩家网PSP中国站为索尼PSP主机玩家提供PSP新手指引、PSP教程及PSP游戏攻略、最全的PSP游戏及存档下载、PSP影视资源下载及最新PSP破解信息,是国内专业的索尼PSP主机网站', '2014-08-21 10:41:18', 'ee', '2', null, null, '该法规啥', 'PSP中国站_PSP游戏下载|PSP电影下载|PSP模拟器|PSP破解_玩家网 ...');
INSERT INTO `article` VALUES ('6', 'P新手指引、PSP教程及PSP游戏攻略、最全的PSP游戏及存档下载、PSP影视资源下载及最新PSP破解信息,是国内专业的索尼PSP主机网', '2014-08-29 17:07:30', '11', '11', '1', '2014-08-29 17:07:45', '111', '111');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OPERATION_CODE` varchar(50) NOT NULL COMMENT '操作编码',
  `CREATER` varchar(20) DEFAULT NULL COMMENT '操作用户名称',
  `CREATE_DATE` datetime NOT NULL COMMENT '日志生成时间',
  `TYPE` int(11) DEFAULT NULL COMMENT '日志类型: 1：安全日志 2：表示操作日志',
  `OS` varchar(20) DEFAULT NULL,
  `BROWSER` varchar(20) DEFAULT NULL COMMENT '浏览器类型',
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `MAC` varchar(20) DEFAULT NULL COMMENT '物理地址',
  `EXECUTE_TIME` int(11) DEFAULT NULL COMMENT '执行时间',
  `DESCRIPTION` varchar(500) DEFAULT NULL COMMENT '详细描述',
  `REQUEST_PARAM` varchar(500) DEFAULT NULL COMMENT '请求参数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2263 DEFAULT CHARSET=utf8 COMMENT='日录资料表';

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('2259', '/system/user/update', 'admin', '2014-12-04 10:25:40', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '22', null, '{\"id\":[\"4\"],\"birthday\":[\"2014-4-2\"],\"phone\":[\"400\"],\"email\":[\"11@11.bee\"],\"name\":[\"bbb1234\"],\"gender\":[\"0\"],\"loginName\":[\"bbb222\"]}');
INSERT INTO `log` VALUES ('2260', '/system/user/update', 'admin', '2014-12-04 10:26:14', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '9', null, '{\"id\":[\"4\"],\"birthday\":[\"2014-4-2\"],\"phone\":[\"400\"],\"email\":[\"11@11.bee\"],\"name\":[\"bbb12346\"],\"gender\":[\"0\"],\"loginName\":[\"bbb222\"]}');
INSERT INTO `log` VALUES ('2261', '/system/user/update', 'admin', '2014-12-04 10:37:01', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '7', null, '{\"id\":[\"4\"],\"birthday\":[\"2014-4-2\"],\"phone\":[\"400\"],\"email\":[\"11@11.bee\"],\"name\":[\"bbb123466\"],\"gender\":[\"0\"],\"loginName\":[\"bbb222\"]}');
INSERT INTO `log` VALUES ('2262', '/system/role/update', 'admin', '2014-12-04 10:48:43', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '215', null, '{\"id\":[\"12\"],\"roleCode\":[\"guest212\"],\"sort\":[\"4\"],\"description\":[\"s\"],\"name\":[\"guest22\"]}');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) DEFAULT NULL COMMENT '父节点名称',
  `NAME` varchar(50) NOT NULL COMMENT '名称',
  `TYPE` varchar(20) DEFAULT NULL COMMENT '类型:菜单or功能',
  `SORT` int(11) DEFAULT NULL COMMENT '排序',
  `URL` varchar(255) DEFAULT NULL,
  `PERM_CODE` varchar(50) DEFAULT NULL COMMENT '菜单编码',
  `ICON` varchar(255) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `IS_SHOW` char(1) DEFAULT NULL,
  `DESCRIPTION` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` varchar(20) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `MODIFIER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', null, '系统管理', 'F', '1', '', '', 'icon-hamburg-settings', '', '1', '', '2014-03-30 02:54:43', '1', null, null);
INSERT INTO `permission` VALUES ('2', '1', '角色管理', 'F', '3', 'system/role', '', 'icon-hamburg-my-account', 'closed', '1', '', '2014-07-24 14:01:35', 'admin', null, null);
INSERT INTO `permission` VALUES ('3', '1', '用户管理', 'F', '2', 'system/user', '', 'icon-hamburg-user', 'closed', '1', '', '2014-07-24 14:00:55', 'admin', null, null);
INSERT INTO `permission` VALUES ('4', '2', '添加', 'O', null, '', 'sys:role:add', '', '', '1', '角色添加', '2014-07-08 00:17:53', 'admin', null, null);
INSERT INTO `permission` VALUES ('5', '2', '删除', 'O', null, '', 'sys:role:delete', '', '', '1', '角色删除', '2014-07-08 00:18:00', 'admin', '2014-03-17 10:04:05', null);
INSERT INTO `permission` VALUES ('6', '2', '修改', 'O', null, '', 'sys:role:update', '', '', '1', '', '2014-07-08 00:18:07', 'admin', null, null);
INSERT INTO `permission` VALUES ('7', '3', '添加', 'O', null, '', 'sys:user:add', '', '', '1', '用户添加', '2014-07-08 00:17:39', 'admin', null, null);
INSERT INTO `permission` VALUES ('8', '3', '删除', 'O', null, '', 'sys:user:delete', '', '', '1', '用户删除', '2014-07-08 00:17:47', 'admin', null, null);
INSERT INTO `permission` VALUES ('12', '1', '权限管理', 'F', '4', 'system/permission', '', 'icon-hamburg-login', 'closed', '1', '', '2014-07-24 14:01:42', 'admin', null, null);
INSERT INTO `permission` VALUES ('14', '15', '数据源监控', 'F', '6', 'druid', '', 'icon-hamburg-database', '', '1', '', '2014-03-29 10:44:09', '1', null, null);
INSERT INTO `permission` VALUES ('15', null, '系统监控', 'F', '5', '', '', 'icon-hamburg-graphic', '', '1', '', '2014-03-30 03:05:04', '1', null, null);
INSERT INTO `permission` VALUES ('16', '3', '修改', 'O', null, '', 'sys:user:update', '', '', '1', '用户修改', '2014-07-08 00:17:29', 'admin', null, null);
INSERT INTO `permission` VALUES ('20', '15', '日志管理', 'F', '7', 'system/log', '', 'icon-hamburg-archives', '', '1', '', '2014-07-24 14:49:48', 'admin', null, null);
INSERT INTO `permission` VALUES ('25', '12', '添加', 'O', null, '', 'sys:perm:add', '', '', '1', '菜单添加', '2014-07-08 00:18:14', 'admin', null, null);
INSERT INTO `permission` VALUES ('26', '12', '修改', 'O', null, '', 'sys:perm:update', '', '', '1', '菜单修改', '2014-07-08 00:18:20', 'admin', null, null);
INSERT INTO `permission` VALUES ('27', '12', '删除', 'O', null, '', 'sys:perm:delete', '', '', '1', '菜单删除', '2014-07-08 00:18:28', 'admin', null, null);
INSERT INTO `permission` VALUES ('28', '2', '查看', 'O', null, '', 'sys:role:view', '', '', '1', '角色查看', null, null, null, null);
INSERT INTO `permission` VALUES ('29', '3', '查看', 'O', null, '', 'sys:user:view', '', null, null, '用户查看', null, null, null, null);
INSERT INTO `permission` VALUES ('30', '12', '查看', 'O', null, '', 'sys:perm:view', '', null, null, '权限查看', null, null, null, null);
INSERT INTO `permission` VALUES ('31', '20', '删除', 'O', null, '', 'sys:log:delete', '', null, null, '删除日志', null, null, null, null);
INSERT INTO `permission` VALUES ('32', '20', '导出excel', 'O', null, '', 'sys:log:exportExcel', '', null, null, '导出日志excel', null, null, null, null);
INSERT INTO `permission` VALUES ('33', '3', '查看用户角色', 'O', null, '', 'sys:user:roleView', '', null, null, '查看用户角色', null, null, null, null);
INSERT INTO `permission` VALUES ('34', '2', '保存授权', 'O', null, '', 'sys:role:permUpd', '', null, null, '保存修改的角色权限', null, null, null, null);
INSERT INTO `permission` VALUES ('35', '3', '修改用户角色', 'O', null, '', 'sys:user:roleUpd', '', null, null, '修改用户拥有的角色', null, null, null, null);
INSERT INTO `permission` VALUES ('36', '2', '查看角色权限', 'O', null, '', 'sys:role:permView', '', null, null, '查看角色拥有的权限', null, null, null, null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL COMMENT '商品名',
  `ICON` varchar(255) NOT NULL COMMENT '图标',
  `PRICE` decimal(10,0) NOT NULL COMMENT '价格',
  `ORIGINAL_PRICE` decimal(10,0) NOT NULL COMMENT '原价',
  `DETIALS` text COMMENT '详细描述',
  `VIEWS` int(11) DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'aa', 'aa', '11', '11', '11', '11');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `ROLE_CODE` varchar(20) NOT NULL,
  `DESCRIPTION` text,
  `SORT` smallint(6) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` varchar(20) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `MODIFIER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', 'admin', 'admin', '2', null, null, null, null, null);
INSERT INTO `role` VALUES ('5', 'guest', 'guest', 'guest', '3', null, '2014-07-08 00:06:00', 'admin', null, null);
INSERT INTO `role` VALUES ('12', 'guest22', 'guest212', 's', '4', null, '2014-07-08 00:08:30', 'admin', null, null);
INSERT INTO `role` VALUES ('13', 'superadmin', 'superadmin', '超级管理员', '1', null, '2014-07-08 00:05:45', 'admin', null, null);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) DEFAULT NULL,
  `PERMISSION_ID` int(11) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` varchar(20) DEFAULT NULL,
  `MODIFIER` varchar(20) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ROLE_PER_REFERENCE_PERMISSI` (`PERMISSION_ID`),
  KEY `FK_ROLE_PER_REFERENCE_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_PER_REFERENCE_PERMISSI` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `permission` (`ID`),
  CONSTRAINT `FK_ROLE_PER_REFERENCE_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '2', '2014-07-08 09:33:01', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('2', '1', '1', '2014-07-08 09:34:19', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('19', '5', '4', null, null, null, null);
INSERT INTO `role_permission` VALUES ('21', '5', '5', null, null, null, null);
INSERT INTO `role_permission` VALUES ('22', '5', '6', null, null, null, null);
INSERT INTO `role_permission` VALUES ('28', '5', '1', null, null, null, null);
INSERT INTO `role_permission` VALUES ('29', '5', '2', null, null, null, null);
INSERT INTO `role_permission` VALUES ('61', '13', '1', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('62', '13', '3', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('63', '13', '16', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('64', '13', '7', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('65', '13', '2', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('66', '13', '4', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('67', '13', '5', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('68', '13', '6', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('69', '13', '12', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('70', '13', '25', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('71', '13', '26', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('72', '13', '27', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('74', '13', '15', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('75', '13', '14', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('76', '13', '20', '2014-07-08 09:21:23', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('77', '13', '8', '2014-07-08 09:30:47', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('81', '1', '3', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('83', '1', '7', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('85', '1', '4', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('87', '1', '6', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('88', '1', '12', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('89', '1', '25', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('90', '1', '26', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('91', '1', '27', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('93', '1', '15', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('94', '1', '14', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('95', '1', '20', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('98', '12', '7', null, null, null, null);
INSERT INTO `role_permission` VALUES ('100', '12', '16', null, null, null, null);
INSERT INTO `role_permission` VALUES ('102', '1', '5', null, null, null, null);
INSERT INTO `role_permission` VALUES ('103', '1', '8', null, null, null, null);
INSERT INTO `role_permission` VALUES ('104', '1', '16', null, null, null, null);
INSERT INTO `role_permission` VALUES ('106', '12', '2', null, null, null, null);
INSERT INTO `role_permission` VALUES ('107', '12', '4', null, null, null, null);
INSERT INTO `role_permission` VALUES ('108', '12', '5', null, null, null, null);
INSERT INTO `role_permission` VALUES ('109', '12', '6', null, null, null, null);
INSERT INTO `role_permission` VALUES ('110', '12', '28', null, null, null, null);
INSERT INTO `role_permission` VALUES ('111', '12', '27', null, null, null, null);
INSERT INTO `role_permission` VALUES ('112', '12', '20', null, null, null, null);
INSERT INTO `role_permission` VALUES ('116', '5', '7', null, null, null, null);
INSERT INTO `role_permission` VALUES ('117', '5', '3', null, null, null, null);
INSERT INTO `role_permission` VALUES ('118', '1', '28', null, null, null, null);
INSERT INTO `role_permission` VALUES ('119', '1', '29', null, null, null, null);
INSERT INTO `role_permission` VALUES ('120', '1', '30', null, null, null, null);
INSERT INTO `role_permission` VALUES ('121', '1', '31', null, null, null, null);
INSERT INTO `role_permission` VALUES ('125', '1', '33', null, null, null, null);
INSERT INTO `role_permission` VALUES ('126', '1', '36', null, null, null, null);
INSERT INTO `role_permission` VALUES ('127', '1', '35', null, null, null, null);
INSERT INTO `role_permission` VALUES ('129', '1', '34', null, null, null, null);
INSERT INTO `role_permission` VALUES ('130', '1', '32', null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_NAME` varchar(20) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `SALT` varchar(255) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `GENDER` smallint(6) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `ICON` varchar(500) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` varchar(20) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `MODIFIER` varchar(20) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `DESCRIPTION` text,
  `LOGIN_COUNT` int(11) DEFAULT NULL,
  `PREVIOUS_VISIT` datetime DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `DELFLAG` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '159ae5f48f14e89f3f9f54dc995f1f276d472b54', '3d06a5c14d010804', '2014-03-16 22:44:39', '1', '779205344@qq.com', '123456789', 'aaa', '2014-03-20 14:38:57', '1', '2014-12-03 11:57:49', 'admin', null, null, '1217', '2014-12-03 11:55:07', '2014-12-03 11:57:49', null);
INSERT INTO `user` VALUES ('2', 'aaa', 'aaa', 'a339410465979093afe5a5a3efd0ee9e146161d2', 'af0d14a43ab1d0c2', '2014-04-02 11:48:54', '0', 'eee@qq.dd', '200', '', '2014-03-28 11:49:02', '1', '2014-11-04 11:26:17', 'admin', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', 'tianyu', 'tiany', '1e8df4b59b3a3ab452ed1707ad3cb1a8e63a0630', 'bb2aa40007ad1238', '2014-04-02 00:00:00', '0', '', '300', '', '2014-04-02 11:49:13', '1', '2014-11-14 22:30:09', 'admin', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', 'bbb222', 'bbb123466', 'a4f2d284a2f4a0dfcbf7e53fa2efd597914d3ae3', '6159c9b88b93c922', '2014-04-02 00:00:00', '0', '11@11.bee', '400', 'sss', '2014-04-02 11:48:38', '1', '2014-12-04 10:37:01', 'admin', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `CREATER` varchar(20) DEFAULT NULL,
  `MODIFIER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_USER_ROL_REFERENCE_ROLE` (`ROLE_ID`),
  KEY `FK_USER_ROL_REFERENCE_USERS` (`USER_ID`),
  CONSTRAINT `FK_USER_ROL_REFERENCE_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`),
  CONSTRAINT `FK_USER_ROL_REFERENCE_USERS` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1', '2014-07-08 09:36:01', null, '1', null);
INSERT INTO `user_role` VALUES ('19', '3', '5', '2014-03-27 22:37:43', null, '1', null);
INSERT INTO `user_role` VALUES ('28', '2', '13', null, null, null, null);
INSERT INTO `user_role` VALUES ('29', '2', '12', null, null, null, null);
INSERT INTO `user_role` VALUES ('30', '4', '13', null, null, null, null);
INSERT INTO `user_role` VALUES ('31', '4', '12', null, null, null, null);


