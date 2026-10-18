/*
-- Query: SELECT * FROM acore_world.creature WHERE `guid` IN (67296,67281,67295,67294)
LIMIT 0, 50000

-- Date: 2024-12-22 15:33
*/
/*
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(67281,18852,0,0,530,0,0,1,1,1,2829.79,4365.04,138.607,0.443336,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL),
(67294,18852,0,0,530,0,0,1,1,1,2859.34,4327.55,149.079,5.0675,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL),
(67295,18852,0,0,530,0,0,1,1,1,2840.91,4373.2,138.791,1.58349,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL),
(67296,18852,0,0,530,0,0,1,1,1,2837.44,4357.74,142.127,4.69481,300,0,0,5060,2933,0,0,0,0,'',0,0,NULL);
*/
-- Sunfury Warp-MASTER
UPDATE `creature` SET `position_x` = 2843.58,`position_y` = 4368.46,`position_z` = 140.813,`orientation` = 5.31096,`MovementType` = 0 WHERE `guid` in (67376);
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (18857);

DELETE FROM `creature` WHERE `guid` IN (300035,300036);

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (67376);

DELETE FROM `waypoint_data` WHERE `id` IN (673760);


UPDATE `creature` SET `position_x` = 2858.68,`position_y` = 4332.08,`position_z` = 148.305,`orientation` = 0.155279,`MovementType` = 0 WHERE `guid` in (67381);

DELETE FROM `creature_addon` where `guid` IN (67381);

DELETE FROM `waypoint_data` WHERE `id` IN (673810);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67379);

DELETE FROM `creature_addon` where `guid` IN (67379);

DELETE FROM `waypoint_data` WHERE `id` IN (673790);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67382);

DELETE FROM `creature_addon` where `guid` IN (67382);

DELETE FROM `waypoint_data` WHERE `id` IN (673820);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67380);

DELETE FROM `creature_addon` where `guid` IN (67380);

DELETE FROM `waypoint_data` WHERE `id` IN (673800);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67378);

DELETE FROM `creature_addon` where `guid` IN (67378);

DELETE FROM `waypoint_data` WHERE `id` IN (673780);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67377);

DELETE FROM `creature_addon` where `guid` IN (67377);

DELETE FROM `waypoint_data` WHERE `id` IN (673770);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67384);

DELETE FROM `creature_addon` where `guid` IN (67384);

DELETE FROM `waypoint_data` WHERE `id` IN (673840);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67385);

DELETE FROM `creature_addon` where `guid` IN (67385);

DELETE FROM `waypoint_data` WHERE `id` IN (673850);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67383);

UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (67383);

DELETE FROM `waypoint_data` WHERE `id` IN (673830);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18857,-300035,-300036) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1885700,1885701,1885702) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18857,0,0,0,0,0,100,1,2900,5800,0,0,0,0,11,35919,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warp-Master - In Combat - Cast \'Welding Beam\' (No Repeat)');


-- Sunfury Engineer
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67285,67287,67288,67289,67290,67291,67292,67293,67297,67298,67299,67300,67301,67302,67303,67304); -- 1 5
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (18852);

DELETE FROM `creature` WHERE `guid` IN (300031,300032,300033,300034);
DELETE FROM `creature_addon` where `guid` IN (300031);

UPDATE `creature` SET `position_x` = 2829.79,`position_y` = 4365.04,`position_z` = 138.607,`orientation` = 0.443336 WHERE `guid` in (67281),
UPDATE `creature` SET `position_x` = 2859.34,`position_y` = 4327.55,`position_z` = 149.079,`orientation` = 5.0675 WHERE `guid` in (67294),
UPDATE `creature` SET `position_x` = 2840.91,`position_y` = 4373.2,`position_z` = 138.791,`orientation` = 1.58349 WHERE `guid` in (67295),
UPDATE `creature` SET `position_x` = 2837.44,`position_y` = 4357.74,`position_z` = 142.127,`orientation` = 4.69481 WHERE `guid` in (67296);

UPDATE `creature` SET `position_x` = 2851.53,`position_y` = 4345.92,`position_z` = 142.919,`orientation` = 5.34467 WHERE `guid` in (67282);
UPDATE `creature` SET `position_x` = 2851.59,`position_y` = 4343.83,`position_z` = 143.47,`orientation` = 4.88123 WHERE `guid` in (67283);
UPDATE `creature` SET `position_x` = 2852.51,`position_y` = 4339.02,`position_z` = 146.137,`orientation` = 1.89996 WHERE `guid` in (67284);

UPDATE `creature` SET `position_x` = 2769.02,`position_y` = 4226.05,`position_z` = 180.163,`orientation` =3.85456 WHERE `guid` in (67297);
UPDATE `creature` SET `position_x` = 2765.98,`position_y` = 4242.09,`position_z` = 180.249,`orientation` =0.86992 WHERE `guid` in (67298);
UPDATE `creature` SET `position_x` = 2779.56,`position_y` = 3878.19,`position_z` = 160.62158,`orientation` =4.1847105 WHERE `guid` in (67300);
UPDATE `creature` SET `position_x` = 2775.36,`position_y` = 3881.58,`position_z` = 159.9961,`orientation` =4.61794 WHERE `guid` in (67302);
UPDATE `creature` SET `position_x` = 2791.76,`position_y` = 3877.74,`position_z` = 160.784,`orientation` 0.421039 WHERE `guid` in (67303);
UPDATE `creature` SET `position_x` = 2750.91,`position_y` = 3859.45,`position_z` = 139.823,`orientation` =4.40896 WHERE `guid` in (67304);

