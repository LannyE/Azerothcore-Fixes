/*
undo
Fix Dawnblade Village 4-2-26

Fix Dawnblade soldiers talking with each other.  

Dawnblade Marksman
 waypoints
 New Guids: 300109
 
Dawnblade Blood Knight
 Fix texts, mounts, waypoints

Dawnblade Summoner
 Fix movements and bloodcrystal beams and RP
 New Guids: 300106,300107,300108

Netherstorm Crystal Target
New GUIDs: 300105

*/
-- Shattered Sun Marksman
UPDATE `smart_scripts` SET `action_param1` = 42580 WHERE `entryorguid` IN (-65694,-65695,-65696,-65697,-65698,-65699,-65700,-65702) and `source_type` = '0' and `id` = '0'; -- Wrong shoot 42580
DELETE FROM `smart_scripts` WHERE `entryorguid` = 24938 AND `source_type` = 0 AND `id` IN (8,9,10,11);


-- Shattered Sun Warrior
DELETE FROM `smart_scripts` WHERE `entryorguid` = 25115 AND `source_type` = 0 AND `id` IN (4,5,6,7);


-- Dawnblade Marksman
DELETE FROM `creature` WHERE `guid` IN (300109) AND `id1` = 24979;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 24979 AND `source_type` = 0 AND `id` IN (3,4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2497900) AND `source_type` = 9;

DELETE FROM `waypoint_data` where `id` in (942590);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(942590,1,12731.4,-6653.77,1.27485,NULL,0,0,0,0,0,100,0);


-- Dawnblade Blood Knight
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (24976); -- 0

UPDATE `creature` SET `position_x`=12753.2,`position_y`=-6682.36,`position_z`=2.38948 WHERE `guid`=94312;
UPDATE `creature` SET `position_x`=12775.7,`position_y`=-6672.63,`position_z`=2.38883 WHERE `guid`=94313;
UPDATE `creature` SET `position_x`=12799.8,`position_y`=-6720.97,`position_z`=2.38971 WHERE `guid`=94316;
UPDATE `creature` SET `position_x`=12776.3,`position_y`=-6732.34,`position_z`=2.38958 WHERE `guid`=94317;

UPDATE `creature_addon` SET `mount` = 0 WHERE `guid` in (94309,94325,94400); -- 0 Dawnstar Charger

UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (94312,94321); -- 0

DELETE FROM `creature_addon` where `guid` in (94312,94321);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24976) AND `source_type` = 0 AND `id` IN (4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-94302,-94303,-94304,-94305,-94306,-94307,-94308,-94313) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2497600,2497601,2497602,2497603) AND `source_type` = 9;

DELETE FROM `waypoint_scripts` where `id` IN (447,449);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(447,0,0,0,0,24425,0,0,0,0,491),
(449,0,0,0,0,24425,0,0,0,0,493);

DELETE FROM `waypoint_data` where `id` in (943120,943210,943250,943090,944000);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(943090,1,12690.7,-6635.47,4.71367,NULL,0,0,0,0,447,100,0),
(943090,2,12734.2,-6630.01,2.51197,NULL,0,0,0,0,0,100,0),
(943090,3,12737.7,-6629.93,2.2892,NULL,0,0,0,0,0,100,0),
(943090,4,12737.2,-6632.37,2.10811,NULL,0,0,0,0,0,100,0),
(943090,5,12688.5,-6639.19,4.75524,NULL,0,0,0,0,0,100,0),

(943250,1,12691.8,-6648.18,4.38754,NULL,0,30000,0,0,449,100,0),
(943250,2,12732.6,-6647.13,1.11172,NULL,0,0,0,0,0,100,0),
(943250,3,12735.9,-6647.03,0.809907,NULL,0,0,0,0,0,100,0),
(943250,4,12735.6,-6643.55,1.20219,NULL,0,0,0,0,0,100,0),
(943250,5,12692.5,-6646.35,4.42185,NULL,0,0,0,0,0,100,0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (24976);


-- Dawnblade Summoner
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (24978); -- 0

UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (94299,94291,94290,94289,94292,94293,94294,94265,94269,94268,94276,94271,94270,94264); -- 1 5
UPDATE `creature` SET `position_x`=12650.3,`position_y`=-6671.85,`position_z`=4.67215 WHERE `guid`=94270; -- Wrong location

DELETE FROM `creature` WHERE `guid` IN (300106,300107,300108) AND `id1` = 24978;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 24978 AND `source_type` = 0 AND `id` IN (5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-94272,-94273,-94274,-94275) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(24978,0,5,0,1,0,100,0,5000,5000,5000,5000,0,0,11,34397,0,0,0,0,0,19,19421,20,0,0,0,0,0,0,"Dawnblade Summoner - OOC - Cast Red Beam");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (6) AND `SourceEntry` IN (24978) AND `SourceId`=0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24978);


-- Dawnstar Charger
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` in (25049); -- 14


-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300105);


-- Circle
-- 12599.097,-6669.1353,5.3433566 4.084916 - 4.194735 needs to be scaled down  It is using creature purple Ground Rune 18562 in both places but they don't show at the same time.
DELETE FROM `gameobject` WHERE `guid` IN (300000,300001) AND `id` = 187109;


-- Unleashed Hellion
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (93981,93980,93984,93985,93986,93987); -- 1 5
UPDATE `creature` SET `position_x`=12580,`position_y`=-6948.72,`position_z`=4.79755 WHERE `guid`=93980;


-- Irespeaker
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (93975,93974); -- 1 5

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24999) AND `source_type` = 0 AND `id` = 4;


-- Abyssal Flamewalker
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (93968); -- 0

DELETE FROM `creature_addon` where `guid` in (93968);

DELETE FROM `creature` WHERE `guid` IN (300110) AND `id1` = 25001;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25001) AND `source_type` = 0 AND `id` = 1;

DELETE FROM `waypoint_data` where `id` in (939680);


-- Emissary of Hate
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25003) AND `source_type` = 0 AND `id` IN (3,4);

DELETE FROM `waypoints` WHERE `entry` IN (25003);

DELETE FROM `creature_text` WHERE `CreatureID` IN (25003);


-- Fel Portal Alarm 
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` in (23310); -- make it so the portal actually does appear.  It used a smart script but it didn't work 