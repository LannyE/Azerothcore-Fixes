/*

*/
DELETE FROM creature_template_movement where CreatureID = 2151; -- GUID 46394
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(2151,1,1,0,0,0,0,30000);
