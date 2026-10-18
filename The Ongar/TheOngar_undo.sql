/*
-- Query: SELECT * FROM acore_world.creature where ID1 IN (6646,10647,16306,14345) or guid in (51894,51898)
LIMIT 0, 1000

-- Date: 2022-12-23 10:30
*/
DELETE FROM `creature` WHERE `guid` IN (51896,120682);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(51896,14345,0,0,1,0,0,1,1,0,5220.47,-785.919,346.773,0.676159,9900,0,0,2980,0,0,0,0,0,'',0);

DELETE FROM `pool_creature` where `pool_entry` = 51896;

DELETE FROM `pool_template` where `entry` = 51896;