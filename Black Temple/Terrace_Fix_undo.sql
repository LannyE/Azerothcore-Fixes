-- Shadowsworn Drakonoid  
DELETE FROM `creature` WHERE `guid` IN (77356,77357);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
(77356,22072,0,0,530,0,0,1,1,1,-3307.94,291.771,120.611,1.63252,300,5,0,27944,0,1,0,0,0,'',0,0,NULL),
(77357,22072,0,0,530,0,0,1,1,1,-3407.51,302.131,104.23,1.40355,300,5,0,27944,0,1,0,0,0,'',0,0,NULL);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (77361); -- 1 5
UPDATE `creature` SET `wander_distance` = 5 WHERE `guid` in (77358,77359,77360); -- 5

-- Shadowmoon Eye of Kilrogg
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (77730); -- 1 5


-- Shadowmoon Slayer
DELETE FROM `smart_scripts` WHERE `entryorguid` = 22082 AND `source_type` = 0 AND `id` = 3;


-- Shadowmoon Soulstealer
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22061) AND `source_type` = 0 AND `id` IN (5);

-- Heart of Fury Visual TRIGGER
UPDATE `creature` SET `position_z` = 139.646 WHERE `guid` in (77279); -- Too high


-- Demon Hunter Supplicant
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21179 AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2117900 AND `source_type` = 9;


-- Demon Hunter Initiate
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (21180);
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (74278); -- 1 5

DELETE FROM `waypoints` where entry IN (21180);


DELETE FROM `smart_scripts` WHERE `entryorguid` = 21180 AND `source_type` = 0 AND `id` IN (3,4,5,6,7,8);
DELETE FROM `smart_scripts` WHERE `entryorguid` = -74278 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7427800,7427801) AND `source_type` = 9;



-- Sunfury Warlock
DELETE FROM `smart_scripts` WHERE entryorguid IN (21503);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21503,0,0,1,25,0,100,512,0,0,0,0,0,0,28,37833,0,0,0,0,0,19,21506,0,0,0,0,0,0,0,'Sunfury Warlock - On reset - Remove aura'),
(21503,0,1,0,61,0,100,512,0,0,0,0,0,0,11,38722,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warlock - On reset - Cast Channel'),
(21503,0,2,0,0,0,100,0,5000,8000,10000,16000,0,0,11,32707,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warlock - IC - Cast Incinerate'),
(21503,0,3,0,0,0,100,0,0,3000,3000,3000,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Warlock - IC - Cast Shadow Bolt'),
(21503,0,4,5,38,0,100,512,1,1,1000,1000,0,0,28,37833,0,0,0,0,0,19,21506,0,0,0,0,0,0,0,'Sunfury Warlock - On Data set - Remove aura'),
(21503,0,5,0,61,0,100,512,0,0,0,0,0,0,11,38722,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Warlock - On Data set - Cast Channel');

-- Azaloth
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21506 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21506,0,0,0,23,0,100,0,38722,1,5000,5000,0,0,11,37833,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On aura x1 - Cast ban'),
(21506,0,1,0,25,0,100,512,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On reset - Set unit Flag'),
(21506,0,2,3,8,0,100,512,37834,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spell hit - Remove flag'),
(21506,0,3,4,61,0,100,512,0,0,0,0,0,0,33,21892,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Azaloth - On Spell hit - Give Credit'),
(21506,0,4,5,61,0,100,512,0,0,0,0,0,0,28,37833,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spell hit - Remove Aura'),
(21506,0,5,6,61,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,11,21503,40,0,0,0,0,0,0,'Azaloth - On Spell hit - Attack'),
(21506,0,6,7,61,0,100,512,0,0,0,0,0,0,11,38750,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spellhit - Cast Warstomp'),
(21506,0,7,8,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Azaloth - On Spellhit - Say Text'),
(21506,0,8,0,61,0,100,512,0,0,0,0,0,0,92,0,38722,1,0,0,0,11,21503,40,0,0,0,0,0,0,'Azaloth - On Spellhit - Inturrupt cast'),
(21506,0,9,0,9,0,100,0,0,0,8000,15000,0,5,11,40504,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Azaloth - On Range - Cast Cleave'),
(21506,0,10,0,0,0,100,0,8000,8000,8000,12000,0,0,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Azaloth - IC - Cast Cripple'),
(21506,0,11,0,0,0,100,0,5000,10000,12000,15000,0,0,11,38741,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Azaloth - IC - Cast Rain of Fire'),
(21506,0,13,0,11,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,11,21503,10,0,0,0,0,0,0,'Azaloth - On Spawn - Set data');





-- Sunfury Summoner
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (21505);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-33134,-32702,-32701) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2150500,2150501) AND `source_type` = 9;


-- Spellbound Terrorguard
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21908 AND `source_type` = 0 AND `id` IN (3,4,5,6,7,8,9,10,11,12,13);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-76653,-76654) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2190800) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` = 21908;