/*
-- Query: SELECT * FROM acore_world.waypoint_data where id in (584370)
LIMIT 0, 1000

-- Date: 2023-11-28 09:29
*/
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (16821);
UPDATE `creature` SET `position_x` = -787.955,`position_y` = 2744.989,`position_z` = 155.32,`orientation` = 4.486 WHERE `guid` IN (57879); -- Magus Spawn in tower

DELETE FROM `creature_text` WHERE `CreatureID` IN (16821);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16826) and `GroupID` IN (1);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16819) and `GroupID` IN (6);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(16821,0,0,'What now, Danath? Can you not see that I am inundated with work as is?',12,0,100,6,0,0,12754,0,'Magus Filinthus'),
(16821,1,0,'I take my leave now, Commander. Good day!',12,0,100,0,0,0,12763,0,'Magus Filinthus'),
(16821,2,0,'What manner of fool opens the very thing we were sent to close?',12,0,100,0,0,0,12757,0,'Magus Filinthus'),
(16821,2,1,'I have a good mind to tear that portal down myself! This is outrageous!',12,0,100,0,0,0,12758,0,'Magus Filinthus'),
(16821,2,2,'Never! I\'ll never abide by their will! I\'d sooner be dead.',12,0,100,5,0,0,12762,0,'Magus Filinthus'),
(16821,2,3,'Twenty years lost! Twenty! I won\'t stand for this! No, no, no... ',12,0,100,5,0,0,12760,0,'Magus Filinthus'),
(16821,3,0,'A mailbox? Well is that not the salt on the wounds! Twenty years cut-off from the world and now a mailbox! WONDERFUL!',12,0,100,5,0,0,12764,0,'Magus Filinthus'),
(16821,4,0,'Sid! Ale, NOW!',12,0,100,5,0,0,12765,0,'Magus Filinthus'),
(16821,5,0,'Don\'t you start with me, Sid! Have it sent to my quarters in the tower instead! Your inn has become a zoo!',12,0,100,25,0,0,12768,0,'Magus Filinthus'),
(16821,6,0,'And have you heard? Have you heard the preposterous claims? Alliance and Horde supporting peace? Why the very thought of such things makes my blood boil!',12,0,100,0,0,0,12759,0,'Magus Filinthus'),
(16821,6,1,'To trust an orc? Even if it is the progeny of Durotan himself! This is madness!',12,0,100,0,0,0,12761,0,'Magus Filinthus'),

(16826,1,0,'Comin\' right up, yer highness! Is there anythin\' else you\'ll be needin\'? Perhaps yer hat cleaned or yer nails trimmed?',12,0,100,14,0,0,12766,0,'Sid Limbardi'),

