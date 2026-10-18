/*
- Patch to fix Stormwind Infantry RP with Sid Limbardi since it was added to AZ on 10-10-26
- Remove Infantry fixes and adjust Sid's Creature  
- The commit removed Sid's other texts for the other RP
- These changes were added back to the original SQL fixes.
*/

-- Stormwind Infantry
UPDATE `creature_addon` SET `emote` = 69, `bytes2` = 1 WHERE `guid` in (58142);
UPDATE `creature` SET `orientation` = 0.436332 WHERE `guid` in (58142);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1686400,1686401,1686402) and `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-58142) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-58153) and `source_type` = 0 and `id` = 3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-58153,0,3,0,68,1,100,0,105,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stormwind Infantry - On Infernal Start - Set Emote State (None)');

DELETE FROM `waypoints` WHERE `entry` IN (16864);


-- Sid Limbardi
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16826) and `source_type` = 0 and `id` IN (2,8,9,10);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16826,0,2,3,38,0,100,0,1,1,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sid Limbardi - On Data Set - Say Line 2');

DELETE FROM `creature_text` WHERE `CreatureID` IN (16826) and `GroupID` IN (1,2);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(16826,1,0,'Comin\' right up, yer highness! Is there anythin\' else you\'ll be needin\'? Perhaps yer hat cleaned or yer nails trimmed?',12,0,100,14,0,0,12766,0,'Sid Limbardi'),
(16826,2,0,'Oh brother... Listen, he\'s gonna be here crying like a baby for another five hours. If you\'re really the son of Turalyon, go speak with Trollbane. He\'s in the keep - top floor.',12,0,100,1,0,0,13318,0,'Sid Limbardi');
