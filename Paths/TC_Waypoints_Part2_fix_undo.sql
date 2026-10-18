/*
undo
TC Waypoints Conversion 5-1-26

Basic Creatures with SmartAI
*/

-- Hammerfall Guardian
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (11589); -- 0

DELETE FROM `creature_addon` where `guid` in (11589);

DELETE FROM `waypoint_data` where `id` in (115890);


 -- Orgrimmar Grunt
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (11789); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (11789); -- 0

DELETE FROM `waypoint_data` where `id` in (117890);


-- Feegly the Exiled
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (14138); -- 3 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (14138); -- 0

DELETE FROM `waypoint_data` where `id` in (141380);


-- Southshore Guard 
UPDATE `creature` SET `wander_distance` = 2,`MovementType` = 1 WHERE `guid` in (15668); -- 2 1
UPDATE `creature` SET `position_x` = -696.363,`position_y` = -428.554,`position_z` = 31.632 WHERE `guid` = 15668;

DELETE FROM `creature_addon` where `guid` in (15668);

DELETE FROM `waypoint_data` where `id` in (156680);


 -- Jailor Marlgen
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (16063); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (16063); -- 0

DELETE FROM `waypoint_data` where `id` in (160630);


 -- Sister Rathtalon
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (20429); -- 0
UPDATE `creature` SET `position_x` = 587.18,`position_y` = -1433.46,`position_z` = 91.7917 WHERE `guid` = 20429;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (20429); -- 0

DELETE FROM `waypoint_data` where `id` in (204290);


 -- Burning Blade Felsworn
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (27713); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (27713); -- 0

DELETE FROM `waypoint_data` where `id` in (277130);


-- Lord Sakrasis 
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (32043); -- 0
UPDATE `creature` SET `position_x` = -13830,`position_y` = 412.777,`position_z` = 87.0029 WHERE `guid` = 32043;

