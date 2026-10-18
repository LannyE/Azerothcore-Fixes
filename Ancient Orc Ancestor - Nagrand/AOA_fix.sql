/*
Ancient Orc Ancestor Pathing fix and RP 5-1-26
Fix Darkened Spirit scripts. 
Fix other Nagrand Creatures
Oshu'gun
Somw of this is ported from TC
ALL Ancient Orc should path too Oshu'gun 
Fix other creatures around Nagrand
-- New Leader Dummy GUID: 300123,300192
-- New Murkblood Target 300193
-- New GUID: 300778,300779,300780,300781,300783,300784,300785,300786,300787,300788,300789,300790,300791,300792,300793,300794,300795,300796,300797,300798,300799,300800,300801,300802,300803,300804,300805,300806,300807,300808,300809,300810,670001,670002,670003,670004,670005
-- Shows Paths and placements https://www.wowhead.com/tbc/npc=18688/ancient-orc-ancestor

-- DONE analyze each placement and see if it is blizzlike and if not reassign it to a location that does not have a creature 
otherwise add new Orc Ancestors to the locations it is missing and create waypoints to have them walk directly or the paths shown on wowhead
- Voidspawn -- GOOD 5-19-26
- Vir'anni Arcanist -- GOOD 5-19-26
- Vir'anni Raider -- GOOD 5-19-26 -- Some of these should be doing the work emote. Done
- Aura 32648 needs to be applied to Mother Kashur and Ancient Agitated Spirits
- Murkblood raiders - waypoints and scripts

-- DONE Matron Drakia 
-- DONE Mathar G'ochar waypoints are messed up.  Walks through water instead of bridge
-- DONE Sunspring post orphans should be running around.  Group of three or four.
*/
-- Gan'arg Tinkerer
UPDATE `creature_template_addon` SET `emote` = 28 where `entry` in (17151);


-- Mo'arg Engineer
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (58969);
UPDATE `creature_addon` SET `path_id` = 589690 WHERE `guid` in (58969); -- 0
UPDATE `creature_template_addon` SET `auras` = 32007 where `entry` in (16945);

UPDATE `creature` SET `orientation` = 4.9803 WHERE `guid` = 58971; --
UPDATE `creature` SET `orientation` = 2.3838 WHERE `guid` = 58972; --

DELETE FROM `creature_formations` where `leaderGUID` IN (58969);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(58969,58969,0,0,515,0,0),
(58969,60330,4,130,515,0,0),
(58969,60331,4,180,515,0,0),
(58969,60332,4,230,515,0,0);

DELETE FROM `waypoint_data` WHERE `id` IN (589690);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(589690,1,-1799.6062,9203.858,71.42391,NULL,0,0,1,0,0,100,0),
(589690,2,-1799.0938,9226.869,70.540146,NULL,0,0,1,0,0,100,0),
(589690,3,-1797.664,9244.933,71.80897,NULL,0,0,1,0,0,100,0),
(589690,4,-1802.0996,9256.123,72.403946,NULL,0,0,1,0,0,100,0),
(589690,5,-1810.2357,9264.16,71.85195,NULL,0,0,1,0,0,100,0),
(589690,6,-1820.091,9267.822,72.360176,NULL,0,0,1,0,0,100,0),
(589690,7,-1842.4905,9272.473,73.89667,NULL,0,0,1,0,0,100,0),
(589690,8,-1860.9124,9275.582,71.58649,NULL,0,0,1,0,0,100,0),
(589690,9,-1878.7476,9277.293,73.05875,NULL,0,0,1,0,0,100,0),
(589690,10,-1889.2694,9272.232,76.89342,NULL,0,0,1,0,0,100,0),
(589690,11,-1900.0916,9262.971,76.86766,NULL,0,0,1,0,0,100,0),
(589690,12,-1903.9742,9248.67,75.693924,NULL,0,0,1,0,0,100,0),
(589690,13,-1898.4929,9229.348,77.73306,NULL,0,0,1,0,0,100,0),
(589690,14,-1885.4541,9211.977,75.90597,NULL,0,0,1,0,0,100,0),
(589690,15,-1879.1719,9202.332,75.78054,NULL,0,0,1,0,0,100,0),
(589690,16,-1872.693,9193.188,71.45224,NULL,0,0,1,0,0,100,0),
(589690,17,-1862.6576,9182.277,71.70312,NULL,0,0,1,0,0,100,0),
(589690,18,-1841.1422,9176.876,71.149666,NULL,0,0,1,0,0,100,0),
(589690,19,-1827.8386,9176.574,72.91551,NULL,0,0,1,0,0,100,0),
(589690,20,-1814.0966,9181.51,72.781334,NULL,0,0,1,0,0,100,0),
(589690,21,-1805.3,9190.7,70.63377,NULL,0,0,1,0,0,100,0);


-- Matron Drakia
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` IN (18302);

DELETE FROM `creature_text` WHERE `CreatureID` = 18302;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18302,0,0,"Greatmother, please drink this water.",12,1,100,0,0,0,15139,0,"Matron Drakia"),
(18302,0,1,"Greatmother, is there anything I can do?",12,1,100,0,0,0,15142,0,"Matron Drakia"),
(18302,0,2,"Greatmother, Garrosh has lost his heart. We are lost without you.",12,1,100,0,0,0,15143,0,"Matron Drakia"),
(18302,0,3,"I will do my best to take care of the children, Greatmother.",12,1,100,0,0,0,15144,0,"Matron Drakia");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18302) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1830200,1830201) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18302,0,0,0,108,0,100,512,1,656380,0,0,0,0,80,1830200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 1 Reached - Run Script'),
(18302,0,1,0,108,0,100,512,3,656380,0,0,0,0,80,1830201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 3 Reached - Run Script'),
(18302,0,2,0,108,0,100,512,4,656380,0,0,0,0,80,1830201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 4 Reached - Run Script'),
(18302,0,3,0,108,0,100,512,6,656380,0,0,0,0,80,1830201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 6 Reached - Run Script'),
(18302,0,4,0,108,0,100,512,7,656380,0,0,0,0,80,1830201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 7 Reached - Run Script'),
(18302,0,5,0,108,0,100,512,8,656380,0,0,0,0,80,1830201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 8 Reached - Run Script'),
(18302,0,6,0,108,0,100,512,9,656380,0,0,0,0,80,1830201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia - On Waypoint 9 Reached - Run Script'),

(1830200,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia  - On Script - Say Line 0'),
(1830200,9,1,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia  - On Script - Set Flag Standstate Kneel'),
(1830200,9,2,0,0,0,100,0,23000,23000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia  - On Script - Remove Flag Standstate Kneel'),

(1830201,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,19,18293,5,0,0,0,0,0,0,'Matron Drakia - On Script - Set Orientation facing nearest \'Sunspring Post Refugee\''),
(1830201,9,1,0,0,0,100,0,2000,2000,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia  - On Script - Set Emote State 69 \'STATE_USESTANDING\''),
(1830201,9,2,0,0,0,100,0,12000,12000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Matron Drakia  - On Script - Set Emote State 0');

DELETE FROM `waypoint_data` WHERE `id` IN (656380);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(656380,1,-1220.25,7164.88,57.2655,NULL,0,30000,0,0,0,100,0),
(656380,2,-1231.25,7178.18,57.2655,NULL,0,0,0,0,0,100,0),
(656380,3,-1226.03,7181.7,57.2655,NULL,0,15000,0,0,0,100,0),
(656380,4,-1200.89,7151.8,57.2655,NULL,0,15000,0,0,0,100,0),
(656380,5,-1201.33,7149.65,57.2655,NULL,0,0,0,0,0,100,0),
(656380,6,-1214.41,7136.23,57.2655,NULL,0,15000,0,0,0,100,0),
(656380,7,-1242.03,7139.5,57.2655,NULL,0,15000,0,0,0,100,0),
(656380,8,-1229.4,7151.14,57.2655,NULL,0,15000,0,0,0,100,0),
(656380,9,-1218.98,7153.91,57.2655,NULL,0,15000,0,0,0,100,0),
(656380,10,-1204.15,7165.89,57.2655,NULL,0,0,0,0,0,100,0),
(656380,11,-1237.78,7179.02,57.2655,NULL,0,0,0,0,0,100,0),
(656380,12,-1244.8,7153.73,57.2655,NULL,0,0,0,0,0,100,0),
(656380,13,-1213.23,7178.04,57.2655,NULL,0,0,0,0,0,100,0),
(656380,14,-1210.31,7158.85,57.2655,NULL,0,0,0,0,0,100,0);

DELETE FROM `waypoint_scripts` WHERE `id` in (74,75,76,77,78,79);


-- Bleeding Hollow Orphan
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (18299);
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0,`position_x` = -1303.92,`position_y` = 7006.2446,`position_z` = 32.414207 WHERE `guid` in (65635);
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2,`position_x` = -1300.2008,`position_y` = 7003.2285,`position_z` = 32.3518 WHERE `guid` in (65634);

DELETE FROM `creature_addon` where `guid` in (65634);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(65634,656340,0,0,0,0,0,NULL);

DELETE FROM `creature_formations` where `leaderGUID` IN (65634);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(65634,65634,0,0,512,0,0),
(65634,65635,7,180,512,0,0),
(65634,65626,11,180,512,0,0),
(65634,65627,16,180,512,0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65634) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-65634,0,0,0,1,0,100,0,20000,20000,45000,100000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bleeding Hollow Orphan - OOC - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` = 18299;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18299,0,0,"Tag! You're it!",12,1,100,0,0,0,15114,0,"Bleeding Hollow Orphan"),
(18299,0,1,"Get out of the way!",12,1,100,0,0,0,15116,0,"Bleeding Hollow Orphan"),
(18299,0,2,"Duck!",12,1,100,0,0,0,15117,0,"Bleeding Hollow Orphan"),
(18299,0,3,"OGRE! You're the ogre! HA-HA!",12,1,100,0,0,0,15118,0,"Bleeding Hollow Orphan");
/*
(18299,0,4,"Don't go close to the lake! It's haunted!",12,1,100,0,0,0,15119,0,"Bleeding Hollow Orphan"),
(18299,0,5,"Can we stop running now?",12,1,100,0,0,0,15120,0,"Bleeding Hollow Orphan"),
(18299,0,6,"I miss my mommy.",12,1,100,0,0,0,15121,0,"Bleeding Hollow Orphan"),
(18299,0,7,"I don't wanna play anymore!",12,1,100,0,0,0,15122,0,"Bleeding Hollow Orphan");
*/

DELETE FROM `waypoint_data` where `id` in (656340);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
/*
(656340,1,-1371.21,7160.12,33.157955,NULL,0,0,0,100,0),
(656340,2,-1379.3303,7149.3926,34.619244,NULL,0,0,0,100,0),
(656340,3,-1387.9021,7137.993,33.891922 ,NULL,0,0,0,100,0),
(656340,4,-1394.6057,7123.4688,34.30113 ,NULL,0,0,0,100,0),
(656340,5,-1394.8335,7105.2495,33.38987,NULL,0,0,0,100,0),
(656340,6,-1389.644,7085.849,34.481033,NULL,0,0,0,100,0),
(656340,7,-1380.5217,7068.225,35.537437,NULL,0,0,0,100,0),
(656340,8,-1369.7876,7058.0083,35.537212,NULL,0,0,0,100,0),
(656340,9,-1327.6094,7033.687,34.412045,NULL,0,0,0,100,0), -- -1327.6094 7033.687 34.412045
*/

(656340,1,-1300.2008,7003.2285,32.3518,NULL,0,1,0,100,0), -- -1300.2008 7003.2285 32.3518
(656340,2,-1290.0859,6997.1836,32.939014,NULL,0,1,0,100,0),
(656340,3,-1270.285,6998.538,35.67126,NULL,0,1,0,100,0),
(656340,4,-1253.6779,7006.5703,36.544846,NULL,0,1,0,100,0), -- Bridge
(656340,5,-1245.5151,7016.029,37.336693,NULL,0,1,0,100,0),
(656340,6,-1239.3173,7036.241,38.14454,NULL,0,1,0,100,0),
(656340,7,-1232.6124,7071.8115,35.686073,NULL,0,1,0,100,0),
(656340,8,-1234.0702,7106.129,51.996826,NULL,0,1,0,100,0),
(656340,9,-1240.7002,7114.1157,56.803352,NULL,0,1,0,100,0),
(656340,10,-1257.5089,7127.494,57.339985,NULL,0,1,0,100,0),
(656340,11,-1267.1892,7142.641,57.309727,NULL,0,1,0,100,0),
(656340,12,-1269.9202,7158.287,57.265434,NULL,0,1,0,100,0),
(656340,13,-1272.5343,7177.842,57.125877,NULL,0,1,0,100,0), -- -1272.5343 7177.842 57.125877
(656340,14,-1273.52,7186.071,54.887436,NULL,0,1,0,100,0), -- -1273.52 7186.071 54.887436
(656340,15,-1280.7666,7196.2495,49.050957,NULL,0,1,0,100,0),
(656340,16,-1299.2407,7209.1914,38.591248,NULL,0,1,0,100,0),
(656340,17,-1314.9175,7213.832,34.337536,NULL,0,1,0,100,0),
(656340,18,-1321.7878,7234.301,32.898754,NULL,0,1,0,100,0),
(656340,19,-1323.1664,7245.8926,32.88682,NULL,0,1,0,100,0),
(656340,20,-1314.4559,7258.305,33.911465,NULL,0,1,0,100,0),
(656340,21,-1288.7749,7281.955,34.199776,NULL,0,1,0,100,0),
(656340,22,-1284.6869,7288.2812,33.556564,NULL,0,1,0,100,0), -- bridge
(656340,23,-1278.704,7298.1606,34.56667,NULL,0,1,0,100,0),
(656340,24,-1270.798,7311.531,33.472008,NULL,0,1,0,100,0),
(656340,25,-1250.0591,7335.0903,34.069416,NULL,0,1,0,100,0),
(656340,26,-1226.8057,7338.2427,33.967976,NULL,0,1,0,100,0),
(656340,27,-1193.9684,7326.0527,33.96094,NULL,0,1,0,100,0),
(656340,28,-1185.2,7316.193,34.12313,NULL,0,1,0,100,0),
(656340,29,-1184.2074,7300.8184,34.006855,NULL,0,1,0,100,0),
(656340,30,-1186.4863,7280.1606,35.735558,NULL,0,1,0,100,0),
(656340,31,-1193.55,7245.9814,34.99548,NULL,0,1,0,100,0),
(656340,32,-1195.077,7225.68,45.097332,NULL,0,1,0,100,0),
(656340,33,-1200.8478,7221.831,47.66165,NULL,0,1,0,100,0),
(656340,34,-1219.1282,7229.7725,49.369976,NULL,0,1,0,100,0),
(656340,35,-1234.4167,7230.0664,49.416435,NULL,0,1,0,100,0),
(656340,36,-1247.7214,7226.498,49.316715,NULL,0,1,0,100,0),
(656340,37,-1264.0646,7214.6235,48.924187,NULL,0,1,0,100,0),
(656340,38,-1275.6128,7201.7656,48.590023,NULL,0,1,0,100,0),
(656340,39,-1277.4901,7194.6567,50.736866,NULL,0,1,0,100,0),
(656340,40,-1273.2107,7179.485,56.91208,NULL,0,1,0,100,0),
(656340,41,-1269.9202,7158.287,57.265434,NULL,0,1,0,100,0),
(656340,42,-1267.1892,7142.641,57.309727,NULL,0,1,0,100,0),
(656340,43,-1257.5089,7127.494,57.339985,NULL,0,1,0,100,0),
(656340,44,-1240.7002,7114.1157,56.803352,NULL,0,1,0,100,0),
(656340,45,-1234.0702,7106.129,51.996826,NULL,0,1,0,100,0),
(656340,46,-1232.6124,7071.8115,35.686073,NULL,0,1,0,100,0),
(656340,47,-1239.3173,7036.241,38.14454,NULL,0,1,0,100,0),
(656340,48,-1245.5151,7016.029,37.336693,NULL,0,1,0,100,0),
(656340,49,-1253.6779,7006.5703,36.544846,NULL,0,1,0,100,0),
(656340,50,-1270.285,6998.538,35.67126,NULL,0,1,0,100,0),
(656340,51,-1290.0859,6997.1836,32.939014,NULL,0,1,0,100,0), -- -1290.0859 6997.1836 32.939014
(656340,52,-1300.2008,7003.2285,32.3518,NULL,0,1,0,100,0), -- -1300.2008 7003.2285 32.3518
(656340,53,-1327.6094,7033.687,34.412045,NULL,0,1,0,100,0),
(656340,54,-1336.994,7044.4575,34.76201,NULL,0,1,0,100,0),
(656340,55,-1348.8635,7046.8833,35.209324,NULL,0,1,0,100,0),
(656340,56,-1357.2871,7041.2573,33.84863,NULL,0,1,0,100,0),
(656340,57,-1355.7366,7034.0737,33.679146,NULL,0,1,0,100,0),
(656340,58,-1344.8322,7026.897,33.79688,NULL,0,1,0,100,0),
(656340,59,-1327.4648,7024.6274,33.59581,NULL,0,1,0,100,0); -- -1327.4648 7024.6274 33.59581


-- Sunspring Post Orphan
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0,`position_x` = -1305.4995,`position_y` = 7007.624,`position_z` = 32.406296 WHERE `guid` in (65626);
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0,`position_x` = -1307.6483,`position_y` = 7009.501,`position_z` = 32.468674 WHERE `guid` in (65627);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65627) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-65627,0,0,0,1,0,100,0,20000,20000,45000,90000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bleeding Hollow Orphan - OOC - Say Line 1');

DELETE FROM `creature_text` WHERE `CreatureID` = 18296 AND `GroupID` = 1;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18296,1,0,"Don't go close to the lake! It's haunted!",12,1,100,0,0,0,15119,0,"Sunspring Post Orphan"),
(18296,1,1,"Can we stop running now?",12,1,100,0,0,0,15120,0,"Sunspring Post Orphan"),
(18296,1,2,"I miss my mommy.",12,1,100,0,0,0,15121,0,"Sunspring Post Orphan"),
(18296,1,3,"I don't wanna play anymore!",12,1,100,0,0,0,15122,0,"Sunspring Post Orphan");

UPDATE `waypoint_data` SET `action` = 0  where `id` in (847180) AND `point` = 5; -- 333

DELETE FROM `waypoint_scripts` WHERE `id` in (333);


-- Mathar G'ochar
DELETE FROM `waypoint_data` where `id` in (683260);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(683260,1,-1428.08,7142.52,37.9133,NULL,0,120000,0,0,0,100,0),
(683260,2,-1404.2,7126.67,33.6812,NULL,0,0,0,0,0,100,0),
(683260,3,-1391.25,7136.8,33.7245,NULL,0,0,0,0,0,100,0),
(683260,4,-1367.5,7161.02,33.0814,NULL,0,0,0,0,0,100,0),
(683260,5,-1351.07,7187.85,33.8692,NULL,0,0,0,0,0,100,0),
(683260,6,-1345.39,7207.33,33.0064,NULL,0,35000,0,0,0,100,0),
(683260,7,-1326.78,7213.61,33.2376,NULL,0,0,0,0,0,100,0),
(683260,8,-1319.95,7219.35,33.7254,NULL,0,0,0,0,0,100,0),
(683260,9,-1318.22,7231.81,33.0786,NULL,0,35000,0,0,0,100,0),
(683260,10,-1323.47,7241.71,32.8005,NULL,0,0,0,0,0,100,0),
(683260,11,-1340.78,7247.23,32.981,NULL,0,0,0,0,0,100,0),
(683260,12,-1355.49,7233.36,32.9481,NULL,0,0,0,0,0,100,0),
(683260,13,-1354.14,7222.26,32.8397,NULL,0,0,0,0,0,100,0),
(683260,14,-1345.99,7211.27,32.8585,NULL,0,20000,0,0,0,100,0),
(683260,15,-1349.3,7191.81,33.8977,NULL,0,0,0,0,0,100,0),
(683260,16,-1362.95,7166.22,33.4107,NULL,0,0,0,0,0,100,0), -- -1362.95 7166.22 33.4107
(683260,17,-1369.9176,7157.886,33.152653,NULL,0,0,0,0,0,100,0), -- Fix Bridge issue
(683260,18,-1378.0724,7149.21,34.46432,NULL,0,0,0,0,0,100,0), -- Fix Bridge issue
(683260,19,-1389.79,7138.27,33.8388,NULL,0,15000,0,0,0,100,0),
(683260,20,-1438.16,7147.59,39.9052,NULL,0,0,0,0,0,100,0),
(683260,21,-1457.04,7146.36,43.0043,NULL,0,0,0,0,0,100,0),
(683260,22,-1453.49,7148.56,42.8526,NULL,0,120000,0,0,0,100,0);


