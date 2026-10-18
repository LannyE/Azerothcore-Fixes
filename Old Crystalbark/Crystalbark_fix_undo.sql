/*
undo
Old Crystalbark add waypoints to all four spawn locations. 5-17-26

*/

-- Old Crystalbark
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (151934,151935,151936,151937); -- 0

DELETE FROM `creature_addon` where `guid` in (151934,151935,151936,151937);

DELETE FROM `waypoint_data` where `id` in (1519340,1519350,1519360,1519370);


