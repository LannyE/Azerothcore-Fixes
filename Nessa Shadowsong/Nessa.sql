/*
-- Query: SELECT * FROM acore_world.creature_template where entry = 10118
LIMIT 0, 1000 - No Question Mark fix

-- Date: 2022-02-13 11:01
*/
UPDATE `acore_world`.`creature_template` SET `type_flags` = '0' WHERE (`entry` = '10118');