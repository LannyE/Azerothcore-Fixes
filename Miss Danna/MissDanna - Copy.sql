/*
-- Query: SELECT * FROM temp.creature_formations where leaderGUID = 84028
LIMIT 0, 1000

-- Date: 2022-02-27 08:23
*/

UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87092,87088,87090,87089,87082,87091,84028);
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (87092,87088,87090,87089,87082,87091,84028);

DELETE FROM `waypoint_data` where `id` in (870920,870880,870900,870890,870820,870910,840280);
DELETE FROM `waypoint_scripts` where `id` >= 315 and `id` <= 328 or `id` in (413,414,415);

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (3505,3507,3508,3510,3511,3512,3513);

DELETE FROM `creature_text` where `CreatureID` in (3511,3512,3513);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(3511,0,0,'Why do we have to learn this stuff anyway?',12,7,100,1,0,0,1130,0,'Steven - Talk'),
(3512,0,0,'Is it true that the paladins train here?',12,7,100,1,0,0,1153,0,'Jimmy - Talk'),
(3513,0,0,'Here we have the Cathedral of Light, the center of spiritual enlightenment here in Stormwind.',12,7,100,1,0,0,1129,0,'Miss Danna - Talk'),
(3513,1,0,'Here we have Stormwind Keep. Built upon the ruins of Stormwind Castle, which was destroyed by the Horde in the first Great War.',12,7,100,1,0,0,1140,0,'Miss Danna - Talk'),
(3513,2,0,'Yes, that is true. Paladins and priests alike train their skills and research great truths behind the walls of the Cathedral.',12,7,100,1,0,0,1154,0,'Miss Danna - Talk'),
(3513,3,0,'Children if you would please follow me, we will now be going to see the keep where King Varian Wrynn himself sits on his throne.',12,7,100,1,0,0,1155,0,'Miss Danna - Talk'),
(3513,4,0,'When the Horde was shattered, men returned here and began to rebuild the once great city as a testament to our own survival.',12,7,100,1,0,0,1161,0,'Miss Danna - Talk'),
(3513,5,0,'Yes, well...let\'s head on to the monument dedicated to the heroes of the two Great Wars, the Valley of Heroes. Follow me.',12,7,100,1,0,0,1162,0,'Miss Danna - Talk'),
(3513,6,0,'Isn\'t it amazing, children? All who enter the city must walk beneath the watchful eyes of the greatest heroes of our lands.',12,7,100,1,0,0,1163,0,'Miss Danna - Talk'),
(3513,7,0,'Breathtaking. Children, when we return to the school, you will each give an oral report on one of these legendary people.',12,7,100,1,0,0,1165,0,'Miss Danna - Talk'),
(3513,8,0,'Now, take another long look before we make our way to the Holy District and the great Cathedral of Light.',12,7,100,1,0,0,1166,0,'Miss Danna - Talk');

