SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for k3_channels
-- ----------------------------
DROP TABLE IF EXISTS `k3_channels`;
CREATE TABLE `k3_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `style` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of k3_channels
-- ----------------------------
INSERT INTO `k3_channels` VALUES ('1', 'Flirt', '1', '402', '212', '1');
INSERT INTO `k3_channels` VALUES ('2', 'Love', '1', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('3', 'Dortmund', '2', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('4', 'München', '2', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('5', 'Berlin', '2', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('6', 'Köln', '2', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('7', 'Fifty!', '3', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('8', 'Quiz', '3', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('9', 'Pop', '4', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('10', 'Rock', '4', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('11', 'Schlager', '4', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('12', 'Fußball', '5', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('13', 'Volleyball', '5', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('14', 'DiceSky', '6', '134', '30', '2');
INSERT INTO `k3_channels` VALUES ('15', 'Alternativ', '7', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('16', 'Emo', '7', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('17', 'Friends', '7', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('18', 'Pferdegeflüster', '7', '131', '28', null);
INSERT INTO `k3_channels` VALUES ('19', 'Flirt 18+', '8', '131', '28', null);

-- ----------------------------
-- Table structure for k3_channels_categories
-- ----------------------------
DROP TABLE IF EXISTS `k3_channels_categories`;
CREATE TABLE `k3_channels_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of k3_channels_categories
-- ----------------------------
INSERT INTO `k3_channels_categories` VALUES ('1', 'FLIRT', 'Flirt');
INSERT INTO `k3_channels_categories` VALUES ('2', 'LOKALRUNDE', 'Lokalrunde');
INSERT INTO `k3_channels_categories` VALUES ('3', 'GAMES', 'Games');
INSERT INTO `k3_channels_categories` VALUES ('4', 'MUSIC', 'Music');
INSERT INTO `k3_channels_categories` VALUES ('5', 'SPORT', 'Sport');
INSERT INTO `k3_channels_categories` VALUES ('6', 'MYCHANNELS', 'MyChannels');
INSERT INTO `k3_channels_categories` VALUES ('7', 'THEMETALK', 'Themetalk');
INSERT INTO `k3_channels_categories` VALUES ('8', 'OVER20', 'Over 20');

-- ----------------------------
-- Table structure for k3_channels_styles
-- ----------------------------
DROP TABLE IF EXISTS `k3_channels_styles`;
CREATE TABLE `k3_channels_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `background_color` varchar(255) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of k3_channels_styles
-- ----------------------------
INSERT INTO `k3_channels_styles` VALUES ('1', '000000', 'channels/Flirt.gif');
INSERT INTO `k3_channels_styles` VALUES ('2', '00335B', 'channels/DiceSky.jpg');

-- ----------------------------
-- Table structure for k3_users
-- ----------------------------
DROP TABLE IF EXISTS `k3_users`;
CREATE TABLE `k3_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(26) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `gender` enum('UNSPECIFIED','MALE','FEMALE') DEFAULT 'UNSPECIFIED',
  `password` varchar(255) DEFAULT NULL,
  `rank` enum('NEWBIE','USER','FAMILY','SENIOR','HONORY','SYSADMIN','SYSTEMBOT','APPBOT') DEFAULT 'NEWBIE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of k3_users
-- ----------------------------
INSERT INTO `k3_users` VALUES ('1', 'James', '80', 'MALE', '', 'SYSTEMBOT');
INSERT INTO `k3_users` VALUES ('2', 'Admin', '50', 'FEMALE', '319D9E2E0146CC0F666E3C8BB581E6D89687F87AFBEB9320E5631F1B8AADF11F64F72799DC33895AFF45E013CAE4179F0637E63CD24F4663E91424AFF38ABC86', 'SYSADMIN');

-- ----------------------------
-- Table structure for k3_users_data
-- ----------------------------
DROP TABLE IF EXISTS `k3_users_data`;
CREATE TABLE `k3_users_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of k3_users_data
-- ----------------------------
INSERT INTO `k3_users_data` VALUES ('1', '2', 'LAST_CHANNEL', 'Flirt');

-- ----------------------------
-- Table structure for k3_users_flags
-- ----------------------------
DROP TABLE IF EXISTS `k3_users_flags`;
CREATE TABLE `k3_users_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `flag` enum('CAN_USE_K3_CLIENT') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of k3_users_flags
-- ----------------------------
INSERT INTO `k3_users_flags` VALUES ('1', '2', 'CAN_USE_K3_CLIENT');
SET FOREIGN_KEY_CHECKS=1;
