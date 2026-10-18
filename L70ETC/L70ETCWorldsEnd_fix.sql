/*
Cleanup when Event is not running so Perry isn't walking through equipment and pyrotechnics 4-5-26
 Sync Drums postions with Drummer
 Sync Bergrisst to despawn with the others. 
 Remove on spawn smart scripts for controllers.  They were not used but had to be replaced to keep the SMARTAI setting an not get warnings on start up.  This caused band members to play on their own on server restart. 
 add conditions to only work near band members. Not sure if needed but helps.
 
Shattrath Saul
 fix orientation at end of waypoint
 
Mizli Crankwheel and Ognip Blastbolt
 Fix emotes, smart scripts, and waypoints
 
*/

-- Shattrath City Event
UPDATE `game_event` SET `length` = 14 WHERE `eventEntry` = 82;

DELETE FROM `game_event_creature` WHERE `eventEntry` = 82 and `guid` IN (12566,12568);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(82,12566),
(82,12568);


-- Grim Gizzler Event
UPDATE `game_event` SET `start_time` = "2008-01-02 20:00:00",`length` = 7 WHERE `eventEntry` = 81; -- Must start at 8:00 PM at night 2008-01-02 08:00:00 this is 8:00 AM


-- Shattrath Saul
UPDATE `smart_scripts` SET `event_param1` = 299, `comment` = 'Shattrath Saul - On Waypoint 299 Reached - Set Orientation' WHERE `entryorguid` = 19270 and `source_type` = 0 and `id` = 21 and `link` = 0;


-- Drums
UPDATE `creature` SET `position_x`=847.554,`position_y`=-180.631,`position_z`=-49.6707,`orientation`=2.04204 WHERE `guid`=12563; -- sync location with actual drummer at Grimm Guzzler 847.823 -181.144 -49.6707 1.85005


