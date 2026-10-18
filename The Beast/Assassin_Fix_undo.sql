/*
DELETE FROM creature WHERE `guid` IN (137972);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(137972,10318,0,0,229,0,0,1,1,1,117.291,-562.613,107.403,5.98648,7200,0,0,1,0,2,0,0,0,'',0,0,NULL);
*/

-- Convert Assassin to Elite.  Should be three elites in the beast's lair no assassins.
UPDATE `creature` SET `id1`=10318,`MovementType`=2 WHERE `guid`=137972;

DELETE FROM creature_addon where guid IN (137972);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(137972,1379720,0,0,1,0,0,'');

DELETE FROM waypoint_data where id in (1379720);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1379720,1,117.515,-567.955,107.125,NULL,0,0,0,100,0),
(1379720,2,117.291,-562.613,107.403,NULL,0,0,0,100,0),
(1379720,3,112.967,-557.621,107.663,NULL,0,0,0,100,0),
(1379720,4,105.091,-557.245,107.682,NULL,0,0,0,100,0),
(1379720,5,96.0483,-553.948,110.578,NULL,0,0,0,100,0),
(1379720,6,87.704,-550.909,110.923,NULL,0,0,0,100,0),
(1379720,7,79.952,-545.042,110.939,NULL,0,0,0,100,0),
(1379720,8,71.7458,-539.995,110.94,NULL,0,0,0,100,0),
(1379720,9,63.5328,-534.943,110.942,NULL,0,0,0,100,0),
(1379720,10,71.6881,-539.98,110.94,NULL,0,0,0,100,0),
(1379720,11,79.952,-545.042,110.939,NULL,0,0,0,100,0),
(1379720,12,87.704,-550.909,110.923,NULL,0,0,0,100,0),
(1379720,13,96.0483,-553.948,110.578,NULL,0,0,0,100,0),
(1379720,14,105.091,-557.245,107.682,NULL,0,0,0,100,0),
(1379720,15,112.967,-557.621,107.663,NULL,0,0,0,100,0),
(1379720,16,117.291,-562.613,107.403,NULL,0,0,0,100,0);
