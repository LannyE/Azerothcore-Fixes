/*
-- Query: SELECT * FROM acore_world.creature where ID1 IN (6646) or guid = 51863
LIMIT 0, 1000

-- Date: 2022-12-17 22:58
*/

UPDATE `creature` SET `MovementType` = 0, `spawntimesecs` = 43200 WHERE `guid` = 51862;
DELETE FROM `creature` WHERE `guid` = 51863;

-- INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
-- (51862,6646,0,0,1,0,0,1,1,1,4483.47,-7141.17,108.877,3.90305,43200,0,0,7359,0,0,0,0,0,'',0);

DELETE FROM `creature_addon` WHERE `guid` in (51862,51863);
DELETE FROM `pool_creature` where `pool_entry` = 51862;
DELETE FROM `pool_template` where `entry` = 51862;
DELETE FROM `waypoint_data` WHERE `id` in (518620,518630);