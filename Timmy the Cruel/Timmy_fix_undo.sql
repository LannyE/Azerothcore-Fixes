DELETE FROM `creature_addon` where guid = 247227;
UPDATE `creature` SET `MovementType`= 0 WHERE `guid`=247227;

UPDATE `creature_template` SET `MovementType`= 1 WHERE `entry`=10808; -- 1

DELETE FROM `waypoint_data` WHERE `id`=2472270;


