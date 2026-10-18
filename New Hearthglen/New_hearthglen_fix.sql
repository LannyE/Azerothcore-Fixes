-- New Hearthglen
-- New GUIDS
-- Onslaught Raven Priest: 300046,300047,300048,300049,300071,300072
-- Onslaught Footman: 300050,300051,300052,300053,300054,300055,300056,300057,300058,300059,300060,300061,300062,300063,300064,300065,300066,300067,300068,300069,300070
-- Onslaught Workman: 300073


-- Onslaught Raven Priest
DELETE FROM `creature` WHERE `guid` IN (300046,300047,300048,300049,300071,300072);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300046,27202,0,0,571,0,0,1,1,1,2751.572,-272.70926,132.52605,1.785,300,0,0,7432,7332,0,0,0,0,'',0,0,NULL), -- Outside church and talking to footman who patrols
(300047,27202,0,0,571,0,0,1,1,1,2891.1504,-345.61026,112.46166,1.558,300,0,0,7432,7332,2,0,0,0,'',0,0,NULL), -- Waypoint outside stronghold
(300048,27202,0,0,571,0,0,1,1,1,2717.8608,-248.6156,142.76662,3.7596,300,0,0,7432,7332,0,0,0,0,'',0,0,NULL), -- inside small church
(300049,27202,0,0,571,0,0,1,1,1,2792.7866,-458.41043,118.2263,2.85,300,0,0,7432,7332,0,0,0,0,'',0,0,NULL), -- outside church by cages
(300071,27202,0,0,571,0,0,1,1,1,2671.6504,-353.23267,141.217,3.493,300,0,0,7432,7332,0,0,0,0,'',0,0,NULL), -- in cathedral kneeling
(300072,27202,0,0,571,0,0,1,1,1,2673.3335,-363.366,141.21706,2.864,300,0,0,7432,7332,0,0,0,0,'',0,0,NULL); -- in cathedral kneeling


DELETE FROM `creature_addon` where `guid` IN (300046,300047,300048,300049,300071,300072);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(300046,0,0,0,1,0,0,48154),
(300047,3000470,0,0,1,0,0,48154),
(300048,0,0,0,1,0,0,48154),
(300049,0,0,0,1,0,0,48154),
(300071,0,0,8,1,0,0,48154),
(300072,0,0,8,1,0,0,48154);

DELETE FROM `waypoint_data` WHERE `id` IN (3000470);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(3000470,1,2901.2986,-353.44376,112.52515,0,0,0,0,100,0),
(3000470,2,2902.386,-368.7646,112.464676,0,0,0,0,100,0),
(3000470,3,2908.0146,-378.53067,112.46596,0,0,0,0,100,0),
(3000470,4,2910.5552,-392.31247,112.62947,0,0,0,0,100,0),
(3000470,5,2931.3447,-385.47107,114.114,1.543,30000,0,0,100,0),
(3000470,6,2934.3105,-386.38312,114.37054,0,0,0,0,100,0),
(3000470,7,2936.9067,-380.65164,114.22609,0,0,0,0,100,0),
(3000470,8,2928.701,-366.51712,112.480385,0,0,0,0,100,0),
(3000470,9,2913.1692,-353.7682,112.46276,0,0,0,0,100,0),
(3000470,10,2904.8074,-354.40256,112.46276,0,0,0,0,100,0),
(3000470,11,2891.1504,-345.61026,112.46166,1.558,30000,0,0,100,0);

UPDATE `creature` SET `position_x` = 2820.4407,`position_y` = -418.70245,`position_z` = 118.28583,`orientation` = 6.2822,`MovementType` = 2 WHERE `guid` in (102094);
UPDATE `creature_addon` SET `path_id` = 1020940 where `guid` IN (102094);

DELETE FROM `waypoint_data` WHERE `id` IN (1020940);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1020940,1,2813.6687,-418.32516,118.43487,0,0,0,0,100,0),
(1020940,2,2807.7622,-423.74332,118.19617,0,0,0,0,100,0),
(1020940,3,2786.392,-444.9281,118.19616,0,0,0,0,100,0),
(1020940,4,2779.343,-457.49866,117.02095,0,0,0,0,100,0),
(1020940,5,2753.694,-505.24323,106.22559,0,0,0,0,100,0),
(1020940,6,2739.2307,-507.07037,101.29562,0,0,0,0,100,0),
(1020940,7,2753.694,-505.24323,106.22559,0,0,0,0,100,0),
(1020940,8,2779.343,-457.49866,117.02095,0,0,0,0,100,0),
(1020940,9,2786.392,-444.9281,118.19616,0,0,0,0,100,0),
(1020940,10,2807.7622,-423.74332,118.19617,0,0,0,0,100,0),
(1020940,11,2813.6687,-418.32516,118.43487,0,0,0,0,100,0),
(1020940,12,2820.4407,-418.70245,118.28583,6.2822,20000,0,0,100,0);



UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (102093); -- 1 5
UPDATE `creature_addon` SET `path_id` = 1020930 where `guid` IN (102093);

