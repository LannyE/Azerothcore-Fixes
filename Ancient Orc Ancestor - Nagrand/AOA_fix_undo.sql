/*
undo
Ancient Orc Ancestor Pathing fix and RP 5-1-26
Oshu'gun
This is ported from TC
ALL Ancient Orc should path too Oshu'gun


-- New GUID: 300123
-- Shows Paths and placements https://www.wowhead.com/tbc/npc=18688/ancient-orc-ancestor
*/
-- Gan'arg Tinkerer
UPDATE `creature_template_addon` SET `emote` = 0 where `entry` in (17151);


-- Mo'arg Engineer
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (58969);
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (58969); -- 0
UPDATE `creature_template_addon` SET `auras` = NULL where `entry` in (16945);

UPDATE `creature` SET `orientation` = 3.38594 WHERE `guid` = 58971; --
UPDATE `creature` SET `orientation` = 1.43117 WHERE `guid` = 58972; --

DELETE FROM `creature_formations` where `leaderGUID` IN (58969);

DELETE FROM `waypoint_data` WHERE `id` IN (589690);


-- Matron Drakia
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (18302);

DELETE FROM `creature_text` WHERE `CreatureID` = 18302;

DELETE FROM `waypoint_data` WHERE `id` IN (656380);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(656380,1,-1220.25,7164.88,57.2655,NULL,0,30000,0,0,74,100,0),
(656380,2,-1231.25,7178.18,57.2655,NULL,0,0,0,0,0,100,0),
(656380,3,-1226.03,7181.7,57.2655,NULL,0,15000,0,0,75,100,0),
(656380,4,-1200.89,7151.8,57.2655,NULL,0,0,0,0,0,100,0),
(656380,5,-1201.33,7149.65,57.2655,NULL,0,0,0,0,0,100,0),
(656380,6,-1214.41,7136.23,57.2655,NULL,0,15000,0,0,76,100,0),
(656380,7,-1242.03,7139.5,57.2655,NULL,0,15000,0,0,77,100,0),
(656380,8,-1229.4,7151.14,57.2655,NULL,0,15000,0,0,78,100,0),
(656380,9,-1218.98,7153.91,57.2655,NULL,0,15000,0,0,79,100,0),
(656380,10,-1204.15,7165.89,57.2655,NULL,0,0,0,0,0,100,0),
(656380,11,-1237.78,7179.02,57.2655,NULL,0,0,0,0,0,100,0),
(656380,12,-1244.8,7153.73,57.2655,NULL,0,0,0,0,0,100,0),
(656380,13,-1213.23,7178.04,57.2655,NULL,0,0,0,0,0,100,0),
(656380,14,-1210.31,7158.85,57.2655,NULL,0,0,0,0,0,100,0);

DELETE FROM `waypoint_scripts` WHERE `id` in (74,75,76,77,78,79);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(74,0,0,0,0,15144,0,0,0,0,82),
(74,0,2,83,68,0,0,0,0,0,83),
(75,0,2,83,68,0,0,0,0,0,84),
(76,0,2,83,68,0,0,0,0,0,85),
(77,0,2,83,68,0,0,0,0,0,86),
(78,0,2,83,68,0,0,0,0,0,87),
(79,0,2,83,68,0,0,0,0,0,88);


-- Bleeding Hollow Orphan
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (18299);
UPDATE `creature` SET ``wander_distance` = 5,`MovementType` = 1,`position_x` = -1371.21,`position_y` = 7160.12,`position_z` = 33.3338 WHERE `guid` in (65634);
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1,`position_x` = -1358.15,`position_y` = 7190.1,`position_z` = 35.2784 WHERE `guid` in (65635);

DELETE FROM `creature_addon` where `guid` in (65634);

DELETE FROM `creature_formations` where `leaderGUID` IN (65634);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65634) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` = 18299;

DELETE FROM `waypoint_data` where `id` in (656340);


