-- New Creature GUIDs 300492, 300493, 300494, 300495 and New pool creature and pool template entry 86300
UPDATE `creature` SET `spawntimesecs` = 8400 WHERE `guid` in (86300,86301);
DELETE FROM `creature` where `guid` in (300492,300493,300494,300495);

DELETE FROM `pool_creature` where `pool_entry` = 86300;

DELETE FROM `pool_template` where `entry` = 86300;

DELETE FROM `creature` where `guid` = 85178; -- Underwater Construction worker
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(85178,28573,0,0,0,0,0,1,1,0,-8651.28,933.201,85.8592,0.683837,25,0,0,955,0,2,0,0,0,'',0);

DELETE FROM `creature_addon` where `guid` = 85178;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(85178,851780,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` = 851780;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(851780,1,-8651.28,933.201,85.8592,0,30000,0,334,100,0),
(851780,2,-8654.19,924.929,89.5997,0,0,0,0,100,0),
(851780,3,-8650.84,923.981,89.7779,0,0,0,0,100,0),
(851780,4,-8656.33,931.811,87.6045,0,0,0,0,100,0),
(851780,5,-8646.35,923.302,86.446,0,0,0,0,100,0),
(851780,6,-8645.55,926.061,85.799,0,30000,0,335,100,0);

DELETE FROM `waypoint_scripts` where id in (334,335);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(334,0,2,83,233,0,0,0,0,0,351),
(335,0,2,83,233,0,0,0,0,0,352);
