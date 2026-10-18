
-- Shadowsworn Drakonoid
DELETE FROM `creature` WHERE `guid` IN (77356,77357); -- Too many of these

UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (77361); -- 1 5 -- Path was already there
UPDATE `creature` SET `wander_distance` = 0 WHERE `guid` in (77358,77359,77360); -- 5

-- Shadowmoon Eye of Kilrogg
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (77730); -- 1 5 -- Path was already there


-- Shadowmoon Slayer
DELETE FROM `smart_scripts` WHERE `entryorguid` = 22082 AND `source_type` = 0 AND `id` IN (3,4,5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22082,0,3,0,1,1,100,512,2000,2000,2000,3000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmoon Slayer - OOC (Phase 1) - Emote Attack 1H'),
(22082,0,4,0,103,0,100,512,0,22082,2,5,30000,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmoon Slayer - Within Creature Distance - Set Phase 1'),
(22082,0,5,0,104,0,100,512,0,22082,2,5,30000,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmoon Slayer - Within Creature Distance Negaton - Set Phase 0');


-- Shadowmoon Soulstealer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22061) AND `source_type` = 0 AND `id` IN (5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22061,0,5,0,1,0,100,0,5000,5000,0,0,0,0,11,38250,0,0,0,0,0,10,77279,22058,0,0,0,0,0,0,'Shadowmoon Soulstealer - OOC - Cast \'Heart of Fury Siphon\'');



-- Heart of Fury Visual TRIGGER
UPDATE `creature` SET `position_z` = 139.646 WHERE `guid` in (77279); -- Too high


-- Demon Hunter Supplicant
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21179 AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2117900 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21179,0,2,0,1,1,100,512,2000,2000,2000,3000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - OOC (Phase 1) - Emote Attack 1H'),
(21179,0,3,0,103,0,100,512,0,21179,2,5,30000,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - Within Creature Distance - Set Phase 1'),
(21179,0,4,0,104,0,100,512,0,21179,2,5,30000,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - Within Creature Distance Negaton - Set Phase 0'),
(21179,0,5,6,1,1,100,512,15000,15000,30000,60000,0,0,45,2,2,0,0,0,0,9,21179,0,5,1,0,0,0,0,'Demon Hunter Supplicant - OOC (Phase 1) - Set Data 2 2'),
(21179,0,6,0,61,0,100,512,0,0,0,0,0,0,80,2117900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - OOC (Phase 1) - Run Script'),
(21179,0,7,0,38,0,100,512,2,2,0,0,0,0,80,2117900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - On Data Set 2 2 - Run Script'),


(2117900,9,0,0,0,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - On Script - Set Phase 2'),
(2117900,9,1,0,0,0,100,512,4000,6000,0,0,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - On Script - Emote Bow'),
(2117900,9,2,0,0,0,100,512,4000,4000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Supplicant - On Script - Set Phase 1');


-- Demon Hunter Initiate
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (21180);
UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (74278); -- 1 5


DELETE FROM `waypoints` where entry IN (21180);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(21180,1,-3890.878,439.69226,105.0786,NULL,0,'Demon Hunter Initiate'),
(21180,2,-3902.66,440.068,104.804,NULL,0,'Demon Hunter Initiate'),
(21180,3,-3914.7764,439.83368,104.437355 ,NULL,0,'Demon Hunter Initiate'),
(21180,4,-3914.0205,439.8222,104.43355,NULL,0,'Demon Hunter Initiate'),
(21180,5,-3902.66,440.068,104.804,NULL,0,'Demon Hunter Initiate'),
(21180,6,-3891.887,439.70105,105.06146,NULL,0,'Demon Hunter Initiate');


DELETE FROM `smart_scripts` WHERE `entryorguid` = 21180 AND `source_type` = 0 AND `id` IN (3,4,5,6,7,8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21180,0,3,0,1,3,100,512,7000,7000,1000,2000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - OOC (Phase 1 & 2) - Emote Attack 1H'),
(21180,0,4,0,103,0,100,512,0,21180,2,4,30000,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - Within Creature Distance - Set Phase 1'),
(21180,0,5,0,104,1,100,512,0,21180,2,5,30000,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - Within Creature Distance Negaton (Phase 1) - Set Phase 0'),
(21180,0,6,0,103,0,100,512,0,21908,1,5,5000,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - Within Creature Distance - Set Phase 2'),
(21180,0,7,0,38,0,100,512,1,1,0,0,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Data Set 1 1 - Emote Point'),
(21180,0,8,0,104,2,100,512,0,21908,1,5,5000,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - Within Creature Distance Negaton (Phase 2) - Set Phase 0');


DELETE FROM `smart_scripts` WHERE `entryorguid` = -74278 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7427800,7427801) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-74278,0,1000,0,11,0,100,512,0,0,0,0,0,0,53,0,21180,1,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Respawn - Start WP'),
(-74278,0,1001,0,40,0,35,512,3,21180,0,0,0,0,80,7427800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On WP 3 Reached - Run Script'),
(-74278,0,1002,0,40,0,35,512,6,21180,0,0,0,0,80,7427801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On WP 6 Reached - Run Script'),

(7427800,9,0,0,0,0,100,512,0,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Script - Pause WP'),
(7427800,9,1,0,0,0,100,512,1000,1000,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-3916.0454,435.21454,104.37897,4.469,'Demon Hunter Initiate - On Script - Move to POS'),
(7427800,9,2,0,0,0,100,512,3000,3000,0,0,0,0,66,7000,0,0,0,0,0,8,0,0,0,0,0,0,0,4.469,'Demon Hunter Initiate - On Script - Set Orientation'),
(7427800,9,3,0,0,0,100,512,2000,2000,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Script - Emote Talk'),
(7427800,9,4,0,0,0,100,512,3000,3000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Script - Resume WP'),

(7427801,9,0,0,0,0,100,512,0,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Script - Pause WP'),
(7427801,9,1,0,0,0,100,512,1000,1000,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-3891.7986,443.26324,105.05998,1.719,'Demon Hunter Initiate - On Script - Move to POS'),
(7427801,9,2,0,0,0,100,512,3000,3000,0,0,0,0,66,7000,0,0,0,0,0,8,0,0,0,0,0,0,0,1.719,'Demon Hunter Initiate - On Script - Set Orientation'),
(7427801,9,3,0,0,0,100,512,2000,2000,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Script - Emote Talk'),
(7427801,9,4,0,0,0,100,512,3000,3000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Demon Hunter Initiate - On Script - Resume WP');


-- Sunfury Warlock
DELETE FROM `smart_scripts` WHERE entryorguid IN (21503);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21503,0,0,0,0,0,100,0,5000,8000,10000,16000,0,0,11,32707,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warlock - IC - Cast Incinerate'),
(21503,0,1,0,0,0,100,0,0,3000,3000,3000,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warlock - IC - Cast Shadow Bolt'),
(21503,0,2,0,38,0,100,512,1,1,0,0,0,0,11,46846,0,0,0,0,0,10,75420,21506,0,0,0,0,0,0,'Sunfury Warlock - On Data set - Cast Channel'), -- 38722 spell doesn't work
(21503,0,3,0,1,0,100,512,5000,5000,0,0,0,0,11,46846,64,0,0,0,0,19,21506,10,0,0,0,0,0,0,'Sunfury Warlock - OOC - Cast Channel');



-- Azaloth
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21506 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21506,0,0,0,23,0,100,0,46846,1,5000,5000,0,0,11,37833,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On aura x1 - Cast ban'),
(21506,0,1,0,25,0,100,512,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On reset - Set unit Flag'),
(21506,0,2,3,8,0,100,512,37834,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spell hit - Remove flag'),
(21506,0,3,4,61,0,100,512,0,0,0,0,0,0,33,21892,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Azaloth - On Spell hit - Give Credit'),
(21506,0,4,5,61,0,100,512,0,0,0,0,0,0,28,37833,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spell hit - Remove Aura'),
(21506,0,5,6,61,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,11,21503,22,0,0,0,0,0,0,'Azaloth - On Spell hit - Attack'),
(21506,0,6,7,61,0,100,512,0,0,0,0,0,0,11,38750,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spellhit - Cast Warstomp'),
(21506,0,7,8,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spellhit - Say Text'),
(21506,0,8,0,61,0,100,512,0,0,0,0,0,0,92,0,46846,1,0,0,0,11,21503,22,0,0,0,0,0,0,'Azaloth - On Spellhit - Interrupt cast'),
(21506,0,9,0,9,0,100,0,0,0,8000,15000,0,5,11,40504,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Azaloth - On Range - Cast Cleave'),
(21506,0,10,0,0,0,100,0,8000,8000,8000,12000,0,0,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Azaloth - IC - Cast Cripple'),
(21506,0,11,0,0,0,100,0,5000,10000,12000,15000,0,0,11,38741,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Azaloth - IC - Cast Rain of Fire'),
(21506,0,12,0,25,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,11,21503,22,0,0,0,0,0,0,'Azaloth - On reset - Set data'),
(21506,0,13,0,1,0,100,512,10000,10000,0,0,0,0,45,1,1,0,0,0,0,11,21503,22,0,0,0,0,0,0,'Azaloth - OOC - Set Data');



-- Sunfury Summoner
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (21505);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-33134,-32702,-32701) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2150500,2150501) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-32701,0,1000,0,11,0,100,512,0,0,0,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Spawn - Run Script'),
(-32701,0,1001,0,25,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Reset - Set Phase 1'),
(-32701,0,1002,0,6,2,100,512,0,0,0,0,0,0,45,2,2,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Death (Phase 2) - Set Data 2 2 on Terrorguard'),
(-32701,0,1003,0,38,0,100,512,1,1,0,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Data Set 1 1 - Run Script'),
(-32701,0,1004,0,82,0,100,512,21908,30000,45000,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Summoned Despawn - Run Script'),
(-32701,0,1005,0,107,0,100,512,21908,2000,2000,0,0,0,80,2150501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Summon Evade - Run Script'),
(-32701,0,1006,1007,4,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Aggro - Set Phase 2'),
(-32701,0,1007,1008,61,0,100,512,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Aggro (Linked) - Store target list'),
(-32701,0,1008,1009,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Aggro (Linked) - Send Target list'),
(-32701,0,1009,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Aggro (Linked) - Set Data 1 1 on Terrorguard'),



(-32702,0,1000,0,11,0,100,512,0,0,0,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Spawn - Run Script'),
(-32702,0,1001,0,25,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Reset - Set Phase 1'),
(-32702,0,1002,0,6,2,100,512,0,0,0,0,0,0,45,2,2,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Death (Phase 2) - Set Data 2 2 on Terrorguard'),
(-32702,0,1003,0,38,0,100,512,1,1,0,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Data Set 1 1 - Run Script'),
(-32702,0,1004,0,82,0,100,512,21908,30000,45000,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Summoned Despawn - Run Script'),
(-32702,0,1005,0,107,0,100,512,21908,2000,2000,0,0,0,80,2150501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Summon Evade - Run Script'),
(-32702,0,1006,1007,4,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Aggro - Set Phase 2'),
(-32702,0,1007,1008,61,0,100,512,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Aggro (Linked) - Store target list'),
(-32702,0,1008,1009,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Aggro (Linked) - Send Target list'),
(-32702,0,1009,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Aggro (Linked) - Set Data 1 1 on Terrorguard'),



(-33134,0,1000,0,11,0,100,512,0,0,0,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Spawn - Run Script'),
(-33134,0,1001,0,25,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Reset - Set Phase 1'),
(-33134,0,1002,0,6,2,100,512,0,0,0,0,0,0,45,2,2,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Death (Phase 2) - Set Data 2 2 on Terrorguard'),
(-33134,0,1003,0,38,0,100,512,1,1,0,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Data Set 1 1 - Run Script'),
(-33134,0,1004,0,82,0,100,512,21908,30000,45000,0,0,0,80,2150500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Summoned Despawn - Run Script'),
(-33134,0,1005,0,107,0,100,512,21908,2000,2000,0,0,0,80,2150501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Summon Evade - Run Script'),
(-33134,0,1006,1007,4,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Aggro - Set Phase 2'),
(-33134,0,1007,1008,61,0,100,512,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Aggro (Linked) - Store target list'),
(-33134,0,1008,1009,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Aggro (Linked) - Send Target list'),
(-33134,0,1009,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,204,0,0,0,0,0,0,0,0,'Sunfury Summoner- On Aggro (Linked) - Set Data 1 1 on Terrorguard'),



(2150500,9,0,0,0,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Script - Set Phase 1'),
(2150500,9,1,0,0,0,100,512,30000,70000,0,0,0,0,228,21908,0,1,0,0,5,1,0,0,0,0,0,0,0,0,'Sunfury Summoner - On Script - Summon Radial Terrorguard'),
(2150500,9,2,0,0,0,100,512,0,0,0,0,0,0,11,43151,0,0,0,0,0,19,21908,16,0,0,0,0,0,0,'Sunfury Summoner - On Script - Channel on Terrorguard'),

(2150501,9,0,0,0,0,100,512,5000,5000,0,0,0,0,11,43151,0,0,0,0,0,19,21908,16,0,0,0,0,0,0,'Sunfury Summoner - On Script - Channel on Terrorguard');




-- Spellbound Terrorguard
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21908 AND `source_type` = 0 AND `id` IN (3,4,5,6,7,8,9,10,11,12,13);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-76653,-76654) AND `source_type` = 0; -- Should not use creature template smart scripts
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2190800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21908,0,3,0,54,0,100,512,0,0,0,0,0,0,80,2190800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Summon - Run Script'),
(21908,0,4,0,38,0,100,512,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Data Set 1 1 - Attack Stored Target'),
(21908,0,5,6,38,0,100,512,2,2,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Data Set 2 2 - Say text'),
(21908,0,6,7,61,0,100,512,0,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Data Set 2 2 (Linked) - Remove Flag'),
(21908,0,7,8,61,0,100,512,0,0,0,0,0,0,2,954,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Data Set 2 2 (Linked) - Set Faction'),
(21908,0,8,0,61,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,19,21180,40,0,0,0,0,0,0,'Spellbound Terrorguard - On Data Set 2 2 (Linked) - Attack '),
(21908,0,9,0,25,0,100,512,0,0,0,0,0,0,80,2190800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Reset - Run Script'),
(21908,0,10,0,6,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,23,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Death - Set Data on Summoner'),
(21908,0,11,0,1,1,100,512,11000,11000,8000,15000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - OOC (Phase 1) - Emote Attack 1H'),
(21908,0,12,0,4,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Aggro - Set Phase 0'),
(21908,0,13,0,66,0,100,512,1,0,0,0,0,0,37,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Phase Change 1 - Die'),

(-76653,0,0,0,0,0,100,0,2500,5000,15000,20000,0,0,11,31553,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - In Combat - Cast \'31553\''),
(-76653,0,1,0,2,0,100,1,20,80,0,0,0,0,11,37488,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - Between 20-80% Health - Cast \'37488\' (No Repeat)'),

(-76654,0,0,0,0,0,100,0,2500,5000,15000,20000,0,0,11,31553,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - In Combat - Cast \'31553\''),
(-76654,0,1,0,2,0,100,1,20,80,0,0,0,0,11,37488,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - Between 20-80% Health - Cast \'37488\' (No Repeat)'),


(2190800,9,0,0,0,0,100,512,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Script - Set unit Flag'),
(2190800,9,1,0,0,0,100,512,0,0,0,0,0,0,2,1813,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Script - Set Faction'),
(2190800,9,2,0,0,0,40,512,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Script - Say Text'),
(2190800,9,3,0,0,0,100,512,2000,3000,0,0,0,0,69,1,0,0,0,1,0,19,21180,20,0,0,0,0,0,0,'Spellbound Terrorguard - On Script - Move to POS'),
(2190800,9,4,0,0,0,100,512,2000,2000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbound Terrorguard - On Script - Set Phase 1'),
(2190800,9,5,0,0,0,100,512,2000,2000,0,0,0,0,45,1,1,0,0,0,0,19,21180,10,0,0,0,0,0,0,'Spellbound Terrorguard - On Script - Set Data 1 1 on Demon Hunter Initiate');


DELETE FROM `creature_text` WHERE `CreatureID` = 21908;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(21908,0,0,"I will come back for you all!",14,0,100,0,0,0,20058,0,"Spellbound Terrorguard"),
(21908,0,1,"The Legion will prevail!",14,0,100,0,0,0,20061,0,"Spellbound Terrorguard"),
(21908,1,0,"Free at last!",14,0,100,0,0,0,20060,0,"Spellbound Terrorguard");
