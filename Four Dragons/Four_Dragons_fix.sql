/*
-- Fix the Four Dragons for the "To Rule the Skies" quest 7-7-26
- There should be dragons flying around and despawn or hide when gameobject (egg) used. 
 - New Creature GUID: 300256,300257,300258,300259
 - Respawning Gameobjects is a joke the negative spawntime ranges from not working to spotty I go it to work in the Ogrila update but not here.  Apexis shards have a one year respawn timer.  
 - Waypoint movement and SMARTAI for flying creature is also a joke since the smooth transistion update happened.  There are so many work arounds on this. 
 - Spawn Group: 42306,42307,42308,42309 
*/


-- Apexis Shard 01
UPDATE `gameobject` SET `spawntimesecs` = 31536000 WHERE `guid` in (27900,27901,27902,27903,28119,28120,28122,28123,28052,28055,28056,28057,28025,28026,28027,28028); -- 180

-- Apexis Shard 02 
UPDATE `gameobject` SET `spawntimesecs` = 31536000 WHERE `guid` in (27904,27905,27906,27907,28116,28117,28118,28121,28050,28051,28053,28054,28022,28023,28024,28029); -- 180


-- Dragon Egg Aura
UPDATE `gameobject` SET `spawntimesecs` = 190 WHERE `guid` in (27648,27916,27969,28048); -- 180


-- Obsidia's Egg 185932
DELETE FROM `event_scripts` where `id` IN (15005);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15005,0,10,23282,720000,0,2424.98,6933.42,409.55,1.43117),
(15005,0,10,23364,10000,0,2426.95,7001.48,367.382,0);

DELETE FROM `spawn_group` where `groupId` IN (42306);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42306,1,28116),
(42306,1,28117),
(42306,1,28118),
(42306,1,28119),
(42306,1,28120),
(42306,1,28121),
(42306,1,28122),
(42306,1,28123);

DELETE FROM `spawn_group_template` where `groupId` IN (42306);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42306,'Apexis Shard 1',4);

