/*
Razormaw Fix

 Fix quest waypoints, smart scripts. 
 
 Updated 4-8-26
*/
UPDATE `creature_template_movement` SET `Ground` = 1,`Flight` = 0 WHERE `CreatureId` in (17592); -- 0 1
UPDATE `creature_template` SET `MovementType` = 0,`HoverHeight` = 0,`movementId` = 0 WHERE `entry` in (17592); -- 1 1 210

DELETE FROM `creature` WHERE `guid` IN (300017); -- NEW GUID
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300017,17592,0,0,530,0,0,1,1,0,-1404.6395,-12461.235,10.458,2.86,60,0,0,968,0,0,0,0,0,'',0,0,NULL); -- 131.99344

UPDATE `creature_template_addon` SET `bytes2` = 0,`visibilityDistanceType` = 4 WHERE `entry` in (17592); -- 0 3
-- UPDATE `creature_template` SET `scale` = 0.5 WHERE `entry` in (17592); -- Obsolete 4-8-26 use smart script
-- UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` in (181988); -- Not needed 11-29-24

-- Pyre Event that summons Razormaw
DELETE FROM event_scripts WHERE `id` IN (11087);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
-- (11087,0,10,17592,150000,0,-1213.0057,-12663.188,200.4278,2.86);
(11087,0,10,17592,3600000,0,-1201.412,-12447.674,93.839,2.86); -- 150000 set to one hour cause if it despawns from this timeout it won't fix the trigger gameobject flags

DELETE FROM waypoints WHERE `entry` IN (17592,175920); -- CONVERT TO WAYPOINT_DATA 4-8-26

DELETE FROM `waypoint_data` where `id` in (175920,175921);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(175920,1,-1404.6395,-12461.235,131.99344,NULL,20,0,1,0,0,100,0),
(175920,2,-1408.1542,-12491.379,133.96562,NULL,20,0,1,0,0,100,0),
(175920,3,-1411.6688,-12521.522,135.9378,NULL,20,0,1,0,0,100,0),
(175920,4,-1406.0328,-12538.004,143.13223,NULL,20,0,1,0,0,100,0),
(175920,5,-1389.0846,-12550.854,143.13223,NULL,20,0,1,0,0,100,0),
(175920,6,-1362.4558,-12562.675,143.13223,NULL,20,0,1,0,0,100,0),
(175920,7,-1324.6013,-12577.938,143.13223,NULL,20,0,1,0,0,100,0),
(175920,8,-1305.422,-12583.717,143.13223,NULL,20,0,1,0,0,100,0),
(175920,9,-1273.9863,-12597.341,143.13223,NULL,20,0,1,0,0,100,0),
(175920,10,-1247.7489,-12595.07,143.13223,NULL,20,0,1,0,0,100,0),
(175920,11,-1216.1177,-12594.667,143.13223,NULL,20,0,1,0,0,100,0),
(175920,12,-1187.1337,-12596.551,143.13223,NULL,20,0,1,0,0,100,0),
(175920,13,-1124.8295,-12598.966,127.60443,NULL,20,0,1,0,0,100,0),
(175920,14,-1083.8181,-12602.273,111.74337,NULL,20,0,1,0,0,100,0),
(175920,15,-1045.0756,-12583.285,111.74337,NULL,20,0,1,0,0,100,0),
(175920,16,-1025.5795,-12565.072,111.74337,NULL,20,0,1,0,0,100,0),
(175920,17,-1010.3714,-12532.208,111.74337,NULL,20,0,1,0,0,100,0),
(175920,18,-995.7454,-12501.456,111.74337,NULL,20,0,1,0,0,100,0),
(175920,19,-987.17017,-12475.469,111.74337,NULL,20,0,1,0,0,100,0),
(175920,20,-996.135,-12434.811,111.74337,NULL,20,0,1,0,0,100,0),
(175920,21,-992.6949,-12401.639,111.74337,NULL,20,0,1,0,0,100,0),
(175920,22,-1001.4993,-12371.352,111.74337,NULL,20,0,1,0,0,100,0),
(175920,23,-1022.7081,-12359.242,111.74337,NULL,20,0,1,0,0,100,0),
(175920,24,-1051.357,-12357.683,111.74337,NULL,20,0,1,0,0,100,0),
(175920,25,-1079.0315,-12364.688,111.74337,NULL,20,0,1,0,0,100,0),
(175920,26,-1099.9434,-12367.526,111.74337,NULL,20,0,1,0,0,100,0),
(175920,27,-1120.0221,-12361.9,111.74337,NULL,20,0,1,0,0,100,0),
(175920,28,-1167.294,-12326.377,121.99343,NULL,20,0,1,0,0,100,0),
(175920,29,-1213.7379,-12328.654,121.88229,NULL,20,0,1,0,0,100,0),
(175920,30,-1250.7832,-12339.349,124.0212,NULL,20,0,1,0,0,100,0),
(175920,31,-1318.8677,-12366.525,124.0212,NULL,20,0,1,0,0,100,0),
(175920,32,-1350.3359,-12385.573,124.0212,NULL,20,0,1,0,0,100,0),
(175920,33,-1372.9155,-12415.274,124.0212,NULL,20,0,1,0,0,100,0), 
(175920,34,-1392.7555,-12446.274,124.0212,NULL,20,0,1,0,0,100,0), -- -1382.9656 -12452.364 124.0212

(175921,1,-1211.2783,-12439.499,94.77796,NULL,15,0,1,0,0,100,0),
(175921,2,-1213.0057,-12663.188,200.4278,NULL,10,0,1,0,0,100,0), -- -1213.0057 -12663.188 200.4278
(175921,3,-1204.4849,-12626.661,200.4278,NULL,10,0,1,0,0,100,0),
(175921,4,-1204.9056,-12599.652,188.78893,NULL,10,0,1,0,0,100,0),
(175921,5,-1206.8455,-12579.837,173.28925,NULL,10,0,1,0,0,100,0),
(175921,6,-1203.1693,-12555.486,160.95598,NULL,10,0,1,0,0,100,0),
(175921,7,-1201.2842,-12529.245,134.31667,NULL,10,0,1,0,0,100,0),
(175921,8,-1204.1781,-12483.842,115.03905,NULL,10,0,1,0,0,100,0), -- -1204.1781 -12483.842 115.03905
(175921,9,-1203.831,-12473.369,108.69323,NULL,10,0,1,0,0,100,0), -- -1204.3497 -12465.613 101.92779
(175921,10,-1201.412,-12447.674,93.839,NULL,10,0,1,0,0,100,0); -- -1201.412 -12447.674 93.839


/*

Once Reached, he'll
Emote ID: 293 (OneShotLand)
Wait 1600ms
Emote ID: 15 (OneShotRoar)
SoundId: 3525 (3525)
Wait 3200ms
Enable Gravity
Remove IMMUNE_TO_PC Flag
Attack Player
*/

DELETE FROM smart_scripts WHERE `entryorguid` IN (17592,-300017) AND `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (1759200,1759201,1759202) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300017,0,0,1,11,0,100,512,0,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Respawn - Set Visibility Off'),
(-300017,0,1,0,61,0,100,512,0,0,0,0,0,0,80,1759201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Respawn (Linked) - Run Script'),
(-300017,0,2,0,38,0,100,512,1,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Data Set 1 0 - Set Visibility Off'),
(-300017,0,3,0,38,0,100,512,1,1,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Data Set 1 1 - Set Visibility On'),
(-300017,0,4,0,108,0,100,512,34,175920,0,0,0,0,80,1759201,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Waypoint 34 Reached - Run Script'),
(-300017,0,5,0,25,0,100,512,0,0,0,0,0,0,80,1759201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Reset - Run Script'),
(-300017,0,6,0,37,0,100,257,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Initialize - Set Active'),
(-300017,0,7,0,1,0,100,512,15000,15000,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - OOC - Set Visibility On'),

(17592,0,0,0,0,0,100,0,1000,3000,3000,5000,0,0,11,31279,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Razormaw - In Combat - Cast \'Swipe\''),
(17592,0,1,0,0,0,100,0,8000,12000,6000,8000,0,0,11,8873,64,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - In Combat - Cast \'Flame Breath\''),
(17592,0,2,0,2,0,50,0,0,50,12000,12000,0,0,11,14100,64,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - Between 0-50% Health - Cast \'Terrifying Roar\' (No Repeat)'),
(17592,0,3,4,63,0,100,512,0,0,0,0,0,0,80,1759202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Summon - Run Script'),
(17592,0,4,0,61,0,100,512,0,0,0,0,0,0,105,16,0,0,0,0,0,13,181988,0,500,0,0,0,0,0,'Razormaw - On Summon (Linked) - Set Pyre Gameobject Flags Not Selectable'),
(17592,0,5,0,108,0,100,512,2,175921,0,0,0,0,45,1,0,0,0,0,0,10,300017,0,0,0,0,0,0,0,'Razormaw - On Waypoint 2 Reached - Set Data on Razormaw(Creature)'),
(17592,0,6,0,108,0,100,0,10,175921,0,0,0,0,80,1759200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Waypoint 10 Reached - Run Script'),
(17592,0,7,0,37,0,100,257,0,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Initialize - Set Visibility Off'),
(17592,0,8,9,1,0,100,512,300000,300000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - OOC - Force Despawn'),
(17592,0,9,10,61,0,100,512,0,0,0,0,0,0,106,16,0,0,0,0,0,13,181988,0,500,0,0,0,0,0,'Razormaw - OOC (Linked) - Remove Pyre Gameobject Flags Not Selectable'),
(17592,0,10,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300017,0,0,0,0,0,0,0,'Razormaw - OOC (Linked) - Set Data on Razormaw(Creature)'),
(17592,0,11,10,6,0,100,512,0,0,0,0,0,0,106,16,0,0,0,0,0,13,181988,0,300,0,0,0,0,0,'Razormaw - On Just Died - Remove Pyre Gameobject Flags Not Selectable'),
(17592,0,12,0,103,0,100,512,1,181988,1,13,100,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Near Unit - Set Ground Tier Animation'),

(1759200,9,0,0,0,0,100,512,100,100,0,0,0,0,19,16778240,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Remove Unit Flags'),
(1759200,9,1,0,0,0,100,512,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Hover Off'),
(1759200,9,2,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Fly Off'),
(1759200,9,3,0,0,0,100,512,0,0,0,0,0,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Ground Tier Animation'),
(1759200,9,4,0,0,0,100,512,0,0,0,0,0,0,5,293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Play Emote(Land)'), -- 5000
(1759200,9,5,0,0,0,100,512,1600,1600,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Play Emote(Roar)'),
(1759200,9,6,0,0,0,100,512,0,0,0,0,0,0,4,3525,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Play Sound(Roar)'), -- The para_3 is not how far away it is heard (distance).  It seems to be volume level for distance away. should be 1
(1759200,9,7,0,0,0,100,512,3200,3200,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Reactstate Aggressive'),
(1759200,9,8,0,0,0,100,512,0,0,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Remove Flag Immune To Players'),
(1759200,9,9,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Stop Waypoint'),
(1759200,9,10,0,0,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Home Position'),
(1759200,9,11,0,0,0,100,512,100,100,0,0,0,0,49,0,0,0,0,0,0,21,60,0,0,0,0,0,0,0,'Razormaw - On Script - Attack Closest Player'),

(1759201,9,0,0,0,0,100,512,0,0,0,0,0,0,227,150,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Scale 150'),
(1759201,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Fly On'),
(1759201,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Hover On'),
(1759201,9,3,0,0,0,100,512,0,0,0,0,0,0,18,16778240,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Unit Flags'),
(1759201,9,4,0,0,0,100,512,0,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Respawn - Set Flag Immune To Players'),
(1759201,9,5,0,0,0,100,512,100,100,0,0,0,0,232,175920,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Start Waypoint'),

(1759202,9,0,0,0,0,100,512,0,0,0,0,0,0,227,150,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Scale 150'),
(1759202,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Fly On'),
(1759202,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Hover On'),
(1759202,9,3,0,0,0,100,512,0,0,0,0,0,0,18,16778240,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Unit Flags'),
(1759202,9,4,0,0,0,100,512,0,0,0,0,0,0,90,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Stand State'),
(1759202,9,5,0,0,0,100,512,0,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Respawn - Set Flag Immune To Players'),
(1759202,9,6,0,0,0,100,512,100,100,0,0,0,0,232,175921,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Start Waypoint'),
(1759202,9,7,0,0,0,100,512,8000,8000,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Flying Tier Animation'),
(1759202,9,8,0,0,0,100,512,12000,12000,0,0,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razormaw - On Script - Set Visibility On');