-- Colossus of Ashi pathing
SET @NPC := 15742;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -6497.195801, 1021.785889, 0.376532, 4.003111, 0, 0, 0, 100, 0),
(@PATH, 2, -6540.536133, 985.638306, 0.376532, 3.593430, 0, 0, 0, 100, 0),
(@PATH, 3, -6610.057617, 924.652832, 0.373520, 3.076638, 0, 0, 0, 100, 0),
(@PATH, 4, -6669.620117, 922.713989, -0.686892, 3.683748, 0, 0, 0, 100, 0),
(@PATH, 5, -6704.018555, 899.425293, -1.393676, 4.236665, 0, 0, 0, 100, 0),
(@PATH, 6, -4953.628418, -1206.568237, 501.659943, 5.093306, 0, 0, 0, 100, 0),
(@PATH, 7, -4944.017578, -1226.812378, 501.659241, 4.541171, 0, 0, 0, 100, 0),
(@PATH, 8, -4951.852051, -1236.240234, 501.664520, 3.806038, 0, 0, 0, 100, 0),
(@PATH, 9, -4944.017578, -1226.812378, 501.659241, 4.541171, 0, 0, 0, 100, 0),
(@PATH, 10, -4953.628418, -1206.568237, 501.659943, 5.093306, 0, 0, 0, 100, 0),
(@PATH, 11, -6704.018555, 899.425293, -1.393676, 4.236665, 0, 0, 0, 100, 0),
(@PATH, 12, -6669.620117, 922.713989, -0.686892, 3.683748, 0, 0, 0, 100, 0),
(@PATH, 13, -6610.057617, 924.652832, 0.373520, 3.076638, 0, 0, 0, 100, 0),
(@PATH, 14, -6540.536133, 985.638306, 0.376532, 3.593430, 0, 0, 0, 100, 0),
(@PATH, 15, -6497.195801, 1021.785889, 0.376532, 4.003111, 0, 0, 0, 100, 0);

-- Officer Maloof Stormwind
DELETE FROM `creature` where `guid` in (300089);


-- General Zog <Horde Ambassador>
DELETE FROM `creature` where `guid` in (300090);

UPDATE `creature_template` SET `HealthModifier`=5,`AIName`="",`npcflag`=0,`gossip_menu_id`=0,`ScriptName`="" WHERE `entry`=15539;

DELETE FROM `creature_text` where CreatureID = 15539 AND `GroupID` = 0  AND `ID` = 0;

-- DELETE FROM `smart_scripts` WHERE `entryorguid`=15539 AND `source_type`=0;

DELETE FROM `gossip_menu` WHERE `MenuID`=15539 AND `TextID`=7942;

DELETE FROM `gossip_menu_option` where `MenuID` = 15539;

-- Commander Stronghammer <Alliance Ambassador>
DELETE FROM `creature` where `guid` in (300091);

UPDATE `creature_template` SET `HealthModifier`=5,`npcflag`=0`gossip_menu_id`=0,`ScriptName`="" WHERE `entry`=15458;

DELETE FROM `gossip_menu` WHERE `MenuID`=15458 AND `TextID`=7949;

DELETE FROM `gossip_menu_option` where MenuID = 15458;


-- Ironforge Guards by General Zog
DELETE FROM `creature` where `guid` in (3115494,3115495);


-- Orgrimmar Guards by Commander Stronghammer
DELETE FROM `creature` where `guid` in (3115496,3115497);


-- Master Nightsong
UPDATE `creature` SET `position_x` = -4942.68,`position_y` = -1284.58,`position_z` = 501.674 WHERE `guid` in (3115457);


-- Sergeant Major Germaine
UPDATE `creature` SET `position_x` = -4944.6,`position_y` = -1283.01,`position_z` = 501.674 WHERE `guid` in (3115458);


-- Sentinel Silversky
UPDATE `creature` SET `position_x` = -4970.42,`position_y` = -1152.78,`position_z` = 501.658,`orientation` = 3.61236 WHERE `guid` in (3115443);


-- Nurse Stonefield
UPDATE `creature` SET `position_x` = -4971.47,`position_y` = -1150.77,`position_z` = 501.655,`orientation` = 3.5888 WHERE `guid` in (3115444);


-- Keeper Moonshade
UPDATE `creature` SET `position_x` = -4974.99,`position_y` = -1149.58,`position_z` = 501.649,`orientation` = 4.06239 WHERE `guid` in (3115445);


