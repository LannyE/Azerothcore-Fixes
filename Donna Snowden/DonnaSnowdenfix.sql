/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (9298,929800,929801,929802,929803,929804,929805)
LIMIT 0, 1000

-- Date: 2022-01-30 20:20
*/
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9298;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 14372;

DELETE FROM creature_summon_groups WHERE `summonerId` = 9298;
INSERT INTO `creature_summon_groups` (`summonerId`,`summonerType`,`groupId`,`entry`,`position_x`,`position_y`,`position_z`,`orientation`,`summonType`,`summonTime`) VALUES 
(9298,0,1,14372,6390.48,-2475.06,541.658,4.25282,3,180000),
(9298,0,1,14372,6393.32,-2468.99,541.812,4.25282,3,180000),
(9298,0,1,14372,6387.13,-2481.36,540.824,4.25282,3,180000);

DELETE FROM waypoints WHERE `entry` IN (9298,929800,929801,14372);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(9298,1,6379.99,-2527.63,536.729,0,0,''),
(9298,2,6395.57,-2536.75,541.548,0,0,''),
(929800,1,6370.08,-2523.34,532.122,0,0,''),
(929801,1,6364.47,-2522.52,527.093,0,0,''),
(929801,2,6370.08,-2523.34,532.122,0,0,''),
(929801,3,6395.57,-2536.75,541.548,0,0,''),
(14372,1,6378.32,-2501.16,537.467,0,0,''),
(14372,2,6376.79,-2520.54,535.867,0,0,'');

DELETE FROM smart_scripts WHERE `entryorguid` IN (9298,929800,929801,929802,929803,929804,929805,14372);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(14372,0,0,0,54,0,100,0,0,0,0,0,0,53,1,14372,0,0,0,2,1,0,0,0,0,0,0,0,0,'Winterfall Ambusher - Just Summoned - Start Waypoint'),
(14372,0,1,2,40,0,100,0,2,14372,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Winterfall Ambusher - On Waypoint 2 Reached - Start Attack'),
(14372,0,2,0,61,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Winterfall Ambusher - On Waypoint 2 Reached - Set Home Position'),
(14372,0,3,0,1,0,100,0,1000,1000,1200000,1200000,0,11,17205,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Winterfall Ambusher - Out of Combat - Cast Winterfall Firewater'),

(9298,0,0,0,20,0,100,0,5087,0,0,0,0,80,929800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Quest \'Winterfall Runners\' Finished - Run Script'),
(9298,0,1,0,40,0,100,0,1,9298,0,0,0,80,929801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Waypoint 1 Reached - Run Script'),
(9298,0,2,0,40,0,100,0,2,9298,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.63731,'Donova Snowden - On Waypoint 2 Reached - Set Orientation'),
(9298,0,3,0,20,0,100,0,3908,0,0,0,0,80,929802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Quest \'It\'s a Secret to Everybody (Part 3)\' Finished - Run Script'),
(9298,0,4,0,40,0,100,0,1,929800,0,0,0,80,929803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Waypoint 1 Reached - Run Script'),
(9298,0,5,0,40,0,100,0,1,929801,0,0,0,80,929804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Waypoint 1 Reached - Run Script'),
(9298,0,6,0,40,0,100,0,3,929801,0,0,0,80,929805,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Waypoint 3 Reached - Run Script'),
-- (929800,9,0,0,0,0,100,0,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Remove Npc Flag Questgiver+Gossip'),
(929800,9,0,0,0,0,100,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Set Unit_flags (Not_Selectable)'),
(929800,9,1,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 0'),
(929800,9,2,0,0,0,100,0,2000,2000,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 1'),
(929800,9,3,0,0,0,100,0,4000,4000,0,0,0,53,0,9298,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Start Waypoint'),
(929801,9,0,0,0,0,100,0,0,0,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - stop Waypoint'),
-- (929801,9,0,0,0,0,100,0,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Pause Waypoint'),
(929801,9,1,0,0,0,100,0,1000,1000,0,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Summon Group 1'),
(929801,9,2,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.64922,'Donova Snowden - On Script - Set Orientation'),
(929801,9,3,0,0,0,100,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Set Run On'),
(929801,9,4,0,0,0,100,0,2000,2000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 2'),
(929801,9,5,0,0,0,100,0,2000,2000,0,0,0,53,1,9298,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Start Waypoint Movement'),
(929801,9,6,0,0,0,100,0,3000,3000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.63731,'Donova Snowden - On Script - Set Orientation'),
(929801,9,7,0,0,0,100,0,2000,2000,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Remove Unit_flags (Not_Selectable)'),
-- (929801,9,7,0,0,0,100,0,2000,2000,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Add Npc Flag Questgiver+Gossip'),
-- (929801,9,8,0,0,0,100,0,500,500,0,0,0,41,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Force Despawn and Respawn'),

(929802,9,0,0,0,0,100,0,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Remove Npc Flag Questgiver+Gossip'),
(929802,9,1,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 3'),
(929802,9,2,0,0,0,100,0,3000,3000,0,0,0,53,1,929800,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Start Waypoint'),
(929803,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.91764,'Donova Snowden - On Script - Set Orientation'),
(929803,9,1,0,0,0,100,0,1000,1000,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 4'),
(929803,9,2,0,0,0,100,0,4000,4000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 5'),
(929803,9,3,0,0,0,100,0,3000,3000,0,0,0,53,0,929801,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Start Waypoint'),
(929804,9,0,0,0,0,100,0,0,0,0,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Pause Waypoint'),
(929804,9,1,0,0,0,100,0,1000,1000,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 6'),
(929804,9,2,0,0,0,100,0,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Set Flag Standstate \'Kneel\''),
(929804,9,3,0,0,0,100,0,6000,6000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Remove Flag Standstate \'Kneel\''),
(929804,9,4,0,0,0,100,0,0,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 7'),
(929804,9,5,0,0,0,100,0,5000,5000,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Say Line 8'),
(929805,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.63731,'Donova Snowden - On Script - Set Orientation'),
(929805,9,1,0,0,0,100,0,0,0,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Donova Snowden - On Script - Add Npc Flag Questgiver+Gossip');