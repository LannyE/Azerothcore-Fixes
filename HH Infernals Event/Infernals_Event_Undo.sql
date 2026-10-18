/*
-- Query: SELECT * FROM acore_world.creature_template where entry in (19392,19393,18729)
LIMIT 0, 1000

-- Date: 2023-11-27 12:02
*/
DELETE FROM `creature_template` WHERE `entry` IN (19392,19393,18729);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`scale`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`spell_school_immune_mask`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(18729,0,0,0,0,0,1126,15880,0,0,'Infernal Rain (Hellfire)',NULL,NULL,0,70,70,1,14,0,6.4,2.85714,1,1,20,1,0,0,2,2000,2000,1,1,1,33554432,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,0,230,1,0,0,130,'',12340),
(19392,0,0,0,0,0,16387,16388,16389,16390,'Watch Commander Leonus',NULL,NULL,0,60,60,0,1666,0,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,0,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'',1,1,2,1,1,1,0,0,1,0,0,0,'',12340),
(19393,0,0,0,0,0,10811,17188,0,0,'Fear Controller',NULL,NULL,0,70,70,1,1737,0,1,1.14286,1,1,20,1,1,0,2,2000,2000,1,1,1,33554688,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,0,0,1,0,0,130,'',12340);

UPDATE `creature_template` SET `mechanic_immune_mask` = 0 WHERE  `entry` IN (16884,16886); -- Warhorse and Arator  immune to fear remove - Infernal

UPDATE `gameobject_template` SET `AIName` = "" WHERE `entry`=181475;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (181475,18147500) and `source_type` in (1,9);

DELETE FROM `game_event` WHERE `eventEntry` IN (105);
DELETE FROM `game_event_creature` WHERE `eventEntry` IN (105);

SET @CGUID:=86515;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+14;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+14

SET @NPC := @CGUID+0
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` in (865150,865160,865170,865180,865190,865200,865210,865220,865230,865240);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=2 AND `SourceEntry`=33814 AND `SourceId`=0;