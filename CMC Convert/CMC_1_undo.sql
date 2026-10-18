/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (26670,13197,13236,14327,14349,16810,18114,18450,18539,18541,18685,19643,19657,20135,24685)
LIMIT 0, 1000

-- Date: 2024-08-23 19:52
*/
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26670,13197,13236,14349,16810,18114,18450,18539,18541,19643,20135) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 


(13197,0,0,0,25,0,100,0,0,0,0,0,0,0,11,35187,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fel Lash - On Reset - Cast Arcane Explosion Proc'),
(13197,0,1,0,0,0,100,0,0,4000,5000,7000,0,0,11,15230,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Fel Lash - In Combat - Cast Arcane Bolt'),


(13236,0,0,1,1,0,100,515,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Out of Combat - Disable Combat Movement (No Repeat) (Normal Dungeon)'),
(13236,0,1,0,61,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Out of Combat - Set Event Phase 0 (No Repeat) (Normal Dungeon)'),
(13236,0,2,3,4,0,100,3,0,0,0,0,0,0,11,15234,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Primalist Thurloga - On Aggro - Cast \'Lightning Bolt\' (No Repeat) (Normal Dungeon)'),
(13236,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - On Aggro - Increment Phase By 1 (No Repeat) (Normal Dungeon)'),
(13236,0,4,0,9,1,100,2,0,0,3400,4800,0,40,11,15234,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Primalist Thurloga - Within 0-40 Range - Cast \'Lightning Bolt\' (No Repeat) (Normal Dungeon)'),
(13236,0,5,6,3,1,100,515,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,7,0,9,1,100,515,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,8,0,9,1,100,515,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,9,0,9,1,100,515,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,10,0,3,2,100,514,30,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,11,0,0,0,100,2,9000,13000,11000,15000,0,0,11,16006,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Primalist Thurloga - In Combat - Cast \'Chain Lightning\' (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,12,0,0,0,100,2,7000,8000,14000,17000,0,0,11,15616,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Primalist Thurloga - In Combat - Cast \'Flame Shock\' (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,13,0,2,0,100,2,0,50,48000,60000,0,0,11,15786,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Between 0-50% Health - Cast \'Earthbind Totem\' (Phase 1) (No Repeat) (Normal Dungeon)'),
(13236,0,14,0,2,0,100,2,0,30,15000,22000,0,0,11,15982,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Primalist Thurloga - Between 0-30% Health - Cast \'Healing Wave\' (Phase 1) (No Repeat) (Normal Dungeon)'),



(14349,0,0,0,0,0,100,0,0,2000,3000,3500,0,0,11,14034,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Lethtendris - In Combat - Cast Fireball'),
(14349,0,1,0,0,0,100,0,3000,7000,11000,16000,0,0,11,22713,0,0,0,0,0,5,20,0,0,0,0,0,0,0,'Lethtendris - In Combat - Cast Flame Buffet'),
(14349,0,2,0,106,0,100,0,10000,15000,10000,15000,0,8,11,15744,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lethtendris - Within Range 0-8yd - Cast Blast Wave'),



(16810,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Out of Combat - Disable Combat Movement (Phase 1)'),
(16810,0,1,2,4,0,100,1,0,0,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - On Aggro - Cast \'Shadow Bolt\' (No Repeat)'),
(16810,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - On Aggro - Increment Phase By 1 (No Repeat)'),
(16810,0,3,0,9,1,100,0,0,0,2400,3800,0,40,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Within 0-40 Range - Cast \'Shadow Bolt\' (No Repeat)'),
(16810,0,4,5,3,1,100,513,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(16810,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(16810,0,6,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(16810,0,7,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(16810,0,8,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(16810,0,9,0,3,2,100,512,30,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(16810,0,10,0,0,0,100,0,7000,11000,9000,14000,0,0,11,16583,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - In Combat - Cast \'Shadow Shock\' (Phase 1) (No Repeat)'),
(16810,0,11,0,2,0,100,0,0,30,30000,30000,0,0,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bonechewer Backbreaker - Between 0-30% Health - Cast \'Bloodlust\' (Phase 1) (No Repeat)'),




(18114,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Out of Combat - Disable Combat Movement (No Repeat)'),
(18114,0,1,2,4,0,100,1,0,0,0,0,0,0,11,12550,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - On Aggro - Cast \'Lightning Shield\' (No Repeat)'),
(18114,0,2,3,61,0,100,0,0,0,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Feralfen Mystic - On Aggro - Cast \'Lightning Bolt\' (No Repeat)'),
(18114,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - On Aggro - Increment Phase By 1 (No Repeat)'),
(18114,0,4,0,9,1,100,0,0,0,2400,3800,0,40,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Feralfen Mystic - Within 0-40 Range - Cast \'Lightning Bolt\' (No Repeat)'),
(18114,0,5,6,3,1,100,513,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(18114,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(18114,0,7,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18114,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(18114,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18114,0,10,0,3,2,100,512,30,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(18114,0,11,12,2,0,100,513,0,15,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Between 0-15% Health - Set Event Phase 3 (No Repeat)'),
(18114,0,12,13,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Feralfen Mystic - Between 0-15% Health - Enable Combat Movement (No Repeat)'),
(18114,0,13,0,61,0,100,512,0,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Feralfen Mystic - Between 0-15% Health - Flee For Assist (No Repeat)'),



(18450,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Out of Combat - Disable Combat Movement (No Repeat)'),
(18450,0,1,0,0,0,100,1,0,0,0,0,0,0,11,32924,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - In Combat - Cast \'Power of Kran\'aish\' (No Repeat)'),
(18450,0,2,3,4,0,100,1,0,0,0,0,0,0,11,26098,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shienor Sorcerer - On Aggro - Cast \'Lightning Bolt\' (No Repeat)'),
(18450,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - On Aggro - Increment Phase By 1 (No Repeat)'),
(18450,0,4,0,9,1,100,0,0,0,2400,3800,0,40,11,26098,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Within 0-40 Range - Cast \'Lightning Bolt\' (No Repeat)'),
(18450,0,5,6,3,1,100,513,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(18450,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(18450,0,7,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18450,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(18450,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18450,0,10,0,3,4,100,512,30,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(18450,0,11,0,0,0,100,0,6000,10000,12000,16000,0,0,11,32907,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shienor Sorcerer - In Combat - Cast \'Arakkoa Blast\' (Phase 1) (No Repeat)'),
(18450,0,12,0,0,0,100,0,10000,14000,18000,25000,0,0,11,6728,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Shienor Sorcerer - In Combat - Cast \'Enveloping Winds\' (Phase 1) (No Repeat)'),
(18450,0,13,14,2,0,100,513,0,15,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Between 0-15% Health - Set Event Phase 3 (No Repeat)'),
(18450,0,14,15,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Between 0-15% Health - Enable Combat Movement (No Repeat)'),
(18450,0,15,0,61,0,100,512,0,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shienor Sorcerer - Between 0-15% Health - Flee For Assist (No Repeat)'),


(18539,0,0,0,0,0,100,0,0,1000,3000,4000,0,0,11,26098,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ashkaz - In Combat - Cast Lightning Bolt'),
(18539,0,1,0,0,0,100,0,10000,15000,15000,25000,0,0,11,6728,0,0,0,0,0,6,20,0,0,0,0,0,0,0,'Ashkaz - In Combat - Cast Enveloping Winds'),
(18539,0,2,0,0,0,100,0,7000,8000,12000,15000,0,0,11,32907,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ashkaz - In Combat - Cast Arakkoa Blast'),
(18539,0,3,0,4,0,100,0,0,0,0,0,0,0,11,32924,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ashkaz - In Combat - Cast Power of Kran\'aish'),


(18541,0,0,0,1,0,100,513,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Out of Combat - Enable Combat Movement (No Repeat)'),
(18541,0,1,0,0,0,100,1,0,0,0,0,0,0,11,32924,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - In Combat - Cast \'Power of Kran\'aish\' (No Repeat)'),
(18541,0,2,3,4,0,100,1,0,0,0,0,0,0,11,38465,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Urdak - On Aggro - Cast \'Lightning Bolt\' (No Repeat)'),
(18541,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - On Aggro - Increment Phase By 1 (No Repeat)'),
(18541,0,4,0,9,1,100,0,0,0,2400,3800,0,40,11,38465,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Urdak - Within 0-40 Range - Cast \'Lightning Bolt\' (No Repeat)'),
(18541,0,5,6,3,1,100,513,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(18541,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(18541,0,7,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18541,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(18541,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(18541,0,10,0,3,2,100,512,30,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(18541,0,11,0,0,0,100,0,6000,10000,12000,16000,0,0,11,32907,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Urdak - In Combat - Cast \'Arakkoa Blast\' (Phase 1) (No Repeat)'),
(18541,0,12,0,0,0,100,0,10000,14000,18000,25000,0,0,11,6728,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Urdak - In Combat - Cast \'Enveloping Winds\' (Phase 1) (No Repeat)'),
(18541,0,13,14,2,0,100,513,0,15,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Between 0-15% Health - Set Event Phase 3 (No Repeat)'),
(18541,0,14,15,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Urdak - Between 0-15% Health - Enable Combat Movement (No Repeat)'),
(18541,0,15,0,61,0,100,512,0,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Urdak - Between 0-15% Health - Flee For Assist (No Repeat)'),



(19643,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Out of Combat - Disable Combat Movement (Dungeon)'),
(19643,0,1,0,1,0,100,0,1000,1000,600000,600000,0,0,11,35917,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Out of Combat - Cast \'Fiery Intellect\' (Dungeon)'),
(19643,0,2,3,4,0,100,1,0,0,0,0,0,0,11,38391,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Astromancer - On Aggro - Cast \'Scorch\' (No Repeat)'),
(19643,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - On Aggro - Increment Phase By 1 (No Repeat)'),
(19643,0,4,0,9,1,100,0,0,0,4500,6000,0,30,11,38391,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Within 0-30 Range - Cast \'Scorch\' (No Repeat)'),
(19643,0,5,6,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(19643,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(19643,0,7,0,9,1,100,513,0,0,0,0,25,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Within 25-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(19643,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(19643,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(19643,0,10,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(19643,0,11,0,9,0,100,0,0,0,12000,16000,0,30,11,35914,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Sunfury Astromancer - Within 0-30 Range - Cast \'Astral Focus\' (Phase 1) (No Repeat)'),


(20135,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Out of Combat - Disable Combat Movement (No Repeat)'),
(20135,0,1,0,1,0,100,0,1000,1000,600000,600000,0,0,11,35917,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Out of Combat - Cast \'Fiery Intellect\' (No Repeat)'),
(20135,0,2,3,4,0,100,1,0,0,0,0,0,0,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - On Aggro - Cast \'Fireball\' (No Repeat)'),
(20135,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - On Aggro - Increment Phase By 1 (No Repeat)'),
(20135,0,4,0,9,1,100,0,0,0,4500,6000,0,40,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Within 0-40 Range - Cast \'Fireball\' (No Repeat)'),
(20135,0,5,6,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(20135,0,6,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(20135,0,7,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(20135,0,8,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(20135,0,9,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(20135,0,10,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(20135,0,11,0,106,0,100,0,11000,15000,11000,15000,0,8,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Arch Mage - Within 0-8 Range - Cast \'Frost Nova\' (Phase 1) (No Repeat)'),


(26670,0,0,1,1,0,100,518,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Out of Combat - Disable Combat Movement (Dungeon)'),
(26670,0,1,0,61,0,100,512,0,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - On Aggro - Stop Attacking (No Repeat) (Normal Dungeon)'),
(26670,0,2,3,4,0,100,3,0,0,0,0,0,0,11,48854,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - On Aggro - Cast \'Shoot\' (No Repeat) (Normal Dungeon)'),
(26670,0,3,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 5-30 Range - Increment Phase By 1 (Phase 1) (Normal Dungeon)'),
(26670,0,4,5,9,1,100,2,0,0,5000,8000,5,30,11,48854,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 5-30 Range - Cast \'Shoot\' (Phase 1) (Normal Dungeon)'),
(26670,0,5,0,61,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - On Aggro - Set Sheath Ranged (No Repeat) (Heroic Dungeon)'),
(26670,0,6,7,4,0,100,5,0,0,0,0,0,0,11,59241,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - On Aggro - Cast \'Shoot\' (No Repeat) (Heroic Dungeon)'),
(26670,0,7,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - On Gossip Option 0 Selected - Increment Phase By 1'),
(26670,0,8,9,9,1,100,4,0,0,5000,8000,5,30,11,59241,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 5-30 Range - Cast \'Shoot\' (Phase 1) (Heroic Dungeon)'),
(26670,0,9,0,61,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 5-30 Range - Set Sheath Ranged (Phase 1) (Heroic Dungeon)'),
(26670,0,10,11,9,1,100,518,0,0,0,0,25,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 25-80 Range - Enable Combat Movement (Phase 1) (Dungeon)'),
(26670,0,11,0,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 25-80 Range - Start Attacking (Phase 1) (Dungeon)'),
(26670,0,12,13,9,1,100,518,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 0-5 Range - Enable Combat Movement (Phase 1) (Dungeon)'),
(26670,0,13,14,61,0,100,512,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 0-5 Range - Set Sheath Melee (Phase 1) (Dungeon)'),
(26670,0,14,0,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 0-5 Range - Start Attacking (Phase 1) (Dungeon)'),
(26670,0,15,16,9,1,100,518,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 5-15 Range - Disable Combat Movement (Phase 1) (Dungeon)'),
(26670,0,16,0,61,0,100,512,0,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - Within 5-15 Range - Stop Attacking (Phase 1) (Dungeon)'),
(26670,0,17,18,0,0,100,2,9000,14000,22000,26000,0,0,11,48871,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Cast \'Aimed Shot\' (Normal Dungeon)'),
(26670,0,18,0,61,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Set Sheath Ranged (Normal Dungeon)'),
(26670,0,19,20,0,0,100,4,9000,14000,22000,26000,0,0,11,59243,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Cast \'Aimed Shot\' (Heroic Dungeon)'),
(26670,0,20,0,61,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Set Sheath Ranged (Heroic Dungeon)'),
(26670,0,21,22,0,0,100,2,14000,17000,24000,27000,0,0,11,48872,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Cast \'Multi-Shot\' (Normal Dungeon)'),
(26670,0,22,0,61,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Set Sheath Ranged (Normal Dungeon)'),
(26670,0,23,24,0,0,100,4,14000,17000,24000,27000,0,0,11,59244,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Cast \'Multi-Shot\' (Heroic Dungeon)'),
(26670,0,24,0,61,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - In Combat - Set Sheath Ranged (Heroic Dungeon)'),
(26670,0,25,0,7,0,100,6,0,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ymirjar Flesh Hunter - On Evade - Set Sheath Melee (Dungeon)');
