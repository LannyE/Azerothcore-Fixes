/*
-- Query: SELECT * FROM temp.waypoint_data where id = 633810
LIMIT 0, 1000

-- Date: 2023-11-25 23:41
*/
UPDATE `creature` SET `MovementType` = 1, `wander_distance` = 5, `position_x` = -3434.45, `position_y` = -12340.9, `position_z` = 13.5634, `orientation` = 1.57473 WHERE `guid` in (62883);
DELETE FROM `creature` WHERE `guid` IN (62884);

DELETE FROM `creature_formations` where leaderGUID = 62883;

DELETE FROM `creature_addon` WHERE `guid` IN (62883,62884);

DELETE FROM `waypoint_data` WHERE `id` IN (628830);

