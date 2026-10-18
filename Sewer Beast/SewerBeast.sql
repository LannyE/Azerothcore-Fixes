-- New Creature GUIDs 300492, 300493, 300494, 300495 and New pool creature and pool template entry 86300
UPDATE `creature` SET `spawntimesecs` = 87180 WHERE `guid` in (86300,86301);
DELETE FROM `creature` where `guid` in (300492,300493,300494,300495);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(300492,3581,0,0,0,0,0,1,1,0,-8479.075,709.373,85.894,3.7941,87180,0,0,17720,0,0,0,0,0,'',0),
(300493,3581,0,0,0,0,0,1,1,0,-8648.995,927.668,85.894,3.854,87180,0,0,17720,0,0,0,0,0,'',0),
(300494,3581,0,0,0,0,0,1,1,0,-8860.171,965.54,85.893,5.484,87180,0,0,17720,0,0,0,0,0,'',0),
(300495,3581,0,0,0,0,0,1,1,0,-8906.125,709.376,85.892,0.7132,87180,0,0,17720,0,0,0,0,0,'',0);

DELETE FROM `pool_creature` where `pool_entry` = 86300;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(86300,86300,0,'Sewer Beast (86300)'),
(86301,86300,0,'Sewer Beast (86301)'),
(300492,86300,0,'Sewer Beast (300492)'),
(300493,86300,0,'Sewer Beast (300493)'),
(300494,86300,0,'Sewer Beast (300494)'),
(300495,86300,0,'Sewer Beast (300495)');

DELETE FROM `pool_template` where `entry` = 86300;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(86300,1,'Sewer Beast Pool');

-- Underwater Construction Worker
DELETE FROM `creature` where `guid` = 85178;  -- Remove the underwater construction worker WOTLK expansion removed them
DELETE FROM `creature_addon` where `guid` = 85178;
DELETE FROM `waypoint_data` WHERE `id` = 851780;
DELETE FROM `waypoint_scripts` where id in (334,335);

