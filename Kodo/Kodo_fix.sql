/*
Fix Desolace Kodo Packs 4-19-26

-- New Creature_template GUID: 300001
 
-- New Creature GUIDs: 300116,300117,300118
-- This uses the new Spawn Group system.  
-- New Spawn Groups 42275,42276,42277

-- TODO Test Roundup - The script just changed their modelID and it will despawn with the group. They are slow enough to this may not be a problem.   4-25-26
-- TODO Change formation 300116 to be the same as the others.  Not 3 yards ahead for the lead Kodo - Done 4-25-26
*/

-- Leader Dummy
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (300001);
INSERT INTO `creature_template_model` (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`) VALUES 
(300001,0,20024,1,1,0); -- 11686

DELETE FROM `creature_template` WHERE `entry` IN (300001);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`CreatureImmunitiesId`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(300001,0,0,0,0,0,'Leader Dummy',NULL,NULL,0,1,1,0,35,0,1,1.14286,1,1,20,0,0,1,0,0,1,1,1,33554432,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,1,1,1,1,1,0,0,1,0,0,'',NULL);

DELETE FROM `creature` WHERE `guid` IN (300116,300117,300118);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300116,300001,0,0,1,0,0,1,1,0,-2007.95,1682.55,61.5208,0.121447,300,0,0,20,0,0,0,0,0,'',0,0,NULL), -- -2021.6991 1681.5592 61.014664 - -2016.7538,1682.2206,60.995953,0.1483
(300117,300001,0,0,1,0,0,1,1,0,-783.3972,2013.6056,85.5117,2.6858,300,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300118,300001,0,0,1,0,0,1,1,0,-591.78955,1622.7252,89.60856,1.5805,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_formations` where `leaderGUID` IN (300116,300117,300118);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(300116,300116,0,0,512,0,0),
(300116,28282,0,0,512,0,0),
(300116,28283,17,180,512,0,0),
(300116,28284,25,198,512,0,0),
(300116,28299,29,162,512,0,0),

(300117,300117,0,0,512,0,0),
(300117,28278,0,0,512,0,0),
(300117,28298,11,167,512,0,0),
(300117,28279,20,193,512,0,0),
(300117,28280,29,176,512,0,0),

(300118,300118,0,0,512,0,0),
(300118,28272,0,0,512,0,0),
(300118,28273,24,180,512,0,0),
(300118,28295,20,200,512,0,0),
(300118,28274,41,173,512,0,0);

DELETE FROM `spawn_group` where `groupId` IN (42275,42276,42277);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42275,0,28282),
(42275,0,28283),
(42275,0,28284),
(42275,0,28299),

(42276,0,28278),
(42276,0,28298),
(42276,0,28279),
(42276,0,28280),

(42277,0,28272),
(42277,0,28295),
(42277,0,28273),
(42277,0,28274);

