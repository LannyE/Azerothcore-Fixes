/*
Fix the Smart Scripts for the 3 Death Riders Quests in WOTLK
Give Rokir and Baelok Text they say during fights
Fix error in Sapph SAI script
*/


-- Sapph -> This NPC has two Creature Templates 30956 (non-phased self) and 31161 which is the quest NPC
UPDATE `smart_scripts` SET `link` = 0 WHERE `entryorguid` in (30956) and `source_type` = 0 and `id` in (5); -- Sapph - Remove link to old quest credit SAI -- 6


-- Rokir -> This NPC has its Creature Template mixed up with 30954 (non-phased self)  Included both but 31160 is the quest NPC
UPDATE `creature` SET `position_x` = 6066.26, `position_y` = 1922.77, `position_z` = 632.703, `orientation` = 0.174533, `MovementType` = 1, `wander_distance` = 5 WHERE `guid` = 140201; -- 31160 swap with 30954
UPDATE `creature` SET `position_x` = 6069.33, `position_y` = 1921.17, `position_z` = 632.578, `orientation` = 6.2401, `MovementType` = 0, `wander_distance` = 0 WHERE `guid` = 124724; -- 30954 swap with 31160


UPDATE `smart_scripts` SET `link` = 3 WHERE `entryorguid` in (31160,30954) and `source_type` = 0 and `id` in (0); -- Rokir - Link Zombie Horde to Say Line 1 -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` in (31160,30954) and `source_type` = 0 and `id` in (3,4,5,6);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(30954,0,3,0,61,0,100,1,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - In Combat (Linked) - Say Line 1'),
(30954,0,4,0,4,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - On Aggro - Say Line 0'),
(30954,0,5,0,5,0,100,1,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - On Killed Unit - Say Line 2'),
(30954,0,6,0,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - On Just Died - Say Line 3'),

(31160,0,3,0,61,0,100,1,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - In Combat (Linked) - Say Line 1'),
(31160,0,4,0,4,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - On Aggro - Say Line 0'),
(31160,0,5,0,5,0,100,1,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - On Killed Unit - Say Line 2'),
(31160,0,6,0,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rokir - On Just Died - Say Line 3');

DELETE FROM `creature_text` where `CreatureID` in (30954,31160);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(30954,0,0,'No shining army? No righteous words? It seems your \'honor\' suits you no longer.',14,0,100,0,0,0,31866,0,'Rokir'),
(30954,1,0,'Such noble boasts, but in the end, we\'ve brought you down to reality.',14,0,100,0,0,0,31867,0,'Rokir'),
(30954,2,0,' You too shall serve the Lich King.... your time comes.',14,0,100,0,0,0,31868,0,'Rokir'),
(30954,3,0,'Your blood tastes sweet.',14,0,100,0,0,0,31862,0,'Rokir'),
(30954,3,1,'Another trophy for my collection.',14,0,100,0,0,0,31863,0,'Rokir'),
(30954,3,2,'Your blood is now mine.',14,0,100,0,0,0,31864,0,'Rokir'),
(30954,3,3,'Fragile thing.',14,0,100,0,0,0,31865,0,'Rokir'),

(31160,0,0,'No shining army? No righteous words? It seems your \'honor\' suits you no longer.',14,0,100,0,0,0,31866,0,'Rokir'),
(31160,1,0,'Such noble boasts, but in the end, we\'ve brought you down to reality.',14,0,100,0,0,0,31867,0,'Rokir'),
(31160,2,0,' You too shall serve the Lich King.... your time comes.',14,0,100,0,0,0,31868,0,'Rokir'),
(31160,3,0,'Your blood tastes sweet.',14,0,100,0,0,0,31862,0,'Rokir'),
(31160,3,1,'Another trophy for my collection.',14,0,100,0,0,0,31863,0,'Rokir'),
(31160,3,2,'Your blood is now mine.',14,0,100,0,0,0,31864,0,'Rokir'),
(31160,3,3,'Fragile thing.',14,0,100,0,0,0,31865,0,'Rokir');


-- Baelok -> This NPC has two Creature Templates 30953 (non-phased self) and 31159 which is the quest NPC
UPDATE `creature` SET `MovementType` = 0, `wander_distance` = 0 WHERE `guid` = 124723; -- 30953 should not be moving -- 1 5

DELETE FROM `smart_scripts` WHERE `entryorguid` in (30953,31159) and `source_type` = 0 and `id` in (3,4,5,6);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(30953,0,3,0,4,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - On Aggro - Say Line 0'),
(30953,0,4,0,2,0,100,1,50,50,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - At Health 50% - Say Line 1'),
(30953,0,5,0,5,0,100,1,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - On Killed Unit - Say Line 2'),
(30953,0,6,0,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - On Just Died - Say Line 3'),

(31159,0,3,0,4,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - On Aggro - Say Line 0'),
(31159,0,4,0,2,0,100,1,50,50,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - At Health 50% - Say Line 1'),
(31159,0,5,0,5,0,100,1,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - On Killed Unit - Say Line 2'),
(31159,0,6,0,6,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Baelok - On Just Died - Say Line 3');


DELETE FROM `creature_text` where `CreatureID` in (30953,31159);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(30953,0,0,'I\'ve been waiting.',14,0,100,0,0,0,31855,0,'Baelok'),
(30953,1,0,'Don\'t stop now, I\'ve almost broken a sweat.',14,0,100,0,0,0,31860,0,'Baelok'),
(30953,2,0,'I know no death. I will... be back... for you...',14,0,100,0,0,0,31861,0,'Baelok'),
(30953,3,0,'Your blood tastes sweet.',14,0,100,0,0,0,31862,0,'Baelok'),
(30953,3,1,'Another trophy for my collection.',14,0,100,0,0,0,31863,0,'Baelok'),
(30953,3,2,'Your blood is now mine.',14,0,100,0,0,0,31864,0,'Baelok'),
(30953,3,3,'Fragile thing.',14,0,100,0,0,0,31865,0,'Baelok'),

(31159,0,0,'I\'ve been waiting.',14,0,100,0,0,0,31855,0,'Baelok'),
(31159,1,0,'Don\'t stop now, I\'ve almost broken a sweat.',14,0,100,0,0,0,31860,0,'Baelok'),
(31159,2,0,'I know no death. I will... be back... for you...',14,0,100,0,0,0,31861,0,'Baelok'),
(31159,3,0,'Your blood tastes sweet.',14,0,100,0,0,0,31862,0,'Baelok'),
(31159,3,1,'Another trophy for my collection.',14,0,100,0,0,0,31863,0,'Baelok'),
(31159,3,2,'Your blood is now mine.',14,0,100,0,0,0,31864,0,'Baelok'),
(31159,3,3,'Fragile thing.',14,0,100,0,0,0,31865,0,'Baelok');

DELETE FROM `waypoint_data` where `id` in (1402000) and `point` IN (4);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1402000,4,6417.15,1737.27,508.601,NULL,0,0,0,100,0);