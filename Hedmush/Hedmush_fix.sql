UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (86606);

DELETE FROM `creature` where `guid` in (300497,300498);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300497,10821,0,0,0,0,0,1,1,0,3146.091,-4327.4277,139.7321,2.3378,72000,5,0,3758,0,1,0,0,0,'',0,0,NULL),
(300498,10821,0,0,0,0,0,1,1,0,1857.879,-3657.1292,143.5127,2.2636,72000,5,0,3758,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `pool_creature` where `pool_entry` = 86606;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(86606,86606,0,'Hedmush the Rotting (86606)'),
(300497,86606,0,'Hedmush the Rotting (300497)'),
(300498,86606,0,'Hedmush the Rotting (300498)');

DELETE FROM `pool_template` where `entry` = 86606;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(86606,1,'Hedmush the Rotting Pool');