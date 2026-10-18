/*
undo
- Implement the Torkus Jr Event after A fathaer's Duty quest 7-6-26

- Pulled alot of this from Trinitycore
*/

-- Torkus
-- UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 23316; -- Not needed with the Skyguard/Ogrila update

UPDATE `spell_target_position` SET `PositionX` = 2322.37, `PositionY` = 7304.15, `PositionZ` = 365.61, `Orientation` = 5.04 WHERE `ID` = 41108 AND `EffectIndex` = 0; -- 2322.37 7304.15 365.61 5.04 - Summon Torkus Jr.

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23316) AND `source_type` = 0 AND `id` IN (0);


-- Torkus Jr. (1)
UPDATE `creature_template` SET `flags_extra` = 0  WHERE `entry` = 30813;


-- Torkus Jr.
UPDATE `creature_template` SET `speed_walk` = 1.125, `speed_run` = 1.14286, `unit_flags` = 32768,`AIName` = "",`flags_extra` = 2 WHERE `entry` = 23365; -- 1.125 1.14286 32768 '' 2

UPDATE `creature_model_info` SET `BoundingRadius` = 0, `CombatReach` = 0 WHERE `DisplayID` = 21433; -- 0 0

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23365 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2336500,2336501,2336502,2336503) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23365);

DELETE FROM `waypoint_data` WHERE `id` IN (233650);


-- Skyguard Nether Ray
DELETE FROM `creature_text` WHERE `CreatureID` IN (22987);


-- Bronco
UPDATE `creature_template` SET `speed_run` = 1.14286,`AIName` = "" WHERE `entry` = 23380; -- 1.14286 ''

UPDATE `creature_model_info` SET `BoundingRadius` = 0 WHERE `DisplayID` = 21444; -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23380 AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23380);

DELETE FROM `waypoint_data` WHERE `id` IN (233800);


-- Sky Commander Keller
DELETE FROM `creature_text` WHERE `CreatureID` = 23334 AND `GroupID` IN (1,2,3);

