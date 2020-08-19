/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : sc

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-07-24 16:40:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '雷锋', '小王', '222222', '2019.02.03', '男', '12345677777');
INSERT INTO `user` VALUES ('2', '羊羊羊', '小阳', '111111', '2020.01.01', '男', '12345678911');
INSERT INTO `user` VALUES ('3', 'a', 'b', '111', null, null, '11111');
INSERT INTO `user` VALUES ('4', 'aa', 'bb', '222', null, null, '22222');
INSERT INTO `user` VALUES ('5', '昵称223', '真名22', '111111', '1999.01.01', '男', '11111111111');
