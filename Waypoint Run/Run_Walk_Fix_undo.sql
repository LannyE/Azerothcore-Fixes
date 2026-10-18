/*
undo
Waypoint Run/Walk fixes 4-1-26




*/

-- Darkfallen Bloodbearer

DELETE FROM `smart_scripts` WHERE `entryorguid` in (26115) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(26115,0,0,0,25,0,100,512,0,0,0,0,0,0,53,0,2611500,1,0,0,2,1,0,0,0,0,0,0,0,0,'Darkfallen Bloodbearer - On Reset - Start Patrol Path 2611500'),
(26115,0,1,0,25,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Darkfallen Bloodbearer - On Reset - Set Run Off');

-- Bonechewer Messenger  
-- not needed as script manages run on/off

-- William Dunadaire
UPDATE `smart_scripts` SET `action_param1` = 1 WHERE `entryorguid` in (2473700) AND `source_type` = 9 AND `id` = 6; -- 0   fixed this in the original fix also


-- Death Knight Initiate
-- Looks like running is intended