-- Mogor
-- fix The Ring of Blood: The Final Challenge - Mogor was resurrecting with 1% health
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1806902 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(1806902,9,0,0,0,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,11,12141,50,0,0,0,0,0,0,'Mogor - Actionlist - Despawn Instant'),
(1806902,9,1,0,0,0,100,0,0,0,0,0,0,0,27,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Missing comment for action_type 27'),
(1806902,9,2,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Remove All Auras'),
(1806902,9,3,0,0,0,100,0,0,0,0,0,0,0,11,31261,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Cast \'Permanent Feign Death (Root)\''),
(1806902,9,4,5,0,0,100,0,6000,6000,0,0,0,0,11,32343,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Cast \'Revive Self\''),
(1806902,9,5,0,61,0,100,0,0,0,0,0,0,0,142,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Heal'),
(1806902,9,6,0,0,0,100,0,2400,2400,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Remove All Auras'),
(1806902,9,7,0,0,0,100,0,1200,1200,0,0,0,0,11,28747,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Cast \'Frenzy\''),
(1806902,9,8,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Mogor - Actionlist - Start Attacking'),
(1806902,9,9,0,0,0,100,0,0,0,0,0,0,0,1,6,0,1,0,0,0,12,1,0,0,0,0,0,0,0,'Mogor - Actionlist - Say Line 6'),
(1806902,9,10,0,0,0,100,0,0,0,0,0,0,0,42,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mogor - Actionlist - Reset Invincibility Hp');


-- Hero of the Mag'har event fix
-- all three need smartAI for the event to play, but they are only used for the scripted event, 
-- so I'm just giving them something to prevent an error on server startup saying they have SmartAI enabled but no SmartAI entries in the database.
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (18075,18076,19647);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18075,18076,19647) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18075,0,0,0,54,0,0,0,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mannoroth - On Just Summoned - Set Sheath Melee'),
(18076,0,0,0,54,0,0,0,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grom Hellscream - On Just Summoned - Set Sheath Melee'),
(19647,0,0,0,54,0,0,0,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thrall - On Just Summoned - Set Sheath Melee');


-- Greater Windroc
UPDATE `creature_loot_template` SET `Chance` = 60 WHERE `Item` IN (28667); -- 100  -- fix drop rate flawless greater windroc beak / aged clefthoof blubber

DELETE FROM `creature` WHERE `guid` IN (59582);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
(59582,17129,0,0,530,0,0,1,1,0,-788.8040,8474.4004,44.6907,2.3430,300,5,0,6116,0,1,0,0,0,'',0,0,NULL);


-- Aged Clefthoof 
UPDATE `creature_loot_template` SET `Chance` = 60 WHERE `Item` IN (28668); -- 100  -- fix drop rate flawless greater windroc beak / aged clefthoof blubber

DELETE FROM `creature` WHERE `guid` IN (670001,670002,670003,670004); -- corpses near the Greater Windrocs
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
-- Make unit_flags + 33554690 to make it not selectable. 
(670001,17133,0,0,530,0,0,1,1,0,-1179.0300,8585.5195,35.3682,2.7576,300,0,0,1,0,0,0,33554690,0,'',NULL,0,NULL),
(670002,17133,0,0,530,0,0,1,1,0,-1016.1700,8313.7002,16.7102,5.0091,300,0,0,1,0,0,0,33554690,0,'',NULL,0,NULL),
(670003,17133,0,0,530,0,0,1,1,0,-918.2130,8454.0098,36.3233,3.3510,300,0,0,1,0,0,0,33554690,0,'',NULL,0,NULL),
(670004,17133,0,0,530,0,0,1,1,0,-781.6080,8482.6299,40.5285,5.8294,300,0,0,1,0,0,0,33554690,0,'',NULL,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (670001,670002,670003,670004);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(670001,0,0,7,0,65,0,NULL),
(670002,0,0,7,0,65,0,NULL),
(670003,0,0,7,0,65,0,NULL),
(670004,0,0,7,0,65,0,NULL);


-- Gutripper
UPDATE `creature` SET `MovementType` = 2,`position_x` = -1099.5699,`position_y` = 8582.3896,`position_z` = 46.3612 WHERE `guid` = 65525;

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (18257);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(18257,1,1,1,0,0,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (65525);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(65525,655250,0,0,0,0,0,NULL); -- Gutripper

DELETE FROM `waypoint_data` WHERE `id` IN (655250);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(655250,1,-1091.72,8560.97,66.4831,NULL,0,0,0,100,0),
(655250,2,-1068.59,8521.24,80.7095,NULL,0,0,0,100,0),
(655250,3,-1037.99,8498.13,80.7095,NULL,0,0,0,100,0),
(655250,4,-996.698,8472.18,80.7095,NULL,0,0,0,100,0),
(655250,5,-973.052,8482.62,66.3484,NULL,0,0,0,100,0),
(655250,6,-957.331,8491.59,66.3484,NULL,0,0,0,100,0),
(655250,7,-909.873,8486.53,66.3484,NULL,0,0,0,100,0),
(655250,8,-879.482,8484.6,79.0706,NULL,0,0,0,100,0),
(655250,9,-862.906,8491.32,72.4317,NULL,0,0,0,100,0),
(655250,10,-829.308,8489.9,58.6262,NULL,0,0,0,100,0),
(655250,11,-789.25,8482.48,58.6262,NULL,0,0,0,100,0),
(655250,12,-743.646,8479.96,56.6817,NULL,0,0,0,100,0),
(655250,13,-704.658,8451.3,58.6262,NULL,0,0,0,100,0),
(655250,14,-695.855,8407.75,58.6262,NULL,0,0,0,100,0),
(655250,15,-683.444,8369.08,68.5984,NULL,0,0,0,100,0),
(655250,16,-675.244,8347.02,79.5706,NULL,0,0,0,100,0),
(655250,17,-664.645,8320.78,96.4857,NULL,0,0,0,100,0),
(655250,18,-669.768,8272.64,96.4857,NULL,0,0,0,100,0),
(655250,19,-709.106,8251.63,116.319,NULL,0,0,0,100,0),
(655250,20,-727.922,8260.33,121.319,NULL,0,0,0,100,0),
(655250,21,-761.916,8274.64,116.319,NULL,0,0,0,100,0),
(655250,22,-807.93,8283.22,116.319,NULL,0,0,0,100,0),
(655250,23,-845.847,8314.61,116.319,NULL,0,0,0,100,0),
(655250,24,-868.622,8345.56,107.013,NULL,0,0,0,100,0),
(655250,25,-891.048,8368.04,93.9024,NULL,0,0,0,100,0),
(655250,26,-916.754,8387.28,93.9024,NULL,0,0,0,100,0),
(655250,27,-945.406,8411.37,78.708,NULL,0,0,0,100,0),
(655250,28,-979.343,8437.67,78.708,NULL,0,0,0,100,0),
(655250,29,-1002.01,8466.42,78.708,NULL,0,0,0,100,0),
(655250,30,-1041.51,8489.17,96.8746,NULL,0,0,0,100,0),
(655250,31,-1054.97,8503.23,96.8746,NULL,0,0,0,100,0),
(655250,32,-1068.45,8534.05,95.3191,NULL,0,0,0,100,0),
(655250,33,-1095.47,8570.79,75.4024,NULL,0,0,0,100,0);


-- Bach'lor
UPDATE `creature` SET `position_x` = -1750.33,`position_y` = 8825.29,`position_z` = 33.64 WHERE `guid` = 65528; -- Bach'lor

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (18258);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(18258,1,1,0,0,0,0,NULL);

-- DELETE FROM `creature_addon` WHERE `guid` IN (65528);
-- INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
-- (65528,655280,0,0,0,0,0,NULL); -- Bach'lor

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18258) AND `source_type` = 0 AND `id` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18258,0,2,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Bach\'lor - On Respawn - Jump to Leader Dummy (Bach\'lor)');

DELETE FROM `creature` WHERE `guid` IN (300192); -- Leader Dummy for Group
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300192,300001,0,0,530,0,0,1,1,0,-1750.33,8825.29,33.64,3.01005,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_formations` where `leaderGUID` IN (300192);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(300192,300192,0,0,512,0,0),
(300192,65528,0,0,512,0,0),
(300192,59727,8,185,512,0,0),
(300192,59728,10,240,512,0,0),
(300192,59729,15,145,512,0,0),
(300192,59730,15,249,512,0,0),
(300192,59972,9,116,512,0,0),
(300192,59973,14,184,512,0,0),
(300192,59974,4,175,512,0,0),
(300192,68109,20,210,512,0,0),
(300192,68110,20,177,512,0,0);

DELETE FROM `spawn_group` where `groupId` IN (42301);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42301,0,65528),
(42301,0,59727),
(42301,0,59728),
(42301,0,59729),
(42301,0,59730),
(42301,0,59972),
(42301,0,59973),
(42301,0,59974),
(42301,0,68109),
(42301,0,68110);

DELETE FROM `spawn_group_template` where `groupId` IN (42301);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42301,'Bach\'lor Tulbuk Group 1',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300192) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000107) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300192,0,0,1,11,0,100,512,0,0,0,0,0,0,80,30000107,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy (Bach\'lor) - On Spawn - Run Script'),
(-300192,0,1,0,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy (Bach\'lor) - On Respawn (Linked) - Set Active'),

(30000107,9,0,0,0,0,100,512,100,100,0,0,0,0,131,42301,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy (Bach\'lor) - On Script - Spawn SpawnGroup'),
(30000107,9,1,0,0,0,100,512,2000,2000,0,0,0,0,232,655280,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy (Bach\'lor) - On Script - Start Waypoint');

DELETE FROM `waypoint_data` WHERE `id` IN (655280);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
/*
(655280,1,-1750.33,8825.29,33.64,NULL,0,0,0,100,0), -- -1750.33 8825.29 33.64
(655280,2,-1736.21,8821.91,36.27,NULL,0,0,0,100,0),
(655280,3,-1722.28,8819.48,33.3289,NULL,0,0,0,100,0),
(655280,4,-1702.28,8815.27,33.3215,NULL,0,0,0,100,0),
(655280,5,-1679.72,8809.79,37.9979,NULL,0,0,0,100,0),
(655280,6,-1665.33,8807.19,38.865,NULL,0,0,0,100,0),
(655280,7,-1627.73,8792.1,36.8225,NULL,5000,0,0,100,0),
(655280,8,-1627.73,8792.1,36.8225,NULL,0,0,0,100,0),
(655280,9,-1589.28,8776.05,31.0817,NULL,0,0,0,100,0),
(655280,10,-1544.21,8763.72,33.0589,NULL,0,0,0,100,0),
(655280,11,-1517.92,8760.38,28.7265,NULL,0,0,0,100,0),
(655280,12,-1517.92,8760.38,28.7265,NULL,0,0,0,100,0),
(655280,13,-1470.43,8750.48,28.0288,NULL,5000,0,0,100,0),
(655280,14,-1425.19,8726.87,21.7158,NULL,0,0,0,100,0),
(655280,15,-1395.23,8717.94,23.6657,NULL,0,0,0,100,0),
(655280,16,-1365.8,8700.39,28.4882,NULL,0,0,0,100,0),
(655280,17,-1365.8,8700.39,28.4882,NULL,0,0,0,100,0),
(655280,18,-1347.92,8663.28,24.9401,NULL,0,0,0,100,0),
(655280,19,-1352.99,8628.97,25.1234,NULL,0,0,0,100,0),
(655280,20,-1345.75,8602.56,22.7522,NULL,0,0,0,100,0),
(655280,21,-1332.21,8590,19.7613,NULL,0,0,0,100,0),
(655280,22,-1288.52,8597.4,22.4054,NULL,0,0,0,100,0),
(655280,23,-1247.69,8631.38,32.358,NULL,0,0,0,100,0),
(655280,24,-1247.69,8631.38,32.358,NULL,0,0,0,100,0),
(655280,25,-1247.69,8631.38,32.358,NULL,5000,0,0,100,0),
(655280,26,-1221.92,8669.44,38.759,NULL,0,0,0,100,0),
(655280,27,-1230.99,8689.39,37.4873,NULL,0,0,0,100,0),
(655280,28,-1246.52,8711.41,34.5571,NULL,0,0,0,100,0),
(655280,29,-1264.72,8731.36,32.453,NULL,0,0,0,100,0),
(655280,30,-1283.21,8742.08,35.1921,NULL,0,0,0,100,0),
(655280,31,-1302.94,8740.64,34.1554,NULL,0,0,0,100,0),
(655280,32,-1328.93,8730.21,29.988,NULL,0,0,0,100,0),
(655280,33,-1359.77,8736.24,28.6292,NULL,0,0,0,100,0),
(655280,34,-1374.58,8757.73,31.2344,NULL,5000,0,0,100,0),
(655280,35,-1378.19,8802.87,34.4092,NULL,0,0,0,100,0),
(655280,36,-1396.67,8830.66,29.1786,NULL,0,0,0,100,0),
(655280,37,-1415.89,8849.03,32.9179,NULL,0,0,0,100,0),
(655280,38,-1439.05,8862.96,37.7159,NULL,0,0,0,100,0),
(655280,39,-1457.39,8872.23,37.3876,NULL,0,0,0,100,0),
(655280,40,-1481.63,8894.11,41.1984,NULL,0,0,0,100,0),
(655280,41,-1491.28,8909.66,43.6029,NULL,0,0,0,100,0),
(655280,42,-1505.11,8929.37,42.0836,NULL,0,0,0,100,0),
(655280,43,-1519.29,8943.56,38.28,NULL,0,0,0,100,0),
(655280,44,-1519.29,8943.56,38.28,NULL,0,0,0,100,0),
(655280,45,-1581.56,8968.29,39.1789,NULL,0,0,0,100,0),
(655280,46,-1619.78,8971.95,41.2737,NULL,0,0,0,100,0),
(655280,47,-1655.18,8964.68,43.4279,NULL,0,0,0,100,0),
(655280,48,-1678.58,8957.2,39.4291,NULL,0,0,0,100,0),
(655280,49,-1721.1,8963.63,48.2463,NULL,0,0,0,100,0),
(655280,50,-1759.58,8971.58,58.4921,NULL,0,0,0,100,0),
(655280,51,-1763.97,8972.37,58.6278,NULL,0,0,0,100,0),
(655280,52,-1759.46,8944.18,58.3036,NULL,0,0,0,100,0),
(655280,53,-1759.46,8944.18,58.3036,NULL,0,0,0,100,0),
(655280,54,-1759.46,8944.18,58.3036,NULL,5000,0,0,100,0),
(655280,55,-1782.38,8980.54,54.589,NULL,0,0,0,100,0),
(655280,56,-1794.69,8981.32,50.3973,NULL,0,0,0,100,0),
(655280,57,-1809.13,8982.4,46.1651,NULL,0,0,0,100,0),
(655280,58,-1815.58,8976.12,41.7977,NULL,0,0,0,100,0),
(655280,59,-1830.36,8948.43,39.7659,NULL,0,0,0,100,0),
(655280,60,-1849.44,8918.3,37.4994,NULL,0,0,0,100,0),
(655280,61,-1853.8,8911.71,37.2204,NULL,0,0,0,100,0),
(655280,62,-1900.89,8888.02,37.0238,NULL,0,0,0,100,0),
(655280,63,-1904.16,8887.94,37.1452,NULL,0,0,0,100,0),
(655280,64,-1947.18,8879.73,36.1108,NULL,5000,0,0,100,0),
(655280,65,-1853.32,8843.79,30.0997,NULL,0,0,0,100,0),
(655280,66,-1807.56,8834.99,29.2595,NULL,0,0,0,100,0),
(655280,67,-1778.89,8832.21,28.8318,NULL,5000,0,0,100,0);
*/

(655280,1,-1750.33,8825.29,33.64,NULL,0,0,0,100,0), -- -1750.33 8825.29 33.64
(655280,2,-1736.21,8821.91,36.27,NULL,0,0,0,100,0),
(655280,3,-1722.28,8819.48,33.3289,NULL,0,0,0,100,0),
(655280,4,-1702.28,8815.27,33.3215,NULL,0,0,0,100,0),
(655280,5,-1679.72,8809.79,37.9979,NULL,0,0,0,100,0),
(655280,6,-1665.33,8807.19,38.865,NULL,0,0,0,100,0),
(655280,7,-1627.73,8792.1,36.8225,NULL,5000,0,0,100,0),
(655280,8,-1589.28,8776.05,31.0817,NULL,0,0,0,100,0),
(655280,9,-1544.21,8763.72,33.0589,NULL,0,0,0,100,0),
(655280,10,-1517.92,8760.38,28.7265,NULL,0,0,0,100,0),
(655280,11,-1470.43,8750.48,28.0288,NULL,5000,0,0,100,0),
(655280,12,-1425.19,8726.87,21.7158,NULL,0,0,0,100,0),
(655280,13,-1395.23,8717.94,23.6657,NULL,0,0,0,100,0),
(655280,14,-1365.8,8700.39,28.4882,NULL,0,0,0,100,0),
(655280,15,-1347.92,8663.28,24.9401,NULL,0,0,0,100,0),
(655280,16,-1352.99,8628.97,25.1234,NULL,0,0,0,100,0),
(655280,17,-1345.75,8602.56,22.7522,NULL,0,0,0,100,0),
(655280,18,-1332.21,8590,19.7613,NULL,0,0,0,100,0),
(655280,19,-1288.52,8597.4,22.4054,NULL,0,0,0,100,0),
(655280,20,-1247.69,8631.38,32.358,NULL,5000,0,0,100,0),
(655280,21,-1221.92,8669.44,38.759,NULL,0,0,0,100,0),
(655280,22,-1230.99,8689.39,37.4873,NULL,0,0,0,100,0),
(655280,23,-1246.52,8711.41,34.5571,NULL,0,0,0,100,0),
(655280,24,-1264.72,8731.36,32.453,NULL,0,0,0,100,0),
(655280,25,-1283.21,8742.08,35.1921,NULL,0,0,0,100,0),
(655280,26,-1302.94,8740.64,34.1554,NULL,0,0,0,100,0),
(655280,27,-1328.93,8730.21,29.988,NULL,0,0,0,100,0),
(655280,28,-1359.77,8736.24,28.6292,NULL,0,0,0,100,0),
(655280,29,-1374.58,8757.73,31.2344,NULL,5000,0,0,100,0),
(655280,30,-1378.19,8802.87,34.4092,NULL,0,0,0,100,0),
(655280,31,-1396.67,8830.66,29.1786,NULL,0,0,0,100,0),
(655280,32,-1415.89,8849.03,32.9179,NULL,0,0,0,100,0),
(655280,33,-1439.05,8862.96,37.7159,NULL,0,0,0,100,0),
(655280,34,-1457.39,8872.23,37.3876,NULL,0,0,0,100,0),
(655280,35,-1481.63,8894.11,41.1984,NULL,0,0,0,100,0),
(655280,36,-1491.28,8909.66,43.6029,NULL,0,0,0,100,0),
(655280,37,-1505.11,8929.37,42.0836,NULL,0,0,0,100,0),
(655280,38,-1519.29,8943.56,38.28,NULL,0,0,0,100,0),
(655280,39,-1581.56,8968.29,39.1789,NULL,0,0,0,100,0),
(655280,40,-1619.78,8971.95,41.2737,NULL,0,0,0,100,0),
(655280,41,-1655.18,8964.68,43.4279,NULL,0,0,0,100,0),
(655280,42,-1678.58,8957.2,39.4291,NULL,0,0,0,100,0),
(655280,43,-1721.1,8963.63,48.2463,NULL,0,0,0,100,0),
(655280,44,-1759.58,8971.58,58.4921,NULL,0,0,0,100,0),
(655280,45,-1763.97,8972.37,58.6278,NULL,0,0,0,100,0),
(655280,46,-1759.46,8944.18,58.3036,NULL,5000,0,0,100,0),
(655280,47,-1782.38,8980.54,54.589,NULL,0,0,0,100,0),
(655280,48,-1794.69,8981.32,50.3973,NULL,0,0,0,100,0),
(655280,49,-1809.13,8982.4,46.1651,NULL,0,0,0,100,0),
(655280,50,-1815.58,8976.12,41.7977,NULL,0,0,0,100,0),
(655280,51,-1830.36,8948.43,39.7659,NULL,0,0,0,100,0),
(655280,52,-1849.44,8918.3,37.4994,NULL,0,0,0,100,0),
(655280,53,-1853.8,8911.71,37.2204,NULL,0,0,0,100,0),
(655280,54,-1900.89,8888.02,37.0238,NULL,0,0,0,100,0),
(655280,55,-1904.16,8887.94,37.1452,NULL,0,0,0,100,0),
(655280,56,-1947.18,8879.73,36.1108,NULL,5000,0,0,100,0),
(655280,57,-1853.32,8843.79,30.0997,NULL,0,0,0,100,0),
(655280,58,-1807.56,8834.99,29.2595,NULL,0,0,0,100,0),
(655280,59,-1778.89,8832.21,28.8318,NULL,5000,0,0,100,0);


-- Talbuk Stag
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (59727,59728,59729,59730); -- 5 1

UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (17130); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-59727,-59728,-59729,-59730) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-59727,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Stag - On Respawn - Jump to Leader Dummy (Bach\'lor)'),
(-59728,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Stag - On Respawn - Jump to Leader Dummy (Bach\'lor)'),
(-59729,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Stag - On Respawn - Jump to Leader Dummy (Bach\'lor)'),
(-59730,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Stag - On Respawn - Jump to Leader Dummy (Bach\'lor)');


-- Talbuk Thorngrazer
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (59972,59973,59974); -- 5 1

UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (17131); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-59972,-59973,-59974) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-59972,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Thorngrazer - On Respawn - Jump to Leader Dummy (Bach\'lor)'),
(-59973,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Thorngrazer - On Respawn - Jump to Leader Dummy (Bach\'lor)'),
(-59974,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Talbuk Thorngrazer - On Respawn - Jump to Leader Dummy (Bach\'lor)');


-- Injured Talbuk
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (68109,68110); -- 5 1

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (18964); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-68109,-68110) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-68109,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Injured Talbuk - On Respawn - Jump to Leader Dummy (Bach\'lor)'),
(-68110,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300192,300001,0,0,0,0,0,0,'Injured Talbuk - On Respawn - Jump to Leader Dummy (Bach\'lor)');


-- Warmaul Reaver
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (60143); -- 5 1
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (60138,60142); -- 0

UPDATE `creature` SET `position_x` = -751.57025,`position_y` = 7723.5337,`position_z` = 47.589226 WHERE `guid` = 60145;

DELETE FROM `creature_addon` WHERE `guid` IN (60138,60142,60143);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(60138,601380,0,0,1,0,0,NULL),
(60142,601420,0,0,1,0,0,NULL),
(60143,601430,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (601380,601420,601430);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(601380,1,-782.997,7815.76,39.805374,0.767945,30000,0,0,100,0), -- Home
(601380,2,-763.29944,7826.041,42.840286,NULL,0,0,0,100,0),
(601380,3,-763.1067,7848.2954,45.312824,NULL,0,0,0,100,0),
(601380,4,-763.4051,7873.634,50.414722,NULL,0,0,0,100,0),
(601380,5,-760.56055,7899.3984,52.11859,NULL,0,0,0,100,0),
(601380,6,-756.7229,7908.172,54.172276,NULL,0,0,0,100,0),
(601380,7,-761.08435,7916.025,57.24638,NULL,0,0,0,100,0),
(601380,8,-760.55695,7921.023,59.375412,NULL,0,0,0,100,0),
(601380,9,-757.77856,7929.6953,60.370895,NULL,0,0,0,100,0),
(601380,10,-751.0809,7950.101,60.46828,NULL,0,0,0,100,0), -- Ramp bottom
(601380,11,-748.077,7959.0835,63.667213,NULL,0,0,0,100,0),
(601380,12,-753.08435,7969.503,67.73289,NULL,0,0,0,100,0),
(601380,13,-763.0009,7972.663,69.91593,NULL,0,0,0,100,0),
(601380,14,-773.09375,7967.529,72.3026,NULL,0,0,0,100,0),
(601380,15,-776.38605,7956.9404,75.18931,NULL,0,0,0,100,0),
(601380,16,-774.31396,7952.3613,75.2602,5.1609,10000,0,0,100,0), -- Top
(601380,17,-776.38605,7956.9404,75.18931,NULL,0,0,0,100,0),
(601380,18,-773.09375,7967.529,72.3026,NULL,0,0,0,100,0),
(601380,19,-763.0009,7972.663,69.91593,NULL,0,0,0,100,0),
(601380,20,-753.08435,7969.503,67.73289,NULL,0,0,0,100,0),
(601380,21,-748.077,7959.0835,63.667213,NULL,0,0,0,100,0),
(601380,22,-751.0809,7950.101,60.46828,NULL,0,0,0,100,0),
(601380,23,-757.77856,7929.6953,60.370895,NULL,0,0,0,100,0),
(601380,24,-760.55695,7921.023,59.375412,NULL,0,0,0,100,0),
(601380,25,-761.08435,7916.025,57.24638,NULL,0,0,0,100,0),
/*
(601380,7,-746.85876,7915.6416,55.51226,NULL,0,0,0,100,0),
(601380,8,-736.4566,7914.161,54.595356,NULL,0,0,0,100,0),
(601380,9,-733.4282,7912.2725,53.746967,5.7255,25000,0,0,100,0), -- Ring of blood turn aroundd
(601380,10,-736.4566,7914.161,54.595356,NULL,0,0,0,100,0),
(601380,11,-746.85876,7915.6416,55.51226,NULL,0,0,0,100,0),
*/
(601380,26,-756.7229,7908.172,54.172276,NULL,0,0,0,100,0),
(601380,27,-760.56055,7899.3984,52.11859,NULL,0,0,0,100,0),
(601380,28,-763.4051,7873.634,50.414722,NULL,0,0,0,100,0),
(601380,29,-763.1067,7848.2954,45.312824,NULL,0,0,0,100,0),
(601380,30,-763.29944,7826.041,42.840286,NULL,0,0,0,100,0),
(601380,31,-777.62305,7809.449,39.357174,NULL,0,0,0,100,0),
(601380,32,-799.24567,7795.9976,35.66823,NULL,0,0,0,100,0),
(601380,33,-809.7063,7788.738,35.22883,NULL,0,0,0,100,0), -- Entrance turn around
(601380,34,-799.24567,7795.9976,35.66823,NULL,0,0,0,100,0),

(601420,1,-825.012,7707.42,38.567204,3.78155,30000,0,0,100,0), -- Home
(601420,2,-833.0325,7713.4844,35.633553,NULL,0,0,0,100,0),
(601420,3,-836.35516,7719.2524,34.89354,NULL,0,0,0,100,0),
(601420,4,-833.41705,7749.937,34.827236,NULL,0,0,0,100,0),
(601420,5,-820.4327,7783.3496,35.17015,NULL,0,0,0,100,0),
(601420,6,-827.8246,7793.7056,37.82338,2.1688,30000,0,0,100,0),
(601420,7,-820.4327,7783.3496,35.17015,NULL,0,0,0,100,0),
(601420,8,-833.41705,7749.937,34.827236,NULL,0,0,0,100,0),
(601420,9,-836.35516,7719.2524,34.89354,NULL,0,0,0,100,0),
(601420,10,-833.0325,7713.4844,35.633553,NULL,0,0,0,100,0),

(601430,1,-823.90125,7701.789,38.85139,3.3516,20000,0,0,100,0), -- Home
(601430,2,-811.00055,7706.616,42.847923,NULL,0,0,0,100,0),
(601430,3,-803.25934,7705.436,44.404785,NULL,0,0,0,100,0),
(601430,4,-798.36096,7697.7583,46.63818,NULL,0,0,0,100,0),
(601430,5,-796.2927,7691.435,46.938778,NULL,0,0,0,100,0),
(601430,6,-790.67175,7686.876,47.553223,NULL,0,0,0,100,0),
(601430,7,-781.219,7682.428,52.91067,NULL,0,0,0,100,0),
(601430,8,-770.21814,7668.8057,57.881096,NULL,0,0,0,100,0),
(601430,9,-765.3737,7666.229,59.75543,NULL,0,0,0,100,0),
(601430,10,-755.63477,7671.0273,64.20203,NULL,0,0,0,100,0),
(601430,11,-752.7945,7674.2876,66.422676,NULL,0,0,0,100,0),
(601430,12,-754.1572,7682.9697,68.736496,NULL,0,0,0,100,0),
(601430,13,-753.0836,7690.13,69.88157,NULL,0,0,0,100,0),
(601430,14,-743.31665,7691.001,76.65653,NULL,0,0,0,100,0),
(601430,15,-725.5246,7696.678,86.46939,NULL,0,0,0,100,0),
(601430,16,-710.4179,7700.246,85.65701,NULL,0,0,0,100,0),
(601430,17,-704.3788,7703.3345,84.1921,NULL,0,0,0,100,0),
(601430,18,-696.00964,7721.3433,82.32731,NULL,0,0,0,100,0),
(601430,19,-670.5978,7750.9043,84.8554,NULL,0,0,0,100,0),
(601430,20,-659.2474,7752.335,85.35924,5.5601,25000,0,0,100,0), -- In Front of cave turn around
(601430,21,-670.5978,7750.9043,84.8554,NULL,0,0,0,100,0),
(601430,22,-696.00964,7721.3433,82.32731,NULL,0,0,0,100,0),
(601430,23,-704.3788,7703.3345,84.1921,NULL,0,0,0,100,0),
(601430,24,-710.4179,7700.246,85.65701,NULL,0,0,0,100,0),
(601430,25,-725.5246,7696.678,86.46939,NULL,0,0,0,100,0),
(601430,26,-743.31665,7691.001,76.65653,NULL,0,0,0,100,0),
(601430,27,-753.0836,7690.13,69.88157,NULL,0,0,0,100,0),
(601430,28,-754.1572,7682.9697,68.736496,NULL,0,0,0,100,0),
(601430,29,-752.7945,7674.2876,66.422676,NULL,0,0,0,100,0),
(601430,30,-755.63477,7671.0273,64.20203,NULL,0,0,0,100,0),
(601430,31,-765.3737,7666.229,59.75543,NULL,0,0,0,100,0),
(601430,32,-770.21814,7668.8057,57.881096,NULL,0,0,0,100,0),
(601430,33,-781.219,7682.428,52.91067,NULL,0,0,0,100,0),
(601430,34,-790.67175,7686.876,47.553223,NULL,0,0,0,100,0),
(601430,35,-796.2927,7691.435,46.938778,NULL,0,0,0,100,0),
(601430,36,-798.36096,7697.7583,46.63818,NULL,0,0,0,100,0),
(601430,37,-803.25934,7705.436,44.404785,NULL,0,0,0,100,0),
(601430,38,-811.00055,7706.616,42.847923,NULL,0,0,0,100,0);


-- Warmaul Shaman
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (63873); -- 5 1

UPDATE `creature` SET `position_x` = -797.8424,`position_y` = 7721.357,`position_z` = 48.134388,`orientation` = 2.5102 WHERE `guid` = 63881;
UPDATE `creature` SET `position_x` = -802.5096,`position_y` = 7723.881,`position_z` = 47.973423,`orientation` = 5.7368 WHERE `guid` = 63876;

DELETE FROM `creature_addon` WHERE `guid` IN (63873);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(63873,638730,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (638730);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(638730,1,-782.76904,7790.798,38.48421,2.2801,30000,0,0,100,0), -- Home
(638730,2,-772.1302,7783.806,43.45675,NULL,0,0,0,100,0),
(638730,3,-758.89185,7772.882,53.45903,NULL,0,0,0,100,0),
(638730,4,-742.5281,7760.0693,65.17717,NULL,0,0,0,100,0),
(638730,5,-735.5375,7758.724,67.622185,NULL,0,0,0,100,0),
(638730,6,-721.87366,7758.649,69.40237,NULL,0,0,0,100,0),
(638730,7,-708.9365,7751.8926,77.92753,NULL,0,0,0,100,0),
(638730,8,-698.8627,7745.7515,80.21082,NULL,0,0,0,100,0),
(638730,9,-695.9852,7744.799,80.826004,6.0656,25000,0,0,100,0), -- top of hill turn around
(638730,10,-698.8627,7745.7515,80.21082,NULL,0,0,0,100,0),
(638730,11,-708.9365,7751.8926,77.92753,NULL,0,0,0,100,0),
(638730,12,-721.87366,7758.649,69.40237,NULL,0,0,0,100,0),
(638730,13,-735.5375,7758.724,67.622185,NULL,0,0,0,100,0),
(638730,14,-742.5281,7760.0693,65.17717,NULL,0,0,0,100,0),
(638730,15,-758.89185,7772.882,53.45903,NULL,0,0,0,100,0),
(638730,16,-772.1302,7783.806,43.45675,NULL,0,0,0,100,0);

DELETE FROM `creature` WHERE `guid` IN (300810);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300810,18064,0,0,530,0,0,1,1,1,-655.951,7743.83,86.8493,1.94377,300,5,0,4731,2790,1,0,0,0,'',0,0,NULL);


-- Warmaul Brute
UPDATE `creature` SET `orientation` = 3.4309 WHERE `guid` = 63899;


-- Warmaul Warlock
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (63746); -- 5 1

DELETE FROM `creature_addon` WHERE `guid` IN (63746);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(63746,637460,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (637460);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(637460,1,-643.6996,8795.083,202.31432,3.55,30000,0,0,100,0), -- Home
(637460,2,-631.91583,8797.815,202.34077,NULL,0,0,0,100,0),
(637460,3,-620.3561,8801.796,202.21094,NULL,0,0,0,100,0),
(637460,4,-601.71924,8812.719,202.25638,NULL,0,0,0,100,0),
(637460,5,-592.27435,8825.191,205.83159,NULL,0,0,0,100,0),
(637460,6,-586.0978,8838.135,208.70975,NULL,0,0,0,100,0),
(637460,7,-576.95447,8856.799,210.46655,NULL,0,0,0,100,0),
(637460,8,-569.2692,8862.506,210.67468,NULL,0,0,0,100,0),
(637460,9,-546.64984,8869.953,209.39809,NULL,0,0,0,100,0),
(637460,10,-527.08234,8870.952,208.76862,NULL,0,0,0,100,0),
(637460,11,-502.70502,8875.883,206.2349,NULL,0,0,0,100,0),
(637460,12,-479.2836,8861.147,202.52495,5.6641,10000,0,0,100,0), -- -479.2836 8861.147 202.52495
(637460,13,-502.70502,8875.883,206.2349,NULL,0,0,0,100,0),
(637460,14,-527.08234,8870.952,208.76862,NULL,0,0,0,100,0),
(637460,15,-546.64984,8869.953,209.39809,NULL,0,0,0,100,0),
(637460,16,-569.2692,8862.506,210.67468,NULL,0,0,0,100,0),
(637460,17,-576.95447,8856.799,210.46655,NULL,0,0,0,100,0),
(637460,18,-586.0978,8838.135,208.70975,NULL,0,0,0,100,0),
(637460,19,-592.27435,8825.191,205.83159,NULL,0,0,0,100,0),
(637460,20,-601.71924,8812.719,202.25638,NULL,0,0,0,100,0),
(637460,21,-620.3561,8801.796,202.21094,NULL,0,0,0,100,0), -- -620.3561 8801.796 202.21094
(637460,22,-631.91583,8797.815,202.34077,NULL,0,0,0,100,0); -- -631.3534 8798.614 202.38622


-- Boulderfist Crusher
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (60052); -- 5 1

DELETE FROM `creature_addon` WHERE `guid` IN (60052);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(60052,600520,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (600520);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(600520,1,-2533.95,6274.88,16.8373,5.58005,5000,0,0,100,0), -- Home
(600520,2,-2526.7415,6279.754,17.735111,NULL,0,0,0,100,0),
(600520,3,-2514.3486,6296.443,20.228682,NULL,0,0,0,100,0), -- -2516.287 6293.8022 19.930614
(600520,4,-2505.1216,6308.93,21.121868,NULL,0,0,0,100,0),
(600520,5,-2488.3042,6322.677,22.881552,NULL,0,0,0,100,0),
(600520,6,-2478.957,6333.901,24.447771,1.2742,3000,0,0,100,0),
(600520,7,-2488.3042,6322.677,22.881552,NULL,0,0,0,100,0),
(600520,8,-2505.1216,6308.93,21.121868,NULL,0,0,0,100,0),
(600520,9,-2516.287,6293.8022,19.930614,NULL,0,0,0,100,0),
(600520,10,-2526.7415,6279.754,17.735111,NULL,0,0,0,100,0),
(600520,11,-2533.95,6274.88,16.8373,NULL,0,0,0,100,0), --
(600520,12,-2546.453,6268.134,15.350202,NULL,0,0,0,100,0),
(600520,13,-2553.9353,6264.9653,15.937401,NULL,0,0,0,100,0),
(600520,14,-2566.5332,6259.6533,18.316195,NULL,0,0,0,100,0),
(600520,15,-2575.2705,6262.594,19.334726,NULL,0,0,0,100,0),
(600520,16,-2587.9482,6272.914,23.114922,NULL,0,0,0,100,0),
(600520,17,-2608.7183,6289.935,33.134773,2.4582,3000,0,0,100,0),
(600520,18,-2587.9482,6272.914,23.114922,NULL,0,0,0,100,0), -- -2587.9482 6272.914 23.114922
(600520,19,-2581.4038,6261.762,19.875614,NULL,0,0,0,100,0),
(600520,20,-2573.4377,6241.1445,18.482784,NULL,0,0,0,100,0),
(600520,21,-2577.191,6222.8423,17.586329,NULL,0,0,0,100,0),
(600520,22,-2588.1855,6200.2764,21.00478,NULL,0,0,0,100,0),
(600520,23,-2606.5352,6196.2085,24.036903,NULL,0,0,0,100,0),
(600520,24,-2618.276,6193.606,27.116247,3.3833,3000,0,0,100,0),
(600520,25,-2606.5352,6196.2085,24.036903,NULL,0,0,0,100,0),
(600520,26,-2588.1855,6200.2764,21.00478,NULL,0,0,0,100,0),
(600520,27,-2577.191,6222.8423,17.586329,NULL,0,0,0,100,0), -- -2577.191 6222.8423 17.586329
(600520,28,-2567.34,6229.944,17.19019,NULL,0,0,0,100,0),
(600520,29,-2551.7598,6237.5474,17.57355,NULL,0,0,0,100,0), -- -2551.7598 6237.5474 17.57355
(600520,30,-2534.8477,6244.9097,19.029821,NULL,0,0,0,100,0),
(600520,31,-2524.6772,6250.2207,19.686306,NULL,0,0,0,100,0), --
(600520,32,-2516.7612,6254.366,20.369955,NULL,0,0,0,100,0),
(600520,33,-2506.3157,6262.4395,25.40303,NULL,0,0,0,100,0),
(600520,34,-2516.7612,6254.366,20.369955,NULL,0,0,0,100,0), -- -2516.7612 6254.366 20.369955
(600520,35,-2524.9275,6254.5723,19.771465,NULL,0,0,0,100,0),
(600520,36,-2531.7952,6261.573,17.886133,NULL,0,0,0,100,0);

/*
(600520,19,-2575.2705,6262.594,19.334726,NULL,0,0,0,100,0), -- -2575.2705 6262.594 19.334726
(600520,20,-2566.5332,6259.6533,18.316195,NULL,0,0,0,100,0),
(600520,21,-2553.9353,6264.9653,15.937401,NULL,0,0,0,100,0),
(600520,22,-2546.453,6268.134,15.350202,NULL,0,0,0,100,0);
*/


-- Gordunni Soulreaper
DELETE FROM `creature` WHERE `guid` IN (670005); -- ,91738 fix waypoints
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
(670005,23022,0,0,530,0,0,1,1,0,-1529.1022,5971.2354,192.3297,0,300,0,1,27945,6310,2,0,0,0,'',0,0,NULL);
-- (670006,23022,0,0,530,0,0,1,1,0,-1337.0262,5707.4595,180.8865,0,300,0,1,27945,6310,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (670005);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(670005,6700050,0,0,0,0,0,NULL);
-- (670006,6700060,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (917380,6700050);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(917380,1,-1330,5772.58,182.907,NULL,0,0,0,100,0),
(917380,2,-1330.99,5742.57,181.18,NULL,0,0,0,100,0),
(917380,3,-1334.7,5735.71,180.898,NULL,0,0,0,100,0),
(917380,4,-1332.69,5723.99,180.092,NULL,0,0,0,100,0),
(917380,5,-1334.92,5714.3,180.339,NULL,5000,0,0,100,0),
(917380,6,-1332.69,5723.99,180.092,NULL,0,0,0,100,0),
(917380,7,-1334.7,5735.71,180.898,NULL,0,0,0,100,0),
(917380,8,-1332.17,5745.07,181.152,NULL,0,0,0,100,0),
(917380,9,-1329.98,5772.85,182.91,NULL,0,0,0,100,0),
(917380,10,-1322.73,5792.35,183.804,NULL,0,0,0,100,0),
(917380,11,-1319.87,5808.9,185.731,NULL,0,0,0,100,0),
(917380,12,-1337.74,5821.18,184.754,NULL,0,0,0,100,0),
(917380,13,-1379.33,5839.73,186.025,NULL,5000,0,0,100,0),
(917380,14,-1336.58,5820.7,184.813,NULL,0,0,0,100,0),
(917380,15,-1319.5,5808.55,185.771,NULL,0,0,0,100,0),

(6700050,1,-1529.1,5971.24,192.33,NULL,0,0,0,100,0),
(6700050,2,-1521.51,5957.25,193.641,NULL,0,0,0,100,0),
(6700050,3,-1515.27,5940.26,194.593,NULL,0,0,0,100,0),
(6700050,4,-1501.01,5922.79,194.599,NULL,0,0,0,100,0),
(6700050,5,-1479.96,5914.02,195.544,NULL,0,0,0,100,0),
(6700050,6,-1458.55,5917.25,194.75,NULL,0,0,0,100,0),
(6700050,7,-1437.51,5908.63,193.411,NULL,0,0,0,100,0),
(6700050,8,-1413.04,5889.4,187.326,NULL,1000,0,0,100,0),
(6700050,9,-1458.55,5917.25,194.75,NULL,0,0,0,100,0),
(6700050,10,-1501.01,5922.79,194.599,NULL,0,0,0,100,0);

/*
(6700060,1,-1337.03,5707.46,180.886,NULL,1000,0,0,100,0), -- -1337.03 5707.46 180.886
(6700060,2,-1333.27,5731.09,180.424,NULL,0,0,0,100,0),
(6700060,3,-1332.24,5754.8,182.023,NULL,0,0,0,100,0),
(6700060,4,-1330.81,5779.44,182.903,NULL,0,0,0,100,0),
(6700060,5,-1324.87,5800.58,184.493,NULL,0,0,0,100,0),
(6700060,6,-1350.48,5824.88,186.404,NULL,0,0,0,100,0),
(6700060,7,-1385.07,5843.76,185.519,NULL,1000,0,0,100,0),
(6700060,8,-1324.87,5800.58,184.493,NULL,0,0,0,100,0);
*/

-- Kil'sorrow Spellbinder
DELETE FROM `creature` WHERE `guid` IN (60208);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
(60208,17146,0,0,530,0,0,1,1,1,-3014.7700,6524.4902,99.2735,2.9321,300,0,0,4892,2846,0,0,0,0,'',0,0,NULL);


-- Murkblood Raider
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (64998); -- 5 1
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (64999); -- 5 1
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (65003,28663); -- 0

UPDATE `creature` SET `position_x` = -1508.0599,`position_y` = 8476.573,`position_z` = -4.074371,`orientation` = 0.8555 WHERE `guid` = 28658; -- 
UPDATE `creature` SET `position_x` = -1611.9313,`position_y` = 8535.363,`position_z` = -13.393937,`orientation` = 2.5587 WHERE `guid` = 28659; -- 
UPDATE `creature` SET `position_x` = -1520.8064,`position_y` = 8588.508,`position_z` = 7.26014,`orientation` = 1.0886 WHERE `guid` = 28660; -- 
UPDATE `creature` SET `position_x` = -1507.3033,`position_y` = 8399.523,`position_z` = -6.7523317,`orientation` = 4.7576 WHERE `guid` = 28663;
UPDATE `creature` SET `position_x` = -1507.28,`position_y` = 8401.912,`position_z` = -6.3990955,`orientation` = 4.7576 WHERE `guid` = 28664;
UPDATE `creature` SET `position_x` = -1621.3695,`position_y` = 8484.79,`position_z` = -13.399067,`orientation` = 4.9484 WHERE `guid` = 28665; --

DELETE FROM `creature` WHERE `guid` IN (300791,300792,300793);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300791,18203,0,0,530,0,0,1,1,1,-1553.4896,8576.568,7.2609434,0.9312,300,0,0,5504,0,0,0,0,0,'',0,0,NULL),
(300792,18203,0,0,530,0,0,1,1,1,-1595.2285,8450.794,-10.117529,0.7559,300,0,0,5504,0,0,0,0,0,'',0,0,NULL),
(300793,18203,0,0,530,0,0,1,1,1,-1564.4789,8555.059,2.0803168,2.8417,300,0,0,5504,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (28663,64998,65003);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(28663,286630,0,0,1,0,0,NULL),
(64998,649980,0,0,1,0,0,NULL),
(65003,650030,0,0,1,0,0,NULL);

DELETE FROM `creature_formations` where `leaderGUID` IN (28663,64998,65003);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(28663,28663,0,0,515,0,0),
(28663,28664,3,180,515,0,0),
(64998,64998,0,0,515,0,0),
(64998,64999,3,180,515,0,0),
(65003,65003,0,0,515,0,0),
(65003,65002,3,180,515,0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18203) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18203,0,0,0,0,0,100,0,5000,10000,15000,20000,0,0,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murkblood Raider - IC - Cast \'11971\''),
(18203,0,1,0,2,0,100,1,20,80,0,0,0,0,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murkblood Raider - Between 20-80% Health (No Repeat) - Cast \'15496\''),
(18203,0,2,0,4,0,20,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Raider - On Aggro - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` = 18203;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18203,0,0,"Don't let them escape! Kill the strong one first!",12,0,100,0,0,0,15002,0,"Murkblood Raider"),
(18203,0,1,"Where do you think you're going? Kill them all!",12,0,100,0,0,0,15003,0,"Murkblood Raider");

DELETE FROM `waypoint_data` where `id` in (286630,649980,650030);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(286630,1,-1505.8871,8414.196,-4.408622,NULL,0,0,0,0,100,0),
(286630,2,-1502.7587,8424.906,-0.9759582,NULL,0,0,0,0,100,0),
(286630,3,-1500.9513,8433.386,-0.32046947,NULL,0,0,0,0,100,0),
(286630,4,-1489.3636,8450.368,-0.70429194,NULL,0,0,0,0,100,0),
(286630,5,-1472.6726,8478.408,2.0982738,NULL,0,0,0,0,100,0), -- Turn around
(286630,6,-1489.3636,8450.368,-0.70429194,NULL,0,0,0,0,100,0),
(286630,7,-1500.9513,8433.386,-0.32046947,NULL,0,0,0,0,100,0),
(286630,8,-1502.7587,8424.906,-0.9759582,NULL,0,0,0,0,100,0),
(286630,9,-1505.8871,8414.196,-4.408622,NULL,0,0,0,0,100,0),
(286630,10,-1507.3033,8399.523,-6.7523317,NULL,0,0,0,0,100,0), -- home turn around

(649980,1,-1616.5531,8542.564,-13.222626,NULL,0,0,0,0,100,0), -- Turn around
(649980,2,-1617.43,8554.13,-12.1492405,NULL,0,0,0,0,100,0), -- Home
(649980,3,-1616.3535,8562.489,-10.58804,NULL,0,0,0,0,100,0),
(649980,4,-1613.5905,8569.632,-9.040985,NULL,0,0,0,0,100,0),
(649980,5,-1608.2034,8577.328,-7.1002207,NULL,0,0,0,0,100,0),
(649980,6,-1598.9883,8584.891,-4.2835126,NULL,0,0,0,0,100,0),
(649980,7,-1586.5918,8590.371,-0.34566286,NULL,0,0,0,0,100,0),
(649980,8,-1577.1827,8591.754,2.3267405,NULL,0,0,0,0,100,0),
(649980,9,-1558.703,8591.65,6.7463737,NULL,0,0,0,0,100,0), -- Turn around
(649980,10,-1577.1827,8591.754,2.3267405,NULL,0,0,0,0,100,0),
(649980,11,-1586.5918,8590.371,-0.34566286,NULL,0,0,0,0,100,0),
(649980,12,-1598.9883,8584.891,-4.2835126,NULL,0,0,0,0,100,0),
(649980,13,-1608.2034,8577.328,-7.1002207,NULL,0,0,0,0,100,0),
(649980,14,-1613.5905,8569.632,-9.040985,NULL,0,0,0,0,100,0),
(649980,15,-1616.3535,8562.489,-10.58804,NULL,0,0,0,0,100,0),
(649980,16,-1617.43,8554.13,-12.1492405,NULL,0,0,0,0,100,0), -- Home

(650030,1,-1649.8718,8455.577,-18.955328,NULL,0,0,0,0,100,0),
(650030,2,-1626.2498,8457.902,-16.100355,NULL,0,0,0,0,100,0),
(650030,3,-1601.2609,8471.006,-12.064135,NULL,0,0,0,0,100,0),
(650030,4,-1584.7565,8482.897,-10.791547,NULL,0,0,0,0,100,0),
(650030,5,-1555.7283,8504.72,-1.0610147,NULL,0,0,0,0,100,0),
(650030,6,-1543.4531,8515.616,0.23601039,NULL,0,0,0,0,100,0),
(650030,7,-1516.9939,8515.927,0.5549596,NULL,0,0,0,0,100,0),
(650030,8,-1471.4797,8495.803,2.605873,NULL,0,0,0,0,100,0),
(650030,9,-1455.7571,8494.875,4.7171135,NULL,0,0,0,0,100,0),
(650030,10,-1443.6508,8499.944,6.268706,NULL,0,0,0,0,100,0),
(650030,11,-1410.7749,8519.56,9.10702,NULL,0,0,0,0,100,0), -- Turn around Road
(650030,12,-1443.6508,8499.944,6.268706,NULL,0,0,0,0,100,0),
(650030,13,-1455.7571,8494.875,4.7171135,NULL,0,0,0,0,100,0),
(650030,14,-1471.4797,8495.803,2.605873,NULL,0,0,0,0,100,0),
(650030,15,-1516.9939,8515.927,0.5549596,NULL,0,0,0,0,100,0),
(650030,16,-1543.4531,8515.616,0.23601039,NULL,0,0,0,0,100,0),
(650030,17,-1555.7283,8504.72,-1.0610147,NULL,0,0,0,0,100,0),
(650030,18,-1584.7565,8482.897,-10.791547,NULL,0,0,0,0,100,0),
(650030,19,-1601.2609,8471.006,-12.064135,NULL,0,0,0,0,100,0),
(650030,20,-1626.2498,8457.902,-16.100355,NULL,0,0,0,0,100,0),
(650030,21,-1649.8718,8455.577,-18.955328,NULL,0,0,0,0,100,0),
(650030,22,-1658.42,8450.91,-20.33743,NULL,0,0,0,0,100,0); -- Turn around Home


-- Murkblood Brute
UPDATE `creature_template` SET `AIName` = "SmartAI",`flags_extra` = 134219776 WHERE `entry` = 18211; -- "" 2048

DELETE FROM `creature` WHERE `guid` IN (300789,300790);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300789,18211,0,0,530,0,0,1,1,0,-1516.01,8465.96,-4.00216,4.4317,300,0,0,4428,0,0,0,0,0,'',0,0,NULL),
(300790,18211,0,0,530,0,0,1,1,0,-1519.91,8462.62,-4.00216,6.2447,300,0,0,4428,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_text` WHERE `CreatureID` = 18211;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18211,0,0,"Treacherous whelp! I will beat you within an inch of your miserable life!",12,0,100,35,0,0,14974,0,"Murkblood Brute"),
(18211,0,1,"Tell me where the totem of Kar'dash is hidden and the beatings will stop.",12,0,100,1,0,0,14975,0,"Murkblood Brute"),
(18211,0,2,"Once you die from the torture, we will go out and kidnap another of your kind. One of you is bound to crack under the pain and give us the information we need.",12,0,100,1,0,0,14977,0,"Murkblood Brute"),
(18211,0,3,"Once the totem of Kar'dash is ours, we will raze your cities and rebuild them as our own.",12,0,100,1,0,0,14978,0,"Murkblood Brute");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300790,-65109,18211) AND `source_type` = 0;  -- 65109,65110
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300790,0,1000,0,1,0,100,0,5000,12000,30000,50000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Brute - OOC - Say Line 0'),
(-65109,0,1000,0,1,0,100,0,5000,12000,30000,50000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Brute - OOC - Say Line 0'),

(18211,0,0,0,0,0,100,0,5000,10000,15000,20000,0,0,11,32105,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murkblood Brute - In Combat - Cast \'Kick\''),
(18211,0,1,0,0,0,100,0,8000,14000,16000,25000,0,0,11,32104,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murkblood Brute - In Combat - Cast \'Backhand\'');


-- Murkblood Scavenger
UPDATE `creature_template` SET `flags_extra` = 134219776 WHERE `entry` = 18207; -- 0
-- Wrong Emote should be working not kneeling.
UPDATE `creature_template_addon` SET `bytes1` = 0,`emote` = 173 WHERE `entry` in (18207); -- 8 0

DELETE FROM `creature_addon` where `guid` in (65102,65103,65105,65106,65107,300805,300806,300807);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(65102,0,0,0,1,0,0,NULL),
(65103,0,0,0,1,0,0,NULL),
(65105,0,0,0,1,0,0,NULL),
(65106,0,0,0,1,0,0,NULL),
(65107,0,0,0,1,0,0,NULL),
(300805,0,0,0,1,0,0,NULL),
(300806,0,0,0,1,0,0,NULL),
(300807,0,0,0,1,0,0,NULL);

UPDATE `creature` SET `position_x` = -1569.8098,`position_y` = 8552.452,`position_z` = 2.0014272,`orientation` = 2.3303 WHERE `guid` = 28674; -- -1549.31 8575.98 7.25886 3.28789
UPDATE `creature` SET `position_x` = -1567.0702,`position_y` = 8558.533,`position_z` = 2.0015464,`orientation` = 2.4621 WHERE `guid` = 28673; -- -1550.63 8577.96 7.25886,4.30497
UPDATE `creature` SET `position_x` = -1568.121,`position_y` = 8563.561,`position_z` = 2.001318,`orientation` = 2.9821 WHERE `guid` = 28672; -- -1553.08,8579.5,7.25886,3.79446
UPDATE `creature` SET `position_x` = -1551.5723,`position_y` = 8583.338,`position_z` = 7.239944,`orientation` = 5.9875 WHERE `guid` = 65101; -- -1627.78,8518.52,-13.3941,5.26975
UPDATE `creature` SET `orientation` = 3.9861 WHERE `guid` = 65102;

UPDATE `creature` SET `position_x` = -1445.5742,`position_y` = 8429.012,`position_z` = -0.029058572,`orientation` = 3.791 WHERE `guid` = 28681; -- 
UPDATE `creature` SET `position_x` = -1444.1642,`position_y` = 8426.112,`position_z` = -0.029058572,`orientation` = 3.1156 WHERE `guid` = 28671; -- 
UPDATE `creature` SET `position_x` = -1444.15,`position_y` = 8422.737,`position_z` = -0.029058572,`orientation` = 2.7852 WHERE `guid` = 28682; -- 

UPDATE `creature` SET `orientation` = 4.3531 WHERE `guid` = 28670; -- 
UPDATE `creature` SET `position_x` = -1591.7217,`position_y` = 8454.113,`position_z` = -9.956274,`orientation` = 1.6791 WHERE `guid` = 28669; -- 
UPDATE `creature` SET `position_x` = -1587.8557,`position_y` = 8452.327,`position_z` = -9.95642,`orientation` = 1.6791 WHERE `guid` = 28668; -- 

UPDATE `creature` SET `position_x` = -1487.1906,`position_y` = 8572.783,`position_z` = 7.260189,`orientation` = 2.1567 WHERE `guid` = 28679; -- 
UPDATE `creature` SET `position_x` = -1491.456,`position_y` = 8574.167,`position_z` = 7.2601194,`orientation` = 0.4532 WHERE `guid` = 28680; -- 
UPDATE `creature` SET `position_x` = -1487.6763,`position_y` = 8577.24,`position_z` = 7.259895,`orientation` = 3.4544 WHERE `guid` = 28678; -- 

UPDATE `creature` SET `position_x` = -1413.6603,`position_y` = 8550.149,`position_z` = 14.039188,`orientation` = 2.0093 WHERE `guid` = 65104; -- 

DELETE FROM `creature` WHERE `guid` IN (300794,300795,300796,300797,300798,300799,300800,300801,300802,300803,300804,300805,300806,300807,300808,300809);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300794,18207,0,0,530,0,0,1,1,1,-1469.4609,8464.245,0.5748446,5.0036,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300795,18207,0,0,530,0,0,1,1,1,-1480.9382,8596.491,7.546799,1.554,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300796,18207,0,0,530,0,0,1,1,1,-1477.9434,8600.488,7.2682915,2.7524,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300797,18207,0,0,530,0,0,1,1,1,-1479.6708,8604.231,7.2604723,4.4802,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300798,18207,0,0,530,0,0,1,1,1,-1652.0477,8439.105,-19.950842,1.2804,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300799,18207,0,0,530,0,0,1,1,1,-1651.4022,8444.358,-19.046814,5.4062,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300800,18207,0,0,530,0,0,1,1,1,-1647.7196,8441.702,-18.877098,2.3669,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300801,18207,0,0,530,0,0,1,1,1,-1546.0452,8577.488,7.2599754,2.2883,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300802,18207,0,0,530,0,0,1,1,1,-1547.1824,8573.338,7.26024,1.3182,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300803,18207,0,0,530,0,0,1,1,1,-1423.6643,8554.137,17.095549,0.64273,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300804,18207,0,0,530,0,0,1,1,1,-1421.442,8547.294,14.544527,0.9023,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300805,18207,0,0,530,0,0,1,1,1,-1630.338,8523.765,-13.3939085,5.1495,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300806,18207,0,0,530,0,0,1,1,1,-1634.4164,8519.945,-13.393765,5.8909,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300807,18207,0,0,530,0,0,1,1,1,-1632.9539,8508.063,-13.394411,1.0274,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300808,18207,0,0,530,0,0,1,1,1,-1463.8517,8465.46,0.58524287,5.2384,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL),
(300809,18207,0,0,530,0,0,1,1,1,-1471.2393,8461.114,0.3823178,0.0504,300,0,0,1000,6229,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65102,-65103,-65105,-65106,-65107,-300805,-300806,-300807) AND `source_type` = 0;  -- 65109,65110
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1820700) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-65102,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-65103,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-65105,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-65106,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-65107,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-300805,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-300806,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),
(-300807,0,1000,0,1,0,100,0,5000,12000,36000,40000,0,0,80,1820700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - OOC - Run Script'),

(1820700,9,0,0,0,0,100,0,0,0,0,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - On Script - Play Emote'),
(1820700,9,1,0,0,0,100,0,4000,7000,0,0,0,0,5,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - On Script - Play Emote'),
(1820700,9,2,0,0,0,100,0,4000,7000,0,0,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - On Script - Play Emote'),
(1820700,9,3,0,0,0,100,0,4000,7000,0,0,0,0,5,45,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - On Script - Play Emote'),
(1820700,9,4,0,0,0,100,0,4000,7000,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - On Script - Play Emote'),
(1820700,9,5,0,0,0,100,0,4000,7000,0,0,0,0,5,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Scavenger - On Script - Play Emote');


-- Murkblood Putrifier
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (18202); -- 0
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` IN (64994); -- 5 1
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` IN (64995); -- 5 1
-- UPDATE `creature` SET `orientation` = 5.58319 WHERE `guid` IN (64995); -- 5.58319   2.7064
UPDATE `creature` SET `position_x` = -1675.4141,`position_y` = 8482.338,`position_z` = -19.859926,`orientation` = 3.5206,`wander_distance` = 0,`MovementType` = 0 WHERE `guid` = 28683; -- -1678.58 Y: 8496.61 Z: -19.6745
UPDATE `creature` SET `position_x` = -1650.8832,`position_y` = 8401.987,`position_z` = -22.376284,`orientation` = 5.7306,`wander_distance` = 0,`MovementType` = 0 WHERE `guid` = 28684; -- 

-- DELETE FROM `creature_addon` where `guid` in (28683,28684,64994,300786,300788);
/*
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(28683,0,0,0,1,468,0,NULL),
(28684,0,0,0,1,468,0,NULL),
(64994,0,0,0,1,468,0,NULL),
(300786,0,0,0,1,468,0,NULL),
(300788,0,0,0,1,468,0,NULL);
*/

DELETE FROM `creature` WHERE `guid` IN (300778,300779,300780,300781,300782,300783,300784,300785,300786,300787,300788);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300778,18202,0,0,530,0,0,1,1,1,-1496.307,8583.496,7.26068,2.4637,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300779,18202,0,0,530,0,0,1,1,1,-1542.9438,8589.299,7.259494,0.4837,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300780,18202,0,0,530,0,0,1,1,1,-1454.4222,8558.381,13.877458,2.6333,300,5,0,4731,2790,1,0,0,0,'',0,0,NULL),
(300781,18202,0,0,530,0,0,1,1,1,-1614.5272,8590.407,-8.629792,0.4837,300,5,0,4731,2790,1,0,0,0,'',0,0,NULL),
(300782,18202,0,0,530,0,0,1,1,1,-1630.78,8515.995,-13.394397,0.24,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300783,18202,0,0,530,0,0,1,1,1,-1514.3096,8627.468,7.260201,4.6161,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300784,18202,0,0,530,0,0,1,1,1,-1430.7474,8427.604,0.646305,3.1032,300,5,0,4731,2790,1,0,0,0,'',0,0,NULL),
(300785,18202,0,0,530,0,0,1,1,1,-1547.5663,8522.921,0.39616278,6.1646,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300786,18202,0,0,530,0,0,1,1,1,-1708.07,8419.087,-21.39472,3.6705,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300787,18202,0,0,530,0,0,1,1,1,-1516.8934,8588.215,7.26011,1.8932,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL),
(300788,18202,0,0,530,0,0,1,1,1,-1682.1234,8514.08,-19.811638,3.2511,300,0,0,4731,2790,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-28683,-28684,-64994,-300786,-300788) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300786,0,1000,0,1,0,100,0,45000,45000,300000,300000,0,0,86,32087,2,10,300193,18215,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cross Cast Spell 32087 \'Putrid Cloud\''),
(-300786,0,1001,0,1,0,100,0,45000,45000,10000,10000,0,0,11,32134,3,4294967295,0,0,0,10,300193,18215,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32134 \'Putrid Cloud\''), -- Just need the spell cast emote
(-300786,0,1002,0,4,0,100,0,0,0,0,0,0,0,92,0,32087,0,0,0,0,10,300193,18215,0,0,0,0,0,0,'Murkblood Putrifier - On Aggro - Interrupt Spell 32087 \'Putrid Cloud\''),
(-300786,0,1003,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - On Respawn - Set Active'),
(-300788,0,1000,0,1,0,100,0,45000,45000,300000,300000,0,0,86,32087,2,10,65456,18215,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32087 \'Putrid Cloud\''),
(-300788,0,1001,0,1,0,100,0,45000,45000,10000,10000,0,0,11,32134,3,4294967295,0,0,0,10,65456,18215,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32134 \'Putrid Cloud\''), -- Just need the spell cast emote
(-300788,0,1002,0,4,0,100,0,0,0,0,0,0,0,92,0,32087,0,0,0,0,10,65456,18215,0,0,0,0,0,0,'Murkblood Putrifier - On Aggro - Interrupt Spell 32087 \'Putrid Cloud\''),
(-300788,0,1003,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - On Respawn - Set Active'),
(-64994,0,1000,0,1,0,100,0,45000,45000,300000,300000,0,0,86,32087,2,10,65455,18215,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32087 \'Putrid Cloud\''),
(-64994,0,1001,0,1,0,100,0,45000,45000,10000,10000,0,0,11,32134,3,4294967295,0,0,0,10,65455,18215,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32134 \'Putrid Cloud\''), -- Just need the spell cast emote
(-64994,0,1002,0,4,0,100,0,0,0,0,0,0,0,92,0,32087,0,0,0,0,10,65455,18215,0,0,0,0,0,0,'Murkblood Putrifier - On Aggro - Interrupt Spell 32087 \'Putrid Cloud\''),
(-64994,0,1003,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - On Respawn - Set Active'),
(-28684,0,1000,0,1,0,100,0,45000,45000,300000,300000,0,0,86,32087,2,10,65457,18215,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32087 \'Putrid Cloud\''),
(-28684,0,1001,0,1,0,100,0,45000,45000,10000,10000,0,0,11,32134,3,4294967295,0,0,0,10,65457,18215,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32134 \'Putrid Cloud\''), -- Just need the spell cast emote
(-28684,0,1002,0,4,0,100,0,0,0,0,0,0,0,92,0,32087,0,0,0,0,10,65457,18215,0,0,0,0,0,0,'Murkblood Putrifier - On Aggro - Interrupt Spell 32087 \'Putrid Cloud\''),
(-28684,0,1003,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - On Respawn - Set Active'),
(-28683,0,1000,0,1,0,100,0,45000,45000,300000,300000,0,0,86,32087,2,10,65458,18215,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32087 \'Putrid Cloud\''),
(-28683,0,1001,0,1,0,100,0,45000,45000,10000,10000,0,0,11,32134,3,4294967295,0,0,0,10,65458,18215,0,0,0,0,0,0,'Murkblood Putrifier - OOC - Cast Spell 32134 \'Putrid Cloud\''), -- Just need the spell cast emote
(-28683,0,1002,0,4,0,100,0,0,0,0,0,0,0,92,0,32087,0,0,0,0,10,65458,18215,0,0,0,0,0,0,'Murkblood Putrifier - On Aggro - Interrupt Spell 32087 \'Putrid Cloud\''),
(-28683,0,1003,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Putrifier - On Respawn - Set Active');


-- Murkblood Target Dummy
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` IN (18215);

DELETE FROM `creature` WHERE `guid` IN (300193);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300193,18215,0,0,530,0,0,1,1,0,-1715.5973,8413.592,-22.976046,4.18879,300,0,0,5914,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18215) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18215,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Murkblood Target Dummy - On Respawn - Set Active');


-- Clefthoof
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (18205); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-64964,-64966,-64968,-65059,-65060,-68632,-65048,-65049,-65050,-65051,-65052,-65053,-65054,-65055,-65056,-65057,-65058,-67981,-67982,-67983,-67984,-67985,-67986,-68628,-68629,-68630,-68631) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-64964,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59983,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-64966,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59983,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-64968,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59983,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65059,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59983,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65060,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59983,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-68632,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59983,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),

(-65048,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59989,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65049,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59989,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65050,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59989,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65051,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59989,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65052,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59989,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65053,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59986,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65054,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59986,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65055,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59986,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65056,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59986,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65057,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59986,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-65058,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59986,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-67981,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,65529,18259,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Banthar'),
(-67982,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,65529,18259,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Banthar'),
(-67983,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,65529,18259,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Banthar'),
(-67984,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,65529,18259,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Banthar'),
(-67985,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,65529,18259,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Banthar'),
(-67986,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,65529,18259,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Banthar'),
(-68628,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59987,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-68629,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59987,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-68630,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59987,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull'),
(-68631,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,59987,17132,0,0,0,0,0,0,'Clefthoof - On Respawn - Jump to Clefthoof Bull');


-- Clefthoof Calf
UPDATE `creature_template` SET `AIName` = "SmartAI",`flags_extra` = 134217728 WHERE `entry` = 19183; -- "" 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19183) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19183,0,0,0,2,0,100,1,20,80,0,0,0,0,11,32023,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Clefthoof Calf - Between 20-80% Health - Cast \'32023\' (No Repeat)');


-- Vir'anni Raider
DELETE FROM `creature_addon` where `guid` in (60257,60259,60260,60262,60263,60264,60265,60266,60268,60269,60272,60275,60276);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(60257,0,0,0,1,28,0,NULL),
(60259,0,0,0,1,28,0,NULL),
(60260,0,0,0,1,28,0,NULL),
(60262,0,0,0,1,28,0,NULL),
(60263,0,0,0,1,28,0,NULL),
(60264,0,0,0,1,28,0,NULL),
(60265,0,0,0,1,28,0,NULL),
(60266,0,0,0,1,28,0,NULL),
(60268,0,0,0,1,28,0,NULL),
(60269,0,0,0,1,28,0,NULL),
(60272,0,0,0,1,28,0,NULL),
(60275,0,0,0,1,28,0,NULL),
(60276,0,0,0,1,28,0,NULL);


-- Mother Kashur
DELETE FROM `creature_template_addon` where `entry` in (18687);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(18687,0,0,0,0,0,0,32648);


-- Agitated Orc Spirit
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 18043;

UPDATE `creature_template_addon` SET `auras` = 32648 WHERE `entry` = 18043;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18043) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18043,0,0,0,10,0,100,0,0,7,2000,2000,1,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Agitated Orc Spirit - OOC LOS - Attack Invoker'),
(18043,0,1,0,11,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Agitated Orc Spirit - On Respawn - Set React State \'Defensive\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 18043 AND `SourceId` = 0 AND `SourceGroup` = 1 AND `ConditionTypeOrReference` = 1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,1,18043,0,0,1,0,32649,0,0,0,0,0,'','SmartAI event 0 for creature 18043 requires invoker to have aura 32649');


-- Ancient Orc Ancestor
DELETE FROM `spell_area` where `spell` in (32649) AND `area` IN (3518); -- Fixes why you still can't see them after completing the 10045 material component quest
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) VALUES 
(32649,3518,10045,0,0,0,2,1,64,11),
(32649,3518,10252,0,0,0,2,1,64,11);

UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (18688); -- 2

DELETE FROM `creature` WHERE `guid` IN (14337,14338,14339,14340,14341,14342,14343,14977,14978,14979,14980,14981,14982,14983,14984,14985,20556,21776,23111,24670,24761,24794,25100,26559,26564,31807,31833,32072,40475,40476,40703,40716,40725,40727,42893,45204,46570,46819,66946,66947);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(14337,18688,0,0,530,0,0,1,1,0,-1750.87,8877.25,31.7701,6.13478,10,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- -1750.87 8877.25 31.7701
(14338,18688,0,0,530,0,0,1,1,0,-1539.61,8686.33,24.7431,6.13478,60,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- -1539.61 8686.33 24.7431
(14339,18688,0,0,530,0,0,1,1,0,-2407.95,8655.04,-19.7505,4.45405,60,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(14340,18688,0,0,530,0,0,1,1,0,-768.78503,7924.0225,60.142868,4.7021,10,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(14341,18688,0,0,530,0,0,1,1,0,-1637.01,8569.54,-12.3352,5.65003,60,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(14342,18688,0,0,530,0,0,1,1,0,-2530.94,8629.31,-25.5884,4.80198,10,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(14343,18688,0,0,530,0,0,1,1,0,-1452.95,8533.52,12.8692,3.33358,60,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(14977,18688,0,0,530,0,0,1,1,0,-2225.73,8586.74,-10.361,0.261799,10,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(14978,18688,0,0,530,0,0,1,1,0,-2218.21,8513.48,-17.1368,3.84753,60,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(14979,18688,0,0,530,0,0,1,1,0,-3305.9692,5973.3745,-3.0180922,0.2905,10,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- moved to terokar forest entrance
(14980,18688,0,0,530,0,0,1,1,0,-1653.31,8494.49,-12.8156,6.13478,10,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(14981,18688,0,0,530,0,0,1,1,0,-1579.32,8426.67,-9.33804,6.13478,30,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(14982,18688,0,0,530,0,0,1,1,0,-3317.7056,5991.241,-2.4750717,5.9605,20,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- moved to terokar forest entrance
(14983,18688,0,0,530,0,0,1,1,0,-1316.8264,7388.7075,33.83932,4.9516,10,0,0,6326,0,2,0,0,0,'',0,0,NULL),  -- move to Galadar village
(14984,18688,0,0,530,0,0,1,1,0,-1302.7911,7093.6226,38.09301,3.0284,5,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- beyond LSV -> move to Galadar village
(14985,18688,0,0,530,0,0,1,1,0,-886.413,7824.75,40.0754,6.13478,10,0,0,6542,0,2,0,0,0,'',0,0,NULL), -- LSV
(20556,18688,0,0,530,0,0,1,1,0,-878.863,7881.25,38.6467,6.13478,10,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- LSV
(21776,18688,0,0,530,0,0,1,1,0,-1387.8983,7138.338,33.859833,0.8204,5,0,0,6542,0,2,0,0,0,'',0,0,NULL), -- outside HALAA -> Galadar village maybe -1387.8983 7138.338 33.859833
(23111,18688,0,0,530,0,0,1,1,0,-1299.819,7093.3364,38.348408,3.02552,30,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(24670,18688,0,0,530,0,0,1,1,0,-1329.4271,7381.5063,34.272934,6.2311,10,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(24761,18688,0,0,530,0,0,1,1,0,-1305.6797,7089.7305,38.144295,2.2933,20,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(24794,18688,0,0,530,0,0,1,1,0,-2256,8478.68,-24.6155,3.72008,60,0,0,6542,0,2,0,0,0,'',0,0,NULL),
(25100,18688,0,0,530,0,0,1,1,0,-803.7829,7613.178,48.288467,3.2067,10,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(26559,18688,0,0,530,0,0,1,1,0,-2350.53,8641.59,-15.5674,4.33614,30,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(26564,18688,0,0,530,0,0,1,1,0,-1328.0555,7419.6416,29.410845,5.0579,20,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(31807,18688,0,0,530,0,0,1,1,0,-1319.6959,7380.675,34.068123,5.9164,10,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(31833,18688,0,0,530,0,0,1,1,0,-1393.1624,7134.1475,33.780266,0.8204,10,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(32072,18688,0,0,530,0,0,1,1,0,-1314.5609,7385.187,34.107224,4.9516,15,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(40475,18688,0,0,530,0,0,1,1,0,-2184.8,8029.08,-17.6373,2.41427,20,0,0,6542,0,2,0,0,0,'',0,0,NULL), -- Terokar forest
(40476,18688,0,0,530,0,0,1,1,0,-3320.1519,5988.6694,-2.7923079,6.2297,20,0,0,6326,0,2,0,0,0,'',0,0,NULL),
(40703,18688,0,0,530,0,0,1,1,0,-2053.26,8155.3,-5.69245,3.01005,60,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- .go xyz -2053.26 8155.3 -5.69245 -- IN GROUP
(40716,18688,0,0,530,0,0,1,1,0,-2061.52,8151.76,-7.43799,3.01005,60,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- .go xyz -2061.52 8151.76 -7.43799 -- IN GROUP
(40725,18688,0,0,530,0,0,1,1,0,-2068.18,8148.96,-8.29655,3.01005,60,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- .go xyz -2068.18 8148.96 -8.29655 -- IN GROUP
(40727,18688,0,0,530,0,0,1,1,0,-2072.97,8147.13,-8.763,3.01005,60,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- .go xyz -2072.97 8147.13 -8.763 -- IN GROUP
(42893,18688,0,0,530,0,0,1,1,0,-2077.16,8145.7,-9.10946,3.01005,60,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- .go xyz -2077.16 8145.7 -9.10946 -- IN GROUP
(45204,18688,0,0,530,0,0,1,1,0,-2082.36,8144.42,-9.39566,3.01005,60,0,0,6326,0,0,0,0,0,'',0,0,NULL), -- .go xyz -2082.36 8144.42 -9.39566 -- IN GROUP
(46570,18688,0,0,530,0,0,1,1,0,-2184.8,8029.08,-17.6373,2.41427,35,0,0,6542,0,2,0,0,0,'',0,0,NULL), -- AZ -- moved to terokar forest entrance
(46819,18688,0,0,530,0,0,1,1,0,-1385.1755,7141.2524,34.4091,0.8204,15,0,0,6326,0,2,0,0,0,'',0,0,NULL), -- AZ
(66946,18688,0,0,530,0,0,1,1,0,-1812.61,8813.18,30.3396,6.13478,10,0,0,6542,0,2,0,0,0,'',0,0,NULL), -- -1812.61 8813.18 30.3396 -- AZ
(66947,18688,0,0,530,0,0,1,1,0,-2114.42,8743.48,11.699,5.65003,60,0,0,6542,0,2,0,0,0,'',0,0,NULL); -- -2114.42 8743.48 11.699 -- AZ outside ancestrial grounds

-- ADD THIS AURA WHEN FINISHED 32648 IT MAKES THEM INVISIBLE
DELETE FROM `creature_addon` where `guid` in (14337,14338,14339,14340,14341,14342,14343,14977,14978,14979,14980,14981,14982,14983,14984,14985,20556,21776,23111,24670,24761,24794,25100,26559,26564,31807,31833,32072,40475,40476,46819,46570,66946,66947);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(14337,143370,0,0,0,0,0,NULL),
(14338,143380,0,0,0,0,0,NULL),
(14339,143390,0,0,0,0,0,NULL),
(14340,143400,0,0,0,0,0,NULL),
(14341,143410,0,0,0,0,0,NULL),
(14342,143420,0,0,0,0,0,NULL),
(14343,143430,0,0,0,0,0,NULL),
(14977,149770,0,0,0,0,0,NULL),
(14978,149780,0,0,0,0,0,NULL),
(14979,149790,0,0,0,0,0,NULL),
(14980,149800,0,0,0,0,0,NULL),
(14981,149810,0,0,0,0,0,NULL),
(14982,149820,0,0,0,0,0,NULL),
(14983,149830,0,0,0,0,0,NULL),
(14984,149840,0,0,0,0,0,NULL),
(14985,149850,0,0,0,0,0,NULL),
(20556,205560,0,0,0,0,0,NULL),
(21776,217760,0,0,0,0,0,NULL),
(23111,231110,0,0,0,0,0,NULL),
(24670,246700,0,0,0,0,0,NULL),
(24761,247610,0,0,0,0,0,NULL),
(24794,247940,0,0,0,0,0,NULL),
(25100,251000,0,0,0,0,0,NULL),
(26559,265590,0,0,0,0,0,NULL),
(26564,265640,0,0,0,0,0,NULL),
(31807,318070,0,0,0,0,0,NULL),
(31833,318330,0,0,0,0,0,NULL),
(32072,320720,0,0,0,0,0,NULL),
(40475,404750,0,0,0,0,0,NULL),
(40476,404760,0,0,0,0,0,NULL),
(46570,465700,0,0,0,0,0,NULL),
(46819,468190,0,0,0,0,0,NULL),
(66946,669460,0,0,0,0,0,NULL),
(66947,669470,0,0,0,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300123); -- Leader Dummy for Group
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300123,300001,0,0,530,0,0,1,1,0,-2082.11,8144.33,-9.38167,3.01005,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_formations` where `leaderGUID` IN (300123);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(300123,300123,0,0,512,0,0),
(300123,45204,0,0,512,0,0),
(300123,42893,3,160,512,0,0),
(300123,40727,3,200,512,0,0),
(300123,40725,5,160,512,0,0),
(300123,40716,7,180,512,0,0),
(300123,40703,6,200,512,0,0);

DELETE FROM `spawn_group` where `groupId` IN (42279);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42279,0,40703),
(42279,0,40716),
(42279,0,40725),
(42279,0,40727),
(42279,0,42893),
(42279,0,45204);

DELETE FROM `spawn_group_template` where `groupId` IN (42279);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42279,'Ancient Orc Ancestor Group 1',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300123) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30000106) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300123,0,0,1,11,0,100,512,0,0,0,0,0,0,80,30000106,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Spawn - Run Script'),
(-300123,0,1,0,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Respawn (Linked) - Set Active'),
(-300123,0,2,3,108,0,100,512,24,452040,0,0,0,0,132,42279,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 24 Reached - Despawn SpawnGroup'),
(-300123,0,3,0,61,0,100,512,0,0,0,0,0,0,41,1000,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Waypoint 24 Reached (Linked) - Despawn'),

(30000106,9,0,0,0,0,100,512,1000,180000,0,0,0,0,131,42279,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Spawn SpawnGroup'),
(30000106,9,1,0,0,0,100,512,2000,2000,0,0,0,0,232,452040,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leader Dummy - On Script - Start Waypoint');

DELETE FROM `waypoint_data` where `id` in (143370,143380,143390,143400,143410,143420,143430,149770,149780,149790,149800,149810,149820,149830,149840,149850,205560,217760,231110,246700,247610,247940,251000,265590,265640,318070,318330,320720,404750,404760,452040,465700,468190,669460,669470);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(143370,1,-1750.87,8877.25,31.7701,6.13478,1000,0,0,100,0),
(143370,2,-1758.1511,8872.827,29.922724,NULL,0,0,0,100,0),
(143370,3,-1793.328,8852.489,30.533014,NULL,0,0,0,100,0),
(143370,4,-1805.1241,8839.759,28.780787,NULL,0,0,0,100,0),
(143370,5,-1833.7848,8802.8955,28.653547,NULL,0,0,0,100,0),
(143370,6,-1850.4429,8782.435,30.270897,NULL,0,0,0,100,0),
(143370,7,-1876.2385,8751.501,25.848774,NULL,0,0,0,100,0),
(143370,8,-1888.7952,8736.916,25.15746,NULL,0,0,0,100,0),
(143370,9,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(143370,10,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(143370,11,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(143370,12,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(143370,13,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(143370,14,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(143370,15,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0),
(143370,16,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0),
(143370,17,-2220.2632,8594.798,-9.132824,NULL,0,0,0,100,0),
(143370,18,-2246.6436,8554.992,-14.9107895,NULL,0,0,0,100,0),
(143370,19,-2263.0796,8530.248,-22.470377,NULL,0,0,0,100,0),
(143370,20,-2287.9116,8502.958,-27.34369,NULL,0,0,0,100,0),
(143370,21,-2315.4568,8472.449,-30.118395,NULL,0,0,0,100,0),
(143370,22,-2336.4243,8449.224,-33.599926,NULL,0,0,0,100,0),
(143370,23,-2358.5469,8424.719,-36.637638,NULL,0,0,0,100,0),
(143370,24,-2369.5522,8412.528,-36.345074,NULL,0,0,0,100,0),
(143370,25,-2380.7686,8400.731,-39.421844,NULL,0,0,0,100,0), -- Road before 
(143370,26,-2421.0234,8364.837,-38.680714,3.8563,4000,0,0,100,0),

(143380,1,-1539.61,8686.33,24.7431,6.13478,1000,0,0,100,0),
(143380,2,-1533.619,8714.062,29.01552,NULL,0,0,0,100,0),
(143380,3,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post
(143380,4,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(143380,5,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(143380,6,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(143380,7,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(143380,8,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(143380,9,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(143380,10,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(143380,11,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(143380,12,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(143380,13,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(143380,14,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(143380,15,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(143380,16,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(143380,17,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(143380,18,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(143380,19,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0), 
(143380,20,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(143380,21,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(143380,22,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(143380,23,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(143380,24,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(143380,25,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0),
(143380,26,-2385.7493,8500.791,-30.775805,NULL,0,0,0,100,0),
(143380,27,-2409.1252,8469.437,-35.766106,NULL,0,0,0,100,0),
(143380,28,-2418.5503,8457.686,-37.630142,NULL,0,0,0,100,0), -- Road before 
(143380,29,-2431.4207,8442.27,-38.205414,NULL,0,0,0,100,0),
(143380,30,-2454.1572,8416.556,-36.789925,3.9774,4000,0,0,100,0),

(143390,1,-2407.95,8655.04,-19.7505,4.45405,1000,0,0,100,0),
(143390,2,-2413.04,8633.92,-25.1324,NULL,0,0,0,100,0),
(143390,3,-2421.09,8603.46,-26.7298,NULL,0,0,0,100,0),
(143390,4,-2430.6,8575.63,-29.4027,NULL,0,0,0,100,0),
(143390,5,-2437.78,8552.97,-31.1736,NULL,0,0,0,100,0),
(143390,6,-2444.38,8533.11,-30.9924,NULL,0,0,0,100,0),
(143390,7,-2448.27,8523.36,-33.7466,NULL,0,0,0,100,0),
(143390,8,-2453.47,8510.36,-34.1572,NULL,0,0,0,100,0),
(143390,9,-2458.66,8497.35,-34.0185,NULL,0,0,0,100,0),
(143390,10,-2462.55,8487.6,-36.7164,NULL,0,0,0,100,0),
(143390,11,-2469.78,8465.87,-35.8689,NULL,0,0,0,100,0),
(143390,12,-2474.9,8449.76,-36.479,4.32446,4000,0,0,100,0),

(143400,1,-768.78503,7924.0225,60.142868,4.7021,1000,0,0,100,0),
(143400,2,-757.56934,7911.0464,54.56936,NULL,0,0,0,100,0),
(143400,3,-761.8774,7895.0977,51.685863,NULL,0,0,0,100,0),
(143400,4,-763.3745,7882.277,51.475006,NULL,0,0,0,100,0),
(143400,5,-763.9208,7857.454,47.373165,NULL,0,0,0,100,0),
(143400,6,-762.3652,7827.7485,42.97474,NULL,0,0,0,100,0),
(143400,7,-781.6688,7808.385,38.546635,NULL,0,0,0,100,0),
(143400,8,-800.9412,7794.3364,35.53282,NULL,0,0,0,100,0),
(143400,9,-813.86707,7787.204,35.091232,NULL,0,0,0,100,0),
(143400,10,-822.4692,7787.9785,35.958668,NULL,0,0,0,100,0),
(143400,11,-827.408,7794.83,37.881985,NULL,0,0,0,100,0),
(143400,12,-846.9249,7836.958,41.246323,NULL,0,0,0,100,0),
(143400,13,-854.5466,7863.333,42.442883,NULL,0,0,0,100,0),
(143400,14,-859.19635,7893.563,40.89153,NULL,0,0,0,100,0), -- Road
(143400,15,-865.0395,7934.7153,38.349903,NULL,0,0,0,100,0),
(143400,16,-909.93396,8000.6274,32.886444,NULL,0,0,0,100,0),
(143400,17,-922.18243,8042.1636,26.120174,NULL,0,0,0,100,0),
(143400,18,-924.8222,8088.1924,20.173876,NULL,0,0,0,100,0),
(143400,19,-940.3339,8117.523,16.05593,NULL,0,0,0,100,0), -- Bridge
(143400,20,-951.572,8138.533,8.174177,NULL,0,0,0,100,0),
(143400,21,-966.3371,8168.34,14.774238,NULL,0,0,0,100,0),
(143400,22,-972.0909,8196.243,16.349655,NULL,0,0,0,100,0),
(143400,23,-968.9811,8238.509,18.664034,NULL,0,0,0,100,0),
(143400,24,-952.10364,8284.804,20.212276,NULL,0,0,0,100,0),
(143400,25,-961.5999,8334.942,21.981964,NULL,0,0,0,100,0),
(143400,26,-977.9557,8353.212,20.629131,NULL,0,0,0,100,0),
(143400,27,-1039.5327,8384.637,20.409317,NULL,0,0,0,100,0),
(143400,28,-1093.0171,8405.627,20.405588,NULL,0,0,0,100,0),
(143400,29,-1207.697,8430.499,20.234919,NULL,0,0,0,100,0),
(143400,30,-1271.7942,8456.975,16.696638,NULL,0,0,0,100,0),
(143400,31,-1331.452,8512.849,12.671925,NULL,0,0,0,100,0),
(143400,32,-1359.9204,8518.767,11.225426,NULL,0,0,0,100,0),
(143400,33,-1383.804,8545.769,11.249986,NULL,0,0,0,100,0),
(143400,34,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road
(143400,35,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(143400,36,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(143400,37,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post
(143400,38,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(143400,39,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(143400,40,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(143400,41,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(143400,42,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(143400,43,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(143400,44,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(143400,45,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(143400,46,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(143400,47,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(143400,48,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(143400,49,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(143400,50,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(143400,51,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(143400,52,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(143400,53,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0),
(143400,54,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0),
(143400,55,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0),
(143400,56,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0),
(143400,57,-2275.1345,8584.624,-16.22203,NULL,0,0,0,100,0),
(143400,58,-2300.29,8571.08,-22.0957,NULL,0,0,0,100,0),
(143400,59,-2307.18,8565.63,-23.3747,NULL,0,0,0,100,0),
(143400,60,-2323.42,8554.27,-25.1835,NULL,0,0,0,100,0),
(143400,61,-2341.53,8541.17,-29.3958,NULL,0,0,0,100,0),
(143400,62,-2358.69,8529.71,-29.4675,NULL,0,0,0,100,0),
(143400,63,-2365.34,8522.38,-31.3395,NULL,0,0,0,100,0),
(143400,64,-2375.63,8506.19,-30.7447,NULL,0,0,0,100,0),
(143400,65,-2381.94,8488.06,-31.5676,NULL,0,0,0,100,0),
(143400,66,-2388.99,8470.31,-33.0737,NULL,0,0,0,100,0),
(143400,67,-2401.01,8449.19,-35.7696,NULL,0,0,0,100,0),
(143400,68,-2410.79,8433.93,-39.0449,NULL,0,0,0,100,0),
(143400,69,-2423.53,8416.24,-37.8244,NULL,0,0,0,100,0),
(143400,70,-2438.91,8397.78,-39.061,4.01265,3000,0,0,100,0),

(143410,1,-1637.01,8569.54,-12.3352,5.65003,1000,0,0,100,0),
(143410,2,-1628.3854,8548.246,-13.212312,NULL,0,0,0,100,0),
(143410,3,-1603.18,8494.681,-13.095064,NULL,0,0,0,100,0),
(143410,4,-1592.1998,8486.548,-11.6101675,NULL,0,0,0,100,0),
(143410,5,-1580.7637,8486.443,-9.61746,NULL,0,0,0,100,0),
(143410,6,-1554.4006,8505.179,-0.82624257,NULL,0,0,0,100,0),
(143410,7,-1547.1882,8514.943,0.27233768,NULL,0,0,0,100,0),
(143410,8,-1513.4852,8516.665,0.776039,NULL,0,0,0,100,0),
(143410,9,-1472.965,8496.418,2.4553251,NULL,0,0,0,100,0),
(143410,10,-1449.8467,8496.509,5.4896,NULL,0,0,0,100,0),
(143410,11,-1400.41,8527.34,9.969933,NULL,0,0,0,100,0),
(143410,12,-1386.5614,8543.913,11.259388,NULL,0,0,0,100,0),
(143410,13,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road
(143410,14,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(143410,15,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(143410,16,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(143410,17,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(143410,18,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(143410,19,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(143410,20,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(143410,21,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(143410,22,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(143410,23,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(143410,24,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(143410,25,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(143410,26,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(143410,27,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(143410,28,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(143410,29,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(143410,30,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(143410,31,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(143410,32,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0), 
(143410,33,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(143410,34,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(143410,35,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(143410,36,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(143410,37,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(143410,38,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0),
(143410,39,-2385.7493,8500.791,-30.775805,NULL,0,0,0,100,0),
(143410,40,-2409.1252,8469.437,-35.766106,NULL,0,0,0,100,0),
(143410,41,-2418.5503,8457.686,-37.630142,NULL,0,0,0,100,0), -- Road before -2418.5503 8457.686 -37.630142
(143410,42,-2434.2095,8447.239,-38.114456,NULL,0,0,0,100,0),
(143410,43,-2458.7422,8421.584,-36.766495,3.9493,4000,0,0,100,0),

(143420,1,-2530.94,8629.31,-25.5884,4.80198,1000,0,0,100,0),
(143420,2,-2530.28,8621.36,-26.2077,NULL,0,0,0,100,0),
(143420,3,-2529.15,8604.47,-28.1857,NULL,0,0,0,100,0),
(143420,4,-2528.22,8590.5,-29.769,NULL,0,0,0,100,0),
(143420,5,-2527.07,8573.04,-29.9964,NULL,0,0,0,100,0),
(143420,6,-2525.38,8555.63,-31.5614,NULL,0,0,0,100,0),
(143420,7,-2523.27,8540.79,-32.4796,NULL,0,0,0,100,0),
(143420,8,-2521.41,8529.25,-33.6232,NULL,0,0,0,100,0),
(143420,9,-2518.41,8514.83,-36.519,NULL,0,0,0,100,0),
(143420,10,-2514.23,8497.08,-37.413,NULL,0,0,0,100,0),
(143420,11,-2511.41,8485.07,-35.6668,NULL,0,0,0,100,0),
(143420,12,-2507.94,8465.34,-37.5257,4.82946,3000,0,0,100,0),

(143430,1,-1452.95,8533.52,12.8692,3.33358,1000,0,0,100,0),
(143430,2,-1457.7068,8525.476,11.894247,NULL,0,0,0,100,0),
(143430,3,-1457.6083,8520.809,11.565984,NULL,0,0,0,100,0),
(143430,4,-1447.0687,8516.975,9.867438,NULL,0,0,0,100,0),
(143430,5,-1438.5538,8516.539,8.524913,NULL,0,0,0,100,0),
(143430,6,-1426.8041,8510.479,7.6825304,NULL,0,0,0,100,0), -- -1426.8041 8510.479 7.6825304
(143430,7,-1389.5405,8536.814,10.881164,NULL,0,0,0,100,0),
(143430,8,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road -- -1390.558 8564.428 12.278408
(143430,9,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(143430,10,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(143430,11,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(143430,12,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(143430,13,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(143430,14,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(143430,15,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(143430,16,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(143430,17,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(143430,18,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(143430,19,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(143430,20,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(143430,21,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(143430,22,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(143430,23,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(143430,24,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(143430,25,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(143430,26,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(143430,27,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0),
(143430,28,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(143430,29,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(143430,30,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(143430,31,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(143430,32,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(143430,33,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0),
(143430,34,-2385.7493,8500.791,-30.775805,NULL,0,0,0,100,0), -- -2385.7493 8500.791 -30.775805
(143430,35,-2398.265,8465.596,-34.490093,NULL,0,0,0,100,0), -- -2409.1252 8469.437 -35.766106
(143430,36,-2410.7769,8448.485,-38.182358,NULL,0,0,0,100,0), -- Road before -2418.5503 8457.686 -37.630142
(143430,37,-2424.2742,8429.566,-38.43363,NULL,0,0,0,100,0),
(143430,38,-2446.5935,8402.263,-39.208797,4.0259,4000,0,0,100,0),

(149770,1,-2225.73,8586.74,-10.361,0.261799,1000,0,0,100,0),
(149770,2,-2230.86,8579.38,-11.4502,NULL,0,0,0,100,0),
(149770,3,-2239.71,8567.45,-13.0879,NULL,0,0,0,100,0),
(149770,4,-2248.5,8553.74,-15.3954,NULL,0,0,0,100,0),
(149770,5,-2261.12,8533.93,-21.6073,NULL,0,0,0,100,0),
(149770,6,-2270.2,8517.26,-24.1489,NULL,0,0,0,100,0),
(149770,7,-2279.27,8499.49,-27.908,NULL,0,0,0,100,0),
(149770,8,-2293,8485.29,-27.7969,NULL,0,0,0,100,0),
(149770,9,-2313.97,8468.41,-30.5916,NULL,0,0,0,100,0),
(149770,10,-2327.14,8456.77,-32.0345,NULL,0,0,0,100,0),
(149770,11,-2342.04,8442.35,-34.5414,NULL,0,0,0,100,0),
(149770,12,-2353.98,8430.83,-35.9558,NULL,0,0,0,100,0),
(149770,13,-2365.67,8421.51,-36.6551,NULL,0,0,0,100,0),
(149770,14,-2376.82,8411.01,-37.0926,NULL,0,0,0,100,0),
(149770,15,-2387.63,8399.56,-39.9234,NULL,0,0,0,100,0),
(149770,16,-2400.03,8389.21,-39.5322,NULL,0,0,0,100,0),
(149770,17,-2410.54,8381.85,-39.0444,NULL,0,0,0,100,0),
(149770,18,-2427.22,8372.09,-38.2585,3.67726,4000,0,0,100,0),

(149780,1,-2218.21,8513.48,-17.1368,3.84753,1000,0,0,100,0),
(149780,2,-2225.9,8506.7,-18.3157,NULL,0,0,0,100,0),
(149780,3,-2241.69,8495.19,-21.2608,NULL,0,0,0,100,0),
(149780,4,-2254.02,8485.29,-23.6365,NULL,0,0,0,100,0),
(149780,5,-2266.7,8474.26,-26.624,NULL,0,0,0,100,0),
(149780,6,-2282.53,8460.96,-29.9073,NULL,0,0,0,100,0),
(149780,7,-2293.64,8450.78,-32.2739,NULL,0,0,0,100,0),
(149780,8,-2312.77,8434.41,-34.4343,NULL,0,0,0,100,0),
(149780,9,-2329,8420.96,-34.6316,NULL,0,0,0,100,0),
(149780,10,-2342.3,8410.75,-36.3513,NULL,0,0,0,100,0),
(149780,11,-2352.85,8402.78,-35.9703,NULL,0,0,0,100,0),
(149780,12,-2368.62,8390.19,-37.4839,NULL,0,0,0,100,0),
(149780,13,-2377.66,8381.81,-39.9896,NULL,0,0,0,100,0),
(149780,14,-2388.56,8372.21,-40.392,NULL,0,0,0,100,0),
(149780,15,-2398.68,8364.43,-39.9869,NULL,0,0,0,100,0),
(149780,16,-2413.6,8353.59,-39.7226,NULL,0,0,0,100,0),
(149780,17,-2422.74,8346.85,-40.09,3.78156,4000,0,0,100,0),

(149790,1,-3305.9692,5973.3745,-3.0180922,0.2905,2000,0,0,100,0),
(149790,2,-3286.4268,5981.426,-3.3720152,NULL,0,0,0,100,0),
(149790,3,-3255.7966,5979.2314,-2.2579057,NULL,0,0,0,100,0),
(149790,4,-3212.2197,5960.5767,0.41704637,NULL,0,0,0,100,0),
(149790,5,-3187.5945,5930.3296,1.292508,NULL,0,0,0,100,0),
(149790,6,-3172.3782,5913.739,3.0952077,NULL,0,0,0,100,0),
(149790,7,-3163.9805,5913.536,3.0060842 ,NULL,0,0,0,100,0), -- Road
(149790,8,-3135.8933,5925.041,1.9946003,NULL,0,0,0,100,0),
(149790,9,-3123.34,5927.1304,1.8426248,NULL,0,0,0,100,0),
(149790,10,-3095.101,5944.2827,0.6288182,NULL,0,0,0,100,0),
(149790,11,-3067.377,5958.546,2.104617,NULL,0,0,0,100,0),
(149790,12,-3030.5002,5984.463,4.553689,NULL,0,0,0,100,0),
(149790,13,-3012.8572,5989.4385,5.3271637,NULL,0,0,0,100,0),
(149790,14,-2994.9934,5989.368,6.0207534,NULL,0,0,0,100,0),
(149790,15,-2983.0574,5984.386,6.5362315,NULL,0,0,0,100,0),
(149790,16,-2959.5098,5972.6406,8.750746,NULL,0,0,0,100,0),
(149790,17,-2940.079,5961.938,10.884453,NULL,0,0,0,100,0),
(149790,18,-2925.2598,5957.696,12.341535,NULL,0,0,0,100,0),
(149790,19,-2908.616,5960.1313,14.093441,NULL,0,0,0,100,0),
(149790,20,-2866.6602,5977.51,18.40338,NULL,0,0,0,100,0),
(149790,21,-2850.534,5985.211,22.296541,NULL,0,0,0,100,0),
(149790,22,-2782.5789,6019.5005,30.723497,NULL,0,0,0,100,0),
(149790,23,-2759.2124,6028.017,33.79439,NULL,0,0,0,100,0),
(149790,24,-2718.182,6056.1377,37.64546,NULL,0,0,0,100,0),
(149790,25,-2686.4004,6093.9463,39.35082,NULL,0,0,0,100,0),
(149790,26,-2657.7722,6130.2607,38.73495,NULL,0,0,0,100,0),
(149790,27,-2648.094,6158.1704,37.941193,NULL,0,0,0,100,0),
(149790,28,-2649.8108,6212.7925,36.64241,NULL,0,0,0,100,0),
(149790,29,-2651.9631,6243.191,37.322777,NULL,0,0,0,100,0),
(149790,30,-2639.0269,6296.1587,39.413292,NULL,0,0,0,100,0),
(149790,31,-2611.0073,6325.7427,39.092407,NULL,0,0,0,100,0),
(149790,32,-2585.8901,6344.6016,37.631485,NULL,0,0,0,100,0),
(149790,33,-2528.4255,6358.8853,31.377884,NULL,0,0,0,100,0),
(149790,34,-2500.7134,6375.5693,30.379526,NULL,0,0,0,100,0),
(149790,35,-2484.953,6396.0073,28.85099,NULL,0,0,0,100,0),
(149790,36,-2474.8577,6424.26,25.601894,NULL,0,0,0,100,0),
(149790,37,-2470.0671,6495.9126,17.926437,NULL,0,0,0,100,0),
(149790,38,-2451.303,6540.715,11.482842,NULL,0,0,0,100,0),
(149790,39,-2430.198,6588.449,5.432723,NULL,0,0,0,100,0),
(149790,40,-2428.321,6620.279,3.0465567,NULL,0,0,0,100,0),
(149790,41,-2431.4434,6638.593,2.1066663,NULL,0,0,0,100,0),
(149790,42,-2427.5264,6654.1006,1.400445,NULL,0,0,0,100,0),
(149790,43,-2428.0627,6681.4165,0.39455113,NULL,0,0,0,100,0),
(149790,44,-2440.0598,6736.2803,0.053066038,NULL,0,0,0,100,0),
(149790,45,-2438.7952,6757.726,-0.9205988,NULL,0,0,0,100,0),
(149790,46,-2408.683,6819.683,-2.7610621,NULL,0,0,0,100,0),
(149790,47,-2400.1355,6861.7905,-2.9181197,NULL,0,0,0,100,0),
(149790,48,-2400.867,6899.0312,-1.7470491,NULL,0,0,0,100,0),
(149790,49,-2413.15,6946.1567,-2.8403444,NULL,0,0,0,100,0), -- last road
(149790,50,-2391.5027,6978.586,-3.64627,NULL,0,0,0,100,0),
(149790,51,-2385.0317,6993.3325,-5.9649363,NULL,0,0,0,100,0),
(149790,52,-2372.676,7022.217,-9.95741,NULL,0,0,0,100,0),
(149790,53,-2351.972,7068.8027,-13.496573,NULL,0,0,0,100,0),
(149790,54,-2348.5916,7066.2656,-14.25403,NULL,0,0,0,100,0),
(149790,55,-2306.586,7102.6353,-23.680712,NULL,0,0,0,100,0),
(149790,56,-2288.8767,7130.4727,-43.704544,NULL,0,0,0,100,0),
(149790,57,-2278.3206,7142.3315,-51.06922,NULL,0,0,0,100,0),
(149790,58,-2262.498,7168.7812,-57.606777,NULL,0,0,0,100,0), -- Bridge
(149790,59,-2264.755,7194.955,-66.21011,NULL,0,0,0,100,0),
(149790,60,-2267.328,7220.522,-67.56681,NULL,0,0,0,100,0),
(149790,61,-2270.8977,7254.0796,-57.66845,NULL,0,0,0,100,0),
(149790,62,-2269.4712,7264.023,-56.781742,NULL,0,0,0,100,0),
(149790,63,-2264.7258,7268.5215,-55.171524,NULL,0,0,0,100,0),
(149790,64,-2229.8025,7274.86,-39.007236,NULL,0,0,0,100,0),
(149790,65,-2218.1096,7278.915,-36.76726,NULL,0,0,0,100,0),
(149790,66,-2207.7148,7290.1353,-36.06239,NULL,0,0,0,100,0),
(149790,67,-2203.8276,7302.01,-35.273014,NULL,0,0,0,100,0),
(149790,68,-2212.0886,7348.5674,-31.5205,NULL,0,0,0,100,0), -- Road
(149790,69,-2217.8843,7369.8486,-28.585138,NULL,0,0,0,100,0),
(149790,70,-2229.6885,7412.0083,-25.65005,NULL,0,0,0,100,0),
(149790,71,-2238.8828,7442.5264,-19.980007,NULL,0,0,0,100,0),
(149790,72,-2261.5762,7488.05,-19.473541,NULL,0,0,0,100,0),
(149790,73,-2274.043,7519.2983,-12.459305,NULL,0,0,0,100,0),
(149790,74,-2285.3845,7550.143,-13.929361,NULL,0,0,0,100,0),
(149790,75,-2305.6663,7603.7803,-4.1863613,NULL,0,0,0,100,0),
(149790,76,-2325.3037,7655.789,-8.1658325,NULL,0,0,0,100,0),
(149790,77,-2348.4263,7687.0835,-12.801422,NULL,0,0,0,100,0),
(149790,78,-2366.1436,7711.165,-20.828768,NULL,0,0,0,100,0),
(149790,79,-2393.4214,7747.3447,-26.686943,NULL,0,0,0,100,0),
(149790,80,-2424.3398,7788.231,-33.18108,NULL,0,0,0,100,0),
(149790,81,-2446.7246,7818.7314,-39.531654,NULL,0,0,0,100,0),
(149790,82,-2465.5703,7863.5254,-48.429375,NULL,0,0,0,100,0),
(149790,83,-2476.4392,7889.2305,-52.036594,NULL,0,0,0,100,0),
(149790,84,-2502.575,7951.788,-53.48291,NULL,0,0,0,100,0),
(149790,85,-2514.2454,8009.644,-50.30695,NULL,0,0,0,100,0),
(149790,86,-2523.2195,8027.8105,-48.584156,NULL,0,0,0,100,0),
(149790,87,-2532.1384,8046.062,-48.59957,NULL,0,0,0,100,0),
(149790,88,-2544.3855,8070.122,-45.84114,NULL,0,0,0,100,0),
(149790,89,-2551.831,8084.7896,-47.309685,NULL,0,0,0,100,0), -- Road before
(149790,90,-2553.4822,8097.111,-46.310966,NULL,0,0,0,100,0),
(149790,91,-2557.0723,8118.757,-43.295532,NULL,0,0,0,100,0),
(149790,92,-2562.3152,8149.1357,-41.14288,1.7416,4000,0,0,100,0),

(149800,1,-1653.31,8494.49,-12.8156,6.13478,1000,0,0,100,0),
(149800,2,-1646.6354,8497.2705,-13.377967,NULL,0,0,0,100,0),
(149800,3,-1622.1335,8503.363,-13.394434,NULL,0,0,0,100,0),
(149800,4,-1592.1998,8486.548,-11.6101675,NULL,0,0,0,100,0), -- -1592.1998 8486.548 -11.6101675
(149800,5,-1580.7637,8486.443,-9.61746,NULL,0,0,0,100,0), -- -1580.7637 8486.443 -9.61746
(149800,6,-1554.4006,8505.179,-0.82624257,NULL,0,0,0,100,0),
(149800,7,-1547.1882,8514.943,0.27233768,NULL,0,0,0,100,0),
(149800,8,-1513.4852,8516.665,0.776039,NULL,0,0,0,100,0),
(149800,9,-1472.965,8496.418,2.4553251,NULL,0,0,0,100,0),
(149800,10,-1449.8467,8496.509,5.4896,NULL,0,0,0,100,0),
(149800,11,-1400.41,8527.34,9.969933,NULL,0,0,0,100,0),
(149800,12,-1386.5614,8543.913,11.259388,NULL,0,0,0,100,0),
(149800,13,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road
(149800,14,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(149800,15,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(149800,16,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(149800,17,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(149800,18,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(149800,19,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(149800,20,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(149800,21,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(149800,22,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(149800,23,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(149800,24,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(149800,25,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(149800,26,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(149800,27,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(149800,28,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(149800,29,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(149800,30,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(149800,31,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(149800,32,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0), 
(149800,33,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(149800,34,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(149800,35,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(149800,36,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(149800,37,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(149800,38,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0),
(149800,39,-2385.7493,8500.791,-30.775805,NULL,0,0,0,100,0),
(149800,40,-2398.265,8465.596,-34.490093,NULL,0,0,0,100,0), -- -2398.265 8465.596 -34.490093
(149800,41,-2396.262,8428.602,-38.59888,NULL,0,0,0,100,0), -- Road before -2418.5503 8457.686 -37.630142
(149800,42,-2406.4875,8406.549,-40.151775,NULL,0,0,0,100,0),
(149800,43,-2430.348,8384.764,-38.419975,3.8833,4000,0,0,100,0),

(149810,1,-1579.32,8426.67,-9.33804,6.13478,1000,0,0,100,0),
(149810,2,-1583.6609,8435.96,-10.156949,NULL,0,0,0,100,0),
(149810,3,-1595.2511,8457.169,-10.001886,NULL,0,0,0,100,0),
(149810,4,-1591.83,8472.805,-11.356158,NULL,0,0,0,100,0),
(149810,5,-1580.7637,8486.443,-9.61746,NULL,0,0,0,100,0),
(149810,6,-1554.4006,8505.179,-0.82624257,NULL,0,0,0,100,0),
(149810,7,-1547.1882,8514.943,0.27233768,NULL,0,0,0,100,0),
(149810,8,-1513.4852,8516.665,0.776039,NULL,0,0,0,100,0),
(149810,9,-1472.965,8496.418,2.4553251,NULL,0,0,0,100,0),
(149810,10,-1449.8467,8496.509,5.4896,NULL,0,0,0,100,0),
(149810,11,-1400.41,8527.34,9.969933,NULL,0,0,0,100,0),
(149810,12,-1386.5614,8543.913,11.259388,NULL,0,0,0,100,0),
(149810,13,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road
(149810,14,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(149810,15,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(149810,16,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(149810,17,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(149810,18,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(149810,19,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(149810,20,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(149810,21,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(149810,22,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(149810,23,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(149810,24,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(149810,25,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(149810,26,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(149810,27,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(149810,28,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(149810,29,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(149810,30,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(149810,31,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(149810,32,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0), 
(149810,33,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(149810,34,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(149810,35,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(149810,36,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(149810,37,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(149810,38,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0),
(149810,39,-2385.7493,8500.791,-30.775805,NULL,0,0,0,100,0),
(149810,40,-2398.265,8465.596,-34.490093,NULL,0,0,0,100,0), -- -2409.1252 8469.437 -35.766106
(149810,41,-2410.7769,8448.485,-38.182358,NULL,0,0,0,100,0), -- Road before -2410.7769 8448.485 -38.182358
(149810,42,-2425.9995,8437.024,-38.688206,NULL,0,0,0,100,0),
(149810,43,-2455.0833,8416.473,-36.69753,3.7577,4000,0,0,100,0),

(149820,1,-3317.7056,5991.241,-2.4750717,5.9605,1000,0,0,100,0),
(149820,2,-3286.4268,5981.426,-3.3720152,NULL,0,0,0,100,0),
(149820,3,-3255.7966,5979.2314,-2.2579057,NULL,0,0,0,100,0),
(149820,4,-3212.2197,5960.5767,0.41704637,NULL,0,0,0,100,0),
(149820,5,-3187.5945,5930.3296,1.292508,NULL,0,0,0,100,0),
(149820,6,-3172.3782,5913.739,3.0952077,NULL,0,0,0,100,0),
(149820,7,-3163.9805,5913.536,3.0060842 ,NULL,0,0,0,100,0), -- Road
(149820,8,-3135.8933,5925.041,1.9946003,NULL,0,0,0,100,0),
(149820,9,-3123.34,5927.1304,1.8426248,NULL,0,0,0,100,0),
(149820,10,-3095.101,5944.2827,0.6288182,NULL,0,0,0,100,0),
(149820,11,-3067.377,5958.546,2.104617,NULL,0,0,0,100,0),
(149820,12,-3030.5002,5984.463,4.553689,NULL,0,0,0,100,0),
(149820,13,-3012.8572,5989.4385,5.3271637,NULL,0,0,0,100,0),
(149820,14,-2994.9934,5989.368,6.0207534,NULL,0,0,0,100,0),
(149820,15,-2983.0574,5984.386,6.5362315,NULL,0,0,0,100,0),
(149820,16,-2974.323,5980.3677,7.138196,NULL,0,0,0,100,0),
(149820,17,-2959.5098,5972.6406,8.750746,NULL,0,0,0,100,0),
(149820,18,-2940.079,5961.938,10.884453,NULL,0,0,0,100,0),
(149820,19,-2925.2598,5957.696,12.341535,NULL,0,0,0,100,0),
(149820,20,-2908.616,5960.1313,14.093441,NULL,0,0,0,100,0),
(149820,21,-2866.6602,5977.51,18.40338,NULL,0,0,0,100,0),
(149820,22,-2850.534,5985.211,22.296541,NULL,0,0,0,100,0),
(149820,23,-2782.5789,6019.5005,30.723497,NULL,0,0,0,100,0),
(149820,24,-2759.2124,6028.017,33.79439,NULL,0,0,0,100,0),
(149820,25,-2718.182,6056.1377,37.64546,NULL,0,0,0,100,0),
(149820,26,-2686.4004,6093.9463,39.35082,NULL,0,0,0,100,0),
(149820,27,-2657.7722,6130.2607,38.73495,NULL,0,0,0,100,0),
(149820,28,-2648.094,6158.1704,37.941193,NULL,0,0,0,100,0),
(149820,29,-2649.8108,6212.7925,36.64241,NULL,0,0,0,100,0),
(149820,30,-2651.9631,6243.191,37.322777,NULL,0,0,0,100,0),
(149820,31,-2639.0269,6296.1587,39.413292,NULL,0,0,0,100,0),
(149820,32,-2611.0073,6325.7427,39.092407,NULL,0,0,0,100,0),
(149820,33,-2585.8901,6344.6016,37.631485,NULL,0,0,0,100,0),
(149820,34,-2528.4255,6358.8853,31.377884,NULL,0,0,0,100,0),
(149820,35,-2500.7134,6375.5693,30.379526,NULL,0,0,0,100,0),
(149820,36,-2484.953,6396.0073,28.85099,NULL,0,0,0,100,0),
(149820,37,-2474.8577,6424.26,25.601894,NULL,0,0,0,100,0),
(149820,38,-2470.0671,6495.9126,17.926437,NULL,0,0,0,100,0),
(149820,39,-2451.303,6540.715,11.482842,NULL,0,0,0,100,0),
(149820,40,-2430.198,6588.449,5.432723,NULL,0,0,0,100,0),
(149820,41,-2428.321,6620.279,3.0465567,NULL,0,0,0,100,0),
(149820,42,-2431.4434,6638.593,2.1066663,NULL,0,0,0,100,0),
(149820,43,-2427.5264,6654.1006,1.400445,NULL,0,0,0,100,0),
(149820,44,-2428.0627,6681.4165,0.39455113,NULL,0,0,0,100,0),
(149820,45,-2440.0598,6736.2803,0.053066038,NULL,0,0,0,100,0),
(149820,46,-2438.7952,6757.726,-0.9205988,NULL,0,0,0,100,0),
(149820,47,-2408.683,6819.683,-2.7610621,NULL,0,0,0,100,0),
(149820,48,-2400.1355,6861.7905,-2.9181197,NULL,0,0,0,100,0),
(149820,49,-2400.867,6899.0312,-1.7470491,NULL,0,0,0,100,0),
(149820,50,-2413.15,6946.1567,-2.8403444,NULL,0,0,0,100,0), -- last road
(149820,51,-2391.5027,6978.586,-3.64627,NULL,0,0,0,100,0),
(149820,52,-2385.0317,6993.3325,-5.9649363,NULL,0,0,0,100,0),
(149820,53,-2372.676,7022.217,-9.95741,NULL,0,0,0,100,0),
(149820,54,-2351.972,7068.8027,-13.496573,NULL,0,0,0,100,0),
(149820,55,-2348.5916,7066.2656,-14.25403,NULL,0,0,0,100,0),
(149820,56,-2306.586,7102.6353,-23.680712,NULL,0,0,0,100,0),
(149820,57,-2288.8767,7130.4727,-43.704544,NULL,0,0,0,100,0),
(149820,58,-2278.3206,7142.3315,-51.06922,NULL,0,0,0,100,0),
(149820,59,-2262.498,7168.7812,-57.606777,NULL,0,0,0,100,0), -- Bridge
(149820,60,-2264.755,7194.955,-66.21011,NULL,0,0,0,100,0),
(149820,61,-2267.328,7220.522,-67.56681,NULL,0,0,0,100,0),
(149820,62,-2270.8977,7254.0796,-57.66845,NULL,0,0,0,100,0),
(149820,63,-2269.4712,7264.023,-56.781742,NULL,0,0,0,100,0),
(149820,64,-2264.7258,7268.5215,-55.171524,NULL,0,0,0,100,0),
(149820,65,-2229.8025,7274.86,-39.007236,NULL,0,0,0,100,0),
(149820,66,-2218.1096,7278.915,-36.76726,NULL,0,0,0,100,0),
(149820,67,-2207.7148,7290.1353,-36.06239,NULL,0,0,0,100,0),
(149820,68,-2203.8276,7302.01,-35.273014,NULL,0,0,0,100,0),
(149820,69,-2212.0886,7348.5674,-31.5205,NULL,0,0,0,100,0), -- Road
(149820,70,-2217.8843,7369.8486,-28.585138,NULL,0,0,0,100,0),
(149820,71,-2229.6885,7412.0083,-25.65005,NULL,0,0,0,100,0),
(149820,72,-2238.8828,7442.5264,-19.980007,NULL,0,0,0,100,0),
(149820,73,-2261.5762,7488.05,-19.473541,NULL,0,0,0,100,0),
(149820,74,-2274.043,7519.2983,-12.459305,NULL,0,0,0,100,0),
(149820,75,-2285.3845,7550.143,-13.929361,NULL,0,0,0,100,0),
(149820,76,-2305.6663,7603.7803,-4.1863613,NULL,0,0,0,100,0),
(149820,77,-2325.3037,7655.789,-8.1658325,NULL,0,0,0,100,0),
(149820,78,-2348.4263,7687.0835,-12.801422,NULL,0,0,0,100,0),
(149820,79,-2366.1436,7711.165,-20.828768,NULL,0,0,0,100,0),
(149820,80,-2393.4214,7747.3447,-26.686943,NULL,0,0,0,100,0),
(149820,81,-2424.3398,7788.231,-33.18108,NULL,0,0,0,100,0),
(149820,82,-2446.7246,7818.7314,-39.531654,NULL,0,0,0,100,0),
(149820,83,-2465.5703,7863.5254,-48.429375,NULL,0,0,0,100,0),
(149820,84,-2476.4392,7889.2305,-52.036594,NULL,0,0,0,100,0),
(149820,85,-2502.575,7951.788,-53.48291,NULL,0,0,0,100,0),
(149820,86,-2514.2454,8009.644,-50.30695,NULL,0,0,0,100,0),
(149820,87,-2523.2195,8027.8105,-48.584156,NULL,0,0,0,100,0),
(149820,88,-2532.1384,8046.062,-48.59957,NULL,0,0,0,100,0),
(149820,89,-2544.3855,8070.122,-45.84114,NULL,0,0,0,100,0),
(149820,90,-2551.831,8084.7896,-47.309685,NULL,0,0,0,100,0), -- Road before
(149820,91,-2553.4822,8097.111,-46.310966,NULL,0,0,0,100,0),
(149820,92,-2557.0723,8118.757,-43.295532,NULL,0,0,0,100,0),
(149820,93,-2564.385,8151.577,-41.130455,1.7852,4000,0,0,100,0),

(149830,1,-1316.8264,7388.7075,33.83932,4.9516,3000,0,0,100,0),
(149830,2,-1315.191,7384.665,34.071148,NULL,0,0,0,100,0),
(149830,3,-1310.767,7378.6436,34.372425,NULL,0,0,0,100,0),
(149830,4,-1294.3251,7362.553,34.87677,NULL,0,0,0,100,0),
(149830,5,-1274.9968,7354.008,34.474625,NULL,0,0,0,100,0),
(149830,6,-1255.3844,7342.7183,34.17184,NULL,0,0,0,100,0),
(149830,7,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(149830,8,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(149830,9,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(149830,10,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(149830,11,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(149830,12,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(149830,13,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(149830,14,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(149830,15,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(149830,16,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(149830,17,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(149830,18,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(149830,19,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(149830,20,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(149830,21,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(149830,22,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(149830,23,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(149830,24,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(149830,25,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(149830,26,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(149830,27,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(149830,28,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(149830,29,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(149830,30,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(149830,31,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(149830,32,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(149830,33,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(149830,34,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(149830,35,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(149830,36,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(149830,37,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(149830,38,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(149830,39,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(149830,40,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(149830,41,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(149830,42,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(149830,43,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(149830,44,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(149830,45,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(149830,46,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(149830,47,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(149830,48,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(149830,49,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(149830,50,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(149830,51,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(149830,52,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(149830,53,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(149830,54,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(149830,55,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(149830,56,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(149830,57,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0),
(149830,58,-2221.1052,8219.115,-26.679918,NULL,0,0,0,100,0),
(149830,59,-2259.1567,8227.683,-30.50962,NULL,0,0,0,100,0),
(149830,60,-2293.7898,8235.4795,-31.938496,NULL,0,0,0,100,0),
(149830,61,-2310.9768,8239.42,-36.155514,NULL,0,0,0,100,0),
(149830,62,-2341.9563,8247.425,-38.041286,NULL,0,0,0,100,0),
(149830,63,-2362.7976,8252.636,-40.366726,NULL,0,0,0,100,0), -- Road before
(149830,64,-2377.4897,8261.277,-40.7533,NULL,0,0,0,100,0),
(149830,65,-2398.424,8273.374,-37.712708,NULL,0,0,0,100,0), -- -2398.424 8273.374 -37.712708
(149830,66,-2415.1443,8280.852,-38.668728,3.3025,4000,0,0,100,0),

(149840,1,-1302.7911,7093.6226,38.09301,3.0284,1000,0,0,100,0),
(149840,2,-1311.1157,7097.0117,36.29642,NULL,0,0,0,100,0),
(149840,3,-1320.9854,7114.2056,34.34482,NULL,0,0,0,100,0),
(149840,4,-1333.0284,7139.762,32.866505,NULL,0,0,0,100,0),
(149840,5,-1359.5646,7171.56,33.531174,NULL,0,0,0,100,0),
(149840,6,-1342.3207,7207.391,33.016766,NULL,0,0,0,100,0),
(149840,7,-1328.015,7211.2563,33.121876,NULL,0,0,0,100,0),
(149840,8,-1320.124,7219.8486,33.72135,NULL,0,0,0,100,0),
(149840,9,-1318.3066,7231.2617,33.098328,NULL,0,0,0,100,0),
(149840,10,-1321.225,7244.13,32.75324,NULL,0,0,0,100,0),
(149840,11,-1300.1835,7268.2173,34.154846,NULL,0,0,0,100,0),
(149840,12,-1285.2401,7287.801,33.639275,NULL,0,0,0,100,0), -- Bridge
(149840,13,-1271.6543,7311.88,33.56064,NULL,0,0,0,100,0),
(149840,14,-1259.2621,7333.446,34.132015,NULL,0,0,0,100,0),
(149840,15,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(149840,16,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(149840,17,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(149840,18,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(149840,19,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(149840,20,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(149840,21,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(149840,22,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(149840,23,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(149840,24,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(149840,25,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(149840,26,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(149840,27,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(149840,28,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(149840,29,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(149840,30,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(149840,31,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(149840,32,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(149840,33,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(149840,34,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(149840,35,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(149840,36,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(149840,37,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(149840,38,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(149840,39,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(149840,40,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(149840,41,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(149840,42,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(149840,43,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(149840,44,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(149840,45,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(149840,46,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(149840,47,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(149840,48,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(149840,49,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(149840,50,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(149840,51,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(149840,52,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(149840,53,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(149840,54,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(149840,55,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(149840,56,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(149840,57,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(149840,58,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(149840,59,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(149840,60,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(149840,61,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(149840,62,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(149840,63,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(149840,64,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(149840,65,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0),
(149840,66,-2221.1052,8219.115,-26.679918,NULL,0,0,0,100,0),
(149840,67,-2259.1567,8227.683,-30.50962,NULL,0,0,0,100,0),
(149840,68,-2293.7898,8235.4795,-31.938496,NULL,0,0,0,100,0),
(149840,69,-2310.9768,8239.42,-36.155514,NULL,0,0,0,100,0),
(149840,70,-2341.9563,8247.425,-38.041286,NULL,0,0,0,100,0),
(149840,71,-2362.7976,8252.636,-40.366726,NULL,0,0,0,100,0), -- Road before
(149840,72,-2377.4897,8261.277,-40.7533,NULL,0,0,0,100,0),
(149840,73,-2398.424,8273.374,-37.712708,NULL,0,0,0,100,0), -- -2398.424 8273.374 -37.712708
(149840,74,-2411.9944,8275.702,-37.970257,2.9751,4000,0,0,100,0),

(149850,1,-886.413,7824.75,40.0754,6.13478,1000,0,0,100,0),
(149850,2,-874.5383,7857.3315,38.958054,NULL,0,0,0,100,0),
(149850,3,-859.19635,7893.563,40.89153,NULL,0,0,0,100,0), -- Road
(149850,4,-865.0395,7934.7153,38.349903,NULL,0,0,0,100,0),
(149850,5,-909.93396,8000.6274,32.886444,NULL,0,0,0,100,0),
(149850,6,-922.18243,8042.1636,26.120174,NULL,0,0,0,100,0),
(149850,7,-924.8222,8088.1924,20.173876,NULL,0,0,0,100,0),
(149850,8,-940.3339,8117.523,16.05593,NULL,0,0,0,100,0), -- Bridge
(149850,9,-951.572,8138.533,8.174177,NULL,0,0,0,100,0),
(149850,10,-966.3371,8168.34,14.774238,NULL,0,0,0,100,0),
(149850,11,-972.0909,8196.243,16.349655,NULL,0,0,0,100,0),
(149850,12,-968.9811,8238.509,18.664034,NULL,0,0,0,100,0),
(149850,13,-952.10364,8284.804,20.212276,NULL,0,0,0,100,0),
(149850,14,-961.5999,8334.942,21.981964,NULL,0,0,0,100,0),
(149850,15,-977.9557,8353.212,20.629131,NULL,0,0,0,100,0),
(149850,16,-1039.5327,8384.637,20.409317,NULL,0,0,0,100,0),
(149850,17,-1093.0171,8405.627,20.405588,NULL,0,0,0,100,0),
(149850,18,-1207.697,8430.499,20.234919,NULL,0,0,0,100,0),
(149850,19,-1271.7942,8456.975,16.696638,NULL,0,0,0,100,0),
(149850,20,-1331.452,8512.849,12.671925,NULL,0,0,0,100,0),
(149850,21,-1359.9204,8518.767,11.225426,NULL,0,0,0,100,0),
(149850,22,-1383.804,8545.769,11.249986,NULL,0,0,0,100,0),
(149850,23,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road -1390.558 8564.428 12.278408
(149850,24,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(149850,25,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(149850,26,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(149850,27,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(149850,28,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(149850,29,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(149850,30,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(149850,31,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(149850,32,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(149850,33,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(149850,34,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(149850,35,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(149850,36,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(149850,37,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(149850,38,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(149850,39,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(149850,40,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(149850,41,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(149850,42,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0), 
(149850,43,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(149850,44,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(149850,45,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(149850,46,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(149850,47,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(149850,48,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0), -- -2368.4402 8524.008 -30.689281
(149850,49,-2383.6123,8508.974,-30.139364,NULL,0,0,0,100,0),
(149850,50,-2415.0208,8477.313,-35.52368,NULL,0,0,0,100,0), -- -2398.265 8465.596 -34.490093
(149850,51,-2425.963,8466.299,-37.068012,NULL,0,0,0,100,0), -- Road before -2418.5503 8457.686 -37.630142
(149850,52,-2438.9644,8453.212,-37.955482,NULL,0,0,0,100,0),
(149850,53,-2461.6265,8430.4,-37.543198,3.9302,4000,0,0,100,0),

(205560,1,-878.863,7881.25,38.6467,6.13478,1000,0,0,100,0),
(205560,2,-869.4987,7882.9795,39.51863,NULL,0,0,0,100,0),
(205560,3,-859.19635,7893.563,40.89153,NULL,0,0,0,100,0), -- Road -859.19635 7893.563 40.89153
(205560,4,-865.0395,7934.7153,38.349903,NULL,0,0,0,100,0),
(205560,5,-909.93396,8000.6274,32.886444,NULL,0,0,0,100,0), -- -909.93396 8000.6274 32.886444
(205560,6,-922.18243,8042.1636,26.120174,NULL,0,0,0,100,0), -- -923.96356 8052.713 24.033104
(205560,7,-924.8222,8088.1924,20.173876,NULL,0,0,0,100,0), -- -924.8222 8088.1924 20.173876
(205560,8,-940.3339,8117.523,16.05593,NULL,0,0,0,100,0), -- Bridge
(205560,9,-951.572,8138.533,8.174177,NULL,0,0,0,100,0),
(205560,10,-966.3371,8168.34,14.774238,NULL,0,0,0,100,0),
(205560,11,-972.0909,8196.243,16.349655,NULL,0,0,0,100,0),
(205560,12,-968.9811,8238.509,18.664034,NULL,0,0,0,100,0),
(205560,13,-952.10364,8284.804,20.212276,NULL,0,0,0,100,0),
(205560,14,-961.5999,8334.942,21.981964,NULL,0,0,0,100,0),
(205560,15,-977.9557,8353.212,20.629131,NULL,0,0,0,100,0),
(205560,16,-1039.5327,8384.637,20.409317,NULL,0,0,0,100,0),
(205560,17,-1093.0171,8405.627,20.405588,NULL,0,0,0,100,0),
(205560,18,-1207.697,8430.499,20.234919,NULL,0,0,0,100,0),
(205560,19,-1271.7942,8456.975,16.696638,NULL,0,0,0,100,0),
(205560,20,-1331.452,8512.849,12.671925,NULL,0,0,0,100,0),
(205560,21,-1359.9204,8518.767,11.225426,NULL,0,0,0,100,0),
(205560,22,-1383.804,8545.769,11.249986,NULL,0,0,0,100,0),
(205560,23,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road -1390.558 8564.428 12.278408
(205560,24,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(205560,25,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(205560,26,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(205560,27,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(205560,28,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(205560,29,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(205560,30,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(205560,31,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(205560,32,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(205560,33,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(205560,34,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(205560,35,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(205560,36,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(205560,37,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(205560,38,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(205560,39,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(205560,40,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(205560,41,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(205560,42,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0), 
(205560,43,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(205560,44,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0), -- -2212.6135 8620.311 -5.166341
(205560,45,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0), -- -2251.8928 8597.147 -13.768188
(205560,46,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0), -- -2296.707 8569.719 -22.03277
(205560,47,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0), -- -2346.3037 8539.363 -30.321589
(205560,48,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0), -- -2368.4402 8524.008 -30.689281
(205560,49,-2383.6123,8508.974,-30.139364,NULL,0,0,0,100,0),
(205560,50,-2415.0208,8477.313,-35.52368,NULL,0,0,0,100,0), -- -2398.265 8465.596 -34.490093
(205560,51,-2425.963,8466.299,-37.068012,NULL,0,0,0,100,0), -- Road before -2425.963 8466.299 -37.068012
(205560,52,-2435.5876,8449.27,-38.087563,NULL,0,0,0,100,0),
(205560,53,-2450.6426,8422.633,-37.32458,4.1975,4000,0,0,100,0),

(217760,1,-1387.8983,7138.338,33.859833,0.8204,3000,0,0,100,0),
(217760,2,-1369.8617,7158.193,33.091766,NULL,0,0,0,100,0),
(217760,3,-1362.4292,7167.0522,33.43965,NULL,0,0,0,100,0),
(217760,4,-1342.3207,7207.391,33.016766,NULL,0,0,0,100,0),
(217760,5,-1328.015,7211.2563,33.121876,NULL,0,0,0,100,0),
(217760,6,-1320.124,7219.8486,33.72135,NULL,0,0,0,100,0),
(217760,7,-1318.3066,7231.2617,33.098328,NULL,0,0,0,100,0),
(217760,8,-1321.225,7244.13,32.75324,NULL,0,0,0,100,0),
(217760,9,-1300.1835,7268.2173,34.154846,NULL,0,0,0,100,0),
(217760,10,-1285.2401,7287.801,33.639275,NULL,0,0,0,100,0), -- Bridge
(217760,11,-1271.6543,7311.88,33.56064,NULL,0,0,0,100,0),
(217760,12,-1259.2621,7333.446,34.132015,NULL,0,0,0,100,0),
(217760,13,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(217760,14,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(217760,15,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(217760,16,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(217760,17,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(217760,18,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(217760,19,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(217760,20,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(217760,21,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(217760,22,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(217760,23,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(217760,24,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(217760,25,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(217760,26,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(217760,27,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(217760,28,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(217760,29,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(217760,30,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(217760,31,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(217760,32,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(217760,33,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(217760,34,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(217760,35,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(217760,36,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(217760,37,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(217760,38,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(217760,39,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(217760,40,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(217760,41,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(217760,42,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(217760,43,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(217760,44,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(217760,45,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(217760,46,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(217760,47,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(217760,48,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(217760,49,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(217760,50,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(217760,51,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(217760,52,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(217760,53,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(217760,54,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(217760,55,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(217760,56,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(217760,57,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(217760,58,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(217760,59,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(217760,60,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(217760,61,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(217760,62,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(217760,63,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0),
(217760,64,-2221.1052,8219.115,-26.679918,NULL,0,0,0,100,0),
(217760,65,-2259.1567,8227.683,-30.50962,NULL,0,0,0,100,0),
(217760,66,-2293.7898,8235.4795,-31.938496,NULL,0,0,0,100,0),
(217760,67,-2310.9768,8239.42,-36.155514,NULL,0,0,0,100,0),
(217760,68,-2341.9563,8247.425,-38.041286,NULL,0,0,0,100,0),
(217760,69,-2362.7976,8252.636,-40.366726,NULL,0,0,0,100,0), -- Road before
(217760,70,-2377.4897,8261.277,-40.7533,NULL,0,0,0,100,0),
(217760,71,-2398.424,8273.374,-37.712708,NULL,0,0,0,100,0), -- -2398.424 8273.374 -37.712708
(217760,72,-2411.9944,8275.702,-37.970257,2.9751,4000,0,0,100,0),

(231110,1,-1299.819,7093.3364,38.348408,3.0284,3000,0,0,100,0), -- -1302.7911 7093.6226 38.09301
(231110,2,-1311.1157,7097.0117,36.29642,NULL,0,0,0,100,0),
(231110,3,-1320.9854,7114.2056,34.34482,NULL,0,0,0,100,0),
(231110,4,-1333.0284,7139.762,32.866505,NULL,0,0,0,100,0),
(231110,5,-1359.5646,7171.56,33.531174,NULL,0,0,0,100,0),
(231110,6,-1342.3207,7207.391,33.016766,NULL,0,0,0,100,0),
(231110,7,-1328.015,7211.2563,33.121876,NULL,0,0,0,100,0),
(231110,8,-1320.124,7219.8486,33.72135,NULL,0,0,0,100,0),
(231110,9,-1318.3066,7231.2617,33.098328,NULL,0,0,0,100,0),
(231110,10,-1321.225,7244.13,32.75324,NULL,0,0,0,100,0),
(231110,11,-1300.1835,7268.2173,34.154846,NULL,0,0,0,100,0),
(231110,12,-1285.2401,7287.801,33.639275,NULL,0,0,0,100,0), -- Bridge
(231110,13,-1271.6543,7311.88,33.56064,NULL,0,0,0,100,0),
(231110,14,-1259.2621,7333.446,34.132015,NULL,0,0,0,100,0),
(231110,15,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(231110,16,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(231110,17,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(231110,18,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(231110,19,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(231110,20,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(231110,21,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(231110,22,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(231110,23,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(231110,24,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(231110,25,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(231110,26,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(231110,27,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(231110,28,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(231110,29,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(231110,30,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(231110,31,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(231110,32,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(231110,33,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(231110,34,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(231110,35,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(231110,36,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(231110,37,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(231110,38,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(231110,39,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(231110,40,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(231110,41,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(231110,42,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(231110,43,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(231110,44,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(231110,45,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(231110,46,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(231110,47,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(231110,48,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(231110,49,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(231110,50,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(231110,51,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(231110,52,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(231110,53,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(231110,54,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(231110,55,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(231110,56,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(231110,57,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(231110,58,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(231110,59,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(231110,60,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(231110,61,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(231110,62,-2106.82,8191.13,-15.5604,NULL,0,0,0,100,0),
(231110,63,-2112.65,8192.04,-16.7948,NULL,0,0,0,100,0), -- -2112.65 8192.04 -16.7948
(231110,64,-2121.32,8193.06,-18.1025,NULL,0,0,0,100,0),
(231110,65,-2138.71,8195.08,-20.6668,NULL,0,0,0,100,0),
(231110,66,-2152.45,8196.68,-23.1558,NULL,0,0,0,100,0),
(231110,67,-2169.23,8199.54,-25.8568,NULL,0,0,0,100,0),
(231110,68,-2186.44,8204.07,-28.6804,NULL,0,0,0,100,0),
(231110,69,-2198.97,8208.21,-29.0413,NULL,0,0,0,100,0),
(231110,70,-2210.4,8212.23,-28.0244,NULL,0,0,0,100,0),
(231110,71,-2226.21,8218.56,-26.739,NULL,0,0,0,100,0),
(231110,72,-2238.35,8223.76,-27.498,NULL,0,0,0,100,0),
(231110,73,-2251.97,8229.42,-29.0346,NULL,0,0,0,100,0),
(231110,74,-2265.74,8235.78,-30.4832,NULL,0,0,0,100,0),
(231110,75,-2282.11,8243.3,-30.8119,NULL,0,0,0,100,0),
(231110,76,-2299.43,8248.93,-33.1635,NULL,0,0,0,100,0),
(231110,77,-2314.23,8251.73,-36.0716,NULL,0,0,0,100,0),
(231110,78,-2328.3,8254.83,-35.9723,NULL,0,0,0,100,0),
(231110,79,-2347.02,8257.81,-38.1012,NULL,0,0,0,100,0),
(231110,80,-2365.63,8259.31,-40.5246,NULL,0,0,0,100,0),
(231110,81,-2384.29,8263.58,-39.357,NULL,0,0,0,100,0),
(231110,82,-2405.55,8270.21,-37.7358,2.84881,4000,0,0,100,0),

(246700,1,-1329.4271,7381.5063,34.272934,6.2311,3000,0,0,100,0),
(246700,2,-1315.191,7384.665,34.071148,NULL,0,0,0,100,0),
(246700,3,-1310.767,7378.6436,34.372425,NULL,0,0,0,100,0),
(246700,4,-1294.3251,7362.553,34.87677,NULL,0,0,0,100,0),
(246700,5,-1274.9968,7354.008,34.474625,NULL,0,0,0,100,0),
(246700,6,-1255.3844,7342.7183,34.17184,NULL,0,0,0,100,0),
(246700,7,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(246700,8,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(246700,9,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(246700,10,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(246700,11,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(246700,12,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(246700,13,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(246700,14,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(246700,15,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(246700,16,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(246700,17,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(246700,18,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(246700,19,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(246700,20,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(246700,21,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(246700,22,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(246700,23,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(246700,24,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(246700,25,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(246700,26,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(246700,27,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(246700,28,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(246700,29,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(246700,30,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(246700,31,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(246700,32,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(246700,33,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(246700,34,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(246700,35,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(246700,36,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(246700,37,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(246700,38,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(246700,39,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(246700,40,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(246700,41,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(246700,42,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(246700,43,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(246700,44,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(246700,45,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(246700,46,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(246700,47,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(246700,48,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(246700,49,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(246700,50,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(246700,51,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(246700,52,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(246700,53,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0), -- -2066.2642 8211.197 -7.664237
(246700,54,-2106.6401,8253.688,-17.042936,NULL,0,0,0,100,0),
(246700,55,-2129.7017,8276.887,-19.123743,NULL,0,0,0,100,0),
(246700,56,-2154.37,8301.18,-20.9227,NULL,0,0,0,100,0), -- -2154.37 8301.18 -20.9227
(246700,57,-2170.51,8301.82,-22.6604,NULL,0,0,0,100,0),
(246700,58,-2189.94,8301.98,-24.2471,NULL,0,0,0,100,0),
(246700,59,-2206.32,8302.08,-25.8035,NULL,0,0,0,100,0),
(246700,60,-2221.69,8303.03,-26.126,NULL,0,0,0,100,0),
(246700,61,-2234.13,8303.57,-28.4319,NULL,0,0,0,100,0),
(246700,62,-2248.53,8303.48,-29.4753,NULL,0,0,0,100,0),
(246700,63,-2262.85,8305.04,-29.8504,NULL,0,0,0,100,0),
(246700,64,-2276.84,8305.46,-30.8176,NULL,0,0,0,100,0),
(246700,65,-2290.82,8304.94,-32.4245,NULL,0,0,0,100,0),
(246700,66,-2304.81,8304.44,-33.9312,NULL,0,0,0,100,0),
(246700,67,-2322.31,8304.53,-36.2386,NULL,0,0,0,100,0),
(246700,68,-2336.31,8304.66,-37.9441,NULL,0,0,0,100,0),
(246700,69,-2352.01,8304.31,-37.699,NULL,0,0,0,100,0),
(246700,70,-2365.59,8305.15,-40.1673,NULL,0,0,0,100,0),
(246700,71,-2383.63,8306.82,-38.712,NULL,0,0,0,100,0),
(246700,72,-2401.23,8308.73,-38.554,NULL,0,0,0,100,0),
(246700,73,-2423.32,8310.51,-38.1534,3.08128,4000,0,0,100,0),

(247610,1,-1305.6797,7089.7305,38.144295,2.2933,2000,0,0,100,0),
(247610,2,-1311.1157,7097.0117,36.29642,NULL,0,0,0,100,0),
(247610,3,-1320.9854,7114.2056,34.34482,NULL,0,0,0,100,0),
(247610,4,-1333.0284,7139.762,32.866505,NULL,0,0,0,100,0),
(247610,5,-1359.5646,7171.56,33.531174,NULL,0,0,0,100,0),
(247610,6,-1342.3207,7207.391,33.016766,NULL,0,0,0,100,0),
(247610,7,-1328.015,7211.2563,33.121876,NULL,0,0,0,100,0),
(247610,8,-1320.124,7219.8486,33.72135,NULL,0,0,0,100,0),
(247610,9,-1318.3066,7231.2617,33.098328,NULL,0,0,0,100,0),
(247610,10,-1321.225,7244.13,32.75324,NULL,0,0,0,100,0),
(247610,11,-1300.1835,7268.2173,34.154846,NULL,0,0,0,100,0),
(247610,12,-1285.2401,7287.801,33.639275,NULL,0,0,0,100,0), -- Bridge
(247610,13,-1271.6543,7311.88,33.56064,NULL,0,0,0,100,0),
(247610,14,-1259.2621,7333.446,34.132015,NULL,0,0,0,100,0),
(247610,15,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(247610,16,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(247610,17,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(247610,18,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(247610,19,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(247610,20,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(247610,21,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(247610,22,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(247610,23,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(247610,24,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(247610,25,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(247610,26,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(247610,27,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(247610,28,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(247610,29,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(247610,30,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(247610,31,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(247610,32,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(247610,33,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(247610,34,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(247610,35,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(247610,36,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(247610,37,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(247610,38,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(247610,39,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(247610,40,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(247610,41,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(247610,42,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(247610,43,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(247610,44,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(247610,45,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(247610,46,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(247610,47,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(247610,48,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(247610,49,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(247610,50,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(247610,51,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(247610,52,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(247610,53,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(247610,54,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(247610,55,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(247610,56,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(247610,57,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(247610,58,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(247610,59,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(247610,60,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0), -- -2038.1218 8210.388 -6.187318
(247610,61,-2066.4128,8226.752,-7.7722726,NULL,0,0,0,100,0),
(247610,62,-2107.7476,8250.9,-16.906307,NULL,0,0,0,100,0), 
(247610,63,-2156.7344,8279.756,-20.055729,NULL,0,0,0,100,0),
(247610,64,-2206.14,8306.9,-26.191,NULL,0,0,0,100,0),
(247610,65,-2212.08,8306.59,-26.1231,NULL,0,0,0,100,0),
(247610,66,-2223.2,8304.77,-26.3483,NULL,0,0,0,100,0),
(247610,67,-2236.38,8301.02,-28.5661,NULL,0,0,0,100,0),
(247610,68,-2248.5,8299.47,-28.7971,NULL,0,0,0,100,0),
(247610,69,-2266.04,8297.18,-29.6781,NULL,0,0,0,100,0),
(247610,70,-2282.35,8295.87,-31.8415,NULL,0,0,0,100,0),
(247610,71,-2297.05,8294.86,-33.8225,NULL,0,0,0,100,0),
(247610,72,-2314.94,8295.12,-35.8822,NULL,0,0,0,100,0),
(247610,73,-2326.35,8296.19,-37.6473,NULL,0,0,0,100,0),
(247610,74,-2340.74,8297.08,-36.9042,NULL,0,0,0,100,0),
(247610,75,-2359.08,8297.76,-39.7544,NULL,0,0,0,100,0),
(247610,76,-2377.33,8298.04,-39.5022,NULL,0,0,0,100,0),
(247610,77,-2394.15,8298.36,-39.518,NULL,0,0,0,100,0),
(247610,78,-2425.05,8298.74,-39.8907,3.17817,4000,0,0,100,0),

(247940,1,-2256,8478.68,-24.6155,3.72008,1000,0,0,100,0),
(247940,2,-2261.14,8475.37,-25.8232,NULL,0,0,0,100,0),
(247940,3,-2272.51,8467.21,-28.3968,NULL,0,0,0,100,0),
(247940,4,-2285.8,8455.84,-30.6126,NULL,0,0,0,100,0),
(247940,5,-2300.34,8442.98,-33.4702,NULL,0,0,0,100,0),
(247940,6,-2312.62,8430.52,-35.257,NULL,0,0,0,100,0),
(247940,7,-2324.73,8415.52,-35.6384,NULL,0,0,0,100,0),
(247940,8,-2334.41,8400.94,-36.4277,NULL,0,0,0,100,0),
(247940,9,-2343.83,8385.63,-38.5498,NULL,0,0,0,100,0),
(247940,10,-2365.02,8369.27,-39.7285,NULL,0,0,0,100,0),
(247940,11,-2378.88,8360.32,-40.392,NULL,0,0,0,100,0),
(247940,12,-2391.93,8351.75,-38.8548,NULL,0,0,0,100,0),
(247940,13,-2406.44,8339.74,-38.2314,NULL,0,0,0,100,0),
(247940,14,-2422.92,8329.23,-37.6123,3.68317,4000,0,0,100,0),

(251000,1,-803.7829,7613.178,48.288467,3.2067,1000,0,0,100,0),
(251000,2,-814.9302,7637.183,44.85648,NULL,0,0,0,100,0),
(251000,3,-816.2796,7652.9805,44.339138,NULL,0,0,0,100,0),
(251000,4,-823.6499,7668.497,44.03816,NULL,0,0,0,100,0),
(251000,5,-830.2561,7694.3506,37.838272,NULL,0,0,0,100,0),
(251000,6,-836.5645,7724.9907,34.552917,NULL,0,0,0,100,0),
(251000,7,-828.9262,7758.3647,34.578396,NULL,0,0,0,100,0),
(251000,8,-821.804,7783.507,35.30028,NULL,0,0,0,100,0),
(251000,9,-827.7031,7795.2314,37.940067,NULL,0,0,0,100,0),
(251000,10,-841.5283,7820.1626,39.79149,NULL,0,0,0,100,0),
(251000,11,-854.45325,7849.298,42.14159,NULL,0,0,0,100,0),
(251000,12,-854.0803,7867.235,42.42935,NULL,0,0,0,100,0),
(251000,13,-859.19635,7893.563,40.89153,NULL,0,0,0,100,0), -- Road -859.19635 7893.563 40.89153
(251000,14,-865.0395,7934.7153,38.349903,NULL,0,0,0,100,0),
(251000,15,-909.93396,8000.6274,32.886444,NULL,0,0,0,100,0),
(251000,16,-922.18243,8042.1636,26.120174,NULL,0,0,0,100,0),
(251000,17,-924.8222,8088.1924,20.173876,NULL,0,0,0,100,0),
(251000,18,-940.3339,8117.523,16.05593,NULL,0,0,0,100,0), -- Bridge
(251000,19,-951.572,8138.533,8.174177,NULL,0,0,0,100,0),
(251000,20,-966.3371,8168.34,14.774238,NULL,0,0,0,100,0),
(251000,21,-972.0909,8196.243,16.349655,NULL,0,0,0,100,0),
(251000,22,-968.9811,8238.509,18.664034,NULL,0,0,0,100,0),
(251000,23,-952.10364,8284.804,20.212276,NULL,0,0,0,100,0),
(251000,24,-961.5999,8334.942,21.981964,NULL,0,0,0,100,0),
(251000,25,-977.9557,8353.212,20.629131,NULL,0,0,0,100,0),
(251000,26,-1039.5327,8384.637,20.409317,NULL,0,0,0,100,0),
(251000,27,-1093.0171,8405.627,20.405588,NULL,0,0,0,100,0),
(251000,28,-1207.697,8430.499,20.234919,NULL,0,0,0,100,0),
(251000,29,-1271.7942,8456.975,16.696638,NULL,0,0,0,100,0),
(251000,30,-1331.452,8512.849,12.671925,NULL,0,0,0,100,0),
(251000,31,-1359.9204,8518.767,11.225426,NULL,0,0,0,100,0),
(251000,32,-1383.804,8545.769,11.249986,NULL,0,0,0,100,0),
(251000,33,-1390.558,8564.428,12.278408,NULL,0,0,0,100,0), -- Road -1390.558 8564.428 12.278408
(251000,34,-1469.85,8680.5,21.52373,NULL,0,0,0,100,0),
(251000,35,-1480.0242,8693.029,23.199099,NULL,0,0,0,100,0),
(251000,36,-1537.0323,8728.851,29.697771,NULL,0,0,0,100,0), -- Road Sunspring post -1537.0323 8728.851 29.697771
(251000,37,-1551.3303,8736.281,31.503439,NULL,0,0,0,100,0),
(251000,38,-1578.742,8740.852,33.381958,NULL,0,0,0,100,0), -- bridge
(251000,39,-1595.6144,8744.002,32.914783,NULL,0,0,0,100,0),
(251000,40,-1684.9131,8750.708,29.092728,NULL,0,0,0,100,0),
(251000,41,-1733.4846,8750.326,27.120178,NULL,0,0,0,100,0),
(251000,42,-1763.0382,8731.747,24.011332,NULL,0,0,0,100,0),
(251000,43,-1789.2689,8723.338,24.79376,NULL,0,0,0,100,0),
(251000,44,-1828.4669,8715.701,24.73996,NULL,0,0,0,100,0),
(251000,45,-1861.0249,8719.768,25.365543,NULL,0,0,0,100,0),
(251000,46,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road
(251000,47,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(251000,48,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(251000,49,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(251000,50,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(251000,51,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(251000,52,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0),
(251000,53,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0),
(251000,54,-2220.2632,8594.798,-9.132824,NULL,0,0,0,100,0),
(251000,55,-2246.6436,8554.992,-14.9107895,NULL,0,0,0,100,0),
(251000,56,-2263.0796,8530.248,-22.470377,NULL,0,0,0,100,0),
(251000,57,-2287.9116,8502.958,-27.34369,NULL,0,0,0,100,0), -- -2287.9116 8502.958 -27.34369 
(251000,58,-2301.4167,8490.669,-27.8215,NULL,0,0,0,100,0),
(251000,59,-2318.5498,8481.8955,-29.735468,NULL,0,0,0,100,0),
(251000,60,-2336.12,8477.34,-30.3842,4.01413,1000,0,0,100,0),
(251000,61,-2349.93,8462.18,-33.0847,NULL,0,0,0,100,0),
(251000,62,-2366.12,8445.55,-34.8728,NULL,0,0,0,100,0),
(251000,63,-2373.97,8435.66,-37.0363,NULL,0,0,0,100,0),
(251000,64,-2380.55,8426.95,-36.2271,NULL,0,0,0,100,0),
(251000,65,-2390.7,8414.94,-39.51,NULL,0,0,0,100,0),
(251000,66,-2401.49,8406.01,-40.1447,NULL,0,0,0,100,0),
(251000,67,-2410.17,8396.76,-38.5437,NULL,0,0,0,100,0),
(251000,68,-2425.49,8379.5,-38.4966,3.94344,4000,0,0,100,0),

(265590,1,-2350.53,8641.59,-15.5674,4.33614,1000,0,0,100,0),
(265590,2,-2352.89,8636.14,-16.3244,NULL,0,0,0,100,0),
(265590,3,-2357.5,8623.99,-18.0005,NULL,0,0,0,100,0),
(265590,4,-2362.76,8609.52,-19.8936,NULL,0,0,0,100,0),
(265590,5,-2366.35,8599.65,-21.8037,NULL,0,0,0,100,0),
(265590,6,-2369.94,8589.79,-23.7659,NULL,0,0,0,100,0),
(265590,7,-2375.45,8576.94,-26.2606,NULL,0,0,0,100,0),
(265590,8,-2381.59,8564.36,-28.3376,NULL,0,0,0,100,0),
(265590,9,-2387.13,8551.14,-28.6318,NULL,0,0,0,100,0),
(265590,10,-2392.13,8540.34,-28.5545,NULL,0,0,0,100,0),
(265590,11,-2398.71,8527.99,-28.765,NULL,0,0,0,100,0),
(265590,12,-2406.03,8511.94,-30.638,NULL,0,0,0,100,0),
(265590,13,-2411.22,8498.94,-32.6872,NULL,0,0,0,100,0),
(265590,14,-2417.87,8484,-34.7147,NULL,0,0,0,100,0),
(265590,15,-2425.59,8468.94,-36.5487,NULL,0,0,0,100,0),
(265590,16,-2433.41,8452.95,-38.3402,NULL,0,0,0,100,0),
(265590,17,-2439.51,8440.35,-36.7726,NULL,0,0,0,100,0),
(265590,18,-2451.02,8423.42,-37.3139,4.08482,4000,0,0,100,0),

(265640,1,-1328.0555,7419.6416,29.410845,5.0579,1000,0,0,100,0),
(265640,2,-1315.191,7384.665,34.071148,NULL,0,0,0,100,0), -- -1315.191 7384.665 34.071148
(265640,3,-1310.767,7378.6436,34.372425,NULL,0,0,0,100,0),
(265640,4,-1294.3251,7362.553,34.87677,NULL,0,0,0,100,0),
(265640,5,-1274.9968,7354.008,34.474625,NULL,0,0,0,100,0),
(265640,6,-1255.3844,7342.7183,34.17184,NULL,0,0,0,100,0),
(265640,7,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(265640,8,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(265640,9,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(265640,10,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(265640,11,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(265640,12,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(265640,13,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(265640,14,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(265640,15,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(265640,16,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(265640,17,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(265640,18,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(265640,19,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(265640,20,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(265640,21,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(265640,22,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(265640,23,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(265640,24,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(265640,25,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(265640,26,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(265640,27,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(265640,28,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(265640,29,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(265640,30,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(265640,31,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(265640,32,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(265640,33,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(265640,34,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(265640,35,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(265640,36,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(265640,37,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(265640,38,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(265640,39,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(265640,40,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(265640,41,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(265640,42,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(265640,43,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(265640,44,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(265640,45,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(265640,46,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(265640,47,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(265640,48,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(265640,49,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(265640,50,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(265640,51,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(265640,52,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(265640,53,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(265640,54,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(265640,55,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(265640,56,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(265640,57,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0), -- -2199.5227 8215.139 -28.781301
(265640,58,-2224.1155,8214.23,-26.782076,NULL,0,0,0,100,0), -- -2224.1155 8214.23 -26.782076
(265640,59,-2267.6604,8243.232,-30.7251,NULL,0,0,0,100,0), -- -2251.463 8211.606 -31.767672
(265640,60,-2298.3042,8263.708,-35.060505,NULL,0,0,0,100,0), -- -2296.8 8202.52 -36.0711
(265640,61,-2316.185,8276.036,-36.63226,NULL,0,0,0,100,0), -- -2309.64 8207.47 -36.8004
(265640,62,-2336.04,8288.74,-36.3567,2.91457,1000,0,0,100,0),
(265640,63,-2342.21,8290.03,-36.0686,NULL,0,0,0,100,0),
(265640,64,-2354.03,8291.55,-38.2599,NULL,0,0,0,100,0),
(265640,65,-2375.94,8295.73,-39.9772,NULL,0,0,0,100,0),
(265640,66,-2396.58,8299.53,-39.806,NULL,0,0,0,100,0),
(265640,67,-2419.92,8304.59,-38.8306,2.92635,4000,0,0,100,0),

(318070,1,-1319.6959,7380.675,34.068123,5.9164,1000,0,0,100,0),
(318070,2,-1315.191,7384.665,34.071148,NULL,0,0,0,100,0),
(318070,3,-1310.767,7378.6436,34.372425,NULL,0,0,0,100,0),
(318070,4,-1294.3251,7362.553,34.87677,NULL,0,0,0,100,0),
(318070,5,-1274.9968,7354.008,34.474625,NULL,0,0,0,100,0),
(318070,6,-1255.3844,7342.7183,34.17184,NULL,0,0,0,100,0),
(318070,7,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(318070,8,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(318070,9,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(318070,10,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(318070,11,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(318070,12,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(318070,13,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(318070,14,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(318070,15,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(318070,16,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(318070,17,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(318070,18,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(318070,19,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(318070,20,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(318070,21,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(318070,22,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(318070,23,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(318070,24,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(318070,25,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(318070,26,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(318070,27,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(318070,28,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(318070,29,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(318070,30,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(318070,31,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(318070,32,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(318070,33,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(318070,34,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(318070,35,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(318070,36,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(318070,37,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(318070,38,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(318070,39,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(318070,40,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(318070,41,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(318070,42,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(318070,43,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(318070,44,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(318070,45,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(318070,46,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(318070,47,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(318070,48,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(318070,49,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(318070,50,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(318070,51,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(318070,52,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(318070,53,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(318070,54,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(318070,55,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(318070,56,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(318070,57,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0),
(318070,58,-2221.1052,8219.115,-26.679918,NULL,0,0,0,100,0),
(318070,59,-2259.1567,8227.683,-30.50962,NULL,0,0,0,100,0), -- -2259.1567 8227.683 -30.50962
(318070,60,-2310.739,8226.74,-35.899487,NULL,0,0,0,100,0),
(318070,61,-2336.11,8225.27,-35.7699,NULL,0,0,0,100,0),
(318070,62,-2340.34,8228.06,-35.889,NULL,0,0,0,100,0),
(318070,63,-2358.71,8238.23,-38.7513,NULL,0,0,0,100,0),
(318070,64,-2369.57,8242.53,-40.8813,NULL,0,0,0,100,0),
(318070,65,-2382.45,8246.73,-39.914,NULL,0,0,0,100,0),
(318070,66,-2394.95,8250.99,-39.4445,NULL,0,0,0,100,0),
(318070,67,-2419.48,8255.91,-38.5315,3.04416,3000,0,0,100,0),

(318330,1,-1393.1624,7134.1475,33.780266,0.8204,4000,0,0,100,0),
(318330,2,-1369.8617,7158.193,33.091766,NULL,0,0,0,100,0),
(318330,3,-1362.4292,7167.0522,33.43965,NULL,0,0,0,100,0),
(318330,4,-1342.3207,7207.391,33.016766,NULL,0,0,0,100,0),
(318330,5,-1328.015,7211.2563,33.121876,NULL,0,0,0,100,0),
(318330,6,-1320.124,7219.8486,33.72135,NULL,0,0,0,100,0),
(318330,7,-1318.3066,7231.2617,33.098328,NULL,0,0,0,100,0),
(318330,8,-1321.225,7244.13,32.75324,NULL,0,0,0,100,0),
(318330,9,-1300.1835,7268.2173,34.154846,NULL,0,0,0,100,0),
(318330,10,-1285.2401,7287.801,33.639275,NULL,0,0,0,100,0), -- Bridge
(318330,11,-1271.6543,7311.88,33.56064,NULL,0,0,0,100,0),
(318330,12,-1259.2621,7333.446,34.132015,NULL,0,0,0,100,0),
(318330,13,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(318330,14,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(318330,15,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(318330,16,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(318330,17,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(318330,18,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(318330,19,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(318330,20,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(318330,21,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(318330,22,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(318330,23,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(318330,24,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(318330,25,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(318330,26,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(318330,27,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(318330,28,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(318330,29,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(318330,30,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(318330,31,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(318330,32,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(318330,33,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(318330,34,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(318330,35,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(318330,36,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(318330,37,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(318330,38,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(318330,39,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(318330,40,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(318330,41,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(318330,42,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(318330,43,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(318330,44,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(318330,45,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(318330,46,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(318330,47,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(318330,48,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(318330,49,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(318330,50,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(318330,51,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(318330,52,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(318330,53,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(318330,54,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(318330,55,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(318330,56,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(318330,57,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(318330,58,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(318330,59,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(318330,60,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(318330,61,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(318330,62,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(318330,63,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0),
(318330,64,-2221.1052,8219.115,-26.679918,NULL,0,0,0,100,0),
(318330,65,-2259.1567,8227.683,-30.50962,NULL,0,0,0,100,0), -- -2259.1567 8227.683 -30.50962
(318330,66,-2279.19,8226.34,-30.9118,NULL,0,0,0,100,0), -- -2279.19 8226.34 -30.9118
(318330,67,-2294.29,8229.86,-32.502,NULL,0,0,0,100,0),
(318330,68,-2302.79,8232.62,-33.6875,NULL,0,0,0,100,0),
(318330,69,-2311.76,8236.52,-36.218,NULL,0,0,0,100,0),
(318330,70,-2328.46,8243.79,-37.3536,NULL,0,0,0,100,0),
(318330,71,-2346.61,8249.73,-38.4788,NULL,0,0,0,100,0),
(318330,72,-2358.44,8255.57,-39.1873,NULL,0,0,0,100,0),
(318330,73,-2372.51,8261.68,-40.7349,NULL,0,0,0,100,0),
(318330,74,-2389.28,8266.69,-38.6213,NULL,0,0,0,100,0),
(318330,75,-2405.67,8270.19,-37.7384,2.9774,4000,0,0,100,0),

(320720,1,-1314.5609,7385.187,34.107224,4.9516,1000,0,0,100,0),
(320720,2,-1315.191,7384.665,34.071148,NULL,0,0,0,100,0),
(320720,3,-1310.767,7378.6436,34.372425,NULL,0,0,0,100,0),
(320720,4,-1294.3251,7362.553,34.87677,NULL,0,0,0,100,0),
(320720,5,-1274.9968,7354.008,34.474625,NULL,0,0,0,100,0),
(320720,6,-1255.3844,7342.7183,34.17184,NULL,0,0,0,100,0),
(320720,7,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(320720,8,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(320720,9,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(320720,10,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(320720,11,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(320720,12,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(320720,13,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(320720,14,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(320720,15,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(320720,16,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(320720,17,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(320720,18,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(320720,19,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(320720,20,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(320720,21,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(320720,22,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(320720,23,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(320720,24,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(320720,25,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(320720,26,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(320720,27,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(320720,28,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(320720,29,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(320720,30,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(320720,31,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(320720,32,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(320720,33,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(320720,34,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(320720,35,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(320720,36,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(320720,37,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(320720,38,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(320720,39,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(320720,40,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(320720,41,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(320720,42,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(320720,43,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(320720,44,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(320720,45,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(320720,46,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(320720,47,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(320720,48,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(320720,49,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(320720,50,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(320720,51,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(320720,52,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(320720,53,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(320720,54,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0),
(320720,55,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(320720,56,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0),
(320720,57,-2199.5227,8215.139,-28.781301,NULL,0,0,0,100,0), -- -2199.5227 8215.139 -28.781301
(320720,58,-2224.1155,8214.23,-26.782076,NULL,0,0,0,100,0),
(320720,59,-2251.463,8211.606,-31.767672,NULL,0,0,0,100,0),
(320720,60,-2296.8,8202.52,-36.0711,NULL,0,0,0,100,0), -- -2296.8 8202.52 -36.0711
(320720,61,-2309.64,8207.47,-36.8004,NULL,0,0,0,100,0), -- -2309.64 8207.47 -36.8004
(320720,62,-2320.94,8211.83,-36.1317,NULL,0,0,0,100,0),
(320720,63,-2333.98,8216.87,-35.3284,NULL,0,0,0,100,0),
(320720,64,-2348.95,8223.85,-35.9928,NULL,0,0,0,100,0),
(320720,65,-2367.19,8235.63,-40.6976,NULL,0,0,0,100,0),
(320720,66,-2381.4,8243.44,-40.6753,NULL,0,0,0,100,0),
(320720,67,-2394.08,8247.13,-38.7973,NULL,0,0,0,100,0),
(320720,68,-2415.85,8252.83,-38.9504,2.88551,4000,0,0,100,0),

(404750,1,-2184.8,8029.08,-17.6373,2.41427,1000,0,0,100,0),
(404750,2,-2189.89,8033.31,-18.7028,NULL,0,0,0,100,0),
(404750,3,-2201.12,8043.03,-21.2763,NULL,0,0,0,100,0),
(404750,4,-2210.96,8051.17,-23.9013,NULL,0,0,0,100,0),
(404750,5,-2220.19,8059.87,-28.1386,NULL,0,0,0,100,0),
(404750,6,-2228.35,8066.62,-31.2971,NULL,0,0,0,100,0),
(404750,7,-2243.75,8073.69,-33.0466,NULL,0,0,0,100,0),
(404750,8,-2256.64,8084.78,-34.8378,NULL,0,0,0,100,0),
(404750,9,-2269.54,8096.88,-35.8722,NULL,0,0,0,100,0),
(404750,10,-2274.08,8100.97,-34.4774,NULL,0,0,0,100,0),
(404750,11,-2285.13,8110.73,-35.2784,NULL,0,0,0,100,0),
(404750,12,-2293.23,8118.05,-36.6003,NULL,0,0,0,100,0),
(404750,13,-2303.37,8127.19,-37.9431,NULL,0,0,0,100,0),
(404750,14,-2313.27,8135.21,-37.7228,NULL,0,0,0,100,0),
(404750,15,-2326.01,8147.27,-38.0687,NULL,0,0,0,100,0),
(404750,16,-2337.12,8156.41,-38.4812,NULL,0,0,0,100,0),
(404750,17,-2347.76,8168.32,-39.0334,NULL,0,0,0,100,0),
(404750,18,-2358.32,8180.11,-38.6665,NULL,0,0,0,100,0),
(404750,19,-2368.77,8189.27,-37.5052,NULL,0,0,0,100,0),
(404750,20,-2384.14,8199.83,-40.8323,NULL,0,0,0,100,0),
(404750,21,-2395.97,8207.08,-41.4856,NULL,0,0,0,100,0),
(404750,22,-2404.42,8212.29,-39.4423,NULL,0,0,0,100,0),
(404750,23,-2415.06,8217.57,-38.0044,2.65853,4000,0,0,100,0),
/*
(404750,1,-3314.2305,5984.623,-2.90574,0.9696,2000,0,0,100,0), -- -3305.9692 5973.3745 -3.0180922
(404750,2,-3286.4268,5981.426,-3.3720152,NULL,0,0,0,100,0),
(404750,3,-3255.7966,5979.2314,-2.2579057,NULL,0,0,0,100,0),
(404750,4,-3212.2197,5960.5767,0.41704637,NULL,0,0,0,100,0),
(404750,5,-3187.5945,5930.3296,1.292508,NULL,0,0,0,100,0),
(404750,6,-3172.3782,5913.739,3.0952077,NULL,0,0,0,100,0),
(404750,7,-3163.9805,5913.536,3.0060842 ,NULL,0,0,0,100,0), -- Road
(404750,8,-3135.8933,5925.041,1.9946003,NULL,0,0,0,100,0),
(404750,9,-3123.34,5927.1304,1.8426248,NULL,0,0,0,100,0),
(404750,10,-3095.101,5944.2827,0.6288182,NULL,0,0,0,100,0),
(404750,11,-3067.377,5958.546,2.104617,NULL,0,0,0,100,0),
(404750,12,-3030.5002,5984.463,4.553689,NULL,0,0,0,100,0),
(404750,13,-3012.8572,5989.4385,5.3271637,NULL,0,0,0,100,0),
(404750,14,-2994.9934,5989.368,6.0207534,NULL,0,0,0,100,0),
(404750,15,-2983.0574,5984.386,6.5362315,NULL,0,0,0,100,0),
(404750,16,-2959.5098,5972.6406,8.750746,NULL,0,0,0,100,0),
(404750,17,-2940.079,5961.938,10.884453,NULL,0,0,0,100,0),
(404750,18,-2925.2598,5957.696,12.341535,NULL,0,0,0,100,0),
(404750,19,-2908.616,5960.1313,14.093441,NULL,0,0,0,100,0),
(404750,20,-2866.6602,5977.51,18.40338,NULL,0,0,0,100,0),
(404750,21,-2850.534,5985.211,22.296541,NULL,0,0,0,100,0),
(404750,22,-2782.5789,6019.5005,30.723497,NULL,0,0,0,100,0),
(404750,23,-2759.2124,6028.017,33.79439,NULL,0,0,0,100,0),
(404750,24,-2718.182,6056.1377,37.64546,NULL,0,0,0,100,0),
(404750,25,-2686.4004,6093.9463,39.35082,NULL,0,0,0,100,0),
(404750,26,-2657.7722,6130.2607,38.73495,NULL,0,0,0,100,0),
(404750,27,-2648.094,6158.1704,37.941193,NULL,0,0,0,100,0),
(404750,28,-2649.8108,6212.7925,36.64241,NULL,0,0,0,100,0),
(404750,29,-2651.9631,6243.191,37.322777,NULL,0,0,0,100,0),
(404750,30,-2639.0269,6296.1587,39.413292,NULL,0,0,0,100,0),
(404750,31,-2611.0073,6325.7427,39.092407,NULL,0,0,0,100,0),
(404750,32,-2585.8901,6344.6016,37.631485,NULL,0,0,0,100,0),
(404750,33,-2528.4255,6358.8853,31.377884,NULL,0,0,0,100,0),
(404750,34,-2500.7134,6375.5693,30.379526,NULL,0,0,0,100,0),
(404750,35,-2484.953,6396.0073,28.85099,NULL,0,0,0,100,0),
(404750,36,-2474.8577,6424.26,25.601894,NULL,0,0,0,100,0),
(404750,37,-2470.0671,6495.9126,17.926437,NULL,0,0,0,100,0),
(404750,38,-2451.303,6540.715,11.482842,NULL,0,0,0,100,0),
(404750,39,-2430.198,6588.449,5.432723,NULL,0,0,0,100,0),
(404750,40,-2428.321,6620.279,3.0465567,NULL,0,0,0,100,0),
(404750,41,-2431.4434,6638.593,2.1066663,NULL,0,0,0,100,0),
(404750,42,-2427.5264,6654.1006,1.400445,NULL,0,0,0,100,0),
(404750,43,-2428.0627,6681.4165,0.39455113,NULL,0,0,0,100,0),
(404750,44,-2440.0598,6736.2803,0.053066038,NULL,0,0,0,100,0),
(404750,45,-2438.7952,6757.726,-0.9205988,NULL,0,0,0,100,0),
(404750,46,-2408.683,6819.683,-2.7610621,NULL,0,0,0,100,0),
(404750,47,-2400.1355,6861.7905,-2.9181197,NULL,0,0,0,100,0),
(404750,48,-2400.867,6899.0312,-1.7470491,NULL,0,0,0,100,0),
(404750,49,-2413.15,6946.1567,-2.8403444,NULL,0,0,0,100,0), -- last road
(404750,50,-2391.5027,6978.586,-3.64627,NULL,0,0,0,100,0),
(404750,51,-2385.0317,6993.3325,-5.9649363,NULL,0,0,0,100,0),
(404750,52,-2372.676,7022.217,-9.95741,NULL,0,0,0,100,0),
(404750,53,-2351.972,7068.8027,-13.496573,NULL,0,0,0,100,0),
(404750,54,-2348.5916,7066.2656,-14.25403,NULL,0,0,0,100,0),
(404750,55,-2306.586,7102.6353,-23.680712,NULL,0,0,0,100,0),
(404750,56,-2288.8767,7130.4727,-43.704544,NULL,0,0,0,100,0),
(404750,57,-2278.3206,7142.3315,-51.06922,NULL,0,0,0,100,0),
(404750,58,-2262.498,7168.7812,-57.606777,NULL,0,0,0,100,0), -- Bridge
(404750,59,-2264.755,7194.955,-66.21011,NULL,0,0,0,100,0),
(404750,60,-2267.328,7220.522,-67.56681,NULL,0,0,0,100,0),
(404750,61,-2270.8977,7254.0796,-57.66845,NULL,0,0,0,100,0),
(404750,62,-2269.4712,7264.023,-56.781742,NULL,0,0,0,100,0),
(404750,63,-2264.7258,7268.5215,-55.171524,NULL,0,0,0,100,0),
(404750,64,-2229.8025,7274.86,-39.007236,NULL,0,0,0,100,0),
(404750,65,-2218.1096,7278.915,-36.76726,NULL,0,0,0,100,0),
(404750,66,-2207.7148,7290.1353,-36.06239,NULL,0,0,0,100,0),
(404750,67,-2203.8276,7302.01,-35.273014,NULL,0,0,0,100,0),
(404750,68,-2212.0886,7348.5674,-31.5205,NULL,0,0,0,100,0), -- Road
(404750,69,-2217.8843,7369.8486,-28.585138,NULL,0,0,0,100,0),
(404750,70,-2229.6885,7412.0083,-25.65005,NULL,0,0,0,100,0),
(404750,71,-2238.8828,7442.5264,-19.980007,NULL,0,0,0,100,0),
(404750,72,-2261.5762,7488.05,-19.473541,NULL,0,0,0,100,0), -- -2261.5762 7488.05 -19.473541
(404750,73,-2274.043,7519.2983,-12.459305,NULL,0,0,0,100,0),
(404750,74,-2285.3845,7550.143,-13.929361,NULL,0,0,0,100,0),
(404750,75,-2305.6663,7603.7803,-4.1863613,NULL,0,0,0,100,0), -- -2305.6663 7603.7803 -4.1863613
(404750,76,-2296.0974,7660.022,-10.211891,NULL,0,0,0,100,0), -- Road -2325.3037 7655.789 -8.1658325
(404750,77,-2285.862,7692.5444,-14.201293,NULL,0,0,0,100,0),
(404750,78,-2280.4526,7713.805,-21.26333,NULL,0,0,0,100,0), -- -2366.1436 7711.165 -20.828768
(404750,79,-2277.5671,7741.672,-21.996454,NULL,0,0,0,100,0),
(404750,80,-2274.96,7772.9727,-28.20221,NULL,0,0,0,100,0),
(404750,81,-2273.9377,7808.805,-25.594944,NULL,0,0,0,100,0),
(404750,82,-2275.7966,7848.939,-26.67842,NULL,0,0,0,100,0),
(404750,83,-2281.4656,7887.8965,-31.938694,NULL,0,0,0,100,0),
(404750,84,-2285.1392,7918.631,-30.439959,NULL,0,0,0,100,0),
(404750,85,-2288.2727,7947.6523,-35.541058,NULL,0,0,0,100,0),
(404750,86,-2291.0034,7977.3013,-38.25975,NULL,0,0,0,100,0),
(404750,87,-2293.046,7997.716,-38.4273,NULL,0,0,0,100,0),
(404750,88,-2296.125,8022.953,-37.62637,NULL,0,0,0,100,0),
(404750,89,-2302.5051,8076.876,-37.805103,NULL,0,0,0,100,0),
(404750,90,-2307.4163,8118.151,-37.774666,NULL,0,0,0,100,0),
(404750,91,-2313.27,8135.21,-37.7228,NULL,0,0,0,100,0), -- -2313.27 8135.21 -37.7228
(404750,92,-2326.01,8147.27,-38.0687,NULL,0,0,0,100,0),
(404750,93,-2337.12,8156.41,-38.4812,NULL,0,0,0,100,0), -- -2337.12 8156.41 -38.4812
(404750,94,-2347.76,8168.32,-39.0334,NULL,0,0,0,100,0),
(404750,95,-2358.32,8180.11,-38.6665,NULL,0,0,0,100,0),
(404750,96,-2368.77,8189.27,-37.5052,NULL,0,0,0,100,0),
(404750,97,-2384.14,8199.83,-40.8323,NULL,0,0,0,100,0),
(404750,98,-2395.97,8207.08,-41.4856,NULL,0,0,0,100,0),
(404750,99,-2404.42,8212.29,-39.4423,NULL,0,0,0,100,0),
(404750,100,-2415.06,8217.57,-38.0044,2.65853,4000,0,0,100,0),
*/
(404760,1,-3320.1519,5988.6694,-2.7923079,6.2297,1000,0,0,100,0),
(404760,2,-3286.4268,5981.426,-3.3720152,NULL,0,0,0,100,0),
(404760,3,-3255.7966,5979.2314,-2.2579057,NULL,0,0,0,100,0),
(404760,4,-3212.2197,5960.5767,0.41704637,NULL,0,0,0,100,0),
(404760,5,-3187.5945,5930.3296,1.292508,NULL,0,0,0,100,0),
(404760,6,-3172.3782,5913.739,3.0952077,NULL,0,0,0,100,0),
(404760,7,-3163.9805,5913.536,3.0060842 ,NULL,0,0,0,100,0), -- Road
(404760,8,-3135.8933,5925.041,1.9946003,NULL,0,0,0,100,0),
(404760,9,-3123.34,5927.1304,1.8426248,NULL,0,0,0,100,0),
(404760,10,-3095.101,5944.2827,0.6288182,NULL,0,0,0,100,0),
(404760,11,-3067.377,5958.546,2.104617,NULL,0,0,0,100,0),
(404760,12,-3030.5002,5984.463,4.553689,NULL,0,0,0,100,0),
(404760,13,-3012.8572,5989.4385,5.3271637,NULL,0,0,0,100,0),
(404760,14,-2994.9934,5989.368,6.0207534,NULL,0,0,0,100,0),
(404760,15,-2983.0574,5984.386,6.5362315,NULL,0,0,0,100,0),
(404760,16,-2959.5098,5972.6406,8.750746,NULL,0,0,0,100,0),
(404760,17,-2940.079,5961.938,10.884453,NULL,0,0,0,100,0),
(404760,18,-2925.2598,5957.696,12.341535,NULL,0,0,0,100,0),
(404760,19,-2908.616,5960.1313,14.093441,NULL,0,0,0,100,0),
(404760,20,-2866.6602,5977.51,18.40338,NULL,0,0,0,100,0),
(404760,21,-2850.534,5985.211,22.296541,NULL,0,0,0,100,0),
(404760,22,-2782.5789,6019.5005,30.723497,NULL,0,0,0,100,0),
(404760,23,-2759.2124,6028.017,33.79439,NULL,0,0,0,100,0),
(404760,24,-2718.182,6056.1377,37.64546,NULL,0,0,0,100,0),
(404760,25,-2686.4004,6093.9463,39.35082,NULL,0,0,0,100,0),
(404760,26,-2657.7722,6130.2607,38.73495,NULL,0,0,0,100,0),
(404760,27,-2648.094,6158.1704,37.941193,NULL,0,0,0,100,0),
(404760,28,-2649.8108,6212.7925,36.64241,NULL,0,0,0,100,0),
(404760,29,-2651.9631,6243.191,37.322777,NULL,0,0,0,100,0),
(404760,30,-2639.0269,6296.1587,39.413292,NULL,0,0,0,100,0),
(404760,31,-2611.0073,6325.7427,39.092407,NULL,0,0,0,100,0),
(404760,32,-2585.8901,6344.6016,37.631485,NULL,0,0,0,100,0),
(404760,33,-2528.4255,6358.8853,31.377884,NULL,0,0,0,100,0),
(404760,34,-2500.7134,6375.5693,30.379526,NULL,0,0,0,100,0),
(404760,35,-2484.953,6396.0073,28.85099,NULL,0,0,0,100,0),
(404760,36,-2474.8577,6424.26,25.601894,NULL,0,0,0,100,0),
(404760,37,-2470.0671,6495.9126,17.926437,NULL,0,0,0,100,0),
(404760,38,-2451.303,6540.715,11.482842,NULL,0,0,0,100,0),
(404760,39,-2430.198,6588.449,5.432723,NULL,0,0,0,100,0),
(404760,40,-2428.321,6620.279,3.0465567,NULL,0,0,0,100,0),
(404760,41,-2431.4434,6638.593,2.1066663,NULL,0,0,0,100,0),
(404760,42,-2427.5264,6654.1006,1.400445,NULL,0,0,0,100,0),
(404760,43,-2428.0627,6681.4165,0.39455113,NULL,0,0,0,100,0),
(404760,44,-2440.0598,6736.2803,0.053066038,NULL,0,0,0,100,0),
(404760,45,-2438.7952,6757.726,-0.9205988,NULL,0,0,0,100,0),
(404760,46,-2408.683,6819.683,-2.7610621,NULL,0,0,0,100,0),
(404760,47,-2400.1355,6861.7905,-2.9181197,NULL,0,0,0,100,0),
(404760,48,-2400.867,6899.0312,-1.7470491,NULL,0,0,0,100,0),
(404760,49,-2413.15,6946.1567,-2.8403444,NULL,0,0,0,100,0), -- last road
(404760,50,-2391.5027,6978.586,-3.64627,NULL,0,0,0,100,0),
(404760,51,-2385.0317,6993.3325,-5.9649363,NULL,0,0,0,100,0),
(404760,52,-2372.676,7022.217,-9.95741,NULL,0,0,0,100,0),
(404760,53,-2351.972,7068.8027,-13.496573,NULL,0,0,0,100,0),
(404760,54,-2348.5916,7066.2656,-14.25403,NULL,0,0,0,100,0),
(404760,55,-2306.586,7102.6353,-23.680712,NULL,0,0,0,100,0),
(404760,56,-2288.8767,7130.4727,-43.704544,NULL,0,0,0,100,0),
(404760,57,-2278.3206,7142.3315,-51.06922,NULL,0,0,0,100,0),
(404760,58,-2262.498,7168.7812,-57.606777,NULL,0,0,0,100,0), -- Bridge
(404760,59,-2264.755,7194.955,-66.21011,NULL,0,0,0,100,0),
(404760,60,-2267.328,7220.522,-67.56681,NULL,0,0,0,100,0),
(404760,61,-2270.8977,7254.0796,-57.66845,NULL,0,0,0,100,0),
(404760,62,-2269.4712,7264.023,-56.781742,NULL,0,0,0,100,0),
(404760,63,-2264.7258,7268.5215,-55.171524,NULL,0,0,0,100,0),
(404760,64,-2229.8025,7274.86,-39.007236,NULL,0,0,0,100,0),
(404760,65,-2218.1096,7278.915,-36.76726,NULL,0,0,0,100,0),
(404760,66,-2207.7148,7290.1353,-36.06239,NULL,0,0,0,100,0),
(404760,67,-2203.8276,7302.01,-35.273014,NULL,0,0,0,100,0),
(404760,68,-2212.0886,7348.5674,-31.5205,NULL,0,0,0,100,0), -- Road
(404760,69,-2217.8843,7369.8486,-28.585138,NULL,0,0,0,100,0),
(404760,70,-2229.6885,7412.0083,-25.65005,NULL,0,0,0,100,0),
(404760,71,-2238.8828,7442.5264,-19.980007,NULL,0,0,0,100,0),
(404760,72,-2261.5762,7488.05,-19.473541,NULL,0,0,0,100,0),
(404760,73,-2274.043,7519.2983,-12.459305,NULL,0,0,0,100,0),
(404760,74,-2285.3845,7550.143,-13.929361,NULL,0,0,0,100,0),
(404760,75,-2305.6663,7603.7803,-4.1863613,NULL,0,0,0,100,0), -- -2305.6663 7603.7803 -4.1863613
(404760,76,-2298.7454,7643.8145,-9.275155,NULL,0,0,0,100,0),
(404760,77,-2291.206,7684.1997,-12.344684,NULL,0,0,0,100,0),
(404760,78,-2285.4858,7714.8413,-21.523024,NULL,0,0,0,100,0),
(404760,79,-2280.9219,7739.289,-21.924921,NULL,0,0,0,100,0),
(404760,80,-2279.157,7772.6387,-28.231365,NULL,0,0,0,100,0),
(404760,81,-2280.1587,7809.0513,-25.929941,NULL,0,0,0,100,0),
(404760,82,-2286.1118,7827.332,-27.231977,NULL,0,0,0,100,0),
(404760,83,-2297.12,7848.94,-30.4255,NULL,0,0,0,100,0),
(404760,84,-2299.1,7855.22,-31.5119,NULL,0,0,0,100,0),
(404760,85,-2304.97,7869.3,-33.6264,NULL,0,0,0,100,0),
(404760,86,-2310.6,7885.7,-36.7148,NULL,0,0,0,100,0),
(404760,87,-2315.58,7897.69,-36.2731,NULL,0,0,0,100,0),
(404760,88,-2322.29,7913.85,-35.4619,NULL,0,0,0,100,0),
(404760,89,-2324.87,7930.59,-36.2939,NULL,0,0,0,100,0),
(404760,90,-2326.62,7941.83,-37.0868,NULL,0,0,0,100,0),
(404760,91,-2332.33,7954.6,-38.5053,NULL,0,0,0,100,0),
(404760,92,-2337.86,7965.23,-40.3403,NULL,0,0,0,100,0),
(404760,93,-2342.11,7973.1,-41.8945,NULL,0,0,0,100,0),
(404760,94,-2350.94,7987.8,-43.8866,NULL,0,0,0,100,0),
(404760,95,-2360.01,8000.48,-44.3554,NULL,0,0,0,100,0),
(404760,96,-2364.95,8009.58,-42.1108,NULL,0,0,0,100,0),
(404760,97,-2371.6,8018.86,-42.377,NULL,0,0,0,100,0),
(404760,98,-2377.15,8026.67,-43.9684,NULL,0,0,0,100,0),
(404760,99,-2383.49,8038.39,-43.2112,NULL,0,0,0,100,0),
(404760,100,-2389.7,8051.49,-44.9951,NULL,0,0,0,100,0),
(404760,101,-2397.24,8065.66,-45.2933,NULL,0,0,0,100,0),
(404760,102,-2400.62,8071.78,-43.7882,NULL,0,0,0,100,0),
(404760,103,-2405.28,8080.43,-44.8051,NULL,0,0,0,100,0),
(404760,104,-2414.09,8096.78,-42.7268,NULL,0,0,0,100,0),
(404760,105,-2414.19,8107.76,-43.7943,NULL,0,0,0,100,0),
(404760,106,-2416.34,8128.6,-41.3327,NULL,0,0,0,100,0),
(404760,107,-2421.42,8140.34,-40.3193,NULL,0,0,0,100,0),
(404760,108,-2426.74,8151.71,-40.4096,NULL,0,0,0,100,0),
(404760,109,-2440.01,8173.9,-38.1841,2.08833,4000,0,0,100,0),

(452040,1,-2082.11,8144.33,-9.38167,NULL,0,0,0,100,0), -- USED FOR GROUP LEADER
(452040,2,-2090.07,8144.3,-9.68601,NULL,0,0,0,100,0),
(452040,3,-2104.75,8146.88,-11.5349,NULL,0,0,0,100,0),
(452040,4,-2117.46,8150.49,-13.9854,NULL,0,0,0,100,0),
(452040,5,-2132.37,8154.47,-16.5653,NULL,0,0,0,100,0),
(452040,6,-2162.07,8159.93,-22.7686,NULL,0,0,0,100,0),
(452040,7,-2181.45,8166.97,-24.183,NULL,0,0,0,100,0),
(452040,8,-2198.64,8173.96,-25.4028,NULL,0,0,0,100,0),
(452040,9,-2217.2,8192.97,-27.2827,NULL,0,0,0,100,0),
(452040,10,-2228.8,8200.04,-28.4579,NULL,0,0,0,100,0),
(452040,11,-2246.08,8207.95,-30.9994,NULL,0,0,0,100,0), -- -2246.08 8207.95 -30.9994
(452040,12,-2258.95,8213.47,-31.4389,NULL,0,0,0,100,0),
(452040,13,-2271.81,8218.98,-30.8967,NULL,0,0,0,100,0),
(452040,14,-2287.73,8223.45,-32.2008,NULL,0,0,0,100,0),
(452040,15,-2300.97,8228.01,-33.8134,NULL,0,0,0,100,0),
(452040,16,-2312.92,8233.68,-36.2357,NULL,0,0,0,100,0),
(452040,17,-2326.3,8240.15,-37.6111,NULL,0,0,0,100,0),
(452040,18,-2342.98,8249.96,-38.1975,NULL,0,0,0,100,0),
(452040,19,-2355.6,8256.92,-38.9036,NULL,0,0,0,100,0),
(452040,20,-2366.56,8262.79,-40.5378,NULL,0,0,0,100,0),
(452040,21,-2377.26,8267.13,-40.3544,NULL,0,0,0,100,0),
(452040,22,-2390.06,8270.31,-38.3435,NULL,0,0,0,100,0),
(452040,23,-2407.86,8275.86,-37.7765,NULL,3000,0,0,100,0), -- -2407.86 8275.86 -37.7765
(452040,24,-2407.86,8275.86,-37.7765,NULL,0,0,0,100,0),

(465700,1,-3307.477,5987.452,-2.8680167,5.9847,1000,0,0,100,0),
(465700,2,-3286.4268,5981.426,-3.3720152,NULL,0,0,0,100,0),
(465700,3,-3255.7966,5979.2314,-2.2579057,NULL,0,0,0,100,0),
(465700,4,-3212.2197,5960.5767,0.41704637,NULL,0,0,0,100,0),
(465700,5,-3187.5945,5930.3296,1.292508,NULL,0,0,0,100,0),
(465700,6,-3172.3782,5913.739,3.0952077,NULL,0,0,0,100,0),
(465700,7,-3163.9805,5913.536,3.0060842 ,NULL,0,0,0,100,0), -- Road
(465700,8,-3135.8933,5925.041,1.9946003,NULL,0,0,0,100,0),
(465700,9,-3123.34,5927.1304,1.8426248,NULL,0,0,0,100,0),
(465700,10,-3095.101,5944.2827,0.6288182,NULL,0,0,0,100,0),
(465700,11,-3067.377,5958.546,2.104617,NULL,0,0,0,100,0),
(465700,12,-3030.5002,5984.463,4.553689,NULL,0,0,0,100,0),
(465700,13,-3012.8572,5989.4385,5.3271637,NULL,0,0,0,100,0),
(465700,14,-2994.9934,5989.368,6.0207534,NULL,0,0,0,100,0),
(465700,15,-2983.0574,5984.386,6.5362315,NULL,0,0,0,100,0),
(465700,16,-2959.5098,5972.6406,8.750746,NULL,0,0,0,100,0),
(465700,17,-2940.079,5961.938,10.884453,NULL,0,0,0,100,0),
(465700,18,-2925.2598,5957.696,12.341535,NULL,0,0,0,100,0),
(465700,19,-2908.616,5960.1313,14.093441,NULL,0,0,0,100,0),
(465700,20,-2866.6602,5977.51,18.40338,NULL,0,0,0,100,0),
(465700,21,-2850.534,5985.211,22.296541,NULL,0,0,0,100,0),
(465700,22,-2782.5789,6019.5005,30.723497,NULL,0,0,0,100,0),
(465700,23,-2759.2124,6028.017,33.79439,NULL,0,0,0,100,0),
(465700,24,-2718.182,6056.1377,37.64546,NULL,0,0,0,100,0),
(465700,25,-2686.4004,6093.9463,39.35082,NULL,0,0,0,100,0),
(465700,26,-2657.7722,6130.2607,38.73495,NULL,0,0,0,100,0),
(465700,27,-2648.094,6158.1704,37.941193,NULL,0,0,0,100,0),
(465700,28,-2649.8108,6212.7925,36.64241,NULL,0,0,0,100,0),
(465700,29,-2651.9631,6243.191,37.322777,NULL,0,0,0,100,0),
(465700,30,-2639.0269,6296.1587,39.413292,NULL,0,0,0,100,0),
(465700,31,-2611.0073,6325.7427,39.092407,NULL,0,0,0,100,0),
(465700,32,-2585.8901,6344.6016,37.631485,NULL,0,0,0,100,0),
(465700,33,-2528.4255,6358.8853,31.377884,NULL,0,0,0,100,0),
(465700,34,-2500.7134,6375.5693,30.379526,NULL,0,0,0,100,0),
(465700,35,-2484.953,6396.0073,28.85099,NULL,0,0,0,100,0),
(465700,36,-2474.8577,6424.26,25.601894,NULL,0,0,0,100,0),
(465700,37,-2470.0671,6495.9126,17.926437,NULL,0,0,0,100,0),
(465700,38,-2451.303,6540.715,11.482842,NULL,0,0,0,100,0),
(465700,39,-2430.198,6588.449,5.432723,NULL,0,0,0,100,0),
(465700,40,-2428.321,6620.279,3.0465567,NULL,0,0,0,100,0),
(465700,41,-2431.4434,6638.593,2.1066663,NULL,0,0,0,100,0),
(465700,42,-2427.5264,6654.1006,1.400445,NULL,0,0,0,100,0),
(465700,43,-2428.0627,6681.4165,0.39455113,NULL,0,0,0,100,0),
(465700,44,-2440.0598,6736.2803,0.053066038,NULL,0,0,0,100,0),
(465700,45,-2438.7952,6757.726,-0.9205988,NULL,0,0,0,100,0),
(465700,46,-2408.683,6819.683,-2.7610621,NULL,0,0,0,100,0),
(465700,47,-2400.1355,6861.7905,-2.9181197,NULL,0,0,0,100,0),
(465700,48,-2400.867,6899.0312,-1.7470491,NULL,0,0,0,100,0),
(465700,49,-2413.15,6946.1567,-2.8403444,NULL,0,0,0,100,0), -- last road
(465700,50,-2391.5027,6978.586,-3.64627,NULL,0,0,0,100,0),
(465700,51,-2385.0317,6993.3325,-5.9649363,NULL,0,0,0,100,0),
(465700,52,-2372.676,7022.217,-9.95741,NULL,0,0,0,100,0),
(465700,53,-2351.972,7068.8027,-13.496573,NULL,0,0,0,100,0),
(465700,54,-2348.5916,7066.2656,-14.25403,NULL,0,0,0,100,0),
(465700,55,-2306.586,7102.6353,-23.680712,NULL,0,0,0,100,0),
(465700,56,-2288.8767,7130.4727,-43.704544,NULL,0,0,0,100,0),
(465700,57,-2278.3206,7142.3315,-51.06922,NULL,0,0,0,100,0),
(465700,58,-2262.498,7168.7812,-57.606777,NULL,0,0,0,100,0), -- Bridge
(465700,59,-2264.755,7194.955,-66.21011,NULL,0,0,0,100,0),
(465700,60,-2267.328,7220.522,-67.56681,NULL,0,0,0,100,0),
(465700,61,-2270.8977,7254.0796,-57.66845,NULL,0,0,0,100,0),
(465700,62,-2269.4712,7264.023,-56.781742,NULL,0,0,0,100,0),
(465700,63,-2264.7258,7268.5215,-55.171524,NULL,0,0,0,100,0),
(465700,64,-2229.8025,7274.86,-39.007236,NULL,0,0,0,100,0),
(465700,65,-2218.1096,7278.915,-36.76726,NULL,0,0,0,100,0),
(465700,66,-2207.7148,7290.1353,-36.06239,NULL,0,0,0,100,0),
(465700,67,-2203.8276,7302.01,-35.273014,NULL,0,0,0,100,0),
(465700,68,-2212.0886,7348.5674,-31.5205,NULL,0,0,0,100,0), -- Road
(465700,69,-2217.8843,7369.8486,-28.585138,NULL,0,0,0,100,0),
(465700,70,-2229.6885,7412.0083,-25.65005,NULL,0,0,0,100,0),
(465700,71,-2238.8828,7442.5264,-19.980007,NULL,0,0,0,100,0),
(465700,72,-2261.5762,7488.05,-19.473541,NULL,0,0,0,100,0),
(465700,73,-2274.043,7519.2983,-12.459305,NULL,0,0,0,100,0),
(465700,74,-2285.3845,7550.143,-13.929361,NULL,0,0,0,100,0),
(465700,75,-2305.6663,7603.7803,-4.1863613,NULL,0,0,0,100,0),
(465700,76,-2325.3037,7655.789,-8.1658325,NULL,0,0,0,100,0),
(465700,77,-2348.4263,7687.0835,-12.801422,NULL,0,0,0,100,0),
(465700,78,-2366.1436,7711.165,-20.828768,NULL,0,0,0,100,0),
(465700,79,-2393.4214,7747.3447,-26.686943,NULL,0,0,0,100,0),
(465700,80,-2424.3398,7788.231,-33.18108,NULL,0,0,0,100,0),
(465700,81,-2446.7246,7818.7314,-39.531654,NULL,0,0,0,100,0),
(465700,82,-2465.5703,7863.5254,-48.429375,NULL,0,0,0,100,0),
(465700,83,-2476.4392,7889.2305,-52.036594,NULL,0,0,0,100,0),
(465700,84,-2502.575,7951.788,-53.48291,NULL,0,0,0,100,0),
(465700,85,-2514.2454,8009.644,-50.30695,NULL,0,0,0,100,0),
(465700,86,-2523.2195,8027.8105,-48.584156,NULL,0,0,0,100,0),
(465700,87,-2532.1384,8046.062,-48.59957,NULL,0,0,0,100,0),
(465700,88,-2544.3855,8070.122,-45.84114,NULL,0,0,0,100,0),
(465700,89,-2551.831,8084.7896,-47.309685,NULL,0,0,0,100,0), -- Road before
(465700,90,-2553.4822,8097.111,-46.310966,NULL,0,0,0,100,0),
(465700,91,-2540.7043,8121.171,-41.221226,NULL,0,0,0,100,0),
(465700,92,-2517.5596,8157.095,-39.005936,0.9976,4000,0,0,100,0),

/*
(465700,1,-2622.32,7987.03,-48.9066,3.93488,1000,0,0,100,0),
(465700,2,-2609.8418,8016.872,-49.047832,NULL,0,0,0,100,0),
(465700,3,-2591.1296,8044.382,-49.111214,NULL,0,0,0,100,0),
(465700,4,-2582.922,8057.2856,-47.26196,NULL,0,0,0,100,0),
(465700,5,-2566.7139,8082.826,-47.95784,NULL,0,0,0,100,0),
(465700,6,-2555.2178,8098.9023,-45.926296,NULL,0,0,0,100,0),
(465700,7,-2540.7043,8121.171,-41.221226,NULL,0,0,0,100,0),
(465700,8,-2517.5596,8157.095,-39.005936,0.9976,4000,0,0,100,0),
*/

(468190,1,-1385.1755,7141.2524,34.4091,0.8204,1000,0,0,100,0),
(468190,2,-1369.8617,7158.193,33.091766,NULL,0,0,0,100,0),
(468190,3,-1362.4292,7167.0522,33.43965,NULL,0,0,0,100,0),
(468190,4,-1342.3207,7207.391,33.016766,NULL,0,0,0,100,0),
(468190,5,-1328.015,7211.2563,33.121876,NULL,0,0,0,100,0),
(468190,6,-1320.124,7219.8486,33.72135,NULL,0,0,0,100,0),
(468190,7,-1318.3066,7231.2617,33.098328,NULL,0,0,0,100,0),
(468190,8,-1321.225,7244.13,32.75324,NULL,0,0,0,100,0),
(468190,9,-1300.1835,7268.2173,34.154846,NULL,0,0,0,100,0),
(468190,10,-1285.2401,7287.801,33.639275,NULL,0,0,0,100,0), -- Bridge
(468190,11,-1271.6543,7311.88,33.56064,NULL,0,0,0,100,0),
(468190,12,-1259.2621,7333.446,34.132015,NULL,0,0,0,100,0),
(468190,13,-1247.2236,7339.345,34.072792,NULL,0,0,0,100,0), -- crossroad in village for other AOCs
(468190,14,-1230.8788,7339.4214,33.97174,NULL,0,0,0,100,0),
(468190,15,-1222.3367,7347.2056,33.98173,NULL,0,0,0,100,0),
(468190,16,-1221.0349,7363.299,34.065845,NULL,0,0,0,100,0),
(468190,17,-1212.0016,7401.9473,28.567146,NULL,0,0,0,100,0),
(468190,18,-1215.287,7432.5996,25.346327,NULL,0,0,0,100,0),
(468190,19,-1222.976,7474.5234,22.171413,NULL,0,0,0,100,0),
(468190,20,-1222.4023,7491.0967,21.030874,NULL,0,0,0,100,0),
(468190,21,-1215.069,7531.4204,18.817158,NULL,0,0,0,100,0),
(468190,22,-1212.7814,7566.023,16.856365,NULL,0,0,0,100,0),
(468190,23,-1220.5917,7604.351,13.763281,NULL,0,0,0,100,0),
(468190,24,-1228.0009,7635.1113,11.699391,NULL,0,0,0,100,0),
(468190,25,-1245.3334,7672.251,9.369129,NULL,0,0,0,100,0),
(468190,26,-1275.568,7706.766,4.247162,NULL,0,0,0,100,0),
(468190,27,-1327.175,7748.048,-3.4481077,NULL,0,0,0,100,0),
(468190,28,-1343.7094,7758.163,-5.702313,NULL,0,0,0,100,0),
(468190,29,-1373.8337,7793.0884,-11.236284,NULL,0,0,0,100,0),
(468190,30,-1390.8589,7823.436,-14.478462,NULL,0,0,0,100,0),
(468190,31,-1413.1804,7850.731,-19.985529,NULL,0,0,0,100,0), -- bridge outside halaa
(468190,32,-1432.6011,7866.076,-28.188118,NULL,0,0,0,100,0),
(468190,33,-1450.3383,7879.5957,-29.732811,NULL,0,0,0,100,0),
(468190,34,-1480.2723,7902.536,-20.014694,NULL,0,0,0,100,0),
(468190,35,-1492.1141,7910.238,-19.238626,NULL,0,0,0,100,0),
(468190,36,-1517.7153,7921.564,-20.160673,NULL,0,0,0,100,0),
(468190,37,-1538.4877,7920.8984,-21.110117,NULL,0,0,0,100,0),
(468190,38,-1567.5662,7953.3237,-22.723005,NULL,0,0,0,100,0), -- middle of halaa
(468190,39,-1586.0834,7979.418,-23.182325,NULL,0,0,0,100,0),
(468190,40,-1608.3778,7995.0034,-24.408056,NULL,0,0,0,100,0),
(468190,41,-1628.6028,7996.903,-25.03695,NULL,0,0,0,100,0),
(468190,42,-1661.2786,7993.3447,-27.202646,NULL,0,0,0,100,0), -- Bridge outside halaa
(468190,43,-1685.5671,7994.3765,-35.39325,NULL,0,0,0,100,0),
(468190,44,-1712.9407,7994.96,-36.441914,NULL,0,0,0,100,0),
(468190,45,-1745.1592,7995.8994,-27.170912,NULL,0,0,0,100,0),
(468190,46,-1797.3901,8003.483,-26.33396,NULL,0,0,0,100,0),
(468190,47,-1836.0161,8004.7563,-24.83869,NULL,0,0,0,100,0),
(468190,48,-1861.7947,8018.456,-23.490534,NULL,0,0,0,100,0),
(468190,49,-1876.4352,8036.4956,-21.499758,NULL,0,0,0,100,0),
(468190,50,-1884.3806,8081.822,-20.466213,NULL,0,0,0,100,0),
(468190,51,-1893.746,8103.846,-19.742716,NULL,0,0,0,100,0),
(468190,52,-1915.5962,8133.2817,-16.156551,NULL,0,0,0,100,0),
(468190,53,-1942.0046,8155.728,-11.613013,NULL,0,0,0,100,0),
(468190,54,-1966.9492,8176.1475,-4.5604205,NULL,0,0,0,100,0),
(468190,55,-1981.349,8190.644,-0.23038939,NULL,0,0,0,100,0),
(468190,56,-1989.4761,8203.606,0.8877249,NULL,0,0,0,100,0), -- Road
(468190,57,-2016.3152,8209.317,-2.8471315,NULL,0,0,0,100,0),
(468190,58,-2038.1218,8210.388,-6.187318,NULL,0,0,0,100,0),
(468190,59,-2066.2642,8211.197,-7.664237,NULL,0,0,0,100,0),
(468190,60,-2103.2698,8211.69,-13.49222,NULL,0,0,0,100,0), -- -2103.2698 8211.69 -13.49222
(468190,61,-2137.3367,8212.947,-19.234873,NULL,0,0,0,100,0),
(468190,62,-2176.6714,8213.936,-24.86784,NULL,0,0,0,100,0), -- -2176.6714 8213.936 -24.86784
(468190,63,-2192.9597,8205.8,-29.26555,NULL,0,0,0,100,0),
(468190,64,-2216.6592,8193.874,-27.21332,NULL,0,0,0,100,0), -- -2216.6592 8193.874 -27.21332
(468190,65,-2252.0547,8211.846,-31.760881,NULL,0,0,0,100,0),
(468190,66,-2279.03,8225.249,-30.949734,NULL,0,0,0,100,0),
(468190,67,-2311.886,8239.27,-36.306946,NULL,0,0,0,100,0),
(468190,68,-2362.0464,8258.785,-40.20059,NULL,0,0,0,100,0),
(468190,69,-2411.0764,8273.322,-37.83051,2.8533,4000,0,0,100,0),

(669460,1,-1812.61,8813.18,30.3396,6.13478,1000,0,0,100,0),
(669460,2,-1828.5886,8792.012,30.295025,NULL,0,0,0,100,0),
(669460,3,-1850.4839,8772.01,30.137064,NULL,0,0,0,100,0),
(669460,4,-1866.0702,8751.818,25.518957,NULL,0,0,0,100,0),
(669460,5,-1906.055,8726.204,24.816692,NULL,0,0,0,100,0), -- Road -1906.055 8726.204 24.816692
(669460,6,-1939.7725,8723.95,23.72065,NULL,0,0,0,100,0),
(669460,7,-1963.3315,8719.071,22.06469,NULL,0,0,0,100,0),
(669460,8,-2012.6029,8717.849,19.543402,NULL,0,0,0,100,0),
(669460,9,-2057.846,8691.151,18.108791,NULL,0,0,0,100,0),
(669460,10,-2102.6545,8672.385,14.662122,NULL,0,0,0,100,0),
(669460,11,-2141.2754,8655.491,10.422526,NULL,0,0,0,100,0),
(669460,12,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0),
(669460,13,-2220.2632,8594.798,-9.132824,NULL,0,0,0,100,0),
(669460,14,-2246.6436,8554.992,-14.9107895,NULL,0,0,0,100,0),
(669460,15,-2263.0796,8530.248,-22.470377,NULL,0,0,0,100,0),
(669460,16,-2287.9116,8502.958,-27.34369,NULL,0,0,0,100,0),
(669460,17,-2315.4568,8472.449,-30.118395,NULL,0,0,0,100,0),
(669460,18,-2336.4243,8449.224,-33.599926,NULL,0,0,0,100,0),
(669460,19,-2358.5469,8424.719,-36.637638,NULL,0,0,0,100,0),
(669460,20,-2369.5522,8412.528,-36.345074,NULL,0,0,0,100,0),
(669460,21,-2380.7686,8400.731,-39.421844,NULL,0,0,0,100,0), -- Road before -2380.7686 8400.731 -39.421844
(669460,22,-2416.2593,8364.23,-38.7378,3.9411,4000,0,0,100,0),

(669470,1,-2114.42,8743.48,11.699,5.65003,1000,0,0,100,0),
(669470,2,-2122.283,8715.734,8.102823,NULL,0,0,0,100,0),
(669470,3,-2131.4773,8690.752,11.054958,NULL,0,0,0,100,0),
(669470,4,-2156.4536,8657.972,5.105675,NULL,0,0,0,100,0),
(669470,5,-2174.8618,8644.374,1.8064208,NULL,0,0,0,100,0),
(669470,6,-2190.249,8633.4375,-3.466632,NULL,0,0,0,100,0), -- fork off of 14337 pathing -2190.249 8633.4375 -3.466632
(669470,7,-2209.5688,8618.111,-5.045476,NULL,0,0,0,100,0),
(669470,8,-2244.7185,8592.648,-13.248083,NULL,0,0,0,100,0),
(669470,9,-2296.707,8569.719,-22.03277,NULL,0,0,0,100,0),
(669470,10,-2346.3037,8539.363,-30.321589,NULL,0,0,0,100,0),
(669470,11,-2368.4402,8524.008,-30.689281,NULL,0,0,0,100,0),
(669470,12,-2385.7493,8500.791,-30.775805,NULL,0,0,0,100,0),
(669470,13,-2409.1252,8469.437,-35.766106,NULL,0,0,0,100,0),
(669470,14,-2418.5503,8457.686,-37.630142,NULL,0,0,0,100,0), -- Road before -2418.5503 8457.686 -37.630142
(669470,15,-2429.7593,8442.734,-38.692036,NULL,0,0,0,100,0),
(669470,16,-2448.6367,8417.346,-37.439793,4.073,4000,0,0,100,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-14337,-14338,-14339,-14340,-14341,-14342,-14343,-14977,-14978,-14979,-14980,-14981,-14982,-14983,-14984,-14985,-20556,-21776,-23111,-24670,-24761,-24794,-25100,-26564,-26559,-31807,-31833,-32072,-40475,-40476,-46570,-46819,-66946,-66947,18688) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1868800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-14337,0,1000,0,108,0,100,512,26,143370,0,0,0,0,41,3000,35,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 26 Reached - Despawn'),
(-14338,0,1000,0,108,0,100,512,30,143380,0,0,0,0,41,3000,20,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 30 Reached - Despawn'),
(-14339,0,1000,0,108,0,100,512,12,143390,0,0,0,0,41,3000,40,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 12 Reached - Despawn'),
(-14340,0,1000,0,108,0,100,512,70,143400,0,0,0,0,41,3000,12,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 70 Reached - Despawn'),
(-14341,0,1000,0,108,0,100,512,43,143410,0,0,0,0,41,3000,15,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 43 Reached - Despawn'),
(-14342,0,1000,0,108,0,100,512,12,143420,0,0,0,0,41,3000,15,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 12 Reached - Despawn'),
(-14343,0,1000,0,108,0,100,512,38,143430,0,0,0,0,41,3000,20,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 38 Reached - Despawn'),
(-14977,0,1000,0,108,0,100,512,18,149770,0,0,0,0,41,3000,80,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 18 Reached - Despawn'),
(-14978,0,1000,0,108,0,100,512,17,149780,0,0,0,0,41,3000,90,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 17 Reached - Despawn'),
(-14979,0,1000,0,108,0,100,512,92,149790,0,0,0,0,41,3000,14,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 92 Reached - Despawn'),
(-14980,0,1000,0,108,0,100,512,43,149800,0,0,0,0,41,3000,23,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 43 Reached - Despawn'),
(-14981,0,1000,0,108,0,100,512,43,149810,0,0,0,0,41,3000,18,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 43 Reached - Despawn'),
(-14982,0,1000,0,108,0,100,512,93,149820,0,0,0,0,41,3000,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 93 Reached - Despawn'),
(-14983,0,1000,0,108,0,100,512,66,149830,0,0,0,0,41,3000,12,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 66 Reached - Despawn'),
(-14984,0,1000,0,108,0,100,512,74,149840,0,0,0,0,41,3000,15,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 74 Reached - Despawn'),
(-14985,0,1000,0,108,0,100,512,53,149850,0,0,0,0,41,3000,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 53 Reached - Despawn'),
(-20556,0,1000,0,108,0,100,512,53,205560,0,0,0,0,41,3000,9,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 53 Reached - Despawn'),
(-21776,0,1000,0,108,0,100,512,72,217760,0,0,0,0,41,3000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 72 Reached - Despawn'),
(-23111,0,1000,0,108,0,100,512,82,231110,0,0,0,0,41,3000,15,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 82 Reached - Despawn'),
(-24670,0,1000,0,108,0,100,512,73,246700,0,0,0,0,41,3000,17,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 73 Reached - Despawn'),
(-24761,0,1000,0,108,0,100,512,78,247610,0,0,0,0,41,3000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 78 Reached - Despawn'),
(-24794,0,1000,0,108,0,100,512,14,247940,0,0,0,0,41,3000,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 14 Reached - Despawn'),
(-25100,0,1000,0,108,0,100,512,68,251000,0,0,0,0,41,3000,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 68 Reached - Despawn'),
(-26564,0,1000,0,108,0,100,512,67,265640,0,0,0,0,41,3000,6,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 67 Reached - Despawn'),
(-26559,0,1000,0,108,0,100,512,18,265590,0,0,0,0,41,3000,80,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 18 Reached - Despawn'),
(-31807,0,1000,0,108,0,100,512,67,318070,0,0,0,0,41,3000,7,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 67 Reached - Despawn'),
(-31833,0,1000,0,108,0,100,512,75,318330,0,0,0,0,41,3000,15,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 75 Reached - Despawn'),
(-32072,0,1000,0,108,0,100,512,68,320720,0,0,0,0,41,3000,4,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 68 Reached - Despawn'),
(-46570,0,1000,0,108,0,100,512,23,465700,0,0,0,0,41,3000,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 23 Reached - Despawn'),
(-46819,0,1000,0,108,0,100,512,69,468190,0,0,0,0,41,3000,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 69 Reached - Despawn'),
(-40475,0,1000,0,108,0,100,512,23,404750,0,0,0,0,41,3000,35,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 23 Reached - Despawn'),
(-40476,0,1000,0,108,0,100,512,109,404760,0,0,0,0,41,3000,19,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 109 Reached - Despawn'),
(-66946,0,1000,0,108,0,100,512,22,669460,0,0,0,0,41,3000,70,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 22 Reached - Despawn'),
(-66947,0,1000,0,108,0,100,512,16,669470,0,0,0,0,41,3000,60,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Waypoint 16 Reached - Despawn'),

(18688,0,0,1,8,0,100,1,34063,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Spellhit Soul Mirror - Store Target List'),
(18688,0,1,0,61,0,100,0,0,0,0,0,0,0,80,1868800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Spellhit Soul Mirror (Linked) - Run Script'),
(18688,0,2,0,11,0,100,1,0,0,0,0,0,0,75,32648,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Respawn - Add Aura \'Ancestor Invisibility Aura\''),

(1868800,9,0,0,0,0,100,0,0,0,0,0,0,0,235,120000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - Pause Waypoint'),
(1868800,9,1,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - Say text'),
(1868800,9,2,0,0,0,100,0,2000,2000,0,0,0,0,11,34064,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - cast Soul Split'),
(1868800,9,3,0,0,0,100,0,1000,1000,0,0,0,0,100,1,0,0,0,0,0,11,19480,5,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - Send Target List to \`Darkened Spirit\`'),
-- (1868800,9,1,0,0,0,100,0,0,0,0,0,0,0,116,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - Set corpse delay'),
(1868800,9,4,0,0,0,100,0,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - Despawn');
-- (1868800,9,2,0,0,0,100,0,0,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ancient Orc Ancestor - On Script - Kill Self');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18688);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18688,0,0,'Ancestors watch over you,, kind one...',12,0,100,0,0,0,16841,0,'Ancient Orc Ancestor'),
(18688,0,1,'Cease your crying! STOP!',12,0,100,0,0,0,15706,0,'Ancient Orc Ancestor'),
(18688,0,2,'I remember everything...',12,0,100,0,0,0,15701,0,'Ancient Orc Ancestor'),
(18688,0,3,'It cannot be...',12,0,100,0,0,0,16839,0,'Ancient Orc Ancestor'),
(18688,0,4,'It comes for you...',12,0,100,0,0,0,16838,0,'Ancient Orc Ancestor'),
(18688,0,5,'The spirits call... I am consumed.',12,0,100,0,0,0,15704,0,'Ancient Orc Ancestor'),
(18688,0,6,'Cannot control... It draws me in... The void grows...',12,0,100,0,0,0,15710,0,'Ancient Orc Ancestor'),
(18688,0,7,'It is dying. It is dying. It is dying.',12,0,100,0,0,0,15707,0,'Ancient Orc Ancestor'),
(18688,0,8,'The cold embrace awaits...',12,0,100,0,0,0,16837,0,'Ancient Orc Ancestor'),
(18688,0,9,'The pain is unbearable.',12,0,100,0,0,0,15705,0,'Ancient Orc Ancestor'),
(18688,0,10,'What is happening to me?',12,0,100,0,0,0,15703,0,'Ancient Orc Ancestor'),
(18688,0,11,'What is this trickery? I... ARGH...',12,0,100,0,0,0,16840,0,'Ancient Orc Ancestor'),
(18688,0,12,'What will become of us when it falls?',12,0,100,0,0,0,15709,0,'Ancient Orc Ancestor'),
(18688,0,13,'What... What have I become? Arrrgghhh...',12,0,100,0,0,0,16835,0,'Ancient Orc Ancestor'),
(18688,0,14,'Thank you...',12,0,100,0,0,0,16836,0,'Ancient Orc Ancestor'); 


-- Darkened Spirit
DELETE FROM `creature_text` WHERE `CreatureID` IN (19480);
/*
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19480,0,0,'Ancestors watch over you,, kind one...',12,0,100,0,0,0,16841,0,'Darkened Spirit'),
(19480,0,1,'Cease your crying! STOP!',12,0,100,0,0,0,15706,0,'Darkened Spirit'),
(19480,0,2,'I remember everything...',12,0,100,0,0,0,15701,0,'Darkened Spirit'),
(19480,0,3,'It cannot be...',12,0,100,0,0,0,16839,0,'Darkened Spirit'),
(19480,0,4,'It comes for you...',12,0,100,0,0,0,16838,0,'Darkened Spirit'),
(19480,0,5,'The spirits call... I am consumed.',12,0,100,0,0,0,15704,0,'Darkened Spirit'),
(19480,0,6,'Cannot control... It draws me in... The void grows...',12,0,100,0,0,0,15710,0,'Darkened Spirit'),
(19480,0,7,'It is dying. It is dying. It is dying.',12,0,100,0,0,0,15707,0,'Darkened Spirit'),
(19480,0,8,'The cold embrace awaits...',12,0,100,0,0,0,16837,0,'Darkened Spirit'),
(19480,0,9,'The pain is unbearable.',12,0,100,0,0,0,15705,0,'Darkened Spirit'),
(19480,0,10,'What is happening to me?',12,0,100,0,0,0,15703,0,'Darkened Spirit'),
(19480,0,11,'What is this trickery? I... ARGH...',12,0,100,0,0,0,16840,0,'Darkened Spirit'),
(19480,0,12,'What will become of us when it falls?',12,0,100,0,0,0,15709,0,'Darkened Spirit'),
(19480,0,13,'What... What have I become? Arrrgghhh...',12,0,100,0,0,0,16835,0,'Darkened Spirit'),
(19480,0,14,'Thank you...',12,0,100,0,0,0,16836,0,'Darkened Spirit'); 
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19480) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19480,0,0,0,0,0,100,0,5000,7000,11000,15000,0,0,11,31293,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Darkened Spirit - In Combat - Cast \'Consuming Shadows\''),
(19480,0,1,2,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Darkened Spirit - On Just Summoned - Cast Spirit Spawn'),
(19480,0,2,0,61,0,100,0,0,0,0,0,0,0,41,120000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Darkened Spirit - On Just Summoned (Linked) - Despawn In 120000 ms'),
(19480,0,3,0,1,0,100,1,3000,3000,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Darkened Spirit - OOC - Attack Stored Target'),
(19480,0,4,0,6,0,100,512,0,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Darkened Spirit - On Just Died - Despawn In 5000 ms');
-- (19480,0,5,0,1,0,100,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Darkened Spirit - Out of Combat - Say Line 0');



