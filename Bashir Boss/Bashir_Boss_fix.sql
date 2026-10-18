/*
 Add Boss Summoning to Bash'ir Landing 7-4-26
 Fix misc stuff at Bash'ir Landing
 - New Creature GUID: 300249,300250,300251,300252,300253,300254,300255
 - New Gameobject: 160608,160609,160610,160611
 - uses Legion Ring Event InvisMan creatures.
*/
-- Bash'ir Landing Boss Bunny
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23395 AND `source_type` = 0 AND `id` IN (0,1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23395,0,0,2,54,0,10,0,0,0,0,0,0,0,12,23391,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Just Summoned - Summon \'Bash\'ir\''),
(23395,0,1,2,1,0,100,0,1000,1000,0,0,0,0,12,23390,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC - Summon \'Bash\'ir\'s Harbinger\''),
(23395,0,2,0,61,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Linked) - Despawn');


-- Legion Ring Event InvisMan
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23059); -- ''

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (11,12) AND `SourceEntry` = 23059 AND `SourceId` = 0 AND `ConditionTypeOrReference` = 23;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,11,23059,0,0,23,1,3864,0,0,0,0,0,'','Smart Event ID 10 only runs if Creature 23059 is in Area 3864 (Bash\'ir Landing)'),
(22,12,23059,0,0,23,1,3864,0,0,0,0,0,'','Smart Event ID 11 only runs if Creature 23059 is in Area 3864 (Bash\'ir Landing)');

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23059) AND `source_type` = 0 AND `id` IN (10,11,12);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23059,0,10,0,38,0,100,0,10,10,0,0,0,0,11,41302,3,4294967295,0,0,0,19,23391,20,0,0,0,0,0,0,'Legion Ring Event InvisMan - On Data Set 10 10 - Cast \'Cosmetic - Bash\'ir Spawn Lightning\' on Closest \'Bash\'ir\' (Condition)'),
(23059,0,11,0,38,0,100,0,11,11,0,0,0,0,11,41302,3,4294967295,0,0,0,19,23390,20,0,0,0,0,0,0,'Legion Ring Event InvisMan - On Data Set 11 11 - Cast \'Cosmetic - Bash\'ir Spawn Lightning\' on Closest \'Bash\'ir\'s Harbinger\' (Condition)'),
(23059,0,12,0,54,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Legion Ring Event InvisMan - On Just Summoned - Set Fly On');


-- Bash'ir
UPDATE `creature_template` SET `lootid`=23391 WHERE `entry` in (23391); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23391) AND `source_type` = 0 AND `id` IN (4,5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2339100,2339101,2339102) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23391,0,4,5,54,0,100,0,0,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Just Summoned - Cast \'Ethereal Teleport\''),
(23391,0,5,6,61,0,100,0,0,0,0,0,0,0,11,41365,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Just Summoned (Linked) - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 00\''),
(23391,0,6,7,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Just Summoned (Linked) - Set Phase 1'),
(23391,0,7,0,61,0,100,0,0,0,0,0,0,0,80,2339100,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Just Summoned (Linked) - Run Script'),
(23391,0,8,0,1,0,100,0,14000,14000,0,0,0,0,80,2339101,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - OOC - Run Script'),
(23391,0,9,10,4,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Aggro - Set Phase 2'),
(23391,0,10,0,61,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Aggro (Linked) - Say Line 1'),
(23391,0,11,0,1,1,100,0,14500,14500,5000,5000,0,0,80,2339102,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - OOC (Phase 1) - Run Script'),
(23391,0,12,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185959,60,0,0,0,0,0,0,'Bash\'ir - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23391,0,13,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185962,60,0,0,0,0,0,0,'Bash\'ir - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23391,0,14,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185963,60,0,0,0,0,0,0,'Bash\'ir - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23391,0,15,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185964,60,0,0,0,0,0,0,'Bash\'ir - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23391,0,16,0,21,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Home Reached - Set Phase 1'),

(2339100,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Set Run Off'),
(2339100,9,1,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Set React State \'Defensive\''),
(2339100,9,2,0,0,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Set Flags \'Not Selectable\''),
(2339100,9,3,0,0,0,100,0,0,0,0,0,0,0,46,34,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Move Forward'),
(2339100,9,4,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,5,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,6,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Remove Auras'),
(2339100,9,7,0,0,0,100,0,0,0,0,0,0,0,11,41332,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 01\''),
(2339100,9,8,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,9,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,10,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'BBash\'ir - On Script - Remove Auras'),
(2339100,9,11,0,0,0,100,0,0,0,0,0,0,0,11,41335,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 02\''),
(2339100,9,12,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,13,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,14,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,15,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Remove Auras'),
(2339100,9,16,0,0,0,100,0,0,0,0,0,0,0,11,41336,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 03\''),
(2339100,9,17,0,0,0,100,0,1500,1600,0,0,0,0,45,10,10,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339100,9,18,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Remove Auras'),

(2339101,9,0,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Set Run On'),
(2339101,9,1,0,0,0,100,0,100,100,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Set Home POS'),
(2339101,9,2,0,0,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Set React State \'Aggressive\''),
(2339101,9,3,0,0,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Remove Flags \'Not Selectable\''),
(2339101,9,4,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Bash\'ir - On Script - Attack Nearest Player'),

(2339102,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Say Line 0'),
(2339102,9,1,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185959,60,0,0,0,0,0,0,'Bash\'ir - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339102,9,2,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185962,60,0,0,0,0,0,0,'Bash\'ir - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339102,9,3,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185963,60,0,0,0,0,0,0,'Bash\'ir - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339102,9,4,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185964,60,0,0,0,0,0,0,'Bash\'ir - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339102,9,5,0,0,0,100,0,100,100,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir - On Script - Despawn');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23391);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23391,0,0,'Next time, show me the respect of at least being prepared!',14,0,100,0,0,0,21510,1,''),
(23391,1,0,'I look forward to teaching you the error of your ways.',12,0,100,0,0,0,21669,0,''),
(23391,1,1,'You were expecting one of my harbingers?',12,0,100,0,0,0,21670,0,''),
(23391,1,2,'Perhaps I\'ll be able to sell your hide on the market.  Then again, it\'s likely worthless.',12,0,100,0,0,0,21671,0,''),
(23391,1,3,'Don''t cry, $n.  It will all soon be over.  I promise not to spit upon your corpse.',12,0,100,0,0,0,21683,0,''),
(23391,1,4,'$n, allow me to give you some advice: tuck tail now and fly back down to the safety of the valleys below.',12,0,100,0,0,0,21678,0,''),
(23391,1,5,'You think that you\'re $g man : woman; enough to take the depleted item from me?',12,0,100,0,0,0,21679,0,''),
(23391,1,6,'So many fools, so little time!',12,0,100,0,0,0,21680,0,''),
(23391,1,7,'A $c and $g his : her; friends... how quaint.  This shouldn\'t take long.',12,0,100,0,0,0,21681,0,'');

DELETE FROM `creature_loot_template` WHERE `Entry` IN (23391);
INSERT INTO `creature_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(23391,25030,25030,20,0,1,2,1,1,'Bash\'ir - (ReferenceTable)'),
(23391,1180003,1180003,80,0,1,2,1,1,'Bash\'ir - (ReferenceTable)'),
(23391,32773,0,40,0,1,1,1,3,'Bash\'ir - Bash\'ir\'s Skeleton Key'),
(23391,24013,24013,60,0,1,1,1,1,'Bash\'ir - (ReferenceTable)'),
(23391,32572,0,100,0,1,0,1,3,'Bash\'ir - Apexis Crystal'),
(23391,32670,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Two-Handed Axe'),
(23391,32671,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Mace'),
(23391,32672,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Badge'),
(23391,32673,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Dagger'),
(23391,32674,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Sword'),
(23391,32678,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Ring'),
(23391,32677,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Cloak'),
(23391,32679,0,8.1,0,1,3,1,1,'Bash\'ir - Depleted Staff'),
(23391,32675,0,13.1,0,1,3,1,1,'Bash\'ir - Depleted Mail Gauntlets'),
(23391,32676,0,13.1,0,1,3,1,1,'Bash\'ir - Depleted Cloth Bracers');


-- Bash'ir's Harbinger
DELETE FROM `smart_scripts` WHERE `entryorguid` in (23390) AND `source_type` = 0 AND `id` IN (4,5,6,7,8,9,10,11,12,13,14,15,16);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2339000,2339001,2339002) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23390,0,4,5,54,0,100,0,0,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Just Summoned - Cast \'Ethereal Teleport\''),
(23390,0,5,6,61,0,100,0,0,0,0,0,0,0,11,41365,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Just Summoned (Linked) - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 00\''),
(23390,0,6,7,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Just Summoned (Linked) - Set Phase 1'),
(23390,0,7,0,61,0,100,0,0,0,0,0,0,0,80,2339000,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Just Summoned (Linked) - Run Script'),
(23390,0,8,0,1,0,100,0,14000,14000,0,0,0,0,80,2339001,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - OOC - Run Script'),
(23390,0,9,10,4,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Aggro - Set Phase 2'),
(23390,0,10,0,61,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Aggro (Linked) - Say Line 1'),
(23390,0,11,0,1,1,100,0,14500,14500,5000,5000,0,0,80,2339002,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - OOC (Phase 1) - Run Script'),
(23390,0,12,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185959,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23390,0,13,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185962,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23390,0,14,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185963,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23390,0,15,0,6,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185964,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Death - Respawn Nearest \'Proton Accelerator Controller\''),
(23390,0,16,0,21,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Home Reached - Set Phase 1'),

(2339000,9,0,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Run Off'),
(2339000,9,1,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set React State \'Defensive\''),
(2339000,9,2,0,0,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Flags \'Not Selectable\''),
(2339000,9,3,0,0,0,100,0,0,0,0,0,0,0,46,34,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Move Forward'),
(2339000,9,4,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,16,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,5,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,16,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,6,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Remove Auras'),
(2339000,9,7,0,0,0,100,0,0,0,0,0,0,0,11,41332,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 01\''),
(2339000,9,8,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,9,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,10,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Remove Auras'),
(2339000,9,11,0,0,0,100,0,0,0,0,0,0,0,11,41335,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 02\''),
(2339000,9,12,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,13,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,14,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,15,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Remove Auras'),
(2339000,9,16,0,0,0,100,0,0,0,0,0,0,0,11,41336,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Cast \'Blade\'s Edge - Bash\'ir Materialization Beam 03\''),
(2339000,9,17,0,0,0,100,0,1500,1600,0,0,0,0,45,11,11,0,0,0,0,11,23059,20,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Data on all near \'Legion Ring Event InvisMan\''),
(2339000,9,18,0,0,0,100,0,0,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Remove Auras'),

(2339001,9,0,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Run On'),
(2339001,9,1,0,0,0,100,0,100,100,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set Home POS'),
(2339001,9,2,0,0,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Set React State \'Aggressive\''),
(2339001,9,3,0,0,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Remove Flags \'Not Selectable\''),
(2339001,9,4,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Attack Nearest Player'),

(2339002,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Say Line 0'),
(2339002,9,1,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185959,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339002,9,2,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185962,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339002,9,3,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185963,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339002,9,4,0,0,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,20,185964,60,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Respawn Nearest \'Proton Accelerator Controller\''),
(2339002,9,5,0,0,0,100,0,100,100,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir\'s Harbinger - On Script - Despawn');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23390);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23390,0,0,'Fools!',14,0,100,0,0,0,21513,1,''),
(23390,1,0,'Did you really think that you could fool my master into falling for your sad, little trap, $n?',12,0,100,0,0,0,21512,0,''),
(23390,1,1,'And wheresoever did you find the module to activate that controller?  No matter, you won\'t be doing that again.',12,0,100,0,0,0,21672,0,''),
(23390,1,2,'The master is busy, but I have time to come out and play!',12,0,100,0,0,0,21673,0,''),
(23390,1,3,'Bash\'ir sends his regrets that he could not make it, but he sent me along to salve your disappointment.',12,0,100,0,0,0,21674,0,''),
(23390,1,4,'Do you know what you\'re playing with, $n?  Here, allow me to educate you and your friends.',12,0,100,0,0,0,21675,0,''),
(23390,1,5,'I have other matters to attend to for the master.  Let\'s make this quick so that I can get back to them.',12,0,100,0,0,0,21676,0,''),
(23390,1,6,'You activated the accelerator with only this motley assemblage to back you up?',12,0,100,0,0,0,21677,0,'');

DELETE FROM `creature_loot_template` WHERE `Entry` IN (23390);
INSERT INTO `creature_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(23390,25030,25030,20,0,1,2,1,1,'Bash\'ir\'s Harbinger - (ReferenceTable)'),
(23390,1180003,1180003,80,0,1,2,1,1,'Bash\'ir\'s Harbinger - (ReferenceTable)'),
(23390,32773,0,40,0,1,1,1,3,'Bash\'ir\'s Harbinger - Bash\'ir\'s Skeleton Key'),
(23390,24013,24013,60,0,1,1,1,1,'Bash\'ir\'s Harbinger - (ReferenceTable)'),
(23390,32572,0,100,0,1,0,1,2,'Bash\'ir\'s Harbinger - Apexis Crystal'),
(23390,32670,0,9.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Two-Handed Axe'),
(23390,32671,0,9.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Mace'),
(23390,32672,0,10.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Badge'),
(23390,32673,0,9.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Dagger'),
(23390,32674,0,9.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Sword'),
(23390,32678,0,10.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Ring'),
(23390,32677,0,9.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Cloak'),
(23390,32679,0,9.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Staff'),
(23390,32675,0,8.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Mail Gauntlets'),
(23390,32676,0,8.1,0,1,3,1,1,'Bash\'ir\'s Harbinger - Depleted Cloth Bracers');


-- Proton Accelerator Controller
DELETE FROM `event_scripts` where `id` IN (15112,15113,15114,15115);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(15112,0,10,23059,14600,0,3813.92,5930.54,270.538,3.735),
(15112,0,10,23059,14600,0,3811.24,5927.83,277.524,3.47321),
(15112,0,10,23059,14600,0,3809.28,5926.11,276.773,3.735),
(15112,0,10,23059,14600,0,3819.51,5924.21,274.642,3.21141),
(15112,0,10,23059,14600,0,3818.9,5923.75,268.507,3.735),
(15112,0,10,23059,14600,0,3806.46,5923.64,270.624,3.22886),
(15112,0,10,23059,14600,0,3817.12,5921.87,276.797,5.13127),
(15112,0,10,23059,14600,0,3825.47,5918.67,271.453,5.17805),
(15112,0,10,23059,14600,0,3813.38,5918.31,268.493,4.5204),
(15112,0,10,23059,14600,0,3812.76,5917.88,274.551,2.86234),
(15112,0,10,23059,14600,0,3822.84,5915.94,277.119,4.5204),
(15112,0,10,23059,14600,0,3820.9,5914.19,277.47,5.60524),
(15112,0,10,23059,14600,0,3831.1,5912.23,275.461,4.88193),
(15112,0,10,23059,14600,0,3830.48,5911.82,269.504,4.9787),
(15112,0,10,23059,14600,0,3818.23,5911.57,271.436,5.84648),
(15112,0,10,23059,14600,0,3828.75,5909.96,277.847,5.33825),
(15112,0,10,23059,14600,0,3837.28,5906.52,271.342,3.44542),
(15112,0,10,23059,14600,0,3825.02,5906.34,269.646,6.09908),
(15112,0,10,23059,14600,0,3824.37,5905.87,275.556,6.17244),
(15112,0,10,23059,14600,0,3834.62,5903.87,277.686,2.68808),
(15112,0,10,23059,14600,0,3832.67,5902.16,277.602,1.68464),
(15112,0,10,23059,14600,0,3829.81,5899.67,271.645,1.12549),
(15112,0,10,23395,10000,0,3831.75,5905.57,267.336,2.3658), -- East -- 3831.75 5905.57 267.336

(15113,0,10,23059,14600,0,3927.06,5954.04,278.68,3.26377),
(15113,0,10,23059,14600,0,3926.46,5945.16,278.053,4.20833),
(15113,0,10,23059,14600,0,3932.96,5969.58,277.963,3.35103),
(15113,0,10,23059,14600,0,3921.11,5938.31,277.316,0.646901),
(15113,0,10,23059,14600,0,3932.36,5960.86,277.2,1.76278),
(15113,0,10,23059,14600,0,3921.28,5947.22,275.396,5.0639),
(15113,0,10,23059,14600,0,3929.43,5944.1,275.272,3.73062),
(15113,0,10,23059,14600,0,3935.43,5959.53,274.958,2.77507),
(15113,0,10,23059,14600,0,3927.1,5962.87,274.935,5.3058),
(15113,0,10,23059,14600,0,3933.04,5951.92,271.8,4.03882),
(15113,0,10,23059,14600,0,3923.65,5955.38,271.713,4.7227),
(15113,0,10,23059,14600,0,3917.62,5939.83,271.282,0.0836772),
(15113,0,10,23059,14600,0,3926.97,5936.03,271.075,2.20376),
(15113,0,10,23059,14600,0,3938.93,5967.35,271.011,2.77507),
(15113,0,10,23059,14600,0,3929.44,5971.03,270.869,0.471239),
(15113,0,10,23059,14600,0,3928.86,5944.3,269.248,3.80441),
(15113,0,10,23059,14600,0,3921.61,5947.08,269.098,5.026),
(15113,0,10,23059,14600,0,3927.69,5962.65,268.968,6.0912),
(15113,0,10,23059,14600,0,3934.65,5959.89,268.725,2.93215),
(15113,0,10,23395,10000,0,3923.8,5940.35,267.307,1.23333), -- North

(15114,0,10,23059,14600,0,3809.93,6040.17,269.698,5.26985),
(15114,0,10,23059,14600,0,3813.34,6038.5,275.953,1.81514),
(15114,0,10,23059,14600,0,3815.61,6037.18,275.81,3.66044),
(15114,0,10,23059,14600,0,3819.01,6035.44,269.741,3.11967),
(15114,0,10,23059,14600,0,3806.6,6032.45,273.622,0.467279),
(15114,0,10,23059,14600,0,3807.18,6032.01,267.575,0.565292),
(15114,0,10,23059,14600,0,3809.56,6030.98,275.982,0.957297),
(15114,0,10,23059,14600,0,3814.16,6028.62,267.678,1.76359),
(15114,0,10,23059,14600,0,3814.84,6028.17,273.733,1.84009),
(15114,0,10,23059,14600,0,3802.33,6025.05,269.455,0.788201),
(15114,0,10,23059,14600,0,3805.79,6023.4,275.627,6.19592),
(15114,0,10,23059,14600,0,3808.04,6022.15,275.481,1.23014),
(15114,0,10,23059,14600,0,3811.43,6020.47,269.411,1.4804),
(15114,0,10,23059,14600,0,3799.1,6017.57,273.237,5.65487),
(15114,0,10,23059,14600,0,3799.74,6017.12,267.202,5.07891),
(15114,0,10,23059,14600,0,3802.05,6016.08,275.486,2.16421),
(15114,0,10,23059,14600,0,3806.67,6013.68,267.24,2.51327),
(15114,0,10,23059,14600,0,3807.27,6013.26,273.298,3.22886),
(15114,0,10,23059,14600,0,3794.89,6010.21,269.289,5.65487),
(15114,0,10,23059,14600,0,3798.34,6008.54,275.291,1.07952),
(15114,0,10,23059,14600,0,3800.6,6007.27,275.235,2.09439),
(15114,0,10,23059,14600,0,3803.97,6005.57,269.409,3.19395),
(15114,0,10,23395,10000,0,3812.4,6034.74,265.553,4.27013), -- South

(15115,0,10,23059,14600,0,3904.45,6051.28,275.314,1.8675), -- 3904.45 6051.28 275.314
(15115,0,10,23059,14600,0,3888.68,6056.57,275.388,0.663225),
(15115,0,10,23059,14600,0,3872.74,6061.98,275.606,6.24048),
(15115,0,10,23059,14600,0,3905.41,6053.68,275.596,5.21853),
(15115,0,10,23059,14600,0,3889.62,6058.99,275.414,2.93994),
(15115,0,10,23059,14600,0,3873.71,6064.44,275.499,5.34661),
(15115,0,10,23059,14600,0,3906.65,6057.27,269.026,5.3058),
(15115,0,10,23059,14600,0,3903.29,6047.62,269.178,0.506145),
(15115,0,10,23059,14600,0,3896.51,6053.88,275.45,5.20108),
(15115,0,10,23059,14600,0,3895.43,6050.81,273.181,1.8326),
(15115,0,10,23059,14600,0,3898.6,6059.49,272.845,4.62512),
(15115,0,10,23059,14600,0,3895.79,6051.43,266.952,1.20428),
(15115,0,10,23059,14600,0,3898.27,6058.84,267.133,4.83456),
(15115,0,10,23059,14600,0,3887.58,6052.94,269.181,2.50134),
(15115,0,10,23059,14600,0,3890.84,6062.6,269.042,3.19034),
(15115,0,10,23059,14600,0,3880.69,6059.25,275.33,2.66677),
(15115,0,10,23059,14600,0,3882.75,6064.88,273.22,3.54252),
(15115,0,10,23059,14600,0,3879.7,6056.16,273.064,2.19256),
(15115,0,10,23059,14600,0,3879.98,6056.76,266.893,2.27949),
(15115,0,10,23059,14600,0,3882.39,6064.23,266.953,3.47873),
(15115,0,10,23059,14600,0,3871.52,6058.44,269.282,0.69414),
(15115,0,10,23059,14600,0,3874.44,6068.19,269.464,4.89543),
(15115,0,10,23395,10000,0,3875.61,6061.85,264.964,5.98037); -- West -- 3875.61 6061.85 264.964

UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` IN (185959,185962,185963,185964);

DELETE FROM `gameobject` WHERE `guid` IN (160608,160609,160610,160611);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(160608,185959,530,0,0,1,1,3812.86010742187500000000,5933.50000000000000000000,266.63598632812500000000,4.67748022079467800000,0.00000000000000000000,0.00000000000000000000,-0.71933901309967040000,0.69465899467468260000,1800,255,1,'',45942,NULL),
(160609,185962,530,0,0,1,1,3941.59008789062500000000,5969.43994140625000000000,266.17001342773440000000,3.70009994506835940000,0.00000000000000000000,0.00000000000000000000,-0.96126097440719600000,0.27564001083374023000,1800,255,1,'',45942,NULL),
(160610,185963,530,0,0,1,1,3791.78002929687500000000,6008.29980468750000000000,265.16101074218750000000,5.32325983047485350000,0.00000000000000000000,0.00000000000000000000,-0.46174800395965576000,0.88701099157333370000,1800,255,1,'',45942,NULL),
(160611,185964,530,0,0,1,1,3905.88989257812500000000,6044.87011718750000000000,265.30398559570310000000,1.67551004886627200000,0.00000000000000000000,0.00000000000000000000,0.74314397573471070000,0.66913199424743650000,1800,255,1,'',45942,NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 14 AND `SourceGroup` IN (8706,8707,8708,8709) AND `SourceEntry` IN (10954,10955) AND `SourceId` = 0 AND `ConditionTypeOrReference` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
-- Menu 8706
(14,8706,10954,0,0,2,0,32759,1,0,0,'Show text 10954 if player has Accelerator Module'),
(14,8706,10955,0,0,2,0,32759,1,0,1,'Show text 10955 if player DOES NOT have Accelerator Module'),
-- Menu 8707
(14,8707,10954,0,0,2,0,32759,1,0,0,'Show text 10954 if player has Accelerator Module'),
(14,8707,10955,0,0,2,0,32759,1,0,1,'Show text 10955 if player DOES NOT have Accelerator Module'),
-- Menu 8708
(14,8708,10954,0,0,2,0,32759,1,0,0,'Show text 10954 if player has Accelerator Module'),
(14,8708,10955,0,0,2,0,32759,1,0,1,'Show text 10955 if player DOES NOT have Accelerator Module'),
-- Menu 8709
(14,8709,10954,0,0,2,0,32759,1,0,0,'Show text 10954 if player has Accelerator Module'),
(14,8709,10955,0,0,2,0,32759,1,0,1,'Show text 10955 if player DOES NOT have Accelerator Module');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (8706,8707,8708,8709) AND `SourceEntry` IN (1) AND `SourceId` = 0 AND `ConditionTypeOrReference` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(15,8706,1,0,0,2,0,32759,1,0,0,'Show option 1 on menu 8706 only if player has Accelerator Module'),
(15,8707,1,0,0,2,0,32759,1,0,0,'Show option 1 on menu 8707 only if player has Accelerator Module'),
(15,8708,1,0,0,2,0,32759,1,0,0,'Show option 1 on menu 8708 only if player has Accelerator Module'),
(15,8709,1,0,0,2,0,32759,1,0,0,'Show option 1 on menu 8709 only if player has Accelerator Module');

DELETE FROM `smart_scripts` WHERE `entryorguid` in (185959,185962,185963,185964) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(185959,1,0,1,62,0,100,0,8706,1,0,0,0,0,11,41225,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select - Player Casts East Spell'),
(185959,1,1,2,61,0,100,0,0,0,0,0,0,0,57,32759,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Remove 1x Accelerator Module from Invoker'),
(185959,1,2,0,61,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Despawn'),

(185962,1,0,1,62,0,100,0,8707,1,0,0,0,0,11,41226,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select - Player Casts North Spell'),
(185962,1,1,2,61,0,100,0,0,0,0,0,0,0,57,32759,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Remove 1x Accelerator Module from Invoker'),
(185962,1,2,0,61,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Despawn'),

(185963,1,0,1,62,0,100,0,8708,1,0,0,0,0,11,41227,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select - Player Casts South Spell'),
(185963,1,1,2,61,0,100,0,0,0,0,0,0,0,57,32759,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Remove 1x Accelerator Module from Invoker'),
(185963,1,2,0,61,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Despawn'),

(185964,1,0,1,62,0,100,0,8709,1,0,0,0,0,11,41228,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select - Player Casts West Spell'),
(185964,1,1,2,61,0,100,0,0,0,0,0,0,0,57,32759,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Remove 1x Accelerator Module from Invoker'),
(185964,1,2,0,61,0,100,0,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Proton Accelerator Controller - On Gossip Select (Linked) - Despawn');

DELETE FROM `gossip_menu` where `MenuID` IN (8706,8707,8708,8709) AND `TextID` = 10954; 
INSERT INTO `gossip_menu` (`MenuID`,`TextID`) VALUES 
(8706,10954),
(8707,10954),
(8708,10954),
(8709,10954);

DELETE FROM `npc_text` where `ID` IN (10954,10955);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`BroadcastTextID0`,`lang0`,`Probability0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`BroadcastTextID1`,`lang1`,`Probability1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`BroadcastTextID2`,`lang2`,`Probability2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`BroadcastTextID3`,`lang3`,`Probability3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`BroadcastTextID4`,`lang4`,`Probability4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`BroadcastTextID5`,`lang5`,`Probability5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`BroadcastTextID6`,`lang6`,`Probability6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`BroadcastTextID7`,`lang7`,`Probability7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`VerifiedBuild`) VALUES 
(10954,'The controller can be used to activate the linked proton accelerator.  This will call forth one of Bash\'ir\'s harbingers, or perhaps Bash\'ir himself.$B$BAssuming, of course, that you have an accelerator module to activate the device.','',21502,0,100,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0),
(10955,'The controller can be used to activate the linked proton accelerator.  This will call forth one of Bash\'ir\'s harbingers, or perhaps Bash\'ir himself.$B$BUnfortunate that you do not possess an accelerator module to activate the device.','',21503,0,100,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0);

DELETE FROM `gossip_menu_option` where `MenuID` IN (8706,8707,8708,8709);
INSERT INTO `gossip_menu_option` (`MenuID`,`OptionID`,`OptionIcon`,`OptionText`,`OptionBroadcastTextID`,`OptionType`,`OptionNpcFlag`,`ActionMenuID`,`ActionPoiID`,`BoxCoded`,`BoxMoney`,`BoxText`,`BoxBroadcastTextID`,`VerifiedBuild`) VALUES 
(8706,1,0,'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.',21504,1,0,0,0,0,0,NULL,0,0),
(8707,1,0,'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.',21504,1,0,0,0,0,0,NULL,0,0),
(8708,1,0,'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.',21504,1,0,0,0,0,0,NULL,0,0),
(8709,1,0,'Power the proton accelerator with an Accelerator Module to summon Bash\'ir, or one of his harbingers.',21504,1,0,0,0,0,0,NULL,0,0);


-- Bash'ir Spell Thief
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (77967,77959); -- 5 1

UPDATE `creature` SET `position_x` = 3741.300048828125,`position_y` = 5894.580078125,`position_z` = 264.7430114746094,`orientation` = 1.18682003 WHERE `guid` = 77957;

DELETE FROM `creature` WHERE `guid` IN (300249);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300249,22242,530,0,0,1,1,1,3953.830078125,6023.33984375,266.03900146484375,1.3923200368,300,0,0,5589,3155,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (77959,77967,300249);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(77959,779590,0,0,1,0,0,NULL),
(77967,779670,0,0,1,0,0,NULL),
(300249,3002490,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (779590,779670,3002490);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(779590,1,3748.81,5919.71,264.993,NULL,0,0,1,0,0,100,0),
(779590,2,3756.2,5920.01,264.811,NULL,0,0,1,0,0,100,0),
(779590,3,3764.71,5931.86,265.501,NULL,0,0,1,0,0,100,0),
(779590,4,3771.11,5942.95,265.847,NULL,0,0,1,0,0,100,0),
(779590,5,3778.08,5949.18,265.47,NULL,0,0,1,0,0,100,0),
(779590,6,3790.08,5941.96,265.368,NULL,0,0,1,0,0,100,0),
(779590,7,3803,5933.62,265.844,NULL,0,0,1,0,0,100,0),
(779590,8,3820.44,5916.78,266.609,NULL,0,0,1,0,0,100,0),
(779590,9,3838.14,5898.63,266.633,5.49837,0,2000,1,0,0,100,0),
(779590,10,3820.78,5916.37,266.653,NULL,0,0,1,0,0,100,0),
(779590,11,3803.54,5933.1,265.876,NULL,0,0,1,0,0,100,0),
(779590,12,3790.24,5942.07,265.372,NULL,0,0,1,0,0,100,0),
(779590,13,3778.55,5949.11,265.49,NULL,0,0,1,0,0,100,0),
(779590,14,3770.98,5942.92,265.854,NULL,0,0,1,0,0,100,0),
(779590,15,3764.81,5931.95,265.505,NULL,0,0,1,0,0,100,0),
(779590,16,3756.23,5920.42,264.813,NULL,0,0,1,0,0,100,0),
(779590,17,3749.28,5919.66,264.966,NULL,0,0,1,0,0,100,0),
(779590,18,3736.93,5927.57,266.391,NULL,0,0,1,0,0,100,0),

(779670,1,3860.25,6067.38,264.784,NULL,0,0,1,0,0,100,0),
(779670,2,3873.95,6063.18,264.871,NULL,0,0,1,0,0,100,0),
(779670,3,3892.78,6056.72,264.829,NULL,0,0,1,0,0,100,0),
(779670,4,3908.92,6051.41,264.831,5.9371,0,2000,1,0,0,100,0),
(779670,5,3893.53,6056.51,264.83,NULL,0,0,1,0,0,100,0),
(779670,6,3869.24,6064.68,264.88,NULL,0,0,1,0,0,100,0),
(779670,7,3860.68,6067.18,264.783,NULL,0,0,1,0,0,100,0),
(779670,8,3846.2,6069.8,265.016,NULL,0,0,1,0,0,100,0),
(779670,9,3831.3,6066.59,264.987,NULL,0,0,1,0,0,100,0),
(779670,10,3845.58,6069.91,265.035,NULL,0,0,1,0,0,100,0),

(3002490,1,3956.92,6039.39,266.017,NULL,0,0,1,0,0,100,0),
(3002490,2,3956.45,6050.03,266.14,NULL,0,0,1,0,0,100,0),
(3002490,3,3956.97,6040.16,266.019,NULL,0,0,1,0,0,100,0),
(3002490,4,3954.29,6023.22,266.038,NULL,0,0,1,0,0,100,0),
(3002490,5,3948.05,6003.01,266.029,NULL,0,0,1,0,0,100,0),
(3002490,6,3942.38,5992.27,265.969,NULL,0,0,1,0,0,100,0),
(3002490,7,3940.02,5977.37,266.38,NULL,0,0,1,0,0,100,0),
(3002490,8,3927.62,5952.93,267.419,NULL,0,0,1,0,0,100,0),
(3002490,9,3916.65,5924.59,266.66,4.32185,0,2000,1,0,0,100,0),
(3002490,10,3927.35,5952.74,267.438,NULL,0,0,1,0,0,100,0),
(3002490,11,3939.98,5977.14,266.399,NULL,0,0,1,0,0,100,0),
(3002490,12,3942.43,5991.95,265.977,NULL,0,0,1,0,0,100,0),
(3002490,13,3948.1,6002.83,266.034,NULL,0,0,1,0,0,100,0),
(3002490,14,3954.19,6022.86,266.038,NULL,0,0,1,0,0,100,0);


-- Bash'ir Raider
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (77949,77950,77953); -- 5 1

DELETE FROM `creature` WHERE `guid` IN (300250);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300250,22241,530,0,0,1,1,1,3957.179931640625,6082.14013671875,269.5979919433594,4.869470119,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (77949,77950,77953);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(77949,779490,0,0,1,0,0,NULL),
(77950,779500,0,0,1,0,0,NULL),
(77953,779530,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (779490,779500,779530);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(779490,1,3754.44,5966.63,266.256,NULL,0,0,1,0,0,100,0),
(779490,2,3759.5,5962.43,266.458,NULL,0,0,1,0,0,100,0),
(779490,3,3763.13,5961.72,266.419,NULL,0,0,1,0,0,100,0),
(779490,4,3768.68,5963.4,266.191,NULL,0,0,1,0,0,100,0),
(779490,5,3778.07,5968.18,265.72,NULL,0,0,1,0,0,100,0),
(779490,6,3785.8,5976.82,265.173,NULL,0,0,1,0,0,100,0),
(779490,7,3793.05,5990.79,265.231,NULL,0,0,1,0,0,100,0),
(779490,8,3798.65,6004.33,264.836,NULL,0,0,1,0,0,100,0),
(779490,9,3808.9,6024.12,265.071,NULL,0,0,1,0,0,100,0),
(779490,10,3813.66,6037.32,265.479,NULL,0,0,1,0,0,100,0),
(779490,11,3809.12,6024.52,265.102,NULL,0,0,1,0,0,100,0),
(779490,12,3798.89,6004.85,264.824,NULL,0,0,1,0,0,100,0),
(779490,13,3793.35,5991.4,265.233,NULL,0,0,1,0,0,100,0),
(779490,14,3785.98,5977.13,265.169,NULL,0,0,1,0,0,100,0),
(779490,15,3778.72,5968.61,265.668,NULL,0,0,1,0,0,100,0),
(779490,16,3768.96,5963.48,266.181,NULL,0,0,1,0,0,100,0),
(779490,17,3763.31,5961.92,266.408,NULL,0,0,1,0,0,100,0),
(779490,18,3760.51,5962.34,266.458,NULL,0,0,1,0,0,100,0),
(779490,19,3754.93,5966.07,266.283,NULL,0,0,1,0,0,100,0),
(779490,20,3750.67,5971.02,266.28,NULL,0,0,1,0,0,100,0),

(779500,1,3718.9,6024.35,265.105,NULL,0,0,1,0,0,100,0),
(779500,2,3725.27,6024.34,266.15,NULL,0,0,1,0,0,100,0),
(779500,3,3730.35,6026.38,266.594,NULL,0,0,1,0,0,100,0),
(779500,4,3725.58,6024.14,266.192,NULL,0,0,1,0,0,100,0),
(779500,5,3719.45,6023.98,265.139,NULL,0,0,1,0,0,100,0),
(779500,6,3716.69,6030.3,264.806,NULL,0,0,1,0,0,100,0),
(779500,7,3716.55,6036.99,264.915,NULL,0,0,1,0,0,100,0),
(779500,8,3718.01,6051.78,265.288,NULL,0,0,1,0,0,100,0),
(779500,9,3723.16,6064.98,265.615,NULL,0,0,1,0,0,100,0),
(779500,10,3729.08,6079.99,266.016,NULL,0,0,1,0,0,100,0),
(779500,11,3727.88,6086.39,265.938,NULL,0,0,1,0,0,100,0),
(779500,12,3724.32,6098.39,265.988,NULL,0,0,1,0,0,100,0),
(779500,13,3721.67,6105.23,266.257,NULL,0,0,1,0,0,100,0),
(779500,14,3716.67,6110.73,266.477,NULL,0,0,1,0,0,100,0),
(779500,15,3722.44,6103.81,266.206,NULL,0,0,1,0,0,100,0),
(779500,16,3727.85,6086.71,265.924,NULL,0,0,1,0,0,100,0),
(779500,17,3728.82,6080.05,266.038,NULL,0,0,1,0,0,100,0),
(779500,18,3723.15,6065.14,265.625,NULL,0,0,1,0,0,100,0),
(779500,19,3717.35,6058.01,265.4,NULL,0,0,1,0,0,100,0),
(779500,20,3718.21,6050.87,265.278,NULL,0,0,1,0,0,100,0),
(779500,21,3718.21,6045.2,265.266,NULL,0,0,1,0,0,100,0),
(779500,22,3716.54,6031.06,264.816,NULL,0,0,1,0,0,100,0),

(779530,1,3761.73,6125.47,266.883,NULL,0,0,1,0,0,100,0),
(779530,2,3767.61,6121.35,266.794,NULL,0,0,1,0,0,100,0),
(779530,3,3771.58,6116.18,266.354,NULL,0,0,1,0,0,100,0),
(779530,4,3772.6,6109.56,266.223,NULL,0,0,1,0,0,100,0),
(779530,5,3775.81,6100.82,266.286,NULL,0,0,1,0,0,100,0),
(779530,6,3779.28,6094.64,266.222,NULL,0,0,1,0,0,100,0),
(779530,7,3775.87,6100.47,266.294,NULL,0,0,1,0,0,100,0),
(779530,8,3772.71,6109.15,266.22,NULL,0,0,1,0,0,100,0),
(779530,9,3771.78,6115.97,266.331,NULL,0,0,1,0,0,100,0),
(779530,10,3768.1,6121.06,266.764,NULL,0,0,1,0,0,100,0),
(779530,11,3761.81,6125.15,266.906,NULL,0,0,1,0,0,100,0),
(779530,12,3756.67,6140.58,266.12,NULL,0,0,1,0,0,100,0),
(779530,13,3760.49,6147.73,266.61,NULL,0,0,1,0,0,100,0),
(779530,14,3766.77,6153.68,266.309,NULL,0,0,1,0,0,100,0),
(779530,15,3769.51,6165.54,265.952,NULL,0,0,1,0,0,100,0),
(779530,16,3767.23,6154.3,266.252,NULL,0,0,1,0,0,100,0),
(779530,17,3761.09,6148.29,266.623,NULL,0,0,1,0,0,100,0),
(779530,18,3756.74,6140.92,266.128,NULL,0,0,1,0,0,100,0),
(779530,19,3758.92,6132.7,266.556,NULL,0,0,1,0,0,100,0);


-- Bash'ir Arcanist
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (77984); -- 0 0

DELETE FROM `creature` WHERE `guid` IN (300251,300252);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300251,22243,530,0,0,1,1,1,3926.360107421875,6023.14990234375,269.6780090332031,1.710420012,300,0,0,5744,3231,0,0,0,0,'',0,0,NULL),
(300252,22243,530,0,0,1,1,1,3912.050048828125,6093.58984375,270.5669860839844,5.581190109,300,0,0,5744,3231,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (77984);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(77984,779840,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (779840);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(779840,1,3810.6,6118.33,265.946,NULL,0,0,1,0,0,100,0),
(779840,2,3815.21,6113.23,265.917,NULL,0,0,1,0,0,100,0),
(779840,3,3816.01,6104.22,265.601,NULL,0,0,1,0,0,100,0),
(779840,4,3820.15,6089.54,265.53,NULL,0,0,1,0,0,100,0),
(779840,5,3828.95,6066.38,264.918,NULL,0,0,1,0,0,100,0),
(779840,6,3827.3,6060.12,264.837,NULL,0,0,1,0,0,100,0),
(779840,7,3835.42,6054.36,265.546,NULL,0,0,1,0,0,100,0),
(779840,8,3838.62,6050.72,266.006,NULL,0,0,1,0,0,100,0),
(779840,9,3839.7,6046.41,266.286,NULL,0,0,1,0,0,100,0),
(779840,10,3838.64,6050.57,266.019,NULL,0,0,1,0,0,100,0),
(779840,11,3835.88,6054.11,265.603,NULL,0,0,1,0,0,100,0),
(779840,12,3827.61,6059.98,264.849,NULL,0,0,1,0,0,100,0),
(779840,13,3829.04,6066.1,264.912,NULL,0,0,1,0,0,100,0),
(779840,14,3820.05,6089.17,265.519,NULL,0,0,1,0,0,100,0),
(779840,15,3816.16,6104.02,265.589,NULL,0,0,1,0,0,100,0),
(779840,16,3815.46,6113.13,265.911,NULL,0,0,1,0,0,100,0);


-- Unbound Ethereal
DELETE FROM `creature` WHERE `guid` IN (300253,300254,300255);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300253,22244,530,0,0,1,1,0,3982.429931640625,6003.25,267.9360046386719,2.136219978,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(300254,22244,530,0,0,1,1,0,3966.6201171875,6084.14013671875,269.12701416015625,4.614150047,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(300255,22244,530,0,0,1,1,0,3826.340087890625,6061.31005859375,264.85198974609375,4.42487001,300,5,0,6986,0,1,0,0,0,'',0,0,NULL);
