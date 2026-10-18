/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (28705) -- GUID 98952
LIMIT 0, 10000

-- Date: 2024-12-20 23:05
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28705) AND `source_type` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2870500,2870501) AND `source_type` IN (9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28705,0,0,0,11,0,100,512,0,0,0,0,0,0,53,0,28705,1,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Respawn - Start Waypoint'),
(28705,0,1,0,40,0,100,512,5,28705,0,0,0,0,80,2870500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Waypoint 5 Reached - Run Script'),
(28705,0,2,0,40,0,100,512,10,28705,0,0,0,0,80,2870501,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Waypoint 10 Reached - Run Script'),

-- (28705,0,1,2,40,0,100,512,5,28705,0,0,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Waypoint 5 Reached - Pause Waypoint'),
-- (28705,0,2,0,61,0,100,512,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.837758,'Katherine Lee - On Waypoint 5 Reached - Set Orientation 1'),
-- (28705,0,3,4,40,0,100,512,10,28705,0,0,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Waypoint 10 Reached - Pause Waypoint'),
-- (28705,0,4,0,61,0,100,512,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.40855,'Katherine Lee - On Waypoint 10 Reached - Set Orientation 2'),

(2870500,9,0,0,0,0,100,512,0,0,0,0,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Script - Pause Waypoint'),
(2870500,9,1,0,0,0,100,512,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.837758,'Katherine Lee - On Script - Set Orientation 1'),
(2870500,9,2,0,0,0,100,512,1000,1000,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Script - Set Emote State 69'),
(2870500,9,3,0,0,0,100,512,13000,13000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Script - Set Emote State 0'),

(2870501,9,0,0,0,0,100,512,0,0,0,0,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Script - Pause Waypoint'),
(2870501,9,1,0,0,0,100,512,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.40855,'Katherine Lee - On Script - Set Orientation 2'),
(2870501,9,2,0,0,0,100,512,1000,1000,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Script - Set Emote State 69'),
(2870501,9,3,0,0,0,100,512,13000,13000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Katherine Lee - On Script - Set Emote State 0');