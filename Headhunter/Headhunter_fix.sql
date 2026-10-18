-- Removed waypoint script that fails constantly if Defender is not near

UPDATE `creature_template` SET `AIName` = 'SmartAI' where `entry` in (28600); -- ``

-- Fix Headhunter
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = -113364);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`,`event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-113364,0,0,0,108,0,100,0,3,1133640,0,0,0,11,52059,32,0,0,0,0,19,28387,30,0,0,0,0,0,"Heb\'Drakkar Headhunter - On Waypoint Data Reached - Cast on closest Zim\'Torga Defender"),
(-113364,0,1,0,108,0,100,0,1,1133640,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.41586,"Heb\'Drakkar Headhunter - On Waypoint Data Reached - Set Orientation");

DELETE FROM `waypoint_scripts` where `id` = 1194 AND `guid` = 776;

UPDATE `waypoint_data` SET `action` = 0 where `id` = 1133640 AND `point` = 3; -- 1194
UPDATE `waypoint_data` SET `orientation` = 2.41586,`delay` = 100000  where `id` = 1133640 AND `point` = 1; -- 0

-- Fix crap movement
DELETE FROM `waypoint_data` where `id` = 1133640 AND `point` IN (6,7);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
-- (1133640,1,5879.1,-3678.56,373.52,NULL,0,1,0,100,0),
-- (1133640,2,5861.94,-3650.03,373.11,NULL,0,1,0,100,0),
-- (1133640,3,5851.05,-3640.04,377.61,NULL,3000,1,0,100,0),
-- (1133640,4,5842.73,-3643.48,379.49,NULL,0,1,0,100,0),
-- (1133640,5,5835.83,-3646.31,380.45,NULL,5000,0,0,100,0);

(1133640,6,5842.73,-3643.48,379.49,NULL,0,1,0,100,0),
(1133640,7,5861.94,-3650.03,373.11,NULL,0,1,0,100,0);