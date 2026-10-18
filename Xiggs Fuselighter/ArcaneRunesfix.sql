/*
-- Query: SELECT * FROM temp.waypoints where entry = 8392
LIMIT 0, 1000

-- Date: 2022-01-09 20:12
*/

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` IN (8392,8446);

DELETE FROM waypoints WHERE `entry` = 8446;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(8446,1,2253.292,-7266.429,19.254,0.372,0,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,2,2254.673,-7264.261,18.053,0,0,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,3,2255.869,-7260.508,17.131,0,0,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,4,2257.945,-7252.492,16.47,0,0,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,5,2257.877,-7247.459,16.258,0,0,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,6,2256.483,-7225.29,16.258,0,1000,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,7,2255.773,-7223.073,15.27,0,0,'Xiggs Fuselighter\'s Flyingmachine'),
(8446,8,2254.984,-7221.511,13.67,0,0,'Xiggs Fuselighter\'s Flyingmachine');

DELETE FROM smart_scripts WHERE `entryorguid` IN (8392,8446);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8446,0,0,1,11,0,100,0,0,0,0,0,0,53,1,8446,0,0,0,1,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - On Respawn - Start Waypoint'),
(8446,0,1,2,61,0,100,0,0,0,0,0,0,60,1,60,1,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked - Set Flying On'),
(8446,0,2,0,61,0,100,0,0,0,0,0,0,90,2,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked - Set Flag Hover'),
(8446,0,3,4,40,0,100,0,6,8446,0,0,0,60,1,45,1,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - On Waypoint 6 Reached  - Set Flying Off'),
(8446,0,4,5,61,0,100,0,0,0,0,0,0,54,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked  - Pause Waypoint'),
(8446,0,5,0,61,0,100,0,0,0,0,0,0,91,2,3,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked  - Remove Flag Hover'),
(8446,0,6,7,40,0,100,0,8,8446,0,0,0,12,8392,3,160000,0,0,0,8,0,0,0,0,2249,-7221.97,13.82,1.02,'Xiggs Fuselighter\'s Flyingmachine - On Waypoint 8 Reached - Summon \'Pilot Xiggs Fuselighter\''),
(8446,0,7,8,61,0,100,0,0,0,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked - Stop Waypoint Movement'),
(8446,0,8,0,61,0,100,0,0,0,0,0,0,3,0,22878,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked - Change Model'),
(8446,0,9,0,35,0,100,0,0,0,0,0,0,3,0,8011,0,0,0,0,1,0,0,0,0,0,0,0,0,'Xiggs Fuselighter\'s Flyingmachine - Linked - Change Model'),

(8392,0,0,0,1,0,100,0,3000,3000,0,0,0,5,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pilot Xiggs Fuselighter - OOC - Emote Wave');

DELETE FROM `creature_template_movement` where `CreatureId` = 8446;
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(8446,1,0,2,0,0,0,NULL);

DELETE FROM `creature_template_addon` where `entry` = 8446;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(8446,0,0,50331648,1,0,3,'');

DELETE FROM `event_scripts` where `id` = 3084;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(3084,5,10,8446,180000,0,2253.292,-7266.429,19.254,0.372);

