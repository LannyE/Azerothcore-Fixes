/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (2080,208002,208001,208000)
LIMIT 0, 50000

-- Date: 2024-12-11 21:29
*/
DELETE FROM smart_scripts WHERE entryorguid IN (208002,208001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(208001,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - Actionlist - Set Run Off'),
(208001,9,1,0,0,0,100,0,2000,2000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9508.02,715.749,1255.89,1.03055,'Denalan - On Script - Move To Position'),
(208001,9,2,0,0,0,100,0,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Say Line 2'),
(208001,9,3,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9507.66,718.009,1255.89,1.80417,'Denalan - On Script - Move To Position'),
(208001,9,4,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9505.56,719.088,1256.2,2.65632,'Denalan - On Script - Move To Position'),
(208001,9,5,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Say Line 3'),
(208001,9,6,0,0,0,100,0,0,0,0,0,0,0,5,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Play Emote 16'),
(208001,9,7,0,0,0,100,0,5000,5000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9506.92,713.766,1255.89,0.279253,'Denalan - On Script - Move To Position'),
(208001,9,8,0,0,0,100,0,2000,2000,0,0,0,0,70,60,0,0,0,0,0,14,67984,7510,0,0,0,0,0,0,'Denalan - On Script - Respawn Closest Gameobject \'Sprouted Frond\''),
(208001,9,9,0,0,0,100,0,0,0,0,0,0,0,70,60,0,0,0,0,0,14,42936,7510,0,0,0,0,0,0,'Denalan - On Script - Respawn Closest Gameobject \'Sprouted Frond\''),
(208001,9,10,0,0,0,100,0,0,0,0,0,0,0,70,60,0,0,0,0,0,14,30276,7510,0,0,0,0,0,0,'Denalan - On Script - Respawn Closest Gameobject \'Sprouted Frond\''),
(208001,9,11,0,0,0,100,0,60000,60000,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Enter Evade'),

(208002,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - Actionlist - Set Run Off'),
(208002,9,1,0,0,0,100,0,2000,2000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Say Line 4'),
(208002,9,2,0,0,0,100,0,0,0,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Say Line 5'),
(208002,9,3,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9508.02,715.749,1255.89,1.03055,'Denalan - On Script - Move To Position'),
(208002,9,4,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9507.66,718.009,1255.89,1.80417,'Denalan - On Script - Move To Position'),
(208002,9,5,0,0,0,100,0,2000,2000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9505.56,719.088,1256.2,2.65632,'Denalan - On Script - Move To Position'),
(208002,9,6,0,0,0,100,0,0,0,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Say Line 6'),
(208002,9,7,0,0,0,100,0,5000,5000,0,0,0,0,5,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Play Emote 16'),
(208002,9,8,0,0,0,100,0,2000,2000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,9506.92,713.766,1255.89,0.279253,'Denalan - On Script - Move To Position'),
(208002,9,9,0,0,0,100,0,0,0,0,0,0,0,12,3569,3,20000,0,0,0,8,0,0,0,0,9505.13,722.011,1255.94,0.0244875,'Denalan - On Script - Summon Creature \'Bogling\''),
(208002,9,10,0,0,0,100,0,0,0,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Say Line 7'),
(208002,9,11,0,0,0,100,0,0,0,0,0,0,0,12,3569,3,20000,0,0,0,8,0,0,0,0,9504.09,720.294,1255.94,1.00709,'Denalan - On Script - Summon Creature \'Bogling\''),
(208002,9,12,0,0,0,100,0,0,0,0,0,0,0,12,3569,3,20000,0,0,0,8,0,0,0,0,9504.13,721.459,1255.94,6.24727,'Denalan - On Script - Summon Creature \'Bogling\''),
(208002,9,13,0,0,0,100,0,60000,60000,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Denalan - On Script - Enter Evade');
