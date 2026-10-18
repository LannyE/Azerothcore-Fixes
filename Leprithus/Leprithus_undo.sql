/*
undo
-- Leprithus Event 3-25-26

-- Date: 2022-03-25 15:26
*/
DELETE FROM `creature_formations` WHERE `leaderGUID` in (134020,134021);

DELETE FROM `creature` WHERE `guid` in (28458,134020,134021,134022,134023);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(28458,572,0,0,0,0,0,1,1,0,-10030.1,1510.22,40.7341,6.16887,72000,5,0,404,456,1,0,0,0,'',0),
(134020,572,0,0,0,0,0,1,1,0,-10082.3,1549,40.8503,3.59826,72000,5,0,404,456,1,0,0,0,'',0),
(134021,572,0,0,0,0,0,1,1,0,-10103.1,1541.36,42.5909,3.731,72000,5,0,404,456,1,0,0,0,'',0),
(134022,572,0,0,0,0,0,1,1,0,-10956.3,751.845,43.5525,1.13134,72000,5,0,404,456,1,0,0,0,'',0),
(134023,572,0,0,0,0,0,1,1,0,-10984.9,744.087,46.2746,1.49104,72000,5,0,404,456,1,0,0,0,'',0);

DELETE FROM `creature_addon` WHERE `guid` = 134021;

-- DELETE FROM `game_event_creature` WHERE `eventEntry` = 25 and `guid` in (134020,134021);

DELETE FROM `game_event` WHERE `eventEntry` = 89;
DELETE FROM `game_event_creature` WHERE `eventEntry` = 89 and `guid` in (134020,134021,86827,86828,86829,86830);

-- NEEDED TO CHANGE GUID AS of 6-25-26 this was reused.
DELETE FROM `pool_template` WHERE `entry` = 209877;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(209877,1,'Leprithus (572)');

DELETE FROM `pool_creature` WHERE `guid` in (28458,134020,134021,134022,134023);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(28458,1004,0,'Leprithus (572) - Spawn 1'),
(134020,1004,0,'Leprithus (572) - Spawn 2'),
(134021,1004,0,'Leprithus (572) - Spawn 3'),
(134022,1004,0,'Leprithus (572) - Spawn 4'),
(134023,1004,0,'Leprithus (572) - Spawn 5');

DELETE FROM `waypoint_data` WHERE `id` = 1340210;
