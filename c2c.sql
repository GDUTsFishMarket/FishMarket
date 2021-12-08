/*
 Navicat Premium Data Transfer

 Source Server         : mysqld
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : c2c

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 06/12/2021 13:26:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for admininformation
-- ----------------------------
DROP TABLE IF EXISTS `admininformation`;
CREATE TABLE `admininformation`  (
  `id` int(11) NOT NULL,
  `ano` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for adminoperation
-- ----------------------------
DROP TABLE IF EXISTS `adminoperation`;
CREATE TABLE `adminoperation`  (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for allkinds
-- ----------------------------
DROP TABLE IF EXISTS `allkinds`;
CREATE TABLE `allkinds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for boughtshop
-- ----------------------------
DROP TABLE IF EXISTS `boughtshop`;
CREATE TABLE `boughtshop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for department_info
-- ----------------------------
DROP TABLE IF EXISTS `department_info`;
CREATE TABLE `department_info`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for goodscar
-- ----------------------------
DROP TABLE IF EXISTS `goodscar`;
CREATE TABLE `goodscar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goodsoforderform
-- ----------------------------
DROP TABLE IF EXISTS `goodsoforderform`;
CREATE TABLE `goodsoforderform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ofid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shopcontext
-- ----------------------------
DROP TABLE IF EXISTS `shopcontext`;
CREATE TABLE `shopcontext`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shopinformation
-- ----------------------------
DROP TABLE IF EXISTS `shopinformation`;
CREATE TABLE `shopinformation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `sort` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL,
  `transaction` int(11) NOT NULL DEFAULT 1,
  `sales` int(11) NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shoppicture
-- ----------------------------
DROP TABLE IF EXISTS `shoppicture`;
CREATE TABLE `shoppicture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for specifickinds
-- ----------------------------
DROP TABLE IF EXISTS `specifickinds`;
CREATE TABLE `specifickinds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime NULL DEFAULT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `education` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `family` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `treatment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clazz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sno` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dormitory` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_id`(`id`) USING BTREE,
  INDEX `selectByPhone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userpassword
-- ----------------------------
DROP TABLE IF EXISTS `userpassword`;
CREATE TABLE `userpassword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `password` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userrelease
-- ----------------------------
DROP TABLE IF EXISTS `userrelease`;
CREATE TABLE `userrelease`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1009 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit` int(11) NOT NULL DEFAULT 80,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `modified` datetime NULL DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userwant
-- ----------------------------
DROP TABLE IF EXISTS `userwant`;
CREATE TABLE `userwant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wantcontext
-- ----------------------------
DROP TABLE IF EXISTS `wantcontext`;
CREATE TABLE `wantcontext`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NULL DEFAULT NULL,
  `uwid` int(11) NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
