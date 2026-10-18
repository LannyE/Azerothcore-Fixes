

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16096,16912,19705,20872,23956,26389,26448,26493,26679,27178) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

-- Steamwheedle Bruiser SAI
(16096,0,0,0,0,0,100,0,2200,3800,2200,3800,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Steamwheedle Bruiser - In Combat CMC - Cast 'Shoot'"),
(16096,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Steamwheedle Bruiser - Between 0-15% Health - Flee For Assist (No Repeat)"),
(16096,0,2,0,0,0,100,0,500,1800,11000,18000,0,0,11,12024,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Steamwheedle Bruiser - In Combat - Cast 'Net'"),

-- Mag'har Hunter SAI
(16912,0,0,0,0,0,100,0,2200,3800,2200,3800,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Mag'har Hunter - In Combat CMC - Cast 'Shoot'"),
(16912,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mag'har Hunter - Between 0-15% Health - Flee For Assist (No Repeat)"),
(16912,0,2,0,0,0,100,0,500,1800,11000,18000,0,0,11,12024,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Mag'har Hunter - In Combat - Cast 'Net'"),
(16912,0,3,0,1,0,100,1,1000,1000,0,0,0,0,11,32730,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Mag'har Hunter - Out of Combat - Cast 'Summon Tamed Ravager' (No Repeat)"),

-- Master Daellis Dawnstrike
(19705,0,0,0,0,0,100,0,2300,3900,2300,3900,0,0,11,50092,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Master Daellis Dawnstrike - In Combat CMC - Cast 'Shoot'"),
(19705,0,1,0,0,0,100,0,12000,15000,11000,14000,0,0,11,35963,1,0,0,0,0,2,0,0,0,0,0,0,0,0,"Master Daellis Dawnstrike - In Combat - Cast 'Improved Wing Clip'"),
(19705,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Master Daellis Dawnstrike - Between 0-15% Health - Flee For Assist (No Repeat)"),

-- Deathforge Summoner SAI
(20872,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Deathforge Summoner - In Combat CMC - Cast 'Shadow Bolt'"),
(20872,0,1,0,0,0,100,0,7000,9000,17000,24000,0,0,11,37628,1,0,0,0,0,2,0,0,0,0,0,0,0,0,"Deathforge Summoner - In Combat - Cast 'Fel Immolate'"),

-- Dragonflayer Strategist SAI
(23956,0,0,0,0,0,100,2,0,0,2300,5000,0,0,11,42772,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Dragonflayer Strategist - In Combat CMC - Cast 'Hurl Dagger' (Normal Dungeon)"),
(23956,0,1,0,0,0,100,2,4500,5000,11000,16000,0,0,11,54962,1,0,0,0,0,5,0,0,0,0,0,0,0,0,"Dragonflayer Strategist - In Combat - Cast 'Ticking Bomb' (Normal Dungeon)"),
(23956,0,2,0,0,0,100,4,4500,5000,11000,16000,0,0,11,60227,1,0,0,0,0,5,0,0,0,0,0,0,0,0,"Dragonflayer Strategist - In Combat - Cast 'Ticking Time Bomb' (Heroic Dungeon)"),
(23956,0,3,0,0,0,100,6,7500,9000,13000,15000,0,0,11,42972,1,0,0,0,0,5,0,0,0,0,0,0,0,0,"Dragonflayer Strategist - In Combat - Cast 'Blind' (Dungeon)"),
(23956,0,4,0,0,0,100,4,0,0,2300,5000,0,0,11,59685,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Dragonflayer Strategist - In Combat CMC - Cast 'Hurl Dagger' (Heroic Dungeon)"),

-- Solstice Hunter SAI
(26389,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Solstice Hunter - In Combat CMC - Cast 'Shoot'"),
(26389,0,1,0,9,0,100,0,5,30,9000,13000,5,30,11,14443,1,0,0,0,0,2,0,0,0,0,0,0,0,0,"Solstice Hunter - Within 5-30 Range - Cast 'Multi-Shot'"),
(26389,0,2,0,0,0,100,0,7000,9000,19000,24000,0,0,11,52604,1,0,0,0,0,5,0,0,0,0,0,0,0,0,"Solstice Hunter - In Combat - Cast 'Scorpid Sting'"),
(26389,0,3,0,0,0,100,0,11000,15000,18000,24000,0,0,11,52606,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Solstice Hunter - In Combat - Cast 'Immolation Trap'"),
(26389,0,4,0,2,0,100,1,0,50,0,0,0,0,11,49561,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Solstice Hunter - Between 0-50% Health - Cast 'Worgen Transform' (No Repeat)"),
(26389,0,5,0,0,0,100,0,12000,15000,18000,21000,0,0,11,31975,1,0,0,0,0,5,0,0,0,0,0,0,0,0,"Solstice Hunter - In Combat - Cast 'Serpent Sting'"),

-- Stars' Rest Sentinel SAI
(26448,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Stars' Rest Sentinel - In Combat CMC - Cast 'Shoot'"),
(26448,0,1,0,9,0,100,0,8,100,9000,13000,8,100,11,47059,1,0,0,0,0,2,0,0,0,0,0,0,0,0,"Stars' Rest Sentinel - Within 8-100 Range - Cast 'Frost Arrow'"),

-- Wastes Taskmaster SAI
(26493,0,0,0,0,0,100,0,0,0,3400,4800,0,0,11,16583,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Wastes Taskmaster - In Combat CMC - Cast 'Shadow Shock'"),
(26493,0,1,0,9,0,100,0,0,8,12000,15000,0,8,11,32712,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Wastes Taskmaster - Within 0-8 Range - Cast 'Shadow Nova'"),

-- Silverbrook Trapper SAI
(26679,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Silverbrook Trapper - In Combat CMC - Cast 'Shoot'"),
(26679,0,1,0,9,0,100,0,0,20,9000,15000,0,20,11,13608,1,0,0,0,0,2,0,0,0,0,0,0,0,0,"Silverbrook Trapper - Within 0-20 Range - Cast 'Hooked Net'"),

-- Moa'ki Warrior SAI
(27178,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,38556,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Moa'ki Warrior - In Combat CMC - Cast 'Throw'");