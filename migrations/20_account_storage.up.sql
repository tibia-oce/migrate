CREATE TABLE IF NOT EXISTS `account_storage`
(
	`account_id` INT NOT NULL,
	`key` INT UNSIGNED NOT NULL,
	`value` INT NOT NULL,
	PRIMARY KEY (`account_id`, `key`),
	FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;
