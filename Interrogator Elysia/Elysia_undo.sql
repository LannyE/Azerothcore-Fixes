-- Interrogator Elysia
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=17825;
DELETE FROM `creature_text` WHERE `CreatureID` IN (17825);

-- Captured Sunhawk Prisoner
-- UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17824;
DELETE FROM `creature_text` WHERE `CreatureID` IN (17824);


-- Interrogator Elysia, and Captured Sunhawk Prisoner
-- Smart Scripts - Scripts
DELETE FROM smart_scripts WHERE `entryorguid` IN (17825) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (1782500) AND `source_type` = 9;


DELETE FROM smart_scripts WHERE `entryorguid` IN (17824) AND `source_type` = 0 AND `id` IN (2,3,4) ;
