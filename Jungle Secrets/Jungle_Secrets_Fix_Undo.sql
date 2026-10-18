-- Corporal Sethman
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1422;

DELETE FROM `smart_scripts` WHERE `entryorguid`=1422 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=142200 AND `source_type`=9;


-- Private Merle
UPDATE `creature` SET `spawntimesecs`=300 WHERE `guid`=1626;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=0 WHERE `guid` IN (1626);

UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1421;

DELETE FROM `smart_scripts` WHERE `entryorguid`=1421 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (142100,142101,142102) AND `source_type`=9;


DELETE FROM `waypoints` WHERE `entry`=1421;


-- Plague Spreader
DELETE FROM `smart_scripts` WHERE `entryorguid`=604 AND `source_type`=0 AND `id`=2;


-- Private Thorsen
UPDATE `creature` SET `spawntimesecs`=300,`MovementType`=2 WHERE `guid`=2243;
UPDATE `creature_template` SET `faction`=123, `AIName`="" WHERE `entry`=738; 
UPDATE `creature_addon` SET `path_id`=22430, `bytes2`=1 WHERE `guid`=2243; 

DELETE FROM `smart_scripts` WHERE `entryorguid`=738 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (73800,73801,73802,73803,73804) AND `source_type`=9;


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=738;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceEntry`=738; -- Might not be needed.

DELETE FROM `waypoints` WHERE `entry` IN (73800,73801);

DELETE FROM `waypoint_data` WHERE `id` = 22430;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(22430,1,-11313.9,-202.766,75.576,5.5676,1700000,0,0,100,0),
(22430,2,-11313.9,-202.766,75.576,5.5676,0,0,0,100,0),
(22430,3,-11321.7,-205.85,75.4398,100,0,0,0,100,0),
(22430,4,-11326.7,-216.63,76.3375,100,0,0,0,100,0),
(22430,5,-11331,-223.29,75.2301,100,0,0,0,100,0),
(22430,6,-11339.5,-222.598,75.1477,100,0,0,0,100,0),
(22430,7,-11351.3,-212.923,75.2968,100,0,0,0,100,0),
(22430,8,-11361.9,-212.078,75.2968,100,0,0,0,100,0),
(22430,9,-11374.4,-217.351,75.2161,100,0,0,0,100,0),
(22430,10,-11379.1,-227.022,73.4353,100,0,0,0,100,0),
(22430,11,-11379.4,-239.568,67.9693,100,0,0,0,100,0),
(22430,12,-11382.1,-251.993,64.5292,100,0,0,0,100,0),
(22430,13,-11384.7,-267.21,60.9735,100,0,0,0,100,0),
(22430,14,-11389.4,-273.725,59.7828,100,500,0,0,100,0),
(22430,15,-11421.5,-287.48,52.1968,100,0,0,0,100,0),
(22430,16,-11441.1,-287.254,45.9617,100,0,0,0,100,0),
(22430,17,-11456.1,-287.166,41.4507,100,0,0,0,100,0),
(22430,18,-11472.5,-288.005,37.0786,100,0,0,0,100,0),
(22430,19,-11491.2,-299.717,35.798,100,0,0,0,100,0),
(22430,20,-11510.9,-317.675,35.8094,100,0,0,0,100,0),
(22430,21,-11521.4,-323.755,35.8094,100,0,0,0,100,0),
(22430,22,-11528.3,-335.951,36.9253,100,0,0,0,100,0),
(22430,23,-11527.6,-353.22,37.7493,100,30000,0,0,100,0),
(22430,24,-11527.6,-353.22,37.7493,4.67,180000,0,0,100,0),
(22430,25,-11527.6,-353.22,37.7493,4.67,1000,0,0,100,0),
(22430,26,-11521.5,-328.624,36.0411,100,0,0,0,100,0),
(22430,27,-11497.7,-306.014,35.7996,100,0,0,0,100,0),
(22430,28,-11473.7,-289.043,36.9186,100,0,0,0,100,0),
(22430,29,-11447.1,-287.478,44.0555,100,0,0,0,100,0),
(22430,30,-11415.6,-287.884,53.9915,100,0,0,0,100,0),
(22430,31,-11394.3,-285.5,58.7721,100,0,0,0,100,0),
(22430,32,-11384.7,-257.563,62.7445,100,500,0,0,100,0),
(22430,33,-11382.7,-245.982,65.8541,100,0,0,0,100,0),
(22430,34,-11382.5,-237.982,68.5594,100,0,0,0,100,0),
(22430,35,-11381.8,-230.669,71.8558,100,0,0,0,100,0),
(22430,36,-11380,-225.222,74.0057,100,0,0,0,100,0),
(22430,37,-11376.7,-220.913,75.0584,100,0,0,0,100,0),
(22430,38,-11372,-214.515,75.3274,100,0,0,0,100,0),
(22430,39,-11364.8,-211.369,75.2968,100,0,0,0,100,0),
(22430,40,-11358.4,-210.313,75.2968,100,0,0,0,100,0),
(22430,41,-11352.7,-210.88,75.2968,100,0,0,0,100,0),
(22430,42,-11344.8,-210.795,75.2968,100,0,0,0,100,0),
(22430,43,-11338.4,-210.338,75.2968,100,0,0,0,100,0),
(22430,44,-11332.4,-207.985,75.4801,100,0,0,0,100,0),
(22430,45,-11325.3,-205.129,75.5001,100,0,0,0,100,0),
(22430,46,-11316.5,-201.627,75.8807,100,0,0,0,100,0),
(22430,47,-11314,-202.753,75.4623,100,0,0,0,100,0);


-- Kurzen's Agent
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=775;
DELETE FROM `smart_scripts` WHERE `entryorguid`=775 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=77500 AND `source_type`=9;


-- Rebel Watchman
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid`=1396;
UPDATE `creature` SET `MovementType`=0  WHERE `guid`=1396;

DELETE FROM `waypoint_data` WHERE `id` = 13960;

-- Black Panther Move
UPDATE `creature` SET `position_x`=-11449,`position_y`=-276.263,`position_z`=45.397  WHERE `guid`=1644;

-- Young Stranglethorn Tiger move
UPDATE `creature` SET `position_x`=-11521.7,`position_y`=-358.08,`position_z`=38.049  WHERE `guid`=2214;