DELETE FROM `creature` where `guid` in (134220);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(134220,2541,0,0,0,0,0,1,1,1,-13808.2,379.781,94.6838,2.12071,21600,0,0,1848,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (32043);

DELETE FROM `pool_template` where `entry` in (1022);
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(1022,1,'Lord Sakrasis (2541)');

DELETE FROM `pool_creature` where `pool_entry` in (1022);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(32043,1022,0,'Lord Sakrasis (2541) - Spawn 1'),
(134220,1022,0,'Lord Sakrasis (2541) - Spawn 2');

DELETE FROM `waypoint_data` where `id` in (320430);


-- Captain Jacobs
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (34046); -- 0

DELETE FROM `creature_addon` where `guid` in (34046);

DELETE FROM `waypoint_data` where `id` in (340460);


-- Scarlet Champion
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (40031); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (40031); -- 0

DELETE FROM `waypoint_data` where `id` in (400310);


-- Smolderthorn Shadow Priest
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (40154); -- 0

DELETE FROM `creature_addon` where `guid` in (40154);

DELETE FROM `waypoint_data` where `id` in (401540);


-- Jadefire Hellcaller
UPDATE `creature` SET `wander_distance` = 2,`MovementType` = 1 WHERE `guid` in (40668); -- 2 1
-- 40706 = 40668
DELETE FROM `creature_addon` where `guid` in (40668);

DELETE FROM `waypoint_data` where `id` in (406680);


-- Winterfall Pathfinder
UPDATE `creature` SET `wander_distance` = 10,`MovementType` = 0 WHERE `guid` in (41073,41075,41079); -- 10 1
UPDATE `creature` SET `position_x` = 6515.28,`position_y` = -3183.96,`position_z` = 573.336 WHERE `guid` = 41073;
UPDATE `creature` SET `position_x` = 6822.36,`position_y` = -2714.22,`position_z` = 564.594 WHERE `guid` = 41079;

DELETE FROM `creature_addon` where `guid` in (41073,41075,41079);

DELETE FROM `waypoint_data` where `id` in (410730,410750,410790);


-- Spirestone Ogre Magus
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (43503); -- 0

DELETE FROM `creature_addon` where `guid` in (43503);

DELETE FROM `waypoint_data` where `id` in (435030);


-- Smolderthorn Mystic
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (43559); -- 0
UPDATE `creature` SET `position_x` = -42.01,`position_y` = -541.49,`position_z` = 16.34 WHERE `guid` = 43559;

DELETE FROM `creature_addon` where `guid` in (43559);

DELETE FROM `waypoint_data` where `id` in (435590);


-- Smolderthorn Headhunter
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (43560); -- 0
UPDATE `creature` SET `position_x` = -80,`position_y` = -521.34,`position_z` = -6.96 WHERE `guid` = 43560;

DELETE FROM `creature_addon` where `guid` in (43560);

DELETE FROM `waypoint_data` where `id` in (435600);


-- Firebrand Grunt
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (43763,43764,43767); -- 0
UPDATE `creature` SET `position_x` = 24.54,`position_y` = -444.81,`position_z` = -18.75 WHERE `guid` = 43763;
UPDATE `creature` SET `position_x` = -1.39,`position_y` = -421.36,`position_z` = -18.72 WHERE `guid` = 43764;

DELETE FROM `creature_addon` where `guid` in (43763,43764,43767);

DELETE FROM `waypoint_data` where `id` in (437630,437640,437670);


 -- Sandfury Blood Drinker
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (45709); -- 0
UPDATE `creature` SET `position_x` = 1685.91,`position_y` = 888.847,`position_z` = 9.00179 WHERE `guid` = 45709;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (45709); -- 0

DELETE FROM `waypoint_data` where `id` in (457090);



 -- Houndmaster Grebmar
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (46284); -- 3 1
UPDATE `creature` SET `position_x` = 607.671,`position_y` = -174.768,`position_z` = -84.4864 WHERE `guid` = 46284;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (46284); -- 0

DELETE FROM `creature_formations` where `leaderGUID` IN (46284);

DELETE FROM `waypoint_data` where `id` in (462840);


-- Bloodhound
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (46297,46298); -- 5 1
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (46273,46272,46271,46270,46269,46607,46309,46302,46301,46300); -- 0 0


-- Fury Shelda
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (46352); -- 0
UPDATE `creature` SET `position_x` = 10647.8,`position_y` = 2044.36,`position_z` = 1331.23 WHERE `guid` = 46352;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (46352); -- 0

DELETE FROM `waypoint_data` where `id` in (463520);


-- Earthborer
UPDATE `creature` SET `wander_distance` = 2,`MovementType` = 1 WHERE `guid` in (48642); -- 2 1

DELETE FROM `creature_addon` where `guid` in (48642);

DELETE FROM `waypoint_data` where `id` in (486420);


-- Searing Blade Enforcer
UPDATE `creature` SET `wander_distance` = 1,`MovementType` = 1 WHERE `guid` in (48690,48696); -- 1 1

DELETE FROM `creature_addon` where `guid` in (48696);

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (48690); -- 0

DELETE FROM `waypoint_data` where `id` in (486900,486960);


-- Kurmokk
UPDATE `creature` SET `position_x` = -13576.3,`position_y` = -40.3796`position_z` = 37.6806,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (49126); -- -13576.3 -40.3796 37.6806 5 1

DELETE FROM `creature` where `guid` in (134210,134211,134212,134213,134214,134215,134216,134217,134218,134219);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(134210,14491,0,0,0,0,0,1,1,0,-14024.7,243.284,13.0169,1.65653,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134211,14491,0,0,0,0,0,1,1,0,-14067.7,176.032,11.3089,1.82617,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134212,14491,0,0,0,0,0,1,1,0,-13997.6,174.808,12.3466,2.00446,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134213,14491,0,0,0,0,0,1,1,0,-13999.3,72.1553,12.7376,0.258518,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134214,14491,0,0,0,0,0,1,1,0,-13852,87.2774,17.4473,1.51437,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134215,14491,0,0,0,0,0,1,1,0,-13852.1,3.189,22.3708,1.201,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134216,14491,0,0,0,0,0,1,1,0,-13789,-2.92215,37.9163,2.427,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134217,14491,0,0,0,0,0,1,1,0,-13802,-125.054,25.5027,2.632,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134218,14491,0,0,0,0,0,1,1,0,-13826.7,-195.336,22.6576,1.50652,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL),
(134219,14491,0,0,0,0,0,1,1,0,-13928.8,-108.147,20.3326,5.90004,128000,5,0,1981,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (49126);

DELETE FROM `pool_template` where `entry` in (1021);
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(1021,1,'Kurmokk (14491)');

DELETE FROM `pool_creature` where `pool_entry` in (1021);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(49126,1021,0,'Kurmokk (14491) - Spawn 1'),
(134210,1021,0,'Kurmokk (14491) - Spawn 2'),
(134211,1021,0,'Kurmokk (14491) - Spawn 3'),
(134212,1021,0,'Kurmokk (14491) - Spawn 4'),
(134213,1021,0,'Kurmokk (14491) - Spawn 5'),
(134214,1021,0,'Kurmokk (14491) - Spawn 6'),
(134215,1021,0,'Kurmokk (14491) - Spawn 7'),
(134216,1021,0,'Kurmokk (14491) - Spawn 8'),
(134217,1021,0,'Kurmokk (14491) - Spawn 9'),
(134218,1021,0,'Kurmokk (14491) - Spawn 10'),
(134219,1021,0,'Kurmokk (14491) - Spawn 11');

DELETE FROM `waypoint_data` where `id` in (491260);


-- Verifonix
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (49152); -- 3 1

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14492) AND `source_type` = 0 AND `id` = 1;

DELETE FROM `creature` where `guid` in (134231,134232,134233,134234,134235);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(134231,14492,0,0,0,0,0,1,1,1,-13458.5,-138.615,50.9823,2.62593,95400,3,0,1981,0,1,0,0,0,'',0,0,NULL), -- -13458.5 -138.615 50.9823 4
(134232,14492,0,0,0,0,0,1,1,1,-13485.4,-70.4046,47.2401,3.51422,95400,3,0,1981,0,1,0,0,0,'',0,0,NULL), -- -13485.4,-70.4046,47.2401 3
(134233,14492,0,0,0,0,0,1,1,1,-13551.9,-5.43688,53.2896,4.85411,95400,3,0,1981,0,1,0,0,0,'',0,0,NULL), -- -13551.9 -5.43688 53.2896 2
(134234,14492,0,0,0,0,0,1,1,1,-13548.4,-102.884,44.4288,5.46751,95400,3,0,1981,0,1,0,0,0,'',0,0,NULL), -- -13548.4 -102.884 44.4288 6
(134235,14492,0,0,0,0,0,1,1,1,-13529.8,-111.52,45.9351,5.8712,95400,3,0,1981,0,1,0,0,0,'',0,0,NULL); -- -13529.8 -111.52 45.9351 5

DELETE FROM `creature_addon` where `guid` in (49152);

DELETE FROM `pool_template` where `entry` in (1026);
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(1026,1,'Verifonix (14492)');

DELETE FROM `pool_creature` where `pool_entry` in (1026);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(49152,1026,0,'Verifonix (14492) - Spawn 1'),
(134231,1026,0,'Verifonix (14492) - Spawn 2'),
(134232,1026,0,'Verifonix (14492) - Spawn 3'),
(134233,1026,0,'Verifonix (14492) - Spawn 4'),
(134234,1026,0,'Verifonix (14492) - Spawn 5'),
(134235,1026,0,'Verifonix (14492) - Spawn 6');

DELETE FROM `waypoint_data` where `id` in (491520);


-- Tormented Spirit
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (49222); -- 0
UPDATE `creature` SET `position_x` = 2885.04,`position_y` = 973.306,`position_z` = 116.983 WHERE `guid` = 49222;

DELETE FROM `creature_addon` where `guid` in (49222);

DELETE FROM `waypoint_data` where `id` in (492220);


-- Ursal the Mauler
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (49853); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (49853); -- 0

DELETE FROM `waypoint_data` where `id` in (498530);


-- Foreman Gills
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (51808); -- 0
UPDATE `creature` SET `position_x` = 1058.87,`position_y` = -3079.53,`position_z` = 91.7453 WHERE `guid` = 51808;

DELETE FROM `creature_addon` where `guid` in (51808);

DELETE FROM `waypoint_data` where `id` in (518080);


-- Shadowsword Guardian
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (55066); -- 0
UPDATE `creature` SET `position_x` = 1675.9,`position_y` = 555.46,`position_z` = 33.4043 WHERE `guid` = 55066;

DELETE FROM `creature_addon` where `guid` in (55066);

DELETE FROM `waypoint_data` where `id` in (550660);


-- Chaos Gazer
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (55474); -- 0
-- UPDATE `creature` SET `position_x` = 1917.02,`position_y` = 572.053,`position_z` = 32.021 WHERE `guid` = 55474;

DELETE FROM `creature_addon` where `guid` in (55474);

DELETE FROM `waypoint_data` where `id` in (554740);


-- Grimscale Forager
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (56242); -- 5 1
UPDATE `creature` SET `position_x` = 9084.79,`position_y` = -5871.37,`position_z` = 0.5319 WHERE `guid` = 56242;

DELETE FROM `creature_addon` where `guid` in (56242);

DELETE FROM `waypoint_data` where `id` in (562420);


-- Sunblade Dragonhawk
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (56686); -- 0
UPDATE `creature` SET `position_x` = 1652.84,`position_y` = 1061.08,`position_z` = 16.1107 WHERE `guid` = 56686;

DELETE FROM `creature_addon` where `guid` in (56686);


DELETE FROM `waypoint_data` where `id` in (566860);


-- Thrallmar Grunt
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (57539); -- 0

DELETE FROM `creature_addon` where `guid` in (57539);

DELETE FROM FROM `waypoint_scripts` where `id` = 5753900 and `guid` = 938;

DELETE FROM `waypoint_data` where `id` in (575390);

/*
-- Shattered Hand Berserker
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (58295); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (58295); -- 0

DELETE FROM `waypoint_data` where `id` in (582950);
*/

-- Mo'arg Forgefiend
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (58976,58980); -- 5 1
UPDATE `creature` SET `position_x` = 401.566,`position_y` = 2174.01,`position_z` = 118.789 WHERE `guid` = 58976;
UPDATE `creature` SET `position_x` = 517.948,`position_y` = 2799.26,`position_z` = 214.543 WHERE `guid` = 58980;

DELETE FROM `creature_addon` where `guid` in (58976,58980);


DELETE FROM `waypoint_data` where `id` in (589760,589800);


-- Living Cyclone
UPDATE `creature` SET `wander_distance` = 20,`MovementType` = 1 WHERE `guid` in (60647,60651); -- 20 1

UPDATE `creature` SET `position_x` = -2670.24,`position_y` = 8528.18,`position_z` = -37.0342 WHERE `guid` in (60647); -- -2670.24 8528.18 -37.0342

DELETE FROM `creature_addon` where `guid` in (60647,60651);

DELETE FROM `waypoint_data` where `id` in (606470,606510);


-- Wrathscale Naga
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (60928,60925); -- 5 1
-- 60928 = 60928
-- 60925 = 60925
DELETE FROM `creature_addon` where `guid` in (60928,60925);

DELETE FROM `waypoint_data` where `id` in (609280,609250);


-- Wrathscale Siren
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (61000); -- 5 1
UPDATE `creature` SET `position_x` = -4763.22,`position_y` = -11584.3,`position_z` = -8.04434 WHERE `guid` = 61000;
-- 61000 = 60996 NO
DELETE FROM `creature_addon` where `guid` in (61000);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(61000,610000,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (610000);


/* 'Bloodcursed Naga' -- Not Needed patrolled by 63492
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (63485); -- 5 1
UPDATE `creature` SET `position_x` = -1896.07,`position_y` = -12785.3,`position_z` = 13.7141 WHERE `guid` = 63485;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (63485); -- 0

DELETE FROM `waypoint_data` where `id` in (634850);
*/


-- Boss Grog'ak
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (64956); -- 0

DELETE FROM `creature_addon` where `guid` in (64956);

DELETE FROM `waypoint_data` where `id` in (649560);


-- Warden Moi'bff Jill
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (65800); -- 0

DELETE FROM `creature_addon` where `guid` in (65800);

DELETE FROM `waypoint_data` where `id` in (658000);


-- Force Commander Gorax
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (68832); -- 0
UPDATE `creature` SET `position_x` = -222.317,`position_y` = 3098.66,`position_z` = -60.229 WHERE `guid` = 68832;

DELETE FROM `creature_addon` where `guid` in (68832);

DELETE FROM `waypoint_data` where `id` in (688320);


-- Arzeth the Merciless
UPDATE `waypoint_data` SET `velocity` = 0 WHERE `id` IN (690510); -- 0


-- Eclipsion Archmage -- TODO check smart scripts and events there may be more that this creature does
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (70856,70858,70861,70862); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (70854); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (70854); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (70858); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (70856); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (70862); -- 0

DELETE FROM `creature_addon` where `guid` in (70861);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19796) AND `source_type` = 0 AND `id` = 3;

DELETE FROM `waypoint_data` where `id` in (708540,708560,708580,708610,708620);


-- Eclipsion Bloodwarder
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (70926,70927); -- 5 1

DELETE FROM `creature_addon` where `guid` in (70926,70927);

DELETE FROM `waypoint_data` where `id` in (709260,709270);


-- Tormented Soul -- TODO 72634 seems to have an emote for use/work in his creature_addon is it needed?  
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (72614,72615,72616,72622,72628,72629,72634,72635); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (72615); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (72622); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (72634); -- 0

DELETE FROM `creature_addon` where `guid` in (72614,72616,72628,72629,72635);

DELETE FROM `waypoint_data` where `id` in (726140,726150,726160,726220,726280,726290,726340,726350);


-- Wrath Hound
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (72680,72681,72682,72683,72684,72685,72686,72688,72689,72690,72691,72692); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (72687); -- 0

UPDATE `creature` SET `position_x` = 3004.29,`position_y` = 7095.3,`position_z` = 365.562 WHERE `guid` = 72680;
UPDATE `creature` SET `position_x` = 3034.7,`position_y` = 7039.36,`position_z` = 364.983 WHERE `guid` = 72681;
UPDATE `creature` SET `position_x` = 2961.61,`position_y` = 7126.16,`position_z` = 365.558 WHERE `guid` = 72682;
UPDATE `creature` SET `position_x` = 2917.32,`position_y` = 7154.14,`position_z` = 366.343 WHERE `guid` = 72683;
UPDATE `creature` SET `position_x` = 2960.74,`position_y` = 6973.46,`position_z` = 364.719 WHERE `guid` = 72684;
UPDATE `creature` SET `position_x` = 3024.89,`position_y` = 6978.63,`position_z` = 364.885 WHERE `guid` = 72685;
UPDATE `creature` SET `position_x` = 3014.03,`position_y` = 6941.98,`position_z` = 363.831 WHERE `guid` = 72686;
UPDATE `creature` SET `position_x` = 3064.36,`position_y` = 6909.3,`position_z` = 365.405 WHERE `guid` = 72687;
UPDATE `creature` SET `position_x` = 2882.81,`position_y` = 6915.53,`position_z` = 364.01 WHERE `guid` = 72688;
UPDATE `creature` SET `position_x` = 2921.97,`position_y` = 6956.65,`position_z` = 364.631 WHERE `guid` = 72689;
UPDATE `creature` SET `position_x` = 2884.28,`position_y` = 6973.96,`position_z` = 365.788 WHERE `guid` = 72690;
UPDATE `creature` SET `position_x` = 2809.69,`position_y` = 6971.86,`position_z` = 364.709 WHERE `guid` = 72691;
UPDATE `creature` SET `position_x` = 2880.31,`position_y` = 7042.29,`position_z` = 364.745 WHERE `guid` = 72692;

DELETE FROM `creature_addon` where `guid` in (72680,72681,72682,72683,72684,72685,72686,72687,72688,72689,72690,72691,72692);

DELETE FROM `waypoint_data` where `id` in (726800,726810,726820,726830,726840,726850,726860,726870,726880,726890,726900,726910,726920);


-- Tormented Citizen
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (74039,74042,74043,74047,74048); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (74047); -- 0

DELETE FROM `creature_addon` where `guid` in (74039,74042,74043,74048);


DELETE FROM `waypoint_data` where `id` in (740390,740420,740430,740470,740480);


-- Blackscale
UPDATE `creature` SET `wander_distance` = 10,`MovementType` = 1 WHERE `guid` in (75405); -- 10 1

DELETE FROM `creature_addon` where `guid` in (75405);

DELETE FROM smart_scripts WHERE `entryorguid` IN (21497) AND `source_type` = 0 AND `ID` IN (3,4,5);

DELETE FROM `waypoint_data` where `id` in (754050);


-- Eclipsion Cavalier
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (77155,77156,77163,77166,77168,77169); -- 5 1

DELETE FROM `creature_addon` where `guid` in (77155,77156,77163,77166,77168,77169);

DELETE FROM `waypoint_data` where `id` in (771550,771560,771630,771660,771680,771690);


-- Asghar
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (77174); -- 0

DELETE FROM `creature_addon` where `guid` in (77174);

DELETE FROM `waypoint_data` where `id` in (771740);


-- Wrath Speaker
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (77847,77848,77849); -- 0

UPDATE `creature` SET `position_x` = 2967.3,`position_y` = 6844.93,`position_z` = 370.222 WHERE `guid` = 77847;
UPDATE `creature` SET `position_x` = 3010.78,`position_y` = 6847.33,`position_z` = 369.467 WHERE `guid` = 77848;
UPDATE `creature` SET `position_x` = 1499.32,`position_y` = 7257.24,`position_z` = 369.969 WHERE `guid` = 77849;


DELETE FROM `creature_addon` where `guid` in (77847,77848,77849);

DELETE FROM `waypoint_data` where `id` in (778470,778480,778490);


-- Fear Fiend
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (77867); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (77869,77870); -- 5 1
UPDATE `creature` SET `id1` = 22327,`equipment_id` = 1 WHERE `guid` in (78559,78560,78561,78562,78563,78564); -- 22327 -- COnvert to Fear Fiend - Terror-Fire Guardian removed in 2.1  

DELETE FROM `creature` WHERE `guid` IN (300124,300125,300126,300127,300128);

UPDATE `creature` SET `position_x` = 1708.41,`position_y` = 7377.73,`position_z` = 370.897,`orientation` = 5.89921 WHERE `guid` = 77867;
UPDATE `creature` SET `position_x` = 1686.95,`position_y` = 7344.33,`position_z` = 370.135,`orientation` = 5.5676 WHERE `guid` = 77868;
UPDATE `creature` SET `position_x` = 1685.7,`position_y` = 7398.78,`position_z` = 370.247,`orientation` = 3.13568 WHERE `guid` = 77869;
UPDATE `creature` SET `position_x` = 1609.43,`position_y` = 7258.42,`position_z` = 364.407,`orientation` = 1.20564 WHERE `guid` = 77870;
UPDATE `creature` SET `position_x` = 1650.27,`position_y` = 7199.77,`position_z` = 369.897,`orientation` = 0.139626 WHERE `guid` = 77871;
UPDATE `creature` SET `position_x` = 1627.41,`position_y` = 7241.34,`position_z` = 369.141,`orientation` = 0.663225 WHERE `guid` = 77872;
UPDATE `creature` SET `position_x` = 1275.31,`position_y` = 7158.46,`position_z` = 374.225,`orientation` = 0.942478 WHERE `guid` = 78559;
UPDATE `creature` SET `position_x` = 1373.43,`position_y` = 7347.37,`position_z` = 370.78,`orientation` = 3.57792 WHERE `guid` = 78560;
UPDATE `creature` SET `position_x` = 1356.06,`position_y` = 7310.81,`position_z` = 369.355,`orientation` = 6.0912 WHERE `guid` = 78561;
UPDATE `creature` SET `position_x` = 1330.58,`position_y` = 7364.44,`position_z` = 367.824,`orientation` = 3.14159 WHERE `guid` = 78562;
UPDATE `creature` SET `position_x` = 1323.41,`position_y` = 7214.82,`position_z` = 375.962,`orientation` = 5.09636 WHERE `guid` = 78563;
UPDATE `creature` SET `position_x` = 1347.22,`position_y` = 7182.96,`position_z` = 375.144,`orientation` = 2.72271 WHERE `guid` = 78564;

DELETE FROM `creature_addon` where `guid` in (77867,77868);

DELETE FROM `waypoint_data` where `id` in (778670,778680);


-- Wrath Corruptor
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (78189,78193); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (78191); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (78190,78192,78194); -- 5 1

DELETE FROM `creature` where `guid` IN (78199,78200,78201,78202,78203,78204,78205,78206);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(78199,22254,0,0,530,0,0,1,1,1,2839.93,7211.46,365.345,3.09549,300,5,0,5589,3155,1,0,0,0,'',0,0,NULL),
(78200,22254,0,0,530,0,0,1,1,1,2832.53,7211.7,365.525,2.47022,300,5,0,5589,3155,1,0,0,0,'',0,0,NULL),
(78201,22254,0,0,530,0,0,1,1,1,2659.96,7226.89,365.283,3.99952,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL),
(78202,22254,0,0,530,0,0,1,1,1,2664.84,7232.53,365.843,0.3712,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL),
(78203,22254,0,0,530,0,0,1,1,1,2625.26,7252.81,365.061,5.56068,300,5,0,5589,3155,1,0,0,0,'',0,0,NULL),
(78204,22254,0,0,530,0,0,1,1,1,2617.01,7260.08,365.171,5.56062,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL),
(78205,22254,0,0,530,0,0,1,1,1,2577.7,7110.64,364.564,4.1788,300,5,0,5589,3155,1,0,0,0,'',0,0,NULL),
(78206,22254,0,0,530,0,0,1,1,1,2580.75,7115.81,364.961,1.03728,300,5,0,5589,3155,1,0,0,0,'',0,0,NULL);

DELETE FROM `creature_formations` where `leaderGUID` IN (78189,78191,78193);

UPDATE `creature` SET `position_x` = 2717.5,`position_y` = 7145.11,`position_z` = 365.694 WHERE `guid` = 78189;
UPDATE `creature` SET `position_x` = 2770.92,`position_y` = 7165.38,`position_z` = 367.522 WHERE `guid` = 78190;
UPDATE `creature` SET `position_x` = 2777.65,`position_y` = 7163.49,`position_z` = 368.022 WHERE `guid` = 78191;
UPDATE `creature` SET `position_x` = 2716.12,`position_y` = 7143.09,`position_z` = 365.637 WHERE `guid` = 78192;
UPDATE `creature` SET `position_x` = 2708.42,`position_y` = 7197.75,`position_z` = 366.097 WHERE `guid` = 78193;
UPDATE `creature` SET `position_x` = 2716.62,`position_y` = 7189.12,`position_z` = 364.373 WHERE `guid` = 78194;

UPDATE `creature` SET `position_x` = 2679.31,`position_y` = 7127.15,`position_z` = 364.302 WHERE `guid` = 78195;
UPDATE `creature` SET `position_x` = 2680.37,`position_y` = 7133.05,`position_z` = 364.927 WHERE `guid` = 78196;
UPDATE `creature` SET `position_x` = 2736.91,`position_y` = 7212.69,`position_z` = 366.684 WHERE `guid` = 78197;
UPDATE `creature` SET `position_x` = 2723.98,`position_y` = 7227.58,`position_z` = 365.03 WHERE `guid` = 78198;

-- UPDATE `creature` SET `position_z` = 365.03 WHERE `guid` = 78198; -- Fix underground

DELETE FROM `creature_addon` where `guid` in (78189,78191,78193);

DELETE FROM `waypoint_data` where `id` in (781890,781910,781930);


-- Witness of Doom
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (78317,78319); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (78318); -- 0

DELETE FROM `creature` where `guid` in (78320,78321,78322,78323);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(78320,22282,0,0,530,0,0,1,1,0,4025.71,5639.63,267.648,2.84237,300,0,0,349,0,0,0,0,0,'',0,0,NULL),
(78321,22282,0,0,530,0,0,1,1,0,3970.72,5480.56,267.725,2.40108,300,5,0,349,0,1,0,0,0,'',0,0,NULL),
(78322,22282,0,0,530,0,0,1,1,0,3915.58,5387.05,269.955,1.10496,300,5,0,349,0,1,0,0,0,'',0,0,NULL),
(78323,22282,0,0,530,0,0,1,1,0,4057.62,5506.11,271.019,0.464958,300,5,0,349,0,1,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `position_x` = 3908.59,`position_y` = 5742.47,`position_z` = 264.698 WHERE `guid` = 78317;
UPDATE `creature` SET `position_x` = 3968.75,`position_y` = 5689.74,`position_z` = 267.222 WHERE `guid` = 78318;
UPDATE `creature` SET `position_x` = 3993.67,`position_y` = 5580.46,`position_z` = 275.529 WHERE `guid` = 78319;

DELETE FROM `creature_addon` where `guid` in (78317,78318,78319);

DELETE FROM `waypoint_data` where `id` in (783170,783180,783190);


-- Felstorm Corruptor
UPDATE `creature` SET `position_x` = 3957.6,`position_y` = 5612.72,`position_z` = 266.169 WHERE `guid` = 77884; -- 3957.6 5612.72 266.169
UPDATE `creature` SET `position_z` = 270.471 WHERE `guid` = 77881; -- 270.471


-- Insidious Familiar
UPDATE `creature` SET `position_x` = 3955.59,`position_y` = 5614.95,`position_z` = 265.363 WHERE `guid` = 77913; -- 3955.59 5614.95 265.363


-- Darkflame Infernal
UPDATE `creature` SET `position_z` = 265.219 WHERE `guid` = 78343; -- 265.219
UPDATE `creature` SET `position_z` = 266.323 WHERE `guid` = 78345; -- 266.323
UPDATE `creature` SET `position_z` = 263.917 WHERE `guid` = 78346; -- 263.917
UPDATE `creature` SET `position_z` = 267.251 WHERE `guid` = 78347; -- 267.251
UPDATE `creature` SET `position_z` = 265.108 WHERE `guid` = 78357; -- 265.108


-- Vile Fire-Soul
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (78376,78377,78378,78379,78380); -- 0

UPDATE `creature` SET `position_x` = 1456.16,`position_y` = 7206.47,`position_z` = 369.669 WHERE `guid` = 78376;
UPDATE `creature` SET `position_x` = 1457.95,`position_y` = 7222.5,`position_z` = 371.22 WHERE `guid` = 78377;
UPDATE `creature` SET `position_x` = 1509.62,`position_y` = 7213.56,`position_z` = 370.816 WHERE `guid` = 78378;
UPDATE `creature` SET `position_x` = 1518.85,`position_y` = 7227.36,`position_z` = 369.989 WHERE `guid` = 78379;
UPDATE `creature` SET `position_x` = 1526.28,`position_y` = 7286.23,`position_z` = 367.369 WHERE `guid` = 78380;

DELETE FROM `creature` WHERE `guid` IN (95097,95098,95099);

DELETE FROM `creature_addon` where `guid` in (78376,78377,78378,78379,78380,95097,95098,95099);

DELETE FROM `waypoint_data` where `id` in (783760,783770,783780,783790,783800,950970,950980,950990);


-- Coilfang Collaborator
UPDATE `creature` SET `position_x` = -152.223,`position_y` = -346.586,`position_z` = 72.0306 WHERE `guid` = 79357; -- -152.223 -346.586 72.0306
UPDATE `creature` SET `position_x` = -152.261,`position_y` = -353.445,`position_z` = 72.0172 WHERE `guid` = 79371; -- -152.261 -353.445 72.0172

/*
-- Kobold Miner
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (80628); -- 5 1

DELETE FROM `creature_addon` where `guid` in (80628);

DELETE FROM `waypoint_data` where `id` in (806280);
*/

-- Defias Bandit
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (80868); -- 5 1

DELETE FROM `creature_addon` where `guid` in (80868);

DELETE FROM `waypoint_data` where `id` in (808680);


-- Sandfury Shadowhunter
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (81517); -- 5 1
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (81517); -- 0

UPDATE `creature` SET `position_x` = 1752.93,`position_y` = 718.564,`position_z` = 21.2051,`orientation` = 4.88692 WHERE `guid` = 81517;

DELETE FROM `waypoint_data` where `id` in (815170);


-- Sul'lithuz Sandcrawler
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (81531,81587); -- 5 1
UPDATE `creature` SET `wander_distance` = 1,`MovementType` = 1 WHERE `guid` in (81581); -- 1 1

UPDATE `creature` SET `position_x` = 1867.35,`position_y` = 1117.43,`position_z` = 9.80891 WHERE `guid` = 81531;
UPDATE `creature` SET `position_x` = 1653.66,`position_y` = 1214.47,`position_z` = 9.2401 WHERE `guid` = 81581;
UPDATE `creature` SET `position_x` = 1606.86,`position_y` = 1131,`position_z` = 11.2195 WHERE `guid` = 81587;

DELETE FROM `creature_addon` where `guid` in (81531,81581,81587);

DELETE FROM `waypoint_data` where `id` in (815310,815810,815870);


-- Z'kral
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (81712); -- 5 1
UPDATE `creature` SET `position_x` = -637.222,`position_y` = 2636.5,`position_z` = -3.06047 WHERE `guid` = 81712);

DELETE FROM `creature_addon` where `guid` in (81712);

DELETE FROM `waypoint_data` where `id` in (817120);


/*
-- Nerubis Guard
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (81773); -- 5 1
UPDATE `creature` SET `position_x` = 8037.82,`position_y` = -7382.66,`position_z` = 165.418,`orientation` = 5.55374 WHERE `guid` = 82110; -- 8037.82 -7382.66 165.418 5.55374

DELETE FROM `creature_addon` where `guid` in (81773);

DELETE FROM `waypoint_data` where `id` in (817730);
*/


-- Eye of Dar'Khan
-- 85744 = 82897 <- this guys spawns far away and then goes to the waypoints far away. 

UPDATE `creature` SET `position_x` = 6527.31,`position_y` = -6542.19,`position_z` = 43.846 WHERE `guid` = 82897;
-- 82918 =   ??????????    New: 82768                                           
-- 85745 = 82924
-- 82878 = 82767
-- 82866 = 82885

DELETE FROM `creature` WHERE `guid` IN (82768);

DELETE FROM `creature_addon` where `guid` in (82768);

DELETE FROM `waypoint_data` where `id` in (827680);


-- Witherheart the Stalker
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (85478); -- 3 1

DELETE FROM `creature_addon` where `guid` in (85478);

DELETE FROM `waypoint_data` where `id` in (854780);


-- Razorfen Quilguard
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87305); -- 0

