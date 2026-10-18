/*
undo
Add Lady Liadrin RP Event in Shattrath 3-26-26

Adapted from Trinitycore commit.  
*/

-- Lady Liadrin
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (17076); -- ""
UPDATE `creature` SET `position_x` = -1883.62, `position_y` = 5420.01, `position_z` = -12.4279, `orientation` = 0.519128 WHERE `id` = 17076;
UPDATE `creature` SET `spawntimesecs` = 25 WHERE `guid` = 3413; -- 25
UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 17076; -- 0

DELETE FROM `spawn_group` where `groupId` IN (42281);

DELETE FROM `spawn_group_template` where `groupId` IN (42281);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17076) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1707600,1707601,1707602,1707603) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (17076);

DELETE FROM `creature_text` WHERE `CreatureID` IN (17076);


-- Blood Knight Honor Guard
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (23131); -- ""
DELETE FROM `creature` where guid in (121277,121279);

DELETE FROM `creature_addon` where `guid` in (121277,121279);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-121277,-121279) AND `source_type` = 0;


-- General Tiras'alan
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (25167); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25167) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2516700) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (25167);

DELETE FROM `creature_text` WHERE `CreatureID` IN (25167);


-- A'dal
DELETE FROM `creature_text` WHERE `CreatureID` = 18481 AND `GroupID` IN (4,5,6,7,8,9,10,11,12,13,14);