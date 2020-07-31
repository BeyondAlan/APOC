/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : apocdata

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 31/07/2020 11:47:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board`  (
  `boardID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stuNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `boardTIME` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `boardTEXT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` int(255) NOT NULL,
  `stuID` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`boardID`) USING BTREE,
  INDEX `stuID`(`stuID`) USING BTREE,
  CONSTRAINT `board_ibfk_1` FOREIGN KEY (`stuID`) REFERENCES `memberdata` (`stuID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for memberdata
-- ----------------------------
DROP TABLE IF EXISTS `memberdata`;
CREATE TABLE `memberdata`  (
  `stuID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stuNAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuSEX` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuNUM` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuSCH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuCOLL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuMAJ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuPSW` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuBIF` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `liveness` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`stuID`) USING BTREE,
  INDEX `ID`(`stuID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18003 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of memberdata
-- ----------------------------
INSERT INTO `memberdata` VALUES (18001, '毕丰旺', '男', '171404050101', '河南科技大学', '信息工程学院', '物联网工程', '12345', '我是攻城狮', NULL, NULL);
INSERT INTO `memberdata` VALUES (18002, '李瑾', '女', '171404050101', '科大', '信工', '物联', '12345', '攻城狮', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
