/*
Legion Hold 2-21-26
Deathforged Infernals that get launched get glitched on reset and rise back into the air. This fixes that
Prophetess Cavrylin now controls Infernal event_chance and speech
Morgroron speech and equiment fixed
Makazradon speech and equiment fixed
Shadow Council Warlock add a path to stand by Prophetess
Terrormaster add speech to patrollers
*/

-- Deathforged Infernal
UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (21316); -- 2 -- Set DONT_OVERRIDE_SAI_ENTRY

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21316,-74651,-74662) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2131600,2131601,2131602,2131603) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21316,0,0,0,1,0,100,1,1000,1000,0,0,0,0,11,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - OOC (No Repeat) - Cast \'Freeze Anim\''),

-- (-74651,0,0,0,1,0,100,512,180000,180000,300000,300000,0,0,80,2131601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - OOC - Run Script'),
(-74651,0,1000,0,38,0,100,512,1,1,0,0,0,0,80,2131601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Data Set 1 1 - Run Script'),
(-74651,0,1001,0,40,0,100,512,1,7465100,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Waypoint 1 Reached - Pause Waypoint'),
(-74651,0,1002,0,40,0,100,512,2,7465100,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Waypoint 2 Reached - Set Visible Off'),
(-74651,0,1003,0,40,0,100,512,3,7465100,0,0,0,0,80,2131603,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Waypoint 3 Reached - Run Script'),

-- (-74662,0,0,0,1,0,100,512,120000,120000,240000,240000,0,0,80,2131600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - OOC - Run Script'),
(-74662,0,1000,0,38,0,100,512,1,1,0,0,0,0,80,2131600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Data Set 1 1 - Run Script'),
(-74662,0,1001,0,40,0,100,512,1,7466200,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Waypoint 1 Reached - Pause Waypoint'),
(-74662,0,1002,0,40,0,100,512,2,7466200,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Waypoint 2 Reached - Set Visible Off'),
(-74662,0,1003,0,40,0,100,512,3,7466200,0,0,0,0,80,2131602,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Waypoint 3 Reached - Run Script'),

(2131600,9,0,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Fly off'),
(2131600,9,1,0,0,0,100,0,0,0,0,0,0,0,28,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Remove Aura'),
(2131600,9,2,0,0,0,100,0,0,0,0,0,0,0,53,2,7466200,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Start Waypoint'),
(2131600,9,3,0,0,0,100,0,13000,13000,0,0,0,0,86,33346,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cross cast'),
(2131600,9,4,0,0,0,100,0,3000,3000,0,0,0,0,86,36656,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cross cast'),
(2131600,9,5,0,0,0,100,0,0,0,0,0,0,0,11,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cast Transform'),
(2131600,9,6,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Fly On'),

(2131601,9,0,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Fly off'),
(2131601,9,1,0,0,0,100,0,0,0,0,0,0,0,28,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Remove Aura'),
(2131601,9,2,0,0,0,100,0,0,0,0,0,0,0,53,2,7465100,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Start Waypoint'),
(2131601,9,3,0,0,0,100,0,12000,12000,0,0,0,0,86,33346,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cross cast'),
(2131601,9,4,0,0,0,100,0,3000,3000,0,0,0,0,86,36656,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cross cast'),
(2131601,9,5,0,0,0,100,0,0,0,0,0,0,0,11,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cast Transform'),
(2131601,9,6,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Fly On'),

(2131602,9,0,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Fly Off'),
(2131602,9,1,0,0,0,100,512,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.26573,'Deathforged Infernal - Run Script - Set Orientation'),
(2131602,9,2,0,0,0,100,512,3000,3000,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Visible On'),
(2131602,9,3,0,0,0,100,512,100,100,0,0,0,0,28,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Remove Aura'),
(2131602,9,4,0,0,0,100,512,100,100,0,0,0,0,11,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cast \'Freeze Anim\' spell'),

(2131603,9,0,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Fly Off'),
(2131603,9,1,0,0,0,100,512,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.46804,'Deathforged Infernal - Run Script - Set Orientation'),
(2131603,9,2,0,0,0,100,512,3000,3000,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Set Visible On'),
(2131603,9,3,0,0,0,100,512,100,100,0,0,0,0,28,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Remove Aura'),
(2131603,9,4,0,0,0,100,512,100,100,0,0,0,0,11,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Run Script - Cast \'Freeze Anim\' spell');


-- Morgroron
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (75407); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21500) AND `source_type` = 0 AND `id` IN (3,4,5,6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2150001) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21500,0,3,0,108,0,100,0,3,754070,0,0,0,0,80,2150001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgroron - On Waypoint Reached 3 - Run Script'), -- 3 6 9 10
(21500,0,4,0,108,0,100,0,6,754070,0,0,0,0,80,2150001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgroron - On Waypoint Reached 6 - Run Script'),
(21500,0,5,0,108,0,100,0,9,754070,0,0,0,0,80,2150001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgroron - On Waypoint Reached 9 - Run Script'),
(21500,0,6,0,108,0,100,0,10,754070,0,0,0,0,80,2150001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgroron - On Waypoint Reached 10 - Run Script'),
(21500,0,7,0,5,0,100,0,15000,15000,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgroron - On Killed Unit - Say Line 1'),

(2150001,9,0,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Morgroron - Run Script - Say Line 0');

-- UPDATE `waypoint_data` SET `action` = 1138 WHERE `id` in (754070) and `point` IN (10); -- 1138 -- 1175
UPDATE `waypoint_data` SET `action` = 0 WHERE `id` in (754070) and `point` IN (3,6,9); -- 1137

DELETE FROM `waypoint_scripts` where id IN (1137) and `delay` IN (1) AND `command` = 1;
DELETE FROM `waypoint_scripts` where id IN (1138) and `delay` IN (2) AND `command` = 1;

DELETE FROM `creature_text` where CreatureID IN (21500) and GroupID IN (0,1);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(21500,0,0,'These Infernals are almost ready for the next assualt on The Betrayers Black Citadel!',12,0,100,1,0,0,18985,0,'Morgroron'),
(21500,0,1,'Things are proceeding well!  Soon we grind The Betrayers bones beneath our feet!',12,0,100,1,0,0,18994,0,'Morgroron'),
(21500,0,2,'Prepare to launch the next wave of Infernals!',12,0,100,1,0,0,18995,0,'Morgroron'),
(21500,0,3,'The sky shall fall with the Legions glory!',12,0,100,1,0,0,18996,0,'Morgroron'),
-- (21500,0,4,'We must be prepared for the next assualt!  The Betrayer will be destroyed!',14,0,100,0,0,0,18997,0,'Morgroron'),
(21500,0,4,'Things are proceeding well!  Soon we grind The Betrayers bones beneath our feet!',12,0,100,0,0,0,18999,0,'Morgroron'),
-- (21500,0,6,'We will conquer all, for we are the Burning Legion!  Our enemies shall be consumed in flame and crushed beneath our might!',14,0,100,0,0,0,18999,1,'Morgroron'),
-- (21500,0,7,'None can stand against the Burning Legion!  This world is ours!',14,0,100,0,0,0,19001,0,'Morgroron'),
(21500,0,5,'Be ready to advance on the enemy.  We will soon launch an all out assault on the Betrayer.',12,0,100,1,0,0,19393,0,'Morgroron'),
(21500,1,0,'You are meaningless!  Only absolute victory for the Legion matters!',12,0,100,0,0,0,19002,0,'Morgroron');


-- Makazradon
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (84491); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21501) AND `source_type` = 0 AND `id` IN (3,4,5,6,7,8,9,10,11,12,13);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2150101) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21501,0,3,0,108,0,100,0,3,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 3 - Run Script'), -- 3 6 9 10
(21501,0,4,0,108,0,100,0,6,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 6 - Run Script'),
(21501,0,5,0,108,0,100,0,10,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 10 - Run Script'),
(21501,0,6,0,108,0,100,0,13,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 13 - Run Script'),
(21501,0,7,0,108,0,100,0,14,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 14 - Run Script'),
(21501,0,8,0,108,0,100,0,16,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 16 - Run Script'),
(21501,0,9,0,108,0,100,0,19,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 19 - Run Script'),
(21501,0,10,0,108,0,100,0,22,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 22 - Run Script'),
(21501,0,11,0,108,0,100,0,28,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 28 - Run Script'),
(21501,0,12,0,108,0,100,0,31,844910,0,0,0,0,80,2150101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Waypoint Reached 31 - Run Script'),
(21501,0,13,0,5,0,100,0,15000,15000,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - On Killed Unit - Say Line 1'),

(2150101,9,0,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makazradon - Run Script - Say Line 0');

UPDATE `waypoint_data` SET `action` = 0 WHERE `id` in (844910) and `point` IN (3,6,10,13,14,16,19,22,28,31); -- 1135

DELETE FROM `creature_text` where CreatureID IN (21501) and GroupID IN (0,1);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(21501,0,0,'We must be prepared for the next assualt!  The Betrayer will be destroyed!',12,0,100,1,0,0,18997,0,'Makazradon'),
(21501,0,1,'We will conquer all, for we are the Burning Legion!  Our enemies shall be consumed in flame and crushed beneath our might!',12,0,100,0,0,0,18999,0,'Makazradon'),
(21501,0,2,'None can stand against the Burning Legion!  This world is ours!',12,0,100,1,0,0,19001,0,'Makazradon'),
(21501,1,0,'You are meaningless!  Only absolute victory for the Legion matters!',12,0,100,1,0,0,19002,0,'Makazradon');


-- Prophetess Cavrylin
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20683) AND `source_type` = 0 AND `id` IN (2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2068301,2068302) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20683,0,2,0,1,0,100,512,90000,150000,130000,180000,0,0,87,2068301,2068302,0,0,0,0,1,0,0,0,0,0,0,0,0,'Prophetess Cavrylin - OOC - Run Random Script'),

(2068301,9,0,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Prophetess Cavrylin - Run Script - Say Line 0'),
(2068301,9,1,0,0,0,100,0,5000,5000,0,0,0,0,45,1,1,0,0,0,0,10,74651,21316,0,0,0,0,0,0,'Prophetess Cavrylin - Run Script - Set Data 1 1 on Deathforged Infernal'),

(2068302,9,0,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Prophetess Cavrylin - Run Script - Say Line 0'),
(2068302,9,1,0,0,0,100,0,5000,5000,0,0,0,0,45,1,1,0,0,0,0,10,74662,21316,0,0,0,0,0,0,'Prophetess Cavrylin - Run Script - Set Data 1 1 on Deathforged Infernal');

DELETE FROM `creature_text` where CreatureID IN (20683) and GroupID = 0;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(20683,0,0,'Bring me another toy!',12,0,100,0,0,0,19495,0,'Prophetess Cavrylin'),
(20683,0,1,'Another one!  Bring me another one!',12,0,100,0,0,0,19496,0,'Prophetess Cavrylin');


-- Shadow Council Warlock
DELETE FROM `waypoint_data` where id IN (746010);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(746010,1,-3438.26,2988.15,171.462,NULL,0,0,0,100,0),
(746010,2,-3437.38,2950.23,171.24,NULL,0,0,0,100,0),
(746010,3,-3438.26,2988.15,171.462,NULL,0,0,0,100,0),
(746010,4,-3437.38,2950.23,171.24,NULL,0,0,0,100,0),
(746010,5,-3438.26,2988.15,171.462,NULL,0,0,0,100,0),
(746010,6,-3437.38,2950.23,171.24,NULL,0,0,0,100,0),
(746010,7,-3438.26,2988.15,171.462,NULL,0,0,0,100,0),
(746010,8,-3437.38,2950.23,171.24,NULL,0,0,0,100,0),
(746010,9,-3438.26,2988.15,171.462,NULL,0,0,0,100,0),
(746010,10,-3437.38,2950.23,171.24,NULL,0,0,0,100,0),
(746010,11,-3425.951,2959.9016,169.97205,NULL,0,0,0,100,0),
(746010,12,-3415.568,2973.716,169.90018,NULL,50000,0,0,100,0), -- Pause for a while by Prophetess
(746010,13,-3425.951,2959.9016,169.97205,NULL,0,0,0,100,0),
(746010,14,-3437.38,2950.23,171.24,NULL,0,0,0,100,0);


-- Terrormaster
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (21314); -- 0 -- Set DONT_OVERRIDE_SAI_ENTRY

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-74622,-74623,-74624,-74625,-74630) AND `source_type` = 0 AND `id` IN (1000);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-74622,0,1000,0,1,0,100,512,80000,160000,80000,160000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrormaster - OOC - Say Line 0'),

(-74623,0,1000,0,1,0,100,512,80000,160000,80000,160000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrormaster - OOC - Say Line 0'),

(-74624,0,1000,0,1,0,100,512,80000,160000,80000,160000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrormaster - OOC - Say Line 0'),

(-74625,0,1000,0,1,0,100,512,80000,160000,80000,160000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrormaster - OOC - Say Line 0'),

(-74630,0,1000,0,1,0,100,512,80000,160000,80000,160000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrormaster - OOC - Say Line 0');

DELETE FROM `creature_text` where CreatureID IN (21314) and GroupID = 0;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(21314,0,0,'Keep working!  You must be ready to join the front lines!',12,0,100,0,0,0,19327,0,'Terrormaster'),
(21314,0,1,'You are not worthy to be called Burning Legion!  Try harder worm!',12,0,100,0,0,0,19328,0,'Terrormaster'),
(21314,0,2,'You are nearly ready!  You will soon be called to destroy our enemies and conquer this land!',12,0,100,0,0,0,19329,0,'Terrormaster');