DELETE FROM `creature_addon` where `guid` in (87305);

DELETE FROM `waypoint_data` where `id` in (873050);


-- Raging Agam'ar
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (87315,87392,87424,874370); -- 3 1

DELETE FROM `creature_addon` where `guid` in (87315,87392,87424,87437);

DELETE FROM `waypoint_data` where `id` in (873150,873920,874240,874370);


-- Razorfen Defender
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (87316); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87345);
UPDATE `creature` SET `position_x` = 2131.74,`position_y` = 1573.88,`position_z` = 81.4973 WHERE `guid` = 87345; -- 
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (87377); -- 0

DELETE FROM `creature_addon` where `guid` in (87316,87345);

DELETE FROM `waypoint_data` where `id` in (873160,873450);


-- Death's Head Seer
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87343,87379);

UPDATE `creature` SET `position_x` = 2191.84,`position_y` = 1498.61,`position_z` = 73.4284 WHERE `guid` = 87379; -- 

DELETE FROM `creature_addon` where `guid` in (87343,87379);

DELETE FROM `waypoint_data` where `id` in (873430,873790);


-- Rotting Agam'ar
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (87416,87436); -- 3 1

DELETE FROM `creature_addon` where `guid` in (87416,87436);

DELETE FROM `waypoint_data` where `id` in (874160,874360);


