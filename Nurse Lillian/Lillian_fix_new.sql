DELETE FROM waypoints where entry = 5042;

-- Reapply Commit #24676 as of 2-12-26
SET @NPC := 90458;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-8760.21,`position_y`=811.9198,`position_z`=97.793724 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8760.21,811.9198,97.793724,NULL,0,0,0,100,0),
(@PATH,2,-8763.192,810.93536,97.74572,NULL,0,0,0,100,0),
(@PATH,3,-8763.192,810.93536,97.74572,2.199114799499511718,12000,0,0,100,0),
(@PATH,4,-8769.179,814.3151,97.8737,NULL,0,0,0,100,0),
(@PATH,5,-8755.52,814.1872,97.88151,NULL,0,0,0,100,0),
(@PATH,6,-8755.52,814.1872,97.88151,3.839724302291870117,12000,0,0,100,0),
(@PATH,7,-8766.348,820.14746,97.870056,NULL,0,0,0,100,0),
(@PATH,8,-8766.348,820.14746,97.870056,3.874630928039550781,12000,0,0,100,0);