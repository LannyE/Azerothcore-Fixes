/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (9119,911900)
LIMIT 0, 1000

-- Date: 2022-02-06 01:57
*/
-- Muigin
UPDATE `creature_template` SET `AIName`= "" WHERE `entry` = 9119;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9119,911900);

-- Bloodpetal Sprouts
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 9157;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 9157 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 915700 AND `source_type` = 9;

DELETE FROM waypoints WHERE `entry` = 9157;
