-- Need Weapon unsheathed
UPDATE `creature_addon` SET `bytes2`= 0 WHERE `guid` IN (38992,38993,38996,38997);

-- Sentinel is outside Auberdine and not inside by inn just walking back and forth as all the classic wow videos I've seen 1-4-26 undo
UPDATE `creature` SET `position_x` = 6263.59,`position_y` = 487.481,`position_z` = 16.291  WHERE `guid` in (38985);