UPDATE `gameobject` SET `spawntimesecs` = 190 WHERE `guid` in (27915); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185932) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185932,1,0,1,62,0,100,0,8685,0,0,0,0,0,134,41036,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Obsidia'),
(185932,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected (Linked) - Close Gossip'),
(185932,1,2,3,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected (Linked) - Set Loot State'),
(185932,1,3,4,61,0,100,0,0,0,0,0,0,0,41,300,0,0,0,0,0,15,185935,5,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn Dragon Egg Aura'),
(185932,1,4,0,61,0,100,0,0,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn');
-- (185932,1,5,0,11,0,100,0,0,0,0,0,0,0,80,18593200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia\'s Egg  - On Respawn - Run Script'),


-- Rivendark's Egg 185936
DELETE FROM `event_scripts` where `id` IN (15004);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15004,0,10,23061,720000,0,2069.21,7445.97,406.447,4.69494),
(15004,0,10,23364,10000,0,2064.73,7372.58,370.888,4.29351);

DELETE FROM `spawn_group` where `groupId` IN (42307);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42307,1,27900),
(42307,1,27901),
(42307,1,27902),
(42307,1,27903),
(42307,1,27904),
(42307,1,27905),
(42307,1,27906),
(42307,1,27907);

DELETE FROM `spawn_group_template` where `groupId` IN (42307);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42307,'Apexis Shard 2',4);

UPDATE `gameobject` SET `spawntimesecs` = 190 WHERE `guid` in (27645); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185936) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185936,1,0,1,62,0,100,0,8689,0,0,0,0,0,134,41045,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Rivendark'),
(185936,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected (Linked) - Close Gossip'),
(185936,1,2,3,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected (Linked) - Set Loot State'),
(185936,1,3,4,61,0,100,0,0,0,0,0,0,0,41,300,0,0,0,0,0,15,185935,5,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn Dragon Egg Aura'),
(185936,1,4,0,61,0,100,0,0,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn');
-- (185936,1,5,0,61,0,100,0,0,0,0,0,0,0,57,32569,35,0,0,0,0,7,0,0,0,0,0,0,0,0,'Rivendark\'s Egg - On Gossip Select (Linked) - Remove 35x Apexis Shards from Invoker'),


-- Furywing's Egg 185937
DELETE FROM `event_scripts` where `id` IN (15003);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15003,0,10,23261,720000,0,3824.14,5245.13,334.098,6.02139),
(15003,0,10,23364,10000,0,3891.43,5227.03,269.928,0.20944);

DELETE FROM `spawn_group` where `groupId` IN (42308);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42308,1,28022),
(42308,1,28023),
(42308,1,28024),
(42308,1,28025),
(42308,1,28026),
(42308,1,28027),
(42308,1,28028),
(42308,1,28029);

DELETE FROM `spawn_group_template` where `groupId` IN (42308);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42308,'Apexis Shard 3',4);

UPDATE `gameobject` SET `spawntimesecs` = 190 WHERE `guid` in (27967); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185937) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185937,1,0,1,62,0,100,0,8690,0,0,0,0,0,134,41049,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Furywing'),
(185937,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected (Linked) - Close Gossip'),
(185937,1,2,3,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected (Linked) - Set Loot State'),
(185937,1,3,4,61,0,100,0,0,0,0,0,0,0,41,300,0,0,0,0,0,15,185935,5,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn Dragon Egg Aura'),
(185937,1,4,0,61,0,100,0,0,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn');
-- (185937,1,5,0,61,0,100,0,0,0,0,0,0,0,57,32569,35,0,0,0,0,7,0,0,0,0,0,0,0,0,'Furywing\'s Egg - On Gossip Select (Linked) - Remove 35x Apexis Shards from Invoker'),


-- Insidion's Egg 185938
DELETE FROM `event_scripts` where `id` IN (15002);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15002,0,10,23281,720000,0,4220.44,5412.87,327.126,2.77507),
(15002,0,10,23364,10000,0,4143.13,5441.65,274.345,2.37365);

DELETE FROM `spawn_group` where `groupId` IN (42309);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42309,1,28050),
(42309,1,28051),
(42309,1,28052),
(42309,1,28053),
(42309,1,28054),
(42309,1,28055),
(42309,1,28056),
(42309,1,28057);

DELETE FROM `spawn_group_template` where `groupId` IN (42309);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42309,'Apexis Shard 4',4);

UPDATE `gameobject` SET `spawntimesecs` = 190 WHERE `guid` in (28045); -- 180

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185938) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185938,1,0,1,62,0,100,0,8691,0,0,0,0,0,134,41051,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Insidion'),
(185938,1,1,2,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected (Linked) - Close Gossip'),
(185938,1,2,3,61,0,100,0,0,0,0,0,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected (Linked) - Set Loot State'),
(185938,1,3,4,61,0,100,0,0,0,0,0,0,0,41,300,0,0,0,0,0,15,185935,5,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn Dragon Egg Aura'),
(185938,1,4,0,61,0,100,0,0,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Option 0 Selected (Linked) - Despawn');
-- (185938,1,5,0,61,0,100,0,0,0,0,0,0,0,57,32569,35,0,0,0,0,7,0,0,0,0,0,0,0,0,'Insidion\'s Egg - On Gossip Select (Linked) - Remove 35x Apexis Shards from Invoker'),


-- Black Dragon Whelpling
DELETE FROM `smart_scripts` WHERE `entryorguid` in (23364) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23364,0,0,1,54,0,100,512,0,0,0,0,0,0,11,15750,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Just Summoned - Cast Rookery Whelp Spawn-in Spell'),
(23364,0,1,2,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Respawn (Linked) - Say Line 0'),
(23364,0,2,3,61,0,100,512,0,0,0,0,0,0,18,33536,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Respawn (Linked) - Set Unit Flags'),
(23364,0,3,0,61,0,100,512,0,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - On Respawn (Linked) - Random Movement');

DELETE FROM `waypoints` where entry = 23364;


-- Obsidia 23282
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` in (23282); -- 0

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23282);

DELETE FROM `creature` WHERE `guid` IN (300256);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300256,23282,530,0,0,1,1,0,2011.6400146484375,7213.33984375,497.2170104980469,0,720,0,0,0,0,0,0,0,0,'',0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300256) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23282) AND `source_type` = 0 AND `id` IN (5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2328200,2328201,2328202,2328203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300256,0,1000,1001,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn - Set Active'),
(-300256,0,1001,1002,61,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Set Visibility On'),
(-300256,0,1002,1003,61,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Set Fly On'),
(-300256,0,1003,1004,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Set Hover On'),
(-300256,0,1004,1005,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Set React State \'Aggressive\''),
(-300256,0,1005,1006,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Set Flying Tier Animation'),
(-300256,0,1006,1007,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Set Phase 3'),
(-300256,0,1007,1008,61,0,100,512,0,0,0,0,0,0,232,232820,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Respawn (Linked) - Start Waypoint'),
(-300256,0,1008,0,61,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Respawn (Linked) - Set Flags \'Not Attackable\''),
(-300256,0,1009,1010,38,0,100,512,1,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set 1 0 - Set Visibility Off'),
(-300256,0,1010,1011,61,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set 1 0 (Linked) - Set React State \'Passive\''),
(-300256,0,1011,0,61,0,100,512,0,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set 1 0 (Linked) - Set Phase 4'),
(-300256,0,1012,1013,38,0,100,512,1,1,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set 1 1 - Set Visibility On'),
(-300256,0,1013,1014,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set 1 1 (Linked) - Set React State \'Aggressive\''),
(-300256,0,1014,0,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Data Set 1 1 (Linked) - Set Phase 3'),
(-300256,0,1015,0,108,0,100,512,45,232820,0,0,0,0,80,2328203,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Waypoint 45 Reached - Run Script'),
(-300256,0,1016,1013,1,8,100,0,720000,720000,720000,720000,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - OOC (Phase 4) - Set Visibility On'), -- Safety catch
(-300256,0,1017,1018,25,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reset - Set Fly On'),
(-300256,0,1018,1019,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reset (Linked) - Set Hover On'),
(-300256,0,1019,0,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Reset (Linked) - Set Flying Tier Animation'),

(23282,0,5,0,54,0,100,512,0,0,0,0,0,0,80,2328200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Just Summoned - Run Script'),
(23282,0,6,0,108,0,100,512,2,232821,0,0,0,0,80,2328201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Waypoint 2 Reached - Run Script'),
(23282,0,7,0,108,0,100,512,1,232822,0,0,0,0,80,2328202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Waypoint 1 Reached - Run Script'), -- this is needed cause set home posistion does not work on waypoint_data waypoints
-- (23282,0,8,0,61,0,100,512,0,0,0,0,0,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Waypoint 1 Reached (Linked) - Set Ground Tier Animation'), -- all videos show it as fly half way in the ground while fighting.
(23282,0,8,9,4,1,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Aggro (Phase 1) - Set Phase 2'),
(23282,0,9,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Aggro (Phase 1) (Linked) - Say Line 0'), -- For some reason it says it twice unless you change phase
(23282,0,10,11,1,3,100,0,45000,45000,30000,30000,0,0,45,1,1,0,0,0,0,10,300256,23282,0,0,0,0,0,0,'Obsidia - OOC (Phase 1,2) - Set Data 1 1 on \'Obsidia\''),
(23282,0,11,0,61,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - OOC (Phase 1) (Linked) - Despawn'),
(23282,0,12,0,6,3,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300256,23282,0,0,0,0,0,0,'Obsidia - On Death (Phase 1,2) - Set Data 1 1 on \'Obsidia\''),
(23282,0,13,14,103,0,100,0,1,185931,1,10,100,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Near Unit - Set Ground Tier Animation'), -- Damit this looks so much better than it being half stuck in the ground. BLizz sucks.  
(23282,0,14,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Near Unit (Linked) - Set Phase 1'),
(23282,0,15,0,1,1,100,0,0,0,20000,20000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.50767,'Obsidia - OOC (Phase 1) - Set Orientation'),
(23282,0,16,0,0,2,100,512,10000,10000,10000,10000,0,0,45,1,1,0,0,0,0,10,300256,23282,0,0,0,0,0,0,'Obsidia - IC (Phase 2) - Set Data 1 1 on \'Obsidia\''), -- Safety catch

(2328200,9,0,0,0,0,100,512,0,0,0,0,0,0,131,42306,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Spawn SpawnGroup'),
(2328200,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Fly On'),
(2328200,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Hover On'),
(2328200,9,3,0,0,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set React State \'Passive\''),
(2328200,9,4,0,0,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Set Flags \'Not Attackable\''),
(2328200,9,5,0,0,0,100,512,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300256,23282,0,0,0,0,0,0,'Obsidia  - On Script - Set Data 1 0 on \'Obsidia\''),
(2328200,9,6,0,0,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Set Visibility On'),
(2328200,9,7,0,0,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Phase 1'),
(2328200,9,8,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Flying Tier Animation'),
(2328200,9,9,0,0,0,100,512,0,0,0,0,0,0,136,6,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Set Flight Speed'),
(2328200,9,10,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Stop Waypoint'),
(2328200,9,11,0,0,0,100,512,2000,2000,0,0,0,0,232,232821,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Start Waypoint'),

(2328201,9,0,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Fly Off'),
(2328201,9,1,0,0,0,100,512,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Hover Off'),
(2328201,9,2,0,0,0,100,512,0,0,0,0,0,0,132,42306,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Despawn SpawnGroup'),
(2328201,9,3,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185931,50,0,0,0,0,0,0,'Obsidia - On Script - Despawn all Dragonkin Nest 03'),
(2328201,9,4,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185930,50,0,0,0,0,0,0,'Obsidia - On Script - Despawn all Dragonkin Nest 02'),
(2328201,9,5,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185929,50,0,0,0,0,0,0,'Obsidia - On Script - Despawn all Dragonkin Nest 01'),
(2328201,9,6,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Stop Waypoint'),
(2328201,9,7,0,0,0,100,512,10,10,0,0,0,0,232,232822,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Start Waypoint'),

(2328202,9,0,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Stop Waypoint'),
(2328202,9,1,0,0,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set React State \'Aggressive\''),
(2328202,9,2,0,0,0,100,512,0,0,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia  - On Script - Remove Flags \'Not Attackable\''),
(2328202,9,3,0,0,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Home Position'),
(2328202,9,4,0,0,0,100,512,1000,1000,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Obsidia - On Script - Attack Nearest Player'),

(2328203,9,0,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Fly On'),
(2328203,9,1,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Hover On'),
(2328203,9,2,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Set Flying Tier Animation'),
(2328203,9,3,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Stop Waypoint'),
(2328203,9,4,0,0,0,100,512,1,1,0,0,0,0,232,232820,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidia - On Script - Start Waypoint');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23282);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23282,0,0,'Get away from my clutch!!!',14,0,100,0,0,7274,21696,1,''),
(23282,0,1,'I know you by your stench, little $n.  Here, in my perch, is where your bones shall finally rest.',14,0,100,0,0,7274,21706,1,''),
(23282,0,2,'I tire of interruptions from the insignificant.  Your time has come, $n!',14,0,100,0,0,7274,21710,1,''),
(23282,0,3,'The Skyguard shall pay for your temerity, $n!',14,0,100,0,0,7274,21714,1,''),
(23282,0,4,'I believe that I shall feast upon both $r and ogre flesh tonight.',14,0,100,0,0,7274,21718,1,''),
(23282,0,5,'Little $r, you will now come to appreciate my wrath!',14,0,100,0,0,7274,21720,1,''),
(23282,0,6,'You have dared to defile my perch and must now be cleansed in fire!',14,0,100,0,0,7274,21726,1,''),
(23282,0,7,'What\'s this?!  $n and $g his : her; friends come to play?',14,0,100,0,0,7274,21733,1,'');

DELETE FROM `waypoints` where entry = 23282;

DELETE FROM `waypoint_data` WHERE `id` IN (232820,232821,232822);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(232820,1,2060.91,7215.12,497.217,NULL,0,0,1,1,0,100,0),
(232820,2,2108.56,7202.19,497.217,NULL,0,0,1,1,0,100,0),
(232820,3,2155.72,7186.68,497.217,NULL,0,0,1,1,0,100,0),
(232820,4,2203.21,7175.34,497.217,NULL,0,0,1,1,0,100,0),
(232820,5,2251.97,7163.65,497.217,NULL,0,0,1,1,0,100,0),
(232820,6,2296.35,7152.57,497.217,NULL,0,0,1,1,0,100,0),
(232820,7,2344.65,7140.99,497.217,NULL,0,0,1,1,0,100,0),
(232820,8,2390.76,7121.33,497.217,NULL,0,0,1,1,0,100,0),
(232820,9,2434.69,7100.82,497.217,NULL,0,0,1,1,0,100,0),
(232820,10,2478.16,7077.78,497.217,NULL,0,0,1,1,0,100,0),
(232820,11,2526.49,7064.32,497.217,NULL,0,0,1,1,0,100,0),
(232820,12,2575.9,7061.91,497.217,NULL,0,0,1,1,0,100,0),
(232820,13,2622.53,7072.71,497.217,NULL,0,0,1,1,0,100,0),
(232820,14,2670.9,7085.05,497.217,NULL,0,0,1,1,0,100,0),
(232820,15,2714.95,7108.4,497.217,NULL,0,0,1,1,0,100,0),
(232820,16,2752.93,7140.26,497.217,NULL,0,0,1,1,0,100,0),
(232820,17,2774.98,7184.98,497.217,NULL,0,0,1,1,0,100,0),
(232820,18,2766.88,7233.41,497.217,NULL,0,0,1,1,0,100,0),
(232820,19,2733.92,7269.04,497.217,NULL,0,0,1,1,0,100,0),
(232820,20,2688.75,7276.65,497.217,NULL,0,0,1,1,0,100,0),
(232820,21,2641.17,7259.36,497.217,NULL,0,0,1,1,0,100,0),
(232820,22,2596.13,7239.19,497.217,NULL,0,0,1,1,0,100,0),
(232820,23,2548.46,7226.16,497.217,NULL,0,0,1,1,0,100,0),
(232820,24,2501.6,7211.38,497.217,NULL,0,0,1,1,0,100,0),
(232820,25,2453.11,7199.98,497.217,NULL,0,0,1,1,0,100,0),
(232820,26,2405.11,7192.81,497.217,NULL,0,0,1,1,0,100,0),
(232820,27,2359.49,7177.67,497.217,NULL,0,0,1,1,0,100,0),
(232820,28,2311.12,7166.88,497.217,NULL,0,0,1,1,0,100,0),
(232820,29,2263.86,7179.79,497.217,NULL,0,0,1,1,0,100,0),
(232820,30,2226.36,7212.38,497.217,NULL,0,0,1,1,0,100,0),
(232820,31,2194.03,7250.32,497.217,NULL,0,0,1,1,0,100,0),
(232820,32,2156.12,7281.98,497.217,NULL,0,0,1,1,0,100,0),
(232820,33,2110.34,7290.64,497.217,NULL,0,0,1,1,0,100,0),
(232820,34,2062.15,7291.46,497.217,NULL,0,0,1,1,0,100,0),
(232820,35,2015.35,7307.77,497.217,NULL,0,0,1,1,0,100,0),
(232820,36,1968.22,7323.25,497.217,NULL,0,0,1,1,0,100,0),
(232820,37,1920.12,7326.57,497.217,NULL,0,0,1,1,0,100,0),
(232820,38,1872.02,7314.75,497.217,NULL,0,0,1,1,0,100,0),
(232820,39,1835.11,7281.13,497.217,NULL,0,0,1,1,0,100,0),
(232820,40,1814.26,7236.68,497.217,NULL,0,0,1,1,0,100,0),
(232820,41,1833.94,7191.12,497.217,NULL,0,0,1,1,0,100,0),
(232820,42,1874.71,7163.79,497.217,NULL,0,0,1,1,0,100,0),
(232820,43,1923.19,7167.38,497.217,NULL,0,0,1,1,0,100,0),
(232820,44,1967.37,7190.95,497.217,NULL,0,0,1,1,0,100,0),
(232820,45,2011.64,7213.34,497.217,NULL,0,0,1,1,0,100,0),

(232821,1,2424.98,6933.42,409.55,NULL,0,0,1,1,0,100,0),
(232821,2,2425.13,6981.32,368.511,NULL,0,0,1,1,0,100,0),

(232822,1,2425.13,6981.32,368.511,NULL,0,1000,1,0,0,100,0);


-- Rivendark 23061
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` in (23061); -- 0

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23061);

DELETE FROM `creature` WHERE `guid` IN (300257);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300257,23061,530,0,0,1,1,0,2289.830078125,7195.0297851562500,456.3160095214844,0,720,0,0,0,0,0,0,0,0,'',0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300257) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23061) AND `source_type` = 0 AND `id` IN (6,7,8,9,10,11,12,13,14,15,16,17);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2306100,2306101,2306102,2306103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300257,0,1000,1001,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn - Set Active'),
(-300257,0,1001,1002,61,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Set Visibility On'),
(-300257,0,1002,1003,61,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Set Fly On'),
(-300257,0,1003,1004,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Set Hover On'),
(-300257,0,1004,1005,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Set React State \'Aggressive\''),
(-300257,0,1005,1006,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Set Flying Tier Animation'),
(-300257,0,1006,1007,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Set Phase 3'),
(-300257,0,1007,1008,61,0,100,512,0,0,0,0,0,0,232,230610,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Respawn (Linked) - Start Waypoint'),
(-300257,0,1008,0,61,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Respawn (Linked) - Set Flags \'Not Attackable\''),
(-300257,0,1009,1010,38,0,100,512,1,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Data Set 1 0 - Set Visibility Off'),
(-300257,0,1010,1011,61,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Data Set 1 0 (Linked) - Set React State \'Passive\''),
(-300257,0,1011,0,61,0,100,512,0,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Data Set 1 0 (Linked) - Set Phase 4'),
(-300257,0,1012,1013,38,0,100,512,1,1,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Data Set 1 1 - Set Visibility On'),
(-300257,0,1013,1014,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Data Set 1 1 (Linked) - Set React State \'Aggressive\''),
(-300257,0,1014,0,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Data Set 1 1 (Linked) - Set Phase 3'),
(-300257,0,1015,0,108,0,100,512,48,230610,0,0,0,0,80,2306103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Waypoint 48 Reached - Run Script'),
(-300257,0,1016,1013,1,8,100,0,720000,720000,720000,720000,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - OOC (Phase 4) - Set Visibility On'), -- Safety catch
(-300257,0,1017,1018,25,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Reset - Set Fly On'),
(-300257,0,1018,1019,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Reset (Linked) - Set Hover On'),
(-300257,0,1019,0,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Reset (Linked) - Set Flying Tier Animation'),

(23061,0,6,0,54,0,100,512,0,0,0,0,0,0,80,2306100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Just Summoned - Run Script'),
(23061,0,7,0,108,0,100,512,3,230611,0,0,0,0,80,2306101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Waypoint 3 Reached - Run Script'),
(23061,0,8,0,108,0,100,512,1,230612,0,0,0,0,80,2306102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Waypoint 1 Reached - Run Script'), -- this is needed cause set home posistion does not work on waypoint_data waypoints
-- (23061,0,9,0,61,0,100,512,0,0,0,0,0,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Waypoint 1 Reached (Linked) - Set Ground Tier Animation'), -- all videos show it as fly half way in the ground while fighting.
(23061,0,9,10,4,1,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Aggro (Phase 1) - Set Phase 2'),
(23061,0,10,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Aggro (Phase 1) (Linked) - Say Line 0'), -- For some reason it says it twice unless you change phase
(23061,0,11,12,1,3,100,0,45000,45000,30000,30000,0,0,45,1,1,0,0,0,0,10,300257,23061,0,0,0,0,0,0,'Rivendark - OOC (Phase 1,2) - Set Data 1 1 on \'Rivendark\''),
(23061,0,12,0,61,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - OOC (Phase 1) (Linked) - Despawn'),
(23061,0,13,0,6,3,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300257,23061,0,0,0,0,0,0,'Rivendark - On Death (Phase 1,2) - Set Data 1 1 on \'Rivendark\''),
(23061,0,14,15,103,0,100,0,1,185931,1,17,100,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Near Unit - Set Ground Tier Animation'),
(23061,0,15,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Near Unit (Linked) - Set Phase 1'),
(23061,0,16,0,1,1,100,0,0,0,20000,20000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.62962,'Rivendark - OOC (Phase 1) - Set Orientation'),
(23061,0,17,0,0,2,100,512,10000,10000,10000,10000,0,0,45,1,1,0,0,0,0,10,300257,23061,0,0,0,0,0,0,'Rivendark - IC (Phase 2) - Set Data 1 1 on \'Rivendark\''), -- Safety catch

(2306100,9,0,0,0,0,100,512,0,0,0,0,0,0,131,42307,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Spawn SpawnGroup'),
(2306100,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Fly On'),
(2306100,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Hover On'),
(2306100,9,3,0,0,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set React State \'Passive\''),
(2306100,9,4,0,0,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Set Flags \'Not Attackable\''),
(2306100,9,5,0,0,0,100,512,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300257,23061,0,0,0,0,0,0,'Rivendark  - On Script - Set Data 1 0 on \'Rivendark\''),
(2306100,9,6,0,0,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Set Visibility On'),
(2306100,9,7,0,0,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Phase 1'),
(2306100,9,8,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Set Flying Tier Animation'),
(2306100,9,9,0,0,0,100,512,0,0,0,0,0,0,136,6,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Set Flight Speed'),
(2306100,9,10,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Stop Waypoint'),
(2306100,9,11,0,0,0,100,512,1000,1000,0,0,0,0,232,230611,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Start Waypoint'),

(2306101,9,0,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Fly Off'),
(2306101,9,1,0,0,0,100,512,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Hover Off'),
(2306101,9,2,0,0,0,100,512,0,0,0,0,0,0,132,42307,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Despawn SpawnGroup'),
(2306101,9,3,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185931,50,0,0,0,0,0,0,'Rivendark - On Script - Despawn all Dragonkin Nest 03'),
(2306101,9,4,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185930,50,0,0,0,0,0,0,'Rivendark - On Script - Despawn all Dragonkin Nest 02'),
(2306101,9,5,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185929,50,0,0,0,0,0,0,'Rivendark - On Script - Despawn all Dragonkin Nest 01'),
(2306101,9,6,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Stop Waypoint'),
(2306101,9,7,0,0,0,100,512,10,10,0,0,0,0,232,230612,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Start Waypoint'),

(2306102,9,0,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Stop Waypoint'),
(2306102,9,1,0,0,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set React State \'Aggressive\''),
(2306102,9,2,0,0,0,100,512,0,0,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark  - On Script - Remove Flags \'Not Attackable\''),
(2306102,9,3,0,0,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Home Position'),
(2306102,9,4,0,0,0,100,512,1000,1000,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Rivendark - On Script - Attack Nearest Player'),

(2306103,9,0,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Fly On'),
(2306103,9,1,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Hover On'),
(2306103,9,2,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Set Flying Tier Animation'),
(2306103,9,3,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Stop Waypoint'),
(2306103,9,4,0,0,0,100,512,1,1,0,0,0,0,232,230610,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rivendark - On Script - Start Waypoint');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23061);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23061,0,0,'Get away from my clutch!!!',14,0,100,0,0,7274,21696,1,''),
(23061,0,1,'I know you by your stench, little $n.  Here, in my perch, is where your bones shall finally rest.',14,0,100,0,0,7274,21706,1,''),
(23061,0,2,'I tire of interruptions from the insignificant.  Your time has come, $n!',14,0,100,0,0,7274,21710,1,''),
(23061,0,3,'The Skyguard shall pay for your temerity, $n!',14,0,100,0,0,7274,21714,1,''),
(23061,0,4,'I believe that I shall feast upon both $r and ogre flesh tonight.',14,0,100,0,0,7274,21718,1,''),
(23061,0,5,'Little $r, you will now come to appreciate my wrath!',14,0,100,0,0,7274,21720,1,''),
(23061,0,6,'You have dared to defile my perch and must now be cleansed in fire!',14,0,100,0,0,7274,21726,1,''),
(23061,0,7,'What\'s this?!  $n and $g his : her; friends come to play?',14,0,100,0,0,7274,21733,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (230610,230611,230612);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(230610,1,2337.89,7189.83,456.316,NULL,0,0,1,1,0,100,0),
(230610,2,2386.93,7187.46,456.316,NULL,0,0,1,1,0,100,0),
(230610,3,2435.93,7188.45,456.316,NULL,0,0,1,1,0,100,0),
(230610,4,2478.51,7197.97,456.316,NULL,0,0,1,1,0,100,0),
(230610,5,2526.87,7207.8,456.316,NULL,0,0,1,1,0,100,0),
(230610,6,2573.82,7222.37,456.316,NULL,0,0,1,1,0,100,0),
(230610,7,2619.86,7240.87,456.316,NULL,0,0,1,1,0,100,0),
(230610,8,2664.41,7261.09,456.316,NULL,0,0,1,1,0,100,0),
(230610,9,2711.65,7272.88,456.316,NULL,0,0,1,1,0,100,0),
(230610,10,2758.45,7257.4,456.316,NULL,0,0,1,1,0,100,0),
(230610,11,2780.5,7213.08,456.316,NULL,0,0,1,1,0,100,0),
(230610,12,2774.11,7164.37,456.316,NULL,0,0,1,1,0,100,0),
(230610,13,2744.99,7125.34,456.316,NULL,0,0,1,1,0,100,0),
(230610,14,2707.23,7092.52,456.316,NULL,0,0,1,1,0,100,0),
(230610,15,2662.87,7071.4,456.316,NULL,0,0,1,1,0,100,0),
(230610,16,2614.2,7058.21,456.316,NULL,0,0,1,1,0,100,0),
(230610,17,2565.21,7055.04,456.316,NULL,0,0,1,1,0,100,0),
(230610,18,2517.21,7065.71,456.316,NULL,0,0,1,1,0,100,0),
(230610,19,2474.07,7089.08,456.316,NULL,0,0,1,1,0,100,0),
(230610,20,2427.14,7104.75,456.316,NULL,0,0,1,1,0,100,0),
(230610,21,2379.09,7117.87,456.316,NULL,0,0,1,1,0,100,0),
(230610,22,2330.58,7126.79,456.316,NULL,0,0,1,1,0,100,0),
(230610,23,2281.2,7132.03,456.316,NULL,0,0,1,1,0,100,0),
(230610,24,2232.04,7133.09,456.316,NULL,0,0,1,1,0,100,0),
(230610,25,2183.11,7133.6,456.316,NULL,0,0,1,1,0,100,0),
(230610,26,2134,7136.21,456.316,NULL,0,0,1,1,0,100,0),
(230610,27,2087.93,7153.8,456.316,NULL,0,0,1,1,0,100,0),
(230610,28,2054.12,7190.44,456.316,NULL,0,0,1,1,0,100,0),
(230610,29,2011.55,7215.84,456.316,NULL,0,0,1,1,0,100,0),
(230610,30,1963.17,7227.48,456.316,NULL,0,0,1,1,0,100,0),
(230610,31,1917.54,7208.64,456.316,NULL,0,0,1,1,0,100,0),
(230610,32,1871.09,7190.21,456.316,NULL,0,0,1,1,0,100,0),
(230610,33,1822.86,7181.09,456.316,NULL,0,0,1,1,0,100,0),
(230610,34,1773.85,7182.7,456.316,NULL,0,0,1,1,0,100,0),
(230610,35,1740.1,7217.58,456.316,NULL,0,0,1,1,0,100,0),
(230610,36,1733.91,7266.91,456.316,NULL,0,0,1,1,0,100,0),
(230610,37,1766.79,7300.08,456.316,NULL,0,0,1,1,0,100,0),
(230610,38,1814.62,7311.39,456.316,NULL,0,0,1,1,0,100,0),
(230610,39,1863.87,7315.84,456.316,NULL,0,0,1,1,0,100,0),
(230610,40,1912.88,7313.7,456.316,NULL,0,0,1,1,0,100,0),
(230610,41,1960.55,7303.18,456.316,NULL,0,0,1,1,0,100,0),
(230610,42,2007.86,7288.89,456.316,NULL,0,0,1,1,0,100,0),
(230610,43,2054.94,7271.1,456.316,NULL,0,0,1,1,0,100,0),
(230610,44,2100.89,7252.25,456.316,NULL,0,0,1,1,0,100,0),
(230610,45,2147.99,7235.72,456.316,NULL,0,0,1,1,0,100,0),
(230610,46,2194.88,7221.17,456.316,NULL,0,0,1,1,0,100,0),
(230610,47,2241.2,7205.49,456.316,NULL,0,0,1,1,0,100,0),
(230610,48,2289.83,7195.03,456.316,NULL,0,0,1,1,0,100,0),

(230611,1,2069.21,7445.97,406.447,NULL,0,0,1,1,0,100,0), -- 2069.21 7445.97 406.447
(230611,2,2069.1648,7414.0317,393.29507,NULL,0,0,1,1,0,100,0),
(230611,3,2068.69,7391.97,371.911,NULL,0,0,1,1,0,100,0), -- 2068.69,7391.97,371.911

(230612,1,2068.69,7391.97,371.911,NULL,0,1000,1,0,0,100,0);


-- Furywing 23261
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` in (23261); -- 0

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23261);

DELETE FROM `creature` WHERE `guid` IN (300258);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300258,23261,530,0,0,1,1,0,4045.9099121093750,4914.1899414062500,361.61199951171875,0,720,0,0,0,0,0,0,0,0,'',0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300258) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23261) AND `source_type` = 0 AND `id` IN (6,7,8,9,10,11,12,13,14,15,16,17);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2326100,2326101,2326102,2326103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300258,0,1000,1001,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn - Set Active'),
(-300258,0,1001,1002,61,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Set Visibility On'),
(-300258,0,1002,1003,61,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Set Fly On'),
(-300258,0,1003,1004,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Set Hover On'),
(-300258,0,1004,1005,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Set React State \'Aggressive\''),
(-300258,0,1005,1006,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Set Flying Tier Animation'),
(-300258,0,1006,1007,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Set Phase 3'),
(-300258,0,1007,1008,61,0,100,512,0,0,0,0,0,0,232,232610,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Respawn (Linked) - Start Waypoint'),
(-300258,0,1008,0,61,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Respawn (Linked) - Set Flags \'Not Attackable\''),
(-300258,0,1009,1010,38,0,100,512,1,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Data Set 1 0 - Set Visibility Off'),
(-300258,0,1010,1011,61,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Data Set 1 0 (Linked) - Set React State \'Passive\''),
(-300258,0,1011,0,61,0,100,512,0,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Data Set 1 0 (Linked) - Set Phase 4'),
(-300258,0,1012,1013,38,0,100,512,1,1,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Data Set 1 1 - Set Visibility On'),
(-300258,0,1013,1014,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Data Set 1 1 (Linked) - Set React State \'Aggressive\''),
(-300258,0,1014,0,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Data Set 1 1 (Linked) - Set Phase 3'),
(-300258,0,1015,0,108,0,100,512,53,232610,0,0,0,0,80,2326103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Waypoint 53 Reached - Run Script'),
(-300258,0,1016,1013,1,8,100,0,720000,720000,720000,720000,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - OOC (Phase 4) - Set Visibility On'), -- Safety catch
(-300258,0,1017,1018,25,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Reset - Set Fly On'),
(-300258,0,1018,1019,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Reset (Linked) - Set Hover On'),
(-300258,0,1019,0,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Reset (Linked) - Set Flying Tier Animation'),

(23261,0,6,0,54,0,100,512,0,0,0,0,0,0,80,2326100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Just Summoned - Run Script'),
(23261,0,7,0,108,0,100,512,2,232611,0,0,0,0,80,2326101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Waypoint 2 Reached - Run Script'),
(23261,0,8,0,108,0,100,512,1,232612,0,0,0,0,80,2326102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Waypoint 1 Reached - Run Script'), -- this is needed cause set home posistion does not work on waypoint_data waypoints
-- (23261,0,9,0,61,0,100,512,0,0,0,0,0,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Waypoint 1 Reached (Linked) - Set Ground Tier Animation'), -- all videos show it as fly half way in the ground while fighting.
(23261,0,9,10,4,1,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Aggro (Phase 1) - Set Phase 2'),
(23261,0,10,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Aggro (Phase 1) (Linked) - Say Line 0'), -- For some reason it says it twice unless you change phase
(23261,0,11,12,1,3,100,0,45000,45000,30000,30000,0,0,45,1,1,0,0,0,0,10,300258,23261,0,0,0,0,0,0,'Furywing - OOC (Phase 1,2) - Set Data 1 1 on \'Furywing\''),
(23261,0,12,0,61,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - OOC (Phase 1) (Linked) - Despawn'),
(23261,0,13,0,6,3,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300258,23261,0,0,0,0,0,0,'Furywing - On Death (Phase 1,2) - Set Data 1 1 on \'Furywing\''),
(23261,0,14,15,103,0,100,0,1,185931,1,10,100,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Near Unit - Set Ground Tier Animation'), -- Damit this looks so much better than it being half stuck in the ground. BLizz sucks.  
(23261,0,15,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Near Unit (Linked) - Set Phase 1'),
(23261,0,16,0,1,1,100,0,0,0,20000,20000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.73704,'Furywing - OOC (Phase 1) - Set Orientation'),
(23261,0,17,0,0,2,100,512,10000,10000,10000,10000,0,0,45,1,1,0,0,0,0,10,300258,23261,0,0,0,0,0,0,'Furywing - IC (Phase 2) - Set Data 1 1 on \'Furywing\''), -- Safety catch

(2326100,9,0,0,0,0,100,512,0,0,0,0,0,0,131,42308,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Spawn SpawnGroup'),
(2326100,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Fly On'),
(2326100,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Hover On'),
(2326100,9,3,0,0,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set React State \'Passive\''),
(2326100,9,4,0,0,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Set Flags \'Not Attackable\''),
(2326100,9,5,0,0,0,100,512,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300258,23261,0,0,0,0,0,0,'Furywing  - On Script - Set Data 1 0 on \'Furywing\''),
(2326100,9,6,0,0,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Set Visibility On'),
(2326100,9,7,0,0,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Phase 1'),
(2326100,9,8,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Flying Tier Animation'),
(2326100,9,9,0,0,0,100,512,0,0,0,0,0,0,136,6,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Set Flight Speed'),
(2326100,9,10,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Stop Waypoint'),
(2326100,9,11,0,0,0,100,512,2000,2000,0,0,0,0,232,232611,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Start Waypoint'),

(2326101,9,0,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Fly Off'),
(2326101,9,1,0,0,0,100,512,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Hover Off'),
(2326101,9,2,0,0,0,100,512,0,0,0,0,0,0,132,42308,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Despawn SpawnGroup'),
(2326101,9,3,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185931,50,0,0,0,0,0,0,'Furywing - On Script - Despawn all Dragonkin Nest 03'),
(2326101,9,4,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185930,50,0,0,0,0,0,0,'Furywing - On Script - Despawn all Dragonkin Nest 02'),
(2326101,9,5,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185929,50,0,0,0,0,0,0,'Furywing - On Script - Despawn all Dragonkin Nest 01'),
(2326101,9,6,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Stop Waypoint'),
(2326101,9,7,0,0,0,100,512,10,10,0,0,0,0,232,232612,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Start Waypoint'),

(2326102,9,0,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Stop Waypoint'),
(2326102,9,1,0,0,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set React State \'Aggressive\''),
(2326102,9,2,0,0,0,100,512,0,0,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing  - On Script - Remove Flags \'Not Attackable\''),
(2326102,9,3,0,0,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Home Position'),
(2326102,9,4,0,0,0,100,512,1000,1000,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Furywing - On Script - Attack Nearest Player'),

(2326103,9,0,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Fly On'),
(2326103,9,1,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Hover On'),
(2326103,9,2,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Set Flying Tier Animation'),
(2326103,9,3,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Stop Waypoint'),
(2326103,9,4,0,0,0,100,512,1,1,0,0,0,0,232,232610,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Furywing - On Script - Start Waypoint');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23261);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23261,0,0,'Get away from my clutch!!!',14,0,100,0,0,7274,21696,1,''),
(23261,0,1,'I know you by your stench, little $n.  Here, in my perch, is where your bones shall finally rest.',14,0,100,0,0,7274,21706,1,''),
(23261,0,2,'I tire of interruptions from the insignificant.  Your time has come, $n!',14,0,100,0,0,7274,21710,1,''),
(23261,0,3,'The Skyguard shall pay for your temerity, $n!',14,0,100,0,0,7274,21714,1,''),
(23261,0,4,'I believe that I shall feast upon both $r and ogre flesh tonight.',14,0,100,0,0,7274,21718,1,''),
(23261,0,5,'Little $r, you will now come to appreciate my wrath!',14,0,100,0,0,7274,21720,1,''),
(23261,0,6,'You have dared to defile my perch and must now be cleansed in fire!',14,0,100,0,0,7274,21726,1,''),
(23261,0,7,'What\'s this?!  $n and $g his : her; friends come to play?',14,0,100,0,0,7274,21733,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (232610,232611,232612);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(232610,1,4057.03,4962.77,361.612,NULL,0,0,1,1,0,100,0),
(232610,2,4053.2,5011.8,361.612,NULL,0,0,1,1,0,100,0),
(232610,3,4052.46,5060.95,361.612,NULL,0,0,1,1,0,100,0),
(232610,4,4053.65,5109.91,361.612,NULL,0,0,1,1,0,100,0),
(232610,5,4053.26,5158.96,361.612,NULL,0,0,1,1,0,100,0),
(232610,6,4049.45,5207.94,361.612,NULL,0,0,1,1,0,100,0),
(232610,7,4041.68,5251.51,361.612,NULL,0,0,1,1,0,100,0),
(232610,8,4038.73,5300.97,361.612,NULL,0,0,1,1,0,100,0),
(232610,9,4040.51,5349.67,361.612,NULL,0,0,1,1,0,100,0),
(232610,10,4043.06,5398.79,361.612,NULL,0,0,1,1,0,100,0),
(232610,11,4046.15,5447.84,361.612,NULL,0,0,1,1,0,100,0),
(232610,12,4053.93,5496.79,361.612,NULL,0,0,1,1,0,100,0),
(232610,13,4068.87,5542.62,361.612,NULL,0,0,1,1,0,100,0),
(232610,14,4066.99,5591.75,361.612,NULL,0,0,1,1,0,100,0),
(232610,15,4053.57,5639.87,361.612,NULL,0,0,1,1,0,100,0),
(232610,16,4037.27,5686.93,361.612,NULL,0,0,1,1,0,100,0),
(232610,17,4014.02,5730.72,361.612,NULL,0,0,1,1,0,100,0),
(232610,18,3988.54,5772.89,361.612,NULL,0,0,1,1,0,100,0),
(232610,19,3966.26,5816.79,361.612,NULL,0,0,1,1,0,100,0),
(232610,20,3947.24,5862.56,361.612,NULL,0,0,1,1,0,100,0),
(232610,21,3928.41,5908.81,361.612,NULL,0,0,1,1,0,100,0),
(232610,22,3932.79,5957.5,361.612,NULL,0,0,1,1,0,100,0),
(232610,23,3947.28,6004.66,361.612,NULL,0,0,1,1,0,100,0),
(232610,24,3929.28,6050.74,361.612,NULL,0,0,1,1,0,100,0),
(232610,25,3881.02,6060.04,361.612,NULL,0,0,1,1,0,100,0),
(232610,26,3834.01,6043.28,361.612,NULL,0,0,1,1,0,100,0),
(232610,27,3812.44,5999.02,361.612,NULL,0,0,1,1,0,100,0),
(232610,28,3804.87,5950.09,361.612,NULL,0,0,1,1,0,100,0),
(232610,29,3829.84,5907.25,361.612,NULL,0,0,1,1,0,100,0),
(232610,30,3858.82,5867.79,361.612,NULL,0,0,1,1,0,100,0),
(232610,31,3889.9,5828.43,361.612,NULL,0,0,1,1,0,100,0),
(232610,32,3920.99,5789.04,361.612,NULL,0,0,1,1,0,100,0),
(232610,33,3948.72,5748.27,361.612,NULL,0,0,1,1,0,100,0),
(232610,34,3971.72,5704.24,361.612,NULL,0,0,1,1,0,100,0),
(232610,35,3983.51,5656.17,361.612,NULL,0,0,1,1,0,100,0),
(232610,36,3991.1,5608.38,361.612,NULL,0,0,1,1,0,100,0),
(232610,37,3994.9,5559.08,361.612,NULL,0,0,1,1,0,100,0),
(232610,38,3994.37,5510.29,361.612,NULL,0,0,1,1,0,100,0),
(232610,39,3995.17,5461.3,361.612,NULL,0,0,1,1,0,100,0),
(232610,40,3996.76,5412.01,361.612,NULL,0,0,1,1,0,100,0),
(232610,41,3998.8,5363.44,361.612,NULL,0,0,1,1,0,100,0),
(232610,42,3991.57,5314.28,361.612,NULL,0,0,1,1,0,100,0),
(232610,43,3970.13,5269.34,361.612,NULL,0,0,1,1,0,100,0),
(232610,44,3953.14,5222.13,361.612,NULL,0,0,1,1,0,100,0),
(232610,45,3937.27,5175.01,361.612,NULL,0,0,1,1,0,100,0),
(232610,46,3922.6,5128.04,361.612,NULL,0,0,1,1,0,100,0),
(232610,47,3921.25,5079.44,361.612,NULL,0,0,1,1,0,100,0),
(232610,48,3923.93,5031.54,361.612,NULL,0,0,1,1,0,100,0),
(232610,49,3926.66,4982.02,361.612,NULL,0,0,1,1,0,100,0),
(232610,50,3939.91,4934.33,361.612,NULL,0,0,1,1,0,100,0),
(232610,51,3965.7,4892.08,361.612,NULL,0,0,1,1,0,100,0),
(232610,52,4006.36,4883.67,361.612,NULL,0,0,1,1,0,100,0),
(232610,53,4045.91,4914.19,361.612,NULL,0,0,1,1,0,100,0),

(232611,1,3824.14,5245.13,334.098,NULL,0,0,1,1,0,100,0),
(232611,2,3877.35,5233.99,270.664,NULL,0,0,1,1,0,100,0),

(232612,1,3877.35,5233.99,270.664,NULL,0,1000,1,0,0,100,0);


-- Insidion 23281
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` in (23281); -- 0

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23281);

DELETE FROM `creature` WHERE `guid` IN (300259);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300259,23281,530,0,0,1,1,0,3893.8200683593750,6067.0498046875000,392.50799560546875,0,720,0,0,0,0,0,0,0,0,'',0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-300259) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (23281) AND `source_type` = 0 AND `id` IN (5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM smart_scripts WHERE `entryorguid` IN (2328100,2328101,2328102,2328103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300259,0,1000,1001,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn - Set Active'),
(-300259,0,1001,1002,61,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Set Visibility On'),
(-300259,0,1002,1003,61,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Set Fly On'),
(-300259,0,1003,1004,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Set Hover On'),
(-300259,0,1004,1005,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Set React State \'Aggressive\''),
(-300259,0,1005,1006,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Set Flying Tier Animation'),
(-300259,0,1006,1007,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Set Phase 3'),
(-300259,0,1007,1008,61,0,100,512,0,0,0,0,0,0,232,232810,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Respawn (Linked) - Start Waypoint'),
(-300259,0,1008,0,61,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Respawn (Linked) - Set Flags \'Not Attackable\''),
(-300259,0,1009,1010,38,0,100,512,1,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Data Set 1 0 - Set Visibility Off'),
(-300259,0,1010,1011,61,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Data Set 1 0 (Linked) - Set React State \'Passive\''),
(-300259,0,1011,0,61,0,100,512,0,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Data Set 1 0 (Linked) - Set Phase 4'),
(-300259,0,1012,1013,38,0,100,512,1,1,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Data Set 1 1 - Set Visibility On'),
(-300259,0,1013,1014,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Data Set 1 1 (Linked) - Set React State \'Aggressive\''),
(-300259,0,1014,0,61,0,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Data Set 1 1 (Linked) - Set Phase 3'),
(-300259,0,1015,0,108,0,100,512,56,232810,0,0,0,0,80,2328103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Waypoint 56 Reached - Run Script'),
(-300259,0,1016,1013,1,8,100,0,720000,720000,720000,720000,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - OOC (Phase 4) - Set Visibility On'), -- Safety catch
(-300259,0,1017,1018,25,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Reset - Set Fly On'),
(-300259,0,1018,1019,61,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Reset (Linked) - Set Hover On'),
(-300259,0,1019,0,61,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Reset (Linked) - Set Flying Tier Animation'),

(23281,0,5,0,54,0,100,512,0,0,0,0,0,0,80,2328100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Just Summoned - Run Script'),
(23281,0,6,0,108,0,100,512,2,232811,0,0,0,0,80,2328101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Waypoint 2 Reached - Run Script'),
(23281,0,7,0,108,0,100,512,1,232812,0,0,0,0,80,2328102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Waypoint 1 Reached - Run Script'), -- this is needed cause set home posistion does not work on waypoint_data waypoints
-- (23281,0,8,0,61,0,100,512,0,0,0,0,0,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Waypoint 1 Reached (Linked) - Set Ground Tier Animation'), -- all videos show it as fly half way in the ground while fighting.
(23281,0,8,9,4,1,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Aggro (Phase 1) - Set Phase 2'),
(23281,0,9,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Aggro (Phase 1) (Linked) - Say Line 0'), -- For some reason it says it twice unless you change phase
(23281,0,10,11,1,3,100,0,45000,45000,30000,30000,0,0,45,1,1,0,0,0,0,10,300259,23281,0,0,0,0,0,0,'Insidion - OOC (Phase 1,2) - Set Data 1 1 on \'Insidion\''),
(23281,0,11,0,61,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - OOC (Phase 1) (Linked) - Despawn'),
(23281,0,12,0,6,3,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300259,23281,0,0,0,0,0,0,'Insidion - On Death (Phase 1,2) - Set Data 1 1 on \'Insidion\''),
(23281,0,13,14,103,0,100,0,1,185931,1,10,100,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Near Unit - Set Ground Tier Animation'), -- Damit this looks so much better than it being half stuck in the ground. BLizz sucks.  
(23281,0,14,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Near Unit (Linked) - Set Phase 1'),
(23281,0,15,0,1,1,100,0,0,0,20000,20000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.66378,'Insidion - OOC (Phase 1) - Set Orientation'),
(23281,0,16,0,0,2,100,512,10000,10000,10000,10000,0,0,45,1,1,0,0,0,0,10,300259,23281,0,0,0,0,0,0,'Insidion - IC (Phase 2) - Set Data 1 1 on \'Insidion\''), -- Safety catch

(2328100,9,0,0,0,0,100,512,0,0,0,0,0,0,131,42309,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Spawn SpawnGroup'),
(2328100,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Fly On'),
(2328100,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Hover On'),
(2328100,9,3,0,0,0,100,512,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set React State \'Passive\''),
(2328100,9,4,0,0,0,100,512,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Set Flags \'Not Attackable\''),
(2328100,9,5,0,0,0,100,512,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300259,23281,0,0,0,0,0,0,'Insidion  - On Script - Set Data 1 0 on \'Insidion\''),
(2328100,9,6,0,0,0,100,512,0,0,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Set Visibility On'),
(2328100,9,7,0,0,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Phase 1'),
(2328100,9,8,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Flying Tier Animation'),
(2328100,9,9,0,0,0,100,512,0,0,0,0,0,0,136,6,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Set Flight Speed'),
(2328100,9,10,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Stop Waypoint'),
(2328100,9,11,0,0,0,100,512,2000,2000,0,0,0,0,232,232811,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Start Waypoint'),

(2328101,9,0,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Fly Off'),
(2328101,9,1,0,0,0,100,512,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Hover Off'),
(2328101,9,2,0,0,0,100,512,0,0,0,0,0,0,132,42309,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Despawn SpawnGroup'),
(2328101,9,3,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185931,50,0,0,0,0,0,0,'Insidion - On Script - Despawn all Dragonkin Nest 03'),
(2328101,9,4,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185930,50,0,0,0,0,0,0,'Insidion - On Script - Despawn all Dragonkin Nest 02'),
(2328101,9,5,0,0,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,15,185929,50,0,0,0,0,0,0,'Insidion - On Script - Despawn all Dragonkin Nest 01'),
(2328101,9,6,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Stop Waypoint'),
(2328101,9,7,0,0,0,100,512,10,10,0,0,0,0,232,232812,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Start Waypoint'),

(2328102,9,0,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Stop Waypoint'),
(2328102,9,1,0,0,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set React State \'Aggressive\''),
(2328102,9,2,0,0,0,100,512,0,0,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion  - On Script - Remove Flags \'Not Attackable\''),
(2328102,9,3,0,0,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Home Position'),
(2328102,9,4,0,0,0,100,512,1000,1000,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Insidion - On Script - Attack Nearest Player'),

(2328103,9,0,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Fly On'),
(2328103,9,1,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Hover On'),
(2328103,9,2,0,0,0,100,512,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Set Flying Tier Animation'),
(2328103,9,3,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Stop Waypoint'),
(2328103,9,4,0,0,0,100,512,1,1,0,0,0,0,232,232810,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Insidion - On Script - Start Waypoint');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23281);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23281,0,0,'Get away from my clutch!!!',14,0,100,0,0,7274,21696,1,''),
(23281,0,1,'I know you by your stench, little $n.  Here, in my perch, is where your bones shall finally rest.',14,0,100,0,0,7274,21706,1,''),
(23281,0,2,'I tire of interruptions from the insignificant.  Your time has come, $n!',14,0,100,0,0,7274,21710,1,''),
(23281,0,3,'The Skyguard shall pay for your temerity, $n!',14,0,100,0,0,7274,21714,1,''),
(23281,0,4,'I believe that I shall feast upon both $r and ogre flesh tonight.',14,0,100,0,0,7274,21718,1,''),
(23281,0,5,'Little $r, you will now come to appreciate my wrath!',14,0,100,0,0,7274,21720,1,''),
(23281,0,6,'You have dared to defile my perch and must now be cleansed in fire!',14,0,100,0,0,7274,21726,1,''),
(23281,0,7,'What\'s this?!  $n and $g his : her; friends come to play?',14,0,100,0,0,7274,21733,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (232810,232811,232812);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(232810,1,3925.47,6029.5,392.508,NULL,0,0,1,1,0,100,0),
(232810,2,3938.97,5981.24,392.508,NULL,0,0,1,1,0,100,0),
(232810,3,3942.93,5932.12,392.508,NULL,0,0,1,1,0,100,0),
(232810,4,3955.21,5884.47,392.508,NULL,0,0,1,1,0,100,0),
(232810,5,3972.29,5837.08,392.508,NULL,0,0,1,1,0,100,0),
(232810,6,3993.95,5792.93,392.508,NULL,0,0,1,1,0,100,0),
(232810,7,4011.21,5746.19,392.508,NULL,0,0,1,1,0,100,0),
(232810,8,4020.96,5697.28,392.508,NULL,0,0,1,1,0,100,0),
(232810,9,4024.18,5648.02,392.508,NULL,0,0,1,1,0,100,0),
(232810,10,4026.6,5599.42,392.508,NULL,0,0,1,1,0,100,0),
(232810,11,4026.85,5550.05,392.508,NULL,0,0,1,1,0,100,0),
(232810,12,4026.86,5501.14,392.508,NULL,0,0,1,1,0,100,0),
(232810,13,4028.34,5452.07,392.508,NULL,0,0,1,1,0,100,0),
(232810,14,4030.6,5403.51,392.508,NULL,0,0,1,1,0,100,0),
(232810,15,4030.42,5354.29,392.508,NULL,0,0,1,1,0,100,0),
(232810,16,4034.89,5305.03,392.508,NULL,0,0,1,1,0,100,0),
(232810,17,4036.91,5256.31,392.508,NULL,0,0,1,1,0,100,0),
(232810,18,4039.6,5207.4,392.508,NULL,0,0,1,1,0,100,0),
(232810,19,4042.62,5158.38,392.508,NULL,0,0,1,1,0,100,0),
(232810,20,4044.14,5109.4,392.508,NULL,0,0,1,1,0,100,0),
(232810,21,4055.73,5061.05,392.508,NULL,0,0,1,1,0,100,0),
(232810,22,4074.66,5019.07,392.508,NULL,0,0,1,1,0,100,0),
(232810,23,4073.9,4970.12,392.508,NULL,0,0,1,1,0,100,0),
(232810,24,4055.59,4924.23,392.508,NULL,0,0,1,1,0,100,0),
(232810,25,4016.14,4893.17,392.508,NULL,0,0,1,1,0,100,0),
(232810,26,3967.71,4893.43,392.508,NULL,0,0,1,1,0,100,0),
(232810,27,3942.15,4936.81,392.508,NULL,0,0,1,1,0,100,0),
(232810,28,3939.93,4985.97,392.508,NULL,0,0,1,1,0,100,0),
(232810,29,3958.47,5027.59,392.508,NULL,0,0,1,1,0,100,0),
(232810,30,3976.41,5068.93,392.508,NULL,0,0,1,1,0,100,0),
(232810,31,3989.6,5110.75,392.508,NULL,0,0,1,1,0,100,0),
(232810,32,3983.44,5153.64,392.508,NULL,0,0,1,1,0,100,0),
(232810,33,3962.46,5197.79,392.508,NULL,0,0,1,1,0,100,0),
(232810,34,3957.36,5246.87,392.508,NULL,0,0,1,1,0,100,0),
(232810,35,3971.21,5293.97,392.508,NULL,0,0,1,1,0,100,0),
(232810,36,3995.19,5327.17,392.508,NULL,0,0,1,1,0,100,0),
(232810,37,4003.43,5376.97,392.508,NULL,0,0,1,1,0,100,0),
(232810,38,3993.08,5424.28,392.508,NULL,0,0,1,1,0,100,0),
(232810,39,3989.17,5470.56,392.508,NULL,0,0,1,1,0,100,0),
(232810,40,3989.76,5519.64,392.508,NULL,0,0,1,1,0,100,0),
(232810,41,3989.63,5568.55,392.508,NULL,0,0,1,1,0,100,0),
(232810,42,3982.74,5617.76,392.508,NULL,0,0,1,1,0,100,0),
(232810,43,3975.15,5662.21,392.508,NULL,0,0,1,1,0,100,0),
(232810,44,3965.21,5708.47,392.508,NULL,0,0,1,1,0,100,0),
(232810,45,3938.43,5750.99,392.508,NULL,0,0,1,1,0,100,0),
(232810,46,3908.25,5785.25,392.508,NULL,0,0,1,1,0,100,0),
(232810,47,3875.19,5821.7,392.508,NULL,0,0,1,1,0,100,0),
(232810,48,3839.98,5853.03,392.508,NULL,0,0,1,1,0,100,0),
(232810,49,3805.81,5886.93,392.508,NULL,0,0,1,1,0,100,0),
(232810,50,3774.81,5922.07,392.508,NULL,0,0,1,1,0,100,0),
(232810,51,3750.26,5965.65,392.508,NULL,0,0,1,1,0,100,0),
(232810,52,3733.89,6012.81,392.508,NULL,0,0,1,1,0,100,0),
(232810,53,3737.2,6050.02,392.508,NULL,0,0,1,1,0,100,0),
(232810,54,3759.75,6085.06,392.508,NULL,0,0,1,1,0,100,0),
(232810,55,3848.76,6088.41,392.508,NULL,0,0,1,1,0,100,0),
(232810,56,3893.82,6067.05,392.508,NULL,0,0,1,1,0,100,0),

(232811,1,4220.44,5412.87,327.126,NULL,0,0,1,1,0,100,0),
(232811,2,4157.69,5434.33,274.047,NULL,0,0,1,1,0,100,0),

(232812,1,4157.69,5434.33,274.047,NULL,0,1000,1,0,0,100,0);
