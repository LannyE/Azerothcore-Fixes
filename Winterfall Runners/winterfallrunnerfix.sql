/*
-- Query: SELECT * FROM acore_world.creature_addon where guid IN (42250,42251,42252)
LIMIT 0, 1000

-- Date: 2023-11-04 21:54
*/
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (42250);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(42250,42250,0,0,515,0,0),
(42250,42251,5,25,515,0,0),
(42250,42252,5,335,515,0,0);

DELETE FROM `creature_addon` WHERE `guid` IN (42251,42252);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(42251,0,0,0,0,0,0,NULL),
(42252,0,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (422510,422520);

UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (42251,42252);


