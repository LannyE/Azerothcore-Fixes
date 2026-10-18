UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 5828;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (5828,582800);
-- UPDATE `creature_addon` SET `path_id` = 0, `bytes1` = 0  WHERE `guid` in (65607);
UPDATE creature SET `position_x` = -611, `position_y` = -3615, `position_z` = 91.664, `orientation` = 4.937, `wander_distance` = 0, `MovementType` = 0,  WHERE `guid` = 65607;
-- DELETE FROM `creature_addon` WHERE `guid` = 65607;
-- INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
-- (65607,656070,0,0,4097,0,0,NULL);

-- DELETE FROM `waypoint_data` WHERE `id` = 656070;


-- Update 9-14-23 added UPDATE `smart_scripts` SET `target_param4`=3247 WHERE `entryorguid`=5828 AND `source_type`=0 AND `id`=0 AND `link`= 0; -- No idea why since it never had a smart script