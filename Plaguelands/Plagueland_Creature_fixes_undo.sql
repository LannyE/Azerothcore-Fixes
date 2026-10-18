-- Overlord Ror
DELETE FROM `smart_scripts` WHERE `entryorguid`=9464 AND `source_type`=0 AND `id`=2;

-- Unseen Servant
DELETE FROM `smart_scripts` WHERE `entryorguid`=8538 AND `source_type`=0 AND `id` IN (2,3);

-- Rotting Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=1793 AND `source_type`=0 AND `id` IN (1,2);

-- Freezing Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=1796 AND `source_type`=0 AND `id` IN (1,2);

-- Devouring Ooze
DELETE FROM `smart_scripts` WHERE `entryorguid`=1808 AND `source_type`=0 AND `id`=1;

-- Oozeling
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=8257; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=8257 AND `source_type`=0;

-- Cauldron Lord Bilemaw
DELETE FROM `smart_scripts` WHERE `entryorguid`=11075 AND `source_type`=0 AND `id`=2;

-- Slavering Ghoul
DELETE FROM `smart_scripts` WHERE `entryorguid`=1791 AND `source_type`=0 AND `id`=2;

-- Scarlet Paladin
DELETE FROM `smart_scripts` WHERE `entryorguid`=1834 AND `source_type`=0 AND `id`=4;

-- Scarlet Priest
DELETE FROM `smart_scripts` WHERE `entryorguid`=10608 AND `source_type`=0 AND `id`=5;

-- Scarlet Sentinel
DELETE FROM `smart_scripts` WHERE `entryorguid`=1827 AND `source_type`=0 AND `id`=3;

-- Scarlet Spellbinder
UPDATE `smart_scripts` SET `action_param2`=1 WHERE `entryorguid`=4494 AND `source_type`=0 AND `id` IN (1,2); -- both 1
DELETE FROM `smart_scripts` WHERE `entryorguid`=4494 AND `source_type`=0 AND `id`=4;

-- Scarlet Mage
UPDATE `smart_scripts` SET `action_param2`=1 WHERE `entryorguid`=1826 AND `source_type`=0 AND `id`=1; -- 1
DELETE FROM `smart_scripts` WHERE `entryorguid`=1826 AND `source_type`=0 AND `id`=3;

-- Scarlet Avenger
DELETE FROM `smart_scripts` WHERE `entryorguid`=4493 AND `source_type`=0 AND `id` IN (2);

-- Scarlet Knight
DELETE FROM `smart_scripts` WHERE `entryorguid`=1833 AND `source_type`=0 AND `id`=3;

