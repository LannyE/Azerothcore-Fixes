UPDATE `creature` SET `MovementType` = 0 WHERE `guid`=69119;
-- UPDATE `creature_addon` SET `path_id` = 691190 WHERE `guid`=69119;

DELETE FROM creature_addon WHERE `guid` in (69119);


DELETE FROM waypoint_data WHERE `id` = 691190;
