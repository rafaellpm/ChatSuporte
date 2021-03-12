/*
Navicat MySQL Data Transfer

Source Server         : localhost_3390
Source Server Version : 50729
Source Host           : localhost:3309
Source Database       : chatsuporte

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2021-01-14 16:29:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chatsuporte
-- ----------------------------
DROP TABLE IF EXISTS `chatsuporte`;
CREATE TABLE `chatsuporte` (
  `ID_MSG` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO_ANALISTA` varchar(255) DEFAULT NULL,
  `MENSAGEM` varchar(250) DEFAULT NULL,
  `DATA_HORA` datetime DEFAULT NULL,
  `COD_EMPRESA` int(11) DEFAULT NULL,
  `VISUALIZADO_CLI` int(11) DEFAULT NULL,
  `ID_CHAMADO` int(25) DEFAULT NULL,
  `VISUALIZADO_SUP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_MSG`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
