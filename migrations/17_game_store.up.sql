CREATE TABLE `shop_history` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `account_id` INT NOT NULL,
  `player_id` INT NOT NULL,
  `purchase_date` DATETIME NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `price` INT NOT NULL,
  `quantity` INT(11) NOT NULL DEFAULT 0,
  `target` VARCHAR(255) DEFAULT NULL,
  CONSTRAINT `fk_shop_history_account`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_shop_history_player`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
)
ENGINE = InnoDB DEFAULT CHARACTER
SET = utf8;