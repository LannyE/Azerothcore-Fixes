-- Lord Maldazzar
DELETE FROM `smart_scripts` WHERE `entryorguid`=1848 AND `source_type`=0 AND `id`=3;


-- Jabbering Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=10801 AND `source_type`=0 AND `id`=2;


-- Farmer Dalson
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=10836;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10836 AND `source_type`=0;


-- Wandering Skeleton
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=10816;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10816 AND `source_type`=0;


-- Foulmane
DELETE FROM `smart_scripts` WHERE `entryorguid`=1847 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1847,0,0,0,2,0,100,1,5,95,0,0,0,0,11,3427,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Foulmane - Between 5-95% Health - Cast \'3427\' (No Repeat)'),
(1847,0,2,0,2,0,100,1,30,60,0,0,0,0,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Foulmane - Between 30-60% Health - Cast \'13445\' (No Repeat)');


-- Cauldron Lord Bilemaw
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=11075;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11075 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(11075,0,2,0,25,0,100,0,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cauldron Lord Bilemaw - On Reset - Cast \'Thrash\'');


-- Cauldron Lord Malvinious
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=11077;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11077 AND `source_type`=0;


-- Cauldron Lord Soulwrath
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=11078;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11078 AND `source_type`=0;


-- Decrepit Guardian
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=10943;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10943 AND `source_type`=0;