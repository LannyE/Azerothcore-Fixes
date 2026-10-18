/*
undo
Fix Desolace Kodo Packs 4-19-26

-- New Creature_template GUID: 300001
 
-- New Creature GUIDs: 300116,300117,300118

-- This uses the new Spawn Group system.  
*/

-- Leader Dummy
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (300001);

DELETE FROM `creature_template` WHERE `entry` IN (300001);

DELETE FROM `creature` WHERE `guid` IN (300116,300117,300118);

DELETE FROM `creature_formations` where `leaderGUID` IN (300116,300117,300118);

DELETE FROM `spawn_group` where `groupId` IN (42275,42276,42277);

DELETE FROM `spawn_group_template` where `groupId` IN (42275,42276,42277);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300116,-300117,-300118) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000100,30000101,30000102) AND `source_type` = 9;

DELETE FROM `waypoint_data` where `id` in (3001160,3001161,3001162);


-- Kodos - they all use a C++ script.
-- Raging Thunder Lizard
UPDATE `creature` SET `wander_distance` = 10, `MovementType` = 1 WHERE `guid` in (28807); -- 0 0

-- Dying Kodo
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (28273,28295); -- 5 1
UPDATE `creature` SET `wander_distance` = 20, `MovementType` = 1 WHERE `guid` in (28272,28274); -- 20 1