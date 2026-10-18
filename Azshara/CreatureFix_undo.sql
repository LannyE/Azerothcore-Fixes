/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid in (6118,6116,6117,7864,8660,6375,6377,6378,6379,6380,6648,8763,8764,6126,6127,8408,6650,6649,8762,6147,6148,6646,6184,6185,6186,6188,6189,6651,6198,6199,6647,6200,6201,6202,6652,8766,6350,6370,6372,6347,6348,6349,6371,6351,6137,6138,6143,6144,13896,6129,6131,51851)
LIMIT 0, 1000

-- Date: 2022-11-16 09:22
*/
DELETE FROM `smart_scripts` WHERE `entryorguid`=6116 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6116,0,0,0,2,0,100,1,20,40,0,0,0,11,12542,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Highborne Apparition - Between 20-40% Health - Cast \'12542\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6117 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6117,0,0,0,4,0,100,0,0,0,0,0,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Highborne Lichling - On Aggro - Cast \'12544\''),
(6117,0,1,0,0,0,100,0,2100,2200,6100,6200,0,11,20822,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Highborne Lichling - In Combat - Cast \'20822\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6118 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6118,0,0,0,4,0,100,0,0,0,0,0,0,11,21007,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Varo\'then\'s Ghost - On Aggro - Cast \'21007\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6126 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6126,0,0,0,0,0,100,1,5000,10000,0,0,0,11,7098,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Haldarr Trickster - In Combat - Cast \'7098\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6127 AND `source_type`=0 AND `id`=1;
-- (6127,0,0,0,1,0,100,1,1000,1000,0,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Haldarr Felsworn - Out of Combat - Cast \'Summon Imp\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6129 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6131 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6131,0,0,0,0,0,100,0,2100,2300,6800,7400,0,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Draconic Mageweaver - In Combat - Cast \'9672\''),
(6131,0,1,0,2,0,100,1,30,60,0,0,0,11,12557,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Draconic Mageweaver - Between 30-60% Health - Cast \'12557\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6137 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6137,0,0,0,0,0,100,0,2100,2300,17100,17300,0,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Arkkoran Pincer - In Combat - Cast \'13443\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6138 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6143 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6144 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6144,0,0,0,0,0,100,0,2800,3100,8700,9300,0,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Son of Arkkoroc - In Combat - Cast \'10101\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6147 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6147,0,0,0,2,0,100,1,20,80,0,0,0,11,8147,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cliff Thunderer - Between 20-80% Health - Cast \'8147\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6148 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6148,0,0,0,4,0,100,0,0,0,0,0,0,11,16498,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cliff Walker - On Aggro - Cast \'16498\''),
(6148,0,1,0,2,0,100,1,30,60,0,0,0,11,11876,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cliff Walker - Between 30-60% Health - Cast \'11876\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6184 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6184,0,0,0,4,0,100,0,0,0,0,0,0,11,16498,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timbermaw Pathfinder - On Aggro - Cast \'16498\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6185 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6185,0,0,0,0,0,100,0,1700,1900,17500,19500,0,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timbermaw Warrior - In Combat - Cast \'11977\''),
(6185,0,1,0,0,0,100,0,2400,2600,7600,8200,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timbermaw Warrior - In Combat - Cast \'11976\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6186 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6186,0,0,0,4,0,100,0,0,0,0,0,0,11,8262,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Timbermaw Totemic - On Aggro - Cast \'8262\''),
(6186,0,1,0,2,0,100,1,5,30,0,0,0,11,5605,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Timbermaw Totemic - Between 5-30% Health - Cast \'5605\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6187 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6187,0,0,0,0,0,100,1,6500,10000,0,0,0,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Timbermaw Den Watcher - In Combat - Cast \'9128\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6188 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6188,0,0,0,0,0,100,0,1700,1900,6200,6500,0,11,20295,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timbermaw Shaman - In Combat - Cast \'20295\''),
(6188,0,1,0,2,0,100,1,40,80,0,0,0,11,6535,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timbermaw Shaman - Between 40-80% Health - Cast \'6535\' (No Repeat)'),
(6188,0,2,0,2,0,100,1,5,30,0,0,0,11,11986,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Timbermaw Shaman - Between 5-30% Health - Cast \'11986\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6189 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6189,0,0,0,2,0,100,1,20,80,0,0,0,11,8078,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timbermaw Ursa - Between 20-80% Health - Cast \'8078\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6198 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6198,0,0,0,0,0,100,0,2100,2400,7600,7900,0,11,11969,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blood Elf Surveyor - In Combat - Cast \'11969\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6199 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6199,0,0,0,4,0,100,0,0,0,0,0,0,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blood Elf Reclaimer - On Aggro - Cast \'11640\''),
(6199,0,1,0,0,0,100,0,1900,2000,5000,5100,0,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blood Elf Reclaimer - In Combat - Cast \'20823\''),
(6199,0,2,0,2,0,100,1,20,40,0,0,0,11,11642,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blood Elf Reclaimer - Between 20-40% Health - Cast \'11642\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6200 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6200,0,0,0,2,0,100,1,20,80,0,0,0,11,11981,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Legashi Satyr - Between 20-80% Health - Cast \'11981\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6201 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6201,0,0,0,0,0,100,0,1900,2300,6900,7400,0,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Legashi Rogue - In Combat - Cast \'7159\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6202 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6202,0,0,0,0,0,100,0,2100,2300,6100,6300,0,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Legashi Hellcaller - In Combat - Cast \'20823\''),
(6202,0,1,0,2,0,100,1,30,60,0,0,0,11,11990,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Legashi Hellcaller - Between 30-60% Health - Cast \'11990\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6347 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6348 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6348,0,0,0,0,0,100,0,2100,2300,6700,8200,0,11,12787,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Wavethrasher - In Combat - Cast \'Thrash\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6349 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6350 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6351 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6370 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6370,0,0,0,4,0,100,0,0,0,0,0,0,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Makrinni Scrabbler - On Aggro - Cast \'12548\''),
(6370,0,1,0,0,0,100,0,2100,2300,6100,6300,0,11,20822,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Makrinni Scrabbler - In Combat - Cast \'20822\''),
(6370,0,2,0,2,0,100,1,0,0,0,0,0,11,11642,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Makrinni Scrabbler - Between 0-0% Health - Cast \'11642\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6371 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6371,0,0,0,0,0,100,0,1700,2300,6800,7400,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Storm Bay Warrior - In Combat - Cast \'11976\''),
(6371,0,1,0,2,0,100,1,30,60,0,0,0,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Storm Bay Warrior - Between 30-60% Health - Cast \'12555\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6372 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6375 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6375,0,0,0,4,0,100,0,0,0,0,0,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Hippogryph - On Aggro - Cast \'12553\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6377 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6377,0,0,0,4,0,100,0,0,0,0,0,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Stagwing - On Aggro - Cast \'12553\''),
(6377,0,1,0,0,0,100,0,2700,3100,8600,9400,0,11,11019,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Stagwing - In Combat - Cast \'11019\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6378 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6378,0,0,0,4,0,100,0,0,0,0,0,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Skystormer - On Aggro - Cast \'12553\''),
(6378,0,1,0,2,0,100,1,30,60,0,0,0,11,6535,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Skystormer - Between 30-60% Health - Cast \'6535\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6379 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6380 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6380,0,0,0,4,0,100,0,0,0,0,0,0,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Consort - On Aggro - Cast \'12553\''),
(6380,0,1,0,0,0,100,0,2700,3200,12800,13400,0,11,36594,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thunderhead Consort - In Combat - Cast \'36594\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6646 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6646,0,0,0,0,0,100,0,2300,3100,7900,8400,0,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Monnos the Elder - In Combat - Cast \'10101\''),
(6646,0,1,0,2,0,100,1,40,80,0,0,0,11,5568,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Monnos the Elder - Between 40-80% Health - Cast \'5568\' (No Repeat)'),
(6646,0,2,0,2,0,100,1,5,20,0,0,0,11,11876,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Monnos the Elder - Between 5-20% Health - Cast \'11876\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6647 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6647,0,0,0,4,0,100,0,0,0,0,0,0,11,18651,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Magister Hawkhelm - On Aggro - Cast \'18651\''),
(6647,0,1,0,0,0,100,0,2100,2300,6900,7300,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Magister Hawkhelm - In Combat - Cast \'6660\'');

-- Antilos
DELETE FROM `smart_scripts` WHERE `entryorguid`=6648 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6648,0,0,0,0,0,100,0,1500,1600,16500,16600,0,11,13445,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Antilos - In Combat - Cast \'13445\''),
(6648,0,1,0,0,0,100,0,3800,4200,8800,9200,0,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Antilos - In Combat - Cast \'40504\''),
(6648,0,2,0,2,0,100,1,5,30,0,0,0,11,5708,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Antilos - Between 5-30% Health - Cast \'5708\' (No Repeat)');
UPDATE `creature` SET `MovementType`=0, `wander_distance`=0 WHERE `guid`=51851;

