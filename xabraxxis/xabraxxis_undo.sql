/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (10373)
LIMIT 0, 1000

-- Date: 2022-02-14 17:36
*/
DELETE FROM `smart_scripts` WHERE `entryorguid`= 10373 AND `source_type`= 0 AND id in (2,3,5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10373,0,2,3,2,0,100,0,0,30,120000,120000,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xabraxxis - Between 0-30% Health - Cast \'Enrage\''),
(10373,0,3,0,61,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xabraxxis - Between 0-30% Health - Say Line 0');