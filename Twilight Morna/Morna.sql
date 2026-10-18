/*
-- Query: SELECT * FROM acore_world.creature_formations where leaderGUID = 14514
LIMIT 0, 1000

-- Date: 2022-01-07 06:47
*/
DELETE FROM `creature_formations` where leaderGUID = 43201;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(43201,43201,0,0,515,0,0),
(43201,43202,5,135,515,0,0),
(43201,43203,5,225,515,0,0);

DELETE FROM creature_addon WHERE `guid` IN (43202,43203);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(43202,432010,14337,0,0,0,0,NULL),
(43203,432010,14337,0,0,0,0,NULL);

DELETE FROM waypoint_data WHERE `id` IN (432020,432030);
