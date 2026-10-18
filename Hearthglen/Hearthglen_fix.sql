/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (-58451,-58153)
LIMIT 0, 1000

-- Date: 2024-10-29 13:43
*/
-- Target Dummy (NEW GUIDS AND ENTRIES!)
-- DELETE FROM `creature_template` WHERE `entry` IN (300000); -- New ENTRIES
-- INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`scale`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`spell_school_immune_mask`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
-- (300000,0,0,0,0,0,'Hearthglen Target Dummy',NULL,NULL,0,50,50,0,15,0,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,33554692,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,'',0,1,1,1,1,1,0,0,1,0,0,130,'',12340);


-- DELETE FROM `creature` WHERE `guid` IN (300100,300101); -- New GUIDS
-- INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (300100,300000,0,0,0,0,0,1,1,0,2965.0762,-1436.3439,147.52826,5.340569,300,0,0,2215,0,0,0,0,0,'',0,0,'Hearthglen Target'),
-- (300101,300000,0,0,0,0,0,1,1,0,2969.5854,-1428.4607,147.94482,5.0387,300,0,0,2215,0,0,0,0,0,'',0,0,'Hearthglen Target');

-- DELETE FROM creature_template_model where CreatureID = 300000;
-- INSERT INTO `creature_template_model` (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`) VALUES 
-- (300000,0,16587,1,1,12340),
-- (300000,1,11686,1,1,12340);

-- Scarlet Paladin
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry`=1834;
UPDATE `creature` SET `orientation`=6.0268 WHERE `guid`= 48206; -- 3.70178
UPDATE `creature` SET `orientation`=6.0268 WHERE `guid`= 52004; -- 2.65929
UPDATE `creature` SET `orientation`=3.20812 WHERE `guid`= 51999; -- 6.17928
UPDATE `creature` SET `orientation`=1.69047 WHERE `guid`= 48615; -- 5.56162

UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (49593); -- 0
UPDATE `creature_addon` SET `bytes2`=2 WHERE `guid` IN (48615,51999);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-52000,-48598,-47976,-51644,-49418,-49996,-48206,-52004);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-52000,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-47976,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-51644,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-49418,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-49996,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-48598,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-52004,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H'),
(-48206,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Emote Attack 1H');
-- (-51999,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,11,29120,2,0,0,0,0,10,300100,300000,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Cast \'Shoot Bow\''),
-- (-48615,0,1001,0,1,0,100,512,5000,8000,3000,10000,0,0,11,29120,2,0,0,0,0,10,300101,300000,0,0,0,0,0,0,'Scarlet Paladin - Out of Combat - Cast \'Shoot Bow\'');


UPDATE `creature` SET `MovementType`=2 WHERE `guid`=48205;

UPDATE `creature_addon` SET `path_id`=482050 WHERE `guid` = 48205;

DELETE FROM `waypoint_data` WHERE `id`=482050;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(482050,1,2949.5835,-1472.7224,146.40868,0,0,0,0,100,0),
(482050,2,2922.4973,-1475.3088,146.25647,0,0,0,0,100,0),
(482050,3,2916.6814,-1472.9176,146.07965,0,0,0,0,100,0),
(482050,4,2910.54,-1454.6747,147.82056,0,0,0,0,100,0),
(482050,5,2917.3894,-1440.495,150.63872,0,0,0,0,100,0),
(482050,6,2936.0068,-1402.739,150.51987,4.23541,60000,0,0,100,0),
(482050,7,2917.3894,-1440.495,150.63872,0,0,0,0,100,0),
(482050,8,2910.54,-1454.6747,147.82056,0,0,0,0,100,0),
(482050,9,2916.8716,-1476.4086,146.17456,0,0,0,0,100,0),
(482050,10,2949.5835,-1472.7224,146.40868,0,0,0,0,100,0),
(482050,11,2981.87,-1421.38,146.276,2.98451,60000,0,0,100,0);


-- Scarlet Sentinel
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` = 1827;

UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (47892); -- 0


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-51745,-45396,-48624);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-51745,0,1001,0,1,0,100,512,4000,6000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Sentinel - Out of Combat - Emote Attack 1H'),
(-48624,0,1001,0,1,0,100,512,4000,6000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Sentinel - Out of Combat - Emote Attack 1H'),
(-45396,0,1001,0,1,0,100,512,4000,6000,3000,10000,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Sentinel - Out of Combat - Emote Attack 1H');


-- Scarlet Magus
UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (52244,51750,51998); -- 0


-- Scarlet Smith
UPDATE `creature` SET `position_x`=2990.86,`position_y`=-1458.58,`position_z`=146.273,`MovementType`=2 WHERE `guid`=61634;

DELETE FROM `creature_addon` WHERE `guid`=61634;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(61634,616340,0,0,0,0,"");

DELETE FROM `waypoint_data` WHERE `id`=616340;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(616340,1,2990.86,-1458.58,146.273,0,0,0,0,100,0),
(616340,2,2978.03,-1450.18,145.989,0,0,0,0,100,0),
(616340,3,2962.46,-1452.65,145.716,0,0,0,0,100,0),
(616340,4,2963.32,-1464.52,145.592,0,0,0,0,100,0),
(616340,5,2973.34,-1468.99,145.754,0,0,0,0,100,0),
(616340,6,2974.3,-1475.57,145.509,0,0,0,0,100,0),
(616340,7,2974.67,-1484.54,146.999,0,0,0,0,100,0),
(616340,8,2975.15,-1490.23,147.022,0,0,0,0,100,0),
(616340,9,2984.02,-1491.19,147.042,6.18384,20000,0,616340,100,0),
(616340,10,2974.94,-1498.83,147.042,3.80251,20000,0,616340,100,0),
(616340,11,2978.95,-1500.69,146.999,0,0,0,0,100,0),
(616340,12,2979.92,-1509.63,145.319,0,0,0,0,100,0),
(616340,13,2996.73,-1508.11,146.204,0,0,0,0,100,0),
-- 616340,14,3004.9,-1514.71,145.967,0,0,0,0,100,0),
(616340,14,3007.07,-1516.3286,146.35205,0,0,0,0,100,0),
(616340,15,3005.29,-1522.01,146.069,0,0,0,0,100,0),
(616340,16,2992.68,-1516.82,146.041,0,0,0,0,100,0),
(616340,17,2996.49,-1507.15,146.152,0,0,0,0,100,0),
(616340,18,3004.37,-1496.56,146.397,0,0,0,0,100,0),
-- (616340,19,3005.32,-1481.19,145.908,0,0,0,0,100,0),
(616340,19,3004.5803,-1491.5029,146.1186,0,0,0,0,100,0),
(616340,20,3008.27,-1470.62,146.531,0,0,0,0,100,0),
(616340,21,3002.19,-1461.06,146.273,0,0,0,0,100,0),
(616340,22,2998.02,-1460.04,145.81,0,0,0,0,100,0);

DELETE FROM `waypoint_scripts` WHERE `id`=616340;
INSERT INTO `waypoint_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`, `guid`) VALUES
(616340,1,1,69,1,0,0,0,0,0,616340),
(616340,18,1,0,1,0,0,0,0,0,616341);


-- Scarlet Lumberjack
DELETE FROM `smart_scripts` WHERE `entryorguid`=1884 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (1884,0,0,0,9,0,100,0,0,5,7000,11000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Lumberjack - Within 0-5 Range - Cast Cleave"),
-- (1884,0,1,0,0,0,100,0,8000,13000,17000,21000,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Lumberjack - In Combat - Cast Rend"),
(1884,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Lumberjack - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Scarlet Executioner
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=49765;

DELETE FROM `creature_addon` WHERE `guid`=49765;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(49765,497650,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id`=497650;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(497650,1,2827.0967,-1550.7257,186.29138,0,0,0,0,100,0),
(497650,2,2828.6094,-1556.0944,186.29138,0,0,0,0,100,0),
(497650,3,2834.0142,-1558.4801,186.29138,0,0,0,0,100,0),
(497650,4,2838.151,-1556.7421,186.29138,0,0,0,0,100,0),
(497650,5,2840.6758,-1551.8851,186.29138,0,0,0,0,100,0),
(497650,6,2839.434,-1546.8922,186.29138,0,0,0,0,100,0),
(497650,7,2834.515,-1544.2603,186.29138,0,0,0,0,100,0),
(497650,8,2830.0117,-1545.1587,186.29138,0,0,0,0,100,0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=1841 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (1841,0,0,0,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Executioner - Between 0-30% Health - Cast Enrage"),
-- (1841,0,1,0,9,0,100,0,0,5,9000,14000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Executioner - Within 0-5 Range - Cast Mortal Strike"),
-- (1841,0,2,0,9,0,100,0,0,5,5000,9000,11,15284,1,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Executioner - Within 0-5 Range - Cast Cleave"),
(1841,0,4,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Executioner - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Scarlet Judge
DELETE FROM `smart_scripts` WHERE `entryorguid`=1837 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (1837,0,0,0,9,0,100,0,0,5,7000,12000,11,14518,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Judge - Within 0-5 Range - Cast Crusader Strike"),
-- (1837,0,1,0,0,0,100,0,6000,8000,9000,14000,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Judge - In Combat - Cast Holy Strike"),
-- (1837,0,2,0,0,0,100,0,9000,14000,15000,18000,11,13005,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Judge - In Combat - Cast Hammer of Justice"),
(1837,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Judge - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Scarlet Cavalier
DELETE FROM `smart_scripts` WHERE `entryorguid`=1836 AND `source_type`=0 AND `id` IN (3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (1836,0,0,0,9,0,100,0,0,5,5000,9000,11,15284,1,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Cavalier - Within 0-5 Range - Cast Cleave"),
-- (1836,0,1,0,9,0,100,0,0,5,9000,14000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Cavalier - Within 0-5 Range - Cast Mortal Strike"),
-- (1836,0,2,0,0,0,100,0,6000,11000,12000,15000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Cavalier - In Combat - Cast Backhand"),
(1836,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Cavalier - Between 0-15% Health - Flee For Assist (No Repeat)"),
(1836,0,4,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scarlet Cavalier - On Aggro - Say Line 0");

DELETE FROM creature_text where CreatureID in (1836);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(1836,0,0,'You carry the taint of the Scourge.  Prepare to enter the Twisting Nether.',12,7,100,0,0,0,2625,0,'Scarlet Cavalier'),
(1836,0,1,'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.',12,7,100,0,0,0,2626,0,'Scarlet Cavalier'),
(1836,0,2,'The Light condemns all who harbor evil.  Now you will die!',12,7,100,0,0,0,2627,0,'Scarlet Cavalier'),
(1836,0,3,'The Scarlet Crusade shall smite the wicked and drive evil from these lands!',12,7,100,0,0,0,2628,0,'Scarlet Cavalier');


-- Scarlet Interrogator
UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (49330); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid`=1838 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1838,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Interrogator - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Foreman Jerris
UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (49768); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid`=1843 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (1843,0,0,0,9,0,100,0,0,5,9000,14000,11,15618,0,0,0,0,0,2,0,0,0,0,0,0,0,"Foreman Jerris - Within 0-5 Range - Cast Snap Kick"),
-- (1843,0,1,0,0,0,100,0,8000,12000,15000,20000,11,3391,2,0,0,0,0,2,0,0,0,0,0,0,0,"Foreman Jerris - In Combat - Cast Thrash"),
(1843,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Foreman Jerris - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Scarlet Worker
UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (46788); -- 0

UPDATE `creature_addon` SET `emote`=69 WHERE `guid` IN (48474,47174,48619,52252,49595,48193); -- Standing Working
UPDATE `creature_addon` SET `bytes1`=8 WHERE `guid` IN (48482); -- kneel


-- High Protector Lorik
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1846;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1846 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1846,0,0,0,13,0,100,1,1000,1000,0,0,11,15655,0,0,0,0,0,2,0,0,0,0,0,0,0,"High Protector Lorik - Target Casting - Cast Shield Slam (No Repeat)"),
(1846,0,1,0,9,0,100,0,0,5,7000,12000,11,10833,0,0,0,0,0,2,0,0,0,0,0,0,0,"High Protector Lorik - Within 0-5 Range - Cast Arcane Blast"),
(1846,0,2,0,11,0,100,0,0,0,0,0,11,8990,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Protector Lorik - On Respawn - Cast Retribution Aura"),
(1846,0,3,0,0,0,100,0,16000,21000,18000,21000,11,13874,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Protector Lorik - In Combat - Cast Divine Shield"),
(1846,0,4,0,14,0,100,1,1300,40,0,0,11,15493,1,0,0,0,0,7,0,0,0,0,0,0,0,"High Protector Lorik - On Friendly Between 0-40% Health - Cast Holy Light"),
(1846,0,5,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Protector Lorik - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Foreman Marcrid
UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (49769);

DELETE FROM `smart_scripts` WHERE `entryorguid`=1844 AND `source_type`=0 AND `id` IN (2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (1844,0,0,0,9,0,100,0,0,5,5000,8000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,"Foreman Marcrid - Within 0-5 Range - Cast Strike"),
-- (1844,0,1,0,9,0,100,0,0,5,9000,12000,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,"Foreman Marcrid - Within 0-5 Range - Cast Cleave"),
(1844,0,2,0,2,0,100,1,0,20,0,0,39,40,1,0,0,0,0,1,0,0,0,0,0,0,0,"Foreman Marcrid - Between 0-20% Health - Call For Help (No Repeat)"),
(1844,0,3,0,0,0,100,0,4000,10000,17000,20000,11,16583,0,0,0,0,0,2,0,0,0,0,0,0,0,'Foreman Marcrid - Cast Shadow Shock');

DELETE FROM `creature` where `guid` in (300499,300500);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300499,1844,0,0,0,0,0,1,1,1,2455.286,-1663.632,103.632,2.632,72000,5,0,3876,0,1,0,0,0,'',0,0,NULL),
(300500,1844,0,0,0,0,0,1,1,1,2387.886,-1504.639,101.629,3.332,72000,5,0,3876,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `pool_creature` where `pool_entry` = 49769;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(49769,49769,0,'Foreman Marcrid (49769)'),
(300499,49769,0,'Foreman Marcrid (300499)'),
(300500,49769,0,'Foreman Marcrid (300500)');

DELETE FROM `pool_template` where `entry` = 49769;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(49769,1,'Foreman Marcrid Pool');


-- High Protector Tarsen
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1845;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1845 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1845,0,0,0,13,0,100,1,1000,1000,0,0,11,8242,0,0,0,0,0,2,0,0,0,0,0,0,0,"High Protector Tarsen - Target Casting - Cast Shield Slam (No Repeat)"),
(1845,0,1,0,9,0,100,0,0,5,12000,16000,11,10833,0,0,0,0,0,2,0,0,0,0,0,0,0,"High Protector Tarsen - Within 0-5 Range - Cast Arcane Blast"),
(1845,0,2,0,9,0,100,0,0,5,8000,11000,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,"High Protector Tarsen - Within 0-5 Range - Cast Holy Strike"),
(1845,0,3,0,0,0,100,0,1000,3000,240000,240000,11,8258,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Protector Tarsen - In Combat - Cast Devotion Aura"),
(1845,0,4,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Protector Tarsen - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Cavalier Durgen
DELETE FROM `smart_scripts` WHERE `entryorguid`=11611 AND `source_type`=0 AND `id` IN (2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (11611,0,0,0,0,0,100,0,6000,8000,9000,14000,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cavalier Durgen - In Combat - Cast Holy Strike"),
-- (11611,0,1,0,0,0,100,0,9000,14000,15000,18000,11,13005,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cavalier Durgen - In Combat - Cast Hammer of Justice"),
(11611,0,2,0,11,0,100,0,0,0,0,0,11,13008,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cavalier Durgen - On Respawn - Cast Retribution Aura"),
(11611,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cavalier Durgen - Between 0-15% Health - Flee For Assist (No Repeat)"),
(11611,0,4,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cavalier Durgen - On Aggro - Say Line 0");

DELETE FROM creature_text where CreatureID in (11611);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(11611,0,0,'You carry the taint of the Scourge.  Prepare to enter the Twisting Nether.',12,7,100,0,0,0,2625,0,'Cavalier Durgen'),
(11611,0,1,'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.',12,7,100,0,0,0,2626,0,'Cavalier Durgen'),
(11611,0,2,'The Light condemns all who harbor evil.  Now you will die!',12,7,100,0,0,0,2627,0,'Cavalier Durgen'),
(11611,0,3,'The Scarlet Crusade shall smite the wicked and drive evil from these lands!',12,7,100,0,0,0,2628,0,'Cavalier Durgen');


-- Huntsman Radley
DELETE FROM `smart_scripts` WHERE `entryorguid`=11613 AND `source_type`=0 AND `id` IN (2,3,4,5);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (11613,0,0,0,9,0,100,0,5,30,9000,12000,11,14443,0,0,0,0,0,5,0,0,0,0,0,0,0,"Huntsman Radley - Within 5-30 Range - Cast Multi-Shot"),
-- (11613,0,1,0,9,0,100,0,0,5,5000,8000,11,11976,1,0,0,0,0,2,0,0,0,0,0,0,0,"Huntsman Radley - Within 0-5 Range - Cast Strike"),
(11613,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huntsman Radley - Between 0-15% Health - Flee For Assist (No Repeat)"),
(11613,0,3,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Huntsman Radley - In Combat CMC - Cast Shoot"),
(11613,0,4,0,1,0,100,1,1000,1000,0,0,11,18262,0,0,0,0,0,1,0,0,0,0,0,0,0,"Huntsman Radley - On Respawn - Cast Call Bloodshot"),
(11613,0,5,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Huntsman Radley - On Aggro - Say Line 0");

DELETE FROM creature_text where CreatureID in (11613);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(11613,0,0,'You carry the taint of the Scourge.  Prepare to enter the Twisting Nether.',12,7,100,0,0,0,2625,0,'Huntsman Radley'),
(11613,0,1,'There is no escape for you.  The Crusade shall destroy all who carry the Scourge\'s taint.',12,7,100,0,0,0,2626,0,'Huntsman Radley'),
(11613,0,2,'The Light condemns all who harbor evil.  Now you will die!',12,7,100,0,0,0,2627,0,'Huntsman Radley'),
(11613,0,3,'The Scarlet Crusade shall smite the wicked and drive evil from these lands!',12,7,100,0,0,0,2628,0,'Huntsman Radley');
/*
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-58451);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-58451,0,0,0,1,0,100,512,2000,2000,6000,6000,0,0,11,29120,2,0,0,0,0,10,58455,16897,0,0,0,0,0,0,'Honor Hold Archer - Out of Combat - Cast \'Shoot Bow\' (Phase 8)');

-- Practicing Guard
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=4951;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4951) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4951,0,0,0,25,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,19,4952,0,0,0,0,0,0,"Theramore Practicing Guard - On Reset - Start Attacking");

-- Theramore Combat Dummy
UPDATE `creature_template` SET `ScriptName`="npc_training_dummy" WHERE `entry`=4952;



INSERT INTO `` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(58153,0,0,0,1,69,0,NULL); -- Fixing standing


(58153,0,0,0,1,36,0,NULL); -- attacking one hand
52000
48598

51745
(69640,0,0,8,1,0,0,NULL); -- kneel

(69482,0,0,0,1,173,0,'18950'); -- Mallet blacksmithing

(69482,0,0,0,1,234,0,NULL); -- log chopping


*/