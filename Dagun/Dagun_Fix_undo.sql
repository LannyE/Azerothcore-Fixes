
UPDATE `creature_template` SET `unit_flags2` = 2048, `AIName`="" WHERE `entry`=2937;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2937,293700);

DELETE FROM `waypoints` WHERE `entry` = 2937;
