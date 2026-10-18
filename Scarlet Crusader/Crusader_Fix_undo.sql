UPDATE `creature` SET `MovementType` = 0 WHERE `guid`=47890;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid`=47890;

DELETE FROM waypoint_data WHERE `id` = 478900;
