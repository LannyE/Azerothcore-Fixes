/*
-- Query: SELECT * FROM acore_world.creature where id1 in (14340)
LIMIT 0, 1000

-- Date: 2022-01-29 08:24
*/
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 1 WHERE `guid` = 51894;
-- INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
-- (51894,14340,0,0,1,0,0,1,1,0,3866.84,-672.535,328.788,3.99761,9900,0,0,3293,0,2,0,0,0,'',0);
