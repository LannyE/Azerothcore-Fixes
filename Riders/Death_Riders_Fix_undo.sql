/*
Fix the Smart Scripts for the 3 Death Riders Quests in WOTLK
Give Rokir and Baelok Text they say during fights
Fix error in Sapph SAI script
*/


-- Sapph
UPDATE `smart_scripts` SET `link` = 6 WHERE `entryorguid` in (30956) and `source_type` = 0 and `id` in (5); -- Sapph - Remove link to old quest credit SAI -- 6


-- Rokir
UPDATE `creature` SET `position_x` = 6066.26, `position_y` = 1922.77, `position_z` = 632.703, `orientation` = 0.174533, `MovementType` = 1, `wander_distance` = 5 WHERE `guid` = 124724; -- 31160 swap with 30954
UPDATE `creature` SET `position_x` = 6069.33, `position_y` = 1921.17, `position_z` = 632.578, `orientation` = 5.48977, `MovementType` = 0, `wander_distance` = 0 WHERE `guid` = 140201; -- 30954 swap with 31160

UPDATE `smart_scripts` SET `link` = 0 WHERE `entryorguid` in (31160,30954) and `source_type` = 0 and `id` in (0); -- Rokir - Link Zombie Horde to Say Line 1 -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` in (31160,30954) and `source_type` = 0 and `id` in (3,4,5,6);

DELETE FROM `creature_text` where `CreatureID` in (30954,31160);


-- Baelok
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5 WHERE `guid` = 124723; -- 30953 should not be moving -- 1 5

DELETE FROM `smart_scripts` WHERE `entryorguid` in (30953,31159) and `source_type` = 0 and `id` in (3,4,5,6);

DELETE FROM `creature_text` where `CreatureID` in (30953,31159);

DELETE FROM `waypoint_data` where `id` in (1402000) and `point` IN (4);
