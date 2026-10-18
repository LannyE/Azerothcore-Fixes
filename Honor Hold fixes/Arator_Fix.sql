/*
- Add Arator RP at Honor Hold 12-1-23
- Patched to work with new commit adding Infantry RP with Sid 10-18-26
*/
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (16886);
-- UPDATE `creature_template` SET `mechanic_immune_mask` = 16 WHERE  `entry` IN (16886); -- Arator immune to fear - Infernal
-- UPDATE `creature_template` SET `mechanic_immune_mask` = 0 WHERE  `entry` IN (16886); -- Arator remove immune to fear - Infernal
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (58437);
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (58437);

-- Father Malgor Devidicus 
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (16825);

DELETE FROM `creature_text` WHERE `CreatureID` IN (16886,16825);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16826) and `GroupID` IN (2);
DELETE FROM `creature_text` WHERE `CreatureID` IN (16819) and `GroupID` IN (3,4,5);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(16886,0,0,'Aye, Commander; but I am little no more. I have come to find my father. Have you any news as to his whereabouts? I know that he still lives. I have seen it in my dreams...',12,0,100,1,0,0,12812,0,'Arator the Redeemer'),
(16886,1,0,'Farewell, Commander. I will be staying at the inn, should you require my services.',12,0,100,66,0,0,13322,0,'Arator the Redeemer'),
(16886,2,0,'As long as he remains unfound, I will search. I know that he lives. And I know that I must find him. I am thankful for what you have done, Commander. As my father called upon you, a brother in arms, know that you may call upon me. I am at your service, my Lord.',12,0,100,1,0,0,12815,0,'Arator the Redeemer'),
(16886,3,0,'I am Arator, son of Turalyon and Alleria. So yes, Father, I am \"shome\" kind of elf: half-elf to be precise.',12,0,100,1,0,0,13311,0,'Arator the Redeemer'),
(16886,4,0,'%s nods.',16,0,100,273,0,0,13319,0,'Arator the Redeemer'),
(16886,5,0,'Take care of him, Sid. He may be the only link I have to my father and mother. He needs to sober up...',12,0,100,0,0,0,13320,0,'Arator the Redeemer'),

(16819,3,0,'As I live and breathe! \"Little\" Arator? Is that you?',12,0,100,5,0,0,12811,0,'Force Commander Danath Trollbane'),
(16819,4,0,'%s looks at Arator grimly.',16,0,100,0,0,0,12813,0,'Force Commander Danath Trollbane'),
(16819,5,0,'I am afraid that I do not, Arator. I have not seen or heard from your father in 15 years. We had long since presumed him dead. But know this: I did all that was in my power to try and find him. From the bounds of Hellfire to the ravages of Nagrand, we searched... All for naught. If I could give my own life to bring Turalyon back, I would do so a thousand times over. I... I am sorry.',12,0,100,1,26000,0,12814,0,'Force Commander Danath Trollbane'),

(16825,0,0,'Shay, what\'sh your deal anwaysh? Are you shome kind of elf or shomethin? You looksh shorta familiar.',12,0,100,1,0,0,13310,0,'Father Malgor Devidicus'),
(16825,1,0,'%s\'s face turns white. Sobriety seems to have set in rather quickly.',16,0,100,5,0,0,13312,0,'Father Malgor Devidicus'),
(16825,2,0,'By the Light! So this is why you look familiar. Is this fate? Destiny perhaps? Arator, your father and I were the best of friends. It is I who kept him in good health... Oh the battles we fought... And...',12,0,100,0,0,0,13313,0,'Father Malgor Devidicus'),
(16825,3,0,'%s clears his throat.',16,0,100,0,0,0,13314,0,'Father Malgor Devidicus'),
(16825,4,0,'And... the battle we lost. I... I\'m sorry, Arator. It was my fault...',12,0,100,0,0,0,13315,0,'Father Malgor Devidicus'),
(16825,5,0,'%s begins to sob.',16,0,100,18,0,0,13316,0,'Father Malgor Devidicus'),
(16825,6,0,'Quickly, Sid. Fill my tankard. Make the memories fade...',12,0,100,18,0,0,13317,0,'Father Malgor Devidicus'),