-- Sunspring Post Orphan
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1,`position_x` = -1362.57,`position_y` = 7193.31,`position_z` = 35.2107 WHERE `guid` in (65626);
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1,`position_x` = -1360.02,`position_y` = 7198.42,`position_z` = 34.9558 WHERE `guid` in (65627);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65627) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` = 18296 AND `GroupID` = 1;

UPDATE `waypoint_data` SET `action` = 333  where `id` in (847180) AND `point` = 5; -- 333

DELETE FROM `waypoint_scripts` WHERE `id` in (333);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(333,0,0,0,0,15119,0,0,0,0,350);


-- Mathar G'ochar
DELETE FROM `waypoint_data` where `id` in (683260);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(683260,1,-1428.08,7142.52,37.9133,NULL,0,120000,0,0,0,100,0),
(683260,2,-1404.2,7126.67,33.6812,NULL,0,0,0,0,0,100,0),
(683260,3,-1391.25,7136.8,33.7245,NULL,0,0,0,0,0,100,0),
(683260,4,-1367.5,7161.02,33.0814,NULL,0,0,0,0,0,100,0),
(683260,5,-1351.07,7187.85,33.8692,NULL,0,0,0,0,0,100,0),
(683260,6,-1345.39,7207.33,33.0064,NULL,0,35000,0,0,0,100,0),
(683260,7,-1326.78,7213.61,33.2376,NULL,0,0,0,0,0,100,0),
(683260,8,-1319.95,7219.35,33.7254,NULL,0,0,0,0,0,100,0),
(683260,9,-1318.22,7231.81,33.0786,NULL,0,35000,0,0,0,100,0),
(683260,10,-1323.47,7241.71,32.8005,NULL,0,0,0,0,0,100,0),
(683260,11,-1340.78,7247.23,32.981,NULL,0,0,0,0,0,100,0),
(683260,12,-1355.49,7233.36,32.9481,NULL,0,0,0,0,0,100,0),
(683260,13,-1354.14,7222.26,32.8397,NULL,0,0,0,0,0,100,0),
(683260,14,-1345.99,7211.27,32.8585,NULL,0,20000,0,0,0,100,0),
(683260,15,-1349.3,7191.81,33.8977,NULL,0,0,0,0,0,100,0),
(683260,16,-1362.95,7166.22,33.4107,NULL,0,0,0,0,0,100,0),
(683260,17,-1389.79,7138.27,33.8388,NULL,0,15000,0,0,0,100,0),
(683260,18,-1438.16,7147.59,39.9052,NULL,0,0,0,0,0,100,0),
(683260,19,-1457.04,7146.36,43.0043,NULL,0,0,0,0,0,100,0),
(683260,20,-1453.49,7148.56,42.8526,NULL,0,120000,0,0,0,100,0);


-- Mogor
-- fix The Ring of Blood: The Final Challenge - Mogor was resurrecting with 1% health
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1806902 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(1806902,9,0,0,0,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,11,12141,50,0,0,0,0,0,0,'Mogor - Actionlist - Despawn Instant'),
(1806902,9,1,0,0,0,100,0,0,0,0,0,0,0,27,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Missing comment for action_type 27'),
(1806902,9,2,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Remove All Auras'),
(1806902,9,3,0,0,0,100,0,0,0,0,0,0,0,11,31261,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Cast \'Permanent Feign Death (Root)\''),
(1806902,9,4,0,0,0,100,0,6000,6000,0,0,0,0,11,32343,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Cast \'Revive Self\''),
(1806902,9,5,0,0,0,100,0,2400,2400,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Remove All Auras'),
(1806902,9,6,0,0,0,100,0,1200,1200,0,0,0,0,11,28747,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Cast \'Frenzy\''),
(1806902,9,7,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Mogor - Actionlist - Start Attacking'),
(1806902,9,8,0,0,0,100,0,0,0,0,0,0,0,1,6,0,1,0,0,0,12,1,0,0,0,0,0,0,0,'Mogor - Actionlist - Say Line 6'),
(1806902,9,9,0,0,0,100,0,0,0,0,0,0,0,42,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Reset Invincibility Hp');


-- Hero of the Mag'har event fix
-- all three need smartAI for the event to play, but they are only used for the scripted event, 
-- so I'm just giving them something to prevent an error on server startup saying they have SmartAI enabled but no SmartAI entries in the database.
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (18075,18076,19647);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18075,18076,19647) AND `source_type` = 0;


-- Greater Windroc
UPDATE `creature_loot_template` SET `Chance` = 100 WHERE `Item` IN (28667); -- 100  -- fix drop rate flawless greater windroc beak / aged clefthoof blubber

DELETE FROM `creature` WHERE `guid` IN (59582);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(59582,17129,0,0,530,0,0,1,1,0,-787.583,8458.14,37.9624,2.34303,300,5,0,6116,0,1,0,0,0,'',0,0,NULL);

-- Aged Clefthoof 
UPDATE `creature_loot_template` SET `Chance` = 100 WHERE `Item` IN (28668); -- 100  -- fix drop rate flawless greater windroc beak / aged clefthoof blubber

DELETE FROM `creature` WHERE `guid` IN (670001,670002,670003,670004); -- corpses near the Greater Windrocs

DELETE FROM `creature_addon` WHERE `guid` IN (670001,670002,670003,670004);


-- Gutripper
UPDATE `creature` SET `MovementType` = 0,`position_x` = -696.603,`position_y` = 8469.75,`position_z` = 39.2338 WHERE guid` = 65525; -- Gutripper

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (18257);

