/*
-- Query: SELECT * FROM acore_world.creature WHERE `guid` IN (48350,48578)
LIMIT 0, 50000

-- Date: 2024-12-11 21:39
*/
-- Remove Excess Gnarlpine Defenders
DELETE FROM creature WHERE `guid` IN (48350,48578,49166,49168);

-- Wandering Angur
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (49173); -- 1 5

-- UPDATE `creature_addon` SET `path_id` = 491730 WHERE `guid` in (49173);
DELETE FROM creature_addon where guid IN (49173);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(49173,491730,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (491730);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(491730,1,9861.836,1460.0215,1276.6743,0,0,0,0,100,0),
(491730,2,9868.449,1459.3705,1277.2802,0,0,0,0,100,0),
(491730,3,9876.208,1461.0461,1275.7239,0,0,0,0,100,0),
(491730,4,9882.8955,1465.3231,1277.0406,0,0,0,0,100,0),
(491730,5,9887.475,1470.8104,1278.4536,0,0,0,0,100,0),
(491730,6,9891.977,1477.2117,1278.6083,0.957836,15000,0,0,100,0),
(491730,7,9887.475,1470.8104,1278.4536,0,0,0,0,100,0),
(491730,8,9882.8955,1465.3231,1277.0406,0,0,0,0,100,0),
(491730,9,9876.208,1461.0461,1275.7239,0,0,0,0,100,0),
(491730,10,9868.449,1459.3705,1277.2802,0,0,0,0,100,0),
(491730,11,9861.836,1460.0215,1276.6743,0,0,0,0,100,0),
(491730,12,9856.34,1461.06,1276.7,2.76605,15000,0,0,100,0);