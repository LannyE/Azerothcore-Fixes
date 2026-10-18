/*
-- Query: SELECT * FROM acore_world.waypoints where entry = 23899
LIMIT 0, 1000

-- Date: 2022-01-07 17:45
*/
DELETE FROM waypoints WHERE `entry` = 23899;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(23899,1,-3882.59,-4670.28,-1.82355,0,0,'Tethyr');
