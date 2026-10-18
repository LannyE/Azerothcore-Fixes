/*
Custom Portals to Unused zones Fixed and Updated 4-12-26

Hyjal and Darkwhisper Gorge Portals
-- New Gameobject GUID 300002

-- New Creature_template
 GUID: 300000

Azshara Crater
-- New Creature GUIDs: 300111,300112,300113,300114,300115
-- New Gameobject GUID 300003,300004,300005,300006
*/
-- Hyjal Gate Portal to Hyjal
UPDATE `gameobject_template` SET `AIName`= "SmartGameObjectAI", `name`= "Hyjal Gate"  WHERE `entry` = 177307;
UPDATE `gameobject_template_addon` SET `faction`= 0 WHERE `entry` = 177307;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (177307) AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17730700) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(177307,1,0,0,64,0,100,0,0,0,0,0,0,0,80,17730700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'HyjalGate01 - On click - Run Script'),
(17730700,9,0,0,0,0,100,0,3000,3000,0,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,4613.5317,-3859.2305,944.16406,1.1812,'HyjalGate01 - On Script - Teleport');


-- Darkwhipser Portal NEW OBJECT - Leave Hyjal
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (300000);
INSERT INTO `creature_template_model` (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`) VALUES 
(300000,0,11686,1,1,51831);

DELETE FROM `creature_template` WHERE `entry` IN (300000);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`rank`,`dmgschool`,`DamageModifier`,`BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,`HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,`RacialLeader`,`movementId`,`RegenHealth`,`CreatureImmunitiesId`,`flags_extra`,`ScriptName`,`VerifiedBuild`) VALUES 
(300000,0,0,0,0,0,'Lanny Portal Trigger',NULL,NULL,0,1,1,0,35,0,1,1.14286,1,1,20,0,0,1,0,0,1,1,1,33554432,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,1,1,1,1,1,0,0,1,0,0,'',NULL);

DELETE FROM `creature` WHERE `guid` IN (300111);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300111,300000,0,0,1,0,0,1,1,0,4610.8281,-3866.359,944.1844,1.200923,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `gameobject` WHERE `guid` IN (300002);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300002,200292,1,0,0,1,1,4610.8281,-3866.359,944.1844,1.200923,0,0,0.700909,0.71325,300,100,1,'',0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300111) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300111,0,0,0,101,0,100,0,1,2,0,500,500,0,62,1,0,0,0,0,0,21,2,0,0,0,4565.91,-3927.5,942.276,3.84687,'Lanny Portal Trigger - On Player Near - Teleport \'Player\'');


-- Azshara Crater Alliance Portal .tele azsharacrater GO instance 196391 purple   200292 green
DELETE FROM `creature` WHERE `guid` IN (300112);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300112,300000,0,0,37,0,0,1,1,0,1159.8627,-166.02179,313.90393,0.115319,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `gameobject` WHERE `guid` IN (300003);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300003,196391,37,0,0,1,1,1159.8627,-166.02179,312.90393,0.115319,0,0,0.057627,0.998338,300,100,1,'',0,NULL);

/*
To get a gameobject Orientation use trig
Half of 0.115319 is 0.0576595.
$\sin(0.0576595) = 0.057627$ = rotation2
$\cos(0.0576595) = 0.998338$ = rotation3
*/

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300112) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300112,0,0,0,101,0,100,0,1,2,0,500,500,0,62,1,0,0,0,0,0,21,2,0,0,0,2751.1758,-4602.4155,184.62326,1.5641,'Lanny Portal Trigger - On Player Near - Teleport \'Player\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300112 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,-300112,0,6,0,469,0,0,0,0,0,'','Teleport only if player is Alliance');


-- Azshara Alliance Portal
DELETE FROM `creature` WHERE `guid` IN (300113);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300113,300000,0,0,1,0,0,1,1,0,2751.0544,-4610.5815,184.3718,1.678218,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `gameobject` WHERE `guid` IN (300004);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300004,196391,1,0,0,1,1,2751.0544,-4610.5815,184.3718,1.678218,0,0,0.700909,0.71325,300,100,1,'',0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300113) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300113,0,0,0,101,0,100,0,1,2,0,500,500,0,62,37,0,0,0,0,0,21,2,0,0,0,1154.4868,-166.49554,313.6089,3.0752,'Lanny Portal Trigger - On Player Near - Teleport \'Player\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300113 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,-300113,0,6,0,469,0,0,0,0,0,'','Teleport only if player is Alliance');

-- Azshara Crater Horde Portal -- GO 193609 smaller purple
DELETE FROM `creature` WHERE `guid` IN (300114);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300114,300000,0,0,37,0,0,1,1,0,389.322,965.21826,300.2884,2.6106,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `gameobject` WHERE `guid` IN (300005);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300005,196391,37,0,0,1,1,389.322,965.21826,300.2884,2.6106,0,0,0.964998,0.262243,300,100,1,'',0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300114) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300114,0,0,0,101,0,100,0,1,2,0,500,500,0,62,1,0,0,0,0,0,21,2,0,0,0,3111.2585,-4569.129,191.99373,6.0495,'Lanny Portal Trigger - On Player Near - Teleport \'Player\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300114 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,-300114,0,6,0,67,0,0,0,0,0,'','Teleport only if player is Horde');


-- Azshara Horde Portal
DELETE FROM `creature` WHERE `guid` IN (300115);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300115,300000,0,0,1,0,0,1,1,0,3103.339,-4566.7188,191.83226,5.8617,300,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `gameobject` WHERE `guid` IN (300006);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300006,196391,1,0,0,1,1,3103.339,-4566.7188,191.83226,5.8617,0,0,0.208883,-0.977939,300,100,1,'',0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300115) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300115,0,0,0,101,0,100,0,1,2,0,500,500,0,62,37,0,0,0,0,0,21,2,0,0,0,385.04248,969.1817,300.22812,2.4415,'Lanny Portal Trigger - On Player Near - Teleport \'Player\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300115 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,-300115,0,6,0,67,0,0,0,0,0,'','Teleport only if player is Horde');


--Bough Shadow Portal 
-- Location: 3326.327 Y: -3736.3452 Z: 173.45166 3.0361
-- Teleport (At base of ramp of temple): 3199.253 Y: -3717.2246 Z: 120.83729 3.0151

-- Emerald Dream
-- Location: 3520.4937 Y: -4052.4988 Z: 135.19524 3.3048 map 169
-- Teleport: 3507.5815 Y: -4054.5613 Z: 134.10641 3.3048 MAP 169