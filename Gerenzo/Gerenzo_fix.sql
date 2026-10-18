/*
Gerenzo Wrenchwhistle
Has multiple spawn locations.  New GUID 300489 added location next to armor vendor
Increase Respawn timer to 15 minutes as indicated in wowhead
Mobs on platform wander
*/

-- Gerenzo Wrenchwhistle
UPDATE `creature` SET `spawntimesecs`= 900 WHERE `guid` in (29254); -- 300

DELETE FROM `creature` where guid in (300489);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300489,4202,0,0,1,0,0,1,1,1,1608.2473,185.5513,104.61083,3.3168,900,0,0,840,0,0,0,0,0,'',0,0,NULL); 

DELETE FROM `pool_creature` where `pool_entry` = 29254;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(29254,29254,0,'Gerenzo Wrenchwhistle (29254)'),
(300489,29254,0,'Gerenzo Wrenchwhistle (300489)');

DELETE FROM `pool_template` where `entry` = 29254;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(29254,1,'Gerenzo Wrenchwhistle Pool');


-- Venture Co. Engineer
UPDATE `creature` SET `wander_distance`= 3,`MovementType` = 1 WHERE `guid` in (29578,29581); -- 0 0


-- Venture Co. Machine Smith
UPDATE `creature` SET `wander_distance`= 3,`MovementType` = 1 WHERE `guid` in (29582,29583,29584); -- 0 0


-- Venture Co. Builder
UPDATE `creature` SET `wander_distance`= 3,`MovementType` = 1 WHERE `guid` in (32290,32291); -- 0 0


/*
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(29254,4202,0,0,1,0,0,1,1,1,1605.99,96.7067,98.6662,0.191986,300,0,0,840,0,0,0,0,0,'',0,0,NULL),
(29578,3992,0,0,1,0,0,1,1,0,1587.77,176.649,99.5181,1.73537,300,0,0,494,0,0,0,0,0,'',0,0,NULL),
(29581,3992,0,0,1,0,0,1,1,0,1653.63,117.756,120.992,5.43651,300,0,0,494,0,0,0,0,0,'',0,0,NULL),
(29582,3993,0,0,1,0,0,1,1,1,1603.67,181.113,104.684,3.6197,300,0,0,531,0,0,0,0,0,'',0,0,NULL),
(29583,3993,0,0,1,0,0,1,1,1,1616.66,148.559,104.955,0.493765,300,0,0,531,0,0,0,0,0,'',0,0,NULL),
(29584,3993,0,0,1,0,0,1,1,1,1615.13,95.7419,98.6637,0.463949,300,0,0,531,0,0,0,0,0,'',0,0,NULL),
(32290,4070,0,0,1,0,0,1,1,1,1624.69,112.277,105.365,2.32781,300,0,0,494,0,0,0,0,0,'',0,0,NULL),
(32291,4070,0,0,1,0,0,1,1,1,1631.86,115.879,116.168,2.75762,300,0,0,494,0,0,0,0,0,'',0,0,NULL);
*/
