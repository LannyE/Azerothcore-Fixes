/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (3301,330100)
LIMIT 0, 1000

-- Date: 2022-03-20 10:04
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3301,330100);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 61 and `source_type` = 1 and `id` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(61,1,0,0,20,0,100,0,231,0,0,0,0,12,3301,1,10000,0,0,0,7,0,0,0,0,0,0,0,0,'A Weathered Grave - On Quest \'A Daughter\'s Love\' Finished - Summon Creature \'Morgan Ladimore\' (Phase 1)'),
(3301,0,0,0,1,0,100,1,0,0,0,0,0,18,514,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgan Ladimore - Out of Combat - Set Flags Not Attackable & Immune To NPC\'s'),
(3301,0,1,0,1,0,100,1,4000,4000,0,0,0,84,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgan Ladimore - Out of Combat - Say Line 1'),
(3301,0,2,0,1,0,100,1,7000,7000,0,0,0,84,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgan Ladimore - Out of Combat - Say Line 2'),
(3301,0,3,0,1,0,100,1,9000,9000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgan Ladimore - Out of Combat - Set Flag Standstate Kneel');
