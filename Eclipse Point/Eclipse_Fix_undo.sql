/*
 undo
 Eclipsion Point Fixes 6-6-96
 
 - add missing texts RP
 - fix Centurions kneeling
 - Fix Archmages
*/
-- Eclipsion Centurion
UPDATE `creature_template_addon` SET `bytes1` = 8 WHERE `entry` in (19792); -- 8
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (70841); -- 5 1

DELETE FROM `creature` WHERE `guid` IN (73522);

DELETE FROM `creature_addon` where `guid` in (70835,70839);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19792) AND `source_type` = 0 AND `id` IN (2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1979200) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (19792);


-- Eclipsion Bloodwarder
-- UPDATE `creature_addon` SET `mount` = 20937 WHERE `guid` in (70926); -- 0
-- UPDATE `creature_addon` SET `mount` = 20937 WHERE `guid` in (70927); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (70925,70928); -- 5 1
UPDATE `creature` SET `position_x` = -4382.89,`position_y` = 1686.13,`position_z` = 157.82283 WHERE `guid` = 70925; -- -4382.89,1686.13,157.82283

DELETE FROM `creature_addon` where `guid` in (70925,70928);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19806);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19806) AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7,8,9,10,11);

DELETE FROM `waypoint_data` where `id` in (709250,709280);


-- Eclipsion Archmage
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (19796); -- 0
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (70860,70866,70867,70869); -- 5 1
UPDATE `creature` SET `orientation` = 2.63653 WHERE `guid` in (70866); --

DELETE FROM `creature_addon` where `guid` in (70860);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19796) AND `source_type` = 0 AND `id` = 3; -- remove the global Crystal channel script
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-70850,-70851,-70852,-70853,-70854,-70856,-70858,-70860,-70861,-70862) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1979600) AND `source_type` = 9;
-- INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (19796,0,3,0,25,0,100,0,0,0,0,0,0,11,35190,0,0,0,0,0,19,20431,20,0,0,0,0,0,0,'Eclipsion Archmage - On reset - Cast Crystal Channel');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19796);

DELETE FROM `waypoint_data` where `id` in (708580,708600);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(708580,1,-4486.56,1647.48,165.475,0.237698,45000,0,0,100,0),
(708580,2,-4471.61,1654.49,162.833,0.368861,22000,0,0,100,0),
(708580,3,-4486.56,1647.48,165.475,0.237698,45000,0,0,100,0);


-- Eclipsion Dragonhawk
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (72580,72585,72586,72587,72590,72596); -- 5 1   70860 should have waypoint to crystal on left side of chest

DELETE FROM `creature_addon` where `guid` in (72580,72585,72586,72587,72590,72596);

DELETE FROM `waypoint_data` where `id` in (725800,725850,725860,725870,725900,725960);


-- Eclipse Point - Bloodcrystal Spell Orgin
DELETE FROM `creature` WHERE `guid` IN (73521);


-- Parshah
UPDATE `creature` SET `MovementType` = 0,`position_x` = -3412.86 ,`position_y` = 2291.42,`position_z` = 62.914288 WHERE `guid` = 83112; -- 0 -3412.86 Y: 2291.42 Z: 62.914288

DELETE FROM `creature_addon` WHERE `guid` IN (83112);

DELETE FROM `waypoint_data` WHERE `id` IN (831120);


-- Neltharaku
UPDATE `waypoint_data` SET `velocity` = 0,`move_type` = 1 WHERE `id` = 756540;


-- Maddix
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `ConditionTypeOrReference` = 5 AND `SourceEntry` IN (19581);


-- Alieshor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `ConditionTypeOrReference` = 5 AND `SourceEntry` IN (21766);
