SET @NPC := 15701;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -4975.995605, -1231.047607, 501.676392, 2.419811, 0, 0, 0, 100, 0),
(@PATH, 2, -4994.347168, -1208.347168, 501.676392, 2.021614, 0, 0, 0, 100, 0),
(@PATH, 3, -4992.331543, -1191.743164, 501.661407, 1.034368, 0, 0, 0, 100, 0),
(@PATH, 4, -4977.826172, -1184.909424, 501.659943, 6.023217, 0, 0, 0, 100, 0),
(@PATH, 5, -4963.172852, -1191.700562, 501.659943, 5.594390, 0, 0, 0, 100, 0),
(@PATH, 6, -4953.628418, -1206.568237, 501.659943, 5.093306, 0, 0, 0, 100, 0),
(@PATH, 7, -4944.017578, -1226.812378, 501.659241, 4.541171, 0, 0, 0, 100, 0),
(@PATH, 8, -4951.852051, -1236.240234, 501.664520, 3.806038, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,14347,0,1,0,0, '');

UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = 15701;

SET @NPC := 15700;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 1578.605957, -4182.716797, 39.134441, 1.467103, 0, 0, 0, 100, 0),
(@PATH, 2, 1580.579590, -4161.104004, 35.596245, 1.116816, 0, 0, 0, 100, 0),
(@PATH, 3, 1592.792236, -4137.739746, 32.130486, 0.887479, 0, 0, 0, 100, 0),
(@PATH, 4, 1606.842896, -4121.146484, 29.679825, 0.547402, 0, 0, 0, 100, 0),
(@PATH, 5, 1647.132690, -4103.271484, 31.960993, 0.366760, 0, 0, 0, 100, 0),
(@PATH, 6, 1684.800659, -4091.520508, 37.020203, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 7, 1712.287964, -4083.820801, 40.581638, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 8, 1731.218018, -4067.316650, 45.004307, 0.883552, 0, 0, 0, 100, 0),
(@PATH, 9, 1712.287964, -4083.820801, 40.581638, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 10, 1684.800659, -4091.520508, 37.020203, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 11, 1647.132690, -4103.271484, 31.960993, 0.366760, 0, 0, 0, 100, 0),
(@PATH, 12, 1606.842896, -4121.146484, 29.679825, 0.547402, 0, 0, 0, 100, 0),
(@PATH, 13, 1592.792236, -4137.739746, 32.130486, 0.887479, 0, 0, 0, 100, 0),
(@PATH, 14, 1580.579590, -4161.104004, 35.596245, 1.116816, 0, 0, 0, 100, 0),
(@PATH, 15, 1578.605957, -4182.716797, 39.134441, 1.467103, 0, 0, 0, 100, 0);

UPDATE `creature_template_addon` SET `path_id` = @PATH WHERE `entry` = @NPC;

UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = @NPC;

DELETE FROM `gossip_menu` WHERE `MenuID` = 61050 AND `TextID` = 8092;
DELETE FROM `gossip_menu` WHERE `MenuID` = 61051 AND `TextID` = 8082;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(61050, 8092),
(61051, 8082);

UPDATE `creature_template` SET `gossip_menu_id` = 61050 WHERE `entry` = 15700;
UPDATE `creature_template` SET `gossip_menu_id` = 61051 WHERE `entry` = 15701;

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 61050 AND `OptionID` IN (0, 1, 2, 3, 4);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(61050, 0, 0, 'How many metal bars have the Horde collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61050, 1, 0, 'How many herbs have the Horde collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61050, 2, 0, 'How many leather skins have the Horde collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61050, 3, 0, 'How many bandages have the Horde collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61050, 4, 0, 'How many cooked goods have the Horde collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 61051 AND `OptionID` IN (0, 1, 2, 3, 4);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(61051, 0, 0, 'How many metal bars have the Alliance collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61051, 1, 0, 'How many herbs have the Alliance collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61051, 2, 0, 'How many leather skins have the Alliance collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61051, 3, 0, 'How many bandages have the Alliance collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0),
(61051, 4, 0, 'How many cooked goods have the Alliance collected so far?', 0, 1, 2, 0, 0, 0, 0, '', 0, 0);

UPDATE `creature_template` SET `ScriptName` = 'npc_mod_war_effort_quartermaster' WHERE `entry` IN (15700, 15701);