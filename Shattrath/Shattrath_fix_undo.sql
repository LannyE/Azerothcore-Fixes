/*
Undo
Sha'nir, Zahlia, and Seth
Area triggers and RP after quest turn in and OOC Seth RP
*/
-- Sha'nir
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18597);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (4425);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18597) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4425) AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1859700,1859701) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18597);


-- Zahlia
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18652);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18652) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1865200,1865201) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18652);


-- Seth
UPDATE `creature` SET `position_x`=-1612.66,`position_y`=5315.41,`position_z`=-40.2089,`orientation`=6.04818 WHERE `guid`=66909;
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18653);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18653) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1865300,1865301) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18653);

DELETE FROM `waypoints` WHERE `entry`=18653;


-- Orphan Matron Mercy 
DELETE FROM `game_event_creature` WHERE `eventEntry` = 10 and `guid` IN (12401);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(10,12401);


-- Nicole Bartlett
UPDATE `creature` SET `position_x`=-1901.31,`position_y`=5146.85,`position_z`=-38.5659 WHERE `guid`=68341;


-- Arcanist Savan
UPDATE `creature` SET `position_x`=-1728.36,`position_y`=5145.19,`position_z`=-36.867,`orientation`=1.8544 WHERE `guid`=2196;


/*
-- Yula the Fair 
DELETE FROM `game_event_creature` WHERE `eventEntry` = 21 and `guid` IN (207810);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(21,207810);


-- Wolf-Sister Maka 
DELETE FROM `game_event_creature` WHERE `eventEntry` = 18 and `guid` IN (207860);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(18,207860);


-- Keldor the Lost 
DELETE FROM `game_event_creature` WHERE `eventEntry` = 20 and `guid` IN (207760);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(20,207760);


-- Montok Redhands 
DELETE FROM `game_event_creature` WHERE `eventEntry` = 19 and `guid` IN (207610);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(19,207610);
*/


-- Jonru
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (34999); -- 2


-- Mijir
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (35000); -- 2


-- Horde Warbringer
UPDATE `creature` SET `position_x`=-1966.88,`position_y`=5260.62,`position_z`=-38.8442,`orientation`=4.10239 WHERE `guid`=16472;


-- Saeld Brightflare
DELETE FROM `creature` where guid in (300100);


-- Asara Dawnblaze
DELETE FROM `creature` where guid in (300101);


-- Ontok Shatterhorn
DELETE FROM `creature` where guid in (300102);


-- Skettis Outcasts
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68376,68379,68381); -- 1 5

DELETE FROM `creature_addon` where `guid` in (68376,68379,68381);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-68376,-68379,-68381);

DELETE FROM `waypoint_data` where `id` in (683760,683790,683810);


-- Rats
UPDATE `creature` SET `position_x`=-1627.29,`position_y`=5483.33,`position_z`=-43.8059,`orientation`=0.796227,`wander_distance` = 10 WHERE `guid` IN (28594);
UPDATE `creature` SET `position_x`=-1615.72,`position_y`=5484.69,`position_z`=-40.2707,`orientation`=5.05748,`wander_distance` = 10 WHERE `guid` IN (28595);
UPDATE `creature` SET `position_x`=-1621.81,`position_y`=5487.79,`position_z`=-41.6788,`orientation`=0.663401,`wander_distance` = 10 WHERE `guid` IN (28596);
UPDATE `creature` SET `position_x`=-1624.29,`position_y`=5472.19,`position_z`=-40.3169,`orientation`=3.05294,`wander_distance` = 10 WHERE `guid` IN (28597);
UPDATE `creature` SET `position_x`=-1623.47,`position_y`=5478.01,`position_z`=-47.6872,`orientation`=3.94537,`wander_distance` = 10 WHERE `guid` IN (28598);
UPDATE `creature` SET `position_x`=-1619.1,`position_y`=5475.37,`position_z`=-40.5146,`orientation`=1.07555,`wander_distance` = 10 WHERE `guid` IN (28599);

DELETE FROM `creature` where guid in (66789,66791,66793); -- Reuse Removed Injured Refugee GUIDs


-- Refugee Kids
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (14490,16462); -- 0 0
UPDATE `creature` SET `position_x`=-1847.19,`position_y`=5220.27,`position_z`=-40.1092,`orientation`=2.48889 WHERE `guid`=68567;
UPDATE `creature` SET `position_x`=-1853.21,`position_y`=5224.87,`position_z`=-40.1092,`orientation`=2.48844 WHERE `guid`=68568;
UPDATE `creature` SET `position_x`=-1921.22,`position_y`=5147.19,`position_z`=-37.4287,`orientation`=5.11924 WHERE `guid`=16462;
UPDATE `creature` SET `position_x`=-1921.44,`position_y`=5143.04,`position_z`=-37.4196,`orientation`=0.545077 WHERE `guid`=16409;
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68562,68564,68565,68566); -- 1 5
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19163);

DELETE FROM `creature_addon` where `guid` in (68564);

DELETE FROM `creature_formations` where leaderGUID = 68564;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-16409,-68561,-68562,-68563) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1916300,1916301,1916302,1916303,1916304,1916305,1916306,1916307,1916308,1916309,1916310,1916311,1916312,1916313,1916314,1916315) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (19163);

DELETE FROM `waypoints` WHERE `entry` IN (19163,1916300,1916301,1916302,1916303,1916304);

DELETE FROM `waypoint_data` where `id` in (685640);


