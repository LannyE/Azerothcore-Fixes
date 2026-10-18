/*
-- Query: SELECT * FROM acore_world.broadcast_text where ID in (12802,12803,12801,12800,12799,12798)
LIMIT 0, 1000

-- Date: 2023-12-02 23:58
*/
UPDATE `creature_addon` SET `emote` = 69, `bytes2` = 1 WHERE `guid` in (58142);
UPDATE `creature` SET `orientation` = 0.436332 WHERE `guid` in (58142);

DELETE FROM `creature_text` WHERE `CreatureID` IN (16864);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16826) and `GroupID` IN (2);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-58142,1686400,1686401,1686402,1683100,1683101,-57896,-57897,-57898,-57899);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `id` IN (8,9,10);

DELETE FROM `waypoints` WHERE `entry` IN (16864);


