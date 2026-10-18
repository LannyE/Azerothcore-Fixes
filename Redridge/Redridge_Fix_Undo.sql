/*
-- Query: SELECT * FROM temp.waypoint_data where ID = 61500
LIMIT 0, 1000

-- Date: 2023-12-24 00:00
*/
-- Hannah
UPDATE `creature` SET `Orientation` = 3.28305 WHERE `guid` in (6152);

-- Erin
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (6156);

UPDATE `creature_addon` SET `path_id` = 0,`bytes2` = 1 WHERE `guid` in (6156);

DELETE FROM `waypoint_data` WHERE `id` IN (61560);

-- Roger and Jamin
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (5607,5608);

DELETE FROM `creature_text` WHERE `CreatureID` IN (5607,5608);

DELETE FROM smart_scripts WHERE `entryorguid` IN (5607,560700);

-- Nathan and Rachel
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (6154);

DELETE FROM `waypoint_data` WHERE `id` IN (61540);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(61540,1,-9255.39,-2180.08,64.0124,NULL,0,0,0,100,0),
(61540,2,-9269.59,-2192.34,64.0896,NULL,0,0,0,100,0),
(61540,3,-9278.66,-2211.72,63.8006,NULL,0,0,0,100,0),
(61540,4,-9294.84,-2211.43,61.8978,NULL,0,0,0,100,0),
(61540,5,-9319.96,-2209.45,61.8978,NULL,0,0,0,100,0),
(61540,6,-9339.45,-2207.39,61.8978,NULL,0,0,0,100,0),
(61540,7,-9342.57,-2187.79,61.8978,NULL,0,0,0,100,0),
(61540,8,-9337.98,-2206.81,61.8978,NULL,0,0,0,100,0),
(61540,9,-9318.37,-2211.2,61.8978,NULL,0,0,0,100,0),
(61540,10,-9293.7,-2212.77,61.7306,NULL,0,0,0,100,0),
(61540,11,-9276.91,-2212.34,64.0583,NULL,0,0,0,100,0),
(61540,12,-9265.88,-2191.59,64.0891,NULL,0,0,0,100,0),
(61540,13,-9253.05,-2178.32,64.0589,NULL,0,0,0,100,0),
(61540,14,-9256.07,-2152.33,64.0674,NULL,0,0,0,100,0);

-- Madison
DELETE FROM `waypoint_data` WHERE `id` IN (61500);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(61500,1,-9273.65,-2202.3,64.0583,NULL,0,0,0,100,0),
(61500,2,-9279.02,-2211.81,63.78,NULL,0,0,0,100,0),
(61500,3,-9294.12,-2211.1,61.8983,NULL,0,0,0,100,0),
(61500,4,-9315.06,-2209.46,61.8983,NULL,0,0,0,100,0),
(61500,5,-9340.35,-2206.45,61.8983,NULL,0,0,0,100,0),
(61500,6,-9339.42,-2185.2,61.8983,NULL,0,0,0,100,0),
(61500,7,-9337.12,-2208.25,61.8983,NULL,0,0,0,100,0),
(61500,8,-9294.48,-2212.33,61.8983,NULL,0,0,0,100,0),
(61500,9,-9275.54,-2212.81,64.058,NULL,0,0,0,100,0),
(61500,10,-9263.33,-2188.51,64.0891,NULL,0,0,0,100,0),
(61500,11,-9255.46,-2178.33,64.0583,NULL,0,0,0,100,0),
(61500,12,-9255.42,-2147.58,64.0692,NULL,0,0,0,100,0),
(61500,13,-9256.81,-2183.67,64.0122,NULL,0,0,0,100,0),
(61500,14,-9272.44,-2197.67,64.0891,NULL,0,0,0,100,0);
