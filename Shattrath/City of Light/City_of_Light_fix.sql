/*
Fix City of Light Quest in Shattrath 3-26-26
Convert to SAI from Core code in zone_shattrath_city.cpp
Must comment out "npc_kservant" script in the cpp file. 

*/

-- A'dal
UPDATE `quest_template_addon` SET `SourceSpellID` = 0 WHERE `ID` = 10211; -- 34444 -- Spell 34444 is used by player after 34445

UPDATE `smart_scripts` SET `target_type` = 7, `target_param1` = 0 WHERE `entryorguid` = 1848100 AND `source_type` = 9 AND `id` IN (0,1,2,3); -- 12 1
UPDATE `smart_scripts` SET `comment` = "A Dal - Script - Say Line 3 on Kael\'thas Sunstrider" WHERE `entryorguid` = 1848100 AND `source_type` = 9 AND `id` IN (9); -- A Dal - Script - Say Line 2 on Kael\'thas Sunstrider


DELETE FROM `smart_scripts` WHERE `entryorguid` = 18481 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1848101 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18481,0,0,0,20,0,100,0,11007,0,0,0,0,0,80,1848100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"A'dal - On Quest 'Kael'thas and the Verdant Sphere' Finished - Run Script"),
(18481,0,1,0,20,0,100,0,10210,0,0,0,0,0,80,1848101,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"A'dal - On Quest 'A'dal' Finished - Run Script"),
(18481,0,2,0,19,0,100,0,13082,0,0,0,0,0,11,53141,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"A'dal - On Quest 'The Boon of A'dal' Taken - Cast 'Portal Effect: Dalaran'"),

(1848101,9,0,0,0,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"A'dal - On Script - Store Targetlist"),
(1848101,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,19,18166,0,0,0,0,0,0,0,"A'dal - On Script - Send Target 1 (Khadgar)"),
(1848101,9,2,0,0,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,18166,0,0,0,0,0,0,0,"A'dal - On Script - Set Data 0 1 (Khadgar)");


