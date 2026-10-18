/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid = 4484
LIMIT 0, 50000

-- Date: 2026-01-17 22:34
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4484) AND `source_type`=0 AND `id` = 20;