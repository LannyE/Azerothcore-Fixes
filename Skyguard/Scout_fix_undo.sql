/*
 Implement the RP Event at the Skyguard Outpost 6-27-26
 -- Includes Tork Event
 - New Creature GUID: 300233,300234,300235,300236,300237,300238,300239,300240,300241,300242,300243
 - New Spawn Group: 42304
*/
-- Ancient Raven-Priest
DELETE FROM `creature_template_addon` where `entry` in (22933);


-- Mailbox
-- UPDATE `gameobject_template` SET `AIName` = "" WHERE `entry` in (185965);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-929) AND `source_type` = 1 AND `id` IN (2,3,4,5,6,7);


-- Bonfire 
UPDATE `gameobject_template` SET `Data2` = 0,`AIName` = "",`ScriptName` = 'go_flames'  where entry = 183421; -- 0 '' go_flames  -- remove the need for a script that burns players standing in a fire to use the actual 2061 the client uses to do it. 


-- Ogri'la Crystal Smoke Image
DELETE FROM `gameobject` WHERE `guid` IN (300007,300008,300009);


-- Kronk
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23253); -- ''

UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` in (23253); -- NULL
UPDATE `creature` SET `position_z` = 365.462 WHERE `guid` = 91790; -- 365.462

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23253) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23253);


-- Gahk
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23300); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23300) AND `source_type` = 0 AND `id` IN (0,1,2);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23300);


-- Invisible Stalker (Floating)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 11 AND `SourceEntry` = 23033 AND `SourceId` = 0 AND `ConditionTypeOrReference` = 23;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23033) AND `source_type` = 0 AND `id` = 10;


-- Blade's Edge Invisible Stalker
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (21234); -- ''

DELETE FROM `creature` WHERE `guid` IN (300246,300247,300248);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (11,13) AND `SourceEntry` = 21234 AND `SourceId` = 0 AND `ConditionTypeOrReference` = 23;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (21234) AND `source_type` = 0 AND `id` IN (10,11,12);


-- Ogre Smoke Image
UPDATE `creature_template` SET `difficulty_entry_1` = 30795,`unit_flags` = 0,`AIName`='' WHERE `entry` in (23088); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23088) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2308800) AND `source_type` = 9;


-- Ogre Smoke Image (1)
UPDATE `creature_template` SET `unit_flags` = 0,`AIName`='' WHERE `entry` in (30795); -- ''

DELETE FROM `creature_equip_template` WHERE `CreatureID` in (30795);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (30795) AND `source_type` = 0;


-- Felguard Smoke Image
UPDATE `creature_template` SET `unit_flags` = 0,`AIName`='' WHERE `entry` in (23252); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23252) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2325200) AND `source_type` = 9;


-- Ethereal Smoke Image
UPDATE `creature_template` SET `unit_flags` = 0,`AIName`='' WHERE `entry` in (23189); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23189) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2318900) AND `source_type` = 9;


-- Black Dragon Smoke Image
UPDATE `creature_template` SET `unit_flags` = 0,`AIName`='SmartAI' WHERE `entry` in (23190); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23190) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2319000) AND `source_type` = 9;


-- Orgi'la Storyteller
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23256); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23256) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2325600,2325601,2325602) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23256);

DELETE FROM `waypoint_data` WHERE `id` IN (232560,232561);


-- Orgi'la Peacekeeper
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23115); -- ''

UPDATE `creature` SET `position_x` = 2333.61,`position_y` = 7249.68,`position_z` = 365.79187,`orientation` = 2.95667 WHERE `guid` = 78265; -- 2333.61 Y: 7249.68 Z: 365.79187 2.95667

DELETE FROM `creature` WHERE `guid` IN (300244,300245);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23115) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23115);

DELETE FROM `waypoint_data` WHERE `id` IN (231150);


-- Joh'nass
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (91780); -- 0 0

UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23428); -- ''

UPDATE `creature` SET `position_x` = 2278.7,`position_y` = 7330.6,`position_z` = 366.763,`orientation` = 5.46139 WHERE `guid` = 91780; -- 2278.7 Y: 7330.6 Z: 366.763 5.46139

DELETE FROM `creature_addon` where `guid` in (91780);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23428) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2342800) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23428);

DELETE FROM `waypoint_data` WHERE `id` IN (234280);


-- Chu'a'lor
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23233); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23233) AND `source_type` = 0 AND `id` IN (0,1,2);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23233);


-- Ogri'la Grubgiver
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (22266); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22266) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (22266);


-- Ogri'la Steelshaper
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (22264); -- ''

UPDATE `creature` SET `position_x` = 2331.76,`position_y` = 7242.9,`position_z` = 365.668,`orientation` = 0.446133 WHERE `guid` = 91785;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22264) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (22264);


-- Ogri'la Keg King
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23110); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23110) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23110);


-- Ogri'la Trader
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (22271); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22271) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (22271);


-- Ogri'la Merchant
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (22270); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22270) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (22270);


-- Mingo
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23112); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23112) AND `source_type` = 0 AND `id` IN (0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23112);


-- Torki
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23362); -- ''

UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (91789); -- 0 0

UPDATE `creature` SET `position_x` = 2285.18,`position_y` = 7279.5,`position_z` = 365.863,`orientation` = 0.353965 WHERE `guid` = 91789;

DELETE FROM `creature_addon` where `guid` in (91789);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(91789,233620,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23362) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2336200) AND `source_type` = 9;

DELETE FROM `waypoint_data` WHERE `id` IN (233620);


-- Torkus
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23316); -- ''

UPDATE `creature` SET `position_x` = 2315.89,`position_y` = 7304.39,`position_z` = 366.92,`orientation` = 5.01167 WHERE `guid` = 91793; -- 2315.89 Y: 7304.39 Z: 366.92 5.01167

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23316) AND `source_type` = 0 AND `id` IN (1,2);


-- Tork 
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23347); -- ''

UPDATE `creature` SET `position_x` = 2324.72,`position_y` = 7307.82,`position_z` = 365.622,`orientation` = 4.25764  WHERE `guid` = 91788; -- 2324.72 Y: 7307.82 Z: 365.622 4.25764 

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23347) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2334700,2334701,2334702,2334703,2334704) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23347);

DELETE FROM `waypoint_data` WHERE `id` IN (233470,233471);


-- Sky Sergeant Vanderlip
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23120); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23120) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23120);


-- Skyguard Pyrotechnician
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 0 WHERE `guid` in (48166); -- 0 0

DELETE FROM `creature_addon` where `guid` in (48166);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23208) AND `source_type` = 0 AND `id` IN (0,1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2320800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23208,0,0,0,10,0,100,0,1,10,300000,300000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - OOC LOS - Say');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23208);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23208,0,0,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Skyguard Pyrotechnician');

DELETE FROM `waypoint_data` WHERE `id` IN (232080);


-- Skyguard Navigator
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (22982); -- 0

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = 22982 AND `ConditionTypeOrReference` = 5;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,22982,0,0,5,0,1031,128,0,0,0,0,'','requires shatari skyguard exhalted');

DELETE FROM `creature` WHERE `guid` IN (300233,300234,300235);

DELETE FROM `creature_template_addon` where `entry` in (22982);

DELETE FROM `creature_equip_template` where `CreatureID` = 22982 AND `ID` = 2;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22982,-300233,-300234,-300235) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2298200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22982,0,0,0,10,0,100,0,1,10,150000,150000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Navigator - OOC LOS - Say');

DELETE FROM `waypoint_data` WHERE `id` IN (229820);

DELETE FROM `creature_text` WHERE `CreatureID` IN (22982);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22982,0,0,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Skyguard Navigator'),
(22982,0,1,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Navigator'),
(22982,0,3,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Navigator'),
(22982,0,4,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Navigator'),
(22982,0,5,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Skyguard Navigator'),
(22982,0,6,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Skyguard Navigator');


-- Skyguard Scout
UPDATE `creature_template` SET `HoverHeight` = 1,`AIName`='',`flags_extra` = 0 WHERE `entry` in (22980); -- 0

DELETE FROM `creature_template_movement` where `CreatureId` IN (22980);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(22980,1,1,1,0,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300236,300237,300238);

DELETE FROM `creature_template_addon` where `entry` in (22980);

DELETE FROM `spawn_group` where `groupId` IN (42304);

DELETE FROM `spawn_group_template` where `groupId` IN (42304);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22980) AND `source_type` = 0 AND `id` IN (0,1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300236,-300237,-300238) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2298000,2298001,2298002,2298003,2298004,2298005,2298006,2298007) AND `source_type` = 9;

DELETE FROM `waypoint_data` WHERE `id` IN (229800,229801,229802,229803,229804,229805,229806,229807);


-- Skyguard Windcharger
UPDATE `creature` SET `position_x` = 2491.85,`position_y` = 7325.25,`position_z` = 369.216,`orientation` = 3.03598 WHERE `guid` = 79497;

DELETE FROM `creature` WHERE `guid` IN (300239,300240,300241,300242,300243);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = 23257 AND `ConditionTypeOrReference` = 5;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,23257,0,0,5,0,1031,128,0,0,0,0,'','requires shatari skyguard exhalted');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23257) AND `source_type` = 0 AND `id` IN (0,1);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23257);
INSERT INTO `creature_tex` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23257,0,0,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Skyguard Windcharger'),
(23257,0,1,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Windcharger'),
(23257,0,2,'A-TEN-HUT, officer $n on the deck!',12,0,100,0,0,0,21891,0,'Skyguard Windcharger'),
(23257,0,3,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Skyguard Windcharger'),
(23257,0,4,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Windcharger'),
(23257,0,5,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Skyguard Windcharger'),
(23257,0,6,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Windcharger'),
(23257,0,7,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Skyguard Windcharger'),
(23257,0,8,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Skyguard Windcharger'),
(23257,0,9,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Skyguard Windcharger');


-- Skyguard Khatie
DELETE FROM `spell_area` where `spell` in (41574,41523) AND `area` IN (3519,3522);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceGroup` IN (0) AND `SourceEntry` IN (41574,41523)  AND `ConditionTypeOrReference` IN (5);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (3,4,5,6,7) AND `SourceEntry` = 23335 AND `ConditionTypeOrReference` IN (26,31,34);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,3,23335,0,0,26,1,2,0,0,1,0,0,'','Run Action if me is not in phase 2'),
(22,3,23335,0,0,31,0,4,0,0,0,0,0,'','Run Action if invoker is a player'),
(22,3,23335,0,0,34,1,0,8,0,0,0,0,'','Run Action if invoker is neutral to me'),
(22,4,23335,0,0,26,1,2,0,0,1,0,0,'','Run Action if me is not in phase 2'),
(22,4,23335,0,0,31,0,4,0,0,0,0,0,'','Run Action if invoker is a player'),
(22,4,23335,0,0,34,1,0,16,0,0,0,0,'','Run Action if invoker is friendly to me'),
(22,5,23335,0,0,26,1,2,0,0,1,0,0,'','Run Action if me is not in phase 2'),
(22,5,23335,0,0,31,0,4,0,0,0,0,0,'','Run Action if invoker is a player'),
(22,5,23335,0,0,34,1,0,32,0,0,0,0,'','Run Action if invoker is honored to me'),
(22,6,23335,0,0,26,1,2,0,0,1,0,0,'','Run Action if me is not in phase 2'),
(22,6,23335,0,0,31,0,4,0,0,0,0,0,'','Run Action if invoker is a player'),
(22,6,23335,0,0,34,1,0,64,0,0,0,0,'','Run Action if invoker is revered to me'),
(22,7,23335,0,0,26,1,2,0,0,1,0,0,'','Run Action if me is not in phase 2'),
(22,7,23335,0,0,31,0,4,0,0,0,0,0,'','Run Action if invoker is a player'),
(22,7,23335,0,0,34,1,0,128,0,0,0,0,'','Run Action if invoker is exalted to me');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (3) AND `SourceEntry` IN (23335)  AND `ConditionTypeOrReference` IN (29);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23335) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2333500,2333501,2333502,2333503,2333504) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23335,0,0,0,20,0,100,512,11065,0,0,0,0,0,41,5000,0,0,0,0,0,11,23343,15,0,0,0,0,0,0,'Skyguard Khatie - On Quest Reward Wrangle More Aether Rays! - Despawn Target'),
(23335,0,1,0,20,0,100,512,11066,0,0,0,0,0,41,5000,0,0,0,0,0,11,23343,15,0,0,0,0,0,0,'Skyguard Khatie - On Quest Reward Wrangle More Aether Rays! - Despawn Target'),
(23335,0,2,7,10,0,100,512,1,20,5000,5000,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Store Target'),
(23335,0,3,8,10,0,100,512,1,20,5000,5000,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Store Target'),
(23335,0,4,9,10,0,100,512,1,20,5000,5000,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Store Target'),
(23335,0,5,10,10,0,100,512,1,20,5000,5000,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Store Target'),
(23335,0,6,11,10,0,100,512,1,20,5000,5000,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Store Target'),
(23335,0,7,0,61,0,100,512,0,0,0,0,0,0,80,2333500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Start Script'),
(23335,0,8,0,61,0,100,512,0,0,0,0,0,0,80,2333501,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Start Script'),
(23335,0,9,0,61,0,100,512,0,0,0,0,0,0,80,2333502,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Start Script'),
(23335,0,10,0,61,0,100,512,0,0,0,0,0,0,80,2333503,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Start Script'),
(23335,0,11,0,61,0,100,512,0,0,0,0,0,0,80,2333504,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - On OOC Los - Start Script'),
(2333500,9,0,0,0,0,100,0,0,0,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333500,9,1,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Talk Neutral'),
(2333500,9,2,0,0,0,100,0,120000,120000,0,0,0,0,44,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333501,9,0,0,0,0,100,0,0,0,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333501,9,1,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Talk Friendly'),
(2333501,9,2,0,0,0,100,0,120000,120000,0,0,0,0,44,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333502,9,0,0,0,0,100,0,0,0,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333502,9,1,0,0,0,100,0,0,0,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Talk Honored'),
(2333502,9,2,0,0,0,100,0,120000,120000,0,0,0,0,44,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333503,9,0,0,0,0,100,0,0,0,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333503,9,1,0,0,0,100,0,0,0,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Talk Revered'),
(2333503,9,2,0,0,0,100,0,120000,120000,0,0,0,0,44,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333504,9,0,0,0,0,100,0,0,0,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask'),
(2333504,9,1,0,0,0,100,0,0,0,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Talk Exalted'),
(2333504,9,2,0,0,0,100,0,120000,120000,0,0,0,0,44,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Script9 - Set Phase Mask');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23335);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23335,0,0,'You\'re a peach!  I\'ll make sure that the ray is properly cared for.',12,0,100,0,0,0,21371,0,'Skyguard Khatie'),
(23335,0,1,'Wow!  Thanks for bringing it all the way back here.  You didn\'t have to do that.',12,0,100,0,0,0,21370,0,'Skyguard Khatie'),
(23335,1,0,'Hey there, $c!$B$B<Khatie looks at you slyly.>$B$BAnytime you want to wrangle us up some more aether rays, you make sure to come and see me!',12,0,100,1,0,0,21583,0,'Skyguard Khatie Friendly'),
(23335,2,0,'You know, $n, it\'s such an honor to work with you!$B$BWhen you\'re not busy wrangling, maybe we could $g go out some place for dinner? : get together for a girl\'s night?;$B$BOh, did I mention that we can now get you to our base in the Skethyl Mountains real quick?  If you want, speak with Skyguard Handler Irena about that.',12,0,100,1,0,0,21586,0,'Skyguard Khatie Honored'),
(23335,3,0,'So, you\'ve been around a lot, but we seem to keep missing each other for getting together after work.$B$BIs it me?$B$B<Khatie purposely cheers up.>$B$BAnyway, I just wanted to say that I... we really appreciate everything that you\'ve been doing for the Skyguard!',12,0,100,6,0,0,21587,0,'Skyguard Khatie Revered'),
(23335,4,0,'I hope you don\'t think I\'m a stalker, or anything like that, $n.$B$BI mean, I know that you\'re real famous within the Skyguard now, and well... I\'m sure that you wouldn\'t want to hang out with a lowly peon like me.$B$BBut, if you ever want to get together to just hang out, or even wrangle some more rays, drop by anytime!  I\'ll be here.$B$BI miss you...',12,0,100,1,0,0,21588,0,'Skyguard Khatie Exalted');


-- Sky Commander Adaris and Severin need RP and Text

-- Sky Sergeant Doryn
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23048); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23048) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23048);


-- Grella 
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23367); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23367) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23367);


-- Skyguard Handler Deesak 
UPDATE `creature_template` SET `AIName`='' WHERE `entry` in (23415); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23415) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23415);