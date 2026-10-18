/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid = 14457
LIMIT 0, 1000

-- Date: 2022-12-15 21:32
*/
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(14457,0,0,0,11,0,100,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Princess Tempestria - On Respawn - Say Line 0'),
(14457,0,1,0,1,0,100,0,180000,300000,180000,300000,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Princess Tempestria - Out of Combat - Say Line 1'),
(14457,0,2,3,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Princess Tempestria - On Death - Say Line 2'),
(14457,0,3,0,61,0,100,512,0,0,0,0,0,126,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Princess Tempestria - On Death - Remove All Gameobjects'),
(14457,0,4,0,0,0,100,0,0,1000,3000,4500,0,11,23102,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Princess Tempestria - In Combat - Cast Frostbolt'),
(14457,0,5,0,0,0,100,0,0,14000,10000,16000,0,11,10987,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Princess Tempestria - In Combat - Cast Geyser'),
(14457,0,6,0,0,0,100,0,3000,11000,15000,26000,0,11,14907,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Princess Tempestria - In Combat - Cast Frost Nova'),
(14457,0,7,0,0,0,100,0,3000,10000,11000,17000,0,11,22746,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Princess Tempestria - In Combat - Cast Cone of Cold'),
(14457,0,10,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247211,14458,0,0,0,0,0,0,'Princess Tempestria - On Respawn - Respawn Target'),
(14457,0,11,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247212,14458,0,0,0,0,0,0,'Princess Tempestria - On Respawn - Respawn Target'),
(14457,0,12,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247213,14458,0,0,0,0,0,0,'Princess Tempestria - On Respawn - Respawn Target'),
(14457,0,13,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247214,14458,0,0,0,0,0,0,'Princess Tempestria - On Respawn - Respawn Target'),
(14457,0,14,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6552.74,-4240.22,658.296,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,15,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6551.11,-4189.69,658.464,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,16,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6523.7,-4157.58,658.34,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,17,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6501.46,-4225.49,658.688,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,18,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6484.71,-4184.13,658.819,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,19,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6493.89,-4129.62,658.518,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,20,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6459.01,-4024.87,658.297,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,21,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6512.79,-4044.29,658.327,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,22,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6523.37,-3984.89,658.372,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,23,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6491.97,-3952.45,658.993,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,24,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6462.44,-3984.73,658.286,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,25,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6551.45,-4029.24,658.576,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,26,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6578.54,-4092.35,658.371,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,27,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6612.45,-4111.76,658.332,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,28,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6626.92,-4156.29,658.411,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,29,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6588.69,-4160.86,658.566,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,30,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6599.22,-4214.35,658.342,0,'Princess Tempestria - On Respawn - Summon Gameobject'),
(14457,0,31,0,11,0,100,513,0,0,0,0,0,50,179665,0,0,0,0,0,8,0,0,0,0,6559.97,-3943.21,658.356,0,'Princess Tempestria - On Respawn - Summon Gameobject');