(16826,2,0,'Oh brother... Listen, he\'s gonna be here crying like a baby for another five hours. If you\'re really the son of Turalyon, go speak with Trollbane. He\'s in the keep - top floor.',12,0,100,1,0,0,13318,0,'Sid Limbardi');


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16886,1688600,1688601,16825,1682500,1681900);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `id` IN (2,3,4,5,6);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16819) and `id` IN (5,6,7);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16886,0,0,0,11,0,100,0,0,0,0,0,0,53,0,16886,1,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Respawn - Start Waypoint'),
(16886,0,1,0,40,0,100,0,27,16886,0,0,0,80,1688600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Waypoint 27 Reached - Run Script'),
(16886,0,2,0,40,0,100,0,55,16886,0,0,0,80,1688601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Waypoint 55 Reached - Run Script'),
(16886,0,3,0,68,0,100,0,105,0,0,0,0,117,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Infernal Start - Disable Evade'),  -- Infernal Event Evade Fix Start
(16886,0,4,0,38,0,100,0,1,1,0,0,0,117,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Data Set - Allow Evade'), -- Infernal Event Evade Fix End


(1688600,9,0,0,0,0,100,0,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - Remove Npc Flag Gossip'),
(1688600,9,1,0,0,0,100,0,0,0,0,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Pause Waypoint Movement'),
(1688600,9,2,0,0,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,19,16825,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Set Data on Father Malgor Devidicus'),
(1688600,9,3,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.805,'Arator the Redeemer - On Script - Set Orientation'),
(1688600,9,4,0,0,0,100,0,6000,6000,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Say Line 3'),
(1688600,9,5,0,0,0,100,0,57000,57000,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Say Line 4'),
(1688600,9,6,0,0,0,100,0,3000,3000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Say Line 5'),
(1688600,9,7,0,0,0,100,0,14000,14000,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Resume Waypoint Movement'),
(1688600,9,8,0,0,0,100,0,500,500,0,0,0,45,1,2,0,0,0,0,19,16826,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Set Data on Sid Limbardi'),
(1688600,9,9,0,0,0,100,0,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - Add Npc Flag Gossip'),

(1688601,9,0,0,0,0,100,0,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - Remove Npc Flag Gossip'),
(1688601,9,1,0,0,0,100,0,0,0,0,0,0,54,113000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Pause Waypoint Movement'),
(1688601,9,2,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.24358,'Arator the Redeemer - On Script - Set Orientation'),
(1688601,9,3,0,0,0,100,0,500,500,0,0,0,45,1,1,0,0,0,0,19,16819,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Set Data on Force Commander Danath Trollbane'),
(1688601,9,4,0,0,0,100,0,8000,8000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Say Line 0'),
(1688601,9,5,0,0,0,100,0,60000,60000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Say Line 2'),
(1688601,9,6,0,0,0,100,0,23000,23000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Say Line 1'),
(1688601,9,7,0,0,0,100,0,15000,15000,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Resume Waypoint Movement'),
(1688601,9,8,0,0,0,100,0,500,500,0,0,0,45,1,2,0,0,0,0,19,16819,0,0,0,0,0,0,0,'Arator the Redeemer - On Script - Set Data on Force Commander Danath Trollbane'),
(1688601,9,9,0,0,0,100,0,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Arator the Redeemer - Add Npc Flag Gossip'),

(16819,0,5,0,38,0,100,0,1,1,0,0,0,80,1681900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Data Set - Run Script'),
(16819,0,6,0,38,0,100,0,1,2,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Data Set - Set Orientation'),
(16819,0,7,0,11,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Respawn - Set Phase 1'),

(1681900,9,0,0,0,0,100,0,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Remove Npc Flag Questgiver/Gossip'),
(1681900,9,1,0,0,0,100,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Set Phase 2'),
(1681900,9,2,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Say Line 3'),
(1681900,9,3,0,0,0,100,0,100,100,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.101,'Force Commander Danath Trollbane - On Script - Set Orientation'),
(1681900,9,4,0,0,0,100,0,22000,22000,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Say Line 4'),
(1681900,9,5,0,0,0,100,0,4000,4000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Say Line 5'),
(1681900,9,6,0,0,0,100,0,85000,85000,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Add Npc Flag Questgiver/Gossip'),
(1681900,9,7,0,0,0,100,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Force Commander Danath Trollbane - On Script - Set Phase 1'),

(16825,0,0,0,38,0,100,0,1,1,0,0,0,80,1682500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Data Set - Run Script'),

(1682500,9,0,0,0,0,100,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Remove Npc Flag Questgiver'),
(1682500,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.8504,'Father Malgor Devidicus - On Script - Set Orientation'),
(1682500,9,2,0,0,0,100,0,500,500,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 0'),
(1682500,9,3,0,0,0,100,0,13500,13500,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 1'),
(1682500,9,4,0,0,0,100,0,1000,1000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 2'),
(1682500,9,5,0,0,0,100,0,13000,13000,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 3'),
(1682500,9,6,0,0,0,100,0,3000,3000,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 4'),
(1682500,9,7,0,0,0,100,0,10000,10000,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 5'),
(1682500,9,8,0,0,0,100,0,2500,2500,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Set Orientation'),
(1682500,9,9,0,0,0,100,0,500,500,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Say Line 6'),
(1682500,9,10,0,0,0,100,0,11000,11000,0,0,0,45,1,1,0,0,0,0,19,16826,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Set Data on Sid Limbardi'),
(1682500,9,11,0,0,0,100,0,10000,10000,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Father Malgor Devidicus - On Script - Add Npc Flag Questgiver'),

(16826,0,2,3,38,0,100,0,1,1,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Say Line 2'),
(16826,0,3,4,61,0,100,0,0,0,0,0,0,83,66435,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Remove InnKeeper/Vendor/Quest flags'),
(16826,0,4,0,61,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.0099,'Sid Limbardi - On Data Set - Set Orientation'),
(16826,0,5,6,38,0,100,0,1,2,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Set Orientation'),
(16826,0,6,0,61,0,100,0,0,0,0,0,0,82,66435,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Add InnKeeper/Vendor/Quest flags');


DELETE FROM `waypoint_data` WHERE `id` IN (584370);

DELETE FROM `waypoints` WHERE `entry` IN (16886);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(16886,1,-817.531,2618.18,124.389,0,0,''),
(16886,2,-812.284,2623.36,124.39,0,0,''),
(16886,3,-807.737,2621.4,124.39,0,0,''),
(16886,4,-803.384,2621.58,123.096,0,0,''),
(16886,5,-788.396,2630.61,123.096,0,0,''),
(16886,6,-796.289,2645.54,123.096,0,0,''),
(16886,7,-800.859,2644.72,123.096,0,0,''),
(16886,8,-813.082,2637.67,117.994,0,0,''),
(16886,9,-806.967,2626.57,117.994,0,0,''),
(16886,10,-819.993,2619.33,113.101,0,0,''),
(16886,11,-814.201,2608.95,109.172,0,0,''),
(16886,12,-800.392,2616.99,109.172,0,0,''),
(16886,13,-791.621,2603.09,109.172,0,0,''),
(16886,14,-781.551,2608.67,109.172,0,0,''),
(16886,15,-787.071,2619.82,109.176,0,0,''),
(16886,16,-790.339,2628.05,107.673,0,0,''),
(16886,17,-759.591,2646.67,107.934,0,0,''),
(16886,18,-726.636,2660.42,94.0944,0,0,''),
(16886,19,-717.215,2676.89,95.178,0,0,''),
(16886,20,-703.98,2681.07,93.8066,0,0,''),
(16886,21,-709.54,2698.65,94.366,0,0,''),
(16886,22,-709.22,2712.85,94.7207,0,0,''),
(16886,23,-699.47,2713.21,94.7358,0,0,''),
(16886,24,-700.526,2717.75,94.7358,0,0,''),
(16886,25,-703.485,2719.76,94.7358,0,0,''),
(16886,26,-703.232,2733.36,94.7335,0,0,''),
(16886,27,-704.895,2739.67,94.7335,0,0,''), -- Inn talk to Father orientation to face Father 3.805
(16886,28,-703.362,2730.85,94.7335,0,0,''),
(16886,29,-703.366,2721.76,94.1105,0,0,''),
-- (16886,30,-703.545,2713.43,94.7375,0,0,''), -- Clips wall on exit

(16886,30,-702.246,2713.182,94.737,0,0,''), -- Fix wall clipping

(16886,31,-708.839,2712.59,94.7213,0,0,''),
(16886,32,-709.862,2704.25,94.7213,0,0,''),
(16886,33,-705.478,2684.94,93.9009,0,0,''),
(16886,34,-717.942,2675.33,95.1129,0,0,''),
(16886,35,-726.18,2658.89,94.0704,0,0,''),
(16886,36,-745.81,2657.82,99.8173,0,0,''),
(16886,37,-761.126,2647.87,107.934,0,0,''),
(16886,38,-791.201,2628.68,107.671,0,0,''),

(16886,39,-787.071,2619.82,109.179,0,0,''),  -- Fix going under floor

(16886,40,-781.925,2609.75,109.173,0,0,''),
(16886,41,-791.043,2604.4,109.173,0,0,''),
(16886,42,-802.099,2620.71,109.173,0,0,''),
(16886,43,-812.614,2610.24,109.173,0,0,''),
(16886,44,-818.781,2618.36,113.101,0,0,''),
(16886,45,-807.351,2626.02,117.994,0,0,''),
(16886,46,-812.086,2635.24,117.994,0,0,''),

(16886,47,-799.989,2643.204,123.095,0,0,''), -- Fix another under floor

(16886,48,-795.891,2645.98,123.095,0,0,''),
(16886,49,-790.198,2633.47,123.095,0,0,''),
(16886,50,-803.892,2623.03,123.095,0,0,''),
(16886,51,-808.54,2620.87,124.389,0,0,''),
(16886,52,-813.557,2623.35,124.389,0,0,''),
(16886,53,-818.401,2620.32,124.389,0,0,''),
(16886,54,-817.531,2618.18,124.389,0,0,''),
(16886,55,-816.701,2616.06,124.389,0,0,''); -- Honor Hold Keep - Orientation to face Danath 5.24358
