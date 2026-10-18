/*
-- Query: SELECT * FROM temp.waypoint_data where ID = 61500
LIMIT 0, 1000

-- Date: 2023-12-24 00:00
*/
-- Joshua and Mark
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (80317,80321);

DELETE FROM creature_addon WHERE `guid` IN (80317,80321);

DELETE FROM `waypoint_data` WHERE `id` IN (803170,803210);

-- Matt
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (794);

DELETE FROM creature_equip_template WHERE `CreatureID` IN (794);

DELETE FROM smart_scripts WHERE `entryorguid` IN (794,79400,79401);


DELETE FROM waypoints WHERE `entry` IN (794);