DELETE FROM `creature_addon` WHERE `guid` IN (65525);

DELETE FROM `waypoint_data` WHERE `id` IN (655250);


-- Bach'lor
UPDATE `creature` SET `MovementType` = 0,`position_x` = -1370.18,`position_y` = 8703.16,`position_z` = 27.6684 WHERE `guid` = 65528; -- Bach'lor

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (18258);

-- DELETE FROM `creature_addon` WHERE `guid` IN (65528);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18258) AND `source_type` = 0 AND `id` = 2;

DELETE FROM `creature` WHERE `guid` IN (300192); -- Leader Dummy for Group

DELETE FROM `creature_formations` where `leaderGUID` IN (300192);

DELETE FROM `spawn_group` where `groupId` IN (42301);

DELETE FROM `spawn_group_template` where `groupId` IN (42301);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300192) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000107) AND `source_type` = 9;

DELETE FROM `waypoint_data` WHERE `id` IN (655280);


-- Talbuk Stag
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (59727,59728,59729,59730); -- 5 1

UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (17130); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-59727,-59728,-59729,-59730) AND `source_type` = 0;


-- Talbuk Thorngrazer
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (59972,59973,59974); -- 5 1

UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (17131); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-59972,-59973,-59974) AND `source_type` = 0;


-- Injured Talbuk
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (68109,68110); -- 5 1

UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18964); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-68109,-68110) AND `source_type` = 0;


-- Warmaul Reaver
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (60143); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (60138,60142); -- 0

UPDATE `creature` SET `position_x` = -655.951,`position_y` = 7743.83,`position_z` = 86.8493 WHERE `guid` = 60145;

DELETE FROM `creature_addon` WHERE `guid` IN (60138,60142,60143);

DELETE FROM `waypoint_data` WHERE `id` IN (601380,601420,601430);


-- Warmaul Shaman
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (63873); -- 5 1

UPDATE `creature` SET `position_x` = -775.493,`position_y` = 7715.9,`position_z` = 49.1003,`orientation` = 3.48231 WHERE `guid` = 63876;
UPDATE `creature` SET `position_x` = -794.332,`position_y` = 7713.91,`position_z` = 48.0558,`orientation` = 1.51588 WHERE `guid` = 63881;

DELETE FROM `creature_addon` WHERE `guid` IN (63873);

DELETE FROM `waypoint_data` WHERE `id` IN (638730);

DELETE FROM `creature` WHERE `guid` IN (300810);

