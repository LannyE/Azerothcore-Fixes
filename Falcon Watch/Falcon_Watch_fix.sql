
-- Magistrix Carinda 57796 16793
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=16793;

DELETE FROM `smart_scripts` WHERE entryorguid IN (16793) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE entryorguid IN (1679300) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16793,0,0,0,25,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Reset - Set Phase 1'),
(16793,0,1,0,1,1,100,0,5000,20000,120000,240000,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - OOC (Phase 1) - Say Line 1'),
(16793,0,2,0,38,0,75,0,1,1,0,0,0,80,1679300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Data Set 1 1 - Run Script'),
(16793,0,3,4,38,0,100,0,2,2,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Data Set 2 2 - Set Phase 1'),
(16793,0,4,0,61,0,75,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Data Set 2 2 (Linked) - Say Line 2'),

(1679300,9,0,0,0,0,100,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Script - Set Phase 2'),
(1679300,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,10,61963,17230,0,0,0,0,0,0,'Magistrix Carinda - On Script - Set Orientation on Twinkle'),
(1679300,9,3,0,0,0,100,0,100,100,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Script - Say Line 0'),
(1679300,9,4,0,0,0,100,0,2000,2000,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Script - Set Orientation Home');
-- (1679300,9,5,0,0,0,100,0,2000,2000,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magistrix Carinda - On Script - Set Phase 1');

UPDATE `creature_text` SET `Language`= 10 WHERE `CreatureID`= 16793 and `Type`= 12; -- 1
UPDATE `creature_text` SET `GroupID` = 1,`ID` = 0  WHERE `CreatureID` = 16793 AND `GroupID` = 0 AND `ID` = 1;
UPDATE `creature_text` SET `GroupID` = 2,`ID` = 0  WHERE `CreatureID` = 16793 AND `GroupID` = 0 AND `ID` = 2;


-- Twinkle 61963 17230
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17230) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1723000,1723001,1723002) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (17230,0,0,0,38,0,100,512,0,1,0,0,0,0,53,1,17230,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Data Set 0 1 - Start Waypoint'),
(17230,0,0,0,38,1,100,512,0,1,0,0,0,0,80,1723000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Data Set 0 1 (Phase 1) - Run Script'),
(17230,0,1,0,38,2,100,512,0,1,0,0,0,0,80,1723001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Data Set 0 1 (Phase 2) - Run Script'),
(17230,0,2,0,40,0,100,512,13,17230,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Waypoint 13 Reached - Pause Waypoint'),
(17230,0,3,0,38,0,100,512,1,2,0,0,0,0,53,1,172300,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Data Set 1 2 - Start Waypoint'),
(17230,0,4,0,40,0,100,512,4,172300,0,0,0,0,41,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Waypoint 4 Reached - Despawn Instant'),
(17230,0,5,0,25,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Reset - Set Phase 1'),
(17230,0,6,0,1,1,100,512,1000,1000,150000,210000,0,0,80,1723002,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - OOC (Phase 1) - Run Script'),
-- (17230,0,7,0,40,0,100,512,6,172301,0,0,0,0,1,2,0,0,0,0,0,10,57796,16793,0,0,0,0,0,0,'Twinkle - On Waypoint 6 Reached - Say 2 on Magistrix Carinda'),
(17230,0,7,8,40,0,100,512,7,172301,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Waypoint 7 Reached - Set Phase 1'),
(17230,0,8,0,61,0,100,512,0,0,0,0,0,0,45,2,2,0,0,0,0,10,57796,16793,0,0,0,0,0,0,'Twinkle - On Waypoint 7 Reached (Linked) - Set Data 2 2 on Magistrix Carinda'),
(17230,0,9,0,40,0,100,512,4,172301,0,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Waypoint 4 Reached - Pause Waypoint'),


(1723000,9,0,0,0,0,100,512,2100,2100,0,0,0,0,53,1,17230,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Script - Start Waypoint'),

(1723001,9,0,0,0,0,100,512,2100,2100,0,0,0,0,54,6400000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Script - Pause Waypoint'),
(1723001,9,1,0,0,0,100,512,100,100,0,0,0,0,53,1,17230,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Script - Start Waypoint'),

(1723002,9,0,0,0,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,10,57796,16793,0,0,0,0,0,0,'Twinkle - On Script - Set Data 1 1 on Magistrix Carinda'),
(1723002,9,1,0,0,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Script - Set Phase 2'),
(1723002,9,2,0,0,0,100,512,2000,2000,0,0,0,0,53,0,172301,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twinkle - On Script - Start Waypoint');



DELETE FROM `waypoints` where `entry` IN (172301);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
--  -618.3156,4162.733,63.160404
(172301,1,-603.7584,4163.2573,64.483604,0,0,'Twinkle'),
(172301,2,-619.9807,4163.5327,63.06383,0,0,'Twinkle'),
(172301,3,-622.6131,4177.056,61.173664,0,0,'Twinkle'),
(172301,4,-626.53503,4187.2285,59.024826,0,0,'Twinkle'),
(172301,5,-622.6131,4177.056,61.173664,0,0,'Twinkle'),
(172301,6,-607.99207,4175.1597,63.464546,0,0,'Twinkle'),
(172301,7,-597.632,4176.91,64.8636,0.418879,0,'Twinkle');



-- Falcon Watch Ranger 62074 17282
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17282;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-62073,-62075) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-62073,0,0,0,1,0,100,0,5000,20000,120000,240000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Falcon Watch Ranger - Out Of Combat - Talk"),
(-62075,0,0,0,1,0,100,0,5000,20000,120000,240000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Falcon Watch Ranger - Out Of Combat - Talk");

DELETE FROM `creature_text` WHERE `CreatureID`=17282;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(17282,0,0,"We're never going to fire one of these, are we?",12,10,100,0,0,0,19346,0,"Falcon Watch Ranger"),
(17282,0,1,"Do we even have ammunition for these?",12,10,100,0,0,0,19347,0,"Falcon Watch Ranger"),
(17282,0,2,"What, exactly, are we ever going to fire these at?",12,10,100,0,0,0,19348,0,"Falcon Watch Ranger"),
(17282,0,3,"I wonder how far this would launch that white cat...",12,10,100,0,0,0,19349,0,"Falcon Watch Ranger");


-- Taleris Dawngazer 59416 17015
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17015; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 17015 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1701500) AND `source_type` IN (9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(17015,0,0,0,25,0,100,0,0,0,0,0,53,0,17015,1,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Reset - Start Waypoint"),
(17015,0,1,0,40,0,100,0,7,17015,0,0,80,1701500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Waypoint 7 Reached - Run Script"),
(17015,0,2,0,40,0,100,0,11,0,0,0,54,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Waypoint 11 Reached - Pause Waypoint"),

(1701500,9,0,0,0,0,100,0,0,0,0,0,54,49000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Pause Waypoint"),
(1701500,9,1,0,0,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Remove NPC Flag Gossip+Questgiver"),
(1701500,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 0"),
(1701500,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,19,17046,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 0 (Pilgrim Gal'ressa)"),
(1701500,9,4,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,17046,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Set Data 1 1 (Pilgrim Gal'ressa)"),
(1701500,9,5,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,19,17046,20,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 1 (Pilgrim Gal'ressa)"),
(1701500,9,6,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 1"),
(1701500,9,7,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,19,17046,20,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 2 (Pilgrim Gal'ressa)"),
(1701500,9,8,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 2"),
(1701500,9,9,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,19,17046,20,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 3 (Pilgrim Gal'ressa)"),
(1701500,9,10,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Talk 3"),
(1701500,9,11,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,17046,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Set Data 2 2 (Pilgrim Gal'ressa)"),
(1701500,9,12,0,0,0,100,0,0,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taleris Dawngazer - On Script - Add NPC Flag Gossip+Questgiver");

DELETE FROM `waypoints` WHERE `entry`=17015;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES 
(17015,1,-650.434021,4136.919922,64.620346),
(17015,2,-649.897,4149.45,64.13),
(17015,3,-650.945,4153.25,64.3724),
(17015,4,-653.408,4159.69,65.9067),
(17015,5,-649.211,4169.54,67.9885),
(17015,6,-647.255,4172.52,68.3677),
(17015,7,-646.951,4176.908,68.51362),
(17015,8,-653.285,4163.94,67.01),
(17015,9,-651.272,4154.21,64.553),
(17015,10,-649.733,4147.03,64.231),
(17015,11,-650.434021,4136.919922,64.620346);

UPDATE `creature_text` SET `Language`= 10 WHERE `CreatureID`= 17015 and `Type`= 12; -- 1
/*
DELETE FROM `creature_text` WHERE `CreatureID` IN (17015);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(17015,0,0,"Wake up, Gal'ressa.",12,1,100,1,0,0,13325,0,"Taleris Dawngazer"),
(17015,1,0,"You've had enough time to recover from your wounds, Gal'ressa. The time has come for you to return to the road.",12,1,100,1,0,0,13328,0,"Taleris Dawngazer"),
(17015,2,0,"You'll do no such thing. We simply haven't the room to keep you here. Now,kindly be on your way.",12,1,100,1,0,0,13330,0,"Taleris Dawngazer"),
(17015,3,0,"Very well then,have it your way. When we turn others away, you will be responsible for their suffering. Think about that.",12,1,100,1,0,0,13332,0,"Taleris Dawngazer");
*/


-- Pilgrim Gal'ressa 59423 17046
UPDATE `creature_template_addon` SET `bytes1`=3 WHERE `entry`=17046; -- 0

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17046; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17046) AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(17046,0,0,0,38,0,100,0,1,1,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pilgrim Gal'ressa - On Data Set 1 1 - Stand Up"),
(17046,0,1,0,38,0,100,0,2,2,0,0,90,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pilgrim Gal'ressa - On Data Set 2 2 - Sleep");

UPDATE `creature_text` SET `Language`= 10 WHERE `CreatureID`= 17046 and `Type`= 12; -- 1
/*
DELETE FROM `creature_text` WHERE `CreatureID` IN (17046);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(17046,0,0,"%s rubs the sleep from her eyes.",16,0,100,0,0,0,13326,0,"Pilgrim Gal'ressa"),
(17046,1,0,"What do you want, Taleris?",12,1,100,1,0,0,13327,0,"Pilgrim Gal'ressa"),
(17046,2,0,"I'm not going on alone,Taleris, and that's final. I'm going to wait here for the next group of pilgrims and set out with them when they depart.",12,1,100,1,0,0,13329,0,"Pilgrim Gal'ressa"),
(17046,3,0,"By the Sunwell, you've a thick skull! You'll not bully me into leaving, Taleris. Now, begone from my sight!",12,1,100,1,0,0,13331,0,"Pilgrim Gal'ressa");
*/


-- Viera Sunwhisper 61961 17226
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17226,1722600,1722601,1722602);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17226,0,0,0,20,0,100,512,9483,0,0,0,0,0,80,1722600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Quest \'Life\'s Finer Pleasures\' Finished - Run Script (No Repeat)'),
(17226,0,1,0,40,0,100,512,10,17226,0,0,0,0,80,1722602,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 10 Reached - Run Script'),
-- (17226,0,1,2,40,0,100,512,10,17226,0,0,0,0,66,0,0,0,0,0,0,11,17230,15,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 10 Reached - Set Orientation Closest Creature \'Twinkle\''),
-- (17226,0,2,0,61,0,100,512,0,0,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 10 Reached - Pause Waypoint'),
(17226,0,2,0,8,0,100,512,30077,0,0,0,0,0,80,1722601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Spellhit \'Carinda\'s Retribution\' - Run Script'),
(17226,0,3,0,40,0,100,512,4,172260,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Waypoint 4 Reached - Despawn Instant'),


(1722600,9,0,0,0,0,100,0,0,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Npc Flag '),
(1722600,9,1,0,0,0,100,0,2000,2000,0,0,0,0,53,0,17226,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start Waypoint'),
(1722600,9,2,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 0'),
(1722600,9,3,0,0,0,100,0,0,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Remove Flag Standstate Sit Down'),
(1722600,9,4,0,0,0,100,0,4500,4500,0,0,0,0,45,0,1,0,0,0,0,10,61963,17230,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 0 1'), -- Adjusted down the delay to compensate for Twinkle's alt OOC waypoint


(1722601,9,0,0,0,0,100,0,0,0,0,0,0,0,33,17226,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Quest Credit \'Arelion\'s Mistress\''),
(1722601,9,1,0,0,0,100,0,3000,3000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 2'),
(1722601,9,2,0,0,0,100,0,5000,5000,0,0,0,0,1,0,0,0,0,0,0,9,17230,0,25,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 0'),
(1722601,9,3,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 3'),
(1722601,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,61963,17230,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 1 2'),
(1722601,9,5,0,0,0,100,0,0,0,0,0,0,0,53,1,172260,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start Waypoint'),

(1722602,9,0,0,0,0,100,0,0,0,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Pause Waypoint'),
(1722602,9,1,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,21,20,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Orientation Closest Player'), 
(1722602,9,3,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 1');


DELETE FROM `broadcast_text` where `id` in (13591,13590,13610); -- Model Change to Rat after spell hit is Non-Gender which uses Male Text.
INSERT INTO `broadcast_text` (`ID`,`LanguageID`,`MaleText`,`FemaleText`,`EmoteID1`,`EmoteID2`,`EmoteID3`,`EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`SoundEntriesId`,`EmotesID`,`Flags`,`VerifiedBuild`) VALUES 
(13590,0,'I can\'t wait to try this wine!','I can\'t wait to try this wine!',0,0,0,0,0,0,0,0,1,18019),
(13591,0,'What... is happening... to me?  Get this cat away from me!','What... is happening... to me?  Get this cat away from me!',0,0,0,0,0,0,0,0,1,18019),
(13610,0,'Viera Sunwhisper scurries away, attempting to flee from Twinkle.','Viera Sunwhisper scurries away, attempting to flee from Twinkle.',0,0,0,0,0,0,0,0,1,18019);


