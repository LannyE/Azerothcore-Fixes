/*
 Streamline Churn and Simmer Scripts and Texts 6-5-96
 
 - add missing texts
 - make scripts more consistant and work for both quest and non-quest players
*/

-- Churn
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25418) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2541800,2541801,2541802) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25418,0,0,0,0,0,100,0,5300,5300,9900,9900,0,0,11,50206,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Churn - In Combat - Cast \'Scalding Steam\' (No Repeat)'),
(25418,0,1,2,11,0,100,512,0,0,0,0,0,0,42,0,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Respawn - Set Invincibility Hp 10%'),
(25418,0,2,0,61,0,100,512,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Respawn (Linked) - Set React State Defensive'),
(25418,0,3,0,4,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Aggro - Say Line 0'),
(25418,0,4,0,1,0,100,512,25000,40000,0,0,0,0,80,2541802,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - OOC - Run Script'),
(25418,0,5,0,31,0,100,512,56720,0,0,0,0,0,80,2541800,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Successful Spell Hit \'56720\' - Run Script'),
(25418,0,6,0,31,0,100,512,56721,0,0,0,0,0,80,2541801,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Successful Spell Hit \'56721\' - Run Script'),
(25418,0,7,0,2,0,100,513,0,50,100,100,0,0,11,56721,0,0,0,0,0,5,0,1,0,0,0,0,0,0,'Churn - Between 0-50% Health (No Repeat) - Cast on SMART_TARGET_HOSTILE_RANDOM'),
(25418,0,8,9,2,0,100,512,0,10,100,100,0,0,11,56720,0,0,0,0,0,5,0,1,0,0,0,0,0,0,'Churn - Between 0-10% Health - Cast on SMART_TARGET_HOSTILE_RANDOM'),  -- Some garbage dummy spell to track on spell hit with a condition to see if the player has the quest or not.
(25418,0,9,0,61,0,100,512,0,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - Between 0-5% Health (Linked) - Set Faction 35'), -- This is for NPCBots/Creatures fighting him forever.

(2541800,9,0,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Say Line 1'),
(2541800,9,1,0,0,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set Root On'),
(2541800,9,2,0,0,0,100,0,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set Flag Not Attackable'), -- This is redundant since faction change but just in case.
(2541800,9,3,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set React State Passive'),
(2541800,9,4,0,0,0,100,0,0,0,0,0,0,0,134,45598,0,0,0,0,0,24,0,0,0,0,0,0,0,0,'Churn - On Script - Invoker Cast \'Boiling Point: Churn Kill Credit\''),
(2541800,9,5,0,0,0,100,0,5000,5000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Say Line 2'),
(2541800,9,6,0,0,0,100,0,6000,6000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Say Line 3'),
(2541800,9,7,0,0,0,100,0,1000,1000,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set Root Off'),
(2541800,9,8,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Evade'),

(2541801,9,0,0,0,0,100,0,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set Flag Not Attackable'), -- Faction does not change for this option so this is necessary.
(2541801,9,1,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set React State Passive'),
(2541801,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Say Line 3'),
(2541801,9,3,0,0,0,100,0,2000,2000,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Evade'),

(2541802,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set React State Defensive'),
(2541802,9,1,0,0,0,100,0,0,0,0,0,0,0,2,1984,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Set Faction 1984'),
(2541802,9,2,0,0,0,100,0,100,100,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Churn - On Script - Remove Flag Not Attackable');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 25418 AND `SourceGroup` IN (6,7) AND  `ConditionTypeOrReference` IN (9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Condition for event ID 5: Invoker MUST have quest 11627
(22,6,25418,0,0,9,0,11627,0,0,0,0,0,'','Creature 25418 script 5 runs if player HAS quest 11627'),
-- Condition for event ID 6: Invoker MUST NOT have quest 11627 (NegativeCondition = 1)
(22,7,25418,0,0,9,0,11627,0,0,1,0,0,'','Creature 25418 script 6 runs if player does NOT have quest 11627');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25418);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25418,0,0,'I will crush you under the weight of my waves!',12,0,0,0,0,0,24679,0,''),
(25418,0,1,'You dare come into my pool?!',12,0,0,0,0,0,24680,0,''),
(25418,0,2,'Your death will not be pleasant!',12,0,0,0,0,0,24681,0,''),
(25418,0,3,'Your corpse will feed my fish.',12,0,0,0,0,0,24682,0,''),
(25418,1,0,'WAIT... NO MORE!',12,0,0,0,0,0,24669,0,''),
(25418,2,0,'I... submit. As long as Simmer agrees to stop boiling my pool, I agree to an armistice.',12,0,0,0,0,0,24670,0,''),
(25418,3,0,'Now, remove yourself from my presence. You would be wise not to come within sight of me again.',12,0,0,0,0,0,24671,0,'');


-- Simmer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25416) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2541600,2541601,2541602) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25416,0,0,1,11,0,100,512,0,0,0,0,0,0,42,0,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Respawn - Set Invincibility Hp 10%'),
(25416,0,1,0,61,0,100,512,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Respawn (Linked) - Set React State Defensive'),
(25416,0,2,0,4,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Aggro - Say Line 0'),
(25416,0,3,0,1,0,100,512,25000,40000,0,0,0,0,80,2541602,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - OOC - Run Script'),
(25416,0,4,0,31,0,100,512,56720,0,0,0,0,0,80,2541600,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Successful Spell Hit \'56720\' - Run Script'),
(25416,0,5,0,31,0,100,512,56721,0,0,0,0,0,80,2541601,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Successful Spell Hit \'56721\' - Run Script'),
(25416,0,6,0,2,0,100,513,0,50,100,100,0,0,11,56721,0,0,0,0,0,5,0,1,0,0,0,0,0,0,'Simmer - Between 0-50% Health (No Repeat) - Cast on SMART_TARGET_HOSTILE_RANDOM'),
(25416,0,7,8,2,0,100,512,0,10,100,100,0,0,11,56720,0,0,0,0,0,5,0,1,0,0,0,0,0,0,'Simmer - Between 0-10% Health - Cast on SMART_TARGET_HOSTILE_RANDOM'),
(25416,0,8,0,61,0,100,512,0,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - Between 0-10% Health (Linked) - Set Faction 35'),

(2541600,9,0,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Say Line 1'),
(2541600,9,1,0,0,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set Root On'),
(2541600,9,2,0,0,0,100,0,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set Flag Not Attackable'),
(2541600,9,3,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set React State Passive'),
(2541600,9,4,0,0,0,100,0,0,0,0,0,0,0,134,45599,0,0,0,0,0,24,0,0,0,0,0,0,0,0,'Simmer - On Script - Invoker Cast \'Boiling Point: Simmer Kill Credit\''),
(2541600,9,5,0,0,0,100,0,5000,5000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Say Line 2'),
(2541600,9,6,0,0,0,100,0,6000,6000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Say Line 3'),
(2541600,9,7,0,0,0,100,0,1000,1000,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set Root Off'),
(2541600,9,8,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Evade'),

(2541601,9,0,0,0,0,100,0,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set Flag Not Attackable'),
(2541601,9,1,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set React State Passive'),
(2541601,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Say Line 3'),
(2541601,9,3,0,0,0,100,0,2000,2000,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Evade'),

(2541602,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set React State Defensive'),
(2541602,9,1,0,0,0,100,0,0,0,0,0,0,0,2,1983,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Set Faction 1983'),
(2541602,9,2,0,0,0,100,0,100,100,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Simmer - On Script - Remove Flag Not Attackable');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 25416 AND `SourceGroup` IN (5,6) AND  `ConditionTypeOrReference` IN (9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Condition for event ID 6: Invoker MUST have quest 11627
(22,5,25416,0,0,9,0,11627,0,0,0,0,0,'','Creature 25416 script 4 runs if player HAS quest 11627'),
-- Condition for event ID 7: Invoker MUST NOT have quest 11627 (NegativeCondition = 1)
(22,6,25416,0,0,9,0,11627,0,0,1,0,0,'','Creature 25416 script 5 runs if player does NOT have quest 11627');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25416);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25416,0,0,'Who dares?!',12,0,0,0,0,0,24675,0,''),
(25416,0,1,'I will turn your bones to ash!',12,0,0,0,0,0,24676,0,''),
(25416,0,2,'You will be consumed!',12,0,0,0,0,0,24677,0,''),
(25416,0,3,'There is no escape from my rise!',12,0,0,0,0,0,24678,0,''),
(25416,1,0,'Stop!',12,0,0,0,0,0,34706,0,''),
(25416,2,0,'Tell Imperean that I will consider a cessation of hostilities. But first, Churn must stop his watery intrusions upon my rise!',12,0,0,0,0,0,24667,0,''),
(25416,3,0,'I grow bored with you. Begone!',12,0,0,0,0,0,24668,0,'');