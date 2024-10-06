-- Insert initial account into the accounts table
INSERT INTO `accounts` (
  `id`, `name`, `password`, `secret`, `type`, `premium_ends_at`, 
  `email`, `created`, `rlname`, `location`, `country`, 
  `web_lastlogin`, `web_flags`, `email_hash`, `email_new`, 
  `email_new_time`, `email_code`, `email_next`, `premium_points`, 
  `email_verified`, `key`, `creation`, `premdays`, `lastday`, `vote`
) VALUES
(
  1, 'god', '21298df8a3277357ee55b01df9530b535cf08ec1', NULL, 5, 1756337472, 
  'jordan.hoare@outlook.com', 0, 'Jordan', '', 'au', 0, 3, '', '', 0, '', 
  0, 50000, 1, '', 0, 300, 0, 0
);
