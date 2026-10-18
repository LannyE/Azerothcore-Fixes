/*
Teribus the Cursed 4-7-26

Add waypoints and fix smart scripts

Fix Dread Relic to only work when Teribus is alive.  
GUID 99987 Entry 185311  Name: Writhing Mound and Items Dread Relic 31811 and 20x Doom Skulls 31812

New Event: 249 -- Needed cause Teribus has a pathing that is beyond visibility range and conditions can't find him.
*/
-- Dread Relic
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceGroup` = 0 AND `SourceEntry` = 39239 AND `ConditionTypeOrReference` = 12 AND `ConditionValue1` = 249;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,39239,0,0,12,0,249,0,0,0,0,0,'','Dread Relic requires Game Event 249 (Teribus the Cursed) to be active');
/*
(
    17,         -- SourceTypeOrReferenceId: 17 (CONDITION_SOURCE_TYPE_SPELL)
    0,          -- SourceGroup: 0
    39239,      -- SourceEntry: Spell ID cast by the Dread Relic
    0,          -- SourceId: 0
    0,          -- ElseGroup: 0
    29,         -- ConditionTypeOrReference: 29 (CONDITION_NEAR_CREATURE)
    0,          -- ConditionTarget: 0 (The Player)
    22441,      -- ConditionValue1: Teribus the Cursed Entry ID
    3000,       -- ConditionValue2: Distance (Expanded to 3000 yards for his patrol) -- only really works within about 500
    0,          -- ConditionValue3: 0 (Alive)
    0,          -- NegativeCondition: 0 
    0,          -- ErrorType: 0 
    0,          -- ErrorTextId: 0
    '',         -- ScriptName: None
    'Dread Relic requires Teribus the Cursed to be spawned and alive within 3000 yards' -- Comment
);
*/


-- Teribus the Cursed
DELETE FROM `game_event` WHERE `eventEntry` = 249; -- Needed cause Teribus has a pathing that is way beyond visibility range and conditions can't find him to limit the Dread Relics use to when he is alive.
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES
(249,'2011-03-22 01:00:00','2030-12-31 07:00:00',5184000,2592000,0,0,'Teribus the Cursed',0,0);
-- (249,'2000-01-01 14:00:00','2000-01-01 14:00:00',525600,2592000,0,0,'Teribus the Cursed',0,0);

UPDATE `creature_template_movement` SET `Flight` = 0 WHERE `CreatureId` in (22441); -- 1
UPDATE `creature` SET `spawntimesecs` = 10 WHERE `guid` in (247237); -- 300
UPDATE `creature_template_addon` SET `visibilityDistanceType` = 5 WHERE `entry` in (22441); -- 4

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22441) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2244100,2244101,2244102) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22441,0,0,1,11,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Respawn - Set Active'),
(22441,0,1,0,61,0,100,512,0,0,0,0,0,0,80,2244102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Respawn (Linked) - Run Script'),
(22441,0,2,0,108,1,100,513,1,2472370,0,0,0,0,112,249,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Waypoint 1 Reached (Phase 1) (No Repeat) - Start Event 249'),
(22441,0,3,0,108,2,100,512,68,2472370,0,0,0,0,80,2244101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Waypoint 68 Reached (Phase 2) - Run Script'),
(22441,0,4,0,108,1,100,512,68,2472370,0,0,0,0,80,2244102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Waypoint 68 Reached (Phase 1) - Run Script'),
(22441,0,5,6,25,0,100,512,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Reset - Set Active'),
(22441,0,6,0,61,0,100,512,0,0,0,0,0,0,80,2244102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Reset (Linked) - Run Script'),
(22441,0,7,0,108,0,100,512,3,2472371,0,0,0,0,80,2244100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Waypoint 3 Reached - Run Script'),
(22441,0,8,0,108,0,100,512,3,2472371,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Waypoint 3 Reached - Stop Waypoint'),
(22441,0,9,0,38,0,100,512,1,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Data Set 1 1 - Set Phase 2'),
(22441,0,10,0,6,0,100,512,0,0,0,0,0,0,111,249,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Death - Stop Event 249'),

(2244100,9,0,0,0,0,100,512,100,100,0,0,0,0,5,293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Play Emote'),
(2244100,9,1,0,0,0,100,512,0,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Remove Unit Flags'),
(2244100,9,2,0,0,0,100,512,0,0,0,0,0,0,19,16778240,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Fly Off'),
(2244100,9,3,0,0,0,100,512,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Hover Off'),
(2244100,9,4,0,0,0,100,512,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Fly Off'),
(2244100,9,5,0,0,0,100,512,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Stop Waypoint'),
(2244100,9,6,0,0,0,100,512,0,0,0,0,0,0,101,0,0,0,0,0,0,8,0,0,0,0,-3417.92,4453.57,-7.968,5.02208,'Teribus the Cursed - On Script - Set Home Position'), -- -3417.92 4453.57 -7.968
(2244100,9,7,0,0,0,100,512,100,100,0,0,0,0,49,0,0,0,0,0,0,21,70,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Start Attack'),

(2244101,9,0,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Fly On'),
(2244101,9,1,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Hover On'),
(2244101,9,2,0,0,0,100,512,0,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Unit Flags'),
(2244101,9,3,0,0,0,100,512,0,0,0,0,0,0,18,16778240,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Unit Flags'),
(2244101,9,4,0,0,0,100,512,100,100,0,0,0,0,232,2472371,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Start Waypoint'),

(2244102,9,0,0,0,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Phase 1'),
(2244102,9,1,0,0,0,100,512,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Fly On'),
(2244102,9,2,0,0,0,100,512,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Hover On'),
(2244102,9,3,0,0,0,100,512,0,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Unit Flags'),
(2244102,9,4,0,0,0,100,512,0,0,0,0,0,0,18,16778240,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Set Unit Flags'),
(2244102,9,5,0,0,0,100,512,100,100,0,0,0,0,232,2472370,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Teribus the Cursed - On Script - Start Waypoint');

DELETE FROM `waypoint_data` where `id` in (2472370,2472371);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(2472370,1,-3536.95,4552.85,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,2,-3409.62,4449.58,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,3,-3349.25,4439.43,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,4,-3313.64,4444.91,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,5,-3279.4,4454.19,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,6,-3234.19,4473.26,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,7,-3196.13,4495.16,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,8,-3171.48,4517.38,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,9,-3151.42,4535.17,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,10,-3123.37,4561.55,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,11,-3095.09,4595.4,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,12,-3068.84,4630.34,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,13,-3045.78,4664.11,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,14,-3026.6,4694.87,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,15,-2995.64,4732.21,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,16,-2978.61,4756.44,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,17,-2947.33,4792.06,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,18,-2923.64,4824.37,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,19,-2906.17,4847.41,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,20,-2891.8,4874.13,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,21,-2877.48,4912.11,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,22,-2864.91,4943.6,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,23,-2849.98,4977.14,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,24,-2846.4,5005.69,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,25,-2847,5047.85,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,26,-2857.18,5095.88,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,27,-2886.46,5132.28,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,28,-2918.97,5168.65,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,29,-2953.35,5195.61,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,30,-2978.21,5215.58,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,31,-3008.71,5233.99,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,32,-3046.67,5256.23,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,33,-3080.47,5271.79,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,34,-3120.41,5288.65,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,35,-3165.92,5299.69,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,36,-3199.94,5307.78,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,37,-3235.6,5312.55,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,38,-3283.41,5319.14,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,39,-3312.06,5321.95,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,40,-3346.04,5326.45,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,41,-3387.92,5326.46,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,42,-3436.25,5327.4,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,43,-3475.92,5333.69,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,44,-3517.05,5338.55,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,45,-3557.72,5343.17,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,46,-3602.69,5336.2,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,47,-3650.57,5328.92,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,48,-3684.33,5309.17,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,49,-3706.66,5290.85,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,50,-3732.21,5262.83,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,51,-3749.45,5217.35,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,52,-3752.95,5185.75,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,53,-3756.9,5145.65,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,54,-3755.04,5099.2,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,55,-3751.65,5054.66,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,56,-3752.23,5019.97,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,57,-3751.52,4985.04,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,58,-3748.57,4947.28,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,59,-3746.74,4898.95,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,60,-3741.4,4859.79,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,61,-3731.88,4829.11,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,62,-3716.06,4788.73,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,63,-3696.45,4749.87,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,64,-3681.39,4712.53,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,65,-3654.75,4670.41,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,66,-3633.88,4642.1,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,67,-3600.05,4613.08,83.9206,NULL,20,0,1,0,0,100,0),
(2472370,68,-3564.84,4580.33,83.9206,NULL,20,0,1,0,0,100,0),

(2472371,1,-3398.8,4565.9,57.4391,4.43695,20,0,1,0,0,100,0),
(2472371,2,-3417.8877,4455.2666,-6.9936914,4.53512,20,0,1,0,0,100,0),
(2472371,3,-3417.92,4453.57,-7.968,5.02208,20,0,1,0,0,100,0);