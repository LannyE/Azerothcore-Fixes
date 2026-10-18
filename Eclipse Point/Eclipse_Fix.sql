/*
 Eclipsion Point Fixes 6-6-96
 
 - add missing texts RP
 - fix Centurions kneeling and one missing
 - Fix Archmages
 - Fix Dragonhawks waypoints
 - New GUID: 73521,73522
 -- Parshah needs waypoints
 -- Neltharaku, flying too fast
 -- Maddix and Alieshor flight masters at Sanctum of the Stars and Altar of Sha'tar only visible if at least friendly with Scryers/Aldor
*/

-- Eclipsion Centurion
UPDATE `creature_template_addon` SET `bytes1` = 0 WHERE `entry` in (19792); -- 8
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (70841); -- 5 1

DELETE FROM `creature` WHERE `guid` IN (73522);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(73522,19792,530,0,0,1,1,-1,-4422.0015,1737.5552,157.94157,4.643,300,0,0,5233,2991,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (70835,70839);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70835,0,0,8,1,0,0,NULL),
(70839,0,0,8,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19792) AND `source_type` = 0 AND `id` IN (2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1979200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19792,0,2,0,38,0,100,512,0,1,0,0,0,0,80,1979200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Centurion - On Data Set 0 1  - Run Script'),

(1979200,9,0,0,0,0,100,0,500,500,0,0,0,0,1,0,0,0,0,0,0,11,19806,5,1,0,0,0,0,0,'Eclipsion Centurion - On Script - Say Line 0 on Nearest \'Eclipsion Bloodwarder\''),
(1979200,9,1,0,0,0,100,0,500,500,0,0,0,0,1,0,0,0,0,0,0,11,19796,5,1,0,0,0,0,0,'Eclipsion Centurion - On Script - Say Line 0 on Nearest Creature \'Eclipsion Archmage\''),
(1979200,9,2,0,0,0,100,0,5000,5000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Centurion - On Script - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19792);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19792,0,0,'Understood.',12,0,100,66,0,0,18146,0,''),
(19792,0,1,'Yes sir!',12,0,100,66,0,0,18147,0,'');


-- Eclipsion Bloodwarder
UPDATE `creature_addon` SET `mount` = 20937 WHERE `guid` in (70926); -- 0
UPDATE `creature_addon` SET `mount` = 20937 WHERE `guid` in (70927); -- 0
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (70925,70928); -- 5 1
UPDATE `creature` SET `position_x` = -4375.253,`position_y` = 1630.5979,`position_z` = 157.49316 WHERE `guid` = 70925;

DELETE FROM `creature_addon` where `guid` in (70925,70928);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70925,709250,20937,0,1,0,0,NULL),
(70928,709280,20937,0,1,0,0,NULL);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19806);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19806,0,0,'Stay alert!',12,0,100,0,0,0,17711,0,''),
(19806,0,1,'Be wary of intruders.',12,0,100,0,0,0,17713,0,''),
(19806,0,2,'We must not fail the master.',12,0,100,0,0,0,17715,0,'');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19806) AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7,8,9,10,11);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19806,0,2,0,108,0,100,512,6,709260,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 8 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,3,0,108,0,100,512,12,709260,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 12 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,4,0,108,0,100,512,20,709260,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 20 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,5,0,108,0,100,512,26,709260,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 26 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,6,0,108,0,100,512,32,709260,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 32 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,7,0,108,0,100,512,2,709270,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 2 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,8,0,108,0,100,512,15,709270,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 15 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,9,0,108,0,100,512,6,709250,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 6 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,10,0,108,0,100,512,10,709250,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 10 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(19806,0,11,0,108,0,100,512,22,709250,0,0,0,0,45,0,1,0,0,0,0,19,19792,5,0,0,0,0,0,0,'Eclipsion Bloodwarder - On Waypoint 22 Reached - Set Data 0 1 \'Eclipsion Centurion\'');

