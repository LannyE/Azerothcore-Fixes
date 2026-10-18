/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid IN (1227700) and id in (3,4)
LIMIT 0, 1000

-- Date: 2024-01-11 12:13
*/
UPDATE `smart_scripts` SET `event_param1` = 3000, `event_param2` = 3000 WHERE `entryorguid`=1227700 AND `source_type` = 9 and `id` in (0); 
UPDATE `smart_scripts` SET `event_param1` = 3000, `event_param2` = 3000 WHERE `entryorguid`=1227700 AND `source_type` = 9 and `id` in (1); 
UPDATE `smart_scripts` SET `event_param1` = 3000, `event_param2` = 3000 WHERE `entryorguid`=1227700 AND `source_type` = 9 and `id` in (2);

DELETE FROM `smart_scripts` WHERE `entryorguid`=1227700 AND `id` in (3,4);