-- Blood of Agamaggan
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87426);
UPDATE `creature` SET `position_x` = 2116.68,`position_y` = 1791.75,`position_z` = 47.8211 WHERE `guid` = 87426; -- 

DELETE FROM `creature_addon` where `guid` in (87426);

DELETE FROM `waypoint_data` where `id` in (874260);


-- Razorfen Warden
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (87446); -- 0


-- Agam'ar
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (87432); -- 3 1
UPDATE `creature` SET `position_x` = 2137.51,`position_y` = 1801.25,`position_z` = 47.2841 WHERE `guid` = 87432; -- 

DELETE FROM `creature_addon` where `guid` in (87432);

DELETE FROM `waypoint_data` where `id` in (874320);


-- Death's Head Priest
UPDATE `creature` SET `wander_distance` = 2,`MovementType` = 1 WHERE `guid` in (87456,87448); -- 2 1

DELETE FROM `creature_addon` where `guid` in (87456,87448);

DELETE FROM `waypoint_data` where `id` in (874560,874480);


-- Greater Kraul Bat
UPDATE `creature` SET `wander_distance` = 3,`MovementType` = 1 WHERE `guid` in (87468); -- 3 1

DELETE FROM `creature_addon` where `guid` in (87468);

DELETE FROM `waypoint_data` where `id` in (874680);