-- Lady Sesspira
DELETE FROM `smart_scripts` WHERE `entryorguid`=6649 AND `source_type`=0;
UPDATE `creature` SET `MovementType` = 0, `wander_distance` = 0 WHERE `guid` = 51852;
DELETE FROM `creature_addon` WHERE `guid` = 51852;
DELETE FROM `waypoint_data` WHERE `id` = 518520;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6650 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6650,0,0,0,0,0,100,0,2100,2200,6500,6800,0,11,12057,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'General Fangferror - In Combat - Cast \'12057\''),
(6650,0,1,0,2,0,100,1,40,60,0,0,0,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'General Fangferror - Between 40-60% Health - Cast \'15284\' (No Repeat)'),
(6650,0,2,0,2,0,100,1,5,20,0,0,0,11,18812,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'General Fangferror - Between 5-20% Health - Cast \'18812\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6651 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6651,0,0,0,4,0,100,0,0,0,0,0,0,11,12747,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gatekeeper Rageroar - On Aggro - Cast \'12747\''),
(6651,0,1,0,0,0,100,0,2700,3200,8600,9700,0,11,13584,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gatekeeper Rageroar - In Combat - Cast \'13584\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=6652 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(6652,0,0,0,0,0,100,0,2400,2900,7500,8100,0,11,21073,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Master Feardred - In Combat - Cast \'21073\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7864 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=8408 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8408,0,0,0,0,0,100,0,2100,2200,6400,6500,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Warlord Krellian - In Combat - Cast \'11976\''),
(8408,0,1,0,2,0,100,1,20,80,0,0,0,11,10968,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Warlord Krellian - Between 20-80% Health - Cast \'10968\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8660 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8660,0,0,0,0,0,100,0,1700,1900,5400,6200,0,11,20793,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'The Evalcharr - In Combat - Cast \'20793\''),
(8660,0,1,0,2,0,100,1,20,40,0,0,0,11,15797,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'The Evalcharr - Between 20-40% Health - Cast \'15797\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8762 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8762,0,0,0,4,0,100,0,0,0,0,0,0,11,745,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timberweb Recluse - On Aggro - Cast \'745\''),
(8762,0,1,0,0,0,100,0,1700,2000,31700,32000,0,11,744,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Timberweb Recluse - In Combat - Cast \'744\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8763 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=8764 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8764,0,0,0,4,0,100,0,0,0,0,0,0,11,8806,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mistwing Ravager - On Aggro - Cast \'8806\''),
(8764,0,1,0,0,0,100,0,2700,3100,12700,13100,0,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mistwing Ravager - In Combat - Cast \'21067\'');

DELETE FROM `smart_scripts` WHERE `entryorguid`=8766 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8766,0,0,0,2,0,100,1,20,80,0,0,0,11,6907,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Forest Ooze - Between 20-80% Health - Cast \'6907\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=13896 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(13896,0,0,0,0,0,100,0,4800,8200,12400,16800,0,11,7938,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scalebeard - In Combat - Cast \'7938\'');
