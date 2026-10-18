/*
-- Query: SELECT * FROM acore_world.creature where id1 in (17495)
LIMIT 0, 1000

-- Date: 2023-11-25 01:34
*/

-- The Younger
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (17445);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17445,1744500,17495);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17445,0,0,0,54,0,100,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Just Summoned - Remove Npc Flag Questgiver'),
(17445,0,1,0,20,1,100,0,9573,0,0,0,0,80,1744500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Quest \'Chieftain Oomooroo\' Finished(Phase 1) - Run Script'),

(17445,0,2,0,25,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Reset - Set Event Phase 1'),
(17445,0,3,0,20,2,100,0,9573,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Quest \'Chieftain Oomooroo\' Finished(Phase 2) - Whisper Player'),


(17495,0,0,0,9,0,100,0,0,5,9000,14000,0,11,25710,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Stillpine Raider - Within 0-5 Range - Cast \'Heroic Strike\''),
(17495,0,1,0,54,0,100,0,0,0,0,0,0,53,1,17495,0,0,0,2,1,0,0,0,0,0,0,0,0,'Stillpine Raider - On Just Summoned - Start Waypoint'),
(17495,0,2,0,54,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine Raider - On Just Summoned - Set Active On'),
(17495,0,3,0,40,0,100,0,21,17495,0,0,0,89,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine Raider - On Waypoint 20 Reached - Start Random Movement'),
(17495,0,4,0,40,0,100,0,21,17495,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine Raider - On Waypoint 20 Reached - Despawn in 10000 ms'),


(1744500,9,0,0,0,0,100,0,1000,1000,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Script - Set Phase 2'),

(1744500,9,1,0,0,0,100,0,1000,1000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Script - Say Line 0'),
(1744500,9,2,0,0,0,100,0,2000,2000,0,0,0,107,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Script - Summon Group 0'),


(1744500,9,3,0,0,0,100,0,300000,300000,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stillpine the Younger - On Script - Set Phase 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (17445) and `GroupID` = 1;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(17445,1,0,'[Furbolg] There is currently an assault in progress. We must wait before unleashing another!',15,0,100,0,0,0,14037,0,'Stillpine the Younger');

-- Raiders
DELETE FROM `creature` WHERE `id1` IN (17495);

DELETE FROM `creature_summon_groups` WHERE `summonerId` IN (17445);
INSERT INTO `creature_summon_groups` (`summonerId`,`summonerType`,`groupId`,`entry`,`position_x`,`position_y`,`position_z`,`orientation`,`summonType`,`summonTime`,`Comment`) VALUES 
(17445,0,0,17495,-3367.84,-12424.6,26.1425,1.85513,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3363.8,-12428.6,27.3273,1.98472,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3364.07,-12432.9,27.338,1.9965,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3360.59,-12433.1,28.084,2.08289,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3356.08,-12434.3,29.6136,2.49915,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3357.16,-12430.5,28.9967,2.46774,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3355.98,-12438.2,29.8503,2.46224,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3350.3,-12437.5,32.3999,2.41119,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3348.27,-12442.5,34.3653,2.58005,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider'),
(17445,0,0,17495,-3344.08,-12441.7,36.8811,2.36014,6,30000,'Stillpine the Younger - Group 0 - Stillpine Raider');

DELETE FROM `waypoints` WHERE `entry` IN (17495);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(17495,1,-3374.06,-12411.8,22.0504,0,0,''),
(17495,2,-3404.94,-12368.4,17.7868,0,0,''),
(17495,3,-3377.49,-12350.4,22.4495,0,0,''),
(17495,4,-3328.89,-12346,22.9951,0,0,''),
(17495,5,-3305.27,-12346.2,24.0911,0,0,''),
(17495,6,-3278.58,-12347.7,19.2297,0,0,''),
(17495,7,-3259.37,-12359.1,13.5547,0,0,''),
(17495,8,-3248.81,-12373.3,10.5433,0,0,''),
(17495,9,-3239.23,-12391.4,10.4531,0,0,''),
(17495,10,-3237.35,-12418.7,14.692,0,0,''),
(17495,11,-3234.66,-12427.5,16.3937,0,0,''),
(17495,12,-3225.87,-12435.1,19.1127,0,0,''),
(17495,13,-3202.85,-12463.4,14.6165,0,0,''),
(17495,14,-3190.47,-12461.7,13.2373,0,0,''),
(17495,15,-3182.54,-12456.9,13.0909,0,0,''),
(17495,16,-3177.36,-12452.2,13.0143,0,0,''),
(17495,17,-3172.53,-12443.2,12.1312,0,0,''),
(17495,18,-3158.44,-12436.1,12.0219,0,0,''),
(17495,19,-3143.65,-12438.1,10.1409,0,0,''),
(17495,20,-3097.4,-12464.2,3.13821,0,0,''),
(17495,21,-3079.57,-12477.1,0.0367675,0,0,'');

-- Defenders
DELETE FROM `creature` WHERE `id1` IN (17432);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(62874,17432,0,0,530,0,0,1,1,1,-3420.99,-12310.5,14.9166,4.43314,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62875,17432,0,0,530,0,0,1,1,1,-3376.96,-12279.6,21.4627,5.13127,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62876,17432,0,0,530,0,0,1,1,1,-3364.09,-12345.2,24.9263,2.00648,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62877,17432,0,0,530,0,0,1,1,1,-3349.03,-12388.3,26.4236,1.85005,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62878,17432,0,0,530,0,0,1,1,1,-3353.72,-12391.7,25.9346,2.61799,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62879,17432,0,0,530,0,0,1,1,1,-3350.94,-12357.2,24.4263,3.2446,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62880,17432,0,0,530,0,0,1,1,1,-3352.21,-12352.6,25.3013,3.36333,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62881,17432,0,0,530,0,0,1,1,1,-3358.78,-12343.8,24.1763,1.19912,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62882,17432,0,0,530,0,0,1,1,1,-3356.77,-12354.1,24.4263,4.67346,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62883,17432,0,0,530,0,0,1,1,1,-3434.45,-12340.9,13.5634,1.57473,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62885,17432,0,0,530,0,0,1,1,1,-3439.78,-12312.9,14.3667,5.044,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62887,17432,0,0,530,0,0,1,1,1,-3362.32,-12342.1,24.4263,5.26083,300,5,0,176,0,1,0,0,0,'',0,0,NULL),
(62893,17432,0,0,530,0,0,1,1,1,-3395.55,-12417.2,19.137,1.8326,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62894,17432,0,0,530,0,0,1,1,1,-3409.57,-12420.5,19.1604,1.27409,300,0,0,176,0,0,0,0,0,'',0,0,NULL),
(62895,17432,0,0,530,0,0,1,1,1,-3361.79,-12413,25.093,4.38078,300,0,0,176,0,0,0,0,0,'',0,0,NULL);
