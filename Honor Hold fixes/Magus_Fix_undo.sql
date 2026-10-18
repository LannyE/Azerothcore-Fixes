/*
-- Query: SELECT * FROM acore_world.waypoint_data where id in (584370)
LIMIT 0, 1000

-- Date: 2023-11-28 09:29
*/
UPDATE `creature_template` SET `AIName` = "", `mechanic_immune_mask` = 0 WHERE `entry` in (16821);
UPDATE `creature` SET `position_x` = -811.135,`position_y` = 2621.08,`position_z` = 124.389,`orientation` = 2.09458 WHERE `guid` IN (57879);

DELETE FROM `creature_text` WHERE `CreatureID` IN (16821);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16826) and `GroupID` IN (1);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16819) and `GroupID` IN (6);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16821,1682100,1682101,1682102,1682103,1682104,1682105);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16819) and `id` IN (8,9);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `id` IN (7);

DELETE FROM `waypoints` WHERE `entry` IN (16821);

