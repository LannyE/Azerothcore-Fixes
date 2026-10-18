/*
-- Query: SELECT * FROM acore_world.creature WHERE `guid` IN (48350,48578)
LIMIT 0, 50000

-- Date: 2024-12-11 21:39
*/
-- Remove Excess Gnarlpine Defenders
DELETE FROM creature WHERE `guid` IN (48350,48578,49166,49168);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(48350,2009,0,0,1,0,0,1,1,1,9827.01,1495.05,1257.96,0.294512,300,0,0,131,138,0,0,0,0,'',0,0,NULL),
(48578,2011,0,0,1,0,0,1,1,1,9849.93,1461.07,1274.64,3.12812,300,0,0,148,165,0,0,0,0,'',0,0,NULL),
(49166,2011,0,0,1,0,0,1,1,1,9703.19,1547.13,1254.1,0.279253,300,0,0,148,165,0,0,0,0,'',0,0,NULL),
(49168,2011,0,0,1,0,0,1,1,1,9839.81,1531.67,1258.13,-0.972455,300,0,0,148,165,0,0,0,0,'',0,0,NULL);

-- Wandering Angur
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (49173);

-- UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (49173);
DELETE FROM creature_addon where guid IN (49173);

DELETE FROM `waypoint_data` WHERE `id` IN (491730);