UPDATE `creature_addon` SET `bytes1` = 8 WHERE `guid` in (67288,67289,67298,67301,67302);
UPDATE `creature_addon` SET `emote` = 133 WHERE `guid` in (67285,67290);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18852,-67287,-67288) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1885200,1885201,1885202) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18852,0,0,0,0,0,100,1,3100,5800,0,0,0,0,11,35919,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warp-Engineer - In Combat - Cast \'Welding Beam\' (No Repeat)');


-- Sunfury Bloodwarder
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (18853);

UPDATE `creature` SET `position_x` = 2838.93,`position_y` = 4366.32,`position_z` = 141.067,`orientation` = 1.73851 WHERE `guid` in (67328),
UPDATE `creature` SET `position_x` = 2842.82,`position_y` = 4369.77,`position_z` = 140.388,`orientation` = 3.80965 WHERE `guid` in (67329);
UPDATE `creature` SET `position_x` = 2804.16,`position_y` = 4367.73,`position_z` = 136.818,`orientation` = 5.92432 WHERE `guid` in (67330);

UPDATE `creature` SET `position_x` = 2848.38,`position_y` = 4043.89,`position_z` = 169.137,`orientation` = 0.899602 WHERE `guid` in (67322);
UPDATE `creature` SET `position_x` = 2850.49,`position_y` = 4043.18,`position_z` = 168.309,`orientation` = 1.52536 WHERE `guid` in (67325);
UPDATE `creature` SET `position_x` = 2853.72,`position_y` = 4044.88,`position_z` = 168.365,`orientation` = 2.58986 WHERE `guid` in (67324);

UPDATE `creature` SET `orientation` = 3.06987 WHERE `guid` in (67315); -- 3.06987

DELETE FROM `creature_addon` where `guid` IN (67324);

UPDATE `creature_addon` SET `emote` = 0 where `guid` IN (67322,67325,67321);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18853) AND `source_type` = 0 AND `id` IN (0,3,4);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-67321,-67322,-67323,-67324,-67325) AND `source_type` = 0 AND `id` IN (1000,1001,1002);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18853,0,0,0,0,0,100,0,1000,2000,30000,30000,0,0,11,35877,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bloodwarder - In Combat - Cast Mark of the Sunfury'); -- Commit added this 1-13-25 


-- Nether Anomaly
DELETE FROM `creature_addon` where `guid` IN (70183);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70183,0,0,0,1,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (70186,70185,70184,70183,70182,70187);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(70182,19686,0,0,530,0,0,1,1,0,2859.21,4048.09,168.879,0.575753,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70183,19686,0,0,530,0,0,1,1,0,2850.66,4046.76,171.173,5.95157,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70184,19686,0,0,530,0,0,1,1,0,2845.93,4041.9,169.919,5.68977,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70185,19686,0,0,530,0,0,1,1,0,2857.77,4049.44,170.95,0.383972,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70186,19686,0,0,530,0,0,1,1,0,2893.5,3992.6,153.44,5.72146,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70187,19686,0,0,530,0,0,1,1,0,2839.81,4036.71,168.95,4.59022,300,0,0,1582,0,0,0,0,0,'',0,0,NULL);


-- Sunfury Captain
UPDATE `creature` SET `position_x` = 2839.02,`position_y` = 4366.2,`position_z` = 141.081,`orientation` = 0.018283,`MovementType` = 0 WHERE `guid` in (69670);

DELETE FROM `creature_addon` where `guid` IN (69670);

DELETE FROM `waypoint_data` WHERE `id` IN (696700);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (69668); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69668);

DELETE FROM `waypoint_data` WHERE `id` IN (696680);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (69671); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69671);

DELETE FROM `waypoint_data` WHERE `id` IN (696710);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (69672); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69672);

DELETE FROM `waypoint_data` WHERE `id` IN (696720);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (69669); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (69669);

DELETE FROM `waypoint_data` WHERE `id` IN (696690);


-- Sunfury Magister
-- DELETE FROM `creature` WHERE `guid` IN (300028,300029,300030);
DELETE FROM `creature` WHERE `guid` IN (300030);

UPDATE `creature` SET `position_x` = 3007.53,`position_y` = 4093.04,`position_z` = 150.05927,`orientation` = 4.12666 WHERE `guid` in (67355);
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67349,67350,67351,67352,67353,67354,67355,67356,67357,67358,67359,67360,67361,67363,67364,67365,67366,67367,67368,67369,67370,67371,67372); -- 1 5