-- Razorfen Stalker
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87489); -- 0

DELETE FROM `creature_addon` where `guid` in (87489);

DELETE FROM `waypoint_data` where `id` in (874890);


-- Stormforged Tracker 
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (88123,88124,88125,88128); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (88123); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (88124); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (88125); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (88128); -- 0

DELETE FROM `waypoint_data` where `id` in (881230,881240,881250,881280);


-- Ice Steppe Rhino
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (98753,98754,98755,98737); -- 5 1

DELETE FROM `creature` WHERE `guid` IN (300129); -- Leader Dummy for Group -- Kodos_fix has the creature_template info for 3000001

DELETE FROM `creature_formations` where `leaderGUID` IN (300129);

DELETE FROM `spawn_group` where `groupId` IN (42299);

DELETE FROM `spawn_group_template` where `groupId` IN (42299);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300129) AND `source_type` = 0;

DELETE FROM `waypoint_data` where `id` in (3001290);


-- Ice Steppe Bull
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (118275,118283,118276); -- 5 1
UPDATE `creature` SET `position_x` = 7612.21,`position_y` = -908.602,`position_z` = 909.373 WHERE `guid` = 118283; -- 
UPDATE `creature` SET `position_x` = 7408.7,`position_y` = -904.734,`position_z` = 907.923 WHERE `guid` = 118276;

