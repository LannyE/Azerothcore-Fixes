/*
 Leprithus update to Spawn group system 7-10-26
-- Fix it to use the spawn group system so that slower servers don't crash at 8:00 because of issues with the GameMgr creature spawn system.
-- New Spawn Group: 42310
-- Not needed by any production server.  Use the original fix for production.   
*/
-- Leprithus
-- DELETE FROM `game_event` WHERE `eventEntry` = 89;
-- INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES
-- (89,'2016-10-28 20:00:00','2030-12-30 23:00:00',1440,600,0,0,'Leprithus',0,2);

DELETE FROM `game_event_creature` WHERE `eventEntry` = 89 and `guid` in (134020,134021,86827,86828,86829,86830);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 572 and `source_type` = 0 and `id` = 3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(572,0,3,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leprithus - On Respawn - Set Active On');

DELETE FROM `waypoint_data` WHERE `id` = 1340210;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(1340210,1,-11277.3,1021.93,94.7337,NULL,0,0,0,100,0),
(1340210,2,-11257.1,988.193,83.3336,NULL,0,0,0,100,0),
(1340210,3,-11244.4,962.304,83.269,NULL,0,0,0,100,0),
(1340210,4,-11240.5,948.932,75.6219,NULL,0,0,0,100,0),
(1340210,5,-11212.6,921.358,54.3906,NULL,0,0,0,100,0),
(1340210,6,-11194.6,895.302,48.4349,NULL,0,0,0,100,0),
(1340210,7,-11172.6,876.756,41.3173,NULL,0,0,0,100,0),
(1340210,8,-11146.3,866.02,38.4824,NULL,0,0,0,100,0),
(1340210,9,-11126,851.423,40.3828,NULL,0,0,0,100,0),
(1340210,10,-11086.8,834.864,40.7715,NULL,0,0,0,100,0),
(1340210,11,-11059.5,846.814,38.6569,NULL,0,0,0,100,0),
(1340210,12,-11039.1,843.255,36.3932,NULL,0,0,0,100,0),
(1340210,13,-11012.4,812.002,37.4404,NULL,0,0,0,100,0),
(1340210,14,-11002.7,788.433,36.4366,NULL,0,0,0,100,0),
(1340210,15,-10982.7,761.666,43.9919,NULL,0,0,0,100,0),
(1340210,16,-10962.6,736.809,46.4806,NULL,0,0,0,100,0),
(1340210,17,-10913.9,722.066,42.727,NULL,0,0,0,100,0),
(1340210,18,-10867.737,699.722,30.941,NULL,0,0,0,100,0),
(1340210,19,-10866.525,667.412,30.936,4.8221,60000,0,0,100,0),
(1340210,20,-10869.88,687.586,30.891,NULL,0,0,0,100,0),
(1340210,21,-10844.104,724.133,33.873,NULL,0,0,0,100,0),
(1340210,22,-10844.079,750.508,34.406,1.5668,5000,0,0,100,0),
(1340210,23,-10895.047,742.711,34.959,NULL,0,0,0,100,0),
(1340210,24,-10962.6,736.809,46.4806,NULL,0,0,0,100,0),
(1340210,25,-10982.7,761.666,43.9919,NULL,0,0,0,100,0),
(1340210,26,-11002.7,788.433,36.4366,NULL,0,0,0,100,0),
(1340210,27,-11012.4,812.002,37.4404,NULL,0,0,0,100,0),
(1340210,28,-11039.1,843.255,36.3932,NULL,0,0,0,100,0),
(1340210,29,-11059.5,846.814,38.6569,NULL,0,0,0,100,0),
(1340210,30,-11086.8,834.864,40.7715,NULL,0,0,0,100,0),
(1340210,31,-11126,851.423,40.3828,NULL,0,0,0,100,0),
(1340210,32,-11146.3,866.02,38.4824,NULL,0,0,0,100,0),
(1340210,33,-11172.6,876.756,41.3173,NULL,0,0,0,100,0),
(1340210,34,-11194.6,895.302,48.4349,NULL,0,0,0,100,0),
(1340210,35,-11212.6,921.358,54.3906,NULL,0,0,0,100,0),
(1340210,36,-11240.5,948.932,75.6219,NULL,0,0,0,100,0),
(1340210,37,-11244.4,962.304,83.269,NULL,0,0,0,100,0),
(1340210,38,-11257.1,988.193,83.3336,5.69163,10000,0,0,100,0);


-- Rotten Ghoul
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (846); -- 0

UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0,`spawntimesecs` = 72000 WHERE `guid` in (86827,86828,86829,86830); -- 300

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-86827,-86828,-86829,-86830) and `source_type` = 0 and `id` = 1000;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-86827,0,1000,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rotten Ghoul - On Respawn - Set Active On'),
(-86828,0,1000,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rotten Ghoul - On Respawn - Set Active On'),
(-86829,0,1000,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rotten Ghoul - On Respawn - Set Active On'),
(-86830,0,1000,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rotten Ghoul - On Respawn - Set Active On');


-- Mailbox
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` in (153716); -- 929

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-32101) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-32101,1,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Respawn - Set Active On'),
(-32101,1,1,0,69,0,100,0,89,0,0,0,0,0,132,42310,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Game Event \'Leprithus\' Stop - Despawn SpawnGroup'),
(-32101,1,2,0,68,0,100,0,89,0,0,0,0,0,131,42310,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Game Event \'Leprithus\' Start - Spawn SpawnGroup');

DELETE FROM `spawn_group` where `groupId` IN (42310);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42310,0,134020), -- Leprithus North Graveyard
(42310,0,134021), -- Leprithus South Graveyard
(42310,0,86827), -- Rotten Ghoul Minions of Leprithus
(42310,0,86828),
(42310,0,86829),
(42310,0,86830);

DELETE FROM `spawn_group_template` where `groupId` IN (42310);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42310,'Leprithus Group 1',4);