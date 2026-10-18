-- New Creature GUIDs 300020,300021,300022,300023
-- GUIDs Freed Up:  23459

-- Lodaeron Sentry Section
UPDATE `creature` SET `position_x`=-8405.864,`position_y`=-4058.9946,`position_z`=-208.58603  WHERE `guid`=23077;


-- Darkwater Croclisk Specimen
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=20026;

DELETE FROM smart_scripts WHERE `entryorguid` = -22782 and `source_type` = 0 and `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-22782,0,0,0,1,0,100,0,100,100,0,0,0,11,46247,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Darkwater Crocolisk Specimen - OOC - Cast Summon Black Hole');

-- Custodian of Time Section
UPDATE `creature_template` SET `AIName`="SmartAI",`speed_walk`=1 WHERE `entry`=19950;

-- Remove extra Custodian of Time
DELETE FROM creature WHERE `guid` in (23459);

-- DELETE FROM creature_addon WHERE `guid` in (23462);
-- INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
-- (23462,0,0,0,0,193,0,NULL);

DELETE FROM smart_scripts WHERE `entryorguid` = -23462 and `source_type` = 0 and `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-23462,0,0,0,1,0,100,0,2000,2000,2000,4000,0,5,469,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Custodian of Time - OOC - Emote Channel');

-- Custodians Pathing
UPDATE `creature` SET `position_x`=-8349.495,`position_y`=-4051.0713,`position_z`=-207.94597,`orientation`=0.19669777,`MovementType` = 2 WHERE `guid`=23460;
UPDATE `creature` SET `position_x`=-8354.726,`position_y`=-4052.1135,`position_z`=-208.0436,`orientation`=0.19669777,`MovementType` = 2 WHERE `guid`=23461;

DELETE FROM creature_addon WHERE `guid` in (23460,23461);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(23460,234600,0,0,1,0,0,NULL),
(23461,234600,0,0,1,0,0,NULL);

DELETE FROM waypoint_data WHERE `id` = 234600;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(234600,1,-8385.838,-4050.435,-208.5204,0,0,0,0,100,0), -- First stop after portal
(234600,2,-8411.193,-4064.9248,-208.58571,0,0,0,0,100,0),
(234600,3,-8419.495,-4068.0652,-208.28905,0,0,0,0,100,0),
(234600,4,-8441.096,-4084.8235,-208.58574,0,0,0,0,100,0),
(234600,5,-8441.117,-4089.2615,-208.58574,0,0,0,0,100,0),
(234600,6,-8456.914,-4106.503,-208.58574,0,0,0,0,100,0),
(234600,7,-8454.213,-4161.316,-209.70798,0,0,0,0,100,0),
(234600,8,-8459.851,-4176.914,-212.464,4.343596,0,0,0,100,0), -- Tower
(234600,9,-8454.213,-4161.316,-209.70798,0,0,0,0,100,0),
(234600,10,-8456.914,-4106.503,-208.58574,0,0,0,0,100,0),
(234600,11,-8441.117,-4089.2615,-208.58574,0,0,0,0,100,0),
(234600,12,-8441.096,-4084.8235,-208.58574,0,0,0,0,100,0),
(234600,13,-8419.495,-4068.0652,-208.28905,0,0,0,0,100,0),
(234600,14,-8411.193,-4064.9248,-208.58571,0,0,0,0,100,0),
(234600,15,-8385.838,-4050.435,-208.5204,0,0,0,0,100,0),
(234600,16,-8349.495,-4051.0713,-207.94597,0.19669777,0,0,0,100,0); -- Portal

DELETE FROM `creature_formations` where leaderGUID = 23460;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(23460,23460,0,0,515,0,0),
(23460,23461,5,180,515,0,0);

-- Time Watcher Section
/*
DELETE FROM creature_template_movement WHERE `CreatureId` = 19918;
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(19918,0,0,1,0,0,0,NULL);
*/
DELETE FROM creature_addon where guid IN (23440,23439,23438,23437,23436,23433,23432,23429,23426);

