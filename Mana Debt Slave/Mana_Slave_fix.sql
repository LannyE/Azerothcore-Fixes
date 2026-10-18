/*
 Implement the Mana-Debt Slave Event at Bash'ir Landing 6-24-26

 - New Creature GUID: 300226,300227,300228,300229,300230,300231,300232
 - New Spawn Group: 42303
*/
-- Etereal Ring Target Bunny, Forge
UPDATE `creature_template` SET `flags_extra`=134217856 WHERE `entry` in (23445); -- 128

DELETE FROM `creature` WHERE `guid` IN (300226,300227,300228,300229);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300226,23445,530,0,0,1,1,0,4013.909912109375,5905.16015625,277.16201171875,0.541051983833313,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300227,23445,530,0,0,1,1,0,4028.330078125,5901.7001953125,277.1849914550781,0.5759590268135071,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300228,23445,530,0,0,1,1,0,4020.4599609375,5895.1298828125,269.95599365234375,5.689770221710205,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300229,23445,530,0,0,1,1,0,4026.510009765625,5885.18994140625,277.1719909667969,0.6283180117607117,30,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `spell_script_names` WHERE `spell_id` = 41560 AND `ScriptName` = 'spell_ethereal_ring_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(41560, 'spell_ethereal_ring_visual');

DELETE FROM `spell_script_names` WHERE `spell_id` = 40490 AND `ScriptName` = 'spell_resonance_feedback';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(40490, 'spell_resonance_feedback');

DELETE FROM `spawn_group` where `groupId` IN (42303);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42303,0,300230),
(42303,0,300231),
(42303,0,300232);

DELETE FROM `spawn_group_template` where `groupId` IN (42303);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42303,'Bash\'ir Mana-Debt Slave Group 1',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23445,-300228,-300226,-300227,-300229) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2344501) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23445,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Respawn - Set Active'),