-- Refugee Children
UPDATE `creature` SET `position_x`=-1639.6,`position_y`=5344.66,`position_z`=-41.3198,`orientation`=5.68299 WHERE `guid`=68569;
UPDATE `creature` SET `position_x`=-1643.35,`position_y`=5346.35,`position_z`=-44.2363,`orientation`=5.85219 WHERE `guid`=68570;
UPDATE `creature` SET `position_x`=-1640.99,`position_y`=5346.88,`position_z`=-43.1052,`orientation`=5.91962 WHERE `guid`=68571;
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68570,68571,68569); -- 1 5

DELETE FROM `creature` where guid in (300103,300104);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19164);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-68569,-68570,-68571,-300104) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1916400,1916401,1916402,1916403,1916404,1916405,1916406,1916407,1916408,1916409,1916410,1916411,1916412,1916413,1916414,1916415,1916416,1916417,1916418,1916419,1916420) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (19164,1916400,1916401,1916402,1916403,1916404);


-- The Rokk
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (24393);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24393) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24393);


-- Grisy Spicecrackle
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (24416);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24416) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2441600) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (24416);

-- Kradu Grimblade
UPDATE `creature` SET `position_x`=-1847.61,`position_y`=5230.97,`position_z`=-38.0452,`orientation`=4.77226 WHERE `guid`=71625;
UPDATE `creature_Template_addon` SET `emote` = 233 WHERE `entry` in (20124); -- 233


-- Injured Refugee
DELETE FROM `creature` where guid in (66789,66791,66793);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(66789,18600,0,0,530,0,0,1,1,0,-1925.32,5145.5,-28.6784,0.663225,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL);
(66791,18600,0,0,530,0,0,1,1,0,-1924.96,5135.65,-28.4667,5.48033,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL);
(66793,18600,0,0,530,0,0,1,1,0,-1926.03,5135.41,-36.6132,1.13446,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (66791);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(66791,0,0,7,1,0,0,NULL);


-- Orc Refugee
UPDATE `creature_addon` SET `bytes1` = 7 ,`bytes2` = 1 WHERE `guid` in (68482); -- 7 1


-- Mag'har Refugee
UPDATE `creature` SET `position_x`=-1619.84,`position_y`=5359.92,`position_z`=-39.8653,`orientation`=5.75163 WHERE `guid`=68465;
UPDATE `creature` SET `position_x`=-1867.28,`position_y`=5477.18,`position_z`=-12.3448,`orientation`=2.32129 WHERE `guid`=96667;
UPDATE `creature_Template_addon` SET `bytes1` = 7 ,`bytes2` = 1 WHERE `entry` in (19144); -- 7 1

DELETE FROM `creature_addon` where `guid` in (68466,68467);


-- Peasant Refugee
UPDATE `creature_addon` SET `bytes2` = 1 WHERE `guid` in (68579,68580,68581,68582,68584,68585); -- 1
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (68584);
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (68585);
-- UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19170);

DELETE FROM `creature_addon` where `guid` in (68577,68578,96670,300094,300095);

UPDATE `creature_Template_addon` SET `bytes2` = 1 ,`emote` = 69 WHERE `entry` in (19170); -- 1 69

UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68584,68585); -- 1 5 will have waypoint
UPDATE `creature` SET `equipment_id` = 1 WHERE `guid` in (68577,68579,68580,68581,68582,68584,68585,96670); -- 96670 is by the spymistress???

DELETE FROM `creature` where guid in (300091,300092,300093,300094,300095);


-- Lost One Refugee
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68558,68559); -- 1 5
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (68559);

DELETE FROM `creature` where guid in (300096,300097);

DELETE FROM `waypoint_data` where `id` in (685590);


-- Broken Refugee
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19120);

UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68396,68399,68400); -- 1 5
UPDATE `creature` SET `position_x`=-1937.83,`position_y`=5223.76,`position_z`=-46.1934,`orientation`=0.932831 WHERE `guid`=68399;
UPDATE `creature` SET `position_x`=-1944.36,`position_y`=5225.42,`position_z`=-46.7535,`orientation`=0.313193 WHERE `guid`=68400;

DELETE FROM `creature` where guid in (300099);

DELETE FROM `creature_addon` where `guid` in (68396,68402);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-68396) AND `source_type` = 0;

DELETE FROM `waypoint_data` where `id` in (683960);


-- Sporeling Refugee
DELETE FROM `creature` where guid in (300098);

UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68526); -- 1 5
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (68525); -- 1 5

DELETE FROM `creature_formations` where leaderGUID = 68525;

DELETE FROM `creature_addon` where `guid` in (68525);

DELETE FROM `waypoint_data` where `id` in (685250);


-- High Elf Refugee
UPDATE `creature` SET `position_x`=-1740.02,`position_y`=5202.2,`position_z`=-41.016,`orientation`=2.3038 WHERE `guid`=68392;

DELETE FROM `creature_addon` where `guid` in (12272,68391);

UPDATE `creature_Template_addon` SET `bytes1` = 0 ,`bytes2` = 0 WHERE `entry` in (19076); -- 3 1


-- Dwarf Refugee
UPDATE `creature_addon` SET `path_id` = 683940 WHERE `guid` in (68394);
UPDATE `creature_addon` SET `path_id` = 683950 WHERE `guid` in (68395);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (68394,68395); -- 2

DELETE FROM `creature_formations` where leaderGUID = 68393;

