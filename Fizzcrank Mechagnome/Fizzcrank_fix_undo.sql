/*
-- Query: SELECT * FROM acore_world.creature_text where CreatureID IN (25814)
LIMIT 0, 1000

-- Date: 2023-12-21 20:25
*/
DELETE FROM `creature_text` WHERE `CreatureID` IN (25814);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25814,1,1,'We are Mechagnome... resistance is futile.',12,0,0,0,0,0,25000,0,''),
(25814,1,2,'The flesh is weak. We will make you better, stronger... faster.',12,0,0,0,0,0,25002,0,''),
(25814,1,3,'We can decurse you, we have the technology.',12,0,0,0,0,0,25003,0,'');