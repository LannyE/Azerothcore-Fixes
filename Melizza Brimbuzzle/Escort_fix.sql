/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid IN (1227700) and id in (3,4)
LIMIT 0, 1000

-- Date: 2024-01-11 12:13
*/
UPDATE `smart_scripts` SET `event_param1` = 1000, `event_param2` = 1000 WHERE `entryorguid`=1227700 AND `source_type` = 9 and `id` in (0);
UPDATE `smart_scripts` SET `event_param1` = 6000, `event_param2` = 6000 WHERE `entryorguid`=1227700 AND `source_type` = 9 and `id` in (1);
UPDATE `smart_scripts` SET `event_param1` = 5000, `event_param2` = 5000 WHERE `entryorguid`=1227700 AND `source_type` = 9 and `id` in (2); 

DELETE FROM `smart_scripts` WHERE `entryorguid`=1227700 AND `id` in (3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1227700,9,3,0,0,0,100,0,5000,5000,0,0,0,1,0,0,0,0,0,0,19,6019,0,0,0,0,0,0,0,'Melizza Brimbuzzle - On Script - Say Line 0 (Hornizz Brimbuzzle)'),
(1227700,9,4,0,0,0,100,0,4000,4000,0,0,0,1,1,0,0,0,0,0,19,6019,0,0,0,0,0,0,0,'Melizza Brimbuzzle - On Script - Say Line 1 (Hornizz Brimbuzzle)');
