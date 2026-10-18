-- Highborne Apparition
DELETE FROM `smart_scripts` WHERE `entryorguid`=6116 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6116,0,0,0,2,0,100,1,0,15,0,0,0,11,12542,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Highborne Apparition - Between 0-15% Health - Cast Fear (No Repeat)");

-- Highborne Lichling
DELETE FROM `smart_scripts` WHERE `entryorguid`=6117 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6117,0,0,0,1,0,100,0,1000,1000,1800000,1800000,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Highborne Lichling - Out of Combat - Cast Frost Armor"),
(6117,0,1,0,0,0,100,0,0,0,3400,4800,0,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Highborne Lichling - In Combat CMC - Cast Frostbolt");

-- Varo'then's Ghost
DELETE FROM `smart_scripts` WHERE `entryorguid`=6118 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6118,0,0,0,0,0,100,0,3000,6000,22000,25000,0,11,21007,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Varo'then's Ghost - In Combat - Cast Curse of Weakness");

-- Haldarr Trickster
DELETE FROM `smart_scripts` WHERE `entryorguid`=6126 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6126,0,0,0,9,0,100,0,0,10,20000,35000,0,11,7098,32,0,0,0,0,2,0,0,0,0,0,0,0,0,"Haldarr Trickster - Within 0-10 Range - Cast Curse of Mending");

-- Haldarr Felsworn
DELETE FROM `smart_scripts` WHERE `entryorguid`=6127 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6127,0,1,0,0,0,100,0,0,0,3400,4800,0,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Haldarr Felsworn - In Combat - Cast Shadow Bolt");

