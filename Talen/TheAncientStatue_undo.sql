-- Talen
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3846,384600);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3846,0,0,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Talen - Between 0-15% Health - Flee For Assist');

-- Ruuzel and Bodyguards
UPDATE `creature` SET `MovementType` = 2,`position_x` = 4171.11,`position_y` = 1283.63,`position_z` = 3.45718 WHERE `guid` = 32617;
UPDATE `creature` SET `position_x` = 4173,`position_y` = 1285.1,`position_z` = 3.45684 WHERE `guid` = 32762;
UPDATE `creature` SET `position_x` = 4175.78,`position_y` = 1284.99,`position_z` = 2.77173 WHERE `guid` = 32728;

DELETE FROM `creature_addon` where guid = 32617;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`isLarge`,`auras`) VALUES 
(32617,0,0,0,285216769,0,1,'');

DELETE FROM `creature_formations` where leaderGUID = 32617;

DELETE FROM `waypoint_data` where ID = 326170;

