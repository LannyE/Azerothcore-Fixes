/*
undo
Sentinel Amarassan
Missing Waypoints
Fix attacks
Cenarion Druid
Fix attacks
*/

-- Sentinel Amarassan
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (51888); -- 0

DELETE FROM `creature_addon` where guid in (51888);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (5916) AND `source_type` = 0 AND `id` IN (0,1,2,3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(5916,0,0,0,4,0,100,0,0,0,0,0,0,0,11,5759,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sentinel Amarassan - On Aggro - Cast \'5759\''),
(5916,0,1,0,0,0,100,0,2400,3900,12400,13900,0,0,11,24332,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sentinel Amarassan - In Combat - Cast \'24332\'');

DELETE FROM `waypoint_data` where `id` IN (518880);


-- Cenarion Druid
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4052) AND `source_type` = 0 AND `id` IN (0,1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4052,0,0,0,4,0,100,0,0,0,0,0,0,0,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cenarion Druid - On Aggro - Cast \'9739\''),
(4052,0,1,0,2,0,100,1,90,99,0,0,0,0,11,5759,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Druid - Between 90-99% Health - Cast \'5759\' (No Repeat)'),
(4052,0,2,0,2,0,100,1,30,60,0,0,0,0,11,5217,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Druid - Between 30-60% Health - Cast \'5217\' (No Repeat)');