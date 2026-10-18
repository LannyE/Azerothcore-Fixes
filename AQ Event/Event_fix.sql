-- New GUID: 300089,300090,300091 - Removed 8-23-25

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
(@PATH, 6, -6669.620117, 922.713989, -0.686892, 3.683748, 0, 0, 0, 100, 0),
(@PATH, 7, -6610.057617, 924.652832, 0.373520, 3.076638, 0, 0, 0, 100, 0),
(@PATH, 8, -6540.536133, 985.638306, 0.376532, 3.593430, 0, 0, 0, 100, 0),
(@PATH, 9, -6497.195801, 1021.785889, 0.376532, 4.003111, 0, 0, 0, 100, 0);


-- Officer Maloof Stormwind <Stormwind Commendations>
DELETE FROM `creature` where `guid` in (300089);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300089,15766,0,0,0,0,0,1,1,0,-8863.8955,635.9197,96.09485,2.0084,300,0,0,2614,0,0,0,0,0,'',0,0,NULL);
 
-- General Zog <Horde Ambassador> (Missing his two ironforge guards - saw it in a video)
DELETE FROM `creature` where `guid` in (300090);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (300090,15539,0,0,0,0,0,1,1,0,-4984.652,-1206.0295,501.67065,3.85097,300,0,0,30520,0,0,0,0,0,'',0,0,NULL);
(300090,15539,0,0,0,0,0,1,1,0,-4981.0186,-1218.8384,501.6724,3.83282,300,0,0,30520,0,0,0,0,0,'',0,0,NULL);

UPDATE `creature_template` SET `HealthModifier`=10,`AIName`="",`npcflag`=3,`gossip_menu_id`=15539,`ScriptName`="npc_mod_war_effort_quartermaster" WHERE `entry`=15539; -- SmartAI

DELETE FROM `creature_text` where CreatureID = 15539 AND `GroupID` = 0  AND `ID` = 0;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(15539,0,0,'%s acknowledges your obeisance and then waves dismissively at you.',16,0,100,1,0,0,11206,0,'General Zog <Horde Ambassador>');

DELETE FROM `smart_scripts` WHERE `entryorguid`=15539 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1553900 AND `source_type`=9;
-- INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (15539,0,0,0,22,0,100,0,59,6000,6000,0,80,1553900,0,0,0,0,0,1,0,0,0,0,0,0,0,"General Zog <Horde Ambassador> - On Emote Received (Kneel) - Run Script"), -- Player emote for kneel is 59 Emotetext.dbc has the real values in the ID column

-- (1553900,9,0,0,00,0,100,0,2000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"General Zog <Horde Ambassador> - On Script - Say Line 0");

DELETE FROM `gossip_menu` WHERE `MenuID`=15539 AND `TextID`=7942;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(15539,7942);

DELETE FROM `gossip_menu_option` where `MenuID` = 15539;
INSERT INTO `gossip_menu_option` (`MenuID`,`OptionID`,`OptionIcon`,`OptionText`,`OptionBroadcastTextID`,`OptionType`,`OptionNpcFlag`,`ActionMenuID`,`ActionPoiID`,`BoxCoded`,`BoxMoney`,`BoxText`,`BoxBroadcastTextID`,`VerifiedBuild`) VALUES 
(15539,0,0,'How many metal bars have the Horde collected so far?',0,1,2,0,0,0,0,'',0,0),
(15539,1,0,'How many herbs have the Horde collected so far?',0,1,2,0,0,0,0,'',0,0),
(15539,2,0,'How many leather skins have the Horde collected so far?',0,1,2,0,0,0,0,'',0,0),
(15539,3,0,'How many bandages have the Horde collected so far?',0,1,2,0,0,0,0,'',0,0),
(15539,4,0,'How many cooked goods have the Horde collected so far?',0,1,2,0,0,0,0,'',0,0);


-- Commander Stronghammer <Alliance Ambassador>
DELETE FROM `creature` where `guid` in (300091);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300091,15458,0,0,1,0,0,1,1,0,1627.578,-4121.1357,31.31671,2.01298,300,0,0,30520,0,0,0,0,0,'',0,0,NULL);

UPDATE `creature_template` SET `HealthModifier`=10,`npcflag`=3,`gossip_menu_id`=15458,`ScriptName`="npc_mod_war_effort_quartermaster" WHERE `entry`=15458;

DELETE FROM `gossip_menu` WHERE `MenuID`=15458 AND `TextID`=7949;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(15458,7949);

