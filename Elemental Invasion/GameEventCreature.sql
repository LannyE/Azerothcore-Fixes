/*
-- Query: SELECT * FROM acore_world.game_event_creature where eventEntry = 13
LIMIT 0, 1000

-- Date: 2022-12-11 09:55
*/
DELETE FROM `game_event_creature` WHERE `eventEntry` = 13 AND `guid` = 14461;
INSERT INTO `event_creature` (`eventEntry`,`guid`) VALUES (13,14461);
