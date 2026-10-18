/*
undo
 Leprithus update to Spawn group system 7-10-26
-- Fix it to use the spawn group system so that slower servers don't crash at 8:00 because of issues with the GameMgr system.
-- New Spawn Group: 42310 
*/
-- Leprithus
DELETE FROM `game_event_creature` WHERE `eventEntry` = 89 and `guid` in (134020,134021,86827,86828,86829,86830);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(89,134020), -- Leprithus North Graveyard
(89,134021), -- Leprithus South Graveyard
(89,86827), -- Rotten Ghoul Minions of Leprithus
(89,86828),
(89,86829),
(89,86830);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 572 and `source_type` = 0 and `id` = 3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(572,0,3,0,68,0,100,0,89,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leprithus - On Game Event \'Leprithus\' Start - Respawn');

DELETE FROM `waypoint_data` WHERE `id` = 1340210;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(1340210,1,-11277.3,1021.93,94.7337,5.18302,0,0,0,100,0),
(1340210,2,-11257.1,988.193,83.3336,5.69163,0,0,0,100,0),
(1340210,3,-11244.4,962.304,83.269,5.05783,0,0,0,100,0),
(1340210,4,-11240.5,948.932,75.6219,5.30995,0,0,0,100,0),
(1340210,5,-11212.6,921.358,54.3906,5.10103,0,0,0,100,0),
(1340210,6,-11194.6,895.302,48.4349,5.39948,0,0,0,100,0),
(1340210,7,-11172.6,876.756,41.3173,6.03015,0,0,0,100,0),
(1340210,8,-11146.3,866.02,38.4824,5.63196,0,0,0,100,0),
(1340210,9,-11126,851.423,40.3828,5.64138,0,0,0,100,0),
(1340210,10,-11086.8,834.864,40.7715,0.273191,0,0,0,100,0),
(1340210,11,-11059.5,846.814,38.6569,6.25714,0,0,0,100,0),
(1340210,12,-11039.1,843.255,36.3932,5.48039,0,0,0,100,0),
(1340210,13,-11012.4,812.002,37.4404,5.31939,0,0,0,100,0),
(1340210,14,-11002.7,788.433,36.4366,5.5715,0,0,0,100,0),
(1340210,15,-10982.7,761.666,43.9919,5.11518,0,0,0,100,0),
(1340210,16,-10962.6,736.809,46.4806,6.21378,0,0,0,100,0),
(1340210,17,-10913.9,722.066,42.727,5.94361,0,0,0,100,0),
(1340210,18,-10867.737,699.722,30.941,0,0,0,0,100,0),
(1340210,19,-10866.525,667.412,30.936,4.8221,60000,0,0,100,0),
(1340210,20,-10869.88,687.586,30.891,0,0,0,0,100,0),
(1340210,21,-10844.104,724.133,33.873,0,0,0,0,100,0),
(1340210,22,-10844.079,750.508,34.406,1.5668,5000,0,0,100,0),
(1340210,23,-10895.047,742.711,34.959,0,0,0,0,100,0),
(1340210,24,-10962.6,736.809,46.4806,6.21378,0,0,0,100,0),
(1340210,25,-10982.7,761.666,43.9919,5.11518,0,0,0,100,0),
(1340210,26,-11002.7,788.433,36.4366,5.5715,0,0,0,100,0),
(1340210,27,-11012.4,812.002,37.4404,5.31939,0,0,0,100,0),
(1340210,28,-11039.1,843.255,36.3932,5.48039,0,0,0,100,0),
(1340210,29,-11059.5,846.814,38.6569,6.25714,0,0,0,100,0),
(1340210,30,-11086.8,834.864,40.7715,0.273191,0,0,0,100,0),
(1340210,31,-11126,851.423,40.3828,5.64138,0,0,0,100,0),
(1340210,32,-11146.3,866.02,38.4824,5.63196,0,0,0,100,0),
(1340210,33,-11172.6,876.756,41.3173,6.03015,0,0,0,100,0),
(1340210,34,-11194.6,895.302,48.4349,5.39948,0,0,0,100,0),
(1340210,35,-11212.6,921.358,54.3906,5.10103,0,0,0,100,0),
(1340210,36,-11240.5,948.932,75.6219,5.30995,0,0,0,100,0),
(1340210,37,-11244.4,962.304,83.269,5.05783,0,0,0,100,0),
(1340210,38,-11257.1,988.193,83.3336,5.69163,10000,0,0,100,0);


-- Rotten Ghoul
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry` in (846); -- 0

UPDATE `creature` SET `wander_distance` = 1,`MovementType` = 1,`spawntimesecs` = 300 WHERE `guid` in (86827,86828,86829,86830); -- 300

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-86827,-86828,-86829,-86830) and `source_type` = 0 and `id` = 1000;


-- Mailbox
UPDATE `gameobject_template` SET `AIName` = "" WHERE `entry` in (153716); -- 929

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-32101) AND `source_type` = 1;

DELETE FROM `spawn_group` where `groupId` IN (42310);


DELETE FROM `spawn_group_template` where `groupId` IN (42310);
