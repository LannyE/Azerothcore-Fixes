/*
-- Query: SELECT * FROM temp.waypoint_data where id = 633810
LIMIT 0, 1000

-- Date: 2023-11-25 23:41
*/
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5, `position_x` = -2453.05, `position_y` = -12047.2, `position_z` = 30.1865, `orientation` = 3.68085 WHERE `guid` in (63381);
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5, `position_x` = -2470.41, `position_y` = -12053.2, `position_z` = 30.6675, `orientation` = 3.63529 WHERE `guid` in (63380);

DELETE FROM `creature_formations` where leaderGUID = 63381;

DELETE FROM `creature_addon` WHERE `guid` IN (63381,63380);

DELETE FROM `waypoint_data` WHERE `id` IN (633810);

