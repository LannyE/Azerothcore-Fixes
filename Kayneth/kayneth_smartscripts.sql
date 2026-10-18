/*
Fix Kayneth RP after Forsaken Diseases quest
*/
-- Kayneth Stillwind
DELETE FROM smart_scripts WHERE `entryorguid` IN (3848,384800,384801,384802);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3848,0,0,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kayneth Stillwind - Between 0-15% Health - Flee For Assist'),
(3848,0,1,0,1,0,100,512,0,0,180000,180000,0,0,53,1,3848,0,0,0,1,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - OOC - Start Waypoint'),
(3848,0,2,0,40,0,100,512,4,3848,0,0,0,0,80,384802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Waypoint 4 Reached - Run Script'),
(3848,0,3,4,40,0,100,512,2,3848,0,0,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Waypoint 2 Reached - Pause Waypoint'),
(3848,0,4,0,61,0,100,512,0,0,0,0,0,0,80,384800,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Waypoint 2 Reached (Linked) - Run Script'),
(3848,0,5,0,20,0,100,512,1011,0,0,0,0,0,80,384801,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Quest \'Forsaken Diseases\' Finished - Run Script'),

(384800,9,0,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.965562,'Kayneth Stillwind - On Script - Set Orientation 0.965562'),
(384800,9,1,0,0,0,100,0,3000,3000,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Set Emote State 69'),
(384800,9,2,0,0,0,100,0,11000,11000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Set Emote State 0'),
(384800,9,3,0,0,0,100,0,3000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Say Line 0'),

(384801,9,0,0,0,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Set Rooted On'),
(384801,9,1,0,0,0,100,0,0,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Remove Questgiver+Gossip npcflag'),
(384801,9,2,0,0,0,100,0,1000,1000,0,0,0,0,11,6354,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Cast \'Venom\'s Bane\''),
(384801,9,3,0,0,0,100,0,2200,2200,0,0,0,0,1,4,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Say Line 4'),
(384801,9,4,0,0,0,100,0,1000,1000,0,0,0,0,11,6355,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Cast \'Drink Disease Bottle\''),
(384801,9,5,0,0,0,100,0,2200,2200,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Say Line 1'),
(384801,9,6,0,0,0,100,0,0,0,0,0,0,0,17,64,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Set Emote State 64'),
(384801,9,7,0,0,0,100,0,4500,4500,0,0,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Say Line 2'),
(384801,9,8,0,0,0,100,0,3000,3000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Set Emote State 0'),
(384801,9,9,0,0,0,100,0,100,100,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Play Emote \'Roar\''),
(384801,9,10,0,0,0,100,0,3000,3000,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Say Line 3'),
(384801,9,11,0,0,0,100,0,2000,2000,0,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Add Questgiver+Gossip npcflag'),
(384801,9,12,0,0,0,100,0,10000,10000,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kayneth Stillwind - On Script - Set Rooted Off'),

(384802,9,0,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.49066,'Kayneth Stillwind - On Script - Set Orientation');

DELETE FROM broadcast_text WHERE `ID` IN (1317);
INSERT INTO `broadcast_text` (`ID`,`LanguageID`,`MaleText`,`FemaleText`,`EmoteID1`,`EmoteID2`,`EmoteID3`,`EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`SoundEntriesId`,`EmotesID`,`Flags`,`VerifiedBuild`) VALUES 
(1317,0,'Kayneth Stillwind protects himself with magic.','',0,0,0,0,0,0,0,0,1,18019);

DELETE FROM creature_text WHERE `CreatureID` IN (3848) and `GroupID` = 4 and `ID` = 0;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(3848,4,0,'Kayneth Stillwind protects himself with magic.',16,0,100,0,0,0,1317,0,'Kayneth Stillwind');
