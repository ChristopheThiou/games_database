CREATE DATABASE IF NOT EXISTS `board_games` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE IF NOT EXISTS `board_games`.`token_pack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token_numbers` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
)
;

CREATE TABLE IF NOT EXISTS `board_games`.`account` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `avatar` varchar(255) NOT NULL,
    `pseudo` varchar(255) NOT NULL,
    `birth_date` date NOT NULL,
    `country` varchar(255) NOT NULL,
    `chat_restriction` BOOLEAN NOT NULL,
    `freemium` BOOLEAN NOT NULL,
    `currency` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
)
;

CREATE TABLE IF NOT EXISTS `board_games`.`login` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `token` varchar(255) NOT NULL,
    `account_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`account_id`) REFERENCES `account`(`id`)
)
;

CREATE TABLE IF NOT EXISTS `board_games`.`token` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `token` int(255) NOT NULL,
    `token_value` int(11) NOT NULL,
    PRIMARY KEY (`id`)
)
;

CREATE TABLE IF NOT EXISTS `board_games`.`purchase` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `purchase_amount` int(255) NOT NULL,
    `purchase_date` date NOT NULL,
    `purchase_list` varchar(255) NOT NULL,
    `purchase_info` varchar(255) NOT NULL,
    `purchase_type` varchar(255) NOT NULL,
    `account_id` int(11) NOT NULL,
    `token_pack_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`account_id`) REFERENCES `account`(`id`),
    FOREIGN KEY (`token_pack_id`) REFERENCES `token_pack`(`id`)
)
;

CREATE TABLE IF NOT EXISTS `board_games`.`token_account` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `account_id` int(11) NOT NULL,
    `token_id` int(11) NOT NULL,
    FOREIGN KEY (`account_id`) REFERENCES `account`(`id`),
    FOREIGN KEY (`token_id`) REFERENCES `token`(`id`),
    PRIMARY KEY (`id`)
)
;

CREATE TABLE IF NOT EXISTS `board_games`.`token_pack_token` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `token_pack_id` int(11) NOT NULL,
    `token_id` int(11) NOT NULL,
    FOREIGN KEY (`token_pack_id`) REFERENCES `token_pack`(`id`),
    FOREIGN KEY (`token_id`) REFERENCES `token`(`id`),
    PRIMARY KEY (`id`)
)
;