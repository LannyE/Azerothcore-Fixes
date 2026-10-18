/*
 Fix Missing Creature Addon for a Kudo Matriarch spawn group that no longer needs its waypoints. 5-30-26
 A commit on 5-19-26 caused this.
*/

DELETE FROM `creature_addon` WHERE `guid` IN (26213);

/*
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(262130,1,-2545.07,21.1902,11.8055,NULL,0,0,0,0,0,100,0);
(262130,2,-2487.88,100.192,33.7867,NULL,0,0,0,0,0,100,0),
(262130,3,-2420.56,88.3994,38.0405,NULL,0,0,0,0,0,100,0),
(262130,4,-2319,115.247,50.7186,NULL,0,0,0,0,0,100,0),
(262130,5,-2284.75,27.0455,22.493,NULL,0,0,0,0,0,100,0),
(262130,6,-2349.13,-61.5067,-8.76367,NULL,0,0,0,0,0,100,0);
*/