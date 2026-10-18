-- Zalashji
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 23288;
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 23288;

DELETE FROM `waypoint_data` WHERE `id` = 232880;
