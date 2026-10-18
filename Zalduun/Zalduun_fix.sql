
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid`=57213;
UPDATE `creature` SET `MovementType`=0 WHERE `guid`=57213;

DELETE FROM `creature_text` WHERE `CreatureID` IN (16502) AND `GroupID` IN (1,2);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(16502,1,0,'Aurelon, some assistance please.',12,7,100,1,0,0,13104,0,'Zalduun'),
(16502,1,1,'Paladin Aurelon, if you have the mana to spare, could you help with that one, please?  Thank you.',12,7,100,1,0,0,13107,0,'Zalduun');


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16501,16502) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1650200,1650201,1650100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

(16501,0,0,0,74,0,100,0,0,0,120000,120000,40,0,11,29170,0,0,0,0,0,9,0,0,0,0,0,0,0,0,'Aurelon - On Friendly Between 0-40% Health - Cast \'Lesser Heal\''),
(16501,0,1,0,38,0,100,0,1,1,0,0,0,0,80,1650100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aurelon - On Data Set 1 1 - Run Script'),


(16502,0,0,0,74,0,100,0,0,0,120000,120000,40,0,11,29170,0,0,0,0,0,9,0,0,0,0,0,0,0,0,'Zalduun - On Friendly Between 0-40% Health - Cast \'Lesser Heal\''),
(16502,0,1,2,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Respawn - Set Phase 1'),
(16502,0,2,0,61,0,100,0,0,0,0,0,0,0,53,0,16502,1,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Respawn (linked) - Start Waypoint'),
(16502,0,3,0,1,0,20,0,10000,10000,10000,10000,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - OOC - Set Phase 2'),

-- Verified 59239 3
(16502,0,4,0,40,0,100,512,3,16502,0,0,0,0,64,1,0,0,0,0,0,10,59239,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 3 - Store Target'),
(16502,0,5,0,40,1,20,512,3,16502,0,0,0,0,80,1650200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 3 - Run Script (Phase 1)'),
(16502,0,6,0,40,2,20,512,3,16502,0,0,0,0,80,1650201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 3 - Run Script (Phase 2)'),
(16502,0,7,0,40,0,100,512,10,16502,0,0,0,0,142,15,0,0,0,0,0,10,59239,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 10 - Injured Draenei Set Health 15%'),

-- verified 59237 4
(16502,0,8,0,40,0,100,512,4,16502,0,0,0,0,64,1,0,0,0,0,0,10,59237,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 4 - Store Target'),
(16502,0,9,0,40,1,20,512,4,16502,0,0,0,0,80,1650200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 4 - Run Script (Phase 1)'),
(16502,0,10,0,40,2,20,512,4,16502,0,0,0,0,80,1650201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 4 - Run Script (Phase 2)'),
(16502,0,11,0,40,0,100,512,7,16502,0,0,0,0,142,15,0,0,0,0,0,10,59237,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 7 - Injured Draenei Set Health 15%'),

-- Verified 59238 5
(16502,0,12,0,40,0,100,512,5,16502,0,0,0,0,64,1,0,0,0,0,0,10,59238,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 5 - Store Target'),
(16502,0,13,0,40,1,20,512,5,16502,0,0,0,0,80,1650200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 5 - Run Script (Phase 1)'),
(16502,0,14,0,40,2,20,512,5,16502,0,0,0,0,80,1650201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 5 - Run Script (Phase 2)'),
(16502,0,15,0,40,0,100,512,15,16502,0,0,0,0,142,15,0,0,0,0,0,10,59238,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 15 - Injured Draenei Set Health 15%'),

-- verified 59240 7
(16502,0,16,0,40,0,100,512,7,16502,0,0,0,0,64,1,0,0,0,0,0,10,59240,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 7 - Store Target'),
(16502,0,17,0,40,1,20,512,7,16502,0,0,0,0,80,1650200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 7 - Run Script (Phase 1)'),
(16502,0,18,0,40,2,20,512,7,16502,0,0,0,0,80,1650201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 7 - Run Script (Phase 2)'),
(16502,0,19,0,40,0,100,512,2,16502,0,0,0,0,142,15,0,0,0,0,0,10,59240,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 2 - Injured Draenei Set Health 15%'),

-- verified 59236 8
(16502,0,20,0,40,0,100,512,8,16502,0,0,0,0,64,1,0,0,0,0,0,10,59236,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 8 - Store Target'),
(16502,0,21,0,40,1,20,512,8,16502,0,0,0,0,80,1650200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 8 - Run Script (Phase 1)'),
(16502,0,22,0,40,2,20,512,8,16502,0,0,0,0,80,1650201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 8 - Run Script (Phase 2)'),
(16502,0,23,0,40,0,100,512,1,16502,0,0,0,0,142,15,0,0,0,0,0,10,59236,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 1 - Injured Draenei Set Health 15%'),

-- verified 59235 11
(16502,0,24,0,40,0,100,512,11,16502,0,0,0,0,64,1,0,0,0,0,0,10,59235,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 11 - Store Target'),
(16502,0,25,0,40,1,20,512,11,16502,0,0,0,0,80,1650200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 11 - Run Script (Phase 1)'),
(16502,0,26,0,40,2,20,512,11,16502,0,0,0,0,80,1650201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Reached Point 11 - Run Script (Phase 2)'),
(16502,0,27,0,40,0,100,512,7,16502,0,0,0,0,142,15,0,0,0,0,0,10,59235,16971,0,0,0,0,0,0,'Zalduun - On Reached Point 7 - Injured Draenei Set Health 15%'),


(1650200,9,0,0,0,0,100,0,0,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Script - Pause Waypoint'),
(1650200,9,1,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Zalduun - On Script - Set Orientation Stored Target'),
(1650200,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Script - Say Line 0'),
(1650200,9,3,0,0,0,100,0,3000,3000,0,0,0,0,11,29170,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Zalduun - On Script - Cast \'Lesser Heal\ Stored Target'),
(1650200,9,4,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Script - Set Phase 1'),


(1650201,9,0,0,0,0,100,0,0,0,0,0,0,0,54,14000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Script - Pause Waypoint'),
(1650201,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,10,57212,16501,0,0,0,0,0,0,'Zalduun - On Script - Send Target 1 (Aurelon)'),
(1650201,9,2,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,10,57212,16501,0,0,0,0,0,0,'Zalduun - On Script - Set Orientation (Aurelon)'),
(1650201,9,3,0,0,0,100,0,2000,2000,0,0,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zalduun - On Script - Say Line 1'),
(1650201,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,57212,16501,0,0,0,0,0,0,'Zalduun - On Script - Set Data 1 1 (Aurelon)'),
(1650201,9,5,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,10,57213,16502,0,0,0,0,0,0,'Zalduun - On Script - Set Phase 1'),


(1650100,9,0,0,0,0,100,0,0,0,0,0,0,0,69,1,0,0,1,1,0,12,1,0,0,0,0,0,0,0,'Aurelon - On Script - Move to POS Stored Target'),
(1650100,9,1,0,0,0,100,0,5000,5000,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Aurelon - On Script - Set Orientation Stored Target'),
(1650100,9,2,0,0,0,100,0,1000,1000,0,0,0,0,11,29170,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Aurelon - On Script - Cast \'Lesser Heal\ Stored Target'),
(1650100,9,3,0,0,0,100,0,1000,1000,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-4103.19,-13744.2,74.7326,3.75246,'Aurelon - On Script - Move to POS');

DELETE FROM `waypoint_data` WHERE `id` IN (572130);

DELETE FROM `waypoints` WHERE `entry` IN (16502);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(16502,1,-4113.68,-13762,73.5694,5.80705,0,'Zalduun'),
(16502,2,-4110.51,-13765.2,73.6102,5.19209,0,'Zalduun'),
(16502,3,-4107.71,-13772.5,74.6982,5.80705,0,'Zalduun'), -- 59239
(16502,4,-4102.51,-13772.3,74.7185,0.511104,0,'Zalduun'), -- 59237
(16502,5,-4099.89,-13768,74.7256,1.36954,0,'Zalduun'),
(16502,6,-4102.44,-13763.8,74.5717,2.63796,0,'Zalduun'), -- 59238
(16502,7,-4125.6,-13762,74.1406,3.4807,0,'Zalduun'), -- 59240
(16502,8,-4129.88,-13764.2,74.5865,3.28513,0,'Zalduun'), -- 59236
(16502,9,-4135.57,-13762.7,74.657,2.14081,0,'Zalduun'),
(16502,10,-4137.16,-13760,74.6108,1.35698,0,'Zalduun'),
(16502,11,-4135.66,-13756.6,74.5907,0.545662,0,'Zalduun'), -- 
(16502,12,-4131.3,-13754.6,74.6109,6.14319,0,'Zalduun'),
(16502,13,-4127.9,-13756.6,74.2825,5.30675,0,'Zalduun'), -- 59235
(16502,14,-4127.08,-13760.8,74.2562,5.74265,0,'Zalduun'),
(16502,15,-4121.58,-13761.4,73.5881,0.0354084,0,'Zalduun');
