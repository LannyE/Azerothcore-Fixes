/*
-- Query: SELECT * FROM acore_world.event_scripts WHERE id IN (19030)
LIMIT 0, 1000

-- Date: 2022-12-27 15:40
*/
DELETE FROM event_scripts WHERE `id` = 19030;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(19030,0,10,1706,6000000,0,-8644.22,1328.58,5.54,5.18),  -- Defias Prisoner Spawn
(19030,0,16,5495,4,24,0,0,0,0); -- Play bell ring at boat port changed to 4,24 from 2,0 on 1-2-26 due to code regression
