/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid in (18481,1848100,1848101,1848102)
LIMIT 0, 50000

-- Date: 2026-03-26 10:15
*/
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18481,0,0,0,1,0,100,0,0,0,7200000,7200000,0,0,11,35076,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'A\'dal - Out of Combat - Cast \'Blessing of A\'dal\''),
(18481,0,1,0,19,0,100,0,13082,0,0,0,0,0,11,53141,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'A\'dal - On Quest \'The Boon of A\'dal\' Taken - Cast \'Portal Effect: Dalaran\''),
(18481,0,2,0,20,0,100,0,10210,0,0,0,0,0,1,0,0,0,0,0,0,19,18166,0,0,0,0,0,0,0,'A\'dal - On Quest Reward (A\'DAL) - Say line 0 on Khadgar'),
(18481,0,3,4,20,0,100,512,11007,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'A Dal - On Quest Reward 11007 - Store Targetlist'),
(18481,0,4,5,61,0,100,512,0,0,0,0,0,0,80,1848100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'A Dal - On Quest Reward 11007 - Run Script'),
(18481,0,5,0,61,0,100,512,0,0,0,0,0,0,237,39953,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'A Dal - On Quest Reward 11007 - Run World State Script Event 39953'),

(1848100,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'A Dal - Script - Say Line 0'),
(1848100,9,1,0,0,0,100,0,4500,4500,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'A Dal - Script - Say Line 1'),
(1848100,9,2,0,0,0,100,0,4000,4000,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'A Dal - Script - Say Line 2'),
(1848100,9,3,0,0,0,100,0,5000,5000,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'A Dal - Script - Say Line 3'),
(1848100,9,4,0,0,0,100,0,1000,1000,0,0,0,0,12,23054,1,50000,0,0,0,8,0,0,0,0,-1884.32,5420.6,-8.42119,0.488692,'A Dal - Script - Summon Kael\'thas Sunstrider'),
(1848100,9,5,0,0,0,100,0,4000,4000,0,0,0,0,50,185170,300,0,0,0,0,8,0,0,0,0,-1891.34,5417.04,-5.53924,0.978148,'A Dal - Script - The Mark of Kael\'Thas'),
(1848100,9,6,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,19,23054,0,0,0,0,0,0,0,'A Dal - Script - Say Line 0 on Kael\'thas Sunstrider'),
(1848100,9,7,0,0,0,100,0,11000,11000,0,0,0,0,1,1,0,0,0,0,0,19,23054,0,0,0,0,0,0,0,'A Dal - Script - Say Line 1 on Kael\'thas Sunstrider'),
(1848100,9,8,0,0,0,100,0,11000,11000,0,0,0,0,1,2,0,0,0,0,0,19,23054,0,0,0,0,0,0,0,'A Dal - Script - Say Line 2 on Kael\'thas Sunstrider'),
(1848100,9,9,0,0,0,100,0,11000,11000,0,0,0,0,1,3,0,0,0,0,0,19,23054,0,0,0,0,0,0,0,'A Dal - Script - Say Line 2 on Kael\'thas Sunstrider');
