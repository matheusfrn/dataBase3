-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'instituition'
-- 
-- ---

DROP TABLE IF EXISTS `instituition`;
		
CREATE TABLE `instituition` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `description` INTEGER NULL DEFAULT NULL,
  `work_hours` INTEGER NULL DEFAULT NULL,
  `rating` INTEGER NULL DEFAULT NULL,
  `id_post` INTEGER NULL DEFAULT NULL,
  `id_actions` INTEGER NULL DEFAULT NULL,
  `id_permission` INTEGER NULL DEFAULT NULL,
  `password` INTEGER NULL DEFAULT NULL,
  `email` INTEGER NULL DEFAULT NULL,
  `cnpj` INTEGER NULL DEFAULT NULL,
  `id_pfp` INTEGER NULL DEFAULT NULL,
  `fantasy_name` INTEGER NULL DEFAULT NULL,
  `id_type` INTEGER NULL DEFAULT NULL,
  `registered_when` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'post'
-- 
-- ---

DROP TABLE IF EXISTS `post`;
		
CREATE TABLE `post` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `timestamp` INTEGER NULL DEFAULT NULL,
  `description` INTEGER NULL DEFAULT NULL,
  `fantasy_name` INTEGER NULL DEFAULT NULL,
  `id_pfp` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'actions'
-- 
-- ---

DROP TABLE IF EXISTS `actions`;
		
CREATE TABLE `actions` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` INTEGER NULL DEFAULT NULL,
  `description` INTEGER NULL DEFAULT NULL,
  `work_hours` INTEGER NULL DEFAULT NULL,
  `id_pfp` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'pfp'
-- 
-- ---

DROP TABLE IF EXISTS `pfp`;
		
CREATE TABLE `pfp` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'comments'
-- 
-- ---

DROP TABLE IF EXISTS `comments`;
		
CREATE TABLE `comments` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `content` INTEGER NULL DEFAULT NULL,
  `id_pfp` INTEGER NULL DEFAULT NULL,
  `timestamp` INTEGER NULL DEFAULT NULL,
  `fantasy_name` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'permissions'
-- 
-- ---

DROP TABLE IF EXISTS `permissions`;
		
CREATE TABLE `permissions` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'user_volunteer'
-- 
-- ---

DROP TABLE IF EXISTS `user_volunteer`;
		
CREATE TABLE `user_volunteer` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_user` INTEGER NULL DEFAULT NULL,
  `id_actions` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'comments_post'
-- 
-- ---

DROP TABLE IF EXISTS `comments_post`;
		
CREATE TABLE `comments_post` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_comments` INTEGER NULL DEFAULT NULL,
  `id_post` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
		
CREATE TABLE `user` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `password` INTEGER NULL DEFAULT NULL,
  `email` INTEGER NULL DEFAULT NULL,
  `cpf` INTEGER NULL DEFAULT NULL,
  `id_pfp` INTEGER NULL DEFAULT NULL,
  `id_permission` INTEGER NULL DEFAULT NULL,
  `id_actions` INTEGER NULL DEFAULT NULL,
  `work_hours` INTEGER NULL DEFAULT NULL,
  `description` INTEGER NULL DEFAULT NULL,
  `id_post` INTEGER NULL DEFAULT NULL,
  `registered_when` INTEGER NULL DEFAULT NULL,
  `tags` INTEGER NULL DEFAULT NULL,
  `name` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'type'
-- 
-- ---

DROP TABLE IF EXISTS `type`;
		
CREATE TABLE `type` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `instituition` ADD FOREIGN KEY (id_post) REFERENCES `post` (`id`);
ALTER TABLE `instituition` ADD FOREIGN KEY (id_actions) REFERENCES `actions` (`id`);
ALTER TABLE `instituition` ADD FOREIGN KEY (id_permission) REFERENCES `permissions` (`id`);
ALTER TABLE `instituition` ADD FOREIGN KEY (id_pfp) REFERENCES `pfp` (`id`);
ALTER TABLE `instituition` ADD FOREIGN KEY (id_type) REFERENCES `type` (`id`);
ALTER TABLE `post` ADD FOREIGN KEY (id_pfp) REFERENCES `pfp` (`id`);
ALTER TABLE `actions` ADD FOREIGN KEY (id_pfp) REFERENCES `pfp` (`id`);
ALTER TABLE `comments` ADD FOREIGN KEY (id_pfp) REFERENCES `pfp` (`id`);
ALTER TABLE `user_volunteer` ADD FOREIGN KEY (id_user) REFERENCES `user` (`id`);
ALTER TABLE `user_volunteer` ADD FOREIGN KEY (id_actions) REFERENCES `actions` (`id`);
ALTER TABLE `comments_post` ADD FOREIGN KEY (id_comments) REFERENCES `comments` (`id`);
ALTER TABLE `comments_post` ADD FOREIGN KEY (id_post) REFERENCES `post` (`id`);
ALTER TABLE `user` ADD FOREIGN KEY (id_pfp) REFERENCES `pfp` (`id`);
ALTER TABLE `user` ADD FOREIGN KEY (id_permission) REFERENCES `permissions` (`id`);
ALTER TABLE `user` ADD FOREIGN KEY (id_actions) REFERENCES `actions` (`id`);
ALTER TABLE `user` ADD FOREIGN KEY (id_post) REFERENCES `post` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `instituition` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `post` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `actions` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `pfp` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `comments` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `permissions` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user_volunteer` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `comments_post` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `instituition` (`id`,`description`,`work_hours`,`rating`,`id_post`,`id_actions`,`id_permission`,`password`,`email`,`cnpj`,`id_pfp`,`fantasy_name`,`id_type`,`registered_when`) VALUES
-- ('','','','','','','','','','','','','','');
-- INSERT INTO `post` (`id`,`timestamp`,`description`,`fantasy_name`,`id_pfp`) VALUES
-- ('','','','','');
-- INSERT INTO `actions` (`id`,`name`,`description`,`work_hours`,`id_pfp`) VALUES
-- ('','','','','');
-- INSERT INTO `pfp` (`id`) VALUES
-- ('');
-- INSERT INTO `comments` (`id`,`content`,`id_pfp`,`timestamp`,`fantasy_name`) VALUES
-- ('','','','','');
-- INSERT INTO `permissions` (`id`) VALUES
-- ('');
-- INSERT INTO `user_volunteer` (`id`,`id_user`,`id_actions`) VALUES
-- ('','','');
-- INSERT INTO `comments_post` (`id`,`id_comments`,`id_post`) VALUES
-- ('','','');
-- INSERT INTO `user` (`id`,`password`,`email`,`cpf`,`id_pfp`,`id_permission`,`id_actions`,`work_hours`,`description`,`id_post`,`registered_when`,`tags`,`name`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `type` (`id`) VALUES
-- ('');