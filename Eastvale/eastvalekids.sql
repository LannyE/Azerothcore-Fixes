

UPDATE creature SET `wander_distance` = 8, `MovementType` = 1 WHERE `guid` IN (86156,86157,86158,86159,86354);
UPDATE creature SET `position_x` = -9511.99, `position_y` = -1272.53, `position_z` = 43.669, `orientation` = 5.56961 WHERE `guid` = 86354;  -- Eric
UPDATE creature SET `position_x` = -9507.03, `position_y` = -1275.85, `position_z` = 44.1562, `orientation` = 5.16513 WHERE `guid` = 86156; -- Jay
UPDATE creature SET `position_x` = -9511.31, `position_y` = -1285.64, `position_z` = 44.1448, `orientation` = 3.93122 WHERE `guid` = 86159;  -- Kevin

-- Kids despawn at night
DELETE FROM `game_event_creature` WHERE `guid` IN (86158,86159,86157,86354,86156) and `eventEntry` = -88;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(-88,86158),
(-88,86159),
(-88,86157),
(-88,86354),
(-88,86156);