-- Martha Finespindle
UPDATE `creature` SET `position_x` = -4965.87,`position_y` = -1174.28,`position_z` = 501.648,`orientation` = 3.79535 WHERE `guid` in (3115449);


-- Private Porter
UPDATE `creature` SET `position_x` = -4960.88,`position_y` = -1175.1,`position_z` = 501.66,`orientation` = 3.82756 WHERE `guid` in (3115448);


-- Bonnie Stoneflayer
UPDATE `creature` SET `position_x` = -4959.54,`position_y` = -1176.73,`position_z` = 501.66,`orientation` = 3.66733 WHERE `guid` in (3115446);


-- Exodar Commendation Officer
UPDATE `creature` SET `position_x` = -4946.71,`position_y` = -1206.24,`position_z` = 501.658,`orientation` = 5.19933 WHERE `guid` in (3115493);


-- Ironforge Commendation Officer
UPDATE `creature` SET `position_x` = -4943.13,`position_y` = -1204.78,`position_z` = 501.658,`orientation` = 4.62712 WHERE `guid` in (3115492);


-- Gnomeregan Commendation Officer
UPDATE `creature` SET `position_x` = -4936.65,`position_y` = -1209.73,`position_z` = 501.658,`orientation` = 3.95796 WHERE `guid` in (3115490);


-- Darnassus Commendation Officer
UPDATE `creature` SET `position_x` = -4938.75,`position_y` = -1206.29,`position_z` = 501.658,`orientation` = 4.03146 WHERE `guid` in (3115489);


-- Grunt Maug
UPDATE `creature` SET `position_x` = 1657.41,`position_y` = -4112.72,`position_z` = 33.7797,`orientation` = 1.90117 WHERE `guid` in (3115470);


-- Senior Sergeant T'kelah
UPDATE `creature` SET `position_x` = 1669.59,`position_y` = -4117.64,`position_z` = 35.6868,`orientation` = 2.63395 WHERE `guid` in (3115471);


-- Miner Cromwell
UPDATE `creature` SET `position_x` = 1671.67,`position_y` = -4107.41,`position_z` = 36.0965,`orientation` = 3.85839 WHERE `guid` in (3115472);


-- Undercity Commendation Officer
UPDATE `creature` SET `position_x` = 1598.27,`position_y` = -4090.5,`position_z` = 35.8736,`orientation` = 5.13568 WHERE `guid` in (3115485);


-- Darkspear Commendation Officer
UPDATE `creature` SET `position_x` = 1595.6,`position_y` = -4091.94,`position_z` = 35.8097,`orientation` = 5.20323 WHERE `guid` in (3115484);


-- Thunder Bluff Commendation Officer
UPDATE `creature` SET `position_x` = 1592.84,`position_y` = -4094.01,`position_z` = 35.6404,`orientation` = 5.82527 WHERE `guid` in (3115483);


-- Orgrimmar Commendation Officer
UPDATE `creature` SET `position_x` = 1592.17,`position_y` = -4097.91,`position_z` = 34.9759,`orientation` = 6.25645 WHERE `guid` in (3115482);


-- AQ War Effort Event
UPDATE `game_event` SET `length`=1 WHERE `eventEntry`=22; -- 1

DELETE FROM game_event_creature where eventEntry in (-22,22)
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES 
(22,38),
(22,2032),
(22,6519),
(22,6520),
(22,25997),
(22,32076),
(22,46803),
(22,76747),
(22,85607);

-- Restore AQWar Alliance Resources
DELETE FROM `gameobject` where `id` in (180679,180680,180681,180598);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(29294,180598,0,0,0,1,1,-4971.55,-1148.57,501.648,2.28638,0,0,0.909961,0.414693,180,100,1,'',0,NULL),
(29299,180681,0,0,0,1,1,-4958.51,-1179.32,501.659,2.26893,0,0,0.906308,0.422618,180,100,1,'',0,NULL),
(29300,180680,0,0,0,1,1,-4913.85,-1226,501.651,2.25148,0,0,0.902585,0.430511,180,100,1,'',0,NULL),
(29301,180679,0,0,0,1,1,-4937.29,-1282.74,501.672,2.26893,0,0,0.906308,0.422618,180,100,1,'',0,NULL);


-- AQ War Event (10 Hour)
DELETE FROM game_event where eventEntry = 151

DELETE FROM game_event_creature where eventEntry in (151)

DELETE FROM game_event_gameobject where eventEntry in (151)