DELETE FROM `waypoint_data` WHERE `id` IN (1020930);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1020930,1,2838.223,-412.3999,118.19591,0,0,0,0,100,0),
(1020930,2,2842.8054,-406.82565,118.01443,0,0,0,0,100,0),
(1020930,3,2851.8726,-396.4991,112.4618,0,0,0,0,100,0),
(1020930,4,2884.246,-359.1045,112.46474,0,0,0,0,100,0),
(1020930,5,2885.3354,-310.90775,112.552055,0,5000,0,0,100,0),
(1020930,6,2884.246,-359.1045,112.46474,0,0,0,0,100,0),
(1020930,7,2851.8726,-396.4991,112.4618,0,0,0,0,100,0),
(1020930,8,2842.8054,-406.82565,118.01443,0,0,0,0,100,0),
(1020930,9,2862.18,-434.333,118.196014,0,0,0,0,100,0),
(1020930,10,2870.2456,-442.40552,118.19601,0,0,0,0,100,0),
(1020930,11,2867.0837,-456.62466,118.19601,4.464,10000,0,0,100,0),
(1020930,12,2870.2456,-442.40552,118.19601,0,0,0,0,100,0),
(1020930,13,2862.18,-434.333,118.196014,0,0,0,0,100,0);


UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (102092); -- 1 5
UPDATE `creature_addon` SET `path_id` = 1020920 where `guid` IN (102092);

DELETE FROM `waypoint_data` WHERE `id` IN (1020920);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1020920,1,2753.3215,-213.88754,138.77808,0,0,0,0,100,0),
(1020920,2,2742.9966,-222.81581,138.77808,3.847,10000,0,0,100,0),
(1020920,3,2731.5347,-203.54967,138.77814,0,0,0,0,100,0),
(1020920,4,2723.3743,-196.71909,138.77814,3.129,10000,0,0,100,0),
(1020920,5,2732.8862,-184.08118,138.77814,0,0,0,0,100,0),
(1020920,6,2732.4,-189.707,138.77808,0,0,0,0,100,0);


DELETE FROM `waypoint_data` WHERE `id` IN (1020970);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1020970,1,2758.81,-292.154,130.652,NULL,0,0,0,100,0),
(1020970,2,2777.84,-271.95,131.95,NULL,0,0,0,100,0),
(1020970,3,2793.7827,-271.65387,132.06789,NULL,0,0,0,100,0),
(1020970,4,2811.1418,-267.72473,133.47589,1.084,10000,0,0,100,0),
(1020970,5,2793.7827,-271.65387,132.06789,NULL,0,0,0,100,0),
(1020970,6,2777.84,-271.95,131.95,NULL,0,0,0,100,0),
(1020970,7,2758.81,-292.154,130.652,NULL,0,0,0,100,0),
(1020970,8,2773.95,-310.96,130.552,NULL,0,0,0,100,0),
(1020970,9,2783.26,-326.074,130.552,NULL,0,0,0,100,0),
(1020970,10,2788.65,-341.562,130.652,NULL,0,0,0,100,0),
(1020970,11,2787.1,-356.444,130.652,NULL,0,0,0,100,0),
(1020970,12,2782.6,-375.683,130.749,NULL,0,0,0,100,0),
(1020970,13,2787.1,-356.444,130.652,NULL,0,0,0,100,0),
(1020970,14,2788.65,-341.562,130.652,NULL,0,0,0,100,0),
(1020970,15,2783.26,-326.074,130.552,NULL,0,0,0,100,0),
(1020970,16,2773.95,-310.96,130.552,NULL,0,0,0,100,0);


