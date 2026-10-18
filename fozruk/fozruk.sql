/*
-- Query: SELECT * FROM acore_world.creature_formations where leaderGUID = 14514
LIMIT 0, 1000

-- Date: 2022-01-07 06:47
*/
DELETE FROM `creature_formations` where leaderGUID = 14514;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(14514,14514,0,0,515,0,0),
(14514,14515,5,315,515,0,0),
(14514,14516,5,0,515,0,0),
(14514,14517,5,45,515,0,0);
