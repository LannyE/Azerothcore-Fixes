/*
Undo
Legion Hold 2-21-26
Deathforged Infernals that get launched get glitched on reset and rise back into the air. This fixes that
Prophetess Cavrylin now controls Infernal event_chance and speech
Morgroron speech and equiment fixed
Makazradon speech and equiment fixed
Shadow Council Warlock add a path to stand by Prophetess
Terrormaster add speech to patrollers
*/

-- Deathforged Infernal
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (21316); -- 2 -- Set DONT_OVERRIDE_SAI_ENTRY

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21316,-74651,-74662) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2131600,2131601,2131602,2131603) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21316,0,0,0,25,0,100,1,0,0,0,0,0,0,11,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On Respawn - Cast \'Freeze Anim\' (Phase 1)'),

(-74651,0,0,0,1,0,100,512,180000,180000,300000,300000,0,0,80,2131601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - OOC - Action liist'),
(-74651,0,1,0,40,0,100,512,1,7465100,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint1 - pause wp)'),
(-74651,0,2,0,40,0,100,512,2,7465100,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint2 - Set visible off'),
(-74651,0,3,4,40,0,100,512,3,7465100,0,0,0,0,28,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint1 - Remove aura)'),
(-74651,0,4,5,61,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Set visible on'),
(-74651,0,5,6,61,0,100,512,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.46804,'Deathforged Infernal - On waypoint3 - Set orientation'),
(-74651,0,6,7,61,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Set fly Off'),
(-74651,0,7,0,61,0,100,512,0,0,0,0,0,0,11,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Cast spell'),

(-74662,0,0,0,1,0,100,512,120000,120000,240000,240000,0,0,80,2131600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - OOC - Action list'),
(-74662,0,1,0,40,0,100,512,1,7466200,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint1 - pause wp)'),
(-74662,0,2,0,40,0,100,512,2,7466200,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint2 - Set visible off'),
(-74662,0,3,4,40,0,100,512,3,7466200,0,0,0,0,28,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Remove aura)'),
(-74662,0,4,5,61,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Set visible on'),
(-74662,0,5,6,61,0,100,512,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.26573,'Deathforged Infernal - On waypoint3 - Set orientation'),
(-74662,0,6,7,61,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Set fly Off'),
(-74662,0,7,0,61,0,100,512,0,0,0,0,0,0,11,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - On waypoint3 - Cast spell'),

(2131600,9,0,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Set fly off'),
(2131600,9,1,0,0,0,100,0,0,0,0,0,0,0,28,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Remove aura'),
(2131600,9,2,0,0,0,100,0,0,0,0,0,0,0,53,2,7466200,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - start wp'),
(2131600,9,3,0,0,0,100,0,13000,13000,0,0,0,0,86,33346,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Cross cast'),
(2131600,9,4,0,0,0,100,0,3000,3000,0,0,0,0,86,36656,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Cross cast'),
(2131600,9,5,0,0,0,100,0,0,0,0,0,0,0,11,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Cast Transform'),
(2131600,9,6,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Set fly On'),

(2131601,9,0,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Set fly off'),
(2131601,9,1,0,0,0,100,0,0,0,0,0,0,0,28,16245,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Remove aura'),
(2131601,9,2,0,0,0,100,0,0,0,0,0,0,0,53,2,7465100,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - start wp'),
(2131601,9,3,0,0,0,100,0,12000,12000,0,0,0,0,86,33346,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Cross cast'),
(2131601,9,4,0,0,0,100,0,3000,3000,0,0,0,0,86,36656,0,19,20683,15,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Cross cast'),
(2131601,9,5,0,0,0,100,0,0,0,0,0,0,0,11,36658,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Cast Transform'),
(2131601,9,6,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Deathforged Infernal - Action list - Set fly On');


-- Morgroron
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (75407); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21500) AND `source_type` = 0 AND `id` IN (3,4,5,6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2150001) AND `source_type` = 9;

-- UPDATE `waypoint_data` SET `action` = 1138 WHERE `id` in (754070) and `point` IN (10); -- 1138
UPDATE `waypoint_data` SET `action` = 1137 WHERE `id` in (754070) and `point` IN (3,6,9); -- 1137

DELETE FROM `waypoint_scripts` where id IN (1137) and `delay` IN (1) AND `command` = 1;;
DELETE FROM `waypoint_scripts` where id IN (1138) and `delay` IN (2) AND `command` = 1;
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(1137,1,1,1,0,0,0,0,0,0,700),
(1138,2,1,1,0,0,0,0,0,0,702);

DELETE FROM `creature_text` where CreatureID IN (21500) and GroupID IN (0,1);


-- Makazradon
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (84491); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21501) AND `source_type` = 0 AND `id` IN (3,4,5,6,7,8,9,10,11,12,13);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2150101) AND `source_type` = 9;

UPDATE `waypoint_data` SET `action` = 1135 WHERE `id` in (844910) and `point` IN (3,6,10,13,14,16,19,22,28,31); -- 1135

DELETE FROM `creature_text` where CreatureID IN (21501) and GroupID IN (0,1);


-- Prophetess Cavrylin
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20683) AND `source_type` = 0 AND `id` IN (2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2068301,2068302) AND `source_type` = 9;

DELETE FROM `creature_text` where CreatureID IN (20683) and GroupID = 0;


-- Shadow Council Warlock
DELETE FROM `waypoint_data` where id IN (746010);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(746010,1,-3438.26,2988.15,171.462,NULL,0,0,0,100,0),
(746010,2,-3437.38,2950.23,171.24,NULL,0,0,0,100,0);


-- Terrormaster
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (21314); -- 0 -- Set DONT_OVERRIDE_SAI_ENTRY

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-74622,-74623,-74624,-74625,-74630) AND `source_type` = 0 AND `id` IN (1000);

DELETE FROM `creature_text` where CreatureID IN (21314) and GroupID = 0;
