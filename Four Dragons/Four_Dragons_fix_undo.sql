/*
undo
-- Fix the Four Dragons for the "To Rule the Skies" quest 7-7-26
- There should be dragons flying around and despawn or hide when gameobject (egg) used. 
 - New Creature GUID: 300256,300257,300258,300259
*/


-- Apexis Shard 01
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (27900,27901,27902,27903,28119,28120,28122,28123,28052,28055,28056,28057,28025,28026,28027,28028); -- 180


-- Apexis Shard 02 
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (27904,27905,27906,27907,28116,28117,28118,28121,28050,28051,28053,28054,28022,28023,28024,28029); -- 180


-- Dragon Egg Aura
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (27648,27916,27969,28048); -- 180


-- Obsidia's Egg 185932
DELETE FROM `event_scripts` where `id` IN (15005);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15005,0,10,23282,300000,0,2424.98,6933.42,409.55,1.43117),  -- 
(15005,1,10,23364,100000,0,2426.95,7001.48,367.382,0);

DELETE FROM `spawn_group` where `groupId` IN (42306);

DELETE FROM `spawn_group_template` where `groupId` IN (42306);

UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (27915); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185932) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185932,1,0,1,62,0,100,0,8685,0,0,0,0,0,134,41036,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Obsidia'),
(185932,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185932,1,2,0,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected - Set Loot State');


-- Rivendark's Egg 185936
DELETE FROM `event_scripts` where `id` IN (15004);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15004,0,10,23061,300000,0,2060.6,7418.53,391.098,0);

DELETE FROM `spawn_group` where `groupId` IN (42307);

DELETE FROM `spawn_group_template` where `groupId` IN (42307);

UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (27645); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185936) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185936,1,0,1,62,0,100,0,8689,0,0,0,0,0,134,41045,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Rivendark'),
(185936,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185936,1,2,0,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected - Set Loot State');


-- Furywing's Egg 185937
DELETE FROM `event_scripts` where `id` IN (15003);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15003,0,10,23261,300000,0,3845.31,5220.04,295.412,0);

DELETE FROM `spawn_group` where `groupId` IN (42308);

DELETE FROM `spawn_group_template` where `groupId` IN (42308);

UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (27967); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185937) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185937,1,0,1,62,0,100,0,8690,0,0,0,0,0,134,41049,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Furywing'),
(185937,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185937,1,2,0,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected - Set Loot State');


-- Insidion's Egg 185938
DELETE FROM `event_scripts` where `id` IN (15002);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15002,0,10,23281,300000,0,4176.5,5452.21,291.923,0);

DELETE FROM `spawn_group` where `groupId` IN (42309);

DELETE FROM `spawn_group_template` where `groupId` IN (42309);

UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `guid` in (28045); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185938) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185938,1,0,1,62,0,100,0,8691,0,0,0,0,0,134,41051,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Insidion'),
(185938,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185938,1,2,0,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected - Set Loot State');


-- Black Dragon Whelpling
DELETE FROM `smart_scripts` WHERE `entryorguid` in (23364) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23364,0,0,1,11,0,100,512,0,0,0,0,0,0,11,15750,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Spawn - Cast Rookery Whelp Spawn-in Spell'),
(23364,0,1,2,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Spawn - Say'),
(23364,0,2,3,61,0,100,512,0,0,0,0,0,0,18,33536,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Spawn - Set Unit Flags'),
(23364,0,3,4,61,0,100,512,0,0,0,0,0,0,70,300,0,0,0,0,0,14,27915,185932,0,0,0,0,0,0,'Black Dragon Whelpling - On Spawn - Despawn Obsidia\'s Egg'),
(23364,0,4,0,61,0,100,512,0,0,0,0,0,0,53,1,23364,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Spawn - Start WP'),
(23364,0,5,6,40,0,100,512,2,23364,0,0,0,0,45,1,1,0,0,0,0,19,23282,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Reached WP2 - Set Data on Obsidia'),
(23364,0,6,0,61,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - Reached WP2 - Despawn');

DELETE FROM `waypoints` where entry = 23364;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(23364,1,2425.25,6994.86,368.085,NULL,0,'Black Dragon Whelpling'),
(23364,2,2424.88,6998.75,367.849,NULL,0,'Black Dragon Whelpling');


-- Obsidia 23282
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (23282); -- 0

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23282);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23282,0,0,1,0,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300256);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300256) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23282) AND `source_type` = 0 AND `id` IN (5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2328200,2328201,2328202,2328203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23282,0,5,0,11,0,100,512,0,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Spawn - Set Unit Flags'),
(23282,0,6,7,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,21,100,0,0,0,0,0,0,0,'Obsidia - On Data Set - Say'),
(23282,0,7,0,61,0,100,512,0,0,0,0,0,0,53,2,23282,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set - Start WP'),
(23282,0,8,9,40,0,100,512,1,23282,0,0,0,0,94,280,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reached WP1 - Set Dynamic Flags'),
(23282,0,9,10,61,0,100,512,0,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reached WP1 - Set Unit Flags'),
(23282,0,10,11,61,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reached WP1 - Set Home Position'),
(23282,0,11,0,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reached WP1 - Set Aggresive');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23282);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23282,0,0,'I believe that I shall feast upon both $r and ogre flesh tonight.',14,0,100,0,0,7274,21718,0,'Obsidia');

DELETE FROM `waypoints` where entry = 23282;
(23282,1,2428.08,6980.77,369.768,NULL,0,'Obsidia');

DELETE FROM `waypoint_data` WHERE `id` IN (232820,232821,232822);


-- Rivendark 23061
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (23061); -- 0

DELETE FROM `creature` WHERE `guid` IN (300257);

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23061);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23061,1,1,1,0,0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300257) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23061) AND `source_type` = 0 AND `id` IN (6,7,8,9,10,11,12,13,14,15,16,17);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2306100,2306101,2306102,2306103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23061,0,6,0,11,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,2064.69,7372.69,371.159,0,'Rivendark - On Respawn - Move To Position (No Repeat) (Normal Dungeon)');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23061);

DELETE FROM `waypoint_data` WHERE `id` IN (230610,230611,230612);


-- Furywing 23261
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (23261); -- 0

DELETE FROM `creature` WHERE `guid` IN (300258);

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23261);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23261,1,1,1,0,0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300258) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23261) AND `source_type` = 0 AND `id` IN (6,7,8,9,10,11,12,13,14,15,16,17);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2326100,2326101,2326102,2326103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23261,0,6,0,11,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,3891.27,5227.05,270.094,0,'Furywing - On Respawn - Move To Position (Phase 1) (No Repeat)');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23261);

DELETE FROM `waypoint_data` WHERE `id` IN (232610,232611,232612);


-- Insidion 23281
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (23281); -- 0

DELETE FROM `creature` WHERE `guid` IN (300259);

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23281);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23281,1,1,1,0,0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300259) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23281) AND `source_type` = 0 AND `id` IN (5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2328100,2328101,2328102,2328103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23281,0,5,0,11,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,4143.16,5441.75,274.503,0,'Insidion - On Respawn - Move To Position (Phase 1) (No Repeat)');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23281);

DELETE FROM `waypoint_data` WHERE `id` IN (232810,232811,232812);
