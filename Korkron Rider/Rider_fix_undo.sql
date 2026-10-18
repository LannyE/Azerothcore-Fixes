/*
Undo
Kor'kron Rider at Shadowmoon Valley/Village 
Must ride a mount and run
also there are multiple that ride in formation

Kor'kron Defender 
Minor fixes at Shadowmoon Village
*/

-- Kor'kron Rider
DELETE FROM `creature` where `guid` in (300089,300090);
UPDATE `creature_addon` SET `mount` = 0 WHERE `guid` in (69096);
UPDATE `creature_template_addon` SET `mount` = 17408,`bytes2` = 0 WHERE `entry` in (19364);
DELETE FROM `creature_addon` where guid = 69097;

DELETE FROM `creature_formations` where leaderGUID = 69096;

UPDATE `creature` SET `position_x` = -3103, `position_y` = 2545, `position_z` = 61.9, `MovementType` = 0 WHERE `guid` in (69097); -- -3103 2545 61.9 0

UPDATE `waypoint_data` SET `move_type` = 0 WHERE `id` in (690960);  -- AND `point` >= (3) and `point` <= (12); -- Set Run -- 0
UPDATE `waypoint_data` SET `delay` = 3000 WHERE `id` in (690960) AND `point` = 4; -- 3000


-- Kor'kron Defender
UPDATE `creature` SET `orientation` = 2 WHERE `guid` in (69090); -- 2
UPDATE `creature` SET `position_x` = -3124, `position_y` = 2568, `position_z` = 61.6869, `orientation` = 3.09 WHERE `guid` in (69085); -- 2
UPDATE `creature` SET `position_x` = -3064, `position_y` = 2494, `position_z` = 64.96, `orientation` = 4.6162 WHERE `guid` in (69089); -- 4
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (69081);
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (69079); -- 0
UPDATE `creature_addon` SET `bytes2` = 2 WHERE `guid` in (69075); -- 2
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (69092);
UPDATE `creature_template` SET `faction` = 1801 WHERE `entry` in (19362); -- Ignore Infernals -- 1801
-- UPDATE `creature_addon` SET `bytes2` = 2 WHERE `guid` in (69092); -- 2

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19362) AND `source_type` = 0 AND `id` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-69075) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19362,0,0,0,1,0,5,0,190000,190000,250000,550000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kor\'kron Defender - Out of Combat - Say Line 0');

/*
DELETE FROM `creature`  where guid in (69081,69092); -- Too Many Defenders
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(69081,19362,0,0,530,0,0,1,1,-1,-2990,2605,79,0,300,5,0,34930,0,1,0,0,0,'',0,0,NULL),
(69092,19362,0,0,530,0,0,1,1,-1,-3095,2569,61.8,2,300,0,0,34930,0,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_formations` where leaderGUID in (69079,69091);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(69079,69079,0,0,2,0,0),
(69079,69081,3,270,514,0,0),
(69091,69091,0,0,2,0,0),
(69091,69092,3,270,514,0,0);
*/
DELETE FROM `creature_addon` where guid in (69092);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) 
VALUES (69092,690920,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` where id IN (690920);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(690920,1,-3098.8,2569.76,61.9221,0,0,0,0,100,0),
(690920,2,-3110.36,2565.96,61.7519,0,0,0,0,100,0),
(690920,3,-3117.38,2563.9,61.7295,0,0,0,0,100,0),
(690920,4,-3128.11,2562.69,61.4678,0,0,0,0,100,0),
(690920,5,-3138.46,2561.95,61.565,0,3000,0,0,100,0),
(690920,6,-3127.19,2566.71,61.5345,0,0,0,0,100,0),
(690920,7,-3113.74,2565.72,61.728,0,0,0,0,100,0),
(690920,8,-3102.76,2548.82,61.7651,0,0,0,0,100,0),
(690920,9,-3099.4,2540.67,61.7475,0,0,0,0,100,0),
(690920,10,-3094.17,2537.39,61.768,0,0,0,0,100,0),
(690920,11,-3086,2535.53,61.9257,0,0,0,0,100,0),
(690920,12,-3079.59,2534.95,61.9703,0,0,0,0,100,0),
(690920,13,-3075.3,2531.15,61.9733,0,0,0,0,100,0),
(690920,14,-3070.82,2519.82,61.9557,0,0,0,0,100,0),
(690920,15,-3066.88,2508.25,62.8506,0,0,0,0,100,0),
(690920,16,-3064.53,2501.43,63.7287,0,0,0,0,100,0),
(690920,17,-3065.44,2509.9,62.717,0,0,0,0,100,0),
(690920,18,-3069.87,2524.05,61.8529,0,0,0,0,100,0),
(690920,19,-3073.53,2533.52,61.7762,0,0,0,0,100,0),
(690920,20,-3080.67,2535.9,61.8317,0,0,0,0,100,0),
(690920,21,-3089.11,2536.99,61.7959,0,0,0,0,100,0),
(690920,22,-3093.71,2539.81,61.7361,0,0,0,0,100,0),
(690920,23,-3097.2,2545.88,61.8048,0,0,0,0,100,0),
(690920,24,-3093.68,2554.11,61.7428,0,0,0,0,100,0),
(690920,25,-3091.09,2560.01,61.8888,0,0,0,0,100,0),
(690920,26,-3092.41,2565.26,62.0795,0,0,0,0,100,0),
(690920,27,-3095.45,2568.81,61.9759,0,0,0,0,100,0);

UPDATE `creature_text` SET `Type` = 12,`TextRange` = 0 where CreatureID IN (19362) and GroupID = 0 and ID IN (1);
UPDATE `creature_text` SET `TextRange` = 0 where CreatureID IN (19362) and GroupID = 0 and ID IN (0);

DELETE FROM `creature_text` where CreatureID IN (19362) and GroupID = 0 and ID IN (2,3,4,5);


-- Overlord Or'barokh
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (76072); -- 760720
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (76072); -- 2

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2176900) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21769) AND `source_type` = 0 AND `id` IN (2,6);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (21769,0,0,1,62,0,100,512,30008,1,0,0,0,0,56,31108,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Gossip Option 1 Selected - Add Item \'Kor\'kron Flare Gun\' 1 Time'),
-- (21769,0,1,0,61,0,100,512,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Gossip Option 1 Selected - Close Gossip'),
(21769,0,2,0,1,0,100,0,120000,120000,300000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - Out of Combat - Say Line 0');
-- (21769,0,3,4,62,0,100,512,8443,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Gossip Option 0 Selected - Close Gossip'),
-- (21769,0,4,0,61,0,100,512,0,0,0,0,0,0,134,38172,2,0,0,0,0,7,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Gossip Option 0 Selected - Invoker Cast \'Serverside - Create Kor`kron Flare Gun\''),
-- (21769,0,5,0,20,0,100,0,10769,0,0,0,0,0,45,1,1,0,0,0,0,10,77278,22054,0,0,0,0,0,0,'Overlord Or\'barokh - On Quest \'Dissension Amongst the Ranks...\' Finished - Set Data 1 1');

DELETE FROM `waypoint_data` WHERE `id` = 760720;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(760720,1,-2916.31,2657.2,94.4316,NULL,0,0,0,100,0),
(760720,2,-2920.67,2662.84,94.3654,NULL,0,0,0,100,0);

DELETE FROM `waypoints` WHERE `entry` = 21769;

