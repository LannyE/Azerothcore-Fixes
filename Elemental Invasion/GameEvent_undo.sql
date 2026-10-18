/*
-- Query: SELECT * FROM acore_world.game_event_creature where eventEntry = 13
LIMIT 0, 1000

-- Date: 2022-12-11 09:55
*/
DELETE FROM `game_event_creature` WHERE `eventEntry` = 13 AND `guid` IN (14461,247200,247201,247202,247203,247204,247205,247206,247207,247208,247209,247210,247211,247212,247213,247214,247215,247216,247217,247218,247219);
INSERT INTO `event_creature` (`eventEntry`,`guid`) VALUES (13,14461);

DELETE FROM `game_event` WHERE `eventEntry` = 13;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES 
(13,'2000-01-01 08:00:00','2000-01-01 08:00:00',525600,1,0,0,'Elemental Invasions',0,2);

-- Baron Charr
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14460,179666,14461,-247204);
-- DELETE FROM `smart_scripts` WHERE `entryorguid` = 14461 and `id` IN (30,31,32,33,34);
(179666,1,0,0,11,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fire Elemental Rift - On Respawn - Set Event Phase 1'),
(179666,1,1,2,60,1,100,0,0,1000,30000,30000,0,12,14460,6,120000,0,0,0,1,0,0,0,0,0,0,0,0,'Fire Elemental Rift - On Update - Summon Creature \'Blazing Invader\' (Phase 1)'),
(179666,1,2,0,61,0,100,0,0,0,0,0,0,63,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fire Elemental Rift - On Summoned Unit - Increase counter by 1'),
(179666,1,3,0,77,0,100,0,1,3,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'When 3 Invaders have been summoned - Set Event Phase 2'),
(179666,1,4,0,77,0,100,0,1,2,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'When there\'s 2 Invaders left - Set Event Phase 1'),

(14460,0,0,0,54,0,100,512,0,0,0,0,0,89,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blazing Invader - On Just Summoned - Start Random Movement'),
(14460,0,1,0,0,0,100,0,0,11000,10000,16000,0,11,23113,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blazing Invader - In Combat - Cast \'Blast Wave\''),
(14460,0,2,0,6,0,100,512,0,0,0,0,0,63,1,1,0,1,0,0,23,0,0,0,0,0,0,0,0,'Blazing Invader - On Just Died - Missing comment for action_type 63'),

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

DELETE FROM `creature_formations` WHERE `leaderGUID` = 247200;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(247200,247200,0,0,2,0,0),
(247200,247201,7,45,514,0,0),
(247200,247202,7,135,514,0,0),
(247200,247203,7,225,514,0,0),
(247200,247204,7,315,514,0,0);


-- Avalanchion
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14462,14464,179664,-247219);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(179664,1,0,0,60,0,100,0,0,5000,90000,90000,0,12,14462,4,120000,0,0,0,1,0,0,0,0,0,0,0,0,'Earth Elemental Rift - On Update - Summon Creature'),

(14462,0,0,0,54,0,100,512,0,0,0,0,0,89,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thundering Invader - Is Summoned - Random Move'),
(14462,0,1,0,0,0,100,0,0,7000,8000,14000,0,11,23114,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thundering Invader - In Combat - Cast Earth Shock'),
(14462,0,2,0,1,0,100,769,1000,1000,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thundering Invader - Out of Combat - Despawn'),

(14464,0,0,0,11,0,100,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Avalanchion - On Respawn - Say Line 0'),
(14464,0,1,0,1,0,100,0,180000,300000,180000,300000,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Avalanchion - Out of Combat - Say Line 1'),
(14464,0,2,3,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Avalanchion - On Death - Say Line 2'),
(14464,0,3,0,61,0,100,512,0,0,0,0,0,126,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Avalanchion - On Death - Remove All Gameobjects'),
(14464,0,4,0,0,0,100,0,0,1000,3000,3000,0,11,23392,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Avalanchion - Within Range 5-30 - Cast Boulder'),
(14464,0,5,0,0,0,100,0,0,8000,10000,16000,0,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Avalanchion - In Combat - Cast Trample'),
(14464,0,6,0,0,0,100,0,3000,11000,15000,26000,0,11,6524,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Avalanchion - In Combat - Cast Ground Tremor'),
(14464,0,7,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247216,14462,0,0,0,0,0,0,'Avalanchion - On Respawn - Respawn Target'),
(14464,0,8,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247217,14462,0,0,0,0,0,0,'Avalanchion - On Respawn - Respawn Target'),
(14464,0,9,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247218,14462,0,0,0,0,0,0,'Avalanchion - On Respawn - Respawn Target'),
(14464,0,10,0,11,0,100,513,0,0,0,0,0,70,1,0,0,0,0,0,10,247219,14462,0,0,0,0,0,0,'Avalanchion - On Respawn - Respawn Target'),
(14464,0,11,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4748.31,-7160.86,82.3083,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,12,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4786.63,-7135.98,90.4752,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,13,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4756.69,-7114.65,89.7484,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,14,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4707.82,-7088.9,92.0439,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,15,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4669.64,-7128.59,95.5044,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,16,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4622.24,-7125.71,103.437,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,18,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4583.15,-7101.45,95.9793,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,19,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4532.45,-7069.51,105.254,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,20,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4520.24,-7134.03,101.638,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,21,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4538.76,-7181.96,108.442,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,22,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4470.76,-7193.62,98.87,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,23,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4438.13,-7236.33,97.9613,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,24,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4464.92,-7272.94,98.3938,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,25,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4523.81,-7287.35,100.579,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,26,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4466.47,-7344.25,88.6556,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,27,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4485.29,-7405.54,81.6972,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,28,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4539.42,-7376.79,90.9745,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,29,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4566.54,-7434.58,89.2819,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,30,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4538.07,-7503.54,70.4429,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,31,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4610.4,-7478.49,80.3099,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,32,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4632.75,-7447.73,81.7821,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,33,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4687.43,-7438.17,76.1585,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,34,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4705.93,-7528.15,79.8415,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,35,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4766.07,-7446.41,88.1181,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,36,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4716.25,-7358.45,69.2486,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,37,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4714.05,-7295.35,69.2923,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,38,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4756.13,-7252.54,73.7236,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,39,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4746,-7197.88,82.9989,0,'Avalanchion - On Respawn - Summon Gameobject'),
(14464,0,40,0,11,0,100,513,0,0,0,0,0,50,179664,0,0,0,0,0,8,0,0,0,0,4798.16,-7183.17,89.342,0,'Avalanchion - On Respawn - Summon Gameobject');

-- Avalanchion Formation
DELETE FROM `creature_formations` WHERE `leaderGUID` = 247215;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(247215,247215,0,0,2,0,0),
(247215,247216,7,45,514,0,0),
(247215,247217,7,135,514,0,0),
(247215,247218,7,225,514,0,0),
(247215,247219,7,315,514,0,0);


-- The Windreaver
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14454,14455,179667,-247209);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(179667,1,0,0,60,0,100,0,0,5000,90000,90000,0,12,14455,4,120000,0,0,0,1,0,0,0,0,0,0,0,0,'Air Elemental Rift - On Update - Summon Creature'),

(14455,0,0,0,0,0,100,0,6000,12000,10000,16000,0,11,17207,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirling Invader - In Combat - Cast Whirlwind'),

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

-- The Windreaver Formation
DELETE FROM `creature_formations` WHERE `leaderGUID` = 247205;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(247205,247205,0,0,2,0,0),
(247205,247206,7,45,514,0,0),
(247205,247207,7,135,514,0,0),
(247205,247208,7,225,514,0,0),
(247205,247209,7,315,514,0,0);

-- Princess Tempestria
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14457,14458,179665,-247214);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(179665,1,0,0,60,0,100,0,0,5000,90000,90000,0,12,14458,4,120000,0,0,0,1,0,0,0,0,0,0,0,0,'Water Elemental Rift - On Update - Summon Creature'),

(14458,0,0,0,54,0,100,512,0,0,0,0,0,89,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watery Invader - Is Summoned - Random Move'),
(14458,0,1,0,0,0,100,0,0,7000,8000,14000,0,11,19133,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Watery Invader - In Combat - Cast Frost Shock'),
(14458,0,2,0,1,0,100,769,5000,5000,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watery Invader - Out of Combat - Despawn'),

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

-- Princess Tempestria Formation
DELETE FROM `creature_formations` WHERE `leaderGUID` = 247210;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(247210,247210,0,0,2,0,0),
(247210,247211,7,45,514,0,0),
(247210,247212,7,135,514,0,0),
(247210,247213,7,225,514,0,0),
(247210,247214,7,315,514,0,0);
