/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (7918)
LIMIT 0, 1000

-- Date: 2022-02-06 20:34
*/
UPDATE `creature_template` SET `AIName`= "SmartAI", `npcflag` = 3, `gossip_menu_id` = 57000 WHERE `entry` = 7918;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7918;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7918,0,0,1,62,0,100,0,57005,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Stone Watcher of Norgannon - On Gossip Option 0 Selected - Close Gossip'),
(7918,0,1,0,61,0,100,0,0,0,0,0,0,15,2954,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Stone Watcher of Norgannon - On Gossip Option 0 Selected - Quest Credit 2954'),
(7918,0,2,0,11,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stone Watcher of Norgannon - On Spawn - Say Line 0'),
(7918,0,3,0,62,0,100,0,57005,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stone Watcher of Norgannon - On Gossip Option Selected - Say Line 1');

DELETE FROM `gossip_menu` WHERE MenuID in (57000,57001,57002,57003,57004,57005);
INSERT INTO `gossip_menu` (`MenuID`,`TextID`) VALUES 
(57000,1674),
(57001,1676),
(57002,1675),
(57003,1677),
(57004,1678),
(57005,1679);