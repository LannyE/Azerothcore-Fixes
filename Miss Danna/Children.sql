/*
-- Query: SELECT * FROM acore_world.creature_addon where guid in (87092,87088,87090,87089,87082,87091,87023)
LIMIT 0, 1000

-- Date: 2022-02-27 08:36
*/
DELETE FROM `creature_addon` where `guid` in (87092,87088,87090,87089,87082,87091,87023);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(87082,870820,0,0,0,0,0,NULL),
(87088,870880,0,0,0,0,0,NULL),
(87089,870890,0,0,0,0,0,NULL),
(87090,870900,0,0,0,0,0,NULL),
(87091,870910,0,0,0,0,0,NULL),
(87092,870920,0,0,0,0,0,NULL);
