/*
-- Query: SELECT * FROM temp.creature where guid in (80020)
LIMIT 0, 1000

-- Date: 2022-07-20 09:45
*/
DELETE FROM `creature` where `guid` in (80020);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(80020,257,0,0,0,0,0,1,1,1,-8768.63,-113.135,83.6789,0.0699,300,5,0,71,0,1,0,0,0,'',0);
