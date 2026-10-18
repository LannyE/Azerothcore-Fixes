/*
undo
Fix Stormpeak Wyrms scripts to pickup rhinos and bulls and carry them off in The Foot Steppes.  5-15-26
*/

-- Stormpeak Wyrm
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `guid` in (29753); -- 0
UPDATE `creature` SET `position_x` = 7415.38,`position_y` = -1216.04,`position_z` = 904.576 WHERE `guid` = 101113; -- 

DELETE FROM `smart_scripts` where `entryorguid` in (29753,-101113) AND `source_type` = 0;
DELETE FROM `smart_scripts` where `entryorguid` in (2975300) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(29753,0,0,0,0,0,100,512,3000,3000,7000,7000,0,0,11,57833,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'IC Update - cast spell on victim');

DELETE FROM `waypoint_data` where `id` in (1019300);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1011130,1,7415.38,-1216.04,904.576,NULL,0,0,1,1,0,100,0),
(1011130,2,7414.54,-1215.5,904.576,NULL,0,0,1,1,0,100,0),
(1011130,3,7133.19,-1316.92,1033.5,NULL,0,0,1,1,0,100,0);


-- Ice Steppe Bull
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (30445); -- 0

DELETE FROM `smart_scripts` where `entryorguid` in (-118277) AND `source_type` = 0;


-- Ice Steppe Rhino
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (29469); -- 0

DELETE FROM `smart_scripts` where `entryorguid` in (-98735,-98736,-98737,-98788,-98753,-98754,-98755,29469) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(29469,0,0,0,9,0,100,0,0,0,25000,30000,5,35,11,55193,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - Within 5-35 Range - Cast \'Rhino Charge\' (Phase 1)');
