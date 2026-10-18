/*
-- Query: SELECT * FROM temp.creature_text where CreatureID = 8256
LIMIT 0, 1000

-- Date: 2022-02-05 19:49
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` = 8256;
DELETE FROM `waypoints` WHERE `entry` = 8256;
DELETE FROM `creature_text` WHERE `creatureID` = 8256 AND `groupid` in (0,4,5) AND `id` = 0;