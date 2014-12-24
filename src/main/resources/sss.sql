/*
Navicat MySQL Data Transfer

Source Server         : myconnection
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : sss

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-12-24 09:00:48
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=2268 DEFAULT CHARSET=utf8 COMMENT='日录资料表';

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('2259', '/system/user/update', 'admin', '2014-12-04 10:25:40', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '22', null, '{\"id\":[\"4\"],\"birthday\":[\"2014-4-2\"],\"phone\":[\"400\"],\"email\":[\"11@11.bee\"],\"name\":[\"bbb1234\"],\"gender\":[\"0\"],\"loginName\":[\"bbb222\"]}');
INSERT INTO `log` VALUES ('2260', '/system/user/update', 'admin', '2014-12-04 10:26:14', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '9', null, '{\"id\":[\"4\"],\"birthday\":[\"2014-4-2\"],\"phone\":[\"400\"],\"email\":[\"11@11.bee\"],\"name\":[\"bbb12346\"],\"gender\":[\"0\"],\"loginName\":[\"bbb222\"]}');
INSERT INTO `log` VALUES ('2261', '/system/user/update', 'admin', '2014-12-04 10:37:01', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '7', null, '{\"id\":[\"4\"],\"birthday\":[\"2014-4-2\"],\"phone\":[\"400\"],\"email\":[\"11@11.bee\"],\"name\":[\"bbb123466\"],\"gender\":[\"0\"],\"loginName\":[\"bbb222\"]}');
INSERT INTO `log` VALUES ('2262', '/system/role/update', 'admin', '2014-12-04 10:48:43', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '215', null, '{\"id\":[\"12\"],\"roleCode\":[\"guest212\"],\"sort\":[\"4\"],\"description\":[\"s\"],\"name\":[\"guest22\"]}');
INSERT INTO `log` VALUES ('2263', '/system/user/create', 'admin', '2014-12-05 11:55:03', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '305', null, '{\"id\":[\"\"],\"birthday\":[\"2014-12-05\"],\"confirmPassword\":[\"123456\"],\"phone\":[\"\"],\"email\":[\"\"],\"name\":[\"tyty\"],\"plainPassword\":[\"123456\"],\"gender\":[\"1\"],\"loginName\":[\"test\"]}');
INSERT INTO `log` VALUES ('2264', '/system/permission/create', 'admin', '2014-12-13 11:19:15', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '215', null, '{\"id\":[\"\"],\"icon\":[\"icon-hamburg-full-time\"],\"sort\":[\"\"],\"description\":[\"定时任务管理，支持集群\"],\"name\":[\"定时任务管理\"],\"permCode\":[\"\"],\"pid\":[\"\"],\"type\":[\"F\"],\"url\":[\"system/scheuleJob\"]}');
INSERT INTO `log` VALUES ('2265', '/system/permission/update', 'admin', '2014-12-13 11:19:40', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '66', null, '{\"id\":[\"37\"],\"icon\":[\"icon-hamburg-full-time\"],\"sort\":[\"\"],\"description\":[\"定时任务管理，支持集群\"],\"name\":[\"定时任务管理\"],\"permCode\":[\"\"],\"pid\":[\"15\"],\"type\":[\"F\"],\"url\":[\"system/scheuleJob\"]}');
INSERT INTO `log` VALUES ('2266', '/system/permission/update', 'admin', '2014-12-13 11:22:17', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '186', null, '{\"id\":[\"37\"],\"icon\":[\"icon-hamburg-full-time\"],\"sort\":[\"\"],\"description\":[\"定时任务管理，支持集群\"],\"name\":[\"定时任务管理\"],\"permCode\":[\"\"],\"pid\":[\"15\"],\"type\":[\"F\"],\"url\":[\"system/scheduleJob\"]}');
INSERT INTO `log` VALUES ('2267', '/system/user/delete/2', 'admin', '2014-12-14 00:06:49', null, 'Windows 7', 'Firefox 3', '127.0.0.1', null, '120', null, '{}');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
INSERT INTO `permission` VALUES ('37', '15', '定时任务管理', 'F', null, 'system/scheduleJob', '', 'icon-hamburg-full-time', null, null, '定时任务管理，支持集群', null, null, null, null);
INSERT INTO `permission` VALUES ('38', '15', 'cron表达式生成', 'F', null, 'system/scheduleJob/quartzCron', '', 'icon-hamburg-future', null, null, '', null, null, null, null);

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
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('scheduler', 'name0', 'group', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('scheduler', 'tianyu1', 'group1', '0/10 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('scheduler', '6da64b5bd2ee-b59c2ee3-5e53-4c11-96d9-07a36940eade', 'DEFAULT', null, 'com.ty.tianyu.system.service.TaskA', '1', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000007800);
INSERT INTO `qrtz_job_details` VALUES ('scheduler', 'name0', 'group', null, 'com.ty.tianyu.system.service.TaskA', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000B7363686564756C654A6F6273720027636F6D2E74792E7469616E79752E73797374656D2E656E746974792E5363686564756C654A6F6200000000000000010200064C0009636C6173734E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000B6465736372697074696F6E71007E00094C000567726F757071007E00094C00046E616D6571007E00094C000673746174757371007E00097870740022636F6D2E74792E7469616E79752E73797374656D2E736572766963652E5461736B4174000D302F35202A202A202A202A203F7074000567726F75707400056E616D6530740001317800);
INSERT INTO `qrtz_job_details` VALUES ('scheduler', 'tianyu1', 'group1', null, 'com.ty.tianyu.system.service.TaskA', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000B7363686564756C654A6F6273720027636F6D2E74792E7469616E79752E73797374656D2E656E746974792E5363686564756C654A6F6200000000000000010200064C0009636C6173734E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000B6465736372697074696F6E71007E00094C000567726F757071007E00094C00046E616D6571007E00094C000673746174757371007E00097870740022636F6D2E74792E7469616E79752E73797374656D2E736572766963652E5461736B4174000E302F3130202A202A202A202A203F74000CE68891E698AFE68F8FE8BFB074000667726F7570317400077469616E797531740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('scheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('scheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('scheduler', 'tianyu-PC1419317134597', '1419317749863', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('scheduler', 'name0', 'group', 'name0', 'group', null, '1418613375000', '1418613360000', '5', 'PAUSED', 'CRON', '1418486025000', '0', null, '0', '');
INSERT INTO `qrtz_triggers` VALUES ('scheduler', 'tianyu1', 'group1', 'tianyu1', 'group1', null, '1418486110000', '1418486100000', '5', 'PAUSED', 'CRON', '1418485743000', '0', null, '0', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

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
INSERT INTO `role_permission` VALUES ('88', '1', '12', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('89', '1', '25', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('90', '1', '26', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('91', '1', '27', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('93', '1', '15', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('94', '1', '14', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('95', '1', '20', '2014-07-08 09:37:06', 'admin', null, null);
INSERT INTO `role_permission` VALUES ('98', '12', '7', null, null, null, null);
INSERT INTO `role_permission` VALUES ('100', '12', '16', null, null, null, null);
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
INSERT INTO `role_permission` VALUES ('132', '5', '37', null, null, null, null);
INSERT INTO `role_permission` VALUES ('133', '5', '15', null, null, null, null);
INSERT INTO `role_permission` VALUES ('135', '1', '37', null, null, null, null);
INSERT INTO `role_permission` VALUES ('139', '1', '6', null, null, null, null);
INSERT INTO `role_permission` VALUES ('141', '1', '4', null, null, null, null);
INSERT INTO `role_permission` VALUES ('142', '1', '38', null, null, null, null);

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `JOB_GROUP` varchar(255) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(50) DEFAULT NULL,
  `CLASSNAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('5', 'data_import_ty', 'dataWork2', '1', '0/5 * * * * ?', 'com.ty.tianyu.system.service.TaskA', '自定义添加的任务');
INSERT INTO `schedule_job` VALUES ('6', 'data_import_ty2', 'dataWork2', '1', '0/60 * * * * ?', 'com.ty.tianyu.system.service.TaskA', '自定义添加的任务');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '159ae5f48f14e89f3f9f54dc995f1f276d472b54', '3d06a5c14d010804', '2014-03-16 22:44:39', '1', '779205344@qq.com', '123456789', 'aaa', '2014-03-20 14:38:57', '1', '2014-12-17 10:59:47', 'admin', null, null, '1293', '2014-12-17 10:56:51', '2014-12-17 10:59:47', null);
INSERT INTO `user` VALUES ('3', 'tianyu', 'tiany', '1e8df4b59b3a3ab452ed1707ad3cb1a8e63a0630', 'bb2aa40007ad1238', '2014-04-02 00:00:00', '0', '', '300', '', '2014-04-02 11:49:13', '1', '2014-11-14 22:30:09', 'admin', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', 'bbb222', 'bbb123466', 'a4f2d284a2f4a0dfcbf7e53fa2efd597914d3ae3', '6159c9b88b93c922', '2014-04-02 00:00:00', '0', '11@11.bee', '400', 'sss', '2014-04-02 11:48:38', '1', '2014-12-04 10:37:01', 'admin', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('5', 'test', 'tyty', 'dc6d230074477c8d736bfe0205260e9320565aa6', '94886d7223c80850', '2014-12-05 00:00:00', '1', '', '', null, '2014-12-05 11:55:03', 'admin', '2014-12-14 00:09:27', 'tyty', null, null, '1', null, '2014-12-14 00:09:27', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1', '2014-07-08 09:36:01', null, '1', null);
INSERT INTO `user_role` VALUES ('19', '3', '5', '2014-03-27 22:37:43', null, '1', null);
INSERT INTO `user_role` VALUES ('30', '4', '13', null, null, null, null);
INSERT INTO `user_role` VALUES ('31', '4', '12', null, null, null, null);
INSERT INTO `user_role` VALUES ('32', '5', '5', null, null, null, null);

-- ----------------------------
-- Procedure structure for sp_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_user`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `sp_user`(uid int)
BEGIN
	select * from `user` where id=uid;

END
;;
DELIMITER ;