UPDATE `creature_addon` SET `bytes1` = 0 WHERE `guid` in (67355);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18855) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1885500) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18855,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Out of Combat - Disable Combat Movement (No Repeat)');
(18855,0,1,2,4,0,100,1,0,0,0,0,0,0,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Magister - On Aggro - Cast \'Fireball\' (No Repeat)'),
(18855,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - On Aggro - Increment Phase By 1 (No Repeat)'),
(18855,0,3,0,9,1,100,0,0,0,3400,4800,0,40,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Magister - Within 0-40 Range - Cast \'Fireball\' (No Repeat)'),
(18855,0,4,5,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(18855,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(18855,0,6,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18855,0,7,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(18855,0,8,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18855,0,9,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(18855,0,10,0,0,0,100,0,8000,12000,26000,31000,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - In Combat - Cast \'Bloodcrystal Surge\' (Phase 1) (No Repeat)'),
(18855,0,11,12,2,0,100,513,0,15,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 0-15% Health - Set Event Phase 3 (No Repeat)'),
(18855,0,12,13,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 0-15% Health - Enable Combat Movement (No Repeat)'),
(18855,0,13,0,61,0,100,512,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Magister - Between 0-15% Health - Flee For Assist (No Repeat)'),
(18855,0,14,0,1,0,50,0,10000,20000,15000,30000,0,0,11,34397,0,0,0,0,0,19,19421,30,0,0,0,0,0,0,'Sunfury Magister - Ooc - Cast Red Beam');

-- Crystal Targets
-- DELETE FROM `creature` WHERE `guid` IN (300025,300026,300027,300037);
DELETE FROM `creature` WHERE `guid` IN (300037);


UPDATE `creature` SET `position_z` = 154.433 WHERE `guid` in (69406); -- 154.433
UPDATE `creature` SET `position_z` = 155.311 WHERE `guid` in (69407); -- 155.311
UPDATE `creature` SET `position_z` = 156.873 WHERE `guid` in (69408); -- 156.873

UPDATE `creature` SET `position_z` = 156.306 WHERE `guid` in (69409); -- 156.306
UPDATE `creature` SET `position_z` = 155.232 WHERE `guid` in (69410); -- 155.232
UPDATE `creature` SET `position_z` = 153.472 WHERE `guid` in (69411); -- 153.472

UPDATE `creature` SET `position_z` = 158.182 WHERE `guid` in (69412); -- 158.182
UPDATE `creature` SET `position_z` = 157.121 WHERE `guid` in (69413); -- 157.121
UPDATE `creature` SET `position_z` = 156.525 WHERE `guid` in (69414); -- 156.525

UPDATE `creature` SET `position_z` = 177.784 WHERE `guid` in (69415); -- 177.784
UPDATE `creature` SET `position_z` = 180.027 WHERE `guid` in (69416); -- 180.027
UPDATE `creature` SET `position_z` = 178.755 WHERE `guid` in (69417); -- 178.755

-- Sunfury Astromancer
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (70071); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70071);

DELETE FROM `waypoint_data` WHERE `id` IN (700710);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (70072); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70072);

DELETE FROM `waypoint_data` WHERE `id` IN (700720);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (70070); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70070);

DELETE FROM `waypoint_data` WHERE `id` IN (700700);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (70069); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (70069);

DELETE FROM `waypoint_data` WHERE `id` IN (700690);


-- Sunfury Geologist
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (70739,70740,70741,70742,70743,70745,70746,70748,70750,70754,70755,70758,70759,70760,70761,70762,70763,70764,70765,70768,70770,70771,70772,70773,70774,70775,70776,70777,70778,70779,70780,70781,70782,70783,70784,70785,70786,70787,70788,70789,70790,70791); -- 1 5

UPDATE `creature` SET `position_x` = 2827,34,`position_y` = 4021.04,`position_z` = 147.366,`orientation` =4.64994 WHERE `guid` in (70739);
UPDATE `creature` SET `position_x` = 2781.24,`position_y` = 4144.36,`position_z` = 181.409,`orientation` = 5.2267 WHERE `guid` in (70742);
UPDATE `creature` SET `position_x` = 2776.21,`position_y` = 4201.81,`position_z` = 179.663,`orientation` = 6.24729 WHERE `guid` in (70743);
UPDATE `creature` SET `position_x` = 2739.25,`position_y` = 4117.61,`position_z` = 186.399,`orientation` =5.05081 WHERE `guid` in (70759);
UPDATE `creature` SET `position_x` = 2765.67,`position_y` = 4130.86,`position_z` = 181.754,`orientation` =1.309 WHERE `guid` in (70761);
UPDATE `creature` SET `position_x` = 2721.84,`position_y` = 4141.51,`position_z` = 191.701,`orientation` = 4.16041 WHERE `guid` in (70768);
UPDATE `creature` SET `position_x` = 2734.1,`position_y` = 3950.52,`position_z` = 142.227,`orientation` = 0 WHERE `guid` in (70772);
UPDATE `creature` SET `position_x` = 2784.92,`position_y` = 3972.1,`position_z` = 143.425,`orientation` =6.12931 WHERE `guid` in (70774);
UPDATE `creature` SET `position_x` = 2798.09,`position_y` = 3957.93,`position_z` = 143.107,`orientation` = 0.430775 WHERE `guid` in (70776);
UPDATE `creature` SET `position_x` = 2759.63,`position_y` = 3944.19,`position_z` = 141.977,`orientation` = 2.46091 WHERE `guid` in (70777);
UPDATE `creature` SET `position_x` = 2823.21,`position_y` = 3998.62,`position_z` = 141.713,`orientation` = 5.04007 WHERE `guid` in (70779);
UPDATE `creature` SET `position_x` = 2789.06,`position_y` = 3921.87,`position_z` = 144.566,`orientation` =4.16199 WHERE `guid` in (70783);
UPDATE `creature` SET `position_x` = 2834.51,`position_y` = 3881.73,`position_z` = 166.42,`orientation` =3.84481 WHERE `guid` in (70786);
UPDATE `creature` SET `position_x` = 2830.87,`position_y` = 3900.17,`position_z` = 157.454,`orientation` =4.01827 WHERE `guid` in (70789);

UPDATE `creature` SET `orientation` =4.71239 WHERE `guid` in (70758);

UPDATE `creature_addon` SET `bytes1` = 8 WHERE `guid` in (70733,70737,70740,70744,70745,70747,70748,70755,70764,70770,70774,70775,70781,70785,70787,70790,70791);
UPDATE `creature_addon` SET `emote` = 233 WHERE `guid` in (70735,70738,70752,70754,70756,70760,70762,70765,70767,70777);

DELETE FROM `smart_scripts` WHERE entryorguid IN (19779) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1977900) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19779,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,36645,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Geologist - In Combat CMC - Cast \'Throw Rock\''),
(19779,0,1,0,9,0,100,0,0,0,5000,9000,0,5,11,35918,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Geologist - Within 0-5 Range - Cast \'Puncture Armor\''),
(19779,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Geologist - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Netherstorm Use Standing Target
UPDATE `creature` SET `position_x` = 2780.65,`position_y` = 3875.94,`position_z` = 160.789,`orientation` =5.14872 WHERE `guid` in (69772);
UPDATE `creature` SET `position_x` = 2989.21,`position_y` = 4215.59,`position_z` = 169.047,`orientation` =5.48033 WHERE `guid` in (69830);
UPDATE `creature` SET `position_x` = 2756.89,`position_y` = 3862,`position_z` = 148.443,`orientation` =5.84685 WHERE `guid` in (69840);

-- Overseer Theredis
UPDATE `creature` SET `position_x` = 2828.02,`position_y` = 4154.67,`position_z` = 162.599,`orientation` = 0.40777,`MovementType` = 0 WHERE `guid` in (72389);

DELETE FROM `creature_addon` where `guid` IN (72389);

DELETE FROM `waypoint_data` WHERE `id` IN (723890);

-- Coruu

-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300038);

UPDATE `creature` SET `position_z` = 140.751 WHERE `guid` in (69427); -- 140.751
UPDATE `creature` SET `position_z` = 136.507 WHERE `guid` in (69428); -- 136.507
UPDATE `creature` SET `position_z` = 142.646 WHERE `guid` in (69418); -- 142.646

UPDATE `creature` SET `position_z` = 137.231 WHERE `guid` in (69419); -- 137.231
UPDATE `creature` SET `position_z` = 138.699 WHERE `guid` in (69420); -- 138.699
UPDATE `creature` SET `position_z` = 137.468 WHERE `guid` in (69423); -- 137.468

UPDATE `creature` SET `position_z` = 139.161 WHERE `guid` in (69424); -- 139.161
UPDATE `creature` SET `position_z` = 137.966 WHERE `guid` in (69422); -- 137.966

-- Overseer Seylanna
DELETE FROM `smart_scripts` WHERE entryorguid IN (20397) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20397,0,0,0,0,0,100,0,2000,3000,4500,5500,0,0,11,36179,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Seylanna - In Combat - Cast Crystal Charge'),
(20397,0,1,0,0,0,100,0,3000,5000,10000,15000,0,0,11,35919,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Seylanna - In Combat - Cast Welding Beam');


-- Sunfury Researcher
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (20136); -- 0
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71669); -- 1 5

UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (71669);

DELETE FROM `waypoint_data` WHERE `id` IN (716690);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71668); -- 1 5

UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (71668);

DELETE FROM `waypoint_data` WHERE `id` IN (716680);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71668) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-7166800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71670) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-7167000) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 



