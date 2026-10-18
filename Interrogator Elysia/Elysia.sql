-- Interrogator Elysia
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17825;
DELETE FROM `creature_text` WHERE `CreatureID` IN (17825);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(17825,0,0,'You will tell me everything I need to know, scum.',12,10,100,1,0,0,14396,0,'Interrogator Elysia'),
(17825,0,1,'Where are our men, scoundrel? I want answers!',12,7,100,5,0,0,14397,0,'Interrogator Elysia'),
(17825,0,2,'Aren\'t you hungry? Thirsty? I can arrange for food and drink -- all you need to do is tell me what I want to know.',12,7,100,1,0,0,14398,0,'Interrogator Elysia'),
(17825,0,3,'If these two don\'t start talking soon, I\'m going to get violent with my words.',12,7,100,1,0,0,14399,0,'Interrogator Elysia');

-- Captured Sunhawk Prisoner
-- UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17824;
DELETE FROM `creature_text` WHERE `CreatureID` IN (17824);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(17824,0,0,'You dare speak to me, blue skinned mongrel? I would sooner die than tell you anything.',12,0,100,5,0,0,14400,0,'Captured Sunhawk Agent'),
(17824,0,1,'%s spits on Interrogator Elysia.',16,0,100,14,0,0,14401,0,'Captured Sunhawk Agent'),
(17824,0,2,'%s laughs.',16,0,100,11,0,0,14402,0,'Captured Sunhawk Agent'),
(17824,0,3,'We happily drink in your blue blood, draenei. Nothing gives us more pleasure than to wound you just to see the blood flow.',12,10,100,1,0,0,14403,0,'Captured Sunhawk Agent');


-- Interrogator Elysia, and Captured Sunhawk Prisoner
-- Smart Scripts - Scripts
DELETE FROM smart_scripts WHERE `entryorguid` IN (17825) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (1782500) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

(17825,0,0,0,1,0,100,0,30000,30000,60000,120000,0,80,1782500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Interrogator Elysia - OOC - Run Script'),

(1782500,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,19,17824,0,0,0,0,0,0,0,'Interrogator Elysia - Script - Set Orientation'),
(1782500,9,1,0,0,0,100,0,1000,1000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Interrogator Elysia - Script - Say Line 0'),
(1782500,9,2,0,0,0,100,0,8000,8000,0,0,0,45,1,1,0,0,0,0,19,17824,0,0,0,0,0,0,0,'Interrogator Elysia - Script - Set Data 1 1 on Captured Sunhawk Prisoner'),
(1782500,9,3,0,0,0,100,0,7000,7000,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Interrogator Elysia - Script - Set Orientation (Home)');


DELETE FROM smart_scripts WHERE `entryorguid` IN (17824) AND `source_type` = 0 AND `id` IN (2,3,4) ;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

-- (17824,0,0,1,62,0,100,512,7533,0,0,0,0,33,17974,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Captured Sunhawk Agent - On Gossip Option - Kill Credit'),
-- (17824,0,1,0,61,0,100,512,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Captured Sunhawk Agent - On Gossip Option - Close Gossip'),
(17824,0,2,3,38,0,100,0,1,1,0,0,0,212,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Captured Sunhawk Prisoner - On Data Set 1 1 - Stop Motion'),
(17824,0,3,4,61,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,19,17825,0,0,0,0,0,0,0,'Captured Sunhawk Prisoner - On Data Set 1 1 (linked) - Set Orientation'),
(17824,0,4,0,61,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Captured Sunhawk Prisoner - On Data Set 1 1 (linked) - Say Line 0');