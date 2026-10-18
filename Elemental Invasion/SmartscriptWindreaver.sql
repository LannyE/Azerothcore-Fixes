/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid = 14454
LIMIT 0, 1000

-- Date: 2022-12-14 18:22
*/
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(14454,0,0,0,11,0,100,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Windreaver - On Respawn - Say Line 0'),
(14454,0,1,0,1,0,100,0,180000,300000,180000,300000,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Windreaver - Out of Combat - Say Line 1'),
(14454,0,2,3,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Windreaver - On Death - Say Line 2'),
(14454,0,3,0,61,0,100,512,0,0,0,0,0,126,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Windreaver - On Death - Remove All Gameobjects'),
(14454,0,4,0,0,0,100,0,3000,6000,8000,11000,0,11,23106,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'The Windreaver - In Combat - Cast Chain Lightning'),
(14454,0,5,0,0,0,100,0,0,14000,10000,16000,0,11,23105,0,0,0,0,0,5,20,0,0,0,0,0,0,0,'The Windreaver - In Combat - Cast Lightning Cloud'),
(14454,0,6,0,0,0,100,0,3000,11000,15000,26000,0,11,23103,0,0,0,0,0,6,20,0,0,0,0,0,0,0,'The Windreaver - In Combat - Cast Enveloping Winds'),
(14454,0,7,0,0,0,100,0,3000,6000,8000,14000,0,11,23104,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'The Windreaver - In Combat - Cast Shock'),
(14454,0,10,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247206,14455,0,0,0,0,0,0,'The Windreaver - On Respawn - Respawn Target'),
(14454,0,11,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247207,14455,0,0,0,0,0,0,'The Windreaver - On Respawn - Respawn Target'),
(14454,0,12,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247208,14455,0,0,0,0,0,0,'The Windreaver - On Respawn - Respawn Target'),
(14454,0,13,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247209,14455,0,0,0,0,0,0,'The Windreaver - On Respawn - Respawn Target'),
(14454,0,14,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6324.1,1349.34,4.39246,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,15,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6265.87,1332.98,14.2791,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,16,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6287.71,1390.8,9.90502,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,17,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6286.39,1440.51,10.2443,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,18,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6308.11,1497.98,4.06939,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,19,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6263,1517.72,9.75825,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,20,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6309.46,1535.09,3.51532,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,21,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6353.25,1512.41,4.66918,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,22,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6389.05,1462.01,2.95468,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,23,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6405.61,1415.61,-1.48166,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,24,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6438.17,1511.42,6.13047,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,25,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6501.51,1505.89,4.09383,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,26,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6556.16,1444.78,2.96919,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,27,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6601.16,1474.43,4.0009,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,28,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6573.24,1530.22,3.10244,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,29,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6636.07,1504.24,3.69889,0,'The Windreaver - On Respawn - Summon Gameobject'),
(14454,0,30,0,11,0,100,513,0,0,0,0,0,50,179667,0,0,0,0,0,8,0,0,0,0,-6483.56,1453.19,2.10941,0,'The Windreaver - On Respawn - Summon Gameobject');
