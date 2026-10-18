SET @SPIRITEVENT := 88; -- EVENT NEW GUID
DELETE FROM `game_event` WHERE `eventEntry` = @SPIRITEVENT;
DELETE FROM `game_event_creature` WHERE `eventEntry`= @SPIRITEVENT;

UPDATE `creature_template` SET `AIName`= "" WHERE `entry` = 6109;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 6109 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1548100,1548101) AND `source_type`= 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 15481 AND `source_type`= 0 AND `id` > 2;

UPDATE `creature` SET `MovementType` = 0,`position_x` = 2622.22,`position_y` = -5977.93,`position_z` = 100.76,`orientation` = 4.21209 WHERE `guid` = 52349;
UPDATE `creature_template` SET `speed_walk` = 1.3 WHERE `entry` = 6109;
UPDATE `creature_template_addon` SET `path_id` = 0 WHERE `entry` = 6109;
DELETE FROM `creature_addon` WHERE `guid` = 52349;
DELETE FROM `waypoint_data` WHERE `id` = 6109;

UPDATE `creature` SET `MovementType` = 2,`position_x` = 2651.77,`position_y` = -6098.25,`position_z` = 98.7651,`orientation` = 1.72953 WHERE `guid` = 35867;
UPDATE `creature_template` SET `speed_walk` = 1.1 WHERE `entry` = 15481;
UPDATE `creature_template_addon` SET `path_id` = 0 WHERE `entry` = 15481;

DELETE FROM `waypoint_data` WHERE `id` = 15481;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 35867;

-- DELETE FROM `creature_addon` WHERE `guid` = 35867;
-- INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
-- (35867,0,0,0,4097,0,0,NULL);