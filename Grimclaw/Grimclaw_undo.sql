/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (3695,369501,369502)
LIMIT 0, 1000

-- Date: 2022-02-13 00:32
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-300496,369500,369501,369502);

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(369500,9,0,0,0,0,100,0,0,0,0,0,0,54,40000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Pause Waypoint for 40 seconds'),
(369500,9,1,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 0'),
(369500,9,2,0,0,0,100,0,3000,3000,0,0,0,1,1,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 1 (Terenthis)'),
(369500,9,3,0,0,0,100,0,5000,5000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 1'),
(369500,9,4,0,0,0,100,0,5000,5000,0,0,0,1,2,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 2 (Terenthis)'),
(369500,9,5,0,0,0,100,0,4000,4000,0,0,0,1,3,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 3 (Terenthis)'),
(369500,9,6,0,0,0,100,0,1000,1000,0,0,0,86,6238,0,19,3693,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Cross Cast \'Speak with Animals\''),
(369500,9,7,0,0,0,100,0,2000,2000,0,0,0,1,4,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 4 (Terenthis)'),
(369500,9,8,0,0,0,100,0,5000,5000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 2'),
(369500,9,9,0,0,0,100,0,5000,5000,0,0,0,1,5,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 5 (Terenthis)'),
(369500,9,10,0,0,0,100,0,7000,7000,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 3'),
(369500,9,11,0,0,0,100,0,5000,5000,0,0,0,1,6,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Talk 6 (Terenthis)'),
(369500,9,12,0,0,0,100,0,1000,1000,0,0,0,82,3,0,0,0,0,0,19,3693,0,0,0,0,0,0,0,'Grimclaw - On Script - Add Questgiver+Gossip npcflag (Terenthis)');