-- Sunfury Arcanist
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71633,71635,71636,71637,71638,71639,71640,71641,71642,71643,71644,71645,71646,71647,71648,71649,71651,71654,71655);

UPDATE `creature` SET `position_x` = 2455.03,`position_y` = 2922.62,`position_z` = 129.048,`orientation` = 5.88509 WHERE `guid` in (71632);
UPDATE `creature` SET `position_x` = 2434.13,`position_y` = 2908.4,`position_z` = 130.624,`orientation` = 4.86727 WHERE `guid` in (71634);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20134) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2013400,2013401) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20134,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Out of Combat - Disable Combat Movement (Phase 1) (No Repeat)'),
(20134,0,1,2,4,0,100,1,0,0,0,0,0,0,11,34447,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Aggro - Cast \'Arcane Missiles\' (No Repeat)'),
(20134,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - On Aggro - Increment Phase By 1 (No Repeat)'),
(20134,0,3,0,9,1,100,0,0,0,3400,4800,0,30,11,34447,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Within 0-30 Range - Cast \'Arcane Missiles\' (No Repeat)'),
(20134,0,4,5,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(20134,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(20134,0,6,0,9,1,100,513,0,0,0,0,25,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Within 25-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(20134,0,7,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(20134,0,8,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(20134,0,9,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(20134,0,10,0,0,0,100,0,6000,11000,35000,42000,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - In Combat - Cast \'Bloodcrystal Surge\' (Phase 1) (No Repeat)'),
(20134,0,11,12,2,0,100,513,0,15,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 0-15% Health - Set Event Phase 3 (No Repeat)'),
(20134,0,12,13,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 0-15% Health - Enable Combat Movement (No Repeat)'),
(20134,0,13,0,61,0,100,512,0,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Arcanist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(20134,0,14,0,1,0,50,0,10000,20000,15000,30000,0,0,11,34397,0,0,0,0,0,19,19421,30,0,0,0,0,0,0,'20134 - Ooc - Cast Red Beam');


-- Sunfury Guardsman
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (18850);

UPDATE `creature` SET `orientation` = 4.93205 WHERE `guid` in (67266); -- 4.93205
UPDATE `creature` SET `orientation` = 4.47147 WHERE `guid` in (67268); -- 4.47147
UPDATE `creature` SET `orientation` = 1.36895 WHERE `guid` in (67267); -- 1.36895

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18850) AND `source_type` = 0 AND `id` IN (0,3,4);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-67279,-67280,-67266,-67268,-67267) AND `source_type` = 0 AND `id` IN (1000,1001,1002,1003);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18850,0,0,0,0,0,100,0,1000,2000,30000,30000,0,0,11,35877,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Guardsman - In Combat - Cast Mark of the Sunfury');

-- Nether Anomaly
DELETE FROM `creature` WHERE `guid` IN (70191,70192);
DELETE FROM `creature` WHERE `guid` IN (70189,70188,70190,70193,70194,70195,70196);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(70191,19686,0,0,530,0,0,1,1,0,2315.97,2687.91,129.103,0.645772,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70192,19686,0,0,530,0,0,1,1,0,2309.72,2695.4,125.179,0.890118,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),

(70188,19686,0,0,530,0,0,1,1,0,2316.32,2686.14,128.714,4.91218,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70189,19686,0,0,530,0,0,1,1,0,2313.01,2691.75,129.177,5.44528,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70190,19686,0,0,530,0,0,1,1,0,2312.36,2669.05,127.416,5.95832,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70193,19686,0,0,530,0,0,1,1,0,2316.24,2679.25,126.937,1.90241,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70194,19686,0,0,530,0,0,1,1,0,2315.5,2457.33,108.444,1.58825,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70195,19686,0,0,530,0,0,1,1,0,2302.46,2450.65,107.225,1.99398,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70196,19686,0,0,530,0,0,1,1,0,2303.87,2447.52,107.976,5.44543,300,0,0,1582,0,0,0,0,0,'',0,0,NULL);


-- Sunfury Arch Mage 20135
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71657);

DELETE FROM `creature_addon` where `guid` IN (71657);

DELETE FROM `waypoint_data` WHERE `id` IN (716570);

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71656);

DELETE FROM `creature_addon` where `guid` IN (71656);

DELETE FROM `waypoint_data` WHERE `id` IN (716560);

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71658);

DELETE FROM `creature_addon` where `guid` IN (71658);

DELETE FROM `waypoint_data` WHERE `id` IN (716580);

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71660);

DELETE FROM `creature_addon` where `guid` IN (71660);

DELETE FROM `waypoint_data` WHERE `id` IN (716600);

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71659);

DELETE FROM `creature_addon` where `guid` IN (71659);

DELETE FROM `waypoint_data` WHERE `id` IN (716590);


-- Spellbinder Maryana
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (70023);

DELETE FROM `creature_addon` where `guid` IN (70023);


DELETE FROM `waypoint_data` WHERE `id` IN (700230);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19593) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19593,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Out of Combat - Disable Combat Movement'),
(19593,0,1,0,1,0,100,0,1000,1000,600000,600000,0,0,11,35917,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Out of Combat - Cast \'Fiery Intellect\''),
(19593,0,2,3,4,0,100,1,0,0,0,0,0,0,11,35927,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbinder Maryana - On Aggro - Cast \'Arcane Blast\' (No Repeat)'),
(19593,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - On Aggro - Increment Phase By 1 (No Repeat)'),
(19593,0,4,0,9,1,100,0,0,0,4500,6000,0,30,11,35927,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Within 0-30 Range - Cast \'Arcane Blast\' (No Repeat)'),
(19593,0,5,6,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(19593,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(19593,0,7,0,9,1,100,513,0,0,0,0,25,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Within 25-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(19593,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(19593,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(19593,0,10,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(19593,0,11,0,106,0,100,0,15000,18000,15000,18000,0,8,11,15091,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Spellbinder Maryana - Within 0-8 Range - Cast \'Blast Wave\' (Phase 1) (No Repeat)');

-- Duro


-- Sunfury Conjurer 
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71682,71683,71684,71685,71686,71687,71689,71690,71691,71692,71693,71695,71696);

UPDATE `creature` SET `position_x` = 2997.41,`position_y` = 2305,`position_z` = 161.725,`orientation` = 0.282577 WHERE `guid` in (71684);
UPDATE `creature` SET `position_x` = 3130.84,`position_y` = 2179.79,`position_z` = 149.41,`orientation` = 3.04712 WHERE `guid` in (71690);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20139) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2013900,2013901) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES  
(20139,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Out of Combat - Disable Combat Movement (Phase 1) (No Repeat)'),
(20139,0,1,2,4,0,100,1,0,0,0,0,0,0,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Aggro - Cast \'Frostbolt\' (No Repeat)'),
(20139,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - On Aggro - Increment Phase By 1 (No Repeat)'),
(20139,0,3,0,9,1,100,0,0,0,3400,4800,0,40,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Within 0-40 Range - Cast \'Frostbolt\' (No Repeat)'),
(20139,0,4,5,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(20139,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(20139,0,6,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(20139,0,7,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(20139,0,8,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(20139,0,9,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(20139,0,10,0,0,0,100,0,9000,14000,12000,16000,0,0,11,11829,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Sunfury Conjurer - In Combat - Cast \'Flamestrike\' (Phase 1) (No Repeat)'),
(20139,0,11,0,0,0,100,0,7000,9000,30000,45000,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - In Combat - Cast \'Bloodcrystal Surge\' (Phase 1) (No Repeat)'),
(20139,0,12,13,2,0,100,513,0,15,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 0-15% Health - Set Event Phase 3 (No Repeat)'),
(20139,0,13,14,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 0-15% Health - Enable Combat Movement (No Repeat)'),
(20139,0,14,0,61,0,100,512,0,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Conjurer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(20139,0,15,0,1,0,50,0,10000,20000,15000,30000,0,0,11,34397,0,0,0,0,0,19,19421,30,0,0,0,0,0,0,'20139 - Ooc - Cast Red Beam');


-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300039);

UPDATE `creature` SET `position_z` = 164.878 WHERE `guid` in (69429); -- 164.878
UPDATE `creature` SET `position_z` = 152.774 WHERE `guid` in (69432); -- 152.774
UPDATE `creature` SET `position_z` = 155 WHERE `guid` in (69433); -- 155

UPDATE `creature` SET `position_z` = 153.527 WHERE `guid` in (69431); -- 153.527
UPDATE `creature` SET `position_z` = 155.13 WHERE `guid` in (69430); -- 155.13


-- Sunfury Bowman
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20207) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20207,0,0,0,1,0,100,0,5000,5000,10000,70000,0,0,11,33796,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Bowman - Out of Combat - Cast \'Shoot Bow\''),
(20207,0,1,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bowman - In Combat CMC - Cast \'Shoot\''),
(20207,0,2,0,9,0,100,0,10,40,7000,9000,10,40,11,37847,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bowman - Within 10-40 Range - Cast \'Immolation Arrow\''),
(20207,0,3,0,9,0,100,0,0,20,12000,15000,0,20,11,12024,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Bowman - Within 0-20 Range - Cast \'Net\''),
(20207,0,4,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Bowman - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Netherstorm Shoot Target
UPDATE `creature` SET `position_x` = 3075.77,`position_y` = 2205.77,`position_z` = 161.619,`MovementType` = 1,`wander_distance` = 5  WHERE `guid` in (70409);

DELETE FROM `creature` WHERE `guid` IN (300041);


-- Blaze
UPDATE `gameobject` SET `position_x` = 3020.76,`position_y` = 2390.56,`position_z` = 135.297 WHERE `guid` in (22367);
UPDATE `gameobject` SET `position_x` = 3004.47,`position_y` = 2406.02,`position_z` = 133.263 WHERE `guid` in (22369);
UPDATE `gameobject` SET `position_x` = 3005.67,`position_y` = 2402.72,`position_z` = 133.763 WHERE `guid` in (22360);
UPDATE `gameobject` SET `position_x` = 3021.54,`position_y` = 2394.88,`position_z` = 134.922 WHERE `guid` in (22374);
UPDATE `gameobject` SET `position_x` = 3075.77,`position_y` = 2205.77,`position_z` = 161.619 WHERE `guid` in (22365);


-- Nether Beast
UPDATE `creature` SET `spawntimesecs` = 300,`wander_distance` = 5 WHERE `guid` in (70552,70577,70559,70524,70549,70558);
UPDATE `creature` SET `MovementType` = 0,`spawntimesecs` = 300,`wander_distance` = 0 WHERE `guid` in (70569);

UPDATE `creature` SET `position_x` = 3011.01,`position_y` = 2397.98,`position_z` = 133.986 WHERE `guid` in (70552);
UPDATE `creature` SET `position_x` = 3027.13,`position_y` = 2401.88,`position_z` = 135.201 WHERE `guid` in (70577);
UPDATE `creature` SET `position_x` = 3021.77,`position_y` = 2400.98,`position_z` = 134.562 WHERE `guid` in (70559);
UPDATE `creature` SET `position_x` = 3012.85,`position_y` = 2408.98,`position_z` = 133.12 WHERE `guid` in (70524);
UPDATE `creature` SET `position_x` = 3018.3504,`position_y` = 2392.269,`position_z` = 134.80997 WHERE `guid` in (70549);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19731) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19731,0,0,0,0,0,100,513,1500,2000,0,0,0,0,75,33731,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nether Beast - In Combat - Add Aura \'33731\' (No Repeat)');



-- Sunfury Protector
DELETE FROM `creature` WHERE `guid` IN (84845,84844);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(84844,20436,0,0,530,0,0,1,1,1,3019.6,2091.82,164.003,1.0472,720,0,0,4579,0,0,0,0,0,'',0,0,NULL),
(84845,20436,0,0,530,0,0,1,1,1,2972.15,2200.3,165.428,3.06795,720,0,0,4579,0,0,0,0,0,'',0,0,NULL);


-- Sunfury Centurion
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (20140);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20140) AND `source_type` = 0 AND `id` IN (3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71697,-71698,-71699,-71700,-71701,-71702,-71703,-71704,-71705,-71706,-71707) AND `source_type` = 0 AND `id` IN (1000,1001,1002,1003,1004);


-- Nether Anomaly
DELETE FROM `creature` WHERE `guid` IN (70199,70197,70212,70207,70200,70208,70205,70204,70202,70209,70201,70198,70203,70206,70211,70213,70214);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(70197,19686,0,0,530,0,0,1,1,0,2945.18,2258.7,163.637,1.7767,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70198,19686,0,0,530,0,0,1,1,0,3018.29,2086.81,164.003,1.8675,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70199,19686,0,0,530,0,0,1,1,0,2909.2,2138.28,164.02,0.480352,300,0,0,1582,0,0,0,0,0,'',0,0,NULL), -- Overseer
(70200,19686,0,0,530,0,0,1,1,0,2995.11,2162.37,163.204,5.97844,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70201,19686,0,0,530,0,0,1,1,0,2964.74,2138,165.428,6.24374,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70202,19686,0,0,530,0,0,1,1,0,2950.92,2189.97,165.412,4.72984,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70203,19686,0,0,530,0,0,1,1,0,3063.32,2201.89,164.003,0.575959,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70204,19686,0,0,530,0,0,1,1,0,2977.06,2160.83,163.29,4.2048,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70205,19686,0,0,530,0,0,1,1,0,2974.2,2172.24,163.29,2.76207,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70206,19686,0,0,530,0,0,1,1,0,2902.65,2134.86,164.003,6.19592,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70207,19686,0,0,530,0,0,1,1,0,2984.03,2179.63,163.29,1.44862,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70208,19686,0,0,530,0,0,1,1,0,2989.7,2164.07,163.291,5.97832,300,5,0,1582,0,1,0,0,0,'',0,0,NULL),
(70209,19686,0,0,530,0,0,1,1,0,2961.62,2138.13,165.412,6.12611,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70212,19686,0,0,530,0,0,1,1,0,2946.45,2252.62,164.003,5.18363,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70211,19686,0,0,530,0,0,1,1,0,3028.38,2321.72,138.641,1.96707,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70213,19686,0,0,530,0,0,1,1,0,3034,2308.27,138.747,0.436332,300,0,0,1582,0,0,0,0,0,'',0,0,NULL),
(70214,19686,0,0,530,0,0,1,1,0,3042.32,2307.31,138.917,1.46608,300,0,0,1582,0,0,0,0,0,'',0,0,NULL);

-- Overseer Athanel
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20435) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20435,0,0,0,0,0,100,0,4000,6000,8000,11000,0,0,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Athanel - In Combat - Cast Cleave');


-- Manaforge Ara

-- Sunfury Nethermancer
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (20248);

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71943,71944,71945,71946,71947,71948,71949,71950,71951,71953,71954,71956,71957,71958,71959,71960,71961,71962,71963,71964,71965,71966,71967,71968,71969,71970,71971,71972,71973,71974,71975); -- 1 5

UPDATE `creature` SET `position_x` = 4032.95,`position_y` = 3876.27,`position_z` = 191.68646,`orientation` = 0.673204  WHERE `guid` in (71960);
UPDATE `creature` SET `position_x` = 3966.04,`position_y` = 3764.93,`position_z` = 122.638,`orientation` = 2.35968  WHERE `guid` in (71944);
UPDATE `creature` SET `position_x` = 3996.35,`position_y` = 4119.15,`position_z` = 189.126,`orientation` = 1.71562 WHERE `guid` in (71968);
UPDATE `creature` SET `position_x` = 4001.63,`position_y` = 4027.03,`position_z` = 192.09 WHERE `guid` in (71971);

UPDATE `creature` SET `orientation` = 6.10481 WHERE `guid` in (71965);
UPDATE `creature` SET `orientation` = 4.82194 WHERE `guid` in (71956);

UPDATE `creature_addon` SET `bytes1` = 8 WHERE `guid` in (71943,71956,71958,71965); -- 8

UPDATE `creature_addon` SET `emote` = 133 WHERE `guid` in (71974,71972); -- 133

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-71966,-71967,-71953,-71971,-71972,-71973,-71974,20248) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2024800,2024801,2024802) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20248,0,0,0,1,0,100,0,1000,1000,300000,300000,0,0,11,36477,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'When out of combat and timer at the begining between 1000 and 1000 ms (and later repeats every 300000 and 300000 ms) - Self: Cast spell Summon Mana Beast (36477) on Self. Sunfury Nethermancer - Out of Combat - Disable Combat Movement'),
(20248,0,1,0,9,0,100,0,0,0,3400,4800,0,30,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'When victim in range 0 - 30 yards (check every 3400 - 4800 ms) - Self: Cast spell Shadow Bolt (9613) on Victim. Sunfury Nethermancer - Out of Combat - Cast \'Summon Mana Beast\''),
(20248,0,2,0,0,0,100,0,0,0,30000,35000,0,0,11,35778,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'When in combat and timer at the begining between 0 and 0 ms (and later repeats every 30000 and 35000 ms) - Self: Cast spell Bloodcrystal Surge (35778) on Self. Sunfury Nethermancer - On Aggro - Cast \'Bloodcrystal Surge\' (No Repeat)'),
(20248,0,3,0,2,0,100,0,0,75,15000,20000,0,0,11,17173,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'When health between 0% and 75% (check every 15000 - 20000 ms) - Self: Cast spell Drain Life (17173) on Victim. Sunfury Nethermancer - On Aggro - Cast \'Shadow Bolt\' (No Repeat)'),
(20248,0,4,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'When health between 0% and 15% (check every 0 - 0 ms) - Self: Flee for assist. Sunfury Nethermancer - On Aggro - Increment Phase By 1 (No Repeat)'),
(20248,0,5,0,1,0,50,0,10000,20000,15000,30000,0,0,11,34397,0,0,0,0,0,19,19421,30,0,0,0,0,0,0,'When out of combat and timer at the begining between 10000 and 20000 ms (and later repeats every 15000 and 30000 ms) (50% chance) - Self: Cast spell Red Beam (34397) on Closest alive creature Netherstorm Crystal Target (19421) in 30 yards. 20248 - Ooc - Cast Red Beam');


-- Mana Beast 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21267) AND `source_type` = 0 AND `id` IN (1,2,3,4);


-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300040);

UPDATE `creature` SET `position_z` = 193.486 WHERE `guid` in (69443); -- 193.486
UPDATE `creature` SET `position_z` = 107.78 WHERE `guid` in (69437); -- 107.78
UPDATE `creature` SET `position_z` = 128.603 WHERE `guid` in (69436); -- 128.603
UPDATE `creature` SET `position_z` = 130.208 WHERE `guid` in (69435); -- 130.208
UPDATE `creature` SET `position_z` = 129.213 WHERE `guid` in (69434); -- 129.213
UPDATE `creature` SET `position_z` = 196.956 WHERE `guid` in (69421); -- 196.956
UPDATE `creature` SET `position_z` = 196.364 WHERE `guid` in (69441); -- 196.364
UPDATE `creature` SET `position_z` = 195.03 WHERE `guid` in (69440); -- 195.03
UPDATE `creature` SET `position_z` = 180.654 WHERE `guid` in (69439); -- 180.654
UPDATE `creature` SET `position_z` = 181.926 WHERE `guid` in (69438); -- 181.926


-- Kneel Target
UPDATE `creature` SET `position_x` = 4025.41,`position_y` = 3866.84,`position_z` = 192.803 WHERE `guid` in (69579);
UPDATE `creature` SET `position_x` = 4042.4,`position_y` = 3877.53,`position_z` = 192.99 WHERE `guid` in (69581);
UPDATE `creature` SET `position_x` = 4083.22,`position_y` = 3898.74,`position_z` = 190.183 WHERE `guid` in (69584);
UPDATE `creature` SET `position_x` = 4014.19,`position_y` = 3912.46,`position_z` = 192.731 WHERE `guid` in (69580);
UPDATE `creature` SET `position_x` = 3965.95,`position_y` = 3965.95,`position_z` = 178.446 WHERE `guid` in (69577);
UPDATE `creature` SET `position_x` = 3948.38,`position_y` = 3914.99,`position_z` = 178.625 WHERE `guid` in (69571);
UPDATE `creature` SET `position_x` = 3941.86,`position_y` = 3877.16,`position_z` = 175.16 WHERE `guid` in (69575);
UPDATE `creature` SET `position_x` = 3967.48,`position_y` = 3895.49,`position_z` = 177.173 WHERE `guid` in (69576);
UPDATE `creature` SET `position_x` = 3918.01,`position_y` = 3781.09,`position_z` = 123.244 WHERE `guid` in (69566);
UPDATE `creature` SET `position_x` = 3938.03,`position_y` = 3787.29,`position_z` = 123.247 WHERE `guid` in (69567);
UPDATE `creature` SET `position_x` = 3977.25,`position_y` = 3748.7,`position_z` = 121.482 WHERE `guid` in (69563);
UPDATE `creature` SET `position_x` = 3987.61,`position_y` = 3783.53,`position_z` = 124.396 WHERE `guid` in (69565);
UPDATE `creature` SET `position_x` = 3819.44,`position_y` = 3814.96,`position_z` = 104.734 WHERE `guid` in (69568);
UPDATE `creature` SET `position_x` = 4006.71,`position_y` = 3895.85,`position_z` = 122.994  WHERE `guid` in (69578);
UPDATE `creature` SET `position_x` = 3991.78,`position_y` = 4138.64,`position_z` = 190.117  WHERE `guid` in (69587);


-- Daughter of Destiny
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (67419,67420,67421,67422); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (67420);

DELETE FROM `waypoint_data` WHERE `id` IN (674200);

DELETE FROM `creature_addon` where `guid` IN (67419);

DELETE FROM `waypoint_data` WHERE `id` IN (674190);

DELETE FROM `creature_addon` where `guid` IN (67421);

DELETE FROM `waypoint_data` WHERE `id` IN (674210);

DELETE FROM `creature_addon` where `guid` IN (67422);

DELETE FROM `waypoint_data` WHERE `id` IN (674220);


-- Sunfury Blood Knight
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (74121);

DELETE FROM `creature_addon` where `guid` IN (74121);

DELETE FROM `waypoint_data` WHERE `id` IN (741210);


-- Mo'Arg Warp-Master
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (72207);

DELETE FROM `creature_addon` where `guid` IN (72207);

DELETE FROM `waypoint_data` WHERE `id` IN (722070);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (72211);

DELETE FROM `creature_addon` where `guid` IN (72211);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72211,0,0,0,1,28,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (722110);


UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (72203);

DELETE FROM `creature_addon` where `guid` IN (72203);

DELETE FROM `waypoint_data` WHERE `id` IN (722030);


UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (72210);

DELETE FROM `creature_addon` where `guid` IN (72210);

DELETE FROM `waypoint_data` WHERE `id` IN (722100);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5  WHERE `guid` in (72204);

DELETE FROM `creature_addon` where `guid` IN (72204);

DELETE FROM `waypoint_data` WHERE `id` IN (722040);



-- Gan'arg Warp-Tinker
DELETE FROM `creature` WHERE `guid` IN (300042,300043,300044,300045);

UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (72058,72059,72060,72061,72062,72064,72065,72066,72067,72068,72069,72070,72071,72072,72073);

UPDATE `creature` SET `position_x` = 3901.29,`position_y` = 3993.64,`position_z` = 119.640724 WHERE `guid` in (72063);
UPDATE `creature` SET `position_x` = 3854.98,`position_y` = 4012.57,`position_z` = 127.827 WHERE `guid` in (72061);
UPDATE `creature` SET `position_x` = 4006.78,`position_y` = 3996.4,`position_z` = 121.28924 WHERE `guid` in (72075);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2028500,2028501) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20285) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20285,0,0,0,9,0,100,0,0,0,11000,15000,0,5,11,36208,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - Within 0-5 Range - Cast \'Steal Weapon\' (No Repeat)'),
(20285,0,1,0,0,0,100,0,6000,11000,9000,14000,0,0,11,36846,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Gan\'arg Warp-Tinker - In Combat - Cast \'Mana Bomb\' (No Repeat)');


-- Overseer Azarad
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (72988);

DELETE FROM `creature_addon` where `guid` IN (72988);

DELETE FROM `waypoint_data` WHERE `id` IN (729880);


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
(249380,36,3801.81,4011.81,121.598,NULL,0,0,0,100,0);



-- Sunfury Hold

-- Sunfury Archer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19707) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19707,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Archer - In Combat CMC - Cast \'Shoot\''),
(19707,0,1,0,9,0,100,0,10,40,9000,12000,10,40,11,37847,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Archer - Within 10-40 Range - Cast \'Immolation Arrow\''),
(19707,0,2,0,9,0,100,0,0,20,12000,15000,0,20,11,12024,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Archer - Within 0-20 Range - Cast \'Net\''),
(19707,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunfury Archer - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Sunfury Flamekeeper
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71904);

DELETE FROM `creature_addon` where `guid` IN (71904);

DELETE FROM `waypoint_data` WHERE `id` IN (719040);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71902);

DELETE FROM `creature_addon` where `guid` IN (71902);


DELETE FROM `waypoint_data` WHERE `id` IN (719020);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (71906);

DELETE FROM `creature_addon` where `guid` IN (71906);

DELETE FROM `waypoint_data` WHERE `id` IN (719060);


-- Spellreaver Marathelle
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (71030);

DELETE FROM `creature_addon` where `guid` IN (71030);

DELETE FROM `waypoint_data` WHERE `id` IN (710300);
