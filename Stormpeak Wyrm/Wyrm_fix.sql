/*
Fix Stormpeak Wyrms scripts to pickup rhinos and bulls and carry them off in The Foot Steppes.  5-15-26
*/

-- Stormpeak Wyrm
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (29753); -- 0
UPDATE `creature` SET `position_x` = 7410.303,`position_y` = -1214.7783,`position_z` = 991.39667 WHERE `guid` = 101113;

DELETE FROM `smart_scripts` where `entryorguid` in (29753,-101000,-101107,-101108,-101109,-101110,-101111,-101112,-101113,-101114,-101115,-101117,-101118,-101119,-101120,-101121,-101122) AND `source_type` = 0;
DELETE FROM `smart_scripts` where `entryorguid` in (2975300) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(29753,0,0,0,0,0,100,512,3000,3000,7000,7000,0,0,11,57833,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - IC - Cast \`Frost-Spit\` on victim'),
(29753,0,1,0,11,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Spawn - Set Phase 1'),

(-101000,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101000,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101000,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101000,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101000,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101000,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101000,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101000,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101000,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101000,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101000,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101107,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101107,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101107,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101107,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101107,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101107,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101107,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101107,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101107,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101107,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101107,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101108,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101108,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101108,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101108,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101108,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101108,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101108,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101108,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101108,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101108,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101108,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101109,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101109,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101109,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101109,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101109,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101109,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101109,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101109,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101109,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101109,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101109,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101110,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101110,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101110,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101110,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101110,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101110,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101110,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101110,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101110,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101110,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101110,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101111,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101111,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101111,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101111,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101111,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101111,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101111,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101111,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101111,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101111,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101111,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101112,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101112,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101112,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101112,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101112,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101112,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101112,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101112,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101112,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101112,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101112,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101113,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101113,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101113,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101113,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101113,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101113,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101113,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101113,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101113,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101113,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101113,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101114,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101114,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101114,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101114,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101114,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101114,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101114,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101114,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101114,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101114,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101114,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101115,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101115,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101115,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101115,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101115,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101115,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101115,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101115,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101115,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101115,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101115,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101117,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101117,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101117,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101117,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101117,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101117,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101117,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101117,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101117,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101117,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101117,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101118,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101118,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101118,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101118,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101118,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101118,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101118,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101118,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101118,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101118,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101118,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101119,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101119,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101119,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101119,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101119,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101119,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101119,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101119,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101119,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101119,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101119,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101120,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101120,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101120,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101120,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101120,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101120,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101120,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101120,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101120,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101120,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101120,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101121,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101121,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101121,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101121,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101121,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101121,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101121,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101121,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101121,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101121,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101121,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(-101122,0,1000,1001,1,1,50,512,240000,750000,240000,750000,0,0,64,1,0,0,0,0,0,19,29469,300,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1) - Store Target List Nearest \'Ice Steppe Rhino\''),
(-101122,0,1001,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - OOC (Phase 1 ) (Linked) - Set Data 0 1 On Stored \'Ice Steppe Rhino\''),
(-101122,0,1002,1003,38,1,100,512,0,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) - Set Phase 2'),
(-101122,0,1003,1004,61,0,100,512,0,0,0,0,0,0,45,0,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 2 On Stored \'Ice Steppe Rhino\''),
(-101122,0,1004,1005,61,0,100,512,0,0,0,0,0,0,235,300000,0,0,0,0,0,1,0,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Pause Waypoint'),
(-101122,0,1005,1006,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,12,1,0,0,0,0,0,10,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Move to Stored \'Ice Steppe Rhino\''),
(-101122,0,1006,0,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On Data Set 0 1 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(-101122,0,1007,1008,34,2,100,512,8,1,0,0,0,0,45,0,3,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) - Set Data 0 3 On Stored \'Ice Steppe Rhino\''),
(-101122,0,1008,0,61,0,100,512,0,0,0,0,0,0,80,2975300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 1 (Phase 2) (Linked) - Run Script'),
(-101122,0,1009,1010,34,2,100,512,8,2,0,0,0,0,45,0,4,0,0,0,0,12,1,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Set Data 0 4 On Stored \'Ice Steppe Rhino\''),
(-101122,0,1010,0,61,0,100,512,0,0,0,0,0,0,41,100,120,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormpeak Wyrm - On MovementInform 2 (Phase 2) - Despawn'),

(2975300,9,0,0,0,0,100,512,2000,2000,0,0,0,0,69,2,0,0,0,0,0,8,0,0,0,0,7346.4556,-1371.2969,1134.1082,6.12611,'Stormpeak Wyrm - On Script - Move to POS');

DELETE FROM `waypoint_data` where `id` in (1011130);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1011130,1,7410.303,-1214.7783,991.39667,NULL,0,0,1,1,0,100,0),
(1011130,2,7494.6523,-1215.9828,1001.3039,NULL,0,0,1,1,0,100,0), -- 7468.5176 -1281.4347 1024.0364
(1011130,3,7543.744,-1253.0199,1007.6279,NULL,0,0,1,1,0,100,0),
(1011130,4,7566.9727,-1291.0889,1015.86584,NULL,0,0,1,1,0,100,0),
(1011130,5,7525.7163,-1336.3656,1012.13184,NULL,0,0,1,1,0,100,0),
(1011130,6,7381.8027,-1318.2822,1009.1786,NULL,0,0,1,1,0,100,0),
(1011130,7,7327.483,-1274.5282,1007.051,NULL,0,0,1,1,0,100,0),
(1011130,8,7337.843,-1235.1802,1001.7563,NULL,0,0,1,1,0,100,0);
/*
(1011130,2,7468.5176,-1281.4347,1024.0364,NULL,0,0,1,1,0,100,0),
(1011130,3,7417.992,-1351.3679,1023.7345,NULL,0,0,1,1,0,100,0),
(1011130,4,7369.0264,-1392.2495,1042.2355,NULL,0,0,1,1,0,100,0),
(1011130,5,7315.95,-1374.4661,1042.266,NULL,0,0,1,1,0,100,0),
(1011130,6,7256.9854,-1300.8853,1017.082,NULL,0,0,1,1,0,100,0),
(1011130,7,7289.9873,-1249.9434,1015.5887,NULL,0,0,1,1,0,100,0);
*/


-- Ice Steppe Bull
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (30445); -- 0

DELETE FROM `smart_scripts` where `entryorguid` in (-118277) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-118277,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300130,300001,0,0,0,0,0,0,'Ice Steppe Bull - On Respawn - Jump to Leader Dummy');


-- Ice Steppe Rhino
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (29469); -- 0

DELETE FROM `smart_scripts` where `entryorguid` in (-98735,-98736,-98737,-98788,-98753,-98754,-98755,29469) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(29469,0,0,0,9,1,100,0,0,0,25000,30000,5,35,11,55193,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - Within 5-35 Range (Phase 1) - Cast \'Rhino Charge\''),
(29469,0,1,0,11,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Spawn - Set Phase 1'),
(29469,0,2,0,4,1,100,512,0,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Aggro (Phase 1) - Set Phase 3'),
(29469,0,3,4,38,1,100,512,0,1,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 1 (Phase 1) - Store Target List'),
(29469,0,4,0,61,0,100,512,0,0,0,0,0,0,45,0,1,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 1 (Phase 1) (Linked) - Set Data 0 1 On Stored \'Stormpeak Wyrm\''),
(29469,0,5,6,38,1,100,512,0,2,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 2 (Phase 1) - Set Phase 2'),
(29469,0,6,7,61,0,100,512,0,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 2 (Phase 1) (Linked) - Set Non-Selectable Flag'),
(29469,0,7,0,61,0,100,512,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 2 (Phase 1) (Linked) - Set Root On'),
(29469,0,8,0,38,2,100,512,0,3,0,0,0,0,11,46598,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 3 (Phase 2) -  Cast \'Ride Vehicle Hardcoded\''),
(29469,0,9,0,38,2,100,512,0,4,0,0,0,0,41,100,70,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ice Steppe Rhino - On Data Set 0 3 (Phase 2) - Despawn'),

(-98753,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300129,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy'),
(-98754,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300129,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy'),
(-98755,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300129,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy'),
(-98735,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300130,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy'),
(-98736,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300130,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy'),
(-98737,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300130,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy'),
(-98788,0,1000,0,11,0,100,0,0,0,0,0,0,0,97,500,500,1,0,0,0,10,300130,300001,0,0,0,0,0,0,'Ice Steppe Rhino - On Respawn - Jump to Leader Dummy');


