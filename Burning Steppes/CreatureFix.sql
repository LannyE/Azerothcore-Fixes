-- Ember Worg
-- UPDATE `smart_scripts` SET `event_param1`=6000, `event_param2`=13000, `event_param3`=17000, `event_param4`=24000 WHERE `entryorguid`=9690 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9690 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9690,0,0,0,0,0,100,0,6000,13000,17000,24000,0,11,7367,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ember Worg - In Combat - Cast \'Infected Bite\'');

-- Ember Worg
-- UPDATE `smart_scripts` SET `event_param1`=8000, `event_param2`=12000, `event_param3`=18000, `event_param4`=22000 WHERE `entryorguid`=9694 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9694 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9694,0,0,0,0,0,100,0,8000,12000,18000,22000,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Slavering Ember Worg - In Combat - Cast \'Tendon Rip\' (No Repeat) (Normal Dungeon)');

-- Ember Worg
-- UPDATE `smart_scripts` SET `event_param1`=7000, `event_param2`=11000, `event_param3`=16000, `event_param4`=20000 WHERE `entryorguid`=9697 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9697 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9697,0,0,0,0,0,100,0,7000,11000,16000,20000,0,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Giant Ember Worg - In Combat - Cast \'Rend\' (No Repeat) (Normal Dungeon)');

-- Deathmaw
-- UPDATE `smart_scripts` SET `event_param1`=8000, `event_param2`=11000, `event_param3`=13000, `event_param4`=16000 WHERE `entryorguid`=10077 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10077 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10077,0,0,0,0,0,100,0,8000,11000,13000,16000,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deathmaw - In Combat - Cast \'Tendon Rip\'');


-- Black Wyrmkin
-- UPDATE `smart_scripts` SET `event_param3`=15000, `event_param4`=19000, `action_param2`=0 WHERE `entryorguid`=7041 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7041 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7041,0,0,0,0,0,100,0,0,0,3400,4800,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Wyrmkin - In Combat CMC - Cast \'Fireball\''),
(7041,0,1,0,2,0,100,0,0,50,15000,19000,0,11,11969,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Wyrmkin - Between 0-50% Health - Cast \'Fire Nova\'');

-- Firegut Ogres
UPDATE `smart_scripts` SET `event_chance`=15 WHERE `entryorguid` IN (7033,7034,7035,9604) AND `source_type`=0 AND `id`=0;

-- Black Dragonspawn
-- UPDATE `smart_scripts` SET `event_param1`=8000, `event_param2`=12000, `event_param3`=18000, `event_param4`=24000 WHERE `entryorguid`=7040 AND `source_type`=0 AND `id`=0;
-- UPDATE `smart_scripts` SET `event_param1`=5000, `event_param2`=7000, `event_param3`=9000, `event_param4`=11000 WHERE `entryorguid`=7040 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7040 AND `source_type`=0 AND `id` IN (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7040,0,0,0,0,0,100,0,8000,12000,18000,24000,0,11,12054,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Dragonspawn - In Combat - Cast \'Rend\''),
(7040,0,1,0,0,0,100,0,5000,7000,9000,11000,0,11,15284,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Dragonspawn - In Combat - Cast \'Cleave\'');

-- Venomtip Scorpid
DELETE FROM `smart_scripts` WHERE `entryorguid`=9691 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9691,0,0,0,25,0,100,0,0,0,0,0,0,11,3616,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Venomtip Scorpid - On Reset - Cast 'Poison Proc'");

-- Deathlash Scorpid
-- UPDATE `smart_scripts` SET `event_param1`=8000, `event_param2`=12000, `event_param3`=12000, `event_param4`=18000 WHERE `entryorguid`=9695 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9695 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9695,0,0,0,0,0,100,0,8000,12000,12000,18000,0,11,5416,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deathlash Scorpid - In Combat - Cast \'Venom Sting\' (No Repeat) (Normal Dungeon)');


-- War Reaver
DELETE FROM `smart_scripts` WHERE `entryorguid`=7039 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7039,0,0,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"War Reaver - On Reset - Cast 'Thrash'"),
(7039,0,1,0,0,0,100,0,7000,11000,17000,21000,0,11,10966,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"War Reaver - In Combat - Cast 'Uppercut'");

