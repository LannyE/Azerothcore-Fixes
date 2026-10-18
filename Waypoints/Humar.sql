UPDATE `creature_addon` SET `path_id` = 0, `bytes1` = 0 WHERE `guid` = 65607;
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 5828;
UPDATE `creature` SET `position_x` = -637.601, `position_y` = -3664.69, `position_z` = 94.984, `orientation` = 4.198734, `wander_distance` = 2, `MovementType` = 1 WHERE `guid` = 65607;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (5828,582800);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(5828,0,0,0,1,0,100,0,15000,30000,60000,90000,0,80,582800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - Out of Combat - Run Script'),
(5828,0,1,2,0,0,100,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - In Combat - Remove Root'),
(5828,0,2,0,61,0,100,0,0,0,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - In Combat - Remove Unit_Bytes_1'),

(582800,9,0,0,0,0,100,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - On Script - Root'),
(582800,9,1,0,0,0,100,0,1000,2000,0,0,0,90,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - On Script - Set Unit_Bytes_1'),
(582800,9,2,0,0,0,100,0,50000,80000,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - On Script - Remove Unit_Bytes_1'),
(582800,9,3,0,0,0,100,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Humar - On Script - Remove Root');