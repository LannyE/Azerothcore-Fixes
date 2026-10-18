-- it spawns in multiple places
-- New GUIDs = 300086, 300087, 3000088

DELETE FROM `creature` where `guid` in (300086,300087,300088);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300086,2186,0,0,1,0,0,1,1,0,5998.4487,362.2932,21.391628,4.1917,9900,2,0,356,0,1,0,0,0,'',0,0,NULL),
(300087,2186,0,0,1,0,0,1,1,0,4906.538,328.00644,36.76887,6.0243,9900,3,0,356,0,1,0,0,0,'',0,0,NULL),
(300088,2186,0,0,1,0,0,1,1,0,4636.166,148.07219,58.561546,0.2253,9900,0,0,356,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `pool_creature` where `pool_entry` = 51900;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(51900,51900,0,'Carnivous the Breaker (51900)'),
(300086,51900,0,'Carnivous the Breaker (300086)'),
(300087,51900,0,'Carnivous the Breaker (300087)'),
(300088,51900,0,'Carnivous the Breaker (300088)');

DELETE FROM `pool_template` where `entry` = 51900;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(51900,1,'Carnivous the Breaker Pool');
