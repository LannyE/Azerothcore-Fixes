-- Mugglefin
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` IN (51884);
UPDATE `creature` SET `wander_distance` = 4,`MovementType` = 1 WHERE `guid` IN (51887);

DELETE FROM creature_addon WHERE `guid` in (51884,51887);


DELETE FROM waypoint_data WHERE `id` IN (518840);

-- Saltspittle Warrior
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` IN (32931);

DELETE FROM creature_addon WHERE `guid` in (32931);

DELETE FROM waypoint_data WHERE `id` IN (329310);

