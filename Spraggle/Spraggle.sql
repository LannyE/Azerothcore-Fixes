UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 9997;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 9997 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 999700 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9997,0,0,0,25,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Reset - Set Phase 1'),
(9997,0,1,2,75,1,100,0,23708,0,10,0,0,80,999700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Distance Ringo - Run Script'),
(9997,0,2,0,61,1,100,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - Linked - Set Phase 2'),
(999700,9,0,0,0,0,100,0,5000,5000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.0451,'Spraggle Frock - On Script - Set Orientation'),
(999700,9,1,0,0,0,100,0,6000,6000,0,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Script - Play Emote (Cheer)'),
(999700,9,2,0,0,0,100,0,9000,9000,0,0,0,5,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Script - Play Emote (Cry)'),
(999700,9,3,0,0,0,100,0,6000,6000,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Script - Set Orientation Home'),
(999700,9,4,0,0,0,100,0,11000,11000,0,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Script - Play Emote (Cheer)'),
(999700,9,5,0,0,0,100,0,5000,5000,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spraggle Frock - On Script - Set Phase 1');
