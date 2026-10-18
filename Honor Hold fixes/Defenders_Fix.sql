/*
-- Query: SELECT * FROM acore_world.waypoint_data where id in (584370)
LIMIT 0, 1000

-- Date: 2023-11-28 09:29
*/
UPDATE `creature_template` SET `AIName` = "SmartAI", `gossip_menu_id` = 0, `npcflag` = 1 WHERE `entry` in (16842); -- Outhouse Defender
UPDATE `creature` SET `MovementType` = 2,`npcflag` = 1 WHERE `guid` in (57942); -- Outhouse Defender

-- Defenders Conversation
-- 72637 - right 16390
-- 72636 - left Female displayID 16388 entry 20513
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (20513);


DELETE FROM `creature_addon` WHERE `guid` IN (57942);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(57942,579420,0,0,0,0,0,NULL);

DELETE FROM `creature_text` WHERE `CreatureID` IN (16842,20513);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
-- (16842,0,0,'OY! Wait in line, would ya? Outland food doesn\'t agree with me at all.',12,0,100,5,0,0,12744,0,'Honor Hold Defender'),
(16842,0,0,'What\'s goin\' on in there?? For the love of the LIGHT, hurry it up!',12,0,100,0,0,0,12745,0,'Honor Hold Defender'),
(16842,0,1,'Do ya want me to call a medic? Maybe a priest? It\'s been over an hour, mate!',12,0,100,6,0,0,12746,0,'Honor Hold Defender'),
(16842,0,2,'OY! You in there, this is official Honor Hold business yer holdin\' up!',12,0,100,5,0,0,12747,0,'Honor Hold Defender'),
(16842,0,3,'So help me, I\'m gonna count to ten and if yer not outta there by the time I reach 10, I\'m comin\' in!',12,0,100,0,0,0,12748,0,'Honor Hold Defender'),