DELETE FROM `waypoint_data` where `id` in (683930,683940,683950);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(683930,1,-1861.92,5170.83,-49.3571,NULL,0,0,0,100,0),
(683930,2,-1875.78,5179.95,-50.1392,NULL,0,0,0,100,0),
(683930,3,-1888.46,5157.1,-40.5147,NULL,0,0,0,100,0),
(683930,4,-1915.48,5174.51,-40.2088,NULL,0,0,0,100,0),
(683930,5,-1902.55,5215.19,-48.5745,NULL,0,0,0,100,0),
(683930,6,-1870.6,5221.16,-40.2084,NULL,0,0,0,100,0),
(683930,7,-1872.77,5151.86,-45.9423,NULL,0,0,0,100,0),
(683930,8,-1830.71,5173.15,-49.4324,NULL,0,0,0,100,0),
(683930,9,-1865.38,5176.11,-49.7907,NULL,0,0,0,100,0),

(683940,1,-1865.79,5169.72,-49.6475,NULL,0,0,0,100,0),
(683940,2,-1876.58,5177.51,-49.6518,NULL,0,0,0,100,0),
(683940,3,-1887.59,5161.49,-42.3299,NULL,0,0,0,100,0),
(683940,4,-1912.86,5176.21,-40.2088,NULL,0,0,0,100,0),
(683940,5,-1904.29,5218.9,-47.7058,NULL,0,0,0,100,0),
(683940,6,-1874.02,5229.39,-40.2084,NULL,0,0,0,100,0),
(683940,7,-1867.6,5151.35,-44.6094,NULL,0,0,0,100,0),
(683940,8,-1835.97,5178.56,-49.7912,NULL,0,0,0,100,0),
(683940,9,-1865.57,5179.66,-49.8009,NULL,0,0,0,100,0),

(683950,1,-1859.48,5167.44,-48.7334,NULL,0,0,0,100,0),
(683950,2,-1880.71,5180.71,-48.8896,NULL,0,0,0,100,0),
(683950,3,-1890.13,5161.01,-40.8421,NULL,0,0,0,100,0),
(683950,4,-1915.89,5176.17,-40.2088,NULL,0,0,0,100,0),
(683950,5,-1898.73,5217.78,-48.0446,NULL,0,0,0,100,0),
(683950,6,-1870.32,5226.94,-40.2084,NULL,0,0,0,100,0),
(683950,7,-1874.87,5149.71,-46.0181,NULL,0,0,0,100,0),
(683950,8,-1836.54,5172.59,-48.7732,NULL,0,0,0,100,0),
(683950,9,-1869.23,5175.23,-50.0966,NULL,0,0,0,100,0);


-- Orc Refugee
UPDATE `creature_addon` SET `path_id` = 0,`bytes2` = 1 WHERE `guid` in (68481); -- 0 1
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (68481); -- 0

DELETE FROM `waypoint_data` where `id` in (684810);


-- Peacekeeper Jadaar
DELETE FROM `creature` where guid in (81641);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(81641,23079,0,0,530,0,0,1,1,0,-1729.11,5147.63,-36.9848,4.58444,25,0,0,20958,0,0,0,0,0,'',0,0,NULL);

-- Investigator Asric
DELETE FROM `creature` where guid in (10200);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(10200,23719,0,0,530,0,0,1,1,0,-1731.36,5148.42,-37.1216,3.35103,25,0,0,26946,0,0,0,0,0,'',0,0,NULL);


-- Leatei
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19064);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19064) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1906400,1906401,1906402) AND `source_type` = 9;


DELETE FROM `waypoints` WHERE `entry` IN (19064,1906400);


-- Granny Smith
DELETE FROM `smart_scripts` WHERE `entryorguid` in (19223) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1922300,1922301) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19223,0,0,0,1,0,100,0,210000,210000,210000,210000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - Out of Combat - Say Line 0 (No Repeat)'),
(19223,0,1,0,1,0,100,0,600000,600000,600000,600000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - Out of Combat - Say Line 1 (No Repeat)');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19223);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19223,0,0,'I could have sworn I had more apples.  Grok!',12,0,100,0,0,0,16307,0,'Granny Smith'),
(19223,1,0,'What is that poor orc yelling about? Someone should see what is going on.',12,0,100,0,0,0,16314,0,'Granny Smith');

DELETE FROM `waypoints` WHERE `entry` IN (19223);


-- Eiin
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19213);
UPDATE `creature_Template_addon` SET `emote` = 69 WHERE `entry` in (19213); -- 69
UPDATE `creature` SET `position_x`=-2077.26,`position_y`=5270.03,`position_z`=-37.2236,`orientation`=2.43809 WHERE `guid`=68743;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19213) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1921300) AND `source_type` = 9;

-- DELETE FROM `waypoints` WHERE `entry` IN (19213);


-- Viggz Shinesparked
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19661);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19661) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1966100) AND `source_type` = 9;


-- Cro Threadstrong
DELETE FROM `creature_text` WHERE `CreatureID` IN (19196);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19196,0,0,'I feel that war is fast approaching.  The fruit vendor has enlisted the help of an ogre.  I shall have to enlist help as well.',12,0,100,0,0,0,22060,0,'Cro Threadstrong'),
(19196,1,0,'FRUIT VENDOR!!! Your cart is still in our way!  We will give you one more hour to move it from our area.  Do not test our patience anymore!',14,0,100,0,0,0,16296,0,'Cro Threadstrong');


