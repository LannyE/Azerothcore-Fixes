-- Need Weapon unsheathed
UPDATE `creature_addon` SET `bytes2`= 1 WHERE `guid` IN (38992,38993,38996,38997);

-- Sentinel is outside Auberdine and not inside by inn just walking back and forth as all the classic wow videos I've seen 1-4-26
UPDATE `creature` SET `position_x` = 6422.224,`position_y` = 481.77,`position_z` = 8.183474  WHERE `guid` in (38985);