
-- Quel'dorei Magewraith
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17612);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17612,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Out of Combat - Disable Combat Movement'),
(17612,0,1,2,4,0,100,513,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - On Aggro - Set Event Phase 1 (No Repeat)'),
(17612,0,2,0,61,0,100,512,0,0,0,0,0,0,11,11921,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - On Aggro - Cast \'Fireball\' (No Repeat)'),
(17612,0,3,0,9,1,100,0,0,0,4000,5000,0,40,11,11921,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Within 0-40 Range - Cast \'Fireball\' (No Repeat)'),
(17612,0,4,0,9,1,100,0,0,0,9000,13000,0,40,11,31595,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Within 0-40 Range - Cast \'Arcane Bolt\' (No Repeat)'),
(17612,0,5,6,3,0,100,513,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Between 0-15% Mana - Enable Combat Movement (No Repeat)'),
(17612,0,6,0,61,0,100,513,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Between 0-15% Mana - Set Event Phase 2 (No Repeat)'),
(17612,0,7,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Within 35-80 Range - Enable Combat Movement (No Repeat)'),
(17612,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Within 5-15 Range - Disable Combat Movement (No Repeat)'),
(17612,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Within 0-5 Range - Enable Combat Movement (No Repeat)'),
(17612,0,10,0,3,2,100,513,20,100,100,100,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Between 20-100% Mana - Set Event Phase 1 (No Repeat)'),
(17612,0,11,0,0,0,100,0,3000,6000,7000,11000,0,0,11,31604,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - In Combat - Cast \'Arcane Weakness\' (No Repeat)'),
(17612,0,12,0,9,0,100,0,0,0,16000,20000,0,30,11,11436,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - Within 0-30 Range - Cast \'Slow\' (No Repeat)'),
(17612,0,13,0,105,0,100,0,11000,18000,11000,18000,0,30,11,31596,4,0,0,0,0,7,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - In Combat - Cast \'Counterspell\' (No Repeat)'),
(17612,0,14,0,6,0,100,513,0,0,0,0,0,0,15,9595,0,0,0,0,0,16,0,0,0,0,0,0,0,0,'Quel\'dorei Magewraith - On Just Died - Quest Credit \'Control\' (No Repeat)');


-- Arcane Chimaerok
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (12801) AND `source_type` = 0 AND `id` = 2;