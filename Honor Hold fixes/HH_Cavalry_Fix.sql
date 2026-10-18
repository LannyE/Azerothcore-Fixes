/*
-- Query: SELECT * FROM acore_world.creature_formations where leaderGUID = 57965
LIMIT 0, 1000

-- Date: 2023-11-28 20:39
*/
-- Lone Mounted Infantry Movement fix
UPDATE `creature` SET `MovementType` = 2, `wander_distance` = 0 WHERE `guid` in (57894);

UPDATE `creature_addon` SET `path_id` = 578940 WHERE `guid` in (57894);

DELETE FROM `waypoint_data` WHERE `id` IN (578940);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(578940,1,-315.071,2189.21,68.7515,0,10000,0,0,100,0),
(578940,2,-536.38,2298.78222,39.4816,0,0,0,0,100,0),
(578940,3,-581.8664,2354.161,37.754,0,0,0,0,100,0),
(578940,4,-596.256,2408.2361,44.0675,1.799,5000,0,0,100,0),
(578940,5,-581.8664,2354.161,37.754,0,0,0,0,100,0),
(578940,6,-536.38,2298.78222,39.4816,0,0,0,0,100,0);

-- Four Cavalry Riders Fix
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (57965);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(57965,57965,0,0,530,0,0), 
(57965,57966,3,170,530,0,0),
(57965,57967,6,180,530,0,0),
(57965,57968,9,175,530,0,0);

-- Adjust creatures to not engage Cavalry

-- Hellboar
DELETE FROM `creature` WHERE `guid` IN (58089,58105);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(58089,16863,0,0,530,0,0,1,1,0,-465.867,2649.42,63.025,3.00949,300,5,0,4979,0,1,0,0,0,'',0,0,NULL),
(58105,16863,0,0,530,0,0,1,1,0,-758.073,2935.89,19.319,3.28971,300,5,0,4979,0,1,0,0,0,'',0,0,NULL);

-- Crustbuster
DELETE FROM `waypoint_data` WHERE `id` IN (580290,580300,580310);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(580290,1,-748.963,2931.84,21.6803,NULL,0,0,0,100,0),
(580290,2,-762.401,2948.728,17.9512,NULL,0,0,0,100,0),
(580290,3,-770.2706,2966.827,15.6111,NULL,0,0,0,100,0),
(580290,4,-807.2973,2947.002,12.148,NULL,0,0,0,100,0),
(580290,5,-770.2706,2966.827,15.6111,NULL,0,0,0,100,0),
(580290,6,-762.401,2948.728,17.9512,NULL,0,0,0,100,0),

(580300,1,-751.036,3013.15,11.7312,NULL,0,0,0,100,0),
(580300,2,-786.306,2980.25,12.8118,NULL,0,0,0,100,0),
(580300,3,-799.587,2943.94,13.0144,NULL,0,0,0,100,0),
(580300,4,-781.306,2918.14,16.4538,NULL,0,0,0,100,0),
(580300,5,-799.587,2943.94,13.0144,NULL,0,0,0,100,0),
(580300,6,-786.306,2980.25,12.8118,NULL,0,0,0,100,0),

(580310,1,-854.462,2976.11,9.84543,NULL,0,0,0,100,0),
(580310,2,-854.88,2949.26,6.43919,NULL,0,0,0,100,0),
(580310,3,-851.534,2923.54,5.40594,NULL,0,0,0,100,0),
(580310,4,-847.804,2894.25,9.25781,NULL,0,0,0,100,0),
(580310,5,-844.946,2868.6,11.1819,NULL,0,0,0,100,0),
(580310,6,-847.804,2894.25,9.25781,NULL,0,0,0,100,0),
(580310,7,-851.534,2923.54,5.40594,NULL,0,0,0,100,0),
(580310,8,-854.88,2949.26,6.43919,NULL,0,0,0,100,0);
