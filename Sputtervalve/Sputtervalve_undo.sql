/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (3442)
LIMIT 0, 1000

-- Date: 2022-02-19 21:45
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` = 3442 AND `source_type` = 0 AND `id` in (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3442,0,1,0,62,0,100,0,21,1,0,0,0,15,6981,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Sputtervalve - On Gossip Option 1 Selected - Quest Credit \'The Glowing Shard\' (No Repeat)');
