/*
Grimclaw was changed on a PR 1-16-23.  I reapplied this over those changes.  The changes that were made are in file Grimclaw_undo changes 1-16-23.sql 
Grimclaw's old GUID 37101 was taken on 2-7-23
New ID will be 300496
*/

-- DELETE FROM `creature` WHERE `guid` = 37101;
DELETE FROM `creature` WHERE `guid` = 300496;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(300496,3695,0,0,1,0,0,1,1,0,4758.35,203.678,53.895,2.17813,275,0,0,273,0,0,0,0,0,'',0);

DELETE FROM `waypoints` WHERE `entry` IN (3695,369500);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(3695,1,6409.01,381.597,13.7997,0,0,'Grimclaw'),
(3695,2,6422.38,398.542,11.1623,0,0,'Grimclaw'),
(3695,3,6429.16,395.692,11.6041,0,0,'Grimclaw'),
(3695,4,6437.87,372.912,13.9415,0,0,'Grimclaw'),
(3695,5,6436.29,366.529,13.9415,4.24508,0,'Grimclaw'),
(3695,6,6437.87,372.912,13.9415,0,0,'Grimclaw'),
(3695,7,6429.16,395.692,11.6041,0,0,'Grimclaw'),
(3695,8,6422.38,398.542,11.1623,0,0,'Grimclaw'),
(3695,9,6409.01,381.597,13.7997,0,0,'Grimclaw'),
(369500,1,4685.86,140.07,55.7441,0,0,'Grimclaw'),
(369500,2,4605.85,1.4452,69.5886,0,0,'Grimclaw'),
(369500,3,4607.42,-3.3206,69.8902,0,0,'Grimclaw');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3695;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3695,0,0,0,11,0,100,0,0,0,0,0,0,53,1,3695,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Respawn - Start Waypoint'),
(3695,0,1,0,40,0,100,0,1,3695,0,0,0,1,0,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On WP 1 Reached (Path 3695) - Talk 0 (Terenthis)'),
(3695,0,2,0,40,0,100,0,5,3695,0,0,0,80,369500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On WP 5 Reached (Path 3695) - Run Actionlist'),
(3695,0,3,0,40,0,100,0,9,3695,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On WP 9 Reached (Path 3695) - Despawn'),
(3695,0,4,0,22,0,100,0,101,50000,50000,0,0,80,369501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - Received Emote 101 - Run Actionlist'),
(3695,0,5,0,40,0,100,0,3,369500,0,0,0,80,369502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On WP 3 Reached (Path 369500) - Run Actionlist');

-- DELETE FROM `smart_scripts` WHERE `entryorguid` in (-37101);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-300496,369500,369501,369502);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300496,0,0,0,22,0,100,0,101,50000,50000,0,0,80,369501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - Received Emote 101 - Run Actionlist'),
(-300496,0,1,0,75,0,100,0,37096,0,25,60000,0,80,369502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Creature (Volcor) Distance - Run Actionlist'),
(369500,9,0,0,0,0,100,0,0,0,0,0,0,54,40000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Pause Waypoint for 40 seconds'),
(369500,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.24508,'Grimclaw - On Script - Set Orientation'),
(369500,9,2,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 0'),
(369500,9,3,0,0,0,100,0,3000,3000,0,0,0,1,1,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 1 (Terenthis)'),
(369500,9,4,0,0,0,100,0,5000,5000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 1'),
(369500,9,5,0,0,0,100,0,5000,5000,0,0,0,1,2,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 2 (Terenthis)'),
(369500,9,6,0,0,0,100,0,4000,4000,0,0,0,1,3,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 3 (Terenthis)'),
(369500,9,7,0,0,0,100,0,1000,1000,0,0,0,86,6238,0,19,3693,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Cross Cast \'Speak with Animals\''),
(369500,9,8,0,0,0,100,0,2000,2000,0,0,0,1,4,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 4 (Terenthis)'),
(369500,9,9,0,0,0,100,0,5000,5000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 2'),
(369500,9,10,0,0,0,100,0,5000,5000,0,0,0,1,5,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 5 (Terenthis)'),
(369500,9,11,0,0,0,100,0,7000,7000,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 3'),
(369500,9,12,0,0,0,100,0,5000,5000,0,0,0,1,6,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 6 (Terenthis)'),
(369500,9,13,0,0,0,100,0,1000,1000,0,0,0,82,3,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Add Questgiver+Gossip npcflag (Terenthis)'),
(369501,9,0,0,0,0,100,0,1000,1000,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 4'),
(369501,9,1,0,0,0,100,0,5000,5000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.01,'Grimclaw - On Script - Set Orientation'),
(369501,9,2,0,0,0,100,0,1000,1000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 5'),
(369501,9,3,0,0,0,100,0,25000,25000,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Set Orientation Home'),
(369502,9,0,0,0,0,100,0,1000,1000,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 6'),
(369502,9,1,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.36,'Grimclaw - On Script - Set Orientation'),
(369502,9,2,0,0,0,100,0,2000,2000,0,0,0,1,0,0,0,0,0,0,19,3692,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 0 (Volcor)'),
(369502,9,3,0,0,0,100,0,3000,3000,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Set Orientation Home');
