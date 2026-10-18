-- Magistrix Carinda 57796 16793
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=16793;
DELETE FROM `smart_scripts` WHERE entryorguid IN (16793) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE entryorguid IN (1679300) AND `source_type` = 9;

UPDATE `creature_text` SET `Language`= 1 WHERE `CreatureID`= 16793 and `Type`= 12; -- 1
UPDATE `creature_text` SET `GroupID` = 0,`ID` = 1  WHERE `CreatureID` = 16793 AND `GroupID` = 1 AND `ID` = 0;
UPDATE `creature_text` SET `GroupID` = 0,`ID` = 2  WHERE `CreatureID` = 16793 AND `GroupID` = 2 AND `ID` = 0;


-- Twinkle 61963 17230
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17230) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1723000,1723001,1723002) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17230,0,0,0,38,0,100,512,0,1,0,0,0,0,53,1,17230,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Data Set 0 1 - Start Waypoint'),
(17230,0,1,0,40,0,100,512,13,17230,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Waypoint 13 Reached - Pause Waypoint'),
(17230,0,2,0,38,0,100,512,1,2,0,0,0,0,53,1,172300,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Data Set 1 2 - Start Waypoint'),
(17230,0,3,0,40,0,100,512,4,172300,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Waypoint 4 Reached - Despawn Instant');

DELETE FROM `waypoints` where `entry` IN (172301);

/*
DELETE FROM `waypoints` where `entry` IN (17230,172300);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(17230,1,-605.445,4165.21,64.0818,0,0,'Twinkle');
(17230,2,-619.293,4161.78,63.2178,0,0,'Twinkle'),
(17230,3,-629.537,4153.71,64.0671,0,0,'Twinkle'),
(17230,4,-644.773,4151.06,64.1747,0,0,'Twinkle'),
(17230,5,-658.876,4147.72,64.1683,0,0,'Twinkle'),
(17230,6,-681.465,4147.64,64.1181,0,0,'Twinkle'),
(17230,7,-686.401,4161.87,59.7079,0,0,'Twinkle'),
(17230,8,-695.957,4179.24,57.6189,0,0,'Twinkle'),
(17230,9,-699.832,4189.96,57.5037,0,0,'Twinkle'),
(17230,10,-708.519,4184.44,55.2759,0,0,'Twinkle'),
(17230,11,-716.137,4178.13,52.6375,0,0,'Twinkle'),
(17230,12,-719.865,4174.99,51.5549,0,0,'Twinkle'),
(17230,13,-720.636,4166.64,50.8156,0,0,'Twinkle'),

(172300,1,-722.323,4147.94,50.3379,0,0,'Twinkle'),
(172300,2,-726.639,4125.16,48.4797,0,0,'Twinkle'),
(172300,3,-727.648,4109.68,47.5285,0,0,'Twinkle'),
(172300,4,-727.874,4093.44,46.4466,0,0,'Twinkle');
*/




-- Falcon Watch Ranger 62074 17282
DELETE FROM `creature_text` WHERE `CreatureID`=17282;

UPDATE `creature_template` SET `AIName`="" WHERE `entry`=17282;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-62073,-62075) AND `source_type`=0;

UPDATE `creature_text` SET `Language`= 1 WHERE `CreatureID`= 17015 and `Type`= 12; -- 1



-- Taleris Dawngazer 59416 17015
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1715; -- ""
DELETE FROM `waypoints` WHERE `entry`=17015;



DELETE FROM `smart_scripts` WHERE `entryorguid` = 17015 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1701500) AND `source_type` IN (9);


-- Pilgrim Gal'ressa 59423 17046
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=17046; -- 0
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=17046; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17046) AND `source_type` IN (0);

UPDATE `creature_text` SET `Language`= 1 WHERE `CreatureID`= 17046 and `Type`= 12; -- 1


-- Viera Sunwhisper 61961 17226 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17226,1722600,1722601,1722602);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17226,0,0,0,20,0,100,512,9483,0,0,0,0,0,80,1722600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Quest \'Life\'s Finer Pleasures\' Finished - Run Script (No Repeat)'),
(17226,0,1,2,40,0,100,512,10,17226,0,0,0,0,66,0,0,0,0,0,0,11,17230,15,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 10 Reached - Set Orientation Closest Creature \'Twinkle\''),
(17226,0,2,0,61,0,100,512,0,0,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 10 Reached - Pause Waypoint'),
(17226,0,3,0,8,0,100,512,30077,0,0,0,0,0,80,1722601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Spellhit \'Carinda\'s Retribution\' - Run Script'),
(17226,0,4,0,40,0,100,512,4,172260,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 4 Reached - Despawn Instant'),


(1722600,9,0,0,0,0,100,0,0,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Npc Flag '),
(1722600,9,1,0,0,0,100,0,2000,2000,0,0,0,0,53,0,17226,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start Waypoint'),
(1722600,9,2,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 0'),
(1722600,9,3,0,0,0,100,0,0,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Remove Flag Standstate Sit Down'),
(1722600,9,4,0,0,0,100,0,6500,6500,0,0,0,0,45,0,1,0,0,0,0,10,61963,17230,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 0 1'),


(1722601,9,0,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 1'),
(1722601,9,1,0,0,0,100,0,0,0,0,0,0,0,33,17226,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Quest Credit \'Arelion\'s Mistress\''),
(1722601,9,2,0,0,0,100,0,3000,3000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 2'),
(1722601,9,3,0,0,0,100,0,5000,5000,0,0,0,0,1,0,0,0,0,0,0,9,17230,0,25,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 0'),
(1722601,9,4,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 3'),
(1722601,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,61963,17230,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 1 2'),
(1722601,9,6,0,0,0,100,0,0,0,0,0,0,0,53,1,172260,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start Waypoint');


DELETE FROM `broadcast_text` where `id` in (13591,13590,13610);
INSERT INTO `broadcast_text` (`ID`,`LanguageID`,`MaleText`,`FemaleText`,`EmoteID1`,`EmoteID2`,`EmoteID3`,`EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`SoundEntriesId`,`EmotesID`,`Flags`,`VerifiedBuild`) VALUES 
(13590,0,'','I can\'t wait to try this wine!',0,0,0,0,0,0,0,0,1,18019),
(13591,0,'','What... is happening... to me?  Get this cat away from me!',0,0,0,0,0,0,0,0,1,18019),
(13610,0,'','Viera Sunwhisper scurries away, attempting to flee from Twinkle.',0,0,0,0,0,0,0,0,1,18019);