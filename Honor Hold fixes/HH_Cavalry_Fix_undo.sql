/*
-- Query: SELECT * FROM acore_world.creature_formations where leaderGUID = 57965
LIMIT 0, 1000

-- Date: 2023-11-28 20:39
*/
-- Lone Mounted Cavalry Fix
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5 WHERE `guid` in (57894);

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (57894);

DELETE FROM `waypoint_data` WHERE `id` IN (578940);

-- Four Cavalry Riders Fix
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (57965);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(57965,57965,0,0,2,0,0), 
(57965,57966,5,0,514,0,0),
(57965,57967,10,0,514,0,0),
(57965,57968,15,0,514,0,0);

DELETE FROM `creature` WHERE `guid` IN (58089,58105);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(58105,16863,0,0,530,0,0,1,1,0,-761.591,2904.89,21.4395,3.28971,300,5,0,4979,0,1,0,0,0,'',0,0,NULL),
(58089,16863,0,0,530,0,0,1,1,0,-487.965,2655.3,66.7834,3.00949,300,5,0,4979,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (580290,580300,580310);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(580290,1,-748.963,2931.84,21.6803,NULL,0,0,0,100,0),
(580290,2,-740.631,2913.18,25.1612,NULL,0,0,0,100,0),
(580290,3,-723.252,2892.07,32.2599,NULL,0,0,0,100,0),
(580290,4,-714.852,2868.17,39.4732,NULL,0,0,0,100,0),
(580290,5,-723.252,2892.07,32.2599,NULL,0,0,0,100,0),
(580290,6,-740.631,2913.18,25.1612,NULL,0,0,0,100,0),
(580300,1,-751.036,3013.15,11.7312,NULL,0,0,0,100,0),
(580300,2,-786.306,2980.25,12.8118,NULL,0,0,0,100,0),
(580300,3,-799.587,2943.94,13.0144,NULL,0,0,0,100,0),
(580300,4,-781.306,2918.14,16.4538,NULL,0,0,0,100,0),
(580300,5,-776.435,2888.8,20.5941,NULL,0,0,0,100,0),
(580300,6,-781.306,2918.14,16.4538,NULL,0,0,0,100,0),
(580300,7,-799.587,2943.94,13.0144,NULL,0,0,0,100,0),
(580300,8,-786.306,2980.25,12.8118,NULL,0,0,0,100,0),
(580310,1,-854.462,2976.11,9.84543,NULL,0,0,0,100,0),
(580310,2,-854.88,2949.26,6.43919,NULL,0,0,0,100,0),
(580310,3,-851.534,2923.54,5.40594,NULL,0,0,0,100,0),
(580310,4,-847.804,2894.25,9.25781,NULL,0,0,0,100,0),
(580310,5,-844.946,2868.6,11.1819,NULL,0,0,0,100,0),
(580310,6,-844.969,2851.46,13.5281,NULL,0,0,0,100,0),
(580310,7,-830.434,2830.3,19.4157,NULL,0,0,0,100,0),
(580310,8,-844.969,2851.46,13.5281,NULL,0,0,0,100,0),
(580310,9,-844.946,2868.6,11.1819,NULL,0,0,0,100,0),
(580310,10,-847.804,2894.25,9.25781,NULL,0,0,0,100,0),
(580310,11,-851.534,2923.54,5.40594,NULL,0,0,0,100,0),
(580310,12,-854.88,2949.26,6.43919,NULL,0,0,0,100,0);