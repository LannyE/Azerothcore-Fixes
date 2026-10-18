/*
Fix Kargath Roleplay and Waypoints 4-27-26

-- Warlord Goretooth Roleplay Event missing
-- New GUID: 300122
-- Hierophant Theodora Roleplay missing

-- Gorn was not mounted in WOTLK
*/
-- Leader Dummy
/* -- This is the creature_template entry for reference that was introduced in the Kodo_fix.sql.
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (300001);
INSERT INTO `creature_template_model` (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`) VALUES 
(300001,0,20024,1,1,0); -- 11686

DELETE FROM `creature_template` WHERE `entry` IN (300001);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`CreatureImmunitiesId`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(300001,0,0,0,0,0,'Leader Dummy',NULL,NULL,0,1,1,0,35,0,1,1.14286,1,1,20,0,0,1,0,0,1,1,1,33554432,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,1,1,1,1,1,0,0,1,0,0,'',NULL);
*/

DELETE FROM `creature` WHERE `guid` IN (300122);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300122,300001,0,0,0,0,0,1,1,0,-6693.5923,-2163.079,244.14375,3.917,300,0,0,20,0,0,0,0,0,'',0,0,NULL); -- -6693.5923 -2163.079 244.14375

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300122) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000103,30000104,30000105) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300122,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Respawn - Set Active'),
(-300122,0,1,0,38,0,100,512,0,1,0,0,0,0,80,30000103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Data Set 0 1 - Run Script'),
(-300122,0,2,0,108,0,100,0,25,3001220,0,0,0,0,80,30000104,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Leader Dummy - On Waypoint 25 Reached - Run Script"),
(-300122,0,3,4,108,0,100,0,28,3001220,0,0,0,0,80,30000105,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Leader Dummy - On Waypoint 28 Reached - Run Script"),
(-300122,0,4,0,61,0,100,0,0,0,0,0,0,0,45,0,6,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Leader Dummy - On Waypoint 28 Reached (Linked) - Set Data 0 6 (Thal\'trak Proudtusk)"),
(-300122,0,5,0,1,0,100,0,30000,30000,720000,720000,0,0,45,0,1,0,0,0,0,19,9077,90,0,0,0,0,0,0,"Leader Dummy - OOC - Set Data 0 1 (Warlord Goretooth)"), -- Starts event

(30000103,9,0,0,0,0,100,512,100,100,0,0,0,0,232,3001220,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Start Waypoint'),
(30000103,9,1,0,0,0,100,0,0,0,0,0,0,0,45,0,3,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 3 (Thal\'trak Proudtusk)"),
(30000103,9,2,0,0,0,100,0,100,100,0,0,0,0,45,0,3,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 3 (Grunt Gargal)"),
(30000103,9,3,0,0,0,100,0,100,100,0,0,0,0,45,0,3,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 3 (Thunderheart)"),
(30000103,9,4,0,0,0,100,0,100,100,0,0,0,0,45,0,3,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 3 (Initiate Amakkar)"),
(30000103,9,5,0,0,0,100,0,100,100,0,0,0,0,45,0,3,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 3 (Razal\'blade)"),
(30000103,9,6,0,0,0,100,0,2000,2000,0,0,0,0,45,0,6,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 6 (Thal\'trak Proudtusk)"),
(30000103,9,7,0,0,0,100,0,2000,2000,0,0,0,0,45,0,5,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Grunt Gargal)"),
(30000103,9,8,0,0,0,100,0,1000,1000,0,0,0,0,45,0,5,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Thunderheart)"),
(30000103,9,9,0,0,0,100,0,1000,1000,0,0,0,0,45,0,5,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Initiate Amakkar)"),
(30000103,9,10,0,0,0,100,0,1000,1000,0,0,0,0,45,0,5,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Razal\'blade)"),

(30000104,9,0,0,0,0,100,0,0,0,0,0,0,0,45,0,4,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 4 (Thal\'trak Proudtusk)"),
(30000104,9,1,0,0,0,100,0,0,0,0,0,0,0,45,0,5,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Thal\'trak Proudtusk)"),
(30000104,9,2,0,0,0,100,0,100,100,0,0,0,0,45,0,4,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 4 (Grunt Gargal)"),
(30000104,9,3,0,0,0,100,0,100,100,0,0,0,0,45,0,4,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 4 (Thunderheart)"),
(30000104,9,4,0,0,0,100,0,100,100,0,0,0,0,45,0,4,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 4 (Initiate Amakkar)"),
(30000104,9,5,0,0,0,100,0,100,100,0,0,0,0,45,0,4,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 4 (Razal\'blade)"),
(30000104,9,6,0,0,0,100,0,2000,2000,0,0,0,0,45,0,6,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 6 (Thal\'trak Proudtusk)"),
(30000104,9,7,0,0,0,100,0,2000,2000,0,0,0,0,45,0,5,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Grunt Gargal)"),
(30000104,9,8,0,0,0,100,0,1000,1000,0,0,0,0,45,0,5,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Thunderheart)"),
(30000104,9,9,0,0,0,100,0,1000,1000,0,0,0,0,45,0,5,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Initiate Amakkar)"),
(30000104,9,10,0,0,0,100,0,1000,1000,0,0,0,0,45,0,5,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Leader Dummy - On Script - Set Data 0 5 (Razal\'blade)"),

(30000105,9,0,0,0,0,100,0,245000,245000,0,0,0,0,45,0,1,0,0,0,0,19,9079,90,0,0,0,0,0,0,'Leader Dummy - On Script - Set Data 0 1 (Hierophant Theodora Mulvadania)'); -- this is supposed to start just before the KEF group discussion

DELETE FROM `waypoint_data` where `id` in (3001220);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(3001220,1,-6698.09,-2166.71,244.144,NULL,0,0,0,0,0,100,0), -- The force should do smart script following and formation here.  
(3001220,2,-6724.88,-2177.67,244.144,NULL,0,0,0,0,0,100,0),
(3001220,3,-6754.51,-2188.96,244.145,NULL,0,0,0,0,0,100,0),
(3001220,4,-6789.04,-2200.47,244.127,NULL,0,0,0,0,0,100,0),
(3001220,5,-6836.76,-2216.8,244.144,NULL,0,0,0,0,0,100,0),
(3001220,6,-6842.6,-2224.08,243.735,NULL,0,0,0,0,0,100,0),
(3001220,7,-6831.41,-2224.13,244.326,NULL,0,0,0,0,0,100,0),
(3001220,8,-6819.23,-2217.24,244.193,NULL,0,0,0,0,0,100,0),
(3001220,9,-6779.18,-2201.85,244.142,NULL,0,0,0,0,0,100,0),
(3001220,10,-6742.57,-2187.83,244.144,NULL,0,0,0,0,0,100,0),
(3001220,11,-6704.67,-2180.27,244.325,NULL,0,0,0,0,0,100,0),
(3001220,12,-6696.46,-2187.56,247.256,NULL,0,0,0,0,0,100,0),
(3001220,13,-6675.44,-2195.12,247.47,NULL,0,0,0,0,0,100,0),
(3001220,14,-6657.14,-2204.38,246.199,NULL,0,0,0,0,0,100,0),
(3001220,15,-6639.98,-2211.67,244.322,NULL,0,0,0,0,0,100,0),
(3001220,16,-6622.15,-2237.86,244.144,NULL,0,0,0,0,0,100,0),
(3001220,17,-6609.55,-2297.66,244.144,NULL,0,0,0,0,0,100,0),
(3001220,18,-6602.49,-2337.11,244.564,NULL,0,0,0,0,0,100,0),
(3001220,19,-6593.68,-2338.02,244.451,NULL,0,0,0,0,0,100,0),
(3001220,20,-6597.48,-2311.3,244.163,NULL,0,0,0,0,0,100,0),
(3001220,21,-6608.46,-2282.16,244.144,NULL,0,0,0,0,0,100,0),
(3001220,22,-6615.97,-2237.53,244.144,NULL,0,0,0,0,0,100,0),
(3001220,23,-6638.14,-2204.14,244.144,NULL,0,0,0,0,0,100,0),
(3001220,24,-6664.19,-2186.06,244.144,NULL,0,0,0,0,0,100,0),
(3001220,25,-6689.15,-2168.01,244.145,NULL,0,0,0,0,0,100,0), -- -6689.15 -2168.01 244.145
(3001220,26,-6690.26,-2159.42,244.145,NULL,0,0,0,0,0,100,0), -- -6690.26 -2159.42 244.145
(3001220,27,-6686.64,-2162.67,244.195,NULL,0,0,0,0,0,100,0), -- tell force to move to their home POS
(3001220,28,-6693.5923,-2163.079,244.14375,3.917,0,0,0,0,0,100,0);


-- Thal'trak Proudtusk
UPDATE `creature` SET `orientation` = 2.1692,`MovementType` = 0 WHERE `guid` in (6885); -- 3.80482 2

UPDATE `creature_template` SET `movementId` = 0,`flags_extra` = 0 WHERE `entry` in (9082); -- 49 2

UPDATE `creature_addon` SET `bytes2` = 1,`path_id` = 0 WHERE `guid` in (6885); -- 0 68850

DELETE FROM `creature_formations` where `leaderGUID` IN (6885);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9082) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (908200,908201,908202) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9082,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Respawn - Set Active'),
(9082,0,1,0,38,0,100,0,0,1,0,0,0,0,80,908200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 1 - Run Script'),
(9082,0,2,0,38,0,100,0,0,2,0,0,0,0,80,908201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 2 - Run Script'),
(9082,0,3,4,38,0,100,0,0,3,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 3 - Set Run Off'),
(9082,0,4,0,61,0,100,0,0,0,0,0,0,0,29,0,0,0,0,0,0,10,300122,300001,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 3 (Linked) - Start Follow (Leader Dummy)'),
(9082,0,5,0,38,0,100,0,0,4,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 4 - Say Line 5'),
(9082,0,6,7,38,0,100,0,0,5,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 5 - Stop Follow'),
(9082,0,7,8,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 5 (Linked) - Set Run Off'),
(9082,0,8,9,61,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-6686.64,-2162.67,244.195,2.1692,'Thal\'trak Proudtusk - On Data Set 0 5 (Linked) - Move to POS'),
(9082,0,9,0,61,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 5 (Linked) - Add NPC Flag Questgiver'),
(9082,0,10,11,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Aggro - Call for Help'),
(9082,0,11,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Aggro (Linked) - Set Run On'),
(9082,0,12,0,108,0,100,0,2,68850,0,0,0,0,80,908202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Waypoint 2 Reached - Run Script"),
(9082,0,13,0,38,0,100,0,0,6,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Data Set 0 6 - Set Run On'),

(908200,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.1692,"Thal\'trak Proudtusk - On Script - Set Orientation"),
(908200,9,1,0,0,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Script - Remove NPC Flag Questgiver'),
(908200,9,2,0,0,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Script - Close Gossip Window'),
(908200,9,3,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 1 (Razal\'blade)"),
(908200,9,4,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 1 (Thunderheart)"),
(908200,9,5,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 1 (Initiate Amakkar)"),
(908200,9,6,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 1 (Grunt Gargal)"),
(908200,9,7,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 0 (Razal\'blade)"),
(908200,9,8,0,0,0,100,0,13000,13000,0,0,0,0,45,0,2,0,0,0,0,19,9077,90,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 2 (Warlord Goretooth)"), -- Start waypoint
(908200,9,9,0,0,0,100,0,7000,7000,0,0,0,0,1,0,0,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 0 (Initiate Amakkar)"),
(908200,9,10,0,0,0,100,0,4000,4000,0,0,0,0,1,1,0,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 1 (Initiate Amakkar)"),
(908200,9,11,0,0,0,100,0,25000,25000,0,0,0,0,1,0,0,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 0 (Grunt Gargal)"),
(908200,9,12,0,0,0,100,0,6000,6000,0,0,0,0,1,1,0,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 1 (Grunt Gargal)"),
(908200,9,13,0,0,0,100,0,4000,4000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 0"),
(908200,9,14,0,0,0,100,0,5000,5000,0,0,0,0,1,2,0,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 2 (Grunt Gargal)"),
(908200,9,15,0,0,0,100,0,3000,3000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 1"),
(908200,9,16,0,0,0,100,0,4000,4000,0,0,0,0,1,0,0,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 0 (Thunderheart)"),
(908200,9,17,0,0,0,100,0,5000,5000,0,0,0,0,1,0,0,0,0,0,0,19,9077,90,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 0 (Warlord Goretooth)"),
(908200,9,18,0,0,0,100,0,3000,3000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.80482,"Thal\'trak Proudtusk - On Script - Set Orientation"),
(908200,9,19,0,0,0,100,0,0,0,0,0,0,0,45,0,2,0,0,0,0,19,9083,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 2 (Razal\'blade)"),
(908200,9,20,0,0,0,100,0,100,100,0,0,0,0,45,0,2,0,0,0,0,19,9084,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 2 (Thunderheart)"),
(908200,9,21,0,0,0,100,0,100,100,0,0,0,0,45,0,2,0,0,0,0,19,9085,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 2 (Initiate Amakkar)"),
(908200,9,22,0,0,0,100,0,0,0,0,0,0,0,45,0,2,0,0,0,0,19,9086,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 2 (Grunt Gargal)"),

(908201,9,0,0,0,0,100,0,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 2"),
(908201,9,1,0,0,0,100,0,8000,8000,0,0,0,0,66,0,0,0,0,0,0,19,9077,30,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Script - Set Orientation (Warlord Goretooth)'),
(908201,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,19,9077,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 1 (Warlord Goretooth)"),
(908201,9,3,0,0,0,100,0,12000,12000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 3"),
(908201,9,4,0,0,0,100,0,7000,7000,0,0,0,0,232,68850,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thal\'trak Proudtusk - On Script - Start Waypoint'),

(908202,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.817,"Thal\'trak Proudtusk - On Script - Set Orientation"),
(908202,9,1,0,0,0,100,0,1000,1000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Say Line 4"),
-- (908202,9,2,0,0,0,100,0,3000,3000,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Run Off"),
(908202,9,2,0,0,0,100,0,4000,4000,0,0,0,0,45,0,1,0,0,0,0,19,300001,30,0,0,0,0,0,0,"Thal\'trak Proudtusk - On Script - Set Data 0 1 (Leader Dummy)");

DELETE FROM `waypoint_data` where `id` in (68850);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(68850,1,-6690.157,-2165.5122,244.14375,NULL,0,0,0,0,0,100,0),
(68850,2,-6693.5923,-2163.079,244.14375,NULL,0,0,0,0,0,100,0); -- in front of KEF facing troops 0.817 facing goretooth 3.917

DELETE FROM `creature_text` WHERE `CreatureID` IN (9082);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9082,0,0,'No, Gargal. Just no.',12,1,100,1,0,0,4666,0,'Thal\'trak Proudtusk'),
(9082,1,0,'NO! Shhhh! Just shut up. Goretooth is coming!',12,1,100,5,0,0,4668,0,'Thal\'trak Proudtusk'),
(9082,2,0,'All present and accounted for, SIR!',12,1,100,66,0,0,4672,0,'Thal\'trak Proudtusk'),
(9082,3,0,'SIR, YES SIR!',12,1,100,66,0,0,4690,0,'Thal\'trak Proudtusk'),
(9082,4,0,'You heard the Warlord, maggots! MARCH!',12,1,100,0,0,0,4691,0,'Thal\'trak Proudtusk'),
(9082,5,0,'Well done, soldiers! At ease!',12,1,100,0,0,0,4692,0,'Thal\'trak Proudtusk');


-- Initiate Amakkar
-- in fomration 3.9968 in group 3.9968
UPDATE `creature_template` SET `movementId` = 0,`speed_run` = 1.14286,`flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9085); -- 77 0.47143 2 ""

UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (6877); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9085) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9085,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Initiate Amakkar - On Respawn - Set Active'),
(9085,0,1,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Initiate Amakkar - On Aggro - Call for Help'),
(9085,0,2,0,38,0,100,0,0,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.9968,'Initiate Amakkar - On Data Set 0 1 - Set Orientation'),
(9085,0,3,0,38,0,100,0,0,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.9968,'Initiate Amakkar - On Data Set 0 2 - Set Orientation'),
(9085,0,4,5,38,0,100,0,0,3,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Initiate Amakkar - On Data Set 0 3 - Set Run Off'),
(9085,0,5,0,61,0,100,0,0,0,0,0,0,0,29,5,180,0,0,0,0,10,300122,300001,0,0,0,0,0,0,'Initiate Amakkar - On Data Set 0 3 (Linked) - Start Follow (Leader Dummy)'),
(9085,0,6,7,38,0,100,0,0,4,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Initiate Amakkar - On Data Set 0 4 - Stop Follow'),
(9085,0,7,8,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Initiate Amakkar - On Data Set 0 4 (Linked) - Set Run Off'),
(9085,0,8,0,61,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-6687.94,-2159.12,244.195,3.9968,'Initiate Amakkar - On Data Set 0 4 (Linked) - Move to POS'),
(9085,0,9,0,38,0,100,0,0,5,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Initiate Amakkar- On Data Set 0 5 - Set Run On');

DELETE FROM `creature_text` WHERE `CreatureID` IN (9085);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9085,0,0,'Hrmmm...',12,0,100,0,0,0,4662,0,'Initiate Amakkar'),
(9085,1,0,'Quit being such a baby, Razal\'blade. It\'s time to start acting like you\'re part of one of the Warchief\'s elite forces. You don\'t want to end up like Gargal, do you?',12,0,100,1,0,0,4663,0,'Initiate Amakkar');


-- Razal'blade
-- in fomration 4.01426 in group 4.6105
UPDATE `creature` SET `orientation` = 4.6105 WHERE `guid`=6880; -- 4.01426
UPDATE `creature_template` SET `movementId` = 0,`speed_run` = 1.14286,`flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9083); -- 77 0.47143 2 ""

UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (6880); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9083) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9083,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razal\'blade - On Respawn - Set Active'),
(9083,0,1,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razal\'blade - On Aggro - Call for Help'),
(9083,0,2,0,38,0,100,0,0,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.6105,'Razal\'blade - On Data Set 0 1 - Set Orientation'),
(9083,0,3,0,38,0,100,0,0,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.01426,'Razal\'blade - On Data Set 0 2 - Set Orientation'),
(9083,0,4,5,38,0,100,0,0,3,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razal\'blade - On Data Set 0 3 - Set Run Off'),
(9083,0,5,0,61,0,100,0,0,0,0,0,0,0,29,7,180,0,0,0,0,10,300122,300001,0,0,0,0,0,0,'Razal\'blade - On Data Set 0 3 (Linked) - Start Follow (Leader Dummy)'),
(9083,0,6,7,38,0,100,0,0,4,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razal\'blade - On Data Set 0 4 - Stop Follow'),
(9083,0,7,8,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razal\'blade - On Data Set 0 4 (Linked) - Set Run Off'),
(9083,0,8,0,61,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-6690.19,-2156.94,244.195,4.6105,'Razal\'blade - On Data Set 0 4 (Linked) - Move to POS'),
(9083,0,9,0,38,0,100,0,0,5,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razal\'blade - On Data Set 0 5 - Set Run On');

DELETE FROM `creature_text` WHERE `CreatureID` IN (9083);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9083,0,0,'Amakkar, where do you think Warlord Goretooth is going to send us? I don\'t think I can handle another tour in the Steppes.',12,0,100,1,0,0,4661,0,'Razal\'blade');


-- Grunt Gargal
-- in fomration 4.03171 in group 0.0067
UPDATE `creature` SET `orientation` = 0.0067 WHERE `guid`=6883; -- 4.03171
UPDATE `creature_template` SET `movementId` = 0,`speed_run` = 1.14286,`flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9086); -- 77 0.47143 2 ""

UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (6883); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9086) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9086,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grunt Gargal - On Respawn - Set Active'),
(9086,0,1,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grunt Gargal - On Aggro - Call for Help'),
(9086,0,2,0,38,0,100,0,0,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.0067,'Grunt Gargal - On Data Set 0 1 - Set Orientation'),
(9086,0,3,0,38,0,100,0,0,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.03171,'Grunt Gargal - On Data Set 0 2 - Set Orientation'),
(9086,0,4,5,38,0,100,0,0,3,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grunt Gargal - On Data Set 0 3 - Set Run Off'),
(9086,0,5,0,61,0,100,0,0,0,0,0,0,0,29,1,185,0,0,0,0,10,300122,300001,0,0,0,0,0,0,'Grunt Gargal - On Data Set 0 3 (Linked) - Start Follow (Leader Dummy)'),
(9086,0,6,7,38,0,100,0,0,4,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grunt Gargal - On Data Set 0 4 - Stop Follow'),
(9086,0,7,8,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grunt Gargal - On Data Set 0 4 (Linked) - Set Run Off'),
(9086,0,8,0,61,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-6692.72,-2159.63,244.195,0.0067,'Grunt Gargal - On Data Set 0 4 (Linked) - Move to POS'),
(9086,0,9,0,38,0,100,0,0,5,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grunt Gargal- On Data Set 0 5 - Set Run On');

DELETE FROM `creature_text` WHERE `CreatureID` IN (9086);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9086,0,0,'%s seems oblivious to the nearby commentary.',16,0,100,0,0,0,4664,0,'Grunt Gargal'),
(9086,1,0,'Proudtusk!',12,0,100,1,0,0,4665,0,'Grunt Gargal'),
(9086,2,0,'But...',12,0,100,1,0,0,4667,0,'Grunt Gargal');


-- Thunderheart
-- in fomration 3.9968 in group 0.8706
UPDATE `creature` SET `orientation` = 0.8474 WHERE `guid`=6886; -- 3.9968
UPDATE `creature_template` SET `movementId` = 0,`speed_run` = 1.14286,`flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9084); -- 77 0.47143 2 ""

UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (6886); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9084) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9084,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Respawn - Set Active'),
(9084,0,1,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Aggro - Call for Help'),
(9084,0,2,3,38,0,100,0,0,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.8474,'Thunderheart - On Data Set 0 1 - Set Orientation'),
(9084,0,3,4,61,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Data Set 0 1 (Linked) - Remove NPC Flag Questgiver'),
(9084,0,4,0,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Data Set 0 1 (Linked) - Close Gossip Window'),
(9084,0,5,0,38,0,100,0,0,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.03171,'Thunderheart - On Data Set 0 2 - Set Orientation'),
(9084,0,6,7,38,0,100,0,0,3,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Data Set 0 3 - Set Run Off'),
(9084,0,7,0,61,0,100,0,0,0,0,0,0,0,29,0.5,180,0,0,0,0,10,300122,300001,0,0,0,0,0,0,'Thunderheart - On Data Set 0 3 (Linked) - Start Follow (Leader Dummy)'),
(9084,0,8,9,38,0,100,0,0,4,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Data Set 0 4 - Stop Follow'),
(9084,0,9,10,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Data Set 0 4 (Linked) - Set Run Off'),
(9084,0,10,11,61,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-6690.13,-2161.77,244.195,0.8474,'Thunderheart - On Data Set 0 4 (Linked) - Move to POS'),
(9084,0,11,0,61,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart - On Data Set 0 4 (Linked) - Add NPC Flag Questgiver'),
(9084,0,12,0,20,0,100,0,3906,100,100,0,0,0,45,0,3,0,0,0,0,19,9078,60,0,0,0,0,0,0,'Thunderheart - On Quest \`Disharmony of Flame\` Reward - Set Data 0 3 (Shadowmage Vivian Lagrave)'),
(9084,0,13,0,38,0,100,0,0,5,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thunderheart- On Data Set 0 5 - Set Run On');

DELETE FROM `creature_text` WHERE `CreatureID` IN (9084);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9084,0,0,'%s laughs.',16,0,100,11,0,0,4669,0,'Thunderheart');


-- Warlord Goretooth
UPDATE `creature_template` SET `flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9077); -- 2 ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9077) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (907700,907701) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9077,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Warlord Goretooth - On Respawn - Set Active'),
(9077,0,1,0,38,0,100,0,0,1,0,0,0,0,45,0,1,0,0,0,0,19,9082,90,0,0,0,0,0,0,"Warlord Goretooth - On Data Set 0 1 - Set Data 0 1 (Thal\'trak Proudtusk)"),  -- Leader dummy is the timer and sets data on Warlord (just in case he is dead the event doesn't start) then warlord starts everything 
(9077,0,2,0,38,0,100,0,0,2,0,0,0,0,80,907700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Data Set 0 2 - Run Script"),
(9077,0,3,0,108,0,100,0,17,68780,0,0,0,0,45,0,2,0,0,0,0,19,9082,30,0,0,0,0,0,0,"Warlord Goretooth - On Waypoint 17 Reached - Set Data 0 2 (Thal\'trak Proudtusk)"),
(9077,0,4,0,108,0,100,0,19,68780,0,0,0,0,80,907701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Waypoint 19 Reached - Run Script"), -- Flirt with ladies
(9077,0,5,0,108,0,100,0,38,68780,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Waypoint 38 Reached - Add NPC Flag Questgiver"),
-- (9077,0,6,0,61,0,100,0,0,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Waypoint 38 Reached (Linked) - Add Gossip Flag"),
(9077,0,6,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Warlord Goretooth - On Aggro - Call for Help'),

-- (907700,9,0,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,9079,90,0,0,0,0,0,0,'Warlord Goretooth - On Script - Set Data 0 1 (Hierophant Theodora Mulvadania)'), -- Start the gossip with the undead women
(907700,9,0,0,0,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Warlord Goretooth - On Script - Remove NPC Flag Questgiver'),
(907700,9,1,0,0,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Warlord Goretooth - On Script - Close Gossip Window'),
(907700,9,2,0,0,0,100,0,1000,1000,0,0,0,0,232,68780,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Warlord Goretooth - On Script - Start Waypoint'),

(907701,9,0,0,0,0,100,0,3000,3000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.9118,"Warlord Goretooth - On Script - Set Orientation"),
(907701,9,1,0,0,0,100,0,100,100,0,0,0,0,45,0,4,0,0,0,0,19,9078,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Set Data 0 4 (Shadowmage Vivian Lagrave)'),
(907701,9,2,0,0,0,100,0,0,0,0,0,0,0,45,0,2,0,0,0,0,19,9079,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Set Data 0 2 (Hierophant Theodora Mulvadania)'), -- Set orientation on Warlord
(907701,9,3,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,9078,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Set Data 0 1 (Shadowmage Vivian Lagrave)'), -- Set orientation on Warlord
(907701,9,4,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Script - Say Line 2"),
(907701,9,5,0,0,0,100,0,13000,13000,0,0,0,0,1,2,0,0,0,0,0,19,9079,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Say Line 2 (Hierophant Theodora Mulvadania)'),
(907701,9,6,0,0,0,100,0,8000,8000,0,0,0,0,1,4,0,0,0,0,0,19,9078,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Say Line 4 (Shadowmage Vivian Lagrave)'),
(907701,9,7,0,0,0,100,0,5000,5000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Script - Say Line 3"),
(907701,9,8,0,0,0,100,0,9000,9000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Script - Say Line 4"),
(907701,9,9,0,0,0,100,0,3000,3000,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Script - Emote \`Talk\`"),
(907701,9,10,0,0,0,100,0,12000,12000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Goretooth - On Script - Say Line 5"),
(907701,9,11,0,0,0,100,0,8000,8000,0,0,0,0,45,0,3,0,0,0,0,19,9079,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Set Data 0 3 (Hierophant Theodora Mulvadania)'), -- Set orientation on Warlord
(907701,9,12,0,0,0,100,0,0,0,0,0,0,0,45,0,2,0,0,0,0,19,9078,30,0,0,0,0,0,0,'Warlord Goretooth - On Script - Set Data 0 2 (Shadowmage Vivian Lagrave)'); -- Set orientation on Warlord

DELETE FROM `waypoint_data` where `id` in (68780);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
/*
INSERT INTO `creature_movement_special` VALUES (9077, 1, -6677.62, -2224.11, 278.559, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 2, -6677.62, -2224.11, 278.559, 100, 0, 0, 907701);
INSERT INTO `creature_movement_special` VALUES (9077, 3, -6666.75, -2223.21, 278.58, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 4, -6661.61, -2231.73, 278.446, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 5, -6666.28, -2243.37, 272.058, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 6, -6677.49, -2244.14, 272.019, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 7, -6679.47, -2232.97, 272.045, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 8, -6672.57, -2227.45, 269.454, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 9, -6668.03, -2233.48, 266.891, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 10, -6674.64, -2238.53, 264.064, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 11, -6680.17, -2230.43, 260.373, 100, 0, 0, 907702);
INSERT INTO `creature_movement_special` VALUES (9077, 12, -6647.47, -2210.55, 245.571, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 13, -6646.23, -2200.34, 244.144, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 14, -6653.89, -2191.76, 244.144, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 15, -6680.09, -2174.92, 244.158, 100, 0, 0, 0); -- -6680.09 -2174.92 244.158
INSERT INTO `creature_movement_special` VALUES (9077, 16, -6686.56, -2165.76, 244.144, 100, 42000, 0, 907703); -- -6686.56 -2165.76 244.144
INSERT INTO `creature_movement_special` VALUES (9077, 17, -6686.56, -2165.76, 244.144, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 18, -6679.02, -2153.74, 244.144, 100, 30000, 0, 907704); -- -6679.02 -2153.74 244.144
INSERT INTO `creature_movement_special` VALUES (9077, 19, -6679.02, -2153.74, 244.144, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 20, -6686.15, -2165.75, 244.144, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 21, -6679.55, -2175.26, 244.158, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 22, -6653.74, -2191.61, 244.145, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 23, -6646.55, -2203.24, 244.145, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 24, -6649.67, -2210.69, 246.134, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 25, -6679.81, -2230.96, 260.432, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 26, -6673.88, -2238.29, 264.133, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 27, -6667.92, -2233.3, 266.899, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 28, -6672.64, -2227.78, 269.461, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 29, -6679.08, -2233.75, 272.046, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 30, -6677.21, -2244.13, 272.023, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 31, -6666.05, -2243.3, 272.203, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 32, -6661.79, -2230.97, 278.574, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 33, -6666.63, -2223.8, 278.563, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 34, -6677.62, -2224.11, 278.559, 100, 0, 0, 0);
INSERT INTO `creature_movement_special` VALUES (9077, 35, -6677.62, -2224.11, 278.559, 100, 0, 0, 907705);
*/
(68780,1,-6669.3657,-2223.8428,278.5766,NULL,0,0,0,0,0,100,0),
(68780,2,-6661.8423,-2231.474,278.54596,NULL,0,0,0,0,0,100,0),
(68780,3,-6666.278,-2243.123,272.1391,NULL,0,0,0,0,0,100,0),
(68780,4,-6675.3457,-2243.6929,272.02716,NULL,0,0,0,0,0,100,0),
(68780,5,-6678.969,-2236.4194,272.0449,NULL,0,0,0,0,0,100,0),
(68780,6,-6678.3813,-2232.4116,272.04703,NULL,0,0,0,0,0,100,0),
(68780,7,-6673.043,-2227.9133,269.47937,NULL,0,0,0,0,0,100,0),
(68780,8,-6668.377,-2232.836,266.95,NULL,0,0,0,0,0,100,0),
(68780,9,-6673.5723,-2237.3584,264.23584,NULL,0,0,0,0,0,100,0),
(68780,10,-6679.4746,-2231.058,260.45294,NULL,0,0,0,0,0,100,0),
(68780,11,-6674.7935,-2228.3296,257.99475,NULL,0,0,0,0,0,100,0), -- Base of Tower
(68780,12,-6666.203,-2222.7058,254.24777,NULL,0,0,0,0,0,100,0),
(68780,13,-6660.296,-2207.5186,247.75562,NULL,0,0,0,0,0,100,0),
(68780,14,-6664.3726,-2198.676,246.2419,NULL,0,0,0,0,0,100,0),
-- (68780,15,-6673.6284,-2188.1726,245.94376,NULL,0,0,0,0,0,100,0), -- In front of fort -6673.6284 -2188.1726 245.94376
(68780,15,-6671.496,-2186.7024,245.47871,NULL,0,0,0,0,0,100,0), -- In front of fort
(68780,16,-6680.09,-2174.92,244.158,NULL,0,0,0,0,0,100,0),
(68780,17,-6686.56,-2165.76,244.144,1.7386,0,28000,0,0,0,100,0), -- Next to KEF group -6686.56 -2165.76 244.144
/*
(68780,16,-6682.252,-2179.1719,244.14566,NULL,0,0,0,0,0,100,0), -- -6682.252 -2179.1719 244.14566
(68780,17,-6690.057,-2170.5693,244.1441,NULL,0,0,0,0,0,100,0), -- -6690.057 -2170.5693 244.1441
(68780,18,-6695.3,-2164.9663,244.1441,0.8858,0,28000,0,0,0,100,0), -- In front of KEF group -6695.3 -2164.9663 244.1441
(68780,19,-6690.057,-2170.5693,244.1441,NULL,0,0,0,0,0,100,0), --  turn to see the girls.  -6690.057 -2170.5693 244.1441
*/
(68780,18,-6679.135,-2158.8843,244.43494,NULL,0,0,0,0,0,100,0),
(68780,19,-6680.458,-2153.0854,244.14412,NULL,0,69000,0,0,0,100,0), -- stop next to the girls and flirt 8-9 seconds after last line before leaving.
(68780,20,-6679.135,-2158.8843,244.43494,NULL,0,0,0,0,0,100,0),
(68780,21,-6686.56,-2165.76,244.144,NULL,0,0,0,0,0,100,0),
-- (68780,23,-6690.057,-2170.5693,244.1441,NULL,0,0,0,0,0,100,0),
-- (68780,22,-6680.09,-2174.92,244.158,NULL,0,0,0,0,0,100,0),
(68780,22,-6682.252,-2179.1719,244.14566,NULL,0,0,0,0,0,100,0),
(68780,23,-6673.6284,-2188.1726,245.94376,NULL,0,0,0,0,0,100,0), -- -6673.6284 -2188.1726 245.94376
(68780,24,-6664.3726,-2198.676,246.2419,NULL,0,0,0,0,0,100,0),
(68780,25,-6660.296,-2207.5186,247.75562,NULL,0,0,0,0,0,100,0),
(68780,26,-6666.203,-2222.7058,254.24777,NULL,0,0,0,0,0,100,0),
(68780,27,-6674.7935,-2228.3296,257.99475,NULL,0,0,0,0,0,100,0), -- Base of Tower
(68780,28,-6679.4746,-2231.058,260.45294,NULL,0,0,0,0,0,100,0),
(68780,29,-6673.5723,-2237.3584,264.23584,NULL,0,0,0,0,0,100,0),
(68780,30,-6668.377,-2232.836,266.95,NULL,0,0,0,0,0,100,0),
(68780,31,-6673.043,-2227.9133,269.47937,NULL,0,0,0,0,0,100,0),
(68780,32,-6678.3813,-2232.4116,272.04703,NULL,0,0,0,0,0,100,0),
(68780,33,-6678.969,-2236.4194,272.0449,NULL,0,0,0,0,0,100,0),
(68780,34,-6675.3457,-2243.6929,272.02716,NULL,0,0,0,0,0,100,0),
(68780,35,-6666.278,-2243.123,272.1391,NULL,0,0,0,0,0,100,0),
(68780,36,-6661.8423,-2231.474,278.54596,NULL,0,0,0,0,0,100,0),
(68780,37,-6669.3657,-2223.8428,278.5766,NULL,0,0,0,0,0,100,0),
(68780,38,-6677.64,-2223.66,278.634,2.56563,0,0,0,0,0,100,0); -- Back to home POS

DELETE FROM `creature_text` WHERE `CreatureID` IN (9077);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9077,0,0,'FALL IN, MAGGOTS!',12,1,100,5,0,0,4673,1,'Warlord Goretooth'),
(9077,1,0,'Very well, Proudtusk, you may begin your march. Carry on!',12,1,100,0,0,0,4688,0,'Warlord Goretooth'),
(9077,2,0,'Well hello there ladies. Heard about the new plague?',12,1,100,1,0,0,4689,0,'Warlord Goretooth'),
(9077,3,0,'%s laughs.',16,0,100,11,0,0,4695,0,'Warlord Goretooth'),
(9077,4,0,'Ah, look at the time! I must return to my post... up over there.',12,1,100,23,0,0,4696,0,'Warlord Goretooth'),
(9077,5,0,'If you\'ll excuse me, I must take my leave. Good day, ladies.',12,1,100,2,0,0,4697,0,'Warlord Goretooth');


-- Hierophant Theodora Mulvadania
UPDATE `creature_template` SET `flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9079); -- 2 ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9079) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (907900) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9079,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Respawn - Set Active'),
(9079,0,1,0,38,0,100,0,0,1,0,0,0,0,80,907900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Data Set 0 1 - Run Script'),
(9079,0,2,3,38,0,100,0,0,2,0,0,0,0,66,0,0,0,0,0,0,19,9077,30,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Data Set 0 2 - Set Orientation (Warlord Goretooth)'),
(9079,0,3,4,61,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Data Set 0 2 (Linked) - Remove NPC Flag Questgiver'),
(9079,0,4,0,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Data Set 0 2 (Linked) - Close Gossip Window'),
(9079,0,5,6,38,0,100,0,0,3,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.29154,'Hierophant Theodora Mulvadania - On Data Set 0 3 - Set Orientation Home'),
(9079,0,6,0,61,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania- On Data Set 0 3 (Linked) - Add NPC Flag Questgiver'),
(9079,0,7,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Aggro - Call for Help'),

(907900,9,0,0,0,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Script - Remove NPC Flag Questgiver'),
(907900,9,1,0,0,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Script - Close Gossip Window'),
(907900,9,2,0,0,0,100,0,0,0,0,0,0,0,45,0,4,0,0,0,0,19,9078,30,0,0,0,0,0,0,'Hierophant Theodora Mulvadania- On Script - Set Data 0 4 (Shadowmage Vivian Lagrave)'),
(907900,9,3,0,0,0,100,0,0,50,0,0,0,0,1,0,0,0,0,0,0,19,9078,60,0,0,0,0,0,0,"Hierophant Theodora Mulvadania - On Script - Say Line 0 (Shadowmage Vivian Lagrave)"),
(907900,9,4,0,0,0,100,0,11000,11000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Hierophant Theodora Mulvadania - On Script - Say Line 0"),
(907900,9,5,0,0,0,100,0,15000,15000,0,0,0,0,1,1,0,0,0,0,0,19,9078,60,0,0,0,0,0,0,"Hierophant Theodora Mulvadania - On Script - Say Line 1 (Shadowmage Vivian Lagrave)"),
(907900,9,6,0,0,0,100,0,12000,12000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Hierophant Theodora Mulvadania - On Script - Say Line 1"),
(907900,9,7,0,0,0,100,0,17000,17000,0,0,0,0,1,2,0,0,0,0,0,19,9078,60,0,0,0,0,0,0,"Hierophant Theodora Mulvadania - On Script - Say Line 2 (Shadowmage Vivian Lagrave)"),
(907900,9,8,0,0,0,100,0,6000,6000,0,0,0,0,1,3,0,0,0,0,0,19,9078,60,0,0,0,0,0,0,"Hierophant Theodora Mulvadania - On Script - Say Line 3 (Shadowmage Vivian Lagrave)"),
(907900,9,9,0,0,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hierophant Theodora Mulvadania - On Script - Add NPC Flag Questgiver'),
(907900,9,10,0,0,0,100,0,0,0,0,0,0,0,45,0,5,0,0,0,0,19,9078,30,0,0,0,0,0,0,'Hierophant Theodora Mulvadania- On Script - Set Data 0 5 (Shadowmage Vivian Lagrave)');


DELETE FROM `creature_text` WHERE `CreatureID` IN (9079);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9079,0,0,'Oh, it\'s just terribly, terribly, awful! You will just DIE when you see it, Vivian.',12,0,100,1,0,0,4679,0,'Hierophant Theodora Mulvadania'),
(9079,1,0,'Well, from what I hear, the new plague has ALL of the old plague flavor but none of the old plague calories or carbohydrates!',12,0,100,1,0,0,4685,0,'Hierophant Theodora Mulvadania'),
(9079,2,0,'Ewwwww... not if you were the last orc on Kalimdor, Lunk.',12,0,100,1,0,0,4694,0,'Hierophant Theodora Mulvadania');


-- Shadowmage Vivian Lagrave
UPDATE `creature_template` SET `flags_extra` = 0,`AIName` = "SmartAI" WHERE `entry` in (9078); -- 2 ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9078) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9078,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Respawn - Set Active'),
(9078,0,1,0,4,0,100,0,0,0,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Aggro - Call for Help'),
(9078,0,2,0,38,0,100,0,0,1,0,0,0,0,66,0,0,0,0,0,0,19,9077,30,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Data Set 0 1 - Set Orientation (Warlord Goretooth)'),
(9078,0,3,4,38,0,100,0,0,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.67748,'Shadowmage Vivian Lagrave - On Data Set 0 2 - Set Orientation Home'),
(9078,0,4,0,61,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Data Set 0 2 (Linked) - Add NPC Flag Questgiver'),
(9078,0,5,0,38,0,100,0,0,3,0,0,0,0,1,5,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Data Set 0 3 - Say Line 5 on Invoker'),
(9078,0,6,7,38,0,100,0,0,4,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Data Set 0 4 - Remove NPC Flag Questgiver'),
(9078,0,7,0,61,0,100,0,0,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Data Set 0 4 (Linked) - Close Gossip Window'),
(9078,0,8,0,38,0,100,0,0,5,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowmage Vivian Lagrave - On Data Set 0 5 - Add NPC Flag Questgiver');

DELETE FROM `creature_text` WHERE `CreatureID` IN (9078);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(9078,0,0,'So what\'s this new plague all about?',12,0,100,1,0,0,4676,0,'Shadowmage Vivian Lagrave'),
(9078,1,0,'Oh, do tell! The suspense alone is enough to make a girl scream!',12,0,100,1,0,0,4683,0,'Shadowmage Vivian Lagrave'),
(9078,2,0,'%s claps excitedly.',16,0,100,21,0,0,4687,0,'Shadowmage Vivian Lagrave'),
(9078,3,0,'Oh, how positively delightful!',12,0,100,1,0,0,4686,0,'Shadowmage Vivian Lagrave'),
(9078,4,0,'%s blushes.',16,0,100,0,0,0,4693,0,'Shadowmage Vivian Lagrave'),
(9078,5,0,'You are indeed powerful, $n. Come to me if it is more work that you seek.',15,0,100,0,0,0,4717,0,'Shadowmage Vivian Lagrave');


-- Gorn
UPDATE `creature_addon` SET `mount` = 0 WHERE `guid` in (6860); -- 14334