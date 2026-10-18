-- fix pause while paused error
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21291,2129100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21291,0,0,0,11,0,100,512,0,0,0,0,0,0,53,0,21291,1,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Respawn - Start Waypoint Movement'),
(21291,0,1,2,1,0,100,512,10000,30000,240000,240000,0,0,80,2129100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - OOC - Call Action List'),
(21291,0,2,0,61,0,100,512,0,0,0,0,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - OOC (Linked) - Pause Waypoint'),
(21291,0,3,4,64,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Gossip Hello - Set Root On'),
(21291,0,4,0,61,0,100,512,0,0,0,0,0,0,67,1,20000,20000,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - Linked - Create Timed Event ID 1'),
(21291,0,5,0,59,0,100,0,1,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Timed Event ID 1 - Set Root Off'),

-- (2129100,9,0,0,0,0,100,0,0,0,0,0,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Pause Waypoint'),
(2129100,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-2814.925,1773.8939,59.352768,0.42019,'Grom\'tor, Son of Oronok - On Script - Move To Self'), -- -2814.925,1773.8939,59.352768,0.42018652
(2129100,9,1,0,0,0,100,0,1200,1200,0,0,0,0,66,0,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Set Orientation Closest Creature \'Coilskar Commander\''),
(2129100,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 0'),
(2129100,9,3,0,0,0,100,0,4000,4000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 1'),
(2129100,9,4,0,0,0,100,0,3000,3000,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Play Emote 5'),
(2129100,9,5,0,0,0,100,0,4000,4000,0,0,0,0,1,0,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 0'),
(2129100,9,6,0,0,0,100,0,1000,1000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Resume Waypoint'),
(2129100,9,7,0,0,0,100,0,4000,4000,0,0,0,0,1,1,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 1'),
(2129100,9,8,0,0,0,100,0,4000,4000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 2'),
(2129100,9,9,0,0,0,100,0,2000,2000,0,0,0,0,54,26000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Pause Waypoint'),
(2129100,9,10,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 3'),
(2129100,9,11,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 2'),
(2129100,9,12,0,0,0,100,0,5000,5000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-2814.925,1773.8939,59.352768,0.42019,'Grom\'tor, Son of Oronok - On Script - Move To Self'), -- -2814.654,1774.0151,59.32953,0.37858
(2129100,9,13,0,0,0,100,0,1500,1500,0,0,0,0,66,0,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Set Orientation Closest Creature \'Coilskar Commander\''),
(2129100,9,14,0,0,0,100,0,2000,2000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 4'),
(2129100,9,15,0,0,0,100,0,2000,2000,0,0,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Play Emote 25'),
(2129100,9,16,0,0,0,100,0,1500,1500,0,0,0,0,11,36538,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Cast \'Grom\'tor Assault 01\''),
(2129100,9,17,0,0,0,100,0,1200,1200,0,0,0,0,11,36540,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Cast \'Grom\'tor Assault 03\''),
(2129100,9,18,0,0,0,100,0,1200,1200,0,0,0,0,11,36538,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Cast \'Grom\'tor Assault 01\''),
(2129100,9,19,0,0,0,100,0,1200,1200,0,0,0,0,11,36538,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Cast \'Grom\'tor Assault 01\''),
(2129100,9,20,0,0,0,100,0,1200,1200,0,0,0,0,11,36540,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Cast \'Grom\'tor Assault 03\''),
(2129100,9,21,0,0,0,100,0,1200,1200,0,0,0,0,11,36539,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Cast \'Grom\'tor Assault 02\''),
(2129100,9,22,0,0,0,100,0,1500,1500,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 5'),
(2129100,9,23,0,0,0,100,0,500,500,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 6'),
(2129100,9,24,0,0,0,100,0,2500,2500,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Resume Waypoint'),
(2129100,9,25,0,0,0,100,0,2500,2500,0,0,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Pause Waypoint'),
(2129100,9,26,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Set Orientation Closest Creature \'Coilskar Commander\''),
(2129100,9,27,0,0,0,100,0,500,500,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 7'),
(2129100,9,28,0,0,0,100,0,3000,3000,0,0,0,0,1,4,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 4'),
(2129100,9,29,0,0,0,100,0,4000,4000,0,0,0,0,1,5,0,0,0,0,0,19,21295,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Say Line 5'),
(2129100,9,30,0,0,0,100,0,4000,4000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom\'tor, Son of Oronok - On Script - Resume Waypoint');

-- Should be Dead Coilskar
UPDATE `creature` SET `unit_flags` = 33587968 WHERE `guid` IN (70724,70725,70698,70697,70799,70800);
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 19762;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-70724,-70725,-70698,-70697,-70799,-70800);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-70724,0,0,0,11,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coilskar Siren - On Respawn - Add Flag Standstate Dead'),
(-70725,0,0,0,11,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coilskar Siren - On Respawn - Add Flag Standstate Dead'),

(-70697,0,0,0,11,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coilskar Defender - On Respawn - Add Flag Standstate Dead'),
(-70698,0,0,0,11,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coilskar Defender - On Respawn - Add Flag Standstate Dead'),

(-70799,0,0,0,11,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coilskar Cobra - On Respawn - Add Flag Standstate Dead'),
(-70800,0,0,0,11,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coilskar Cobra - On Respawn - Add Flag Standstate Dead');

