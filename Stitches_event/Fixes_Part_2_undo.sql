/*
undo
Fix Stitches Event 4-5-26
 Fix running on road

Fix watchers running out of sync they need to be set to active. Merchant is the only one that was active. She would run out first.   

*/

-- Stitches
-- DELETE FROM `spawn_group` where `groupId` IN (1); -- This is part of AZ now 5-6-26

UPDATE `smart_scripts` SET `action_param1` = 2 WHERE `entryorguid` IN (412) AND `source_type` = 0 AND `id` IN (3); -- 2 -- He runs by default now and should change to walk at road setting this to 0 it can control that through the scripts now. 2 overrides everything so it can't be used.
UPDATE `smart_scripts` SET `target_o` = 4.8015 WHERE `entryorguid` IN (412) AND `source_type` = 0 AND `id` IN (2); -- 4.8015 -- He should be facing graveyard when teleported

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (412) AND `source_type` = 0 AND `id` IN (47);


-- Lord Ello Ebonlocke
DELETE FROM `smart_scripts` WHERE `entryorguid` = 263 AND `source_type` = 0 AND `id` IN (8);


-- Commander Althea Ebonlocke
DELETE FROM `smart_scripts` WHERE `entryorguid` = 264 AND `source_type` = 0 AND `id` IN (6);


-- Watcher Gelwin
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1099) AND `source_type` = 0 AND `id` IN (8);


-- Watcher Thayer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1101) AND `source_type` = 0 AND `id` IN (8);


-- Watcher Selkin
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1100) AND `source_type` = 0 AND `id` IN (8);


-- Watcher Sarys
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1203 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1203,0,0,0,11,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Sarys - On Spawn - React State Aggressive'),
(1203,0,1,2,38,0,100,0,1,1,0,0,0,53,1,1203,0,0,0,2,1,0,0,0,0,0,0,0,0,'Watcher Sarys - On Data Set - Start Waypoint (No Repeat)'),
(1203,0,2,0,61,0,100,0,0,0,0,0,0,17,333,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set - Continuous Attack Emote"),
(1203,0,3,4,38,0,100,0,1,2,0,0,0,101,1,0,0,0,0,0,8,0,0,0,0,-10536.224,-1159.281,28.088,0.083,"Watcher Sarys - On Data Set - Set Home POS"),
(1203,0,4,5,61,0,100,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set - Normal Emote"),
(1203,0,5,0,61,0,100,0,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set - Evade"),
(1203,0,6,0,69,0,100,0,85,0,0,0,0,70,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Game Event \'Stitches\' End - Respawn");

DELETE FROM `waypoint_data` where `id` in (612700);


-- Watcher Corwin
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1204 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1204,0,0,0,11,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Corwin - On Spawn - React State Aggressive'),
(1204,0,1,2,38,0,100,0,1,1,0,0,0,53,1,1204,0,0,0,2,1,0,0,0,0,0,0,0,0,'Watcher Corwin - On Data Set - Start Waypoint (No Repeat)'),
(1204,0,2,0,61,0,100,0,0,0,0,0,0,17,333,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set - Continuous Attack Emote"),
(1204,0,3,4,38,0,100,0,1,2,0,0,0,101,1,0,0,0,0,0,8,0,0,0,0,-10585.755,-1158.408,30.059,4.059,"Watcher Corwin - On Data Set - Set Home POS"),
(1204,0,4,5,61,0,100,0,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set - Evade"),
(1204,0,5,0,61,0,100,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set - Normal Emote"),
(1204,0,6,0,69,0,100,0,85,0,0,0,0,70,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Game Event \'Stitches\' End - Respawn");


-- Watcher Cutford
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1436 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1436,0,0,0,54,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - Just Summoned - Set Active On'),
(1436,0,1,0,54,0,100,512,0,0,0,0,0,0,53,2,1436,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - Just Summoned - Start Waypoint (No Repeat)'),
(1436,0,2,0,40,0,100,0,1,1436,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 1 Reached - Say Line 0 (No Repeat)'),
(1436,0,3,0,40,0,100,512,12,1436,0,0,0,0,66,0,0,0,0,0,0,19,263,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 12 Reached - Set Orientation'),
(1436,0,4,0,40,0,100,512,12,1436,0,0,0,0,54,28000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 12 Reached - Pause Waypoint'),
(1436,0,5,0,40,0,100,512,12,1436,0,0,0,0,45,1,1,0,0,0,0,19,263,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 12 Reached - Set Data'),
(1436,0,6,0,40,0,100,512,22,1436,0,0,0,0,66,0,0,0,0,0,0,19,264,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 22 Reached - Set Orientation'),
(1436,0,7,0,40,0,100,512,22,1436,0,0,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 22 Reached - Pause Waypoint'),
(1436,0,8,0,40,0,100,512,22,1436,0,0,0,0,45,1,1,0,0,0,0,19,264,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 22 Reached - Set Data'),
(1436,0,9,0,40,0,100,512,61,1436,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.0014,'Watcher Cutford - On Waypoint 61 Reached - Set Orientation'),
(1436,0,10,0,69,0,100,512,85,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Game Event \'Stitches\' End - Despawn In 1000 ms'),
(1436,0,11,0,38,0,100,0,3,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 1'),
(1436,0,12,0,38,0,100,0,3,2,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 2'),
(1436,0,13,0,38,0,100,0,3,3,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 3'),
(1436,0,14,0,38,0,100,0,3,4,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 4'),
(1436,0,15,0,38,0,100,0,3,5,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 5'),
(1436,0,16,0,38,0,100,0,3,6,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 6'),
(1436,0,17,0,38,0,100,0,3,9,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set - Say line 0'),
(1436,0,18,0,40,0,100,0,39,1436,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 39 Reached - Say Line 7 (No Repeat)'),
(1436,0,19,0,40,0,100,0,58,1436,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 58 Reached - Say Line 7 (No Repeat)'),
(1436,0,20,0,40,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Reached WP - Set Home Position');


-- Watcher Paige
DELETE FROM `smart_scripts` WHERE `entryorguid` = 499 AND `source_type` = 0 AND `id` IN (5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(499,0,5,0,69,0,100,0,85,0,0,0,0,70,2,0,0,0,0,0,19,499,0,1,0,0,0,0,0,"Watcher Paige - On Game Event \'Stitches\' End - Respawn");


-- Watcher Dodds
DELETE FROM `smart_scripts` WHERE `entryorguid` = 888 AND `source_type` = 0 AND `id` IN (5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(888,0,5,0,69,0,100,0,85,0,0,0,0,70,2,0,0,0,0,0,19,888,0,1,0,0,0,0,0,"Watcher Dodds - On Game Event \'Stitches\' End - Respawn");