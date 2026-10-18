/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (3663,366300)
LIMIT 0, 1000

-- Date: 2022-02-13 21:18
*/
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=4509;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 3663 AND id = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 366300;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 4509;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3663,0,1,0,20,0,100,512,970,0,0,0,0,80,366300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Delgren the Purifier - On Quest \'The Tower of Althalaxx (Part 4)\' Finished - Run Script'),
(366300,9,0,0,0,0,100,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Remove Npc Flag Questgiver'),
(366300,9,1,0,0,0,100,0,1000,1000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 0'),
(366300,9,2,0,0,0,100,0,4000,4000,0,0,0,5,61,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Play Emote 61'),
(366300,9,3,0,0,0,100,0,0,0,0,0,0,50,19862,5,0,0,0,0,8,0,0,0,0,3186.81,189.953,4.57494,3.48778,'Delgren the Purifier - On Script - Summon Object \'Glowing Soulgem\''),
(366300,9,4,0,0,0,100,0,1000,1000,0,0,0,12,4509,8,0,0,0,0,8,0,0,0,0,3188.2,191.026,4.53698,3.6802,'Delgren the Purifier - On Script - Summon Sargath'),
(366300,9,5,0,0,0,100,0,3000,3000,0,0,0,1,0,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 0 (Sargath)'),
(366300,9,6,0,0,0,100,0,7000,7000,0,0,0,1,1,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 1 (Sargath)'),
(366300,9,7,0,0,0,100,0,7000,7000,0,0,0,1,2,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 2 (Sargath)'),
(366300,9,8,0,0,0,100,0,7000,7000,0,0,0,1,3,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 3 (Sargath)'),
(366300,9,9,0,0,0,100,0,7000,7000,0,0,0,1,4,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 4 (Sargath)'),
(366300,9,10,0,0,0,100,0,7000,7000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 1'),
(366300,9,11,0,0,0,100,0,7000,7000,0,0,0,1,5,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 5 (Sargath)'),
(366300,9,12,0,0,0,100,0,7000,7000,0,0,0,1,6,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Say Line 6 (Sargath)'),
(366300,9,13,0,0,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,19,4509,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Despawn (Sargath)'),
(366300,9,14,0,0,0,100,0,1000,1000,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Delgren the Purifier - On Script - Add Npc Flag Questgiver');
