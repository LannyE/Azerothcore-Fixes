/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (295) and id in (2,3)
LIMIT 0, 1000

-- Date: 2023-12-03 16:19
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (295) and `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (6790) and `id` IN (2);
