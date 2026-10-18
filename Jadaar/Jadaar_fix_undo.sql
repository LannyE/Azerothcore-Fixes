/*
Add Jadaar and Asric RP events in Icecrown 4-1-26
 Randomly choose out of 5 conversations

*/

-- Jadaar
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (31899);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (31899) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3189900,3189901,3189902,3189903,3189904) AND `source_type` = 9;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry` IN (31899) AND `SourceId`=0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (31899) AND `GroupID` IN (0,1,2,3,4,5,6,7,8,9,10);


-- Asric
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (31898);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (31898) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (31898) AND `GroupID` IN (0,1,2,3,4,5,6,7,8,9,10,11,12);

