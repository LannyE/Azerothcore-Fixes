-- "Mist" more blizzlike script

-- Mist respawn time, time is from classic server
UPDATE `creature` SET `spawntimesecs`=90 WHERE `guid`=49625;

-- Mist Waypoints
DELETE FROM `waypoints` WHERE `entry`=3568;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(3568,1,10657.489,1849.751,1321.866,"Mist"),
(3568,2,10647.716,1808.649,1326.796,"Mist"),
(3568,3,10661.571,1771.858,1322.714,"Mist"),
(3568,4,10726.747,1753.344,1314.693,"Mist");

-- Sentinel Arynia Cloudsbreak missing text emote
UPDATE `creature_text` SET `Emote`=1 WHERE `CreatureID`=3519 AND `ID`=0;

-- Set Sentinel Arynia Cloudsbreak SmartAI or Set Data won't work
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3519);


-- Script
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3519,3568) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (351900,356800,356801) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Sentinel Arynia Cloudsbreak
(3519,0,0,0,38,0,100,0,1,1,0,0,0,80,351900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sentinel Arynia Cloudsbreak - On Data Set - Run Sript'),

-- Mist Script
(3568,0,0,1,19,0,100,512,938,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Set Event Phase 1'),
(3568,0,1,2,61,1,100,512,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Remove Npc Flags Questgiver'),
(3568,0,2,3,61,1,100,512,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Remove Flags Immune To NPC\'s'),
(3568,0,3,4,61,1,100,512,0,0,0,0,0,29,1,1,1,0,0,0,7,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Start Follow Invoker'),
(3568,0,4,12,61,1,100,512,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken - Set Event Phase 0'),
(3568,0,5,0,1,0,100,513,100,100,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - Out of Combat - Set Reactstate Defensive (No Repeat)'),
(3568,0,6,0,75,0,100,513,0,3519,5,0,0,80,356801,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - Creature distance- Run Script'),
(3568,0,7,0,6,0,100,512,0,0,0,0,0,6,938,0,0,0,0,0,18,30,0,0,0,0,0,0,0,'Mist - On Just Died - Fail Quest \'Mist\''),
(3568,0,8,0,6,0,100,512,0,0,0,0,0,41,20000,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Just Died - Respawn Self'),
(3568,0,9,10,11,0,100,512,1,1,141,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Respawn - Set Event Phase 1'),
(3568,0,10,11,61,1,100,512,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Respawn - Set Flags Immune To NPC\'s'),
(3568,0,11,0,61,1,100,512,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Respawn - Set Npc Flags Questgiver'),
(3568,0,12,0,61,0,100,512,0,0,0,0,0,80,356800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Quest \'Mist\' Taken (Linked) - Run Script'),
(3568,0,13,0,40,0,100,0,4,3568,0,0,0,41,1000,30,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Waypoint 4 Reached - Despawn"),

-- Sentinel Arynia Cloudsbreak Timed list
(351900,9,0,0,0,0,100,0,1000,1000,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Remove Quest Giver npc flag"),
(351900,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,19,3568,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Set Orientation"),
(351900,9,2,0,0,0,100,0,2000,2000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Set Flag Standstate 'Kneel'"),
(351900,9,3,0,0,0,100,0,3000,3000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Say Line 0"),
(351900,9,4,0,0,0,100,0,7000,7000,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Remove Flag Standstate 'Kneel'"),
(351900,9,5,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Set Orientation"),
(351900,9,6,0,0,0,100,0,500,500,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Sentinel Arynia Cloudsbreak - On Script - Add Quest Giver npc flag"),

-- Mist Timed lists
(356800,9,0,0,0,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Script - Set Active'),
(356800,9,1,0,0,0,100,0,539000,539000,0,0,0,41,1000,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mist - On Script - Despawn'),

(356801,9,0,0,0,0,100,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Script - Set Root On"),
(356801,9,1,0,0,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,19,3519,0,0,0,0,0,0,0,"Mist - On Script - Set Data to 'Sentinel Arynia Cloudsbreak'"),
(356801,9,2,0,0,0,100,0,2000,2000,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Script - Set Root Off"),
(356801,9,3,0,0,0,100,0,0,0,0,0,0,15,938,0,0,0,0,0,18,9,0,0,0,0,0,0,0,"Mist - On Script - Complete Quest 'Mist'"),
(356801,9,4,0,0,0,100,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Script - Set Run Off"),
(356801,9,5,0,0,0,100,0,0,0,0,0,0,69,0,0,0,1,0,0,19,3519,0,0,0,0,0,0,0,"Mist - On Script - Move to 'Sentinel Arynia Cloudsbreak'"),
(356801,9,6,0,0,0,100,0,9000,9000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Script - Say Line 0"),
(356801,9,7,0,0,0,100,0,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Script - Set Flag Immune To Players and NPCs"),
(356801,9,8,0,0,0,100,0,3000,3000,0,0,0,53,1,3568,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mist - On Script - Start Waypoints");