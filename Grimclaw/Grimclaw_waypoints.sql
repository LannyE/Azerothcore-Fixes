/*
-- Query: SELECT * FROM acore_world.waypoints where entry = 3695
LIMIT 0, 10000

-- Date: 2022-03-08 12:15
*/
DELETE FROM `waypoints` WHERE `entry`=3695;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(3695,1,6409.01,381.597,13.7997,0,0,'Grimclaw'),
(3695,2,6422.38,398.542,11.1623,0,0,'Grimclaw'),
(3695,3,6429.16,395.692,11.6041,0,0,'Grimclaw'),
(3695,4,6437.87,372.912,13.9415,0,0,'Grimclaw',
(3695,5,6436.29,366.529,13.9415,4.24508,0,'Grimclaw'),
(3695,6,6437.87,372.912,13.9415,0,0,'Grimclaw'),
(3695,7,6429.16,395.692,11.6041,0,0,'Grimclaw'),
(3695,8,6422.38,398.542,11.1623,0,0,'Grimclaw'),
(3695,9,6409.01,381.597,13.7997,0,0,'Grimclaw');
