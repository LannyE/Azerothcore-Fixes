

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=17678;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 17678, 0, 0, 31, 0, 3, 11288, 0, 0, 0, 0, '', "Despawn Spectral Combatants on Spectral Betrayer only"),
(13, 1, 17678, 0, 1, 31, 0, 3, 11289, 0, 0, 0, 0, '', "Despawn Spectral Combatants on Spectral Defender only"),
(13, 1, 17678, 0, 2, 31, 0, 3, 11620, 0, 0, 0, 0, '', "Despawn Spectral Combatants on Spectral Marauder only"),
(13, 1, 17678, 0, 3, 31, 0, 3, 11621, 0, 0, 0, 0, '', "Despawn Spectral Combatants on Spectral Corpse only");


UPDATE `creature` SET `wander_distance`=5, `MovementType`=1, `spawntimesecs`=30 WHERE `id1` IN (11288, 11289); -- 0 0 345
UPDATE `creature` SET `wander_distance`=5, `MovementType`=1 WHERE `guid` IN (92624); -- 0 0

DELETE FROM `creature` WHERE `guid` IN (92824,92831,92823) AND `id1` = 11288;


-- Spectral Corpse SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11621;

DELETE FROM `smart_scripts` WHERE `entryorguid`=11621 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(11621,0,0,1,8,0,100,0,17678,0,5000,5000,11,17680,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Corpse - On spell hit - Cast Spell"),
(11621,0,1,2,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Corpse - On spell hit (Linked) - Stand State"),
(11621,0,2,0,61,0,100,0,0,0,0,0,41,2000,30,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Corpse - On spell hit (Linked) - Despawn/Respawn");

-- Spectral Marauder SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11620;

DELETE FROM `smart_scripts` WHERE `entryorguid`=11620 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(11620,0,0,1,8,0,100,0,17678,0,5000,5000,11,17680,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Marauder - On spell hit - Cast Spell"),
(11620,0,1,0,61,0,100,0,0,0,0,0,41,2000,30,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Marauder - On spell hit (Linked) - Despawn/Respawn");


-- Spectral Defender SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=11289 AND `source_type`=0 AND `id` IN (2,3,4,5);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(11289,0,2,0,0,0,20,0,5000,30000,20000,30000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Defender - In Combat - Say text"),
(11289,0,3,4,8,0,100,0,17678,0,5000,5000,11,17680,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Defender - On spell hit - Cast Spell"),
(11289,0,4,0,61,0,100,0,0,0,0,0,41,2000,30,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Defender - On spell hit (Linked) - Despawn/Respawn"),
(11289,0,5,0,6,0,100,0,0,0,0,0,41,2000,30,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Defender - On Death - Despawn/Respawn");

-- Spectral Betrayer SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=11288 AND `source_type`=0 AND `id` IN (1,2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(11288,0,1,0,0,0,20,0,5000,30000,20000,30000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Betrayer - In Combat - Say text"),
(11288,0,2,3,8,0,100,0,17678,0,5000,5000,11,17680,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Betrayer - On spell hit - Cast Spell"),
(11288,0,3,0,61,0,100,0,0,0,0,0,41,2000,30,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Betrayer - On spell hit (Linked) - Despawn/Respawn"),
(11288,0,4,0,6,0,100,0,0,0,0,0,41,2000,30,0,0,0,0,1,0,0,0,0,0,0,0,"Spectral Betrayerr - On Death - Despawn/Respawn");

DELETE FROM `creature_text` WHERE `CreatureID` IN (11288, 11289);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `Comment`, `BroadcastTextId`) VALUES
(11289, 0, 0, "We must not give up!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6835),
(11289, 0, 1, "Fight!  Fight for Darrowshire!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6836),
(11289, 0, 2, "Our captain has fallen!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6837),
(11289, 0, 3, "The Alliance has abandoned us!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6838),
(11289, 0, 4, "Where is the Silver Hand?  We need their help!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6839),
(11289, 0, 5, "Fight for your families!  Don't give up!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6840),
(11289, 0, 6, "If we fall, then Darrowshire is doomed!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6841),
(11289, 0, 7, "We must stop these villains!", 12, 0, 100, 0, 0, 0, 'Spectral Defender', 6842),
(11288, 0, 0, "Hail the Lich King!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6827),
(11288, 0, 1, "Your soul is doomed!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6828),
(11288, 0, 2, "Join us, or fall forever!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6829),
(11288, 0, 3, "There is no hope!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6830),
(11288, 0, 4, "Our master wants you!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6831),
(11288, 0, 5, "Darrowshire will fall!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6832),
(11288, 0, 6, "Scourge will prevail!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6833),
(11288, 0, 7, "All hope is lost!", 12, 0, 100, 0, 0, 0, 'Spectral Betrayer', 6834);