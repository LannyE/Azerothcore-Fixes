/*
TC Waypoints

Basic Creatures
*/

 -- Guard Adams
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (10080); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (10080); -- 0

DELETE FROM `waypoint_data` where `id` in (100800);


-- Darcy
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (10083); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (10083); -- 0

DELETE FROM `waypoint_data` where `id` in (100830);


-- Blackwater Deckhand
-- UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (11198); -- 0

-- UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (11198); -- 0

-- DELETE FROM `waypoint_data` where `id` in (111980);


-- Broken Exile
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (34159); -- 0

DELETE FROM `creature_addon` where `guid` in (34159);

DELETE FROM `waypoint_data` where `id` in (341590);


-- Gazelle
UPDATE `creature` SET `wander_distance` = 20,`MovementType` = 1 WHERE `guid` in (14010,14021,14029,14032,14036,14042,14053); -- 20 1

DELETE FROM `creature_addon` where `guid` in (14010,14021,14029,14032,14036,14042,14053);

DELETE FROM `waypoint_data` where `id` in (140100,140210,140290,140320,140360,140420,140530);


-- Scargil
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (15970); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (15970); -- 0

DELETE FROM `waypoint_data` where `id` in (159700);


-- Lady Zephris
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (16047); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (16047); -- 0

DELETE FROM `waypoint_data` where `id` in (160470);


-- Cave Yeti
UPDATE `creature` SET `wander_distance` = 2,`MovementType` = 1 WHERE `guid` in (16480); -- 2 1

DELETE FROM `creature_addon` where `guid` in (16480);

DELETE FROM `waypoint_data` where `id` in (164800);


-- Rok'Alim the Pounder
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (21591); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (21591); -- 0

DELETE FROM `waypoint_data` where `id` in (215910);


-- Motega Firemane
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (21693); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (21693); -- 0

DELETE FROM `waypoint_scripts` where `id` in (216930) and `guid` IN (953);

DELETE FROM `waypoint_data` where `id` in (216930);


-- Moonglade Warden
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (42393); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (42393); -- 0

DELETE FROM `waypoint_data` where `id` in (423930);


-- Nissa Agamand
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (44990); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (44990); -- 0

DELETE FROM `waypoint_data` where `id` in (449900);


-- Silvermoon Guardian
UPDATE `creature` SET `position_z` = 11.316,`MovementType` = 0 WHERE `guid` in (56870); -- 11.316 0

DELETE FROM `creature_addon` where `guid` in (56870);

DELETE FROM `waypoint_data` where `id` in (568700);


-- Welethelon
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (57631); -- 0

DELETE FROM `creature_addon` where `guid` in (57631);

DELETE FROM `waypoint_data` where `id` in (576310);


-- Noraelath
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (57680); -- 0

DELETE FROM `creature_addon` where `guid` in (57680);

DELETE FROM `waypoint_data` where `id` in (576800);


-- Cruelfin
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (63004); -- 0
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 17496; -- ""

DELETE FROM `creature_addon` where `guid` in (63004);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 17496 AND `source_type` = 0;

DELETE FROM `waypoint_data` where `id` in (630040);


-- Consortium Overseer
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (65566); -- 0

DELETE FROM `creature_addon` where `guid` in (65566);

DELETE FROM `waypoint_scripts` where `id` in (6556600) and `guid` = 915;

DELETE FROM `waypoint_data` where `id` in (655660);


