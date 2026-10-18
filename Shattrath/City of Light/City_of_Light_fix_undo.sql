/*
Fix City of Light Quest in Shattrath 3-26-26
Convert to SAI from Core code in zone_shattrath_city.cpp
Must comment out "npc_kservant" script in the cpp file. 

*/

-- A'dal
UPDATE `quest_template_addon` SET `SourceSpellID` = 34444 WHERE `ID` = 10211; -- 34444 -- Spell 34444 is used by player after 34445

UPDATE `smart_scripts` SET `target_type` = 12, `target_param1` = 1 WHERE `entryorguid` = 1848100 AND `source_type` = 9 AND `id` IN (0,1,2,3); -- 12 1
UPDATE `smart_scripts` SET `comment` = "A Dal - Script - Say Line 2 on Kael\'thas Sunstrider" WHERE `entryorguid` = 1848100 AND `source_type` = 9 AND `id` IN (9); -- A Dal - Script - Say Line 2 on Kael\'thas Sunstrider

DELETE FROM `smart_scripts` WHERE `entryorguid` = 18481 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1848101 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18481,0,0,0,1,0,100,0,0,0,7200000,7200000,0,0,11,35076,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'A\'dal - Out of Combat - Cast \'Blessing of A\'dal\''),
(18481,0,1,0,19,0,100,0,13082,0,0,0,0,0,11,53141,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'A\'dal - On Quest \'The Boon of A\'dal\' Taken - Cast \'Portal Effect: Dalaran\''),
(18481,0,2,0,20,0,100,0,10210,0,0,0,0,0,1,0,0,0,0,0,0,19,18166,0,0,0,0,0,0,0,'A\'dal - On Quest Reward (A\'DAL) - Say line 0 on Khadgar'),
(18481,0,3,4,20,0,100,512,11007,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'A Dal - On Quest Reward 11007 - Store Targetlist'),
(18481,0,4,5,61,0,100,512,0,0,0,0,0,0,80,1848100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'A Dal - On Quest Reward 11007 - Run Script'),
(18481,0,5,0,61,0,100,512,0,0,0,0,0,0,237,39953,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'A Dal - On Quest Reward 11007 - Run World State Script Event 39953');


-- Khadgar
DELETE FROM `smart_scripts` WHERE `entryorguid` = 18166 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1816600 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18166,0,0,0,19,0,100,0,10211,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Khadgar - On Quest Accept (City of Lights) - Say Line 1');


-- Khadgar's Servant
UPDATE `creature_template` SET `AIName` = "", `ScriptName` = "npc_kservant" WHERE `entry` = 19685; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 19685 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1968500,1968501,1968502,1968503,1968504,1968505,1968506) AND `source_type` = 9;

