/*
undo
- Add Sky Commander Adaris RP after Quests 7-6-26
Terokk's Downfall
Countdown to Doom
World of Shadows

Pulled largely from trinitycore
*/
-- Severin
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=23042;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN 23042) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2304200,2304201,2304202,2304203) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23042) AND `GroupID`IN (1,2);

DELETE FROM `waypoint_data` WHERE `id` IN (230420,230421);


-- Sky Commander Adaris
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=23038; -- ""

UPDATE `creature` SET `orientation`=5.79449 WHERE `id`=23038; -- 5.79449

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23038) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2303800,2303801,2303802) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23038) AND `GroupID`IN (1,2,3,4,5,6);

DELETE FROM `waypoint_data` WHERE `id` IN (230380,230381);


-- Skettis Assassin
DELETE FROM `creature_template_addon` WHERE `entry`=23207;


-- Hazzik
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=23306;

DELETE FROM `smart_scripts` WHERE `entryorguid`=23306 AND `source_type`=0;

DELETE FROM `creature_text` WHERE `CreatureID`=23306;

