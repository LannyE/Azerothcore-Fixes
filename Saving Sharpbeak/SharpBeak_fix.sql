-- Saving Sharpbeak
-- Sharpbeak's Cage

UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI",`Data3`=142000 WHERE `entry`=144070; -- data3 Delay before object is available to be used again

DELETE FROM `smart_scripts` WHERE `entryorguid`=144070 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(144070,1,0,0,70,0,100,0,2,0,0,0,45,1,0,0,0,0,0,19,8023,20,0,0,0,0,0,"Sharpbeak's Cage - On Gameobject State Changed - Set Data 1 0");


-- Sharpbeak
UPDATE `creature_template` SET `speed_walk`=2,`AIName`="SmartAI" WHERE `entry`=8023;
UPDATE `creature` SET `spawntimesecs`=60 WHERE  `guid`=92997;

DELETE FROM creature_template_movement WHERE `CreatureId` = 8023;
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(8023,0,0,1,0,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid`=8023 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=802300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8023,0,0,1,38,0,100,0,1,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak - On Data Set 1 0 - Remove Flag Standstate Dead"),
(8023,0,1,2,61,0,100,0,0,0,0,0,80,802300,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak - On Data Set 1 0 - Run Script"),
(8023,0,2,0,61,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak - On Data Set 1 0 - Set Active On"),
(8023,0,3,4,58,0,100,0,2,8023,0,0,12,8024,3,120000,0,0,0,8,0,0,0,-150.362167,-3511.225830,274.172699,4.062795,"Sharpbeak - On Waypoint 2 Reached - Summon Creature 'Sharpbeak's Father'"),
(8023,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.9140817,"Sharpbeak - On Waypoint 2 Reached (Linked) - Set Orientation"),
(8023,0,5,0,38,0,100,0,2,0,0,0,29,2,270,0,0,0,0,19,8024,10,0,0,0,0,0,"Sharpbeak - On Data Set 2 0 - Start Follow Closest Creature 'Sharpbeak's Father'"),
(8023,0,6,7,38,0,100,0,3,0,0,0,235,5000,0,0,0,0,0,21,50,0,0,0,0,0,0,"Sharpbeak - On Data Set 3 0 - Pause Movement"),
(8023,0,7,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,21,50,0,0,0,0,0,0,"Sharpbeak - On Data Set 3 0 (Linked) - Say Line 0"),
(8023,0,8,0,38,0,100,0,4,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak - On Data Set 4 0 - Despawn Instant"),

(802300,9,0,0,0,0,100,0,2000,2000,0,0,53,0,8023,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak - On Script - Start Waypoint");

-- waypoints
DELETE FROM `waypoints` WHERE `entry` = 8023;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(8023,1,-253.55066,-3630.639,239.60635,NULL,3000,'Sharpbeak'),
(8023,2,-229.494,-3623.71,237.462,NULL,0,'Sharpbeak');


-- Sharpbeak's Father
UPDATE `creature_template` SET `speed_walk`=2,`AIName`="SmartAI" WHERE `entry`=8024;

DELETE FROM creature_template_movement WHERE `CreatureId` = 8024;
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(8024,0,0,1,0,0,0,NULL);


DELETE FROM `smart_scripts` WHERE `entryorguid` = 8024 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 802400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8024,0,0,1,54,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Just Summoned - Set Active On"),
(8024,0,1,2,61,0,100,0,0,0,0,0,53,0,8024,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Just Summoned - Start Waypoint"),
(8024,0,2,0,61,0,100,0,0,0,0,0,12,8025,3,120000,0,0,0,8,0,0,0,-168.569000,-3509.420166,276.238770,4.320847,"Sharpbeak's Father - On Just Summoned - Summon Creature 'Sharpbeak's Mother'"),
(8024,0,3,0,40,0,100,0,1,8024,0,0,45,2,0,0,0,0,0,19,8023,20,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 1 Reached - Set Data 2 0"),
(8024,0,4,5,58,0,100,0,2,8024,0,0,80,802400,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Waypoint End Reached - Run Script"),
(8024,0,5,0,61,0,100,0,0,0,0,0,45,5,0,0,0,0,0,19,8025,100,0,0,0,0,0,"Sharpbeak's Father - On Waypoint End Reached (Linked) - Set Data 5 0(Sharpbeak's Mother)"),

-- (8024,0,4,0,40,0,100,0,2,8024,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 2 Reached - Pause Waypoint"),
-- (8024,0,4,0,40,0,100,0,2,8024,0,0,80,802400,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 2 Reached - Run Script"),
-- (8024,0,6,0,40,0,100,0,1,802400,0,0,45,3,0,0,0,0,0,19,8023,20,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 1 Reached - Set Data 3 0"),
(8024,0,6,7,40,0,100,0,2,802400,0,0,45,4,0,0,0,0,0,10,92997,8023,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 2 Reached - Set Data 4 0 (Sharpbeak)"),
(8024,0,7,8,61,0,100,0,0,0,0,0,45,4,0,0,0,0,0,19,8025,100,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 2 Reached - Set Data 4 0(Sharpbeak's Mother)"),
(8024,0,8,0,61,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Waypoint 2 Reached (Linked) - Despawn Instant"),

(802400,9,0,0,0,0,100,0,0,0,0,0,60,0,2,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Script - Enable Gravity"),
(802400,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.23968,"Sharpbeak's Father - On Script - Set Orientation"),
(802400,9,2,0,0,0,100,0,5000,5000,0,0,60,0,2,1,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Script - Disable Gravity"),
(802400,9,3,0,0,0,100,0,1000,1000,0,0,53,0,802400,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Script - Start WP"),
(802400,9,4,0,0,0,100,0,3000,3000,0,0,45,3,0,0,0,0,0,19,8023,20,0,0,0,0,0,"Sharpbeak's Father - On Script - Set Data 3 0");

-- (802400,9,0,0,0,0,100,0,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Father - On Script - Pause Waypoint"),
-- (802400,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.23968,"Sharpbeak's Father - On Script - Set Orientation");


-- waypoints
DELETE FROM `waypoints` WHERE `entry` IN (8024,802400);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(8024,1,-230.035,-3627.35,240.617,NULL,0,'Sharpbeak father'),
(8024,2,-244.36,-3638.19,238.06,NULL,0,'Sharpbeak father'),

(802400,1,-227.884,-3624.62,237.66,NULL,0,'Sharpbeak father'),
(802400,2,-122.638,-3502.21,256.078,NULL,0,'Sharpbeak father');

/*
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(8024, 1, -230.034515, -3627.350098, 237.616638, 'Sharpbeak father'),
(8024, 2, -244.359818, -3638.187500, 236.659546, 'Sharpbeak father'),
-- (8024, 2, -244.359818, -3638.187500, 236.059546, 'Sharpbeak father'),
-- (8024, 3, -227.883606, -3624.622314, 237.235733, 'Sharpbeak father'),
(8024, 3, -227.883606, -3624.622314, 239.659546, 'Sharpbeak father'),
(8024, 4, -122.637520, -3502.211914, 256.078064, 'Sharpbeak father');
*/


-- Sharpbeak's Mother
UPDATE `creature_template` SET `speed_walk`=2,`AIName`="SmartAI" WHERE `entry`=8025;

DELETE FROM creature_template_movement WHERE `CreatureId` = 8025;
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(8025,0,0,1,0,0,0,NULL);


DELETE FROM `smart_scripts` WHERE `entryorguid`=8025 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 802500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(8025,0,0,1,54,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Mother - On Just Summoned - Set Active On"),
(8025,0,1,0,61,0,100,0,0,0,0,0,29,2,90,0,0,0,0,19,8024,20,0,0,0,0,0,"Sharpbeak's Mother - On Just Summoned - Start Follow Closest Creature 'Sharpbeak's Father'"),
(8025,0,2,0,38,0,100,0,4,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Mother - On Data Set 4 0 - Despawn Instant"),
(8025,0,3,0,38,0,100,0,5,0,0,0,80,802500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Mother - On Data Set 5 0 - Run Script"),

(802500,9,0,0,0,0,100,0,0,0,0,0,60,0,2,0,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Mother - On Script - Enable Gravity"),
(802500,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.23968,"Sharpbeak's Mother - On Script - Set Orientation"),
(802500,9,2,0,0,0,100,0,5000,5000,0,0,60,0,2,1,0,0,0,1,0,0,0,0,0,0,0,"Sharpbeak's Mother - On Script - Disable Gravity");

