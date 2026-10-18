/*
 -- NEW CREATURE GUID: 300016  NEW CREATURE_TEMPLATE ENTRY: 60001
*/

DELETE FROM `creature_text` WHERE `CreatureID` IN (17443); -- NEW ENTRY
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(17443,0,0,'[Furbolg] Behold the prophecy!',12,0,100,6,0,0,13998,0,'Kurz the Revelator'),
(17443,1,0,'[Furbolg] Spirits grant us vision!',12,0,100,0,0,0,14009,0,'Kurz the Revelator'),
(17443,2,0,'[Furbolg] What could it mean?',12,0,100,6,0,0,14049,0,'Kurz the Revelator');

DELETE FROM `creature` WHERE `guid` IN (300016); -- NEW GUID
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300016,60001,0,0,530,0,0,1,1,0,-3398.6711,-12407.472,18.984,6.05629,180,0,0,8982,1000,0,0,0,0,'',0,0,NULL);

UPDATE `creature_template` SET `unit_flags` = 2,`scale` = 1.2,`AIName` = 'SmartAI' WHERE `entry` in (17452,17453);
UPDATE `creature_template` SET `unit_flags` = 2,`scale` = 1.4,`AIName` = 'SmartAI' WHERE `entry` in (17499,17500);

DELETE FROM `creature_template` WHERE `entry` IN (60001);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`scale`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`spell_school_immune_mask`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(60001,0,0,0,0,0,22712,17200,0,0,'Kurz Spell Dummy','','',0,70,70,2,35,0,1,1.14286,1,1,20,2,0,0,1,2000,2000,1,1,8,33555200,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,'SmartAI',0,1,1,1,1,1,0,0,1,0,0,128,'',12340);

-- Disable Gravity for NPCs so they stop falling to the ground
DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (17452,17453,17499,17500,17532);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(17452,1,0,0,1,0,0,NULL),
(17453,1,0,0,1,0,0,NULL),
(17499,1,0,0,1,0,0,NULL),
(17532,1,0,0,1,0,0,NULL),
(17500,1,0,0,1,0,0,NULL);

DELETE FROM `creature_template_addon` WHERE `entry` IN (17452,17500);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(17452,0,0,0,1,0,0,''),
(17500,0,0,0,0,26,0,'');

