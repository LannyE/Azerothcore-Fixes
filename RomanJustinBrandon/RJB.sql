/*
Roman Justin Brandon in Stormwind

*/
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (79815,79816,79817);
UPDATE `creature_addon` SET `path_id` = 0,`bytes2` = 1 WHERE `guid` in (79815,79816,79817);
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (1368,1370,1371);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (1368,1370,1371,136800,137000,137001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1368,0,0,0,38,0,100,0,1,0,0,0,0,29,0,75,0,0,0,0,10,79817,1370,0,0,0,0,0,0,'Justin - On Data Set 1 0 - Set Follow'),
(1368,0,1,0,38,0,100,0,1,2,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-8582.03,633.634,96.3386,5.0381,'Justin - On Data Set 1 2 - Move to POS'),
(1368,0,2,0,38,0,100,0,1,4,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.0381,'Justin - On Data Set 1 4 - Set Orientation'),
(1368,0,3,0,38,0,100,0,1,3,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-8675.673,909.057,96.338,3.768,'Justin - On Data Set 1 3 - Move to POS'),
(1368,0,4,0,38,0,100,0,1,5,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.768,'Justin - On Data Set 1 5 - Set Orientation'),
(1368,0,5,0,1,0,100,0,30000,30000,80000,160000,0,80,136800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Justin - OOC - Run Script'),
(1368,0,6,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Justin - On Respawn - Set Active'),

(1371,0,0,0,38,0,100,0,1,0,0,0,0,29,0,285,0,0,0,0,10,79817,1370,0,0,0,0,0,0,'Roman - On Data Set 1 0 - Set Follow'),
(1371,0,1,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Roman - On Data Set 1 1 - Say Random 0'),
(1371,0,2,0,38,0,100,0,1,2,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-8583.88,633.127,96.3386,5.0381,'Roman - On Data Set 1 2 - Move to POS'),
(1371,0,3,0,38,0,100,0,1,4,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.0381,'Roman - On Data Set 1 4 - Set Orientation'),
(1371,0,4,0,38,0,100,0,1,3,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-8673.55,912.143,96.338,2.282,'Roman - On Data Set 1 3 - Move to POS'),
(1371,0,5,0,38,0,100,0,1,5,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.282,'Roman - On Data Set 1 5 - Set Orientation'),
(1371,0,6,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Roman - On Respawn - Set Active'),

(1370,0,0,1,1,0,100,1,25000,25000,0,0,0,53,1,1370,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - OOC (No Repeat) - Start Waypoint'),
(1370,0,1,2,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - Linked - Set Data 1 0 \'Justin\''),
(1370,0,2,0,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - Linked - Set Data 1 0 \'Roman\''),
(1370,0,3,0,40,0,100,0,31,137000,0,0,0,80,137000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - On Waypoint 31 Reached - Run Script'),
(1370,0,4,0,40,0,100,0,32,1370,0,0,0,80,137001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - On Waypoint 32 Reached - Run Script'),
(1370,0,5,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - On Data Set 1 1 - Say Random 0'),
(1370,0,6,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - On Respawn - Set Active'),

(136800,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Justin - On Script - Say Random 0'),
(136800,9,1,0,0,0,100,0,4000,8000,0,0,0,45,1,1,0,0,0,0,10,79817,1370,0,0,0,0,0,0,'Justin - On Script - Set Data 1 1 \'Brandon\''),
(136800,9,2,0,0,0,100,0,6000,9000,0,0,0,45,1,1,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Justin - On Script - Set Data 1 1 \'Roman\''),

-- Starting Dock
(137000,9,0,0,0,0,100,0,200,200,0,0,0,45,1,2,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 2 \'Roman\''),
(137000,9,1,0,0,0,100,0,0,0,0,0,0,45,1,2,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 2 \'Justin\''),
(137000,9,2,0,0,0,100,0,3000,3000,0,0,0,45,1,4,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 4 \'Roman\''),
(137000,9,3,0,0,0,100,0,0,0,0,0,0,45,1,4,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 4 \'Justin\''),
(137000,9,4,0,0,0,100,0,500,500,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.2961,'Brandon - On Script - Set Orientation'),
(137000,9,5,0,0,0,100,0,3600000,4500000,0,0,0,53,1,1370,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - On Script - Start Waypoint'),
(137000,9,6,0,0,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 0 \'Justin\''),
(137000,9,7,0,0,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 0 \'Roman\''),

-- Second Dock
(137001,9,0,0,0,0,100,0,500,500,0,0,0,45,1,3,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 3 \'Roman\''),
(137001,9,1,0,0,0,100,0,0,0,0,0,0,45,1,3,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 3 \'Justin\''),
(137001,9,2,0,0,0,100,0,3000,3000,0,0,0,45,1,5,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 5 \'Roman\''),
(137001,9,3,0,0,0,100,0,0,0,0,0,0,45,1,5,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 5 \'Justin\''),
(137001,9,4,0,0,0,100,0,500,500,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.282,'Brandon - On Script - Set Orientation'),
(137001,9,5,0,0,0,100,0,3600000,4500000,0,0,0,53,1,137000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brandon - On Script - Start Waypoint'),
(137001,9,6,0,0,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,79815,1368,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 0 \'Justin\''),
(137001,9,7,0,0,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,79816,1371,0,0,0,0,0,0,'Brandon - On Script - Set Data 1 0 \'Roman\'');

DELETE FROM `creature_text` where `CreatureID` in (1368,1370,1371);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(1368,0,0,'And so the knights stood before the charging Horde and held their ground as a thousand berserk orcs came through the valley.',12,7,100,1,0,0,150,0,'Justin - Talk'),
(1368,0,1,'And that\'s how Lothar killed thirty six orcs with his bare hands!',12,7,100,1,0,0,149,0,'Justin - Talk'),
(1368,0,2,'And then the rabbit just bit his head off... I swear.',12,7,100,1,0,0,155,0,'Justin - Talk'),
(1368,0,3,'They say he can turn into a raven sometimes.',12,7,100,1,0,0,151,0,'Justin - Talk'),
(1368,0,4,'You know there are crocolisks in the Canals. They were brought from the swamp as pets, but got thrown in the canals.',12,7,100,1,0,0,156,0,'Justin - Talk'),
(1368,0,5,'You know why orc eyes glow red? It\'s because they drink blood!',12,7,100,1,0,0,152,0,'Justin - Talk'),
(1368,0,6,'I swear, people have actually seen them. Pandaren really do exist!',12,7,100,1,0,0,154,0,'Justin - Talk'),
(1368,0,7,'There is no spoon.',12,7,100,1,0,0,153,0,'Justin - Talk'),

(1370,0,0,'My father says that\'s just a story.',12,7,100,1,0,0,168,0,'Brandon - Talk'),
(1370,0,1,'Can you imagine?',12,7,100,1,0,0,169,0,'Brandon - Talk'),
(1370,0,2,'Oh c\'mon, that\'s not true.',12,7,100,1,0,0,166,0,'Brandon - Talk'),
(1370,0,3,'Oh yeah, I heard about that.',12,7,100,1,0,0,158,0,'Brandon - Talk'),
(1370,0,4,'Really?',12,7,100,1,0,0,147,0,'Brandon - Talk'),
(1370,0,5,'Sounds kinda like one of Billy\'s fish stories to me.',12,7,100,1,0,0,170,0,'Brandon - Talk'),
(1370,0,6,'That\'s neat.',12,7,100,1,0,0,167,0,'Brandon - Talk'),
(1370,0,7,'Wow.',12,7,100,1,0,0,157,0,'Brandon - Talk'),

(1371,0,0,'Eww... that\'s not a fish!',12,7,100,1,0,0,173,0,'Roman - Talk'),
(1371,0,1,'I don\'t think there\'s any fish in these canals.',12,7,100,1,0,0,177,0,'Roman - Talk'),
(1371,0,2,'I got worm guts on my shoes.',12,7,100,1,0,0,174,0,'Roman - Talk'),
(1371,0,3,'I hope that was a fish!',12,7,100,1,0,0,176,0,'Roman - Talk'),
(1371,0,4,'I think I see something.',12,7,100,1,0,0,172,0,'Roman - Talk'),
(1371,0,5,'Something smells funny.',12,7,100,1,0,0,175,0,'Roman - Talk'),
(1371,0,6,'Worm goes on the hook, hook goes in the water. Fish is in the water, our fish.',12,7,100,1,0,0,178,0,'Roman - Talk'),
(1371,0,7,'I thought I heard something.',12,7,100,1,0,0,171,0,'Roman - Talk');

DELETE FROM `waypoint_scripts` where id >= 285 and id <= 307;
DELETE FROM `waypoint_data` where `id` in (798150,798160,798170);

DELETE FROM `waypoints` WHERE `entry` IN (1370,137000);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(1370,1,-8581.982,635.3642,96.338,0,0,'Brandon'), -- Starting Dock -- Moved to the end
(1370,2,-8582.773,635.572,96.338,0,0,'Brandon'),
(1370,3,-8593.052,656.774,98.221,0,0,'Brandon'),
(1370,4,-8597.947,657.882,98.377,0,0,'Brandon'),
(1370,5,-8620.59,654.378,99.1946,0,0,'Brandon'),
(1370,6,-8631.83,655.639,100.63,0,0,'Brandon'),
(1370,7,-8639.43,656.589,101.082,0,0,'Brandon'),
(1370,8,-8654.11,660.351,100.865,0,0,'Brandon'),
(1370,9,-8662.717,666.586,100.377,0,0,'Brandon'),
(1370,10,-8669.76,678.045,99.3877,0,0,'Brandon'),
(1370,11,-8671.771,683.623,98.876,0,0,'Brandon'),
(1370,12,-8683.28,695.683,97.8567,0,0,'Brandon'),
(1370,13,-8691.63,704.794,97.1053,0,0,'Brandon'),
(1370,14,-8698.59,714.268,97.0168,0,0,'Brandon'),
(1370,15,-8711.9,732.893,97.8112,0,0,'Brandon'),
(1370,16,-8722.22,747.857,98.0333,0,0,'Brandon'),
(1370,17,-8733.64,764.22,97.9501,0,0,'Brandon'),
(1370,18,-8728.06,775.333,98.0319,0,0,'Brandon'),
(1370,19,-8717.02,792.913,97.1566,0,0,'Brandon'),
(1370,20,-8717.01,798.201,97.1855,0,0,'Brandon'),
(1370,21,-8726.35,812.836,97.0629,0,0,'Brandon'),
(1370,22,-8727.39,831.585,96.2625,0,0,'Brandon'),
(1370,23,-8718.147,846.137,96.43,0,0,'Brandon'),
(1370,24,-8712.475,853.661,96.86,0,0,'Brandon'),
(1370,25,-8709.601,858.748,96.993,0,0,'Brandon'),
(1370,26,-8705.86,860.48,97.0867,0,0,'Brandon'),
(1370,27,-8692.29,871.475,97.0226,0,0,'Brandon'),
(1370,28,-8682.01,878.208,97.0173,0,0,'Brandon'),
(1370,29,-8658.599,900.099,97.549,0,0,'Brandon'),
(1370,30,-8663.312,909.099,96.958,0,0,'Brandon'),
(1370,31,-8667.227,911.786,96.338,0,0,'Brandon'),
(1370,32,-8674.834,911.015,96.338,0,0,'Brandon'), -- Stop at second dock here

(137000,1,-8667.227,911.786,96.338,0,0,'Brandon'),
(137000,2,-8663.312,909.099,96.958,0,0,'Brandon'),
(137000,3,-8658.599,900.099,97.549,0,0,'Brandon'),
(137000,4,-8682.01,878.208,97.0173,0,0,'Brandon'),
(137000,5,-8692.29,871.475,97.0226,0,0,'Brandon'),
(137000,6,-8705.86,860.48,97.0867,0,0,'Brandon'),
(137000,7,-8709.601,858.748,96.993,0,0,'Brandon'),
(137000,8,-8712.475,853.661,96.86,0,0,'Brandon'),
(137000,9,-8718.147,846.137,96.43,0,0,'Brandon'),
(137000,10,-8727.39,831.585,96.2625,0,0,'Brandon'),
(137000,11,-8726.35,812.836,97.0629,0,0,'Brandon'),
(137000,12,-8717.01,798.201,97.1855,0,0,'Brandon'),
(137000,13,-8717.02,792.913,97.1566,0,0,'Brandon'),
(137000,14,-8728.06,775.333,98.0319,0,0,'Brandon'),
(137000,15,-8733.64,764.22,97.9501,0,0,'Brandon'),
(137000,16,-8722.22,747.857,98.0333,0,0,'Brandon'),
(137000,17,-8711.9,732.893,97.8112,0,0,'Brandon'),
(137000,18,-8698.59,714.268,97.0168,0,0,'Brandon'),
(137000,19,-8691.63,704.794,97.1053,0,0,'Brandon'),
(137000,20,-8683.28,695.683,97.8567,0,0,'Brandon'),
(137000,21,-8671.771,683.623,98.876,0,0,'Brandon'),
(137000,22,-8669.76,678.045,99.3877,0,0,'Brandon'),
(137000,23,-8662.717,666.586,100.377,0,0,'Brandon'),
(137000,24,-8654.11,660.351,100.865,0,0,'Brandon'),
(137000,25,-8639.43,656.589,101.082,0,0,'Brandon'),
(137000,26,-8631.83,655.639,100.63,0,0,'Brandon'),
(137000,27,-8620.59,654.378,99.1946,0,0,'Brandon'),
(137000,28,-8597.947,657.882,98.377,0,0,'Brandon'),
(137000,29,-8593.052,656.774,98.221,0,0,'Brandon'),
(137000,30,-8582.773,635.572,96.338,0,0,'Brandon'),
(137000,31,-8580.51,635.108,96.3386,0,0,'Brandon'); -- Starting Dock


