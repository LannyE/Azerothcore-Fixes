/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (-58451,-58153)
LIMIT 0, 1000

-- Date: 2024-10-29 13:43
*/

-- Target Dummys
-- DELETE FROM `creature_template` WHERE `entry` IN (300000); -- New ENTRIES

-- DELETE FROM `creature` WHERE `guid` IN (300100,300101); -- New GUIDS

-- DELETE FROM creature_template_model where CreatureID = 300000;

-- Scarlet Paladins
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=1834;
UPDATE `creature` SET `orientation`=3.70178 WHERE `guid`= 48206; -- 3.70178
UPDATE `creature` SET `orientation`=2.65929 WHERE `guid`= 52004; -- 2.65929
UPDATE `creature` SET `orientation`=6.17928 WHERE `guid`= 51999; -- 6.17928
UPDATE `creature` SET `orientation`=5.56162 WHERE `guid`= 48615; -- 5.56162
UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (49593); -- 0
UPDATE `creature_addon` SET `bytes2`=1 WHERE `guid` IN (48615,51999);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-52000,-48598,-47976,-51644,-49418,-49996,-48206,-52004); -- Attacking

UPDATE `creature` SET `MovementType`=0 WHERE `guid`=48205;

UPDATE `creature_addon` SET `path_id`=0 WHERE `guid` = 48205;

DELETE FROM `waypoint_data` WHERE `id`=482050;


-- Scarlet Sentinels
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry` = 1827;

UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (47892); -- 0

DELETE FROM `creature_addon` WHERE `guid` IN (51745);


-- Scarlet Magus
UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (52244,51750,51998);


-- Scarlet Smith
UPDATE `creature` SET `position_x`=2996.78,`position_y`=-1459.34,`position_z`=145.885,`MovementType`=0 WHERE `guid`=61634;

DELETE FROM `creature_addon` WHERE `guid`=61634;

DELETE FROM `waypoint_data` WHERE `id`=616340;

DELETE FROM `waypoint_scripts` WHERE `id`=616340;


-- Scarlet Lumberjack
DELETE FROM `smart_scripts` WHERE `entryorguid`=1884 AND `source_type`=0 AND `id`=2;


-- Scarlet Executioner
UPDATE `creature` SET `MovementType`=0 WHERE `guid`=49765;

DELETE FROM `creature_addon` WHERE `guid`=49765;

DELETE FROM `waypoint_data` WHERE `id`=497650;

DELETE FROM `smart_scripts` WHERE `entryorguid`=1841 AND `source_type`=0 AND `id`=4;



-- Scarlet Judge
DELETE FROM `smart_scripts` WHERE `entryorguid`=1837 AND `source_type`=0 AND `id`=3;


-- Scarlet Cavalier
DELETE FROM `smart_scripts` WHERE `entryorguid`=1836 AND `source_type`=0 AND `id` IN (3,4);

DELETE FROM creature_text where CreatureID in (1836);


-- Scarlet Interrogator
UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (49330); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid`=1838 AND `source_type`=0 AND `id`=1;


-- Foreman Jerris
UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (49768); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid`=1843 AND `source_type`=0 AND `id`=2;


-- Scarlet Worker
UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (46788); -- 0
UPDATE `creature_addon` SET `emote`=0 WHERE `guid` IN (48474,47174,48619,52252,49595,48193);
UPDATE `creature_addon` SET `bytes1`=0 WHERE `guid` IN (48482);


-- High Protector Lorik
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1846;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1846 AND `source_type`=0;


-- Foreman Marcrid
UPDATE `creature` SET `MovementType`= 0,`wander_distance`= 0 WHERE `guid` IN (49769);

DELETE FROM `smart_scripts` WHERE `entryorguid`=1844 AND `source_type`=0 AND `id` IN (2,3);

DELETE FROM `creature` where `guid` in (300499,300500);

DELETE FROM `pool_creature` where `pool_entry` = 49769;

DELETE FROM `pool_template` where `entry` = 49769;


-- High Protector Tarsen
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1845;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1845 AND `source_type`=0;


-- Cavalier Durgen
DELETE FROM `smart_scripts` WHERE `entryorguid`=11611 AND `source_type`=0 AND `id` IN (2,3,4);

DELETE FROM creature_text where CreatureID in (11611);


-- Huntsman Radley
DELETE FROM `smart_scripts` WHERE `entryorguid`=11613 AND `source_type`=0 AND `id` IN (2,3,4,5);

DELETE FROM creature_text where CreatureID in (11613);


/*
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-58451);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-58451,0,0,0,1,0,100,512,2000,2000,6000,6000,0,0,11,29120,2,0,0,0,0,10,58455,16897,0,0,0,0,0,0,'Honor Hold Archer - Out of Combat - Cast \'Shoot Bow\' (Phase 8)');

-- Practicing Guard
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=4951;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4951) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4951,0,0,0,25,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,19,4952,0,0,0,0,0,0,"Theramore Practicing Guard - On Reset - Start Attacking");

-- Theramore Combat Dummy
UPDATE `creature_template` SET `ScriptName`="npc_training_dummy" WHERE `entry`=4952;



INSERT INTO `` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(58153,0,0,0,1,69,0,NULL); -- Fixing standing


(58153,0,0,0,1,36,0,NULL); -- attacking one hand
52000
48598

51745
(69640,0,0,8,1,0,0,NULL); -- kneel

(69482,0,0,0,1,173,0,'18950'); -- Mallet blacksmithing

(69482,0,0,0,1,234,0,NULL); -- log chopping


*/