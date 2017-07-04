/*
Navicat MySQL Data Transfer

Source Server         : RTUDataBase
Source Server Version : 50618
Source Host           : localhost:3306
Source Database       : rtudatabase

Target Server Type    : MYSQL
Target Server Version : 50618
File Encoding         : 65001

Date: 2017-06-02 16:45:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_alarm`
-- ----------------------------
DROP TABLE IF EXISTS `tb_alarm`;
CREATE TABLE `tb_alarm` (
  `id` int(10) NOT NULL,
  `deviceId` int(10) NOT NULL COMMENT '设备id',
  `alarmType` varchar(20) NOT NULL COMMENT '警报类型',
  `alarmNumber` int(10) DEFAULT NULL COMMENT '警报次数',
  `alarmContent` varchar(50) DEFAULT NULL COMMENT '报警内容',
  `alarmStatus` varchar(10) NOT NULL COMMENT '警报打开或关闭状态',
  `alarmStartTime` varchar(50) DEFAULT NULL COMMENT '报警开始时间',
  `alarmEndTime` varchar(50) DEFAULT NULL COMMENT '报警结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_alarm
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_device`
-- ----------------------------
DROP TABLE IF EXISTS `tb_device`;
CREATE TABLE `tb_device` (
  `deviceId` varchar(20) NOT NULL,
  `mp` double(10,0) DEFAULT NULL COMMENT 'RTU主电源电压值',
  `bp` double(10,0) DEFAULT NULL COMMENT 'RTU备用电源电压值',
  PRIMARY KEY (`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_device
-- ----------------------------
INSERT INTO `tb_device` VALUES ('08582852', null, null);
INSERT INTO `tb_device` VALUES ('08582853', null, null);
INSERT INTO `tb_device` VALUES ('12345678', null, null);

-- ----------------------------
-- Table structure for `tb_devicetype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_devicetype`;
CREATE TABLE `tb_devicetype` (
  `deviceTypeId` int(10) NOT NULL COMMENT '设备类型id',
  `deviceName` varchar(30) DEFAULT NULL COMMENT '设备名称',
  `deviceSummary` varchar(100) DEFAULT NULL COMMENT '设备简介',
  PRIMARY KEY (`deviceTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_devicetype
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_elevatorstatus`
-- ----------------------------
DROP TABLE IF EXISTS `tb_elevatorstatus`;
CREATE TABLE `tb_elevatorstatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rtuid` varchar(8) DEFAULT NULL,
  `datatime` varchar(30) DEFAULT NULL COMMENT '采集时间',
  `sendtime` varchar(30) DEFAULT NULL COMMENT '发送时间',
  `floor` varchar(10) DEFAULT NULL COMMENT '楼层',
  `rundirection` varchar(10) DEFAULT NULL COMMENT '电梯运行方向',
  `doorstatus` varchar(10) DEFAULT NULL COMMENT '电梯门状态',
  `bodystatus` varchar(10) DEFAULT NULL COMMENT '电梯内是否有人',
  `sensorstatus` varchar(10) DEFAULT NULL COMMENT '传感器状态',
  `elevatorspeed` varchar(10) DEFAULT NULL COMMENT '电梯速度状态',
  `midstop` varchar(10) DEFAULT NULL COMMENT '电梯非平层停止',
  `trap` varchar(10) DEFAULT NULL COMMENT '电梯困人',
  `Illegalopen` varchar(10) DEFAULT NULL COMMENT '电梯非平层开门',
  `elevatorOverup` varchar(10) DEFAULT NULL COMMENT '电梯冲顶',
  `elevatorOverdown` varchar(10) DEFAULT NULL COMMENT '电梯蹲底',
  `mp` double(10,3) DEFAULT NULL COMMENT '主电源电压',
  `bp` double(10,3) DEFAULT NULL COMMENT '备用电源电压',
  `recordid` int(10) NOT NULL COMMENT '记录id',
  PRIMARY KEY (`id`),
  KEY `hkj` (`recordid`),
  CONSTRAINT `hkj` FOREIGN KEY (`recordid`) REFERENCES `tb_record` (`recordId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_elevatorstatus
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_futian_monitoring_ai`
-- ----------------------------
DROP TABLE IF EXISTS `tb_futian_monitoring_ai`;
CREATE TABLE `tb_futian_monitoring_ai` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phasevo_a` varchar(10) DEFAULT NULL COMMENT '相电压0分别代表A相电压',
  `phasevo_b` varchar(10) DEFAULT NULL COMMENT '相电压1分别代表b相电压',
  `phasevo_c` varchar(10) DEFAULT NULL COMMENT '相电压2分别代表C相电压',
  `phasecur_a` varchar(10) DEFAULT NULL COMMENT '相电流0分别代表A相电压',
  `phasecur_b` varchar(10) DEFAULT NULL COMMENT '相电流1分别代表B相电压',
  `phasecur_c` varchar(10) DEFAULT NULL COMMENT '相电流3分别代表C相电压',
  `temp` varchar(10) DEFAULT '温度值',
  `tst` varchar(10) DEFAULT NULL COMMENT '温度报警状态 （0-不报警 1-报警）',
  `humi` varchar(10) DEFAULT NULL COMMENT '湿度值',
  `hst` varchar(10) DEFAULT NULL COMMENT '湿度报警状态 （0-不报警 1-报警）',
  `recordid` int(10) NOT NULL COMMENT '记录id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_futian_monitoring_ai
-- ----------------------------
INSERT INTO `tb_futian_monitoring_ai` VALUES ('1', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '65');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('2', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '66');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('3', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '67');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('4', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '68');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('5', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '69');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('6', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '70');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('7', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '71');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('8', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '72');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('9', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '78');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('10', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '79');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('11', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '80');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('12', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '83');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('13', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '84');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('14', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '85');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('15', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '86');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('16', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '87');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('17', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '88');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('18', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '89');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('19', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '92');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('20', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '93');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('21', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '102');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('22', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '103');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('23', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '104');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('24', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '105');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('25', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '106');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('26', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '107');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('27', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '108');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('28', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '109');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('29', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '110');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('30', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '111');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('31', '0', '1', '2', '0', '0', '0', '0.0', '0', '0.0', '0', '112');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('32', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '113');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('33', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '114');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('34', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '115');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('35', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '116');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('36', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '117');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('37', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '118');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('38', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '119');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('39', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '120');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('40', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '121');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('41', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '122');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('42', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '123');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('43', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '124');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('44', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '125');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('45', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '126');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('46', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '127');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('47', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '128');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('48', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '129');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('49', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '130');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('50', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '131');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('51', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '132');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('52', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '133');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('53', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '134');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('54', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '135');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('55', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '136');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('56', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '137');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('57', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '138');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('58', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '139');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('59', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '140');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('60', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '141');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('61', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '142');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('62', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '143');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('63', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '144');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('64', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '145');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('65', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '146');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('66', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '147');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('67', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '148');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('68', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '149');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('69', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '150');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('70', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '151');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('71', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '152');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('72', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '153');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('73', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '154');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('74', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '155');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('75', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '156');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('76', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '157');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('77', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '158');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('78', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '159');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('79', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '160');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('80', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '161');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('81', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '162');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('82', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '163');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('83', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '164');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('84', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '165');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('85', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '166');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('86', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '167');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('87', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '168');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('88', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '169');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('89', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '170');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('90', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '171');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('91', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '172');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('92', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '173');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('93', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '174');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('94', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '175');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('95', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '176');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('96', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '178');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('97', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '179');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('98', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '180');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('99', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '181');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('100', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '182');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('101', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '183');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('102', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '184');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('103', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '185');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('104', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '186');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('105', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '187');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('106', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '188');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('107', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '189');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('108', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '190');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('109', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '191');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('110', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '192');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('111', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '193');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('112', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '194');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('113', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '195');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('114', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '196');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('115', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0', '0.0', '0', '197');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('116', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '199');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('117', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '200');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('118', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '204');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('119', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '205');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('120', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '206');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('121', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '207');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('122', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '208');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('123', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '209');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('124', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '210');
INSERT INTO `tb_futian_monitoring_ai` VALUES ('125', '234.9', '34.9', '4.9', '12.0', '25.0', '5.0', '20.5', '0', '80.0', '1', '211');

-- ----------------------------
-- Table structure for `tb_futian_monitoring_di`
-- ----------------------------
DROP TABLE IF EXISTS `tb_futian_monitoring_di`;
CREATE TABLE `tb_futian_monitoring_di` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datatime` varchar(30) DEFAULT NULL COMMENT '采集时间',
  `sendtime` varchar(30) DEFAULT NULL COMMENT '发送时间',
  `ls` varchar(10) DEFAULT NULL COMMENT '漏水，0-不报警，1-报警',
  `yw` varchar(10) DEFAULT NULL COMMENT '烟雾，0-不报警，1-报警',
  `fh` varchar(10) DEFAULT NULL COMMENT '复合火警，0-不报警，1-报警',
  `dy` varchar(10) DEFAULT NULL COMMENT '单一火警，0-不报警，1-报警',
  `gz` varchar(10) DEFAULT NULL COMMENT '故障，0-不报警，1-报警',
  `recordid` varchar(10) NOT NULL COMMENT '记录id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_futian_monitoring_di
-- ----------------------------
INSERT INTO `tb_futian_monitoring_di` VALUES ('1', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '204');
INSERT INTO `tb_futian_monitoring_di` VALUES ('2', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '205');
INSERT INTO `tb_futian_monitoring_di` VALUES ('3', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '206');
INSERT INTO `tb_futian_monitoring_di` VALUES ('4', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '207');
INSERT INTO `tb_futian_monitoring_di` VALUES ('5', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '208');
INSERT INTO `tb_futian_monitoring_di` VALUES ('6', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '209');
INSERT INTO `tb_futian_monitoring_di` VALUES ('7', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '210');
INSERT INTO `tb_futian_monitoring_di` VALUES ('8', '2017-02-20 15:04:30', '2017-02-20 15:04:30', '1', '1', '1', '1', '1', '211');

-- ----------------------------
-- Table structure for `tb_futian_monitoring_rs232_upsdata`
-- ----------------------------
DROP TABLE IF EXISTS `tb_futian_monitoring_rs232_upsdata`;
CREATE TABLE `tb_futian_monitoring_rs232_upsdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `upsconnectstate` varchar(10) DEFAULT NULL COMMENT 'UPS通信状态，0-通信成功，1-通信失败',
  `valinput` varchar(10) DEFAULT NULL COMMENT '输入电压',
  `valoutput` varchar(10) DEFAULT NULL COMMENT '输出电压',
  `percentageoutput` varchar(10) DEFAULT NULL COMMENT '输出电流最大百分比',
  `freqinput` varchar(10) DEFAULT NULL COMMENT '输入频率',
  `batteryvol` varchar(10) DEFAULT NULL COMMENT '电池电压',
  `temp` varchar(10) DEFAULT NULL COMMENT '温度',
  `electricstate` varchar(10) DEFAULT NULL COMMENT '市电状态，0-市电正常，1市电故障',
  `batterystate` varchar(10) DEFAULT NULL COMMENT '电池状态，0-电池正常，1电池电压低',
  `bypassstate` varchar(10) DEFAULT NULL COMMENT '旁路逆变状态，0-逆变状态，1-旁路状态',
  `faultstate` varchar(10) DEFAULT NULL COMMENT 'UPS故障，0-正常，1-UPS内部故障',
  `upstype` varchar(10) DEFAULT NULL COMMENT 'UPS类型，0-在线机，1-后备机',
  `upstestmode` varchar(10) DEFAULT NULL COMMENT '系统测试中，1-测试中',
  `powermode` varchar(10) DEFAULT NULL COMMENT '系统关机，1关机激活状态',
  `warningsound` varchar(10) DEFAULT NULL COMMENT '告警音，1-告警音开',
  `recordid` int(10) NOT NULL COMMENT '记录id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_futian_monitoring_rs232_upsdata
-- ----------------------------
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('1', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '66');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('2', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '67');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('3', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '68');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('4', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '69');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('5', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '70');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('6', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '71');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('7', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '72');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('8', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '78');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('9', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '79');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('10', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '80');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('11', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '83');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('12', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '84');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('13', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '85');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('14', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '86');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('15', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '87');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('16', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '88');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('17', '1', '208.4', '208.4', '34', '59.9', '2.04', '35.0', '1', '1', '1', '1', '0', '0', '0', '0', '89');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('18', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '92');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('19', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '93');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('20', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '102');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('21', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '103');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('22', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '104');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('23', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '105');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('24', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '106');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('25', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '107');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('26', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '108');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('27', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '109');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('28', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '110');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('29', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '111');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('30', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '112');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('31', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '113');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('32', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '114');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('33', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '115');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('34', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '116');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('35', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '117');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('36', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '118');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('37', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '119');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('38', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '120');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('39', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '121');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('40', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '122');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('41', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '123');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('42', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '124');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('43', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '125');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('44', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '126');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('45', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '127');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('46', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '128');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('47', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '129');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('48', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '130');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('49', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '131');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('50', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '132');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('51', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '133');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('52', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '134');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('53', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '135');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('54', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '136');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('55', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '137');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('56', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '138');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('57', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '139');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('58', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '140');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('59', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '141');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('60', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '142');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('61', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '143');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('62', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '144');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('63', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '145');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('64', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '146');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('65', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '147');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('66', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '148');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('67', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '149');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('68', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '150');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('69', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '151');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('70', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '152');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('71', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '153');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('72', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '154');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('73', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '155');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('74', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '156');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('75', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '157');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('76', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '158');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('77', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '159');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('78', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '160');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('79', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '161');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('80', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '162');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('81', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '163');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('82', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '164');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('83', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '165');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('84', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '166');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('85', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '167');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('86', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '168');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('87', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '169');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('88', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '170');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('89', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '171');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('90', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '172');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('91', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '173');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('92', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '174');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('93', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '175');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('94', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '176');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('95', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '178');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('96', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '179');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('97', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '180');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('98', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '181');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('99', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '182');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('100', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '183');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('101', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '184');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('102', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '185');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('103', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '186');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('104', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '187');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('105', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '188');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('106', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '189');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('107', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '190');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('108', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '191');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('109', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '192');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('110', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '193');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('111', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '194');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('112', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '195');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('113', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '196');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('114', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '199');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('115', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '200');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('116', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '204');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('117', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '205');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('118', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '206');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('119', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '207');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('120', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '208');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('121', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '209');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('122', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '210');
INSERT INTO `tb_futian_monitoring_rs232_upsdata` VALUES ('123', '1', '0.0', '0.0', '0', '0.0', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '211');

-- ----------------------------
-- Table structure for `tb_futian_monitoring_rs485_airdata`
-- ----------------------------
DROP TABLE IF EXISTS `tb_futian_monitoring_rs485_airdata`;
CREATE TABLE `tb_futian_monitoring_rs485_airdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `airconnectstate` varchar(10) DEFAULT NULL COMMENT '空调通信状态，0-通信成功，1-通信失败',
  `sitetemp` varchar(10) DEFAULT NULL COMMENT '现场温度',
  `sitehumi` varchar(10) DEFAULT NULL COMMENT '现场湿度',
  `compout` varchar(10) DEFAULT NULL COMMENT '压缩机输出，输出的是百分比',
  `heaterout` varchar(10) DEFAULT NULL COMMENT '加热器输出，输出的是百分比',
  `humiout` varchar(10) DEFAULT NULL COMMENT '加湿器输出，输出的是百分比',
  `fanruntim` varchar(10) DEFAULT NULL COMMENT '风机运行时间',
  `CompRuntime` varchar(10) DEFAULT NULL COMMENT '压缩机运行时间',
  `HeaterRuntime` varchar(10) DEFAULT NULL COMMENT '加热器运行时间',
  `HumiRuntime` varchar(10) DEFAULT NULL COMMENT '加湿器运行时间',
  `FanAlarm` varchar(10) DEFAULT NULL COMMENT '风机过载，0-无报警，1-报警，2-报警确认',
  `CompHAlarn` varchar(10) DEFAULT NULL COMMENT '压缩机高压，0-无报警，1-报警，2-报警确认',
  `CompLAlarm` varchar(10) DEFAULT NULL COMMENT '压缩机低压，0-无报警，1-报警，2-报警确认',
  `HeaterAlarm` varchar(10) DEFAULT NULL COMMENT '加热器过载，0-无报警，1-报警，2-报警确认',
  `HumiAlarm` varchar(10) DEFAULT NULL COMMENT '加湿器淤塞，0-无报警，1-报警，2-报警确认',
  `FireAlarm` varchar(10) DEFAULT NULL COMMENT '火警，0-无报警，1-报警，2-报警确认',
  `FloodAlarm` varchar(10) DEFAULT NULL COMMENT '溢水报警，0-无报警，1-报警，2-报警确认',
  `PhaseAlarm` varchar(10) DEFAULT NULL COMMENT '相位错误，0-无报警，1-报警，2-报警确认',
  `TempHAlarm` varchar(10) DEFAULT NULL COMMENT '温度上限，0-无报警，1-报警，2-报警确认',
  `TempLAlarm` varchar(10) DEFAULT NULL COMMENT '温度下限，0-无报警，1-报警，2-报警确认',
  `HumiHAlarm` varchar(10) DEFAULT NULL COMMENT '湿度上限，0-无报警，1-报警，2-报警确认',
  `HumiLAlarm` varchar(10) DEFAULT NULL COMMENT '湿度下限，0-无报警，1-报警，2-报警确认',
  `SensorAlarm` varchar(10) DEFAULT NULL COMMENT '温度传感器坏，0-无报警，1-报警，2-报警确认',
  `GeneralAlarm` varchar(10) DEFAULT NULL COMMENT '通用警报,0-无警报，1-有警报',
  `FanState` varchar(10) DEFAULT NULL COMMENT '风机，0-关，1开',
  `CompState` varchar(10) DEFAULT NULL COMMENT '压缩机，0-关，1开',
  `HeaterState` varchar(10) DEFAULT NULL COMMENT '加热器，0-关，1开',
  `HumiState` varchar(10) DEFAULT NULL COMMENT '加湿器，0-关，1开',
  `HumiMode` varchar(10) DEFAULT NULL COMMENT '除湿，0-非除湿，1-除湿',
  `DeHumiMode` varchar(10) DEFAULT NULL COMMENT '加湿，0-非加湿，1-加湿',
  `CoolingMode` varchar(10) CHARACTER SET ujis DEFAULT NULL COMMENT '制冷，0-非制冷，1-制冷',
  `recordid` int(10) NOT NULL COMMENT '记录id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_futian_monitoring_rs485_airdata
-- ----------------------------
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('1', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('2', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '67');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('3', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('4', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '69');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('5', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '70');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('6', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '71');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('7', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '72');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('8', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '78');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('9', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '79');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('10', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('11', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '83');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('12', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '84');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('13', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '85');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('14', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '86');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('15', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '87');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('16', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '88');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('17', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '89');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('18', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '92');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('19', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '93');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('20', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '102');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('21', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '103');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('22', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '104');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('23', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '105');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('24', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '106');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('25', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '107');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('26', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '108');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('27', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('28', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('29', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '111');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('30', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '112');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('31', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '113');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('32', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '114');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('33', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '115');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('34', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '116');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('35', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '117');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('36', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '118');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('37', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '119');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('38', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '120');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('39', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '121');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('40', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '122');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('41', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '123');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('42', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '124');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('43', '0', '25.6', '11.2', '56', '36', '96', '90', '11110', '53690', '123450', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '125');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('44', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '126');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('45', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '127');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('46', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '128');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('47', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '129');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('48', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('49', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('50', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '132');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('51', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '133');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('52', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '134');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('53', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '135');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('54', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '136');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('55', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '137');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('56', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '138');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('57', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '139');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('58', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('59', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '141');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('60', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '142');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('61', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '143');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('62', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '144');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('63', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '145');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('64', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '146');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('65', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '147');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('66', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '148');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('67', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '149');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('68', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('69', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '151');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('70', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '152');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('71', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '153');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('72', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '154');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('73', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '155');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('74', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '156');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('75', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '157');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('76', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '158');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('77', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '159');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('78', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '160');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('79', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '161');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('80', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '162');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('81', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '163');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('82', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '164');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('83', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '165');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('84', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '166');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('85', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '167');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('86', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '168');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('87', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '169');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('88', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '170');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('89', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '171');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('90', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '172');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('91', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '173');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('92', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '174');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('93', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '175');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('94', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '176');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('95', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '178');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('96', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '179');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('97', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '180');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('98', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '181');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('99', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '182');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('100', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '183');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('101', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '184');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('102', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '185');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('103', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '186');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('104', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '187');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('105', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '188');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('106', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '189');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('107', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '190');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('108', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '191');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('109', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '192');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('110', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '193');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('111', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '194');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('112', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '195');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('113', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '196');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('114', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '199');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('115', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('116', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '204');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('117', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '205');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('118', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '206');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('119', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '207');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('120', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '208');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('121', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '209');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('122', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '210');
INSERT INTO `tb_futian_monitoring_rs485_airdata` VALUES ('123', '1', '0.0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '211');

-- ----------------------------
-- Table structure for `tb_record`
-- ----------------------------
DROP TABLE IF EXISTS `tb_record`;
CREATE TABLE `tb_record` (
  `recordId` int(10) NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(10) NOT NULL COMMENT '上传该记录的设备id',
  `createTime` varchar(30) NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_record
-- ----------------------------
INSERT INTO `tb_record` VALUES ('212', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('213', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('214', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('215', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('216', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('217', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('218', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('219', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('220', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('221', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('222', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('223', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('224', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('225', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('226', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('227', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('228', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('229', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('230', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('231', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('232', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('233', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('234', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('235', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('236', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('237', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('238', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('239', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('240', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('241', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('242', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('243', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('244', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('245', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('246', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('247', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('248', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('249', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('250', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('251', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('252', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('253', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('254', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('255', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('256', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('257', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('258', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('259', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('260', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('261', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('262', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('263', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('264', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('265', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('266', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('267', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('268', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('269', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('270', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('271', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('272', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('273', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('274', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('275', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('276', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('277', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('278', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('279', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('280', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('281', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('282', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('283', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('284', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('285', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('286', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('287', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('288', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('289', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('290', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('291', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('292', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('293', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('294', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('295', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('296', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('297', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('298', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('299', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('300', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('301', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('302', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('303', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('304', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('305', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('306', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('307', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('308', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('309', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('310', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('311', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('312', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('313', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('314', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('315', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('316', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('317', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('318', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('319', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('320', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('321', '12345678', '2017-02-20 15:04:30');
INSERT INTO `tb_record` VALUES ('322', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('323', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('324', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('325', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('326', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('327', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('328', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('329', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('330', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('331', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('332', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('333', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('334', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('335', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('336', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('337', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('338', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('339', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('340', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('341', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('342', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('343', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('344', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('345', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('346', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('347', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('348', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('349', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('350', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('351', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('352', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('353', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('354', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('355', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('356', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('357', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('358', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('359', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('360', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('361', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('362', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('363', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('364', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('365', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('366', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('367', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('368', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('369', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('370', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('371', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('372', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('373', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('374', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('375', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('376', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('377', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('378', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('379', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('380', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('381', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('382', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('383', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('384', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('385', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('386', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('387', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('388', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('389', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('390', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('391', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('392', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('393', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('394', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('395', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('396', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('397', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('398', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('399', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('400', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('401', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('402', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('403', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('404', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('405', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('406', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('407', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('408', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('409', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('410', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('411', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('412', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('413', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('414', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('415', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('416', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('417', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('418', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('419', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('420', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('421', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('422', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('423', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('424', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('425', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('426', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('427', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('428', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('429', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('430', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('431', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('432', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('433', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('434', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('435', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('436', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('437', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('438', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('439', '08582852', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('440', '08582853', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('441', '08582853', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('442', '08582853', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('443', '08582853', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('444', '08582853', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('445', '08582853', '2017-04-28 04:13:15');
INSERT INTO `tb_record` VALUES ('446', '08582853', '2017-04-28 04:13:15');

-- ----------------------------
-- Table structure for `tb_rtu_standard_data`
-- ----------------------------
DROP TABLE IF EXISTS `tb_rtu_standard_data`;
CREATE TABLE `tb_rtu_standard_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rtuid` varchar(20) DEFAULT '' COMMENT '设备id',
  `datatime` varchar(30) DEFAULT NULL,
  `projecttype` varchar(100) DEFAULT NULL COMMENT '项目类型',
  `datatype` varchar(255) DEFAULT NULL COMMENT '数据类型',
  `rtudi` varchar(512) DEFAULT NULL COMMENT 'di数据',
  `rtudo` varchar(512) DEFAULT NULL COMMENT 'do数据',
  `rtuai` varchar(512) DEFAULT NULL COMMENT 'ai数据',
  `rtupu` varchar(512) DEFAULT NULL COMMENT 'pu数据',
  `rtupower` varchar(512) DEFAULT NULL COMMENT 'power数据',
  `recordid` varchar(30) DEFAULT NULL COMMENT 'ai数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_rtu_standard_data
-- ----------------------------
INSERT INTO `tb_rtu_standard_data` VALUES ('7', '08582852', '2017-04-28 04:13:15', null, 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '433');
INSERT INTO `tb_rtu_standard_data` VALUES ('8', '08582852', '2017-04-28 04:13:15', null, 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '434');
INSERT INTO `tb_rtu_standard_data` VALUES ('9', '08582852', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '437');
INSERT INTO `tb_rtu_standard_data` VALUES ('10', '08582852', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '438');
INSERT INTO `tb_rtu_standard_data` VALUES ('11', '08582852', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '439');
INSERT INTO `tb_rtu_standard_data` VALUES ('12', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '440');
INSERT INTO `tb_rtu_standard_data` VALUES ('13', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '441');
INSERT INTO `tb_rtu_standard_data` VALUES ('14', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '442');
INSERT INTO `tb_rtu_standard_data` VALUES ('15', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '443');
INSERT INTO `tb_rtu_standard_data` VALUES ('16', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '444');
INSERT INTO `tb_rtu_standard_data` VALUES ('17', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '445');
INSERT INTO `tb_rtu_standard_data` VALUES ('18', '08582853', '2017-04-28 04:13:15', 'Singapore_project', 'standard_data', '[{\"st\":0,\"ch\":0,\"va\":1},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":0},{\"ch\":1,\"va\":0}]', '[{\"st\":0,\"ch\":0,\"va\":0},{\"st\":0,\"ch\":1,\"va\":0}]', '[{\"ch\":0,\"va\":7},{\"ch\":1,\"va\":32}]', '[{\"mp\":11.875}]', '446');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userName` varchar(20) NOT NULL COMMENT '用户名',
  `Password` varchar(20) NOT NULL COMMENT '密码',
  `APN` varchar(20) NOT NULL COMMENT '手机接入点',
  `phoneNumber` varchar(11) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'name1', '123456', 'CMNET', '12345678996');
INSERT INTO `tb_user` VALUES ('3', 'name3', '333', 'jerry@163.com', '12345685236');
INSERT INTO `tb_user` VALUES ('6', 'name3', '6354', 'cmnet', '12345685236');
INSERT INTO `tb_user` VALUES ('7', 'name3', '6354', 'cmnet', '12345685236');
INSERT INTO `tb_user` VALUES ('8', 'name3', '6354', 'cmnet', '12345685236');
