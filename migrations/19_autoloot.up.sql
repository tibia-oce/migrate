ALTER TABLE `players`
  ADD COLUMN `autoloot` BLOB NULL DEFAULT NULL AFTER `conditions`
