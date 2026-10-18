/*
-- Query: SELECT * FROM acore_world.creature where guid in (37101)
LIMIT 0, 10000

-- Date: 2022-03-08 12:18
*/
DELETE FROM `creature` WHERE `guid`=37101;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(37101,3695,0,0,1,0,0,1,1,0,4758.35,203.678,53.895,2.17813,275,0,0,273,0,0,0,0,0,'',0);
