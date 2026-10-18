-- 





-- Onslaught Raven Priest
DELETE FROM `creature` WHERE `guid` IN (300046,300047,300048,300049,300071,300072);

DELETE FROM `creature_addon` where `guid` IN (300046,300047,300048,300049,300071,300072);

DELETE FROM `waypoint_data` WHERE `id` IN (3000470);


UPDATE `creature` SET `position_x` = 2782.57,`position_y` = -474.781,`position_z` = 117.704,`orientation` =-2.08126,`MovementType` = 0 WHERE `guid` in (102094);
UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (102094);

DELETE FROM `waypoint_data` WHERE `id` IN (1020940);



UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (102093); -- 1 5

UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (102093);

DELETE FROM `waypoint_data` WHERE `id` IN (1020930);


UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (102092); -- 1 5
UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (102092);

DELETE FROM `waypoint_data` WHERE `id` IN (1020920);


DELETE FROM `waypoint_data` WHERE `id` IN (1020970);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1020970,1,2758.81,-292.154,130.652,NULL,0,0,0,100,0),
(1020970,2,2777.84,-271.95,131.95,NULL,0,0,0,100,0),
(1020970,3,2758.81,-292.154,130.652,NULL,0,0,0,100,0),
(1020970,4,2773.95,-310.96,130.552,NULL,0,0,0,100,0),
(1020970,5,2783.26,-326.074,130.552,NULL,0,0,0,100,0),
(1020970,6,2788.65,-341.562,130.652,NULL,0,0,0,100,0),
(1020970,7,2787.1,-356.444,130.652,NULL,0,0,0,100,0),
(1020970,8,2782.6,-375.683,130.749,NULL,0,0,0,100,0),
(1020970,9,2787.1,-356.444,130.652,NULL,0,0,0,100,0),
(1020970,10,2788.65,-341.562,130.652,NULL,0,0,0,100,0),
(1020970,11,2783.26,-326.074,130.552,NULL,0,0,0,100,0),
(1020970,12,2773.95,-310.96,130.552,NULL,0,0,0,100,0);

