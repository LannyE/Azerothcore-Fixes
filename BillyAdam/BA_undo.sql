/*
-- Query: SELECT * FROM acore_world.broadcast_text where ID in (209,224,225,213,214,217,210,205,216,212,208,215,206,201,218,222,221,204,219)
LIMIT 0, 10000

-- Date: 2022-03-05 19:36
*/
DELETE FROM `creature` WHERE `guid` in (120700,120702,79700,79702);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(79702,1366,0,0,0,0,0,1,1,1,-8747.28,535.483,96.338,1.01889,370,0,0,42,0,0,0,0,0,'',0),
(79700,1367,0,0,0,0,0,1,1,1,-8745.93,534.749,96.338,0.994838,370,0,0,42,0,0,0,0,0,'',0);
-- (120700,1366,0,0,0,0,0,1,1,1,-8840.67,958.553,96.338,5.21882,180,5,0,42,0,1,0,0,0,'',0),
-- (120702,1367,0,0,0,0,0,1,1,1,-8842.04,956.97,96.338,5.40947,180,0,0,42,0,0,0,0,0,'',0);

DELETE FROM `creature_addon` where `guid` in (120700,120702,79700,79702);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(120700,0,0,0,1,0,0,NULL),
(120702,0,0,0,1,0,0,NULL);

UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (1366,1367);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (1366,1367,136600,136601,136602,136700,136701);

DELETE FROM `creature_text` where `CreatureID` in (1367,1366);

DELETE FROM `waypoints` WHERE `entry` IN (1366,136600,136601);

-- Canals cleanup
-- Add duplicate soldier back
/*
DELETE FROM `creature` WHERE `guid` = 120682;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(120682,68,0,0,0,0,0,1,1,1,-8833.83,724.611,97.9876,2.17175,180,5,0,15952,0,1,0,0,0,'',0);

DELETE FROM `creature_addon` where `guid` = 120682;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(120682,0,0,0,257,0,0,NULL); */
