-- New GUIDs game_event 88, CREATURE 300007 - 300015*/

-- Spirit of Azuregos Event
/*
SET @SPIRITEVENT := 88; -- EVENT NEW GUID
DELETE FROM `game_event` WHERE `eventEntry` = @SPIRITEVENT;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`,`announce`) VALUES 
(@SPIRITEVENT,'2008-01-02 11:55:00','2030-12-31 06:00:00',5184000,518400,0,'Spirit of Azuregos',0,2);

DELETE FROM `game_event_creature` WHERE `eventEntry`= @SPIRITEVENT;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@SPIRITEVENT,35867);


UPDATE `creature_template` SET `AIName`= "SmartAI" WHERE `entry` = 6109;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 6109 AND `source_type`= 0;
-- DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1548100,1548101) AND `source_type`= 9;
-- DELETE FROM `smart_scripts` WHERE `entryorguid` = 15481 AND `source_type`= 0 AND `id` > 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- (6109,0,0,0,11,0,100,0,0,0,0,0,111,88,0,0,0,0,0,1,0,0,0,0,0,0,0,"Azuregos - On Spawn - Stop Spirit of Azuregos Event"),
-- (6109,0,0,0,6,0,100,0,0,0,0,0,112,88,0,0,0,0,0,11,6109,10,0,0,0,0,0,"Azuregos - On Death - Start Spirit of Azuregos Event");

(15481,0,3,0,1,0,100,0,1000,1000,30000,30000,80,1548100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Azuregos - On Target 0% Health - Run Script"),
(15481,0,4,0,75,0,100,0,0,6109,600,3000,80,1548101,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Azuregos - On Target Between 1-100% Health - Run Script"),
-- (1548100,9,0,0,0,0,100,0,0,0,0,0,28,16380,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Azuregos - On move - Remove Invisiblility'),
(1548100,9,0,0,0,0,100,0,0,0,0,0,18,2048,1,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Azuregos - On Target 0% Health - Set Unit_flags2 (Unhide)"),
-- (1548101,9,0,0,0,0,100,0,0,0,0,0,11,16380,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Azuregos - On Spawn - Invisible'),
(1548101,9,0,0,0,0,100,0,0,0,0,0,18,2050,1,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Azuregos - On Target Between 1-100% Health - Set Unit_flags2 (Hide)");
*/
-- Azuregos 
UPDATE `creature` SET `MovementType` = 2,`position_x` = 2285.963,`position_y` = -6015.262,`position_z` = 107.382,`orientation` = 4.965 WHERE `guid` = 52349;
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` = 6109;
UPDATE `creature_template_addon` SET `path_id` = 6109 WHERE `entry` = 6109;

-- Missing Creature_addon - Not needed but Spirit of Azuregos has one
-- DELETE FROM `creature_addon` WHERE `guid` = 52349;
-- INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
-- (52349,6109,0,0,4097,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` = 6109;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(6109,1,2285.963,-6015.262,107.382,0,5000,0,0,100,0),
(6109,2,2305.44,-6079.612,107.141,0,0,0,0,100,0),
(6109,3,2402.401,-6128.638,99.052,0,0,0,0,100,0),
(6109,4,2530.918,-6268.49,104.101,0,0,0,0,100,0),
(6109,5,2638.807,-6273.515,98.702,0,0,0,0,100,0),
(6109,6,2711.397,-6288.466,98.791,0,0,0,0,100,0),
(6109,7,2739.915,-6229.813,101.076,0,0,0,0,100,0),
(6109,8,2735.998,-6205.493,102.138,0,0,0,0,100,0),
(6109,9,2661.401,-6145.401,100.07,0,0,0,0,100,0),
(6109,10,2614.896,-6047.153,100.845,0,0,0,0,100,0),
(6109,11,2523.301,-6048.396,99.774,0,0,0,0,100,0),
(6109,12,2446.892,-6167.192,103.862,0,0,0,0,100,0),
(6109,13,2398.332,-6170.756,100.753,0,0,0,0,100,0),
(6109,14,2340.662,-6230.769,104.818,0,5000,0,0,100,0),
(6109,15,2398.332,-6170.756,100.753,0,0,0,0,100,0),
(6109,16,2446.892,-6167.192,103.862,0,0,0,0,100,0),
(6109,17,2523.301,-6048.396,99.774,0,0,0,0,100,0),
(6109,18,2614.896,-6047.153,100.845,0,0,0,0,100,0),
(6109,19,2661.401,-6145.401,100.07,0,0,0,0,100,0),
(6109,20,2735.998,-6205.493,102.138,0,0,0,0,100,0),
(6109,21,2739.915,-6229.813,101.076,0,0,0,0,100,0),
(6109,22,2711.397,-6288.466,98.791,0,0,0,0,100,0),
(6109,23,2638.807,-6273.515,98.702,0,0,0,0,100,0),
(6109,24,2530.918,-6268.49,104.101,0,0,0,0,100,0),
(6109,25,2402.401,-6128.638,99.052,0,0,0,0,100,0),
(6109,26,2305.44,-6079.612,107.141,0,0,0,0,100,0),
(6109,27,2285.963,-6015.262,107.382,0,5000,0,0,100,0);

