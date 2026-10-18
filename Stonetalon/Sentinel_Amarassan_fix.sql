/*
Sentinel Amarassan
Missing Waypoints
Fix attacks
Cenarion Druid
Fix attacks
*/

-- Sentinel Amarassan
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (51888); -- 0

DELETE FROM `creature_addon` where guid in (51888);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(51888,518880,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (5916) AND `source_type` = 0 AND `id` IN (0,1,2,3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(5916,0,0,0,4,0,100,0,0,0,0,0,0,0,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sentinel Amarassan - On Aggro - Cast \'9739\''),
(5916,0,1,0,0,0,100,1,2500,3000,0,0,0,0,11,5759,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sentinel Amarassan - IC - Cast \'5759\' (No Repeat)'),
(5916,0,2,0,0,0,100,1,5000,7000,0,0,0,0,11,5217,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sentinel Amarassan -  IC - Cast \'5217\' (No Repeat)'),
(5916,0,3,0,0,0,100,0,2900,3900,12400,13900,0,0,11,24332,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sentinel Amarassan - IC - Cast \'24332\'');

DELETE FROM `waypoint_data` where `id` IN (518880);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(518880,1,2424.8303,1540.5353,270.0486,NULL,0,0,0,100,0),
(518880,2,2435.6287,1574.029,272.1378,NULL,0,0,0,100,0),
(518880,3,2462.3074,1592.5591,269.5429,NULL,0,0,0,100,0), -- Crossroad
(518880,4,2467.3623,1609.9304,273.0784,NULL,0,0,0,100,0),
(518880,5,2454.6255,1620.1174,281.10345,NULL,0,0,0,100,0),
(518880,6,2456.9575,1641.83,293.82623,NULL,0,0,0,100,0),
(518880,7,2455.559,1654.7958,298.93936,NULL,0,0,0,100,0),
(518880,8,2439.0896,1676.7365,311.31134,NULL,0,0,0,100,0),
(518880,9,2447.6167,1696.0973,317.52655,NULL,0,0,0,100,0),
(518880,10,2444.0657,1704.4213,321.02924,NULL,0,0,0,100,0),
(518880,11,2439.098,1729.0197,338.97754,NULL,0,0,0,100,0),
(518880,12,2439.1548,1764.0366,367.93884,NULL,0,0,0,100,0),
(518880,13,2435.8574,1772.3754,376.13696,NULL,0,0,0,100,0),
(518880,14,2424.6638,1780.3448,385.13727,NULL,0,0,0,100,0),
(518880,15,2420.709,1786.1207,390.7443,NULL,15000,0,0,100,0), -- Talon Den Entrance pause
(518880,16,2424.6638,1780.3448,385.13727,NULL,0,0,0,100,0),
(518880,17,2435.8574,1772.3754,376.13696,NULL,0,0,0,100,0),
(518880,18,2439.1548,1764.0366,367.93884,NULL,0,0,0,100,0),
(518880,19,2439.098,1729.0197,338.97754,NULL,0,0,0,100,0),
(518880,20,2444.0657,1704.4213,321.02924,NULL,0,0,0,100,0),
(518880,21,2447.6167,1696.0973,317.52655,NULL,0,0,0,100,0),
(518880,22,2439.0896,1676.7365,311.31134,NULL,0,0,0,100,0),
(518880,23,2455.559,1654.7958,298.93936,NULL,0,0,0,100,0),
(518880,24,2456.9575,1641.83,293.82623,NULL,0,0,0,100,0),
(518880,25,2454.6255,1620.1174,281.10345,NULL,0,0,0,100,0),
(518880,26,2467.3623,1609.9304,273.0784,NULL,0,0,0,100,0),
(518880,27,2462.3074,1592.5591,269.5429,NULL,0,0,0,100,0), -- Crossroad
(518880,28,2466.6233,1556.0342,264.5647,NULL,0,0,0,100,0),
(518880,29,2465.3037,1533.9186,264.264,NULL,0,0,0,100,0),
(518880,30,2479.1204,1520.6156,264.2504,NULL,0,0,0,100,0),
(518880,31,2502.5525,1505.2249,263.81534,NULL,0,0,0,100,0),
(518880,32,2505.288,1496.6615,262.99634,NULL,0,0,0,100,0),
(518880,33,2483.0078,1467.0123,262.72305,NULL,0,0,0,100,0),
(518880,34,2445.9937,1456.2937,266.0228,NULL,0,0,0,100,0),
(518880,35,2415.957,1449.3732,267.83167,NULL,0,0,0,100,0),
(518880,36,2410.2153,1450.4553,269.01163,NULL,0,0,0,100,0),
(518880,37,2399.638,1458.3436,271.35803,NULL,0,0,0,100,0),
(518880,38,2382.0078,1483.478,275.50458,NULL,0,0,0,100,0),
(518880,39,2377.1624,1497.5928,276.38474,NULL,0,0,0,100,0),
(518880,40,2384.4675,1512.4518,276.40448,NULL,0,0,0,100,0),
(518880,41,2392.24,1518.2278,275.3247,NULL,0,0,0,100,0),
(518880,42,2411.5276,1526.557,272.13864,NULL,0,0,0,100,0);


-- Cenarion Druid
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4052) AND `source_type` = 0 AND `id` IN (0,1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4052,0,0,0,4,0,100,0,0,0,0,0,0,0,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cenarion Druid - On Aggro - Cast \'9739\''),
(4052,0,1,0,0,0,100,1,2500,3500,0,0,0,0,11,5759,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Druid - IC - Cast \'5759\' (No Repeat)'),
(4052,0,2,0,0,0,100,1,5000,7000,0,0,0,0,11,5217,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Druid -  IC - Cast \'5217\' (No Repeat)');