/*
-- Query: SELECT * FROM acore_world.creature_formations where leaderGUID = 247215
LIMIT 0, 1000

-- Date: 2022-12-11 15:36
*/
DELETE FROM `creature_formations` WHERE `leaderGUID` = 247215;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(247215,247215,0,0,2,0,0),
(247215,247216,7,45,514,0,0),
(247215,247217,7,135,514,0,0),
(247215,247218,7,225,514,0,0),
(247215,247219,7,315,514,0,0);
