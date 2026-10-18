/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (3695)
LIMIT 0, 10000

-- Date: 2022-03-08 12:14
*/
DELETE FROM `smart_scripts` WHERE `entryorguid`=3695;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3695,0,0,0,11,0,100,0,0,0,0,0,0,53,1,3695,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Respawn - Start Waypoint'),
(3695,0,1,0,40,0,100,0,1,3695,0,0,0,1,0,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On WP 1 Reached (Path 3695) - Talk 0 (Terenthis)'),
(3695,0,2,0,40,0,100,0,5,3695,0,0,0,80,369500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On WP 5 Reached (Path 3695) - Run Actionlist'),
(3695,0,3,0,40,0,100,0,9,3695,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On WP 9 Reached (Path 3695) - Despawn'),
(3695,0,4,0,22,0,100,0,101,50000,50000,0,0,80,369501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - Received Emote 101 - Run Actionlist'),
(3695,0,5,0,40,0,100,0,3,369500,0,0,0,80,369502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On WP 3 Reached (Path 369500) - Run Actionlist');