UPDATE `creature` SET `position_x` = 2854.835,`position_y` = -495.30914,`position_z` = 126.99067,`orientation` = 0.786,`MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (102090);
UPDATE `creature_addon` SET `path_id` = 1020900 where `guid` IN (102090);

DELETE FROM `waypoint_data` WHERE `id` IN (1020900);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1020900,1,2857.3865,-498.3561,126.99067,0,0,0,0,100,0),
(1020900,2,2865.3354,-490.25415,126.99067,0,0,0,0,100,0),
(1020900,3,2845.437,-469.87802,126.98924,0,0,0,0,100,0),
(1020900,4,2836.246,-479.09354,126.98924,0,0,0,0,100,0),
(1020900,5,2839.956,-482.46585,126.98892,0,0,0,0,100,0),
(1020900,6,2840.8372,-481.60992,126.98892,0.772,60000,0,0,100,0),
(1020900,7,2839.956,-482.46585,126.98892,0,0,0,0,100,0),
(1020900,8,2836.246,-479.09354,126.98924,0,0,0,0,100,0),
(1020900,9,2845.437,-469.87802,126.98924,0,0,0,0,100,0),
(1020900,10,2865.3354,-490.25415,126.99067,0,0,0,0,100,0),
(1020900,11,2857.3865,-498.3561,126.99067,0,0,0,0,100,0),
(1020900,12,2854.835,-495.30914,126.99067,0.786,30000,0,0,100,0);

/* DELETE FROM `smart_scripts` WHERE `entryorguid`=27202 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27202,0,0,2,0,0,100,0,0,0,3400,4800,11,50740,64,0,0,0,0,2,0,0,0,0,0,0,0,"Onslaught Raven Priest - In Combat CMC - Cast 'Raven Flock' (No Repeat)"),
(27202,0,1,0,2,0,100,0,0,30,14000,18000,11,50750,1,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - Between 0-30% Health - Cast 'Raven Heal'"),
(27202,0,2,0,8,0,100,255,48268,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Container of Rats' - Despawn Instant (No Repeat) (Dungeon & Raid) (Debug)"),
(27202,0,3,0,4,0,30,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Aggro - Say Line 1 (No Repeat)"),
(27202,0,4,0,75,1,60,0,0,27203,5,30000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - Within Creature Distance (Phase 1) - Say Line 0"),
(27202,0,5,6,8,0,100,513,48679,0,0,0,85,48655,2,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Invoker Cast 'The Perfect Dissemblance: Summon Player's Footman & Credit Credit' (No Repeat)"),
(27202,0,6,7,61,0,100,512,0,0,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Say Line 2 (No Repeat)"),
(27202,0,7,8,61,0,100,512,0,0,0,0,11,48654,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Cast 'The Perfect Dissemblance: Summon Priest's Footman' (No Repeat)"),
(27202,0,8,9,61,0,100,512,0,0,0,0,85,48763,0,0,0,0,0,7,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Invoker Cast 'Scarlet Raven Priest Image' (No Repeat)"),
(27202,0,9,10,61,0,100,512,0,0,0,0,85,48761,0,0,0,0,0,7,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Invoker Cast 'Scarlet Raven Priest Image' (No Repeat)"),
(27202,0,10,0,61,0,100,512,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Set Faction 14 (No Repeat)");
(27202,0,11,0,11,0,100,512,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Respawn - Set Phase 1");
*/

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27202 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2720200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27202,0,0,0,4,0,30,0,0,0,0,0,0,0,1,1,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Aggro - Say Line 1"),
(27202,0,1,0,8,0,100,1,48268,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Container of Rats' - Despawn (No Repeat)"),
(27202,0,2,0,8,0,100,1,48679,0,0,0,0,0,80,2720200,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Run Script (No Repeat)"),
(27202,0,3,0,0,0,100,0,0,0,3400,4800,0,0,11,50740,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - In Combat CMC - Cast 'Raven Flock'"),
(27202,0,4,0,2,0,100,0,0,30,14000,18000,0,0,11,50750,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - Between 0-30% Health - Cast 'Raven Heal'"),
(27202,0,5,0,75,2,50,0,0,27203,2,90000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - Within Creature Distance (Phase 2) - Say Line 0"), -- For some reason is not restricting to footman being within
(27202,0,6,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Respawn - Set Phase 1"),
(27202,0,7,0,38,1,100,0,2,2,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Data Set 2 2 (Phase 1) - Set Phase 2"), -- Set Priests who only get 


(2720200,9,0,0,0,0,100,0,0,0,0,0,0,0,11,48654,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Cast 'The Perfect Dissemblance: Summon Priest's Footman'"),
(2720200,9,1,0,0,0,100,0,0,0,0,0,0,0,11,48648,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Cast 'Banshee's Magic Mirror'"),
-- Hack, 48648 above should be enough, but force-cast of that spell doesn't work always for unknown reason
-- Sadly, yes, if it works, player summons two footmen instead of one
-- (2720200,9,2,0,0,0,100,0,0,0,0,0,0,0,134,48655,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Self Cast 'The Perfect Dissemblance: Summon Player's Footman & Credit Credit'"),
(2720200,9,2,0,0,0,100,0,0,0,0,0,0,0,1,2,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Say Line 2");


-- Strict priests from being able to talk to footman who shouldn't be talking to them
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300071,-300072,-102090,-102082) AND `source_type`= 0 AND ID IN (1000);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-102082,0,1000,0,1,0,100,512,5000,5000,300000,300000,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - OOC - Set Phase 3"),
(-102090,0,1000,0,1,0,100,512,5000,5000,300000,300000,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - OOC - Set Phase 3"),
(-300071,0,1000,0,1,0,100,512,5000,5000,300000,300000,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - OOC - Set Phase 3"),
(-300072,0,1000,0,1,0,100,512,5000,5000,300000,300000,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - OOC - Set Phase 3");





DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 27202 AND `SourceId` = 0;
-- INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- (22,9,27202,0,0,20,1,0,0,0,0,0,0,'','Onslaught Raven Priest SAI event 17 require a male character'),
-- (22,10,27202,0,0,20,1,1,0,0,0,0,0,'','Onslaught Raven Priest SAI event 17 require a female character');


DELETE FROM `creature_text` WHERE `CreatureID` = 27202;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(27202,0,0,"I've heard whisperings of intruders.  Be wary.",12,0,100,0,0,0,26254,0,"Onslaught Raven Priest"),
(27202,0,1,"I sense the taint of this land in you, footman.  Report to the Bishop before the start of your next shift.",12,0,100,0,0,0,26256,0,"Onslaught Raven Priest"),
(27202,0,2,"You stink.  Take a shower.",12,0,100,0,0,0,26257,0,"Onslaught Raven Priest"),
(27202,0,3,"Your protection is strong, child.  Continue your work.",12,0,100,0,0,0,26390,0,"Onslaught Raven Priest"),
(27202,0,4,"You require the Bishop's blessing.  Go to him soon.",12,0,100,0,0,0,26391,0,"Onslaught Raven Priest"),
(27202,0,5,"Remain on the pure path.  The Light will protect you.",12,0,100,0,0,0,26392,0,"Onslaught Raven Priest"),
(27202,0,6,"The Grand Admiral himself has come to see to our dedication.  If I see you slacking on your post again, I will gut you myself.",12,0,100,0,0,0,26655,0,"Onslaught Raven Priest"),

(27202,1,0,"You are impure!",12,0,100,0,0,0,26393,0,"Onslaught Raven Priest"),
(27202,1,1,"Die, cur!",12,0,100,0,0,0,26394,0,"Onslaught Raven Priest"),
(27202,1,2,"Be washed from my sight!",12,0,100,0,0,0,26395,0,"Onslaught Raven Priest"),
(27202,1,3,"By the Light!",12,0,100,0,0,0,26396,0,"Onslaught Raven Priest"),
(27202,1,4,"Wretch!",12,0,100,0,0,0,26397,0,"Onslaught Raven Priest"),
(27202,1,5,"Defiler!",12,0,100,0,0,0,26398,0,"Onslaught Raven Priest"),
(27202,1,6,"Abbendis will see you purged!",12,0,100,0,0,0,26399,0,"Onslaught Raven Priest"),

(27202,2,0,"HELP! HELP! THIS $g MAN : WOMAN; HAS STOLEN MY IMAGE!",12,0,100,0,0,0,26543,0,"Onslaught Raven Priest"),

(27202,3,0,"Gah! What are you doing?",12,0,100,0,0,0,26637,0,"Onslaught Raven Priest"),
(27202,4,0,"A member of the priesthood whom I've never seen before.",12,0,100,0,0,0,26638,0,"Onslaught Raven Priest");


-- Devout Bodyguard
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-106200,-106201) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2724700,2724701,2724702) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-106200,0,0,0,38,0,100,1,1,1,0,0,0,80,2724700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Data Set 1 1 - Run Script (No Repeat)"),
(-106200,0,1,0,58,0,100,0,0,0,0,0,0,80,2724701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Waypoint Finished - Run Script"),
(-106200,0,2,0,0,0,100,0,5000,10000,10000,15000,0,11,38256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - In Combat - Cast 'Piercing Howl'"),

(-106201,0,0,0,38,0,100,1,1,1,0,0,0,80,2724702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Data Set 1 1 - Run Script (No Repeat)"),
(-106201,0,1,0,0,0,100,0,5000,10000,10000,15000,0,11,38256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - In Combat - Cast 'Piercing Howl'"),
(-106201,0,2,3,40,0,100,0,15,27247,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Waypoint 15 - Stop Waypoint"),
(-106201,0,3,0,61,0,100,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,2832.862,-465.13837,150.83414,2.3899,"Devout Bodyguard - On Waypoint 15 (Linked) - Move to POS"),

(2724700,9,0,0,0,0,100,0,3000,3000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Say Line 0"),
(2724700,9,1,0,0,0,100,0,3000,3000,0,0,0,53,1,27247,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Start Waypoint"),

(2724701,9,0,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Say Line 1"),
(2724701,9,1,0,0,0,100,0,0,0,0,0,0,45,1,2,0,0,0,0,10,102082,27202,0,0,0,0,0,0,"Devout Bodyguard - On Script - Set Data 1 2 (Onslaught Raven Priest)"),
(2724701,9,2,0,0,0,100,0,4000,4000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Say Line 2"),
(2724701,9,3,0,0,0,100,0,20000,20000,0,0,0,41,0,0,0,0,0,0,10,106201,27247,0,0,0,0,0,0,"Devout Bodyguard - On Script - Despawn (Devout Bodyguard)"),
(2724701,9,4,0,0,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Despawn"),

-- (2724702,9,0,0,0,0,100,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Disable Root"),
(2724702,9,0,0,0,0,100,0,7000,7000,0,0,0,53,1,27247,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Start Waypoint");

DELETE FROM `waypoints` WHERE `entry` IN (27247);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(27247,1,2800.5461,-479.0516,119.616455,"Devout Bodyguard"),
(27247,2,2807.7734,-471.9484,119.61645,"Devout Bodyguard"),
(27247,3,2814.5222,-465.90128,119.6147,"Devout Bodyguard"),
(27247,4,2821.4888,-471.29794,123.11067,"Devout Bodyguard"),
(27247,5,2827.7585,-472.69525,128.75671,"Devout Bodyguard"),
(27247,6,2833.6016,-470.6969,134.06349,"Devout Bodyguard"),
(27247,7,2839.7278,-464.88617,135.3624,"Devout Bodyguard"),
(27247,8,2837.8572,-452.8187,135.36316,"Devout Bodyguard"),
(27247,9,2827.6262,-447.17468,135.36287,"Devout Bodyguard"),
(27247,10,2816.3098,-452.6234,135.36247,"Devout Bodyguard"),
(27247,11,2814.4758,-463.5507,135.36266,"Devout Bodyguard"),
(27247,12,2819.273,-470.78683,136.68086,"Devout Bodyguard"),
(27247,13,2827.964,-473.3304,144.91586,"Devout Bodyguard"),
(27247,14,2834.3506,-470.6176,150.68944,"Devout Bodyguard"),
(27247,15,2837.8606,-466.93002,150.83655,"Devout Bodyguard"),
(27247,16,2833.3555,-463.5104,150.8349,"Devout Bodyguard");

DELETE FROM `creature_formations` WHERE `memberGUID` IN (106200,106201);
-- INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
-- (106200,106200,0,0,515,0,0),
-- (106200,106201,2,0,515,0,0);

DELETE FROM `creature_text` WHERE `CreatureID` = 27247;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(27247,0,0,"Yes, your eminence. Come on!",12,0,100,2,0,0,26609,0,"Devout Bodyguard"),
(27247,1,0,"Hey, who rang the bell?",12,0,100,6,0,0,26610,0,"Devout Bodyguard"),
(27247,2,0,"The bodyguard grunts.",16,0,100,0,0,0,26611,0,"Devout Bodyguard");

UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id1` = 27247;








