/*
Blackwind Landing Overhaul 7-9-26
-Fix Navigators and Scouts pathing
-- Spawn Group: 42305
*/
-- Campfire 
UPDATE `gameobject_template` SET `Data2` = 2061,`ScriptName` = '',`AIName` = "SmartGameObjectAI" WHERE `entry` in (185544); -- 0 go_flames ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-14134) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-14134,1,0,1,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Campfire - On Respawn - Set Active'),
(-14134,1,1,0,61,0,100,0,0,0,0,0,0,0,131,42305,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Campfire - On Respawn (Linked) - Spawn SpawnGroup'),
(-14134,1,2,3,38,0,100,0,1,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Campfire - On Data Set 1 0 - Set Phase 1'),
(-14134,1,3,0,61,0,100,0,0,0,0,0,0,0,132,42305,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Campfire - On Data Set 1 0 (Linked) - Despawn SpawnGroup'),
(-14134,1,4,5,1,1,100,0,20000,20000,20000,20000,0,0,131,42305,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Campfire - OOC (Phase 1) - Spawn SpawnGroup'),
(-14134,1,5,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Campfire - On Data Set 1 2 - Set Phase 2');


-- Skyguard Navigator
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` IN (79005);

UPDATE `creature` SET `position_x` = -3365.85,`position_y` = 3641.92,`position_z` = 284.633,`orientation` = 1.55334,`wander_distance` = 0,`MovementType` = 0 WHERE `guid` = 79004;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-79004,-79005) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-79004,0,1000,1001,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn - Set Active On'),
(-79004,0,1001,0,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn (Linked) - Set Run Off'),
(-79004,0,1002,0,38,0,100,0,1,0,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Data Set 1 0 - Emote \'Salute\''),
(-79004,0,1003,0,38,0,100,0,1,1,0,0,0,0,5,397,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Data Set 1 1 - Emote \'Point\''),
(-79004,0,1004,0,38,0,100,0,1,2,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-3364.91,3658.91,284.633,4.62512,'Skyguard Navigator - On Data Set 1 2 - Move to POS'), -- landing position
(-79004,0,1005,0,38,0,100,0,1,3,0,0,0,0,69,2,0,0,0,0,0,8,0,0,0,0,-3365.85,3641.92,284.633,1.55334,'Skyguard Navigator - On Data Set 1 3 - Move to POS \'Home\''), -- Takeoff position

(-79005,0,1000,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn - Set Active On'),
(-79005,0,1001,0,38,0,100,0,1,0,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Data Set 1 0 - Emote \'Salute\'');


-- Skyguard Scout
UPDATE `creature` SET `position_x` = -3363.300048828125,`position_y` = 3623.800048828125,`position_z` = 281.39898681640625,`orientation` = 1.5973000526428223,`wander_distance` = 0,`MovementType` = 0 WHERE `guid` = 78998; -- -3387.62 3637.36 315.568 6.01105 5 1
UPDATE `creature` SET `position_x` = -3355.8798828125,`position_y` = 3624.070068359375,`position_z` = 282.9320068359375,`orientation` = 1.7338999509811401,`wander_distance` = 0,`MovementType` = 0 WHERE `guid` = 78999;  -- -3395.91 3636.48 315.321 0.389707 5 1
UPDATE `creature` SET `position_x` = -3360.030029296875,`position_y` = 3626.070068359375,`position_z` = 282.5950012207031,`orientation` = 1.5973000526428223,`wander_distance` = 0,`MovementType` = 0 WHERE `guid` = 79000; -- -3405.7 3633.15 314.427 0.546269 5 1

DELETE FROM `spawn_group` where `groupId` IN (42305);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42305,0,78998),
(42305,0,78999),
(42305,0,79000);

DELETE FROM `spawn_group_template` where `groupId` IN (42305);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42305,'Skyguard Scout Group 2',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22980) AND `source_type` = 0 AND `id` IN (3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-79000,-78998,-78999) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2298008,2298009,2298010,2298011) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22980,0,3,0,38,0,100,0,1,3,0,0,0,0,80,2298010,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 3 - Run Script'),

(-79000,0,1000,1001,11,0,100,0,0,0,0,0,0,0,232,229809,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Start Waypoint'),
(-79000,0,1001,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Respawn (Linked) - Set Phase 1'),
(-79000,0,1002,1003,108,0,100,0,2,229810,0,0,0,0,45,1,0,0,0,0,0,14,14134,185544,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 2 Reached - Set Data 1 0 on \'Campfire\''),
(-79000,0,1003,0,61,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,10,79004,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 2 Reached (Linked) - Set Data 1 3 on \'Skyguard Navigator\''),
(-79000,0,1004,0,108,0,100,0,2,229809,0,0,0,0,80,2298008,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 2 Reached - Run Script'),
(-79000,0,1005,0,1,2,100,0,2000,2000,0,0,0,0,80,2298009,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - OOC (Phase 2) - Run Script'),
(-79000,0,1006,0,108,0,100,0,54,229808,0,0,0,0,80,2298011,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Run Script'),
(-79000,0,1010,1011,108,0,100,0,1,229810,0,0,0,0,80,2298001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 1 Reached - Run Script'),
(-79000,0,1011,1012,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,78998,22980,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 1 Reached (Linked) - Set Data 1 1 on \'Skyguard Scout\''),
(-79000,0,1012,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,78999,22980,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 1 Reached (Linked) - Set Data 1 1 on \'Skyguard Scout\''),
(-79000,0,1013,0,108,0,100,0,25,229808,0,0,0,0,45,1,2,0,0,0,0,10,79004,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 25 Reached - Set Data 1 2 on \'Skyguard Navigator\''),
(-79000,0,1017,0,108,0,100,0,54,229808,0,0,0,0,45,1,1,0,0,0,0,10,79004,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Set Data 1 1 on \'Skyguard Navigator\''),

(-78998,0,1000,0,11,0,100,0,0,0,0,0,0,0,29,2,135,0,0,0,0,10,79000,22980,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Follow \'Skyguard Scout\''),
(-78998,0,1001,0,38,0,100,0,1,2,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 2 - Stop Follow \'Skyguard Scout\''),
(-78998,0,1002,0,108,0,100,0,54,229808,0,0,0,0,232,229811,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Start Waypoint'),

(-78999,0,1000,0,11,0,100,0,0,0,0,0,0,0,29,2,225,0,0,0,0,10,79000,22980,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Follow \'Skyguard Scout\''),
(-78999,0,1001,0,38,0,100,0,1,2,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 2 - Stop Follow \'Skyguard Scout\''),
(-78999,0,1002,0,108,0,100,0,54,229808,0,0,0,0,232,229812,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Start Waypoint'),

(2298008,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,10,78998,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 3 on \'Skyguard Scout\''),
(2298008,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,10,78999,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 3 on \'Skyguard Scout\''),
(2298008,9,2,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Stop Waypoint'),
(2298008,9,3,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.188,'Skyguard Scout - On Script - Set Orientation'),
(2298008,9,4,0,0,0,100,0,3000,3000,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Emote \'Salute\''),
(2298008,9,5,0,0,0,100,0,500,500,0,0,0,0,45,1,0,0,0,0,0,10,79005,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Navigator\''),
(2298008,9,6,0,0,0,100,0,200,200,0,0,0,0,45,1,0,0,0,0,0,10,79004,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Navigator\''),
-- (2298008,9,7,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.2198,'Skyguard Scout - On Script - Set Orientation'),  -- NEED ORIENTATION not needed
(2298008,9,7,0,0,0,100,0,1000,1000,0,0,0,0,43,0,21158,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Mount to Model'),
(2298008,9,8,0,0,0,100,0,500,500,0,0,0,0,45,1,1,0,0,0,0,10,79004,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 1 on \'Skyguard Navigator\''),
(2298008,9,9,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Hover On'),
(2298008,9,10,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Run On'),
(2298008,9,11,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Fly On'),
(2298008,9,12,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,78998,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 2 on \'Skyguard Scout\''),
(2298008,9,13,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,78999,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 2 on \'Skyguard Scout\''),
(2298008,9,14,0,0,0,100,0,10,10,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Phase 2'),

(2298009,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298009,9,1,0,0,0,100,0,10,10,0,0,0,0,232,229808,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298009,9,2,0,0,0,100,0,600,600,0,0,0,0,232,229808,0,0,0,0,0,10,78998,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298009,9,3,0,0,0,100,0,600,600,0,0,0,0,232,229808,0,0,0,0,0,10,78999,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298009,9,4,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Set Phase 1"),

(2298010,9,0,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.188,'Skyguard Scout - On Script - Set Orientation'),
(2298010,9,1,0,0,0,100,0,3000,3000,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Emote \'Salute\''),
-- (2298010,9,2,0,0,0,100,0,1200,1200,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.2198,'Skyguard Scout - On Script - Set Orientation'),  -- NEED ORIENTATION They do not need this 
(2298010,9,2,0,0,0,100,0,1000,1000,0,0,0,0,43,0,21152,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Mount to Model'),
(2298010,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Stop Waypoint'),
(2298010,9,4,0,0,0,100,0,500,500,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Hover On'),
(2298010,9,5,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Run On'),
(2298010,9,6,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Fly On'),
(2298010,9,7,0,0,0,100,0,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Flying Tier Animation'),

(2298011,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298011,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,79004,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Navigator\''),
(2298011,9,2,0,0,0,100,0,10,10,0,0,0,0,232,229810,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint");

DELETE FROM `waypoint_data` WHERE `id` IN (229808,229809,229810,229811,229812);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(229808,1,-3362.28,3650.03,291.004,NULL,0,0,1,1,0,100,0),
(229808,2,-3325.82,3639.98,291.962,NULL,0,0,1,1,0,100,0),
(229808,3,-3317.24,3631.38,294.075,NULL,0,0,1,1,0,100,0),
(229808,4,-3315.52,3620.13,298.47,NULL,0,0,1,1,0,100,0),
(229808,5,-3319.85,3606.91,305.045,NULL,0,0,1,1,0,100,0),
(229808,6,-3325.36,3594.58,310.322,NULL,0,0,1,1,0,100,0),
(229808,7,-3332.12,3584.65,314.771,NULL,0,0,1,1,0,100,0),
(229808,8,-3344.19,3580.7,316.176,NULL,0,0,1,1,0,100,0),
(229808,9,-3359.93,3579.21,317.271,NULL,0,0,1,1,0,100,0),
(229808,10,-3374.94,3576.39,315.744,NULL,0,0,1,1,0,100,0),
(229808,11,-3388.93,3572.65,312.227,NULL,0,0,1,1,0,100,0),
(229808,12,-3403.11,3570.27,309.855,NULL,0,0,1,1,0,100,0),
(229808,13,-3418.4,3568.92,308.624,NULL,0,0,1,1,0,100,0),
(229808,14,-3430.23,3569.66,308.265,NULL,0,0,1,1,0,100,0),
(229808,15,-3440.63,3577.66,309.299,NULL,0,0,1,1,0,100,0),
(229808,16,-3444.66,3587.79,310.973,NULL,0,0,1,1,0,100,0),
(229808,17,-3440.34,3599.96,312.963,NULL,0,0,1,1,0,100,0),
(229808,18,-3431.25,3611.71,314.694,NULL,0,0,1,1,0,100,0),
(229808,19,-3420.3,3621.74,316.044,NULL,0,0,1,1,0,100,0),
(229808,20,-3408.17,3630.4,317.035,NULL,0,0,1,1,0,100,0),
(229808,21,-3397.2,3635.26,317,NULL,0,0,1,1,0,100,0),
(229808,22,-3383.4,3632.26,315.617,NULL,0,0,1,1,0,100,0),
(229808,23,-3367.63,3629.66,313.802,NULL,0,0,1,1,0,100,0),
(229808,24,-3352.29,3633.08,311.509,NULL,0,0,1,1,0,100,0),
(229808,25,-3337.76,3639.18,309.46,NULL,0,0,1,1,0,100,0),
(229808,26,-3325.73,3649.56,308.986,NULL,0,0,1,1,0,100,0),
(229808,27,-3317.57,3663.95,310.739,NULL,0,0,1,1,0,100,0),
(229808,28,-3314.67,3679.21,309.52,NULL,0,0,1,1,0,100,0),
(229808,29,-3321.48,3693.72,307.647,NULL,0,0,1,1,0,100,0),
(229808,30,-3331.74,3704.52,308.938,NULL,0,0,1,1,0,100,0),
(229808,31,-3343.86,3715.85,313.233,NULL,0,0,1,1,0,100,0),
(229808,32,-3358.44,3722.65,317.193,NULL,0,0,1,1,0,100,0),
(229808,33,-3371.51,3715.97,319.26,NULL,0,0,1,1,0,100,0),
(229808,34,-3382.65,3702.67,320.695,NULL,0,0,1,1,0,100,0),
(229808,35,-3390.61,3689.25,321.194,NULL,0,0,1,1,0,100,0),
(229808,36,-3394.02,3673.1,319.891,NULL,0,0,1,1,0,100,0),
(229808,37,-3392.43,3658.5,317.628,NULL,0,0,1,1,0,100,0),
(229808,38,-3392.19,3644.15,315.676,NULL,0,0,1,1,0,100,0),
(229808,39,-3392.31,3629.64,313.65,NULL,0,0,1,1,0,100,0),
(229808,40,-3392.55,3614.1,311.293,NULL,0,0,1,1,0,100,0),
(229808,41,-3392.96,3598.62,309.01,NULL,0,0,1,1,0,100,0),
(229808,42,-3392.32,3583.41,307.889,NULL,0,0,1,1,0,100,0),
(229808,43,-3387.78,3567.21,309.199,NULL,0,0,1,1,0,100,0),
(229808,44,-3374.56,3562.64,312.723,NULL,0,0,1,1,0,100,0),
(229808,45,-3357.77,3562.12,316.521,NULL,0,0,1,1,0,100,0),
(229808,46,-3342.63,3566.22,318.232,NULL,0,0,1,1,0,100,0),
(229808,47,-3327.89,3574.43,315.921,NULL,0,0,1,1,0,100,0),
(229808,48,-3315.84,3583.85,314.126,NULL,0,0,1,1,0,100,0),
(229808,49,-3308.31,3598.24,313.302,NULL,0,0,1,1,0,100,0),
(229808,50,-3311.72,3613.18,310.751,NULL,0,0,1,1,0,100,0),
(229808,51,-3316.48,3626.89,306.068,NULL,0,0,1,1,0,100,0),
(229808,52,-3324.02,3640.8,301.435,NULL,0,0,1,1,0,100,0),
(229808,53,-3336.89,3649.86,295.957,NULL,0,0,1,1,0,100,0),
(229808,54,-3362.28,3650.03,291.004,NULL,0,0,1,1,0,100,0),

(229809,1,-3360.03,3626.07,282.595,NULL,0,0,1,0,0,100,0),
(229809,2,-3365.07,3649.97,284.633,-0.143498,0,0,1,0,0,100,0), -- Mount and fly -3365.07 3649.97 284.633

(229810,1,-3365.07,3649.97,284.633,3.1276,0,3000,1,1,0,100,0), -- Dismount
(229810,2,-3360.03,3626.07,282.595,NULL,0,1000,1,0,0,100,0),

(229811,1,-3360.488525,3645.0898,284.6454,3.1276,0,5500,1,1,0,100,0), -- Dismount need correct pos -3360.488525 3645.0898 284.6454  78998
(229811,2,-3360.03,3626.07,282.595,NULL,0,1000,1,0,0,100,0), -- Despawn

(229812,1,-3362.878418,3653.68139,285.49859,3.1276,0,3000,1,1,0,100,0), -- Dismount need correct pos -3362.878418 3653.68139 285.49859 78999
(229812,2,-3360.03,3626.07,282.595,NULL,0,1000,1,0,0,100,0); -- Despawn


-- Skyguard Windcharger -- equip weapon 32371 --- 79022 79021 79024
UPDATE `creature_template` SET `flags_extra`=134250496 WHERE `entry` in (23257); -- 98304

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (79026); -- 0

UPDATE `creature_addon` SET `path_id` = 790260 WHERE `guid` in (79026);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-79022,-79021,-79024) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-79021,0,1000,0,4,0,100,0,0,0,0,0,0,0,71,0,0,32371,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - On Aggro - Change Equipment'),
(-79021,0,1001,0,1,0,100,0,100,100,0,0,0,0,71,0,0,1938,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - OOC - Change Equipment'),

(-79022,0,1000,0,4,0,100,0,0,0,0,0,0,0,71,0,0,32371,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - On Aggro - Change Equipment'),
(-79022,0,1001,0,1,0,100,0,100,100,0,0,0,0,71,0,0,1938,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - OOC - Change Equipment'),

(-79024,0,1000,0,4,0,100,0,0,0,0,0,0,0,71,0,0,32371,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - On Aggro - Change Equipment'),
(-79024,0,1001,0,1,0,100,0,100,100,0,0,0,0,71,0,0,1938,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - OOC - Change Equipment');

DELETE FROM `waypoint_data` WHERE `id` IN (790260);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(790260,1,-3384.45,3594.49,276.03,NULL,0,0,1,0,0,100,0),
(790260,2,-3394.46,3585.79,276.173,NULL,0,0,1,0,0,100,0),
(790260,3,-3405.13,3581.51,276.628,NULL,0,0,1,0,0,100,0),
(790260,4,-3423.23,3578.2,276.199,NULL,0,0,1,0,0,100,0),
(790260,5,-3443.13,3576.69,275.843,NULL,0,0,1,0,0,100,0),
(790260,6,-3423.23,3578.2,276.199,NULL,0,0,1,0,0,100,0),
(790260,7,-3405.13,3581.51,276.628,NULL,0,0,1,0,0,100,0),
(790260,8,-3394.46,3585.79,276.173,NULL,0,0,1,0,0,100,0),
(790260,9,-3384.45,3594.49,276.03,NULL,0,0,1,0,0,100,0);


-- Skyguard Nether Ray
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` IN (79007,79008,79009);

DELETE FROM `creature_formations` where `leaderGUID` IN (79010);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(79010,79010,0,0,515,0,0),
(79010,79012,1,90,515,9,20);

DELETE FROM `waypoint_data` WHERE `id` IN (790100);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(790100,1,-3371.15,3649.57,284.618,NULL,0,0,0,0,0,100,0),
(790100,2,-3376.78,3642.59,284.947,NULL,0,0,0,0,0,100,0),
(790100,3,-3381.76,3636.2,284.178,NULL,0,0,0,0,0,100,0),
(790100,4,-3381.56,3625.66,278.582,NULL,0,0,0,0,0,100,0),
(790100,5,-3384.02,3621.18,277.054,NULL,0,0,0,0,0,100,0),
(790100,6,-3389.59,3619.39,276.145,NULL,0,0,0,0,0,100,0),
(790100,7,-3393.57,3612.97,276.359,NULL,0,0,0,0,0,100,0),
(790100,8,-3389.95,3604.95,276.085,NULL,0,0,0,0,0,100,0),
(790100,9,-3390.84,3600.09,276.278,NULL,0,0,0,0,0,100,0),
(790100,10,-3397.52,3596.9,276.809,NULL,0,0,0,0,0,100,0),
(790100,11,-3390.84,3600.09,276.278,NULL,0,0,0,0,0,100,0),
(790100,12,-3389.95,3604.95,276.085,NULL,0,0,0,0,0,100,0),
(790100,13,-3393.57,3612.97,276.359,NULL,0,0,0,0,0,100,0),
(790100,14,-3389.59,3619.39,276.145,NULL,0,0,0,0,0,100,0),
(790100,15,-3384.02,3621.18,277.054,NULL,0,0,0,0,0,100,0),
(790100,16,-3381.56,3625.66,278.582,NULL,0,0,0,0,0,100,0),
(790100,17,-3381.76,3636.2,284.178,NULL,0,0,0,0,0,100,0),
(790100,18,-3376.78,3642.59,284.947,NULL,0,0,0,0,0,100,0),
(790100,19,-3372.37,3645.66,284.618,NULL,0,0,0,0,0,100,0),
(790100,20,-3371.15,3649.57,284.618,NULL,0,0,0,0,0,100,0);