-- Draconic Magelord
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6129;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6129 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6129,0,0,0,0,0,100,0,0,0,3400,4800,0,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Draconic Magelord - In Combat - Cast Frostbolt"),
(6129,0,1,0,9,0,100,0,0,20,7000,11000,0,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Draconic Magelord - Within 0-20 Range - Cast Frost Shock");

-- Draconic Mageweaver
DELETE FROM `smart_scripts` WHERE `entryorguid`=6131 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6131,0,0,0,0,0,100,0,0,0,3400,4800,0,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Draconic Mageweaver - In Combat - Cast Frostbolt"),
(6131,0,1,0,0,0,100,0,9000,12000,15000,18000,0,11,12557,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Draconic Mageweaver - In Combat - Cast Cone of Cold");

-- Arkkoran Pincer
DELETE FROM `smart_scripts` WHERE `entryorguid`=6137 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6137,0,0,0,0,0,100,0,5000,8000,17000,22000,0,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Arkkoran Pincer - In Combat - Cast Rend");

-- Arkkoran Oracle
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6138;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6138 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6138,0,0,0,0,0,100,0,4000,7000,6000,9000,0,11,11824,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Arkkoran Oracle - In Combat - Cast Shock"),
(6138,0,1,0,14,0,100,0,1500,40,16000,21000,0,11,11986,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Arkkoran Oracle - Friendly At 1500 Health - Cast Healing Wave"),
(6138,0,2,0,1,0,100,0,500,1000,600000,600000,0,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Arkkoran Oracle - Out of Combat - Cast Lightning Shield"),
(6138,0,3,0,16,0,100,0,12550,1,15000,30000,0,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Arkkoran Oracle - On Friendly Unit Missing Buff Lightning Shield - Cast Lightning Shield");

-- Servant of Arkkoroc
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6143;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6143 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6143,0,0,0,0,0,100,0,5000,7000,9000,13000,0,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Servant of Arkkoroc - In Combat - Cast Trample");

-- Son of Arkkoroc
DELETE FROM `smart_scripts` WHERE `entryorguid`=6144 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6144,0,0,0,0,0,100,0,8000,10000,12000,16000,0,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Son of Arkkoroc - In Combat - Cast Knock Away");

-- Cliff Thunderer
DELETE FROM `smart_scripts` WHERE `entryorguid`=6147 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6147,0,0,0,0,0,100,0,7000,10000,11000,14000,0,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Cliff Walker - In Combat - Cast Thunderclap");

-- Cliff Walker
DELETE FROM `smart_scripts` WHERE `entryorguid`=6148 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6148,0,0,0,0,0,100,0,7000,10000,13000,17000,0,11,11876,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Cliff Walker - In Combat - Cast War Stomp");

-- Timbermaw Pathfinder
DELETE FROM `smart_scripts` WHERE `entryorguid`=6184 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6184,0,0,0,0,0,100,0,5000,8000,22000,25000,0,11,16498,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timbermaw Pathfinder - In Combat - Cast Faerie Fire"),
(6184,0,1,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Timbermaw Warrior
DELETE FROM `smart_scripts` WHERE `entryorguid`=6185 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6185,0,0,0,0,0,100,0,5000,7000,6000,9000,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timbermaw Warrior - In Combat - Cast Strike"),
(6185,0,1,0,0,0,100,0,8000,11000,19000,23000,0,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timbermaw Warrior - In Combat - Cast Rend"),
(6185,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Warrior - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Timbermaw Totemic
DELETE FROM `smart_scripts` WHERE `entryorguid`=6186 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6186,0,0,0,0,0,100,0,5000,8000,32000,36000,0,11,8262,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timbermaw Totemic - In Combat - Cast Elemental Protection Totem"),
(6186,0,1,0,2,0,100,0,0,50,30000,34000,0,11,5605,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timbermaw Totemic - Between 0-50% Health - Cast Healing Ward"),
(6186,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Totemic - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Timbermaw Den Watcher
DELETE FROM `smart_scripts` WHERE `entryorguid`=6187 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6187,0,0,0,0,0,100,0,2000,5000,13000,18000,0,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Den Watcher - In Combat - Cast Battle Shout"),
(6187,0,1,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Den Watcher - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Timbermaw Shaman
DELETE FROM `smart_scripts` WHERE `entryorguid`=6188 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6188,0,0,0,0,0,100,0,0,0,3400,4800,0,11,20295,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timbermaw Shaman - In Combat - Cast Lightning Bolt"),
(6188,0,1,0,0,0,100,0,8000,14000,40000,45000,0,11,6535,0,0,0,0,0,5,0,0,0,0,0,0,0,0,"Timbermaw Shaman - In Combat - Cast Lightning Cloud"),
(6188,0,2,0,14,0,100,0,1000,40,15000,18000,0,11,11986,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Timbermaw Shaman - Friendly At 1000 Health - Cast Healing Wave"),
(6188,0,3,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Shaman - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Timbermaw Ursa
DELETE FROM `smart_scripts` WHERE `entryorguid`=6189 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6189,0,0,0,0,0,100,0,9000,12000,16000,21000,0,11,8078,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Ursa - In Combat - Cast Thunderclap"),
(6189,0,1,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Timbermaw Ursa - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Blood Elf Surveyor
DELETE FROM `smart_scripts` WHERE `entryorguid`=6198 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6198,0,0,0,0,0,100,0,6000,9000,10000,16000,0,11,11969,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Blood Elf Surveyor - In Combat - Cast Fire Nova"),
(6198,0,1,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Blood Elf Surveyor - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Blood Elf Reclaimer
DELETE FROM `smart_scripts` WHERE `entryorguid`=6199 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6199,0,0,0,0,0,100,0,0,0,3400,4800,0,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Blood Elf Reclaimer - In Combat - Cast Fireball"),
(6199,0,1,0,2,0,100,0,0,50,15000,21000,0,11,11642,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Blood Elf Reclaimer - Between 0-50% Health - Cast Heal"),
(6199,0,2,0,14,0,100,0,1200,40,12000,17000,0,11,11640,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Blood Elf Reclaimer - Friendly At 1200 Health - Cast Renew"),
(6199,0,3,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Blood Elf Reclaimer - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Legashi Satyr
DELETE FROM `smart_scripts` WHERE `entryorguid`=6200 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6200,0,0,0,0,0,100,0,5000,8000,9000,14000,0,11,11981,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Legashi Satyr - In Combat - Cast Mana Burn");

-- Legashi Rogue
DELETE FROM `smart_scripts` WHERE `entryorguid`=6201 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6201,0,0,0,67,0,100,0,5000,8000,0,0,0,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Legashi Rogue - On Behind Target - Cast Backstab"),
(6201,0,1,0,0,0,100,0,5000,7000,9000,12000,0,11,12540,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Legashi Rogue - In Combat - Cast Gouge");

-- Legashi Hellcaller
DELETE FROM `smart_scripts` WHERE `entryorguid`=6202 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6202,0,0,0,0,0,100,0,0,0,3400,4800,0,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Legashi Hellcaller - In Combat - Cast Fireball"),
(6202,0,1,0,0,0,100,0,8000,13000,18000,25000,0,11,11990,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Legashi Hellcaller - In Combat - Cast Rain of Fire");

-- Young Wavethrasher
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6347;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6347 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6347,0,0,0,25,0,100,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Young Wavethrasher - On Reset - Cast Thrash");

-- Wavethrasher
DELETE FROM `smart_scripts` WHERE `entryorguid`=6348 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6348,0,0,0,25,0,100,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Wavethrasher - On Reset - Cast Thrash");

-- Great Wavethrasher
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6349;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6349 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6349,0,0,0,25,0,100,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Great Wavethrasher - On Reset - Cast Thrash");

-- Makrinni Razorclaw
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6350;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6350 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6350,0,0,0,0,0,100,0,6000,9000,7000,11000,0,11,13444,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Makrinni Razorclaw - In Combat - Cast Sunder Armor");

-- Storm Bay Oracle
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6351;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6351 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6351,0,0,0,0,0,100,0,0,0,3400,4800,0,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Storm Bay Oracle - In Combat - Cast Lightning Bolt"),
(6351,0,1,0,14,0,100,0,1400,40,15000,18000,0,11,11642,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Storm Bay Oracle - Friendly At 1400 Health - Cast Heal"),
(6351,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Storm Bay Oracle - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Makrinni Scrabbler
DELETE FROM `smart_scripts` WHERE `entryorguid`=6370 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6370,0,0,0,0,0,100,0,5000,7000,9000,12000,0,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Makrinni Scrabbler - In Combat - Cast Frost Shock");

-- Storm Bay Warrior
DELETE FROM `smart_scripts` WHERE `entryorguid`=6371 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6371,0,0,0,0,0,100,0,5000,7000,6000,9000,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Storm Bay Warrior - In Combat - Cast Strike"),
(6371,0,1,0,0,0,100,0,9000,11000,12000,15000,0,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Storm Bay Warrior - In Combat - Cast Pummel"),
(6371,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Storm Bay Warrior - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Makrinni Snapclaw
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6372;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6372 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6372,0,0,0,0,0,100,0,3000,5000,18000,22000,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Makrinni Snapclaw - In Combat - Cast Tendon Rip");

-- Thunderhead Hippogryph
DELETE FROM `smart_scripts` WHERE `entryorguid`=6375 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6375,0,0,0,9,0,100,0,0,20,8000,12000,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thunderhead Hippogryph - Within 0-20 Range - Cast Shock");

-- Thunderhead Stagwing
DELETE FROM `smart_scripts` WHERE `entryorguid`=6377 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6377,0,0,0,9,0,100,0,0,20,8000,12000,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thunderhead Stagwing - Within 0-20 Range - Cast Shock"),
(6377,0,1,0,0,0,100,0,7000,10000,12000,17000,0,11,11019,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thunderhead Stagwing - In Combat - Cast Wing Flap");

-- Thunderhead Skystormer
DELETE FROM `smart_scripts` WHERE `entryorguid`=6378 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6378,0,0,0,9,0,100,0,0,20,8000,12000,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thunderhead Skystormer - Within 0-20 Range - Cast Shock"),
(6378,0,1,0,0,0,100,0,9000,16000,40000,45000,0,11,6535,0,0,0,0,0,5,0,0,0,0,0,0,0,0,"Thunderhead Skystormer - In Combat - Cast Lightning Cloud");

-- Thunderhead Patriarch
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6379;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6379 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6379,0,0,0,0,0,100,0,5000,9000,8000,12000,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thunderhead Patriarch - In Combat - Cast Shock"),
(6379,0,1,0,4,0,100,0,0,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Thunderhead Patriarch - On Aggro - Cast Rushing Charge");

-- Thunderhead Consort
DELETE FROM `smart_scripts` WHERE `entryorguid`=6380 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6380,0,0,0,9,0,100,0,0,20,8000,12000,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thunderhead Consort - Within 0-20 Range - Cast Shock"),
(6380,0,1,0,0,0,100,0,5000,9000,9000,13000,0,11,36594,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Thunderhead Consort - In Combat - Cast Lightning Breath");

-- Monnos the Elder
DELETE FROM `smart_scripts` WHERE `entryorguid`=6646 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6646,0,0,0,0,0,100,0,10000,12000,14000,18000,0,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Monnos the Elder - In Combat - Cast Knock Away"),
(6646,0,1,0,0,0,100,0,7000,9000,9000,13000,0,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Monnos the Elder - In Combat - Cast Trample"),
(6646,0,2,0,0,0,100,0,14000,17000,15000,21000,0,11,11876,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Monnos the Elder - In Combat - Cast War Stomp");

-- Magister Hawkhelm
DELETE FROM `smart_scripts` WHERE `entryorguid`=6647 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6647,0,0,0,0,0,100,0,0,0,2300,3900,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Magister Hawkhelm - In Combat - Cast Shoot"),
(6647,0,1,0,0,0,100,0,4000,6000,9000,13000,0,11,18651,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Magister Hawkhelm - In Combat - Cast Multi-Shot"),
(6647,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Magister Hawkhelm - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Antilos
DELETE FROM `smart_scripts` WHERE `entryorguid`=6648 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6648,0,0,0,9,0,100,0,0,5,11000,15000,0,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Antilos - Within 0-5 Range - Cast Cleave"),
(6648,0,1,0,0,0,100,0,7000,10000,13000,20000,0,11,13445,0,0,0,0,0,5,0,0,0,0,0,0,0,0,"Antilos - In Combat - Cast Rend"),
(6648,0,2,0,0,0,100,0,11000,15000,12000,16000,0,11,5708,0,0,0,0,0,5,0,0,0,0,0,0,0,0,"Antilos - In Combat - Cast Swoop");

-- Random movement for Antilos
UPDATE `creature` SET `MovementType`=1, `wander_distance`=8 WHERE `guid`=51851;

-- Lady Sesspira
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=6649;
DELETE FROM `smart_scripts` WHERE `entryorguid`=6649 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6649,0,0,0,0,0,100,0,0,0,2300,3900,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Lady Sesspira - In Combat - Cast Shoot"),
(6649,0,1,0,0,0,100,0,4000,6000,8000,12000,0,11,15495,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Lady Sesspira - In Combat - Cast Explosive Shot"),
(6649,0,2,0,0,0,100,0,11000,15000,9000,16000,0,11,20299,0,0,0,0,0,5,0,0,0,0,0,0,0,0,"Lady Sesspira - In Combat - Cast Forked Lightning"),
(6649,0,3,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Lady Sesspira - Between 0-15% Health - Flee For Assist (No Repeat)");

UPDATE `creature` SET `MovementType` = 2, `wander_distance` = 0 WHERE `guid` = 51852;

DELETE FROM `creature_addon` WHERE `guid` = 51852;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(51852,518520,0,0,4097,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` = 518520;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(518520,1,3449.647,-5076.564,83.911,0,0,0,0,100,0), -- Doorway of ruins
(518520,2,3423.058,-5075.428,82.097,0,0,0,0,100,0), -- Crossroads
(518520,3,3396.919,-5024.721,88.082,0,0,0,0,100,0), -- Enter valley
(518520,4,3350.985,-4992.202,89.49,0,0,0,0,100,0),
(518520,5,3337.18,-4995.685,89.485,0,5000,0,0,100,0), -- End of valley path
(518520,6,3350.985,-4992.202,89.49,0,0,0,0,100,0),
(518520,7,3396.919,-5024.721,88.082,0,0,0,0,100,0),
(518520,8,3423.058,-5075.428,82.097,0,0,0,0,100,0), -- Crossroads
(518520,9,3386.614,-5134.043,82.867,3.014,5000,0,0,100,0), -- End of Path to Ruins
-- (518520,10,3423.058,-5075.428,82.097,0,0,0,0,100,0), -- Crossroads
(518520,10,3430.896,-5165.507,82.377,0,0,0,0,100,0), -- Better Path
(518520,11,3414.292,-5242.18,84.908,3.685,5000,0,0,100,0), -- Ruins Archway end
(518520,12,3516.71,-5163.906,81.15,0,0,0,0,100,0),
-- (518520,13,3520.117,-5136.793,81.468,0,0,0,0,100,0),
-- (518520,14,3529.121,-5119.622,81.605,0,0,0,0,100,0), -- Crossroads Fountain
-- (518520,15,3552.579,-5121.819,82.254,0,0,0,0,100,0),
(518520,13,3546.532,-5182.53,81.008,0,0,0,0,100,0), -- Better Path Fountain
(518520,14,3564.127,-5171.225,81.019,0,0,0,0,100,0),
(518520,15,3571.262,-5153.99,81.051,0,0,0,0,100,0),
(518520,16,3580.856,-5143.649,81.099,0,0,0,0,100,0),
(518520,17,3623.553,-5152.797,80.102,0,0,0,0,100,0),
(518520,18,3677.662,-5183.308,80.367,0,0,0,0,100,0),
(518520,19,3728.533,-5272.287,84.988,0,0,0,0,100,0),
(518520,20,3794.12,-5303.49,85.3,0,5000,0,0,100,0), -- End of long path
(518520,21,3728.533,-5272.287,84.988,0,0,0,0,100,0),
(518520,22,3677.662,-5183.308,80.367,0,0,0,0,100,0),
(518520,23,3623.553,-5152.797,80.102,0,0,0,0,100,0),
(518520,24,3580.856,-5143.649,81.099,0,0,0,0,100,0),
(518520,25,3552.579,-5121.819,82.254,0,0,0,0,100,0),
(518520,26,3529.121,-5119.622,81.605,0,0,0,0,100,0), -- Crossroads fountain
(518520,27,3507.839,-5070.671,83.109,1.7987,5000,0,0,100,0); -- End of Path

-- General Fangferror
DELETE FROM `smart_scripts` WHERE `entryorguid`=6650 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6650,0,0,0,0,0,100,0,5000,7000,6000,9000,0,11,12057,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"General Fangferror - In Combat - Cast Strike"),
(6650,0,1,0,0,0,100,0,7000,11000,12000,15000,0,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"General Fangferror - In Combat - Cast Cleave"),
(6650,0,2,0,9,0,100,0,0,5,9000,18000,0,11,18812,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"General Fangferror - Within 0-5 Range - Cast Knockdown");

-- Gatekeeper Rageroar
DELETE FROM `smart_scripts` WHERE `entryorguid`=6651 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6651,0,0,0,0,0,100,0,5000,7000,6000,9000,0,11,13584,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Gatekeeper Rageroar - In Combat - Cast Strike"),
(6651,0,1,0,0,0,100,0,4000,6000,14000,18000,0,11,12747,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Gatekeeper Rageroar - In Combat - Cast Entangling Roots");

-- Master Feardred
DELETE FROM `smart_scripts` WHERE `entryorguid`=6652 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6652,0,0,0,0,0,100,0,6000,8000,9000,14000,0,11,21073,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Master Feardred - In Combat - Cast Arcane Explosion");

-- Lingering Highborne
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=7864;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7864 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(7864,0,0,0,0,0,100,0,3000,5000,14000,18000,0,11,11963,32,0,0,0,0,2,0,0,0,0,0,0,0,0,"Lingering Highborne - In Combat - Cast Enfeeble");

-- Warlord Krellian
DELETE FROM `smart_scripts` WHERE `entryorguid`=8408 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8408,0,0,0,0,0,100,0,5000,7000,6000,9000,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Warlord Krellian - In Combat - Cast Strike"),
(8408,0,1,0,0,0,100,0,7000,10000,12000,17000,0,11,10968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Warlord Krellian - In Combat - Cast Demoralizing Roar");

-- The Evalcharr
DELETE FROM `smart_scripts` WHERE `entryorguid`=8660 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8660,0,0,0,0,0,100,0,0,0,6000,9000,0,11,21549,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"The Evalcharr - In Combat - Cast Fireball"),
(8660,0,1,0,0,0,100,0,8000,10000,11000,14000,0,11,15797,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"The Evalcharr - In Combat - Cast Lightning Breath");

-- Timberweb Recluse
DELETE FROM `smart_scripts` WHERE `entryorguid`=8762 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8762,0,0,0,9,0,100,0,0,30,9000,14000,0,11,745,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Timberweb Recluse - Within 0-30 Range - Cast Web");

-- Mistwing Rogue
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=8763;
DELETE FROM `smart_scripts` WHERE `entryorguid`=8763 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8763,0,0,0,0,0,100,0,0,0,6000,10000,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Mistwing Rogue - In Combat - Cast Lightning Bolt");

-- Mistwing Ravager
DELETE FROM `smart_scripts` WHERE `entryorguid`=8764 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8764,0,0,0,0,0,100,0,4000,7000,11000,16000,0,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Mistwing Ravager - In Combat - Cast Poisoned Bolt");

-- Forest Ooze
DELETE FROM `smart_scripts` WHERE `entryorguid`=8766 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8766,0,0,0,0,0,100,0,6000,8000,12000,16000,0,11,6907,32,0,0,0,0,2,0,0,0,0,0,0,0,0,"Forest Ooze - In Combat - Cast Diseased Slime");

-- Scalebeard
DELETE FROM `smart_scripts` WHERE `entryorguid`=13896 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(13896,0,0,0,12,0,100,0,0,20,10000,14000,0,11,7938,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Scalebeard - Target Between 0-20% Health - Cast Fatal Bite");
