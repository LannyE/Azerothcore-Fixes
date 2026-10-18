/*
Undo
Fix BoneChewer Messenger 
New Waypoints 
Summon Marauders to make it more Blizzlike
Fix pauses and walking and running issues that was introduced in a commit
 Delete Creature entries for Bonechewer Marauder frees up IDs 126235,126236,126237,126238
*/

-- BoneChewer Marauder
DELETE FROM `creature` WHERE `guid` IN (126235,126236,126237,126238);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(126235,21245,0,0,530,3519,3685,1,1,1,-2977.07,3418.29,0.265028,4.78299,300,0,0,0,0,0,0,0,0,'',46902,0,'GUID SAI'),
(126236,21245,0,0,530,3519,3685,1,1,1,-2976.71,3413.3,0.265028,4.78338,300,0,0,0,0,0,0,0,0,'',46902,0,'GUID SAI'),
(126237,21245,0,0,530,3519,3685,1,1,1,-2976.36,3408.32,0.265028,4.783,300,0,0,0,0,0,0,0,0,'',46902,0,'GUID SAI'),
(126238,21245,0,0,530,3519,3685,1,1,1,-2975.86,3401.42,0.25352,4.78756,300,0,0,0,0,0,0,0,0,'',46902,0,'GUID SAI');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 21245 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-126235,-126236,-126237,-126238) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-126238,0,0,0,11,0,100,0,0,0,0,0,0,0,29,5,165,0,0,0,0,10,126234,21244,0,0,0,0,0,0,'Bonechewer Marauder - On Respawn - Start Follow Closest Creature \'Bonechewer Messenger\''),
(-126237,0,0,0,11,0,100,0,0,0,0,0,0,0,29,5,195,0,0,0,0,10,126234,21244,0,0,0,0,0,0,'Bonechewer Marauder - On Respawn - Start Follow Closest Creature \'Bonechewer Messenger\''),
(-126236,0,0,0,11,0,100,0,0,0,0,0,0,0,29,5,225,0,0,0,0,10,126234,21244,0,0,0,0,0,0,'Bonechewer Marauder - On Respawn - Start Follow Closest Creature \'Bonechewer Messenger\''),
(-126235,0,0,0,11,0,100,0,0,0,0,0,0,0,29,5,135,0,0,0,0,10,126234,21244,0,0,0,0,0,0,'Bonechewer Marauder - On Respawn - Start Follow Closest Creature \'Bonechewer Messenger\'');


-- BoneChewer Messenger
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `guid` in (126234); -- 300

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2124400) AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21244) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21244,0,0,0,11,0,100,0,0,0,0,0,0,0,53,1,21244,0,0,0,2,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Respawn - Start Waypoint'),
(21244,0,1,0,40,0,100,0,6,21244,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 6 Reached - Set Run On'),
(21244,0,2,3,40,0,100,0,32,21244,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 32 Reached - Set Run Off'),
(21244,0,3,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 32 Reached - Say Line 0'),
(21244,0,4,5,40,0,100,0,34,21244,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 34 Reached - Say Line 1'),
(21244,0,5,0,61,0,100,0,0,0,0,0,0,0,107,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Waypoint 34 Reached - Summon Creature Group 0'),
(21244,0,6,0,4,0,100,0,0,0,0,0,0,0,39,40,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Messenger - On Aggro - Call For Help');

UPDATE `waypoints` SET `delay` = 8000 WHERE `entry` in (21244) AND `pointid` IN (6);
UPDATE `waypoints` SET `delay` = 1500 WHERE `entry` in (21244) AND `pointid` IN (32);
UPDATE `waypoints` SET `delay` = 60000 WHERE `entry` in (21244) AND `pointid` IN (34);

DELETE FROM `waypoints` WHERE `entry` = 21244 and `pointid` >= 35;