DELETE FROM `spawn_group_template` where `groupId` IN (42275,42276,42277);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42275,'Dying Kodo Group 1',4),
(42276,'Dying Kodo Group 2',4),
(42277,'Dying Kodo Group 3',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300116,-300117,-300118) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000100,30000101,30000102) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300116,0,0,1,11,0,100,512,0,0,0,0,0,0,80,30000100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Spawn - Run Script'),
(-300116,0,1,0,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Respawn (Linked) - Set Active'),
(-300116,0,2,3,108,0,100,512,20,3001160,0,0,0,0,132,42275,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 20 Reached - Despawn SpawnGroup'),
(-300116,0,3,0,61,0,100,512,0,0,0,0,0,0,41,1000,180,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 20 Reached (Linked) - Despawn'),

(-300117,0,0,1,11,0,100,512,0,0,0,0,0,0,80,30000101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Spawn - Run Script'),
(-300117,0,1,0,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Respawn (Linked) - Set Active'),
(-300117,0,2,3,108,0,100,512,14,3001161,0,0,0,0,132,42276,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 14 Reached - Despawn SpawnGroup'),
(-300117,0,3,0,61,0,100,512,0,0,0,0,0,0,41,2000,180,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 14 Reached (Linked) - Despawn'),

(-300118,0,0,1,11,0,100,512,0,0,0,0,0,0,80,30000102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Spawn - Run Script'),
(-300118,0,1,0,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Respawn (Linked) - Set Active'),
(-300118,0,2,3,108,0,100,512,22,3001162,0,0,0,0,132,42277,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 22 Reached - Despawn SpawnGroup'),
(-300118,0,3,0,61,0,100,512,0,0,0,0,0,0,41,2000,180,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 22 Reached (Linked) - Despawn'),

(30000100,9,0,0,0,0,100,512,1000,180000,0,0,0,0,131,42275,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Spawn SpawnGroup'),
(30000100,9,1,0,0,0,100,512,100,100,0,0,0,0,232,3001160,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Start Waypoint'),

(30000101,9,0,0,0,0,100,512,1000,180000,0,0,0,0,131,42276,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Spawn SpawnGroup'),
(30000101,9,1,0,0,0,100,512,100,100,0,0,0,0,232,3001161,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Start Waypoint'),

(30000102,9,0,0,0,0,100,512,1000,180000,0,0,0,0,131,42277,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Spawn SpawnGroup'),
(30000102,9,1,0,0,0,100,512,100,100,0,0,0,0,232,3001162,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Start Waypoint');

DELETE FROM `waypoint_data` where `id` in (3001160,3001161,3001162);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(3001160,1,-2002.0669,1683.3402,61.88993,NULL,2,0,0,0,0,100,0), -- -2002.0669 1683.3402 61.88993
(3001160,2,-1961.8265,1689.5776,62.37195,NULL,2,0,0,0,0,100,0), 
(3001160,3,-1942.5731,1685.8624,61.57893,NULL,2,0,0,0,0,100,0),
(3001160,4,-1908.1073,1669.1522,61.14141,NULL,2,0,0,0,0,100,0),
(3001160,5,-1896.4878,1657.4882,61.324635,NULL,2,0,0,0,0,100,0),
(3001160,6,-1879.0779,1619.868,61.21492,NULL,2,0,0,0,0,100,0),
(3001160,7,-1843.4508,1581.7377,61.99237,NULL,2,0,0,0,0,100,0),
(3001160,8,-1800.6162,1574.5919,61.618835,NULL,2,0,0,0,0,100,0),
(3001160,9,-1761.7495,1574.0752,61.18286,NULL,2,0,0,0,0,100,0),
(3001160,10,-1729.9366,1586.0067,61.11219,NULL,2,0,0,0,0,100,0),
(3001160,11,-1662.066,1660.8596,61.46364,NULL,2,0,0,0,0,100,0),
(3001160,12,-1611.5006,1717.1116,60.55771,NULL,2,0,0,0,0,100,0), -- -1618.5337 1721.2936 61.176945
(3001160,13,-1607.7977,1721.9364,59.4428,NULL,2,0,0,0,0,100,0), -- -1614.1509 1726.3577 59.297863
(3001160,14,-1593.3434,1755.494,59.547054,NULL,2,0,0,0,0,100,0),
(3001160,15,-1589.8435,1760.3309,61.461193,NULL,2,0,0,0,0,100,0),
(3001160,16,-1555.862,1801.3965,62.126606,NULL,2,0,0,0,0,100,0),
(3001160,17,-1529.12,1815.5145,60.85501,NULL,2,0,0,0,0,100,0),
(3001160,18,-1478.835,1808.0013,63.50731,NULL,2,0,0,0,0,100,0),
(3001160,19,-1461.964,1802.1283,51.262985,NULL,2,0,0,0,0,100,0),
(3001160,20,-1450.3768,1795.5709,50.144436,NULL,2,0,0,0,0,100,0),

(3001161,1,-816.06067,2029.199,74.563,NULL,2,0,0,0,0,100,0),
(3001161,2,-836.5415,2037.4413,70.838326,NULL,2,0,0,0,0,100,0), 
(3001161,3,-872.2492,2040.5951,65.571526,NULL,2,0,0,0,0,100,0),
(3001161,4,-894.2998,2047.1421,62.56275,NULL,2,0,0,0,0,100,0),
(3001161,5,-917.06476,2055.7234,62.96819 ,NULL,2,0,0,0,0,100,0),
(3001161,6,-974.7397,2065.3403,61.67235,NULL,2,0,0,0,0,100,0),
(3001161,7,-1008.11304,2064.5378,62.987328,NULL,2,0,0,0,0,100,0),
(3001161,8,-1086.0063,2070.3225,61.295742,NULL,2,0,0,0,0,100,0),
(3001161,9,-1108.811,2068.3489,61.71926,NULL,2,0,0,0,0,100,0),
(3001161,10,-1121.2559,2062.447,62.97784,NULL,2,0,0,0,0,100,0),
(3001161,11,-1132.6152,2052.5552,62.413666,NULL,2,0,0,0,0,100,0),
(3001161,12,-1145.4371,2040.9646,58.968906,NULL,2,0,0,0,0,100,0),
(3001161,13,-1162.3862,2031.8087,58.493694,NULL,2,0,0,0,0,100,0),
(3001161,14,-1207.6168,2012.6892,59.369297,NULL,2,0,0,0,0,100,0),

(3001162,1,-617.0853,1634.2717,90.209785,NULL,2,0,0,0,0,100,0),
(3001162,2,-673.60223,1642.356,91.17193,NULL,2,0,0,0,0,100,0), 
(3001162,3,-683.9452,1643.8312,88.64206,NULL,2,0,0,0,0,100,0),
(3001162,4,-711.1626,1646.2078,88.43407,NULL,2,0,0,0,0,100,0),
(3001162,5,-717.72186,1646.7545,90.84652,NULL,2,0,0,0,0,100,0),
(3001162,6,-762.55743,1653.3008,91.441895,NULL,2,0,0,0,0,100,0),
(3001162,7,-796.26495,1661.4193,89.63913,NULL,2,0,0,0,0,100,0),
(3001162,8,-825.56885,1671.8947,82.28205,NULL,2,0,0,0,0,100,0),
(3001162,9,-842.6381,1683.9218,74.9672,NULL,2,0,0,0,0,100,0),
(3001162,10,-859.7246,1695.9489,63.498184,NULL,2,0,0,0,0,100,0),
(3001162,11,-868.53546,1702.0989,61.11515,NULL,2,0,0,0,0,100,0),
(3001162,12,-878.3274,1703.7133,60.612064,NULL,2,0,0,0,0,100,0),
(3001162,13,-908.02313,1689.2129,60.858585,NULL,2,0,0,0,0,100,0),
(3001162,14,-949.08276,1687.317,61.612747,NULL,2,0,0,0,0,100,0),
(3001162,15,-992.8785,1690.6936,61.154606,NULL,2,0,0,0,0,100,0),
(3001162,16,-1050.8134,1697.4401,62.16651,NULL,2,0,0,0,0,100,0),
(3001162,17,-1076.7703,1726.2332,61.171947,NULL,2,0,0,0,0,100,0),
(3001162,18,-1092.3148,1759.8171,61.111324,NULL,2,0,0,0,0,100,0),
(3001162,19,-1109.4259,1783.8856,61.19405,NULL,2,0,0,0,0,100,0),
(3001162,20,-1145.799,1805.6064,61.68335,NULL,2,0,0,0,0,100,0), -- -1146.9116 1805.1249 61.524128
(3001162,21,-1212.4335,1830.2137,60.851013,NULL,2,0,0,0,0,100,0),
(3001162,22,-1228.0519,1834.6364,51.48622,NULL,2,0,0,0,0,100,0);

-- Kodos - they all use a C++ script.
-- Raging Thunder Lizard
UPDATE `creature` SET `wander_distance` = 10, `MovementType` = 1 WHERE `guid` in (28807); -- 0 0
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (28273,28295); -- 5 1
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (28272,28274); -- 20 1