-- Malfunctioning Reaver
DELETE FROM `smart_scripts` WHERE `entryorguid`=8981 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8981,0,0,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Malfunctioning Reaver - On Reset - Cast 'Thrash'"),
(8981,0,1,0,0,0,100,0,7000,11000,17000,21000,0,11,10966,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Malfunctioning Reaver - In Combat - Cast 'Uppercut'");

-- Thaurissan Firewalker
-- UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=7037 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7037 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7037,0,1,0,0,0,100,0,9100,12500,12300,15700,0,11,10733,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Firewalker - In Combat - Cast \'Flame Spray\'');


-- Thaurissan Spy
DELETE FROM `smart_scripts` WHERE `entryorguid`=7036 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7036,0,0,0,25,0,100,0,0,0,0,0,0,11,3616,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thaurissan Spy - On Reset - Cast 'Poison Proc'");

-- Thaurissan Agent
-- UPDATE `smart_scripts` SET `event_param3`=16000, `event_param4`=20000 WHERE `entryorguid`=7038 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7038 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7038,0,1,0,9,0,100,0,5,30,16000,20000,0,11,6685,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thaurissan Agent - Within 5-30 Range - Cast \'Piercing Shot\'');

-- Thauris Balgarr
DELETE FROM `smart_scripts` WHERE `entryorguid`=8978 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8978,0,0,0,0,0,100,0,0,0,2000,4000,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thauris Balgarr - In Combat CMC - Cast 'Shoot'"),
(8978,0,1,0,9,0,100,0,0,20,11000,15000,0,11,6533,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thauris Balgarr - Within 0-20 Range - Cast 'Net'"),
(8978,0,2,0,0,0,100,0,1000,3000,19000,23000,0,11,11802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thauris Balgarr - In Combat - Cast 'Dark Iron Land Mine'");

-- Dark Iron Land Mine
UPDATE `smart_scripts` SET `event_flags`=1 WHERE `entryorguid`=8035 AND `source_type`=0;

-- Scalding Drake
DELETE FROM `smart_scripts` WHERE `entryorguid`=7045 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7045,0,0,0,9,0,100,0,0,5,8000,16000,0,11,9573,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Scalding Drake - Within 0-5 Range - Cast 'Flame Breath'");

-- Blackrock Sorcerer
-- UPDATE `smart_scripts` SET `event_param1`=8000, `event_param2`=12000, `event_param3`=14000, `event_param4`=19000, `action_param2`=0 WHERE `entryorguid`=7026 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7026 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7026,0,1,0,0,0,100,0,8000,12000,14000,19000,0,11,20827,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Sorcerer - In Combat - Cast \'Flamestrike\'');

-- Blackrock Warlock
-- UPDATE `smart_scripts` SET `action_param2`=32 WHERE `entryorguid`=7028 AND `source_type`=0 AND `id` IN (1,2);
-- UPDATE `smart_scripts` SET `event_param3`=19000, `event_param4`=24000 WHERE `entryorguid`=7028 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7028 AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (7028,0,0,0,0,0,100,0,0,0,3300,5200,0,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Warlock - In Combat CMC - Cast \'Shadow Bolt\''),
(7028,0,1,0,0,0,100,0,2600,7300,19000,24000,0,11,13338,32,0,0,0,0,5,0,0,0,0,0,0,0,0,'Blackrock Warlock - In Combat - Cast \'Curse of Tongues\''),
(7028,0,2,0,0,0,100,0,6200,8700,5100,11000,0,11,20826,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Warlock - In Combat - Cast \'Immolate\'');

-- Gor'tesh
DELETE FROM `smart_scripts` WHERE `entryorguid`=9176 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9176,0,0,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Gor'tesh - On Reset - Cast 'Thrash'"),
(9176,0,1,0,0,0,100,0,5000,7000,12000,15000,0,11,12734,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Gor'tesh - In Combat - Cast 'Ground Smash'"),
(9176,0,2,0,0,0,100,0,9000,11000,14000,18000,0,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Gor'tesh - In Combat - Cast 'Knock Away'");

-- Flamescale Dragonspawn
-- UPDATE `smart_scripts` SET `event_param1`=8000, `event_param2`=12000, `event_param3`=13000, `event_param4`=17000 WHERE `entryorguid`=7042 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7042 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7042,0,1,0,0,0,100,0,8000,12000,13000,17000,0,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Dragonspawn - In Combat - Cast \'Hamstring\'');

-- Flamescale Wyrmkin
-- UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=7043 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7043 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7043,0,1,0,0,0,100,0,1000,5200,10800,15100,0,11,13341,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Wyrmkin - In Combat - Cast \'Fire Blast\'');

-- Searscale Drake
DELETE FROM `smart_scripts` WHERE `entryorguid`=7046 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7046,0,0,0,9,0,100,0,0,5,8000,16000,0,11,8873,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Searscale Drake - Within 0-5 Range - Cast 'Flame Breath'");

-- Flamescale Broodling
-- UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=7049 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7049 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7049,0,1,0,0,0,100,0,6700,12700,8200,13300,0,11,13342,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Broodling - In Combat - Cast \'Fire Blast\'');

