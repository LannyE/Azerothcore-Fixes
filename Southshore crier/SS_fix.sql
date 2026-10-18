/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (2435,243500)
LIMIT 0, 1000

-- Date: 2022-01-05 19:30
*/
DELETE FROM smart_scripts WHERE `entryorguid` IN (2435,243500);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(2435,0,0,12,11,0,100,0,0,0,0,0,0,53,1,2435,0,0,0,2,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Spawn - Start Waypoint'),
(2435,0,1,0,40,0,100,0,1,2435,0,0,0,54,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On WP 1 reached - Pause Waypoint'),
(2435,0,2,0,40,0,100,0,13,0,0,0,0,1,0,1000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On WP 13 reached - Say Line 0'),
(2435,0,3,4,40,0,100,0,14,2435,0,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On WP 14 reached - Pause Waypoint'),
(2435,0,4,5,61,0,100,0,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On WP 14 reached - Say Line 1'),
(2435,0,5,6,61,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On WP14 reached - React State Passive'),
(2435,0,6,0,61,0,100,0,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On WP14 reached - Set Unit Flag'),
(2435,0,7,0,52,0,100,0,1,2435,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Text 1 Over - Say Line 2'),
(2435,0,8,0,52,0,100,0,2,2435,0,0,0,1,3,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Text 2 Over - Say line 3'),
(2435,0,9,10,52,0,100,0,3,2435,0,0,0,1,4,500,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier  - On Text 3 Over  - Say line 4'),
(2435,0,10,0,61,0,100,0,0,0,0,0,0,80,243500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Text 3 Over - Start Script'),
(2435,0,11,0,52,0,100,0,4,2435,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier  - On Text 4 Over  - Say line 5'),
(2435,0,12,0,61,0,100,0,0,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Spawn - Remove Unit Flag'),
-- (2435,0,9,10,52,0,100,0,4,2435,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier  - On Text 4 Over  - Say line 5'),
-- (2435,0,10,0,61,0,100,0,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Text 4 Over - Kill self'),
(243500,9,0,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-858.214,-471.187,13.3554,0.58591,'Southshore Crier - On Script - Summon Shadowy Assassin'),
-- (243500,9,1,0,0,0,100,0,0,0,0,0,0,12,2434,6,60000,0,0,0,8,0,0,0,0,-864.901,-472.452,13.3564,0.58591,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,1,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-780.091,-530.876,20.6933,0.205787,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,2,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-862.522,-476.413,13.3564,0.58591,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,3,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-861.232,-542.347,9.33058,0.58591,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,4,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-849.912,-536.618,10.717,0.30081,'Southshore Crier - On Script - Summon Shadowy Assassin'),
-- (243500,9,5,0,0,0,100,0,0,0,0,0,0,12,2434,6,60000,0,0,0,8,0,0,0,0,-842.906,-536.79,12.5283,6.23677,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,5,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-843.281,-526.083,11.1464,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,6,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-848.99,-517.981,12.1924,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,7,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-867.763,-516.11,11.3357,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
-- (243500,9,8,0,0,0,100,0,0,0,0,0,0,12,2434,6,60000,0,0,0,8,0,0,0,0,-855.221,-518.702,11.547,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,8,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-879.868,-538.859,7.67274,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,9,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-793.784,-572.726,16.0755,5.45041,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,10,0,0,0,100,0,0,0,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-877.552,-561.351,11.0384,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,11,0,0,0,100,0,1000,1000,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-893.224,-590.699,7.4458,1.06091,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,12,0,0,0,100,0,1000,1000,0,0,0,12,2434,4,90000,0,0,0,8,0,0,0,0,-840.952,-505.281,14.4908,0.819482,'Southshore Crier - On Script - Summon Shadowy Assassin'),
(243500,9,13,0,0,0,100,0,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Southshore Crier - On Script - Kill self');

DELETE FROM `waypoints` WHERE entry = 2435;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(2435,1,-743.976,-521.674,21.6875,0.356982,0,'Southshore Crier'),
(2435,2,-743.0,-522.482,21.6875,0,0,'Southshore Crier'),
(2435,3,-745.74,-530.658,21.0302,0,0,'Southshore Crier'),
(2435,4,-749.623,-536.482,19.8807,0,0,'Southshore Crier'),
(2435,5,-749.831,-542.323,19.0502,0,0,'Southshore Crier'),
(2435,6,-751.399,-545.452,18.7756,0,0,'Southshore Crier'),
(2435,7,-751.399,-545.452,18.7756,0,0,'Southshore Crier'),
(2435,8,-760.746,-546.233,18.1427,0,0,'Southshore Crier'),
(2435,9,-771.772,-545.382,17.7874,0,0,'Southshore Crier'),
(2435,10,-787.449,-540.515,17.7064,0,0,'Southshore Crier'),
(2435,11,-803.583,-531.155,15.9356,0,0,'Southshore Crier'),
(2435,12,-815.697,-524.158,14.4849,0,0,'Southshore Crier'),
(2435,13,-824.224,-522.261,13.1434,0,0,'Southshore Crier'),
(2435,14,-840.92,-524.92,11.2505,0,0,'Southshore Crier'),
(2435,15,-857.888,-532.908,9.43952,0,0,'Southshore Crier'),
(2435,16,-870.759,-539.774,8.12229,0,0,'Southshore Crier'),
(2435,17,-880.055,-540.594,7.56718,0,0,'Southshore Crier'),
(2435,18,-898.525,-541.205,6.87974,0,0,'Southshore Crier'),
(2435,19,-901.819,-547.256,6.87974,0,0,'Southshore Crier'),
(2435,20,-903.291,-555.882,6.87974,0,0,'Southshore Crier');

-- Marshal Redpath
UPDATE `creature_template` SET `unit_flags` = 0, `flags_extra` = 0, `faction` = 11 WHERE `entry` = 2263;