-- Spirit of Azuregos
UPDATE `creature` SET `MovementType` = 2,`position_x` = 2340.662,`position_y` = -6230.769,`position_z` = 104.818,`orientation` = 0.092 WHERE `guid` = 35867;
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` = 15481;
UPDATE `creature_template_addon` SET `path_id` = 15481 WHERE `entry` = 15481;
UPDATE `creature_addon` SET `path_id` = 15481 WHERE `guid` = 35867;

DELETE FROM `waypoint_data` WHERE `id` = 15481;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(15481,1,2340.662,-6230.769,104.818,0,5000,0,0,100,0),
(15481,2,2398.332,-6170.756,100.753,0,0,0,0,100,0),
(15481,3,2446.892,-6167.192,103.862,0,0,0,0,100,0),
(15481,4,2523.301,-6048.396,99.774,0,0,0,0,100,0),
(15481,5,2614.896,-6047.153,100.845,0,0,0,0,100,0),
(15481,6,2661.401,-6145.401,100.07,0,0,0,0,100,0),
(15481,7,2735.998,-6205.493,102.138,0,0,0,0,100,0),
(15481,8,2739.915,-6229.813,101.076,0,0,0,0,100,0),
(15481,9,2711.397,-6288.466,98.791,0,0,0,0,100,0),
(15481,10,2638.807,-6273.515,98.702,0,0,0,0,100,0),
(15481,11,2530.918,-6268.49,104.101,0,0,0,0,100,0),
(15481,12,2402.401,-6128.638,99.052,0,0,0,0,100,0),
(15481,13,2305.44,-6079.612,107.141,0,0,0,0,100,0),
(15481,14,2285.963,-6015.262,107.382,0,5000,0,0,100,0),
(15481,15,2305.44,-6079.612,107.141,0,0,0,0,100,0),
(15481,16,2402.401,-6128.638,99.052,0,0,0,0,100,0),
(15481,17,2530.918,-6268.49,104.101,0,0,0,0,100,0),
(15481,18,2638.807,-6273.515,98.702,0,0,0,0,100,0),
(15481,19,2711.397,-6288.466,98.791,0,0,0,0,100,0),
(15481,20,2739.915,-6229.813,101.076,0,0,0,0,100,0),
(15481,21,2735.998,-6205.493,102.138,0,0,0,0,100,0),
(15481,22,2661.401,-6145.401,100.07,0,0,0,0,100,0),
(15481,23,2614.896,-6047.153,100.845,0,0,0,0,100,0),
(15481,24,2523.301,-6048.396,99.774,0,0,0,0,100,0),
(15481,25,2446.892,-6167.192,103.862,0,0,0,0,100,0),
(15481,26,2398.332,-6170.756,100.753,0,0,0,0,100,0),
(15481,27,2340.662,-6230.769,104.818,0,5000,0,0,100,0);
