UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 18235;
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 18235;

DELETE FROM `waypoint_data` WHERE `id` = 182350;

--
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 19008;
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 19008;

DELETE FROM `waypoint_data` WHERE `id` = 190080;

UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 18405;
DELETE FROM `creature_addon` WHERE `guid` = 18405;
DELETE FROM `waypoint_data` WHERE `id` = 184050;

UPDATE creature SET `position_x` = -327.462, `position_y` = 1555.21, `position_z` = 25.349, `orientation` = 1.613 WHERE `guid` = 17663;



UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` = 19019;

DELETE FROM `creature_formations` WHERE leaderGUID = 19019;
UPDATE creature SET `position_x` = -384.391, `position_y` = 1560.98, `position_z` = 17.1156, `orientation` = 2.65866 WHERE `guid` = 19019;
UPDATE creature SET `position_x` = -350.822, `position_y` = 1606.93, `position_z` = 18.0028, `orientation` = 3.78911 WHERE `guid` = 19222;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 19019;
DELETE FROM `waypoint_data` WHERE `id` = 190190;

UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` = 18409;
DELETE FROM `creature_addon` WHERE `guid` = 18409;
DELETE FROM `waypoint_data` WHERE `id` = 184090;

DELETE FROM `waypoint_data` WHERE `id` = 192200;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(192200,1,-416.402,1547.68,17.6904,0,0,0,0,100,0),
(192200,2,-428.44,1552.73,18.3263,0,0,0,0,100,0),
(192200,3,-423.49,1551.35,18.3652,0,0,0,0,100,0),
(192200,4,-415.466,1546.56,17.5574,0,0,0,0,100,0),
(192200,5,-414.934,1541,17.3527,0,0,0,0,100,0),
(192200,6,-419.645,1537.14,17.5428,0,0,0,0,100,0),
(192200,7,-424.713,1531.67,18.2238,0,0,0,0,100,0),
(192200,8,-429.78,1525.6,18.5857,0,0,0,0,100,0),
(192200,9,-423.978,1532.29,18.1481,0,0,0,0,100,0),
(192200,10,-416.547,1538.62,17.1268,0,0,0,0,100,0),
(192200,11,-409.072,1544.23,17.0097,0,0,0,0,100,0),
(192200,12,-400.626,1550.87,16.8233,0,0,0,0,100,0),
(192200,13,-392.308,1555.83,17.1561,0,0,0,0,100,0),
(192200,14,-387.686,1555.04,16.758,0,0,0,0,100,0),
(192200,15,-390.041,1544.13,16.805,0,0,0,0,100,0),
(192200,16,-392.292,1535.09,16.8719,0,0,0,0,100,0),
(192200,17,-400.952,1536.79,17.1363,0,0,0,0,100,0),
(192200,18,-410.566,1543.32,17.177,0,0,0,0,100,0);