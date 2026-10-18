-- Dark Shade -- Scholomance - Solo Melee can't kill so this makes it have a timer.
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=11284; -- ""
DELETE FROM `smart_scripts` WHERE `entryorguid`=11284 AND `source_type`=0 AND `id` IN (0);
DELETE FROM `smart_scripts` WHERE `entryorguid`=10472 AND `source_type`=0 AND `id` IN (4);