-- Telaari Watcher
/* -- NOT NEEDED this is the wrong one and there is one already pathing correctly in AZ
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (66631); -- 2 1

DELETE FROM `creature_addon` where `guid` in (66631);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(66631,666310,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (666310);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(666310,1,-2569.87,7396.45,5.72133,NULL,2500,0,0,100,0),
(666310,2,-2571.69,7409.17,2.44629,NULL,0,0,0,100,0),
(666310,3,-2572.58,7421.46,1.42022,NULL,0,0,0,100,0),
(666310,4,-2573.65,7435.15,2.23249,NULL,0,0,0,100,0),
(666310,5,-2574.49,7445.56,4.29183,NULL,0,0,0,100,0),
(666310,6,-2575.72,7460.96,10.3153,NULL,0,0,0,100,0),
(666310,7,-2576.16,7466.34,10.8911,NULL,0,0,0,100,0),
(666310,8,-2574.64,7445.88,4.38405,NULL,0,0,0,100,0),
(666310,9,-2573.76,7433.69,2.08194,NULL,0,0,0,100,0),
(666310,10,-2571.27,7410.77,2.27039,NULL,0,0,0,100,0),
(666310,11,-2570.02,7392.35,7.51681,NULL,0,0,0,100,0),
(666310,12,-2569.09,7378.65,11.2428,NULL,20000,0,0,100,0);
*/
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` IN (18488,19149); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19149,-68474,-68475,-68476,-68477,-68478) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18488,19149);


-- Telaari Elekk Rider
/* in a formation with 68372
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (68373); -- 2 1

UPDATE `creature_addon` SET `path_id` = 683730 WHERE `guid` in (68373); -- 0

DELETE FROM `waypoint_data` where `id` in (683730);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(683730,1,-2569.41,7256.47,14.2541,NULL,2000,0,0,100,0),
(683730,2,-2550.31,7268.91,14.9022,NULL,0,0,0,100,0),
(683730,3,-2548.86,7278.63,14.8008,NULL,0,0,0,100,0),
(683730,4,-2554.74,7296.89,13.8136,NULL,0,0,0,100,0),
(683730,5,-2575.12,7294.04,13.8264,NULL,0,0,0,100,0),
(683730,6,-2586.95,7291.62,18.1236,NULL,0,0,0,100,0),
(683730,7,-2599.57,7287.94,18.2191,NULL,0,0,0,100,0),
(683730,8,-2610.72,7289.52,20.7097,NULL,0,0,0,100,0),
(683730,9,-2624.34,7292.27,20.9918,NULL,0,0,0,100,0),
(683730,10,-2629.95,7284.25,21.6304,NULL,0,0,0,100,0),
(683730,11,-2650.06,7281.03,28.8082,NULL,0,0,0,100,0),
(683730,12,-2658.98,7279.63,31.6944,NULL,0,0,0,100,0),
(683730,13,-2657.93,7258.8,27.2688,NULL,0,0,0,100,0),
(683730,14,-2656.84,7239.67,23.4869,NULL,0,0,0,100,0),
(683730,15,-2646.6,7217.99,21.1845,NULL,0,0,0,100,0),
(683730,16,-2627.14,7220.28,19.6451,NULL,0,0,0,100,0),
(683730,17,-2616.03,7225.29,19.0032,NULL,0,0,0,100,0),
(683730,18,-2600.79,7232.07,13.3016,NULL,0,0,0,100,0),
(683730,19,-2579.51,7245.67,13.3339,NULL,0,0,0,100,0);
*/

-- Watcher Moonshade
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (78695); -- 0

DELETE FROM `creature_addon` where `guid` in (78695);

DELETE FROM `waypoint_data` where `id` in (786950);


-- Skyguard Nether Ray
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (79010); -- 5 1

DELETE FROM `creature_addon` where `guid` in (79010);

DELETE FROM `waypoint_data` where `id` in (790100);


-- Stormwind Guard
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (80330); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (80330); -- 0

DELETE FROM `waypoint_data` where `id` in (803300);


-- Rathis Tomber
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (81720); -- 0

DELETE FROM `creature_addon` where `guid` in (81720);

DELETE FROM `waypoint_data` where `id` in (817200);


-- Blacksmith Frances
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (81724); -- 0

DELETE FROM `creature_addon` where `guid` in (81724);

DELETE FROM `waypoint_data` where `id` in (817240);


-- Tamra Stormpike
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (90783); -- 0

DELETE FROM `creature_addon` where `guid` in (90783);

DELETE FROM `waypoint_data` where `id` in (907830);


-- Orca
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (100469,100474,100475,134519); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (100469); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (100474); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (100475); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (134519); -- 0

DELETE FROM `waypoint_data` where `id` in (1004690,1004740,1004750,1345190);


-- Bartram Haller
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (101356); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (101356); -- 0

DELETE FROM `waypoint_data` where `id` in (1013560);


-- Great Reef Shark
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (101740,101746,101798,101799,134523,134524,134525,134526,134528,134529); -- 5 1

DELETE FROM `creature_addon` where `guid` in (101740,101746,101798,101799,134523,134524,134525,134526,134528,134529);

DELETE FROM `waypoint_data` where `id` in (1017400,1017460,1017980,1017990,1345230,1345240,1345250,1345260,1345280,1345290);


-- Steel Gate Archaeologist
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (103161,103170); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (103161); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (103170); -- 0

DELETE FROM `waypoint_data` where `id` in (1031610,1031700);


-- Shadowstalker Ickoris
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (104236); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (104236); -- 0

DELETE FROM `waypoint_data` where `id` in (1042360);


-- Warsong Scout
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (104497); -- 1


-- Engineer Feknut
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (111278); -- 0
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (24227); -- ""

DELETE FROM `creature_addon` where `guid` in (111278);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24227) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24227);

DELETE FROM `waypoint_data` where `id` in (1112780);


-- Val'kyr Overseer
/* 8-9-26
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (114183,114190,114191,114192); -- 5 1

DELETE FROM `creature_addon` where `guid` in (114183,114190,114191,114192);

DELETE FROM `waypoint_data` where `id` in (1141830,1141900,1141910,1141920);
*/

-- Knight of the Ebon Blade
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (125724,125729,125746); -- 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (125750); -- 0

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125724); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125729); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125746); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125750); -- 0

DELETE FROM `waypoint_data` where `id` in (1257240,1257290,1257460,1257500);


-- Corpulous
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (125759); -- 0

DELETE FROM `creature_addon` where `guid` in (125759);

DELETE FROM `waypoint_data` where `id` in (1257590);


/*
-- Vigilant Gargoyle new commit fixed these 7-21-26
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (125826,125827,125828,125829,125830,125831,125832,125833); -- 0

UPDATE `creature_addon` SET `path_id` = 0,`bytes1` = 9 WHERE `guid` in (125826); -- 0
UPDATE `creature_addon` SET `path_id` = 0,`bytes1` = 9 WHERE `guid` in (125827); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125828); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125829); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125830); -- 0
UPDATE `creature_addon` SET `path_id` = 0,`bytes1` = 9 WHERE `guid` in (125831); -- 0
UPDATE `creature_addon` SET `path_id` = 0,`bytes1` = 9 WHERE `guid` in (125832); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (125833); -- 0

DELETE FROM `waypoint_scripts` where `id` in (15) and `guid` = 29239;

DELETE FROM `waypoint_data` where `id` in (1258260,1258270,1258280,1258290,1258300,1258310,1258320,1258330);
*/

-- Crafty Snake
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (127200); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (127200); -- 0

DELETE FROM `waypoint_data` where `id` in (1272000);


-- Acherus Geist
UPDATE `creature` SET `wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (128484); -- 5 1

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (128484); -- 0

DELETE FROM `waypoint_data` where `id` in (1284840);


-- Volatile Ghoul
UPDATE `creature` SET `spawntimesecs` = 360,`wander_distance` = 5,`MovementType` = 1 WHERE `guid` in (130362,130363); -- 360 5 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (130373); -- 0
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 29185; -- ""

DELETE FROM `creature_addon` where `guid` in (130362,130363,130373);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-130362,-130363,-130373) AND `source_type` = 0;

DELETE FROM `waypoint_scripts` where `id` in (13036300) and `guid` IN (918,919);

DELETE FROM `waypoint_data` where `id` in (1303620,1303630,1303730);


-- Scout Tungok
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (132680); -- 0
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 25440; -- ""

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (132680); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` = 25440 AND `source_type` = 0;

DELETE FROM `waypoint_data` where `id` in (1326800);


-- Wrathbone Siegesmith
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (201855,202159); -- 0

DELETE FROM `creature_addon` where `guid` in (201855,202159);

DELETE FROM `waypoint_data` where `id` in (2018550,2021590);
