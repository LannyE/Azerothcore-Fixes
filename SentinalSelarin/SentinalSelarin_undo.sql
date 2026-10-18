/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (3694,369400)
LIMIT 0, 1000

-- Date: 2022-02-13 09:38
*/
DELETE FROM `smart_scripts` WHERE `entryorguid`= 369400 AND `source_type`= 9 AND id >= 5;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(369400,9,5,0,0,0,100,0,90000,90000,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sentinel Selarin - Actionlist - Say Line 3'),
(369400,9,6,0,0,0,100,0,5000,5000,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sentinel Selarin - Actionlist - Remove Npc Flags Questgiver');
