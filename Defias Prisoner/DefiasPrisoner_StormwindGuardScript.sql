/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid = 37063
LIMIT 0, 1000

-- Date: 2022-01-07 23:42
*/
DELETE FROM smart_scripts WHERE `entryorguid` = 37063;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(37063,0,0,0,38,0,100,0,1,0,0,0,0,29,0,50,0,0,0,0,12,2,0,0,0,0,0,0,0,'Stormwind City Guard - On Data Set - Set Follow'),
(37063,0,1,0,38,0,100,0,2,0,0,0,0,29,0,160,0,0,0,0,12,2,0,0,0,0,0,0,0,'Stormwind City Guard - On Data Set - Set Follow'),
(37063,0,2,0,38,0,100,0,3,0,0,0,0,29,0,200,0,0,0,0,12,2,0,0,0,0,0,0,0,'Stormwind City Guard - On Data Set - Set Follow'),
(37063,0,3,0,38,0,100,0,4,0,0,0,0,29,0,310,0,0,0,0,12,2,0,0,0,0,0,0,0,'Stormwind City Guard - On Data Set - Set Follow');
