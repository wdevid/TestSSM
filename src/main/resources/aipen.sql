/*
Navicat MySQL Data Transfer

Source Server         : mypen
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : aipen

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-19 11:14:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adress`
-- ----------------------------
DROP TABLE IF EXISTS `adress`;
CREATE TABLE `adress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `adress` varchar(20) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adress
-- ----------------------------

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(30) NOT NULL,
  `comments_content` varchar(500) NOT NULL COMMENT '评论内容',
  `thumb` varchar(10) DEFAULT NULL COMMENT '点赞数目',
  `comments_pic` varchar(500) DEFAULT NULL,
  `delete` varchar(60) NOT NULL COMMENT '是否删除',
  `uid` varchar(128) DEFAULT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `disk`
-- ----------------------------
DROP TABLE IF EXISTS `disk`;
CREATE TABLE `disk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `total_size` varchar(20) NOT NULL,
  `free_size` varchar(20) DEFAULT NULL,
  `use_size` varchar(20) DEFAULT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disk
-- ----------------------------

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `order_status` varchar(10) NOT NULL,
  `serial_number` varchar(20) NOT NULL COMMENT '流水号',
  `adress` varchar(50) NOT NULL,
  `distribution` varchar(20) NOT NULL COMMENT '配送方式',
  `order_time` date NOT NULL COMMENT '下单时间',
  `pay_time` date NOT NULL COMMENT '支付时间',
  `consignee` varchar(10) NOT NULL COMMENT '收货人',
  `amount_payable` varchar(10) NOT NULL COMMENT '应付金额',
  `amount_realpay` varchar(10) NOT NULL COMMENT '实收金额',
  `telphone` varchar(20) NOT NULL,
  `modify_people` varchar(20) NOT NULL COMMENT '修改人',
  `modify_time` date NOT NULL COMMENT '修改时间',
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `pid` varchar(30) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `product_number` int(11) NOT NULL COMMENT '产品数量',
  `amount_realpay` varchar(10) NOT NULL COMMENT '实收金额',
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `pen_data`
-- ----------------------------
DROP TABLE IF EXISTS `pen_data`;
CREATE TABLE `pen_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `sync_status` varchar(10) NOT NULL,
  `pen_data` varchar(20) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pen_data
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `show_pic` varchar(100) NOT NULL,
  `shelves` varchar(10) NOT NULL COMMENT '是否下架',
  `create_people` varchar(20) NOT NULL,
  `modify_people` varchar(20) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for `product_detail`
-- ----------------------------
DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(30) NOT NULL,
  `product_pic` varchar(50) NOT NULL,
  `descript` varchar(500) NOT NULL,
  `create_people` varchar(20) NOT NULL,
  `update_people` varchar(20) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `name` varchar(20) NOT NULL,
  `head_pic` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` int(11) NOT NULL,
  `telphone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `vip`
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(128) NOT NULL,
  `vip_level` varchar(15) NOT NULL,
  `vip_integral` varchar(15) NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