-- Scarlet Medic
DELETE FROM `smart_scripts` WHERE `entryorguid`=10605 AND `source_type`=0 AND `id` IN (0,1,2,3,4,5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(10605,0,0,0,1,0,100,0,0,0,0,0,0,0,11,17175,32,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Medic - Out of Combat - Cast \'17175\''),
(10605,0,1,0,2,0,100,1,5,95,0,0,0,0,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Medic - Between 5-95% Health - Cast \'11640\' (No Repeat)'),
(10605,0,2,0,2,0,100,1,5,20,0,0,0,0,11,17137,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Medic - Between 5-20% Health - Cast \'17137\' (No Repeat)');

-- Scarlet Invoker
DELETE FROM `smart_scripts` WHERE `entryorguid`=1835 AND `source_type`=0 AND `id` IN (0,1,2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1835,0,0,0,0,0,100,0,2000,6000,12000,16000,0,0,11,15736,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Invoker - In Combat - Cast \'Arcane Missiles\' (No Repeat)'),
(1835,0,1,0,0,0,100,0,8000,11000,12000,20000,0,0,11,11975,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Invoker - In Combat - Cast \'Arcane Explosion\' (No Repeat)'),
(1835,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Invoker - Between 0-15% Health - Flee For Assist (No Repeat)');

-- Scarlet Hunter
DELETE FROM `smart_scripts` WHERE `entryorguid`=1831 AND `source_type`=0 AND `id` IN (3,4);

-- Snarlflare
DELETE FROM `smart_scripts` WHERE `entryorguid`=14272 AND `source_type`=0 AND `id`=1;

-- Scarlet Smith
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1885; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=1885 AND `source_type`=0;

-- Dreadwhisper
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=1849; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=1849 AND `source_type`=0;

-- Skeletal Flayer
DELETE FROM `smart_scripts` WHERE `entryorguid`=1783 AND `source_type`=0 AND `id`=0;

-- Soulless Ghoul
UPDATE `smart_scripts` SET `action_param2`=1 WHERE `entryorguid`=1794 AND `source_type`=0 AND `id`=2; -- 1

-- Searing Ghoul
UPDATE `smart_scripts` SET `action_param2`=1 WHERE `entryorguid`=1795 AND `source_type`=0 AND `id`=1; -- 1

-- Skeletal Acolyte
UPDATE `smart_scripts` SET `event_param3`=1500, `event_param4`=2800 WHERE `entryorguid`=1789 AND `source_type`=0 AND `id`=0; -- 1500 2800

-- Skeletal Sorcerer
UPDATE `smart_scripts` SET `event_param3`=2400, `event_param4`=3800 WHERE `entryorguid`=1784 AND `source_type`=0 AND `id`=0; -- 2400 3800

-- Dethryll Satyr
UPDATE `smart_scripts` SET `event_param1`=1000, `event_param2`=1500, `event_param3`=4600, `event_param4`=6800 WHERE `entryorguid`=2212 AND `source_type`=0 AND `id`=0; -- 1000 1500 4600 6800

-- Skeletal Sorcerer
UPDATE `smart_scripts` SET `event_chance`=75, `event_param1`=12000, `event_param3`=24000 WHERE `entryorguid`=1804 AND `source_type`=0 AND `id`=0; -- 75 8000 16000

-- Diseased Flayer
DELETE FROM `smart_scripts` WHERE `entryorguid`=8532 AND `source_type`=0 AND `id` IN (2);

-- Eyeless Watcher
DELETE FROM `smart_scripts` WHERE `entryorguid`=8539 AND `source_type`=0 AND `id` IN (2,3);

-- Plague Ravager
DELETE FROM `smart_scripts` WHERE `entryorguid`=8520 AND `source_type`=0 AND `id`=1;

-- Scarlet Warder
DELETE FROM `smart_scripts` WHERE `entryorguid`=9447 AND `source_type`=0 AND `id`=2;

-- Scarlet Cleric
DELETE FROM `smart_scripts` WHERE `entryorguid`=9449 AND `source_type`=0 AND `id` IN (1,3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(9449,0,1,0,74,0,100,0,0,0,25000,35000,40,0,11,15587,1,0,0,0,0,9,0,0,0,0,0,0,0,0,'Scarlet Cleric - On Friendly Between 0-40% Health - Cast \'Mind Blast\'');

-- Scarlet Enchanter
DELETE FROM `smart_scripts` WHERE `entryorguid`=9452 AND `source_type`=0 AND `id`=2;

-- Scarlet Praetorian
DELETE FROM `smart_scripts` WHERE `entryorguid`=9448 AND `source_type`=0 AND `id`=2;

-- Scarlet Archmage
UPDATE `smart_scripts` SET `action_param2`=1 WHERE `entryorguid`=9451 AND `source_type`=0 AND `id` IN (0,2); -- both 1
DELETE FROM `smart_scripts` WHERE `entryorguid`=9451 AND `source_type`=0 AND `id`=5;

-- Scarlet Curate
DELETE FROM `smart_scripts` WHERE `entryorguid`=9450 AND `source_type`=0 AND `id`=4;

-- Cursed Mage
UPDATE `smart_scripts` SET `event_param3`=3400, `event_param4`=4800 WHERE `entryorguid`=8524 AND `source_type`=0 AND `id`=0; -- 3400 4800
UPDATE `smart_scripts` SET `action_param2`=7 WHERE `entryorguid`=8524 AND `source_type`=0 AND `id`=1; -- 7

-- Baron Bloodbane
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=10819; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=10819 AND `source_type`=0;

-- Death Knight Soulbearer
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=10818; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=10818 AND `source_type`=0;

-- Kobold Geomancer
UPDATE `smart_scripts` SET `event_param3`=2300, `event_param4`=3900 WHERE `entryorguid`=476 AND `source_type`=0 AND `id`=2; -- 2300 3900

-- Defias Rogue Wizard
UPDATE `smart_scripts` SET `event_param3`=2300, `event_param4`=3900 WHERE `entryorguid`=474 AND `source_type`=0 AND `id`=2; -- 2300 3900

-- Defias Footpad
UPDATE `smart_scripts` SET `event_chance`=5 WHERE `entryorguid`=481 AND `source_type`=0 AND `id`=0; -- 5 
UPDATE `smart_scripts` SET `event_param1`=5900, `event_param2`=10200, `event_param3`=8200, `event_param4`=14100 WHERE `entryorguid`=481 AND `source_type`=0 AND `id`=1; -- 5900 10200 8200 14100

-- Slark
DELETE FROM `smart_scripts` WHERE `entryorguid`=519 AND `source_type`=0 AND `id`=0;

-- Harvest Reaper
UPDATE `smart_scripts` SET `event_param1`=2000, `event_param2`=6000, `event_param3`=14000, `event_param4`=22100 WHERE `entryorguid`=115 AND `source_type`=0 AND `id`=0; -- 2000 6000 14000 22100

-- Fleshripper
UPDATE `smart_scripts` SET `event_chance`=90 WHERE `entryorguid` IN (154) AND `source_type`=0 AND `id`=0; -- 75 (1109) and 90 (154) 
UPDATE `smart_scripts` SET `event_chance`=75 WHERE `entryorguid` IN (1109) AND `source_type`=0 AND `id`=0;

-- Defias Trapper
UPDATE `smart_scripts` SET `event_chance`=5 WHERE `entryorguid`=504 AND `source_type`=0 AND `id`=0; -- 5

-- Dust Devil
UPDATE `smart_scripts` SET `event_param1`=1000, `event_param2`=10000, `event_param3`=16100, `event_param4`=26900 WHERE `entryorguid`=832 AND `source_type`=0 AND `id`=0; -- 1000 10000 16100 26900

-- Riverpaw Mongrel
UPDATE `smart_scripts` SET `event_param1`=2300, `event_param2`=35400 WHERE `entryorguid`=123 AND `source_type`=0 AND `id`=1; -- 2300 35400

-- Defias Knuckleduster
UPDATE `smart_scripts` SET `event_chance`=5 WHERE `entryorguid`=449 AND `source_type`=0 AND `id`=0; -- 5
DELETE FROM `smart_scripts` WHERE `entryorguid`=449 AND `source_type`=0 AND `id`=2;

-- Fix bytes2 for some range-attacking creatures
UPDATE `creature_addon` SET `bytes2`=1 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id1` IN (1831,8561,12322,2212,3745,3926,7155,7442,8564,11680,500)); -- 1
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry` IN (1831,8561,12322,2212,3745,3926,7155,7442,8564,11680,500); -- 1

-- Slark shoud be running (Only slark runs as per wowhead)  
UPDATE `waypoint_data` SET `move_type`=0 WHERE `id` IN (902060); -- was set to 0