(20513,0,0,'Twenty years we\'ve been stranded in this hell-hole. It\'s all I can do not to run screaming through that blasted Portal. I want to see my loved ones again! I want them to know I\'m still alive.\n',12,0,100,0,0,0,18210,0,'Honor Hold Defender'),
(20513,1,0,'I feel the same. But there\'s still a job to do out here. It\'ll all be for naught if this evil finds its way back to Azeroth - back to our homes. We just have to hold on a while longer. Trust Danath - he\'s never let us down before.',12,0,100,0,0,0,18211,0,'Honor Hold Defender'),
(20513,2,0,'It\'s not him I\'m worried about. It\'s these new rookies around here - and those creepy purple elves they brought with \'em. They ain\'t even proved themselves yet.\n',12,0,100,0,0,0,18212,0,'Honor Hold Defender'),
(20513,3,0,'C\'mon - you sound like a grumpy old man.',12,0,100,0,0,0,18213,0,'Honor Hold Defender'),
(20513,4,0,'I am a grumpy old man!',12,0,100,5,0,0,18214,0,'Honor Hold Defender');


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-57942,20513,2051300,2051301,2051302,2051303,2051304,19308);
-- DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `id` IN (11);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-57942,0,0,0,11,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defender - On Respawn - Set Phase 1'), -- Phase 1 allow Talking
(-57942,0,1,0,1,1,100,0,14000,28000,90000,200000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defender - OOC Random - Say Random Line 0 (Phase 1 Only)'), -- Bathroom Defender
(-57942,0,2,0,68,1,100,0,105,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defender - On Infernal Start - Set Phase 2 (Phase 1)'),
(-57942,0,3,0,69,0,100,0,105,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defender - On Infernal End - Set Phase 1'),
(-57942,0,4,0,64,0,100,0,0,0,0,0,0,98,0,8656,0,0,0,0,7,0,0,0,0,0,0,0,0,'Honor Hold Defender - On Gossip Hello - Send Gossip'),
(-57942,0,5,0,7,0,100,0,0,0,0,0,0,41,5000,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defender - On Evade - Despawn and Respawn'),

(20513,0,0,0,11,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Respawn - Set Phase 1'), -- Honor Hold Defenders Conversation
(20513,0,1,0,11,0,100,0,0,0,0,0,0,3,0,16389,0,0,0,0,10,72636,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Respawn - Set ModelID to Male'),
(20513,0,2,0,68,1,100,0,105,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Infernal Start - Set Phase 2 (Phase 1 Only)'), -- Set Phase 2 to stop conversation during Infernal invasion
(20513,0,3,0,69,0,100,0,105,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Infernal End - Set Phase 1'),
(20513,0,4,0,1,1,100,0,14000,28000,90000,150000,0,80,2051300,0,0,0,0,0,10,72636,20513,0,0,0,0,0,0,'Honor Hold Defenders - OOC Random - Run Script (Phase 1 Only)'),
(20513,0,5,0,38,1,100,0,1,0,0,0,0,80,2051301,0,0,0,0,0,10,72637,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Data Set - Run Script (Phase 1 Only)'),
(20513,0,6,0,38,1,100,0,1,1,0,0,0,80,2051302,0,0,0,0,0,10,72636,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Data Set - Run Script (Phase 1 Only)'),
(20513,0,7,0,38,1,100,0,1,2,0,0,0,80,2051303,0,0,0,0,0,10,72637,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Data Set - Run Script (Phase 1 Only)'),
(20513,0,8,0,38,1,100,0,1,3,0,0,0,80,2051304,0,0,0,0,0,10,72636,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Data Set - Run Script (Phase 1 Only)'),
(20513,0,9,0,7,0,100,0,0,0,0,0,0,41,5000,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - Despawn and Respawn'),


(2051300,9,0,0,0,0,100,0,100,100,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Say Line 0'),
(2051300,9,1,0,0,0,100,0,16000,16000,0,0,0,45,1,0,0,0,0,0,10,72637,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Set Data on Honor Hold Defender'),

(2051301,9,0,0,0,0,100,0,100,100,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Say Line 1'),
(2051301,9,1,0,0,0,100,0,15000,15000,0,0,0,45,1,1,0,0,0,0,10,72636,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Set Data on Honor Hold Defender'),

(2051302,9,0,0,0,0,100,0,100,100,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Say Line 2'),
(2051302,9,1,0,0,0,100,0,14000,14000,0,0,0,45,1,2,0,0,0,0,10,72637,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Set Data on Honor Hold Defender'),

(2051303,9,0,0,0,0,100,0,100,100,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Say Line 3'),
(2051303,9,1,0,0,0,100,0,7000,7000,0,0,0,45,1,3,0,0,0,0,10,72636,20513,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Set Data on Honor Hold Defender'),

(2051304,9,0,0,0,0,100,0,1000,1000,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Honor Hold Defenders - On Script - Say Line 4'),

(19308,0,0,0,1,1,100,0,60000,60000,120000,180000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - Out of Combat - Say Line 0 (No Repeat)'),
-- (19308,0,0,0,38,1,100,0,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - On Data Set - Say Line 0'), -- Remove Shitty OOC timer to NPC who is not affected by infernal event
(19308,0,1,0,11,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - On Respawn - Set Phase 1'), -- Phase 1 allows talking while infernal event not started
(19308,0,2,0,68,1,100,0,105,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - On Infernal Start - Set Phase 2 (Phase 1)'),
(19308,0,3,0,69,0,100,0,105,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - On Infernal End - Set Phase 1'),
(19308,0,4,0,7,0,100,0,0,0,0,0,0,41,5000,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marshal Isildor - On Evade - Despawn and Respawn'); -- Because Shit OOC timer does not reset after an evade during the infernals event

-- (16826,0,11,0,1,0,100,0,60000,60000,120000,180000,0,45,1,0,0,0,0,0,19,19308,0,0,0,0,0,0,0,'Sid Limbardi - OOC Random - Set Data on Marshal Isildor');

DELETE FROM `waypoint_data` WHERE `id` IN (579420,579430,579440);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(579420,1,-724.585,2724.95,95.4476,3.181,5000,0,0,100,0),
(579420,2,-724.303,2727.884,95.256,3.181,3000,0,0,100,0), -- Orientation 1.566

(579430,1,-744.112,2659.47,98.7406,NULL,0,0,0,100,0), -- Path fix Defenders
(579430,2,-729.502,2660.79,94.5692,NULL,0,0,0,100,0),
(579430,3,-718.762,2675.6,95.2547,NULL,0,0,0,100,0),
(579430,4,-704.108,2681.96,93.8362,NULL,0,0,0,100,0),
(579430,5,-701.301,2682.4,93.8099,NULL,0,0,0,100,0),
(579430,6,-679.335,2671.35,89.8932,NULL,0,0,0,100,0),
(579430,7,-675.368,2650.09,89.0231,NULL,0,0,0,100,0),
(579430,8,-677.189,2639.43,88.5862,NULL,0,0,0,100,0),
(579430,9,-667.6807,2616.294,85.952,NULL,0,0,0,100,0),
(579430,10,-643.009,2584.7,82.3601,NULL,0,0,0,100,0),
(579430,11,-665.595,2613.519,85.649,NULL,0,0,0,100,0),
(579430,12,-677.25,2639.35,88.5901,NULL,0,0,0,100,0),
(579430,13,-675.94,2660.23,89.4752,NULL,0,0,0,100,0),
(579430,14,-679.97,2671.23,89.9999,NULL,0,0,0,100,0),
(579430,15,-690.464,2679.93,92.6697,NULL,0,0,0,100,0),
(579430,16,-711.82,2679.92,94.4251,NULL,0,0,0,100,0),
(579430,17,-727.054,2662.39,94.2837,NULL,0,0,0,100,0),
(579430,18,-755.366,2653.76,104.794,NULL,0,0,0,100,0),
(579430,19,-779.952,2637.8,107.934,NULL,0,0,0,100,0),

(579440,1,-747.119,2655.1,101.161,NULL,0,0,0,100,0), -- Defender Path fix
(579440,2,-729.914,2657.22,94.7774,NULL,0,0,0,100,0),
(579440,3,-723.779,2646.9,93.4879,NULL,0,0,0,100,0),
(579440,4,-719.168,2640.73,92.2085,NULL,0,0,0,100,0),
(579440,5,-707.014,2632.46,90.7467,NULL,0,0,0,100,0),
(579440,6,-695.519,2632.63,89.937,NULL,0,0,0,100,0),
(579440,7,-682.295,2636.47,89.0822,NULL,0,0,0,100,0),
(579440,8,-675.691,2629.76,87.7206,NULL,0,0,0,100,0),
(579440,9,-667.6807,2616.294,85.952,NULL,0,0,0,100,0),
(579440,10,-648.094,2583.8,82.7946,NULL,0,0,0,100,0),
(579440,11,-665.595,2613.519,85.649,NULL,0,0,0,100,0),
(579440,12,-681.215,2636.51,88.9496,NULL,0,0,0,100,0),
(579440,13,-698.409,2631.68,90.1507,NULL,0,0,0,100,0),
(579440,14,-709.131,2633.38,90.893,NULL,0,0,0,100,0),
(579440,15,-718.153,2639.37,91.9735,NULL,0,0,0,100,0),
(579440,16,-725.748,2652.19,93.8591,NULL,0,0,0,100,0),
(579440,17,-727.385,2656.8,94.2188,NULL,0,0,0,100,0),
(579440,18,-745.644,2654.86,100.671,NULL,0,0,0,100,0),
(579440,19,-757.167,2646.86,107.187,NULL,0,0,0,100,0),
(579440,20,-776.775,2635.34,107.934,NULL,0,0,0,100,0);
