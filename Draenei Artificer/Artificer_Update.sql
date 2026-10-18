-- New Creature GUIDs 300018,300019

-- Wandering Artificer and stationary - NEW
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17228;
DELETE FROM `creature` WHERE `guid` IN (300018,300019); -- New creatures
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300018,17228,0,0,530,0,0,1,1,1,-4191.44,-12464.1,45.34,3.7988,300,0,0,98,115,0,0,0,0,'',0,0,NULL), -- Wandering
(300019,17228,0,0,530,0,0,1,1,1,-4213.9146,-12467.316,45.44178,0.9528044,300,0,0,98,115,0,0,0,0,'',0,0,NULL); -- Stationary

-- Existing Artificer
UPDATE `creature` SET `position_x`=-4149.24,`position_y`=-12465,`position_z`=45.3466,`orientation`=5.67608 WHERE `guid`=61962; -- Move to correct location
-- (61962,17228,530,0,0,1,1,0,1,-4149.24,-12465,45.3466,5.67608,300,0,0,98,115,0,0,0,0,'',0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300018,-61962) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30001800,30001801,1722800,1722801,1722802) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- New Artificer
(-300018,0,0,0,40,0,100,0,3,17228,0,0,0,80,30001800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Waypoint 3 Reached - Run Script'),
(-300018,0,1,0,40,0,100,0,6,17228,0,0,0,80,30001801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Waypoint 6 Reached - Run Script'),
(-300018,0,2,0,1,0,100,0,0,0,130000,130000,0,53,0,17228,1,0,0,2,1,0,0,0,0,0,0,0,0,'Draenei Artificer - Out of Combat - Start Waypoint'),

(30001800,9,0,0,0,0,100,0,0,0,0,0,0,54,60000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Pause Waypoint'),
(30001800,9,1,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.8356,'Draenei Artificer - On Script - Set Orientation 0,8356'),
(30001800,9,2,0,0,0,100,0,1500,1500,0,0,0,71,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Change Equipment'),
(30001800,9,3,0,0,0,100,0,2000,2000,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 234'),
(30001800,9,4,0,0,0,100,0,55000,55000,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 0'),
(30001801,9,0,0,0,0,100,0,0,0,0,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Pause Waypoint'),
(30001801,9,1,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.8398,'Draenei Artificer - On Script - Set Orientation 3,8398'),
(30001801,9,3,0,0,0,100,0,1500,1500,0,0,0,71,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Change Equipment'),
(30001801,9,4,0,0,0,100,0,2000,2000,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 234'),
(30001801,9,5,0,0,0,100,0,55000,55000,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 0'),

-- Existing Artificer - needs to be male
(-61962,0,0,0,1,0,100,0,20000,20000,176000,176000,0,80,1722800,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - Out of Combat - Run Script'),
(-61962,0,1,0,1,0,100,0,65000,65000,176000,176000,0,80,1722801,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - Out of Combat - Run Script'),
(-61962,0,2,0,1,0,100,0,118000,118000,176000,176000,0,80,1722802,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - Out of Combat - Run Script'),
(-61962,0,3,0,11,0,100,0,0,0,0,0,0,3,0,16921,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Respawn - Morph to Male Model 16921'),
(1722800,9,0,0,0,0,100,0,1000,1000,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 0'),
(1722800,9,1,0,0,0,100,0,2000,2000,0,0,0,66,0,0,0,0,0,0,10,61721,17212,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Orientation Closest Creature \'Tuluun\''),
(1722800,9,2,0,0,0,100,0,3000,3000,0,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Say Line 0'),
(1722800,9,3,0,0,0,100,0,4000,4000,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Say Line 1'),
(1722800,9,4,0,0,0,100,0,3000,3000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.67608,'Draenei Artificer - On Script - Set Orientation 5.67608'),
(1722800,9,5,0,0,0,100,0,2000,2000,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 234'),
(1722801,9,0,0,0,0,100,0,1000,1000,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 0'),
(1722801,9,1,0,0,0,100,0,3000,3000,0,0,0,66,0,0,0,0,0,0,10,61721,17212,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Orientation Closest Creature \'Tuluun\''),
(1722801,9,2,0,0,0,100,0,2000,2000,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Say Line 2'),
(1722801,9,3,0,0,0,100,0,4000,4000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.67608,'Draenei Artificer - On Script - Set Orientation 5.67608'),
(1722801,9,4,0,0,0,100,0,3000,3000,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 234'),
(1722802,9,0,0,0,0,100,0,1000,1000,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 0'),
(1722802,9,1,0,0,0,100,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Run Off'),
(1722802,9,2,0,0,0,100,0,2000,2000,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-4160.31,-12458.7,44.5919,2.08552,'Draenei Artificer - On Script - Move To Position'),
(1722802,9,3,0,0,0,100,0,8000,8000,0,0,0,66,0,0,0,0,0,0,10,61721,17212,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Orientation Closest Creature \'Tuluun\''),
(1722802,9,4,0,0,0,100,0,2000,2000,0,0,0,1,3,10000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Say Line 3'),
(1722802,9,5,0,0,0,100,0,3000,3000,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-4149.24,-12465,45.3466,5.67608,'Draenei Artificer - On Script - Move To Position'),
(1722802,9,6,0,0,0,100,0,7000,7000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.67608,'Draenei Artificer - On Script - Set Orientation 5.67608'),
(1722802,9,7,0,0,0,100,0,2000,2000,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Draenei Artificer - On Script - Set Emote State 234');

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (17228) AND `ID` = 2;
INSERT INTO `creature_equip_template` (`CreatureID`,`ID`,`ItemID1`,`ItemID2`,`ItemID3`,`VerifiedBuild`) VALUES 
(17228,2,2530,0,0,18019);

DELETE FROM `waypoints` WHERE `entry` IN (17228);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(17228,1,-4189.97,-12461,45.227,0,0,'Draenei Artificer'),
(17228,2,-4191.24,-12456.7,45.444,0,0,'Draenei Artificer'),
(17228,3,-4192.75,-12453.8,45.635,0,0,'Draenei Artificer'),
(17228,4,-4191.24,-12456.7,45.444,0,0,'Draenei Artificer'),
(17228,5,-4189.97,-12461,45.227,0,0,'Draenei Artificer'),
(17228,6,-4191.44,-12464.1,45.34,0,0,'Draenei Artificer');

-- 61962 model female 16924 male 16921
