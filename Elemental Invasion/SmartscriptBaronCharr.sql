/*
-- Query: SELECT * FROM acore_world.smart_scripts where comment like '%Baron Char%'
LIMIT 0, 1000

-- Date: 2022-12-11 11:17
*/
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(14461,0,0,0,11,0,100,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baron Charr - On Respawn - Say Line 0'),
(14461,0,1,0,1,0,100,0,180000,300000,180000,300000,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baron Charr - Out of Combat - Say Line 1'),
(14461,0,2,3,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baron Charr - On Death - Say Line 2'),
(14461,0,3,0,61,0,100,512,0,0,0,0,0,126,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baron Charr - On Death - Remove All Gameobjects'),
(14461,0,4,0,0,0,100,0,3000,6000,8000,11000,0,11,15285,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baron Charr - In Combat - Cast Fireball Volley'),
(14461,0,5,0,0,0,100,0,0,0,10000,16000,0,11,9574,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Baron Charr - In Combat - Cast Flame Buffet'),
(14461,0,10,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247201,14460,0,0,0,0,0,0,'Baron Charr - On Respawn - Respawn Target'),
(14461,0,11,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247202,14460,0,0,0,0,0,0,'Baron Charr - On Respawn - Respawn Target'),
(14461,0,12,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247203,14460,0,0,0,0,0,0,'Baron Charr - On Respawn - Respawn Target'),
(14461,0,13,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247204,14460,0,0,0,0,0,0,'Baron Charr - On Respawn - Respawn Target'),
(14461,0,14,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7115.23,-1303.52,-186.023,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,15,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7159.79,-1340.77,-184.387,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,16,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7172.53,-1282.03,-184.389,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,17,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7271.34,-1205.2,-241.216,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,18,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7305.77,-1314.89,-240.622,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,19,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7239.31,-1408.76,-232.555,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,20,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7207.49,-1452.04,-231.648,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,21,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7170.79,-1478.02,-265.446,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,22,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7132.25,-1435.83,-265.447,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,23,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7030.19,-1449.66,-262.58,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,24,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7019.3,-1269.13,-269.652,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,25,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7045.36,-1199.41,-267.884,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,26,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7106.72,-1120.15,-266.057,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,27,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7202.57,-1124.08,-266.719,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,28,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7074.14,-1420.95,-234.381,0,'Baron Charr - On Respawn - Summon Gameobject'),
(14461,0,29,0,11,0,100,513,0,0,0,0,0,50,179666,0,0,0,0,0,8,0,0,0,0,-7109.12,-1481.67,-247.611,0,'Baron Charr - On Respawn - Summon Gameobject');
