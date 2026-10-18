

UPDATE creature SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` IN (86156, 86157, 86158, 86159, 86354);
UPDATE creature SET `position_x` = -9511.31, `position_y` = -1285.64, `position_z` = 44.1448, `orientation` = 3.93122 WHERE `guid` = 86354;  -- Eric
UPDATE creature SET `position_x` = -9511, `position_y` = -1286, `position_z` = 44.145, `orientation` = 3.789 WHERE `guid` = 86156; -- Jay
UPDATE creature SET `position_x` = -9487, `position_y` = -1254, `position_z` = 43.483, `orientation` = 1.865 WHERE `guid` = 86159; -- Kevin

-- Kids despawn at night
DELETE FROM `game_event_creature` WHERE `eventEntry` IN (86158, 86159, 86157, 86354, 86156) and `guid` = -88;
