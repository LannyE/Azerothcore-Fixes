/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (8256,825600,825601)
LIMIT 0, 1000

-- Date: 2022-02-05 19:38
*/
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8256,0,0,0,20,0,100,0,3368,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Quest \'Suntara Stones (Part 2)\' Finished - Say Line 0'),
(8256,0,1,0,20,0,100,0,3182,0,0,0,0,80,825600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Quest \'Proof of Deed\' Finished - Run Script'),
(8256,0,2,0,40,0,100,0,2,8256,0,0,0,80,825601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Waypoint 2 Reached - Run Script'),
(8256,0,3,0,58,0,100,0,0,8256,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Waypoint Ended - Evade'),
(825600,9,0,0,0,0,100,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Remove Npc Flag Questgiver'),
(825600,9,1,0,0,0,100,0,0,0,0,0,0,53,0,8256,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Start Waypoint'),
(825600,9,2,0,0,0,100,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Say Line 1'),
(825601,9,0,0,0,0,100,0,0,0,0,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Say Line 2'),
(825601,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.35796,'Curator Thorius - On Script - Set Orientation'),
(825601,9,2,0,0,0,100,0,1000,1000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Say Line 2'),
(825601,9,3,0,0,0,100,0,5000,5000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Set Flag Standstate Kneel'),
(825601,9,4,0,0,0,100,0,2000,2000,0,0,0,50,147136,300,0,0,0,0,8,0,0,0,0,-4656.99,-1306,503.383,2.1903,'Curator Thorius - On Script - Summon Gameobject \'Horn of Margol the Rager\''),
(825601,9,5,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Say Line 3'),
(825601,9,6,0,0,0,100,0,3000,3000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Remove Flag Standstate Kneel'),
(825601,9,7,0,0,0,100,0,2000,2000,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Curator Thorius - On Script - Add Npc Flag Questgiver');
