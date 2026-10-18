-- Restore waypoint script that fails constantly if Defender is not near defender

UPDATE `creature_template` SET `AIName` = '' where `entry` in (28600); -- ``

-- DELETE FROM `smart_scripts` WHERE `entryorguid` = 28600 AND `source_type` = 0 AND `id` IN (0,1);
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = -113364);

DELETE FROM waypoint_scripts where id = 1194 AND guid = 776;
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(1194,0,15,52059,4,28387,30,0,0,0,776);

UPDATE `waypoint_data` SET `action` = 1194 where `id` = 1133640 AND `point` = 3; -- 1194
UPDATE `waypoint_data` SET `orientation` = NULL,`delay` = 0 where `id` = 1133640 AND `point` = 1; -- 0


-- unFix crap movement
DELETE FROM `waypoint_data` where `id` = 1133640 AND `point` IN (6,7);