UPDATE `creature` SET `position_x` = 2847.89,`position_y` = -471.277,`position_z` = 126.99,`orientation` = 5.47626,`MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (102090);
UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (102090);

DELETE FROM `waypoint_data` WHERE `id` IN (1020900);


DELETE FROM `smart_scripts` WHERE `entryorguid`=27202 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2720200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27202,0,0,0,0,0,100,0,500,1000,3000,3500,0,0,11,50740,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - In Combat - Cast Raven Flock'),
(27202,0,1,0,2,0,100,0,0,30,14000,18000,0,0,11,50750,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - Between 0-30% Health - Cast Raven Heal'),
(27202,0,2,3,8,0,100,0,48679,0,0,0,0,0,134,48762,2,0,0,0,0,7,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - On Spellhit Banshee\'s Magic Mirror - Cast A Fall from Grace: Scarlet Raven Priest Image - Master'),
(27202,0,3,4,61,0,100,512,0,0,0,0,0,0,11,48648,2,0,0,0,0,7,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - On Spellhit Banshee\'s Magic Mirror - Cast The Perfect Dissemblance: Summon Player\'s Footman & Credit Credit'),
(27202,0,4,5,61,0,100,512,0,0,0,0,0,0,134,48654,2,0,0,0,0,7,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - On Spellhit Banshee\'s Magic Mirror - Cast The Perfect Dissemblance: Summon Priest\'s Footman'),
(27202,0,5,6,61,0,100,512,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - On Spellhit Banshee\'s Magic Mirror - Say Line 2'),
(27202,0,6,0,61,0,100,512,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Raven Priest - On Spellhit Banshee\'s Magic Mirror - Set Faction');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300071,-300072,-102090,-102082) AND `source_type`= 0 AND ID IN (1000);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (27202);

DELETE FROM `creature_text` WHERE `creatureID` IN (27202);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(27202,0,0,'Abbendis will see you purged!',12,0,100,0,0,0,26399,0,'Onslaught Raven Priest'),
(27202,0,1,'You are impure!',12,0,100,0,0,0,26393,0,'Onslaught Raven Priest'),
(27202,0,2,'Gah! What are you doing?',12,0,100,5,0,7256,26637,0,'Onslaught Raven Priest'),
(27202,1,0,'I sense the taint of this land in you, footman.  Report to the Bishop before the start of your next shift.',12,0,100,0,0,0,26256,0,'Onslaught Raven Priest'),
(27202,1,1,'Your protection is strong, child.  Continue your work.',12,0,100,0,0,0,26390,0,'Onslaught Raven Priest'),
(27202,1,2,'The Grand Admiral himself has come to see to our dedication.  If I see you slacking on your post again, I will gut you myself.',12,0,100,0,0,0,26655,0,'Onslaught Raven Priest'),
(27202,1,3,'You require the Bishop\'s blessing.  Go to him soon.',12,0,100,0,0,0,26391,0,'Onslaught Raven Priest'),
(27202,2,0,'HELP! HELP! THIS $g MAN : WOMAN; HAS STOLEN MY IMAGE!',12,0,100,0,0,0,26543,0,'Onslaught Raven Priest');






-- Devout Bodyguard
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-106200,-106201) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2724700,2724701,2724702) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27247,0,0,0,0,0,100,0,4000,7000,10000,15000,0,0,11,38256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Devout Bodyguard - Cast Piercing Howl'),
(27247,0,1,0,38,0,100,512,1,1,0,0,0,0,53,0,27247,0,0,1000,0,1,0,0,0,0,0,0,0,0,'Devout Bodyguard - On data set - Start WP');


DELETE FROM `waypoints` WHERE `entry` IN (27247);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(27247,1,2791.19,-489.913,119.618,NULL,0,'Devout Bodyguard'),
(27247,2,2790.89,-486.461,119.618,NULL,0,'Devout Bodyguard'),
(27247,3,2795.3,-483.051,119.79,NULL,0,'Devout Bodyguard'),
(27247,4,2802.81,-476.778,119.617,NULL,0,'Devout Bodyguard'),
(27247,5,2810.49,-469.102,119.617,NULL,0,'Devout Bodyguard'),
(27247,6,2815.06,-465.838,119.616,NULL,0,'Devout Bodyguard'),
(27247,7,2818.89,-469.552,119.842,NULL,0,'Devout Bodyguard'),
(27247,8,2823,-471.411,124.312,NULL,0,'Devout Bodyguard'),
(27247,9,2827.5,-472.139,128.524,NULL,0,'Devout Bodyguard'),
(27247,10,2830.89,-471.426,131.574,NULL,0,'Devout Bodyguard'),
(27247,11,2834.82,-469.685,135.201,NULL,0,'Devout Bodyguard'),
(27247,12,2839.76,-462.89,135.363,NULL,0,'Devout Bodyguard'),
(27247,13,2838.14,-452.877,135.363,NULL,0,'Devout Bodyguard'),
(27247,14,2831.41,-448.48,135.363,NULL,0,'Devout Bodyguard'),
(27247,15,2823.73,-448.069,135.363,NULL,0,'Devout Bodyguard'),
(27247,16,2817.5,-453.122,135.363,NULL,0,'Devout Bodyguard'),
(27247,17,2815.11,-460.489,135.363,NULL,0,'Devout Bodyguard'),
(27247,18,2818.25,-470.07,135.402,NULL,0,'Devout Bodyguard'),
(27247,19,2822.93,-471.575,140.076,NULL,0,'Devout Bodyguard'),
(27247,20,2824.93,-472.218,142.183,NULL,0,'Devout Bodyguard'),
(27247,21,2828.06,-472.535,145.044,NULL,0,'Devout Bodyguard'),
(27247,22,2830.79,-471.943,147.541,NULL,0,'Devout Bodyguard'),
(27247,23,2834.41,-470.538,150.757,NULL,0,'Devout Bodyguard'),
(27247,24,2837.1,-467.819,150.837,NULL,0,'Devout Bodyguard'),
(27247,25,2832.85,-462.689,150.835,NULL,0,'Devout Bodyguard');

DELETE FROM `creature_formations` WHERE `memberGUID` IN (106200,106201);


DELETE FROM `creature_text` WHERE `CreatureId` IN (27247);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(27247,0,0,'Hey, who rang the bell?',12,0,100,0,0,0,26610,0,'Devout Bodyguard');

UPDATE `creature` SET `spawntimesecs` = 300 WHERE `id1` = 27247;


-- Blacksmith Goodman
UPDATE `creature` SET `position_x` = 2935.83,`position_y` = -359.614,`position_z` = 112.587,`orientation` =-1.653 WHERE `guid` in (104699);
UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` in (104699);