DELETE FROM `creature` WHERE `guid` IN (300130); -- Leader Dummy for Group -- Kodos_fix has the creature_template info for 3000001

DELETE FROM `creature_formations` where `leaderGUID` IN (300130);

DELETE FROM `creature_addon` where `guid` in (118275,118283,118276);

DELETE FROM `spawn_group` where `groupId` IN (42300);

DELETE FROM `spawn_group_template` where `groupId` IN (42300);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300130) AND `source_type` = 0;

DELETE FROM `waypoint_data` where `id` in (3001300,1182750,1182830,1182760);


-- Drak'aguul
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (99649); -- 5 1
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (112163,112352); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (99649); -- 0
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (112163); -- 1  -- They don't have weapons out

DELETE FROM `creature_formations` where `leaderGUID` IN (99649);

DELETE FROM `waypoint_data` where `id` in (996490);


-- Frostpaw Shaman
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (101658,101659); -- 5 1
UPDATE `creature` SET `position_x` = 3495.18,`position_y` = -3699.41,`position_z` = 231.782 WHERE `guid` = 118283; -- 

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (101658); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (101659); -- 0

DELETE FROM `waypoint_data` where `id` in (1016580,1016590);


-- Keeper Witherleaf
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (101930); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (101930); -- 0

DELETE FROM `waypoint_data` where `id` in (1019300);


-- Enraged Tempest
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (102473,102479); -- 5 1
UPDATE `creature` SET `position_x` = 4554.44,`position_y` = 6143.83,`position_z` = 81.153 WHERE `guid` = 102479; -- 

DELETE FROM `creature_addon` where `guid` in (102473,102479);

DELETE FROM `waypoint_data` where `id` in (1024730,1024790);


-- Boiling Spirit
DELETE FROM `creature_addon` where `guid` in (102626,102651,102661,102662,102663,102664);

