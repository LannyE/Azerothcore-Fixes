/*
-- Query: SELECT * FROM acore_world.waypoint_data where id in (584370)
LIMIT 0, 1000

-- Date: 2023-11-28 09:29
*/
UPDATE `creature_template` SET `AIName` = "", `gossip_menu_id` = 0 `npcflag` = 0 WHERE `entry` in (16842); -- Outhouse Defender
UPDATE `creature` SET `MovementType` = 0,`npcflag` = 0 WHERE `guid` in (57942); -- Outhouse Defender

-- Defenders Conversation
-- 72637 - right 16390
-- 72636 - left Female displayID 16388 entry 20513
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (20513);

DELETE FROM `creature_addon` WHERE `guid` IN (57942);

DELETE FROM `creature_text` WHERE `CreatureID` IN (16842,20513);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-57942,20513,2051300,2051301,2051302,2051303,2051304,19308);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19308,0,0,0,1,0,100,0,60000,60000,120000,180000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - Out of Combat - Say Line 0 (No Repeat)');

DELETE FROM `waypoint_data` WHERE `id` IN (579420);
