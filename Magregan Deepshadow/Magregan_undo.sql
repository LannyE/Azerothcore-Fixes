-- Pathing for Magregan Deepshadow
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 8194;

DELETE FROM `creature_addon` WHERE `guid` = 8194;

DELETE FROM `waypoint_data` WHERE `id` = 81940;
