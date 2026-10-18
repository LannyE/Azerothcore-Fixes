/*
Lovely Merchants and Public Relations Agents are inside boxes not on top of them
Reposition some
*/

-- Lovely Merchant
UPDATE `creature` SET `position_z` = 97.030655 WHERE `guid` = 244519; -- 97.0308
UPDATE `creature` SET `position_x` = 9869.091,`position_y` = 2492.342,`position_z` = 1317.1234 WHERE `guid` = 244520; -- 9868.93 2492.6 1317.12

-- Public Relations Agent
UPDATE `creature` SET `position_z` = 97.03061 WHERE `guid` = 244525; -- 97.0305