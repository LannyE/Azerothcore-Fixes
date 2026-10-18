/*
undo
Teribus the Cursed 4-7-26

Add waypoint
*/
-- Dread Relic
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceGroup` = 0 AND `SourceEntry` = 39239 AND `ConditionTypeOrReference` = 12 AND `ConditionValue1` = 249;


-- Teribus the Cursed
DELETE FROM `game_event` WHERE `eventEntry` = 249;
UPDATE `creature_template_movement` SET `Flight` = 1 WHERE `CreatureId` in (22441); -- 1
UPDATE `creature` SET `spawntimesecs` = 300 WHERE guid` in (247237); -- 300

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22441) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2244100,2244101,2244102) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22441,0,0,1,38,0,100,512,1,1,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Data Set - Set Active'),
(22441,0,1,0,61,0,100,512,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-3398.96,4466.33,-11.18,0,'Teribus the Cursed - On Data Set - Move To Position'),
(22441,0,2,3,34,0,100,0,8,1,0,0,0,0,5,293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - Movement Inform - Play Emote'),
(22441,0,3,4,61,0,100,512,0,0,0,0,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Data Set - Set Active off'),
(22441,0,4,5,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Data Set - Set Event Phase'),
(22441,0,5,0,61,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Data Set - Set Home Position'),
(22441,0,6,7,60,1,100,513,2000,2000,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Update - Remove Unit Flags'),
(22441,0,7,0,61,0,100,513,0,0,0,0,0,0,49,0,0,0,0,0,0,21,70,0,0,0,0,0,0,0,'Teribus the Cursed - On Update - Attack Start'),
(22441,0,8,0,7,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Data Set - Set Home Position');

DELETE FROM `waypoint_data` where `id` in (2472370,2472371);
