/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (3663,366300)
LIMIT 0, 1000

-- Date: 2022-02-13 21:18
*/
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=4509;

DELETE FROM `smart_scripts` WHERE `entryorguid`= 3663 AND id = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 366300;

DELETE FROM `smart_scripts` WHERE `entryorguid`= 4509;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4509,0,0,0,1,0,100,1,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sargath - Out of Combat - Say Line 0 (No Repeat)'),
(4509,0,1,0,1,0,100,1,5000,5000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sargath - Out of Combat - Say Line 1 (No Repeat)'),
(4509,0,2,0,1,0,100,1,10000,10000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sargath - Out of Combat - Say Line 2 (No Repeat)'),
(4509,0,3,0,1,0,100,1,15000,15000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sargath - Out of Combat - Say Line 3 (No Repeat)'),
(4509,0,4,0,1,0,100,1,20000,20000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sargath - Out of Combat - Say Line 4 (No Repeat)'),
(4509,0,5,0,1,0,100,1,28000,28000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sargath - Out of Combat - Say Line 5 (No Repeat)');