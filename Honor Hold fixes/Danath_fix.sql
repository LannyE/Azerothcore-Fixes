/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (16819,-57876)
LIMIT 0, 50000

-- Date: 2025-09-27 23:33
*/
DELETE FROM smart_scripts where entryorguid in (16819) and source_type = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16819,0,0,1,20,0,100,0,10254,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Commander Danath Trollbane - On Quest Rewarded - Say 0'),
(16819,0,1,0,61,0,100,0,0,0,0,0,0,0,11,6245,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Commander Danath Trollbane - On Quest Rewarded - Cast Force Target - Salute'),
(16819,0,2,4,20,0,100,0,11002,0,0,0,0,0,1,1,7000,0,0,0,0,7,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Quest Reward 11002 - Say Line 1'),
(16819,0,3,0,52,0,100,0,1,16819,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Text Over Line 1 - Say Line 2'),
(16819,0,4,0,61,0,100,0,0,0,0,0,0,0,50,184640,7200,0,0,0,0,8,0,0,0,0,-732.28,2670.99,94.5875,-0.541051,'Force Commander Danath Trollbane - On Quest \'The Fall of Magtheridon\' Finished - Summon Gameobject \'Magtheridon\'s Head\' Alliance'),
(16819,0,5,0,38,0,100,0,1,1,0,0,0,0,80,1681900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Data Set - Run Script'),
(16819,0,6,0,38,0,100,0,1,2,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Data Set - Set Orientation'),
(16819,0,7,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Respawn - Set Phase 1'),
(16819,0,8,0,38,1,100,0,1,3,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Data Set - Say Line 6'),
(16819,0,9,0,10,1,100,0,1,20,200000,200000,1,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - OOC LOS (Phase 1) - Say Line 0');
