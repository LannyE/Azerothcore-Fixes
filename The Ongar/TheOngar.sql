-- New Creature GUID 120682  - Reused deleted random Stormwind Guard GUID from Stormwind update

UPDATE `creature` SET `position_x` = 5290.771, `position_y` = -821.071, `position_z` = 339.023, `orientation` = 0.985 WHERE `guid` = 51896;
DELETE FROM `creature` WHERE `guid` = 120682;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(120682,14345,0,0,1,0,0,1,1,0,5270.032,-549.781,317.62,4.714421,9900,0,0,2980,0,0,0,0,0,'',0);

DELETE FROM `pool_creature` where `pool_entry` = 51896;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(51896,51896,0,'The Ongar (51896)'),
(120682,51896,0,'The Ongar (120682)');

DELETE FROM `pool_template` where `entry` = 51896;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(51896,1,'The Ongar Pool');