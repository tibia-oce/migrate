ALTER TABLE `players`
  ADD COLUMN `ancestral_points` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `balance`,
  ADD COLUMN `ancestral_rank_points` BIGINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ancestral_points`;
