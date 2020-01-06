/*
Navicat MySQL Data Transfer

Source Server         : mysql_192.168.71.49
Source Server Version : 50626
Source Host           : 192.168.71.49:3306
Source Database       : googlemap

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-07-28 09:24:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_province
-- ----------------------------
DROP TABLE IF EXISTS `s_province`;
CREATE TABLE `s_province` (
  `ProvinceID` bigint(20) NOT NULL,
  `ProvinceName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProvinceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_province
-- ----------------------------
INSERT INTO `s_province` VALUES ('1', '北京市');
INSERT INTO `s_province` VALUES ('2', '天津市');
INSERT INTO `s_province` VALUES ('3', '河北省');
INSERT INTO `s_province` VALUES ('4', '山西省');
INSERT INTO `s_province` VALUES ('5', '内蒙古自治区');
INSERT INTO `s_province` VALUES ('6', '辽宁省');
INSERT INTO `s_province` VALUES ('7', '吉林省');
INSERT INTO `s_province` VALUES ('8', '黑龙江省');
INSERT INTO `s_province` VALUES ('9', '上海市');
INSERT INTO `s_province` VALUES ('10', '江苏省');
INSERT INTO `s_province` VALUES ('11', '浙江省');
INSERT INTO `s_province` VALUES ('12', '安徽省');
INSERT INTO `s_province` VALUES ('13', '福建省');
INSERT INTO `s_province` VALUES ('14', '江西省');
INSERT INTO `s_province` VALUES ('15', '山东省');
INSERT INTO `s_province` VALUES ('16', '河南省');
INSERT INTO `s_province` VALUES ('17', '湖北省');
INSERT INTO `s_province` VALUES ('18', '湖南省');
INSERT INTO `s_province` VALUES ('19', '广东省');
INSERT INTO `s_province` VALUES ('20', '广西壮族自治区');
INSERT INTO `s_province` VALUES ('21', '海南省');
INSERT INTO `s_province` VALUES ('22', '重庆市');
INSERT INTO `s_province` VALUES ('23', '四川省');
INSERT INTO `s_province` VALUES ('24', '贵州省');
INSERT INTO `s_province` VALUES ('25', '云南省');
INSERT INTO `s_province` VALUES ('26', '西藏自治区');
INSERT INTO `s_province` VALUES ('27', '陕西省');
INSERT INTO `s_province` VALUES ('28', '甘肃省');
INSERT INTO `s_province` VALUES ('29', '青海省');
INSERT INTO `s_province` VALUES ('30', '宁夏回族自治区');
INSERT INTO `s_province` VALUES ('31', '新疆维吾尔自治区');
INSERT INTO `s_province` VALUES ('32', '香港特别行政区');
INSERT INTO `s_province` VALUES ('33', '澳门特别行政区');
INSERT INTO `s_province` VALUES ('34', '台湾省');
