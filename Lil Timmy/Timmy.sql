/*
Implement Lil Timmy in Stormwind
-- Date: 2022-02-27 13:47

Update him and his cat to use 226 spawning system
 Use the mailbox nearby to control his spawn.  
update to use even newer spawn groups 5-4-26
*/
DELETE FROM `creature_formations` WHERE `leaderGUID` = 45501;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (45501);
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (8666,7386);
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` in (195612); -- -150742
UPDATE `creature` SET `spawntimesecs` = 10800, `MovementType` = 0 WHERE `guid` = 45501; -- Give the illusion that it is random 8580
UPDATE `creature` SET `spawntimesecs` = 10 WHERE `guid` = 23247; -- Give the illusion that it is random 8579 -- 180
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `entry` = 8666 and `item` = 8489;

DELETE FROM `spawn_group` where `groupId` IN (42280);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42280,0,23427),
(42280,0,45501); -- Lil timmy

DELETE FROM `spawn_group_template` where `groupId` IN (42280);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42280,'Lil Timmy and White Kitten',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (8666,866600,7386,-150742);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (-150742,1,0,0,1,0,100,0,30000,30000,120000,120000,0,0,226,1,1,0,0,0,0,11,8666,20,0,0,0,0,0,0,'Mailbox - OOC - Spawn In \'Lil Timmy\''),
-- (-150742,1,0,0,1,0,100,0,100,10800000,5400000,10800000,0,0,226,1,1,0,0,0,0,11,8666,20,0,0,0,0,0,0,'Mailbox - OOC - Spawn In \'Lil Timmy\''),
(-150742,1,0,0,1,0,100,0,100,10800000,5400000,10800000,0,0,131,42280,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - OOC - Spawn SpawnGroup'),

-- (8666,0,0,1,11,0,100,0,0,0,0,0,0,0,226,1,1,0,0,0,0,11,7386,10,0,0,0,0,0,0,'Lil Timmy - On Respawn - Spawn In \'White Kitten\''),
(8666,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - On Respawn - Set Active'),
-- (8666,0,2,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - On Initialize - Disable Respawn'),
(8666,0,1,2,1,0,100,1,1000,1000,0,0,0,0,53,1,8666,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - OOC (No Repeat) - Start Waypoint'),
(8666,0,2,0,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,23427,7386,0,0,0,0,0,0,'Lil Timmy - Linked - Set Data 1 0 \'White Kitten\''),
(8666,0,3,0,40,0,100,0,91,8666,0,0,0,0,80,866600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - On Waypoint 91 Reached - Run Script'),
(8666,0,4,0,1,0,100,0,30000,30000,120000,180000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - Out of Combat - Say Random 0'),

(7386,0,0,0,38,0,100,0,1,0,0,0,0,0,29,0,180,0,0,0,0,10,45501,8666,0,0,0,0,0,0,'White Kitten - On Data Set 1 0 - Set Follow'),
-- (7386,0,1,0,38,0,100,0,1,1,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'White Kitten - On Data Set 1 1 - Despawn'),
-- (7386,0,2,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'White Kitten - On Initialize - Disable Respawn'),
(7386,0,1,0,37,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'White Kitten - On Initialize - Set Active'),

-- (866600,9,0,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,10,23427,7386,0,0,0,0,0,0,'Lil Timmy - On Script - Set Data 1 1 \'White Kitten\''),
(866600,9,0,0,0,0,100,0,1000,1000,0,0,0,0,132,42280,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - On Script - Despawn SpawnGroup'),
(866600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lil Timmy - On Script - Despawn');

DELETE FROM `waypoint_data` WHERE `id` = 455010;
DELETE FROM `waypoints` WHERE `entry` = 8666;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(8666,1,-8641.4,912.342,99.1397,0,0,'Lil Timmy'),
(8666,2,-8661.71,894.74,97.6239,0,0,'Lil Timmy'),
(8666,3,-8679.15,880.967,97.0168,0,0,'Lil Timmy'),
(8666,4,-8681.12,877.654,97.0168,0,0,'Lil Timmy'),
(8666,5,-8679.29,873.082,97.0168,0,0,'Lil Timmy'),
(8666,6,-8659.98,849.329,97.0168,0,0,'Lil Timmy'),
(8666,7,-8639.96,825.073,96.6251,0,0,'Lil Timmy'),
(8666,8,-8636.74,813.025,96.6486,0,0,'Lil Timmy'),
(8666,9,-8634,793.001,96.6508,0,0,'Lil Timmy'),
(8666,10,-8635.94,785.58,96.6515,0,0,'Lil Timmy'),
(8666,11,-8651.43,775.162,96.6714,0,0,'Lil Timmy'),
(8666,12,-8661.39,764.974,96.6998,0,0,'Lil Timmy'),
(8666,13,-8662.58,758.134,96.6947,0,0,'Lil Timmy'),
(8666,14,-8647.73,738.576,96.6965,0,0,'Lil Timmy'),
(8666,15,-8630.74,726.606,96.7377,0,0,'Lil Timmy'),
(8666,16,-8618.88,711.997,96.7248,0,0,'Lil Timmy'),
(8666,17,-8614.67,709.545,96.7549,0,0,'Lil Timmy'),
(8666,18,-8606.13,711.345,96.7382,0,0,'Lil Timmy'),
(8666,19,-8598.07,712.945,96.6746,0,0,'Lil Timmy'),
(8666,20,-8588.25,706.887,97.0168,0,0,'Lil Timmy'),
(8666,21,-8566.09,678.512,97.0168,0,0,'Lil Timmy'),
(8666,22,-8561.86,674.735,97.0168,0,0,'Lil Timmy'),
(8666,23,-8556.46,676.784,97.0168,0,0,'Lil Timmy'),
(8666,24,-8542.79,686.774,97.6239,0,0,'Lil Timmy'),
(8666,25,-8532.769,688.506,97.661,0,0,'Lil Timmy'),
(8666,26,-8528.005,682.699,99.567,0,0,'Lil Timmy'),
(8666,27,-8522.24,670.618,102.794,0,0,'Lil Timmy'),
(8666,28,-8519.8,666.4,102.615,0,0,'Lil Timmy'),
(8666,29,-8512.94,656.648,100.901,0,0,'Lil Timmy'),
(8666,30,-8513.15,648.714,100.292,0,0,'Lil Timmy'),
(8666,31,-8518.18,642.361,100.092,0,0,'Lil Timmy'),
(8666,32,-8538.04,630.723,100.404,0,0,'Lil Timmy'),
(8666,33,-8554.03,617.81,102.053,0,0,'Lil Timmy'),
(8666,34,-8564.5,613.48,102.435,0,0,'Lil Timmy'),
(8666,35,-8576.12,601.799,103.26,0,0,'Lil Timmy'),
(8666,36,-8582.44,589.572,103.691,0,0,'Lil Timmy'),
(8666,37,-8586.68,575.605,102.985,0,0,'Lil Timmy'),
(8666,38,-8585.96,565.941,102.26,0,0,'Lil Timmy'),
(8666,39,-8578.9,545.988,101.779,0,0,'Lil Timmy'),
(8666,40,-8581.73,541.012,102.09,0,0,'Lil Timmy'),
(8666,41,-8590.09,533.912,104.76,0,0,'Lil Timmy'),
(8666,42,-8598.32,527.164,106.399,0,0,'Lil Timmy'),
(8666,43,-8605.67,520.882,105.748,0,0,'Lil Timmy'),
(8666,44,-8610.26,515.735,103.79,0,0,'Lil Timmy'),
(8666,45,-8613.43,514.684,103.401,0,0,'Lil Timmy'),
(8666,46,-8618.8,518.794,103.068,0,0,'Lil Timmy'),
(8666,47,-8635.17,535.152,99.9833,0,0,'Lil Timmy'),
(8666,48,-8647.39,546.721,97.8568,0,0,'Lil Timmy'),
(8666,49,-8655.78,552.938,96.9435,0,0,'Lil Timmy'),
(8666,50,-8671.86,552.874,97.2037,0,0,'Lil Timmy'),
(8666,51,-8679.66,549.654,97.5031,0,0,'Lil Timmy'),
(8666,52,-8689.63,540.268,97.828,0,0,'Lil Timmy'),
(8666,53,-8698.98,530.295,97.7173,0,0,'Lil Timmy'),
(8666,54,-8712.64,520.242,97.2398,0,0,'Lil Timmy'),
(8666,55,-8715.24,521.571,97.4039,0,0,'Lil Timmy'),
(8666,56,-8720.77,528.729,99.1496,0,0,'Lil Timmy'),
(8666,57,-8729.84,539.87,101.105,0,0,'Lil Timmy'),
(8666,58,-8735.95,547.101,100.845,0,0,'Lil Timmy'),
(8666,59,-8745.79,557.737,97.7107,0,0,'Lil Timmy'),
(8666,60,-8746.01,564.915,97.4001,0,0,'Lil Timmy'),
(8666,61,-8729.92,581.294,97.6775,0,0,'Lil Timmy'),
(8666,62,-8719.58,591.033,98.4713,0,0,'Lil Timmy'),
(8666,63,-8712.04,594.001,98.6079,0,0,'Lil Timmy'),
(8666,64,-8707.26,600.676,98.9982,0,0,'Lil Timmy'),
(8666,65,-8704.46,616.407,100.215,0,0,'Lil Timmy'),
(8666,66,-8705.6,629.078,100.477,0,0,'Lil Timmy'),
(8666,67,-8708.67,645.787,99.9994,0,0,'Lil Timmy'),
(8666,68,-8716.46,666.585,98.8681,0,0,'Lil Timmy'),
(8666,69,-8724.09,676.482,98.6317,0,0,'Lil Timmy'),
(8666,70,-8728.54,684.167,98.7324,0,0,'Lil Timmy'),
(8666,71,-8733.47,695.151,98.723,0,0,'Lil Timmy'),
(8666,72,-8743.6,709.876,98.2678,0,0,'Lil Timmy'),
(8666,73,-8741.08,714.561,98.9815,0,0,'Lil Timmy'),
(8666,74,-8734.46,720.119,101.647,0,0,'Lil Timmy'),
(8666,75,-8726.79,726.231,100.924,0,0,'Lil Timmy'),
(8666,76,-8718.09,733.687,97.9511,0,0,'Lil Timmy'),
(8666,77,-8716.42,737.269,97.7782,0,0,'Lil Timmy'),
(8666,78,-8721.01,746.752,97.9693,0,0,'Lil Timmy'),
(8666,79,-8730.96,759.107,98.1572,0,0,'Lil Timmy'),
(8666,80,-8731.99,769.385,98.0161,0,0,'Lil Timmy'),
(8666,81,-8724.64,778.108,98.0604,0,0,'Lil Timmy'),
(8666,82,-8717.55,792.762,97.1197,0,0,'Lil Timmy'),
(8666,83,-8728.3,817.744,96.9777,0,0,'Lil Timmy'),
(8666,84,-8726.79,830.504,96.3102,0,0,'Lil Timmy'),
(8666,85,-8723.42,841.35,96.0764,0,0,'Lil Timmy'),
(8666,86,-8709.57,857.779,96.978,0,0,'Lil Timmy'),
(8666,87,-8692.38,870.557,97.0284,0,0,'Lil Timmy'),
(8666,88,-8679.35,880.974,97.0167,0,0,'Lil Timmy'),
(8666,89,-8661.22,896.239,97.5968,0,0,'Lil Timmy'),
(8666,90,-8643.7,912.233,98.9288,0,0,'Lil Timmy'),
(8666,91,-8634.58,918.926,99.3551,0,0,'Lil Timmy');
