/*
-- Query: SELECT * FROM acore_world.waypoints where entry = 17592
LIMIT 0, 1000

-- Date: 2022-01-09 20:11
*/
UPDATE `creature_template_movement` SET `Ground` = 0,`Flight` = 1 WHERE `CreatureId` in (17592); -- 0 1
UPDATE `creature_template` SET `MovementType` = 1,`HoverHeight` = 1,`movementId` = 210 WHERE `entry` in (17592); -- 1 1 210

DELETE FROM `creature` WHERE `guid` IN (300017); -- NEW GUID

UPDATE `creature_template_addon` SET `visibilityDistanceType` = 3 WHERE `entry` in (17592);
-- UPDATE `creature_template` SET `scale` = 1 WHERE `entry` in (17592);
-- UPDATE `gameobject_template` SET `AIName` = '' WHERE `entry` in (181988);

DELETE FROM event_scripts WHERE `id` IN (11087);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(11087,0,10,17592,150000,0,-1121.53,-12600.8,134.03,2.86);

DELETE FROM waypoints WHERE `entry` IN (17592,175920);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(17592,1,-1167.07,-12594.7,133.93,0,0,'Razormaw'),
(17592,2,-1200.9,-12554.5,129,0,0,'Razormaw'),
(17592,3,-1208.03,-12469.6,94.5,0,0,'Razormaw');

DELETE FROM `waypoint_data` where `id` in (175920,175921);

DELETE FROM smart_scripts WHERE `entryorguid` IN (17592,-300017) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (1759200,1759201,1759202) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17592,0,0,0,0,0,100,0,6000,6000,7000,9000,0,11,31279,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Razormaw - Combat - Cast Swipe'),
(17592,0,1,0,0,0,100,0,26000,30000,26000,30000,0,11,8873,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - Combat - Cast Flame Breath'),
(17592,0,2,0,0,0,50,0,12000,12000,12000,12000,0,11,14100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - Combat - Cast Terrifying Roar'),
(17592,0,3,4,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Spawn - Set Active'),
(17592,0,4,5,61,0,100,0,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Spawn - Add Unit Flags'),
(17592,0,5,6,61,0,100,0,0,0,0,0,0,60,1,250,1,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Spawn - Set Can Fly'),
(17592,0,6,7,61,0,100,0,0,0,0,0,0,213,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Spawn - No Environment Update'),
(17592,0,7,0,61,0,100,0,0,0,0,0,0,53,1,17592,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Spawn - Load Path'),
(17592,0,8,9,40,0,100,0,3,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Reach waypoint - Remove Unit Flags'),
(17592,0,9,10,61,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Waypoint 10 Reached - Set Home Position'),
(17592,0,10,11,61,0,100,0,0,0,0,0,0,60,0,110,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Waypoint 10 Reached - Set Can Fly Off'),
(17592,0,11,12,61,0,100,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Waypoint 10 Reached - Set Hover Off'),
(17592,0,12,0,61,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Waypoint 10 Reached - Set Agressive');

