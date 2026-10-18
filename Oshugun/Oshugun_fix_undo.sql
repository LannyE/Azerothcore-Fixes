-- Terrorguard
DELETE FROM `creature` WHERE `guid` IN (66921,66922);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(66921,18661,530,0,0,1,1,0,1,-2675.31,8335.14,-77.7456,1.72588,300,5,0,5060,2933,1,0,0,0,'',0),
(66922,18661,530,0,0,1,1,0,1,-2655.17,8320.86,-71.9772,0.005509,300,5,0,5060,2933,1,0,0,0,'',0);
/*
DELETE FROM `creature` WHERE `guid` IN (66926,66927);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(66926,18661,0,0,530,0,0,1,1,1,-2676.53,8341.16,-77.6729,4.46804,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL),
(66927,18661,0,0,530,0,0,1,1,1,-2628.72,8320.46,-65.946,6.10865,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `position_x` = -2675.31,`position_y` = 8335.14,`position_z` = -77.6394,`orientation` = 1.72588,`MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (66922);

DELETE FROM `creature_addon` where `guid` IN (66922);

DELETE FROM `waypoint_data` WHERE `id` IN (669220);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (66921);

DELETE FROM `creature_addon` where `guid` IN (66921);

DELETE FROM `waypoint_data` WHERE `id` IN (669210);
*/

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (66924,66923,66925);
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (66926,66927);

DELETE FROM `creature_addon`  where `guid` in (66927,66926,66924,66923,66925);



DELETE FROM `waypoint_data` where `id` IN (669270,669220,669210,669260,669240,669230,669250);



-- Kil'sorrow Ritualist
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18658) AND `source_type` = 0 AND `id` IN (14);


-- Orc Ancestor
UPDATE `creature_template_movement` SET `ground` = 0,`flight` = 1,`rooted` = 0 WHERE `creatureId` in (18662); -- To appear in the air dead correctly you must use ground 1 and rooted 1 with flight 0
-- Subjugator Vaz'shir
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18660) AND `source_type` = 0 AND `id` IN (2);