-- Onslaught Workman
UPDATE `creature` SET `position_x` = 2941.79,`position_y` = -349.734,`position_z` = 114.757,`orientation` =6.03714,`MovementType` = 1`wander_distance` = 5 WHERE `guid` in (102444);

DELETE FROM `creature` WHERE `guid` IN (300073);


-- Onslaught Footman
DELETE FROM `creature` WHERE `guid` IN (300050,300051,300052,300053,300054,300055,300056,300057,300058,300059,300060,300061,300062,300063,300064,300065,300066,300067,300068,300069,300070);

UPDATE `creature` SET `position_x` = 2699.9,`position_y` = -197.939,`position_z` = 144.566,`orientation` = 1.29654 WHERE `guid` in (102136);
UPDATE `creature_addon` SET `bytes1` = 0 where `guid` IN (104875);

DELETE FROM `creature_addon` where `guid` IN (300054,300055,300056,300057,300058,300067,300070);

DELETE FROM `waypoint_data` WHERE `id` IN (3000540);



UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (102187); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (102187);

DELETE FROM `waypoint_data` WHERE `id` IN (1021870);



UPDATE `waypoint_data` SET `orientation` = 0,`delay` = 0 WHERE `id` in (1021790) AND `point` = 2;



UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (102167); -- 1 5

DELETE FROM `creature_addon` where `guid` IN (102167);

