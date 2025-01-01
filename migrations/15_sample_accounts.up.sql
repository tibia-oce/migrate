-- Insert initial account into the accounts table
INSERT INTO `accounts` (
  `id`, `name`, `password`, `secret`, `type`, `premium_ends_at`,
  `email`, `created`, `rlname`, `location`, `country`,
  `web_lastlogin`, `web_flags`, `email_hash`, `email_new`,
  `email_new_time`, `email_code`, `email_next`, `premium_points`,
  `email_verified`, `key`, `creation`, `premdays`, `lastday`, `vote`
) VALUES
(
  1, -- id
  'god', -- name
  '21298df8a3277357ee55b01df9530b535cf08ec1', -- password (hashed)
  NULL, -- secret
  5, -- type
  1756337472, -- premium_ends_at (timestamp)
  'jordan.hoare@outlook.com', -- email
  0, -- created (timestamp)
  'Jordan', -- rlname (real name)
  '', -- location
  'au', -- country (ISO code)
  0, -- web_lastlogin (timestamp)
  3, -- web_flags (flags for web features)
  '', -- email_hash
  '', -- email_new
  0, -- email_new_time (timestamp)
  '', -- email_code
  0, -- email_next
  50000, -- premium_points
  1, -- email_verified (boolean)
  '', -- key
  0, -- creation (timestamp)
  300, -- premdays
  0, -- lastday
  0 -- vote
);

