
-- Quel'dorei Magewraith
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17612);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17612,0,0,0,0,0,100,0,0,0,3100,3200,0,0,11,11921,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - In Combat CMC - Cast \'Fireball\''),
(17612,0,1,0,0,0,100,0,7000,11000,9000,13000,0,0,11,31595,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - In Combat CMC - Cast \'Arcane Bolt\''),
(17612,0,2,0,0,0,100,0,9000,13000,7000,11000,0,0,11,31604,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - In Combat CMC - Cast \'Arcane Weakness\''),
(17612,0,3,0,0,0,100,0,11000,15000,16000,20000,0,0,11,11436,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith -In Combat CMC - Cast \'Slow\''),
(17612,0,4,0,13,0,100,0,10000,15000,0,0,0,0,11,31596,64,0,0,0,0,7,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Target Casting - Cast \'Counterspell\''),
(17612,0,5,0,6,0,100,0,0,0,0,0,0,0,15,9595,0,0,0,0,0,16,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - On Just Died - Quest Credit \'Control\''),
(17612,0,6,0,54,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Just Summoned - Say Line 0'),
(17612,0,7,0,1,0,100,1,120000,120000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Out of Combat - Despawn In 2 Minutes');

-- Arcane Chimaerok
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (12801) AND `source_type` = 0 AND `id` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(12801,0,2,0,105,0,100,0,6000,9000,7000,14000,0,30,11,20537,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Arcane Chimaerok - Area Casting - Cast \'Counterspell\'');