DELETE FROM `waypoint_data` where `id` in (709250,709280);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(709250,1,-4375.253,1630.5979,157.49316,4.1621,3000,0,0,100,0),
(709250,2,-4368.675,1639.9592,156.36809,NULL,0,0,0,100,0),
(709250,3,-4367.2773,1644.9037,156.44472,NULL,0,0,0,100,0),
(709250,4,-4366.713,1668.3589,157.409,NULL,0,0,0,100,0),
(709250,5,-4372.7446,1682.5428,157.06686,NULL,0,0,0,100,0),
(709250,6,-4382.89,1686.13,157.82283,2.7214,6000,0,0,100,0), -- Centurion
(709250,7,-4377.157,1688.9596,158.10036,NULL,0,0,0,100,0),
(709250,8,-4387.8267,1705.961,156.44183,NULL,0,0,0,100,0),
(709250,9,-4378.403,1716.968,156.72232,NULL,0,0,0,100,0), -- Off Path
(709250,10,-4381.2764,1723.855,157.1885,2.4528,6000,0,0,100,0), -- Centurion
(709250,11,-4378.403,1716.968,156.72232,NULL,0,0,0,100,0),
(709250,12,-4387.8267,1705.961,156.44183,NULL,0,0,0,100,0), -- Back to path
(709250,13,-4397.866,1712.4536,156.71634,NULL,0,0,0,100,0),
(709250,14,-4417.44,1718.341,156.65482,NULL,0,0,0,100,0),
(709250,15,-4430.462,1719.4482,156.87436,NULL,0,0,0,100,0),
(709250,16,-4463.9326,1714.3354,159.38612,NULL,0,0,0,100,0),
(709250,17,-4470.698,1709.1469,160.1168,NULL,0,0,0,100,0),
(709250,18,-4472.952,1702.5123,160.71535,NULL,0,0,0,100,0),
(709250,19,-4473.9243,1682.3452,162.25095,NULL,0,0,0,100,0),
(709250,20,-4489.0146,1672.5513,164.7192,NULL,0,0,0,100,0),
(709250,21,-4498.376,1667.5194,165.91641,NULL,0,0,0,100,0),
(709250,22,-4507.4307,1662.7693,169.89145,3.6701,6000,0,0,100,0), -- Centurion turn around
(709250,23,-4498.376,1667.5194,165.91641,NULL,0,0,0,100,0),
(709250,24,-4489.0146,1672.5513,164.7192,NULL,0,0,0,100,0),
(709250,25,-4473.9243,1682.3452,162.25095,NULL,0,0,0,100,0),
(709250,26,-4472.952,1702.5123,160.71535,NULL,0,0,0,100,0),
(709250,27,-4470.698,1709.1469,160.1168,NULL,0,0,0,100,0),
(709250,28,-4463.9326,1714.3354,159.38612,NULL,0,0,0,100,0),
(709250,29,-4430.462,1719.4482,156.87436,NULL,0,0,0,100,0),
(709250,30,-4417.44,1718.341,156.65482,NULL,0,0,0,100,0),
(709250,31,-4397.866,1712.4536,156.71634,NULL,0,0,0,100,0),
(709250,32,-4387.8267,1705.961,156.44183,NULL,0,0,0,100,0),
(709250,33,-4377.157,1688.9596,158.10036,NULL,0,0,0,100,0),
(709250,34,-4372.7446,1682.5428,157.06686,NULL,0,0,0,100,0),
(709250,35,-4366.713,1668.3589,157.409,NULL,0,0,0,100,0),
(709250,36,-4367.2773,1644.9037,156.44472,NULL,0,0,0,100,0),
(709250,37,-4368.675,1639.9592,156.36809,NULL,0,0,0,100,0),

