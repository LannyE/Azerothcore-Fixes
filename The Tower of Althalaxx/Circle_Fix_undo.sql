-- The Tower of Althalaxx Quest Fixes

-- Circle of Imprisonment
UPDATE `gameobject` SET `spawntimesecs`=900 WHERE `id` IN (20351,19879); -- 900
UPDATE `gameobject_template` SET `AIName`='',`Data3`= 0 WHERE `entry` IN (20352,19901); -- ""
UPDATE `gameobject_template` SET `Data0`= 0 WHERE `entry` IN (20351); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20352,19901) AND `source_type`=1;
