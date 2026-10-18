/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (7918)
LIMIT 0, 1000

-- Date: 2022-02-06 20:34
*/
UPDATE `creature_template` SET `AIName`= "SmartAI", `npcflag` = 3, `gossip_menu_id` = 0 WHERE `entry` = 7918;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7918;

DELETE FROM `gossip_menu` WHERE MenuID in (57000,57001,57002,57003,57004,57005);