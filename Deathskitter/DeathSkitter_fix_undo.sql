/*
undo
Deathskitter fix 4-26-26

- Missing pathing in Terrokar Forest
*/
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (66907); -- 0

DELETE FROM `creature_addon` where `guid` in (66907);

DELETE FROM `waypoint_data` where `id` in (669070);

