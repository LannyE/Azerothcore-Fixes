/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid in (9690,9694,9697,10077,9777,7041,7033,7034,7035,9604,7040,9691,9695,7039,8981,7037,7036,7038,8978,8035,7045,7026,7028,7042,7043,7046,7049,9698,10078,7029,10119,8976,9044,9043)
LIMIT 0, 1000

-- Date: 2022-11-16 13:14
*/
DELETE FROM `smart_scripts` WHERE `entryorguid`=7026 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7026,0,0,0,0,0,100,0,0,0,3400,4500,0,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Sorcerer - In Combat CMC - Cast \'Fireball\''),
(7026,0,1,0,0,0,100,0,8500,19300,14700,19400,0,11,20827,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Sorcerer - In Combat - Cast \'Flamestrike\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7028 AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7028,0,0,0,0,0,100,0,0,0,3300,5200,0,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Warlock - In Combat CMC - Cast \'Shadow Bolt\''),
(7028,0,1,0,0,0,100,0,2600,7300,29100,31300,0,11,13338,33,0,0,0,0,5,0,0,0,0,0,0,0,0,'Blackrock Warlock - In Combat - Cast \'Curse of Tongues\''),
(7028,0,2,0,0,0,100,0,6200,8700,5100,11000,0,11,20826,33,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Warlock - In Combat - Cast \'Immolate\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7029 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7029,0,0,0,4,0,100,1,0,0,0,0,0,11,7165,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Battlemaster - On Aggro - Cast \'7165\' (No Repeat)');

