
-- Eye of Darkan
DELETE FROM waypoint_data WHERE `id` = 828970;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(828970,1,6443.78,-6340.43,41.291,0,0,0,0,100,0),
(828970,2,6459.56,-6345.86,41.208,0,0,0,0,100,0),
(828970,3,6453.16,-6365.24,33.735,0,0,0,0,100,0),
(828970,4,6446.68,-6384.37,41.203,0,0,0,0,100,0),
(828970,5,6430.96,-6379.17,41.291,0,0,0,0,100,0),
(828970,6,6437.28,-6360.66,41.276,0,0,0,0,100,0);

-- Dustbelcher
DELETE FROM creature_addon WHERE `guid` in (82897,6973,6975);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(82897,828970,0,0,1,0,0,NULL),

(6973,69730,0,0,1,0,0,NULL),
(6975,69750,0,0,1,0,0,NULL);

-- Librarian Hamilton
DELETE FROM smart_scripts WHERE `entryorguid` = 27141 and `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27141,0,1,0,64,0,100,0,0,0,0,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Librarian Hamilton - On Gossip Hello - Pause Waypoint');
