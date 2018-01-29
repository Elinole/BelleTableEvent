/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : belletableevents

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-29 23:47:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `IDUser` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Pseudo` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`IDUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'HAMADOUCHE', 'Elias', 'elinole94@gmail.com', 'Elinole', '1', 'f9979f36577da1ba51890e088db3fbc410ede368373c17e2b3fb0f8ffb0f2a51e3edddc78284c4a7d65e5f185e7c1ca66f3ec623013452d8821060a0e96ca6f3');
INSERT INTO `users` VALUES ('2', 'GOWEN', 'David', 'davidcgowen@teleworm.us', 'Saids1992', '2', 'f9979f36577da1ba51890e088db3fbc410ede368373c17e2b3fb0f8ffb0f2a51e3edddc78284c4a7d65e5f185e7c1ca66f3ec623013452d8821060a0e96ca6f3');
