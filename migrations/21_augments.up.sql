CREATE TABLE IF NOT EXISTS `player_augments`
(
	`player_id` INT NOT NULL,
	`augments` BLOB NOT NULL,
	FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

ALTER TABLE `player_items` ADD COLUMN `augments` BLOB NOT NULL;
ALTER TABLE `player_inboxitems` ADD COLUMN `augments` BLOB NOT NULL;
ALTER TABLE `player_depotitems` ADD COLUMN `augments` BLOB NOT NULL;
ALTER TABLE `player_rewarditems` ADD COLUMN `augments` BLOB NOT NULL;
ALTER TABLE `player_storeinboxitems` ADD COLUMN `augments` BLOB NOT NULL;
