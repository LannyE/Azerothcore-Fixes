/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (19270,1927000)
LIMIT 0, 1000

-- Date: 2024-08-20 20:47
*/
-- Perry gatner event length change revert
UPDATE `game_event` SET `length`=20 WHERE `eventEntry`=86;

-- Saul 
DELETE FROM `smart_scripts` WHERE `entryorguid`=19270 AND `source_type`=0 AND `id`=21;

-- Raliq drinking emote too much revert
DELETE FROM `smart_scripts` WHERE `entryorguid`=18585 AND `source_type`=0 AND `id`=6;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18585,0,6,0,1,0,100,0,0,0,3600,5000,0,0,5,92,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Raliq the Drunk - Out of Combat - Play Emote 92 (ONESHOT_EAT_NOSHEATHE)');