-- Khadgar
DELETE FROM `smart_scripts` WHERE `entryorguid` = 18166 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1816600 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18166,0,0,0,38,0,100,0,0,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Khadgar - On Data Set 0 1 - Say Line 0"),
(18166,0,1,0,19,0,100,0,10211,0,0,0,0,0,80,1816600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar - On Quest 'City of Light' Taken - Run Script"),
(18166,0,2,0,1,0,100,0,90000,90000,90000,90000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.14675,"Khadgar - OOC - Set Orientation"),

(1816600,9,0,0,0,0,100,0,0,0,0,0,0,0,11,34445,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Khadgar - On Script - Cast 'Trigger Khadgar's Servant'"),
-- Hack, it must be done in spell script (spell 34445)
(1816600,9,1,0,0,0,100,0,0,0,0,0,0,0,86,34444,0,7,0,0,0,7,0,0,0,0,0,0,0,0,"Khadgar - On Script - Cross Cast 'Summon Khadgar's Servant'"),
(1816600,9,2,0,0,0,100,0,4000,4000,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Khadgar - On Script - Say Line 1");


-- Khadgar's Servant
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = 19685; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 19685 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1968500,1968501,1968502,1968503,1968504,1968505,1968506) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19685,0,0,0,54,0,100,0,0,0,0,0,0,0,80,1968500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Just Summoned - Run Script"),
(19685,0,1,0,108,0,100,0,9,0,0,0,0,0,80,1968501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Waypoint 9 Reached - Run Script"),
(19685,0,2,0,108,0,100,0,24,0,0,0,0,0,80,1968502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Waypoint 24 Reached - Run Script"),
(19685,0,3,0,108,0,100,0,53,0,0,0,0,0,80,1968503,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Waypoint 53 Reached - Run Script"),
(19685,0,4,0,108,0,100,0,65,0,0,0,0,0,80,1968504,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Waypoint 65 Reached - Run Script"),
(19685,0,5,0,108,0,100,0,77,0,0,0,0,0,80,1968505,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Waypoint 77 Reached - Run Script"),
(19685,0,6,0,108,0,100,0,81,0,0,0,0,0,80,1968506,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Waypoint 81 Reached - Run Script"),

-- Stop follow owner, he's guardian now
(1968500,9,0,0,0,0,100,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Stop Follow"),
-- Hack, seems like the only way to really stop follow for guardians is
-- to stop it by action above and then move creature to some point
(1968500,9,1,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Move To Self"),
(1968500,9,2,0,0,0,100,0,8000,8000,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 0"),
(1968500,9,3,0,0,0,100,0,5000,5000,0,0,0,0,232,196850,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Start Waypoint"),

-- (1968501,9,0,0,0,0,100,0,0,0,0,0,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Pause Waypoint"),
(1968501,9,0,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 1"),
(1968501,9,1,0,0,0,100,0,6000,6000,0,0,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 2"),
(1968501,9,2,0,0,0,100,0,8000,8000,0,0,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 3"),
(1968501,9,3,0,0,0,100,0,6000,6000,0,0,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 4"),

-- (1968502,9,0,0,0,0,100,0,0,0,0,0,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Pause Waypoint"),
(1968502,9,0,0,0,0,100,0,0,0,0,0,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 5"),
(1968502,9,1,0,0,0,100,0,5000,5000,0,0,0,0,1,6,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 6"),
(1968502,9,2,0,0,0,100,0,8000,8000,0,0,0,0,1,7,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 7"),

-- (1968503,9,0,0,0,0,100,0,0,0,0,0,0,0,54,33000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Pause Waypoint"),
(1968503,9,0,0,0,0,100,0,0,0,0,0,0,0,1,8,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 8"),
(1968503,9,1,0,0,0,100,0,8000,8000,0,0,0,0,1,9,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 9"),
(1968503,9,2,0,0,0,100,0,8000,8000,0,0,0,0,1,10,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 10"),
(1968503,9,3,0,0,0,100,0,8000,8000,0,0,0,0,1,11,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 11"),

-- (1968504,9,0,0,0,0,100,0,0,0,0,0,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Pause Waypoint"),
(1968504,9,0,0,0,0,100,0,0,0,0,0,0,0,1,12,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 12"),
(1968504,9,1,0,0,0,100,0,12000,12000,0,0,0,0,1,13,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 13"),

-- (1968505,9,0,0,0,0,100,0,0,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Pause Waypoint"),
(1968505,9,0,0,0,0,100,0,0,0,0,0,0,0,1,14,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 14"),
(1968505,9,1,0,0,0,100,0,7000,7000,0,0,0,0,1,15,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 15"),
(1968505,9,2,0,0,0,100,0,8000,8000,0,0,0,0,1,16,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 16"),
(1968505,9,3,0,0,0,100,0,7000,7000,0,0,0,0,1,17,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 17"),

-- (1968506,9,0,0,0,0,100,0,0,0,0,0,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Pause Waypoint"),
(1968506,9,0,0,0,0,100,0,7000,7000,0,0,0,0,1,18,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 18"),
(1968506,9,1,0,0,0,100,0,9000,9000,0,0,0,0,1,19,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 19"),
(1968506,9,2,0,0,0,100,0,12000,12000,0,0,0,0,1,20,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 20"),
(1968506,9,3,0,0,0,100,0,10000,10000,0,0,0,0,1,21,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Say Line 21"),
(1968506,9,4,0,0,0,100,0,6000,6000,0,0,0,0,11,34443,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Cast 'Tour Complete'"),
(1968506,9,5,0,0,0,100,0,4000,4000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Khadgar's Servant - On Script - Despawn");

DELETE FROM `script_waypoint` WHERE `entry` = 19685;
-- DELETE FROM `waypoints` WHERE `entry` = 19685;

DELETE FROM `waypoint_data` where `id` in (196850);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(196850,1,-1856.7291,5412.545,-12.428734,NULL,0,0,0,100,0),
(196850,2,-1851.104,5399.949,-12.428146,NULL,0,0,0,100,0),
(196850,3,-1847.482,5389.796,-12.428139,NULL,0,0,0,100,0),
(196850,4,-1826.1399,5348.1655,-12.42815,NULL,0,0,0,100,0), -- Keep from clipping through doorway
(196850,5,-1821.0642,5335.8955,-12.42815,NULL,0,0,0,100,0),
(196850,6,-1802.9408,5316.994,-12.42815,NULL,0,0,0,100,0),
(196850,7,-1798.6168,5309.4126,-14.128704,NULL,0,0,0,100,0),
(196850,8,-1788.5541,5293.4414,-24.505981,NULL,0,0,0,100,0),
(196850,9,-1779.5438,5277.361,-34.690746,5.2001,25000,0,0,100,0),
(196850,10,-1771.0858,5261.3037,-38.817463,NULL,0,0,0,100,0),
(196850,11,-1759.6964,5259.905,-40.20918,NULL,0,0,0,100,0),
(196850,12,-1753.8544,5260.21,-40.20918,NULL,0,0,0,100,0),
(196850,13,-1747.248,5259.636,-40.20918,NULL,0,0,0,100,0),
(196850,14,-1746.0751,5253.2456,-42.85606,NULL,0,0,0,100,0),
(196850,15,-1742.3296,5243.56,-46.769466,NULL,0,0,0,100,0),
(196850,16,-1730.8258,5236.6045,-49.55395,NULL,0,0,0,100,0),
(196850,17,-1683.7133,5220.5083,-49.08398,NULL,0,0,0,100,0),
(196850,18,-1670.9059,5217.952,-46.45898,NULL,0,0,0,100,0),
(196850,19,-1652.6665,5226.6304,-44.08592,NULL,0,0,0,100,0),
(196850,20,-1634.3944,5250.019,-40.897358,NULL,0,0,0,100,0),
(196850,21,-1630.9922,5271.961,-41.013546,NULL,0,0,0,100,0),
(196850,22,-1626.7494,5289.8457,-40.59592,NULL,0,0,0,100,0),
(196850,23,-1621.2554,5297.61,-40.20918,NULL,0,0,0,100,0),
(196850,24,-1614.4084,5298.0903,-40.20918,6.1191,20000,0,0,100,0),
(196850,25,-1632.7439,5300.1255,-40.20918,NULL,0,0,0,100,0),
(196850,26,-1643.0891,5308.961,-40.20918,NULL,0,0,0,100,0),
(196850,27,-1653.7859,5315.9053,-40.20918,NULL,0,0,0,100,0),
(196850,28,-1656.0864,5323.8047,-40.20985,NULL,0,0,0,100,0),  -- new try to fix glitch on coming down rock area
(196850,29,-1660.2682,5338.8228,-46.843056,NULL,0,0,0,100,0), -- new try to fix glitch on coming down rock area
-- (196850,28,-1659.5901,5336.533,-45.95236,NULL,0,0,0,100,0), -- -1659.5901 5336.533 -45.95236
(196850,30,-1662.5231,5352.865,-45.892548,NULL,0,0,0,100,0),
(196850,31,-1648.3981,5373.665,-45.754517,NULL,0,0,0,100,0),
(196850,32,-1642.712,5388.85,-45.504517,NULL,0,0,0,100,0),
(196850,33,-1644.5186,5403.5293,-44.493343,NULL,0,0,0,100,0),
(196850,34,-1646.4899,5413.0654,-45.243343,NULL,0,0,0,100,0),
(196850,35,-1653.3834,5421.3716,-43.112034,NULL,0,0,0,100,0),
(196850,36,-1666.6986,5426.2163,-38.837574,NULL,0,0,0,100,0),
(196850,37,-1688.5514,5425.893,-35.175846,NULL,0,0,0,100,0),
(196850,38,-1713.5116,5426.5933,-21.384369,NULL,0,0,0,100,0),
(196850,39,-1736.4636,5427.166,-12.428154,NULL,0,0,0,100,0),
(196850,40,-1740.6917,5401.8325,-12.428154,NULL,0,0,0,100,0),
(196850,41,-1745.5271,5378.9697,-12.428154,NULL,0,0,0,100,0),
(196850,42,-1762.5303,5368.7065,-12.428154,NULL,0,0,0,100,0),
(196850,43,-1775.9219,5363.033,-12.42815,NULL,0,0,0,100,0),
(196850,44,-1796.6299,5352.968,-12.42815,NULL,0,0,0,100,0),
(196850,45,-1819.3346,5335.0957,-12.42815,NULL,0,0,0,100,0),
(196850,46,-1846.719,5328.497,-12.428154,NULL,0,0,0,100,0),
(196850,47,-1860.551,5321.537,-12.428154,NULL,0,0,0,100,0),
(196850,48,-1879.4563,5312.3325,-12.428154,NULL,0,0,0,100,0),
(196850,49,-1887.5878,5318.0654,-10.759747,NULL,0,0,0,100,0),
(196850,50,-1891.0618,5339.536,0.9520931,NULL,0,0,0,100,0),
(196850,51,-1897.5068,5326.246,1.2132931,NULL,0,0,0,100,0),
(196850,52,-1912.0924,5287.3804,1.5652809,NULL,0,0,0,100,0),
(196850,53,-1916.7811,5270.458,3.3536053,4.4021,33000,0,0,100,0),
(196850,54,-1923.3287,5270.8525,3.6359081,NULL,0,0,0,100,0),
(196850,55,-1927.7502,5278.948,-0.23987198,NULL,0,0,0,100,0),
(196850,56,-1928.264,5297.987,-11.442955,NULL,0,0,0,100,0),
(196850,57,-1922.1162,5313.118,-12.428154,NULL,0,0,0,100,0),
(196850,58,-1923.5797,5337.27,-12.428158,NULL,0,0,0,100,0),
(196850,59,-1927.2803,5350.631,-12.428154,NULL,0,0,0,100,0),
(196850,60,-1956.068,5388.3394,-12.428158,NULL,0,0,0,100,0),
(196850,61,-1969.9077,5433.6436,-12.428154,NULL,0,0,0,100,0),
(196850,62,-1977.7777,5448.807,-12.428154,NULL,0,0,0,100,0),
(196850,63,-1969.6249,5454.689,-5.780082,NULL,0,0,0,100,0), -- new middle of ramp
(196850,64,-1951.7997,5458.225,0.9233341,NULL,0,0,0,100,0), -- top of scryers bridge
(196850,65,-1957.6539,5461.689,1.0255064,2.8199,20000,0,0,100,0), -- top at scryer's bridge  -- fixed to postion behind peacekeeper
-- (196850,64,-1966.2068,5463.945,1.1968708,2.8199,20000,0,0,100,0),
(196850,66,-1957.9502,5462.5312,1.0414124,NULL,0,0,0,100,0),
(196850,67,-1953.9803,5461.978,0.9717388,NULL,0,0,0,100,0),
(196850,68,-1951.378,5464.6187,0.7884636,NULL,0,0,0,100,0),
(196850,69,-1970.6925,5486.3354,-12.428154,NULL,0,0,0,100,0),
(196850,70,-1960.5685,5504.846,-12.428158,NULL,0,0,0,100,0),
(196850,71,-1922.1747,5535.598,-12.428154,NULL,0,0,0,100,0),
(196850,72,-1885.1937,5545.7783,-12.428154,NULL,0,0,0,100,0),
(196850,73,-1857.5562,5548.6274,-12.428154,NULL,0,0,0,100,0),
(196850,74,-1840.5497,5540.975,-10.218967,NULL,0,0,0,100,0),
(196850,75,-1836.9247,5522.585,0.94164085,NULL,0,0,0,100,0),
(196850,76,-1834.1553,5524.043,1.0545769,NULL,0,0,0,100,0),
(196850,77,-1832.4535,5524.2715,1.0290349,1.2684,22000,0,0,100,0), -- aldor rise bridge -- fixed to postion behind peacekeeper
-- (196850,76,-1830.9613,5531.5635,1.2079754,1.2684,22000,0,0,100,0),
(196850,78,-1831.6431,5526.3687,1.111126,NULL,0,0,0,100,0),
(196850,79,-1838.75,5505.8076,0.85694885,NULL,0,0,0,100,0),
(196850,80,-1845.4235,5485.2446,0.8564892,NULL,0,0,0,100,0),
(196850,81,-1847.9873,5477.499,0.85691833,4.4611,23000,0,0,100,0);

UPDATE `creature_text` SET `comment` = "Khadgar's Servant" WHERE `CreatureID` = 19685;


-- Haggard War Veteran
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 19684; -- ""

DELETE FROM `creature` WHERE `guid` IN (150145,150146,150147);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(150145,19684,0,0,530,0,0,1,1,0,-1853.81,5129.783,-38.854,2.015334,300,0,0,0,0,2,0,0,0,'',15354,0,NULL),
(150146,19684,0,0,530,0,0,1,1,0,-1834.7545,5355.983,-12.344798,5.65486,300,0,0,0,0,2,0,0,0,'',15354,0,NULL),
(150147,19684,0,0,530,0,0,1,1,0,-1568.29,5139.5,-23.9051,2.54298,300,0,0,0,0,2,0,0,0,'',15354,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (150145,150146,150147);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(150145,1501450,0,0,0,0,0,NULL),
(150146,1501460,0,0,0,0,0,NULL),
(150147,1501470,0,0,0,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4426 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 19684 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4426,2,0,1,46,0,100,0,4426,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Trigger - Store Targetlist"),
(4426,2,1,2,61,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,19,19684,30,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Trigger (Linked) - Send Target 1 (Haggard War Veteran)"),
(4426,2,2,0,61,0,100,0,0,0,0,0,0,0,45,0,1,0,0,0,0,19,19684,30,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Trigger (Linked) - Set Data 0 1 (Haggard War Veteran)"),

(19684,0,0,0,38,0,100,0,0,1,60000,60000,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Haggard War Veteran - On Data Set 0 1 - Say Line 1"),
-- (19684,0,0,0,22,0,100,0,4426,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Haggard War Veteran - On Data Set 0 1 - Say Line 1"),
(19684,0,1,0,108,0,100,0,6,701770,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Haggard War Veteran - On Waypoint 6 Reached - Set Phase 1'),
(19684,0,2,0,108,0,100,0,7,701770,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Haggard War Veteran - On Waypoint 7 Reached - Set Phase 0'),
(19684,0,3,0,1,1,100,0,30000,40000,35000,45000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Haggard War Veteran - OOC (Phase 1) - Say Line 0");

DELETE FROM `waypoint_data` WHERE `id` IN (701770,1501450,1501460,1501470);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(701770,1,-1560.23,5327.7,11.5864,NULL,20000,0,0,100,0),
(701770,2,-1596.7,5340.36,17.2558,NULL,0,0,0,100,0),
(701770,3,-1638.51,5354.75,15.8854,NULL,0,0,0,100,0),
(701770,4,-1685.49,5370.25,7.72029,NULL,20000,0,0,100,0),
(701770,5,-1638.67,5354.71,15.8777,NULL,0,0,0,100,0),
(701770,6,-1638.5239,5345.737,15.927186,4.3489,180000,0,0,100,0), -- Overlook lower city say stuff
(701770,7,-1631.2659,5347.48,16.311749,NULL,0,0,0,100,0),
(701770,8,-1596.5,5340.39,17.2532,NULL,0,0,0,100,0),

(1501450,1,-1853.810,5129.783,-38.854,1.794635,180000,0,0,100,0),
(1501450,2,-1852.098,5112.867,-38.875,4.614215,0,0,0,100,0),
(1501450,3,-1854.521,5075.556,-33.129,4.629922,0,0,0,100,0),
(1501450,4,-1858.051,5038.752,-27.035,4.602435,0,0,0,100,0),
(1501450,5,-1861.358,5013.369,-22.824,4.574946,0,0,0,100,0),
(1501450,6,-1858.051,5038.752,-27.035,4.602435,0,0,0,100,0),
(1501450,7,-1854.521,5075.556,-33.129,4.629922,0,0,0,100,0),
(1501450,8,-1852.098,5112.867,-38.875,4.614215,0,0,0,100,0),

(1501460,1,-1834.7545,5355.983,-12.344798,5.651,180000,0,0,100,0),
(1501460,2,-1856.9169,5330.034,-12.427,4.005531,0,0,0,100,0),
(1501460,3,-1871.6191,5312.819,-12.427,4.005531,0,0,0,100,0),
(1501460,4,-1890.5996,5288.959,-12.427,4.076217,0,0,0,100,0),
(1501460,5,-1903.5646,5270.025,0.35275,4.072291,0,0,0,100,0),
(1501460,6,-1920.8806,5255.520,6.69293,4.358962,0,0,0,100,0),
(1501460,7,-1933.0880,5221.805,14.4307,4.370744,0,0,0,100,0),
(1501460,8,-1944.6090,5187.949,16.8348,4.386452,0,0,0,100,0),
(1501460,9,-1955.4442,5154.369,17.2905,4.366816,0,0,0,100,0),
(1501460,10,-1944.6090,5187.949,16.8348,4.386452,0,0,0,100,0),
(1501460,11,-1933.0880,5221.805,14.4307,4.370744,0,0,0,100,0),
(1501460,12,-1920.8806,5255.520,6.69293,4.358962,0,0,0,100,0),
(1501460,13,-1903.5646,5270.025,0.35275,4.072291,0,0,0,100,0),
(1501460,14,-1890.5996,5288.959,-12.427,4.076217,0,0,0,100,0),
(1501460,15,-1871.6191,5312.819,-12.427,4.005531,0,0,0,100,0),
(1501460,16,-1856.9169,5330.034,-12.427,4.005531,0,0,0,100,0),

(1501470,1,-1568.29,5139.5,-23.9051,0,0,0,0,100,0),
(1501470,2,-1628.91,5181.64,-36.080,0,0,0,0,100,0),
(1501470,3,-1634.13,5185.49,-37.146,0,0,0,0,100,0),
(1501470,4,-1660.66,5198.37,-38.855,3.173009,180000,0,0,100,0),
(1501470,5,-1634.13,5185.49,-37.146,0,0,0,0,100,0),
(1501470,6,-1628.91,5181.64,-36.080,0,0,0,0,100,0);

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4426;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4426,"SmartTrigger");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4426 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4426,2,0,9,0,10211,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if player has taken quest 'City of Light'");

DELETE FROM `creature_text` WHERE `CreatureID` = 19684;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(19684,0,0,"The market sure looks busy today.",12,0,100,0,0,0,17235,0,"Haggard War Veteran"),
(19684,0,1,"Look at those crazy kids running around.  Not a care in the world.",12,0,100,0,0,0,17236,0,"Haggard War Veteran"),
(19684,0,2,"What manner of creature is that?  Looks like a purple goblin.",12,0,100,0,0,0,17237,0,"Haggard War Veteran"),
(19684,1,0,"Khadgar himself is showing you around?  You must have made a good impression,$n.",12,0,100,0,0,0,17283,0,"Haggard War Veteran");


-- Sha'nir
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4425 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4425,2,0,9,0,10211,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if player has taken quest 'City of Light'");


-- Iz'zard
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 18622; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4428 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 18622 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 1862200 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4428,2,0,0,46,0,100,0,4428,0,0,0,0,0,45,0,1,0,0,0,0,19,18622,0,0,0,0,0,0,0,"Areatrigger (Lower City) - On Trigger - Set Data 0 1 (Iz'zard)"),

(18622,0,0,0,38,0,100,0,0,1,60000,60000,0,0,80,1862200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Iz'zard - On Data Set 0 1 - Run Script"),-- 02:54:32.000

(1862200,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Iz'zard - On Script - Say Line 0"),-- 02:54:32.000
(1862200,9,1,0,0,0,100,0,5000,5000,0,0,0,0,1,0,0,0,0,0,0,19,18596,0,0,0,0,0,0,0,"Iz'zard - On Script - Say Line 0 (Arcanist Adyria)"); -- 02:54:37.000

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4428;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4428,"SmartTrigger");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4428 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4428,2,0,9,0,10211,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if player has taken quest 'City of Light'");

DELETE FROM `creature_text` WHERE `CreatureID` IN (18622);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18622,0,0,"Be mindful of what you say,this one's being shown around by Khadgar's pet.",12,0,100,0,0,0,17284,0,"Iz'zard");


-- Arcanist Adyria
DELETE FROM `creature_text` WHERE `CreatureID` IN (18596);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18596,0,0,"Are you joking?  I'm a Scryer,I always watch what I say.  More enemies than allies in this city,it seems.",12,0,100,0,0,0,17285,0,"Arcanist Adyria");


-- Aldor Anchorite
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 19142;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4429 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 19142 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4429,2,0,1,46,0,100,0,4429,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Trigger - Store Targetlist"),
(4429,2,1,2,61,0,100,0,0,0,0,0,0,0,12,19142,8,0,0,0,0,8,0,0,0,0,-1890.9529,5338.5063,1.0447,4.939281,"Areatrigger (Terrace of Light) - On Link - Summon Creature 'Aldor Anchorite'"),
(4429,2,2,0,61,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,19,19142,100,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Link - Send Target 1 (Aldor Anchorite)"),

(19142,0,0,0,54,0,100,0,0,0,0,0,0,0,53,1,19142,0,0,0,2,1,0,0,0,0,0,0,0,0,"Aldor Anchorite - On Just Summoned - Start Waypoint"),
(19142,0,1,0,40,0,100,0,1,0,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Aldor Anchorite - On Waypoint 1 Reached - Say Line 0"),
(19142,0,2,0,40,0,100,0,7,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Aldor Anchorite - On Waypoint 7 Reached - Despawn (1000)");

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4429;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4429,"SmartTrigger");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4429 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4429,2,0,9,0,10211,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if player has taken quest 'City of Light'"),
(22,1,4429,2,0,29,0,19142,100,0,1,0,0,"","Group 0: Execute SAI (Action 0) if creature 'Aldor Anchorite' is not near");

DELETE FROM `creature_text` WHERE `CreatureID` = 19142 AND `GroupID` = 0;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(19142,0,0,"Light be with you,$n.  And welcome to Shattrath.",12,0,100,0,0,0,17286,0,"Aldor Anchorite");

DELETE FROM `waypoints` WHERE `entry` = 19142;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(19142,1,-1888.4237,5326.354,-3.825138,"Aldor Anchorite"),
(19142,2,-1887.8665,5322.0596,-7.4228554,"Aldor Anchorite"),
(19142,3,-1885.7524,5312.7925,-12.428154,"Aldor Anchorite"),
(19142,4,-1880.2937,5306.304,-12.428154,"Aldor Anchorite"),
(19142,5,-1871.0533,5302.632,-12.428154,"Aldor Anchorite"),
(19142,6,-1846.2037,5304.3022,-12.428154,"Aldor Anchorite"),
(19142,7,-1834.7722,5303.1914,-12.428154,"Aldor Anchorite");


-- Scryer Arcanist
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 18547;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4430 AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 18547 AND `source_type` = 0 AND `id` IN (0,1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(4430,2,0,1,46,0,100,0,4430,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Trigger - Store Targetlist"),
(4430,2,1,2,61,0,100,0,0,0,0,0,0,0,12,18547,8,0,0,0,0,8,0,0,0,0,-2011.0538,5479.285,3.8012,0.104719,"Areatrigger (Terrace of Light) - On Link - Summon Creature 'Scryer Arcanist'"),
(4430,2,2,0,61,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,19,18547,100,0,0,0,0,0,0,"Areatrigger (Terrace of Light) - On Link - Send Target 1 (Scryer Arcanist)"),

(18547,0,0,0,54,0,100,0,0,0,0,0,0,0,53,1,18547,0,0,0,2,1,0,0,0,0,0,0,0,0,"Scryer Arcanist - On Just Summoned - Start Waypoint"),
(18547,0,1,0,40,0,100,0,2,0,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Scryer Arcanist - On Waypoint 2 Reached - Say Line 0"),
(18547,0,2,0,40,0,100,0,11,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Scryer Arcanist - On Waypoint 11 Reached - Despawn (1000)");

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4430;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4430,"SmartTrigger");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4430 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4430,2,0,9,0,10211,0,0,0,0,0,"","Group 0: Execute SAI (Action 0) if player has taken quest 'City of Light'"),
(22,1,4430,2,0,29,0,18547,100,0,1,0,0,"","Group 0: Execute SAI (Action 0) if creature 'Scryer Arcanist' is not near");

DELETE FROM `creature_text` WHERE `CreatureID` = 18547;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(18547,0,0,"We're rather selective of who we befriend,$n.  You think you have what it takes?",12,0,100,0,0,0,17287,0,"Scryer Arcanist");

DELETE FROM `waypoints` WHERE `entry` = 18547;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(18547,1,-1984.6294,5469.5337,0.9833431,"Scryer Arcanist"),
(18547,2,-1969.3099,5464.869,1.2419147,"Scryer Arcanist"),
(18547,3,-1957.1414,5460.9097,1.0112228,"Scryer Arcanist"),
(18547,4,-1935.9397,5453.796,0.85699654,"Scryer Arcanist"),
(18547,5,-1919.1415,5447.9434,0.85645866,"Scryer Arcanist"),
(18547,6,-1914.0087,5445.4805,0.85712814,"Scryer Arcanist"),
(18547,7,-1910.4358,5435.6807,1.0386486,"Scryer Arcanist"),
(18547,8,-1915.1366,5424.12,1.7555523,"Scryer Arcanist"),
(18547,9,-1916.685,5417.044,2.154705,"Scryer Arcanist"),
(18547,10,-1908.1824,5399.165,2.3604717,"Scryer Arcanist"),
(18547,11,-1910.6818,5390.2026,2.254301,"Scryer Arcanist");