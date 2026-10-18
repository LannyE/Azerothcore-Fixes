/*
 undo
 Add Boss Summoning to Bash'ir Landing 7-4-26
 Fix misc stuff at Bash'ir Landing
 - New Creature GUID: 300249,300250,300251,300252,300253,300254,300255
*/
-- Bash'ir Landing Boss Bunny
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23395 AND `source_type` = 0 AND `id` = 0;


-- Legion Ring Event InvisMan
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23059); -- ''

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (11,12) AND `SourceEntry` = 23059 AND `SourceId` = 0 AND `ConditionTypeOrReference` = 23;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23059) AND `source_type` = 0 AND `id` IN (10,11);


-- Bash'ir
UPDATE `creature_template` SET `lootid`=0 WHERE `entry` in (23391); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23391) AND `source_type` = 0 AND `id` IN (4,5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2339100,2339101,2339102) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23391);

DELETE FROM `creature_loot_template` WHERE `Entry` IN (23391);


-- Bash'ir's Harbinger
DELETE FROM `smart_scripts` WHERE `entryorguid` in (23390) AND `source_type` = 0 AND `id` IN (4,5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2339000,2339001,2339002) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23390);

DELETE FROM `creature_loot_template` WHERE `Entry` IN (23390);
INSERT INTO `creature_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(23390,1,1100372,0,0,1,5,1,1,'Bash\'ir\'s Harbinger - World Loot Level 72'),
(23390,21877,0,27.3,0,1,0,4,5,'Bash\'ir\'s Harbinger - Netherweave Cloth'),
(23390,25030,25030,20,0,1,1,1,1,'Bash\'ir\'s Harbinger - (ReferenceTable)'),
(23390,32572,0,81.8,0,1,0,1,1,'Bash\'ir\'s Harbinger - Apexis Crystal');


-- Proton Accelerator Controller
DELETE FROM `event_scripts` where `id` IN (15112,15113,15114,15115);

UPDATE `gameobject_template` SET `AIName` = '' WHERE `entry` IN (185959,185962,185963,185964);

DELETE FROM `gameobject` WHERE `guid` IN (160608,160609,160610,160611);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 14 AND `SourceGroup` IN (8706,8707,8708,8709) AND `SourceEntry` IN (10954,10955) AND `SourceId` = 0 AND `ConditionTypeOrReference` = 2;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (8706,8707,8708,8709) AND `SourceEntry` IN (1) AND `SourceId` = 0 AND `ConditionTypeOrReference` = 2;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185959,185962,185963,185964) AND `source_type` = 1;

DELETE FROM `gossip_menu` where `MenuID` IN (8706,8707,8708,8709) AND `TextID` = 10954; 

DELETE FROM `npc_text` where `ID` IN (10954,10955);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`BroadcastTextID0`,`lang0`,`Probability0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`BroadcastTextID1`,`lang1`,`Probability1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`BroadcastTextID2`,`lang2`,`Probability2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`BroadcastTextID3`,`lang3`,`Probability3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`BroadcastTextID4`,`lang4`,`Probability4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`BroadcastTextID5`,`lang5`,`Probability5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`BroadcastTextID6`,`lang6`,`Probability6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`BroadcastTextID7`,`lang7`,`Probability7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`VerifiedBuild`) VALUES 
(10955,'MISSING TEXT','',0,0,100,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0);

DELETE FROM `gossip_menu_option` where `MenuID` IN (8706,8707,8708,8709);


-- Bash'ir Spell Thief
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (77967,77959); -- 5 1

UPDATE `creature` SET `position_x` = 3738.03,`position_y` = 5892.01,`position_z` = 264.748,`orientation` = 3.12414 WHERE `guid` = 77957;

DELETE FROM `creature` WHERE `guid` IN (300249);

DELETE FROM `creature_addon` where `guid` in (77959,77967,300249);

DELETE FROM `waypoint_data` WHERE `id` IN (779590,779670,3002490);


-- Bash'ir Raider
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (77949,77950,77953); -- 5 1

DELETE FROM `creature` WHERE `guid` IN (300250);

DELETE FROM `creature_addon` where `guid` in (77949,77950,77953);

DELETE FROM `waypoint_data` WHERE `id` IN (779490,779500,779530);


-- Bash'ir Arcanist
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (77984); -- 0 0

DELETE FROM `creature` WHERE `guid` IN (300251,300252);

DELETE FROM `creature_addon` where `guid` in (77984);

DELETE FROM `waypoint_data` WHERE `id` IN (779840);


-- Unbound Ethereal
DELETE FROM `creature` WHERE `guid` IN (300253,300254,300255);