-- DELETE FROM `creature` WHERE `guid` IN (60145);
-- INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (60145,17138,0,0,530,0,0,1,1,-1,-655.951,7743.83,86.8493,3.61463,300,5,0,5914,0,1,0,0,0,'',0,0,NULL);


-- Warmaul Brute
UPDATE `creature` SET `orientation` = 0.18785 WHERE `guid` = 63899;


-- Gordunni Soulreaper
-- DELETE FROM `creature` WHERE `id1`  IN (23022); -- needed to remove creature placed by AC
DELETE FROM `creature` WHERE `guid` IN (670005);
-- INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (91738,23022,0,0,530,0,0,1,1,0,-1315.22,5809.05,186.312,5.15544,300,6,0,27945,6310,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (670005);

DELETE FROM `waypoint_data` WHERE `id` IN (917380,6700050);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(917380,1,-1330,5772.58,182.907,0,0,0,0,0,0,100,0),
(917380,2,-1330.99,5742.57,181.18,0,0,0,0,0,0,100,0),
(917380,3,-1334.7,5735.71,180.898,0,0,0,0,0,0,100,0),
(917380,4,-1332.69,5723.99,180.092,0,0,0,0,0,0,100,0),
(917380,5,-1334.92,5714.3,180.339,0,0,5000,0,0,0,100,0),
(917380,6,-1332.69,5723.99,180.092,0,0,0,0,0,0,100,0),
(917380,7,-1334.7,5735.71,180.898,0,0,0,0,0,0,100,0),
(917380,8,-1332.17,5745.07,181.152,0,0,0,0,0,0,100,0),
(917380,9,-1329.98,5772.85,182.91,0,0,0,0,0,0,100,0),
(917380,10,-1322.73,5792.35,183.804,0,0,0,0,0,0,100,0),
(917380,11,-1319.87,5808.9,185.731,0,0,0,0,0,0,100,0),
(917380,12,-1337.74,5821.18,184.754,0,0,0,0,0,0,100,0),
(917380,13,-1379.33,5839.73,186.025,0,0,5000,0,0,0,100,0),
(917380,14,-1336.58,5820.7,184.813,0,0,0,0,0,0,100,0),
(917380,15,-1319.5,5808.55,185.771,0,0,0,0,0,0,100,0);

-- Kil'sorrow Spellbinder
DELETE FROM `creature` WHERE `guid` IN (60208);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(60208,17146,0,0,530,0,0,1,1,1,-3023.47,6514.14,112.953,3.24631,300,0,0,4892,2846,0,0,0,0,'',0,0,NULL);


-- Murkblood Raiders
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (64998); -- 5 1
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (64999); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (65003,28663); -- 0

UPDATE `creature` SET `position_x` = -1481.64,`position_y` = 8607.28,`position_z` = 7.26011,`orientation` = 0.248205 WHERE `guid` = 28658; -- 
UPDATE `creature` SET `position_x` = -1515.94,`position_y` = 8590.04,`position_z` = 7.26011,`orientation` = 4.48542 WHERE `guid` = 28659; -- 
UPDATE `creature` SET `position_x` = -1522.72,`position_y` = 8592.33,`position_z` = 7.26011,`orientation` = 4.58359 WHERE `guid` = 28660; -- 
UPDATE `creature` SET `position_x` = -1519.91,`position_y` = 8462.62,`position_z` = -4.00216,`orientation` = 2.60731 WHERE `guid` = 28663;
UPDATE `creature` SET `position_x` = -1516.01,`position_y` = 8465.96,`position_z` = -4.00216,`orientation` = 2.60731 WHERE `guid` = 28664;
UPDATE `creature` SET `position_x` = -1532.52,`position_y` = 8459.64,`position_z` = -4.00216,`orientation` = 3.44104 WHERE `guid` = 28665; -- 

DELETE FROM `creature` WHERE `guid` IN (300791,300792,300793);

DELETE FROM `creature_addon` where `guid` in (28663,64998,65003);

DELETE FROM `creature_formations` where `leaderGUID` IN (28663,64998,65003);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18203) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18203,0,0,0,0,0,100,0,5000,10000,15000,20000,0,0,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murkblood Raider - In Combat - Cast \'11971\''),
(18203,0,1,0,2,0,100,1,20,80,0,0,0,0,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murkblood Raider - Between 20-80% Health - Cast \'15496\' (No Repeat)');

