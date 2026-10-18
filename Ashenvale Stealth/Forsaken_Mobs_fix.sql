/*
Fixing Forsaken mobs in Ashenvale missing abilities
*/

-- Forsaken Infiltrator
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3806) and `source_type` = 0 and `id` in (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(3806,0,0,0,1,0,100,1,1000,1000,0,0,0,11,8218,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Forsaken Infiltrator - OOC - Cast \'Sneak\' (No Repeat)'),
(3806,0,1,0,0,0,100,0,2000,18500,2000,18500,0,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Forsaken Infiltrator - In Combat - Cast \'Poison\'');


-- Forsaken Assassin
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3807) and `source_type` = 0 and `id` in (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3807,0,0,0,1,0,100,1,1000,1000,0,0,0,11,8218,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Forsaken Assassin - OOC - Cast \'Sneak\' (No Repeat)'),
(3807,0,1,0,0,0,100,0,8500,8500,44600,47800,0,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Forsaken Assassin - In Combat - Cast \'Slowing Poison\'');


-- Forsaken Dark Stalker
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3808) and `source_type` = 0 and `id` in (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3808,0,0,0,1,0,100,1,1000,1000,0,0,0,11,8218,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Forsaken Dark Stalker - OOC - Cast \'Sneak\'');


-- Forsaken Intruder
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3804) and `source_type` = 0 and `id` in (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3804,0,0,0,1,0,100,1,1000,1000,0,0,0,11,8218,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Forsaken Intruder - OOC - Cast \'Sneak\' (No Repeat)');