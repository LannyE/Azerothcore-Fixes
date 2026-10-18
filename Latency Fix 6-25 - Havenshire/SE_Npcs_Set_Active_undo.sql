
-- Mine Car
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 28821;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 28821) AND (`source_type` = 0) AND (`id` IN (1));


-- Scarlet Miners
UPDATE `creature_template` SET `flags_extra` = 2 WHERE (`entry` = 28822);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 28822;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 28822) AND (`source_type` = 0) AND (`id` IN (6));

-- Havenshire Stallions(some guids only)
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (-129208, -129214)) AND (`source_type` = 0) AND (`id` IN (3));

DELETE FROM `smart_scripts` WHERE (`entryorguid` = -129215) AND (`source_type` = 0) AND (`id` IN (12));

DELETE FROM `smart_scripts` WHERE (`entryorguid` = -129210) AND (`source_type` = 0) AND (`id` IN (5));

-- Havenshire Mares (some guids only)
UPDATE `creature_template` SET `flags_extra` = 2 WHERE (`entry` = 28606);

DELETE FROM `smart_scripts` WHERE (`source_type` = 0) AND (`entryorguid` IN (-129230, -129234, -129235, -129236));

-- Havenshire Colts (some guids only)
UPDATE `creature_template` SET `flags_extra` = 2 WHERE (`entry` = 28607);

DELETE FROM `smart_scripts` WHERE (`source_type` = 0) AND (`entryorguid` IN (-129243, -129245, -129246, -129248, -129249, -129251));

-- Scarlet Commanders
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 28530;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 28530);

-- Scarlet Crusaders (some guids only).
UPDATE `creature_template` SET `flags_extra` = 0 WHERE (`entry` = 28529);

DELETE FROM `smart_scripts` WHERE (`source_type` = 0) AND (`entryorguid` IN (-128705, -128706, -128707, -128708, -128709, -128710, -128711, -128712, -128713));

-- Tirisfal Crusaders
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (-130716, -130717, -130718, -130719, -130720, -130734, -130739, -130741, -130743, -130745, -130746, -130749, -130750, -130751, -130752, -130753, -130754, -130755, -130766, -130779, -130782, -130788, -130789, -130790, -130791, -130792, -130794, -130796, -130798, -130799, -130800, -130801, -130802, -130803, -130804, -130805, -130806, -130827, -130829, -130830)) AND (`source_type` = 0) AND (`id` IN (8));

-- Hearthglen Crusaders
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (-130558, -130559, -130565, -130566, -130567, -130569, -130570, -130577, -130587, -130599, -130603, -130608, -130609, -130613, -130615, -130616, -130617, -130618, -130619, -130620, -130637, -130641, -130642, -130653, -130654, -130655, -130656, -130657, -130659, -130661, -130662, -130663, -130664, -130665, -130666, -130667, -130682)) AND (`source_type` = 0) AND (`id` IN (8));

-- Volatile Ghouls
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29136;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 29136) AND (`source_type` = 0) AND (`id` IN (1));

-- Rampaging Abomination
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29115;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 29115) AND (`source_type` = 0) AND (`id` IN (2));

-- Death Knight Champions
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29106;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 29106) AND (`source_type` = 0) AND (`id` IN (4));
