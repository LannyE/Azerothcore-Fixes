/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (295) and id in (2,3)
LIMIT 0, 1000

-- Date: 2023-12-03 16:19
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (295) and `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (6790) and `id` IN (2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6790,0,2,0,10,0,100,0,1,20,180000,240000,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Innkeeper Trelayne - OOC LOS - Say Line 0'),
(295,0,2,0,10,0,100,0,1,20,180000,240000,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Innkeeper Farley - OOC LOS - Say Line 0'),
(295,0,3,0,1,0,100,0,1000,15000,150000,180000,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Innkeeper Farley - Out of Combat - Say Line 1');
