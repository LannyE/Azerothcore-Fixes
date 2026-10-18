-- This is to fix errors on startup about smartai defined in Creature Template but no smartscripts defined.  Guess it is so other things can call them to do actions
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (5608,36481); -- "" SmartAI Tested they still work
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (181988); -- "" SmartGameObjectAI Tested it still works

UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (23853,23852,23854,23855,23845); -- "" 2050
DELETE FROM smart_scripts WHERE entryorguid IN (23853,23852,23854,23855,23845) AND `source_type` = 0 AND `id` = 0;
-- DELETE FROM smart_scripts WHERE entryorguid IN (181988) AND `source_type` = 1 AND `id` = 0;
