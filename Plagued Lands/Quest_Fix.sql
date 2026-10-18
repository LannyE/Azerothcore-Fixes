-- Improve Quest and convert to Smartscript "Plagued Lands"
UPDATE `gossip_menu_option` SET `OptionID`= 0 WHERE `MenuID`=21210;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21210;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,21210,0,0,0,2,0,7586,1,1,1,0,0,'',"Show gossip option if player does not have item Tharnariun\'s Hope"),
(15,21210,0,0,0,9,0,2118,0,0,0,0,0,'',"Show gossip option if player has quest \'Plagued Lands\' taken");

-- Tharnariun Treetender
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName`="" WHERE `entry`=3701;

DELETE FROM `smart_scripts` WHERE `entryorguid`=3701 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`,`event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3701,0,0,1,62,0,100,0,21210,0,0,0,0,56,7586,1,0,0,0,0,7,0,0,0,0,0,0,0,"Tharnariun Treetender - On Gossip Option 0 Selected - Add Item Tharnariun\'s Hope"),
(3701,0,1,0,61,0,100,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Tharnariun Treetender - On Gossip Option 0 Selected - Close Gossip"),
(3701,0,2,0,38,0,100,0,1,1,0,0,0,80,370100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tharnariun Treetender - On Data Set (1 1) - Run Script");

DELETE FROM `smart_scripts` WHERE `entryorguid`=370100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(370100,9,0,0,0,0,100,0,3000,3000,0,0,0,66,0,0,0,0,0,0,19,11836,0,0,0,0,0,0,0,"Tharnariun Treetender - On Script - Set Orientation Closest Creature 'Captured Rabid Thistle Bear'"),
(370100,9,1,0,0,0,100,0,1000,1000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Tharnariun Treetender - On Script - Say Line 0"),
(370100,9,2,0,0,0,100,0,2000,2000,0,0,0,11,9457,0,0,0,0,0,19,11836,0,0,0,0,0,0,0,"Tharnariun Treetender - On Script - Cast 'Tharnariun's Heal'"),
(370100,9,3,0,0,0,100,0,4000,4000,0,0,0,45,1,1,0,0,0,0,19,11836,0,0,0,0,0,0,0,"Tharnariun Treetender - On Script - Set Data 1 1 (Captured Rabid Thistle Bear)"),
(370100,9,4,0,0,0,100,0,100,100,0,0,0,45,1,1,0,0,0,0,19,2164,0,0,0,0,0,0,0,"Tharnariun Treetender - On Script - Set Data 1 1 (Rabid Thistle Bear)"),
(370100,9,5,0,0,0,100,0,4000,4000,0,0,0,41,0,0,0,0,0,0,19,11836,0,1,0,0,0,0,0,"Tharnariun Treetender - On Script - Despawn (0) (Captured Rabid Thistle Bear)"),
(370100,9,6,0,0,0,100,0,2000,2000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.91986,"Tharnariun Treetender - On Script - Set Orientation Home Position");



-- Rabid Thisle Bear
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName`="" WHERE `entry`=2164;

DELETE FROM `smart_scripts` WHERE `entryorguid`=2164 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2164,0,0,0,0,0,100,0,6000,12000,12000,18000,11,3150,32,0,0,0,0,5,0,0,0,0,0,0,0,"Rabid Thistle Bear - In Combat - Cast Rabies"),
(2164,0,1,0,76,0,100,513,0,111148,1,4000,80,216400,2,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Elven Bear Trap in Range - Run Script (No repeat)"),
(2164,0,2,0,4,0,100,512,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Aggro - Store Targetlist"),
(2164,0,3,4,75,0,100,0,0,3701,3,2000,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Rabid Thistle Bear - On \'Tharnariun Treetender\' in Range - Stop Following"),
(2164,0,4,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,3701,0,0,0,0,0,0,"Rabid Thistle Bear - On \'Tharnariun Treetender\' in Range (Linked) - Set Data 1 1"),
-- (2164,0,5,0,61,0,100,0,0,0,0,0,33,11836,0,0,0,0,0,12,1,0,0,0,0,0,0,"Rabid Thistle Bear - On \'Tharnariun Treetender\' in Range (Linked) - Quest Credit \'Plagued Lands\'"),
(2164,0,5,0,38,0,100,0,1,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Data Set 1 1 - Die");

DELETE FROM `smart_scripts` WHERE `entryorguid`=216400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(216400,9,0,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Evade"),
(216400,9,1,0,0,0,100,0,0,0,0,0,33,11836,0,0,0,0,0,12,1,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Quest Credit \'Plagued Lands\'"),
(216400,9,2,0,0,0,100,0,0,0,0,0,29,1,90,0,0,0,0,12,1,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Follow Target"),
(216400,9,3,0,0,0,100,0,0,0,0,0,37,600000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Die in 10 min"),
(216400,9,4,0,0,0,100,0,0,0,0,0,41,630000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Despawn in 10 min 30 seconds"),
(216400,9,5,0,0,0,100,0,0,0,0,0,36,11836,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Update Template to \'Captured Rabid Thistle Bear\'"),
(216400,9,6,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Set Faction 35"),
(216400,9,7,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,111148,0,0,0,0,0,0,"Rabid Thistle Bear - On Script - Set Data 1 1 on Elven Bear Trap");




-- Elven Bear Trap
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=111148; -- SmartGameObjectAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=111148 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(111148,1,0,0,38,0,100,0,1,1,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tharnarun\'s Cure - On Data Set 1 1 - Despawn");



-- Captured Rabid Thisle Bear
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=11836; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=11836 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11836,0,0,0,38,0,100,0,1,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captured Rabid Thistle Bear - On Data Set 1 1 - Die");


