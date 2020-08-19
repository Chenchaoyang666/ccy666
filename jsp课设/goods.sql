/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : sc

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-07-31 10:22:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `oldprice` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'img/seckill-item1.jpg', '【赠小风扇】维他 柠檬茶250ml*32盒 礼品装 整箱', '71.9', '89.6');
INSERT INTO `goods` VALUES ('2', 'img/seckill-item2.jpg', '全新升级版6英寸护眼非反光电子墨水', '989', '1299');
INSERT INTO `goods` VALUES ('3', 'img/seckill-item3.jpg', '粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒', '21.8', '49');
INSERT INTO `goods` VALUES ('4', 'img/seckill-item4.jpg', '【京东超市】清风（APP）抽纸 原木纯品金装系列 3层', '49.9', '59');
INSERT INTO `goods` VALUES ('5', 'img/seckill-item5.jpg', 'NIKE耐克 男子休闲鞋 AIR MAX 90 ESSENTIAL 气垫', '559.9', '759.9');
