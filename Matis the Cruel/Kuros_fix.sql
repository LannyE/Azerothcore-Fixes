/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (17843,1784300,17875)
LIMIT 0, 1000

-- Date: 2023-11-25 18:41
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17843,1784300,17875,1787500);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17843,0,0,0,11,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vindicator Kuros - On Spawn - Set Phase 1'),
(17843,0,1,0,19,1,100,512,9711,0,0,0,0,0,80,1784300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vindicator Kuros - On Quest Accept (Matis the Cruel) - Run Script (Phase 1)'),

(1784300,9,0,0,0,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Set Phase 2'),
(1784300,9,1,0,0,0,100,0,0,0,0,0,0,0,12,17875,1,90000,0,0,0,8,0,0,0,0,-1968.4,-11914.2,51.7064,1.35619,'Vindicator Kuros - Script - Summon Hunter of the Hand'),
(1784300,9,2,0,0,0,100,0,500,500,0,0,0,0,45,1,1,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Set Data on Hunter of the Hand'),
(1784300,9,3,0,0,0,100,0,7000,7000,0,0,0,0,1,0,0,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 1 on Hunter of the Hand'),
(1784300,9,4,0,0,0,100,0,4000,4000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 1'),
(1784300,9,5,0,0,0,100,0,500,500,0,0,0,0,45,5,5,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Set Data on Hunter of the Hand'),

(1784300,9,6,0,0,0,100,0,10000,10000,0,0,0,0,1,1,0,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 2 on Hunter of the Hand'),
(1784300,9,7,0,0,0,100,0,3000,3000,0,0,0,0,45,4,4,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Set Data on Hunter of the Hand'),
(1784300,9,8,0,0,0,100,0,5000,5000,0,0,0,0,1,2,0,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 3 on Hunter of the Hand'),


(1784300,9,9,0,0,0,100,0,5000,5000,0,0,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Summon Group'),
(1784300,9,10,0,0,0,100,0,500,500,0,0,0,0,45,2,2,0,0,0,0,9,17875,20,200,0,0,0,0,0,'Vindicator Kuros - Script - Set Data Hunter of the Hand'),
(1784300,9,11,0,0,0,100,0,12000,12000,0,0,0,0,1,3,0,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 4 on Hunter of the Hand'),
(1784300,9,12,0,0,0,100,0,6000,6000,0,0,0,0,1,4,0,0,0,0,0,19,17875,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 5 on Hunter of the Hand'),
(1784300,9,13,0,0,0,100,0,4000,4000,0,0,0,0,45,3,3,0,0,0,0,9,17875,0,200,0,0,0,0,0,'Vindicator Kuros - Script - Say Line 5 on Hunter of the Hand'),
(1784300,9,14,0,0,0,100,0,10000,10000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vindicator Kuros - Script - Set Phase 1'),

(17875,0,0,0,38,0,100,512,1,1,0,0,0,0,53,0,17875,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Start WP'),

(17875,0,1,2,40,0,100,512,7,17875,0,0,0,0,66,0,0,0,0,0,0,19,17843,0,0,0,0,0,0,0,'Hunter of the Hand - On Reached WP7 - Set Orientation'),
(17875,0,2,0,61,0,100,512,0,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Reached WP7 - Set Bytes 1'),

(17875,0,3,4,38,0,100,512,2,2,0,0,0,0,46,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Move Forward'),
(17875,0,4,0,61,0,100,512,0,0,0,0,0,0,80,1787500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Run Script'),

(17875,0,5,6,38,0,100,512,3,3,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Remove Bytes 1'),
(17875,0,6,7,61,0,100,512,0,0,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Play emote OneShotRoar'),
(17875,0,7,0,61,0,100,512,0,0,0,0,0,0,53,1,1787500,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Start WP (Path 06)'),

(17875,0,8,0,40,0,100,512,11,1787500,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Reached WP11 (Path 06) - Despawn'),

(17875,0,9,0,38,0,100,512,4,4,0,0,0,0,53,0,1787501,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Start WP'),
(17875,0,10,0,38,0,100,512,5,5,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - On Data Set - Remove Bytes 1'),


(1787500,9,0,0,0,0,100,0,10000,10000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - Script - Set Bytes 1'),
(1787500,9,1,0,0,0,100,0,3000,6000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hunter of the Hand - Script - Remove Bytes 1');



DELETE FROM `creature_summon_groups` WHERE `summonerId` IN (17843);
INSERT INTO `creature_summon_groups` (`summonerId`,`summonerType`,`groupId`,`entry`,`position_x`,`position_y`,`position_z`,`orientation`,`summonType`,`summonTime`,`Comment`) VALUES 
(17843,0,1,17875,-1928.62,-11923,47.6502,1.92272,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
-- (17843,0,1,17875,-1910.81,-11892.8,43.875,3.0415,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
(17843,0,1,17875,-1946.11255,-11851.4102,51.46554,4.67773,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
-- (17843,0,1,17875,-1921.78,-11862.5,51.3028,4.11906,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
(17843,0,1,17875,-1918.564,-11867.7587,46.91574,3.75762,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
-- (17843,0,1,17875,-1932.15,-11854.4,51.7948,4.4018,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'), -- 
(17843,0,1,17875,-1936.7223,-11854.56835,51.4805,4.459,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'), -- 
-- (17843,0,1,17875,-1909.91,-11867.8,44.2784,3.71693,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
(17843,0,1,17875,-1916.23462,-11872.54296,44.2596,3.70541,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand'),
(17843,0,1,17875,-1918.49,-11907.4,46.2081,2.6298,1,60000,'Vindicator Kuros - Group 1 - Hunter of the Hand');


DELETE FROM `waypoints` WHERE `entry` IN (17875,1787500,1787501);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(17875,1,-1969.76,-11915.7,52.0765,NULL,0,'Hunter of the Hand'),
(17875,2,-1968.79,-11915.9,52.0765,NULL,0,'Hunter of the Hand'),
(17875,3,-1967.93,-11912,51.2542,NULL,0,'Hunter of the Hand'),
(17875,4,-1967.08,-11908.1,50.6292,NULL,0,'Hunter of the Hand'),
(17875,5,-1966.44,-11905.2,50.0085,NULL,0,'Hunter of the Hand'),
(17875,6,-1965.19,-11899.5,49.7468,NULL,0,'Hunter of the Hand'),
(17875,7,-1965.19,-11899.5,49.7468,NULL,0,'Hunter of the Hand'),

(1787500,1,-1944.07,-11891.9,48.6064,NULL,0,'Hunter of the Hand'),
(1787500,2,-1940.07,-11890.9,47.8564,NULL,0,'Hunter of the Hand'),
(1787500,3,-1934.32,-11889.4,47.3564,NULL,0,'Hunter of the Hand'),
(1787500,4,-1929.57,-11888.4,46.6064,NULL,0,'Hunter of the Hand'),
(1787500,5,-1924.82,-11887.1,46.1064,NULL,0,'Hunter of the Hand'),
(1787500,6,-1920.07,-11885.9,45.3564,NULL,0,'Hunter of the Hand'),
(1787500,7,-1917.07,-11885.1,44.6064,NULL,0,'Hunter of the Hand'),
(1787500,8,-1914.32,-11884.4,44.1064,NULL,0,'Hunter of the Hand'),
(1787500,9,-1910.32,-11883.4,42.6064,NULL,0,'Hunter of the Hand'),
(1787500,10,-1868.352,-11876.9248,32.202904,NULL,0,'Hunter of the Hand'),
(1787500,11,-1807.44409,-11826.91992,26.91739,NULL,0,'Hunter of the Hand'),

(1787501,1,-1952.021,-11895.469,48.965,NULL,0,'Hunter of the Hand');
