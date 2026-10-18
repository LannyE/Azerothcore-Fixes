-- Integrated Ursollok changes 1-16-23 to make spawntime to 37800 in the creature table

-- New Creature GUIDs 300490, 300491 and New pool creature and pool template entry 51869
UPDATE `creature` SET `position_x` = 2808.17, `position_y` = -3107.65, `position_z` = 177.759, `MovementType` = 0, `wander_distance` = 0, `spawntimesecs` = 37800 WHERE `guid` = 51869;
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` = 12037;

DELETE FROM `creature` where `guid` in (300490,300491);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(300490,12037,0,0,1,0,0,1,1,0,2054.36,-3395.95,92.678,6.09464,37800,20,0,1258,0,1,0,0,0,'',0),
(300491,12037,0,0,1,0,0,1,1,0,2515.19,-3094.04,126.713,6.17846,37800,20,0,1258,0,1,0,0,0,'',0);


DELETE FROM `pool_creature` where `pool_entry` = 51869;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES 
(51869,51869,0,'Ursol\'Lok (51869)'),
(300490,51869,0,'Ursol\'Lok (300490)'),
(300491,51869,0,'Ursol\'Lok (300491)');

DELETE FROM `pool_template` where `entry` = 51869;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(51869,1,'Ursol\'lok Pool');

-- Move Shredder out of blizzlike Ursol'lok location to a more blizzlike location
UPDATE `creature` SET `position_x` = 2360.088, `position_y` = -3117.057, `position_z` = 121.767 WHERE `guid` = 33068;