DELETE FROM `creature_text` WHERE `CreatureID` = 18203;

DELETE FROM `waypoint_data` where `id` in (286630,649980,650030);


-- Murkblood Brute
UPDATE `creature_template` SET `AIName` = "",`flags_extra` = 2048 WHERE `entry` = 18211; -- "" 2048

DELETE FROM `creature` WHERE `guid` IN (300789,300790);

DELETE FROM `creature_text` WHERE `CreatureID` = 18211;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300790,-65109,18211) AND `source_type` = 0;  -- 65109,65110


-- Murkblood Scavenger
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 18207; -- 0
-- Wrong Emote should be working not kneeling.
UPDATE `creature_template_addon` SET `bytes1` = 8,`emote` = 0 WHERE `entry` in (18207); -- 8 0

DELETE FROM `creature_addon` where `guid` in (65102,65103,65105,65106,65107,300805,300806,300807);

UPDATE `creature` SET `position_x` = -1549.31,`position_y` = 8575.98,`position_z` = 7.25886,`orientation` = 3.28789 WHERE `guid` = 28674; -- -1549.31,`position_y` = 8575.98,`position_z` = 7.25886,`orientation` = 3.28789
UPDATE `creature` SET `position_x` = -1550.63,`position_y` = 8577.96,`position_z` = 7.25886,`orientation` = 4.30497 WHERE `guid` = 28673; -- -1550.63,`position_y` = 8577.96,`position_z` = 7.25886,`orientation` = 4.30497
UPDATE `creature` SET `position_x` = -1553.08,`position_y` = 8579.5,`position_z` = 7.25886,`orientation` = 3.79446 WHERE `guid` = 28672; -- -1553.08,`position_y` = 8579.5,`position_z` = 7.25886,`orientation` = 3.79446
UPDATE `creature` SET `position_x` = -1627.78,`position_y` = 8518.52,`position_z` = -13.3941,`orientation` = 5.26975 WHERE `guid` = 65101; -- -1627.78,`position_y` = 8518.52,`position_z` = -13.3941,`orientation` = 5.26975
UPDATE `creature` SET `orientation` = 4.72783 WHERE `guid` = 65102;
UPDATE `creature` SET `position_x` = -1470.51,`position_y` = 8410.75,`position_z` = 0.272462,`orientation` = 1.64227 WHERE `guid` = 28681; -- 
UPDATE `creature` SET `position_x` = -1463.05,`position_y` = 8405.77,`position_z` = -0.0208871,`orientation` = 2.07424 WHERE `guid` = 28671; -- 
UPDATE `creature` SET `position_x` = -1476.8,`position_y` = 8417.78,`position_z` = 0.972544,`orientation` = 3.73824 WHERE `guid` = 28682; -- 

UPDATE `creature` SET `orientation` = 0.0441875 WHERE `guid` = 28670; -- 
UPDATE `creature` SET `position_x` = -1589.34,`position_y` = 8463.08,`position_z` = -10.3989,`orientation` = 6.15851 WHERE `guid` = 28669; -- 
UPDATE `creature` SET `position_x` = -1588.43,`position_y` = 8465.31,`position_z` = -10.4945,`orientation` = 5.62052 WHERE `guid` = 28668; -- 

UPDATE `creature` SET `position_x` = -1489.77,`position_y` = 8566.64,`position_z` = 7.26014,`orientation` = 6.26062 WHERE `guid` = 28679; -- 
UPDATE `creature` SET `position_x` = -1492.31,`position_y` = 8573,`position_z` = 7.2602,`orientation` = 5.35349 WHERE `guid` = 28680; -- 
UPDATE `creature` SET `position_x` = -1496.64,`position_y` = 8565.37,`position_z` = 7.26011,`orientation` = 5.34956 WHERE `guid` = 28678; -- 