DELETE FROM `waypoint_data` WHERE `id` IN (1021670);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27405,27406) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2740500,2740600) AND `source_type` = 9;
INSERT INTO `` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27405,0,0,0,54,0,100,512,0,0,0,0,0,0,80,2740500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - On just summoned - Action list'),
(27405,0,1,0,0,0,100,0,2000,2000,28000,28000,0,0,11,50713,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - IC - Unrelenting Onslaught'),

(27406,0,0,0,54,0,100,512,0,0,0,0,0,0,80,2740600,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - On just summoned - Action list'),
(27406,0,1,0,0,0,100,0,2000,2000,28000,28000,0,0,11,50713,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - IC - Unrelenting Onslaught'),

(2740500,9,0,0,0,0,100,0,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Set faction'),
(2740500,9,1,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Talk text1'),
(2740500,9,2,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,21,40,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Start attack'),

(2740600,9,0,0,0,0,100,0,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Set faction'),
(2740600,9,1,0,0,0,100,0,4000,4000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Talk text1'),
(2740600,9,2,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,21,40,0,0,0,0,0,0,0,'Onslaught Footman - Action list - Start attack');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27203) AND `source_type` = 0 AND ID = 1;


-- Stable Master Mercer
UPDATE `creature` SET `MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (104875); -- 1 5

UPDATE `creature_addon` SET `path_id` = 0 where `guid` IN (104875);

DELETE FROM `waypoint_data` WHERE `id` IN (1048750);



-- Onlsaught Deckhand
UPDATE `creature` SET `position_x` = 2475.69,`position_y` = -395.855,`position_z` = 7.91922 WHERE `guid` in (86563);

UPDATE `creature` SET `position_x` = 2529.45,`position_y` = -423.115,`position_z` = 3.17822,`orientation` = 4.21468,`MovementType` = 1,`wander_distance` = 5 WHERE `guid` in (86381);

DELETE FROM `creature_addon` where `guid` IN (86381);


-- Foreman Kaleiki
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27238) AND `source_type` = 0 AND ID in (2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27238,0,2,3,11,0,100,512,0,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Foreman Kaleiki - On Spawn - Set Faction'),
(27238,0,3,0,61,0,100,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Foreman Kaleiki - Linked with Previous Event - Say');

-- Levine Family Termite Bunny
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27353) AND `source_type` = 0;
(27353,0,0,0,11,0,100,0,0,0,0,0,0,0,12,27238,2,120000,0,0,0,8,0,0,0,0,2802.38,-199.922,139.161,3.57586,'Levine Family Termite Bunny - On Spawn - Summon Foreman Kaleiki');


-- Quest Fixes

-- The Perfect Dissemblance (12260)
-- Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_cancel_banshees_magic_mirror';





-- A Fall From Grace (12274)
-- Disguise stuff
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_dragonblight_scarlet_raven_priest_image_master','spell_dragonblight_cancel_scarlet_raven_priest_image');

UPDATE `quest_template_addon` SET `SourceSpellID` = 48774,`SpecialFlags` = 0 WHERE `ID` = 12274;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27350 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27350,0,0,1,62,0,100,0,9501,0,0,0,0,0,134,48762,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Agent Skully - Offer cover renewal during A Fall from Grace'),
(27350,0,1,0,61,0,100,512,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Agent Skully - Close Gossip');







-- Bell stuff
UPDATE `gameobject_template` SET `Data3`=5000 WHERE `entry`=188713; -- Delay added was 5000

DELETE FROM `smart_scripts` WHERE `entryorguid` = 188713 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188713,1,0,1,70,0,100,0,2,0,0,0,0,0,1,0,0,0,0,0,0,10,102082,27202,0,0,0,0,0,0,'On Just Deactivated - Talk'),
(188713,1,1,2,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,106200,27247,0,0,0,0,0,0,'On Just Deactivated - Set Data'),
(188713,1,2,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,106201,27247,0,0,0,0,0,0,'On Just Deactivated - Set Data');

DELETE FROM `smart_scripts` WHERE `entryorguid` = -100277 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2411000 AND `source_type` = 9;


DELETE FROM `smart_scripts` WHERE `entryorguid` = -102082 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2720202,2720203) AND `source_type` = 9;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27245 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27245,0,0,0,62,0,100,512,9536,0,0,0,0,0,11,48756,2,0,0,0,0,7,0,0,0,0,0,0,0,0,'On Gossip Select - Cast Spell');

DELETE FROM `creature_text` WHERE `CreatureID` = 27245;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-106200,-106201) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2724700,2724701) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` = 27247;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(27247,0,0,'Hey, who rang the bell?',12,0,100,0,0,0,26610,0,'Devout Bodyguard');



-- AT
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4987 AND `source_type` = 2;

DELETE FROM `smart_scripts` WHERE `entryorguid` = -98593 AND `source_type` = 0;


-- Final part (no, he doesn't use vehicle for jump)
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27439 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2743900,2743901) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27439,0,0,0,60,0,100,1,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'On Update - Talk'),
(27439,0,1,0,60,0,100,513,4000,4000,0,0,0,0,53,0,27439,0,0,0,0,1,0,0,0,0,0,0,0,0,'On Update - Start WP'),
(27439,0,2,0,40,0,100,513,13,0,0,0,0,0,80,2743900,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'On WP Reach - Script9'),

(2743900,9,0,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.05,'Script9 - Set Orientation'),
(2743900,9,1,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,21,30,0,0,0,0,0,0,0,'Script9 - Talk'),
(2743900,9,2,0,0,0,100,0,6000,6000,0,0,0,0,1,2,0,0,0,0,0,21,30,0,0,0,0,0,0,0,'Script9 - Talk'),
(2743900,9,3,0,0,0,100,0,6000,6000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(2743900,9,4,0,0,0,100,0,8000,8000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(2743900,9,5,0,0,0,100,0,7000,7000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(2743900,9,6,0,0,0,100,0,0,0,0,0,0,0,11,48771,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Cast Spell'),
(2743900,9,7,0,0,0,100,0,0,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Despawn'),
(2743900,9,8,0,0,0,100,0,0,0,0,0,0,0,97,20,20,0,0,0,0,1,0,0,0,0,2711,-562,15,4.1,'Script9 - Jump to pos');


DELETE FROM `waypoints` WHERE `entry` = 27439;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(27439,1,2827.21,-424.453,119.893,NULL,0,'High Abbot Landgren'),
(27439,2,2827.16,-419.978,118.196,NULL,0,'High Abbot Landgren'),
(27439,3,2828.83,-412.829,118.196,NULL,0,'High Abbot Landgren'),
(27439,4,2812.67,-412.411,118.196,NULL,0,'High Abbot Landgren'),
(27439,5,2800.29,-424.385,118.196,NULL,0,'High Abbot Landgren'),
(27439,6,2785.86,-439.541,118.196,NULL,0,'High Abbot Landgren'),
(27439,7,2782.81,-448.413,118.196,NULL,0,'High Abbot Landgren'),
(27439,8,2776.84,-465.826,116.141,NULL,0,'High Abbot Landgren'),
(27439,9,2771.2,-482.246,115.963,NULL,0,'High Abbot Landgren'),
(27439,10,2765.42,-489.182,113.692,NULL,0,'High Abbot Landgren'),
(27439,11,2758.69,-497.246,109.831,NULL,0,'High Abbot Landgren'),
(27439,12,2742.53,-515.063,103.642,NULL,0,'High Abbot Landgren'),
(27439,13,2736.68,-524.16,102.781,NULL,0,'High Abbot Landgren');



-- Bombard the Ballistae (12232)
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_bombard_the_ballistae_fx_master';


DELETE FROM `smart_scripts` WHERE `entryorguid` = 27331 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2733100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27331,0,0,1,8,0,100,512,48345,0,0,0,0,0,33,27331,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Bombard the Ballistae Kill Credit Bunny - On Spellhit \'Siegesmith Bombs\' - Quest Credit \'Bombard the Ballistae\''),
(27331,0,1,0,61,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bombard the Ballistae Kill Credit Bunny - On Spellhit \'Siegesmith Bombs\' - Despawn Instant');



-- Without a Prayer (12254)
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27246 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2724600 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(27246,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Out of Combat - Disable Combat Movement'),
(27246,0,1,2,4,0,100,1,0,0,0,0,0,0,11,20820,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bishop Street - On Aggro - Cast \'Holy Smite\' (No Repeat)'),
(27246,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - On Aggro - Increment Phase By 1 (No Repeat)'),
(27246,0,3,0,9,1,100,0,0,0,3400,4800,0,40,11,20820,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bishop Street - Within 0-40 Range - Cast \'Holy Smite\' (No Repeat)'),
(27246,0,4,5,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(27246,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(27246,0,6,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(27246,0,7,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(27246,0,8,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(27246,0,9,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(27246,0,10,0,0,0,100,0,12000,16000,45000,55000,0,0,11,11974,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - In Combat - Cast \'Power Word: Shield\' (Phase 1) (No Repeat)'),
(27246,0,11,0,10,0,100,0,0,40,45000,55000,0,0,1,0,7000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - OOC Los - Say Line 1'),
(27246,0,12,0,52,0,100,0,0,27246,0,0,0,0,1,1,7000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - On Text Over Line 1 - Say Line 2'),
(27246,0,13,0,4,0,100,0,0,0,0,0,0,0,1,2,7000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bishop Street - On Agro Say Line 3');


DELETE FROM `smart_scripts` WHERE `entryorguid` = 4984 AND `source_type` = 2;

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4984;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4984 AND `SourceId` = 2;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 48183;