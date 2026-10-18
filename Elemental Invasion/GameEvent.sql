/*
-- Query: SELECT * FROM acore_world.game_event where eventEntry = 13
LIMIT 0, 1000

-- Date: 2022-12-11 10:05
*/
DELETE FROM `game_event` WHERE `eventEntry` = 13;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES 
(13,'2000-01-01 08:00:00','2000-01-01 08:00:00',525600,1,0,0,'Elemental Invasions',0,2);