(-300228,0,1000,1001,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Spawn - Set Phase 1'),
(-300228,0,1001,0,61,0,100,0,0,0,0,0,0,0,19,33587968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Spawn (Linked) - Remove Unit Flags \'UNIT_FLAG_NOT_SELECTABLE\''),
(-300228,0,1002,0,69,0,100,0,248,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Game Event End 248 - Set Phase 1'),
(-300228,0,1003,0,68,0,100,0,248,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Game Event Start 248 - Set Phase 2'),
-- (-300228,0,1004,1005,1,5,100,0,30000,30000,160000,160000,0,0,45,1,0,0,0,0,0,10,300817,22243,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 1,3) - Set Data 1 0 On \'Bash\'ir Arcanist\''),
(-300228,0,1004,1005,1,5,100,0,1465000,1465000,1465000,1465000,0,0,45,1,0,0,0,0,0,10,300817,22243,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 1,3) - Set Data 1 0 On \'Bash\'ir Arcanist\''),
(-300228,0,1005,0,61,0,100,0,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 1) (Linked) - Set Phase 3'),
(-300228,0,1006,1007,38,0,100,0,1,0,0,0,0,0,131,42303,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 0 - Spawn SpawnGroup'),
(-300228,0,1007,0,61,0,100,0,0,0,0,0,0,0,63,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 0 (Linked) - Reset Counter 1'),
(-300228,0,1008,0,38,0,100,0,1,1,0,0,0,0,63,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 1 - Add 1 to Counter 1'),
(-300228,0,1009,0,77,0,100,0,1,3,3000,3000,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Counter Reached 3 on 1 - Set Phase 4'),
-- (-300228,0,1010,0,1,4,100,0,50000,50000,50000,50000,0,0,80,2344501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 3) - Run Script'),
(-300228,0,1010,0,1,4,100,0,300000,300000,300000,300000,0,0,80,2344501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 3) - Run Script'),
(-300228,0,1011,1012,1,10,100,0,1000,1000,1000,1000,0,0,132,42303,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 2,4) - Despawn SpawnGroup'),
(-300228,0,1012,0,61,0,100,0,0,0,0,0,0,0,41,10000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - OOC (Phase 2,4) (Linked) - Despawn'),
(-300228,0,1013,0,38,0,100,0,1,2,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 2 - Set Phase 2'),


(-300226,0,1000,0,38,0,100,0,1,2,0,0,0,0,11,40490,3,524287,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 2 - Cast \'Resonant Feedback\''),
(-300227,0,1000,0,38,0,100,0,1,2,0,0,0,0,11,40490,3,524287,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 2 - Cast \'Resonant Feedback\''),
(-300229,0,1000,0,38,0,100,0,1,2,0,0,0,0,11,40490,3,524287,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 2 - Cast \'Resonant Feedback\''),

(2344501,9,0,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,10,300817,22243,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Say Line 1 On \'Bash\'ir Arcanist\''),
(2344501,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,300226,23445,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 2 on \'Etereal Ring Target Bunny, Forge\''),
(2344501,9,2,0,0,0,100,0,10,10,0,0,0,0,45,1,2,0,0,0,0,10,300227,23445,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 2 on\'Etereal Ring Target Bunny, Forge\''),
(2344501,9,3,0,0,0,100,0,10,10,0,0,0,0,45,1,2,0,0,0,0,10,300229,23445,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 2 on\'Etereal Ring Target Bunny, Forge\''),
(2344501,9,4,0,0,0,100,0,0,0,0,0,0,0,92,0,40639,1,0,0,0,10,300230,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Interrupt Casting on \'Mana-Debt Slave\''),
(2344501,9,5,0,0,0,100,0,0,0,0,0,0,0,92,0,40639,1,0,0,0,10,300231,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Interrupt Casting on \'Mana-Debt Slave\''),
(2344501,9,6,0,0,0,100,0,0,0,0,0,0,0,92,0,40639,1,0,0,0,10,300232,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Interrupt Casting on \'Mana-Debt Slave\''),
(2344501,9,7,0,0,0,100,0,1000,1000,0,0,0,0,45,1,0,0,0,0,0,10,300230,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 0 on \'Mana-Debt Slave\''),
(2344501,9,8,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300231,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 0 on \'Mana-Debt Slave\''),
(2344501,9,9,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300232,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 0 on \'Mana-Debt Slave\''),
(2344501,9,10,0,0,0,100,0,5000,5000,0,0,0,0,45,1,1,0,0,0,0,10,300230,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 1 on \'Mana-Debt Slave\''),
(2344501,9,11,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300231,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 1 on \'Mana-Debt Slave\''),
(2344501,9,12,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300232,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 1 on \'Mana-Debt Slave\''),
(2344501,9,13,0,0,0,100,0,2000,2000,0,0,0,0,45,1,2,0,0,0,0,10,300230,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 2 on \'Mana-Debt Slave\''),
(2344501,9,14,0,0,0,100,0,10,10,0,0,0,0,45,1,2,0,0,0,0,10,300231,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 2 on \'Mana-Debt Slave\''),
(2344501,9,15,0,0,0,100,0,10,10,0,0,0,0,45,1,2,0,0,0,0,10,300232,23154,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Data 1 2 on \'Mana-Debt Slave\''),
(2344501,9,16,0,0,0,100,0,35000,35000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Set Phase 1'),
(2344501,9,17,0,0,0,100,0,0,0,0,0,0,0,132,42303,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Despawn SpawnGroup'), -- Cleanup
(2344501,9,18,0,0,0,100,0,0,0,0,0,0,0,41,3000,4,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Script - Despawn');


-- Mana-Debt Slave
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=134217728 WHERE `entry` in (23154); -- 0

DELETE FROM `creature_template_addon` where `entry` in (23154);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(23154,0,0,0,1,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300230,300231,300232);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300230,23154,530,0,0,1,1,1,3979.14,5915.77,267.049,0.541051983833313,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL),
(300231,23154,530,0,0,1,1,1,4025.01,5925.95,267.767,0.5759590268135071,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL),
(300232,23154,530,0,0,1,1,1,4028.83,5855.65,267.126,5.689770221710205,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23154,-300230,-300231,-300232) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2315400) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23154,0,0,0,13,0,100,0,10000,15000,0,0,0,0,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Victim Spellcasting - Cast \'Pummel\''),
(23154,0,1,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn - Set Active'),

(-300230,0,1000,1001,11,0,100,512,0,0,0,0,0,0,232,231540,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn - Start Waypoint'),
(-300230,0,1001,0,61,0,100,0,0,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn (Linked) - Cast \'Ethereal Teleport\''),
(-300230,0,1002,1003,38,0,100,0,1,0,0,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 - Emote \'ONESHOT_QUESTION\''),
(-300230,0,1003,1004,61,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 (Linked)- Set React State \'Passive\''),
(-300230,0,1004,0,61,0,100,0,0,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 (Linked) - Add Flags \'Immune to PC\''),
(-300230,0,1005,1006,38,0,100,0,1,1,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 1 - Emote \'ONESHOT_ROAR(DNR)\''),
(-300230,0,1006,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 1 (Linked) - Set Run On'),
(-300230,0,1007,1008,38,0,100,0,1,2,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,3972.11,5929.4,267.995,5.01625,'Mana-Debt Slave - On Data Set 1 2 - Move to POS'),
(-300230,0,1008,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 2 (Linked) - Set Phase 1'),
(-300230,0,1009,0,34,0,100,512,8,1,0,0,0,0,80,2315400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Point 1 Reached - Run Script'),
(-300230,0,1010,1011,108,0,100,0,5,231540,0,0,0,0,11,40639,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Waypoint 5 Reached - Cast \'Arcane Beam\' on \'Etereal Ring Target Bunny, Forge\''),
(-300230,0,1011,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Waypoint 5 Reached (Linked) - Set Home POS'),
(-300230,0,1012,0,1,1,100,0,10000,10000,10000,10000,0,0,80,2315400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - OOC (Phase 1) - Run Script'), -- In case they get distracted/attacked on the way out it will try to despawn again. 
(-300230,0,1013,0,6,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Death - Set Data 1 1 on \'Etereal Ring Target Bunny, Forge\''),
(-300230,0,1014,0,21,0,100,0,0,0,0,0,0,0,11,40639,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Home Reached - Cast \'Arcane Beam\' on \'Etereal Ring Target Bunny, Forge\''),

(-300231,0,1000,1001,11,0,100,512,0,0,0,0,0,0,232,231541,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn - Start Waypoint'),
(-300231,0,1001,0,61,0,100,0,0,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn (Linked) - Cast \'Ethereal Teleport\''),
(-300231,0,1002,1003,38,0,100,0,1,0,0,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 - Emote \'ONESHOT_QUESTION\''),
(-300231,0,1003,1004,61,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 (Linked)- Set React State \'Passive\''),
(-300231,0,1004,0,61,0,100,0,0,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 (Linked) - Add Flags \'Immune to PC\''),
(-300231,0,1005,1006,38,0,100,0,1,1,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 1 - Emote \'ONESHOT_ROAR(DNR)\''),
(-300231,0,1006,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 1 (Linked) - Set Run On'),
(-300231,0,1007,1008,38,0,100,0,1,2,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,4032.22,5937.3,267.543,4.13643,'Mana-Debt Slave - On Data Set 1 2 - Move to POS'),
(-300231,0,1008,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 2 (Linked) - Set Phase 1'),
(-300231,0,1009,0,34,0,100,512,8,1,0,0,0,0,80,2315400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Point 1 Reached - Run Script'),
(-300231,0,1010,1011,108,0,100,0,3,231541,0,0,0,0,11,40639,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Waypoint 3 Reached - Cast \'Arcane Beam\' on \'Etereal Ring Target Bunny, Forge\''),
(-300231,0,1011,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Waypoint 3 Reached (Linked) - Set Home POS'),
(-300231,0,1012,0,1,1,100,0,10000,10000,10000,10000,0,0,80,2315400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - OOC (Phase 1) - Run Script'),
(-300231,0,1013,0,6,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Death - Set Data 1 1 on \'Etereal Ring Target Bunny, Forge\''),
(-300231,0,1014,0,21,0,100,0,0,0,0,0,0,0,11,40639,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Home Reached - Cast \'Arcane Beam\' on \'Etereal Ring Target Bunny, Forge\''),

(-300232,0,1000,1001,11,0,100,512,0,0,0,0,0,0,232,231542,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn - Start Waypoint'),
(-300232,0,1001,0,61,0,100,0,0,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Respawn (Linked) - Cast \'Ethereal Teleport\''),
(-300232,0,1002,1003,38,0,100,0,1,0,0,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 - Emote \'ONESHOT_QUESTION\''),
(-300232,0,1003,1004,61,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 (Linked)- Set React State \'Passive\''),
(-300232,0,1004,0,61,0,100,0,0,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 0 (Linked) - Add Flags \'Immune to PC\''),
(-300232,0,1005,1006,38,0,100,0,1,1,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 1 - Emote \'ONESHOT_ROAR(DNR)\''),
(-300232,0,1006,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 1 (Linked) - Set Run On'),
(-300232,0,1007,1008,38,0,100,0,1,2,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,4040.23,5843.71,267.05,2.33874,'Mana-Debt Slave - On Data Set 1 2 - Move to POS'),
(-300232,0,1008,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Data Set 1 2 (Linked) - Set Phase 1'),
(-300232,0,1009,0,34,0,100,512,8,1,0,0,0,0,80,2315400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Point 1 Reached - Run Script'),
(-300232,0,1010,1011,108,0,100,0,4,231542,0,0,0,0,11,40639,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Waypoint 4 Reached - Cast \'Arcane Beam\' on \'Etereal Ring Target Bunny, Forge\''),
(-300232,0,1011,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Waypoint 4 Reached (Linked) - Set Home POS'),
(-300232,0,1012,0,1,1,100,0,10000,10000,10000,10000,0,0,80,2315400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - OOC (Phase 1) - Run Script'),
(-300232,0,1013,0,6,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Death - Set Data 1 1 on \'Etereal Ring Target Bunny, Forge\''),
(-300232,0,1014,0,21,0,100,0,0,0,0,0,0,0,11,40639,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Mana-Debt Slave - On Home Reached - Cast \'Arcane Beam\' on \'Etereal Ring Target Bunny, Forge\''),

(2315400,9,0,0,0,0,100,0,0,0,0,0,0,0,92,0,40639,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Script - Interrupt Casting'),
(2315400,9,1,0,0,0,100,0,10,10,0,0,0,0,11,40163,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Script - Cast \'Teleport\''),
(2315400,9,2,0,0,0,100,0,2000,2000,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana-Debt Slave - On Script - Despawn');


DELETE FROM `waypoint_data` WHERE `id` IN (231540,231541,231542);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(231540,1,3979.14,5915.77,267.049,NULL,0,0,0,0,0,100,0),
(231540,2,3994.15,5910.48,267.473,NULL,0,0,0,0,0,100,0),
(231540,3,4004.15,5905.68,267.444,NULL,0,0,0,0,0,100,0),
(231540,4,4010.43,5895.85,267.948,NULL,0,0,0,0,0,100,0),
(231540,5,4013.9,5895.09,267.948,0.00654704,0,1000,0,0,0,100,0),
-- (231540,6,4013.9,5895.09,267.948,0.00654704,7000,2315402,NULL),
-- (231540,7,3972.11,5929.4,267.995,2.10589,5000,2315403,NULL),

(231541,1,4025.01,5925.95,267.767,NULL,0,0,0,0,0,100,0),
(231541,2,4022.39,5912.76,267.944,NULL,0,0,0,0,0,100,0),
(231541,3,4022.56,5901.29,267.944,4.38343,0,1000,0,0,0,100,0),
-- (231541,4,4022.56,5901.29,267.944,4.35971,7000,2315402,NULL),
-- (231541,5,4032.22,5937.3,267.543,4.13643,5000,2315403,NULL),

(231542,1,4028.83,5855.65,267.126,NULL,0,0,0,0,0,100,0),
(231542,2,4030.12,5875.35,267.948,NULL,0,0,0,0,0,100,0),
(231542,3,4016.54,5884.51,267.948,NULL,0,0,0,0,0,100,0),
(231542,4,4018.16,5889.33,267.948,1.19344,0,1000,0,0,0,100,0);
-- (231542,5,4018.16,5889.33,267.948,1.19344,7000,2315402,NULL),
-- (231542,6,4040.23,5843.71,267.05,2.33874,5000,2315403,NULL);


-- Bash'ir Arcanist
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` in (22243); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300817) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300817,0,1000,1001,38,0,100,512,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Arcanist - On Data Set 1 0 - Say Line 0'),
(-300817,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Bash\'ir Arcanist - On Data Set 1 0 - Set Data 1 0 On \'Etereal Ring Target Bunny, Forge\''),
(-300817,0,1002,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Arcanist - On Respawn - Set Active');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22243);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22243,0,0,'The forge needs additonal tuning.  Look into it, slave!',14,0,100,0,0,0,21286,1,''),
(22243,0,1,'Get over there and realign The Crystal Forge.',14,0,100,0,0,0,21613,1,''),
(22243,0,2,'About time you showed up!  That forge has been busted for almost an hour!',14,0,100,0,0,0,21614,1,''),
(22243,1,0,'What have you done you fools?',14,0,100,0,0,0,21615,1,''),
(22243,1,1,'Incompetent fools!  Why must we suffer your stupidity?',14,0,100,0,0,0,21616,1,''),
(22243,1,2,'I shall add another year to your enslavement for your failure!',14,0,100,0,0,0,21617,1,'');



/*
(2315401,1000,0,15,40639,0,0,19656,160929,17,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Cast Arcane Beam');

(2315402,1000,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - OneShotQuestion');
(2315402,5000,0,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - OneShotLaugh');
(2315402,5000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Set Run');

(2315403,0,0,15,40163,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Cast Teleport');
(2315403,0,0,18,1600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Despawn Self');
*/