/*
Change Auras from CREATURE_TEMPLATE_ADDONS to smart script to attempt to solve the Assertion failed on shutdown bug.
*/

-- Sickly Gazelle
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 12296; -- ""
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (13101,13102,13103,13104,13105,13106,13107,13108,13110,13111,13112,13113,13114,13115,13116,13117,13118,13119,13121,13122,13123,13124,13125,13126,13127,13129,13130,13131,13132,13133,13134,13135,13136,13137,13138,13139,13140,13141,13142,13143,13144,13145,13146,13147,13148,13149,13150,13151,13152,13153,13154,13155,13156,13157,13158,13159,13160,13161,13163,13164); -- 19502

DELETE FROM `smart_scripts` WHERE `entryorguid` in (12296) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(12296,0,0,0,1,0,100,1,1000,1000,0,0,0,75,19502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sickly Gazelle - OOC - Add Aura \'Sickly Critter Aura\'');


-- Steam Frog
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 25679; -- ""
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (25679); -- 36151

DELETE FROM `smart_scripts` WHERE `entryorguid` in (25679) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25679,0,0,0,1,0,100,1,1000,1000,0,0,0,75,36151,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Steam Frog - OOC - Add Aura \'Cosmetic: Steam Aura\'');


-- Tundra Penguin
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 28440; -- ""
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (28440); -- 51583

DELETE FROM `smart_scripts` WHERE `entryorguid` in (28440) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28440,0,0,0,1,0,100,1,1000,1000,0,0,0,75,51583,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tundra Penguin - OOC (No Repeat) - Add Aura \'Cosmetic: Random Size\'');


-- Sickly Deer
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 12298; -- ""
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (12298); -- 19502

DELETE FROM `smart_scripts` WHERE `entryorguid` in (12298) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(12298,0,0,0,1,0,100,1,1000,1000,0,0,0,75,19502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sickly Deer- OOC (No Repeat) - Add Aura \'Sickly Critter Aura\'');
/*
-- Cat
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 6368; -- ""
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (40343,40344,40345,40346,40347,40348,40349); -- 10848  -- Need all guids

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-40343,-40344,-40345,-40346,-40347,-40348,-40349) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-40343,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\''),
(-40344,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\''),
(-40345,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\''),
(-40346,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\''),
(-40347,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\''),
(-40348,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\''),
(-40349,0,0,0,1,0,100,1,1000,1000,0,0,0,75,10848,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cat - OOC - Add Aura \'Shroud of Death\'');
