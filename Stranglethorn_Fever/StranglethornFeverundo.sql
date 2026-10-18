DELETE FROM `smart_scripts` WHERE `entryorguid` = 1449 AND `source_type` = 0 AND `id` BETWEEN 1 AND 6;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 144900 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(144900,9,0,0,0,0,100,0,2000,2000,0,0,0,12,1511,3,300000,0,0,0,8,0,0,0,0,-13743.7,-23.97,45.14,5.7,'Witch Doctor Unbagwa - On Script - Summon Creature \'Enraged Silverback Gorilla\''),
(144900,9,1,0,0,0,100,0,28000,28000,0,0,0,12,1516,3,300000,0,0,0,8,0,0,0,0,-13743.7,-23.97,45.14,5.7,'Witch Doctor Unbagwa - On Script - Summon Creature \'Konda\''),
(144900,9,2,0,0,0,100,0,20000,20000,0,0,0,12,1514,3,300000,0,0,0,8,0,0,0,0,-13743.7,-23.97,45.14,5.7,'Witch Doctor Unbagwa - On Script - Summon Creature \'Mokk the Savage\'');

UPDATE `creature_template` SET `AIName`="",`flags_extra` = 0 WHERE `entry` IN (1511,1516,1514);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1511,1516,1514) AND `source_type`=0;

DELETE FROM `waypoints` WHERE `entry` IN (1511,1516,1514);

-- UPDATE `quest_offer_reward` SET `Emote1` = 5,`Emote2` = 1,`Emote3` = 1 WHERE `ID` = 349;