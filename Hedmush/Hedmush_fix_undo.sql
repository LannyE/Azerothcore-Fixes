UPDATE `creature` SET `MovementType`= 1,`wander_distance`= 5 WHERE `guid` IN (86606);

DELETE FROM `creature` where `guid` in (300497,300498);

DELETE FROM `pool_creature` where `pool_entry` = 86606;

DELETE FROM `pool_template` where `entry` = 86606;