UPDATE `creature` SET `position_x` = -1438.26,`position_y` = 8532.47,`position_z` = 13.7976,`orientation` = 3.71471 WHERE `guid` = 65104; -- 

DELETE FROM `creature` WHERE `guid` IN (300794,300795,300796,300797,300798,300799,300800,300801,300802,300803,300804,300805,300806,300807,300808,300809);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65102,-65103,-65105,-65106,-65107) AND `source_type` = 0;  -- 65109,65110
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1820700) AND `source_type` = 9;


-- Murkblood Putrifier
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (18202); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` IN (64994); -- 5 1
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` IN (64995); -- 5 1
-- UPDATE `creature` SET `orientation` = 5.58319 WHERE `guid` IN (64995); -- 5.58319
UPDATE `creature` SET `position_x` = -1650.8832,`position_y` = 8401.987,`position_z` = -22.376284,`orientation` = 5.7306,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` = 28684; -- 
UPDATE `creature` SET `position_x` = -1678.58,`position_y` = 8496.61,`position_z` = -19.6745,`orientation` = 3.87301,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` = 28683; -- -1678.58 Y: 8496.61 Z: -19.6745

DELETE FROM `creature` WHERE `guid` IN (300778,300779,300780,300781,300782,300783,300784,300785,300786,300787,300788);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-28683,-28684,-64994,-300786,-300788) AND `source_type` = 0;


-- Murkblood Target Dummy
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (18215);

DELETE FROM `creature` WHERE `guid` IN (300193);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18215) AND `source_type` = 0;


-- Clefthoof
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (18205); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-64964,-64966,-64968,-65059,-65060,-68632,-65048,-65049,-65050,-65051,-65052,-65053,-65054,-65055,-65056,-65057,-65058,-67981,-67982,-67983,-67984,-67985,-67986,-68628,-68629,-68630,-68631) AND `source_type` = 0;


-- Clefthoof Calf
UPDATE `creature_template` SET `AIName` = "",`flags_extra` = 0 WHERE `entry` = 19183; -- "" 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19183) AND `source_type` = 0;


-- Vir'anni Raider
DELETE FROM `creature_addon` where `guid` in (60257,60259,60260,60262,60263,60264,60265,60266,60268,60269,60272,60275,60276);


-- Mother Kashur
DELETE FROM `creature_template_addon` where `entry` in (18687);


-- Agitated Orc Spirit
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 18043;

UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 18043;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18043) AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 18043 AND `SourceId` = 0 AND `SourceGroup` = 1 AND `ConditionTypeOrReference` = 1;


-- Ancient Orc Ancestor
DELETE FROM `spell_area` where `spell` in (32649) AND `area` IN (3518); -- Fixes why you still can't see them after completing the 10045 material component quest

UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (18688); -- 2

