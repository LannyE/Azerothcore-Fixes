/*
 Streamline Churn and Simmer Scripts and Texts 6-5-96
 
 - add missing texts
 - make scripts more consistant
*/

-- Churn
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25418) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2541800,2541801) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25418,0,0,0,0,0,100,0,5300,5300,9900,9900,0,0,11,50206,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Churn - In Combat - Cast \'Scalding Steam\' (No Repeat)'),
(25418,0,1,0,4,0,100,512,0,0,0,0,0,0,42,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Aggro - Set Invincibility Hp 5% (No Repeat)'),
(25418,0,2,0,0,0,100,1,5000,5000,5000,5000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - In Combat - Say Line 0 (No Repeat)'),
(25418,0,3,4,0,0,100,1,10000,10000,10000,10000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - In Combat - Say Line 1 (No Repeat)'),
(25418,0,4,5,61,0,100,1,0,0,0,0,0,0,134,45598,0,0,0,0,0,24,0,0,0,0,0,0,0,0,'Churn - Between 0-5% Health - Invoker Cast \'Boiling Point: Churn Kill Credit\' (No Repeat)'),
(25418,0,5,6,61,0,100,0,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - Between 0-5% Health - Say Line 2 (No Repeat)'),
(25418,0,6,7,61,0,100,512,0,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - Between 0-5% Health - Set Faction 35 (No Repeat)'),
(25418,0,7,0,61,0,100,512,0,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - Between 0-5% Health - Evade (No Repeat)'),
(25418,0,8,0,1,0,100,512,120000,120000,120000,120000,0,0,2,1984,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - Out of Combat - Set Faction 1984 (No Repeat)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 25418 AND `SourceGroup` IN (6,7) AND  `ConditionTypeOrReference` IN (9);

DELETE FROM `creature_text` WHERE `CreatureID` IN (25418);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25418,0,0,'I... submit. As long as Simmer agrees to stop boiling my pool, I agree to an armistice.',12,0,0,0,0,0,24670,0,''),
(25418,1,0,'Now, remove yourself from my presence. You would be wise not to come within sight of me again.',12,0,0,0,0,0,24671,0,''),
(25418,2,0,'WAIT... NO MORE!',12,0,0,0,0,0,24669,0,'');


-- Simmer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25416) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2541600,2541601) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25416,0,0,1,4,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Aggro - Say Line 0'),
(25416,0,1,0,61,0,100,512,0,0,0,0,0,0,42,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Respawn - Set Invincibility Hp 5%'),
(25416,0,2,0,0,0,100,1,5000,5000,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - In Combat - Say Line 2'),
(25416,0,3,4,0,0,100,1,10000,10000,10000,10000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - In Combat - Say Line 3'),
(25416,0,4,5,61,0,100,1,0,0,0,0,0,0,134,45599,0,0,0,0,0,24,0,0,0,0,0,0,0,0,'Simmer - Between 0-5% Health - Invoker Cast \'Boiling Point: Simmer Kill Credit\' (No Repeat)'),
(25416,0,5,6,61,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - Between 0-5% Health - Say Line 1 (No Repeat)'),
(25416,0,6,7,61,0,100,512,0,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - Between 0-5% Health - Set Faction 35 (No Repeat)'),
(25416,0,7,0,61,0,100,512,0,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - Between 0-5% Health - Evade (No Repeat)'),
(25416,0,8,0,1,0,100,512,120000,120000,120000,120000,0,0,2,1983,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - Out of Combat - Set Faction 1983 (No Repeat)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 25416 AND `SourceGroup` IN (5,6) AND  `ConditionTypeOrReference` IN (9);

DELETE FROM `creature_text` WHERE `CreatureID` IN (25416);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25416,0,0,'Who dares?!',12,0,0,0,0,0,24675,0,''),
(25416,1,0,'Stop!',12,0,0,0,0,0,34706,0,''),
(25416,2,0,'Tell Imperean that I will consider a cessation of hostilities. But first, Churn must stop his watery intrusions upon my rise!',12,0,0,0,0,0,24667,0,''),
(25416,3,0,'I grow bored with you. Begone!',12,0,0,0,0,0,24668,0,'');