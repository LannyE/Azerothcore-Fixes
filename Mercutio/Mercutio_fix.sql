
-- Mercutio Filthgorge and Crypt Robber
DELETE FROM `creature_text` WHERE `CreatureID` IN (11886);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(11886,0,0,'Well, well. Looks like we got ourselves some competition. Get \'em boys!',12,0,100,0,0,0,7261,0,'Mercutio Filthgorger');

DELETE FROM `smart_scripts` WHERE `entryorguid`IN (11886) AND `source_type`=0 AND `id` IN (3,4,5,6,7,8,9);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1188600,1188601) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(11886,0,3,4,63,0,100,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - Just Created - Run Off'),
(11886,0,4,5,61,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - Just Created (Linked) - Set React State'),
(11886,0,5,0,61,0,100,0,0,0,0,0,0,46,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - Just Created (Linked) - Move Forward'),
(11886,0,6,0,54,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Summoned - Set Phase 1'),
(11886,0,7,0,4,0,100,0,0,0,0,0,0,80,1188600,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Aggro - Run Script'),
(11886,0,8,0,76,1,100,1,0,177240,0,0,0,80,1188601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Gameobject Near (Phase 1) - Run Script'),

(1188600,9,0,0,0,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set React State'),
(1188600,9,1,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set Home POS'),
(1188600,9,2,0,0,0,100,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set Phase 2'),
(1188600,9,3,0,0,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,9,11887,0,25,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set Data 1 1 \'Crypt Robber\''),
(1188600,9,4,0,0,0,100,0,100,100,0,0,0,39,40,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Call for Help (No Message)'),
(1188600,9,5,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Say Line 0'),
(1188600,9,6,0,0,0,100,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Run On'),


(1188601,9,0,0,0,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set React State'),
(1188601,9,1,0,0,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,9,11887,0,25,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set Data 1 1 \'Crypt Robber\''),
(1188601,9,2,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set Home POS'),
(1188601,9,3,0,0,0,100,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Set Phase 2'),
(1188601,9,4,0,0,0,100,0,1000,1000,0,0,0,5,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mercutio Filthgorger - On Script - Play Emote \'Kneel\'');

-- Crypt Robber
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=11887; -- Crypt Robber

DELETE FROM smart_scripts WHERE `entryorguid` IN (11887);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(11887,0,0,1,63,0,100,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Summon - Run Off'),
(11887,0,1,2,61,0,100,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Summon (Linked) - Set React State'),
(11887,0,2,0,61,0,100,0,0,0,0,0,0,46,19,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Summon (Linked) - Move Forward'),
(11887,0,3,4,4,0,100,0,0,0,0,0,0,39,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Aggro - Call for Help (No Message)'),
(11887,0,4,0,61,0,100,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Aggro (Linked) - Run On'),
(11887,0,5,6,38,0,100,0,1,1,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Data Set 1 1 - Set React State'),
(11887,0,6,0,61,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crypt Robber - On Data Set 1 1 (Linked) - Set Home POS');

-- Loose Dirt Mound
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI",`Data2`=0,`Data3`=360000 WHERE `entry`=177240; -- Delay added was 3000 data2 5759

DELETE FROM `smart_scripts` WHERE `entryorguid`=177240 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(177240,1,0,1,70,0,100,0,2,0,0,0,0,12,11886,1,360000,0,0,0,8,0,0,0,0,1567.3656,-3260.809,86.847,4.244,"Loose Dirt Mound - On Gameobject State Changed - Summon Mercutio Filthgorger'"),
(177240,1,1,2,61,0,100,0,0,0,0,0,0,12,11887,1,360000,0,0,0,8,0,0,0,0,1569.4,-3256.722,86.711,4.244,"Loose Dirt Mound - On Gameobject State Changed - Summon Crypt Robber'"),
(177240,1,2,3,61,0,100,0,0,0,0,0,0,12,11887,1,360000,0,0,0,8,0,0,0,0,1570.1433,-3259.437,86.868,4.244,"Loose Dirt Mound - On Gameobject State Changed - Summon Crypt Robber'"),
(177240,1,3,0,61,0,100,0,0,0,0,0,0,12,11887,1,360000,0,0,0,8,0,0,0,0,1566.844,-3257.7014,86.6913,4.244,"Loose Dirt Mound - On Gameobject State Changed - Summon Crypt Robber'");

DELETE FROM event_scripts where ID = 5759;