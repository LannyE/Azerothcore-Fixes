-- fix pause while paused error
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27141,2714100,2714101);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27141,0,0,0,25,0,100,512,0,0,0,0,0,0,53,0,27141,1,0,0,1,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Reset - Start Waypoint'),
(27141,0,1,0,64,0,100,0,0,0,0,0,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Gossip Hello - Pause Waypoint'),
(27141,0,2,0,40,0,100,512,1,27141,0,0,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Waypoint 1 Reached - Pause Waypoint'),
(27141,0,3,4,40,0,100,512,2,27141,0,0,0,0,80,2714100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Waypoint 2 Reached - Run Script'),
(27141,0,4,0,61,0,100,512,0,0,0,0,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Waypoint 2 Reached (Linked) - Pause Waypoint'),
(27141,0,5,0,40,0,100,512,3,27141,0,0,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Waypoint 3 Reached - Pause Waypoint'),
(27141,0,6,7,40,0,100,512,4,27141,0,0,0,0,80,2714101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Waypoint 4 Reached - Run Script'),
(27141,0,7,0,61,0,100,512,0,0,0,0,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Waypoint 4 Reached (Linked) - Pause Waypoint'),


(2714100,9,0,0,0,0,100,0,3000,3000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Script - Set Flag Standstate Kneel'),
(2714100,9,1,0,0,0,100,0,11000,11000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Script - Remove Flag Standstate Kneel'),

(2714101,9,0,0,0,0,100,512,200,200,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.15815,'Librarian Hamilton - On Script - Set Orientation 3,15815'),
(2714101,9,1,0,0,0,100,0,2800,2800,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Script - Set Flag Standstate Kneel'),
(2714101,9,2,0,0,0,100,0,11000,11000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Script - Remove Flag Standstate Kneel');