-- Blacksmith Goodman
UPDATE `creature` SET `position_x` = 2938.465,`position_y` = -333.05362,`position_z` = 114.65719,`orientation` =6.167 WHERE `guid` in (104699);
UPDATE `creature_addon` SET `emote` = 233 WHERE `guid` in (104699);

-- Onslaught Workman
UPDATE `creature` SET `position_x` = 2941.778,`position_y` = -350.04578,`position_z` = 114.65776,`orientation` =5.874,`MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (102444);

DELETE FROM `creature` WHERE `guid` IN (300073);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300073,27207,0,0,571,0,0,1,1,1,2708.5151,-200.81067,139.70065,3.12,300,5,0,9291,0,1,0,0,0,'',0,0,NULL); -- Inside Inn




-- Onslaught Footman
DELETE FROM `creature` WHERE `guid` IN (300050,300051,300052,300053,300054,300055,300056,300057,300058,300059,300060,300061,300062,300063,300064,300065,300066,300067,300068,300069,300070);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300050,27203,0,0,571,0,0,1,1,1,2891.2332,-343.3073,112.46168,4.722,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- outside stronghold
(300051,27203,0,0,571,0,0,1,1,1,2876.5386,-274.44406,114.03565,5.346,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- inside stronghold
(300052,27203,0,0,571,0,0,1,1,1,2892.3806,-291.36496,127.95811,4.653,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- inside stronghold 2nd floor with commander
(300053,27203,0,0,571,0,0,1,1,1,2878.7634,-291.0563,127.95811,4.728,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- inside stronghold 2nd floor with commander
(300054,27203,0,0,571,0,0,1,1,1,2903.6648,-309.8272,127.95802,1.55,300,0,0,9291,0,2,0,0,0,'',0,0,NULL), -- inside stronghold 2nd floor patroller
(300055,27203,0,0,571,0,0,1,1,1,2715.6284,-493.89746,92.32707,3.263,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on hill kneeling down to ramparts
(300056,27203,0,0,571,0,0,1,1,1,2757.9421,-524.44525,110.88998,4.605,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on hill kneeling down to ramparts
(300057,27203,0,0,571,0,0,1,1,1,2680.6946,-461.26312,51.278534,4.259,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- Sitting on bench at ramparts
(300058,27203,0,0,571,0,0,1,1,1,2685.0854,-471.93347,51.98801,2.4862,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- Sitting on bench at ramparts
(300059,27203,0,0,571,0,0,1,1,1,2670.864,-483.44672,51.339123,3.998,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- Standing at cannon at ramparts
(300060,27203,0,0,571,0,0,1,1,1,2662.8296,-472.4917,50.79217,3.515,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- Standing at cannon at ramparts
(300061,27203,0,0,571,0,0,1,1,1,2655.008,-456.36185,50.276344,3.688,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- Standing at cannon at ramparts
(300062,27203,0,0,571,0,0,1,1,1,2822.3171,-418.8359,118.21661,3.1022,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- Standing outside church
(300063,27203,0,0,571,0,0,1,1,1,2740.9746,-224.7745,138.80392,0.704,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- outside small church
(300064,27203,0,0,571,0,0,1,1,1,2554.6401,-340.26163,2.5267906,6.264,300,5,0,9291,0,1,0,0,0,'',0,0,NULL), -- On shoreline wandering
(300065,27203,0,0,571,0,0,1,1,1,2556.658,-302.3871,3.3999758,3.802,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on shoreline by bonfire
(300066,27203,0,0,571,0,0,1,1,1,2554.8193,-304.04706,3.7179,0.528,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on shoreline by bonfire
(300067,27203,0,0,571,0,0,1,1,1,2541.4478,-384.01428,1.4401,2.1381,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on shoreline sitting by bonfire
(300068,27203,0,0,571,0,0,1,1,1,2568.4365,-403.56458,3.6331434,3.004,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on shoreline standing by tent
(300069,27203,0,0,571,0,0,1,1,1,2581.037,-443.2917,19.596167,2.9622,300,0,0,9291,0,0,0,0,0,'',0,0,NULL), -- on hill going up to ramparts
(300070,27203,0,0,571,0,0,1,1,1,2673.02,-361.701,141.21706,3.195,300,0,0,9291,0,0,0,0,0,'',0,0,NULL); -- in the cathedral kneeling

UPDATE `creature` SET `position_x` = 2671.9546,`position_y` = -354.66797,`position_z` = 141.21706,`orientation` = 3.529 WHERE `guid` in (102136);
UPDATE `creature_addon` SET `bytes1` = 8 where `guid` IN (102136);
-- Move 102136 2671.9546 Y: -354.66797 Z: 141.21706,3.529 and kneeling

DELETE FROM `creature_addon` where `guid` IN (300054,300055,300056,300057,300058,300067,300070);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(300054,3000540,0,0,1,0,0,NULL),
(300055,0,0,8,1,0,0,NULL),
(300056,0,0,8,1,0,0,NULL),
(300057,0,0,1,1,0,0,NULL),
(300058,0,0,1,1,0,0,NULL),
(300067,0,0,1,1,0,0,NULL),
(300070,0,0,8,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (3000540);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(3000540,1,2903.8774,-305.69418,127.95802,0,0,0,0,100,0),
(3000540,2,2904.0889,-295.26584,122.8565,0,0,0,0,100,0),
(3000540,3,2903.9287,-291.2176,122.8565,0,0,0,0,100,0),
(3000540,4,2867.3752,-290.47128,122.8565,0,0,0,0,100,0),
(3000540,5,2867.295,-294.25693,122.8565,0,0,0,0,100,0),
(3000540,6,2867.2083,-304.80548,127.95831,0,0,0,0,100,0),
(3000540,7,2867.1567,-308.90323,127.95831,0,0,0,0,100,0),
(3000540,8,2903.6648,-309.8272,127.95802,0,0,0,0,100,0); -- Start home



UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (102187); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (102187);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(102187,1021870,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (1021870);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1021870,1,2835.851,-376.87415,112.98291,4.922,30000,0,0,100,0),
(1021870,2,2831.3164,-346.81256,114.08591,1.7388,30000,0,0,100,0);



UPDATE `waypoint_data` SET `orientation` = 4.756,`delay` = 20000 WHERE `id` in (1021790) AND `point` = 2; -- 1 5



UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (102167); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (102167);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(102167,1021670,0,0,1,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (1021670);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1021670,1,2837.0754,-467.59973,135.36234,1.57,5000,0,0,100,0),
(1021670,2,2839.8066,-461.0784,135.36234,0,0,0,0,100,0),
(1021670,3,2838.2327,-453.80804,135.36234,0,0,0,0,100,0),
(1021670,4,2831.931,-448.26364,135.36234,0,0,0,0,100,0),
(1021670,5,2823.4834,-448.02112,135.36234,0,0,0,0,100,0),
(1021670,6,2817.0625,-452.93707,135.36234,0,0,0,0,100,0),
(1021670,7,2814.7039,-460.31744,135.36234,0,0,0,0,100,0),
(1021670,8,2816.7256,-467.79324,135.36234,5.533,5000,0,0,100,0),
(1021670,9,2814.7039,-460.31744,135.36234,0,0,0,0,100,0),
(1021670,10,2817.0625,-452.93707,135.36234,0,0,0,0,100,0),
(1021670,11,2823.4834,-448.02112,135.36234,0,0,0,0,100,0),
(1021670,12,2831.931,-448.26364,135.36234,0,0,0,0,100,0),
(1021670,13,2838.2327,-453.80804,135.36234,0,0,0,0,100,0),
(1021670,14,2839.8066,-461.0784,135.36234,0,0,0,0,100,0);



-- Footmen, yes, it's intended when one attacks player and another attacks priest, they even talk about that
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27405,27406) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2740500,2740600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27405,0,0,0,11,0,100,0,0,0,0,0,0,80,2740500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - On Spawn - Run Script'),
(27405,0,1,0,0,0,100,0,0,10000,30000,40000,0,11,50714,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Footman - In Combat - Cast 'Unrelenting Onslaught'"),

(27406,0,0,0,11,0,100,0,0,0,0,0,0,80,2740600,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - On Spawn - Run Script'),
(27406,0,1,0,0,0,100,0,0,10000,30000,40000,0,11,50714,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Footman - In Combat - Cast 'Unrelenting Onslaught'"),

(2740500,9,0,0,0,0,100,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Set faction'),
(2740500,9,1,0,0,0,100,0,0,0,0,0,0,1,0,0,1,0,0,0,23,0,0,0,0,0,0,0,0,'Onslaught Footman - On Script - Say Line 0'),
(2740500,9,2,0,0,0,100,0,3000,3000,0,0,0,2,2033,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Set faction'),
(2740500,9,3,0,0,0,100,0,1000,1000,0,0,0,49,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,'Onslaught Footman - On Script - Start Attack Summoner'),


(2740600,9,0,0,0,0,100,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Set faction'),
(2740600,9,1,0,0,0,100,0,2000,2000,0,0,0,1,0,0,1,0,0,0,23,0,0,0,0,0,0,0,0,'Onslaught Footman - On Script - Say Line 0'),
(2740600,9,2,0,0,0,100,0,2000,2000,0,0,0,2,2033,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Set faction'),
(2740600,9,3,0,0,0,100,0,1000,1000,0,0,0,49,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,'Onslaught Footman - On Script - Start Attack Player');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27203) AND `source_type` = 0 AND ID = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27203,0,1,0,1,0,100,0,1000,1000,5000,5000,0,45,2,2,0,0,0,0,19,27202,3,0,0,0,0,0,0,'Onslaught Footman - OOC - Set Data on Onslaught Priest');

-- Stable Master Mercer
UPDATE `creature` SET `MovementType` = 2,`wander_distance` = 0 WHERE `guid` in (104875); -- 1 5

UPDATE `creature_addon` SET `path_id` = 1048750 where `guid` IN (104875);

DELETE FROM `waypoint_data` WHERE `id` IN (1048750);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1048750,1,2735.3154,-179.982,138.778,4.313,30000,0,0,100,0),
(1048750,2,2743.0657,-184.25125,138.77817,0,0,0,0,100,0),
(1048750,3,2747.984,-178.08224,138.77817,0,0,0,0,100,0),
(1048750,4,2756.0398,-184.0178,139.18295,0,0,0,0,100,0),
(1048750,5,2766.5054,-177.76143,139.62355,0,0,0,0,100,0),
(1048750,6,2773.5554,-178.88387,139.56516,0,0,0,0,100,0),
(1048750,7,2775.4353,-184.478,139.0287,4.671,30000,0,0,100,0),
(1048750,8,2784.9817,-180.96861,139.04953,0,0,0,0,100,0),
(1048750,9,2773.5554,-178.88387,139.56516,0,0,0,0,100,0),
(1048750,10,2766.5054,-177.76143,139.62355,0,0,0,0,100,0),
(1048750,11,2749.518,-187.58809,138.78412,0,0,0,0,100,0),
(1048750,12,2745.24,-186.08,138.855,0,0,0,0,100,0);

-- Onlsaught Deckhand
UPDATE `creature` SET `position_x` = 2463.859,`position_y` = -400.11673,`position_z` = 7.919802 WHERE `guid` in (86563);

UPDATE `creature` SET `position_x` = 2527.0813,`position_y` = -432.61948,`position_z` = 3.1561131,`orientation` =4.5389,`MovementType` = 0,`wander_distance` = 0 WHERE `guid` in (86381);

DELETE FROM `creature_addon` where `guid` IN (86381);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(86381,0,0,0,0,133,0,NULL);


-- Foreman Kaleiki
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27238) AND `source_type` = 0 AND ID in (2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27238,0,2,3,54,0,100,512,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Foreman Kaleiki - Just Summoned - Set Faction'),
(27238,0,3,0,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Foreman Kaleiki - Just Summoned (Linked) - Say'),
(27238,0,4,0,1,0,100,512,2000,2000,2000,2000,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Foreman Kaleiki - OOC - Attack Stored Target');

-- Levine Family Termite Bunny
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27353) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27353,0,0,1,11,0,100,0,0,0,0,0,0,0,12,27238,2,120000,0,0,0,8,0,0,0,0,2802.38,-199.922,139.161,3.57586,'Levine Family Termite Bunny - On Spawn - Summon Foreman Kaleiki'),
(27353,0,1,2,61,0,100,512,0,0,0,0,0,0,64,1,0,0,0,0,0,23,0,0,0,0,0,0,0,0,'Levine Family Termite Bunny - On Spawn (Linked) - Store target list'),
(27353,0,2,0,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,19,27238,0,0,0,0,0,0,0,'Levine Family Termite Bunny - On Spawn (Linked) - Send Target list');



-- Quest fixes

-- The Perfect Dissemblance (12260)
-- Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_cancel_banshees_magic_mirror';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48692,'spell_dragonblight_cancel_banshees_magic_mirror');







-- A Fall From Grace (12274)
-- Disguise stuff

DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_dragonblight_scarlet_raven_priest_image_master','spell_dragonblight_cancel_scarlet_raven_priest_image');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48762,'spell_dragonblight_scarlet_raven_priest_image_master'),
(48769,'spell_dragonblight_cancel_scarlet_raven_priest_image');

UPDATE `quest_template_addon` SET `SourceSpellID` = 0,`SpecialFlags` = 2 WHERE `ID` = 12274;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27350 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27350,0,0,0,19,0,100,0,12274,0,0,0,0,11,48774,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Agent Skully - On Quest 'A Fall From Grace' Taken - Cast 'A Fall from Grace: Quest Accept'"),
(27350,0,1,0,62,0,100,0,9501,0,0,0,0,11,48774,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Agent Skully - On Gossip Option 0 Selected - Cast 'A Fall from Grace: Quest Accept'");


-- Bell stuff
UPDATE `gameobject_template` SET `Data3`=180000 WHERE `entry`=188713; -- Delay added was 5000
 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 188713 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188713,1,0,1,70,0,100,0,2,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Store Targetlist"),
(188713,1,1,2,61,0,100,0,0,0,0,0,0,100,1,0,0,0,0,0,10,102082,27202,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Send Target 1 (Onslaught Raven Priest)"),
(188713,1,2,3,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,100277,24110,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (ELM General Purpose Bunny Large)"),
(188713,1,3,4,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,102082,27202,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (Onslaught Raven Priest)"),
(188713,1,4,5,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,105877,27245,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (High Abbot Landgren)"),
(188713,1,5,6,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,106200,27247,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (Devout Bodyguard)"),
(188713,1,6,0,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,106201,27247,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (Devout Bodyguard)");

DELETE FROM `smart_scripts` WHERE `entryorguid` = -100277 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2411000 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-100277,0,0,0,38,0,100,0,1,1,0,0,0,80,2411000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Data Set 1 1 - Run Script"),

(2411000,9,0,0,0,0,100,0,0,0,0,0,0,4,7256,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Script - Play Sound 7256"),
(2411000,9,1,0,0,0,100,0,3000,3000,0,0,0,4,7256,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Script - Play Sound 7256"),
(2411000,9,2,0,0,0,100,0,3000,3000,0,0,0,4,7256,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Script - Play Sound 7256");


DELETE FROM `smart_scripts` WHERE `entryorguid` = -102082 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2720202,2720203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-102082,0,1000,0,38,0,100,0,1,1,0,0,0,80,2720202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Data Set 1 1 - Run Script"),
(-102082,0,1001,0,38,0,100,0,1,2,0,0,0,80,2720203,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Data Set 1 2 - Run Script"),

(2720202,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Orientation Stored Target 1"),
(2720202,9,1,0,0,0,100,0,0,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Play Emote 5"),
(2720202,9,2,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Say Line 3"),
(2720202,9,3,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Remove Flag Standstate Kneel"),
(2720202,9,4,0,0,0,100,0,3000,3000,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Play Emote 6"),
(2720202,9,5,0,0,0,100,0,10000,10000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.944444179534912109,"Onslaught Raven Priest - On Script - Set Orientation"),
(2720202,9,6,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Flag Standstate Kneel"),

(2720203,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Orientation Invoker"),
(2720203,9,1,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Remove Flag Standstate Kneel"),
(2720203,9,2,0,0,0,100,0,2000,2000,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Play Emote 6"),
(2720203,9,3,0,0,0,100,0,0,0,0,0,0,1,4,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Say Line 4"),
(2720203,9,4,0,0,0,100,0,11000,11000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.944444179534912109,"Onslaught Raven Priest - On Script - Set Orientation"),
(2720203,9,5,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Flag Standstate Kneel");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27245 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27245,0,0,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Data Set 1 1 - Say Line 0"),
(27245,0,1,0,62,0,100,0,9536,0,0,0,0,11,48756,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Gossip Option 0 Selected - Cast 'A Fall from Grace: Ring Kissed Dummy Aura'");

DELETE FROM `creature_text` WHERE `CreatureID` = 27245;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(27245,0,0,"Boys, go see who's doing that.",12,0,100,1,0,0,26608,0,"High Abbot Landgren");



-- AT
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4987 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(4987,2,0,1,46,0,100,0,4987,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Trigger - Store Targetlist"),
(4987,2,1,2,61,0,100,0,0,0,0,0,0,100,1,0,0,0,0,0,10,98593,23837,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Link - Send Target 1 (ELM General Purpose Bunny)"),
(4987,2,2,0,61,0,100,0,0,0,0,0,0,45,0,1,0,0,0,0,10,98593,23837,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Link - Set Data 0 1 (ELM General Purpose Bunny)");

DELETE FROM `smart_scripts` WHERE `entryorguid` = -98593 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Hack, bunny here should cast 48759 on player but that works only if player does not move (if player teleports to creature)
-- It works with similar spells, for example 40917
(-98593,0,0,0,38,0,100,0,0,1,0,0,0,134,48757,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set 0 1 - Self Cast 'A Fall from Grace: Summon High Abbot Landgren'"),
-- That aura indeed is removed and that gives us possibility to prevent double-summoning no matter how we handle summon
(-98593,0,1,0,38,0,100,0,0,1,0,0,0,28,48756,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set 0 1 - Remove Aura 'A Fall from Grace: Ring Kissed Dummy Aura'");

-- Final part (no, he doesn't use vehicle for jump)
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27439 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2743900,2743901) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27439,0,0,0,11,0,100,0,0,0,0,0,0,80,2743900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Spawn - Run Script"),
(27439,0,1,0,58,0,100,0,0,0,0,0,0,80,2743901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Waypoint Finished - Run Script"),

-- Hack, at this moment personal spawns can attack any creature, that completely breaks script
(2743900,9,0,0,0,0,100,0,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Immunity to All"),
(2743900,9,1,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743900,9,2,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 0"),
(2743900,9,3,0,0,0,100,0,5000,5000,0,0,0,53,0,27439,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Start Waypoint"),

(2743901,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,1,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 1"),
(2743901,9,2,0,0,0,100,0,6000,6000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,3,0,0,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 2"),
(2743901,9,4,0,0,0,100,0,5000,5000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,5,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 3"),
(2743901,9,6,0,0,0,100,0,3000,3000,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Play Emote 1"),
(2743901,9,7,0,0,0,100,0,5000,5000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,8,0,0,0,100,0,0,0,0,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 4"),
(2743901,9,9,0,0,0,100,0,3000,3000,0,0,0,11,48771,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Cast 'A Fall from Grace: Kill Credit'"),
-- No idea why it's still needed
(2743901,9,10,0,0,0,100,0,0,0,0,0,0,15,12274,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Quest Credit 'A Fall from Grace'"),
(2743901,9,11,0,0,0,100,0,0,0,0,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 5"),
(2743901,9,12,0,0,0,100,0,0,0,0,0,0,17,427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Emote State 427"),
(2743901,9,13,0,0,0,100,0,0,0,0,0,0,97,25,32,0,0,0,0,1,0,0,0,0,2715.55,-560.343,10.6656,0,"High Abbot Landgren - On Script - Jump To Pos"),
(2743901,9,14,0,0,0,100,0,4000,4000,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Despawn");


DELETE FROM `waypoints` WHERE `entry` = 27439;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(27439,1,2827.0466,-412.4136,118.283745,"High Abbot Landgren"),
(27439,2,2810.891,-412.49506,118.283745,"High Abbot Landgren"),
(27439,3,2786.2637,-436.96738,118.26536,"High Abbot Landgren"),
(27439,4,2776.9878,-464.75424,116.191505,"High Abbot Landgren"),
(27439,5,2765.8164,-488.21484,114.05323,"High Abbot Landgren"),
(27439,6,2756.3323,-500.62338,108.02886,"High Abbot Landgren"), -- NEW
(27439,7,2737.89,-524.4745,103.4476,"High Abbot Landgren");




-- Bombard the Ballistae (12232)
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_bombard_the_ballistae_fx_master';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48347,'spell_dragonblight_bombard_the_ballistae_fx_master');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27331 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2733100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27331,0,0,0,8,0,100,0,48345,0,0,0,0,80,2733100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Spellhit 'Siegesmith Bombs' - Run Script"),

(2733100,9,0,0,0,0,100,0,0,0,0,0,0,33,27331,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Script - Quest Credit 'Bombard the Ballistae'"),
(2733100,9,1,0,0,0,100,0,0,0,0,0,0,11,48347,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Script - Cast 'Bombard the Ballistae: FX Master'"),
(2733100,9,2,0,0,0,100,0,5000,5000,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Script - Despawn");




-- Without a Prayer (12254)
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27246 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2724600 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27246,0,0,0,38,0,100,0,0,1,60000,60000,0,80,2724600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Data Set 0 1 - Run Script"),
(27246,0,1,0,4,0,100,0,0,0,0,0,0,1,2,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Bishop Street - On Aggro - Say Line 2"),
(27246,0,2,0,0,0,100,0,0,0,3400,4800,0,11,20820,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Bishop Street - In Combat CMC - Cast 'Holy Smite'"),
(27246,0,3,0,0,0,100,0,12000,16000,45000,55000,0,11,11974,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - In Combat - Cast 'Power Word: Shield'"),

(2724600,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Script - Say Line 0"),
(2724600,9,1,0,0,0,100,0,4000,4000,0,0,0,11,48183,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Script - Cast 'Blessing of the Light'"),
(2724600,9,2,0,0,0,100,0,4000,4000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Script - Say Line 1");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4984 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(4984,2,0,0,46,0,100,0,4984,0,0,0,0,45,0,1,0,0,0,0,19,27246,0,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Trigger - Set Data 0 1 (Bishop Street)");

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4984;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4984,"SmartTrigger");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4984 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4984,2,0,9,0,12254,0,0,0,0,0,"","Group 0: Execute Event 0 if player has taken quest 'Without a Prayer'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 48183;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,48183,0,0,31,0,3,27203,0,0,0,0,"","Group 0: Spell 'Blessing of the Light' (Effect 0) targets creature 'Onslaught Footman'");