(709280,1,-4416.45,1791.87,156.4909,NULL,0,0,0,100,0), -- Home
(709280,2,-4424.438,1804.7903,158.383,NULL,0,0,0,100,0),
(709280,3,-4435.0503,1806.4288,159.8381,NULL,0,0,0,100,0),
(709280,4,-4455.128,1807.0598,163.10973,NULL,0,0,0,100,0),
(709280,5,-4462.7925,1807.1018,163.11713,NULL,0,0,0,100,0),
(709280,6,-4486.9253,1804.3416,166.6855,NULL,0,0,0,100,0),
(709280,7,-4501.623,1798.321,169.52698,NULL,0,0,0,100,0),
(709280,8,-4522.0337,1788.9851,174.3483,NULL,0,0,0,100,0),
(709280,9,-4532.966,1782.6924,175.22203,NULL,0,0,0,100,0),
(709280,10,-4550.6895,1772.7665,178.81857,3.6521,3000,0,0,100,0),
(709280,11,-4532.966,1782.6924,175.22203,NULL,0,0,0,100,0),
(709280,12,-4522.0337,1788.9851,174.3483,NULL,0,0,0,100,0),
(709280,13,-4501.623,1798.321,169.52698,NULL,0,0,0,100,0),
(709280,14,-4486.9253,1804.3416,166.6855,NULL,0,0,0,100,0),
(709280,15,-4462.7925,1807.1018,163.11713,NULL,0,0,0,100,0),
(709280,16,-4455.128,1807.0598,163.10973,NULL,0,0,0,100,0),
(709280,17,-4435.0503,1806.4288,159.8381,NULL,0,0,0,100,0),
(709280,18,-4424.438,1804.7903,158.383,NULL,0,0,0,100,0),
(709280,19,-4416.45,1791.87,156.4909,NULL,0,0,0,100,0), -- Home
(709280,20,-4427.4487,1773.641,156.73866,NULL,0,0,0,100,0),
(709280,21,-4437.345,1756.494,156.90077,NULL,0,0,0,100,0),
(709280,22,-4447.9053,1738.1886,157.54929,NULL,0,0,0,100,0),
(709280,23,-4460.441,1716.4489,159.1856,NULL,0,0,0,100,0),
(709280,24,-4472.1787,1707.771,160.36502,NULL,0,0,0,100,0),
(709280,25,-4473.4053,1682.1274,162.2368,NULL,0,0,0,100,0),
(709280,26,-4498.2476,1670.7753,165.87497,NULL,0,0,0,100,0),
(709280,27,-4510.511,1670.6885,170.52196,NULL,0,0,0,100,0),
(709280,28,-4523.2363,1670.6025,175.25221,NULL,0,0,0,100,0),
(709280,29,-4528.552,1670.5858,174.77818,NULL,0,0,0,100,0),
(709280,30,-4550.5454,1670.4064,174.59181,3.1526,3000,0,0,100,0),
(709280,31,-4528.552,1670.5858,174.77818,NULL,0,0,0,100,0),
(709280,32,-4523.2363,1670.6025,175.25221,NULL,0,0,0,100,0),
(709280,33,-4510.511,1670.6885,170.52196,NULL,0,0,0,100,0),
(709280,34,-4498.2476,1670.7753,165.87497,NULL,0,0,0,100,0),
(709280,35,-4473.4053,1682.1274,162.2368,NULL,0,0,0,100,0),
(709280,36,-4472.1787,1707.771,160.36502,NULL,0,0,0,100,0),
(709280,37,-4460.441,1716.4489,159.1856,NULL,0,0,0,100,0),
(709280,38,-4447.9053,1738.1886,157.54929,NULL,0,0,0,100,0),
(709280,39,-4437.345,1756.494,156.90077,NULL,0,0,0,100,0),
(709280,40,-4427.4487,1773.641,156.73866,NULL,0,0,0,100,0);


-- Eclipsion Archmage
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (19796); -- 0
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (70860); -- 5 1   70860 should have waypoint to crystal on left side of chest
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (70866,70867,70869);
UPDATE `creature` SET `orientation` = 0.1267 WHERE `guid` in (70866); --