DELETE FROM `creature` WHERE `guid` IN (14337,14338,14339,14340,14341,14342,14343,14977,14978,14979,14980,14981,14982,14983,14984,14985,20556,21776,23111,24670,24761,24794,25100,26559,26564,31807,31833,32072,40475,40476,40703,40716,40725,40727,42893,45204,46570,46819,66946,66947);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(14337,18688,0,0,530,0,0,1,1,0,-1637.01,8569.54,-12.234,5.65003,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14338,18688,0,0,530,0,0,1,1,0,-2300.29,8571.08,-22.0957,5.65003,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14339,18688,0,0,530,0,0,1,1,0,-2407.95,8655.04,-19.7505,5.65003,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(14340,18688,0,0,530,0,0,1,1,0,-2530.94,8629.31,-25.5884,5.65003,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14341,18688,0,0,530,0,0,1,1,0,-2571.84,8558.23,-33.5029,5.65003,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(14342,18688,0,0,530,0,0,1,1,0,-2218.21,8513.48,-17.1368,5.65003,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(14343,18688,0,0,530,0,0,1,1,0,-2114.42,8743.48,11.699,5.65003,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14977,18688,0,0,530,0,0,1,1,0,-2017.31,8743.44,19.5169,5.65003,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(14978,18688,0,0,530,0,0,1,1,0,-1812.61,8813.18,30.3396,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14979,18688,0,0,530,0,0,1,1,0,-1750.87,8877.25,31.7701,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14980,18688,0,0,530,0,0,1,1,0,-1539.61,8686.33,24.7431,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14981,18688,0,0,530,0,0,1,1,0,-1653.31,8494.49,-12.7148,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(14982,18688,0,0,530,0,0,1,1,0,-1579.32,8426.67,-9.23747,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14983,18688,0,0,530,0,0,1,1,0,-1040.87,7895.8,22.9206,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14984,18688,0,0,530,0,0,1,1,0,-1059.54,7750.35,25.9766,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(14985,18688,0,0,530,0,0,1,1,0,-908.965,7783.44,40.2048,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(20556,18688,0,0,530,0,0,1,1,0,-886.413,7824.75,40.0754,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL), -- -886.413 7824.75 40.0754
(21776,18688,0,0,530,0,0,1,1,0,-878.863,7881.25,38.6467,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(23111,18688,0,0,530,0,0,1,1,0,-1866.27,8098.74,-20.3459,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(24670,18688,0,0,530,0,0,1,1,0,-2106.82,8191.13,-15.4603,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(24761,18688,0,0,530,0,0,1,1,0,-2084.75,8286.22,-11.393,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(24794,18688,0,0,530,0,0,1,1,0,-2206.14,8306.9,-26.191,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(25100,18688,0,0,530,0,0,1,1,0,-2256,8478.68,-24.6155,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(26559,18688,0,0,530,0,0,1,1,0,-2336.12,8477.34,-30.3842,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(26564,18688,0,0,530,0,0,1,1,0,-2350.53,8641.59,-15.4638,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(31807,18688,0,0,530,0,0,1,1,0,-2379.14,8531.65,-28.6321,6.13478,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(31833,18688,0,0,530,0,0,1,1,0,-2411.61,8492.45,-33.3533,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(32072,18688,0,0,530,0,0,1,1,0,-2416.02,8330.76,-37.6002,6.13478,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(40475,18688,0,0,530,0,0,1,1,0,-2336.04,8288.74,-36.3567,1.72398,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(40476,18688,0,0,530,0,0,1,1,0,-2336.11,8225.27,-35.7699,1.72398,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(40703,18688,0,0,530,0,0,1,1,0,-2258.45,8221.08,-31.2193,3.93488,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(40716,18688,0,0,530,0,0,1,1,0,-2203.79,8149.55,-25,3.93488,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(40725,18688,0,0,530,0,0,1,1,0,-2184.8,8029.08,-17.6373,3.93488,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(40727,18688,0,0,530,0,0,1,1,0,-2297.12,7848.94,-30.4255,3.93488,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(46570,18688,0,0,530,0,0,1,1,0,-2622.32,7987.03,-48.9066,3.93488,300,0,0,6542,0,0,0,0,0,'',0,0,NULL), -- AZ
(46819,18688,0,0,530,0,0,1,1,0,-2126.06,8148.39,-15.8518,3.93488,300,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- AZ
(42893,18688,0,0,530,0,0,1,1,0,-2544.55,7818.57,-45.0012,3.93488,300,0,0,6326,0,0,0,0,0,'',0,0,NULL),
(45204,18688,0,0,530,0,0,1,1,0,-2555.36,7930.22,-55.5731,3.93488,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(66946,18688,0,0,530,0,0,1,1,0,-2225.73,8586.74,-10.361,0.261799,300,0,0,6542,0,0,0,0,0,'',0,0,NULL),
(66947,18688,0,0,530,0,0,1,1,0,-1452.95,8533.52,12.8692,3.33358,300,0,0,6542,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (14337,14338,14339,14340,14341,14342,14343,14977,14978,14979,14980,14981,14982,14983,14984,14985,20556,21776,23111,24670,24761,24794,25100,26559,26564,31807,31833,32072,40475,40476,46819,46570,66946,66947);

DELETE FROM `creature` WHERE `guid` IN (300123); -- Leader Dummy for Group

DELETE FROM `creature_formations` where `leaderGUID` IN (300123);

DELETE FROM `spawn_group` where `groupId` IN (42279);

DELETE FROM `spawn_group_template` where `groupId` IN (42279);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300123) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000106) AND `source_type` = 9;

DELETE FROM `waypoint_data` where `id` in (143370,143380,143390,143400,143410,143420,143430,149770,149780,149790,149800,149810,149820,149830,149840,149850,205560,217760,231110,246700,247610,247940,251000,265590,265640,318070,318330,320720,404750,404760,452040,465700,468190,669460,669470);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-14337,-14338,-14339,-14340,-14341,-14342,-14343,-14977,-14978,-14979,-14980,-14981,-14982,-14983,-14984,-14985,-20556,-21776,-23111,-24670,-24761,-24794,-25100,-26564,-26559,-31807,-31833,-32072,-40475,-40476,-46570,-46819,-66946,-66947,18688) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1868800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18688,0,0,0,8,0,100,512,34063,0,0,0,0,0,36,19480,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'being hit by soul mirror, update entry'),
(18688,0,1,0,21,0,100,512,0,0,0,0,0,0,36,18688,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'set default entry at reset'),
(18688,0,2,0,0,0,100,0,6000,10000,25000,30000,0,0,11,31293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'consuming shadow');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18688);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18688,0,0,'Ancestors watch over you, kind one...',12,0,100,21,0,0,16841,0,'Ancient Orc Ancestor'),
(18688,0,1,'Cease your crying! STOP!',12,0,100,21,0,0,15706,0,'Ancient Orc Ancestor'),
(18688,0,2,'I remember everything...',12,0,100,21,0,0,15701,0,'Ancient Orc Ancestor'),
(18688,0,3,'It cannot be...',12,0,100,21,0,0,16839,0,'Ancient Orc Ancestor'),
(18688,0,4,'It comes for you...',12,0,100,21,0,0,16838,0,'Ancient Orc Ancestor'),
(18688,1,0,'The spirits call... I am consumed.',12,0,100,21,0,0,15704,0,'Ancient Orc Ancestor'),
(18688,1,1,'Cannot control... It draws me in... The void grows...',12,0,100,21,0,0,15710,0,'Ancient Orc Ancestor'),
(18688,1,2,'It is dying. It is dying. It is dying.',12,0,100,21,0,0,15707,0,'Ancient Orc Ancestor'),
(18688,1,3,'The cold embrace awaits...',12,0,100,21,0,0,16837,0,'Ancient Orc Ancestor'),
(18688,1,4,'The pain is unbearable.',12,0,100,21,0,0,15705,0,'Ancient Orc Ancestor'),
(18688,1,5,'What is happening to me?',12,0,100,21,0,0,29739,0,'Ancient Orc Ancestor'),
(18688,1,6,'What is this trickery? I... ARGH...',12,0,100,21,0,0,16840,0,'Ancient Orc Ancestor'),
(18688,1,7,'What will become of us when it falls?',12,0,100,21,0,0,15709,0,'Ancient Orc Ancestor');


-- Darkened Spirit
DELETE FROM `creature_text` WHERE `CreatureID` IN (19480);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19480,0,0,'What... What have I become? Arrrgghhh...',12,0,100,21,0,0,16835,0,'Darkened Spirit');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19480) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19480,0,0,0,0,0,100,0,5000,7000,11000,15000,0,0,11,31293,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Darkened Spirit - In Combat - Cast \'Consuming Shadows\''),
(19480,0,1,0,6,0,100,512,0,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Darkened Spirit - On Just Died - Despawn In 5000 ms'),
(19480,0,2,0,1,0,100,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Darkened Spirit - Out of Combat - Say Line 0');