DELETE FROM `gossip_menu_option` where MenuID = 15458;
INSERT INTO `gossip_menu_option` (`MenuID`,`OptionID`,`OptionIcon`,`OptionText`,`OptionBroadcastTextID`,`OptionType`,`OptionNpcFlag`,`ActionMenuID`,`ActionPoiID`,`BoxCoded`,`BoxMoney`,`BoxText`,`BoxBroadcastTextID`,`VerifiedBuild`) VALUES 
(15458,0,0,'How many metal bars have the Alliance collected so far?',0,1,2,0,0,0,0,'',0,0),
(15458,1,0,'How many herbs have the Alliance collected so far?',0,1,2,0,0,0,0,'',0,0),
(15458,2,0,'How many leather skins have the Alliance collected so far?',0,1,2,0,0,0,0,'',0,0),
(15458,3,0,'How many bandages have the Alliance collected so far?',0,1,2,0,0,0,0,'',0,0),
(15458,4,0,'How many cooked goods have the Alliance collected so far?',0,1,2,0,0,0,0,'',0,0);

-- Ironforge Guards by General Zog
DELETE FROM `creature` where `guid` in (3115494,3115495);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(3115494,5595,0,0,0,0,0,1,1,1,-4979.258,-1221.331,501.6736,3.84494,300,0,0,15952,0,0,0,0,0,'',0,0,NULL),
(3115495,5595,0,0,0,0,0,1,1,1,-4983.2573,-1216.708,501.672,3.84494,300,0,0,15952,0,0,0,0,0,'',0,0,NULL);

-- Orgrimmar Guards by Commander Stronghammer
DELETE FROM `creature` where `guid` in (3115496,3115497);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(3115496,3296,0,0,1,0,0,1,1,1,1624.6444,-4121.7305,31.3029,2.013,300,0,0,15952,0,0,0,0,0,'',0,0,NULL),
(3115497,3296,0,0,1,0,0,1,1,1,1629.8635,-4119.0884,31.38785,2.013,300,0,0,15952,0,0,0,0,0,'',0,0,NULL);


-- Master Nightsong
UPDATE `creature` SET `position_x` = -4940.135,`position_y` = -1283.6667,`position_z` = 501.6731 WHERE `guid` in (3115457);


-- Sergeant Major Germaine
UPDATE `creature` SET `position_x` = -4944.9575,`position_y` = -1282.8595,`position_z` = 501.72513 WHERE `guid` in (3115458);


-- Sentinel Silversky
UPDATE `creature` SET `position_x` = -4971.377,`position_y` = -1151.1904,`position_z` = 501.65485,`orientation` = 3.542455 WHERE `guid` in (3115443);


-- Nurse Stonefield
UPDATE `creature` SET `position_x` = -4979.3076,`position_y` = -1149.654,`position_z` = 501.65036,`orientation` = 3.7121 WHERE `guid` in (3115444);


-- Keeper Moonshade
UPDATE `creature` SET `position_x` = -4979.563,`position_y` = -1143.0361,`position_z` = 501.65814,`orientation` = 4.06217 WHERE `guid` in (3115445);


-- Martha Finespindle
UPDATE `creature` SET `position_x` = -4968.8916,`position_y` = -1180.268,`position_z` = 501.6587,`orientation` = 3.393 WHERE `guid` in (3115449);


-- Private Porter
UPDATE `creature` SET `position_x` = -4966.7515,`position_y` = -1175.8148,`position_z` = 501.65503,`orientation` = 3.2312 WHERE `guid` in (3115448);


-- Bonnie Stoneflayer
UPDATE `creature` SET `position_x` = -4973.327,`position_y` = -1168.8007,`position_z` = 501.63843,`orientation` = 3.1338 WHERE `guid` in (3115446);


-- Exodar Commendation Officer
UPDATE `creature` SET `position_x` = -4932.827,`position_y` = -1209.1411,`position_z` = 501.65137,`orientation` = 3.0801 WHERE `guid` in (3115493);


-- Ironforge Commendation Officer
UPDATE `creature` SET `position_x` = -4977.2715,`position_y` = -1196.445,`position_z` = 501.66336,`orientation` = 2.23739 WHERE `guid` in (3115492);


-- Gnomeregan Commendation Officer
UPDATE `creature` SET `position_x` = -4953.0938,`position_y` = -1176.61,`position_z` = 501.56387,`orientation` = 5.414235 WHERE `guid` in (3115490);


-- Darnassus Commendation Officer
UPDATE `creature` SET `position_x` = -4934.9365,`position_y` = -1198.7731,`position_z` = 501.55798,`orientation` = 2.4002 WHERE `guid` in (3115489);




