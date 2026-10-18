UPDATE `creature` SET `MovementType` = 0 WHERE `guid`=31612;
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid`=31612;

DELETE FROM waypoint_data WHERE `id` = 316120;


