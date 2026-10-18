/*
Fix Stitches Event 4-5-26
 Fix running on road

Fix watchers running out of sync they need to be set to active. Merchant is the only one that was active. She would run out first.   

5-5-26 AZ added him to a spawngroup to stop him from respawning constantly if people kill him until the event stops. The town crier is supposed to stop the event needs investigation. The Crier works fine.  5-6-26 
Redo Watch Sarys and Corwin smart scripts to not Evade back if they haven't moved yet. 
Make Sarys return using a waypoint instead of an evade for better accuracy.
Watcher Paige and Dodds make sure respawn on event end works.

Have Stitches death send data to Ello (who is the invoker for Cutford) who then tells Cutford to stop yelling 
*/

-- Stitches
DELETE FROM `spawn_group` where `groupId` IN (1);
INSERT INTO `spawn_group` (`groupId`, `spawnType`, `spawnId`) VALUES
(1, 0, 300000);

UPDATE `smart_scripts` SET `action_param1` = 0 WHERE `entryorguid` IN (412) AND `source_type` = 0 AND `id` IN (3); -- 2 -- He runs by default now and should change to walk at road setting this to 0 it can control that through the scripts now. 2 overrides everything so it can't be used.
UPDATE `smart_scripts` SET `target_o` = 1.7671 WHERE `entryorguid` IN (412) AND `source_type` = 0 AND `id` IN (2); -- 4.8015 -- He should be facing graveyard when teleported

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (412) AND `source_type` = 0 AND `id` IN (47);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(412,0,47,0,6,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,4186,263,0,0,0,0,0,0,'Stitches - On Just Died - Set Data 1 0 \'Lord Ello Ebonlocke\'');


