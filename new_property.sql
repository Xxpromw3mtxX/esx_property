USE `es_extended`;

ALTER TABLE `users` ADD COLUMN `last_property` VARCHAR(255) NULL;

INSERT INTO `addon_account` (name, label, shared) VALUES (
    'property_black_money','Money Sale Property',0
);

INSERT INTO `addon_inventory` (name, label, shared) VALUES (
    'property','Property',0
);

INSERT INTO `datastore` (name, label, shared) VALUES (
    'property','Property',0
);

DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `inventory` varchar(255) DEFAULT NULL,
  `cloakroom` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);