/*
-- Query: SELECT * FROM acore_world.creature where guid in (86900)
LIMIT 0, 1000

-- Date: 2022-03-21 07:16
*/
DELETE FROM `creature` WHERE `guid` = 86900;
DELETE FROM `creature_addon` WHERE `guid` = 86900;
DELETE FROM `waypoint_data` WHERE `id` = 869000;