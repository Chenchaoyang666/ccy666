/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : sc

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-07-24 16:41:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `selecttype` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('3', 'img/1.jpg', '                                                苹果8/7手机壳iPhone7 Plus保护壳全包防摔磨砂硬外壳', '28.00', '1', '                                                4.7英寸-深邃蓝', '                                                雷锋', '                                                12345677777                                            ', '                                                西安市西电北门                                            ', '                                                000000');
INSERT INTO `t_order` VALUES ('4', 'img/seckill-item2.jpg', '                                                全新升级版6英寸护眼非反光电子墨水', '989.00', '1', '                                                暂无套餐', '                                                雷锋', '                                                12345677777                                            ', '                                                西安市西电北门                                            ', '                                                000000');
INSERT INTO `t_order` VALUES ('6', 'img/seckill-item5.jpg', '                                                NIKE耐克 男子休闲鞋 AIR MAX 90 ESSENTIAL 气垫', '559.90', '1', '                                                暂无套餐', '                                                雷锋2', '                                                15269874561                                            ', '                                                西安电子科技大学123                                            ', '                                                710000');
INSERT INTO `t_order` VALUES ('9', 'img/seckill-item3.jpg', '                                                粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒', '21.80', '2', '                                                暂无套餐', '                                                雷锋2', '                                                15269874561                                            ', '                                                西安电子科技大学123                                            ', '                                                710000');
