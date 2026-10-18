-- Theramore Practicing Guard
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=4951;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4951) AND `source_type`=0;