DELETE FROM `creature` where `guid` IN (102626,102645,102648,102649,102650,102651,102652,102661,102662,102663,102664,102665,102666,146983,146984,146985,146986,146987,146988,146989,146991,146992,146993,146994,146996,146997,146998,146999);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(102626,25419,0,0,571,0,0,1,1,0,4412.49,5909.43,56.2146,1.18241,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102645,25419,0,0,571,0,0,1,1,0,4290.22,5924.36,56.7712,1.48904,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102648,25419,0,0,571,0,0,1,1,0,4350.95,5883.12,55.9104,3.37322,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102649,25419,0,0,571,0,0,1,1,0,4444.39,5948.66,57.404,2.86132,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102650,25419,0,0,571,0,0,1,1,0,4409.63,5936.75,56.0231,3.51294,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102651,25419,0,0,571,0,0,1,1,0,4384.95,5911.63,56.0281,3.68386,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102652,25419,0,0,571,0,0,1,1,0,4351.32,5912.07,59.9314,5.83977,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102661,25419,0,0,571,0,0,1,1,0,4282.48,5882.59,59.2814,2.17811,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102662,25419,0,0,571,0,0,1,1,0,4345.71,5866.88,56.16,1.31559,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102663,25419,0,0,571,0,0,1,1,0,4330.29,5846.69,57.8551,0.04315,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102664,25419,0,0,571,0,0,1,1,0,4394.71,5881.44,55.6874,2.84787,300,0,0,7984,0,0,0,0,0,'',0,0,NULL),
(102665,25419,0,0,571,0,0,1,1,0,4319.82,5880.66,56.2993,0.902202,300,5,0,7984,0,1,0,0,0,'',0,0,NULL),
(102666,25419,0,0,571,0,0,1,1,0,4292.18,5846.93,59.2789,3.29536,300,5,0,7984,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (1026260,1026510,1026610,1026620,1026630,1026640);


-- Raging Boiler
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (102600); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (102601); -- 5 1

UPDATE `creature` SET `position_x` = 4349.01,`position_y` = 5913.17,`position_z` = 59.9683 WHERE `guid` = 102600; -- 
UPDATE `creature` SET `position_x` = 4391.75,`position_y` = 5882.34,`position_z` = 55.6874 WHERE `guid` = 102601; -- 

DELETE FROM `creature_addon` where `guid` in (102600,102601,300151,300152,300153,300154);

DELETE FROM `creature` WHERE `guid` IN (146990,146995,300131,300132,300133,300134,300135,300136,300137,300138,300139,300140,300141,300142,300143,300144,300145,300146,300147,300148,300149,300150,300151,300152,300153,300154);

DELETE FROM `waypoint_data` where `id` in (1026000,1026010,3001510,3001520,3001530,3001540);


-- Winterskorn Tribesman
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (105917,105923,105924); -- 0
UPDATE `creature` SET `position_x` = 1923.19,`position_y` = -4187.39,`position_z` = 216.29 WHERE `guid` = 105917; -- 
UPDATE `creature` SET `position_x` = 1814.31,`position_y` = -4151.47,`position_z` = 238.732 WHERE `guid` = 105924; -- 1814.31 -4151.47 238.732

UPDATE `creature_addon` SET `path_id` = 0,`bytes1` = 1 WHERE `guid` in (105917); -- 0 1
UPDATE `creature_addon` SET `path_id` = 0,`bytes1` = 1 WHERE `guid` in (105923); -- 0 1
UPDATE `creature_addon` SET `path_id` = 0,`emote` = 69 WHERE `guid` in (105924); -- 0 69

DELETE FROM `waypoint_data` where `id` in (1059170,1059230,1059240);


-- Winterskorn Rune-Seer
DELETE FROM `creature` WHERE `guid` IN (106769);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(106769,23667,0,0,571,0,0,1,1,1,1804.3,-4147.59,239.357,3.87498,300,0,0,8982,3155,0,0,0,0,'',0,0,NULL);


-- Winterskorn Oracle
DELETE FROM `creature` WHERE `guid` IN (106839);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(106839,23669,0,0,571,0,0,1,1,1,1798.46,-4079.92,233.634,5.54075,300,0,0,8982,3155,0,0,0,0,'',0,0,NULL);


-- Winterskorn Warrior
DELETE FROM `creature` WHERE `guid` IN (106277);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(106277,23664,0,0,571,0,0,1,1,1,1793.88,-4076.08,233.998,5.58549,300,5,0,8982,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (106277);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(106277,0,0,0,1,0,0,NULL);


-- Winterskorn Worg
UPDATE `creature` SET `position_x` = 1802.38,`position_y` = -4141.9,`position_z` = 239.232,`orientation` = 0.325742 WHERE `guid` = 97542;


-- Winterskorn Elder
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (106919); -- 0

DELETE FROM `creature_addon` where `guid` in (106919);

DELETE FROM `waypoint_data` where `id` in (1069190);


-- Dregmar Runebrand
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (107239); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (107239); -- 0

DELETE FROM `waypoint_data` where `id` in (1072390);


-- Valkyrion Aspirant
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (107731,107733,107734); -- 0

UPDATE `creature` SET `position_x` = 7377.53,`position_y` = 179.262,`position_z` = 772.756 WHERE `guid` = 107731; -- 
UPDATE `creature` SET `position_x` = 7330.93,`position_y` = 193.348,`position_z` = 784.504,`orientation` = 4.68875 WHERE `guid` = 107703;
UPDATE `creature` SET `position_x` = 7270.96,`position_y` = -14.0613,`position_z` = 766.918 WHERE `guid` = 107733;

DELETE FROM `creature_addon` where `guid` in (107731,107733,107734);

DELETE FROM `waypoint_data` where `id` in (1077310,1077330,1077340);


-- Savage Hill Mystic
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (113241); -- 5 1

DELETE FROM `creature_addon` where `guid` in (113241);

DELETE FROM `waypoint_data` where `id` in (1132410);


-- Savage Hill Brute
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (113325,113326); -- 5 1

DELETE FROM `creature_addon` where `guid` in (113325,113326);

DELETE FROM `waypoint_data` where `id` in (1133250,1133260);


-- Stormrider
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (113369,113370,113371,113372,113373,113374,113376,113378,113379,113380,113381,113382,113383,113384,113385,113386,113387,113388,113389,113390,113391,113392,113393,113394,113395); -- 5 1

UPDATE `creature` SET `position_x` = 7849.4,`position_y` = -287.364,`position_z` = 888.876 WHERE `guid` = 113379;
UPDATE `creature` SET `position_x` = 7936.96,`position_y` = -200.66,`position_z` = 868.66 WHERE `guid` = 113386;
UPDATE `creature` SET `position_x` = 8175.26,`position_y` = -76.8814,`position_z` = 852.057 WHERE `guid` = 113388;

DELETE FROM `creature_addon` where `guid` in (113369,113370,113371,113372,113373,113374,113376,113378,113379,113380,113381,113382,113383,113384,113385,113386,113387,113388,113389,113390,113391,113392,113393,113394,113395);

DELETE FROM `waypoint_data` where `id` in (1133690,1133700,1133710,1133720,1133730,1133740,1133760,1133780,1133790,1133800,1133810,1133820,1133830,1133840,1133850,1133860,1133870,1133880,1133890,1133900,1133910,1133920,1133930,1133940,1133950);


-- Gammothra the Tormentor
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (113838); -- 5 1

DELETE FROM `creature_addon` where `guid` in (113838);

DELETE FROM `waypoint_data` where `id` in (1138380);


-- Stormforged Iron Giant
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (29375) AND `source_type` = 0 AND `id` = 7;


-- Clam Master K
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (114803); -- 5 1
UPDATE `creature` SET `position_x` = 2355.49,`position_y` = 4980.15,`position_z` = -33.2764 WHERE `guid` = 114803;

DELETE FROM `creature_addon` where `guid` in (114803);

DELETE FROM `waypoint_data` where `id` in (1148030);


-- Snowdrift Jormungar
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (115279,115280,115283,115284,115288,115289,115290,115291); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (115287); -- 0

UPDATE `creature` SET `position_x` = 7957.45,`position_y` = -439.838,`position_z` = 896.374 WHERE `guid` = 115283;
UPDATE `creature` SET `position_x` = 7818.5,`position_y` = -380.876,`position_z` = 902.171 WHERE `guid` = 115288;

DELETE FROM `creature_addon` where `guid` in (115279,115280,115283,115284,115287,115288,115289,115290,115291);

DELETE FROM `waypoint_data` where `id` in (1152790,1152800,1152830,1152840,1152870,1152880,1152890,1152900,1152910);


-- Garm Watcher
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (117614); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (152090); -- 0

UPDATE `creature` SET `position_x` = 6382.2,`position_y` = -1647.96,`position_z` = 420.386 WHERE `guid` = 202420;

UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (202412,202414,202418); -- 0

DELETE FROM `creature_addon` where `guid` in (117614,152090);

DELETE FROM `waypoint_data` where `id` in (1176140,1520900);


-- Scourged Flamespitter
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (118406); -- 0

DELETE FROM `creature_addon` where `guid` in (118406);

DELETE FROM `waypoint_data` where `id` in (1184060);


-- Hyldnir Overseer
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (118748); -- 5 1

UPDATE `creature` SET `position_x` = 6941.46,`position_y` = -1394.98,`position_z` = 830.308 WHERE `guid` = 118748; -- 

DELETE FROM `creature` where `guid` in (73946);

DELETE FROM `creature_addon` where `guid` in (73946,118748);

DELETE FROM `waypoint_data` where `id` in (739460,1187480);


-- Valhalas Vargul
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (121579); -- 5 1

UPDATE `creature` SET `position_x` = 7918.48,`position_y` = 3313.11,`position_z` = 654.54 WHERE `guid` = 121579; -- 

DELETE FROM `creature_addon` where `guid` in (121579);

DELETE FROM `waypoint_data` where `id` in (1215790);


-- Glacial Ancient
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (122557,122558,122559,122563,122564,122565,122566); -- 5 1

UPDATE `creature` SET `position_x` = 3624.61,`position_y` = 7304.02,`position_z` = 224.236 WHERE `guid` = 122557;
UPDATE `creature` SET `position_x` = 3577.93,`position_y` = 7101.97,`position_z` = 212.287 WHERE `guid` = 122558;
UPDATE `creature` SET `position_x` = 3779.31,`position_y` = 7349.98,`position_z` = 202.131 WHERE `guid` = 122559;
UPDATE `creature` SET `position_x` = 4204.71,`position_y` = 7044.46,`position_z` = 175.353 WHERE `guid` = 122563;
UPDATE `creature` SET `position_x` = 3836,`position_y` = 6567.29,`position_z` = 168.514 WHERE `guid` = 122564;
UPDATE `creature` SET `position_x` = 3707.83,`position_y` = 6799.51,`position_z` = 161.541 WHERE `guid` = 122565;
UPDATE `creature` SET `position_x` = 4024.59,`position_y` = 6745.69,`position_z` = 163.451 WHERE `guid` = 122566;

DELETE FROM `creature` where `guid` in (122567);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(122567,25709,0,0,571,0,0,1,1,0,3862.23,7163.71,166.441,3.26692,300,5,0,9291,3231,1,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (122557,122558,122559,122563,122564,122565,122566);

DELETE FROM `waypoint_data` where `id` in (1225570,1225580,1225590,1225630,1225640,1225650,1225660);


-- Coldarra Scalesworn
UPDATE `creature` SET `position_x` = 3784.43,`position_y` = 6509.24,`position_z` = 178.876 WHERE `guid` = 122683;

DELETE FROM `waypoint_data` where `id` in (1226830);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1226830,1,3856.67,6592.44,165.859,NULL,0,0,0,0,0,100,0),
(1226830,2,3845.15,6580.31,167.284,NULL,0,0,0,0,0,100,0),
(1226830,3,3819.98,6552.68,171.221,NULL,0,0,0,0,0,100,0),
(1226830,4,3834.78,6568.92,168.564,NULL,0,0,0,0,0,100,0),
(1226830,5,3856.23,6592.09,166.184,NULL,0,0,0,0,0,100,0),
(1226830,6,3856.88,6592.67,166.127,NULL,0,0,0,0,0,100,0),
(1226830,7,3856.67,6592.44,165.859,NULL,0,0,0,0,0,100,0);


-- Arcane Serpent
UPDATE `creature` SET `wander_distance` = 15,`MovementType` = 1 WHERE `guid` in (122690,122691,122692,122693,122694,122696,122697,122698,122699,122700,122701,122702,122703,122704,122705); -- 15 1

UPDATE `creature` SET `position_x` = 3922.53,`position_y` = 6907.65,`position_z` = 131.521 WHERE `guid` = 122690;
UPDATE `creature` SET `position_x` = 3949.37,`position_y` = 7225.18,`position_z` = 166.058 WHERE `guid` = 122691;
UPDATE `creature` SET `position_x` = 3965.26,`position_y` = 6977.3,`position_z` = 137.088 WHERE `guid` = 122692;
UPDATE `creature` SET `position_x` = 3967.17,`position_y` = 6959.46,`position_z` = 146.227 WHERE `guid` = 122693;
UPDATE `creature` SET `position_x` = 3983.05,`position_y` = 6968.63,`position_z` = 111.611 WHERE `guid` = 122694;
UPDATE `creature` SET `position_x` = 3710.42,`position_y` = 6914.42,`position_z` = 156.684 WHERE `guid` = 122696;
UPDATE `creature` SET `position_x` = 3976.93,`position_y` = 6929.52,`position_z` = 113.322 WHERE `guid` = 122697;
UPDATE `creature` SET `position_x` = 3951.67,`position_y` = 7043.4,`position_z` = 127.977 WHERE `guid` = 122698;
UPDATE `creature` SET `position_x` = 3921.58,`position_y` = 6910.1,`position_z` = 112.977 WHERE `guid` = 122699;
UPDATE `creature` SET `position_x` = 3858.92,`position_y` = 7075.18,`position_z` = 115.192 WHERE `guid` = 122700;
UPDATE `creature` SET `position_x` = 3915.77,`position_y` = 7054.76,`position_z` = 108.517 WHERE `guid` = 122701;
UPDATE `creature` SET `position_x` = 4080.03,`position_y` = 6773.96,`position_z` = 170.737 WHERE `guid` = 122702;
UPDATE `creature` SET `position_x` = 3928.17,`position_y` = 7053.51,`position_z` = 113.465 WHERE `guid` = 122703;
UPDATE `creature` SET `position_x` = 3980.23,`position_y` = 6977.61,`position_z` = 115.899 WHERE `guid` = 122704;
UPDATE `creature` SET `position_x` = 3956.49,`position_y` = 7035.22,`position_z` = 110.679 WHERE `guid` = 122705;

DELETE FROM `creature_addon` where `guid` in (122690,122691,122692,122693,122694,122696,122697,122698,122699,122700,122701,122702,122703,122704,122705);

DELETE FROM `waypoint_data` where `id` in (1226900,1226910,1226920,1226930,1226940,1226960,1226970,1226980,1226990,1227000,1227010,1227020,1227030,1227040,1227050);


-- Onslaught Darkweaver
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (123859,123865,123868); -- 5 1

UPDATE `creature` SET `position_x` = 7454.12,`position_y` = 4797.35,`position_z` = 7.29958 WHERE `guid` = 123859;
UPDATE `creature` SET `position_x` = 7497.67,`position_y` = 4765.66,`position_z` = -12.7982 WHERE `guid` = 123865;
UPDATE `creature` SET `position_x` = 7500.5,`position_y` = 4926.25,`position_z` = -18.1415 WHERE `guid` = 123868;

DELETE FROM `creature_addon` where `guid` in (123859,123865,123868);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(123859,1238590,0,0,1,0,0,NULL),
(123865,1238650,0,0,1,0,0,NULL),
(123868,1238680,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (1238590,1238650,1238680);


-- Apprentice Osterkilgr
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (124239); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (124239); -- 0

DELETE FROM `waypoint_data` where `id` in (1242390);


-- Umbral Brute
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (124270); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (124270); -- 0

DELETE FROM `waypoint_data` where `id` in (1242700);


-- Risen Drakkari Bat Rider
UPDATE `creature` SET `wander_distance` = 12,`MovementType` = 1 WHERE `guid` in (127446); -- 12 1

DELETE FROM `creature_addon` where `guid` in (127446);

DELETE FROM `waypoint_data` where `id` in (1274460);


-- Scarlet Crusader
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (129726); -- 5 1

DELETE FROM `creature_addon` where `guid` in (129726);

DELETE FROM `waypoint_data` where `id` in (1297260);


-- Scarlet Commander Rodrick
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (129850); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (129850); -- 0

DELETE FROM `waypoint_data` where `id` in (1298500);


-- Rampaging Abomination
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (130376); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (130379); -- 0

UPDATE `creature` SET `position_x` = 2745.8,`position_y` = -5501.26,`position_z` = 162.07 WHERE `guid` = 130378;

DELETE FROM `creature_addon` where `guid` in (130376,130379);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (29186) AND `source_type` = 0 AND `id` IN (2,3);

DELETE FROM `waypoint_data` where `id` in (1303760,1303790);


-- Spectral Servant
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (135153); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (135153); -- 0

DELETE FROM `waypoint_data` where `id` in (1351530);


-- Kirin Tor Battle-Mage
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (136529); -- 5 1

DELETE FROM `creature_addon` where `guid` in (136529);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-136529) AND `source_type` = 0 AND `id` IN (1000,1001);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3366201) AND `source_type` = 9;

DELETE FROM `waypoint_data` where `id` in (1365290);


-- Snowblind Devotee
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (152074); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (202430); -- 5 1

DELETE FROM `creature_addon` where `guid` in (152074,202430);

DELETE FROM `waypoint_data` where `id` in (1520740,2024300);


-- The Leaper
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (209098); -- 0
UPDATE `creature` SET `position_x` = 8418.5,`position_y` = 2620.67,`position_z` = 759.958 WHERE `guid` = 209098;

DELETE FROM `creature_addon` where `guid` in (209098);

DELETE FROM `waypoint_data` where `id` in (2090980);


-- Morbid Carcass
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (152137,152127,152131); -- 0 0
UPDATE `creature` SET `position_x` = 8441.54,`position_y` = 2736.37,`position_z` = 760.141 WHERE `guid` = 152127;


-- Rabid Cannibal
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (209080,209085,209081); -- 0 0
UPDATE `creature` SET `position_x` = 8418.25,`position_y` = 2696.34,`position_z` = 760.057 WHERE `guid` = 209085;
UPDATE `creature` SET `position_x` = 8413.14,`position_y` = 2643.3,`position_z` = 760.141 WHERE `guid` = 209081;


-- Vault Geist
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (152160); -- 0 0


-- Val'zareq the Conqueror
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (76770); -- 0

DELETE FROM `creature_formations` where `leaderGUID` IN (76770);

DELETE FROM `creature_addon` where `guid` in (76770);

DELETE FROM `waypoint_data` where `id` in (767700);


-- Eclipsion Blood Knight
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (70846,70847,70848,70849); -- 5 1