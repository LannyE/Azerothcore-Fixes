UPDATE `creature` SET `MovementType` = 0 WHERE `guid`=82469;
-- UPDATE `creature_addon` SET `path_id` = 691190 WHERE `guid`=69119;

DELETE FROM creature_addon WHERE `guid` in (82469);

DELETE FROM waypoint_data WHERE `id` = 824690;
