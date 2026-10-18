/*
-- Query: SELECT * FROM acore_world.broadcast_text where ID in (12802,12803,12801,12800,12799,12798)
LIMIT 0, 1000

-- Date: 2023-12-02 23:58
*/
UPDATE `creature_addon` SET `emote` = 0, `bytes2` = 0 WHERE `guid` in (58142);
UPDATE `creature` SET `orientation` = 0.4001 WHERE `guid` in (58142);

DELETE FROM `creature_text` WHERE `CreatureID` IN (16864);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16826) and `GroupID` IN (2);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(16864,0,0,'Where do you want these bottles?',12,0,100,6,0,0,12798,0,'Stormwind Infantry'),
(16864,0,1,'Got another shipment for you, Sid.',12,0,100,0,0,0,12799,0,'Stormwind Infantry'),
(16864,0,2,'Craziest thing - No matter how many bottles I take from the stockpile, the quantity on hand never decreases. It\'s like I\'m stuck in some endless loop of actions...',12,0,100,6,0,0,12800,0,'Stormwind Infantry'),
(16864,1,0,'%s nods.',16,0,100,273,0,0,12803,0,'Stormwind Infantry'),

(16826,2,0,'Bless yer heart, soldier! Just put \'em in the back room.',12,0,100,1,0,0,12801,0,'Sid Limbardi'),
(16826,2,1,'Just leave \'em in the cellar.',12,0,100,0,0,0,12802,0,'Sid Limbardi');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-58142,1686400,1686401,1686402,1683100,1683101,-57896,-57897,-57898,-57899);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `id` IN (8,9,10);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-58142,0,0,1,11,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Respawn - Set Phase 1'), -- Phase 1 allow Emote
(-58142,0,1,0,61,0,100,0,0,0,0,0,0,53,0,16864,1,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Respawn (Linked) - Start Waypoint'),
(-58142,0,2,0,40,0,100,0,1,16864,0,0,0,80,1686400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Waypoint 1 Reached - Run Script (All Phases)'),
(-58142,0,3,0,40,0,100,0,8,16864,0,0,0,80,1686401,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Waypoint 8 Reached - Run Script (All Phases)'),
(-58142,0,4,0,40,0,100,0,12,16864,0,0,0,80,1686402,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Waypoint 12 Reached - Run Script (All Phases)'),
(-58142,0,5,0,68,1,100,0,105,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Infernal Start - Set Emote State (None)'),


(1686400,9,0,0,0,0,100,0,0,0,0,0,0,54,370000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Pause Waypoint Movement'),
(1686400,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.4001,'Stormwind Infantry - On Script - Set Orientation'),
(1686400,9,2,0,0,0,100,0,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Using)'),
(1686400,9,3,0,0,0,100,0,120000,360000,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (None)'), -- At boxes outside inn
(1686400,9,4,0,0,0,100,0,0,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Resume Waypoint Movement'),

(1686401,9,0,0,0,0,100,0,0,0,0,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Pause Waypoint Movement'),
(1686401,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.697,'Stormwind Infantry - On Script - Set Orientation'),
(1686401,9,2,0,0,0,100,0,100,100,0,0,0,1,0,0,0,0,0,0,10,58142,16864,0,0,0,0,0,0,'Stormwind Infantry - On Script - Say Line 0'), -- At Sid
(1686401,9,3,0,0,0,100,0,12000,12000,0,0,0,45,1,4,0,0,0,0,19,16826,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Data on Sid Limbardi'),
(1686401,9,4,0,0,0,100,0,3000,3000,0,0,0,1,1,0,0,0,0,0,10,58142,16864,0,0,0,0,0,0,'Stormwind Infantry - On Script - Say Line 1'),
(1686401,9,5,0,0,0,100,0,1000,1000,0,0,0,45,1,5,0,0,0,0,19,16826,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Data on Sid Limbardi'),

(1686402,9,0,0,0,0,100,0,0,0,0,0,0,54,80000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Pause Waypoint Movement'),
(1686402,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.25514,'Stormwind Infantry - On Script - Set Orientation'),
(1686402,9,2,0,0,0,100,0,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Using)'),
(1686402,9,3,0,0,0,100,0,80000,80000,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (None)'), -- In Cellar


(16826,0,8,9,38,0,100,0,1,4,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Say Line 2'), -- Orientation 5.879
(16826,0,9,0,61,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.879,'Sid Limbardi - On Data Set (Linked) - Set Orientation'),
(16826,0,10,0,38,0,100,0,1,5,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Set Orientation'),

-- Nethergarde Infantry in Inn
(-57896,0,0,0,1,0,100,0,10000,28000,10000,35000,0,80,1683100,0,0,0,0,0,10,57896,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),
(-57896,0,1,0,1,0,100,0,14000,28000,20000,45000,0,80,1683101,0,0,0,0,0,10,57896,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),

(-57897,0,0,0,1,0,100,0,13000,42000,18000,33000,0,80,1683100,0,0,0,0,0,10,57897,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),
(-57897,0,1,0,1,0,100,0,10000,36000,23000,42000,0,80,1683101,0,0,0,0,0,10,57897,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),

(-57898,0,0,0,1,0,100,0,15000,30000,20000,40000,0,80,1683100,0,0,0,0,0,10,57898,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),
(-57898,0,1,0,1,0,100,0,10000,30000,16000,30000,0,80,1683101,0,0,0,0,0,10,57898,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),

(-57899,0,0,0,1,0,100,0,3000,45000,22000,48000,0,80,1683100,0,0,0,0,0,10,57899,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),
(-57899,0,1,0,1,0,100,0,25000,51000,20000,46000,0,80,1683101,0,0,0,0,0,10,57899,16831,0,0,0,0,0,0,'Nethergarde Infantry - OOC Random - Run Script'),


(1683100,9,0,0,0,0,75,0,5000,10000,0,0,0,5,92,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Eat)'), -- 7
(1683100,9,1,0,0,0,40,0,4000,6000,0,0,0,5,396,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Talk)'), -- 1
(1683100,9,2,0,0,0,40,0,3000,8000,0,0,0,5,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Applaud)'),
(1683100,9,3,0,0,0,30,0,3000,5000,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Exclaimation)'),

(1683101,9,0,0,0,0,80,0,2000,4000,0,0,0,5,153,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Laugh)'), -- 11
(1683101,9,1,0,0,0,35,0,2000,5000,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Roar)'),
(1683101,9,2,0,0,0,60,0,2000,5000,0,0,0,5,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Dance)'),
(1683101,9,3,0,0,0,50,0,6000,9000,0,0,0,5,71,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Script - Set Emote State (Cheer)'); -- 4

DELETE FROM `waypoints` WHERE `entry` IN (16864);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(16864,1,-693.118,2702.91,94.7669,0,0,''), -- At boxes outside inn
(16864,2,-707.295,2697.243,94.322,0,0,''),
(16864,3,-709.862,2704.25,94.7213,0,0,''),
(16864,4,-709.22,2712.85,94.7207,0,0,''),
-- (16864,5,-699.47,2713.21,94.7358,0,0,''),  -- Remove
-- (16864,6,-700.526,2717.75,94.7358,0,0,''),

(16864,5,-702.246,2713.182,94.737,0,0,''), -- path in INn

(16864,6,-703.485,2719.76,94.7358,0,0,''), -- Inn stairs down to the tables
(16864,7,-703.232,2733.36,94.7335,0,0,''),
(16864,8,-704.642,2736.648,94.7335,0,0,''), -- Inn talk to sid
(16864,9,-704.645,2743.774,94.731,0,0,''),
(16864,10,-713.623,2744.335,94.722,0,0,''),
(16864,11,-713.689,2758.807,87.928,0,0,''),
(16864,12,-700.740,2758.325,87.565,0,0,''), -- Cellar
(16864,13,-713.689,2758.807,87.928,0,0,''),
(16864,14,-714.05,2745.996,94.721,0,0,''),
(16864,15,-713.623,2744.335,94.722,0,0,''),
(16864,16,-704.645,2743.774,94.731,0,0,''),
(16864,17,-704.642,2736.648,94.7335,0,0,''),
(16864,18,-703.362,2730.85,94.7335,0,0,''),
(16864,19,-703.366,2721.76,94.1105,0,0,''),
-- (16864,21,-703.545,2713.43,94.7375,0,0,''), -- Weird exit from inn
(16864,20,-702.246,2713.182,94.737,0,0,''),
(16864,21,-708.839,2712.59,94.7213,0,0,''),
(16864,22,-709.862,2704.25,94.7213,0,0,''),
(16864,23,-707.295,2697.243,94.322,0,0,'');
