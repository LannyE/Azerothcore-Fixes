/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid = 3848 or entryorguid = 384801
LIMIT 0, 1000

-- Date: 2021-12-29 21:50
*/
DELETE FROM smart_scripts WHERE `entryorguid` IN (3848,384800,384801);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3848,0,0,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Kayneth Stillwind - Between 0-15% Health - Flee For Assist');

DELETE FROM broadcast_text WHERE `ID` IN (1317);

DELETE FROM creature_text WHERE `CreatureID` IN (3848) and `GroupID` = 4 and `ID` = 0;

DELETE FROM `waypoints` WHERE entry = 3848;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(3848,1,2954.25,-3215.41,169.205,0,0,'Kayneth Stillwind '),
(3848,2,2966.65,-3213.95,168.914,0,0,'Kayneth Stillwind '),
(3848,3,2955.25,-3215.01,169.105,0,0,'Kayneth Stillwind '),
(3848,4,2954.25,-3215.41,169.205,0,0,'Kayneth Stillwind ');