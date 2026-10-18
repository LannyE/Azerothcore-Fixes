/*
Fix Kargath Roleplay and Waypoints 4-27-26

*/
-- Leader Dummy
DELETE FROM `creature` WHERE `guid` IN (300122);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300122) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000103,30000104,30000105) AND `source_type` = 9;

DELETE FROM `waypoint_data` where `id` in (3001220);


-- Thal'trak Proudtusk
UPDATE `creature` SET `orientation` = 3.80482,`MovementType` = 2 WHERE `guid` in (6885); -- 3.80482 2

UPDATE `creature_template` SET `movementId` = 49,`flags_extra` = 2 WHERE `entry` in (9082); -- 49

UPDATE `creature_addon` SET `bytes2` = 1,`path_id` = 68850 WHERE `guid` in (6885); -- 0

DELETE FROM `creature_formations` where `leaderGUID` IN (6885);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(6885,6877,12,0,515,0,0),
(6885,6880,9,0,515,0,0),
(6885,6883,6,0,515,0,0),
(6885,6885,0,0,515,0,0),
(6885,6886,3,0,515,0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9082) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (908200,908201,908202) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9082,0,0,0,9,0,100,0,0,0,180000,180000,9,10,1,0,0,0,0,0,0,11,9079,10,0,0,0,0,0,0,'Thal\'trak Proudtusk - Within 9-10 Range - Say Line 0 (Phase 1) (No Repeat) (Normal Dungeon)');

DELETE FROM `waypoint_data` where `id` in (68850);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(68850,1,-6686.64,-2162.67,244.195,NULL,0,117750,0,0,0,100,0),
(68850,2,-6698.09,-2166.71,244.144,NULL,0,0,0,0,0,100,0), -- -6698.09 -2166.71 244.144
(68850,3,-6724.88,-2177.67,244.144,NULL,0,0,0,0,0,100,0),
(68850,4,-6754.51,-2188.96,244.145,NULL,0,0,0,0,0,100,0),
(68850,5,-6789.04,-2200.47,244.127,NULL,0,0,0,0,0,100,0),
(68850,6,-6836.76,-2216.8,244.144,NULL,0,0,0,0,0,100,0),
(68850,7,-6842.6,-2224.08,243.735,NULL,0,0,0,0,0,100,0),
(68850,8,-6831.41,-2224.13,244.326,NULL,0,0,0,0,0,100,0),
(68850,9,-6819.23,-2217.24,244.193,NULL,0,0,0,0,0,100,0),
(68850,10,-6779.18,-2201.85,244.142,NULL,0,0,0,0,0,100,0),
(68850,11,-6742.57,-2187.83,244.144,NULL,0,0,0,0,0,100,0),
(68850,12,-6704.67,-2180.27,244.325,NULL,0,0,0,0,0,100,0),
(68850,13,-6696.46,-2187.56,247.256,NULL,0,0,0,0,0,100,0),
(68850,14,-6675.44,-2195.12,247.47,NULL,0,0,0,0,0,100,0),
(68850,15,-6657.14,-2204.38,246.199,NULL,0,0,0,0,0,100,0),
(68850,16,-6639.98,-2211.67,244.322,NULL,0,0,0,0,0,100,0),
(68850,17,-6622.15,-2237.86,244.144,NULL,0,0,0,0,0,100,0),
(68850,18,-6609.55,-2297.66,244.144,NULL,0,0,0,0,0,100,0),
(68850,19,-6602.49,-2337.11,244.564,NULL,0,0,0,0,0,100,0),
(68850,20,-6593.68,-2338.02,244.451,NULL,0,0,0,0,0,100,0),
(68850,21,-6597.48,-2311.3,244.163,NULL,0,0,0,0,0,100,0),
(68850,22,-6608.46,-2282.16,244.144,NULL,0,0,0,0,0,100,0),
(68850,23,-6615.97,-2237.53,244.144,NULL,0,0,0,0,0,100,0),
(68850,24,-6638.14,-2204.14,244.144,NULL,0,0,0,0,0,100,0),
(68850,25,-6664.19,-2186.06,244.144,NULL,0,0,0,0,0,100,0),
(68850,26,-6689.15,-2168.01,244.145,NULL,0,0,0,0,0,100,0),
(68850,27,-6690.26,-2159.42,244.145,NULL,0,0,0,0,0,100,0),
(68850,28,-6686.64,-2162.67,244.195,NULL,0,150000,0,0,0,100,0),
(68850,29,-6686.64,-2162.67,244.195,NULL,0,150000,0,0,0,100,0),
(68850,30,-6686.64,-2162.67,244.195,NULL,0,150000,0,0,0,100,0);


DELETE FROM `creature_text` WHERE `CreatureID` IN (9082);


-- Initiate Amakkar
-- in fomration 3.9968 in group 3.9968
UPDATE `creature_template` SET `movementId` = 77,`speed_run` = 0.47143,`flags_extra` = 2,`AIName` = "" WHERE `entry` in (9085); -- ""

UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (6877); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9085) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (9085);


-- Razal'blade
-- in fomration 4.01426 in group 4.6105
UPDATE `creature` SET `orientation` = 4.01426 WHERE `guid`=6880; -- 4.01426
UPDATE `creature_template` SET `movementId` = 77,`speed_run` = 0.47143,`flags_extra` = 2,`AIName` = "" WHERE `entry` in (9083); -- ""

UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (6880); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9083) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (9083);


-- Grunt Gargal
-- in fomration 4.03171 in group 0.0067
UPDATE `creature` SET `orientation` = 4.03171 WHERE `guid`=6883; -- 4.03171
UPDATE `creature_template` SET `movementId` = 77,`speed_run` = 0.47143,`flags_extra` = 2,`AIName` = "" WHERE `entry` in (9086); -- ""

UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (6883); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9086) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (9086);


-- Thunderheart
-- in fomration 3.9968 in group 0.8706
UPDATE `creature` SET `orientation` = 3.9968 WHERE `guid`=6886; -- 3.9968
UPDATE `creature_template` SET `movementId` = 77,`speed_run` = 0.47143,`flags_extra` = 2,`AIName` = "" WHERE `entry` in (9084); -- ""

UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (6886); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9084) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (9084);


-- Warlord Goretooth
UPDATE `creature_template` SET `flags_extra` = 2,`AIName` = "" WHERE `entry` in (9077); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9077) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (907700,907701) AND `source_type` = 9;

DELETE FROM `waypoint_data` where `id` in (68780);

DELETE FROM `creature_text` WHERE `CreatureID` IN (9077);


-- Hierophant Theodora Mulvadania
UPDATE `creature_template` SET `flags_extra` = 2,`AIName` = "" WHERE `entry` in (9079); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9079) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (907900) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (9079);


-- Shadowmage Vivian Lagrave
UPDATE `creature_template` SET `flags_extra` = 2,`AIName` = "" WHERE `entry` in (9078); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9078) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (9078);


-- Gorn
UPDATE `creature_addon` SET `mount` = 14334 WHERE `guid` in (6860); -- 14334