(16819,6,0,'That is precisely why I have called for you old friend. We have much to discuss.',12,0,100,1,0,0,12755,0,'Force Commander Danath Trollbane');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16821,1682100,1682101,1682102,1682103,1682104,1682105);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16819) and `id` IN (8,9);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `id` IN (7);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16821,0,0,1,11,0,100,0,0,0,0,0,0,53,0,16821,1,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Respawn - Start Waypoint'),
(16821,0,1,0,61,0,100,0,0,0,0,0,0,22,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Respawn - Set Phase 7'), -- In Tower Phase 7

(16821,0,2,0,68,0,100,0,105,0,0,0,0,117,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Infernal Start - Disable Evade'),  -- Infernal Event Evade Fix Start
(16821,0,3,0,68,37,100,0,105,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Infernal Start - Set Phase 2 (Phase 1,3 and 6 Only)'),
(16821,0,4,0,69,2,100,0,105,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Infernal End - Set Phase 1'),
(16821,0,5,0,40,0,100,0,38,16821,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 38 Reached - Set Phase 4'), -- Limit Infernal event interference -- Honor Hold Phase 4
(16821,0,6,0,40,0,100,0,101,16821,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 101 Reached - Set Phase 1'), -- Outdoors Phase 1  - Infernal Event change to Phase 2 temp
(16821,0,7,0,40,0,100,0,1,16821,0,0,0,80,1682104,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 1 Reached - Run Script'),  -- Tower Script Set Phase 7 then 3
(16821,0,8,0,40,0,100,0,30,16821,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 30 Reached - Set Phase 1'),
(16821,0,9,0,40,0,100,0,107,16821,0,0,0,22,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 107 Reached - Set Phase 5'), -- Inn Phase 5
(16821,0,11,0,40,1,100,0,106,16821,0,0,0,80,1682100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 106 Reached - Run Script (Phase 1 Only)'), -- Mailbox
(16821,0,12,0,40,8,100,0,51,16821,0,0,0,80,1682101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 51 Reached - Run Script (Phase 4 Only)'), -- Talk to Danath
(16821,0,13,0,40,32,100,0,88,16821,0,0,0,80,1682102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 88 Reached - Run Script (Phase 6 Only)'), -- Announce Leaving
(16821,0,14,0,40,0,100,0,111,16821,0,0,0,80,1682103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 111 Reached - Run Script'), -- Talk to Sid

(16821,0,15,0,1,69,100,0,7000,14000,25000,40000,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - OOC Random - Say Random Line 2 (Phase 1, 3 and 7 Only)'), -- Random Talk Phase 1 outdoor only
(16821,0,16,0,1,64,100,0,4000,8000,7000,10000,0,5,432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - OOC Random - Run Emote (Phase 7 Only)'), -- Work Emote Phase 7 in Tower only
(16821,0,17,0,1,32,100,0,14000,28000,41000,55000,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - OOC Random - Say Random Line 6 (Phase 6 Only)'), -- Random Talk Phase 6 Honor Hold back and forth
(16821,0,18,0,38,0,100,0,1,1,0,0,0,117,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Data Set - Allow Evade'), -- Infernal Event Evade Fix End
(16821,0,19,0,40,0,100,0,46,16821,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Waypoint 46 Reached - Set Phase 4'), -- Set if Infernal event stays too long

(1682100,9,0,0,0,0,100,0,0,0,0,0,0,54,13000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Pause Waypoint Movement'),
(1682100,9,1,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.6612,'Magus Filinthus - On Script - Set Orientation'),
(1682100,9,2,0,0,0,100,0,100,100,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Say Line 3'), -- Mailbox Phase 1

(1682101,9,0,0,0,0,100,0,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Pause Waypoint Movement'),
(1682101,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.678,'Magus Filinthus - On Script - Set Orientation'),
(1682101,9,2,0,0,0,100,0,100,100,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Say Line 0'), -- Honor Hold Phase 4 - Danath
(1682101,9,3,0,0,0,100,0,10000,10000,0,0,0,45,1,3,0,0,0,0,19,16819,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Set Data on Force Commander Danath Trollbane'),
(1682101,9,4,0,0,0,100,0,12000,12000,0,0,0,22,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Set Phase 6'),

(1682102,9,0,0,0,0,100,0,0,0,0,0,0,54,12000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Pause Waypoint Movement'),
(1682102,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.678,'Magus Filinthus - On Script - Set Orientation'),
(1682102,9,2,0,0,0,100,0,100,100,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Set Phase 4'),
(1682102,9,3,0,0,0,100,0,100,100,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Say Line 1'), -- Honor Hold Phase 6 - Announce Leave

(1682103,9,0,0,0,0,100,0,0,0,0,0,0,54,32000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Pause Waypoint Movement'),
(1682103,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.882,'Magus Filinthus - On Script - Set Orientation'),
(1682103,9,2,0,0,0,100,0,100,100,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Say Line 4'), -- Inn Phase 5 - Sid
(1682103,9,3,0,0,0,100,0,5000,5000,0,0,0,45,1,3,0,0,0,0,19,16826,20,0,0,0,0,0,0,'Magus Filinthus - On Script - Set Data on Sid Limbardi'),
(1682103,9,4,0,0,0,100,0,11000,11000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Say Line 5'), -- Inn Phase 5 - Sid
(1682103,9,5,0,0,0,100,0,11000,11000,0,0,0,11,7077,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Cast Teleport'),
(1682103,9,6,0,0,0,100,0,3000,3000,0,0,0,62,0,0,0,0,0,0,1,0,0,0,0,-787.718,2744.989,155.32,4.486,'Magus Filinthus - On Script - Teleport XYZ'),
(1682103,9,7,0,0,0,100,0,100,100,0,0,0,11,70618,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Cast Teleport Arrival'),

(1682104,9,0,0,0,0,100,0,0,0,0,0,0,54,240000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Pause Waypoint Movement'),
(1682104,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.486,'Magus Filinthus - On Script - Set Orientation'),
(1682104,9,2,0,0,0,100,0,100,100,0,0,0,22,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Set Phase 7'),
(1682104,9,3,0,0,0,100,0,90000,200000,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Resume Waypoint Movement'),
(1682104,9,4,0,0,0,100,0,1000,1000,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magus Filinthus - On Script - Set Phase 3'),

(16819,0,8,0,38,1,100,0,1,3,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Data Set - Say Line 6'), -- Say Line Phase 1 only - Arator or Quests override
(16819,0,9,0,10,0,100,0,1,20,200000,200000,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - OOC LOS - Say Line 0'),

(16826,0,7,0,38,0,100,0,1,3,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Say Line 1');

DELETE FROM `waypoints` WHERE `entry` IN (16821);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(16821,1,-787.955,2744.989,155.32,0,0,''),  -- Teleport Tower Orientation 4.486
(16821,2,-787.718,2745.874,155.309,0,0,''),
(16821,3,-775.976,2751.651,155.222,0,0,''),
(16821,4,-771.652,2758.861,155.224,0,0,''),
(16821,5,-773.189,2766.52,155.235,0,0,''),
(16821,6,-777.131,2765.435,154.862,0,0,''),
(16821,7,-778.507,2762.153,153.024,0,0,''),
(16821,8,-783.499,2762.676,150.666,0,0,''),
(16821,9,-782.904,2766.941,148.794,0,0,''),
(16821,10,-777.002,2766.187,146.443,0,0,''),
(16821,11,-773.775,2767.606,146.494,0,0,''),
(16821,12,-781.06,2773.634,146.493,0,0,''), -- another railing 
(16821,13,-789.813,2772.338,146.477,0,0,''),
(16821,14,-795.891,2766.2,146.444,0,0,''),
(16821,15,-793.919,2760.586,144.523,0,0,''),
(16821,16,-788.811,2758.932,141.875,0,0,''),
(16821,17,-773.884,2766.41,140.779,0,0,''),
(16821,18,-772.145,2761.822,140.616,0,0,''),
(16821,19,-773.967,2754.809,138.982,0,0,''),
(16821,20,-780.741,2749.836,136.345,0,0,''),
(16821,21,-788.326,2749.96,134.217,0,0,''),
(16821,22,-791.326,2752.728,134.112,0,0,''),
(16821,23,-785.004,2758.448,131.603,0,0,''),
(16821,24,-780.732,2756.58,131.201,0,0,''),
(16821,25,-776.98,2761.504,128.27,0,0,''),
(16821,26,-779.576,2768.501,125.513,0,0,''),
(16821,27,-777.479,2770.346,125.513,0,0,''),
(16821,28,-773.129,2767.036,124.868,0,0,''),
(16821,29,-773.063,2757.694,121.39,0,0,''),
(16821,30,-777.873,2751.608,120.847,0,0,''),  -- Exiting Tower
(16821,31,-765.738,2734.034,120.728,0,0,''), -- Top of tower outdoor stairs
(16821,32,-760.218,2726.242,116.824,0,0,''),
(16821,33,-733.261,2692.1779,102.403,0,0,''),
(16821,34,-717.942,2675.33,95.1129,0,0,''),
(16821,35,-726.18,2658.89,94.0704,0,0,''),
(16821,36,-745.81,2657.82,99.8173,0,0,''),
(16821,37,-761.126,2647.87,107.934,0,0,''),
(16821,38,-791.201,2628.68,107.671,0,0,''), -- Enter Honor Hold
(16821,39,-787.071,2619.82,109.179,0,0,''),  -- Floor fix
(16821,40,-781.925,2609.75,109.173,0,0,''),
(16821,41,-791.043,2604.4,109.173,0,0,''),
(16821,42,-802.099,2620.71,109.173,0,0,''), 
(16821,43,-812.614,2610.24,109.173,0,0,''),
(16821,44,-818.781,2618.36,113.101,0,0,''),
(16821,45,-807.351,2626.02,117.994,0,0,''),
(16821,46,-812.086,2635.24,117.994,0,0,''),
(16821,47,-799.989,2643.204,123.095,0,0,''), -- Floor fix
(16821,48,-795.891,2645.98,123.095,0,0,''),
(16821,49,-789.117,2631.524,123.095,0,0,''),
(16821,50,-803.158,2621.708,123.095,0,0,''),
(16821,51,-809.364,2617.874,124.389,0,0,''), -- Pause Honor keep talk to Danath
(16821,52,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,53,-810.80,2621.304,124.389,0,0,''),
(16821,54,-807.067,2615.396,124.389,0,0,''),
(16821,55,-807.569,2615.103,124.389,0,0,''),
(16821,56,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,57,-810.80,2621.304,124.389,0,0,''),
(16821,58,-807.067,2615.396,124.389,0,0,''),
(16821,59,-807.569,2615.103,124.389,0,0,''),
(16821,60,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,61,-810.80,2621.304,124.389,0,0,''),
(16821,62,-807.067,2615.396,124.389,0,0,''),
(16821,63,-807.569,2615.103,124.389,0,0,''),
(16821,64,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,65,-810.80,2621.304,124.389,0,0,''),
(16821,66,-807.067,2615.396,124.389,0,0,''),
(16821,67,-807.569,2615.103,124.389,0,0,''),
(16821,68,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,69,-810.80,2621.304,124.389,0,0,''),
(16821,70,-807.067,2615.396,124.389,0,0,''),
(16821,71,-807.569,2615.103,124.389,0,0,''),
(16821,72,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,73,-810.80,2621.304,124.389,0,0,''),
(16821,74,-807.067,2615.396,124.389,0,0,''),
(16821,75,-807.569,2615.103,124.389,0,0,''),
(16821,76,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,77,-810.80,2621.304,124.389,0,0,''),
(16821,78,-807.067,2615.396,124.389,0,0,''),
(16821,79,-807.569,2615.103,124.389,0,0,''),
(16821,80,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,81,-810.80,2621.304,124.389,0,0,''),
(16821,82,-807.067,2615.396,124.389,0,0,''),
(16821,83,-807.569,2615.103,124.389,0,0,''),
(16821,84,-811.135,2621.08,124.389,0,0,''), -- start pacing
(16821,85,-810.80,2621.304,124.389,0,0,''),
(16821,86,-807.067,2615.396,124.389,0,0,''),
(16821,87,-807.569,2615.103,124.389,0,0,''),
(16821,88,-809.364,2617.874,124.389,0,0,''), -- Pause to say he is leaving
(16821,89,-803.158,2621.708,123.095,0,0,''),
(16821,90,-789.117,2631.524,123.095,0,0,''),
(16821,91,-796.289,2645.54,123.096,0,0,''),
(16821,92,-800.859,2644.72,123.096,0,0,''),
(16821,93,-813.082,2637.67,117.994,0,0,''),
(16821,94,-806.967,2626.57,117.994,0,0,''),
(16821,95,-819.993,2619.33,113.101,0,0,''),
(16821,96,-814.201,2608.95,109.172,0,0,''),
(16821,97,-800.392,2616.99,109.172,0,0,''),
(16821,98,-812.952,2640.832,109.172,0,0,''), -- Alternate side of honor hold exit
(16821,99,-803.886,2646.344,109.172,0,0,''),
(16821,100,-797.402,2636.906,109.172,0,0,''),
(16821,101,-790.339,2628.05,107.673,0,0,''), -- Exit Honor Hold
(16821,102,-759.591,2646.67,107.934,0,0,''),
(16821,103,-726.636,2660.42,94.0944,0,0,''),
(16821,104,-717.215,2676.89,95.178,0,0,''),
(16821,105,-703.98,2681.07,93.8066,0,0,''),
(16821,106,-709.54,2698.65,94.366,0,0,''), -- Mailbox orientation .6612
(16821,107,-709.22,2712.85,94.7207,0,0,''), -- Enter Inn
(16821,108,-699.47,2713.21,94.7358,0,0,''),
(16821,109,-700.526,2717.75,94.7358,0,0,''),
(16821,110,-703.485,2719.76,94.7358,0,0,''),
(16821,111,-702.956,2723.429,94.1104,0,0,'');  -- pause Inn talk to SID orientation 1.882 sid to magus 5.662
