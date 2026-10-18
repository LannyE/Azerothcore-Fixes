/*
-- Query: SELECT * FROM acore_world.creature_loot_template where Item = 18958
LIMIT 0, 1000

-- Date: 2024-09-23 21:12
*/
UPDATE `creature_loot_template` SET `Chance`=75 WHERE `Item`=18958;
/*
INSERT INTO `` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(5461,18958,0,50,1,1,0,1,1,'Sea Elemental - Water Elemental Core'),
(5462,18958,0,50,1,1,0,1,1,'Sea Spray - Water Elemental Core');
*/