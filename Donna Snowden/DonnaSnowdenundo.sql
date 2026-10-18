/*
-- Query: SELECT * FROM temp.smart_scripts where entryorguid in (9298,929800,929801,929802,929803,929804,929805)
LIMIT 0, 1000

-- Date: 2022-01-30 20:20
*/
DELETE FROM waypoints WHERE `entry` IN (9298,929800,929801,14372);

DELETE FROM creature_summon_groups WHERE `summonerId` = 9298;

DELETE FROM smart_scripts WHERE `entryorguid` IN (9298,929800,929801,929802,929803,929804,929805,14372);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 9298;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 14372;