DELETE FROM `script_waypoint` WHERE `entry` = 19685;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES 
(19685,0,-1863.37,5419.52,-10.4637,5000,''),
(19685,1,-1861.75,5416.47,-10.5081,0,''),
(19685,2,-1857.04,5410.97,-12.428,0,''),
(19685,3,-1831.54,5365.47,-12.428,0,''),
(19685,4,-1813.42,5333.78,-12.428,0,''),
(19685,5,-1800.35,5313.29,-12.428,0,''),
(19685,6,-1775.62,5268.79,-38.8092,0,''),
(19685,7,-1770.15,5259.27,-38.8292,0,''),
(19685,8,-1762.81,5261.1,-38.849,0,''),
(19685,9,-1740.11,5268.86,-40.209,0,''),
(19685,10,-1725.84,5270.94,-40.209,0,''),
(19685,11,-1701.58,5290.32,-40.2092,0,''),
(19685,12,-1682.88,5291.41,-34.4296,0,''),
(19685,13,-1670.1,5291.2,-32.786,0,''),
(19685,14,-1656.67,5294.33,-37.8626,0,''),
(19685,15,-1652.04,5295.41,-40.2455,0,''),
(19685,16,-1620.86,5300.13,-40.209,0,''),
(19685,17,-1607.63,5293.98,-38.577,5000,''),
(19685,18,-1607.63,5293.98,-38.577,5000,''),
(19685,19,-1607.63,5293.98,-38.577,5000,''),
(19685,20,-1622.14,5301.96,-40.2089,0,''),
(19685,21,-1621.13,5333.11,-40.2089,0,''),
(19685,22,-1637.6,5342.13,-40.2088,0,''),
(19685,23,-1648.52,5352.31,-47.4962,0,''),
(19685,24,-1654.61,5357.42,-45.8709,0,''),
(19685,25,-1633.67,5422.07,-42.8355,0,''),
(19685,26,-1656.57,5426.24,-40.4058,0,''),
(19685,27,-1664.93,5425.69,-38.8464,0,''),
(19685,28,-1681.41,5425.87,-38.8109,0,''),
(19685,29,-1730.88,5427.41,-12.4279,0,''),
(19685,30,-1743.51,5369.6,-12.4279,0,''),
(19685,31,-1877.22,5303.71,-12.428,0,''),
(19685,32,-1890.37,5289.27,-12.4283,0,''),
(19685,33,-1905.51,5266.53,2.63067,0,''),
(19685,34,-1909.38,5273.01,1.66371,10000,''),
(19685,35,-1909.38,5273.01,1.66371,12000,''),
(19685,36,-1909.38,5273.01,1.66371,8000,''),
(19685,37,-1909.38,5273.01,1.66371,15000,''),
(19685,38,-1927.56,5275.32,1.98499,0,''),
(19685,39,-1927.39,5300.88,-12.4272,0,''),
(19685,40,-1921.06,5314.32,-12.4272,0,''),
(19685,41,-1965.43,5379.3,-12.4272,0,''),
(19685,42,-1981.23,5450.74,-12.4272,0,''),
(19685,43,-1958.02,5455.9,0.487659,0,''),
(19685,44,-1951.99,5463.58,0.87449,10000,''),
(19685,45,-1951.99,5463.58,0.87449,12000,''),
(19685,46,-1968.73,5481.75,-12.4278,0,''),
(19685,47,-1881.84,5554.04,-12.4278,0,''),
(19685,48,-1841.57,5545.97,-12.4278,0,''),
(19685,49,-1837.66,5523.78,0.558756,0,''),
(19685,50,-1831.32,5534.82,1.22182,6000,''),
(19685,51,-1831.32,5534.82,1.22182,8000,''),
(19685,52,-1831.32,5534.82,1.22182,5000,''),
(19685,53,-1850.06,5472.61,0.85732,6000,''),
(19685,54,-1850.06,5472.61,0.85732,8000,''),
(19685,55,-1850.06,5472.61,0.85732,9000,''),
(19685,56,-1850.06,5472.61,0.85732,9000,''),
(19685,57,-1850.06,5472.61,0.85732,4000,'');

-- DELETE FROM `waypoints` WHERE `entry` = 19685;
DELETE FROM `waypoint_data` where `id` in (196850);

UPDATE `creature_text` SET `comment` = "kservant SAY_KHAD_SERV" WHERE `CreatureID` = 19685;


-- Haggard War Veteran -- TODO His text seems to show he also sits around just talking randomly one of them must be near the orphans and market in lower city
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 19684; -- ""

DELETE FROM `creature` WHERE `guid` IN (150145,150146,150147);

DELETE FROM `creature_addon` WHERE `guid` IN (150145,150146,150147);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4426 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 19684 AND `source_type` = 0;

DELETE FROM `waypoint_data` WHERE `id` IN (701770,1501450,1501460,1501470);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(701770,1,-1560.23,5327.7,11.5864,NULL,20000,0,0,100,0),
(701770,2,-1596.7,5340.36,17.2558,NULL,0,0,0,100,0),
(701770,3,-1638.51,5354.75,15.8854,NULL,0,0,0,100,0),
(701770,4,-1685.49,5370.25,7.72029,NULL,20000,0,0,100,0),
(701770,5,-1638.67,5354.71,15.8777,NULL,0,0,0,100,0),
(701770,6,-1596.5,5340.39,17.2532,NULL,0,0,0,100,0);

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4426;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4426 AND `SourceId` = 2;

DELETE FROM `creature_text` WHERE `CreatureID` = 19684;


-- Sha'nir
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4425 AND `SourceId` = 2;


-- Iz'zard
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 18622; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4428 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 18622 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1862200 AND `source_type` = 9;

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4428;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4428 AND `SourceId` = 2;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18622);


-- Arcanist Adyria
DELETE FROM `creature_text` WHERE `CreatureID` IN (18596);


-- Aldor Anchorite
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 19142;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4429 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 19142 AND `source_type` = 0;

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4429;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4429 AND `SourceId` = 2;

DELETE FROM `creature_text` WHERE `CreatureID` = 19142;

DELETE FROM `waypoints` WHERE `entry` = 19142;


-- Scryer Arcanist
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 18547;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4430 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 18547 AND `source_type` = 0;

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4430;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4430 AND `SourceId` = 2;

DELETE FROM `creature_text` WHERE `CreatureID` = 18547;

DELETE FROM `waypoints` WHERE `entry` = 18547;