-- Firetail Scorpid
-- UPDATE `smart_scripts` SET `event_param1`=6000, `event_param2`=12000, `event_param3`=12000, `event_param4`=20000, `action_param2`=0 WHERE `entryorguid`=9698 AND `source_type`=0 AND `id`=0;
-- UPDATE `smart_scripts` SET `event_param1`=12000, `event_param2`=16000, `event_param3`=14000, `event_param4`=18000, `action_param2`=32 WHERE `entryorguid`=9698 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9698 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9698,0,0,0,0,0,100,0,6000,12000,12000,20000,0,11,5416,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firetail Scorpid - In Combat - Cast \'Venom Sting\' (No Repeat) (Normal Dungeon)'),
(9698,0,1,0,0,0,100,0,12000,16000,14000,18000,0,11,15661,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firetail Scorpid - In Combat - Cast \'Immolate\' (No Repeat) (Normal Dungeon)');

-- Terrorspark
DELETE FROM `smart_scripts` WHERE `entryorguid`=10078 AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10078,0,1,0,0,0,100,0,3000,3000,3000,3000,0,11,11968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Terrorspark - In Combat - Cast 'Fire Shield'"),
(10078,0,2,3,0,0,100,0,11000,15000,33000,37000,0,11,15710,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Terrorspark - In Combat - Cast 'Summon Flamekin Torcher'");

-- Blackrock Battlemaster
DELETE FROM `smart_scripts` WHERE `entryorguid`=7029 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(7029,0,0,0,4,0,100,0,0,0,0,0,0,11,674,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Blackrock Battlemaster - On Aggro - Cast 'Dual Wield'");

-- Volchan
DELETE FROM `smart_scripts` WHERE `entryorguid`=10119 AND `source_type`=0 AND `id` IN (0,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10119,0,0,0,0,0,100,0,3000,3000,3000,3000,0,11,13376,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Volchan - In Combat - Cast 'Fire Shield'"),
(10119,0,2,0,0,0,100,0,11000,13000,9000,24000,0,11,12470,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Volchan - In Combat - Cast 'Fire Nova'");

-- Hematos
DELETE FROM `smart_scripts` WHERE `entryorguid`=8976 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(8976,0,0,0,9,0,100,0,0,5,8000,16000,0,11,9573,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Hematos - Within 0-5 Range - Cast 'Flame Breath'");

-- Scarshield Sentry
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=9044;
DELETE FROM `smart_scripts` WHERE `entryorguid`=9044 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9044,0,0,0,0,0,100,0,0,0,2000,4000,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Scarshield Sentry - Combat CMC - Cast 'Shoot'"),
(9044,0,1,0,0,0,100,0,7000,11000,11000,15000,0,11,14443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Scarshield Sentry - In Combat - Cast 'Multi-Shot'"),
(9044,0,2,0,0,0,100,0,7000,12000,10000,16000,0,11,14897,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Scarshield Sentry - In Combat - Cast 'Slowing Poison'");

-- Scarshield Grunt
DELETE FROM `smart_scripts` WHERE `entryorguid`=9043 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9043,0,0,0,0,0,100,0,3000,5000,3000,5000,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Scarshield Grunt - In Combat - Cast 'Strike'");

-- Fix bytes2 for some creatures
-- UPDATE `creature_addon` SET `bytes2`=2 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (7038,8978));
DELETE FROM `creature_addon` WHERE `guid` IN (4606,5461,5463,5465,5470);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(4606,0,0,0,2,0,0,NULL),
(5461,54610,0,0,2,0,0,NULL),
(5463,0,0,0,2,0,0,NULL),
(5465,0,0,0,2,0,0,NULL),
(5470,0,0,0,2,0,0,NULL);

-- UPDATE `creature_template_addon` SET `bytes2`=2 WHERE `entry`=9044;
DELETE FROM `creature_template_addon` WHERE `entry` = 9044;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(9044,0,0,0,2,0,0,'');