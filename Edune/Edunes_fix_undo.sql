-- Elenna Edune
UPDATE `creature` SET `position_x`=2658.12, `position_y`=615.621, `position_z`=100.723, `MovementType`=0 WHERE `guid`=33027;
UPDATE `creature` SET `position_x`=2653.77, `position_y`=615.275, `position_z`=101.555 WHERE `guid`=33070;

UPDATE `creature_addon` SET `path_id`=0 WHERE `guid`=33027;

DELETE FROM `creature_formations` WHERE `leaderGUID`=33027;

DELETE FROM `waypoint_data` WHERE `id`=330270;

DELETE FROM `smart_scripts` WHERE `entryorguid`=24738 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2473800) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(24738,0,0,1,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Out of Combat - Disable Combat Movement (No Repeat)'),
(24738,0,1,0,61,0,100,512,0,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Out of Combat - Stop Attacking (No Repeat)'),
(24738,0,2,3,4,0,100,1,0,0,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Elenna Edune - On Aggro - Cast \'Shoot\' (No Repeat)'),
(24738,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - On Aggro - Increment Phase By 1 (No Repeat)'),
(24738,0,4,5,9,1,100,0,0,0,2600,3500,5,30,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Elenna Edune - Within 5-30 Range - Cast \'Shoot\' (Phase 1)'),
(24738,0,5,0,61,1,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 5-30 Range - Set Sheath Ranged (Phase 1)'),
(24738,0,6,7,9,1,100,512,0,0,0,0,25,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 25-80 Range - Enable Combat Movement (Phase 1)'),
(24738,0,7,0,61,1,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 25-80 Range - Start Attacking (Phase 1)'),
(24738,0,8,9,9,1,100,512,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 0-5 Range - Enable Combat Movement (Phase 1)'),
(24738,0,9,10,61,1,100,512,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 0-5 Range - Set Sheath Melee (Phase 1)'),
(24738,0,10,0,61,1,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 0-5 Range - Start Attacking (Phase 1)'),
(24738,0,11,12,9,1,100,512,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 5-15 Range - Disable Combat Movement (Phase 1)'),
(24738,0,12,0,61,1,100,512,0,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - Within 5-15 Range - Stop Attacking (Phase 1)'),
(24738,0,13,0,7,0,100,1,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Elenna Edune - On Evade - Set Sheath Melee (Phase 1)');

DELETE FROM `creature_text` WHERE `CreatureID` IN (24738);


-- William Dunadaire
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=24737;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24737 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2473700,2473701,2473702) AND `source_type`=9;

DELETE FROM `waypoints` WHERE `entry`=24737;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24737);


-- Becanna Edune
UPDATE `creature` SET `position_x`=2845.29, `position_y`=696.225, `position_z`=100.906, `orientation`=0.461371 WHERE `guid`=32943;

-- UPDATE `creature_model_info` SET `Gender`=2 WHERE `DisplayID`=892;

DELETE FROM `smart_scripts` WHERE `entryorguid`=24735 AND `source_type`=0 AND `id`>0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2473500,2473501,2473502) AND `source_type`=9;

DELETE FROM `waypoints` WHERE `entry`=24735;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24735);


-- Aleanna Edune
UPDATE `creature` SET `position_x`=2743.75, `position_y`=683.304, `orientation`=4.39688 WHERE `guid`=32936;

DELETE FROM `smart_scripts` WHERE `entryorguid`=24734 AND `source_type`=0 AND `id`>0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2473400) AND `source_type`=9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24734);


-- Benjari Edune
DELETE FROM `creature_text` WHERE `CreatureID` IN (24739);


-- Sulan Dunadaire
DELETE FROM `creature_text` WHERE `CreatureID` IN (24736);


-- Ghostpaw Runner
UPDATE `creature` SET `position_x`=2738.18, `position_y`=675.899, `position_z`=104.257, `wander_distance` = 0, `MovementType` = 0  WHERE `guid`=34982;