-- Grok
DELETE FROM `smart_scripts` WHERE `entryorguid` in (22940) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22940,0,0,0,1,0,100,0,156000,156000,156000,276000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grok - Out of Combat - Say Line 0'),
(22940,0,1,0,1,0,100,0,270000,270000,270000,270000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grok - Out of Combat - Say Line 1'),
(22940,0,2,0,1,0,100,0,890000,890000,890000,950000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grok - Out of Combat - Say Line 2');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22940);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22940,0,0,'Grok need help!  Why no one help?',12,0,100,0,0,0,20648,0,'Grok'),
(22940,0,1,'If no one help, Grok smash!',12,0,100,0,0,0,20783,0,'Grok'),
(22940,1,0,'Grok get angry if puny ones not go to Blade\'s Edge and talk to Mog\'dorg!',12,0,100,0,0,0,20664,0,'Grok'),
(22940,1,1,'Bladespire clan not fight fair.  Have gronn to help dem.  You go to Blade\'s Edge Mountains.  Talk to Mog\'dorg the Wizened.  Kill gronn.',12,0,100,0,0,0,20784,0,'Grok'),
(22940,1,2,'Mog\'dorg the Wizened tell Grok go to city, get help for Bloodmaul.  Grok go.',12,0,100,0,0,0,20782,0,'Grok'),
(22940,2,0,'Me hungry.  Fruit look tasty.',12,0,100,0,0,0,20781,0,'Grok');


-- Fantei
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19678);
UPDATE `creature_Template_addon` SET `bytes1` = 1 ,`bytes2` = 1 WHERE `entry` in (19678); -- 1 1

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19678) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1967800) AND `source_type` = 9;


-- Shattered Sun Marksman
UPDATE `creature` SET `position_x`= -1838.6,`position_y`= 5399.79,`position_z`= -12.3282 WHERE `guid`= 96632;
UPDATE `creature_template_movement` SET `Rooted` = 1 WHERE `CreatureId` = 24938; -- 1
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (53981,53982,54004,54023,54028,54029,54030,54031,54032,54034,54038,54049,54092,54113,54114,54143,54165,54176,54177,54178,54181,54182,54183,54184,54185,56315,65680,65681,65682,65683,65684,65685,65686,65687,65688,65689,65690,65691,65692,65693,65701,94407,94408,94409,94410,94411,94412,94413,94414,94415,94416,94417,94418,94419,94420,94422,94423,94424,94425,94426,94427,94428,94429,94430,94431,165106,165107,165108,165109); -- 0
UPDATE `creature_addon` SET `bytes2` = 0,`emote` = 0 WHERE `guid` in (65694,65695,65696,65697,65698,65699,65700,65702); -- 0 0
UPDATE `creature_addon` SET `emote` = 48 WHERE `guid` in (54034,54038,54092); -- 48
DELETE FROM `creature_addon` where `guid` in (96623,96625,96636);

UPDATE `creature_equip_template` SET `ItemID3` = 11021  where `CreatureID` in (25142) AND `ID` = 1; -- 11021 -- This is the other Marksman Entry
DELETE FROM `creature_equip_template` where `CreatureID` in (24938) AND `ID` = 2;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24938) AND `source_type` = 0 AND `id` IN (3,4,5,6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-96623,-96625,-96632,-96633,-96636,-96637,-165106,-165107,-165108,-165109) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2493810,2493811,2493812,2493813,2493820,2493821,2493822,2493823,2493830,2493831,2493832,2493833,2493840,2493841,2493842,2493843) AND `source_type` = 9 AND `id` IN (1);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2514200,2514201,2514202,2514203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(24938,0,3,0,11,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,4,0,11,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,5,0,11,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,6,0,11,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25142);

DELETE FROM `waypoints` WHERE `entry` IN (25142,2514200,2514201,2514202);


-- Shattered Sun Cleric
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-96647,-96648,-96649,-96650,-96651,-96652) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2515500,2515501,2515502,2515503,2515504,2515505,2515506) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (25155);

DELETE FROM `waypoints` WHERE `entry` IN (25155,2515500,2515501,2515502,2515503,2515504,2515505,2515506,2515507,2515508);


-- Shattered Sun Magi
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-96643,-96644,-96645,-96646) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2515300,2515301,2515302,2515303,2515304) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (25153);

DELETE FROM `waypoints` WHERE `entry` IN (25153,2515300,2515301,2515302,2515303,2515304,2515305,2515306);


-- Grand Anchorite Almonen
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19216) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1921600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19216,0,0,0,1,0,100,512,10000,10000,300000,300000,0,0,80,1921600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Out of Combat - Run Script (No Repeat)'),

