/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : shsystem

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2019-02-15 17:57:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('admin', 'admin', 'admin');
INSERT INTO `login` VALUES ('user', 'user', 'user');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `role` int(255) DEFAULT NULL,
  `datetime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201521139', '张三39', '0', '南昌39', '软件工程', '6班', '0', '2019-02-10');
INSERT INTO `student` VALUES ('201521140', '张三40', '1', '南昌40', '交通工程', '8班', '0', null);
INSERT INTO `student` VALUES ('201521141', '张三41', '0', '南昌41', '英语专业', '7班', '0', null);
INSERT INTO `student` VALUES ('201521142', '张三42', '0', '南昌42', '英语专业', '8班', '0', null);
INSERT INTO `student` VALUES ('201521143', '张三43', '0', '南昌43', '交通工程', '6班', '0', null);
INSERT INTO `student` VALUES ('201521144', '张三44', '1', '南昌44', '软件工程', '1班', '0', null);
INSERT INTO `student` VALUES ('201521146', '张三46', '1', '南昌46', '桥梁工程', '1班', '0', null);
INSERT INTO `student` VALUES ('201521147', '张三47', '1', '南昌47', '英语专业', '8班', '0', null);
INSERT INTO `student` VALUES ('201521148', '张三48', '1', '南昌48', '英语专业', '2班', '0', null);
INSERT INTO `student` VALUES ('201521149', '张三49', '1', '南昌49', '桥梁工程', '5班', '0', null);
INSERT INTO `student` VALUES ('201521150', '张三50', '1', '南昌50', '计算机科学与技术', '1班', '0', null);
INSERT INTO `student` VALUES ('201521151', '张三51', '1', '南昌51', '计算机', '1班', '0', null);
INSERT INTO `student` VALUES ('201521152', '张三52', '1', '南昌52', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521153', '张三53', '1', '南昌53', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521154', '张三54', '1', '南昌54', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521155', '张三55', '1', '南昌55', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521156', '张三56', '1', '南昌56', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521157', '张三57', '1', '南昌57', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521158', '张三58', '1', '南昌58', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521159', '张三59', '1', '南昌59', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521160', '张三60', '1', '南昌60', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521161', '张三61', '1', '南昌61', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521162', '张三62', '1', '南昌62', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521163', '张三63', '1', '南昌63', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521164', '张三64', '1', '南昌64', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521165', '张三65', '1', '南昌65', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521166', '张三66', '1', '南昌66', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521167', '张三67', '1', '南昌67', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521168', '张三68', '1', '南昌68', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521169', '张三69', '1', '南昌69', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521170', '张三70', '1', '南昌70', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521171', '张三71', '1', '南昌71', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521172', '张三72', '1', '南昌72', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521173', '张三73', '1', '南昌73', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521174', '张三74', '1', '南昌74', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521175', '张三75', '1', '南昌75', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521176', '张三76', '1', '南昌76', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521177', '张三77', '1', '南昌77', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521178', '张三78', '1', '南昌78', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521179', '张三79', '1', '南昌79', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521180', '张三80', '1', '南昌80', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521181', '张三81', '1', '南昌81', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521182', '张三82', '1', '南昌82', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521183', '张三83', '1', '南昌83', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521184', '张三84', '1', '南昌84', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521185', '张三85', '1', '南昌85', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521186', '张三86', '1', '南昌86', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521187', '张三87', '1', '南昌87', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521188', '张三88', '1', '南昌88', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521189', '张三89', '1', '南昌89', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521190', '张三90', '1', '南昌90', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521191', '张三91', '1', '南昌91', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521192', '张三92', '1', '南昌92', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521193', '张三93', '1', '南昌93', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521194', '张三94', '1', '南昌94', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521195', '张三95', '1', '南昌95', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521196', '张三96', '1', '南昌96', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521197', '张三97', '1', '南昌97', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521198', '张三98', '1', '南昌98', '计算机', '1班', '1', null);
INSERT INTO `student` VALUES ('201521199', '张三99', '1', '南昌99', '计算机', '1班', '1', null);
