/*
-- Query: SELECT * FROM temp.creature where guid in (63381)
LIMIT 0, 1000

-- Date: 2023-11-25 23:43
*/

UPDATE `creature` SET `MovementType` = 2, `wander_distance` = 0, `position_x` = -3377.086, `position_y` = -12299.429, `position_z` = 20.9758, `orientation` = 0.826 WHERE `guid` in (62883);


DELETE FROM `creature` WHERE `guid` IN (62884);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(62884,17432,0,0,530,0,0,1,1,1,-3377.086,-12299.429,20.9758,0.826,300,0,0,176,0,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (62883,62884);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(62883,628830,0,0,1,0,0,NULL),
(62884,628830,0,0,1,0,0,NULL);

DELETE FROM `creature_formations` where leaderGUID = 62883;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(62883,62883,0,0,515,0,0),
(62883,62884,5,85,515,0,0);

DELETE FROM `waypoint_data` WHERE `id` IN (628830);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(628830,1,-3377.086,-12299.429,20.9758,0,4000,0,0,100,0),
(628830,2,-3383.1232,-12299.0449,20.424,0,0,0,0,100,0),
(628830,3,-3416.5285,-12314.4453,15.0714,0,0,0,0,100,0),
(628830,4,-3428.302,-12324.92578,13.899,0,0,0,0,100,0),
(628830,5,-3437.1979,-12340.8955,13.3726,0,0,0,0,100,0),
(628830,6,-3440.131,-12360.1689,13.4025,0,0,0,0,100,0),
(628830,7,-3426.2703,-12377.0547,15.2291,0,0,0,0,100,0),
(628830,8,-3401.0618,-12400.17871,18.4527,0,0,0,0,100,0),
(628830,9,-3378.529,-12400.0166,21.1209,0,0,0,0,100,0),
(628830,10,-3367.18896,-12396.808594,23.9589,0,0,0,0,100,0),
(628830,11,-3361.8178,-12398.4355,24.6839,0,4000,0,0,100,0),
(628830,12,-3365.6501,-12388.90039,24.05928,0,0,0,0,100,0),
(628830,13,-3387.716,-12389.363,20.2665,0,0,0,0,100,0),
(628830,14,-3411.3008,-12374.915,16.7646,0,0,0,0,100,0),
(628830,15,-3428.0947,-12343.382,13.8891,0,0,0,0,100,0),
(628830,16,-3425.8989,-12330.1552,13.6422,0,0,0,0,100,0),
(628830,17,-3390.0796,-12309.58,19.4709,0,0,0,0,100,0);
