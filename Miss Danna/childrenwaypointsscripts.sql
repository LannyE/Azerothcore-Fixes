/*
-- Query: SELECT * FROM acore_world.waypoint_scripts where id in (413,414,415)
LIMIT 0, 1000

-- Date: 2022-02-27 10:40
*/
DELETE FROM `waypoint_scripts` where id in (413,414,415);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(413,0,0,0,0,1153,0,0,0,0,445),
(413,0,2,83,1,0,0,0,0,0,446),
(414,0,0,0,0,1130,0,0,0,0,447),
(415,0,2,83,1,0,0,0,0,0,448);
