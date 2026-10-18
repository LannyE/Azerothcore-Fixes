DELETE FROM `waypoints` WHERE `entry` = 1436 and `pointid` in (3,4,5,6,7,8,9,10,11,12,61);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(1436,3,-10559.6,-1132.51,30.067,0,0,'Watcher Cutford'),
(1436,4,-10565,-1124.78,30.067,0,0,'Watcher Cutford'),
(1436,5,-10569.2,-1125.4,29.2035,0,0,'Watcher Cutford'),
(1436,6,-10575,-1125.57,29.167,0,0,'Watcher Cutford'),
(1436,7,-10576.6,-1111.12,30.07,0,0,'Watcher Cutford'),
(1436,8,-10572.9,-1107.8,30.069,0,0,'Watcher Cutford'),
(1436,9,-10558.3,-1105.98,30.069,0,0,'Watcher Cutford'),
(1436,10,-10556,-1106.37,31.0298,0,0,'Watcher Cutford'),
(1436,11,-10555,-1106.46,31.429,0,0,'Watcher Cutford'),
(1436,12,-10553.4,-1106.64,31.428,0,0,'Watcher Cutford'),
(1436,61,-10931.5,-385.877,40.085,0,0,'Watcher Cutford');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1436 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(1436,0,9,0,40,0,100,0,61,1436,0,0,0,66,0.87,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 61 Reached - Set Orientation');

-- Stitches
DELETE FROM `smart_scripts` WHERE `entryorguid` = 412 AND `source_type` = 0  and `id` in (2,3,17,44,45,46);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(412,0,3,0,1,0,100,0,5000,5000,0,0,0,53,1,412,0,0,0,2,1,0,0,0,0,0,0,0,0,'Stitches - OOC - Start Waypoint'),
(412,0,17,0,40,0,100,0,90,412,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stitches - On Waypoint 90 Reached - Start Random Movement');

DELETE FROM `waypoints` WHERE `entry` = 412 and `pointid` in (90,91);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(412,90,-10550.4,-1185.71,27.8428,0,0,'Stitches Event'),
(412,91,-10554.4,-1167.97,27.5984,0,0,'Stitches Event');

-- Watcher Corwin and Sarys
UPDATE creature SET `spawntimesecs` = 300 WHERE `guid` in (6127,6133);