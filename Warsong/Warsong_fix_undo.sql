/*
Warsong Labor Camp Fixes
Deforester and Peon correct emote.
*/

-- Warsong Deforester
UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` IN (33015,33022,33016,33018,33026); -- 0


-- Warsong Peon
UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` IN (32813,32844,32810,32829,32814,32845,32839,32841); -- 0