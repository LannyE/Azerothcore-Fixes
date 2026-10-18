

-- Lodaeron Sentry Section
UPDATE `creature` SET `position_x`=-8408.11,`position_y`=-4059.8,`position_z`=-208.387  WHERE `guid`=23077;

-- Darkwater Croclisk Specimen
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=20026;

DELETE FROM smart_scripts WHERE `entryorguid` = -22782 and `source_type` = 0 and `id` IN (0);

-- Custodian of Time Section
UPDATE `creature_template` SET `AIName`="",`speed_walk`=1.6 WHERE `entry`=19950;

-- Restore extra Custodian of Time
DELETE FROM creature WHERE `guid` in (23459);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(23459,19950,0,0,1,0,0,1,1,0,-8437.1,-4121.61,-208.488,4.45981,600,0,0,6986,0,0,0,0,0,'',0,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` = -23462 and `source_type` = 0 and `id` IN (0);

-- Custodians Pathing
UPDATE `creature` SET `position_x`=-8649.3,`position_y`=-4396.57,`position_z`=-207.69,`orientation`=3.82227,`MovementType` = 0 WHERE `guid`=23460;
UPDATE `creature` SET `position_x`=-8650.39,`position_y`=-4393.61,`position_z`=-207.686,`orientation`=3.82227,`MovementType` = 0 WHERE `guid`=23461;

DELETE FROM creature_addon WHERE `guid` in (23460,23461);
DELETE FROM waypoint_data WHERE `id` = 234600;
DELETE FROM `creature_formations` where leaderGUID = 23460;


-- Time Watcher Section
DELETE FROM creature_addon where guid IN (23440, 23439, 23438, 23437, 23436, 23433, 23432, 23429, 23426);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(23426,0,0,0,1,0,0,NULL),
(23429,0,0,0,1,0,0,NULL),
(23432,0,0,0,1,0,0,NULL),
(23433,0,0,0,1,0,0,NULL),
(23436,0,0,0,1,0,0,NULL),
(23437,0,0,0,1,0,0,NULL),
(23438,0,0,0,1,0,0,NULL),
(23439,0,0,0,1,0,0,NULL),
(23440,0,0,0,1,0,0,NULL);

-- DELETE FROM creature_template_movement WHERE `CreatureId` = 19918;
-- INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
-- (19918,0,0,1,0,0,0,NULL);

UPDATE `creature_template_addon` SET `visibilityDistanceType`=0 WHERE `entry`=19918;
UPDATE `creature_template` SET `speed_walk`=0.66667,`speed_flight`=1,,`unit_flags2`=2048 WHERE `entry`=19918;
UPDATE `creature` SET `spawntimesecs`=600 WHERE `id1`=19918;
UPDATE `creature` SET `MovementType`=1,`wander_distance`=15 WHERE `guid` IN (23426,23429,23432,23433,23436,23437,23438,23439,23440,23435);

DELETE FROM smart_scripts WHERE `entryorguid` IN (-23426,-23429,-23432,-23433,-23435,-23436,-23437,-23438,-23439,-23440) and `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (1991800,1991801,1991802,1991803,1991804,1991805,1991806,1991807,1991808,1991809) and `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-23440,0,0,0,1,0,100,512,1200000,1200000,1200000,1200000,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC  - Start wp'),
(-23440,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34699,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23440,0,2,0,58,0,100,512,6,0,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23440,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23439,0,0,0,1,0,100,512,1200000,1200000,1200000,1200000,0,0,53,1,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23439,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23439,0,2,0,58,0,100,512,7,0,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23439,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23438,0,0,0,1,0,100,512,1800000,1800000,1800000,1800000,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC  - Start wp'),
(-23438,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34699,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23438,0,2,0,58,0,100,512,6,0,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23438,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23437,0,0,0,1,0,100,512,1800000,1800000,1800000,1800000,0,0,53,1,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23437,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23437,0,2,0,58,0,100,512,7,0,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23437,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23436,0,0,0,1,0,100,512,2200000,2200000,2200000,2200000,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23436,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34699,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23436,0,2,0,58,0,100,512,6,0,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23436,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23433,0,0,0,1,0,100,512,2600000,2600000,2600000,2600000,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23433,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34699,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23433,0,2,0,58,0,100,512,6,0,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23433,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23432,0,0,0,1,0,100,512,2200000,2200000,2200000,2200000,0,0,53,1,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23432,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23432,0,2,0,58,0,100,512,7,0,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23432,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23429,0,0,0,1,0,100,512,3000000,3000000,3000000,3000000,0,0,53,1,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23429,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23429,0,2,0,58,0,100,512,7,0,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23429,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(-23426,0,0,0,1,0,100,512,2600000,2600000,2600000,2600000,0,0,53,1,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23426,0,1,0,40,0,100,0,2,0,0,0,0,0,11,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp2 - Cast'),
(-23426,0,2,0,58,0,100,512,7,0,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On wp Ended - Action list'),
(-23426,0,3,0,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Reset - Set Active On'),

(1991800,9,0,0,0,0,100,0,0,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - Action list - Set invisible'),
(1991800,9,1,0,0,0,100,0,5000,5000,0,0,0,0,28,34699,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - Action list - remove aura'),
(1991800,9,2,0,0,0,100,0,180000,180000,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - Action list - Set visible'),

(1991801,9,0,0,0,0,100,0,0,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - Action list - Set invisible'),
(1991801,9,1,0,0,0,100,0,5000,5000,0,0,0,0,28,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - Action list - remove aura'),
(1991801,9,2,0,0,0,100,0,180000,180000,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - Action list - Set visible');

DELETE FROM `waypoints` WHERE `entry` IN(2344000,2344001,2344002,2344003,2344004,2344005,2343500,2343501);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(2344000, 1, -8450.692383, -4176.048340, -199.006653, 'Time Watcher'),
(2344000, 2, -8449.390625, -4160.058105, -209.984818, 'Time Watcher'),
(2344000, 3, -8448.969727, -4158.049805, -208.871887, 'Time Watcher'), 
(2344000, 4, -8436.923828, -4107.062012, -209.587540, 'Time Watcher'),
(2344000, 5, -8393.622070, -4071.729736, -209.587540, 'Time Watcher'),
(2344000, 6, -8349.183594, -4058.919189, -209.033203, 'Time Watcher'),
(2344001, 1, -8340.623047, -4344.326172, -199.383408, 'Time Watcher'), 
(2344001, 2, -8314.343750, -4348.677246, -209.548553, 'Time Watcher'), 
(2344001, 3, -8246.214844, -4344.385742, -205.160355, 'Time Watcher'),
(2344001, 4, -8207.163086, -4307.918945, -196.205338, 'Time Watcher'),
(2344001, 5, -8186.439941, -4259.733398, -183.948654, 'Time Watcher'),
(2344001, 6, -8188.971191, -4211.268555, -174.056534, 'Time Watcher'),
(2344001, 7, -8169.538574, -4167.970703, -165.149277, 'Time Watcher');

-- Stratholme Citizens Specimens
DELETE FROM creature_addon where guid IN (84851,84743,84663,84629,84604,84863,84647,84646,84611,84609,84939,84900,84862,84610,84511,84510,84509,300020,300021,300022,300023);

DELETE FROM creature where guid IN (84851,84743,84663,84629,84604,84863,84647,84646,84611,84609,84939,84900,84862,84610,84511,84510,84509,300020,300021,300022,300023);


-- Lady Sinestra ???????????  Change from Time Watcher to Lady Sinestra in the comment. 
-- UPDATE `smart_scripts` SET `comment`="Time Watcher - OOC  - Start wp" WHERE `entryorguid`=23283 and `source_type` = 0 and `id` = 0;
-- (23283,0,0,0,1,0,100,512,7200000,7200000,7200000,7200000,0,0,53,1,2328300,0,0,0,1,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC  - Start wp'),