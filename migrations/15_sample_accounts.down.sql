-- Remove the inserted god account from the accounts table
DELETE FROM `accounts`
WHERE `id` = 1 AND `name` = 'god';
