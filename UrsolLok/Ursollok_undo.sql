
-- UPDATE `creature` SET `position_x` = 2808.17, `position_y` = -3107.65, `position_z` = 177.759, `MovementType` = 0, `wander_distance` = 0 WHERE `guid` = 51869;
-- UPDATE `creature` SET `position_x` = 2054.357, `position_y` = -3395.952, `position_z` = 92.678, `MovementType` = 1, `wander_distance` = 20 WHERE `guid` = 51869;
UPDATE `creature_template` SET `speed_walk` = 1.78 WHERE `entry` = 12037;
DELETE FROM `creature` where `guid` in (300490,300491);
DELETE FROM `pool_creature` where `pool_entry` = 51869;
DELETE FROM `pool_template` where `entry` = 51869;

-- Return Shredder to original position
UPDATE `creature` SET `position_x` = 2515.19, `position_y` = -3094.04, `position_z` = 126.713 WHERE `guid` = 33068;
