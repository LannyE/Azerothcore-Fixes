/*
Fix BoneChewer Messenger 
New Waypoints to Illidari Point
Summon Marauders to make it more Blizzlike
Fix pauses and walking and running issues that was introduced in a commit
Delete Creature entries for Bonechewer Marauder frees up IDs 126235,126236,126237,126238
*/

-- BoneChewer Marauder
DELETE FROM `creature` WHERE `guid` IN (126235,126236,126237,126238);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-126235,-126236,-126237,-126238) AND `source_type` = 0 AND `id` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21245 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21245,0,0,0,38,0,100,0,1,0,0,0,0,0,29,2,140,0,0,0,0,12,2,0,0,0,0,0,0,0,'Bonechewer Marauder - On Data Set - Set Follow'),
(21245,0,1,0,38,0,100,0,2,0,0,0,0,0,29,2,175,0,0,0,0,12,2,0,0,0,0,0,0,0,'Bonechewer Marauder - On Data Set - Set Follow'),
(21245,0,2,0,38,0,100,0,3,0,0,0,0,0,29,2,205,0,0,0,0,12,2,0,0,0,0,0,0,0,'Bonechewer Marauder - On Data Set - Set Follow'),
(21245,0,3,0,38,0,100,0,4,0,0,0,0,0,29,2,240,0,0,0,0,12,2,0,0,0,0,0,0,0,'Bonechewer Marauder - On Data Set - Set Follow'),
(21245,0,4,0,1,0,100,0,5000,5000,0,0,0,0,43,0,17408,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Marauder - OOC - Mount to model 17408');

-- BoneChewer Messenger
UPDATE `creature` SET `spawntimesecs` = 480 WHERE `guid` in (126234); -- 300

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2124400,2124401) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21244) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21244,0,0,0,11,0,100,0,0,0,0,0,0,0,80,2124400,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Respawn - Run Script'),
(21244,0,1,2,17,0,100,512,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Bonechewer Messenger - Just Summoned - Store Target'),
(21244,0,2,0,61,0,100,512,0,0,0,0,0,0,100,2,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Bonechewer Messenger - Just Summoned (Linked) - Send Target to Target'),
(21244,0,3,0,37,0,100,512,0,0,0,0,0,0,64,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On AI Init - Store Target'),
(21244,0,4,5,40,0,100,512,6,21244,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 6 Reached - Set Run On'),
(21244,0,5,0,61,0,100,512,0,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 6 Reached (Linked) - Pause Waypoint'),
(21244,0,6,7,40,0,100,512,32,21244,0,0,0,0,54,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 32 Reached - Pause Waypoint'),
(21244,0,7,8,61,0,100,512,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 32 Reached (Linked) - Set Run Off'),
(21244,0,8,0,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 32 Reached (Linked) - Say Line 0'),
(21244,0,9,10,40,0,100,512,34,21244,0,0,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 34 Reached - Pause Waypoint'),
(21244,0,10,11,61,0,100,512,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 34 Reached (Linked) - Say Line 1'),
(21244,0,11,12,61,0,100,512,0,0,0,0,0,0,107,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 34 Reached (Linked) - Summon Creature Group 0'),
(21244,0,12,0,61,0,100,512,0,0,0,0,0,0,59,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 34 Reached (Linked) - Set Run On'),
(21244,0,13,14,4,0,100,512,0,0,0,0,0,0,39,40,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Aggro - Call For Help'),
(21244,0,14,0,61,0,100,512,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Aggro (Linked) - Set Run On'),
(21244,0,15,0,40,0,100,512,54,21244,0,0,0,0,80,2124401,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 54 Reached - Run Script'),
(21244,0,16,0,6,0,100,512,0,0,0,0,0,0,41,180000,0,0,0,0,0,11,21245,20,0,0,0,0,0,0,'Bonechewer Messenger - On Death - Despawn Target'),
(21244,0,17,0,1,0,100,0,5000,5000,0,0,0,0,43,0,17408,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - OOC - Mount to model 17408'),

(2124400,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Set Run Off'),
(2124400,9,1,0,0,0,100,0,0,0,0,0,0,0,12,21245,8,0,0,0,0,1,0,0,0,0,-1,-2,0,0,'Bonechewer Messenger - On Script - Summon Creature'),
(2124400,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Set Data on \'Bonechewer Marauder\''),
(2124400,9,3,0,0,0,100,0,0,0,0,0,0,0,12,21245,8,0,0,0,0,1,0,0,0,0,-1,-0.75,0,0,'Bonechewer Messenger - On Script - Summon Creature'),
(2124400,9,4,0,0,0,100,0,0,0,0,0,0,0,45,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Set Data on \'Bonechewer Marauder\''),
(2124400,9,5,0,0,0,100,0,0,0,0,0,0,0,12,21245,8,0,0,0,0,1,0,0,0,0,-1.5,1,0,0,'Bonechewer Messenger - On Script - Summon Creature'),
(2124400,9,6,0,0,0,100,0,0,0,0,0,0,0,45,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Set Data on \'Bonechewer Marauder\''),
(2124400,9,7,0,0,0,100,0,0,0,0,0,0,0,12,21245,8,0,0,0,0,1,0,0,0,0,-1.5,1.5,0,0,'Bonechewer Messenger - On Script - Summon Creature'),
(2124400,9,8,0,0,0,100,0,0,0,0,0,0,0,45,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Set Data on \'Bonechewer Marauder\''),
(2124400,9,9,0,0,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Set Active'),
(2124400,9,10,0,0,0,100,0,0,0,0,0,0,0,53,0,21244,0,0,0,2,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Start Waypoint'),

(2124401,9,0,0,0,0,100,512,0,0,0,0,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Pause Waypoint'),
(2124401,9,1,0,0,0,100,512,3000,3000,0,0,0,0,41,0,0,0,0,0,0,11,21245,20,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Despawn Target'),
(2124401,9,2,0,0,0,100,512,100,100,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Script - Despawn');

UPDATE `waypoints` SET `delay` = 0 WHERE `entry` in (21244) AND `pointid` IN (6,32,34);

DELETE FROM `waypoints` WHERE `entry` = 21244 and `pointid` >= 35;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(21244,35,-3077.927,2873.6624,81.80195,NULL,0,'Bonechewer Messenger'), -- If survive ambush (Not Likely) go on to Illidari Point
(21244,36,-3116.7715,2816.0613,77.63094,NULL,0,'Bonechewer Messenger'),
(21244,37,-3131.018,2792.6094,76.109314,NULL,0,'Bonechewer Messenger'),
(21244,38,-3169.0647,2722.8677,70.66222,NULL,0,'Bonechewer Messenger'),
(21244,39,-3266.259,2677.1375,58.561604,NULL,0,'Bonechewer Messenger'),
(21244,40,-3309.669,2671.309,57.27834,NULL,0,'Bonechewer Messenger'),
(21244,41,-3362.697,2652.4558,59.5816,NULL,0,'Bonechewer Messenger'),
(21244,42,-3437.2275,2641.8289,59.399902,NULL,0,'Bonechewer Messenger'),
(21244,43,-3490.0667,2599.5718,62.60679,NULL,0,'Bonechewer Messenger'),
(21244,44,-3514.6794,2563.4001,65.00203,NULL,0,'Bonechewer Messenger'),
(21244,45,-3529.4727,2520.3833,68.05216,NULL,0,'Bonechewer Messenger'),
(21244,46,-3571.68,2470.5525,72.82041,NULL,0,'Bonechewer Messenger'),
(21244,47,-3600.1323,2444.716,72.922714,NULL,0,'Bonechewer Messenger'),
(21244,48,-3623.1382,2400.8303,75.54782,NULL,0,'Bonechewer Messenger'),
(21244,49,-3667.3896,2355.9773,76.7641,NULL,0,'Bonechewer Messenger'),
(21244,50,-3704.4944,2342.0923,76.35726,NULL,0,'Bonechewer Messenger'),
(21244,51,-3736.849,2383.4902,77.75501,NULL,0,'Bonechewer Messenger'),
(21244,52,-3759.677,2424.7756,79.11048,NULL,0,'Bonechewer Messenger'),
(21244,53,-3784.7297,2461.379,79.16615,NULL,0,'Bonechewer Messenger'),
(21244,54,-3791.2742,2526.3254,81.75655,NULL,0,'Bonechewer Messenger'); -- Despawn at front steps of Illidari Point

