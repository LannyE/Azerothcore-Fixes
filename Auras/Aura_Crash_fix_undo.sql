/*
Change Auras from CREATURE_TEMPLATE_ADDONS to smart script to attempt to solve the Assertion failed on shutdown bug.
*/

-- Sickly Gazelle
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 12296; -- ""
UPDATE `creature_addon` SET `auras` = 19502 WHERE `guid` IN (13101,13102,13103,13104,13105,13106,13107,13108,13110,13111,13112,13113,13114,13115,13116,13117,13118,13119,13121,13122,13123,13124,13125,13126,13127,13129,13130,13131,13132,13133,13134,13135,13136,13137,13138,13139,13140,13141,13142,13143,13144,13145,13146,13147,13148,13149,13150,13151,13152,13153,13154,13155,13156,13157,13158,13159,13160,13161,13163,13164); -- 19502

DELETE FROM `smart_scripts` WHERE `entryorguid` in (12296) and `source_type` = 0;


-- Steam Frog
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 25679; -- ""
UPDATE `creature_template_addon` SET `auras` = 36151 WHERE `entry` IN (25679); -- 36151

DELETE FROM `smart_scripts` WHERE `entryorguid` in (25679) and `source_type` = 0;


-- Tundra Penguin
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 28440; -- ""
UPDATE `creature_template_addon` SET `auras` = 51583 WHERE `entry` IN (28440); -- 51583

DELETE FROM `smart_scripts` WHERE `entryorguid` in (28440) and `source_type` = 0;


-- Sickly Deer
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 12298; -- ""
UPDATE `creature_template_addon` SET `auras` = 19502 WHERE `entry` IN (12298); -- 19502

DELETE FROM `smart_scripts` WHERE `entryorguid` in (12298) and `source_type` = 0;