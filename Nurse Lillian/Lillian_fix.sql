/*
Fixes Nurse Nancy and adds her RP -- Date: 2024-12-14 23:08
Commit #24676 as of 2-12-26 changes this so this has been updated to adjust back to this setting
*/

-- Undo Commit changes 2-12-26
SET @NPC := 90458;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=0,`position_x`=-8760,`position_y`=814.872,`position_z`=97.635 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
-- --------------------------------------------


UPDATE `creature_template` SET `speed_walk` = 0.9 WHERE `entry` in (5042);

DELETE FROM smart_scripts WHERE entryorguid IN (5042) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (504200,504201,504202,504203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(5042,0,0,0,25,0,100,0,0,0,0,0,0,53,1,5042,1,0,0,1,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Reset - Start Waypoint'),
(5042,0,1,0,40,0,75,0,3,5042,0,0,0,80,504202,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Waypoint 3 Reached - Run Script'),
(5042,0,2,0,40,0,75,0,6,5042,0,0,0,80,504200,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Waypoint 6 Reached - Run Script'),
(5042,0,3,0,40,0,75,0,9,5042,0,0,0,80,504203,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Waypoint 9 Reached - Run Script'),
(5042,0,4,0,40,0,75,0,11,5042,0,0,0,80,504201,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Waypoint 11 Reached - Run Script'),

(504200,9,0,0,0,0,100,0,0,0,0,0,0,54,13000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Pause Waypoint'),
(504200,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.824,'Nurse Lillian - On Script - Set Orientation'),
(504200,9,2,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Set Flag Standstate Kneel'),
(504200,9,3,0,0,0,75,0,4000,6000,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Say Line 0'),
(504200,9,4,0,0,0,100,0,5000,6000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Remove Flag Standstate Kneel'),

(504201,9,0,0,0,0,100,0,0,0,0,0,0,54,13000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Pause Waypoint'),
(504201,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.365,'Nurse Lillian - On Script - Set Orientation'),
(504201,9,2,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Set Flag Standstate Kneel'),
-- (504201,9,3,0,0,0,100,0,1000,1000,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Set Emote State 69'), -- injuredd guard is now sitting after commit 2-12-26
(504201,9,3,0,0,0,75,0,4000,6000,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Say Line 0'),
-- (504201,9,5,0,0,0,100,0,11000,11000,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Set Emote State 0'),
(504201,9,4,0,0,0,100,0,5000,6000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Remove Flag Standstate Kneel'),

(504202,9,0,0,0,0,100,0,0,0,0,0,0,54,13000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Pause Waypoint'),
(504202,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.56,'Nurse Lillian - On Script - Set Orientation'),
(504202,9,2,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Set Flag Standstate Kneel'),
(504202,9,3,0,0,0,75,0,3000,5000,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Say Line 0'),
(504202,9,4,0,0,0,100,0,5000,6000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Remove Flag Standstate Kneel'),

(504203,9,0,0,0,0,100,0,0,0,0,0,0,54,13000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Pause Waypoint'),
(504203,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.223,'Nurse Lillian - On Script - Set Orientation'),
(504203,9,2,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Set Flag Standstate Kneel'),
(504203,9,3,0,0,0,75,0,4000,6000,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Say Line 0'),
(504203,9,4,0,0,0,100,0,5000,6000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nurse Lillian - On Script - Remove Flag Standstate Kneel');

DELETE FROM waypoints where entry = 5042;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(5042,1,-8759.62,812.343,97.635,0,0,'Nurse Lillian'),
(5042,2,-8761.61,810.579,97.635,0,0,'Nurse Lillian'),
(5042,3,-8762.09,811.25,97.635,0,0,'Nurse Lillian'), -- first stop
(5042,4,-8763.508,810.3878,97.635,0,0,'Nurse Lillian'),
-- (5042,4,-8765.12,809.343,97.635,0,0,'Nurse Lillian'),
-- (5042,5,-8768.82,813.976,97.635,0,0,'Nurse Lillian'), -- old position
-- (5042,5,-8768.535,813.829,97.635,0,0,'Nurse Lillian'),
(5042,5,-8767.213,814.8802,97.635,0,0,'Nurse Lillian'),
(5042,6,-8765.751,816.1054,97.635,0,0,'Nurse Lillian'),
(5042,7,-8762.85,818.44,97.635,0,0,'Nurse Lillian'),
(5042,8,-8757.2,817.107,97.635,0,0,'Nurse Lillian'),
(5042,9,-8755.65,815.128,97.635,0,0,'Nurse Lillian'),
(5042,10,-8766.1,820.151,97.635,0,0,'Nurse Lillian'),
(5042,11,-8766.37,820.027,97.635,0,0,'Nurse Lillian');


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