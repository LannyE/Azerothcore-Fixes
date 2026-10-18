SET @GUID := 79875;
SET @PATH := @GUID * 10;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@GUID,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, -9181.740234, 310.278992, 78.979401, 0, 0, 0, 0, 100, 0),
(@PATH, 2, -9181.167969, 237.066055, 72.533020, 0, 0, 0, 0, 100, 0),
(@PATH, 3, -9249.357422, 164.086639, 67.887077, 0, 0, 0, 0, 100, 0),
(@PATH, 4, -9434.747070, 75.749825, 56.185596, 0, 0, 0, 0, 100, 0);