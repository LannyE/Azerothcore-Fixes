/*
-- Query: SELECT * FROM acore_world.creature_template_movement where CreatureId = 1462
LIMIT 0, 1000

-- Date: 2023-12-13 20:21
*/
DELETE FROM creature_template_movement WHERE `CreatureId` IN (1462);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(1462,1,1,0,0,0,0,15000);