(1921600,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.65487,'Grand Anchorite Almonen - On Script - Set Orientation 6'),
(1921600,9,1,0,0,0,100,0,9000,9000,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Play Emote 1'),
(1921600,9,2,0,0,0,100,0,23000,23000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.72,5423.08,-10.4595,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,3,0,0,0,100,0,800,800,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.6,5412,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,4,0,0,0,100,0,5000,5000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.18363,'Grand Anchorite Almonen - On Script - Set Orientation 5'),
(1921600,9,5,0,0,0,100,0,100,100,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 0'),
(1921600,9,6,0,0,0,100,0,9000,9000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 1'),
(1921600,9,7,0,0,0,100,0,9000,9000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 2'),
(1921600,9,8,0,0,0,100,0,25000,25000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 3'),
(1921600,9,9,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1851.7,5413.06,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,10,0,0,0,100,0,100,100,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 4'),
(1921600,9,11,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1848.78,5412.81,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,12,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.27606,'Grand Anchorite Almonen - On Script - Set Orientation 4'),
(1921600,9,13,0,0,0,100,0,4000,4000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 5'),
(1921600,9,14,0,0,0,100,0,7000,7000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1851.57,5412.08,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,15,0,0,0,100,0,1900,1900,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1856.31,5410.27,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,16,0,0,0,100,0,1900,1900,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1859,5406.96,-12.4281,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,17,0,0,0,100,0,3000,3000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.70723,'Grand Anchorite Almonen - On Script - Set Orientation 6'),
(1921600,9,18,0,0,0,100,0,100,100,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 6'),
(1921600,9,19,0,0,0,100,0,10000,10000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 7'),
(1921600,9,20,0,0,0,100,0,9000,9000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 8'),
(1921600,9,21,0,0,0,100,0,5000,5000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1855.09,5410.68,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,22,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1853.62,5409.83,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,23,0,0,0,100,0,3000,3000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 9'),
(1921600,9,24,0,0,0,100,0,11000,11000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 10'),
(1921600,9,25,0,0,0,100,0,9000,9000,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 11'),
(1921600,9,26,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1852.5,5412.29,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,27,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1849.05,5415.08,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,28,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.34071,'Grand Anchorite Almonen - On Script - Set Orientation 5'),
(1921600,9,29,0,0,0,100,0,5000,5000,0,0,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 12'),
(1921600,9,30,0,0,0,100,0,11000,11000,0,0,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 13'),
(1921600,9,31,0,0,0,100,0,4000,4000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1851.64,5414.01,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,32,0,0,0,100,0,1200,1200,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.91,5412.68,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,33,0,0,0,100,0,800,800,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.41,5411.23,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,34,0,0,0,100,0,1000,1000,0,0,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 14'),
(1921600,9,35,0,0,0,100,0,10000,10000,0,0,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 15'),
(1921600,9,36,0,0,0,100,0,7000,7000,0,0,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 16'),
(1921600,9,37,0,0,0,100,0,10000,10000,0,0,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 17'),
(1921600,9,38,0,0,0,100,0,11000,11000,0,0,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 18'),
(1921600,9,39,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1853.14,5424.86,-10.4779,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,40,0,0,0,100,0,6500,6500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.6529,'Grand Anchorite Almonen - On Script - Set Orientation 3');

DELETE FROM `waypoints` WHERE `entry` IN (19216,1921600);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19216);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19216,0,0,'Friends, it is my great pleasure to welcome you to the temple today.',12,0,100,1,0,0,16735,0,'Grand Anchorite Almonen'),
(19216,1,0,'A\'dal has been most generous in his revelations to me, a humble servant of the Light.',12,0,100,0,0,0,16740,0,'Grand Anchorite Almonen'),
(19216,2,0,'In accordance with my divine calling, I must share these revealed truths to all who would hear.',12,0,100,0,0,0,16741,0,'Grand Anchorite Almonen'),
(19216,3,0,'It has been made known to me that inside each of us, the Light resides...',12,0,100,0,0,0,16742,0,'Grand Anchorite Almonen'),
(19216,4,0,'...that it is a gift, given freely to all naturally born beings.',12,0,100,0,0,0,16743,0,'Grand Anchorite Almonen'),
(19216,5,0,'It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good.',12,0,100,0,0,0,16752,0,'Grand Anchorite Almonen'),
(19216,6,0,'Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light.',12,0,100,0,0,0,16753,0,'Grand Anchorite Almonen'),
(19216,7,0,'It rewards those who heed its promptings with blessings, both seen and unseen.',12,0,100,1,0,0,16754,0,'Grand Anchorite Almonen'),
(19216,8,0,'Personal reservoirs of hope and faith are strengthened, and one\'s capacity for greater light increases.',12,0,100,0,0,0,16755,0,'Grand Anchorite Almonen'),
(19216,9,0,'Over the course of time, through obedience to the Light\'s guidance, one becomes more sensitive to its voice, and its power.',12,0,100,273,0,0,16756,0,'Grand Anchorite Almonen'),
(19216,10,0,'Great is the healing and blessing power of the Light\'s most diligent followers.',12,0,100,0,0,0,16757,0,'Grand Anchorite Almonen'),
(19216,11,0,'Sadly, there are those who wander through mortality in defiance of the Light.',12,0,100,1,0,0,16761,0,'Grand Anchorite Almonen'),
(19216,12,0,'From these the Light withdraws, until only darkness remains.',12,0,100,0,0,0,16762,0,'Grand Anchorite Almonen'),
(19216,13,0,'Where there is no light, despair, loathing and rage thrive.',12,0,100,5,0,0,16763,0,'Grand Anchorite Almonen'),
(19216,14,0,'We are born into a perilous age, where the forces of darkness are determined to bring about our destruction.',12,0,100,1,0,0,16764,0,'Grand Anchorite Almonen'),
(19216,15,0,'These are the times to find yourselves in unison with the Light.',12,0,100,5,0,0,16765,0,'Grand Anchorite Almonen'),
(19216,16,0,'Hear my words, and let the Light inside of you confirm the truth of them.',12,0,100,0,0,0,16766,0,'Grand Anchorite Almonen'),
(19216,17,0,'Embrace the light that is in you, my friends! Deny yourself all darkness...',12,0,100,5,0,0,16775,0,'Grand Anchorite Almonen'),
(19216,18,0,'We must endure these trying times faithfully, and one day we will find ourselves victorious.',12,0,100,5,0,0,16776,0,'Grand Anchorite Almonen');


-- Commander Steele
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (25141);
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (96621); -- 0

DELETE FROM `spawn_group` where `groupId` IN (42282,42283,42284,42285,42286);

DELETE FROM `spawn_group_template` where `groupId` IN (42282,42283,42284,42285,42286);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25141) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2514100,2514101,2514102,2514103,2514104,2514105,2514106,2514107,2514108,2514109,2514110,2514111) AND `source_type` = 9;

DELETE FROM `creature_addon` where `guid` in (96621);

DELETE FROM `waypoint_data` where `id` in (966210);

DELETE FROM `creature_text` WHERE `CreatureID` IN (25141);


-- Emissary Mordin
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19202);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19202) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (19202);


-- Lord Torvos
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (25140);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25140) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2514000,2514001) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (25140);


-- Shattered Sun Veteran
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (25143);
UPDATE `creature` SET `spawntimesecs`= 180 WHERE `guid`= 96642; -- 180
UPDATE `creature` SET `position_x`= -1780.71,`position_y`= 5332.77,`position_z`= -12.3282 WHERE `guid`= 96642;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-96642) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2514300,2514301) AND `source_type` = 9;


-- Shattered Sun Trainee
-- 25134,25135,25136,25137
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (25134,25135,25136,25137); -- 0

UPDATE `creature` SET `spawntimesecs`= 180 WHERE `guid` IN (96597,96598,96599,96601,96602,96605,96606,96607,96608,96609,96613,96614,96615,96616,96617,96618); -- 180
UPDATE `creature` SET `position_x`= -1790.15,`position_y`= 5335.14,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96597;
UPDATE `creature` SET `position_x`= -1779.02,`position_y`= 5337.96,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96598;
UPDATE `creature` SET `position_x`= -1785.46,`position_y`= 5339.81,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96599;
UPDATE `creature` SET `position_x`= -1787.79,`position_y`= 5333.1,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96601;
UPDATE `creature` SET `position_x`= -1792.36,`position_y`= 5337.14,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96602;
UPDATE `creature` SET `position_x`= -1787.73,`position_y`= 5337.6,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96605;
UPDATE `creature` SET `position_x`= -1785.66,`position_y`= 5335.26,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96606;
UPDATE `creature` SET `position_x`= -1783.16,`position_y`= 5337.67,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96607;
UPDATE `creature` SET `position_x`= -1783.63,`position_y`= 5333.44,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96608;
UPDATE `creature` SET `position_x`= -1787.64,`position_y`= 5341.81,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96609;
UPDATE `creature` SET `position_x`= -1781.29,`position_y`= 5335.79,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96613;
UPDATE `creature` SET `position_x`= -1780.88,`position_y`= 5339.83,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96614;
UPDATE `creature` SET `position_x`= -1785.9,`position_y`= 5331.25,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96615;
UPDATE `creature` SET `position_x`= -1785.31,`position_y`= 5344.09,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96616;
UPDATE `creature` SET `position_x`= -1789.79,`position_y`= 5339.68,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96617;
UPDATE `creature` SET `position_x`= -1782.86,`position_y`= 5342.13,`position_z`= -12.3282,`orientation`= 5.49779  WHERE `guid`= 96618;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-96595,-96596,-96597,-96598,-96599,-96600,-96601,-96602,-96603,-96604,-96605,-96606,-96607,-96608,-96609,-96610,-96611,-96612,-96613,-96614,-96615,-96616,-96617,-96618,25134,25135,25136,25137) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2513400,2513401,2513402,2513403,2513404,2513405,2513406,2513407,2513408,2513409,2513410,2513411,2513412,2513413,2513414,2513415,2513416) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-96612,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96611,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96610,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96604,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96603,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96600,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96596,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96595,0,0,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield');

DELETE FROM `waypoints` WHERE `entry` IN (25134);


-- Aldor Anchorite
DELETE FROM `creature` where guid in (68464);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(68464,19142,0,0,530,0,0,1,1,1,-1870.78,5460.67,-12.4281,3.01166,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19142) AND `source_type` = 0 AND `id` IN (3,4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1914200) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (19142) AND `GroupID` = 1;


-- Whirligig Wafflefry
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (96594); -- 2
UPDATE `creature_addon` SET `path_id` = 965940 WHERE `guid` in (96594); -- 965940

DELETE FROM `smart_scripts` WHERE `entryorguid` in (25885) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2588500) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25885,0,0,0,11,0,100,1,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Respawn - Set Sheath Ranged'),
(25885,0,1,0,1,0,100,0,30000,30000,300000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - Out of Combat - Say Line 0'),
(25885,0,2,0,1,0,100,0,82000,82000,300000,300000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - Out of Combat - Say Line 1'),
(25885,0,3,0,1,0,100,0,90000,90000,300000,300000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - Out of Combat - Say Line 2'),
(25885,0,4,0,1,0,100,0,98000,98000,300000,300000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - Out of Combat - Say Line 3'),
(25885,0,5,0,1,0,100,0,106000,106000,300000,300000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - Out of Combat - Say Line 4');

DELETE FROM `waypoint_data` where `id` in (965940);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(965940,1,-1918.05,5334.41,-12.428,NULL,60000,0,0,100,0),
(965940,2,-1918.05,5334.41,-12.428,NULL,60000,0,0,100,0),
(965940,3,-1918.05,5334.41,-12.428,NULL,60000,0,0,100,0),
(965940,4,-1918.05,5334.41,-12.428,NULL,25000,0,456,100,0),
(965940,5,-1918.05,5334.41,-12.428,NULL,25000,0,457,100,0),
(965940,6,-1918.05,5334.41,-12.428,NULL,25000,0,458,100,0),
(965940,7,-1918.05,5334.41,-12.428,NULL,25000,0,459,100,0),
(965940,8,-1918.05,5334.41,-12.428,NULL,60000,0,0,100,0),
(965940,9,-1918.05,5334.41,-12.428,NULL,60000,0,0,100,0),
(965940,10,-1918.05,5334.41,-12.428,NULL,60000,0,0,100,0);

DELETE FROM `waypoint_scripts` where `id` IN (456,457,458,459);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(456,0,0,0,0,25073,0,0,0,0,503),
(457,0,0,0,0,25074,0,0,0,0,504),
(458,0,0,0,0,25075,0,0,0,0,505),
(459,0,0,0,0,25076,0,0,0,0,506);


-- Harbinger Haronem
DELETE FROM `smart_scripts` WHERE `entryorguid` in (19475) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19475,0,0,0,1,0,100,0,6000,6000,6000,6000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Haronem - Out of Combat - Play Emote 1'),
(19475,0,1,0,1,0,100,0,39000,39000,300000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Haronem - Out of Combat - Say Line 0');


-- Aldor Vindicator
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18549);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 18549 AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=18549 AND `SourceId`=0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18549) AND `GroupID` IN (0);


-- Aldor Acolyte
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19702);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 19702 AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1,2) AND `SourceEntry`=19702 AND `SourceId`=0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (19702) AND `GroupID` IN (0,1);


-- Aldor Neophyte
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (19153); -- 2

UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19153);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=17540 WHERE `DisplayID` IN (18568); -- 17540 scryer model should be aldor

DELETE FROM `creature` where `guid` IN (68492,68493,68494);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(68492,19153,0,0,530,0,0,1,1,1,-1804.03,5746.47,128.734,2.49231,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(68493,19153,0,0,530,0,0,1,1,1,-1812.48,5749.37,129.733,2.85472,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(68494,19153,0,0,530,0,0,1,1,1,-1808.48,5748.43,129.401,2.79974,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `position_x`= -1773.63,`position_y`= 5720.07,`position_z`= 126.538 WHERE `guid`= 68495; -- -1773.63,5720.07,126.538  - 11
UPDATE `creature` SET `position_x`= -1761.79,`position_y`= 5716.16,`position_z`= 126.538 WHERE `guid`= 68496; -- -1761.79,5716.16,126.538  - 3
UPDATE `creature` SET `position_x`= -1769.85,`position_y`= 5718.85,`position_z`= 126.538 WHERE `guid`= 68497; -- -1769.85,5718.85,126.538 - 9
UPDATE `creature` SET `position_x`= -1765.72,`position_y`= 5717.48,`position_z`= 126.538 WHERE `guid`= 68498; -- -1765.72,5717.48,126.538  - 12

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19153,-68495,-68496,-68497,-68498) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1915300) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (19153);


-- Aldor Marksman
-- 19337
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (19337); -- 2
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19337);

DELETE FROM `creature` where `guid` IN (68923,68924,68925);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(68923,19337,0,0,530,0,0,1,1,1,-1805.15,5747.77,128.877,2.46905,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(68924,19337,0,0,530,0,0,1,1,1,-1814.89,5750.27,129.989,2.87127,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(68925,19337,0,0,530,0,0,1,1,1,-1810.62,5749.27,129.654,2.86173,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `position_x`= -1764.97,`position_y`= 5720.31,`position_z`= 126.538 WHERE `guid`= 68926; -- -1764.97,5720.31,126.538  - 7
UPDATE `creature` SET `position_x`= -1768.91,`position_y`= 5721.59,`position_z`= 126.538 WHERE `guid`= 68927; -- -1768.91,5721.59,126.538  - 2
UPDATE `creature` SET `position_x`= -1760.95,`position_y`= 5718.92,`position_z`= 126.538 WHERE `guid`= 68928; -- -1760.95,5718.92,126.538 - 6
UPDATE `creature` SET `position_x`= -1772.67,`position_y`= 5722.91,`position_z`= 126.538 WHERE `guid`= 68929; -- -1760.95,5718.92,126.538  - 5

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19337,-68926,-68927,-68928,-68929) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1933700) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (19337);


-- Mounted Neophyte
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` in (19390); -- 2
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19390);
UPDATE `creature` SET `position_x`= -1798.55,`position_y`= 5604,`position_z`= 130.912 WHERE `guid`= 69139; -- -1798.55,5604,130.912  - 10

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19390,-69136,-69137,-69138,-69139) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1939000,1939001,1939002,1939003) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (19390);


-- Anchorite Attendant
DELETE FROM `smart_scripts` WHERE `entryorguid` in (19138) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1913800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19138,0,0,0,1,0,25,0,269500,269500,269500,269500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Attendant - Out of Combat - Say Line 0 (Phase 1) (No Repeat)');


-- Anchorite Nindumen
UPDATE `creature_template` SET `speed_walk` = 1.4 WHERE `entry` in (19378); -- 1.4

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19378) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1937800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19378,0,0,0,1,0,100,0,122000,122000,242000,242000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 0'),
(19378,0,1,0,1,0,100,0,127000,127000,247000,247000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 1'),
(19378,0,2,0,1,0,100,0,129000,129000,249000,249000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 2'),
(19378,0,3,0,1,0,100,0,134000,134000,254000,254000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 3'),
(19378,0,4,0,1,0,100,0,138000,138000,258000,258000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 4'),
(19378,0,5,0,1,0,100,0,140000,140000,260000,260000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 5'),
(19378,0,6,0,1,0,100,0,143000,143000,263000,263000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 6'),
(19378,0,7,0,1,0,100,0,146000,146000,266000,266000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 7'),
(19378,0,8,0,1,0,100,0,148000,148000,268000,268000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - Out of Combat - Say Line 8');

DELETE FROM `waypoints` WHERE `entry` IN (19378,1937800);


-- Harbinger Erothem
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (68962); -- 0
UPDATE `creature` SET `position_x`=-1764.84,`position_y`=5726.25,`position_z`=126.538 WHERE `guid`=68962; -- -1764.84,5726.25,126.538

DELETE FROM `creature_addon` where `guid` in (68962);

DELETE FROM `spawn_group` where `groupId` IN (42287,42288,42289,42290,42291,42292,42293,42294,42295,42296,42297,42298);

DELETE FROM `spawn_group_template` where `groupId` IN (42287,42288,42289,42290,42291,42292,42293,42294,42295,42296,42297,42298);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19346) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1934600,1934601,1934602) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19346,0,0,0,1,0,100,0,120000,120000,240000,240000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - Out of Combat - Say Line 0'),
(19346,0,1,0,1,0,100,0,124000,124000,244000,244000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - Out of Combat - Say Line 1'),
(19346,0,2,0,1,0,100,0,269000,269000,269000,269000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - Out of Combat - Say Line 2');

DELETE FROM `waypoint_data` where `id` in (689620);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19346) AND `GroupID` IN (3,4,5,6,7,8,9,10,11,12);


-- Neophyte Nemarn
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19377);
DELETE FROM `creature` where `guid` IN (69108);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(69108,19377,0,0,530,0,0,1,1,1,-1943.63,5710.2,120.011,0.699071,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `position_x`=-1776.13,`position_y`=5726.78,`position_z`=126.538,`orientation`=1.5708 WHERE `guid`=69109;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19377) AND `source_type` = 0; -- 250
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1937700,1937701) AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (19377,1937700);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19377) AND `GroupID` IN (0,1,2,3,4);


-- Adyen the Lightwarden
DELETE FROM `smart_scripts` WHERE `entryorguid` in (18537) AND `source_type` = 0 AND `id` IN (9,10);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1853701) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18537) AND `GroupID` IN (4,5,6,7,8,9,10);


-- Enchantress Volali
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (19251);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19251) AND `source_type` = 0;


-- Enchanter Salias
UPDATE `creature` SET `position_x`=-2278.49,`position_y`=5567.23,`position_z`=67.082 WHERE `guid`=68772;


-- Scryer Arcane Guardian
-- UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18568);
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (66736); -- 0

DELETE FROM `creature_addon` where `guid` in (66736);

-- DELETE FROM `smart_scripts` WHERE `entryorguid` = 18568 AND `source_type` = 0;

-- DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1,2) AND `SourceEntry`=18568 AND `SourceId`=0;

DELETE FROM `waypoint_data` where `id` in (667360);


-- Scryer Retainer
DELETE FROM `creature` where `guid` IN (68492,68493,68494,300105);

UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18593);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-66752,-96665) AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry` IN (18593) AND `SourceId`=0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (18593) AND `GroupID` IN (0,1);


-- Scryer Arcanist
UPDATE `creature` SET `equipment_id` = 1 WHERE `guid` in (66702,66703,66704,66709); -- 1
DELETE FROM `creature` where `guid` IN (68923,68924,68925,69108);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 18547 AND `source_type` = 0 AND `id` IN (3);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (4) AND `SourceEntry` IN (18547) AND `SourceId`=0;


-- Shattrath City Peacekeeper
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 19687;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (70217,70236); -- 0
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (70236);

DELETE FROM `creature_addon` where `guid` in (70217);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 19687 AND `source_type` = 0;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (1) AND `SourceEntry` = 19687 AND `SourceId`=0;

DELETE FROM `waypoint_data` where `id` in (702170,702360);


-- Tobias the Filth Gorger
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21411 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2141100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21411,0,0,1,19,0,100,512,10550,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Quest 10550 taken - Store Targetlist'),
(21411,0,1,0,61,0,100,512,0,0,0,0,0,0,80,2141100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Quest 10550 taken - Run script'),
(21411,0,2,0,34,0,100,512,0,1,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Reached WP1 - Pause WP'),
(21411,0,3,0,34,0,100,512,0,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.314159,'Tobias the Filth Gorger - On Reached WP2 - Set Orientation'),
(2141100,9,0,0,0,0,100,0,0,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Set NPC Flags'),
(2141100,9,1,0,0,0,100,0,0,0,0,0,0,0,71,0,0,20468,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Equip Item'),
(2141100,9,2,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Say Line 0'),
(2141100,9,3,0,0,0,100,0,2000,2000,0,0,0,0,5,92,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Play Emote OneShotEatNoSheathe'),
(2141100,9,4,0,0,0,100,0,5000,5000,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Set Orientation'),
(2141100,9,5,0,0,0,100,0,0,0,0,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - UnEquip Item'),
(2141100,9,6,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Say Line 1'),
(2141100,9,7,0,0,0,100,0,1000,1000,0,0,0,0,53,1,21411,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Start WP'),
(2141100,9,8,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Say Line 2'),
(2141100,9,9,0,0,0,100,0,3000,3000,0,0,0,0,11,36823,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Cast Overwhelming Odor'),
(2141100,9,10,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.54479,'Tobias the Filth Gorger - Script - Set Orientation'),
(2141100,9,11,0,0,0,100,0,1000,1000,0,0,0,0,11,36824,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Cast Overwhelming Odor'),
(2141100,9,12,0,0,0,100,0,7000,7000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Say Line 2'),
(2141100,9,13,0,0,0,100,0,0,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - Script - Set NPC Flags');

DELETE FROM `waypoints` WHERE `entry` IN (21411);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(21411,1,-2080.31,5296.75,-37.3236,NULL,0,'Tobias the Filth Gorger'),
(21411,2,-2083.83,5299.95,-37.3236,NULL,0,'Tobias the Filth Gorger');


-- Gordie
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (21434);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 21434 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2143400 AND `source_type` = 9;

DELETE FROM `waypoints` WHERE `entry` IN (21434);

DELETE FROM `creature_text` WHERE `CreatureID` IN (21434) AND `GroupID` IN (0);