UPDATE `gameobject_template` SET `size` = 0.1 WHERE `entry` in (181755);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17443,1744300,1744301,1744302,17452,1745200,17453,17499,17500,60001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17443,0,0,0,1,0,100,0,180000,240000,300000,480000,0,87,1744300,1744301,1744302,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Run Random Script (All Phases)'),
/*
(17443,0,0,0,1,0,100,0,45000,45000,240000,240000,0,80,1744300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Run Script (Kurkin)'),
(17443,0,1,0,1,0,100,0,96000,96000,240000,240000,0,80,1744301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Run Script (Purity)'),
(17443,0,2,0,1,0,100,0,149000,149000,240000,240000,0,80,1744302,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Run Script (Future)'),
*/
(1744300,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 0'),
(1744300,9,1,0,0,0,100,0,1000,1000,0,0,0,11,30499,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Cast \'Revelations\' (No Repeat)'),
(1744300,9,2,0,0,0,100,0,3000,3000,0,0,0,45,1,0,0,0,0,0,19,60001,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Kurz Spell Dummy'),
(1744300,9,3,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 1'),
(1744300,9,4,0,0,0,100,0,3000,3000,0,0,0,12,17453,3,28000,0,0,0,8,0,0,0,0,-3397.8903,-12407.248,22.3992,3.51,'Kurz the Revelator - On Script - Summon Vision of the Kurken'),
(1744300,9,5,0,0,0,100,0,0,0,0,0,0,12,17452,3,28000,0,0,0,8,0,0,0,0,-3400.205,-12408.126,22.3992,0.34,'Kurz the Revelator - On Script - Summon Vision of the Prophesied Hero'),
(1744300,9,6,0,0,0,100,0,0,0,0,0,0,50,184752,32,0,0,0,0,8,0,0,0,0,-3398.540,-12407.5137,20.0898,3.407,'Kurz the Revelator - On Script - Summon Vision Guide Fire GO'),
(1744300,9,7,0,0,0,100,0,7000,7000,0,0,0,45,1,0,0,0,0,0,19,17452,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Vision of the Prophesied Hero'),
(1744300,9,8,0,0,0,100,0,9000,16000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 2'),

(1744301,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 0'),
(1744301,9,1,0,0,0,100,0,1000,1000,0,0,0,11,30499,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Cast \'Revelations\' (No Repeat)'),
(1744301,9,2,0,0,0,100,0,3000,3000,0,0,0,45,1,0,0,0,0,0,19,60001,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Kurz Spell Dummy'),
(1744301,9,3,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 1'),
(1744301,9,4,0,0,0,100,0,3000,3000,0,0,0,12,17532,3,40000,0,0,0,8,0,0,0,0,-3397.06,-12407.004,23.8992,3.51,'Kurz the Revelator - On Script - Summon Vision of Purity'),
(1744301,9,5,0,0,0,100,0,0,0,0,0,0,12,17499,3,40000,0,0,0,8,0,0,0,0,-3400.205,-12408.126,22.3992,0.34,'Kurz the Revelator - On Script - Summon Vision of the Forlorn'),
(1744301,9,6,0,0,0,100,0,0,0,0,0,0,50,184752,40,0,0,0,0,8,0,0,0,0,-3398.540,-12407.5137,20.0898,3.407,'Kurz the Revelator - On Script - Summon Vision Guide Fire GO'),
(1744301,9,7,0,0,0,100,0,3000,3000,0,0,0,45,1,0,0,0,0,0,19,17499,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Vision of the Forlorn'),
(1744301,9,8,0,0,0,100,0,9000,9000,0,0,0,45,1,1,0,0,0,0,19,17499,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Vision of the Forlorn'),
(1744301,9,9,0,0,0,100,0,6000,6000,0,0,0,45,1,2,0,0,0,0,19,17499,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Vision of the Forlorn'),
(1744301,9,10,0,0,0,100,0,2000,2000,0,0,0,41,0,0,0,0,0,0,19,17499,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Force Despawn'),
(1744301,9,11,0,0,0,100,0,0,0,0,0,0,12,17500,3,20000,0,0,0,8,0,0,0,0,-3400.205,-12408.126,22.3992,0.34,'Kurz the Revelator - On Script - Summon Vision of the Remembered'),
(1744301,9,12,0,0,0,100,0,1000,1000,0,0,0,45,1,0,0,0,0,0,19,17500,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Vision of the Remembered'),
(1744301,9,13,0,0,0,100,0,3000,3000,0,0,0,45,1,1,0,0,0,0,19,17500,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Vision of the Remembered'),
(1744301,9,14,0,0,0,100,0,3000,7000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 2'),

(1744302,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 0'),
(1744302,9,1,0,0,0,100,0,1000,1000,0,0,0,11,30499,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Cast \'Revelations\' (No Repeat)'),
(1744302,9,2,0,0,0,100,0,3000,3000,0,0,0,45,1,0,0,0,0,0,19,60001,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Set Data on Kurz Spell Dummy'),
(1744302,9,3,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 1'),
(1744302,9,4,0,0,0,100,0,3000,3000,0,0,0,50,181755,30,0,0,0,0,8,0,0,0,0,-3398.6711,-12407.472,22.3992,3.407,'Kurz the Revelator - On Script - Summon Vision of the Future GO'),
(1744302,9,5,0,0,0,100,0,0,0,0,0,0,50,184752,30,0,0,0,0,8,0,0,0,0,-3398.540,-12407.5137,20.0898,3.407,'Kurz the Revelator - On Script - Summon Vision Guide Fire GO'),
(1744302,9,6,0,0,0,100,0,13000,20000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - On Script - Say Line 2'),


(17452,0,0,0,38,0,100,0,1,0,0,0,0,80,1745200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Prophesied Hero - On Data Set - Run Script (All Phases)'),


(1745200,9,0,0,0,0,100,0,0,0,0,0,0,17,333,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Prophesied Hero - On Script - Set Emote State(1H Ready)'),
(1745200,9,1,0,0,0,100,0,7000,7000,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Prophesied Hero - On Script - Play Emote(1H Attack)'),
(1745200,9,2,0,0,0,100,0,1000,1000,0,0,0,45,1,0,0,0,0,0,19,17453,0,0,0,0,0,0,0,'Vision of the Prophesied Hero - On Script - Set Data on Vision of the Kurken'),

(17453,0,0,0,38,0,100,0,1,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Kurken - On Data Set - Die'),

(17499,0,0,0,38,0,100,0,1,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Forlorn - On Data Set - Set Flag State (Kneeling)'),
(17499,0,1,0,38,0,100,0,1,1,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Forlorn - On Data Set - Set Flag State (Standing)'),
(17499,0,2,0,38,0,100,0,1,2,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Remembered - On Data Set - Cast \'Transform Visual\' (No Repeat)'),


(17500,0,0,0,38,0,100,0,1,0,0,0,0,11,8990,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Remembered - On Data Set - Cast \'Retribution Aura\' (No Repeat)'),
(17500,0,1,0,38,0,100,0,1,1,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vision of the Remembered - On Data Set - Play Emote (Question)'),

(60001,0,0,0,38,0,100,0,1,0,0,0,0,11,19823,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz Spell Dummy - On Data Set - Cast Spell Fire Blast Visual');
