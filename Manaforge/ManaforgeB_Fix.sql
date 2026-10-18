/*
New GUIDS: 
Crystal Targets: 300025,300026,300027,300037,300038,300039,300040
Sunfury Magisters: 300028,300029,300030
Sunfury Engineers: 300031,300032,300033,300034
Sunfury Warp-Masters: 300035,300036
Netherstorm Shoot Target: 300041
Gan'arg Warp-Tinker: 300042,300043,300044,300045
*/
-- Sunfury Warp-MASTER
UPDATE `creature` SET `position_x` = 2948.921,`position_y` = 4297.397,`position_z` = 151.693,`orientation` = 5.95,`MovementType` = 2 WHERE `guid` in (67376);
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (18857);

DELETE FROM `creature` WHERE `guid` IN (300035,300036);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300035,18857,0,0,530,0,0,1,1,1,2906.4172,4193.133,161.8857,4.5552,300,0,0,5233,2991,0,0,0,0,'',0,0,NULL), -- Inside Manaforge B Near Collector
(300036,18857,0,0,530,0,0,1,1,1,2895.4001,4186.023,161.8835,5.9209,300,0,0,5233,2991,0,0,0,0,'',0,0,NULL); -- Inside Manaforge B Near Collector

DELETE FROM `creature_addon` where `guid` IN (67376);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67376,673760,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673760);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673760,1,2957.278,4290.69,153.574,0,0,0,0,100,0),
(673760,2,2975.091,4298.849,148.75519,0,0,0,0,100,0),
(673760,3,2978.5854,4312.352,141.9813,0,0,0,0,100,0),
(673760,4,2977.6887,4321.82,145.87827,0,0,0,0,100,0),
(673760,5,2975.2307,4327.0283,147.23813,0,0,0,0,100,0),
(673760,6,2970.4146,4335.7603,148.32265,0,0,0,0,100,0),
(673760,7,2945.7708,4339.7495,147.9685,0,0,0,0,100,0),
(673760,8,2936.918,4331.4077,148.7063,0,0,0,0,100,0),
(673760,9,2937.8413,4314.924,147.2403,0,0,0,0,100,0),
(673760,10,2942.079,4297.598,153.106,0,0,0,0,100,0);


UPDATE `creature` SET `position_x` = 2827.5308,`position_y` = 4322.6255,`position_z` = 148.13753,`orientation` = 0.6113,`MovementType` = 2 WHERE `guid` in (67381);

DELETE FROM `creature_addon` where `guid` IN (67381);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67381,673810,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673810);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
-- (673810,1,2837.1511,4333.7495,146.69136,0,0,0,0,100,0),
(673810,1,2836.4934,4322.3003,148.15948,0,0,0,0,100,0),
(673810,2,2840.8608,4332.557,145.8069,0,0,0,0,100,0),
-- (673810,2,2835.0361,4345.46,144.481,0,0,0,0,100,0),
(673810,3,2839.4087,4346.023,142.61105,0,0,0,0,100,0),
(673810,4,2830.6067,4357.1816,139.49146,0,0,0,0,100,0),
-- (673810,4,2814.939,4356.555,142.5272,0,0,0,0,100,0),
(673810,5,2821.5168,4360.4897,140.80122,0,0,0,0,100,0),
(673810,6,2813.84,4360.09,140.701,0,0,0,0,100,0),
(673810,7,2811.522,4365.0044,138.3458,0,0,0,0,100,0),
(673810,8,2799.4407,4358.9355,138.0592,0,0,0,0,100,0),
(673810,9,2792.7534,4345.829,140.5766,0,0,0,0,100,0),
(673810,10,2793.7917,4334.081,143.6645,0,0,0,0,100,0),
(673810,11,2799.0693,4326.6855,147.6984,0,0,0,0,100,0),
(673810,12,2805.5645,4322.123,149.2786,0,0,0,0,100,0),
(673810,13,2810.114,4319.1626,149.64125,0,0,0,0,100,0),
-- (673810,13,2819.639,4318.7646,148.8992,0,0,0,0,100,0);
(673810,14,2820.1245,4316.57,148.90843,0,0,0,0,100,0);

UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67379);

DELETE FROM `creature_addon` where `guid` IN (67379);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67379,673790,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673790);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673790,1,2780.5154,4197.402,179.02364,0,0,0,0,100,0),
(673790,2,2772.3525,4193.9155,180.801,0,0,0,0,100,0),
(673790,3,2751.9905,4203.554,185.0845,0,0,0,0,100,0),
(673790,4,2738.1887,4189.295,188.9397,0,0,0,0,100,0), -- Start alt
(673790,5,2726.9746,4165.4067,192.2794,0,0,0,0,100,0),
(673790,6,2711.9692,4174.6675,195.3617,0,0,0,0,100,0),
(673790,7,2719.7544,4201.535,192.8127,0,0,0,0,100,0), -- end alt
-- (673790,4,2746.8042,4210.593,186.3014,0,0,0,0,100,0),-- Orig
(673790,8,2752.321,4218.979,184.4656,0,0,0,0,100,0),
(673790,9,2765.4873,4216.3506,180.9669,0,0,0,0,100,0),
(673790,10,2774.9673,4210.18,179.3079,0,0,0,0,100,0),
(673790,11,2780.14,4201.67,178.93,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67382);

DELETE FROM `creature_addon` where `guid` IN (67382);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67382,673820,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673820);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673820,1,2695.869,4114.8823,198.455,0,0,0,0,100,0),
(673820,2,2700.637,4124.5034,196.3789,0,0,0,0,100,0),
(673820,3,2723.7344,4148.448,191.5799,0,0,0,0,100,0),
(673820,4,2734.3733,4144.903,189.0133,0,0,0,0,100,0),
(673820,5,2742.1812,4119.1016,185.6856,0,0,0,0,100,0),
(673820,6,2754.8591,4110.5454,182.5771,0,0,0,0,100,0),
(673820,7,2752.6423,4099.087,182.5057,0,0,0,0,100,0),
(673820,8,2730.8647,4091.484,187.9593,0,0,0,0,100,0),
(673820,9,2719.11,4092.57,191.749,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67380);

DELETE FROM `creature_addon` where `guid` IN (67380);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67380,673800,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673800);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673800,1,2784.273,4152.467,180.3226,0,0,0,0,100,0),
(673800,2,2805.2175,4115.3623,173.73962,0,0,0,0,100,0),
(673800,3,2800.2913,4065.0513,168.7267,0,0,0,0,100,0),
(673800,4,2770.0496,4064.6826,176.4036,0,0,0,0,100,0),
(673800,5,2755.873,4077.9011,181.2251,0,0,0,0,100,0),
(673800,6,2760.3167,4139.965,182.989,0,0,0,0,100,0),
(673800,7,2769.3604,4152.8975,182.26335,0,0,0,0,100,0),
(673800,8,2776.01,4154.54,181.336,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67378);

DELETE FROM `creature_addon` where `guid` IN (67378);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67378,673780,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673780);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673780,1,2836.88,4012.8875,144.8651,0,0,0,0,100,0),
(673780,2,2831.1711,3987.291,142.2975,0,0,0,0,100,0),
(673780,3,2806.7046,3977.3787,141.6332,0,0,0,0,100,0),
(673780,4,2799.5388,3954.0837,143.49182,0,0,0,0,100,0),
(673780,5,2780.816,3957.055,143.22755,0,0,0,0,100,0),
(673780,6,2779.2761,3984.3145,144.5048,0,0,0,0,100,0),
(673780,7,2819.1348,4026.4521,148.6116,0,0,0,0,100,0),
(673780,8,2827.2,4023.98,148.458,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67377);

DELETE FROM `creature_addon` where `guid` IN (67377);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67377,673770,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673770);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673770,1,2866.0564,4068.0925,156.8,0,0,0,0,100,0),
(673770,2,2876.6843,4050.028,156.1819,0,0,0,0,100,0),
(673770,3,2883.0466,4040.3767,153.77618,0,0,0,0,100,0),
(673770,4,2876.6843,4050.028,156.1819,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67384);

DELETE FROM `creature_addon` where `guid` IN (67384);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67384,673840,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673840);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673840,1,2836.2207,3937.7122,150.3935,0,0,0,0,100,0),
(673840,2,2828.1545,3923.5078,150.0756,0,0,0,0,100,0),
(673840,3,2822.741,3883.828,162.6404,0,0,0,0,100,0),
(673840,4,2810.4302,3872.2158,165.9605,0,0,0,0,100,0),
-- (673840,5,2786.5864,3880.297,160.88911,0,0,0,0,100,0),
-- (673840,6,2779.08,3886.7888,158.3013,0,0,0,0,100,0),
-- (673840,7,2770.0168,3886.1157,158.11761,0,0,0,0,100,0),
-- (673840,8,2779.08,3886.7888,158.3013,0,0,0,0,100,0),
-- (673840,9,2786.5864,3880.297,160.88911,0,0,0,0,100,0),
(673840,5,2790.9783,3883.118,159.6307,0,0,0,0,100,0),
(673840,6,2780.5073,3889.7422,156.8906,0,0,0,0,100,0),
(673840,7,2770.7983,3890.7026,155.0587,0,0,0,0,100,0),
(673840,8,2780.5073,3889.7422,156.8906,0,0,0,0,100,0),
(673840,9,2790.9783,3883.118,159.6307,0,0,0,0,100,0),
(673840,10,2810.4302,3872.2158,165.9605,0,0,0,0,100,0),
(673840,11,2822.741,3883.828,162.6404,0,0,0,0,100,0),
(673840,12,2828.1545,3923.5078,150.0756,0,0,0,0,100,0),
(673840,13,2836.2207,3937.7122,150.3935,0,0,0,0,100,0),
(673840,14,2852.1,3933.84,155.058,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67385);

DELETE FROM `creature_addon` where `guid` IN (67385);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67385,673850,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (673850);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
-- (673850,1,2751.1438,3865.187,141.3101,0,0,0,0,100,0),
(673850,1,2747.1526,3862.5,140.3339,0,0,0,0,100,0),
(673850,2,2757.5532,3856.7117,141.7676,0,0,0,0,100,0),
(673850,3,2763.1975,3851.9749,142.3888,0,0,0,0,100,0),
(673850,4,2769.969,3850.7126,142.7114,0,0,0,0,100,0),
(673850,5,2763.1975,3851.9749,142.3888,0,0,0,0,100,0),
(673850,6,2757.5532,3856.7117,141.7676,0,0,0,0,100,0),
-- (673850,7,2751.1438,3865.187,141.3101,0,0,0,0,100,0),
(673850,7,2747.1526,3862.5,140.3339,0,0,0,0,100,0),
(673850,8,2749.49,3884.96,141.417,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67383);

UPDATE `creature_addon` SET `path_id` = 673830 where `guid` IN (67383);

DELETE FROM `waypoint_data` WHERE `id` IN (673830);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(673830,1,2825.565,4151.2363,162.599,0,0,0,0,100,0),
(673830,2,2872.8694,4171.948,164.0077,0,0,0,0,100,0), -- Doorway
(673830,3,2889.809,4159.7095,163.4935,0,0,0,0,100,0),
(673830,4,2911.70149,4156.9717,163.445,0,0,0,0,100,0),
(673830,5,2927.4365,4169.2446,163.335,0,0,0,0,100,0),
(673830,6,2931.1455,4191.946,163.41,0,0,0,0,100,0),
(673830,7,2919.136,4208.7153,163.5689,0,0,0,0,100,0),
(673830,8,2896.8806,4211.3975,163.5229,0,0,0,0,100,0),
(673830,9,2880.8403,4198.9536,163.4193,0,0,0,0,100,0),
(673830,10,2872.8694,4171.948,164.0077,0,0,0,0,100,0),
(673830,11,2825.565,4151.2363,162.599,0,0,0,0,100,0),
(673830,12,2821.062,4152.22,162.599,3.24974,60000,0,0,100,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18857,-300035,-300036) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1885700,1885701,1885702) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18857,0,0,0,0,0,100,1,2900,5800,0,0,0,0,11,35919,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - In Combat - Cast \'Welding Beam\' (No Repeat)'),