UPDATE `creature_template_addon` SET `visibilityDistanceType`=4 WHERE `entry`=19918;
UPDATE `creature_template` SET `speed_walk`=3,`speed_flight`=1,`unit_flags2`=2050 WHERE `entry`=19918;
UPDATE `creature` SET `spawntimesecs`=10 WHERE `id1`=19918; -- 1080
UPDATE `creature` SET `MovementType`=0,`wander_distance`=0 WHERE `guid` IN (23426,23429,23432,23433,23436,23437,23438,23439,23440,23435);

-- GUID 23435 is the only one without a smartscript
DELETE FROM smart_scripts WHERE `entryorguid` IN (-23426,-23429,-23432,-23433,-23435,-23436,-23437,-23438,-23439,-23440) and `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (1991800,1991801,1991802,1991803,1991804,1991805,1991806,1991807,1991808,1991809) and `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (-23440,0,0,0,1,0,100,512,1200000,1260000,0,0,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23440,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'), -- Darkwater Croc
(-23440,0,1,0,40,0,100,512,1,2344005,0,0,0,0,80,1991807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23440,0,2,0,58,0,100,512,6,2344005,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23440,0,3,0,58,0,100,512,2,2344004,0,0,0,0,80,1991808,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23440,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991809,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23440,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23440,0,5,0,1,0,100,512,1200000,1200000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23439,0,0,0,1,0,100,512,1000000,1060000,0,0,0,0,53,0,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23439,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'),
(-23439,0,1,0,40,0,100,512,1,2344003,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23439,0,2,0,58,0,100,512,6,2344003,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23439,0,3,0,58,0,100,512,2,2344001,0,0,0,0,80,1991804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23439,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991805,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23439,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23439,0,5,0,1,0,100,512,1000000,1000000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23438,0,0,0,1,0,100,512,900000,960000,0,0,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23438,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'),
(-23438,0,1,0,40,0,100,512,1,2344002,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23438,0,2,0,58,0,100,512,6,2344002,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23438,0,3,0,58,0,100,512,2,2344000,0,0,0,0,80,1991803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23438,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991806,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23438,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23438,0,5,0,1,0,100,512,900000,900000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23437,0,0,0,1,0,100,512,720000,780000,0,0,0,0,53,0,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23437,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'),
(-23437,0,1,0,40,0,100,512,1,2344003,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23437,0,2,0,58,0,100,512,6,2344003,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23437,0,3,0,58,0,100,512,2,2344001,0,0,0,0,80,1991804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23437,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991805,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23437,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23437,0,5,0,1,0,100,512,720000,720000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23436,0,0,0,1,0,100,512,1020000,1100000,0,0,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'), 
(-23436,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'), -- Darkwater Croc
(-23436,0,1,0,40,0,100,512,1,2344005,0,0,0,0,80,1991807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23436,0,2,0,58,0,100,512,6,2344005,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23436,0,3,0,58,0,100,512,2,2344004,0,0,0,0,80,1991808,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23436,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991809,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23436,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23436,0,5,0,1,0,100,512,1020000,1020000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23433,0,0,0,1,0,100,512,780000,840000,0,0,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23433,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'),
(-23433,0,1,0,40,0,100,512,1,2344002,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23433,0,2,0,58,0,100,512,6,2344002,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23433,0,3,0,58,0,100,512,2,2344000,0,0,0,0,80,1991803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23433,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991806,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23433,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23433,0,5,0,1,0,100,512,780000,780000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23432,0,0,0,1,0,100,512,90000,120000,0,0,0,0,53,0,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'), 
(-23432,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'), -- Lodaeron
(-23432,0,1,0,40,0,100,512,1,2344002,0,0,0,0,80,1991800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23432,0,2,0,58,0,100,512,6,2344002,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23432,0,3,0,58,0,100,512,2,2344000,0,0,0,0,80,1991803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23432,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991806,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23432,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23432,0,5,0,1,0,100,512,90000,90000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- (-23429,0,0,0,1,0,100,512,1260000,1320000,0,0,0,0,53,0,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Start wp'),
(-23429,0,0,0,1,0,100,512,1140000,1140000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Despawn'),
(-23429,0,1,0,40,0,100,512,1,2344003,0,0,0,0,80,1991801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint 1 Reached - Run Script'),
(-23429,0,2,0,58,0,100,512,6,2344003,0,0,0,0,80,1991802,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23429,0,3,0,58,0,100,512,2,2344001,0,0,0,0,80,1991804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Waypoint End Reached - Run Script'),
(-23429,0,4,0,1,0,100,512,500,500,0,0,0,0,80,1991805,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Run Script'),
(-23429,0,5,0,11,0,100,512,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Hide)'),
-- (-23429,0,5,0,1,0,100,512,1260000,1260000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - OOC - Set Unit_flags2 (Unhide)'),

-- Time Wardens that just fly around
(-23426,0,0,1,11,0,100,512,0,0,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Unhide)'),
(-23426,0,1,2,61,0,100,512,0,0,0,0,0,0,53,0,2343501,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher -  On Respawn (Linked) - Start wp'),
(-23426,0,2,0,61,0,100,512,0,0,0,0,0,0,136,0,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher -  On Respawn (Linked) - Set Walk Speed'),

(-23435,0,0,1,11,0,100,512,0,0,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Respawn - Set Unit_flags2 (Unhide)'),
(-23435,0,1,2,61,0,100,512,0,0,0,0,0,0,53,0,2343500,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher -  On Respawn (Linked) - Start wp'),
(-23435,0,2,0,61,0,100,512,0,0,0,0,0,0,136,0,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher -  On Respawn (Linked) - Set Walk Speed'),


(1991800,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34699,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Cast'), -- Lodaeron
(1991800,9,1,0,0,0,100,0,100,100,0,0,0,0,60,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Enable Gravity'),

(1991801,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Cast'), -- Wisp
(1991801,9,1,0,0,0,100,0,100,100,0,0,0,0,60,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Enable Gravity'),

(1991802,9,0,0,0,0,100,0,0,0,0,0,0,0,60,0,5,1,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Disable Gravity'),
(1991802,9,1,0,0,0,100,0,0,0,0,0,0,0,136,0,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'),
(1991802,9,2,0,0,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Active'),
(1991802,9,3,0,0,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Despawn'),

(1991803,9,0,0,0,0,100,0,100,100,0,0,0,0,60,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Enable Gravity'),
(1991803,9,1,0,0,0,100,0,100,100,0,0,0,0,136,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'),
(1991803,9,2,0,0,0,100,0,100,100,0,0,0,0,53,0,2344002,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Start wp'),

(1991804,9,0,0,0,0,100,0,100,100,0,0,0,0,60,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Enable Gravity'),
(1991804,9,1,0,0,0,100,0,100,100,0,0,0,0,136,0,1,5,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'), -- Wisps are faster
(1991804,9,2,0,0,0,100,0,100,100,0,0,0,0,53,0,2344003,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Start wp'),

(1991805,9,0,0,0,0,100,0,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Hide)'),
(1991805,9,1,0,0,0,100,0,0,0,0,0,0,0,11,34712,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Cast Time Stop'),
(1991805,9,2,0,0,0,100,0,100,100,0,0,0,0,136,0,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'),
(1991805,9,3,0,0,0,100,0,360000,900000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Unhide)'),
-- (1991805,9,3,0,0,0,100,0,10000,30000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Unhide)'),
(1991805,9,4,0,0,0,100,0,100,100,0,0,0,0,28,34712,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Remove Time Stop Aura'),
(1991805,9,5,0,0,0,100,0,100,100,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Active'),
(1991805,9,6,0,0,0,100,0,40000,60000,0,0,0,0,53,0,2344001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Start wp'),

(1991806,9,0,0,0,0,100,0,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Hide)'),
(1991806,9,1,0,0,0,100,0,0,0,0,0,0,0,11,34712,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Cast Time Stop'),
(1991806,9,2,0,0,0,100,0,100,100,0,0,0,0,136,0,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'),
(1991806,9,3,0,0,0,100,0,360000,900000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Unhide)'),
-- (1991806,9,3,0,0,0,100,0,10000,30000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Unhide)'),
(1991806,9,4,0,0,0,100,0,100,100,0,0,0,0,28,34712,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Remove Time Stop Aura'),
(1991806,9,5,0,0,0,100,0,100,100,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Active'),
(1991806,9,6,0,0,0,100,0,40000,60000,0,0,0,0,53,0,2344000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Start wp'),

(1991807,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34698,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Cast'), -- Darkwater Crocolisk
(1991807,9,1,0,0,0,100,0,0,0,0,0,0,0,3,0,18417,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Morph ModelID Darkwater Crocolisk'),
(1991807,9,2,0,0,0,100,0,100,100,0,0,0,0,60,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Enable Gravity'),

(1991808,9,0,0,0,0,100,0,100,100,0,0,0,0,60,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Enable Gravity'),
(1991808,9,1,0,0,0,100,0,100,100,0,0,0,0,136,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'),
(1991808,9,2,0,0,0,100,0,100,100,0,0,0,0,53,0,2344005,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Start wp'),

(1991809,9,0,0,0,0,100,0,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Hide)'),
(1991809,9,1,0,0,0,100,0,0,0,0,0,0,0,11,34712,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Cast Time Stop'),
(1991809,9,2,0,0,0,100,0,100,100,0,0,0,0,136,0,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Walk Speed'),
(1991809,9,3,0,0,0,100,0,360000,900000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Unhide)'),
-- (1991809,9,3,0,0,0,100,0,10000,10000,0,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Unit_flags2 (Unhide)'),
(1991809,9,4,0,0,0,100,0,100,100,0,0,0,0,28,34712,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Remove Time Stop Aura'),
(1991809,9,5,0,0,0,100,0,100,100,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Set Active'),
(1991809,9,6,0,0,0,100,0,40000,60000,0,0,0,0,53,0,2344004,0,0,0,0,1,0,0,0,0,0,0,0,0,'Time Watcher - On Script - Start wp');




DELETE FROM `waypoints` WHERE `entry` IN(2344000,2344001,2344002,2344003,2344004,2344005,2343500,2343501);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(2344000, 1, -8450.692383, -4176.048340, -199.006653, 'Time Watcher'),
(2344000, 2, -8449.398, -4162.529, -208.17001, 'Time Watcher'),

(2344001, 1, -8340.623047, -4344.326172, -199.383408, 'Time Watcher'),
(2344001, 2, -8315.316, -4348.763, -208.6739, 'Time Watcher'),

(2344002, 1, -8447.791, -4153.811, -208.80829, 'Time Watcher'),
(2344002, 2, -8446.854, -4149.675, -208.75827, 'Time Watcher'), 
(2344002, 3, -8436.923828, -4107.062012, -208.587540, 'Time Watcher'),
(2344002, 4, -8393.622070, -4071.729736, -208.587540, 'Time Watcher'),
(2344002, 5, -8379.774, -4067.9438, -208.58527, 'Time Watcher'),
(2344002, 6, -8349.183594, -4058.919189, -208.04286, 'Time Watcher'),

(2344003, 1, -8306.866, -4348.212, -208.48458, 'Time Watcher'),
(2344003, 2, -8246.214844, -4344.385742, -205.160355, 'Time Watcher'),
(2344003, 3, -8207.163086, -4307.918945, -196.205338, 'Time Watcher'),
(2344003, 4, -8186.439941, -4259.733398, -183.948654, 'Time Watcher'),
(2344003, 5, -8188.971191, -4211.268555, -174.056534, 'Time Watcher'),
(2344003, 6, -8169.538574, -4167.970703, -165.149277, 'Time Watcher'),

(2344004, 1, -8624.503, -4278.3784, -190.47408, 'Time Watcher'),
(2344004, 2, -8669.07, -4259.3687, -209.56767, 'Time Watcher'),

(2344005, 1, -8676.863, -4255.3696, -209.54, 'Time Watcher'),
(2344005, 2, -8687.288, -4249.178, -209.50548, 'Time Watcher'),
(2344005, 3, -8709.555, -4235.21, -209.50237, 'Time Watcher'),
(2344005, 4, -8729.788, -4219.3794, -209.50237, 'Time Watcher'),
(2344005, 5, -8750.752, -4199.4785, -209.50066, 'Time Watcher'),
(2344005, 6, -8763.0205, -4179.2676, -209.57129, 'Time Watcher'),

-- Time Warden Flying Path #1
(2343500, 1, -8405.555, -4429.452, -66.40142, 'Time Watcher'),
(2343500, 2, -8504.519, -4394.5464, -66.40142, 'Time Watcher'),
(2343500, 3, -8546.8125, -4385.402, -66.40142, 'Time Watcher'),
(2343500, 4, -8570.091, -4373.5205, -66.40142, 'Time Watcher'),
(2343500, 5, -8586.738, -4342.792, -66.40142, 'Time Watcher'),
(2343500, 6, -8551.661, -4291.885, -66.40142, 'Time Watcher'),
(2343500, 7, -8469.124, -4253.43, -66.40142, 'Time Watcher'),
(2343500, 8, -8408.701, -4273.032, -66.40142, 'Time Watcher'),
(2343500, 9, -8340.604, -4337.703, -66.40142, 'Time Watcher'),
(2343500, 10, -8332.228, -4378.8086, -66.40142, 'Time Watcher'),
(2343500, 11, -8356.55, -4422.77, -66.40142, 'Time Watcher'),

-- Time Warden Flying Path #2
(2343501, 1, -8470.954, -4390.9766, -81.5622, 'Time Watcher'), -- 90.25134
(2343501, 2, -8558.384, -4353.3213, -81.5622, 'Time Watcher'),
(2343501, 3, -8600.142, -4302.563, -81.5622, 'Time Watcher'),
(2343501, 4, -8624.447, -4254.6714, -81.5622, 'Time Watcher'),
(2343501, 5, -8616.696, -4225.369, -81.5622, 'Time Watcher'),
(2343501, 6, -8553.631, -4162.531, -81.5622, 'Time Watcher'),
(2343501, 7, -8467.419, -4152.756, -81.5622, 'Time Watcher'),
(2343501, 8, -8445.238, -4179.1226, -81.5622, 'Time Watcher'),
(2343501, 9, -8422.503, -4260.7647, -81.5622, 'Time Watcher'),
(2343501, 10, -8391.179, -4355.2607, -81.5622, 'Time Watcher'),
(2343501, 11, -8416.67, -4404.15, -81.5622, 'Time Watcher');

-- Stratholme Citizens Specimens
DELETE FROM creature_addon where guid IN (84851,84743,84663,84629,84604,84863,84647,84646,84611,84609,84939,84900,84862,84610,84511,84510,84509,300020,300021,300022,300023);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(84851,0,0,0,0,0,0,'34712'),
(84743,0,0,0,0,0,0,'34712'),
(84663,0,0,0,0,0,0,'34712'),
(84629,0,0,0,0,0,0,'34712'),
(84604,0,0,0,0,0,0,'34712'),
(84863,0,0,0,0,0,0,'34712'),
(84647,0,0,0,0,0,0,'34712'),
(84646,0,0,0,0,0,0,'34712'),
(84611,0,0,0,0,0,0,'34712'),
(84609,0,0,0,0,0,0,'34712'),
(84939,0,0,0,0,0,0,'34712'),
(84900,0,0,0,0,0,0,'34712'),
(84862,0,0,0,0,0,0,'34712'),
(84610,0,0,0,0,0,0,'34712'),
(84511,0,0,0,0,0,0,'34712'),
(84510,0,0,0,0,0,0,'34712'),
(84509,0,0,0,0,0,0,'34712'),
(300020,0,0,0,0,0,0,'34712'),
(300021,0,0,0,0,0,0,'34712'),
(300022,0,0,0,0,0,0,'34712'),
(300023,0,0,0,0,0,0,'34712');

DELETE FROM creature where guid IN (84851,84743,84663,84629,84604,84863,84647,84646,84611,84609,84939,84900,84862,84610,84511,84510,84509,300020,300021,300022,300023);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(84851,29865,0,0,1,440,2300,1,1,0,-8613.5,-4414.04,-209.149,1.06465,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84743,29865,0,0,1,440,2300,1,1,0,-8677.56,-4405.93,-206.679,3.57792,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84663,29865,0,0,1,440,2300,1,1,0,-8660.77,-4404.86,-207.4,5.48033,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84629,29865,0,0,1,440,2300,1,1,0,-8656.92,-4389.86,-207.436,2.23402,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84604,29865,0,0,1,440,2300,1,1,0,-8643.38,-4351.43,-208.111,6.26573,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84863,29866,0,0,1,440,2300,1,1,0,-8612.38,-4410.71,-209.356,4.29351,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84647,29866,0,0,1,440,2300,1,1,0,-8659.16,-4406.02,-207.438,2.68781,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84646,29866,0,0,1,440,2300,1,1,0,-8642.65,-4359.16,-208.243,4.2586,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84611,29866,0,0,1,440,2300,1,1,0,-8641.65,-4352.35,-208.204,2.77507,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84609,29866,0,0,1,440,2300,1,1,0,-8662.23,-4383.17,-206.934,5.39307,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84939,29868,0,0,1,440,2300,1,1,0,-8614.49,-4410.79,-209.182,4.93928,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84900,29868,0,0,1,440,2300,1,1,0,-8611.28,-4412.6,-209.366,3.87463,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84862,29868,0,0,1,440,2300,1,1,0,-8611.45,-4411.41,-209.398,3.92699,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84610,29868,0,0,1,440,2300,1,1,0,-8661.53,-4381.77,-206.93,6.0912,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84511,29868,0,0,1,440,2300,1,1,0,-8747.43,-4448.76,-199.175,3.83972,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84510,29868,0,0,1,440,2300,1,1,0,-8707.38,-4416.52,-205.047,5.65487,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(84509,29868,0,0,1,440,2300,1,1,0,-8747.63,-4450.67,-199.451,3.52556,300,0,0,1,0,0,0,0,0,'',0,0,NULL),
(300020,29865,0,0,1,440,2300,1,1,0,-8746.62,-4428.1,-201.354,6.24828,300,0,0,1,0,0,0,0,0,'',0,0,NULL), -- New Guid
(300021,29866,0,0,1,440,2300,1,1,0,-8724.14,-4412.39,-203.747,3.80482,300,0,0,1,0,0,0,0,0,'',0,0,NULL), -- New Guid
(300022,29866,0,0,1,440,2300,1,1,0,-8743.8,-4428.17,-201.36,3.07178,300,0,0,1,0,0,0,0,0,'',0,0,NULL), -- New Guid
(300023,29873,0,0,1,440,2300,1,1,0,-8706.65,-4417,-205.124,2.70526,300,0,0,1,0,0,0,0,0,'',0,0,NULL); -- New Guid


-- Lady Sinestra ???????????  Change from Time Watcher to Lady Sinestra in the comment. 
UPDATE `smart_scripts` SET `comment`="Lady Sinestra - OOC  - Start wp" WHERE `entryorguid`=23283 and `source_type` = 0 and `id` = 0;

/*
UPDATE `creature_template` SET `unit_flags2` = 2050, `AIName`="SmartAI" WHERE `entry`=2937; -- Unit bytes2 + 2  to Hide him since I can't find the summon script.

*/
