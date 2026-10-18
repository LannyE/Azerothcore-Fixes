UPDATE `creature` SET `MovementType` = 0 WHERE `guid`=80149;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid`=80251;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid`=80149;
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid`=80251;

-- Add Random Movement to replace Waypoint Script
DELETE FROM smart_scripts WHERE `entryorguid` IN (-80251,-80149) and `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (3800) and `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-80149,0,0,0,11,0,100,512,0,0,0,0,0,0,53,1,8014900,1,0,0,1,1,0,0,0,0,0,0,0,0,'Defias Thug - On Respawn - Start WayPoint'),
(-80149,0,1,0,40,0,100,512,1,8014900,0,0,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Waypoint 1 Reached - Pause WayPoint'),
(-80149,0,2,0,40,0,100,512,10,8014900,0,0,0,0,80,3800,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Waypoint 10 Reached - Run Script'),

(-80251,0,0,0,11,0,100,512,0,0,0,0,0,0,53,1,8025100,1,0,0,1,1,0,0,0,0,0,0,0,0,'Defias Thug - On Respawn - Start WayPoint'),
(-80251,0,1,0,40,0,100,512,1,8025100,0,0,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Waypoint 1 Reached - Pause WayPoint'),
(-80251,0,2,0,40,0,100,512,11,8025100,0,0,0,0,80,3800,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Waypoint 11 Reached - Run Script'),

(3800,9,0,0,0,0,100,0,0,0,0,0,0,0,54,26000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Script - Pause Waypoint'),
(3800,9,1,0,0,0,100,0,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Script - Random Movement'),
(3800,9,2,0,0,0,100,0,25000,25000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Thug - On Script - Resume Waypoint');



-- Remove Waypoint Script from waypoints
UPDATE `waypoint_data` SET `action` = 0 WHERE `id` IN (801490) and `point` = 10;
UPDATE `waypoint_data` SET `action` = 0 WHERE `id` IN (802510) and `point` = 11;


-- Remove Waypoint Scripts
DELETE FROM waypoint_scripts where id IN (8025100,8014900);

DELETE FROM `waypoint_data` where id IN (802510,801490);

DELETE FROM `waypoints` WHERE `entry` IN(8014900,8025100);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(8014900,1,-9008.89,-320.603,75.8279,'Defias Thug'), -- 1 sec delay
(8014900,2,-8981.22,-335.138,73.3474,'Defias Thug'),
(8014900,3,-8946.51,-338.891,71.1134,'Defias Thug'),
(8014900,4,-8912.77,-352.085,72.5823,'Defias Thug'),
(8014900,5,-8881.49,-355.84,73.1462,'Defias Thug'),
(8014900,6,-8910.65,-346.602,71.1023,'Defias Thug'),
(8014900,7,-8883.13,-352.739,72.9499,'Defias Thug'),
(8014900,8,-8911.38,-347.166,71.3269,'Defias Thug'),
(8014900,9,-8947.63,-337.566,70.9275,'Defias Thug'),
(8014900,10,-9008.89,-320.603,75.8279,'Defias Thug'),  -- 25 sec delay and random movement
(8025100,1,-8878.29,-410.994,65.6802,'Defias Thug'), -- 1 sec delay
(8025100,2,-8880.02,-399.363,66.0983,'Defias Thug'),
(8025100,3,-8898.18,-391.582,68.6285,'Defias Thug'),
(8025100,4,-8914.49,-391.059,69.3006,'Defias Thug'),
(8025100,5,-8928.27,-375.636,71.218,'Defias Thug'),
(8025100,6,-8958.87,-373.826,72.3354,'Defias Thug'),
(8025100,7,-8921.43,-376.858,71.1848,'Defias Thug'),
(8025100,8,-8909.08,-366.763,72.135,'Defias Thug'),
(8025100,9,-8870.04,-371.407,71.997,'Defias Thug'),
(8025100,10,-8878.29,-410.994,65.6802,'Defias Thug'),
(8025100,11,-8878.29,-410.994,65.6802,'Defias Thug'); -- 25 sec delay and random movement