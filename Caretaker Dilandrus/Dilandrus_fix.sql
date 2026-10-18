-- Fix pause errors and set Orientation not working 5-31-25
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16856) AND `source_type`=0 AND `id` = 8;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1685601,1685600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16856,0,8,0,40,0,100,512,33,16856,0,0,0,0,80,1685600,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Caretaker Dilandrus - On Waypoint 33 Reached - Run Script'),

(1685600,9,0,0,0,0,100,0,0,0,0,0,0,0,54,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Caretaker Dilandrus - On Script - Pause Waypoint'),
(1685600,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.29712,'Caretaker Dilandrus - On Script - Set Orientation'),

(1685601,9,0,0,0,0,100,0,0,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Caretaker Dilandrus - On Script - Pause Waypoint'),
(1685601,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.75976,'Caretaker Dilandrus - On Script - Set Orientation'), -- Fixed
(1685601,9,2,0,0,0,100,0,3000,3000,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Caretaker Dilandrus - On Script - Play Emote 66'),
(1685601,9,3,0,0,0,100,0,3000,3000,0,0,0,0,5,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Caretaker Dilandrus - On Script - Play Emote 68');
