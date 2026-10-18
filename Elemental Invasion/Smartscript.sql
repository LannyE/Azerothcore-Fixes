/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid = 179666 and id = 1
LIMIT 0, 1000

-- Date: 2022-12-11 10:34
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` = 179666 and `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(179666,1,1,2,60,1,100,0,0,1000,30000,30000,0,12,14460,6,120000,0,0,0,1,0,0,0,0,0,0,0,0,'Fire Elemental Rift - On Update - Summon Creature \'Blazing Invader\' (Phase 1)');
