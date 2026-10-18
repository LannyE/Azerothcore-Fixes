/*
-- Query: SELECT * FROM acore_world.creature_text where CreatureID IN (25814)
LIMIT 0, 1000

-- Date: 2023-12-21 20:25
*/
DELETE FROM `creature_text` WHERE `CreatureID` IN (25814);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25814,1,1,'We are Mechagnome... resistance is futile.',12,0,0,0,0,0,25000,0,''),
(25814,1,2,'The flesh is weak. We will make you better, stronger... faster.',12,0,0,0,0,0,25002,0,''),
(25814,1,3,'We can decurse you, we have the technology.',12,0,0,0,0,0,25003,0,''),

(25814,1,4,'You are cursed and we are the cure.',12,0,0,0,0,0,25001,0,''),
(25814,1,5,'The Gearmaster has plans for your weak flesh.',12,0,0,0,0,0,25004,0,''),
(25814,1,6,'Today, the Borean Tundra. Tomorrow, the world!',12,0,0,0,0,0,25005,0,''),
(25814,1,7,'You will be decursed!',12,0,0,0,0,0,25006,0,''),
(25814,1,8,'Come be perfect with us, $g brother : sister;.',12,0,0,0,0,0,25007,0,''),
(25814,1,9,'Maintenance initiated.',12,0,0,0,0,0,25008,0,'');