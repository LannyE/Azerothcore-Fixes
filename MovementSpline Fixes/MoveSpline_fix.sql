/*
Movementspline Error Fixes 3-10-26
This fixes errors after commit 25030
*/

-- Winterfall Shaman
UPDATE `creature_formations` SET `dist` = 5 WHERE `memberGUID` = 41033;

-- Silvermoon Guardian
-- UPDATE `creature_formations` SET `dist` = 4 WHERE `memberGUID` IN (56038,56048,56877,56887);