UPDATE `smart_scripts` SET `event_chance`=10 WHERE `entryorguid` IN (7033,7034,7035,9604) AND `source_type`=0 AND `id`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=7036 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7036,0,0,0,0,0,100,0,3200,3300,1200,6100,0,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Spy - In Combat - Cast \'Poison\'');
-- (7036,0,1,0,0,0,100,0,1300,7300,4800,6100,0,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Spy - In Combat - Cast \'Backstab\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7037 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7037,0,0,0,0,0,100,0,0,0,2400,4700,0,11,10452,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Firewalker - In Combat CMC - Cast \'Flame Buffet\''),
(7037,0,1,0,0,0,100,0,9100,12500,12300,15700,0,11,10733,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Firewalker - In Combat - Cast \'Flame Spray\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7038 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7038,0,0,0,0,0,100,0,0,0,2200,3900,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Agent - In Combat CMC - Cast \'Shoot\''),
(7038,0,1,0,9,0,100,0,5,30,36300,50000,0,11,6685,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Agent - Within 5-30 Range - Cast \'Piercing Shot\'');
-- (7038,0,2,0,9,0,100,0,0,5,13300,24100,0,11,12540,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Agent - Within 0-5 Range - Cast \'Gouge\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7039 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7039,0,0,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'War Reaver - In Combat - Cast \'Thrash\''),
(7039,0,1,0,0,0,100,0,11700,25800,18400,30300,0,11,10966,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'War Reaver - In Combat - Cast \'Uppercut\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7040 AND `source_type`=0 AND `id` IN (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7040,0,0,0,0,0,100,0,8700,12700,18400,34200,0,11,12054,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Dragonspawn - In Combat - Cast \'Rend\''),
(7040,0,1,0,0,0,100,0,11000,11300,8400,17000,0,11,15284,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Dragonspawn - In Combat - Cast \'Cleave\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7041 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7041,0,0,0,0,0,100,0,0,0,3400,4800,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Wyrmkin - In Combat CMC - Cast \'Fireball\''),
(7041,0,1,0,2,0,100,0,0,50,30400,45900,0,11,11969,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Wyrmkin - Between 0-50% Health - Cast \'Fire Nova\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7042 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7042,0,0,0,0,0,100,0,2000,8900,7300,16800,0,11,13340,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Dragonspawn - In Combat - Cast \'Fire Blast\''),
(7042,0,1,0,0,0,100,0,12000,21500,35500,47100,0,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Dragonspawn - In Combat - Cast \'Hamstring\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7043 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7043,0,0,0,0,0,100,0,0,0,2400,4700,0,11,9574,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Wyrmkin - In Combat CMC - Cast \'Flame Buffet\''),
(7043,0,1,0,0,0,100,0,1000,5200,10800,15100,0,11,13341,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Wyrmkin - In Combat - Cast \'Fire Blast\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7045 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7045,0,0,0,0,0,100,0,800,5200,8400,17600,0,11,9573,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scalding Drake - In Combat - Cast \'Flame Breath\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7046 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7046,0,0,0,0,0,100,0,10900,17200,8400,18100,0,11,8873,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Searscale Drake - In Combat - Cast \'Flame Breath\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7049 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7049,0,0,0,0,0,100,0,0,0,2800,3600,0,11,13375,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Broodling - In Combat CMC - Cast \'Fireball\''),
(7049,0,1,0,0,0,100,0,6700,12700,8200,13300,0,11,13342,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Broodling - In Combat - Cast \'Fire Blast\'');
-- (7049,0,2,0,8,0,100,513,16007,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Flamescale Broodling - On Spellhit \'Draco-Incarcinatrix 900\' - Set Phase 1'),
-- (7049,0,3,0,6,1,100,513,0,0,0,0,0,11,16027,7,0,0,0,0,1,0,0,0,0,0,0,0,0,'Flamescale Broodling - On Just Died - Cast \'Create Broodling Essence\' (Phase 1)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8035 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8035,0,0,1,60,0,100,257,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - On Update - Say Line 0'),
(8035,0,1,0,61,0,100,0,0,0,0,0,0,11,11816,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - On Update - Cast Land Mine Arming'),
(8035,0,2,0,60,0,100,257,5000,5000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - On Update - Say Line 1'),
(8035,0,3,4,60,0,100,257,10000,10000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - On Update - Say Line 2'),
(8035,0,4,5,61,0,100,512,0,0,0,0,0,28,11816,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - On Update - Remove Aura Land Mine Arming'),
(8035,0,5,0,61,0,100,512,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - Out of Combat - Set Event Phase'),
(8035,0,6,7,9,1,100,0,0,6,0,0,0,11,4043,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - Within 0-6 Range - Cast Spell'),
(8035,0,7,0,61,0,100,512,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Land Mine - Within 0-6 Range - Despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8976 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8976,0,0,0,0,0,100,0,800,5200,8400,17600,0,11,9573,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hematos - In Combat - Cast \'Flame Breath\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8978 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8978,0,0,0,0,0,100,0,0,0,2300,3900,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thauris Balgarr - In Combat CMC - Cast \'Shoot\''),
(8978,0,1,0,0,0,100,0,7000,11000,21700,35200,0,11,6533,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thauris Balgarr - In Combat - Cast \'Net\''),
(8978,0,2,0,0,0,100,0,1000,3000,19200,32700,0,11,11802,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thauris Balgarr - In Combat - Cast \'Dark Iron Land Mine\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8981 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8981,0,1,0,0,0,100,0,11700,25800,18400,30300,0,11,10966,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Malfunctioning Reaver - In Combat - Cast \'Uppercut\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9043 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9043,0,0,0,9,0,100,2,0,0,0,0,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarshield Grunt - Within 0-0 Range - Cast \'Strike\' (Phase 1) (No Repeat) (Normal Dungeon)'),
(9043,0,1,0,9,0,100,0,0,0,0,0,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarshield Grunt - Within 0-0 Range - Cast \'Strike\' (Phase 1) (No Repeat) (Normal Dungeon)');

UPDATE `creature_template` SET `AIName`="" WHERE `entry`=9044;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9044 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=9176 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9176,0,0,0,0,0,100,0,10100,12000,18900,23400,0,11,12734,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gor\'tesh - In Combat - Cast \'Ground Smash\' (Normal Dungeon)'),
(9176,0,1,0,0,0,100,0,17300,20800,38600,44300,0,11,10101,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gor\'tesh - In Combat - Cast \'Knock Away\' (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9690 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9690,0,0,0,0,0,100,0,13200,28900,22000,48900,0,11,7367,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ember Worg - In Combat - Cast \'Infected Bite\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9691 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9691,0,0,0,0,0,100,0,14300,15600,9000,12100,0,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Venomtip Scorpid - In Combat - Cast \'Poison\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9694 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9694,0,0,0,0,0,100,0,15800,17500,30200,46300,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Slavering Ember Worg - In Combat - Cast \'Tendon Rip\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9695 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9695,0,0,0,0,0,100,0,11000,12400,12400,18100,0,11,5416,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deathlash Scorpid - In Combat - Cast \'Venom Sting\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9697 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9697,0,0,0,0,0,100,0,13900,15700,15700,20700,0,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Giant Ember Worg - In Combat - Cast \'Rend\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=9698 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9698,0,0,0,0,0,100,0,6300,14700,12300,21800,0,11,5416,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firetail Scorpid - In Combat - Cast \'Venom Sting\' (No Repeat) (Normal Dungeon)'),
(9698,0,1,0,0,0,100,0,12700,21000,11400,21600,0,11,15661,33,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firetail Scorpid - In Combat - Cast \'Immolate\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=10077 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10077,0,0,0,0,0,100,0,10000,19100,25300,46800,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deathmaw - In Combat - Cast \'Tendon Rip\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=10078 AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (10078,0,0,0,0,0,100,0,0,0,3000,3400,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Terrorspark - In Combat - Cast \'Fireball\''),
(10078,0,1,0,0,0,100,0,4800,29300,2300,9700,0,11,11968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrorspark - In Combat - Cast \'Fire Shield\''),
(10078,0,2,3,0,0,100,0,10900,23300,33000,53400,0,11,15710,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrorspark - In Combat - Cast \'Summon Flamekin Torcher\'');
-- (10078,0,3,0,61,0,100,0,0,0,0,0,0,11,15711,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Terrorspark - On Data Set 1 1 - Cast \'Summon Flamekin Rager\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=10119 AND `source_type`=0 AND `id` IN (0,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10119,0,0,0,1,0,100,1,1000,1000,0,0,0,11,13376,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Volchan - Out of Combat - Cast \'Fire Shield\''),
-- (10119,0,1,0,0,0,100,0,6100,8300,13300,29600,0,11,15743,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Volchan - In Combat - Cast \'Flamecrack\''),
(10119,0,2,0,0,0,100,0,10800,13100,9500,24100,0,11,12470,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Volchan - In Combat - Cast \'Fire Nova\'');

DELETE FROM `creature_addon` WHERE `guid` IN (4606,5461,5463,5465,5470);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(4606,0,0,0,4097,0,0,NULL),
(5461,54610,0,0,0,0,0,NULL),
(5463,0,0,0,4097,0,0,NULL),
(5465,0,0,0,4097,0,0,NULL),
(5470,0,0,0,4097,0,0,NULL);

DELETE FROM `creature_template_addon` WHERE `entry` = 9044;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(9044,0,0,0,4097,0,0,'');