-- Controllers
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` IN (23845,23852,23853,23854,23855) AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 29 AND `ConditionTarget` = 1 AND `ConditionValue1` = 23850 AND `ConditionValue2` IN (10) AND `ConditionValue3` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 23845, 0, 0, 29, 1, 23850, 10, 0, 0, 0, 0, '', 'Object must have creature \'L70ETC FX Controller\' within 10 yards'),
(22, 1, 23852, 0, 0, 29, 1, 23850, 10, 0, 0, 0, 0, '', 'Object must have creature \'L70ETC FX Controller\' within 10 yards'),
(22, 1, 23853, 0, 0, 29, 1, 23850, 10, 0, 0, 0, 0, '', 'Object must have creature \'L70ETC FX Controller\' within 10 yards'),
(22, 1, 23854, 0, 0, 29, 1, 23850, 10, 0, 0, 0, 0, '', 'Object must have creature \'L70ETC FX Controller\' within 10 yards'),
(22, 1, 23855, 0, 0, 29, 1, 23850, 10, 0, 0, 0, 0, '', 'Object must have creature \'L70ETC FX Controller\' within 10 yards');

UPDATE `smart_scripts` SET `action_param2` = '3', `action_param3` = '502500',  `target_x` = -1749.92, `target_y` = 5134.27, `target_z` = -36.178, `target_o` = 2.04204 WHERE `entryorguid` = '2385001' and `source_type` = '9' and `id` = '0' and `link` = '0'; -- added 228 488500 -- Sync drums at World's End Tavern 
UPDATE `smart_scripts` SET `event_param1` = 65800, `event_param2` = 65800 WHERE `entryorguid` in (2384500) AND `source_type` = 9 and `id` IN (4); -- 64000 -- Get Bergrisst to despawn with the others. 

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23830) AND `source_type` = 0 AND `id` IN (0,15); -- Remove the OOC Rain of Fire that comes out of nowhere. 
DELETE FROM `smart_scripts` WHERE `entryorguid` in (23853,23854,23855,23852,23845) AND `source_type` = 0 AND `id` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2385000) AND `source_type` = 9 and `id` IN (6,7); -- Swap positions.
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23830,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC FX Controller - On Respawn - Set Active'),
(23845,0,0,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Bergrisst Controller - On Respawn - Set Active'),
(23852,0,0,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Mai\'Kyl Controller - On Respawn - Set Active'),
(23853,0,0,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Samuro Controller - On Respawn - Set Active'),
(23854,0,0,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Sig Controller - On Respawn - Set Active'),
(23855,0,0,0,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Chief Thunder-Skins Controller - On Respawn - Set Active'),

(2385000,9,6,0,0,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,11,28206,10,0,0,0,0,0,0,'[DNT] L70ETC Concert Controller - Actionlist - Despawn Instant'),
(2385000,9,7,0,0,0,100,0,3241,3241,0,0,0,0,80,2384500,0,1,0,0,0,11,23845,21,0,0,0,0,0,0,'[DNT] L70ETC Concert Controller - Actionlist - Run Script');


-- Mizli Crankwheel
DELETE FROM `smart_scripts` WHERE `entryorguid` in (28209,2820900,2820901);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28209,0,0,0,25,0,100,0,0,0,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - On Reset - Set Emote State 133'),
(28209,0,1,0,1,0,100,0,20000,35000,20000,35000,0,0,80,2820901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - OOC - Run Script'),

(2820900,9,0,0,0,0,100,0,0,0,0,0,0,0,17,423,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - Actionlist - Set Emote State 423'),
(2820900,9,1,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,853.608,-182.679,-49.7553,2.094,'Mizli Crankwheel - Actionlist - Move To Position'),
(2820900,9,2,0,0,0,100,0,0,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - Actionlist - Remove Npc Flags Gossip'),
(2820900,9,3,0,0,0,100,0,278500,278500,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,849.49,-179.317,-49.7554,4.102,'Mizli Crankwheel - Actionlist - Move To Position'), -- 272500
(2820900,9,4,0,0,0,100,0,2500,2500,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - Actionlist - Add Npc Flags Gossip'),
(2820900,9,5,0,0,0,100,0,0,0,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - Actionlist - Set Emote State 133'),

(2820901,9,0,0,0,0,100,0,100,100,0,0,0,0,17,423,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - Actionlist - Set Emote State 423'),
(2820901,9,1,0,0,0,100,0,2000,8000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mizli Crankwheel - Actionlist - Set Emote State 133');


-- Ognip Blastbolt
DELETE FROM `smart_scripts` WHERE `entryorguid` in (28210,2821000,2821001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28210,0,0,0,25,0,100,0,0,0,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - On Reset - Set Emote State 133'),
(28210,0,1,2,62,0,100,0,9667,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Ognip Blastbolt - On Gossip Option 0 Selected - Close Gossip'),
(28210,0,2,3,61,0,100,0,0,0,0,0,0,0,80,2385000,0,1,0,0,0,11,23850,5,0,0,0,0,0,0,'Ognip Blastbolt - On Gossip Option 0 Selected - Run Script'),
(28210,0,3,4,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - On Gossip Option 0 Selected - Say Line 0'),
(28210,0,4,0,61,0,100,0,0,0,0,0,0,0,80,2821000,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - On Gossip Option 0 Selected - Run Script'),
(28210,0,5,0,68,0,100,0,81,0,0,0,0,0,80,2821000,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - On Game Event 81 Started - Run Script'),
(28210,0,6,0,1,0,100,0,8000,21000,15000,30000,0,0,80,2821001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - OOC - Run Script'),

(2821000,9,0,0,0,0,100,0,0,0,0,0,0,0,80,2820900,0,0,0,0,0,11,28209,5,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Run Script'),
(2821000,9,1,0,0,0,100,0,0,0,0,0,0,0,17,423,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Set Emote State 423'),
(2821000,9,2,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,846.874,-186.739,-49.7544,2.077,'Ognip Blastbolt - Actionlist - Move To Position'),
(2821000,9,3,0,0,0,100,0,0,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Remove Npc Flags Gossip'),
(2821000,9,4,0,0,0,100,0,277500,277500,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,845.881,-182.203,-49.7549,1.187,'Ognip Blastbolt - Actionlist - Move To Position'), -- 272500
(2821000,9,5,0,0,0,100,0,2500,2500,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Add Npc Flags Gossip'),
(2821000,9,6,0,0,0,100,0,0,0,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Set Emote State 133'),

(2821001,9,0,0,0,0,100,0,100,100,0,0,0,0,17,423,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Set Emote State 423'),
(2821001,9,1,0,0,0,100,0,3000,7000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ognip Blastbolt - Actionlist - Set Emote State 133');