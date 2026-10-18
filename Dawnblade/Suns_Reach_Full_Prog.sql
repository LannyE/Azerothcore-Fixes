/*
Reset Sun's Reach to Full Progression

*/

DELETE FROM `world_state` WHERE `Id` = 20;
INSERT INTO `world_state` (`Id`, `Data`) VALUES
(20, '3 15 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 3 80 80 80');