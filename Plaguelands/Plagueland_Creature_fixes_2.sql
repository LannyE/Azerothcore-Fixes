-- Lord Maldazzar
DELETE FROM `smart_scripts` WHERE `entryorguid`=1848 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1848,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Maldazzar - Between 0-15% Health - Flee For Assist (No Repeat)");
-- (1848,0,1,0,0,0,100,0,6000,9000,15000,20000,11,17204,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Maldazzar - In Combat - Cast Summon Skeleton"),
-- (1848,0,2,0,0,0,100,0,12000,16000,15000,19000,11,17173,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lord Maldazzar - In Combat - Cast Drain Life"),
-- (1848,0,0,0,0,0,100,0,0,0,3400,4800,11,12471,64,0,0,0,0,2,0,0,0,0,0,0,0,"Lord Maldazzar - In Combat - Cast Shadow Bolt");

-- Jabbering Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=10801 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (10801,0,0,0,4,0,100,0,0,0,0,0,11,15716,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jabbering Ghoul - On Aggro - Cast Enrage"),
-- (10801,0,1,0,0,0,100,0,4000,7000,9000,13000,11,12097,1,0,0,0,0,2,0,0,0,0,0,0,0,"Jabbering Ghoul - In Combat - Cast Pierce Armor"),
(10801,0,2,0,11,0,100,1,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jabbering Ghoul - On Respawn - Cast Birth");


-- Farmer Dalson
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=10836;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10836 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10836,0,0,0,1,0,100,1,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Farmer Dalson - Out of Combat - Cast Birth (No Repeat)"),
(10836,0,1,0,4,0,100,0,0,0,0,0,11,15716,0,0,0,0,0,1,0,0,0,0,0,0,0,"Farmer Dalson - On Aggro - Cast Enrage"),
(10836,0,2,0,0,0,100,0,8000,12000,15000,20000,11,3391,0,0,0,0,0,2,0,0,0,0,0,0,0,"Farmer Dalson - In Combat - Cast Thrash"),
(10836,0,3,0,9,0,100,0,0,5,7000,12000,11,16128,33,0,0,0,0,2,0,0,0,0,0,0,0,"Farmer Dalson - In Combat - Cast Infected Bite");


-- Wandering Skeleton
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=10816;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10816 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10816,0,0,0,0,0,75,0,1000,3000,12000,18000,11,17014,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wandering Skeleton - In Combat - Cast Bone Shards");


-- Foulmane
DELETE FROM `smart_scripts` WHERE `entryorguid`=1847 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1847,0,0,0,11,0,100,1,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Foulmane - On Respawn - Cast Birth"),
(1847,0,1,0,0,0,100,0,8000,12000,15000,20000,11,3391,0,0,0,0,0,2,0,0,0,0,0,0,0,"Foulmane - In Combat - Cast Thrash"),
(1847,0,2,0,9,0,100,0,0,5,19000,23000,11,13445,0,0,0,0,0,2,0,0,0,0,0,0,0,"Foulmane - In Combat - Cast Rend"),
(1847,0,3,0,0,0,100,0,8000,9000,20000,22000,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Foulmane - Cast Infected Wound");


-- Cauldron Lord Bilemaw
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=11075;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11075 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11075,0,0,0,9,0,100,0,0,5,7000,12000,11,3427,32,0,0,0,0,2,0,0,0,0,0,0,0,"Cauldron Lord Bilemaw - Within 0-5 Range - Cast Infected Wound"),
(11075,0,1,0,9,0,100,0,0,5,18000,22000,11,13445,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cauldron Lord Bilemaw - Within 0-5 Range - Cast Rend"),
(11075,0,2,0,0,0,100,0,8000,12000,15000,20000,11,3391,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cauldron Lord Bilemaw - In Combat - Cast Thrash"),
(11075,0,3,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cauldron Lord Bilemaw - On Aggro - Say Line 0");


-- Cauldron Lord Malvinious
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=11077;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11077 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11077,0,0,0,0,0,100,0,0,0,3400,4800,11,12471,64,0,0,0,0,2,0,0,0,0,0,0,0,"Cauldron Lord Malvinious - In Combat - Cast Shadow Bolt"),
(11077,0,1,0,0,0,100,0,11000,15000,20000,25000,11,17204,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cauldron Lord Malvinious - In Combat - Cast Summon Skeleton"),
(11077,0,2,0,2,0,100,0,0,50,14000,18000,11,17173,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cauldron Lord Malvinious - Between 0-50% Health - Cast Drain Life"),
(11077,0,3,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cauldron Lord Malvinious - On Aggro - Say Line 0");


-- Cauldron Lord Soulwrath
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=11078;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11078 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11078,0,0,0,0,0,50,0,5000,8000,12000,15000,11,10966,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cauldron Lord Soulwrath - Cast Uppercut'),
(11078,0,1,0,0,0,100,0,10000,12000,10000,25000,11,12946,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cauldron Lord Soulwrath - Cast Putrid Stench'),
(11078,0,2,0,0,0,50,0,10000,16000,12000,25000,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cauldron Lord Soulwrath - Cast Knock Away'),
(11078,0,3,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cauldron Lord Soulwrath - On Aggro - Say Line 0");


-- Decrepit Guardian
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=10943;
DELETE FROM `smart_scripts` WHERE `entryorguid`=10943 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10943,0,0,0,1,0,100,1,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Decrepit Guardian - Out of Combat - Cast Birth (No Repeat)"),
(10943,0,1,0,9,0,100,0,0,30,16000,24000,11,16333,0,0,0,0,0,2,0,0,0,0,0,0,0,"Decrepit Guardian - Within 0-30 Range - Cast Debilitating Touch");

