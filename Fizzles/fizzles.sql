/*
-- Query: SELECT * FROM temp.creature where id in (1419)
LIMIT 0, 10000

-- Date: 2022-03-06 17:46
*/
DELETE FROM `creature` WHERE guid = 79379;
INSERT INTO `creature` (`guid`,`id1`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(79379,1419,0,0,0,1,1,0,-8994.19,947.069,118.348,4.29351,300,0,0,8,0,0,0,0,0,'',0);
