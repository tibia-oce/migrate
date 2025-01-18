CREATE TABLE IF NOT EXISTS `player_rewarditems`
(
	`player_id` INT NOT NULL,
	`sid` INT NOT NULL COMMENT 'range 0-100 will be reserved for adding items to players who are offline and all > 100 is for items saved from reward chest',
	`pid` INT NOT NULL DEFAULT '0',
	`itemtype` SMALLINT UNSIGNED NOT NULL,
	`count` SMALLINT NOT NULL DEFAULT '0',
	`attributes` BLOB NOT NULL,
	UNIQUE KEY `player_id_2` (`player_id`, `sid`),
	FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;
