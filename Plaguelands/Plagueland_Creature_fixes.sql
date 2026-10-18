-- Overlord Ror
DELETE FROM `smart_scripts` WHERE `entryorguid`=9464 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9464,0,2,0,2,0,100,1,0,50,0,0,0,39,40,1,0,0,0,0,1,0,0,0,0,0,0,0,"Overlord Ror - Between 0-50% Health - Call For Help (No Repeat)");

-- Unseen Servant
DELETE FROM `smart_scripts` WHERE `entryorguid`=8538 AND `source_type`=0 AND `id` IN (2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8538,0,2,0,25,0,100,0,0,0,0,0,0,11,30991,0,0,0,0,0,1,0,0,0,0,0,0,0,"Unseen Servant - On Reset - Cast 'Stealth' (No Repeat)"),
(8538,0,3,0,25,0,100,0,0,0,0,0,0,11,8279,0,0,0,0,0,1,0,0,0,0,0,0,0,"Unseen Servant - On Reset - Cast 'Stealth Detection'");

-- Rotting Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=1793 AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1793,0,1,0,25,0,100,0,0,0,0,0,0,11,16800,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rotting Ghoul - On Reset - Cast 'Ghoul Rot'"),
(1793,0,2,0,11,0,100,0,0,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rotting Ghoul - On Respawn - Cast 'Birth'");

-- Freezing Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=1796 AND `source_type`=0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1796,0,1,0,23,0,100,0,12544,0,1000,3000,0,11,12544,2,0,0,0,0,1,0,0,0,0,0,0,0,"Freezing Ghoul - On Has No Aura 'Frost Armor' - Cast 'Frost Armor'"),
(1796,0,2,0,11,0,100,0,0,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Freezing Ghoul - On Respawn - Cast 'Birth'");

-- Devouring Ooze
DELETE FROM `smart_scripts` WHERE `entryorguid`=1808 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1808,0,1,0,0,0,100,0,5000,10000,15000,20000,0,11,12250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Devouring Ooze - In Combat - Cast 'Summon Oozeling'");

-- Oozeling
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=8257; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=8257 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8257,0,0,0,54,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,21,20,0,0,0,0,0,0,"Oozeling - Just Summoned - Start Attacking");

-- Cauldron Lord Bilemaw
DELETE FROM `smart_scripts` WHERE `entryorguid`=11075 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11075,0,2,0,25,0,100,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cauldron Lord Bilemaw - On Reset - Cast 'Thrash'");

-- Slavering Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=1791 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1791,0,2,0,11,0,100,0,0,0,0,0,0,11,26047,0,0,0,0,0,1,0,0,0,0,0,0,0,"Slavering Ghoul - On Respawn - Cast 'Birth'");

-- Scarlet Paladin
DELETE FROM `smart_scripts` WHERE `entryorguid`=1834 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1834,0,4,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Paladin - On Aggro - Say Line 0");

-- Scarlet Priest
DELETE FROM `smart_scripts` WHERE `entryorguid`=10608 AND `source_type`=0 AND `id`=5;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10608,0,5,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Priest - On Aggro - Say Line 0");

-- Scarlet Sentinel
DELETE FROM `smart_scripts` WHERE `entryorguid`=1827 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1827,0,3,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Sentinel - On Aggro - Say Line 0");

-- Scarlet Spellbinder
UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=4494 AND `source_type`=0 AND `id` IN (1,2); -- both 1
DELETE FROM `smart_scripts` WHERE `entryorguid`=4494 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4494,0,4,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Spellbinder - On Aggro - Say Line 0");

-- Scarlet Mage
UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=1826 AND `source_type`=0 AND `id`=1; -- 1
DELETE FROM `smart_scripts` WHERE `entryorguid`=1826 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1826,0,3,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Mage - On Aggro - Say Line 0");

