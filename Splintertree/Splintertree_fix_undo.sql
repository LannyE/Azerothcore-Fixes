/*
Splintertree Fixes
Splintertree Guard Patrol with Weapons drawn
*/

-- Splintertree Guard
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` IN (32623,32620); -- 0