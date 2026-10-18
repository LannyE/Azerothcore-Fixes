
UPDATE creature SET `position_x` = 7196.7, `position_y` = -732.406, `position_z` = 59.6499, `orientation` =2.93528, `wander_distance` = 0, `MovementType` = 0 WHERE `guid` = 37002;

UPDATE creature SET `MovementType` = 0 WHERE `guid` = 37004;

DELETE FROM `creature_addon` WHERE `guid` = 37004;
DELETE FROM `waypoint_data` WHERE `id` = 370040;

UPDATE creature SET `MovementType` = 0 WHERE `guid` = 37009;

DELETE FROM `creature_addon` WHERE `guid` = 37009;
DELETE FROM `waypoint_data` WHERE `id` = 370090;

UPDATE creature SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` = 37003;

DELETE FROM `creature_addon` WHERE `guid` = 37003;
DELETE FROM `waypoint_data` WHERE `id` = 370030;

UPDATE creature SET `position_x` = 7196.82, `position_y` = -755.613, `position_z` = 94.1232, `orientation` = 3.06074, `wander_distance` = 5, `MovementType` = 1 WHERE `guid` = 37005;
DELETE FROM `creature_addon` WHERE `guid` = 37005;
DELETE FROM `waypoint_data` WHERE `id` = 370050;

UPDATE creature SET `orientation` = 1.24458 WHERE `guid` = 37006;
UPDATE creature SET `position_x` = 7181.96, `position_y` = -740.085, `position_z` = 94.0926, `orientation` = 3.76177, `wander_distance` = 5, `MovementType` = 1 WHERE `guid` = 37007;

UPDATE creature SET `MovementType` = 0 WHERE `guid` = 37008;

DELETE FROM `creature_addon` WHERE `guid` = 37008;
DELETE FROM `waypoint_data` WHERE `id` = 370080;