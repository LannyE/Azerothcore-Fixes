/*
undo
Blackwind Landing Overhaul 7-9-26
-Fix Navigators and Scouts pathing
*/
-- Campfire 
UPDATE `gameobject_template` SET `Data2` = 0,`ScriptName` = 'go_flames',`AIName` = "" WHERE `entry` in (185544); -- 0 go_flames ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-14134) AND `source_type` = 1;


-- Skyguard Navigator
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` IN (79005);

UPDATE `creature` SET `position_x` = -3365.06,`position_y` = 3656.2,`position_z` = 284.633,`orientation` = 1.51544,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` = 79004;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-79004,-79005) AND `source_type` = 0;


-- Skyguard Scout
UPDATE `creature` SET `position_x` = -3387.62,`position_y` = 3637.36,`position_z` = 315.568,`orientation` = 6.01105,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` = 78998; -- -3387.62 3637.36 315.568 6.01105 5 1
UPDATE `creature` SET `position_x` = -3395.91,`position_y` = 3636.48,`position_z` = 315.321,`orientation` = 0.389707,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` = 78999;  -- -3395.91 3636.48 315.321 0.389707 5 1
UPDATE `creature` SET `position_x` = -3405.7,`position_y` = 3633.15,`position_z` = 314.427,`orientation` = 0.546269,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` = 79000; -- -3405.7 3633.15 314.427 0.546269 5 1

DELETE FROM `spawn_group` where `groupId` IN (42305);

DELETE FROM `spawn_group_template` where `groupId` IN (42305);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22980) AND `source_type` = 0 AND `id` IN (3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-79000,-78998,-78999) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2298008,2298009,2298010,2298011) AND `source_type` = 9;

DELETE FROM `waypoint_data` WHERE `id` IN (229808,229809,229810,229811,229812);


-- Skyguard Windcharger -- equip weapon 32371
UPDATE `creature_template` SET `flags_extra`=98304 WHERE `entry` in (23257); -- 98304

UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (79026); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (79026);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-79022,-79021,-79024) AND `source_type` = 0;

DELETE FROM `waypoint_data` WHERE `id` IN (790260);


-- Skyguard Nether Ray
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` IN (79007,79008,79009);

DELETE FROM `creature_formations` where `leaderGUID` IN (79010);

DELETE FROM `waypoint_data` WHERE `id` IN (790100);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(790100,1,-3376.64,3642.9,285.108,NULL,0,0,0,0,0,100,0),
(790100,2,-3372.5,3645.91,284.747,NULL,0,0,0,0,0,100,0),
(790100,3,-3376.87,3642.62,285.208,NULL,0,0,0,0,0,100,0),
(790100,4,-3381.4,3626.4,279.497,NULL,0,0,0,0,0,100,0),
(790100,5,-3382.56,3624.16,278.254,NULL,0,0,0,0,0,100,0),
(790100,6,-3385.9,3620.78,276.787,NULL,0,0,0,0,0,100,0),
(790100,7,-3389.56,3619.43,276.352,NULL,0,0,0,0,0,100,0),
(790100,8,-3393.41,3613.08,276.426,NULL,0,0,0,0,0,100,0),
(790100,9,-3390.02,3604.89,276.228,NULL,0,0,0,0,0,100,0),
(790100,10,-3397,3597.19,277.005,NULL,0,0,0,0,0,100,0),
(790100,11,-3393.93,3598.74,276.543,NULL,0,0,0,0,0,100,0),
(790100,12,-3390.97,3600.25,276.388,NULL,0,0,0,0,0,100,0),
(790100,13,-3389.91,3605.3,276.307,NULL,0,0,0,0,0,100,0),
(790100,14,-3390.73,3618.8,276.438,NULL,0,0,0,0,0,100,0),
(790100,15,-3384.88,3620.89,277.227,NULL,0,0,0,0,0,100,0),
(790100,16,-3382.09,3624.67,278.332,NULL,0,0,0,0,0,100,0),
(790100,17,-3381.75,3635.6,284.219,NULL,0,0,0,0,0,100,0),
(790100,18,-3379.75,3638.5,285.585,NULL,0,0,0,0,0,100,0),
(790100,19,-3376.62,3642.93,285.105,NULL,0,0,0,0,0,100,0),
(790100,20,-3372.46,3645.93,284.745,NULL,0,0,0,0,0,100,0);