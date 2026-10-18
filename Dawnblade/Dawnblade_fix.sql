/*
Fix Dawnblade Village 4-2-26

Shattered Sun Marksman
 Wrong shoot spell

Fix Dawnblade soldiers talking with each other.  

Dawnblade Marksman
 waypoints
 New Guids: 300109
 
Dawnblade Blood Knight
 Fix texts, mounts, waypoints

Dawnblade Summoner
 Fix movements and bloodcrystal beams and RP
 New Guids: 300106,300107,300108

 New Gameobject GUIDS: 300000,300001

Netherstorm Crystal Target
New GUIDs: 300105

*/
-- Shattered Sun Marksman
-- UPDATE `smart_scripts` SET `action_param1` = 42580 WHERE `entryorguid` IN (-65694,-65695,-65696,-65697,-65698,-65699,-65700,-65702) and `source_type` = '0' and `id` = '0'; -- Wrong shoot 42580 - 45223 - 38858
DELETE FROM `smart_scripts` WHERE `entryorguid` = 24938 AND `source_type` = 0 AND `id` IN (8,9,10,11);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(24938,0,8,0,25,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Reset - Run Random Script'),
(24938,0,9,0,25,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Reset - Run Random Script'),
(24938,0,10,0,25,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Reset - Run Random Script'),
(24938,0,11,0,25,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Reset - Run Random Script');


-- Shattered Sun Warrior
DELETE FROM `smart_scripts` WHERE `entryorguid` = 25115 AND `source_type` = 0 AND `id` IN (4,5,6,7);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25115,0,4,0,25,0,100,0,0,0,0,0,0,0,88,2511510,2511513,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Warrior - On Reset - Run Random Script'),
(25115,0,5,0,25,0,100,0,0,0,0,0,0,0,88,2511520,2511523,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Warrior - On Reset - Run Random Script'),
(25115,0,6,0,25,0,100,0,0,0,0,0,0,0,88,2511530,2511533,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Warrior - On Reset - Run Random Script'),
(25115,0,7,0,25,0,100,0,0,0,0,0,0,0,88,2511540,2511543,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Warrior - On Reset - Run Random Script');


-- Dawnblade Marksman
DELETE FROM `creature` WHERE `guid` IN (300109) AND `id1` = 24979;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300109,24979,0,0,530,0,0,1,1,1,12740.722,-6677.0894,0.31052226,2.8724,700,0,0,5589,3155,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 24979 AND `source_type` = 0 AND `id` IN (3,4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2497900) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(24979,0,3,0,108,0,100,0,1,942590,0,0,0,0,80,2497900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Waypoint 1 Reached - Run Script"),
(24979,0,4,0,108,0,100,0,3,942590,0,0,0,0,80,2497900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Waypoint 3 Reached - Run Script"),
(24979,0,5,0,4,0,100,0,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Aggro - Remove Flag Standstate Kneel"),

(2497900,9,0,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Marksman - On Script - Set Flag Standstate Kneel'),
(2497900,9,1,0,0,0,100,0,10000,10000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Marksman - On Script - Remove Flag Standstate Kneel');

DELETE FROM `waypoint_data` where `id` in (942590);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
-- (942590,1,12732.14,-6659.7783,1.1151735,NULL,0,0,0,0,0,100,0),
(942590,1,12746.162,-6667.1445,0.18853676,5.7881,0,13000,0,0,0,100,0),
-- (942590,3,12732.14,-6659.7783,1.1151735,NULL,0,0,0,0,0,100,0),
(942590,2,12692.8,-6655.74,3.91284,NULL,0,0,0,0,0,100,0),
(942590,3,12688.8125,-6655.8984,4.2059484,3.2282,0,13000,0,0,0,100,0),
(942590,4,12692.8,-6655.74,3.91284,NULL,0,0,0,0,0,100,0);


-- Dawnblade Blood Knight
UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (24976); -- 0

UPDATE `creature` SET `position_x`=12752.052,`position_y`=-6650.6606,`position_z`=-0.7904734 WHERE `guid`=94312; -- Will waypoint inside bloodcrystal building
UPDATE `creature` SET `position_x`=12770.62,`position_y`=-6674.686,`position_z`=2.2853143 WHERE `guid`=94313;
UPDATE `creature` SET `position_x`=12795.281,`position_y`=-6722.8354,`position_z`=2.2852466 WHERE `guid`=94316;
UPDATE `creature` SET `position_x`=12780.386,`position_y`=-6728.971,`position_z`=2.2856925 WHERE `guid`=94317;

UPDATE `creature_addon` SET `mount` = 19085 WHERE `guid` in (94309,94325,94400); -- 0 Dawnstar Charger

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (94312,94321); -- 0

DELETE FROM `creature_addon` where `guid` in (94312,94321);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(94312,943120,0,0,1,0,0,NULL),
(94321,943210,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24976) AND `source_type` = 0 AND `id` IN (4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-94302,-94303,-94304,-94305,-94306,-94307,-94308,-94313) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2497600,2497601,2497602,2497603) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-94302,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Cast \'Holy Light\''),

(-94303,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Cast \'Holy Light\''),

(-94304,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Cast \'Holy Light\''),

(-94305,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Cast \'Holy Light\''),

(-94306,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Say Line 0'),

(-94307,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Cast \'Holy Light\''),

(-94308,0,1000,0,1,0,100,0,5000,40000,45000,80000,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Cast \'Holy Light\''),

(-94313,0,0,0,1,0,100,0,120000,190000,120000,190000,0,0,87,2497600,2497601,2497602,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - OOC - Run Random Script'),

(24976,0,4,0,108,0,100,0,2,943250,0,0,0,0,80,2497603,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Waypoint 2 Reached - Play Emote'),
(24976,0,5,0,108,0,100,0,2,943090,0,0,0,0,80,2497603,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Waypoint 2 Reached - Play Emote'),

(2497600,9,0,0,0,0,100,0,100,100,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 2'),
(2497600,9,1,0,0,0,100,0,11000,11000,0,0,0,0,1,0,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 0 \'Dawnblade Summoner\''),
(2497600,9,2,0,0,0,100,0,12000,12000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 3'),
(2497600,9,3,0,0,0,100,0,11000,11000,0,0,0,0,1,1,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 1 \'Dawnblade Summoner\''),
(2497600,9,4,0,0,0,100,0,9000,9000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 4'),
(2497600,9,5,0,0,0,100,0,9000,9000,0,0,0,0,1,2,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 2 \'Dawnblade Summoner\''),
(2497600,9,6,0,0,0,100,0,12000,12000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 5'),

(2497601,9,0,0,0,0,100,0,100,100,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 6'),
(2497601,9,1,0,0,0,100,0,9000,9000,0,0,0,0,1,3,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 3 \'Dawnblade Summoner\''),
(2497601,9,2,0,0,0,100,0,6000,6000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 7'),
(2497601,9,3,0,0,0,100,0,7000,7000,0,0,0,0,1,4,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 4 \'Dawnblade Summoner\''),
(2497601,9,4,0,0,0,100,0,8000,8000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 8'),
(2497601,9,5,0,0,0,100,0,11000,11000,0,0,0,0,1,5,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 5 \'Dawnblade Summoner\''),
(2497601,9,6,0,0,0,100,0,15000,15000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 9'),
(2497601,9,7,0,0,0,100,0,11000,11000,0,0,0,0,1,6,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 6 \'Dawnblade Summoner\''),
(2497601,9,8,0,0,0,100,0,11000,11000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 10'),
(2497601,9,9,0,0,0,100,0,17000,17000,0,0,0,0,1,7,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 7 \'Dawnblade Summoner\''),

(2497602,9,0,0,0,0,100,0,100,100,0,0,0,0,1,8,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 8 \'Dawnblade Summoner\''),
(2497602,9,1,0,0,0,100,0,9000,9000,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 11'),
(2497602,9,2,0,0,0,100,0,12000,12000,0,0,0,0,1,9,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 9 \'Dawnblade Summoner\''),
(2497602,9,3,0,0,0,100,0,18000,18000,0,0,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 12'),
(2497602,9,4,0,0,0,100,0,10000,10000,0,0,0,0,1,10,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 10 \'Dawnblade Summoner\''),
(2497602,9,5,0,0,0,100,0,16000,16000,0,0,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 13'),
(2497602,9,6,0,0,0,100,0,8000,8000,0,0,0,0,1,11,0,0,0,0,0,10,300106,24978,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 11 \'Dawnblade Summoner\''),
(2497602,9,7,0,0,0,100,0,6000,6000,0,0,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 14'),

(2497603,9,0,0,0,0,60,0,100,100,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Say Line 1'),
(2497603,9,1,0,0,0,100,0,600,600,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dawnblade Blood Knight - On Script - Play Emote');

DELETE FROM `waypoint_scripts` where `id` IN (447,449);

DELETE FROM `waypoint_data` where `id` in (943120,943210,943250,943090,944000);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(943090,1,12703.34,-6632.6616,3.4637327,0.1114,14.0,25000,0,1,0,100,0), -- starting point 12703.34 -6632.6616 3.4637327
(943090,2,12704.62,-6632.6406,3.3035722,NULL,14.0,0,1,1,0,100,0), -- Start charge -- 447
(943090,3,12737.7,-6629.93,2.2892,NULL,0,0,0,1,0,100,0), -- turn past target
(943090,4,12737.2,-6632.37,2.10811,NULL,0,0,0,1,0,100,0), -- turn back to path back
(943090,5,12734.037,-6632.845,2.2245874,NULL,0,0,0,1,0,100,0), -- coming back from target

(943250,1,12703.419,-6647.726,3.4047945,0.0054,14.0,30000,0,1,0,100,0), -- 12703.419 -6647.726 3.4047945
(943250,2,12704.013,-6647.7124,3.3350685,NULL,14.0,0,1,1,0,100,0), -- Start charge -- 449
(943250,3,12735.9,-6647.03,0.809907,NULL,0,0,0,1,0,100,0),
(943250,4,12735.6,-6643.55,1.20219,NULL,0,0,0,1,0,100,0),
(943250,5,12729.978,-6644.2085,1.3768201,NULL,0,0,0,1,0,100,0),

(943120,1,12754.422,-6655.2534,-0.78933495,NULL,0,0,0,0,0,100,0),
(943120,2,12757.6455,-6662.1704,2.289146,NULL,0,0,0,0,0,100,0),
(943120,3,12759.124,-6665.345,2.2895072,NULL,0,0,0,0,0,100,0),
(943120,4,12771.85,-6692.1274,2.2530797,NULL,0,0,0,0,0,100,0),
(943120,5,12769.475,-6698.981,2.2805254,NULL,0,0,0,0,0,100,0),
(943120,6,12770.894,-6703.751,2.287115,NULL,0,0,0,0,0,100,0),
(943120,7,12774.242,-6709.572,2.2788205,NULL,0,0,0,0,0,100,0),
(943120,8,12780.493,-6710.806,2.2610679,NULL,0,0,0,0,0,100,0),
(943120,9,12793.404,-6738.4307,2.2890935,NULL,0,0,0,0,0,100,0),
(943120,10,12794.505,-6740.7524,2.2890935,NULL,0,0,0,0,0,100,0),
(943120,11,12797.172,-6746.2114,0.4933023,NULL,0,0,0,0,0,100,0),
(943120,12,12799.495,-6750.9194,0.34026685,5.1707,0,10000,0,0,0,100,0),
(943120,13,12797.172,-6746.2114,0.4933023,NULL,0,0,0,0,0,100,0),
(943120,14,12794.505,-6740.7524,2.2890935,NULL,0,0,0,0,0,100,0),
(943120,15,12793.404,-6738.4307,2.2890935,NULL,0,0,0,0,0,100,0),
(943120,16,12780.493,-6710.806,2.2610679,NULL,0,0,0,0,0,100,0),
(943120,17,12774.242,-6709.572,2.2788205,NULL,0,0,0,0,0,100,0),
(943120,18,12770.894,-6703.751,2.287115,NULL,0,0,0,0,0,100,0),
(943120,19,12769.475,-6698.981,2.2805254,NULL,0,0,0,0,0,100,0),
(943120,20,12771.85,-6692.1274,2.2530797 ,NULL,0,0,0,0,0,100,0),
(943120,21,12759.124,-6665.345,2.2895072,NULL,0,0,0,0,0,100,0),
(943120,22,12757.6455,-6662.1704,2.289146,NULL,0,0,0,0,0,100,0),
(943120,23,12754.422,-6655.2534,-0.78933495,NULL,0,0,0,0,0,100,0),
(943120,24,12752.052,-6650.6606,-0.7904734,2.0244,0,10000,0,0,0,100,0),

(943210,1,12716.836,-6769.2754,5.152379,NULL,0,0,1,0,0,100,0),
(943210,2,12704.877,-6767.2065,4.556292,NULL,0,0,1,0,0,100,0),
(943210,3,12692.748,-6772.682,4.6368914,NULL,0,0,1,0,0,100,0),
(943210,4,12685.135,-6780.743,4.6012416,NULL,0,0,1,0,0,100,0),
(943210,5,12682.023,-6789.674,4.6012416,NULL,0,0,1,0,0,100,0),
(943210,6,12682.022,-6795.3994,4.6012416,NULL,0,0,1,0,0,100,0),
(943210,7,12687.565,-6808.771,4.6014657,NULL,0,0,1,0,0,100,0),
(943210,8,12694.59,-6817.8066,4.838074,NULL,0,0,1,0,0,100,0),
(943210,9,12702.964,-6821.379,5.0206447 ,NULL,0,0,1,0,0,100,0),
(943210,10,12715.809,-6818.383,5.2997103,NULL,0,0,1,0,0,100,0),
(943210,11,12729.47,-6808.7983,5.42245,NULL,0,0,1,0,0,100,0),
(943210,12,12735.21,-6797.301,5.42245,NULL,0,0,1,0,0,100,0),
(943210,13,12733.553,-6785.743,5.42245,NULL,0,0,1,0,0,100,0),
(943210,14,12725.955,-6774.3887,5.42245,NULL,0,0,1,0,0,100,0),

(944000,1,12744.7,-6742.67,0.374358,2.0282,0,20000,0,0,0,100,0),
(944000,2,12717.7,-6671.36,-0.073843,NULL,0,0,0,0,0,100,0),
(944000,3,12687.5,-6667.27,3.88784,NULL,0,0,0,0,0,100,0),
(944000,4,12663.5,-6669.88,4.54454,NULL,0,0,0,0,0,100,0),
(944000,5,12651.9,-6675.38,4.57013,NULL,0,0,0,0,0,100,0),
(944000,6,12655.5,-6727.74,4.57296,NULL,0,0,0,0,0,100,0),
(944000,7,12678.6,-6776.74,4.59928,NULL,0,0,0,0,0,100,0), -- fix 
(944000,8,12682.741,-6796.529,4.6019306,NULL,0,0,0,0,0,100,0),
(944000,9,12687.979,-6810.8916,4.602767,NULL,0,0,0,0,0,100,0),
(944000,10,12692.08,-6815.9834,4.687196,NULL,0,5000,0,0,0,100,0),
(944000,11,12702.785,-6820.935,5.030097,NULL,0,0,0,0,0,100,0),
(944000,12,12714.47,-6818.658,5.224433,NULL,0,0,0,0,0,100,0),
(944000,13,12729.775,-6808.5864,5.4221106,NULL,0,0,0,0,0,100,0),
(944000,14,12744.8955,-6787.2427,5.4221106,NULL,0,0,0,0,0,100,0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (24976);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(24976,0,0,'Train harder! We are all that remains of the loyal defenders of Kael\'thas!',12,0,100,0,0,0,24067,0,'Dawnblade Blood Knight'),
(24976,0,1,'Put your shoulders into it! We must defend the Sunwell with our lives if needed!',12,0,100,0,0,0,24068,0,'Dawnblade Blood Knight'),
(24976,0,2,'Kael\'thas will not tolerate any further failures!',12,0,100,0,0,0,24069,0,'Dawnblade Blood Knight'),
(24976,0,3,'The Dawnblade will defend this land for all of the Sin\'dorei. There is no turning back!',12,0,100,0,0,0,24071,0,'Dawnblade Blood Knight'),
(24976,0,4,'This is no vacation - our hearts, our souls, the final escape from the addictions that bind us lie here on Quel\'Danas. ',12,0,100,0,0,0,24072,0,'Dawnblade Blood Knight'),
(24976,0,5,'Do you want to end up like one of the Wretched? No?! Then put your hearts into it this time!',12,0,100,0,0,0,24073,0,'Dawnblade Blood Knight'),
(24976,0,6,'Again!',12,0,100,0,0,0,24070,0,'Dawnblade Blood Knight'),

(24976,1,0,'Charge!',12,0,100,0,0,0,24425,0,'Dawnblade Blood Knight'),

(24976,2,0,'I utterly cannot stand the presence of these demons!',12,0,100,1,0,0,24060,0,'Dawnblade Blood Knight'),
(24976,3,0,'... not to mention that those blasted abyssals patrol all over the flowerbeds.',12,0,100,0,0,0,24062,0,'Dawnblade Blood Knight'),
(24976,4,0,'Lord Kael\'thas insisted upon it.',12,0,100,1,0,0,24064,0,'Dawnblade Blood Knight'),
(24976,5,0,'%s nods in agreement.',16,0,100,273,0,0,24066,0,'Dawnblade Blood Knight'),

(24976,6,0,'So I heard your brother joined the Scryers?',12,0,100,1,0,0,24405,0,'Dawnblade Blood Knight'),
(24976,7,0,'Wow, how much do they pay?',12,0,100,0,0,0,24408,0,'Dawnblade Blood Knight'),
(24976,8,0,'What? Why would he do a fool thing like that?',12,0,100,1,0,0,24410,0,'Dawnblade Blood Knight'),
(24976,9,0,'Sounds like a bunch of rotten Hawkstrider eggs to me.',12,0,100,0,0,0,24412,0,'Dawnblade Blood Knight'),
(24976,10,0,'Yeah. I hope to retire next month to a little tract of land I bought off the coast of Azeroth.',12,0,100,0,0,0,24414,0,'Dawnblade Blood Knight'),

(24976,11,0,'Yes. He hasn\'t been the same since the attack on Tempest Keep.',12,0,100,1,0,0,24050,0,'Dawnblade Blood Knight'),
(24976,12,0,'That look in his eyes now... it scares me.',12,0,100,1,0,0,24052,0,'Dawnblade Blood Knight'),
(24976,13,0,'Prepares? Prepares for what?',12,0,100,1,0,0,24054,0,'Dawnblade Blood Knight'),
(24976,14,0,'%s gasps.',16,0,100,5,0,0,24056,0,'Dawnblade Blood Knight');


-- Dawnblade Summoner
UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (24978); -- 0

UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (94299,94291,94290,94289,94292,94293,94294,94265,94269,94268,94276,94271,94270,94264); -- 1 5
UPDATE `creature` SET `position_x`=12657.669,`position_y`=-6770.2827,`position_z`=4.7408376 WHERE `guid`=94270; -- Wrong location

DELETE FROM `creature` WHERE `guid` IN (300106,300107,300108) AND `id1` = 24978;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300106,24978,0,0,530,0,0,1,1,1,12757.999,-6680.612,2.285851,0.498508,600,0,0,5589,3155,0,0,0,0,'',0,0,NULL),
(300107,24978,0,0,530,0,0,1,1,1,12813.227,-6657.748,-0.07258267,0.498508,600,5,0,5589,3155,1,0,0,0,'',0,0,NULL),
(300108,24978,0,0,530,0,0,1,1,1,12620.79,-6667.68,5.320669,0.498508,600,5,0,5589,3155,1,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24978) AND `source_type` = 0 AND `id` IN (5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-94272,-94273,-94274,-94275) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-94272,0,1000,0,1,0,100,0,2000,2000,0,0,0,0,11,28729,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - OOC - Cast Channel Summon"),
(-94272,0,1001,0,4,0,100,0,0,0,0,0,0,0,92,0,28729,1,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Aggro - Interrupt Channel Summon"),

(-94273,0,1000,0,1,0,100,0,2000,2000,0,0,0,0,11,28729,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - OOC - Cast Channel Summon"),
(-94273,0,1001,0,4,0,100,0,0,0,0,0,0,0,92,0,28729,1,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Aggro - Interrupt Channel Summon"),

(-94274,0,1000,0,1,0,100,0,2000,2000,0,0,0,0,11,28729,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - OOC - Cast Channel Summon"),
(-94274,0,1001,0,4,0,100,0,0,0,0,0,0,0,92,0,28729,1,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Aggro - Interrupt Channel Summon"),

(-94275,0,1000,0,1,0,100,0,2000,2000,0,0,0,0,11,28729,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - OOC - Cast Channel Summon"),
(-94275,0,1001,0,4,0,100,0,0,0,0,0,0,0,92,0,28729,1,0,0,0,1,0,0,0,0,0,0,0,0,"Dawnblade Summoner - On Aggro - Interrupt Channel Summon"),

(24978,0,5,0,1,0,100,0,5000,5000,5000,5000,0,0,11,34397,0,0,0,0,0,19,19421,20,0,0,0,0,0,0,"Dawnblade Summoner - OOC - Cast Red Beam");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (6) AND `SourceEntry` IN (24978) AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,6,24978,0,0,29,1,19421,11,0,0,0,0,'','Group 0: Execute SAI (Action 5) if creature \'Netherstorm Crystal Target\'is near');

DELETE FROM `creature_text` WHERE `CreatureID` IN (24978);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(24978,0,0,'Yes! When was the last time you saw a doomguard take a bath?',12,0,100,1,0,0,24061,0,'Dawnblade Summoner'),
(24978,1,0,'Why do we need them anyways?',12,0,100,0,0,0,24063,0,'Dawnblade Summoner'),
(24978,2,0,'Well, I hope once they\'re done he\'ll send them right back through that portal...',12,0,100,1,0,0,24065,0,'Dawnblade Summoner'),

(24978,3,0,'Yeah, he did.',12,0,100,1,0,0,24406,0,'Dawnblade Summoner'),
(24978,4,0,'Pay? Well, they don\'t pay anything at all.',12,0,100,0,0,0,24409,0,'Dawnblade Summoner'),
(24978,5,0,'I don\'t know, survival of his race, visions of the future, valiant deeds, blah, blah, blah.',12,0,100,1,0,0,24411,0,'Dawnblade Summoner'),
(24978,6,0,'Yeah, I could never do that. The pay\'s too good here.',12,0,100,0,0,0,24413,0,'Dawnblade Summoner'),
(24978,7,0,'Nice. Now that\'s the life...',12,0,100,0,0,0,24415,0,'Dawnblade Summoner'),

(24978,8,0,'... did you see how Kael\'thas looked?',12,0,100,1,0,0,24049,0,'Dawnblade Summoner'),
(24978,9,0,'He was beaten and left for dead. If Priestess Delrissa hadn\'t arrived when she did, who knows what might have happened!',12,0,100,1,0,0,24051,0,'Dawnblade Summoner'),
(24978,10,0,'Yes, but we will follow him to the end. Its our duty to hold this sanctuary while he prepares.',12,0,100,1,0,0,24053,0,'Dawnblade Summoner'),
(24978,11,0,'His... return.',12,0,100,1,0,0,24055,0,'Dawnblade Summoner');


-- Dawnstar Charger
UPDATE `creature_template` SET `faction` = 634 WHERE `entry` in (25049); -- 14


-- Netherstorm Crystal Target
DELETE FROM `creature` WHERE `guid` IN (300105);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300105,19421,0,0,530,0,0,1,1,0,12776.6,-6701.81,7.23255,2.02081,300,0,0,42,0,0,0,0,0,'',0,0,NULL); -- Bloodcrystal


-- Circle
-- It is using creature purple Ground Rune 18562 in both places but they don't show at the same time.  -- TODO figure out what the spell is that creates the soul funnel.  It will target the 18562 creature.

DELETE FROM `gameobject` WHERE `guid` IN (300000,300001) AND `id` = 187880;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300000,187880,530,0,0,1,1,12599.2,-6669.15,5.41298,0.890118,0,0,0.43048,0.90260,180,0,1,'',0,''),
(300001,187880,530,0,0,1,1,12619.4,-6637.9,5.52388,3.90954,0,0,0.92723,-0.37449,180,0,1,'',0,'');


-- Unleashed Hellion
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (93981,93980,93984,93985,93986,93987); -- 1 5
UPDATE `creature` SET `position_x`=12538.942,`position_y`=-6948.8647,`position_z`=16.632717 WHERE `guid`=93980;


-- Irespeaker
UPDATE `creature` SET `wander_distance` = 5, `MovementType` = 1 WHERE `guid` in (93975,93974); -- 1 5

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24999) AND `source_type` = 0 AND `id` = 4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(24999,0,4,0,1,0,100,0,4000,4000,0,0,0,0,11,45023,0,0,0,0,0,19,25953,11,0,0,0,0,0,0,"Irespeaker - OOC - Cast Felbood Channel");


-- Abyssal Flamewalker
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (93968); -- 0

DELETE FROM `creature_addon` where `guid` in (93968);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(93968,939680,0,0,1,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300110) AND `id1` = 25001;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300110,25001,0,0,530,0,0,1,1,0,12567.849,-6973.682,16.65901,6.0138,500,4,0,6986,0,1,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25001) AND `source_type` = 0 AND `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25001,0,1,0,11,0,100,0,0,0,0,0,0,0,3,0,22810,0,0,0,0,1,0,0,0,0,0,0,0,0,'Abyssal Flamewalker - On Respawn - Morph To Model 22810');

DELETE FROM `waypoint_data` where `id` in (939680);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(939680,1,12631.522,-6873.537,4.986024,NULL,0,1000,0,0,0,100,0),
(939680,2,12623.004,-6866.637,5.1023073,NULL,0,0,0,0,0,100,0),
(939680,3,12607.47,-6861.925,5.050512,NULL,0,0,0,0,0,100,0),
(939680,4,12591.989,-6860.645,5.148038,NULL,0,0,0,0,0,100,0),
(939680,5,12584.356,-6865.1553,5.290353,NULL,0,0,0,0,0,100,0),
(939680,6,12591.989,-6860.645,5.148038,NULL,0,0,0,0,0,100,0),
(939680,7,12607.47,-6861.925,5.050512,NULL,0,0,0,0,0,100,0),
(939680,8,12623.004,-6866.637,5.1023073,NULL,0,0,0,0,0,100,0),
(939680,9,12631.522,-6873.537,4.986024,NULL,0,0,0,0,0,100,0),
(939680,10,12635.1,-6888.74,4.94535,NULL,0,1000,0,0,0,100,0);


-- Emissary of Hate
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25003) AND `source_type` = 0 AND `id` IN (3,4,5,6);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25003,0,3,0,1,0,100,0,2000,2000,25000,60000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Emissary of Hate - OOC - Say Line 0"),
(25003,0,4,0,54,0,100,0,0,0,0,0,0,0,53,1,25003,1,0,0,0,1,0,0,0,0,0,0,0,0,"Emissary of Hate - On Just Summoned - Start Waypoint"),
(25003,0,5,0,54,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Emissary of Hate - On Just Summoned - Set React State"),
(25003,0,6,0,40,0,100,0,1,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Emissary of Hate - On Waypoint 1 Reached - Pause waypoint");

DELETE FROM `waypoints` WHERE `entry` IN (25003);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(25003,1,12611.817,-6916.169,4.6011515,0,0,'Emissary of Hate'),
(25003,2,12641.002,-6915.8433,4.608925,0,0,'Emissary of Hate'),
(25003,3,12588.811,-6916.0835,4.601315,0,0,'Emissary of Hate');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25003);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25003,0,0,'Kil\'jaeden\'s patience wears thin!  Destroy the naaru\'s lackeys once and for all!',12,0,100,0,0,0,24074,0,'Emissary of Hate'),
(25003,0,1,'Return to your posts!  The battle is not yet over!',12,0,100,0,0,0,24077,0,'Emissary of Hate'),
(25003,0,2,'You fear death?  Far worse awaits you, should you fail!  Slay the mortals!',12,0,100,0,0,0,24076,0,'Emissary of Hate');


-- Fel Portal Alarm 
UPDATE `creature_template_addon` SET `auras` = 46907 WHERE `entry` in (23310); -- make it so the portal actually does appear.  It used a smart script but it didn't work  