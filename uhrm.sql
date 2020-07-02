/*
Navicat MySQL Data Transfer

Source Server         : practical
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : uhrm

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-07-02 13:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
`uid`  int(11) NOT NULL ,
`uname`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`userid`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`passwd`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`pname`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
PRIMARY KEY (`uid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
`uid`  int(11) NOT NULL ,
`attend`  int(11) NULL DEFAULT NULL ,
`absence`  int(11) NULL DEFAULT NULL ,
`leveary`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`uid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of attendance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
`duserid`  int(11) NOT NULL ,
`dname`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`dternum`  int(11) NULL DEFAULT NULL ,
`dbirth`  date NULL DEFAULT NULL ,
`fname`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`dtellnum`  varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
PRIMARY KEY (`duserid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
`positionid`  int(11) NOT NULL ,
`pname`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`function`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`positionid`),
FOREIGN KEY (`function`) REFERENCES `power` (`function`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `function` (`function`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of position
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
`function`  int(11) NOT NULL ,
`url`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
PRIMARY KEY (`function`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of power
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
`uid`  int(11) NOT NULL COMMENT '用户编号' ,
`salary`  float(20,2) NULL DEFAULT NULL COMMENT '月薪' ,
`reward`  float(20,2) NULL DEFAULT NULL COMMENT '奖励补贴' ,
`bankcard`  varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银行卡号' ,
PRIMARY KEY (`uid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of salary
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
`uid`  int(11) NOT NULL ,
`sex`  varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`name`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`birth`  date NULL DEFAULT NULL ,
`idcard`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`education`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`birthplace`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`positionid`  int(11) NULL DEFAULT NULL ,
`condition`  char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL ,
`duserid`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`uid`),
FOREIGN KEY (`positionid`) REFERENCES `position` (`positionid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`duserid`) REFERENCES `department` (`duserid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `positionid` (`positionid`) USING BTREE ,
INDEX `duserid` (`duserid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
BEGIN;
COMMIT;
