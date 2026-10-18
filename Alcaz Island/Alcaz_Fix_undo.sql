-- Strashaz Sorceress
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=7893;
UPDATE `creature` SET `orientation`=3.65439 WHERE `guid`=18626;

-- Strashaz Siren
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=30868;

-- Strashaz Serpent
UPDATE `creature` SET `orientation`=5.5478 WHERE `guid`=7889;
UPDATE `creature` SET `orientation`=0.282521 WHERE `guid`=30469;

-- Strashaz Myrmidon
UPDATE `creature` SET `orientation`=1.69876 WHERE `guid`=7892;

-- Strashaz Hydra Pathing
-- UPDATE `creature` SET `position_x`=-8349.495,`position_y`=-4051.0713,`position_z`=-207.94597,`orientation`=0.19669777,`MovementType` = 2 WHERE `guid`=23460;
-- UPDATE `creature` SET `position_x`=-8354.726,`position_y`=-4052.1135,`position_z`=-208.0436,`orientation`=0.19669777,`MovementType` = 2 WHERE `guid`=23461;
UPDATE `creature` SET `wander_distance` = 10,`MovementType` = 1 WHERE `guid`=18623;
UPDATE `creature` SET `wander_distance` = 10,`MovementType` = 1 WHERE `guid`=30850;
UPDATE `creature` SET `wander_distance` = 10,`MovementType` = 1 WHERE `guid`=30852;
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid`=30853;
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid`=30854;
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=18574;

DELETE FROM creature_addon WHERE `guid` in (18623,30850,30852,30853,30854);

DELETE FROM waypoint_data WHERE `id` IN (186230,308500,308520,308530,308540);


-- Firemane Drake
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=17427;
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=12813;
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=15318;
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid`=17284;

DELETE FROM creature_addon WHERE `guid` in (17427,12813,15318,17284);

DELETE FROM waypoint_data WHERE `id` IN (174270,128130,153180,172840);