-- Lord Ello Ebonlocke
DELETE FROM `smart_scripts` WHERE `entryorguid` = 263 AND `source_type` = 0 AND `id` IN (8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(263,0,8,0,38,0,100,0,1,0,0,0,0,0,45,1,0,0,0,0,0,204,1436,0,0,0,0,0,0,0,'Lord Ello Ebonlocke - On Data Set 1 0 - Set Data 1 0 on Summoned \'Watcher Cutford\'');


-- Commander Althea Ebonlocke
DELETE FROM `smart_scripts` WHERE `entryorguid` = 264 AND `source_type` = 0 AND `id` IN (6);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(264,0,6,0,68,0,100,0,85,0,0,0,0,70,1,0,0,0,0,0,10,300000,412,0,0,0,0,0,0,'Commander Althea Ebonlocke - On Game Event Start \'Stitches\ - Respawn \'Stitches\'');


-- Watcher Gelwin
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1099) AND `source_type` = 0 AND `id` IN (8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1099,0,8,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Gelwin - On Respawn - Set Active');


-- Watcher Thayer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1101) AND `source_type` = 0 AND `id` IN (8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1101,0,8,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Gelwin - On Respawn - Set Active');


-- Watcher Selkin
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1100) AND `source_type` = 0 AND `id` IN (8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1100,0,8,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Gelwin - On Respawn - Set Active');


-- Watcher Sarys
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1203 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1203,0,0,1,11,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Sarys - On Respawn - React State Aggressive'),
(1203,0,1,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Respawn (Linked) - Set Phase 1"),
(1203,0,2,3,38,0,100,0,1,1,0,0,0,0,53,2,1203,0,0,0,2,1,0,0,0,0,0,0,0,0,'Watcher Sarys - On Data Set 1 1 - Start Waypoint (No Repeat)'),
(1203,0,3,4,61,0,100,0,0,0,0,0,0,0,17,333,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set 1 1 (Linked) - Continuous Attack Emote"),
(1203,0,4,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set 1 1 (Linked) - Set Phase 1"), -- No need to evade if Sarys has moved yet.
(1203,0,5,6,38,1,100,0,1,2,0,0,0,0,232,612700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set 1 2 (Phase 1) - Start Waypoint"),
(1203,0,6,0,61,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Data Set 1 2 (Phase 1) (Linked) - Set Normal State Emote"),
(1203,0,7,0,69,0,100,0,85,0,0,0,0,0,70,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Sarys - On Game Event \'Stitches\' End - Respawn"),
(1203,0,8,0,108,0,100,0,6,612700,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.723,"Watcher Sarys - On Waypoint 6 Reached - Set Orientation");

DELETE FROM `waypoint_data` where `id` in (612700);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(612700,1,-10577.798,-1174.569,28.353,NULL,0,0,0,1,0,100,0),
(612700,2,-10564.808,-1161.135,27.475,NULL,0,0,0,1,0,100,0),
(612700,3,-10536.224,-1159.281,28.088,NULL,0,0,0,1,0,100,0),
(612700,4,-10535.651,-1167.243,28.102,NULL,0,0,0,1,0,100,0),
(612700,5,-10531.201,-1166.305,28.102,NULL,0,0,0,1,0,100,0),
(612700,6,-10531.8,-1155.32,28.102,4.723,0,0,0,1,0,100,0);


-- Watcher Corwin
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1204 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1204,0,0,1,11,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Corwin - On Respawn - React State Aggressive'),
(1204,0,1,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Respawn (Linked) - Set Phase 1"),
(1204,0,2,3,38,0,100,0,1,1,0,0,0,0,53,2,1204,0,0,0,2,1,0,0,0,0,0,0,0,0,'Watcher Corwin - On Data Set 1 1 - Start Waypoint (No Repeat)'),
(1204,0,3,4,61,0,100,0,0,0,0,0,0,0,17,333,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set 1 1 (Linked) - Continuous Attack Emote"),
(1204,0,4,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set 1 1 (Linked) - Set Phase 1"), -- No need to evade if Corwin has moved yet.
(1204,0,5,6,38,1,100,0,1,2,0,0,0,0,101,1,0,0,0,0,0,8,0,0,0,0,-10585.755,-1158.408,30.059,4.059,"Watcher Corwin - On Data Set 1 2 (Phase 1) - Set Home POS"),
(1204,0,6,7,61,0,100,0,0,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set 1 2 (Phase 1) (Linked) - Evade"),
(1204,0,7,0,61,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Data Set 1 2 (Phase 1) (Linked) - Normal Emote"),
(1204,0,8,0,69,0,100,0,85,0,0,0,0,0,70,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Corwin - On Game Event \'Stitches\' End - Respawn");


-- Watcher Cutford
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1436 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1436,0,0,0,54,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - Just Summoned - Set Active On'),
(1436,0,1,0,54,0,100,512,0,0,0,0,0,0,53,2,1436,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - Just Summoned - Start Waypoint'),
(1436,0,2,0,40,0,100,0,1,1436,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 1 Reached - Say Line 0'),
(1436,0,3,0,54,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - Just Summoned - Set Phase 1'),
(1436,0,4,0,40,0,100,512,12,1436,0,0,0,0,66,0,0,0,0,0,0,19,263,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 12 Reached - Set Orientation'),
(1436,0,5,0,40,0,100,512,12,1436,0,0,0,0,54,28000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 12 Reached - Pause Waypoint'),
(1436,0,6,0,40,0,100,512,12,1436,0,0,0,0,45,1,1,0,0,0,0,19,263,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 12 Reached - Set Data'),
(1436,0,7,0,40,0,100,512,22,1436,0,0,0,0,66,0,0,0,0,0,0,19,264,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 22 Reached - Set Orientation'),
(1436,0,8,0,40,0,100,512,22,1436,0,0,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 22 Reached - Pause Waypoint'),
(1436,0,9,0,40,0,100,512,22,1436,0,0,0,0,45,1,1,0,0,0,0,19,264,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 22 Reached - Set Data'),
(1436,0,10,0,40,0,100,512,61,1436,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.0014,'Watcher Cutford - On Waypoint 61 Reached - Set Orientation'),
(1436,0,11,0,69,0,100,512,85,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Game Event \'Stitches\' End - Despawn In 1000 ms'),
(1436,0,12,0,38,0,100,0,3,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 1 - Say line 1'),
(1436,0,13,0,38,0,100,0,3,2,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 2 - Say line 2'),
(1436,0,14,0,38,0,100,0,3,3,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 3 - Say line 3'),
(1436,0,15,0,38,0,100,0,3,4,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 4 - Say line 4'),
(1436,0,16,0,38,0,100,0,3,5,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 5 - Say line 5'),
(1436,0,17,0,38,0,100,0,3,6,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 6 - Say line 6'),
(1436,0,18,0,38,0,100,0,3,9,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 3 9 - Say line 0'),
(1436,0,19,0,40,1,100,0,39,1436,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 39 Reached (Phase 1) - Say Line 7'),
(1436,0,20,0,40,1,100,0,58,1436,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Waypoint 58 Reached (Phase 1) - Say Line 7'),
(1436,0,21,0,38,1,100,0,1,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Data Set 1 0 (Phase 1) - Set Phase 2'), -- Stitches died
(1436,0,22,0,40,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Watcher Cutford - On Reached WP - Set Home Position');


-- Watcher Paige
DELETE FROM `smart_scripts` WHERE `entryorguid` = 499 AND `source_type` = 0 AND `id` IN (5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(499,0,5,0,69,0,100,0,85,0,0,0,0,0,41,1000,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Paige - On Game Event \'Stitches\' End - Despawn\Respawn");


-- Watcher Dodds
UPDATE `creature_template` SET `AIName` = "SmartAI",`unit_flags` = 4096,`flags_extra` = 0 WHERE `entry` = 888;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 888 AND `source_type` = 0 AND `id` IN (5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(888,0,5,0,69,0,100,0,85,0,0,0,0,0,41,1000,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Watcher Dodds - On Game Event \'Stitches\' End - Despawn\Respawn");
