/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (2676,33016)
LIMIT 0, 1000

-- Date: 2022-02-28 20:50
*/
-- DELETE FROM smart_scripts WHERE `entryorguid` IN (2676) and `source_type` = 0 and `id` = 1;
DELETE FROM smart_scripts WHERE `entryorguid` IN (2676);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(2676,0,0,0,7,0,100,0,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Compact Harvest Reaper - On Evade - Despawn In 5000 ms');
-- (2676,0,0,0,1,0,100,0,5000,5000,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Compact Harvest Reaper - OOC - Despawn In 5000 ms'),
-- (2676,0,1,0,54,0,100,1,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Compact Harvest Reaper - On Summoned - Attack Start');
