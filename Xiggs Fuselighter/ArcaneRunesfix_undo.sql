
DELETE FROM waypoints WHERE `entry` = 8446;

DELETE FROM smart_scripts WHERE `entryorguid` IN (8392,8446);

DELETE FROM `event_scripts` where `id` = 3084;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(3084,0,10,8392,9000000,0,2249,-7221.97,13.82,1.02);

DELETE FROM `creature_template` where `entry` = 8446;
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`scale`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`spell_school_immune_mask`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(8446,0,0,0,0,0,8011,0,0,0,'Xiggs Fuselighter\'s Flyingmachine',NULL,NULL,0,45,45,0,55,0,1,1.57143,1,1,18,1,0,0,1,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'',0,1,1.2,1,1,1,0,157,1,0,0,2,'',12340);
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (8392);

DELETE FROM `creature_template_addon` where `entry` = 8446;
DELETE FROM `creature_template_movement` where `CreatureId` = 8446;