(18857,0,2,3,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Aggro - Set Run On'),
(18857,0,3,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Aggro (linked) - Set Phase 2'),
(18857,0,4,0,25,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Reset - Set Run Off'),
(18857,0,5,0,75,1,60,0,0,19483,2,50000,0,0,80,1885700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - Within Creature Distance (Phase 1) - Run Script'),
(18857,0,6,0,75,1,60,0,0,19437,2,30000,0,0,80,1885701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - Within Creature Distance (Phase 1) - Run Script'),
(18857,0,7,0,75,1,60,0,0,19484,2,30000,0,0,80,1885702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - Within Creature Distance (Phase 1) - Run Script'),
(18857,0,8,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Data Set - Attack Stored Target'),
(18857,0,9,0,25,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Reset - Set Phase 1'),

(1885700,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Emote State 0'),
(1885700,9,1,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Stop Random Movement'),
(1885700,9,2,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19483,60,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Move to POS Stored Target'),
(1885700,9,3,0,0,0,100,0,1500,1500,0,0,0,0,66,0,0,0,0,0,0,19,19483,60,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Orientation closet target'),
-- (1885700,9,4,0,0,0,100,0,2000,2000,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Root Enabled'),
(1885700,9,4,0,0,0,100,0,1000,1000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Emote State 133'),
-- (1885700,9,6,0,0,0,100,0,40000,70000,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Root Disabled'),
(1885700,9,5,0,0,0,100,0,40000,70000,0,0,0,0,101,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Home POS (DB)'),
(1885700,9,6,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Stop Random Movement'),
(1885700,9,7,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Evade'),
(1885700,9,8,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Emote State 0'),
-- (1885700,9,6,0,0,0,100,0,100,100,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Random Movement'),


(1885701,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Emote State 0'),
(1885701,9,1,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19483,5,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Move to POS Stored Target'),
(1885701,9,2,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,19,19483,5,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Orientation closet target'),
(1885701,9,3,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Flag Standstate Kneel'),
(1885701,9,4,0,0,0,100,0,23000,42000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Remove Flag Standstate Kneel'),
(1885701,9,5,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Evade'),
(1885701,9,6,0,0,0,100,0,1000,1000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Emote State 0'),

(1885702,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Emote State 0'),
-- (1885702,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Orientation closet target'),
(1885702,9,1,0,0,0,100,0,700,700,0,0,0,0,66,0,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Orientation closet target'),
(1885702,9,2,0,0,0,100,0,0,0,0,0,0,0,11,34062,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Cast \'Blue Beam\' (No Repeat)'),
(1885702,9,3,0,0,0,100,0,20000,30000,0,0,0,0,92,0,34062,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Stop casting'),
(1885702,9,4,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Set Orientation Home'),
-- (1885702,9,5,0,0,0,100,0,100,100,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - On Script - Random Movement'),

(-300035,0,1000,0,1,0,100,0,1000,1000,20000,20000,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - OOC - Random Movement'),
(-300036,0,1000,0,1,0,100,0,1000,1000,20000,20000,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - OOC - Random Movement');

-- Sunfury Engineer
UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (67285,67287,67288,67289,67290,67291,67292,67293,67297,67298,67299,67300,67301,67302,67303,67304); -- 1 5
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (18852);

DELETE FROM `creature` WHERE `guid` IN (300031,300032,300033,300034);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300031,18852,0,0,530,0,0,1,1,1,2999.3977,4210.777,160.886,3.009,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL), -- New magister area
(300032,18852,0,0,530,0,0,1,1,1,2957.0518,4297.9585,149.9372,1.6306,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL), -- By the rear mana tube 
(300033,18852,0,0,530,0,0,1,1,1,2907.9812,4216.5366,164.08293,1.49828,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL), -- Inside Manaforge B
(300034,18852,0,0,530,0,0,1,1,1,2872.809,4187.464,163.8946,3.0718,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL); -- Inside Manaforge B


DELETE FROM `creature_addon` where `guid` IN (300031);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(300031,0,0,0,1,68,0,NULL);

UPDATE `creature` SET `position_x` = 2948.6902,`position_y` = 4330.215,`position_z` = 153.972,`orientation` = 5.2533 WHERE `guid` in (67281);
UPDATE `creature` SET `position_x` = 2970.5195,`position_y` = 4322.7135,`position_z` = 148.31671,`orientation` = 3.601 WHERE `guid` in (67294);
UPDATE `creature` SET `position_x` = 2965.2034,`position_y` = 4329.536,`position_z` = 149.5465,`orientation` = 4.087 WHERE `guid` in (67295);
UPDATE `creature` SET `position_x` = 2957.0334,`position_y` = 4331.724,`position_z` = 150.0238,`orientation` = 4.6933 WHERE `guid` in (67296);


UPDATE `creature` SET `position_x` = 2805.869,`position_y` = 4348.91,`position_z` = 145.35464,`orientation` = 5.48313 WHERE `guid` in (67282);
UPDATE `creature` SET `position_x` = 2823.6533,`position_y` = 4351.361,`position_z` = 144.1807,`orientation` = 4.2482 WHERE `guid` in (67283);
UPDATE `creature` SET `position_x` = 2815.3613,`position_y` = 4353.186,`position_z` = 144.6278,`orientation` = 4.9503 WHERE `guid` in (67284);

UPDATE `creature` SET `position_x` = 2772.103,`position_y` = 4228.7764,`position_z` = 179.3904,`orientation` =0.6892 WHERE `guid` in (67297);
UPDATE `creature` SET `position_x` = 2765.9722,`position_y` = 4239.8296,`position_z` = 180.3527,`orientation` =0.36709 WHERE `guid` in (67298);
UPDATE `creature` SET `position_x` = 2781.0884,`position_y` = 3879.765,`position_z` = 160.63823,`orientation` =3.8948 WHERE `guid` in (67300);
UPDATE `creature` SET `position_x` = 2776.2737,`position_y` = 3883.0566,`position_z` = 159.70644,`orientation` =4.2529 WHERE `guid` in (67302);
UPDATE `creature` SET `position_x` = 2783.51,`position_y` = 3873.9448,`position_z` = 160.62878,`orientation` =3.4766 WHERE `guid` in (67303);
UPDATE `creature` SET `position_x` = 2766.9805,`position_y` = 3884.6716,`position_z` = 157.671,`orientation` =4.7812 WHERE `guid` in (67304);

UPDATE `creature_addon` SET `bytes1` = 0 WHERE `guid` in (67288,67289,67298,67301,67302);
UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` in (67285,67290);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18852,-67287,-67288) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1885200,1885201,1885202) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18852,0,0,0,0,0,100,1,3100,5800,0,0,0,0,11,35919,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - IC - Cast \'Welding Beam\' (No Repeat)'),

(18852,0,1,0,105,0,100,0,6000,9000,7000,14000,0,30,11,35920,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - Area Casting - Cast \'Electroshock\''),
(18852,0,2,3,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Aggro - Set Run On'),
(18852,0,3,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Aggro (linked) - Set Phase 2'),
(18852,0,4,0,25,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Reset - Set Run Off'),
(18852,0,5,0,75,1,60,0,0,19483,12,50000,0,0,80,1885200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - Within Creature Distance (Phase 1) - Run Script'),
(18852,0,6,0,75,1,60,0,0,19437,4,30000,0,0,80,1885201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - Within Creature Distance (Phase 1) - Run Script'),
(18852,0,7,0,75,1,60,0,0,19484,12,30000,0,0,80,1885202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - Within Creature Distance (Phase 1) - Run Script'),
(18852,0,8,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Data Set - Attack Stored Target'),
(18852,0,9,0,25,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Reset - Set Phase 1'),

(1885200,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Emote State 0'),
(1885200,9,1,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Stop Random Movement'),
(1885200,9,2,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19483,60,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Move to POS Stored Target'),
(1885200,9,3,0,0,0,100,0,1500,1500,0,0,0,0,66,0,0,0,0,0,0,19,19483,60,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Orientation closet target'),
-- (1885200,9,4,0,0,0,100,0,3000,3000,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Root Enabled'),
(1885200,9,4,0,0,0,100,0,1000,1000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Emote State 133'),
-- (1885200,9,6,0,0,0,100,0,40000,70000,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Root Disabled'),
(1885200,9,5,0,0,0,100,0,40000,70000,0,0,0,0,101,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Home POS (DB)'),
(1885200,9,6,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Stop Random Movement'),
(1885200,9,7,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Evade'),
(1885200,9,8,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Emote State 0'),

(1885201,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Emote State 0'),
(1885201,9,1,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19483,5,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Move to POS Stored Target'),
(1885201,9,2,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,19,19483,5,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Orientation closet target'),
(1885201,9,3,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Flag Standstate Kneel'),
(1885201,9,4,0,0,0,100,0,23000,42000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Remove Flag Standstate Kneel'),
(1885201,9,5,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Evade'),
(1885201,9,6,0,0,0,100,0,1000,1000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Emote State 133'),

(1885202,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Emote State 0'),
(1885202,9,1,0,0,0,100,0,700,700,0,0,0,0,66,0,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Orientation closet target'),
(1885202,9,2,0,0,0,100,0,0,0,0,0,0,0,11,34062,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Cast \'Blue Beam\' (No Repeat)'),
(1885202,9,3,0,0,0,100,0,20000,30000,0,0,0,0,92,0,34062,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Stop casting'),
(1885202,9,4,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - On Script - Set Orientation Home'),

(-67287,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - OOC - Random Movement'),  -- Don't repeat random movement will cause creature to slowly move all over the place
(-67288,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - OOC - Random Movement');

-- 19483 standing Target 19484 repair target 19437 kneeling target

-- Sunfury Bloodwarder
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (18853);

UPDATE `creature` SET `position_x` = 3006.4864,`position_y` = 4193.4688,`position_z` = 160.871,`orientation` = 0.0493 WHERE `guid` in (67328);
UPDATE `creature` SET `position_x` = 3008.753,`position_y` = 4184.1045,`position_z` = 160.845,`orientation` = 0.543 WHERE `guid` in (67329);
UPDATE `creature` SET `position_x` = 2785.5798,`position_y` = 4369.142,`position_z` = 136.398,`orientation` = 4.0402 WHERE `guid` in (67330);

UPDATE `creature` SET `position_x` = 2848.3098,`position_y` = 4040.541,`position_z` = 168.15274,`orientation` = 2.5424 WHERE `guid` in (67322);
UPDATE `creature` SET `position_x` = 2843.213,`position_y` = 4035.5483,`position_z` = 167.528,`orientation` = 2.5446 WHERE `guid` in (67325);
UPDATE `creature` SET `position_x` = 2853.1978,`position_y` = 4045.1377,`position_z` = 168.37561,`orientation` = 2.58986 WHERE `guid` in (67324);

UPDATE `creature` SET `orientation` = 5.6472 WHERE `guid` in (67315); -- 3.06987

DELETE FROM `creature_addon` where `guid` IN (67324);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67324,0,0,0,1,333,0,NULL);

UPDATE `creature_addon` SET `emote` = 333 where `guid` IN (67322,67325,67321);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18853) AND `source_type` = 0 AND `id` IN (0,3,4);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-67321,-67322,-67323,-67324,-67325) AND `source_type` = 0 AND `id` IN (1000,1001,1002);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18853,0,0,0,0,0,100,0,1000,2000,30000,30000,0,0,11,35877,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - In Combat - Cast Mark of the Sunfury'), -- Commit added 1-14-25 removed mine and added the commit
(18853,0,3,0,1,0,100,0,5000,5000,5000,5000,0,0,49,0,0,0,0,0,0,19,19686,2,0,0,0,0,0,0,'Sunfury Bloodwarder - OOC - Attack Nearest Anomaly'),
-- (18853,0,4,0,0,0,100,0,5000,5000,25000,28000,0,0,11,35877,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - In Combat - Cast \'Mark of the Sunfury\''),  -- Fixed in new commit 1-14-25

(-67321,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,1,0,202,1,1,1,0,0,0,0,0,'Sunfury Bloodwarder - OOC - Summon Nether Anomaly'),
(-67321,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - OOC - Set Root Enable'),
(-67321,0,1002,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Damaged by Player - Set Root Disable'),
-- (-67321,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Reset - Set Defensive'),

(-67322,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,1,0,8,0,0,0,0,2846.9524,4041.8904,168.8601,5.5011,'Sunfury Bloodwarder - OOC - Summon Nether Anomaly'), -- 2846.9524,4041.8904,168.8601,5.5011
(-67322,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - OOC (Linked) - Set Root Enable'),
(-67322,0,1002,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Damaged by Player - Set Root Disable'),
-- (-67322,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Reset - Set Defensive'),

(-67323,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,1,0,8,0,0,0,0,2860.759,4051.2446,169.3902,5.627,'Sunfury Bloodwarder - OOC - Summon Nether Anomaly'), -- 2860.6074,4049.212,169.0971,0.4855
(-67323,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - OOC (Linked) - Set Root Enable'),
(-67323,0,1002,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Damaged by Player - Set Root Disable'),
-- (-67323,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Reset - Set Defensive'),

(-67324,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,1,0,8,0,0,0,0,2851.1619,4045.7444,168.7905,5.3463,'Sunfury Bloodwarder - OOC - Summon Nether Anomaly'), -- 2851.1619,4045.7444,168.7905,5.3463
(-67324,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - OOC (Linked) - Set Root Enable'),
(-67324,0,1002,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Damaged by Player - Set Root Disable'),
-- (-67324,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Reset - Set Defensive'),

(-67325,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,1,0,8,0,0,0,0,2841.1675,4036.5806,168.481,5.8656,'Sunfury Bloodwarder - OOC - Summon Nether Anomaly'), -- 2841.1675,4036.5806,168.481,5.8656
(-67325,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - OOC (Linked) - Set Root Enable'),
(-67325,0,1002,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Damaged by Player - Set Root Disable');
-- (-67325,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - On Reset - Set Defensive');


-- Nether Anomaly
DELETE FROM `creature` WHERE `guid` IN (70186,70185,70184,70183,70182,70187);

DELETE FROM `creature_addon` where `guid` IN (70183);


-- Sunfury Captain
UPDATE `creature` SET `position_x` = 2886.6396,`position_y` = 4343.045,`position_z` = 157.58705,`orientation` = 4.38508,`MovementType` = 2 WHERE `guid` in (69670);

DELETE FROM `creature_addon` where `guid` IN (69670);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(69670,696700,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (696700);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(696700,1,2881.34,4326.687,157.301,0,0,0,0,100,0),
(696700,2,2877.5923,4288.229,158.384,0,0,0,0,100,0),
(696700,3,2874.6174,4284.3374,158.9007,0,0,0,0,100,0),
(696700,4,2865.0334,4280.0503,159.3954,0,0,0,0,100,0),
(696700,5,2867.8804,4272.059,162.59894,0,0,0,0,100,0),
(696700,6,2883.173,4235.047,162.59894,5.1061187,10000,0,0,100,0),
(696700,7,2867.8804,4272.059,162.59894,0,0,0,0,100,0),
(696700,8,2865.0334,4280.0503,159.3954,0,0,0,0,100,0),
(696700,9,2874.6174,4284.3374,158.9007,0,0,0,0,100,0),
(696700,10,2877.5923,4288.229,158.384,0,0,0,0,100,0),
(696700,11,2881.34,4326.687,157.301,0,0,0,0,100,0),
(696700,12,2886.6396,4343.045,157.58705,1.4996,10000,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (69668); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69668);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(69668,696680,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (696680);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(696680,1,2770.3555,4344.077,136.2828,0,0,0,0,100,0), -- crossroad
(696680,2,2782.3428,4365.717,136.3968,1.0649,5000,0,0,100,0),
(696680,3,2775.31624,4345.663,136.37558,0,0,0,0,100,0), -- Crossroad
(696680,4,2786.7178,4322.256,144.9577,0,0,0,0,100,0),
(696680,5,2796.3826,4306.8105,151.15604,0,0,0,0,100,0),
(696680,6,2793.9937,4302.128,151.7304,0,0,0,0,100,0), -- turn
(696680,7,2745.6516,4287.556,152.1966,0,0,0,0,100,0),
(696680,8,2711.0474,4268.5015,153.897,0,0,0,0,100,0),
(696680,9,2689.9424,4260.5884,153.9062,3.499,10000,0,0,100,0), -- Magister camp
(696680,10,2711.0474,4268.5015,153.897,0,0,0,0,100,0),
(696680,11,2745.6516,4287.556,152.1966,0,0,0,0,100,0),
(696680,12,2793.9937,4302.128,151.7304,0,0,0,0,100,0),
(696680,13,2796.3826,4306.8105,151.15604,0,0,0,0,100,0),
(696680,14,2786.7178,4322.256,144.9577,0,0,0,0,100,0),
(696680,15,2770.3555,4344.077,136.2828,0,0,0,0,100,0),
(696680,16,2758.56,4354.88,136.59,3.791,8000,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (69671); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69671);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(69671,696710,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (696710);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(696710,1,2757.1067,4191.6904,184.30879,0,0,0,0,100,0),
(696710,2,2766.907,4188.5996,182.1469,0,0,0,0,100,0),
(696710,3,2787.615,4142.603,179.03223,0,0,0,0,100,0),
(696710,4,2781.5183,4117.536,178.37476,5.4632,10000,0,0,100,0),
(696710,5,2760.0876,4128.8745,182.51053,0,0,0,0,100,0),
(696710,6,2745.1677,4167.422,187.9384,0,0,0,0,100,0),
(696710,7,2746.9849,4182.814,187.02745,0,0,0,0,100,0),
(696710,8,2753.77,4185.28,185.393,6.245,10000,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (69672); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69672);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(69672,696720,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (696720);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(696720,1,2769.0537,3974.668,144.27168,1.5071,10000,0,0,100,0),
(696720,2,2777.123,3979.824,144.3507,0,0,0,0,100,0),
(696720,3,2783.0684,3988.2048,144.64322,0,0,0,0,100,0),
(696720,4,2799.3752,3985.9353,142.22052,0,0,0,0,100,0),
(696720,5,2806.1382,3976.1401,141.6981,0,0,0,0,100,0),
(696720,6,2806.5703,3941.6118,144.9494,4.688,10000,0,0,100,0),
(696720,7,2811.2827,3944.1733,145.3862,0,0,0,0,100,0),
(696720,8,2818.251,3930.335,147.3049,0,0,0,0,100,0),
(696720,9,2811.0283,3916.1892,148.3853,0,0,0,0,100,0),
(696720,10,2788.6804,3909.8118,146.4696,0,0,0,0,100,0),
(696720,11,2769.8328,3921.0796,142.7148,0,0,0,0,100,0),
(696720,12,2767.29,3966.06,143.883,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (69669); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69669);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(69669,696690,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (696690);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(696690,1,2976.1594,4040.314,149.6333,0,0,0,0,100,0), -- crossroad
(696690,2,2978.3596,4018.6536,146.81491,0,0,0,0,100,0),
(696690,3,2981.3123,4009.7112,146.6529,4.9265,6000,0,0,100,0),
(696690,4,2978.3596,4018.6536,146.81491,0,0,0,0,100,0),
(696690,5,2976.1594,4040.314,149.6333,0,0,0,0,100,0),
(696690,6,2954.81,4062.6794,155.3928,0,0,0,0,100,0),
(696690,7,2942.4524,4091.9255,161.1144,0,0,0,0,100,0),
(696690,8,2940.9543,4095.7292,162.598,0,0,0,0,100,0),
(696690,9,2925.1987,4133.9087,162.5999,2.0164,10000,0,0,100,0),
(696690,10,2940.9543,4095.7292,162.598,0,0,0,0,100,0),
(696690,11,2942.4524,4091.9255,161.1144,0,0,0,0,100,0),
(696690,12,2954.81,4062.6794,155.3928,0,0,0,0,100,0);

-- (696690,12,2972.4,4048.23,151.717,6.21146,0,1,0,100,0);


-- Sunfury Magister
-- DELETE FROM `creature` WHERE `guid` IN (300028,300029,300030);  -- Commit 10-16-26 added 300028,300029
DELETE FROM `creature` WHERE `guid` IN (300030);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (300028,18855,0,0,530,0,0,1,1,1,2987.5098,4241.7217,160.88626,0.3976,300,0,0,5566,2933,0,0,0,0,'',0,0,NULL),
-- (300029,18855,0,0,530,0,0,1,1,1,2996.0613,4253.1455,160.77823,5.315,300,0,0,5566,2933,0,0,0,0,'',0,0,NULL),
(300030,18855,0,0,530,0,0,1,1,1,3015.6738,4251.5127,160.7846,4.501,300,0,0,5566,2933,0,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `position_x` = 3015.3967,`position_y` = 4103.0977,`position_z` = 150.50702,`orientation` = 0.033 WHERE `guid` in (67355);

UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (67349,67350,67351,67352,67353,67354,67355,67356,67357,67358,67359,67360,67361,67363,67364,67365,67366,67367,67368,67369,67370,67371,67372); -- 1 5

UPDATE `creature_addon` SET `bytes1` = 8 WHERE `guid` in (67355);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18855) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1885500) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
 -- Implement Combat casting from trinitycore. Remove Bloodcrystal surge due to RP event giving it to them for 60 seconds.
(18855,0,0,0,0,0,100,0,500,500,3000,3000,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Magister - IC - Cast \'Fireball\' (No Repeat)'),
(18855,0,1,0,2,0,100,513,0,15,0,0,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 0-15% Health - FLEE_FOR_ASSIST'),
(18855,0,2,3,1,0,100,0,90000,110000,90000,110000,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - OOC - Set Run Off'),
(18855,0,3,4,61,0,100,0,0,0,0,0,0,0,69,1,0,0,4,1,0,19,19421,60,0,0,0,0,0,0,'Sunfury Magister - OOC (Linked) - Move to POS Stored Target'),
(18855,0,4,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - OOC (Linked) - Set Phase 1'),
(18855,0,5,0,75,1,100,0,0,19421,10,1000,0,0,80,1885500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Within Creature Distance (Phase 1) - Run Script'),
(18855,0,6,0,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Aggro - Set Run On'),

-- (1885500,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Magister - On Script - Set Orientation closet target'),
(1885500,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34397,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Magister - On Script - Cast Red Beam'),
(1885500,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Magister - On Script - Set Orientation closet target'),
(1885500,9,2,0,0,0,100,0,20000,30000,0,0,0,0,92,0,34397,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Script - Stop casting'),
(1885500,9,3,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Script - Evade'),
(1885500,9,4,0,0,0,100,0,100,100,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Script - Cast Bloodcrystal Surge (1/3)'),
(1885500,9,5,0,0,0,100,0,4000,4000,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister- On Script - Set Run On'),
(1885500,9,6,0,0,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Script - Set Phase 0'),
(1885500,9,7,0,0,0,100,0,10000,10000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Script - Cast Bloodcrystal Surge (2/3)'),
(1885500,9,8,0,0,0,100,0,20000,20000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Script - Cast Bloodcrystal Surge (3/3)');


-- Netherstorm Crystal Target
-- DELETE FROM `creature` WHERE `guid` IN (300025,300026,300027,300037); -- Commit 10-16-26 added 300025,300026,300027
DELETE FROM `creature` WHERE `guid` IN (300037);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
-- (300025,19421,0,0,530,0,0,1,1,0,3000.7905,4245.7563,163.572,1.7341,300,0,0,42,0,0,0,0,0,'',0,0,NULL),
-- (300026,19421,0,0,530,0,0,1,1,0,3023.3782,4237.8335,163.572,1.7341,300,0,0,42,0,0,0,0,0,'',0,0,NULL),
-- (300027,19421,0,0,530,0,0,1,1,0,3008.2546,4226.2075,160.808,1.7341,300,0,0,42,0,0,0,0,0,'',0,0,NULL),

(300037,19421,0,0,530,0,0,1,1,0,2918.5137,4189.0757,167.61475,0.3102,300,0,0,42,0,0,0,0,0,'',0,0,NULL); -- Inside manaforge B

UPDATE `creature` SET `position_z` = 151.433 WHERE `guid` in (69406); -- 154.433
UPDATE `creature` SET `position_z` = 152.311 WHERE `guid` in (69407); -- 155.311
UPDATE `creature` SET `position_z` = 153.873 WHERE `guid` in (69408); -- 156.873

UPDATE `creature` SET `position_z` = 153.306 WHERE `guid` in (69409); -- 156.306
UPDATE `creature` SET `position_z` = 152.232 WHERE `guid` in (69410); -- 155.232
UPDATE `creature` SET `position_z` = 150.472 WHERE `guid` in (69411); -- 153.472

UPDATE `creature` SET `position_z` = 155.182 WHERE `guid` in (69412); -- 158.182
UPDATE `creature` SET `position_z` = 154.121 WHERE `guid` in (69413); -- 157.121
UPDATE `creature` SET `position_z` = 153.525 WHERE `guid` in (69414); -- 156.525

UPDATE `creature` SET `position_z` = 174.784 WHERE `guid` in (69415); -- 177.784
UPDATE `creature` SET `position_z` = 177.027 WHERE `guid` in (69416); -- 180.027
UPDATE `creature` SET `position_z` = 175.755 WHERE `guid` in (69417); -- 178.755


-- Sunfury Astromancer
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (70071); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70071);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70071,700710,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (700710);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(700710,1,2642.4763,4248.7734,154.329,0,0,0,0,100,0),
(700710,2,2642.4259,4259.174,154.329,1.6145,7000,0,0,100,0),
(700710,3,2660.2603,4259.7144,154.329,0,0,0,0,100,0),
(700710,4,2666.6743,4251.5967,154.329,5.4632,10000,0,0,100,0),
(700710,5,2661.2126,4241.0083,154.329,0,0,0,0,100,0),
(700710,6,2654.42,4236.81,154.341,3.32127,10000,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (70072); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70072);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70072,700720,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (700720);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(700720,1,2676.5496,4023.195,175.4927,0,0,0,0,100,0),
(700720,2,2692.3948,4021.535,176.13885,0,0,0,0,100,0),
(700720,3,2693.624,4012.9849,175.0669,0,0,0,0,100,0),
(700720,4,2679.9436,4004.7,173.1031,0,0,0,0,100,0),
(700720,5,2666.773,4013.7754,173.7866,0,0,0,0,100,0),
(700720,6,2667.824,4025.0269,174.7885,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (70070); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70070);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70070,700700,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (700700);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(700700,1,2914.8018,4008.7896,149.73,0,0,0,0,100,0),
(700700,2,2898.3826,4010.062,149.73,0,0,0,0,100,0),
(700700,3,2905.209,4031.9246,149.7378,0,0,0,0,100,0),
(700700,4,2901.4507,4053.4297,149.4807,0,0,0,0,100,0),
(700700,5,2916.099,4061.9175,149.194,0,0,0,0,100,0),
(700700,6,2923.274,4055.2312,149.5214,0,0,0,0,100,0),
(700700,7,2920.27,4021.77,149.854,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (70069); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70069);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70069,700690,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (700690);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(700690,1,3022.8845,4071.1182,150.1431,0,0,0,0,100,0),
(700690,2,3015.9934,4066.7314,150.077,0,0,0,0,100,0),
(700690,3,2989.1577,4084.1072,150.1024,0,0,0,0,100,0),
(700690,4,2984.3845,4090.3115,150.1024,0,0,0,0,100,0),
(700690,5,2986.6853,4095.551,150.1024,0,0,0,0,100,0),
(700690,6,3005.7202,4089.9165,150.0231,0,0,0,0,100,0),
(700690,7,3015.7466,4085.1714,150.102,0,0,0,0,100,0),
(700690,8,3023.93,4077,150.251,0,0,0,0,100,0);

-- Sunfury Geologist
UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (70739,70740,70741,70742,70743,70745,70746,70748,70750,70754,70755,70758,70759,70760,70761,70762,70763,70764,70765,70768,70770,70771,70772,70773,70774,70775,70776,70777,70778,70779,70780,70781,70782,70783,70784,70785,70786,70787,70788,70789,70790,70791); -- 1 5

UPDATE `creature` SET `position_x` = 2822.568,`position_y` = 4030.3096,`position_z` = 150.953,`orientation` =1.382 WHERE `guid` in (70739);
UPDATE `creature` SET `position_x` = 2775.3484,`position_y` = 4150.924,`position_z` = 181.3144,`orientation` = 4.289 WHERE `guid` in (70742);
UPDATE `creature` SET `position_x` = 2773.093,`position_y` = 4204.8125,`position_z` = 180.039,`orientation` = 2.8337 WHERE `guid` in (70743);
UPDATE `creature` SET `position_x` = 2743.9646,`position_y` = 4112.375,`position_z` = 184.9874,`orientation` =4.9905 WHERE `guid` in (70759);
UPDATE `creature` SET `position_x` = 2712.1323,`position_y` = 4106.935,`position_z` = 193.4429,`orientation` =0.9109 WHERE `guid` in (70761);
UPDATE `creature` SET `position_x` = 2717.6,`position_y` = 4136.13,`position_z` = 192.413,`orientation` = 4.853 WHERE `guid` in (70768);
UPDATE `creature` SET `position_x` = 2735.554,`position_y` = 3949.539,`position_z` = 142.0211,`orientation` = 1.0928 WHERE `guid` in (70772);
UPDATE `creature` SET `position_x` = 2783.0273,`position_y` = 3977.2256,`position_z` = 143.849,`orientation` =6.247 WHERE `guid` in (70774);
UPDATE `creature` SET `position_x` = 2798.402,`position_y` = 3964.6904,`position_z` = 142.5068,`orientation` = 2.6702 WHERE `guid` in (70776);
UPDATE `creature` SET `position_x` = 2754.0159,`position_y` = 3943.506,`position_z` = 141.684,`orientation` = 2.345 WHERE `guid` in (70777);
UPDATE `creature` SET `position_x` = 2822.1204,`position_y` = 4006.7551,`position_z` = 143.2993,`orientation` = 1.9437 WHERE `guid` in (70779);
UPDATE `creature` SET `position_x` = 2812.7197,`position_y` = 3988.4902,`position_z` = 141.353,`orientation` =0.5759 WHERE `guid` in (70783);
UPDATE `creature` SET `position_x` = 2836.9832,`position_y` = 3884.831,`position_z` = 165.329,`orientation` =0.922 WHERE `guid` in (70786);
UPDATE `creature` SET `position_x` = 2840.043,`position_y` = 3902.165,`position_z` = 158.833,`orientation` =5.871 WHERE `guid` in (70789);

UPDATE `creature` SET `orientation` =0.565962 WHERE `guid` in (70758);

UPDATE `creature_addon` SET `bytes1` = 0 WHERE `guid` in (70733,70737,70740,70744,70745,70747,70748,70755,70764,70770,70774,70775,70781,70785,70787,70790,70791);
UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` in (70735,70738,70752,70754,70756,70760,70762,70765,70767,70777);


DELETE FROM `smart_scripts` WHERE entryorguid IN (19779) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1977900) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19779,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,36645,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Geologist - In Combat CMC - Cast \'Throw Rock\''),
(19779,0,1,0,9,0,100,0,0,0,5000,9000,0,5,11,35918,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Geologist - Within 0-5 Range - Cast \'Puncture Armor\''),
(19779,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Geologist - Between 0-15% Health - Flee For Assist (No Repeat)'),

(19779,0,3,0,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Aggro - Set Run On'),
(19779,0,4,5,25,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Reset - Set Run Off'),
(19779,0,5,0,61,0,100,0,0,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Reset (Linked) - Set Emote State 233'),
(19779,0,6,0,75,0,50,0,0,19439,2,50000,0,0,80,1977900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - Within Creature Distance - Run Script'),

(1977900,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Script - Set Emote State 0'),
(1977900,9,1,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Script - Set Flag Standstate Kneel'),
(1977900,9,2,0,0,0,100,0,23000,42000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Script - Remove Flag Standstate Kneel'),
(1977900,9,3,0,0,0,100,0,1000,1000,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Geologist - On Script - Set Emote State 233');


-- Netherstorm Use Standing Target
UPDATE `creature` SET `position_x` = 2766.8174,`position_y` = 3882.2646,`position_z` = 158.3787,`orientation` =5.14872 WHERE `guid` in (69772);
UPDATE `creature` SET `position_x` = 2967.6648,`position_y` = 4206.318,`position_z` = 169.047,`orientation` =5.48033 WHERE `guid` in (69830);
UPDATE `creature` SET `position_x` = 2755.967,`position_y` = 3873.4487,`position_z` = 148.5019,`orientation` =5.84685 WHERE `guid` in (69840);

-- Overseer Theredis
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (72389);

DELETE FROM `creature_addon` where `guid` IN (72389);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72389,723890,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (723890);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(723890,1,2828.8403,4152.6904,162.59944,0,0,0,0,100,0),
(723890,2,2869.4932,4169.5967,164.00584,0.39359,30000,0,0,100,0),
(723890,3,2828.8403,4152.6904,162.59944,0,0,0,0,100,0),
(723890,4,2828.02,4154.67,162.599,0.40777,120000,0,0,100,0);


-- Coruu

-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300038);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300038,19421,0,0,530,0,0,1,1,0,2422.15,2756.01,135.542,6.052844,300,0,0,42,0,0,0,0,0,'',0,0,NULL); -- Inside manaforge C

UPDATE `creature` SET `position_z` = 137.751 WHERE `guid` in (69427); -- 140.751
UPDATE `creature` SET `position_z` = 133.507 WHERE `guid` in (69428); -- 136.507
UPDATE `creature` SET `position_z` = 140.646 WHERE `guid` in (69418); -- 142.646

UPDATE `creature` SET `position_z` = 134.231 WHERE `guid` in (69419); -- 137.231
UPDATE `creature` SET `position_z` = 135.699 WHERE `guid` in (69420); -- 138.699
UPDATE `creature` SET `position_z` = 134.468 WHERE `guid` in (69423); -- 137.468

UPDATE `creature` SET `position_z` = 136.161 WHERE `guid` in (69424); -- 139.161
UPDATE `creature` SET `position_z` = 134.966 WHERE `guid` in (69422); -- 137.966


-- Overseer Seylanna
DELETE FROM `smart_scripts` WHERE entryorguid IN (20397) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20397,0,0,0,0,0,100,0,2000,3000,7500,9500,0,0,11,36179,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Seylanna - In Combat - Cast Crystal Charge'),
(20397,0,1,0,0,0,100,0,3000,5000,10000,15000,0,0,11,35919,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Seylanna - In Combat - Cast Welding Beam'),
(20397,0,2,0,1,0,100,0,100,100,1000,1000,0,0,11,35016,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overseer Seylanna - OOC - Cast Interrupt shutdown spell');

-- Sunfury Researcher
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (20136); -- 0
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71669); -- 1 5

UPDATE `creature_addon` SET `path_id` = 716690 where `guid` IN (71669);

DELETE FROM `waypoint_data` WHERE `id` IN (716690);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716690,1,2405.7483,2740.8264,133.02153,0,0,0,0,100,0),
(716690,2,2392.3884,2750.3237,132.81644,0,0,0,0,100,0),
(716690,3,2387.4045,2765.8142,133.05434,0,0,0,0,100,0),
(716690,4,2396.6543,2778.6257,132.98,0,0,0,0,100,0),
(716690,5,2411.5112,2782.6367,132.99484,0,0,0,0,100,0),
(716690,6,2424.8647,2773.423,132.84827,0,0,0,0,100,0),
(716690,7,2431.432,2757.6567,133.30128,0,0,0,0,100,0),
(716690,8,2428.0637,2749.1995,133.32413,0,0,0,0,100,0),
(716690,9,2413.5,2741.85,132.97,0,0,0,0,100,0);

UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71668); -- 1 5

UPDATE `creature_addon` SET `path_id` = 716680 where `guid` IN (71668);

DELETE FROM `waypoint_data` WHERE `id` IN (716680);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716680,1,2437.6543,2781.0508,134.467,2.18223,30000,0,0,100,0),
(716680,2,2442.6567,2767.723,134.49133,0,0,0,0,100,0),
(716680,3,2444.8618,2762.544,134.49138,0,0,0,0,100,0),
(716680,4,2449.3916,2756.5552,134.49309,6.15242,5000,0,0,100,0),
(716680,5,2444.8618,2762.544,134.49138,0,0,0,0,100,0),
(716680,6,2442.6567,2767.723,134.49133,0,0,0,0,100,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71668) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2013600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-71668,0,1000,0,108,0,100,0,4,716680,0,0,0,0,80,2013600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Researcher - On Reached WPD4 - Run Script'),

(2013600,9,0,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Researcher - On Script - Set Flag Standstate Kneel'),
(2013600,9,1,0,0,0,100,0,3800,3800,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Researcher - On Script - Remove Flag Standstate Kneel');


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71670) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2013601) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-71670,0,1000,0,75,0,60,0,0,19484,3,30000,0,0,80,2013601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warp-Researcher - Within Creature Distance - Run Script'),

(2013601,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Researcher - On Script - Set Emote State 0'),
(2013601,9,1,0,0,0,100,0,700,700,0,0,0,0,66,0,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Researcher - On Script - Set Orientation closet target'),
(2013601,9,2,0,0,0,100,0,0,0,0,0,0,0,11,34062,0,0,0,0,0,19,19484,60,0,0,0,0,0,0,'Sunfury Researcher - On Script - Cast \'Blue Beam\' (No Repeat)'),
(2013601,9,3,0,0,0,100,0,35000,60000,0,0,0,0,92,0,34062,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Researcher - On Script - Stop casting'),
(2013601,9,4,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Researcher - On Script - Set Orientation Home');


-- Sunfury Arcanist
UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (71633,71635,71636,71637,71638,71639,71640,71641,71642,71643,71644,71645,71646,71647,71648,71649,71651,71654,71655);

UPDATE `creature` SET `position_x` = 2462.2634,`position_y` = 2894.0442,`position_z` = 128.59427,`orientation` = 2.86760 WHERE `guid` in (71632);
UPDATE `creature` SET `position_x` = 2434.266,`position_y` = 2924.0298,`position_z` = 131.44975,`orientation` = 0.8750466 WHERE `guid` in (71634);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20134) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2013400,2013401) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
 -- Implement Combat casting. Remove Bloodcrystal surge due to RP event giving it to them for 60 seconds.
(20134,0,0,0,0,0,100,0,500,500,2400,4000,0,0,11,34447,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Arcanist - IC - Cast \'Arcane Missiles\' (No Repeat)'),
(20134,0,1,0,2,0,100,513,0,15,0,0,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 0-15% Health - FLEE_FOR_ASSIST'),
(20134,0,2,3,1,0,100,0,90000,110000,90000,110000,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - OOC - Set Run Off'),
(20134,0,3,4,61,0,100,0,0,0,0,0,0,0,69,1,0,0,4,1,0,19,19421,60,0,0,0,0,0,0,'Sunfury Arcanist - OOC (Linked) - Move to POS Stored Target'),
(20134,0,4,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - OOC (Linked) - Set Phase 1'),
(20134,0,5,0,75,1,100,0,0,19421,10,1000,0,0,80,2013400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Within Creature Distance (Phase 1) - Run Script'),
(20134,0,6,0,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Aggro - Set Run On'),
(20134,0,7,0,75,0,60,0,0,19437,1,30000,0,0,80,2013401,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Within Creature Distance - Run Script'),

(2013400,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34397,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Cast Red Beam'),
(2013400,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Set Orientation closet target'),
(2013400,9,2,0,0,0,100,0,20000,30000,0,0,0,0,92,0,34397,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Stop casting'),
(2013400,9,3,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Evade'),
(2013400,9,4,0,0,0,100,0,100,100,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Cast Bloodcrystal Surge (1/3)'),
(2013400,9,5,0,0,0,100,0,4000,4000,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist- On Script - Set Run On'),
(2013400,9,6,0,0,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Set Phase 0'),
(2013400,9,7,0,0,0,100,0,10000,10000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Cast Bloodcrystal Surge (2/3)'),
(2013400,9,8,0,0,0,100,0,20000,20000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Cast Bloodcrystal Surge (3/3)'),

(2013401,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Set Emote State 0'),
(2013401,9,1,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19437,5,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Move to POS Stored Target'),
(2013401,9,2,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,19,19437,5,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Set Orientation closet target'),
(2013401,9,3,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Set Flag Standstate Kneel'),
(2013401,9,4,0,0,0,100,0,8000,15000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Remove Flag Standstate Kneel'),
(2013401,9,5,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Script - Evade');


-- Sunfury Guardsman
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (18850);

UPDATE `creature` SET `orientation` = 3.6224 WHERE `guid` in (67266); -- 4.93205
UPDATE `creature` SET `orientation` = 3.103 WHERE `guid` in (67268); -- 4.47147
UPDATE `creature` SET `orientation` = 2.9491 WHERE `guid` in (67267); -- 1.36895

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18850) AND `source_type` = 0 AND `id` IN (0,3,4);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-67279,-67280,-67266,-67268,-67267) AND `source_type` = 0 AND `id` IN (1000,1001,1002,1003);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18850,0,0,0,0,0,100,0,1000,2000,30000,30000,0,0,11,35877,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Guardsman - In Combat - Cast Mark of the Sunfury'), -- Commit added 1-13-25 removed mine and added the commit
(18850,0,3,0,1,0,100,0,1000,1000,1000,1000,0,0,49,0,0,0,0,0,0,19,19686,2,0,0,0,0,0,0,'Sunfury Guardsman - OOC - Attack Nearest Anomaly'),
-- (18850,0,4,0,0,0,100,0,5000,5000,25000,28000,0,0,11,35877,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Guardsman - In Combat - Cast \'Mark of the Sunfury\''), -- Fixed in new commit 1-14-25

(-67279,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,202,2,1,1,0,0,0,0,0,'Sunfury Guardsman - OOC - Summon Nether Anomaly'),
(-67279,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - OOC - Set Root Enable'),
(-67279,0,1002,0,32,0,100,0,400,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Damaged by Player - Set Root Disable'),
(-67279,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Reset - Set Defensive'),

(-67280,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,202,2,1,1,0,0,0,0,0,'Sunfury Guardsman - OOC - Summon Nether Anomaly'),
(-67280,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - OOC (Linked) - Set Root Enable'),
(-67280,0,1002,0,32,0,100,0,400,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Damaged by Player - Set Root Disable'),
(-67280,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Reset - Set Defensive'),

(-67266,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2313.6926,2690.56,128.95183,5.8183,'Sunfury Guardsman - OOC - Summon Nether Anomaly'), -- 2313.6926,2690.56,128.95183,5.8183
(-67266,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - OOC (Linked) - Set Root Enable'),
(-67266,0,1002,0,32,0,100,0,400,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Damaged by Player - Set Root Disable'),
(-67266,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Reset - Set Defensive'),

(-67267,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2313.5986,2674.7432,127.47271,0.4062,'Sunfury Guardsman - OOC - Summon Nether Anomaly'), -- 2313.5986,2674.7432,127.47271,0.4062
(-67267,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - OOC (Linked) - Set Root Enable'),
(-67267,0,1002,0,32,0,100,0,400,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Damaged by Player - Set Root Disable'),
(-67267,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Reset - Set Defensive'),

(-67268,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2317.05,2682.55,128.17719,4.47147,'Sunfury Guardsman - OOC - Summon Nether Anomaly'), -- 2317.05,2682.55,128.17719,4.47147
(-67268,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - OOC (Linked) - Set Root Enable'),
(-67268,0,1002,0,32,0,100,0,400,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Damaged by Player - Set Root Disable'),
(-67268,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Guardsman - On Reset - Set Defensive');


-- Nether Anomaly
DELETE FROM `creature` WHERE `guid` IN (70191,70192,70189,70188,70190,70193,70194,70195,70196);



-- Sunfury Arch Mage
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71657);

DELETE FROM `creature_addon` where `guid` IN (71657);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71657,716570,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (716570);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716570,1,2520.479,2738.7227,132.1604,0,0,0,0,100,0),
(716570,2,2522.683,2746.5938,132.1604,0,0,0,0,100,0),
(716570,3,2520.1191,2753.7986,132.1604,0,0,0,0,100,0),
(716570,4,2509.6602,2759.742,132.16122,0,0,0,0,100,0),
(716570,5,2502.758,2758.0044,132.1627,0,0,0,0,100,0),
(716570,6,2501.227,2736.939,132.1613,0,0,0,0,100,0),
(716570,7,2506.6353,2732.4946,132.16202,0,0,0,0,100,0),
(716570,8,2511.93,2734.46,132.168,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71656);

DELETE FROM `creature_addon` where `guid` IN (71656);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71656,716560,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (716560);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716560,1,2288.4807,2803.195,131.37906,0,0,0,0,100,0),
(716560,2,2313.6084,2824.6472,131.4629,0,0,0,0,100,0),
(716560,3,2318.151,2840.8281,132.1142,0,0,0,0,100,0), -- Path start
(716560,4,2336.3518,2852.6614,133.4193,0,0,0,0,100,0),
(716560,5,2345.852,2869.4192,131.8682,0,0,0,0,100,0),
(716560,6,2367.5217,2884.842,131.50194,0,0,0,0,100,0),
(716560,7,2410.2097,2891.4443,131.3236,0,0,0,0,100,0), -- Path End
(716560,8,2420.953,2876.7363,131.28308,0,0,0,0,100,0),
(716560,9,2432.6523,2872.44,131.26451,0,0,0,0,100,0),
(716560,10,2450.321,2891.709,129.43123,0,0,0,0,100,0),
(716560,11,2444.3235,2905.2493,129.69817,0,0,0,0,100,0),
(716560,12,2416.4543,2906.3667,131.45142,0,0,0,0,100,0),
(716560,13,2410.2097,2891.4443,131.3236,0,0,0,0,100,0),
(716560,14,2367.5217,2884.842,131.50194,0,0,0,0,100,0),
(716560,15,2345.852,2869.4192,131.8682,0,0,0,0,100,0),
(716560,16,2336.3518,2852.6614,133.4193,0,0,0,0,100,0),
(716560,17,2318.151,2840.8281,132.1142,0,0,0,0,100,0),
(716560,18,2285.1885,2842.9353,131.31235,0,0,0,0,100,0),
(716560,19,2276.3206,2826.711,131.57617,0,0,0,0,100,0),
(716560,20,2272.9941,2811.43,131.6283,0,0,0,0,100,0),
(716560,21,2280.99,2804.32,131.564,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71658);

DELETE FROM `creature_addon` where `guid` IN (71658);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71658,716580,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (716580);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716580,1,2384.427,2424.7383,142.50433,0,0,0,0,100,0),
(716580,2,2389.7488,2410.1528,142.23402,0,0,0,0,100,0),
(716580,3,2404.1187,2400.1582,143.03548,0,0,0,0,100,0),
(716580,4,2411.7988,2401.7324,143.28586,0,0,0,0,100,0),
(716580,5,2410.7314,2413.1033,142.88492,0,0,0,0,100,0),
(716580,6,2392.2148,2429.875,143.19238,0,0,0,0,100,0),
(716580,7,2379.437,2435.8975,143.27794,0,0,0,0,100,0),
(716580,8,2352.681,2473.6125,142.33557,0,0,0,0,100,0),
(716580,9,2355.6328,2493.574,139.86833,0,0,0,0,100,0),
(716580,10,2369.8386,2500.9114,141.52498,0,0,0,0,100,0),
(716580,11,2355.6328,2493.574,139.86833,0,0,0,0,100,0),
(716580,12,2352.681,2473.6125,142.33557,0,0,0,0,100,0),
(716580,13,2364.7854,2456.324,143.18147,0,0,0,0,100,0),
(716580,14,2368.55,2448.33,143.482,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71660);

DELETE FROM `creature_addon` where `guid` IN (71660);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71660,716600,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (716600);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716600,1,2189.2573,2598.0657,85.466805,0,0,0,0,100,0),
(716600,2,2166.5984,2577.8699,80.5252,0,0,0,0,100,0),
(716600,3,2167.5312,2559.554,85.41151,0,0,0,0,100,0),
(716600,4,2183.2031,2556.356,87.31331,0,0,0,0,100,0),
(716600,5,2210.3545,2562.7087,94.61743,0,0,0,0,100,0),
(716600,6,2217.609,2579.837,97.95886,0,0,0,0,100,0),
(716600,7,2213.4482,2590.2495,96.30441,0,0,0,0,100,0),
(716600,8,2203.13,2594.81,91.9222,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71659);

DELETE FROM `creature_addon` where `guid` IN (71659);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71659,716590,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (716590);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(716590,1,2195.0437,2500.9841,88.61903,0,0,0,0,100,0),
(716590,2,2218.3784,2501.6868,95.01266,0,0,0,0,100,0),
(716590,3,2229.4438,2502.392,93.30543,0,0,0,0,100,0),
(716590,4,2243.247,2503.969,104.83878,0,0,0,0,100,0),
(716590,5,2274.707,2506.8162,112.1753,0,0,0,0,100,0),
(716590,6,2281.9182,2518.554,115.36681,0,0,0,0,100,0),
(716590,7,2282.2014,2531.7458,116.71921,0,0,0,0,100,0),
(716590,8,2265.78,2537.8523,110.90916,0,0,0,0,100,0),
(716590,9,2246.9807,2529.003,104.77416,0,0,0,0,100,0),
(716590,10,2224.2341,2532.408,93.31022,0,0,0,0,100,0),
(716590,11,2205.732,2537.167,90.61348,0,0,0,0,100,0),
(716590,12,2192.8057,2536.2788,88.70839,0,0,0,0,100,0),
(716590,13,2179.723,2530.0884,86.23887,0,0,0,0,100,0),
(716590,14,2178.2734,2521.7805,87.936386,0,0,0,0,100,0),
(716590,15,2181.12,2517.5,89.3288,0,0,0,0,100,0);


-- Spellbinder Maryana
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (70023);

DELETE FROM `creature_addon` where `guid` IN (70023);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70023,700230,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (700230);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(700230,1,2388.4656,2593.5671,135.37402,0,0,0,0,100,0),
(700230,2,2384.5906,2576.8474,136.0597,0,0,0,0,100,0),
(700230,3,2391.1548,2570.5369,136.54555,0,0,0,0,100,0),
(700230,4,2399.543,2569.0198,136.38494,0,0,0,0,100,0),
(700230,5,2435.206,2591.6975,134.32217,0,0,0,0,100,0),
(700230,6,2436.3013,2615.3552,134.3644,0,0,0,0,100,0),
(700230,7,2430.7832,2622.0083,134.44276,0,0,0,0,100,0),
(700230,8,2421.1687,2629.635,134.32144,0,0,0,0,100,0),
(700230,9,2414.0469,2622.9102,134.32614,0,0,0,0,100,0),
(700230,10,2406.91,2604.9,134.75122,0,0,0,0,100,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19593) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
 -- Implement Combat casting.
(19593,0,0,0,1,0,100,0,1000,1000,600000,600000,0,0,11,35917,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Out of Combat - Cast \'Fiery Intellect\''),
(19593,0,1,0,0,0,100,0,100,100,3500,5000,0,0,11,35927,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbinder Maryana - CMC IC - Cast \'Arcane Blast\''),
(19593,0,2,0,0,0,100,0,15000,18000,15000,18000,0,0,11,15091,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - CMC IC - Cast \'Blast Wave\'');


-- Duro
-- Sunfury Conjurer
UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (71682,71683,71684,71685,71686,71687,71689,71690,71691,71692,71693,71695,71696);

UPDATE `creature` SET `position_x` = 3008.5042,`position_y` = 2308.854,`position_z` = 161.67381,`orientation` = 0.34325 WHERE `guid` in (71684);
UPDATE `creature` SET `position_x` = 3142.2185,`position_y` = 2179.617,`position_z` = 149.5336,`orientation` =0.27177 WHERE `guid` in (71690);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20139) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2013900,2013901) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
 -- Implement Combat casting. Remove Bloodcrystal surge due to RP event giving it to them for 60 seconds.
(20139,0,0,0,0,0,100,0,0,0,3400,4800,0,40,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Conjurer - IC - Cast \'Frostbolt\''),
(20139,0,1,0,2,0,100,513,0,15,0,0,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 0-15% Health - FLEE_FOR_ASSIST'),
(20139,0,2,3,1,0,100,0,90000,110000,90000,110000,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - OOC - Set Run Off'),
(20139,0,3,4,61,0,100,0,0,0,0,0,0,0,69,1,0,0,4,1,0,19,19421,60,0,0,0,0,0,0,'Sunfury Conjurer - OOC (Linked) - Move to POS Stored Target'),
(20139,0,4,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - OOC (Linked) - Set Phase 1'),
(20139,0,5,0,75,1,100,0,0,19421,10,1000,0,0,80,2013900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Within Creature Distance (Phase 1) - Run Script'),
(20139,0,6,0,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Aggro - Set Run On'),
(20139,0,7,0,75,0,60,0,0,19437,1,30000,0,0,80,2013901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Within Creature Distance - Run Script'),
(20139,0,8,0,0,0,100,0,9000,14000,12000,16000,0,0,11,11829,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Sunfury Conjurer - IC - Cast \'Flamestrike\''),

(2013900,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34397,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Cast Red Beam'),
(2013900,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Set Orientation closet target'),
(2013900,9,2,0,0,0,100,0,20000,30000,0,0,0,0,92,0,34397,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Stop casting'),
(2013900,9,3,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Evade'),
(2013900,9,4,0,0,0,100,0,100,100,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Cast Bloodcrystal Surge (1/3)'),
(2013900,9,5,0,0,0,100,0,4000,4000,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer- On Script - Set Run On'),
(2013900,9,6,0,0,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Set Phase 0'),
(2013900,9,7,0,0,0,100,0,10000,10000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Cast Bloodcrystal Surge (2/3)'),
(2013900,9,8,0,0,0,100,0,20000,20000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Cast Bloodcrystal Surge (3/3)'),
-- (2013900,9,9,0,0,0,100,0,20000,20000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Cast Bloodcrystal Surge (3/4)'),

(2013901,9,0,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Set Emote State 0'),
(2013901,9,1,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19437,5,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Move to POS Stored Target'),
(2013901,9,2,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,19,19437,5,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Set Orientation closet target'),
(2013901,9,3,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Set Flag Standstate Kneel'),
(2013901,9,4,0,0,0,100,0,8000,15000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Remove Flag Standstate Kneel'),
(2013901,9,5,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Script - Evade');

-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300039);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300039,19421,0,0,530,0,0,1,1,0,2976.4265,2183.5554,166.70425,2.02081,300,0,0,42,0,0,0,0,0,'',0,0,NULL); -- Inside manaforge D

UPDATE `creature` SET `position_z` = 162.878 WHERE `guid` in (69429); -- 164.878
UPDATE `creature` SET `position_z` = 150.774 WHERE `guid` in (69432); -- 152.774
UPDATE `creature` SET `position_z` = 152 WHERE `guid` in (69433); -- 155

UPDATE `creature` SET `position_z` = 150.527 WHERE `guid` in (69431); -- 153.527
UPDATE `creature` SET `position_z` = 152.13 WHERE `guid` in (69430); -- 155.13


-- Sunfury Bowman
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20207) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20207,0,0,0,1,0,100,0,5000,5000,5000,25000,0,0,11,33796,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bowman - Out of Combat - Cast \'Shoot Bow\''),
(20207,0,1,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bowman - In Combat CMC - Cast \'Shoot\''),
(20207,0,2,0,9,0,100,0,10,40,7000,9000,10,40,11,37847,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bowman - Within 10-40 Range - Cast \'Immolation Arrow\''),
(20207,0,3,0,9,0,100,0,0,20,12000,15000,0,20,11,12024,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bowman - Within 0-20 Range - Cast \'Net\''),
(20207,0,4,5,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Bowman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(20207,0,5,0,61,0,100,1,0,0,0,0,0,0,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Bowman - Between 0-15% Health (linked) - Set Root Disable'),
(20207,0,6,7,1,0,100,0,5000,5000,2000,3000,0,0,11,6660,64,0,0,0,0,19,19731,40,0,0,0,0,0,0,'Sunfury Bowman - OOC - Cast \'Shoot\' on Nearest Nether Beast'),
(20207,0,7,0,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bowman - OOC (Linked) - Set Root Enable'),
(20207,0,8,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bowman - On Damaged by Player - Set Root Disable'),
(20207,0,9,0,101,0,100,0,1,5,1000,2000,3000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bowman - Near Player - Set Root Disable'),
(20207,0,10,11,1,0,100,0,5000,5000,2000,3000,0,0,11,6660,64,0,0,0,0,19,19686,10,0,0,0,0,0,0,'Sunfury Bowman - OOC - Cast \'Shoot\' on Nearest Nether Anomaly'),
(20207,0,11,0,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bowman - OOC (Linked) - Set Root Enable'),
(20207,0,12,0,0,0,100,0,1000,2000,2000,2000,0,0,11,6660,64,0,0,0,0,19,19731,40,0,0,0,0,0,0,'Sunfury Bowman - In Combat - Cast \'Shoot\' on Nearest Nether Beast');

-- Netherstorm Shoot Target
UPDATE `creature` SET `position_x` = 3074.2031,`position_y` = 2209.278,`position_z` = 161.34254,`MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (70409);

DELETE FROM `creature` WHERE `guid` IN (300041);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300041,19727,0,0,530,0,0,1,1,0,3044.0994,2370.178,140.7629,3.48342,300,5,0,42,0,1,0,0,0,'',0,0,NULL);

-- Blaze
UPDATE `gameobject` SET `position_x` = 3039.0586,`position_y` = 2359.8972,`position_z` = 141.77896 WHERE `guid` in (22367);
UPDATE `gameobject` SET `position_x` = 3044.0994,`position_y` = 2370.178,`position_z` = 140.7629 WHERE `guid` in (22369);
UPDATE `gameobject` SET `position_x` = 3025.804,`position_y` = 2370.2788,`position_z` = 138.4733 WHERE `guid` in (22360);
UPDATE `gameobject` SET `position_x` = 3053.9834,`position_y` = 2358.5122,`position_z` = 136.64291 WHERE `guid` in (22374);
UPDATE `gameobject` SET `position_x` = 3074.2031,`position_y` = 2209.278,`position_z` = 161.34254 WHERE `guid` in (22365);

-- Nether Beast
UPDATE `creature` SET `spawntimesecs` = 1,`wander_distance` = 12 WHERE `guid` in (70552,70577,70559,70524,70549,70558);
UPDATE `creature` SET `MovementType` = 1,`spawntimesecs` = 1,`wander_distance` = 12 WHERE `guid` in (70569);

UPDATE `creature` SET `position_x` = 3035.3958,`position_y` = 2364.1426,`position_z` = 140.83302 WHERE `guid` in (70552);
UPDATE `creature` SET `position_x` = 3035.618,`position_y` = 2372.1477,`position_z` = 139.54877 WHERE `guid` in (70577);
UPDATE `creature` SET `position_x` = 3038.3716,`position_y` = 2381.549,`position_z` = 138.73576 WHERE `guid` in (70559);
UPDATE `creature` SET `position_x` = 3031.2837,`position_y` = 2380.8005,`position_z` = 137.70876 WHERE `guid` in (70524);
UPDATE `creature` SET `position_x` = 3018.3504,`position_y` = 2392.269,`position_z` = 134.80997 WHERE `guid` in (70549);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19731) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19731,0,0,0,0,0,100,513,1500,2000,0,0,0,0,75,33731,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nether Beast - In Combat - Add Aura \'33731\' (No Repeat)'),
(19731,0,1,2,75,0,30,513,0,19939,75,2000,0,0,69,1,0,0,4,1,0,19,19939,76,0,0,0,0,0,0,'Nether Beast - Within Creature Distance - Move to POS'),
(19731,0,2,0,61,0,100,513,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nether Beast - Within Creature Distance (Linked) - Set Phase 1'),
(19731,0,3,4,1,1,100,513,45000,60000,45000,60000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nether Beast (Phase 1) - OOC - Evade'),
(19731,0,4,0,61,1,100,513,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nether Beast - OOC (Phase 1) (Linked) - Set Phase 0');


-- Sunfury Protector
DELETE FROM `creature` WHERE `guid` IN (84845,84844);  -- Removed due to only one Protector exists and it is summoned during Duro shutdown


-- Sunfury Centurion
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (20140);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20140) AND `source_type` = 0 AND `id` IN (3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71697,-71698,-71699,-71700,-71701,-71702,-71703,-71704,-71705,-71706,-71707) AND `source_type` = 0 AND `id` IN (1000,1001,1002,1003,1004);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20140,0,3,0,1,0,100,0,1000,1000,1000,1000,0,0,11,36073,0,0,0,0,0,19,19686,20,0,0,0,0,0,0,'Sunfury Centurion - OOC - Cast \'Spellbreaker\' (No Repeat)'),

(-71697,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2945.18,2258.7,163.637,1.7767,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71697,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71697,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71697,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Defensive'),


(-71698,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,3018.29,2086.81,164.003,5.095,'Sunfury Centurion - OOC - Summon Nether Anomaly'), -- 3019.5344,2084.0847,163.9203,5.095
(-71698,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC - Set Root Enable'),
(-71698,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71698,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71698,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71699,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2961.62,2138.13,165.412,6.12611,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71699,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71699,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71699,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71699,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71700,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2989.7,2164.07,163.291,5.97832,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71700,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71700,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71700,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71700,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71701,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2977.06,2160.83,163.29,4.2048,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71701,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71701,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71701,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71701,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71702,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2974.2,2172.24,163.29,2.76207,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71702,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71702,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71702,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71702,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71703,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2950.92,2189.97,165.412,4.72984,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71703,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71703,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71703,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71703,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71704,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2984.03,2179.63,163.29,1.44862,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71704,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71704,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71704,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71704,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71705,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,3063.32,2201.89,164.003,0.575959,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71705,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71705,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71705,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71705,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71706,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,3034,2308.27,138.747,1.94482,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71706,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71706,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71706,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71706,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable'),

(-71707,0,1000,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,3042.32,2307.31,138.917,1.46608,'Sunfury Centurion - OOC - Summon Nether Anomaly'),
(-71707,0,1001,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - OOC (Linked) - Set Root Enable'),
(-71707,0,1002,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Damaged by Player - Set Root Disable'),
(-71707,0,1003,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Reset - Set Aggresive'),
(-71707,0,1004,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Centurion - On Near Player - Set Root Disable');

-- 71706 (70213), 71707 (70214)

-- Nether Anomaly
DELETE FROM `creature` WHERE `guid` IN (70199,70197,70212,70207,70200,70208,70205,70204,70202,70209,70201,70198,70203,70206,70211,70213,70214); -- Removed to be summoned

-- Overseer Athanel
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20435) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20435,0,0,0,0,0,100,0,4000,6000,8000,11000,0,0,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Athanel - In Combat - Cast Cleave'),
(20435,0,1,0,1,0,100,0,1000,1000,1000,1000,0,0,49,0,0,0,0,0,0,19,19686,3,0,0,0,0,0,0,'Overseer Athanel - OOC - Attack Nearest Anomaly'),
(20435,0,2,0,1,0,100,0,5000,10000,5000,10000,0,0,12,19686,2,30000,1,0,0,8,0,0,0,0,2909.2,2138.28,164.02,0.480352,'Overseer Athanel - OOC - Summon Nether Anomaly'),
(20435,0,3,0,1,0,100,0,2000,2000,2000,2000,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overseer Athanel - OOC - Set Root Enable'),
(20435,0,4,0,32,0,100,0,0,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overseer Athanel - On Damaged by Player - Set Root Disable'),
(20435,0,5,0,25,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overseer Athanel - On Reset - Set Aggresive'),
(20435,0,6,0,101,0,100,0,1,8,1000,1000,1000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overseer Athanel - On Near Player - Set Root Disable');



-- Manaforge Ara

-- Sunfury Nethermancer
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (20248);

UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (71943,71944,71945,71946,71947,71948,71949,71950,71951,71953,71954,71956,71957,71958,71959,71960,71961,71962,71963,71964,71965,71966,71967,71968,71969,71970,71971,71972,71973,71974,71975); -- 1 5

UPDATE `creature` SET `position_x` = 4028.3408,`position_y` = 3870.8647,`position_z` = 191.68562,`orientation` = 1.3203 WHERE `guid` in (71960);
UPDATE `creature` SET `position_x` = 3975.8699,`position_y` = 3756.9417,`position_z` = 120.80658,`orientation` = 2.06089  WHERE `guid` in (71944);
UPDATE `creature` SET `position_x` = 3991.41,`position_y` = 4135.796,`position_z` = 189.00198,`orientation` = 3.9776 WHERE `guid` in (71968);
UPDATE `creature` SET `position_x` = 4004.4448,`position_y` = 4023.522,`position_z` = 192.10019 WHERE `guid` in (71971);

UPDATE `creature` SET `orientation` = 3.0491 WHERE `guid` in (71965);
UPDATE `creature` SET `orientation` = 1.27897 WHERE `guid` in (71956);

UPDATE `creature_addon` SET `bytes1` = 0 WHERE `guid` in (71943,71956,71958,71965); -- 8

UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` in (71974,71972); -- 133

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71966,-71967,-71953,-71971,-71972,-71973,-71974,20248) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2024800,2024801,2024802) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20248,0,0,0,104,10,100,0,0,21267,1,6,15000,0,11,36477,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Creature Near Negaton (Phase 2 and 4) - Cast spell Summon Mana Beast'),
(20248,0,1,0,9,0,100,0,0,0,3400,4800,0,30,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Victim in range 0 - 30 yards CMC - Cast spell Shadow Bolt (9613)'),
(20248,0,2,0,2,0,100,0,0,75,15000,20000,0,0,11,17173,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Between 0-75% Health - Cast spell Drain Life (17173)'),
(20248,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - When health Between 0-15% Health - Flee for assist.'),
(20248,0,4,5,1,2,100,0,90000,110000,90000,110000,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC (Phase 2) - Set Run Off'),
(20248,0,5,6,61,0,100,0,0,0,0,0,0,0,69,1,0,0,5,1,0,19,19421,60,0,0,0,0,0,0,'Sunfury Nethermancer - OOC (Linked) - Move to POS Stored Target'),
(20248,0,6,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC (Linked) - Set Phase 1'),
(20248,0,7,0,75,1,100,0,0,19421,15,1000,0,0,80,2024800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Within Creature Distance (Phase 1) - Run Script'),
(20248,0,8,9,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Aggro - Set Run On'),
(20248,0,9,10,61,0,100,0,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Aggro (Linked) - Set Phase 3'),
(20248,0,10,11,61,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Aggro (Linked) - Save Target'),
(20248,0,11,12,61,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,19,21267,3,0,0,0,0,0,0,'Sunfury Nethermancer - On Aggro (Linked) - Send Target'),
(20248,0,12,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,19,21267,3,0,0,0,0,0,0,'Sunfury Nethermancer - On Aggro (Linked) - Send Data 1 1'),
(20248,0,13,0,75,8,60,0,0,19483,2,55000,0,0,80,2024801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Within Creature Distance (Phase 4) - Run Script'),
(20248,0,14,0,75,2,40,0,0,19437,4,55000,0,0,80,2024802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Within Creature Distance (Phase 2) - Run Script'),
(20248,0,15,0,25,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Reset - Set Phase 2'),
(20248,0,16,0,75,0,100,0,300040,0,40,15000,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - Within Creature Distance - Set Phase 4'),


(2024800,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34397,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Cast Red Beam'),
(2024800,9,1,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Orientation closet target'),
(2024800,9,2,0,0,0,100,0,20000,30000,0,0,0,0,92,0,34397,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Stop casting'),
(2024800,9,3,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Evade'),
(2024800,9,4,0,0,0,100,0,100,100,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Cast Bloodcrystal Surge (1/3)'),
(2024800,9,5,0,0,0,100,0,4000,4000,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer- On Script - Set Run On'),
(2024800,9,6,0,0,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Phase 2'),
(2024800,9,7,0,0,0,100,0,10000,10000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Cast Bloodcrystal Surge (2/3)'),
(2024800,9,8,0,0,0,100,0,20000,20000,0,0,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Cast Bloodcrystal Surge (3/3)'),

(2024801,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer- On Script - Set Run Off'),
(2024801,9,1,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Emote State 0'),
(2024801,9,2,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Stop Random Movement'),
(2024801,9,3,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19483,60,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Move to POS Stored Target'),
(2024801,9,4,0,0,0,100,0,1500,1500,0,0,0,0,66,0,0,0,0,0,0,19,19483,60,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Orientation closet target'),
(2024801,9,5,0,0,0,100,0,1000,1000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Emote State 133'),
(2024801,9,6,0,0,0,100,0,40000,70000,0,0,0,0,101,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Home POS (DB)'),
(2024801,9,7,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Stop Random Movement'),
(2024801,9,8,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Evade'),
(2024801,9,9,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Emote State 0'),

(2024802,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer- On Script - Set Run Off'),
(2024802,9,1,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Emote State 0'),
(2024802,9,2,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0.45,0,0,19,19437,2,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Move to POS Stored Target'),
(2024802,9,3,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,19,19437,2,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Orientation closet target'),
(2024802,9,4,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Set Flag Standstate Kneel'),
(2024802,9,5,0,0,0,100,0,23000,42000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Remove Flag Standstate Kneel'),
(2024802,9,6,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - On Script - Evade'),

(-71953,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement'), -- Don't repeat random movement will cause creature to slowly move all over the place

(-71966,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement'),

(-71967,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement'),


(-71971,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement'),

(-71972,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement'),

(-71973,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement'),

(-71974,0,1000,0,1,0,100,0,1000,1000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Nethermancer - OOC - Random Movement');


-- Mana Beast 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21267) AND `source_type` = 0 AND `id` IN (1,2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21267,0,1,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Mana Beast - On Data Set 1 1 - Attack From Target List'),
(21267,0,2,0,104,0,100,0,0,20248,1,6,5000,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana Beast - Creature Near Negaton - Set Phase 1'),
(21267,0,3,0,103,1,100,0,0,20248,1,6,1000,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana Beast - Creature Near (Phase 1) - Set Phase 0'),
(21267,0,4,0,1,1,100,0,5000,5000,5000,5000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mana Beast - OOC (Phase 1) - Despawn');


-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300040);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300040,19421,0,0,530,0,0,1,1,0,4014.468,4029.0564,195.0069,1.2193788,300,0,0,42,0,0,0,0,0,'',0,0,NULL); -- Inside manaforge A

UPDATE `creature` SET `position_z` = 190.486 WHERE `guid` in (69443); -- 193.486
UPDATE `creature` SET `position_z` = 104.78 WHERE `guid` in (69437); -- 107.78
UPDATE `creature` SET `position_z` = 125.603 WHERE `guid` in (69436); -- 128.603
UPDATE `creature` SET `position_z` = 127.208 WHERE `guid` in (69435); -- 130.208
UPDATE `creature` SET `position_z` = 126.213 WHERE `guid` in (69434); -- 129.213
UPDATE `creature` SET `position_z` = 193.956 WHERE `guid` in (69421); -- 196.956
UPDATE `creature` SET `position_z` = 193.364 WHERE `guid` in (69441); -- 196.364
UPDATE `creature` SET `position_z` = 192.03 WHERE `guid` in (69440); -- 195.03
UPDATE `creature` SET `position_z` = 177.654 WHERE `guid` in (69439); -- 180.654
UPDATE `creature` SET `position_z` = 178.926 WHERE `guid` in (69438); -- 181.926


-- Kneel Targets
UPDATE `creature` SET `position_x` = 4026.1648,`position_y` = 3867.3662,`position_z` = 191.68591 WHERE `guid` in (69579);
UPDATE `creature` SET `position_x` = 4041.1138,`position_y` = 3877.856,`position_z` = 192.8128 WHERE `guid` in (69581);
UPDATE `creature` SET `position_x` = 4081.8384,`position_y` = 3898.9675,`position_z` = 189.42708 WHERE `guid` in (69584);
UPDATE `creature` SET `position_x` = 4015.2134,`position_y` = 3912.248,`position_z` = 191.79456 WHERE `guid` in (69580);
UPDATE `creature` SET `position_x` = 3965.68,`position_y` = 3911.1265,`position_z` = 177.39873 WHERE `guid` in (69577);
UPDATE `creature` SET `position_x` = 3948.4668,`position_y` = 3914.0889,`position_z` = 177.39888 WHERE `guid` in (69571);
UPDATE `creature` SET `position_x` = 3941.905,`position_y` = 3878.0232,`position_z` = 174.20149 WHERE `guid` in (69575);
UPDATE `creature` SET `position_x` = 3966.7366,`position_y` = 3894.5605,`position_z` = 176.167 WHERE `guid` in (69576);
UPDATE `creature` SET `position_x` = 3918.714,`position_y` = 3780.052,`position_z` = 122.33835 WHERE `guid` in (69566);
UPDATE `creature` SET `position_x` = 3936.7087,`position_y` = 3786.7942,`position_z` = 122.33915 WHERE `guid` in (69567);
UPDATE `creature` SET `position_x` = 3977.0586,`position_y` = 3749.8867,`position_z` = 120.49835, `orientation` = 1.27897 WHERE `guid` in (69563);
UPDATE `creature` SET `position_x` = 3987.8782,`position_y` = 3787.7766,`position_z` = 124.531654 WHERE `guid` in (69565);
UPDATE `creature` SET `position_x` = 3819.886,`position_y` = 3815.7058,`position_z` = 103.50907 WHERE `guid` in (69568);
UPDATE `creature` SET `position_x` = 4005.61,`position_y` = 3897.102,`position_z` = 122.72131 WHERE `guid` in (69578);
UPDATE `creature` SET `position_x` = 3991.792,`position_y` = 4137.3086,`position_z` = 189.00235  WHERE `guid` in (69587);


-- Daughter of Destiny
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (67419,67420,67421,67422);

DELETE FROM `creature_addon` where `guid` IN (67420);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67420,674200,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (674200);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(674200,1,3825.2053,3826.63961,103.52671,0,0,0,0,100,0),
(674200,2,3822.9966,3820.71,103.50889,4.4938,5000,0,0,100,0),
(674200,3,3840.9814,3841.3342,104.22381,0,0,0,0,100,0),
(674200,4,3842.5774,3845.4492,106.60674,0,0,0,0,100,0),
(674200,5,3842.6204,3850.2295,106.25021,0,0,0,0,100,0),
(674200,6,3835.3708,3858.4675,106.69595,0,0,0,0,100,0),
(674200,7,3829.3804,3860.3867,107.56448,0,0,0,0,100,0),
(674200,8,3825.7302,3857.288,104.57206,0,0,0,0,100,0),
(674200,9,3816.5889,3845.6404,103.42339,2.8912401,5000,0,0,100,0),
(674200,10,3825.46,3830.6,103.632,3.9304,5000,0,0,100,0);


DELETE FROM `creature_addon` where `guid` IN (67419);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67419,674190,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (674190);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(674190,1,3963.4087,3783.132,124.82981,0,0,0,0,100,0),
(674190,2,3985.7754,3783.59,124.11279,0.93824,5000,0,0,100,0),
(674190,3,3984.3826,3779.5093,123.60569,0,0,0,0,100,0),
(674190,4,3974.532,3766.7766,122.0637,0,0,0,0,100,0),
(674190,5,3975.447,3759.626,121.15538,4.8401,5000,0,0,100,0),
(674190,6,3964.9434,3765.8804,122.81965,0,0,0,0,100,0),
(674190,7,3958.1719,3777.463,124.16184,0,0,0,0,100,0),
(674190,8,3933.2424,3783.0732,122.33963,0,0,0,0,100,0),
(674190,9,3932.553,3785.5408,122.339966,0.27249,5000,0,0,100,0),
(674190,10,3923.11,3782,122.454,4.02296,5000,0,0,100,0);


DELETE FROM `creature_addon` where `guid` IN (67421);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67421,674210,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (674210);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(674210,1,4039.777,3874.7686,191.73927,0,0,0,0,100,0),
(674210,2,4029.9424,3873.574,191.68614,0,0,0,0,100,0),
(674210,3,4023.7795,3875.3694,191.7116,0,0,0,0,100,0),
(674210,4,4032.0093,3884.9104,190.69995,0,0,0,0,100,0),
(674210,5,4028.0198,3893.3518,189.68181,0,0,0,0,100,0),
(674210,6,4023.9348,3897.8,190.30109,0,0,0,0,100,0),
(674210,7,4015.0962,3898.5264,190.90497,0,0,0,0,100,0),
(674210,8,4007.7798,3893.7153,191.79684,0,0,0,0,100,0),
(674210,9,4002.4849,3895.8765,191.99084,0,0,0,0,100,0),
(674210,10,4001.1323,3901.553,191.41106,0,0,0,0,100,0),
(674210,11,4005.6028,3906.9385,191.78607,0,0,0,0,100,0),
(674210,12,4014.3672,3908.96,191.83829,0,0,0,0,100,0),
(674210,13,4022.5596,3902.381,190.17847,0,0,0,0,100,0),
(674210,14,4045.399,3901.681,189.42516,0,0,0,0,100,0),
(674210,15,4046.4478,3903.6382,189.42516,0,0,0,0,100,0),
(674210,16,4077.45248,3899.888,189.42516,5.9663615,5000,0,0,100,0),
(674210,17,4063.736,3898.6458,189.42516,0,0,0,0,100,0),
(674210,18,4047.468,3887.069,189.67305,0,0,0,0,100,0),
(674210,19,4038.3687,3886.7012,190.14957,0,0,0,0,100,0),
(674210,20,4034.9365,3881.5598,191.44775,0,0,0,0,100,0),
(674210,21,4036.08,3878.77,191.7959,6.27891,5000,0,0,100,0);


DELETE FROM `creature_addon` where `guid` IN (67422);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(67422,674220,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (674220);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(674220,1,3893.0369,3899.5508,178.37415,3.29705,5000,0,0,100,0),
(674220,2,3898.312,3901.0632,177.83722,0,0,0,0,100,0),
(674220,3,3912.1438,3895.194,177.7969,0,0,0,0,100,0),
(674220,4,3930.5825,3895.4934,176.35889,0,0,0,0,100,0),
(674220,5,3942.8782,3887.0872,174.53156,0,0,0,0,100,0),
(674220,6,3942.0122,3881.0732,174.20538,4.56938,5000,0,0,100,0),
(674220,7,3953.3765,3877.9216,174.11566,0,0,0,0,100,0),
(674220,8,3964.7112,3891.5566,175.99577,0,0,0,0,100,0),
(674220,9,3965.7437,3904.6526,177.39856,0,0,0,0,100,0),
(674220,10,3952.146,3905.7544,177.40324,0,0,0,0,100,0),
(674220,11,3940.0996,3899.9045,175.6029,0,0,0,0,100,0),
(674220,12,3920.391,3914.2432,175.96516,0,0,0,0,100,0),
(674220,13,3896.1418,3924.1533,177.369,0,0,0,0,100,0),
(674220,14,3887.2651,3918.7346,179.19002,0,0,0,0,100,0),
(674220,15,3884.74,3911.89,179.921,5.39399,3000,0,0,100,0);


-- Sunfury Blood Knight
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (74121);

DELETE FROM `creature_addon` where `guid` IN (74121);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(74121,741210,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (741210);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(741210,1,3896.7434,3824.1018,122.47659,0,0,0,0,100,0),
(741210,2,3898.2156,3798.1113,118.70086,0,0,0,0,100,0),
(741210,3,3899.5854,3751.666,117.59909,0,0,0,0,100,0), -- Turn around
(741210,4,3898.2156,3798.1113,118.70086,0,0,0,0,100,0),
(741210,5,3896.7434,3824.1018,122.47659,0,0,0,0,100,0), -- start
(741210,6,3905.6357,3834.0925,128.2145,0,0,0,0,100,0),
(741210,7,3962.3567,3832.8867,158.79944,0,0,0,0,100,0),
(741210,8,3973.141,3844.8625,164.05093,0,0,0,0,100,0),
(741210,9,3971.3535,3860.753,168.32169,0,0,0,0,100,0),
(741210,10,3961.816,3877.891,173.08542,0,0,0,0,100,0),
(741210,11,3947.405,3893.6626,175.2271,0,0,0,0,100,0),
(741210,12,3912.2866,3920.1672,176.37892,0,0,0,0,100,0),
(741210,13,3892.1746,3930.0605,178.11925,0,0,0,0,100,0),
(741210,14,3877.3545,3946.0945,181.26436,0,0,0,0,100,0),
(741210,15,3872.8308,3958.98,183.38503,0,0,0,0,100,0),
(741210,16,3877.572,3977.412,183.30663,0,0,0,0,100,0),
(741210,17,3889.3735,4002.0525,183.16,0,0,0,0,100,0),
(741210,18,3880.9922,4023.3452,183.28436,0,0,0,0,100,0),
(741210,19,3881.897,4034.9817,183.61615,0,0,0,0,100,0),
(741210,20,3914.4812,4075.5308,189.39638,0,0,0,0,100,0),
(741210,21,3939.8777,4127.727,192.76509,0,0,0,0,100,0),
(741210,22,3962.9287,4145.053,191.35797,0,0,0,0,100,0),
(741210,23,3991.976,4152.5723,191.40047,0,0,0,0,100,0),
(741210,24,4013.848,4149.715,191.56657,0,0,0,0,100,0),
(741210,25,4023.7285,4141.7017,191.58481,0,0,0,0,100,0),
(741210,26,4032.7595,4119.7886,191.4193,0,0,0,0,100,0),
(741210,27,4033.0671,4109.761,191.70815,0,0,0,0,100,0), -- End
(741210,28,4032.7595,4119.7886,191.4193,0,0,0,0,100,0),
(741210,29,4023.7285,4141.7017,191.58481,0,0,0,0,100,0),
(741210,30,4013.848,4149.715,191.56657,0,0,0,0,100,0),
(741210,31,3991.976,4152.5723,191.40047,0,0,0,0,100,0),
(741210,32,3962.9287,4145.053,191.35797,0,0,0,0,100,0),
(741210,33,3939.8777,4127.727,192.76509,0,0,0,0,100,0),
(741210,34,3914.4812,4075.5308,189.39638,0,0,0,0,100,0),
(741210,35,3881.897,4034.9817,183.61615,0,0,0,0,100,0),
(741210,36,3880.9922,4023.3452,183.28436,0,0,0,0,100,0),
(741210,37,3889.3735,4002.0525,183.16,0,0,0,0,100,0),
(741210,38,3877.572,3977.412,183.30663,0,0,0,0,100,0),
(741210,39,3872.8308,3958.98,183.38503,0,0,0,0,100,0),
(741210,40,3877.3545,3946.0945,181.26436,0,0,0,0,100,0),
(741210,41,3892.1746,3930.0605,178.11925,0,0,0,0,100,0),
(741210,42,3912.2866,3920.1672,176.37892,0,0,0,0,100,0),
(741210,43,3947.405,3893.6626,175.2271,0,0,0,0,100,0),
(741210,44,3961.816,3877.891,173.08542,0,0,0,0,100,0),
(741210,45,3971.3535,3860.753,168.32169,0,0,0,0,100,0),
(741210,46,3973.141,3844.8625,164.05093,0,0,0,0,100,0),
(741210,47,3962.3567,3832.8867,158.79944,0,0,0,0,100,0),
(741210,48,3905.6357,3834.0925,128.2145,0,0,0,0,100,0);


-- Mo'Arg Warp-Master
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (72207);

DELETE FROM `creature_addon` where `guid` IN (72207);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72207,722070,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (722070);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(722070,1,3931.284,4119.9004,193.27353,0,0,0,0,100,0),
(722070,2,3921.2263,4083.8206,191.05086,0,0,0,0,100,0),
(722070,3,3910.55,4060.8406,187.19217,0,0,0,0,100,0), -- Turn
(722070,4,3921.2263,4083.8206,191.05086,0,0,0,0,100,0),
(722070,5,3931.284,4119.9004,193.27353,0,0,0,0,100,0),
(722070,6,3948.43,4129.19,191.666,0,0,0,0,100,0); -- Home


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (72211);

DELETE FROM `creature_addon` where `guid` IN (72211);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72211,722110,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (722110);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(722110,1,3870.0579,4021.2502,123.85971,0,0,0,0,100,0),
(722110,2,3869.8413,4028.8303,123.59724,0,0,0,0,100,0),
(722110,3,3891.506,4049.9614,121.430305,0,0,0,0,100,0),
(722110,4,3895.3813,4050.816,124.01923,0,0,0,0,100,0),
(722110,5,3911.122,4052.871,123.373146,0,0,0,0,100,0),
(722110,6,3931.9878,4066.1763,123.228134,0,0,0,0,100,0),
(722110,7,3911.122,4052.871,123.373146,0,0,0,0,100,0),
(722110,8,3895.3813,4050.816,124.01923,0,0,0,0,100,0),
(722110,9,3891.506,4049.9614,121.430305,0,0,0,0,100,0),
(722110,10,3869.8413,4028.8303,123.59724,0,0,0,0,100,0),
(722110,11,3870.0579,4021.2502,123.85971,0,0,0,0,100,0),
(722110,12,3873.88,4017.97,122.87052,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (72203);

DELETE FROM `creature_addon` where `guid` IN (72203);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72203,722030,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (722030);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(722030,1,3906.3223,3986.0935,121.27467,0,0,0,0,100,0),
(722030,2,3917.06,3985.7131,121.70301,0,0,0,0,100,0),
(722030,3,3926.8398,3987.9702,121.97667,0,0,0,0,100,0),
(722030,4,3936.1797,3995.5444,120.0659,0,0,0,0,100,0),
(722030,5,3944.1008,4015.0156,114.35693,0,0,0,0,100,0),
(722030,6,3948.1445,4023.696,114.25236,0,0,0,0,100,0),
(722030,7,3944.1008,4015.0156,114.35693,0,0,0,0,100,0),
(722030,8,3936.1797,3995.5444,120.0659,0,0,0,0,100,0),
(722030,9,3926.8398,3987.9702,121.97667,0,0,0,0,100,0),
(722030,10,3917.06,3985.7131,121.70301,0,0,0,0,100,0),
(722030,11,3906.3223,3986.0935,121.27467,0,0,0,0,100,0),
(722030,12,3881.515,4005.403,121.46288,0,0,0,0,100,0),
(722030,13,3854.198,4009.383,127.52419,0,0,0,0,100,0),
(722030,14,3836.9958,4012.2065,129.31664,0,0,0,0,100,0),
(722030,15,3821.7397,4013.1755,127.9346,0,0,0,0,100,0),
(722030,16,3836.9958,4012.2065,129.31664,0,0,0,0,100,0),
(722030,17,3854.198,4009.383,127.52419,0,0,0,0,100,0),
(722030,18,3881.515,4005.403,121.46288,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (72210);

DELETE FROM `creature_addon` where `guid` IN (72210);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72210,722100,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (722100);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(722100,1,3987.7798,4005.1084,118.85909,0,0,0,0,100,0),
(722100,2,4026.6282,3981.145,124.0864,0,0,0,0,100,0),
(722100,3,4038.9849,3979.3486,125.191826,0,0,0,0,100,0),
(722100,4,4062.368,3974.8054,121.00148,0,0,0,0,100,0),
(722100,5,4092.2014,3984.2634,116.23552,0,0,0,0,100,0),
(722100,6,4062.368,3974.8054,121.00148,0,0,0,0,100,0),
(722100,7,4038.9849,3979.3486,125.191826,0,0,0,0,100,0),
(722100,8,4026.6282,3981.145,124.0864,0,0,0,0,100,0),
(722100,9,3987.7798,4005.1084,118.85909,0,0,0,0,100,0),
(722100,10,3978.45,4008.9,117.657326,0,0,0,0,100,0),
(722100,11,3949.112,4021.9146,114.03728,0,0,0,0,100,0),
(722100,12,3978.45,4008.9,117.657326,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0  WHERE `guid` in (72204);

DELETE FROM `creature_addon` where `guid` IN (72204);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72204,722040,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (722040);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(722040,1,3991.5261,3918.3997,123.79539,0,0,0,0,100,0),
(722040,2,4000.2126,3902.9275,122.46729,0,0,0,0,100,0),
(722040,3,3981.993,3920.2043,124.265884,0,0,0,0,100,0),
(722040,4,3958.509,3923.4133,123.53798,0,0,0,0,100,0),
(722040,5,3940.4487,3935.6492,122.97124,0,0,0,0,100,0),
(722040,6,3958.509,3923.4133,123.53798,0,0,0,0,100,0),
(722040,7,3970.7734,3922.0886,124.086235,0,0,0,0,100,0),
(722040,8,3993.679,3939.02,124.38523,0,0,0,0,100,0),
(722040,9,4029.1685,3955.6055,124.11062,0,0,0,0,100,0),
(722040,10,4031.5063,3963.0159,125.37173,0,0,0,0,100,0),
(722040,11,4031.6758,3977.0908,124.550354,0,0,0,0,100,0),
(722040,12,4031.5063,3963.0159,125.37173,0,0,0,0,100,0),
(722040,13,4029.1685,3955.6055,124.11062,0,0,0,0,100,0),
(722040,14,3993.679,3939.02,124.38523,0,0,0,0,100,0),
(722040,15,3989.75,3930.18,124.783,0,0,0,0,100,0);



-- Gan'arg Warp-Tinker
DELETE FROM `creature` WHERE `guid` IN (300042,300043,300044,300045);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300042,20285,0,0,530,0,0,1,1,1,3876.4036,4009.0352,122.33104,2.803,300,5,0,6542,0,1,0,0,0,'',0,0,NULL),
(300043,20285,0,0,530,0,0,1,1,1,3972.4263,4010.3965,117.0744,2.803,300,5,0,6542,0,1,0,0,0,'',0,0,NULL),
(300044,20285,0,0,530,0,0,1,1,1,4011.551,3947.652,124.53516,2.803,300,5,0,6542,0,1,0,0,0,'',0,0,NULL),
(300045,20285,0,0,530,0,0,1,1,1,4031.2373,3975.5837,124.464134,2.803,300,5,0,6542,0,1,0,0,0,'',0,0,NULL);


UPDATE `creature` SET `MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (72058,72059,72060,72061,72062,72064,72065,72066,72067,72068,72069,72070,72071,72072,72073);

UPDATE `creature` SET `position_x` = 3926.289,`position_y` = 3987.0652,`position_z` = 122.03306 WHERE `guid` in (72063);
UPDATE `creature` SET `position_x` = 3859.5378,`position_y` = 4011.2705,`position_z` = 126.408844 WHERE `guid` in (72061);
UPDATE `creature` SET `position_x` = 4017.611,`position_y` = 3990.1025,`position_z` = 123.4432 WHERE `guid` in (72075);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2028500,2028501) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20285) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20285,0,0,0,9,0,100,0,0,0,11000,15000,0,5,11,36208,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - Within 0-5 Range - Cast \'Steal Weapon\' (No Repeat)'),
(20285,0,1,0,0,0,100,0,6000,11000,9000,14000,0,0,11,36846,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - In Combat - Cast \'Mana Bomb\' (No Repeat)'),
(20285,0,2,0,75,0,60,0,0,20804,8,20000,0,0,80,2028500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - Within Creature Distance - Run Script'), -- Working target
(20285,0,3,0,75,0,60,0,0,19483,10,20000,0,0,80,2028501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - Within Creature Distance - Run Script'), -- Standing target
(20285,0,4,0,4,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Aggro - Set Run On'),
(20285,0,5,0,61,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Aggro (Linked) - Set Emote State 0'),
(20285,0,6,7,1,0,100,0,120000,120000,120000,120000,0,0,101,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - OOC - Set Home POS (DB)'),
(20285,0,7,0,61,0,100,0,0,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - OOC (Linked) - Evade'),

(2028500,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker- On Script - Set Run Off'),
(2028500,9,1,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Emote State 0'),
(2028500,9,2,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Stop Random Movement'),
(2028500,9,3,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,20804,9,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Move to POS Stored Target'),
(2028500,9,4,0,0,0,100,0,3000,3000,0,0,0,0,66,0,0,0,0,0,0,19,20804,9,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Orientation closet target'),
(2028500,9,5,0,0,0,100,0,1000,1000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Emote State 133'),  -- Doesn't have emote state 233 for mining???
(2028500,9,6,0,0,0,100,0,30000,70000,0,0,0,0,101,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Home POS (DB)'),
(2028500,9,7,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Evade'),
(2028500,9,8,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Emote State 0'),
(2028500,9,9,0,0,0,100,0,1000,1000,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - OOC - Random Movement'),
(2028500,9,10,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker- On Script - Set Run On'),


(2028501,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker- On Script - Set Run Off'),
(2028501,9,1,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Emote State 0'),
(2028501,9,2,0,0,0,100,0,100,100,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Stop Random Movement'),
(2028501,9,3,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,19,19483,15,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Move to POS Stored Target'),
(2028501,9,4,0,0,0,100,0,1500,1500,0,0,0,0,66,0,0,0,0,0,0,19,19483,15,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Orientation closet target'),
(2028501,9,5,0,0,0,100,0,1000,1000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Emote State 133'),
(2028501,9,6,0,0,0,100,0,30000,70000,0,0,0,0,101,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Home POS (DB)'),
(2028501,9,7,0,0,0,100,0,100,100,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Evade'),
(2028501,9,8,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - On Script - Set Emote State 0'),
(2028501,9,9,0,0,0,100,0,1000,1000,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - OOC - Random Movement'),
(2028501,9,10,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker- On Script - Set Run On');



-- Overseer Azarad
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (72988);

DELETE FROM `creature_addon` where `guid` IN (72988);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72988,729880,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (729880);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(729880,1,3992.2075,4031.6208,193.2241,0,0,0,0,100,0),
(729880,2,4005.8572,4039.7336,193.34813,0,0,0,0,100,0),
(729880,3,4014.024,4039.8896,193.35643,0,0,0,0,100,0),
(729880,4,4027.5806,4032.3633,193.32108,0,0,0,0,100,0),
(729880,5,4034.8955,4018.4353,193.23375,0,0,0,0,100,0),
(729880,6,4034.979,4012.4456,193.22166,0,0,0,0,100,0),
(729880,7,4027.4678,3997.7935,193.07695,0,0,0,0,100,0),
(729880,8,4013.83,3989.4421,193.24414,0,0,0,0,100,0),
(729880,9,4006.6704,3989.294,193.26758,0,0,0,0,100,0),
(729880,10,3992.7803,3996.2175,193.32649,0,0,0,0,100,0),
(729880,11,3985.0134,4009.4958,193.32643,0,0,0,0,100,0),
(729880,12,3985.48,4021.77,193.471,0,0,0,0,100,0);


-- Ever-core the punisher
DELETE FROM `waypoint_data` where `id` in (249380);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(249380,1,4029.03,4134.35,191.496,NULL,0,0,0,100,0),
(249380,2,4021.06,4144.61,191.502,NULL,0,0,0,100,0),
(249380,3,4007.77,4151.29,191.586,NULL,0,0,0,100,0),
(249380,4,3991.62,4152.59,191.401,NULL,0,0,0,100,0),
(249380,5,3966.21,4145.5,191.295,NULL,0,0,0,100,0),
(249380,6,3937.03,4122.04,192.695,NULL,0,0,0,100,0),
(249380,7,3924.13,4093.4,191.789,NULL,0,0,0,100,0),
(249380,8,3911.34,4060.71,187.287,NULL,0,0,0,100,0),
(249380,9,3880.16,4036.23,183.365,NULL,0,0,0,100,0),
(249380,10,3879.16,4023.95,183.11,NULL,0,0,0,100,0),
(249380,11,3890.49,4005.85,183.428,NULL,0,0,0,100,0),
(249380,12,3874,3968.38,183.774,NULL,0,0,0,100,0),
(249380,13,3873.48,3953.19,182.426,NULL,0,0,0,100,0),
(249380,14,3884.47,3936.53,179.405,NULL,0,0,0,100,0),
(249380,15,3915.08,3918.04,176.204,NULL,0,0,0,100,0),
(249380,16,3952.32,3889.77,174.977,NULL,0,0,0,100,0),
(249380,17,3965.74,3872.72,171.607,NULL,0,0,0,100,0),
(249380,18,3972.39,3852.88,166.197,NULL,0,0,0,100,0),
(249380,19,3969.66,3840.88,162.264,NULL,0,0,0,100,0),
(249380,20,3961.25,3833.68,158.329,NULL,0,0,0,100,0),
(249380,21,3908.53,3834.6,129.743,NULL,0,0,0,100,0),
(249380,22,3898.06,3828.14,123.788,NULL,0,0,0,100,0),
(249380,23,3898.27,3787.49,118.457,NULL,0,0,0,100,0),
(249380,24,3881.31,3790.1,116.619,NULL,0,0,0,100,0),
(249380,25,3865.28,3804.66,111.946,NULL,0,0,0,100,0),
(249380,26,3853.11,3824.74,106.821,NULL,0,0,0,100,0),
(249380,27,3847.02,3830.68,105.424,NULL,0,0,0,100,0),
(249380,28,3830.93,3836.43,103.431,NULL,0,0,0,100,0),
(249380,29,3817.24,3851.85,103.623,NULL,0,0,0,100,0),
(249380,30,3807.24,3877.86,105.557,NULL,0,0,0,100,0),
(249380,31,3792.14,3888.13,106.755,NULL,0,0,0,100,0),
(249380,32,3790.1,3912.19,109.532,NULL,0,0,0,100,0),
(249380,33,3798.19,3938.67,112.965,NULL,0,0,0,100,0),
(249380,34,3789.57,3968.79,114.346,NULL,0,0,0,100,0),
(249380,35,3790.27,3993.03,116.942,NULL,0,0,0,100,0),
(249380,36,3801.81,4011.81,121.598,NULL,0,0,0,100,0),

-- Doesn't patrol back - New
(249380,70,4021.06,4144.61,191.502,NULL,0,0,0,100,0),
(249380,69,4007.77,4151.29,191.586,NULL,0,0,0,100,0),
(249380,68,3991.62,4152.59,191.401,NULL,0,0,0,100,0),
(249380,67,3966.21,4145.5,191.295,NULL,0,0,0,100,0),
(249380,66,3937.03,4122.04,192.695,NULL,0,0,0,100,0),
(249380,65,3924.13,4093.4,191.789,NULL,0,0,0,100,0),
(249380,64,3911.34,4060.71,187.287,NULL,0,0,0,100,0),
(249380,63,3880.16,4036.23,183.365,NULL,0,0,0,100,0),
(249380,62,3879.16,4023.95,183.11,NULL,0,0,0,100,0),
(249380,61,3890.49,4005.85,183.428,NULL,0,0,0,100,0),
(249380,60,3874,3968.38,183.774,NULL,0,0,0,100,0),
(249380,59,3873.48,3953.19,182.426,NULL,0,0,0,100,0),
(249380,58,3884.47,3936.53,179.405,NULL,0,0,0,100,0),
(249380,57,3915.08,3918.04,176.204,NULL,0,0,0,100,0),
(249380,56,3952.32,3889.77,174.977,NULL,0,0,0,100,0),
(249380,55,3965.74,3872.72,171.607,NULL,0,0,0,100,0),
(249380,54,3972.39,3852.88,166.197,NULL,0,0,0,100,0),
(249380,53,3969.66,3840.88,162.264,NULL,0,0,0,100,0),
(249380,52,3961.25,3833.68,158.329,NULL,0,0,0,100,0),
(249380,51,3908.53,3834.6,129.743,NULL,0,0,0,100,0),
(249380,50,3898.06,3828.14,123.788,NULL,0,0,0,100,0),
(249380,49,3898.27,3787.49,118.457,NULL,0,0,0,100,0),
(249380,48,3881.31,3790.1,116.619,NULL,0,0,0,100,0),
(249380,47,3865.28,3804.66,111.946,NULL,0,0,0,100,0),
(249380,46,3853.11,3824.74,106.821,NULL,0,0,0,100,0),
(249380,45,3847.02,3830.68,105.424,NULL,0,0,0,100,0),
(249380,44,3830.93,3836.43,103.431,NULL,0,0,0,100,0),
(249380,43,3817.24,3851.85,103.623,NULL,0,0,0,100,0),
(249380,42,3807.24,3877.86,105.557,NULL,0,0,0,100,0),
(249380,41,3792.14,3888.13,106.755,NULL,0,0,0,100,0),
(249380,40,3790.1,3912.19,109.532,NULL,0,0,0,100,0),
(249380,39,3798.19,3938.67,112.965,NULL,0,0,0,100,0),
(249380,38,3789.57,3968.79,114.346,NULL,0,0,0,100,0),
(249380,37,3790.27,3993.03,116.942,NULL,0,0,0,100,0);


-- Sunfury Hold

-- Sunfury Archer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19707) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19707,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Archer - In Combat CMC - Cast \'Shoot\''),
(19707,0,1,0,9,0,100,0,10,40,9000,12000,10,40,11,37847,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Archer - Within 10-40 Range - Cast \'Immolation Arrow\''),
(19707,0,2,0,9,0,100,0,0,20,12000,15000,0,20,11,12024,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Archer - Within 0-20 Range - Cast \'Net\''),
(19707,0,3,4,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Archer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(19707,0,4,0,61,0,100,1,0,0,0,0,0,0,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Archer - Between 0-15% Health (linked) - Set Root Disable'),
(19707,0,5,0,1,0,100,0,5000,5000,5000,25000,0,0,11,33796,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Archer - Out of Combat - Cast \'Shoot Bow\''),
(19707,0,6,7,1,0,100,0,5000,5000,2000,3000,0,0,11,6660,64,0,0,0,0,19,19731,40,0,0,0,0,0,0,'Sunfury Archer - OOC - Cast \'Shoot\' on Nearest Nether Beast'),
(19707,0,7,0,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Archer - OOC (Linked) - Set Root Enable'),
(19707,0,8,0,32,0,100,0,450,276000,3000,5000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Archer - On Damaged by Player - Set Root Disable'),
(19707,0,9,0,101,0,100,0,1,5,1000,2000,3000,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Archer - Near Player - Set Root Disable'),
(19707,0,10,0,0,0,100,0,1000,2000,2000,2000,0,0,11,6660,64,0,0,0,0,19,19731,40,0,0,0,0,0,0,'Sunfury Archer - In Combat - Cast \'Shoot\' on Nearest Nether Beast');


-- Sunfury Flamekeeper
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71904);

DELETE FROM `creature_addon` where `guid` IN (71904);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71904,719040,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (719040);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(719040,1,2543.5288,2365.7163,128.50845,0,0,0,0,100,0),
(719040,2,2552.15,2359.7568,128.50845,5.6126,5000,0,0,100,0),
(719040,3,2543.5288,2365.7163,128.50845,0,0,0,0,100,0),
(719040,4,2532.8235,2375.0984,128.50398,0,0,0,0,100,0),
(719040,5,2522.372,2391.04,129.72981,0,0,0,0,100,0),
(719040,6,2506.288,2408.0605,132.8007,0,0,0,0,100,0), -- Road
(719040,7,2522.372,2391.04,129.72981,0,0,0,0,100,0),
(719040,8,2521.8606,2368.438,128.15152,0,0,0,0,100,0),
(719040,9,2527.7932,2353.9048,127.00678,0,0,0,0,100,0), -- Top
(719040,10,2533.9106,2339.8535,121.5637,0,0,0,0,100,0),
(719040,11,2559.5215,2331.0566,115.7981,0,0,0,0,100,0),
(719040,12,2576.084,2343.6587,114.6417,0,0,0,0,100,0),
(719040,13,2583.2056,2356.5132,109.36925,0,0,0,0,100,0),
(719040,14,2591.0635,2364.2292,109.40604,0.92507,5000,0,0,100,0),
(719040,15,2583.2056,2356.5132,109.36925,0,0,0,0,100,0),
(719040,16,2576.084,2343.6587,114.6417,0,0,0,0,100,0),
(719040,17,2559.5215,2331.0566,115.7981,0,0,0,0,100,0),
(719040,18,2533.9106,2339.8535,121.5637,0,0,0,0,100,0),
(719040,19,2527.7932,2353.9048,127.00678,0,0,0,0,100,0),
(719040,20,2532.87,2368.77,128.592,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71902);

DELETE FROM `creature_addon` where `guid` IN (71902);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71902,719020,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (719020);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(719020,1,2597.7559,2368.885,109.47923,0,0,0,0,100,0),
(719020,2,2578.598,2386.728,109.47619,0,0,0,0,100,0),
(719020,3,2577.977,2398.2676,109.476,1.6288,5000,0,0,100,0),
(719020,4,2578.598,2386.728,109.47619,0,0,0,0,100,0),
(719020,5,2597.7559,2368.885,109.47923,0,0,0,0,100,0),
(719020,6,2596.35,2365.24,109.516,0,0,0,0,100,0), -- Home
(719020,7,2584.9368,2355.6057,109.52837,0,0,0,0,100,0),
(719020,8,2575.5186,2342.1199,114.1199,0,0,0,0,100,0),
(719020,9,2559.792,2323.016,115.797134,0,0,0,0,100,0),
(719020,10,2562.0835,2317.4814,115.85248,0,0,0,0,100,0),
(719020,11,2569.7673,2318.267,116.0359,0,0,0,0,100,0),
(719020,12,2582.7087,2338.5488,115.48485,0,0,0,0,100,0),
(719020,13,2587.875,2351.8242,110.09512,0,0,0,0,100,0),
(719020,14,2596.35,2365.24,109.516,0,0,0,0,100,0); -- Home


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (71906);

DELETE FROM `creature_addon` where `guid` IN (71906);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71906,719060,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (719060);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(719060,1,2489.493,2389.3794,136.4498,0,0,0,0,100,0),
(719060,2,2492.541,2380.3071,136.33742,0,0,0,0,100,0),
(719060,3,2492.7048,2360.4917,136.2727,0,0,0,0,100,0),
(719060,4,2486.7505,2344.0127,136.48561,0,0,0,0,100,0),
(719060,5,2467.919,2342.2717,136.55873,3.2165,5000,0,0,100,0),
(719060,6,2486.7505,2344.0127,136.48561,0,0,0,0,100,0),
(719060,7,2492.7048,2360.4917,136.2727,0,0,0,0,100,0), 
(719060,8,2492.541,2380.3071,136.33742,0,0,0,0,100,0),
(719060,9,2489.493,2389.3794,136.4498,0,0,0,0,100,0),
(719060,10,2465.94,2388.82,137.691,0,0,0,0,100,0); -- Home


-- Spellreaver Marathelle
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (71030);

DELETE FROM `creature_addon` where `guid` IN (71030);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(71030,710300,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (710300);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(710300,1,2591.6423,2375.1538,109.47771,0,0,0,0,100,0),
(710300,2,2586.2688,2369.9268,109.47774,0,0,0,0,100,0),
(710300,3,2581.6406,2354.877,110.44517,0,0,0,0,100,0), -- Bottom of first small hill
(710300,4,2575.155,2341.1973,115.05211,0,0,0,0,100,0),
(710300,5,2557.14,2331.4158,115.74104,0,0,0,0,100,0),  -- Bottom of hill
(710300,6,2537.8545,2337.4102,120.38001,0,0,0,0,100,0),
(710300,7,2529.1091,2353.7848,126.79262,0,0,0,0,100,0), -- Top
(710300,8,2521.3176,2391.687,129.9868,0,0,0,0,100,0),
(710300,9,2534.0269,2373.703,128.50699,0,0,0,0,100,0),
(710300,10,2556.0315,2360.467,128.50699,0,0,0,0,100,0),
(710300,11,2535.5342,2365.1182,128.50699,0,0,0,0,100,0),
(710300,12,2530.7769,2362.382,128.3037,0,0,0,0,100,0),
(710300,13,2529.1091,2353.7848,126.79262,0,0,0,0,100,0),
(710300,14,2537.8545,2337.4102,120.38001,0,0,0,0,100,0),
(710300,15,2557.14,2331.4158,115.74104,0,0,0,0,100,0),
(710300,16,2575.155,2341.1973,115.05211,0,0,0,0,100,0),
(710300,17,2587.3726,2354.145,109.43981,0,0,0,0,100,0),
(710300,18,2596.8313,2362.4126,109.47771,0,0,0,0,100,0),
(710300,19,2597.55,2371.1,109.488,0,0,0,0,100,0), -- Home first loop done
(710300,20,2591.6423,2375.1538,109.47771,0,0,0,0,100,0),
(710300,21,2586.2688,2369.9268,109.47774,0,0,0,0,100,0),
(710300,22,2581.6406,2354.877,110.44517,0,0,0,0,100,0), -- Bottom of first small hill
(710300,23,2575.155,2341.1973,115.05211,0,0,0,0,100,0),
(710300,24,2541.3357,2311.9585,115.896835,0,0,0,0,100,0), -- Turn
(710300,25,2518.765,2330.0818,116.03923,0,0,0,0,100,0),
(710300,26,2541.3357,2311.9585,115.896835,0,0,0,0,100,0), -- Turn 
(710300,27,2567.7205,2316.8604,116.03809,0,0,0,0,100,0),
(710300,28,2580.4807,2331.7644,116.01998,0,0,0,0,100,0),
(710300,29,2582.8965,2340.0476,115.16949,0,0,0,0,100,0),
(710300,30,2590.201,2354.4111,109.441345,0,0,0,0,100,0),
(710300,31,2597.3564,2362.7253,109.47737,0,0,0,0,100,0),
(710300,32,2597.55,2371.1,109.488,0,0,0,0,100,0); -- Home Second loop