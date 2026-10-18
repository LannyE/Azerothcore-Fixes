/*
Kor'kron Rider at Shadowmoon Valley/Village 
Must ride a mount and run
also there are multiple that ride in formation
New Guids 300089,300090

Kor'kron Defender 
Minor fixes at Shadowmoon Village
*/

-- Kor'kron Rider
DELETE FROM `creature` where `guid` in (300089,300090);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300089,19364,0,0,530,0,0,1,1,1,-3069.0286,2524.8037,61.841484,5,300,0,0,17742,0,0,0,0,0,'',0,0,'Kor\'kron Rider'),
(300090,19364,0,0,530,0,0,1,1,1,-3071.1177,2523.3662,61.86935,5,300,0,0,17742,0,0,0,0,0,'',0,0,'Kor\'kron Rider');

UPDATE `creature_addon` SET `mount` = 17408 WHERE `guid` in (69096); -- 14336 white wolf 14335 Brown wolf 14334 black wolf -- 17408 correct brown
UPDATE `creature_template_addon` SET `mount` = 2327,`bytes2` = 1 WHERE `entry` in (19364); -- 1166 2327

DELETE FROM `creature_addon` where guid in (69097);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(69097,0,1166,0,1,0,0,NULL);

DELETE FROM `creature_formations` where leaderGUID = 69096;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(69096,69096,0,0,515,0,0),
(69096,69097,5,180,515,0,0),
(69096,300089,10,180,515,0,0),
(69096,300090,15,180,515,0,0);

UPDATE `creature` SET `position_x` = -3070.2979, `position_y` = 2521.2705, `position_z` = 61.924 WHERE `guid` in (69097); -- -3103 2545 61.9 0

UPDATE `waypoint_data` SET `move_type` = 1 WHERE `id` in (690960); -- AND `point` >= (3) and `point` <= (12); -- Set Run -- 0
UPDATE `waypoint_data` SET `delay` = 0 WHERE `id` in (690960) AND `point` = 4; -- 3000


-- Kor'kron Defender
UPDATE `creature` SET `orientation` = 3.2448 WHERE `guid` in (69090); -- 2
UPDATE `creature` SET `position_x` = -3125.0369, `position_y` = 2570.1885, `position_z` = 61.691704, `orientation` = 3.09 WHERE `guid` in (69085); -- 2
UPDATE `creature` SET `position_x` = -3065.7295, `position_y` = 2494.3508, `position_z` = 64.82872, `orientation` = 4.6162 WHERE `guid` in (69089); -- 4
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (69081);
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (69092);
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (69079); -- 0 -- 69081
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (69075); -- 2
UPDATE `creature_template` SET `faction` = 1735 WHERE `entry` in (19362); -- Ignore Infernals -- 1801

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19362) AND `source_type` = 0 AND `id` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-69075) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-69075,0,0,0,1,0,60,0,19000,19000,70000,150000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kor\'kron Defender - Out of Combat - Say Line 0');

/*
DELETE FROM `creature`  where guid in (69081,69092); -- Too Many Defenders

DELETE FROM `creature_formations` where leaderGUID in (69079,69091);
*/

DELETE FROM `creature_addon` where guid in (69092);

DELETE FROM `waypoint_data` where id IN (690920);

UPDATE `creature_text` SET `Type` = 14,`TextRange` = 1 where CreatureID IN (19362) and GroupID = 0 and ID IN (1);
UPDATE `creature_text` SET `TextRange` = 1 where CreatureID IN (19362) and GroupID = 0 and ID IN (0); -- Fix hearing yelling zone wide

DELETE FROM `creature_text` where CreatureID IN (19362) and GroupID = 0 and ID IN (2,3,4,5);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
-- (19362,0,0,'If I see any lazy peons here, I\'ll load them into a catapult and launch them off to the Black Temple!',14,0,100,0,0,0,16557,0,'Kor\'kron Defender'),
-- (19362,0,1,'Any time any of you peons want to take a break, the graveyard is right over there.',12,0,100,0,0,0,16559,0,'Kor\'kron Defender'),
(19362,0,2,'Work faster! We need these catapults ready for an attack!',14,0,100,0,0,0,16554,1,'Kor\'kron Defender'),
(19362,0,3,'Salvage what you need from the broken catapults!',14,0,100,0,0,0,16555,1,'Kor\'kron Defender'),
(19362,0,4,'The next one of you peons that messes up will spend a night patrolling the cursed perimeter!',14,0,100,0,0,0,16556,1,'Kor\'kron Defender'),
(19362,0,5,'Keep up the pace!',14,0,100,0,0,0,16558,1,'Kor\'kron Defender');


-- Overlord Or'barokh
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (76072); -- 760720
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (76072); -- 2

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2176900) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21769) AND `source_type` = 0 AND `id` IN (2,6);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21769,0,2,0,1,0,100,0,120000,120000,300000,300000,0,0,80,2176900,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - Out of Combat - Run Script'),
(21769,0,6,0,11,0,100,0,0,0,0,0,0,0,53,1,21769,1,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Respawn - Start Waypoint'),

(2176900,9,0,0,0,0,100,512,1000,1000,0,0,0,0,54,40000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Pause Waypoint'),
(2176900,9,1,0,0,0,100,512,1000,1000,0,0,0,0,66,0,0,0,0,0,0,10,76724,21938,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Set Orientation \'Earthmender Splinthoof\''),
(2176900,9,2,0,0,0,100,512,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Say Line 1'),
(2176900,9,3,0,0,0,100,512,7000,7000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Say Line 2'),
(2176900,9,4,0,0,0,100,512,100,100,0,0,0,0,66,0,0,0,0,0,0,10,76724,21938,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Set Orientation \'Earthmender Splinthoof\''),
(2176900,9,5,0,0,0,100,512,12000,12000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Say Line 3'),
(2176900,9,6,0,0,0,100,512,15000,15000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overlord Or\'barokh - On Script - Resume Waypoint');

DELETE FROM `waypoint_data` WHERE `id` = 760720;

DELETE FROM `waypoints` WHERE `entry` = 21769;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(21769,1,-2916.31,2657.2,94.4316,NULL,0,'Overlord Or\'barokh'),
(21769,2,-2920.67,2662.84,94.3654,NULL,0,'Overlord Or\'barokh');