-- Scarlet Avenger
DELETE FROM `smart_scripts` WHERE `entryorguid`=4493 AND `source_type`=0 AND `id` IN (2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4493,0,2,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Avenger - On Aggro - Say Line 0");

-- Scarlet Knight
DELETE FROM `smart_scripts` WHERE `entryorguid`=1833 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1833,0,3,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Knight - On Aggro - Say Line 0");

-- Scarlet Medic
DELETE FROM `smart_scripts` WHERE `entryorguid`=10605 AND `source_type`=0 AND `id` IN (0,1,2,3,4,5);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10605,0,0,0,74,0,100,0,0,0,16000,19000,50,0,11,11640,0,0,0,0,0,9,0,0,0,0,0,0,0,'Scarlet Medic - On Friendly Between 0-50% Health - Cast \'Renew\''),
(10605,0,1,0,74,0,100,0,0,0,12000,15000,25,0,11,17137,0,0,0,0,0,9,0,0,0,0,0,0,0,'Scarlet Medic - On Friendly Between 0-25% Health - Cast \'Flash Heal\''),
(10605,0,2,0,16,0,100,0,17175,8,2000,2000,0,0,11,17175,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scarlet Medic - On Friendly Unit Missing Buff Resist Arcane - Cast Resist Arcane'),
(10605,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Medic - Between 0-15% Health - Flee For Assist (No Repeat)'),
(10605,0,4,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scarlet Medic - On Aggro - Say Line 0'),
(10605,0,5,0,25,0,100,0,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Medic - On Reset - Random Movement");

-- Scarlet Invoker
DELETE FROM `smart_scripts` WHERE `entryorguid`=1835 AND `source_type`=0 AND `id` IN (0,1,2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1835,0,0,0,0,0,100,0,2000,6000,12000,16000,0,11,15735,64,0,0,0,0,2,0,0,0,0,0,0,0,'Scarlet Invoker - In Combat - Cast \'Arcane Missiles\''),
(1835,0,1,0,9,0,100,0,0,8,12000,20000,0,11,11975,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scarlet Invoker - Within 0-8 Range - Cast \'Arcane Explosion\''),
(1835,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Invoker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1835,0,3,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Invoker - On Aggro - Say Line 0"),
(1835,0,4,0,25,0,100,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Invoker - On Reset - Random Movement");

-- Scarlet Hunter
DELETE FROM `smart_scripts` WHERE `entryorguid`=1831 AND `source_type`=0 AND `id` IN (3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1831,0,3,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Hunter - On Aggro - Say Line 0"),
(1831,0,4,0,25,0,100,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Hunter - On Reset - Random Movement");

-- Snarlflare
DELETE FROM `smart_scripts` WHERE `entryorguid`=14272 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(14272,0,1,0,1,0,100,0,6000,10000,6000,10000,11,54293,0,0,0,0,0,1,0,0,0,0,0,0,0,"Snarlflare - Out Of Combat - Cast 'Flame Breath'");

-- Scarlet Smith
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1885; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=1885 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1885,0,0,0,0,0,100,0,5000,7000,5000,7000,0,11,12057,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Smith - In Combat - Cast 'Strike'"),
(1885,0,1,0,0,0,100,0,8000,11000,11000,14000,0,11,11428,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Smith - In Combat - Cast 'Knockdown'"),
(1885,0,2,0,2,0,100,1,0,15,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Scarlet Smith - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Dreadwhisper
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1849; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=1849 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1849,0,0,0,0,0,100,0,1000,2000,18000,21000,0,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dreadwhisper - In Combat - Cast 'Criple'"),
(1849,0,1,0,0,0,100,0,6000,7000,11000,13000,0,11,17228,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadwhisper - In Combat - Cast 'Shadow Bolt Volley'"),
(1849,0,2,0,0,0,100,0,10000,12000,18000,21000,0,11,7068,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dreadwhisper - In Combat - Cast 'Veil of Shadow'");

-- Skeletal Flayer
DELETE FROM `smart_scripts` WHERE `entryorguid`=1783 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1783,0,0,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Flayer - On Reset - Cast 'Thrash'");

-- Soulless Ghoul
UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=1794 AND `source_type`=0 AND `id`=2; -- 1

-- Searing Ghoul
UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=1795 AND `source_type`=0 AND `id`=1; -- 1

-- Skeletal Acolyte
UPDATE `smart_scripts` SET `event_param3`=3000, `event_param4`=5000 WHERE `entryorguid`=1789 AND `source_type`=0 AND `id`=0; -- 1500 2800

-- Skeletal Sorcerer
UPDATE `smart_scripts` SET `event_param3`=3000, `event_param4`=5000 WHERE `entryorguid`=1784 AND `source_type`=0 AND `id`=0; -- 2400 3800

-- Dethryll Satyr
UPDATE `smart_scripts` SET `event_param1`=0, `event_param2`=0, `event_param3`=2000, `event_param4`=4000 WHERE `entryorguid`=2212 AND `source_type`=0 AND `id`=0; -- 1000 1500 4600 6800

-- Skeletal Sorcerer
UPDATE `smart_scripts` SET `event_chance`=100, `event_param1`=8000, `event_param3`=16000 WHERE `entryorguid`=1804 AND `source_type`=0 AND `id`=0; -- 75 8000 16000

-- Diseased Flayer
DELETE FROM `smart_scripts` WHERE `entryorguid`=8532 AND `source_type`=0 AND `id` IN (2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8532,0,2,0,25,0,100,0,0,0,0,0,0,11,16800,0,0,0,0,0,1,0,0,0,0,0,0,0,"Diseased Flayer - On Reset - Cast 'Ghoul Rot'");

-- Eyeless Watcher
DELETE FROM `smart_scripts` WHERE `entryorguid`=8539 AND `source_type`=0 AND `id` IN (2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8539,0,2,0,25,0,100,0,0,0,0,0,0,11,30991,0,0,0,0,0,1,0,0,0,0,0,0,0,"Eyeless Watcher - On Reset - Cast 'Stealth' (No Repeat)"),
(8539,0,3,0,25,0,100,0,0,0,0,0,0,11,8279,0,0,0,0,0,1,0,0,0,0,0,0,0,"Eyeless Watcher - On Reset - Cast 'Stealth Detection'");

-- Plague Ravager
DELETE FROM `smart_scripts` WHERE `entryorguid`=8520 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8520,0,1,0,25,0,100,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plague Ravager - On Reset - Cast 'Thrash'");

-- Scarlet Warder
DELETE FROM `smart_scripts` WHERE `entryorguid`=9447 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9447,0,2,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Warder - On Aggro - Say Line 0");

-- Scarlet Cleric
DELETE FROM `smart_scripts` WHERE `entryorguid`=9449 AND `source_type`=0 AND `id` IN (1,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9449,0,1,0,14,0,100,0,3000,40,25000,35000,0,11,15586,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scarlet Cleric - On Friendly Between 0-40% Health - Cast 'Heal'"),
(9449,0,3,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Cleric - On Aggro - Say Line 0");

-- Scarlet Enchanter
DELETE FROM `smart_scripts` WHERE `entryorguid`=9452 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9452,0,2,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Enchanter - On Aggro - Say Line 0");

-- Scarlet Praetorian
DELETE FROM `smart_scripts` WHERE `entryorguid`=9448 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9448,0,2,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Praetorian - On Aggro - Say Line 0");

-- Scarlet Archmage
UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=9451 AND `source_type`=0 AND `id` IN (0,2); -- both 1
DELETE FROM `smart_scripts` WHERE `entryorguid`=9451 AND `source_type`=0 AND `id`=5;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9451,0,5,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Archmage - On Aggro - Say Line 0");

-- Scarlet Curate
DELETE FROM `smart_scripts` WHERE `entryorguid`=9450 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9450,0,4,0,4,0,15,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Curate - On Aggro - Say Line 0");

-- Cursed Mage
UPDATE `smart_scripts` SET `event_param3`=2000, `event_param4`=4000 WHERE `entryorguid`=8524 AND `source_type`=0 AND `id`=0; -- 3400 4800
UPDATE `smart_scripts` SET `action_param2`=2 WHERE `entryorguid`=8524 AND `source_type`=0 AND `id`=1; -- 7

-- Baron Bloodbane
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=10819; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=10819 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10819,0,0,0,0,0,100,0,3000,6000,9000,12000,0,11,18663,0,0,0,0,0,5,0,0,0,0,0,0,0,"Baron Bloodbane - In Combat - Cast 'Shadow Shock'"),
(10819,0,1,0,13,0,100,0,12000,16000,0,0,0,11,12555,0,0,0,0,0,7,0,0,0,0,0,0,0,"Baron Bloodbane - Target Casting - Cast 'Pummel'"),
(10819,0,2,0,1,0,100,0,1000,1000,1800000,1800000,0,11,11733,2,0,0,0,0,1,0,0,0,0,0,0,0,"Baron Bloodbane - Out of Combat - Cast 'Demon Armor'"),
(10819,0,3,0,0,0,100,0,3000,5000,6000,8000,0,11,13446,0,0,0,0,0,2,0,0,0,0,0,0,0,"Baron Bloodbane - In Combat - Cast 'Strike'");

-- Death Knight Soulbearer
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=10818; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=10818 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10818,0,0,0,0,0,100,0,2000,4000,5000,9000,0,11,12471,2,0,0,0,0,5,0,0,0,0,0,0,0,"Death Knight Soulbearer - In Combat - Cast 'Shadow Bolt'"),
(10818,0,1,0,1,0,100,0,1000,1000,1800000,1800000,0,11,11733,2,0,0,0,0,1,0,0,0,0,0,0,0,"Death Knight Soulbearer - Out of Combat - Cast 'Demon Armor'"),
(10818,0,2,0,0,0,100,0,5000,7000,9000,11000,0,11,13737,0,0,0,0,0,2,0,0,0,0,0,0,0,"Death Knight Soulbearer - In Combat - Cast 'Mortal Strike'");

-- Kobold Geomancer
UPDATE `smart_scripts` SET `event_param3`=3000, `event_param4`=5000 WHERE `entryorguid`=476 AND `source_type`=0 AND `id`=2; -- 2300 3900

-- Defias Rogue Wizard
UPDATE `smart_scripts` SET `event_param3`=3000, `event_param4`=5000 WHERE `entryorguid`=474 AND `source_type`=0 AND `id`=2; -- 2300 3900

-- Defias Footpad
UPDATE `smart_scripts` SET `event_chance`=15 WHERE `entryorguid`=481 AND `source_type`=0 AND `id`=0; -- 5 
UPDATE `smart_scripts` SET `event_param1`=3000, `event_param2`=5000, `event_param3`=5000, `event_param4`=7000 WHERE `entryorguid`=481 AND `source_type`=0 AND `id`=1; -- 5900 10200 8200 14100

-- Slark
DELETE FROM `smart_scripts` WHERE `entryorguid`=519 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(519,0,0,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,"Slark - On Reset - Cast 'Thrash'");

-- Harvest Reaper
UPDATE `smart_scripts` SET `event_param1`=5000, `event_param2`=8000, `event_param3`=14000, `event_param4`=20000 WHERE `entryorguid`=115 AND `source_type`=0 AND `id`=0; -- 2000 6000 14000 22100

-- Fleshripper
UPDATE `smart_scripts` SET `event_chance`=100 WHERE `entryorguid` IN (1109,154) AND `source_type`=0 AND `id`=0; -- 75 (1109) and 90 (154) 

-- Defias Trapper
UPDATE `smart_scripts` SET `event_chance`=15 WHERE `entryorguid`=504 AND `source_type`=0 AND `id`=0; -- 1000 10000 16100 26900

-- Dust Devil
UPDATE `smart_scripts` SET `event_param1`=7000, `event_param2`=11000, `event_param3`=15000, `event_param4`=19000 WHERE `entryorguid`=832 AND `source_type`=0 AND `id`=0; -- 1000 10000 16100 26900

-- Riverpaw Mongrel
UPDATE `smart_scripts` SET `event_param1`=5000, `event_param2`=15000 WHERE `entryorguid`=123 AND `source_type`=0 AND `id`=1; -- 2300 35400

-- Defias Knuckleduster
UPDATE `smart_scripts` SET `event_chance`=15 WHERE `entryorguid`=449 AND `source_type`=0 AND `id`=0; -- 5
DELETE FROM `smart_scripts` WHERE `entryorguid`=449 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(449,0,2,0,25,0,100,0,0,0,0,0,0,11,8876,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Knuckleduster - On Reset - Cast 'Thrash'");

-- Fix bytes2 for some range-attacking creatures
UPDATE `creature_addon` SET `bytes2`=2 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id1` IN (1831,8561,12322,2212,3745,3926,7155,7442,8564,11680,500)); -- 1
UPDATE `creature_template_addon` SET `bytes2`=2 WHERE `entry` IN (1831,8561,12322,2212,3745,3926,7155,7442,8564,11680,500); -- 1

-- Slark should be running (Only slark runs as per wowhead)  
UPDATE `waypoint_data` SET `move_type`=1 WHERE `id` IN (902060); -- was set to 0
