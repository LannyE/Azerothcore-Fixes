/*
 -- NEW CREATURE GUID: 300016  NEW CREATURE_TEMPLATE ENTRY: 60001
*/
DELETE FROM `creature_text` WHERE `CreatureID` IN (17443);
DELETE FROM `creature` WHERE `guid` IN (300016);

DELETE FROM `creature_template` WHERE `entry` IN (60001);
UPDATE `creature_template` SET `unit_flags` = 0,`scale` = 1,`AIName` = '' WHERE `entry` in (17452,17453,17499,17500);
/*
DELETE FROM `creature_template` WHERE `entry` IN (17452,17453,17499,17500);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`scale`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`spell_school_immune_mask`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(17452,0,0,0,0,0,17031,17030,0,0,'Vision of the Prophesied Hero',NULL,NULL,0,20,20,0,1683,0,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,0,0,1,0,0,0,'',12340),
(17453,0,0,0,0,0,17032,0,0,0,'Vision of the Kurken',NULL,NULL,0,12,12,0,1684,0,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,0,0,1,0,0,0,'',12340),
(17499,0,0,0,0,0,17041,0,0,0,'Vision of the Forlorn','',NULL,0,63,63,0,1683,0,1,1.14286,1,1,20,1,1,0,7.5,2000,2000,1,1,2,0,2048,0,0,0,0,0,0,10,8,0,0,0,0,0,0,0,'',1,1,300,20,1,1,0,0,1,0,0,0,'',12340),
(17500,0,0,0,0,0,17042,0,0,0,'Vision of the Remembered','',NULL,0,63,63,0,1683,0,1,1.14286,1,1,20,1,3,0,35,2000,2000,1,1,2,0,2048,0,0,0,0,0,0,10,12,0,0,0,0,0,0,0,'',1,1,300,20,1,1,0,0,1,617299803,0,0,'',12340),
*/

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (17452,17453,17499,17500,17532);

UPDATE `gameobject_template` SET `size` = 0.2 WHERE `entry` in (181755);

/*
DELETE FROM `gameobject_template` WHERE `entry` IN (181755,181772);
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`size`,`Data0`,`Data1`,`Data2`,`Data3`,`Data4`,`Data5`,`Data6`,`Data7`,`Data8`,`Data9`,`Data10`,`Data11`,`Data12`,`Data13`,`Data14`,`Data15`,`Data16`,`Data17`,`Data18`,`Data19`,`Data20`,`Data21`,`Data22`,`Data23`,`AIName`,`ScriptName`,`VerifiedBuild`) VALUES 
(181755,5,6844,'Vision of the Future','','','',0.2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','',11723),
(181772,5,6848,'[PH] Vision of Purity','','','',1,0,1,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','',-18019);
*/

DELETE FROM `creature_template_addon` WHERE `entry` IN (17452,17500);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17443,1744300,1744301,1744302,17452,1745200,17453,17499,17500,60001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(17443,0,0,3,1,0,100,0,300000,300000,5400000,5400000,0,0,11,30499,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Cast \'Revelations\' (No Repeat)'),
(17443,0,1,4,1,0,100,0,2100000,2100000,5400000,5400000,0,0,11,30536,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Cast \'Revelations\' (No Repeat)'),
(17443,0,2,5,1,0,100,0,3900000,3900000,5400000,5400000,0,0,11,30603,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kurz the Revelator - Out of Combat - Cast \'Revelations\' (No Repeat)');