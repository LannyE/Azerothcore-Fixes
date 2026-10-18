-- it spawns in multiple places
-- New GUIDs = 300086, 300087, 3000088

DELETE FROM `creature` where `guid` in (300086,300087,300088);

DELETE FROM `pool_creature` where `pool_entry` = 51900;

DELETE FROM `pool_template` where `entry` = 51900;