DELETE FROM `creature_addon` where `guid` in (70860);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70860,708600,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19796) AND `source_type` = 0 AND `id` = 3; -- remove the global Crystal channel script
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-70850,-70851,-70852,-70853,-70854,-70856,-70858,-70860,-70861,-70862) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1979600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-70850,0,1000,0,25,0,100,0,0,0,0,0,0,0,11,35190,0,0,0,0,0,19,20431,20,0,0,0,0,0,0,'Eclipsion Archmage - On reset - Cast Crystal Channel'),
(-70851,0,1000,0,25,0,100,0,0,0,0,0,0,0,11,35190,0,0,0,0,0,19,20431,20,0,0,0,0,0,0,'Eclipsion Archmage - On reset - Cast Crystal Channel'),
(-70852,0,1000,0,25,0,100,0,0,0,0,0,0,0,11,35190,0,0,0,0,0,19,20431,20,0,0,0,0,0,0,'Eclipsion Archmage - On reset - Cast Crystal Channel'),
(-70853,0,1000,0,25,0,100,0,0,0,0,0,0,0,11,35190,0,0,0,0,0,19,20431,20,0,0,0,0,0,0,'Eclipsion Archmage - On reset - Cast Crystal Channel'),
(-70854,0,1000,0,108,0,100,512,2,708540,0,0,0,0,80,1979600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Archmage - On Waypoint 2 Reached - Run Script'),
(-70856,0,1000,0,108,0,100,512,1,708560,0,0,0,0,80,1979600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Archmage - On Waypoint 1 Reached - Run Script'),
(-70858,0,1000,0,108,0,100,512,2,708580,0,0,0,0,80,1979600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Archmage - On Waypoint 2 Reached - Run Script'),
(-70860,0,1000,0,108,0,100,512,4,708600,0,0,0,0,80,1979600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Archmage - On Waypoint 4 Reached - Run Script'),
(-70861,0,1000,0,108,0,100,512,8,708610,0,0,0,0,45,0,1,0,0,0,0,10,70832,19792,0,0,0,0,0,0,'Eclipsion Archmage - On Waypoint 8 Reached - Set Data 0 1 \'Eclipsion Centurion\''),
(-70862,0,1000,0,108,0,100,512,1,708620,0,0,0,0,80,1979600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Archmage - On Waypoint 1 Reached - Run Script'),

(1979600,9,0,0,0,0,100,0,0,0,0,0,0,0,11,35190,0,0,0,0,0,19,20431,20,0,0,0,0,0,0,'Eclipsion Archmage - On Script - Cast Crystal Channel'),
(1979600,9,1,0,0,0,100,0,21000,21000,0,0,0,0,92,0,35190,1,0,0,0,1,0,0,0,0,0,0,0,0,'Eclipsion Archmage - On Script - Interrupt Crystal Channel');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19796);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19796,0,0,'Stay alert!',12,0,100,0,0,0,17711,0,''),
(19796,0,1,'Be wary of intruders.',12,0,100,0,0,0,17713,0,''),
(19796,0,2,'We must not fail the master.',12,0,100,0,0,0,17715,0,'');

DELETE FROM `waypoint_data` where `id` in (708580,708600);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(708580,1,-4486.56,1647.48,165.475,0.237698,45000,0,0,100,0),
(708580,2,-4471.61,1654.49,162.833,0.368861,22000,0,0,100,0),

(708600,1,-4538.56,1633.76,174.90038,2.81591,60000,0,0,100,0),
(708600,2,-4551.558,1639.288,174.29597,NULL,0,0,0,100,0),
(708600,3,-4556.521,1633.7068,174.38852,NULL,0,0,0,100,0),
(708600,4,-4562.911,1620.3417,174.61172,4.6181,22000,0,0,100,0),
(708600,5,-4556.521,1633.7068,174.38852,NULL,0,0,0,100,0),
(708600,6,-4551.558,1639.288,174.29597,NULL,0,0,0,100,0);


-- Eclipsion Dragonhawk
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (72580,72585,72586,72587,72590,72596); -- 5 1

DELETE FROM `creature_addon` where `guid` in (72580,72585,72586,72587,72590,72596);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(72580,725800,0,0,0,0,0,NULL),
(72585,725850,0,0,0,0,0,NULL),
(72586,725860,0,0,0,0,0,NULL),
(72587,725870,0,0,0,0,0,NULL),
(72590,725900,0,0,0,0,0,NULL),
(72596,725960,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (725800,725850,725860,725870,725900,725960);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(725800,1,-4347.24,1665.91,159.52267,NULL,0,0,0,100,0), -- home
(725800,2,-4348.659,1661.4873,158.03215,NULL,0,0,0,100,0),
(725800,3,-4354.0093,1644.2682,157.58867,4.4178,3000,0,0,100,0),
(725800,4,-4348.659,1661.4873,158.03215,NULL,0,0,0,100,0),
(725800,5,-4347.24,1665.91,159.52267,NULL,0,0,0,100,0), -- home
(725800,6,-4349.2007,1690.1598,156.74104,NULL,0,0,0,100,0),
(725800,7,-4348.6865,1702.1743,154.94876,NULL,0,0,0,100,0),
(725800,8,-4346.7754,1713.5723,156.32251,1.4058,3000,0,0,100,0),
(725800,9,-4348.6865,1702.1743,154.94876,NULL,0,0,0,100,0),
(725800,10,-4349.2007,1690.1598,156.74104,NULL,0,0,0,100,0),

(725850,1,-4417.5,1555.11,167.56847,6.15592,3000,0,0,100,0), -- home
(725850,2,-4433.708,1559.4725,166.2368,NULL,0,0,0,100,0),
(725850,3,-4444.0366,1558.3333,165.68407,NULL,0,0,0,100,0),
(725850,4,-4453.2607,1557.5651,167.94525,NULL,0,0,0,100,0),
(725850,5,-4468.3125,1565.2994,167.60017,NULL,0,0,0,100,0),
(725850,6,-4478.5806,1584.0195,168.15558,NULL,0,0,0,100,0),
(725850,7,-4485.913,1596.5046,166.3229,NULL,0,0,0,100,0),
(725850,8,-4495.709,1612.6907,166.10027,NULL,0,0,0,100,0),
(725850,9,-4495.527,1622.6622,165.2824,NULL,0,0,0,100,0),
(725850,10,-4495.519,1633.7494,165.49863,NULL,0,0,0,100,0),
(725850,11,-4495.4575,1638.9346,165.52345,1.55901,3000,0,0,100,0),
(725850,12,-4495.519,1633.7494,165.49863,NULL,0,0,0,100,0),
(725850,13,-4495.527,1622.6622,165.2824,NULL,0,0,0,100,0),
(725850,14,-4495.709,1612.6907,166.10027,NULL,0,0,0,100,0),
(725850,15,-4485.913,1596.5046,166.3229,NULL,0,0,0,100,0),
(725850,16,-4478.5806,1584.0195,168.15558,NULL,0,0,0,100,0),
(725850,17,-4468.3125,1565.2994,167.60017,NULL,0,0,0,100,0),
(725850,18,-4453.2607,1557.5651,167.94525,NULL,0,0,0,100,0),
(725850,19,-4444.0366,1558.3333,165.68407,NULL,0,0,0,100,0),
(725850,20,-4433.708,1559.4725,166.2368,NULL,0,0,0,100,0),

(725860,1,-4424.06,1611.96,164.1507,2.45647,3000,0,0,100,0),
(725860,2,-4416.234,1599.0463,164.13074,NULL,0,0,0,100,0), -- -4415.8145 1601.0693 164.42285
(725860,3,-4406.723,1596.2578,165.58177,NULL,0,0,0,100,0), -- -4406.925 1599.7422 165.50992
(725860,4,-4399.6694,1603.9856,165.69374,NULL,0,0,0,100,0),
(725860,5,-4395.54,1610.4928,165.02979,NULL,0,0,0,100,0),
(725860,6,-4391.5947,1621.7272,162.25752,NULL,0,0,0,100,0),
(725860,7,-4386.092,1635.6249,160.18681,NULL,0,0,0,100,0),
(725860,8,-4384.5356,1644.2096,159.57042,NULL,0,0,0,100,0),
(725860,9,-4384.954,1651.8346,159.33243,1.6258,3000,0,0,100,0),
(725860,10,-4384.5356,1644.2096,159.57042,NULL,0,0,0,100,0),
(725860,11,-4386.092,1635.6249,160.18681,NULL,0,0,0,100,0),
(725860,12,-4391.5947,1621.7272,162.25752,NULL,0,0,0,100,0),
(725860,13,-4395.54,1610.4928,165.02979,NULL,0,0,0,100,0),
(725860,14,-4399.6694,1603.9856,165.69374,NULL,0,0,0,100,0),
(725860,15,-4406.723,1596.2578,165.58177,NULL,0,0,0,100,0),
(725860,16,-4416.234,1599.0463,164.13074,NULL,0,0,0,100,0),

(725870,1,-4434.23,1684.58,161.07631,4.63809,3000,0,0,100,0), -- home
(725870,2,-4435.351,1672.2006,162.62814,NULL,0,0,0,100,0),
(725870,3,-4436.375,1656.9453,162.78535,NULL,0,0,0,100,0),
(725870,4,-4437.527,1638.8815,162.63013,NULL,0,0,0,100,0),
(725870,5,-4435.7095,1625.4523,163.03343,NULL,0,0,0,100,0),
(725870,6,-4440.921,1614.3536,162.67914,NULL,0,0,0,100,0),
(725870,7,-4455.665,1608.7821,163.3573,NULL,0,0,0,100,0),
(725870,8,-4464.177,1606.439,163.58563,NULL,0,0,0,100,0),
(725870,9,-4479.6553,1602.4541,165.38602,NULL,0,0,0,100,0),
(725870,10,-4488.9985,1600.022,166.63646,3.3701,3000,0,0,100,0),
(725870,11,-4479.6553,1602.4541,165.38602,NULL,0,0,0,100,0),
(725870,12,-4464.177,1606.439,163.58563,NULL,0,0,0,100,0),
(725870,13,-4455.665,1608.7821,163.3573,NULL,0,0,0,100,0),
(725870,14,-4440.921,1614.3536,162.67914,NULL,0,0,0,100,0),
(725870,15,-4435.7095,1625.4523,163.03343,NULL,0,0,0,100,0),
(725870,16,-4437.527,1638.8815,162.63013,NULL,0,0,0,100,0),
(725870,17,-4436.375,1656.9453,162.78535,NULL,0,0,0,100,0),
(725870,18,-4435.351,1672.2006,162.62814,NULL,0,0,0,100,0),

(725900,1,-4519.27,1638.77,173.23505,NULL,0,0,0,100,0), -- home
(725900,2,-4525.3804,1643.0796,174.86731,NULL,0,0,0,100,0),
(725900,3,-4530.909,1644.5339,175.56741,NULL,0,0,0,100,0),
(725900,4,-4548.0664,1634.1257,175.19333,NULL,0,0,0,100,0),
(725900,5,-4556.4517,1633.4327,174.39606,NULL,0,0,0,100,0),
(725900,6,-4567.6416,1632.817,175.47192,NULL,0,0,0,100,0),
(725900,7,-4585.4688,1632.1167,175.84608,NULL,0,0,0,100,0),
(725900,8,-4594.3706,1630.8796,176.45604,3.2908,3000,0,0,100,0),
(725900,9,-4585.4688,1632.1167,175.84608,NULL,0,0,0,100,0),
(725900,10,-4567.6416,1632.817,175.47192,NULL,0,0,0,100,0),
(725900,11,-4556.4517,1633.4327,174.39606,NULL,0,0,0,100,0),
(725900,12,-4548.0664,1634.1257,175.19333,NULL,0,0,0,100,0),
(725900,13,-4530.909,1644.5339,175.56741,NULL,0,0,0,100,0),
(725900,14,-4525.3804,1643.0796,174.86731,NULL,0,0,0,100,0),
(725900,15,-4519.27,1638.77,173.23505,NULL,0,0,0,100,0), -- home
(725900,16,-4513.537,1634.081,173.39421,NULL,0,0,0,100,0),
(725900,17,-4516.477,1623.6383,173.46005,NULL,0,0,0,100,0),
(725900,18,-4524.7397,1611.051,175.05838,NULL,0,0,0,100,0),
(725900,19,-4537.8076,1602.2344,175.87746,3.7351,3000,0,0,100,0),
(725900,20,-4524.7397,1611.051,175.05838,NULL,0,0,0,100,0),
(725900,21,-4516.477,1623.6383,173.46005,NULL,0,0,0,100,0),
(725900,22,-4513.537,1634.081,173.39421,NULL,0,0,0,100,0),

(725960,1,-4402.43,1737.2,158.11423,5.65413,3000,0,0,100,0),
(725960,2,-4415.416,1745.9507,157.73509,NULL,0,0,0,100,0),
(725960,3,-4420.6133,1749.9172,157.60506,NULL,0,0,0,100,0),
(725960,4,-4429.3657,1749.6422,157.77557,NULL,0,0,0,100,0),
(725960,5,-4452.1104,1733.6887,158.2178,NULL,0,0,0,100,0),
(725960,6,-4462.669,1738.6571,159.07242,NULL,0,0,0,100,0),
(725960,7,-4477.371,1745.5051,158.49959,NULL,0,0,0,100,0),
(725960,8,-4484.9355,1749.174,158.83954,NULL,0,0,0,100,0),
(725960,9,-4494.6475,1754.0269,159.98192,NULL,0,0,0,100,0),
(725960,10,-4507.3633,1760.1948,161.37343,NULL,0,0,0,100,0),
(725960,11,-4514.148,1765.5432,165.11714,2.474,3000,0,0,100,0),
(725960,12,-4507.3633,1760.1948,161.37343,NULL,0,0,0,100,0),
(725960,13,-4494.6475,1754.0269,159.98192,NULL,0,0,0,100,0),
(725960,14,-4484.9355,1749.174,158.83954,NULL,0,0,0,100,0),
(725960,15,-4477.371,1745.5051,158.49959,NULL,0,0,0,100,0),
(725960,16,-4462.669,1738.6571,159.07242,NULL,0,0,0,100,0),
(725960,17,-4452.1104,1733.6887,158.2178,NULL,0,0,0,100,0),
(725960,18,-4429.3657,1749.6422,157.77557,NULL,0,0,0,100,0),
(725960,19,-4420.6133,1749.9172,157.60506,NULL,0,0,0,100,0),
(725960,20,-4415.416,1745.9507,157.73509,NULL,0,0,0,100,0);


-- Eclipse Point - Bloodcrystal Spell Orgin
DELETE FROM `creature` WHERE `guid` IN (73521);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(73521,20431,530,0,0,1,1,0,-4564.5156,1606.413,182.04956,0.733038,300,0,0,42,0,0,0,0,0,'',0,0,NULL);


-- Parshah
UPDATE `creature` SET `MovementType` = 2,`position_x` = -3493.5701,`position_y` = 2277.0901,`position_z` = 65.3081 WHERE `guid` = 83112; -- 0 -3412.86,2291.42,62.914288

DELETE FROM `creature_addon` WHERE `guid` IN (83112);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(83112,831120,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (831120);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(831120,1,-3478.58,2278.88,64.3024,NULL,0,0,0,100,0),
(831120,2,-3465.33,2287.22,63.4117,NULL,0,0,0,100,0),
(831120,3,-3396.56,2289.24,62.6846,NULL,0,0,0,100,0),
(831120,4,-3375.29,2283.54,62.2904,NULL,0,0,0,100,0),
(831120,5,-3361.75,2279.95,61.9273,NULL,0,0,0,100,0),
(831120,6,-3346.63,2278.56,61.3279,NULL,0,0,0,100,0),
(831120,7,-3292.68,2278.75,60.6095,NULL,0,0,0,100,0),
(831120,8,-3365.18,2279.23,62.0737,NULL,0,0,0,100,0),
(831120,9,-3387.64,2287.59,62.3845,NULL,0,0,0,100,0),
(831120,10,-3399.74,2289.47,62.7643,NULL,0,0,0,100,0),
(831120,11,-3457.02,2289.38,63.4614,NULL,0,0,0,100,0),
(831120,12,-3465.55,2286.99,63.416,NULL,0,0,0,100,0),
(831120,13,-3476.52,2280.52,64.1385,NULL,0,0,0,100,0),
(831120,14,-3494.46,2277.87,65.362,NULL,0,0,0,100,0);


-- Neltharaku
UPDATE `waypoint_data` SET `velocity` = 4,`move_type` = 0 WHERE `id` = 756540; -- walk instead of run -- flying too fast


-- Maddix
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `ConditionTypeOrReference` = 5 AND `SourceEntry` IN (19581);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(30,0,19581,0,0,5,0,932,240,0,0,0,0,'','Only able to activate flight path if friendly with Aldor');


-- Alieshor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `ConditionTypeOrReference` = 5 AND `SourceEntry` IN (21766);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(30,0,21766,0,0,5,0,934,240,0,0,0,0,'','Only able to activate flight path if friendly with Scryers');