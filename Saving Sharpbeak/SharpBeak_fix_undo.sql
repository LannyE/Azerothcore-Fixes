-- Saving Sharpbeak
-- Sharpbeak's Cage SAI
SET @ENTRY := 144070;
UPDATE `gameobject_template` SET `AIName`="",`Data3`=6000 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;

UPDATE `creature` SET `spawntimesecs`=350 WHERE  `guid`=92997;

-- Sharpbeak SAI
SET @ENTRY := 8023;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `speed_walk`=1 WHERE  `entry` IN (8023);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=802300 AND `source_type`=9;

DELETE FROM `waypoints` WHERE `entry` = 8023;

-- Sharpbeak's Father SAI
SET @ENTRY := 8024;

DELETE FROM creature_template_movement WHERE `CreatureId` = @ENTRY;

UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE  `entry` IN (8024);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 802400 AND `source_type`=9;
DELETE FROM `waypoints` WHERE `entry` IN (8024,802400);

-- Sharpbeak's Mother SAI
SET @ENTRY := 8025;

DELETE FROM creature_template_movement WHERE `CreatureId` = @ENTRY;

UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE  `entry` IN (8025);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 802500 AND `source_type`=9;


