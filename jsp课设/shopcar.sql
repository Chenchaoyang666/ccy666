/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : sc

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-07-24 16:41:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `number` int DEFAULT '1',
  `selecttype` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('1', 'img/1.jpg', '苹果8/7手机壳iPhone7 Plus保护壳全包防摔磨砂硬外壳', '28.00', '1', '4.7英寸-深邃蓝');
INSERT INTO `shopcar` VALUES ('8', 'img/seckill-item2.jpg', '全新升级版6英寸护眼非反光电子墨水', '989.00', '1', '暂无套餐');
INSERT INTO `shopcar` VALUES ('9', 'img/seckill-item1.jpg', '【赠小风扇】维他 柠檬茶250ml*32盒 礼品装 整箱', '71.90', '1', '暂无套餐');
INSERT INTO `shopcar` VALUES ('14', 'img/seckill-item3.jpg', '粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒', '21.80', '1', '暂无套餐');
INSERT INTO `shopcar` VALUES ('16', 'img/seckill-item4.jpg', '【京东超市】清风（APP）抽纸 原木纯品金装系列 3层', '49.90', '1', '暂无套餐');