INSERT INTO `players` (
    `id`,
    `name`,
    `group_id`,
    `account_id`,
    `level`,
    `vocation`,
    `health`,
    `healthmax`,
    `experience`,
    `lookbody`,
    `lookfeet`,
    `lookhead`,
    `looklegs`,
    `looktype`,
    `lookaddons`,
    `direction`,
    `maglevel`,
    `mana`,
    `manamax`,
    `manaspent`,
    `soul`,
    `town_id`,
    `posx`,
    `posy`,
    `posz`,
    `conditions`,
    `cap`,
    `sex`,
    `lastlogin`,
    `lastip`,
    `save`,
    `skull`,
    `skulltime`,
    `lastlogout`,
    `blessings`,
    `onlinetime`,
    `deletion`,
    `balance`,
    `offlinetraining_time`,
    `offlinetraining_skill`,
    `stamina`,
    `skill_fist`,
    `skill_fist_tries`,
    `skill_club`,
    `skill_club_tries`,
    `skill_sword`,
    `skill_sword_tries`,
    `skill_axe`,
    `skill_axe_tries`,
    `skill_dist`,
    `skill_dist_tries`,
    `skill_shielding`,
    `skill_shielding_tries`,
    `skill_fishing`,
    `skill_fishing_tries`
) VALUES
(
    1, -- id
    'Rook Sample', -- name
    1, -- group_id
    1, -- account_id
    8, -- level
    0, -- vocation
    185, -- health
    185, -- healthmax
    4200, -- experience
    113, -- lookbody
    115, -- lookfeet
    95, -- lookhead
    39, -- looklegs
    129, -- looktype
    0, -- lookaddons
    2, -- direction
    0, -- maglevel
    35, -- mana
    35, -- manamax
    0, -- manaspent
    0, -- soul
    1, -- town_id
    191, -- posx
    279, -- posy
    7, -- posz
    '', -- conditions
    440, -- cap (capacity)
    1, -- sex (1=male, 0=female)
    0, -- lastlogin (timestamp)
    0, -- lastip
    1, -- save (boolean)
    0, -- skull
    0, -- skulltime
    0, -- lastlogout
    0, -- blessings
    0, -- onlinetime
    0, -- deletion (boolean)
    1000000, -- balance
    43200, -- offlinetraining_time (seconds)
    -1, -- offlinetraining_skill
    2520, -- stamina
    10, -- skill_fist
    0, -- skill_fist_tries
    10, -- skill_club
    0, -- skill_club_tries
    10, -- skill_sword
    0, -- skill_sword_tries
    10, -- skill_axe
    0, -- skill_axe_tries
    10, -- skill_dist
    0, -- skill_dist_tries
    10, -- skill_shielding
    0, -- skill_shielding_tries
    10, -- skill_fishing
    0 -- skill_fishing_tries
),
(
    2, -- id
    'Sorcerer Sample', -- name
    1, -- group_id
    1, -- account_id
    8, -- level
    1, -- vocation
    185, -- health
    185, -- healthmax
    4200, -- experience
    113, -- lookbody
    115, -- lookfeet
    95, -- lookhead
    39, -- looklegs
    129, -- looktype
    0, -- lookaddons
    2, -- direction
    0, -- maglevel
    35, -- mana
    35, -- manamax
    0, -- manaspent
    0, -- soul
    1, -- town_id
    191, -- posx
    279, -- posy
    7, -- posz
    '', -- conditions
    440, -- cap
    1, -- sex
    0, -- lastlogin
    0, -- lastip
    1, -- save
    0, -- skull
    0, -- skulltime
    0, -- lastlogout
    0, -- blessings
    0, -- onlinetime
    0, -- deletion
    1000000, -- balance
    43200, -- offlinetraining_time
    -1, -- offlinetraining_skill
    2520, -- stamina
    10, -- skill_fist
    0, -- skill_fist_tries
    10, -- skill_club
    0, -- skill_club_tries
    10, -- skill_sword
    0, -- skill_sword_tries
    10, -- skill_axe
    0, -- skill_axe_tries
    10, -- skill_dist
    0, -- skill_dist_tries
    10, -- skill_shielding
    0, -- skill_shielding_tries
    10, -- skill_fishing
    0 -- skill_fishing_tries
),
(
    3, -- id
    'Druid Sample', -- name
    1, -- group_id
    1, -- account_id
    8, -- level
    2, -- vocation
    185, -- health
    185, -- healthmax
    4200, -- experience
    113, -- lookbody
    115, -- lookfeet
    95, -- lookhead
    39, -- looklegs
    129, -- looktype
    0, -- lookaddons
    2, -- direction
    0, -- maglevel
    35, -- mana
    35, -- manamax
    0, -- manaspent
    0, -- soul
    1, -- town_id
    191, -- posx
    279, -- posy
    7, -- posz
    '', -- conditions
    440, -- cap
    1, -- sex
    0, -- lastlogin
    0, -- lastip
    1, -- save
    0, -- skull
    0, -- skulltime
    0, -- lastlogout
    0, -- blessings
    0, -- onlinetime
    0, -- deletion
    1000000, -- balance
    43200, -- offlinetraining_time
    -1, -- offlinetraining_skill
    2520, -- stamina
    10, -- skill_fist
    0, -- skill_fist_tries
    10, -- skill_club
    0, -- skill_club_tries
    10, -- skill_sword
    0, -- skill_sword_tries
    10, -- skill_axe
    0, -- skill_axe_tries
    10, -- skill_dist
    0, -- skill_dist_tries
    10, -- skill_shielding
    0, -- skill_shielding_tries
    10, -- skill_fishing
    0 -- skill_fishing_tries
),
(
    4, -- id
    'Paladin Sample', -- name
    1, -- group_id
    1, -- account_id
    8, -- level
    3, -- vocation
    185, -- health
    185, -- healthmax
    4200, -- experience
    113, -- lookbody
    115, -- lookfeet
    95, -- lookhead
    39, -- looklegs
    129, -- looktype
    0, -- lookaddons
    2, -- direction
    0, -- maglevel
    35, -- mana
    35, -- manamax
    0, -- manaspent
    0, -- soul
    1, -- town_id
    191, -- posx
    279, -- posy
    7, -- posz
    '', -- conditions
    440, -- cap
    1, -- sex
    0, -- lastlogin
    0, -- lastip
    1, -- save
    0, -- skull
    0, -- skulltime
    0, -- lastlogout
    0, -- blessings
    0, -- onlinetime
    0, -- deletion
    1000000, -- balance
    43200, -- offlinetraining_time
    -1, -- offlinetraining_skill
    2520, -- stamina
    10, -- skill_fist
    0, -- skill_fist_tries
    10, -- skill_club
    0, -- skill_club_tries
    10, -- skill_sword
    0, -- skill_sword_tries
    10, -- skill_axe
    0, -- skill_axe_tries
    10, -- skill_dist
    0, -- skill_dist_tries
    10, -- skill_shielding
    0, -- skill_shielding_tries
    10, -- skill_fishing
    0 -- skill_fishing_tries
),
(
    5, -- id
    'Knight Sample', -- name
    1, -- group_id
    1, -- account_id
    8, -- level
    4, -- vocation
    185, -- health
    185, -- healthmax
    4200, -- experience
    113, -- lookbody
    115, -- lookfeet
    95, -- lookhead
    39, -- looklegs
    129, -- looktype
    0, -- lookaddons
    2, -- direction
    0, -- maglevel
    35, -- mana
    35, -- manamax
    0, -- manaspent
    0, -- soul
    1, -- town_id
    191, -- posx
    279, -- posy
    7, -- posz
    '', -- conditions
    440, -- cap
    1, -- sex
    0, -- lastlogin
    0, -- lastip
    1, -- save
    0, -- skull
    0, -- skulltime
    0, -- lastlogout
    0, -- blessings
    0, -- onlinetime
    0, -- deletion
    1000000, -- balance
    43200, -- offlinetraining_time
    -1, -- offlinetraining_skill
    2520, -- stamina
    10, -- skill_fist
    0, -- skill_fist_tries
    10, -- skill_club
    0, -- skill_club_tries
    10, -- skill_sword
    0, -- skill_sword_tries
    10, -- skill_axe
    0, -- skill_axe_tries
    10, -- skill_dist
    0, -- skill_dist_tries
    10, -- skill_shielding
    0, -- skill_shielding_tries
    10, -- skill_fishing
    0 -- skill_fishing_tries
),
(
    6, -- id
    'Admin', -- name
    6, -- group_id
    1, -- account_id
    500, -- level
    0, -- vocation
    3000, -- health
    3000, -- healthmax
    2058474800, -- experience
    113, -- lookbody
    115, -- lookfeet
    95, -- lookhead
    39, -- looklegs
    75, -- looktype
    0, -- lookaddons
    2, -- direction
    100, -- maglevel
    3000, -- mana
    3000, -- manamax
    0, -- manaspent
    0, -- soul
    1, -- town_id
    191, -- posx
    279, -- posy
    7, -- posz
    '', -- conditions
    5000, -- cap
    1, -- sex
    0, -- lastlogin
    0, -- lastip
    1, -- save
    0, -- skull
    0, -- skulltime
    0, -- lastlogout
    0, -- blessings
    0, -- onlinetime
    0, -- deletion
    1000000, -- balance
    43200, -- offlinetraining_time
    -1, -- offlinetraining_skill
    2520, -- stamina
    10, -- skill_fist
    0, -- skill_fist_tries
    10, -- skill_club
    0, -- skill_club_tries
    10, -- skill_sword
    0, -- skill_sword_tries
    10, -- skill_axe
    0, -- skill_axe_tries
    10, -- skill_dist
    0, -- skill_dist_tries
    10, -- skill_shielding
    0, -- skill_shielding_tries
    10, -- skill_fishing
    0 -- skill_fishing_tries
);
