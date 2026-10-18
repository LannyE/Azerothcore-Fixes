
UPDATE `creature_template` SET `AIName`="" WHERE `entry` IN (17635,17647,17995,17996);

DELETE FROM `creature_template_addon` where entry in (17635,17647,17995,17996);

DELETE FROM smart_scripts WHERE `entryorguid` IN (17635,17647,1764700,17995,17996,1799600);

DELETE FROM waypoints WHERE `entry` IN (17635,17647,17995,17996);