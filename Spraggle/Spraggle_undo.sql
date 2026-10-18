UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 9997;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 9997 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 999700 AND `source_type` = 9;