-- Grunt Maug
UPDATE `creature` SET `position_x` = 1669.881,`position_y` = -4115.3057,`position_z` = 35.65027,`orientation` = 2.05787 WHERE `guid` in (3115470);


-- Senior Sergeant T'kelah
UPDATE `creature` SET `position_x` = 1659.7424,`position_y` = -4115.12,`position_z` = 33.78049,`orientation` = 1.801 WHERE `guid` in (3115471);


-- Miner Cromwell
UPDATE `creature` SET `position_x` = 1653.5845,`position_y` = -4118.784,`position_z` = 32.6226,`orientation` = 1.9602 WHERE `guid` in (3115472);


-- Undercity Commendation Officer
UPDATE `creature` SET `position_x` = 1666.5562,`position_y` = -4105.336,`position_z` = 35.74536,`orientation` = 1.9326 WHERE `guid` in (3115485);


-- Darkspear Commendation Officer
UPDATE `creature` SET `position_x` = 1618.072,`position_y` = -4101.836,`position_z` = 33.1009,`orientation` = 5.1709 WHERE `guid` in (3115484);


-- Thunder Bluff Commendation Officer
UPDATE `creature` SET `position_x` = 1602.437,`position_y` = -4144.1567,`position_z` = 34.2649,`orientation` = 2.2837 WHERE `guid` in (3115483);


-- Orgrimmar Commendation Officer
UPDATE `creature` SET `position_x` = 1584.6544,`position_y` = -4113.5957,`position_z` = 33.5595,`orientation` = 5.25327 WHERE `guid` in (3115482);


-- AQ War Effort Event
UPDATE `game_event` SET `length`=2592000 WHERE `eventEntry`=22; -- 1

DELETE FROM game_event_creature where eventEntry in (-22,22);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES 
(-22,38),
(-22,2032),
(-22,6519),
(-22,6520),
(-22,25997),
(-22,32076),
(-22,46803),
(-22,76747),
(-22,85607),
(-22,207209),  -- Gnome citizen by metal area
(-22,300089),

(22,3115452),
(22,3115450),
(22,3115451),
(22,3115453),
(22,3115457),
(22,3115458),
(22,3115446),
(22,3115448),
(22,3115449),
(22,3115443),
(22,3115444),
(22,3115445),
(22,3115442),
(22,3115441),
(22,3115440),
(22,3115472),
(22,3115470),
(22,3115471),
(22,3115467),
(22,3115468),
(22,3115469),
(22,3115473),
(22,3115475),
(22,3115474),
(22,3115461),
(22,3115462),
(22,3115463),
(22,3115464),
(22,3115466),
(22,3115465),
(22,3115502),
(22,3115499),
(22,3115489),
(22,3115490),
(22,3115492),
(22,3115491),
(22,3115482),
(22,3115484),
(22,3115485),
(22,3115483),
(22,3115486),
(22,3115493),
(22,3115494),
(22,3115495),
(22,3115496),
(22,3115497),
(22,300090),
(22,300091);

/*
DELETE FROM game_event_gameobject where eventEntry in (22);  
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(22,29294), -- AQWar - Resource, Bandages, Alliance, Initial 180598
(22,29299), -- AQWar - Resource, Skins, Alliance, Initial 180681
(22,29300), -- AQWar - Resource, Bars, Alliance, Initial 180680
(22,29301); -- AQWar - Resource, Cooking/Herbs, Alliance Initial 180679
*/
DELETE FROM `gameobject` where `id` in (180679,180680,180681,180598);

-- AQ War Event (10 Hour)
DELETE FROM game_event where eventEntry = 151;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES 
(151,'2000-01-01 14:00:00','2000-01-01 14:00:00',525600,600,0,0,'AQ War Event',0,2);

DELETE FROM game_event_creature where eventEntry in (151);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(151,311617),
(151,311616),
(151,311615),
(151,311618),
(151,311619),
(151,311620),
(151,311621),
(151,311623),
(151,311624),
(151,311625),
(151,311626),
(151,311628),
(151,311629),
(151,311630),
(151,311631),
(151,311600),
(151,311601),
(151,311602),
(151,311603),
(151,311605),
(151,311606),
(151,311607),
(151,311608),
(151,311610),
(151,311611),
(151,311612),
(151,311613),
(151,311604),
(151,311609),
(151,311614),
(151,311622),
(151,311627),
(151,311632);


DELETE FROM game_event_gameobject where eventEntry in (151);
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(151,105000),
(151,105001),
(151,105002),
(151,105003),
(151,105004),
(151,105005);