DELETE FROM `smart_scripts` WHERE `entryorguid` in (3505,3507,3508,3510,3511,3512,3513,351300,351301,351302);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3505,0,0,0,38,0,100,0,1,0,0,0,0,29,1,230,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Pat - On Data Set 1 0 - Set Follow'),
(3507,0,0,0,38,0,100,0,1,0,0,0,0,29,1,210,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Andi - On Data Set 1 0 - Set Follow'),
(3508,0,0,0,38,0,100,0,1,0,0,0,0,29,1,150,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Mikey - On Data Set 1 0 - Set Follow'),
(3510,0,0,0,38,0,100,0,1,0,0,0,0,29,1,190,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Twain - On Data Set 1 0 - Set Follow'),
(3511,0,0,0,38,0,100,0,1,0,0,0,0,29,1,170,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Steven - On Data Set 1 0 - Set Follow'),
(3511,0,1,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Steven - On Data Set 1 1 - Say 0 0'),
(3512,0,0,0,38,0,100,0,1,0,0,0,0,29,1,130,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Jimmy - On Data Set 1 0 - Set Follow'),
(3512,0,1,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jimmy - On Data Set 1 1 - Say 0 0'),
(3513,0,0,0,40,0,100,0,21,3513,0,0,0,80,351300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 21 Reached - Run Script'),
(3513,0,1,0,40,0,100,0,36,3513,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 36 Reached - Say 1 0'),
(3513,0,2,0,40,0,100,0,37,3513,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 37 Reached - Say 4 0'),
(3513,0,3,0,40,0,100,0,38,3513,0,0,0,80,351301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 38 Reached - Run Script'),
(3513,0,4,0,40,0,100,0,52,3513,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 52 Reached - Say 6 0'),
(3513,0,5,0,40,0,100,0,53,3513,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 53 Reached - Say 7 0'),
(3513,0,6,0,40,0,100,0,54,3513,0,0,0,80,351302,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 54 Reached - Run Script'),
(3513,0,7,8,1,0,100,1,25000,25000,0,0,0,53,0,3513,1,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - OOC (No Repeat) - Start Waypoint'),
(3513,0,8,9,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,87082,3512,0,0,0,0,0,0,'Miss Danna - Linked - Set Data 1 0 \'Jimmy\''),
(3513,0,9,10,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,87089,3511,0,0,0,0,0,0,'Miss Danna - Linked - Set Data 1 0 \'Steven\''),
(3513,0,10,11,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,87090,3510,0,0,0,0,0,0,'Miss Danna - Linked - Set Data 1 0 \'Twain\''),
(3513,0,11,12,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,87088,3508,0,0,0,0,0,0,'Miss Danna - Linked - Set Data 1 0 \'Mikey\''),
(3513,0,12,13,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,87091,3507,0,0,0,0,0,0,'Miss Danna - Linked - Set Data 1 0 \'Andi\''),
(3513,0,13,0,61,0,100,0,0,0,0,0,0,45,1,0,0,0,0,0,10,87092,3505,0,0,0,0,0,0,'Miss Danna - Linked - Set Data 1 0 \'Pat\''), 
(3513,0,14,0,40,0,100,0,11,3513,0,0,0,54,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Waypoint 11 Reached - Pause Waypoint'),

(351300,9,0,0,0,0,100,0,0,0,0,0,0,54,44000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Pause Waypoint'),
(351300,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.663,'Miss Danna - On Script - Set Orientation'),
(351300,9,2,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Say 0 0'),
(351300,9,3,0,0,0,100,0,11000,11000,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Emote Talk'),
(351300,9,4,0,0,0,100,0,10000,10000,0,0,0,45,1,1,0,0,0,0,10,87082,3512,0,0,0,0,0,0,'Miss Danna - On Script - Set Data 1 1 \'Jimmy\''),
(351300,9,5,0,0,0,100,0,8000,8000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Say 2 0'),
(351300,9,6,0,0,0,100,0,11000,11000,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Say 3 0'),

(351301,9,0,0,0,0,100,0,0,0,0,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Pause Waypoint'),
(351301,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.433,'Miss Danna - On Script - Set Orientation'),
(351301,9,2,0,0,0,100,0,0,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Emote Talk'),
(351301,9,3,0,0,0,100,0,16000,16000,0,0,0,45,1,1,0,0,0,0,10,87089,3511,0,0,0,0,0,0,'Miss Danna - On Script - Set Data 1 1 \'Steven\''),
(351301,9,4,0,0,0,100,0,10000,10000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Say 5 0'),
(351301,9,5,0,0,0,100,0,18000,18000,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Emote Talk'),

(351302,9,0,0,0,0,100,0,0,0,0,0,0,54,19000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Pause Waypoint'),
(351302,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.589,'Miss Danna - On Script - Set Orientation'),
(351302,9,2,0,0,0,100,0,0,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Say 8 0'),
(351302,9,3,0,0,0,100,0,9000,9000,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Emote Talk'),
(351302,9,4,0,0,0,100,0,8000,8000,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Miss Danna - On Script - Emote Talk');

-- Miss Danna Waypoints
DELETE FROM `waypoints` WHERE `entry` = 3513;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(3513,1,-8824.65,677.359,97.6724,0,0,'Miss Danna'),
(3513,2,-8844.06,721.315,97.3127,0,0,'Miss Danna'),
(3513,3,-8794.66,745.738,97.8358,0,0,'Miss Danna'),
(3513,4,-8765.71,737.339,98.9571,0,0,'Miss Danna'),
(3513,5,-8744.1,711.742,98.1589,0,0,'Miss Danna'),
(3513,6,-8736.13,717.57,101.035,0,0,'Miss Danna'),
(3513,7,-8714.09,735.726,97.8129,0,0,'Miss Danna'),
(3513,8,-8698.83,714.642,97.0168,0,0,'Miss Danna'),
(3513,9,-8657.55,748.029,96.6892,0,0,'Miss Danna'),
(3513,10,-8658.68,767.899,96.6925,0,0,'Miss Danna'),
(3513,11,-8634.49,787.411,96.6512,0,0,'Miss Danna'), -- Cathedral watch pause
(3513,12,-8662.17,821.239,96.6386,0,0,'Miss Danna'),
(3513,13,-8653.53,826.735,96.5285,0,0,'Miss Danna'),
(3513,14,-8608.62,861.791,96.6798,0,0,'Miss Danna'),
(3513,15,-8600.32,850.058,96.6911,0,0,'Miss Danna'),
(3513,16,-8616.11,837.915,96.7385,0,0,'Miss Danna'),
(3513,17,-8637.49,816.942,96.6393,0,0,'Miss Danna'),
(3513,18,-8629.56,781.904,96.6514,0,0,'Miss Danna'),
(3513,19,-8623.89,774.974,96.6518,0,0,'Miss Danna'),
(3513,20,-8623.29,775.529,96.6512,0,0,'Miss Danna'),  
(3513,21,-8621.904,776.592,96.6512,0,0,'Miss Danna'),  -- Cathedral - Jimmy Paladin Training
(3513,22,-8594.06,757.656,96.6537,0,0,'Miss Danna'),
(3513,23,-8578.89,737.947,96.6719,0,0,'Miss Danna'),
(3513,24,-8596.77,717.424,96.6572,0,0,'Miss Danna'),
(3513,25,-8562.25,673.301,97.0168,0,0,'Miss Danna'),
(3513,26,-8536.52,690.402,97.6668,0,0,'Miss Danna'), -- Beginning of bridge where children get stuck
-- (3513,27,-8530.48,681.413,99.402,0,0,'Miss Danna'), -- New waypoint to fix stuck children
(3513,27,-8533.87,684.581,97.681,0,0,'Miss Danna'),
(3513,28,-8522.24,670.618,102.794,0,0,'Miss Danna'),
(3513,29,-8508.77,650.151,100.292,0,0,'Miss Danna'),
(3513,30,-8557.68,615.023,102.352,0,0,'Miss Danna'),
(3513,31,-8568.14,613.353,102.382,0,0,'Miss Danna'),
(3513,32,-8581.15,593.053,103.562,0,0,'Miss Danna'),
(3513,33,-8585.6,562.85,101.927,0,0,'Miss Danna'),
(3513,34,-8573.45,540.833,101.757,0,0,'Miss Danna'),
(3513,35,-8535.68,488.072,101.081,0,0,'Miss Danna'),
(3513,36,-8538.69,479.398,102.572,0,0,'Miss Danna'),  -- Stormwind Keep
(3513,37,-8548.29,467.484,104.514,0,0,'Miss Danna'),
(3513,38,-8544.94,464.148,104.414,0,0,'Miss Danna'),  -- Steven Why do we have to learn this
(3513,39,-8564.17,466.02,104.524,0,0,'Miss Danna'),
(3513,40,-8583.28,480.99,104.214,0,0,'Miss Danna'),
(3513,41,-8606.08,504.922,103.722,0,0,'Miss Danna'),
(3513,42,-8633.15,534.792,100.272,0,0,'Miss Danna'),
(3513,43,-8655.92,552.797,96.9437,0,0,'Miss Danna'),
(3513,44,-8671.53,554.116,97.1805,0,0,'Miss Danna'),
(3513,45,-8713.5,519.816,97.1699,0,0,'Miss Danna'), -- Bridge
(3513,46,-8731.17,541.957,101.124,0,0,'Miss Danna'),
(3513,47,-8749.98,561.766,97.3988,0,0,'Miss Danna'),
(3513,48,-8736.87,574.559,97.3823,0,0,'Miss Danna'),
(3513,49,-8770.53,609.421,97.2463,0,0,'Miss Danna'),
(3513,50,-8795.9,587.923,97.3792,0,0,'Miss Danna'),
(3513,51,-8827.8,624.687,93.8494,0,0,'Miss Danna'),
(3513,52,-8928.94,540.519,94.3157,0,0,'Miss Danna'), -- Valley of Heroes
(3513,53,-8907.67,509.135,93.8416,0,0,'Miss Danna'),
(3513,54,-8933.21,488.088,93.8429,0,0,'Miss Danna'),
(3513,55,-8911.65,505.615,93.8585,0,0,'Miss Danna'),
(3513,56,-8925.24,543.334,94.268,0,0,'Miss Danna'),
(3513,57,-8833.34,620.843,93.4683,0,0,'Miss Danna'),
(3513,58,-8854.67,660.036,96.8874,0,0,'Miss Danna'),
(3513,59,-8838.52,670.28,98.0987,0,0,'Miss Danna');




