-- Jungle Secrets Start Event

-- Private Thorsen
UPDATE `creature_template` SET `faction`=11, `AIName`="SmartAI" WHERE `entry`=738;
UPDATE `creature` SET `spawntimesecs`=300,`MovementType`=0  WHERE `guid`=2243; -- Reverted Back to 5min was 10 seconds
UPDATE `creature_addon` SET `path_id`=0, `bytes2`=4097 WHERE `guid`=2243; 

DELETE FROM `smart_scripts` WHERE `entryorguid`=738 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (73800,73801,73802,73803,73804) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(738,0,0,0,11,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Respawn - Add Npc Flag Questgiver"),
(738,0,1,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Respawn - Set Active On"),
(738,0,2,0,11,0,100,0,0,0,0,0,0,0,80,73800,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Respawn - Run Sript"),
(738,0,3,0,40,0,100,0,12,73800,0,0,0,0,80,73801,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Waypoint 12 Reached - Run Script"),
(738,0,4,0,40,0,100,0,21,73800,0,0,0,0,80,73802,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Waypoint 21 Reached - Run Script"),
(738,0,5,0,38,0,100,0,1,1,0,0,0,0,80,73803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Data Set - Run Script"),
(738,0,6,0,40,0,100,0,23,73801,0,0,0,0,80,73804,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Waypoint 23 Reached - Run Script"),


(73800,9,0,0,0,0,100,0,600000,600000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 0"),
(73800,9,1,0,0,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Remove Npc Flag Questgiver"),
(73800,9,2,0,0,0,100,0,5000,5000,0,0,0,0,53,0,73800,0,0,0,2,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Start Waypoint"),



(73801,9,0,0,0,0,100,0,0,0,0,0,0,0,54,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Pause Waypoint"),
(73801,9,1,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 1"),
(73801,9,2,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Set Run On"),


(73802,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.23057,"Private Thorsen - On Script - Set Orientation"),
(73802,9,1,0,0,0,100,0,500,500,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 2"),
(73802,9,2,0,0,0,100,0,0,0,0,0,0,0,12,775,1,65000,0,0,0,8,0,0,0,0,-11520.415,-446.16528,41.567867,1.21196,"Private Thorsen - On Script - Summon Creature 'Kurzen's Agent'"),
(73802,9,3,0,0,0,100,0,2000,2000,0,0,0,0,12,775,1,65000,0,0,0,8,0,0,0,0,-11516.704,-444.7992,41.282654,1.05488,"Private Thorsen - On Script - Summon Creature 'Kurzen's Agent'"),
(73802,9,4,0,0,0,100,0,14000,14000,0,0,0,0,1,0,0,0,0,0,0,19,775,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 0 (Kurzen's Agent)"),
(73802,9,5,0,0,0,100,0,1000,2000,0,0,0,0,1,1,0,0,0,0,0,19,775,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 1 (Kurzen's Agent)"),
(73802,9,6,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,11,775,50,0,0,0,0,0,0,"Private Thorsen - On Script - Set Data to Kurzen's Agent"),


(73803,9,0,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 3"),
(73803,9,1,0,0,0,100,0,0,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Add Npc Flag Questgiver"),
(73803,9,2,0,0,0,100,0,120000,120000,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Remove Npc Flag Questgiver"),
(73803,9,3,0,0,0,100,0,0,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 4"),
(73803,9,4,0,0,0,100,0,5000,5000,0,0,0,0,53,0,73801,0,0,0,2,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Start Waypoint"),
(73803,9,5,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Set Run On"), -- new


(73804,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.5676,"Private Thorsen - On Script - Set Orientation"),
(73804,9,1,0,0,0,100,0,500,500,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 5"),
(73804,9,2,0,0,0,100,0,7000,7000,0,0,0,0,1,0,0,0,0,0,0,19,733,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 0 (Sergeant Yohwa)"),
(73804,9,3,0,0,0,100,0,5000,5000,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Add Npc Flag Questgiver"), -- new
(73804,9,4,0,0,0,100,0,900000,900000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Say Line 0"),
(73804,9,5,0,0,0,100,0,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Remove Npc Flag Questgiver"),
(73804,9,6,0,0,0,100,0,5000,5000,0,0,0,0,53,0,73800,0,0,0,2,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Start Waypoint"), -- Start New Cycle
(73804,9,7,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Thorsen - On Script - Set Run Off"); -- new


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=738;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,6,738,0,0,29,1,775,200,0,1,0,0,"","SAI triggers only if both Kurzen's Agents are dead");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceEntry`=215;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19,0,215,0,0,23,0,99,0,0,1,0,0,"","Quest 'Jungle Secrets' can only be taken if Private Thorsen is not in area 99");

DELETE FROM `waypoint_data` WHERE `id` = 22430;

DELETE FROM `waypoints` WHERE `entry` IN (73800,73801);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES

(73800,1,-11321.7,-205.85,75.4398,NULL,0,'Private Thorsen'),
(73800,2,-11326.7,-216.63,76.3375,NULL,0,'Private Thorsen'),
(73800,3,-11333.279,-227.09657,74.91445,NULL,0,'Private Thorsen'),
(73800,4,-11344.153,-225.86122,75.57611,NULL,0,'Private Thorsen'),
(73800,5,-11351.3,-212.923,75.2968,NULL,0,'Private Thorsen'),
(73800,6,-11361.9,-212.078,75.2968,NULL,0,'Private Thorsen'),
(73800,7,-11374.4,-217.351,75.2161,NULL,0,'Private Thorsen'),
(73800,8,-11379.1,-227.022,73.4353,NULL,0,'Private Thorsen'),
(73800,9,-11379.4,-239.568,67.9693,NULL,0,'Private Thorsen'),
(73800,10,-11382.1,-251.993,64.5292,NULL,0,'Private Thorsen'),
(73800,11,-11384.7,-267.21,60.9735,NULL,0,'Private Thorsen'),
(73800,12,-11389.4,-273.725,59.7828,NULL,0,'Private Thorsen'), -- Start Run
(73800,13,-11421.5,-287.48,52.1968,NULL,0,'Private Thorsen'),
(73800,14,-11441.1,-287.254,45.9617,NULL,0,'Private Thorsen'),
(73800,15,-11456.1,-287.166,41.4507,NULL,0,'Private Thorsen'),
(73800,16,-11472.5,-288.005,37.0786,NULL,0,'Private Thorsen'),
(73800,17,-11491.2,-299.717,35.798,NULL,0,'Private Thorsen'),
(73800,18,-11510.9,-317.675,35.8094,NULL,0,'Private Thorsen'),
(73800,19,-11521.4,-323.755,35.8094,NULL,0,'Private Thorsen'),
(73800,20,-11528.3,-335.951,36.9253,NULL,0,'Private Thorsen'),
(73800,21,-11527.6,-353.22,37.7493,NULL,0,'Private Thorsen'), -- Encounter


(73801,1,-11521.5,-328.624,36.0411,NULL,0,'Private Thorsen'),
(73801,2,-11497.7,-306.014,35.7996,NULL,0,'Private Thorsen'),
(73801,3,-11473.7,-289.043,36.9186,NULL,0,'Private Thorsen'),
(73801,4,-11447.1,-287.478,44.0555,NULL,0,'Private Thorsen'),
(73801,5,-11415.6,-287.884,53.9915,NULL,0,'Private Thorsen'),
(73801,6,-11394.3,-285.5,58.7721,NULL,0,'Private Thorsen'),
(73801,7,-11384.7,-257.563,62.7445,NULL,0,'Private Thorsen'),
(73801,8,-11382.7,-245.982,65.8541,NULL,0,'Private Thorsen'),
(73801,9,-11382.5,-237.982,68.5594,NULL,0,'Private Thorsen'),
(73801,10,-11381.8,-230.669,71.8558,NULL,0,'Private Thorsen'),
(73801,11,-11380,-225.222,74.0057,NULL,0,'Private Thorsen'),
(73801,12,-11376.7,-220.913,75.0584,NULL,0,'Private Thorsen'),
(73801,13,-11372,-214.515,75.3274,NULL,0,'Private Thorsen'),
(73801,14,-11364.8,-211.369,75.2968,NULL,0,'Private Thorsen'),
(73801,15,-11358.4,-210.313,75.2968,NULL,0,'Private Thorsen'),
(73801,16,-11352.7,-210.88,75.2968,NULL,0,'Private Thorsen'),
(73801,17,-11344.8,-210.795,75.2968,NULL,0,'Private Thorsen'),
(73801,18,-11338.4,-210.338,75.2968,NULL,0,'Private Thorsen'),
(73801,19,-11332.4,-207.985,75.4801,NULL,0,'Private Thorsen'),
(73801,20,-11325.3,-205.129,75.5001,NULL,0,'Private Thorsen'),
(73801,21,-11316.5,-201.627,75.8807,NULL,0,'Private Thorsen'),
(73801,22,-11314,-202.753,75.4623,NULL,0,'Private Thorsen'),
(73801,23,-11313.9,-202.766,75.576,NULL,0,'Private Thorsen');


-- Kurzen's Agent
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=775;
DELETE FROM `smart_scripts` WHERE `entryorguid`=775 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=77500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(775,0,0,0,54,0,100,0,0,0,0,0,0,0,80,77500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Kurzen's Agent - Just Summoned - Run Script"),
(775,0,1,2,38,0,100,0,1,1,0,0,0,0,2,46,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Kurzen's Agent - On Data Set 1 1 - Set Faction 46"),
(775,0,2,0,61,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,19,738,0,0,0,0,0,0,0,"Kurzen's Agent - On Data Set 1 1(linked) - Start Attacking"),
(775,0,3,0,6,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,19,738,0,0,0,0,0,0,0,"Kurzen's Agent - On Just Died - Set Data to Private Thorsen"),


(77500,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-11520.9,-383.511,39.8521,1.21196,"Kurzen's Agent - On Script - Move To Position"),
(77500,9,1,0,0,0,100,0,500,500,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Kurzen's Agent - On Script - Set Run On"),
(77500,9,2,0,0,0,100,0,8000,8000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-11514.679,-363.4985,37.923767,1.3024197,"Kurzen's Agent - On Script - Move To Position"),
(77500,9,3,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Kurzen's Agent - On Script - Set Run Off");


-- Quest Chain End RP Event

-- Corporal Sethman
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1422;

DELETE FROM `smart_scripts` WHERE `entryorguid`=1422 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=142200 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1422,0,0,0,20,0,100,0,330,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Corporal Sethman - On Quest 'Patrol Schedules' Finished - Store Targetlist"),
(1422,0,1,0,20,0,100,0,330,0,0,0,0,0,80,142200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Corporal Sethman - On Quest 'Patrol Schedules' Finished - Run Script"),
(142200,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,19,1421,0,0,0,0,0,0,0,"Corporal Sethman - On Script - Set Data to Private Merle"),
(142200,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,19,1421,0,0,0,0,0,0,0,"Corporal Sethman - On Script - Send Target");

-- Private Merle
UPDATE `creature` SET `spawntimesecs`=120 WHERE `guid`=1626; -- Was 10 seconds but that is way too short changed to 2 mins.
UPDATE `creature` SET `wander_distance`=10,`MovementType`=1 WHERE `guid` IN (1626); -- He should wander as per wowhead video of thorsen event.

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1421;

DELETE FROM `smart_scripts` WHERE `entryorguid`=1421 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (142100,142101,142102) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1421,0,0,0,38,0,100,1,1,1,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Data Set - Set Active On"),
(1421,0,1,0,38,0,100,1,1,1,0,0,0,0,53,1,1421,0,0,0,2,1,0,0,0,0,0,0,0,0,"Private Merle - On Data Set - Start Waypoint"),
(1421,0,2,0,38,0,100,1,1,1,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Data Set - Set Faction 7"),
(1421,0,3,0,40,0,100,0,2,1421,0,0,0,0,80,142100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Waypoint 2 Reached - Run Script"),
(1421,0,4,0,40,0,100,0,11,1421,0,0,0,0,80,142101,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Waypoint 11 Reached - Run Script"),
(1421,0,5,0,40,0,100,0,14,1421,0,0,0,0,80,142102,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Waypoint 14 Reached - Run Script"),
(1421,0,6,0,40,0,100,0,15,1421,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Waypoint 15 Reached - Despawn"),

(142100,9,0,0,0,0,100,0,0,0,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Script - Pause Waypoint"),
(142100,9,1,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Private Merle - On Script - Set Orientation"),
(142100,9,2,0,0,0,100,0,500,500,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Private Merle - On Script - Say Line 0"),

(142101,9,0,0,0,0,100,0,0,0,0,0,0,0,12,604,1,30000,0,0,0,8,0,0,0,0,-11293,-370.476,64.4972,3.08568,"Private Merle - On Script - Summon Creature 'Plague Spreader'"),
(142101,9,1,0,0,0,100,0,0,0,0,0,0,0,12,604,1,30000,0,0,0,8,0,0,0,0,-11295.3,-359.83,63.561,4.18131,"Private Merle - On Script - Summon Creature 'Plague Spreader'"),
(142101,9,2,0,0,0,100,0,0,0,0,0,0,0,12,604,1,30000,0,0,0,8,0,0,0,0,-11291,-364.689,64.1733,3.44304,"Private Merle - On Script - Summon Creature 'Plague Spreader'"),
(142101,9,3,0,0,0,100,0,0,0,0,0,0,0,2,33,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Script - Set Faction 33"),

(142102,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,604,30,0,0,0,0,0,0,"Private Merle - On Script - Set Data to Plague Spreader"),
(142102,9,1,0,0,0,100,0,0,0,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Private Merle - On Script - Despawn in 60 seconds");

DELETE FROM `waypoints` WHERE `entry`=1421;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(1421,1,-11330.5,-224.416,75.2209,NULL,0,'Private Merle'),
(1421,2,-11321.5,-201.289,75.7666,NULL,0,'Private Merle'),
(1421,3,-11342.3,-212.545,75.2202,NULL,0,'Private Merle'),
(1421,4,-11371.4,-215.524,75.2802,NULL,0,'Private Merle'),
(1421,5,-11378.1,-225.526,74.0602,NULL,0,'Private Merle'),
(1421,6,-11380.6,-235.847,69.3212,NULL,0,'Private Merle'),
(1421,7,-11381.2,-253.24,64.1387,NULL,0,'Private Merle'),
(1421,8,-11388.2,-273.483,59.8605,NULL,0,'Private Merle'),
(1421,9,-11387.9,-287.5,59.4897,NULL,0,'Private Merle'),
(1421,10,-11381.8,-317.855,65.0236,NULL,0,'Private Merle'),
(1421,11,-11366.9,-365.866,65.9376,NULL,0,'Private Merle'),
(1421,12,-11355.5,-381.122,65.1301,NULL,0,'Private Merle'),
(1421,13,-11344.7,-381.814,65.1715,NULL,0,'Private Merle'),
(1421,14,-11300.1,-368.146,65.676,NULL,0,'Private Merle'),
(1421,15,-11208.866,-381.70624,49.76837,NULL,0,'Private Merle');

-- Plague Spreader
DELETE FROM `smart_scripts` WHERE `entryorguid`=604 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(604,0,2,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,19,1421,0,0,0,0,0,0,0,"Plague Spreader - On Data Set - Start Attacking");


-- Rebel Watchman
UPDATE `creature_addon` SET `path_id`=13960 WHERE `guid`=1396;
UPDATE `creature` SET `MovementType`=2  WHERE `guid`=1396;

DELETE FROM `waypoint_data` WHERE `id` = 13960;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(13960,1,-11324,-213.784,76.6024,2.25148,180000,0,0,100,0), -- Start Home Position 180000
(13960,2,-11327.795,-209.82527,75.54742,0,0,0,0,100,0),
(13960,3,-11361.9,-212.078,75.2968,100,0,0,0,100,0),
(13960,4,-11371.74,-213.87347,75.296524,100,0,0,0,100,0),
(13960,5,-11374.4,-217.351,75.2161,100,0,0,0,100,0),
(13960,6,-11379.1,-227.022,73.4353,100,0,0,0,100,0),
(13960,7,-11382.1,-251.993,64.5292,100,0,0,0,100,0),
(13960,8,-11390.186,-273.66202,59.57591,4.4750314,30000,0,0,100,0), -- End patrol route
(13960,9,-11382.1,-251.993,64.5292,100,0,0,0,100,0),
(13960,10,-11379.1,-227.022,73.4353,100,0,0,0,100,0),
(13960,11,-11374.4,-217.351,75.2161,100,0,0,0,100,0),
(13960,12,-11371.74,-213.87347,75.296524,100,0,0,0,100,0),
(13960,13,-11361.9,-212.078,75.2968,100,0,0,0,100,0),
(13960,14,-11327.795,-209.82527,75.54742,0,0,0,0,100,0);

-- These mobs would kill Thorsen on his path
-- Black Panther Move
UPDATE `creature` SET `position_x`=-11498.578,`position_y`=-222.27971,`position_z`=35.03428  WHERE `guid`=1644;

-- Young Stranglethorn Tiger move
UPDATE `creature` SET `position_x`=-11613.614,`position_y`=-382.8939,`position_z`=17.308187  WHERE `guid`=2214;


