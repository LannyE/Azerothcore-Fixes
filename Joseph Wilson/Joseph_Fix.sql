/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid IN (33589,3358900)
LIMIT 0, 1000

-- Date: 2025-05-25 16:59
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` in (33589,3358900,3358901);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(33589,0,0,0,11,0,100,512,0,0,0,0,0,0,53,0,33589,1,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Respawn - Start Waypoint (No Repeat)'),
(33589,0,1,2,40,0,100,512,1,33589,0,0,0,0,80,3358900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Waypoint 1 Reached - Run Script (No Repeat)'),
(33589,0,2,0,61,0,100,512,0,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Waypoint 1 Reached (Linked) - Pause Waypoint'),
(33589,0,3,0,40,0,100,512,4,33589,0,0,0,0,80,3358901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Waypoint 4 Reached - Run Script'),
-- (33589,0,3,4,40,0,100,512,4,33589,0,0,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Waypoint 4 Reached - Pause Waypoint'),
-- (33589,0,4,0,61,0,100,512,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.19395,'Joseph Wilson - On Waypoint 4 Reached (Linked) - Set Orientation 3'),


-- (3358900,9,0,0,0,0,100,0,0,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Script - Pause Waypoint'),
(3358900,9,0,0,0,0,100,512,500,500,0,0,0,0,66,0,0,0,0,0,0,19,33479,0,0,0,0,0,0,0,'Joseph Wilson - On Script - Set Orientation Closest Creature \'Stormwind Valiant\''),
(3358900,9,1,0,0,0,100,512,500,500,0,0,0,0,11,61493,0,0,0,0,0,19,33479,0,0,0,0,0,0,0,'Joseph Wilson - On Script - Cast \'[DND] First Aid\''),
(3358900,9,2,0,0,0,100,512,10000,10000,0,0,0,0,66,0,0,0,0,0,0,19,33460,0,0,0,0,0,0,0,'Joseph Wilson - On Script - Set Orientation Closest Creature \'Orgrimmar Valiant\''),
(3358900,9,3,0,0,0,100,512,500,500,0,0,0,0,11,61493,0,0,0,0,0,19,33460,0,0,0,0,0,0,0,'Joseph Wilson - On Script - Cast \'[DND] First Aid\''),

(3358901,9,0,0,0,0,100,512,0,0,0,0,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Joseph Wilson - On Script - Pause Waypoint'),
(3358901,9,1,0,0,0,100,512,200,200,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.19395,'Joseph Wilson - On Script - Set Orientation 3');

/*
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(33589,1,8492.98,961.62,547.293,NULL,0,'Joseph Wilson'),
(33589,2,8489.46,964.667,547.293,NULL,0,'Joseph Wilson'),
(33589,3,8489.14,966.726,547.293,NULL,0,'Joseph Wilson'),
(33589,4,8489.91,967.644,547.294,NULL,0,'Joseph Wilson'),
(33589,5,8489.14,966.726,547.293,NULL,0,'Joseph Wilson'),
(33589,6,8489.46,964.667,547.293,NULL,0,'Joseph Wilson');
