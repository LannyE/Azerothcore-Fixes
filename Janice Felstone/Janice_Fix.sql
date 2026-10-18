
-- Janice Felstone
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=10778;

DELETE FROM `creature_text` where CreatureID in (10778);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(10778,0,0,'Help Me!',12,0,100,0,0,0,75208,0,'Janice Felstone'),
(10778,1,0,'I need help!',12,0,100,0,0,0,5163,0,'Janice Felstone');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (10778,1077800);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10778,0,0,0,1,0,100,0,180000,240000,480000,510000,0,0,80,1077800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - Out of Combat - Run Script'),

(1077800,9,0,0,0,0,100,0,1000,1000,0,0,0,0,4,2680,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Play Sound (Help Me)'),
(1077800,9,1,0,0,0,100,0,100,100,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Say Line 0'),
(1077800,9,2,0,0,0,100,0,3000,3000,0,0,0,0,4,6916,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Play Sound (Cry)'),
(1077800,9,3,0,0,0,100,0,100,100,0,0,0,0,5,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Play Emote'),
(1077800,9,4,0,0,0,100,0,180000,240000,0,0,0,0,4,2680,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Play Sound (Help Me)'),
(1077800,9,5,0,0,0,100,0,100,100,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Say Line 1'),
(1077800,9,6,0,0,0,100,0,3000,3000,0,0,0,0,4,6916,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Play Sound (Cry)'),
(1077800,9,7,0,0,0,100,0,100,100,0,0,0,0,5,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Janice Felstone - On Script - Play Emote');

DELETE FROM `gossip_menu` WHERE `MenuID`=2961 AND `TextID`=3669;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(2961,3669);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=2961;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14,2961,3669,0,0,8,0,5051,0,0,0,0,0,"","Show gossip text 3669 if quest 'Two Halves Become One' is rewarded");