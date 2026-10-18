/*
Fixes Nurse Nancy and adds her RP -- Date: 2024-12-14 23:08
Commit #24676 as of 2-12-26 added to bottom
*/
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` in (5042);

DELETE FROM smart_scripts WHERE entryorguid IN (5042) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (504200,504201,504202,504203) AND `source_type` = 9;
-- INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (5042,0,0,0,1,0,100,0,0,0,87000,89000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - Out of Combat - Say Line 0');

DELETE FROM waypoints where entry = 5042;

-- Reapply Commit #24676 as of 2-12-26
SET @NPC := 90458;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-8760.21,`position_y`=811.9198,`position_z`=97.793724 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8760.21,811.9198,97.793724,NULL,0,0,0,100,0),
(@PATH,2,-8763.192,810.93536,97.74572,NULL,0,0,0,100,0),
(@PATH,3,-8763.192,810.93536,97.74572,2.199114799499511718,12000,0,0,100,0),
(@PATH,4,-8769.179,814.3151,97.8737,NULL,0,0,0,100,0),
(@PATH,5,-8755.52,814.1872,97.88151,NULL,0,0,0,100,0),
(@PATH,6,-8755.52,814.1872,97.88151,3.839724302291870117,12000,0,0,100,0),
(@PATH,7,-8766.348,820.14746,97.870056,NULL,0,0,0,100,0),
(@PATH,8,-8766.348,820.14746,97.870056,3.874630928039550781,12000,0,0,100,0);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 5042;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 5042);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5042, 0, 0, 0, 108, 0, 100, 0, 3, 0, 0, 0, 0, 0, 80, 504200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lillian - On Point 3 of Path Any Reached - Run Script'),
(5042, 0, 1, 0, 108, 0, 100, 0, 6, 0, 0, 0, 0, 0, 80, 504200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lillian - On Point 6 of Path Any Reached - Run Script'),
(5042, 0, 2, 0, 108, 0, 100, 0, 8, 0, 0, 0, 0, 0, 80, 504200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lillian - On Point 8 of Path Any Reached - Run Script');

DELETE FROM `smart_scripts` WHERE (`source_type` = 9 AND `entryorguid` = 504200);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(504200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lillian - Actionlist - Set Flag Standstate Kneel'),
(504200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Nurse Lillian - Actionlist - Say Line');

DELETE FROM `creature_text` WHERE (`CreatureID` = 5042);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(5042, 0, 0, 'You\'re going to be just fine.', 12, 7, 100, 1, 0, 0, 1682, 0, 'Nurse Lillian'),
(5042, 0, 1, 'Drink this, it will help.', 12, 7, 100, 1, 0, 0, 1679, 0, 'Nurse Lillian'),
(5042, 0, 2, 'Let me help you with those.', 12, 7, 100, 1, 0, 0, 1685, 0, 'Nurse Lillian'),
(5042, 0, 3, 'Feeling better I see.', 12, 7, 100, 1, 0, 0, 1678, 0, 'Nurse Lillian'),
(5042, 0, 4, 'Some of this ointment should help.', 12, 7, 100, 1, 0, 0, 1681, 0, 'Nurse Lillian'),
(5042, 0, 5, 'Take this, drink it down.', 12, 7, 100, 1, 0, 0, 1683, 0, 'Nurse Lillian'),
(5042, 0, 6, 'This should ease the pain.', 12, 7, 100, 1, 0, 0, 1680, 0, 'Nurse Lillian'),
(5042, 0, 7, 'You will keep all your fingers and toes, not to worry.', 12, 7, 100, 1, 0, 0, 1684, 0, 'Nurse Lillian'),
(5042, 0, 8, 'You\'re going to be just fine.', 12, 7, 100, 1, 0, 0, 1682, 0, 'Nurse Lillian');