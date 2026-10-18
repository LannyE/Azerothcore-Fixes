-- Zalashji
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 23288;
UPDATE `creature_addon` SET `path_id` = 232880 WHERE `guid` = 23288;

DELETE FROM `waypoint_data` WHERE `id` = 232880;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(232880,1,-7344.04,-4836.498,3.0844,4.459,550000,0,0,100,0),
(232880,2,-7355.52,-4891.35,0.256051,4.2565,300000,0,0,100,0),
(232880,3,-7344.04,-4836.498,3.0844,4.459,900000,0,0,100,0);