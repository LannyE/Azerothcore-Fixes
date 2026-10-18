-- "Mist" more blizzlike script undo

-- Mist respawn time, time is from classic server
UPDATE `creature` SET `spawntimesecs`=300 WHERE `guid`=49625;

-- Mist Waypoints
DELETE FROM `waypoints` WHERE `entry`=3568;

-- Sentinel Arynia Cloudsbreak missing text emote
UPDATE `creature_text` SET `Emote`=0 WHERE `CreatureID`=3519 AND `ID`=0;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (3519);

-- Script
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3519,3568) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (351900,356800,356801) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3568,0,0,1,19,0,100,512,938,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Set Event Phase 1'),
(3568,0,1,2,61,1,100,512,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Remove Npc Flags Questgiver'),
(3568,0,2,3,61,1,100,512,0,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Remove Flags Immune To NPC\'s'),
(3568,0,3,4,61,1,100,512,0,0,0,0,0,0,29,1,1,1,0,0,0,7,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Start Follow Invoker'),
(3568,0,4,0,61,1,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Set Event Phase 0'),
(3568,0,5,0,1,0,100,513,100,100,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - Out of Combat - Set Reactstate Defensive (No Repeat)'),
(3568,0,6,0,75,0,100,512,0,3519,9,900,0,0,15,938,0,0,0,0,0,18,9,0,0,0,0,0,0,0,'Mist - On Distance To Creature - Quest Credit \'Mist\''),
(3568,0,7,0,6,0,100,512,0,0,0,0,0,0,6,938,0,0,0,0,0,18,30,0,0,0,0,0,0,0,'Mist - On Just Died - Fail Quest \'Mist\''),
(3568,0,8,0,6,0,100,512,0,0,0,0,0,0,70,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Just Died - Respawn Self'),
(3568,0,9,10,11,0,100,512,1,1,141,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Respawn - Set Event Phase 1'),
(3568,0,10,11,61,1,100,512,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Respawn - Set Flags Immune To NPC\'s'),
(3568,0,11,0,61,1,100,512,0,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Respawn - Set Npc Flags Questgiver'),
(3568,0,12,0,65,0,100,512,0,0,0,0,0,0,70,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Follow Complete - Respawn Self'),
(3568,0,13,0,75,0,100,1,0,3519,10,500,0,0,1,0,1000,1,0,0,0,19,3519,10,0,0,0,0,0,0,'Mist - On Distance To Creature - Say Line 0 (No Repeat)'),
(3568,0,14,0,75,0,100,1,0,3519,10,500,0,0,1,0,1000,0,0,0,0,19,3519,10,0,0,0,0,0,0,'Mist - On Distance To Creature - Say Line 0 (No Repeat)');