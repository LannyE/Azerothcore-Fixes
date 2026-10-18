-- New Gameobject GUID 210001,210002
-- New Gameobject Template Entry 210001,210002

-- Hyjal Gate Portal to Hyjal
UPDATE `gameobject_template` SET `AIName`= "", `Name`= "Doodad_HyjalGate01" WHERE `entry` = 177307;
UPDATE `gameobject_template_addon` SET `faction`= 114 WHERE `entry` = 177307;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (177307) AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (17730700) AND `source_type` = 9;


-- Darkwhipser Portal NEW OBJECT - Leave Hyjal
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (300000);

DELETE FROM `creature_template` WHERE `entry` IN (300000);

DELETE FROM `creature` WHERE `guid` IN (300111);

DELETE FROM `gameobject` WHERE `guid` IN (300002);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300111) AND `source_type` = 0;


-- Azshara Crater Alliance Portal .tele azsharacrater GO instance 196391 purple   200292 green
DELETE FROM `creature` WHERE `guid` IN (300112);

DELETE FROM `gameobject` WHERE `guid` IN (300003);

/*
To get a gameobject Orientation use trig
Half of 0.115319 is 0.0576595.
$\sin(0.0576595) = 0.057627$ = rotation2
$\cos(0.0576595) = 0.998338$ = rotation3
*/

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300112) AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300112 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;


-- Azshara Alliance Portal
DELETE FROM `creature` WHERE `guid` IN (300113);

DELETE FROM `gameobject` WHERE `guid` IN (300004);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300113) AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300113 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;


-- Azshara Crater Horde Portal -- GO 193609 smaller purple
DELETE FROM `creature` WHERE `guid` IN (300114);

DELETE FROM `gameobject` WHERE `guid` IN (300005);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300114) AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300114 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;


-- Azshara Horde Portal
DELETE FROM `creature` WHERE `guid` IN (300115);

DELETE FROM `gameobject` WHERE `guid` IN (300006);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300115) AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=-300115 AND `SourceId`=0 AND `ConditionTypeOrReference`=6;
