/*
 Implement the RP Event at the Skyguard Outpost 6-27-26
 Implement all of Ogri'la RP Events
 Implement all revered Faction texts
 Ancient Raven-Priest should not be visible normally. Added aura.  
 -- Includes Tork Event
 - New Creature GUID: 300233,300234,300235,300236,300237,300238,300239,300240,300241,300242,300243,300244,300245,300246,300247,300248
 - New Gameobject: 300007,300008,300009
 - New Spawn Group: 42304
 -- (Gossip good) Kronk, Torkus, Gahk, Chu'a'lor, Peacekeeper, Ogri'la Storyteller
*/
-- Ancient Raven-Priest
DELETE FROM `creature_template_addon` where `entry` in (22933);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(22933,0,0,0,0,0,0,39680);


-- Mailbox
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` in (185965); -- 929

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-929) AND `source_type` = 1 AND `id` IN (2,3,4,5,6,7);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-929,1,2,3,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Respawn - Set Active'),
(-929,1,3,0,61,0,100,0,0,0,0,0,0,0,131,42304,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Respawn (Linked) - Spawn SpawnGroup'),
(-929,1,4,5,38,0,100,0,1,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Data Set 1 0 - Set Phase 1'),
(-929,1,5,0,61,0,100,0,0,0,0,0,0,0,132,42304,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Data Set 1 0 (Linked) - Despawn SpawnGroup'),
(-929,1,6,7,1,1,100,0,45000,45000,45000,45000,0,0,131,42304,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - OOC (Phase 1) - Spawn SpawnGroup'),
(-929,1,7,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - OOC (Phase 1) (Linked) - Set Phase 2');


-- Bonfire 
UPDATE `gameobject_template` SET `Data2` = 2061,`ScriptName` = ''  where entry = 183421; -- 0 '' go_flames  -- remove the need for a script that burns players standing in a fire to use the actual 2061 the client uses to do it. 


-- Ogri'la Crystal Smoke Image
DELETE FROM `gameobject` WHERE `guid` IN (300007,300008,300009);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`,`Comment`) VALUES 
(300007,185901,530,0,0,1,1,2320.5,7295.9501953125,373.2900085449219,4.956739902496338,0.00000000000000000000,0.00000000000000000000,-0.61566102504730220000,0.7880110144615173,-45,255,1,'',45942,NULL),
(300008,185901,530,0,0,1,1,2322.85009765625,7293.7900390625,373.4219970703125,2.9321401119232178,0.00000000000000000000,0.00000000000000000000,0.99452102184295650000,0.10453499853610992,-45,255,1,'',45942,NULL),
(300009,185901,530,0,0,1,1,2319.3701171875,7293.31005859375,373.53399658203125,0.5235980153083801,0.00000000000000000000,0.00000000000000000000,0.25881901383399963000,0.9659259915351868,-45,255,1,'',45942,NULL);


-- Kronk
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23253); -- ''

UPDATE `creature_template_addon` SET `auras` = 40570 WHERE `entry` in (23253); -- NULL
UPDATE `creature` SET `position_z` = 368.65399169921875 WHERE `guid` = 91790; -- 365.462

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23253) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23253,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Kronk - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23253);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23253,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Kronk'),
(23253,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Kronk'),
(23253,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Kronk'),
(23253,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Kronk'),
(23253,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Kronk'),
(23253,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Kronk'),
(23253,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Kronk'),
(23253,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Kronk'),
(23253,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Kronk'),
(23253,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Kronk'),
(23253,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Kronk'),
(23253,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Kronk'),
(23253,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Kronk'),
(23253,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Kronk'),
(23253,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Kronk'),
(23253,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Kronk'),
(23253,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Kronk'),
(23253,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Kronk'),
(23253,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Kronk'),
(23253,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Kronk'),
(23253,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Kronk'),
(23253,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Kronk'),
(23253,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Kronk'),
(23253,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Kronk');


-- Gahk
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23300); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23300) AND `source_type` = 0 AND `id` IN (0,1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23300,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gahk - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0'),
(23300,0,1,0,38,0,100,0,1,0,0,0,0,0,66,0,0,0,0,0,0,10,91792,23256,0,0,0,0,0,0,'Gahk - On Data Set 1 0 - Set Orientation on \'Orgi\'la Storyteller\''),
(23300,0,2,0,38,0,100,0,1,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.86771,'Gahk - On Data Set 1 1 - Set Orientation');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23300);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23300,0,0,'Look, it $n!',12,0,100,0,0,0,21854,0,'Gahk'),
(23300,0,1,'$n, slay dragon?',12,0,100,0,0,0,21855,0,'Gahk'),
(23300,0,2,'We glad, little $g brother : sister; $n here.',12,0,100,0,0,0,21856,0,'Gahk'),
(23300,0,3,'$n take out forge camp all by $g himself : herself;!',12,0,100,0,0,0,21857,0,'Gahk'),
(23300,0,4,'$n here... we not worry \'bout Burning Legion any more.',12,0,100,0,0,0,21858,0,'Gahk'),
(23300,0,5,'$n, $g king : queen; of da ogres here!',12,0,100,0,0,0,21859,0,'Gahk'),
(23300,0,6,'Thanks, $n.',12,0,100,0,0,0,21860,0,'Gahk'),
(23300,0,7,'$n is Gahk\'s $g hero : heroine;!',12,0,100,0,0,0,21861,0,'Gahk'),
(23300,0,8,'How $n today?',12,0,100,0,0,0,21862,0,'Gahk'),
(23300,0,9,'Gahk like $n!',12,0,100,0,0,0,21863,0,'Gahk'),
(23300,0,10,'$n, Gahk\'s friend.',12,0,100,0,0,0,21864,0,'Gahk'),
(23300,0,11,'Gahk hope $n stay a while.  $n visit Gahk later.',12,0,100,0,0,0,21865,0,'Gahk'),
(23300,0,12,'$n smash da demons.  Save Ogri\'la!',12,0,100,0,0,0,21866,0,'Gahk'),
(23300,0,13,'Little $n crush all da demons.',12,0,100,0,0,0,21867,0,'Gahk'),
(23300,0,14,'Gahk hear dat $n know how use da apexis relics!',12,0,100,0,0,0,21868,0,'Gahk'),
(23300,0,15,'Yous all listen ta $n!',12,0,100,0,0,0,21869,0,'Gahk'),
(23300,0,16,'Da Gronn... da Legion... $n beat dem all!',12,0,100,0,0,0,21931,0,'Gahk'),
(23300,0,17,'Da crystals sing da perdy song when little $n here.',12,0,100,0,0,0,21932,0,'Gahk'),
(23300,0,18,'Da dragons get scared when yous say $n\'s name.',12,0,100,0,0,0,21933,0,'Gahk'),
(23300,0,19,'Da crystals make $n smarter.',12,0,100,0,0,0,21934,0,'Gahk'),
(23300,0,20,'$n!  Da crystals sing about you!',12,0,100,0,0,0,21935,0,'Gahk'),
(23300,0,21,'Gahk owe little $n much thanks.',12,0,100,0,0,0,21936,0,'Gahk'),
(23300,0,22,'We still here cuz $n help Ogri\'la!',12,0,100,0,0,0,21947,0,'Gahk'),
(23300,0,23,'$n da mighty $c is my little $g brother : sister;!',12,0,100,0,0,0,21948,0,'Gahk');


-- Invisible Stalker (Floating)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 11 AND `SourceEntry` = 23033 AND `SourceId` = 0 AND `ConditionTypeOrReference` = 23;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,11,23033,0,0,23,1,3786,0,0,0,0,0,'','Smart Event ID 0 only runs if Creature 23033 is in Area 3786 (Ogri''la)');

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23033) AND `source_type` = 0 AND `id` = 10;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23033,0,10,0,54,0,100,0,0,0,0,0,0,0,11,37248,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Invisible Stalker (Floating) - On Just Summoned - Cast \'Power Converters: Electromental Visual\' (Condition)'); -- condition Ogri'la only


-- Blade's Edge Invisible Stalker
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (21234); -- ''

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (11,13) AND `SourceEntry` = 21234 AND `SourceId` = 0 AND `ConditionTypeOrReference` = 23;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,11,21234,0,0,23,1,3786,0,0,0,0,0,'','Smart Event ID 10 only runs if Creature 21234 is in Area 3786 (Ogri''la)'),
(22,13,21234,0,0,23,1,3786,0,0,0,0,0,'','Smart Event ID 12 only runs if Creature 21234 is in Area 3786 (Ogri''la)');

DELETE FROM `creature` WHERE `guid` IN (300246,300247,300248);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300246,21234,530,0,0,1,1,0,2320.530029296875,7293.10986328125,365.5150146484375,3.647739887237549,300,0,0,42,0,0,0,0,0,'',0,0,NULL),
(300247,21234,530,0,0,1,1,0,2322.449951171875,7300.3701171875,365.70001220703125,0.541051983833313,300,0,0,42,0,0,0,0,0,'',0,0,NULL),
(300248,21234,530,0,0,1,1,0,2320.3701171875,7293,367.17999267578125,3.3335800170898438,300,0,0,42,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (21234) AND `source_type` = 0 AND `id` IN (10,11,12);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21234,0,10,11,54,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - On Just Summoned - Set Root On (Condition)'), -- condition
(21234,0,11,0,61,0,100,0,0,0,0,0,0,0,11,37746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - On Just Summoned (Linked) - Cast \'Hookah Smoke\' (Condition)'), -- condition
(21234,0,12,0,38,0,100,0,10,10,0,0,0,0,11,40116,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - On Data Set 10 10 - Cast \'Copy of Lava Spout Totem (Rank 1)\' (Condition)');

-- This doesn't do anything in game CMangos
/*
(-300248,0,1000,0,11,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - On Respawn - Set Phase 2'),
(-300248,0,1001,0,38,0,100,0,1,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - On Data Set 1 0 - Set Phase 1'),
(-300248,0,1002,0,1,0,100,1,0,0,4000,7000,0,0,11,40114,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - OOC (Phase 1) - Cast \'Copy of Flame Wave (Phase 1)\''), -- this doesn't make sense does it just want to do it once? then just do it with the data set 1 0
(-300248,0,1003,0,38,0,100,0,1,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blade\'s Edge Invisible Stalker - On Data Set 1 1 - Set Phase 2');
*/


-- Ogre Smoke Image
UPDATE `creature_template` SET `difficulty_entry_1` = 0,`unit_flags` = 33555202,`AIName`='SmartAI' WHERE `entry` in (23088); -- ''

DELETE FROM `creature_template_movement` where `CreatureId` IN (23088);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23088,1,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23088) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2308800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23088,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2308800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Summon - Run Script'),

(2308800,9,0,0,0,0,100,0,0,0,0,0,0,0,4,396,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Play Sound 396'),
(2308800,9,1,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2308800,9,2,0,0,0,100,0,12000,12000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2308800,9,3,0,0,0,100,0,3000,3000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,4,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2308800,9,5,0,0,0,100,0,3000,3000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,6,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2308800,9,7,0,0,0,100,0,2000,2000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,8,0,0,0,100,0,0,0,0,0,0,0,12,30795,1,300000,0,0,0,8,0,0,0,0,2322.04,7293.37,369.6,4.85202,'Ogre Smoke Image - On Script - Summon \'Ogre Smoke Image (1)\''),
(2308800,9,9,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2308800,9,10,0,0,0,100,0,2000,2000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,11,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2308800,9,12,0,0,0,100,0,3000,3000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,13,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2308800,9,14,0,0,0,100,0,1000,1000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,15,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.304904,'Ogre Smoke Image - On Script - Set Orientation'),
(2308800,9,16,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Set Data 1 0 on \'Ogre Smoke Image (1)\''),
(2308800,9,17,0,0,0,100,0,1000,1000,0,0,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotBattleRoar\''),
(2308800,9,18,0,0,0,100,0,0,0,0,0,0,0,5,45,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotReady1H\' on \'Ogre Smoke Image (1)\''),
(2308800,9,19,0,0,0,100,0,1000,1000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,20,0,0,0,100,0,0,0,0,0,0,0,5,36,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\' on \'Ogre Smoke Image (1)\''),
(2308800,9,21,0,0,0,100,0,2000,2000,0,0,0,0,5,389,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttackOff\''),
(2308800,9,22,0,0,0,100,0,0,0,0,0,0,0,5,37,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2HTight\' on \'Ogre Smoke Image (1)\''),
(2308800,9,23,0,0,0,100,0,3000,3000,0,0,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotBattleRoar\''),
(2308800,9,24,0,0,0,100,0,0,0,0,0,0,0,5,45,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotReady1H\' on \'Ogre Smoke Image (1)\''),
(2308800,9,25,0,0,0,100,0,3000,3000,0,0,0,0,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2Loose\''),
(2308800,9,26,0,0,0,100,0,0,0,0,0,0,0,5,36,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\' on \'Ogre Smoke Image (1)\''),
(2308800,9,27,0,0,0,100,0,3000,3000,0,0,0,0,5,389,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttackOff\''),
(2308800,9,28,0,0,0,100,0,0,0,0,0,0,0,5,37,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack2HTight\' on \'Ogre Smoke Image (1)\''),
(2308800,9,29,0,0,0,100,0,2000,2000,0,0,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotBattleRoar\''),
(2308800,9,30,0,0,0,100,0,0,0,0,0,0,0,5,45,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotReady1H\' on \'Ogre Smoke Image (1)\''),
(2308800,9,31,0,0,0,100,0,1000,1000,0,0,0,0,5,36,0,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Emote \'OneShotAttack1H\' on \'Ogre Smoke Image (1)\''),
(2308800,9,32,0,0,0,100,0,1000,1000,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Set Flag StandState Dead'),
(2308800,9,33,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Set Data 1 1 on \'Ogre Smoke Image (1)\''),
(2308800,9,34,0,0,0,100,0,29000,29000,0,0,0,0,45,1,2,0,0,0,0,11,30795,15,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Set Data 1 2 on \'Ogre Smoke Image (1)\''),
(2308800,9,35,0,0,0,100,0,10,10,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image - On Script - Despawn');


-- Ogre Smoke Image (1)
UPDATE `creature_template` SET `unit_flags` = 33555202,`AIName`='SmartAI' WHERE `entry` in (30795); -- ''

DELETE FROM `creature_template_movement` where `CreatureId` IN (30795);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(30795,1,0,0,1,0,0,NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID` in (30795);
INSERT INTO `creature_equip_template` (`CreatureID`,`ID`,`ItemID1`,`ItemID2`,`ItemID3`,`VerifiedBuild`) VALUES 
(30795,1,5287,0,0,18019);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (30795) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(30795,0,0,1,54,0,100,0,0,0,0,0,0,0,4,396,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image (1) - On Summon - Play Sound 396'),
(30795,0,1,0,61,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image (1) - On Summon (Linked) - Cast \'Copy of Shroud of Death\''),
(30795,0,2,0,38,0,100,0,1,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.4465,'Ogre Smoke Image (1) - On Data Set 1 0 - Set Orientation'),
(30795,0,3,0,38,0,100,0,1,1,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image (1) - On Data Set 1 1 - Set Flag StandState Dead'),
(30795,0,4,0,38,0,100,0,1,2,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogre Smoke Image (1) - On Data Set 1 2 - Despawn');


-- Felguard Smoke Image
UPDATE `creature_template` SET `unit_flags` = 33555202,`AIName`='SmartAI' WHERE `entry` in (23252); -- ''

DELETE FROM `creature_template_movement` where `CreatureId` IN (23252);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23252,1,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23252) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2325200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23252,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2325200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Summon - Run Script'),

(2325200,9,0,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,1,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Set Fly On'),
(2325200,9,2,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Set Hover On'),
(2325200,9,3,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2325200,9,4,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,5,0,0,0,100,0,3000,3000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2325200,9,6,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,7,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2325200,9,8,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,9,0,0,0,100,0,3000,3000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2325200,9,10,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,11,0,0,0,100,0,1000,1000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2325200,9,12,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,13,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2325200,9,14,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2325200,9,15,0,0,0,100,0,1000,1000,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Felguard Smoke Image - On Script - Set Flag StandState Dead');


-- Ethereal Smoke Image
UPDATE `creature_template` SET `unit_flags` = 33555202,`AIName`='SmartAI' WHERE `entry` in (23189); -- ''

DELETE FROM `creature_template_movement` where `CreatureId` IN (23189);
INSERT INTO `creature_template_movement` (`CreatureId`,`Ground`,`Swim`,`Flight`,`Rooted`,`Chase`,`Random`,`InteractionPauseTimer`) VALUES 
(23189,1,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23189) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2318900) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23189,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2318900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Summon - Run Script'),

(2318900,9,0,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2318900,9,1,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Set Fly On'),
(2318900,9,2,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Set Hover On'),
(2318900,9,3,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2318900,9,4,0,0,0,100,0,8000,8000,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2318900,9,5,0,0,0,100,0,2000,2000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Emote \'OneShotAttack1H\''),
(2318900,9,6,0,0,0,100,0,7000,7000,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2318900,9,7,0,0,0,100,0,3000,3000,0,0,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Smoke Image - On Script - Emote \'OneShotAttack1H\'');


-- Black Dragon Smoke Image
UPDATE `creature_template` SET `unit_flags` = 33555202,`AIName`='SmartAI' WHERE `entry` in (23190); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23190) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2319000) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23190,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2319000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Summon - Run Script'),

(2319000,9,0,0,0,0,100,0,0,0,0,0,0,0,11,40131,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Script - Cast \'Copy of Shroud of Death\''),
(2319000,9,1,0,0,0,100,0,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Script - Set Flying Tier Animation'),
(2319000,9,2,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Script - Set Fly On'),
(2319000,9,3,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Script - Set Hover On'),
(2319000,9,4,0,0,0,100,0,13000,13000,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Script - Emote \'OneShotRoar\''),
(2319000,9,5,0,0,0,100,0,0,0,0,0,0,0,4,3525,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Black Dragon Smoke Image - On Script - Play Sound 3525');


-- Orgi'la Storyteller
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23256); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23256) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2325600,2325601,2325602) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23256,0,0,1,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Respawn - Set Phase 1'),
(23256,0,1,0,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Respawn (Linked) - Set Active'),
(23256,0,2,0,8,1,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Spell Hit \'Revered Ogri\'la Aura Effect\' (Phase 1) - Say Line 0'),
(23256,0,3,4,1,1,100,0,60000,60000,1500000,1800000,0,0,232,232560,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - OOC (Phase 1) - Start Waypoint'),
(23256,0,4,0,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300248,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - OOC (Phase 1) (Linked) - Set Data 1 0 on \'Blade\'s Edge Invisible Stalker\''),
(23256,0,5,0,108,0,100,0,2,232561,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Waypoint 2 Reached - Set Phase 1'),
(23256,0,6,7,108,0,100,0,2,232560,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Waypoint 2 Reached - Set Phase 2'),
(23256,0,7,0,61,0,100,0,0,0,0,0,0,0,87,2325600,2325601,2325602,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Waypoint 2 Reached (Linked) - Run Random Script'),
(23256,0,8,0,108,0,100,0,1,232560,0,0,0,0,45,1,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Waypoint 1 Reached - Set Data 1 0 on \'Orgi\'la Peacekeeper\''), -- Start peacekeeper waypoint

(2325600,9,0,0,0,0,100,0,7000,7000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Flag Standstate Kneel'),
(2325600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325600,9,2,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2323.31,7291.41,365.7,5.35816,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''), -- these will get a smoke aura when summoned 2323.31 7291.41 365.7
(2325600,9,3,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2322.76,7295.07,365.7,2.25148,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325600,9,4,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2317.61,7291.23,365.7,1.20428,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325600,9,5,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2317.76,7295.12,365.7,0.0349066,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325600,9,6,0,0,0,100,0,1000,1000,0,0,0,0,45,1,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Gahk\''),
(2325600,9,7,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,91793,23316,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Torkus\''),
(2325600,9,8,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,91787,23233,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Chu\'a\'lor\''),
(2325600,9,9,0,0,0,100,0,4000,4000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Remove Flag Standstate Kneel'),
(2325600,9,10,0,0,0,100,0,5000,5000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 1'),
(2325600,9,11,0,0,0,100,0,8000,8000,0,0,0,0,12,23088,1,300000,0,0,0,8,0,0,0,0,2319.28,7292.5,369.642,5.044,'Orgi\'la Storyteller - On Script - Summon \'Spawn Ogre Smoke Image\''), -- Need SmartAI on spawn
(2325600,9,12,0,0,0,100,0,4000,4000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 2'),
(2325600,9,13,0,0,0,100,0,12000,12000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 3'),
(2325600,9,14,0,0,0,100,0,12000,12000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 4'),
(2325600,9,15,0,0,0,100,0,10000,10000,0,0,0,0,5,35,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotAttackUnarmed\' on Gahk'),
(2325600,9,16,0,0,0,100,0,1000,1000,0,0,0,0,1,3,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 3 on \'Orgi\'la Peacekeeper\''),
(2325600,9,17,0,0,0,100,0,6000,6000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 5'),
(2325600,9,18,0,0,0,100,0,10000,10000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325600,9,19,0,0,0,100,0,1000,1000,0,0,0,0,1,4,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 4 on \'Orgi\'la Peacekeeper\''),
(2325600,9,20,0,0,0,100,0,6000,6000,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 6'),
(2325600,9,21,0,0,0,100,0,11000,11000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 7'),
(2325600,9,22,0,0,0,100,0,1000,1000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325600,9,23,0,0,0,100,0,1000,1000,0,0,0,0,1,2,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 2 on \'Orgi\'la Peacekeeper\''),
(2325600,9,24,0,0,0,100,0,7000,7000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325600,9,25,0,0,0,100,0,13000,13000,0,0,0,0,45,1,1,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Orgi\'la Peacekeeper\''),
(2325600,9,26,0,0,0,100,0,10000,10000,0,0,0,0,232,232561,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Start Waypoint'),
(2325600,9,27,0,0,0,100,0,3000,3000,0,0,0,0,45,1,1,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Gahk\''),
(2325600,9,28,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,91793,23316,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Torkus\''),
(2325600,9,29,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,91787,23233,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Chu\'a\'lor\''),

(2325601,9,0,0,0,0,100,0,7000,7000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Flag Standstate Kneel'),
(2325601,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,2,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2323.31,7291.41,365.7,5.35816,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''), -- these will get a smoke aura when summoned
(2325601,9,3,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2322.76,7295.07,365.7,2.25148,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,4,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2317.61,7291.23,365.7,1.20428,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,5,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2317.76,7295.12,365.7,0.0349066,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,6,0,0,0,100,0,1000,1000,0,0,0,0,45,1,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Gahk\''),
(2325601,9,7,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,91793,23316,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Torkus\''),
(2325601,9,8,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,91787,23233,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Chu\'a\'lor\''),
(2325601,9,9,0,0,0,100,0,4000,4000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Remove Flag Standstate Kneel'),
(2325601,9,10,0,0,0,100,0,5000,5000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 8'), 
(2325601,9,11,0,0,0,100,0,5000,5000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325601,9,12,0,0,0,100,0,1000,1000,0,0,0,0,1,2,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 2 on \'Orgi\'la Peacekeeper\''),
(2325601,9,13,0,0,0,100,0,6000,6000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 9'),
(2325601,9,14,0,0,0,100,0,5000,5000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325601,9,15,0,0,0,100,0,0,0,0,0,0,0,1,4,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 4 on \'Orgi\'la Peacekeeper\''),
(2325601,9,16,0,0,0,100,0,7000,7000,0,0,0,0,70,45,0,0,0,0,0,14,300007,185901,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Respawn \'Ogri\'la Crystal Smoke Image\''),
(2325601,9,17,0,0,0,100,0,0,0,0,0,0,0,70,45,0,0,0,0,0,14,300008,185901,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Respawn \'Ogri\'la Crystal Smoke Image\''),
(2325601,9,18,0,0,0,100,0,0,0,0,0,0,0,70,45,0,0,0,0,0,14,300009,185901,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Respawn \'Ogri\'la Crystal Smoke Image\''),
(2325601,9,19,0,0,0,100,0,0,0,0,0,0,0,12,23033,1,45000,0,0,0,8,0,0,0,0,2320.71,7294.4,371.705,2.61799,'Orgi\'la Storyteller - On Script - Summon \'Invisible Stalker (Floating)\''),
(2325601,9,20,0,0,0,100,0,0,0,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 10'),
(2325601,9,21,0,0,0,100,0,7000,7000,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 11'),
(2325601,9,22,0,0,0,100,0,2000,2000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,23,0,0,0,100,0,5000,5000,0,0,0,0,12,23252,1,31000,0,0,0,8,0,0,0,0,2320.98,7293.13,369.394,5.06145,'Orgi\'la Storyteller - On Script - Summon \'Felguard Smoke Image\''),
(2325601,9,24,0,0,0,100,0,0,0,0,0,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 12'),
(2325601,9,25,0,0,0,100,0,4000,4000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,26,0,0,0,100,0,6000,6000,0,0,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 13'),
(2325601,9,27,0,0,0,100,0,5000,5000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325601,9,28,0,0,0,100,0,0,0,0,0,0,0,1,2,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 2 on \'Orgi\'la Peacekeeper\''),
(2325601,9,29,0,0,0,100,0,13000,13000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325601,9,30,0,0,0,100,0,21000,21000,0,0,0,0,45,1,1,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Orgi\'la Peacekeeper\''),
(2325601,9,31,0,0,0,100,0,2000,2000,0,0,0,0,232,232561,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Start Waypoint'),
(2325601,9,32,0,0,0,100,0,3000,3000,0,0,0,0,45,1,1,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Gahk\''),
(2325601,9,33,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,91793,23316,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Torkus\''),
(2325601,9,34,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,91787,23233,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Chu\'a\'lor\''),

(2325602,9,0,0,0,0,100,0,7000,7000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Flag Standstate Kneel'),
(2325602,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,2,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2323.31,7291.41,365.7,5.35816,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''), -- these will get a smoke aura when summoned
(2325602,9,3,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2322.76,7295.07,365.7,2.25148,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,4,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2317.61,7291.23,365.7,1.20428,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,5,0,0,0,100,0,0,0,0,0,0,0,12,21234,1,116000,0,0,0,8,0,0,0,0,2317.76,7295.12,365.7,0.0349066,'Orgi\'la Storyteller - On Script - Summon \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,6,0,0,0,100,0,1000,1000,0,0,0,0,45,1,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Gahk\''),
(2325602,9,7,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,91793,23316,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Torkus\''),
(2325602,9,8,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,91787,23233,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 0 on \'Chu\'a\'lor\''),
(2325602,9,9,0,0,0,100,0,4000,4000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Remove Flag Standstate Kneel'),
(2325602,9,10,0,0,0,100,0,5000,5000,0,0,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 14'),
(2325602,9,11,0,0,0,100,0,6000,6000,0,0,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 15'),
(2325602,9,12,0,0,0,100,0,2000,2000,0,0,0,0,12,23189,1,28000,0,0,0,8,0,0,0,0,2320.77,7292.1,369.064,5.61996,'Orgi\'la Storyteller - On Script - Summon \'Ethereal Smoke Image\''), -- 2320.77,7292.1,369.464,5.61996
(2325602,9,13,0,0,0,100,0,0,0,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,14,0,0,0,100,0,9000,9000,0,0,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 16'),
(2325602,9,15,0,0,0,100,0,3000,3000,0,0,0,0,12,23190,1,16000,0,0,0,8,0,0,0,0,2320.53,7291.77,372.992,4.95674,'Orgi\'la Storyteller - On Script - Summon \'Black Dragon Smoke Image\''), -- 2320.53,7291.77,371.992,4.95674
(2325602,9,16,0,0,0,100,0,11000,11000,0,0,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 17'),
(2325602,9,17,0,0,0,100,0,4000,4000,0,0,0,0,5,35,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotAttackUnarmed\' on Gahk'),
(2325602,9,18,0,0,0,100,0,1000,1000,0,0,0,0,1,3,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 3 on \'Orgi\'la Peacekeeper\''),
(2325602,9,19,0,0,0,100,0,2000,2000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,20,0,0,0,100,0,9000,9000,0,0,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 18'),
(2325602,9,21,0,0,0,100,0,2000,2000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325602,9,22,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 2 on \'Orgi\'la Peacekeeper\''),
(2325602,9,23,0,0,0,100,0,4000,4000,0,0,0,0,1,19,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 19'),
(2325602,9,24,0,0,0,100,0,3000,3000,0,0,0,0,5,15,0,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Emote \'OneShotRoar\' on Gahk'),
(2325602,9,25,0,0,0,100,0,0,0,0,0,0,0,1,4,0,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Say Line 4 on \'Orgi\'la Peacekeeper\''),
(2325602,9,26,0,0,0,100,0,8000,8000,0,0,0,0,45,10,10,0,0,0,0,10,300246,21234,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 10 10 on \'Blade\'s Edge Invisible Stalker\''),
(2325602,9,27,0,0,0,100,0,15000,15000,0,0,0,0,45,1,1,0,0,0,0,10,78265,23115,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Orgi\'la Peacekeeper\''),
(2325602,9,28,0,0,0,100,0,8000,8000,0,0,0,0,232,232561,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Start Waypoint'),
(2325602,9,29,0,0,0,100,0,3000,3000,0,0,0,0,45,1,1,0,0,0,0,10,91791,23300,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Gahk\''),
(2325602,9,30,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,91793,23316,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Torkus\''),
(2325602,9,31,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,91787,23233,0,0,0,0,0,0,'Orgi\'la Storyteller - On Script - Set Data 1 1 on \'Chu\'a\'lor\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23256);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23256,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Orgi\'la Storyteller'),
(23256,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Orgi\'la Storyteller'),
(23256,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Orgi\'la Storyteller'),
(23256,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Orgi\'la Storyteller'),
(23256,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Orgi\'la Storyteller'),
(23256,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Orgi\'la Storyteller'),
(23256,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Orgi\'la Storyteller'),
(23256,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Orgi\'la Storyteller'),
(23256,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Orgi\'la Storyteller'),
(23256,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Orgi\'la Storyteller'),
(23256,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Orgi\'la Storyteller'),
(23256,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Orgi\'la Storyteller'),
(23256,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Orgi\'la Storyteller'),
(23256,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Orgi\'la Storyteller'),
(23256,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Orgi\'la Storyteller'),
(23256,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Orgi\'la Storyteller'),
(23256,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Orgi\'la Storyteller'),
(23256,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Orgi\'la Storyteller'),
(23256,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Orgi\'la Storyteller'),
(23256,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Orgi\'la Storyteller'),
(23256,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Orgi\'la Storyteller'),
(23256,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Orgi\'la Storyteller'),
(23256,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Orgi\'la Storyteller'),
(23256,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Orgi\'la Storyteller'),

(23256,1,0,'We ogres were once lost...',12,0,100,396,0,0,20895,0,'Orgi\'la Storyteller'),
(23256,2,0,'Though mighty, we only knew of violence...',12,0,100,0,0,0,20896,0,'Orgi\'la Storyteller'),
(23256,3,0,'We fought long and hard.  We had proven again and again that we ogres were a force to be reckoned with.',12,0,100,0,0,0,20897,0,'Orgi\'la Storyteller'),
(23256,4,0,'Yet soon we turned on each other.  Brother fought brother to decide who was the mightiest.',12,0,100,0,0,0,20898,0,'Orgi\'la Storyteller'),
(23256,5,0,'It was clear that our paths were set.  We were our own greatest enemies, and we were determined to destroy ourselves.',12,0,100,0,0,0,20899,0,'Orgi\'la Storyteller'),
(23256,6,0,'Among these crystals we have seen a new path, a path of peace.',12,0,100,0,0,0,20900,0,'Orgi\'la Storyteller'),
(23256,7,0,'We are brothers.  And we will stand united against those who oppose our peace.',12,0,100,0,0,0,21031,0,'Orgi\'la Storyteller'),
(23256,8,0,'We are in heaven.',12,0,100,396,0,0,21038,0,'Orgi\'la Storyteller'),
(23256,9,0,'We are in Ogri\'la.',12,0,100,0,0,0,21037,0,'Orgi\'la Storyteller'),
(23256,10,0,'We\'ve moved from bloodstained roads to roads illuminated by crystals.',12,0,100,0,0,0,21039,0,'Orgi\'la Storyteller'),
(23256,11,0,'Though the sounds of battle are still near, we also hear the song of these crystals.',12,0,100,0,0,11773,21040,0,'Orgi\'la Storyteller'),
(23256,12,0,'Even with enemies at our door step, the light and song of the crystals have sustained us.',12,0,100,0,0,0,21041,0,'Orgi\'la Storyteller'),
(23256,13,0,'Here in Ogri\'la, we have reached a higher existence.  And we will keep it that way.',12,0,100,0,0,0,21042,0,'Orgi\'la Storyteller'),
(23256,14,0,'Do you hear that brothers?',12,0,100,396,0,0,21043,0,'Orgi\'la Storyteller'),
(23256,15,0,'Over the song of the crystals, do you hear the battle that is approaching?',12,0,100,0,0,11773,21044,0,'Orgi\'la Storyteller'),
(23256,16,0,'Do you see our enemies?',12,0,100,0,0,0,21045,0,'Orgi\'la Storyteller'),
(23256,17,0,'They lurk nearby ready to strike.',12,0,100,0,0,0,21046,0,'Orgi\'la Storyteller'),
(23256,18,0,'Are we ready?',12,0,100,0,0,0,21047,0,'Orgi\'la Storyteller'),
(23256,19,0,'The crystals have enlightened us brothers.  But we must still be on guard.',12,0,100,0,0,0,21048,0,'Orgi\'la Storyteller');

DELETE FROM `waypoint_data` WHERE `id` IN (232560,232561);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(232560,1,2303.111,7309.5054,366.28314,NULL,0,0,1,0,0,100,0), -- 2310.1096 7307.5815 365.8288
(232560,2,2316.35,7303.42,367.027,5.116863,0,1000,1,0,0,100,0), -- crystal podium

(232561,1,2310.1096,7307.5815,365.8288,NULL,0,0,1,0,0,100,0),
(232561,2,2278.67,7314.88,365.443,5.34071,0,1000,1,0,0,100,0); -- Send AI Event 6 to Self and Wait approx 30min -- 12 HOME


-- Orgi'la Peacekeeper
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23115); -- ''

UPDATE `creature` SET `position_x` = 2341.35009765625,`position_y` = 7253.3798828125,`position_z` = 366.5559997558594,`orientation` = 1.291540026 WHERE `guid` = 78265; -- 2333.61 Y: 7249.68 Z: 365.79187 2.95667

DELETE FROM `creature` WHERE `guid` IN (300244,300245);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300244,23115,530,0,0,1,1,1,2337.57006835937500000000,7298.99023437500000000000,365.70001220703125000000,3.43829989433288570000,300,0,0,71810,0,0,0,0,0,'',0,0,NULL),
(300245,23115,530,0,0,1,1,1,2309.64990234375000000000,7288.83007812500000000000,365.89001464843750000000,0.50614500045776370000,300,0,0,71810,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23115) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23115,0,0,0,4,0,50,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Peacekeeper - On Aggro - Set Line 1'),
(23115,0,1,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Peacekeeper - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0'),
(23115,0,2,0,0,0,100,0,0,3000,15000,20000,0,0,11,12024,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Orgi\'la Peacekeeper - IC - Cast \'Net\''),
(23115,0,3,0,0,0,100,0,3000,3000,15000,20000,0,0,11,42691,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Orgi\'la Peacekeeper - IC - Cast \'Peace of Ogri\'la\''),
(23115,0,4,0,38,0,100,0,1,0,0,0,0,0,232,231150,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Peacekeeper - On Data Set 1 0 - Start Waypoint'),
(23115,0,5,0,38,0,100,0,1,1,0,0,0,0,232,231151,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Orgi\'la Peacekeeper - On Data Set 1 1 - Start Waypoint');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23115);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23115,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Orgi\'la Peacekeeper'),
(23115,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Orgi\'la Peacekeeper'),
(23115,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Orgi\'la Peacekeeper'),
(23115,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Orgi\'la Peacekeeper'),
(23115,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Orgi\'la Peacekeeper'),
(23115,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Orgi\'la Peacekeeper'),
(23115,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Orgi\'la Peacekeeper'),
(23115,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Orgi\'la Peacekeeper'),
(23115,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Orgi\'la Peacekeeper'),
(23115,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Orgi\'la Peacekeeper'),
(23115,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Orgi\'la Peacekeeper'),
(23115,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Orgi\'la Peacekeeper'),
(23115,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Orgi\'la Peacekeeper'),
(23115,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Orgi\'la Peacekeeper'),
(23115,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Orgi\'la Peacekeeper'),
(23115,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Orgi\'la Peacekeeper'),
(23115,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Orgi\'la Peacekeeper'),
(23115,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Orgi\'la Peacekeeper'),
(23115,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Orgi\'la Peacekeeper'),
(23115,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Orgi\'la Peacekeeper'),
(23115,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Orgi\'la Peacekeeper'),
(23115,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Orgi\'la Peacekeeper'),
(23115,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Orgi\'la Peacekeeper'),
(23115,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Orgi\'la Peacekeeper'),

(23115,1,0,'No violence in Ogri\'la!',12,0,100,0,0,0,21850,0,'Orgi\'la Peacekeeper'),
(23115,1,1,'Keep your fight away from Ogri\'la!',12,0,100,0,0,0,21851,0,'Orgi\'la Peacekeeper'),
(23115,1,2,'Not in here!',12,0,100,0,0,0,21852,0,'Orgi\'la Peacekeeper'),
(23115,1,3,'You bring violence to Ogri\'la?',12,0,100,0,0,0,21853,0,'Orgi\'la Peacekeeper'),

(23115,2,0,'%s cheers!',16,0,100,15,0,0,21108,0,'Orgi\'la Peacekeeper'),
(23115,3,0,'%s is disgusted!',16,0,100,15,0,0,21109,0,'Orgi\'la Peacekeeper'),
(23115,4,0,'%s roars!',16,0,100,15,0,0,21110,0,'Orgi\'la Peacekeeper');

DELETE FROM `waypoint_data` WHERE `id` IN (231150,231151);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(231150,1,2327.51,7275.73,365.752,NULL,0,0,0,0,0,100,0),
(231150,2,2323.78,7282.22,365.627,NULL,0,0,0,0,0,100,0), -- Pause Waypoints (Resumed by Ogri\'la Storyteller c.23256) just evade back. 

(231151,1,2341.35,7253.38,366.556,1.29154,0,1000,0,0,0,100,0);


-- Jho'nass
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (91780); -- 0 0

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23428); -- ''

UPDATE `creature` SET `position_x` = 2284.1298828125,`position_y` = 7323.35009765625,`position_z` = 366.5,`orientation` = 5.567599773406982 WHERE `guid` = 91780; -- 2278.7 Y: 7330.6 Z: 366.763 5.46139

DELETE FROM `creature_addon` where `guid` in (91780);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(91780,234280,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23428) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2342800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23428,0,0,0,108,0,100,0,2,234280,0,0,0,0,80,2342800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jho\'nass - On Waypoint 2 Reached - Run Script'),
(23428,0,1,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jho\'nass - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0'),

(2342800,9,0,0,0,0,100,0,1000,1000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jho\'nass - On Script - Set Flag Standstate Kneel'),
(2342800,9,1,0,0,0,100,0,13500,13500,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jho\'nass - On Script - Remove Flag Standstate Kneel');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23428);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23428,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Jho\'nass'),
(23428,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Jho\'nass'),
(23428,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Jho\'nass'),
(23428,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Jho\'nass'),
(23428,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Jho\'nass'),
(23428,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Jho\'nass'),
(23428,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Jho\'nass'),
(23428,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Jho\'nass'),
(23428,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Jho\'nass'),
(23428,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Jho\'nass'),
(23428,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Jho\'nass'),
(23428,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Jho\'nass'),
(23428,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Jho\'nass'),
(23428,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Jho\'nass'),
(23428,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Jho\'nass'),
(23428,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Jho\'nass'),
(23428,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Jho\'nass'),
(23428,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Jho\'nass'),
(23428,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Jho\'nass'),
(23428,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Jho\'nass'),
(23428,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Jho\'nass'),
(23428,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Jho\'nass'),
(23428,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Jho\'nass'),
(23428,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Jho\'nass');

DELETE FROM `waypoint_data` WHERE `id` IN (234280);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(234280,1,2280.45,7327.05,366.651,NULL,0,0,0,0,0,100,0),
(234280,2,2278,7327.73,366.809,NULL,0,15000,0,0,0,100,0), -- 
(234280,3,2282.27,7325.31,366.442,NULL,0,0,0,0,0,100,0),
(234280,4,2284.13,7323.35,366.5,5.5676,0,120000,0,0,0,100,0);


-- Chu'a'lor
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23233); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23233) AND `source_type` = 0 AND `id` IN (0,1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23233,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chu\'a\'lor - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0'),
(23233,0,1,0,38,0,100,0,1,0,0,0,0,0,66,0,0,0,0,0,0,10,91792,23256,0,0,0,0,0,0,'Chu\'a\'lor - On Data Set 1 0 - Set Orientation on \'Orgi\'la Storyteller\''),
(23233,0,2,0,38,0,100,0,1,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.7536,'Chu\'a\'lor - On Data Set 1 1 - Set Orientation');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23233);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23233,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Chu\'a\'lor'),
(23233,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Chu\'a\'lor'),
(23233,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Chu\'a\'lor'),
(23233,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Chu\'a\'lor'),
(23233,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Chu\'a\'lor'),
(23233,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Chu\'a\'lor'),
(23233,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Chu\'a\'lor'),
(23233,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Chu\'a\'lor'),
(23233,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Chu\'a\'lor'),
(23233,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Chu\'a\'lor'),
(23233,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Chu\'a\'lor'),
(23233,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Chu\'a\'lor'),
(23233,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Chu\'a\'lor'),
(23233,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Chu\'a\'lor'),
(23233,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Chu\'a\'lor'),
(23233,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Chu\'a\'lor'),
(23233,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Chu\'a\'lor'),
(23233,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Chu\'a\'lor'),
(23233,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Chu\'a\'lor'),
(23233,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Chu\'a\'lor'),
(23233,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Chu\'a\'lor'),
(23233,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Chu\'a\'lor'),
(23233,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Chu\'a\'lor'),
(23233,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Chu\'a\'lor');


-- Ogri'la Grubgiver
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (22266); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22266) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22266,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogri\'la Grubgiver - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22266);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22266,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Ogri\'la Grubgiver'),
(22266,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Ogri\'la Grubgiver'),
(22266,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Ogri\'la Grubgiver'),
(22266,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Ogri\'la Grubgiver'),
(22266,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Ogri\'la Grubgiver'),
(22266,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Ogri\'la Grubgiver'),
(22266,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Ogri\'la Grubgiver'),
(22266,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Ogri\'la Grubgiver'),
(22266,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Ogri\'la Grubgiver'),
(22266,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Ogri\'la Grubgiver'),
(22266,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Ogri\'la Grubgiver'),
(22266,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Ogri\'la Grubgiver'),
(22266,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Ogri\'la Grubgiver'),
(22266,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Ogri\'la Grubgiver'),
(22266,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Ogri\'la Grubgiver'),
(22266,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Ogri\'la Grubgiver'),
(22266,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Ogri\'la Grubgiver'),
(22266,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Ogri\'la Grubgiver'),
(22266,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Ogri\'la Grubgiver'),
(22266,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Ogri\'la Grubgiver'),
(22266,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Ogri\'la Grubgiver'),
(22266,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Ogri\'la Grubgiver'),
(22266,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Ogri\'la Grubgiver'),
(22266,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Ogri\'la Grubgiver');


-- Ogri'la Steelshaper
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (22264); -- ''

UPDATE `creature` SET `position_x` = 2328.25,`position_y` = 7252.9599609375,`position_z` = 365.5989990234375,`orientation` = 1.19166004 WHERE `guid` = 91785;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22264) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22264,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogri\'la Steelshaper - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22264);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22264,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Ogri\'la Steelshaper'),
(22264,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Ogri\'la Steelshaper'),
(22264,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Ogri\'la Steelshaper'),
(22264,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Ogri\'la Steelshaper'),
(22264,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Ogri\'la Steelshaper'),
(22264,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Ogri\'la Steelshaper'),
(22264,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Ogri\'la Steelshaper'),
(22264,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Ogri\'la Steelshaper'),
(22264,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Ogri\'la Steelshaper'),
(22264,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Ogri\'la Steelshaper'),
(22264,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Ogri\'la Steelshaper'),
(22264,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Ogri\'la Steelshaper'),
(22264,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Ogri\'la Steelshaper'),
(22264,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Ogri\'la Steelshaper'),
(22264,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Ogri\'la Steelshaper'),
(22264,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Ogri\'la Steelshaper'),
(22264,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Ogri\'la Steelshaper'),
(22264,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Ogri\'la Steelshaper'),
(22264,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Ogri\'la Steelshaper'),
(22264,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Ogri\'la Steelshaper'),
(22264,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Ogri\'la Steelshaper'),
(22264,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Ogri\'la Steelshaper'),
(22264,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Ogri\'la Steelshaper'),
(22264,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Ogri\'la Steelshaper');


-- Ogri'la Keg King
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23110); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23110) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23110,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogri\'la Keg King - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23110);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23110,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Ogri\'la Keg King'),
(23110,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Ogri\'la Keg King'),
(23110,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Ogri\'la Keg King'),
(23110,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Ogri\'la Keg King'),
(23110,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Ogri\'la Keg King'),
(23110,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Ogri\'la Keg King'),
(23110,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Ogri\'la Keg King'),
(23110,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Ogri\'la Keg King'),
(23110,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Ogri\'la Keg King'),
(23110,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Ogri\'la Keg King'),
(23110,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Ogri\'la Keg King'),
(23110,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Ogri\'la Keg King'),
(23110,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Ogri\'la Keg King'),
(23110,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Ogri\'la Keg King'),
(23110,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Ogri\'la Keg King'),
(23110,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Ogri\'la Keg King'),
(23110,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Ogri\'la Keg King'),
(23110,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Ogri\'la Keg King'),
(23110,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Ogri\'la Keg King'),
(23110,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Ogri\'la Keg King'),
(23110,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Ogri\'la Keg King'),
(23110,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Ogri\'la Keg King'),
(23110,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Ogri\'la Keg King'),
(23110,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Ogri\'la Keg King');


-- Ogri'la Trader
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (22271); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22271) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22271,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogri\'la Trader - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22271);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22271,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Ogri\'la Trader'),
(22271,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Ogri\'la Trader'),
(22271,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Ogri\'la Trader'),
(22271,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Ogri\'la Trader'),
(22271,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Ogri\'la Trader'),
(22271,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Ogri\'la Trader'),
(22271,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Ogri\'la Trader'),
(22271,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Ogri\'la Trader'),
(22271,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Ogri\'la Trader'),
(22271,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Ogri\'la Trader'),
(22271,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Ogri\'la Trader'),
(22271,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Ogri\'la Trader'),
(22271,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Ogri\'la Trader'),
(22271,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Ogri\'la Trader'),
(22271,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Ogri\'la Trader'),
(22271,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Ogri\'la Trader'),
(22271,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Ogri\'la Trader'),
(22271,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Ogri\'la Trader'),
(22271,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Ogri\'la Trader'),
(22271,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Ogri\'la Trader'),
(22271,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Ogri\'la Trader'),
(22271,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Ogri\'la Trader'),
(22271,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Ogri\'la Trader'),
(22271,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Ogri\'la Trader');


-- Ogri'la Merchant
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (22270); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (22270) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22270,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ogri\'la Merchant - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22270);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22270,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Ogri\'la Merchant'),
(22270,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Ogri\'la Merchant'),
(22270,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Ogri\'la Merchant'),
(22270,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Ogri\'la Merchant'),
(22270,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Ogri\'la Merchant'),
(22270,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Ogri\'la Merchant'),
(22270,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Ogri\'la Merchant'),
(22270,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Ogri\'la Merchant'),
(22270,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Ogri\'la Merchant'),
(22270,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Ogri\'la Merchant'),
(22270,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Ogri\'la Merchant'),
(22270,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Ogri\'la Merchant'),
(22270,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Ogri\'la Merchant'),
(22270,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Ogri\'la Merchant'),
(22270,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Ogri\'la Merchant'),
(22270,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Ogri\'la Merchant'),
(22270,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Ogri\'la Merchant'),
(22270,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Ogri\'la Merchant'),
(22270,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Ogri\'la Merchant'),
(22270,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Ogri\'la Merchant'),
(22270,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Ogri\'la Merchant'),
(22270,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Ogri\'la Merchant'),
(22270,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Ogri\'la Merchant'),
(22270,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Ogri\'la Merchant');


-- Mingo
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23112); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23112) AND `source_type` = 0 AND `id` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23112,0,0,0,8,0,50,0,41557,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mingo - On Spell Hit \'Revered Ogri\'la Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23112);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23112,0,0,'Hey look, it\'s $n!',12,0,100,0,0,0,21834,0,'Mingo'),
(23112,0,1,'$n, slay any dragons today?',12,0,100,0,0,0,21835,0,'Mingo'),
(23112,0,2,'We are honored by your presence, little $g brother : sister; $n.',12,0,100,0,0,0,21836,0,'Mingo'),
(23112,0,3,'We heard that $n single-handedly took out a forge camp!',12,0,100,0,0,0,21837,0,'Mingo'),
(23112,0,4,'Now that $n is here, we won\'t need to worry about the Burning Legion any longer.',12,0,100,0,0,0,21838,0,'Mingo'),
(23112,0,5,'$n, $g king : queen; of the ogres, is here!',12,0,100,0,0,0,21839,0,'Mingo'),
(23112,0,6,'Thank you for helping us, $n.',12,0,100,0,0,0,21840,0,'Mingo'),
(23112,0,7,'$n is our $g hero : heroine;!',12,0,100,0,0,0,21841,0,'Mingo'),
(23112,0,8,'$n, how are you today?',12,0,100,0,0,0,21842,0,'Mingo'),
(23112,0,9,'Three cheers for $n!',12,0,100,0,0,0,21843,0,'Mingo'),
(23112,0,10,'$n, how are you?',12,0,100,0,0,0,21844,0,'Mingo'),
(23112,0,11,'We hope you\'re staying for a while, $n.  Stop by later and we\'ll catch up on old times.',12,0,100,0,0,0,21845,0,'Mingo'),
(23112,0,12,'If it weren\'t for $n, where would we be now?',12,0,100,0,0,0,21846,0,'Mingo'),
(23112,0,13,'$n, how many hundreds of demons have you banished?',12,0,100,0,0,0,21847,0,'Mingo'),
(23112,0,14,'We heard that $n figured out how to use the apexis relics and monuments!',12,0,100,0,0,0,21848,0,'Mingo'),
(23112,0,15,'You could all learn a lot from $n!',12,0,100,0,0,0,21849,0,'Mingo'),
(23112,0,16,'The gronn... the Legion... is there nothing you can\'t handle, $n?',12,0,100,0,0,0,21925,0,'Mingo'),
(23112,0,17,'The crystals sing a sweeter song when $n is around.',12,0,100,0,0,0,21926,0,'Mingo'),
(23112,0,18,'We hear that the dragons tremble in fear at the mere mention of $n.',12,0,100,0,0,0,21927,0,'Mingo'),
(23112,0,19,'Truly $n has been enlightened by the crystals.',12,0,100,0,0,0,21928,0,'Mingo'),
(23112,0,20,'$n! The crystals sing your praises!',12,0,100,0,0,0,21929,0,'Mingo'),
(23112,0,21,'We owe you a debt of gratitude $n.',12,0,100,0,0,0,21930,0,'Mingo'),
(23112,0,22,'We still stand here only because of $n\'s help.',12,0,100,0,0,0,21945,0,'Mingo'),
(23112,0,23,'It\'s $n, mighty $c and $g brother : sister; to ogres everywhere!',12,0,100,0,0,0,21946,0,'Mingo');


-- Torkus
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23316); -- ''

UPDATE `creature` SET `position_x` = 2323.510009765625,`position_y` = 7306.47998046875,`position_z` = 365.700012207031,`orientation` = 4.41567993 WHERE `guid` = 91793; -- 2315.89 Y: 7304.39 Z: 366.92 5.01167

DELETE FROM `smart_scripts` WHERE `entryorguid` in (23316) AND `source_type` = 0 AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23316,0,1,0,38,0,100,0,1,0,0,0,0,0,66,0,0,0,0,0,0,10,91792,23256,0,0,0,0,0,0,'Torkus - On Data Set 1 0 - Set Orientation on \'Orgi\'la Storyteller\''),
(23316,0,2,0,38,0,100,0,1,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.4156799316,'Torkus - On Data Set 1 1 - Set Orientation');


-- Torki
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23362); -- ''

UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (91789); -- 0 0

UPDATE `creature` SET `position_x` = 2289.179931640625,`position_y` = 7274.7099609375,`position_z` = 366.62799072265625,`orientation` = 0.13962599 WHERE `guid` = 91789;

DELETE FROM `creature_addon` where `guid` in (91789);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(91789,233620,0,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23362) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2336200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23362,0,0,0,108,0,100,0,2,233620,0,0,0,0,80,2336200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Torki - On Waypoint 2 Reached - Run Script'),

(2336200,9,0,0,0,0,100,0,2000,2000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Torki - On Script - Set Flag Standstate Kneel'),
(2336200,9,1,0,0,0,100,0,9500,9500,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Torki - On Script - Remove Flag Standstate Kneel');

DELETE FROM `waypoint_data` WHERE `id` IN (233620);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(233620,1,2289.18,7274.71,366.628,0.139626,0,40000,0,0,0,100,0),
(233620,2,2289.18,7274.71,366.628,3.28122,0,12000,0,0,0,100,0);


-- Tork 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23347); -- ''

UPDATE `creature` SET `position_x` = 2354.19995117187,`position_y` = 7318.009765625,`position_z` = 365.7149963378906,`orientation` = 4.572760105133057 WHERE `guid` = 91788; -- 2324.72 Y: 7307.82 Z: 365.622 4.25764 

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23347) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2334700,2334701,2334702,2334703,2334704) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23347,0,0,1,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Respawn - Set Active On'),
(23347,0,1,2,61,0,100,0,0,0,0,0,0,0,232,233470,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Respawn (Linked) - Start Waypoint'),
(23347,0,2,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Respawn (Linked) - Set Phase 1'),
(23347,0,3,0,108,0,100,0,2,233470,0,0,0,0,80,2334704,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Waypoint 2 Reached - Run Script'), -- For some reason it wants to say this twice (two headed Ogre??) so I needed an action script.  
(23347,0,4,5,108,0,100,0,4,233470,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Waypoint 4 Reached - Random Movement'), -- Can't use an action script cause he could be interrupted by Skyguard Scouts overhead.
(23347,0,5,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Waypoint 4 Reached (Linked) - Set Phase 2'),
(23347,0,6,0,1,2,100,0,88000,88000,88000,88000,0,0,80,2334700,2,1,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - OOC (Phase 2) - Run Script'),
(23347,0,7,0,108,0,100,0,6,233471,0,0,0,0,80,2334702,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Waypoint 6 Reached - Run Script'),
(23347,0,8,0,108,0,100,0,7,233471,0,0,0,0,80,2334703,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Waypoint 7 Reached - Run Script'),
(23347,0,9,0,38,0,100,0,1,0,0,0,0,0,80,2334701,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 - Run Script'),

(2334700,9,0,0,0,0,100,0,0,0,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Stop Random Movement'),
(2334700,9,1,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Stop Waypoint'),
(2334700,9,2,0,0,0,100,0,10,10,0,0,0,0,232,233470,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Start Waypoint'),

(2334701,9,0,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Set Phase 1'),
(2334701,9,1,0,0,0,100,0,0,0,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Stop Random Movement'),
(2334701,9,2,0,0,0,100,0,10,10,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Stop Waypoint'),
(2334701,9,3,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Say Line 1'),
(2334701,9,4,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Set Run On'),
(2334701,9,5,0,0,0,100,0,0,0,0,0,0,0,232,233471,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Start Waypoint'),

(2334702,9,1,0,0,0,100,0,1000,1000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Say Line 2'),
(2334702,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Say Line 3'),
(2334702,9,3,0,0,0,100,0,5000,5000,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Set Run Off'),

(2334703,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Stop Waypoint'),
(2334703,9,1,0,0,0,100,0,10,10,0,0,0,0,232,233470,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Start Waypoint'),

(2334704,9,3,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tork - On Script - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23347);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23347,0,0,'When are we going to get some more magical flasks?',12,0,100,0,0,0,21406,0,'Tork'),
(23347,0,1,'Have we taken enough magical flasks to join the Skyguard yet?',12,0,100,0,0,0,21407,0,'Tork'),
(23347,0,2,'The Skyguard need our help! We need to get more magical flasks.',12,0,100,0,0,0,21408,0,'Tork'),
(23347,0,3,'We can\'t wait to join the Skyguard. We just need to take a few more magical flasks, right?',12,0,100,0,0,0,21409,0,'Tork'),
(23347,1,0,'Look it\'s the Skyguard!!',12,0,100,0,0,0,21411,0,'Tork'),
(23347,1,1,'The Skyguard are here! The Skyguard are here!',12,0,100,0,0,0,21368,0,'Tork'),
(23347,2,0,'%s cheers!',16,0,100,0,0,0,21108,0,'Tork'),
(23347,3,0,'Woo hoo! Go Skyguard!',14,0,100,15,0,0,21369,0,'Tork');

DELETE FROM `waypoint_data` WHERE `id` IN (233470,233471);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(233470,1,2334.8877,7305.747,365.61697,NULL,0,0,0,1,0,100,0),
(233470,2,2331.87,7304.96,365.72,2.99,0,11000,0,1,0,100,0), -- Random text to torkus -- need orientation -- 2331.87 7304.96 365.72
(233470,3,2334.8877,7305.747,365.61697,NULL,0,0,0,0,0,100,0), -- 2335.93 7303.47 365.622
(233470,4,2354.2,7318.01,365.715,4.57276,0,90000,0,0,0,100,0),  -- Home - Random Movement

(233471,1,2354.2,7318.01,365.715,0.32807,0,1000,1,1,0,100,0), -- Skyguard Scouts incoming, start moving. (Path started by c.22980, guid 161467)
(233471,2,2316.02,7315.67,367.162,NULL,0,0,1,1,0,100,0),
(233471,3,2302.62,7304.03,366.013,NULL,0,0,1,1,0,100,0),
(233471,4,2300.03,7277.62,366.066,NULL,0,0,1,1,0,100,0),
(233471,5,2328.17,7265.78,366.129,NULL,0,0,1,1,0,100,0),
(233471,6,2349.6,7257.99,366.142,NULL,0,10000,1,1,0,100,0), -- Texts and then back to home - roar and say text
(233471,7,2354.2,7318.01,365.715,4.57276,0,0,1,0,0,100,0);


-- Sky Sergeant Vanderlip
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23120); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23120) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23120,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sky Sergeant Vanderlip - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23120);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23120,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Sky Sergeant Vanderlip'),
(23120,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Sky Sergeant Vanderlip'),
(23120,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Sky Sergeant Vanderlip'),
(23120,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Sky Sergeant Vanderlip'),
(23120,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Sky Sergeant Vanderlip'),
(23120,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Sky Sergeant Vanderlip'),
(23120,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Sky Sergeant Vanderlip'),
(23120,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Sky Sergeant Vanderlip'),
(23120,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Sky Sergeant Vanderlip'),
(23120,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Sky Sergeant Vanderlip'),
(23120,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Sky Sergeant Vanderlip'),
(23120,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Sky Sergeant Vanderlip'),
(23120,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Sky Sergeant Vanderlip'),
(23120,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Sky Sergeant Vanderlip'),
(23120,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Sky Sergeant Vanderlip'),
(23120,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Sky Sergeant Vanderlip'),
(23120,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Sky Sergeant Vanderlip'),
(23120,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Sky Sergeant Vanderlip'),
(23120,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Sky Sergeant Vanderlip'),
(23120,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Sky Sergeant Vanderlip'),
(23120,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Sky Sergeant Vanderlip'),
(23120,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Sky Sergeant Vanderlip'),
(23120,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Sky Sergeant Vanderlip'),
(23120,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Sky Sergeant Vanderlip');


-- Skyguard Pyrotechnician
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (48166); -- 0 0

DELETE FROM `creature_addon` where `guid` in (48166);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(48166,232080,0,0,0,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23208) AND `source_type` = 0 AND `id` IN (0,1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2320800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23208,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0'),
(23208,0,1,0,108,0,100,0,2,232080,0,0,0,0,80,2320800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - On Waypoint 2 Reached - Run Script'),
(23208,0,2,0,108,0,100,0,6,232080,0,0,0,0,80,2320800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - On Waypoint 6 Reached - Run Script'),

(2320800,9,0,0,0,0,100,0,0,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - On Script - Set State \'STATE_USESTANDING\''),
(2320800,9,1,0,0,0,100,0,9500,9500,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - On Script - Set State \'STATE_NONE\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23208);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23208,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Skyguard Pyrotechnician'),
(23208,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Skyguard Pyrotechnician'),
(23208,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Skyguard Pyrotechnician'),
(23208,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Skyguard Pyrotechnician'),
(23208,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Skyguard Pyrotechnician'),
(23208,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Skyguard Pyrotechnician'),
(23208,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Skyguard Pyrotechnician'),
(23208,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Skyguard Pyrotechnician'),
(23208,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Skyguard Pyrotechnician'),
(23208,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Skyguard Pyrotechnician'),
(23208,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Pyrotechnician'),
(23208,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Skyguard Pyrotechnician'),
(23208,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Pyrotechnician'),
(23208,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Skyguard Pyrotechnician'),
(23208,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Pyrotechnician'),
(23208,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Skyguard Pyrotechnician'),
(23208,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Skyguard Pyrotechnician'),
(23208,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Skyguard Pyrotechnician'),
(23208,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Skyguard Pyrotechnician'),
(23208,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Skyguard Pyrotechnician'),
(23208,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Skyguard Pyrotechnician'),
(23208,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Skyguard Pyrotechnician'),
(23208,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Skyguard Pyrotechnician'),
(23208,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Skyguard Pyrotechnician');

DELETE FROM `waypoint_data` WHERE `id` IN (232080);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(232080,1,2498.58,7361.75,380.327,NULL,0,0,0,0,0,100,0),
(232080,2,2496.46,7362.67,380.327,NULL,0,10000,0,0,0,100,0), --
(232080,3,2502.41,7363.31,380.444,NULL,0,0,0,0,0,100,0),
(232080,4,2505.46,7362.94,380.444,NULL,0,0,0,0,0,100,0),
(232080,5,2506.56,7363.42,380.444,4.92183,0,40000,0,0,0,100,0),
(232080,6,2506.56,7363.42,380.444,2.33874,0,10000,0,0,0,100,0), --
(232080,7,2506.56,7363.42,380.444,5.13127,0,7000,0,0,0,100,0);


-- Skyguard Navigator
UPDATE `creature_template` SET `flags_extra`=134217728 WHERE `entry` in (22982); -- 0

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = 22982 AND `ConditionTypeOrReference` = 5;

DELETE FROM `creature` WHERE `guid` IN (300233,300234,300235);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300233,22982,530,0,0,1,1,1,2522.949951171875,7322.2402343750,373.4670104980469,6.161009788513184,300,0,0,1,0,0,0,0,0,'',NULL,0,NULL),
(300234,22982,530,0,0,1,1,1,2530.89990234375,7333.31982421875,373.718994140625,4.694940090179443,300,0,0,1,0,0,0,0,0,'',NULL,0,NULL),
(300235,22982,530,0,0,1,1,2,2514.659912109375,7355.2900390625,380.8190002441406,2.932149887084961,300,0,0,1,0,0,0,0,0,'',NULL,0,NULL); -- With Mug

DELETE FROM `creature_template_addon` where `entry` in (22982);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(22982,0,0,0,1,0,0,NULL);

DELETE FROM `creature_equip_template` where `CreatureID` = 22982 AND `ID` = 2;
INSERT INTO `creature_equip_template` (`CreatureID`,`ID`,`ItemID1`,`ItemID2`,`ItemID3`,`VerifiedBuild`) VALUES 
(22982,2,2705,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22982,-300233,-300234,-300235) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2298200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22982,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0'),

(-300233,0,1000,1001,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn - Set Active On'),
(-300233,0,1001,0,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn (Linked) - Set Run Off'),
(-300233,0,1002,0,38,0,100,0,1,0,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Data Set 1 0 - Emote \'Salute\''),
(-300233,0,1003,0,38,0,100,0,1,1,0,0,0,0,5,397,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Data Set 1 1 - Emote \'Point\''),
(-300233,0,1004,0,38,0,100,0,1,2,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,2539.5496,7322.7363,373.4434,3.1811,'Skyguard Navigator - On Data Set 1 2 - Move to POS'), -- 2539.5496 7322.7363 373.4434
(-300233,0,1005,0,38,0,100,0,1,3,0,0,0,0,69,2,0,0,0,0,0,8,0,0,0,0,2522.949951171875,7322.2402343750,373.4670104980469,6.161009788513184,'Skyguard Navigator - On Data Set 1 3 - Move to POS \'Home\''),

(-300234,0,1000,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn - Set Active On'),
(-300234,0,1001,0,38,0,100,0,1,0,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Data Set 1 0 - Emote \'Salute\''),

(-300235,0,1000,1001,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn - Set Active On'),
(-300235,0,1001,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Respawn - Set Phase 1'),
(-300235,0,1002,0,1,1,100,0,5000,7000,5000,10000,0,0,5,92,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - OOC (Phase 1) - Emote \'ONESHOT_EAT_NOSHEATHE\''),
(-300235,0,1003,1004,38,0,100,0,1,0,0,0,0,0,232,229820,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 0 - Start Waypoint'),
(-300235,0,1004,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 0 (Linked) - Set Phase 2'),
(-300235,0,1005,1006,108,0,100,0,3,229820,0,0,0,0,80,2298200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 3 Reached - Run Script'),
(-300235,0,1006,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 3 Reached (Linked) - Set Phase 1'),
(-300235,0,1007,0,108,0,100,0,7,229820,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Waypoint 7 Reached - Set Phase 1'),

(2298200,9,0,0,0,0,100,0,51000,51000,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Set Phase 2'), -- Needs to drink for 50 seconds maybe 51
(2298200,9,1,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Say Line 1'),
(2298200,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Say Line 2'),
(2298200,9,3,0,0,0,100,0,7000,7000,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Set State \'STATE_USESTANDING\''),
(2298200,9,4,0,0,0,100,0,5000,5000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Say Line 3'),
(2298200,9,5,0,0,0,100,0,19000,19000,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Set State \'STATE_NONE\''),
(2298200,9,6,0,0,0,100,0,1000,1000,0,0,0,0,236,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Navigator - On Script - Resume Waypoint');

DELETE FROM `waypoint_data` WHERE `id` IN (229820);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(229820,1,2510.66,7350.4,380.819,NULL,0,0,0,0,0,100,0), -- Move towards launch playform (Path started by c.22980, guid 161467)
(229820,2,2517.43,7346.39,381.094,NULL,0,0,0,0,0,100,0),
(229820,3,2517.84,7345,381.12,4.999135,0,85000,0,0,0,100,0), -- 2298205
(229820,4,2510.58,7351.33,380.819,NULL,0,0,0,0,0,100,0),
(229820,5,2511.94,7355,380.819,NULL,0,0,0,0,0,100,0),
(229820,6,2515.49,7354.68,380.819,NULL,0,0,0,0,0,100,0),
(229820,7,2514.66,7355.29,380.819,2.93215,0,0,0,0,0,100,0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (22982);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22982,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Skyguard Navigator'),
(22982,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Skyguard Navigator'),
(22982,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Skyguard Navigator'),
(22982,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Skyguard Navigator'),
(22982,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Skyguard Navigator'),
(22982,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Skyguard Navigator'),
(22982,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Skyguard Navigator'),
(22982,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Skyguard Navigator'),
(22982,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Skyguard Navigator'),
(22982,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Skyguard Navigator'),
(22982,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Navigator'),
(22982,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Skyguard Navigator'),
(22982,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Navigator'),
(22982,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Skyguard Navigator'),
(22982,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Navigator'),
(22982,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Skyguard Navigator'),
(22982,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Skyguard Navigator'),
(22982,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Skyguard Navigator'),
(22982,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Skyguard Navigator'),
(22982,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Skyguard Navigator'),
(22982,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Skyguard Navigator'),
(22982,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Skyguard Navigator'),
(22982,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Skyguard Navigator'),
(22982,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Skyguard Navigator'),

(22982,1,0,'%s spills his beverage.',16,0,100,0,0,0,21081,0,'Skyguard Navigator'),
(22982,2,0,'SKYGUARD SCOUT!!',14,0,100,5,0,0,21080,1,'Skyguard Navigator'),
(22982,3,0,'%s cleans up the mess while muttering curses about the Skyguard hotshot pilots.',16,0,100,0,0,0,21082,0,'Skyguard Navigator');


-- Skyguard Scout
UPDATE `creature_template` SET `HoverHeight` = 0,`AIName`='SmartAI',`flags_extra`=134217728 WHERE `entry` in (22980); -- 0

DELETE FROM `creature_template_movement` where `CreatureId` IN (22980);

DELETE FROM `creature` WHERE `guid` IN (300236,300237,300238);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300236,22980,530,0,0,1,1,1,2497.199951171875,7322.02001953125,370.9469909667969,6.162859916687012,300,0,0,1,0,0,0,0,0,'',NULL,0,NULL),
(300237,22980,530,0,0,1,1,1,2495.320068359375,7320.27001953125,370.1759948730469,1.101580023765564,300,0,0,1,0,0,0,0,0,'',NULL,0,NULL),
(300238,22980,530,0,0,1,1,1,2493.1152,7324.8486,369.57767,5.334599,300,0,0,1,0,0,0,0,0,'',NULL,0,NULL); -- With Mug

DELETE FROM `creature_template_addon` where `entry` in (22980);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(22980,0,0,0,1,0,0,NULL);

DELETE FROM `spawn_group` where `groupId` IN (42304);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42304,0,300236),
(42304,0,300237),
(42304,0,300238);

DELETE FROM `spawn_group_template` where `groupId` IN (42304);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42304,'Skyguard Scout Group 1',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22980) AND `source_type` = 0 AND `id` IN (0,1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300236,-300237,-300238) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2298000,2298001,2298002,2298003,2298004,2298005,2298006,2298007) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22980,0,0,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Set Active On'),
(22980,0,1,0,38,0,100,0,1,0,0,0,0,0,80,2298006,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 0 - Run Script'),
(22980,0,2,0,38,0,100,0,1,1,0,0,0,0,80,2298001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 1 - Run Script'),

(-300236,0,1000,1001,11,0,100,0,0,0,0,0,0,0,232,229804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Start Waypoint'),
(-300236,0,1001,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Respawn (Linked) - Set Phase 1'),
(-300236,0,1002,1003,108,0,100,0,2,229805,0,0,0,0,45,1,0,0,0,0,0,14,929,185965,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 2 Reached - Set Data 1 0 on \'Mailbox\''),
(-300236,0,1003,0,61,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 2 Reached (Linked) - Set Data 1 3 on \'Skyguard Navigator\''),
(-300236,0,1004,0,108,0,100,0,3,229804,0,0,0,0,80,2298000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 3 Reached - Run Script'),
(-300236,0,1005,0,1,2,100,0,2000,2000,0,0,0,0,87,2298002,2298003,2298004,2298005,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - OOC (Phase 2) - Run Random Script'),
-- (-300236,0,1005,0,1,2,100,0,2000,2000,0,0,0,0,87,2298002,2298003,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - OOC (Phase 2) - Run Random Script'),
(-300236,0,1006,0,108,0,100,0,52,229800,0,0,0,0,80,2298007,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 52 Reached - Run Script'),
(-300236,0,1007,0,108,0,100,0,42,229801,0,0,0,0,80,2298007,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 42 Reached - Run Script'),
(-300236,0,1008,0,108,0,100,0,31,229802,0,0,0,0,80,2298007,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 31 Reached - Run Script'),
(-300236,0,1009,0,108,0,100,0,54,229803,0,0,0,0,80,2298007,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Run Script'),
(-300236,0,1010,1011,108,0,100,0,1,229805,0,0,0,0,80,2298001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 1 Reached - Run Script'),
(-300236,0,1011,1012,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300237,22980,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 1 Reached (Linked) - Set Data 1 1 on \'Skyguard Scout\''),
(-300236,0,1012,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300238,22980,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 1 Reached (Linked) - Set Data 1 1 on \'Skyguard Scout\''),
(-300236,0,1013,0,108,0,100,0,25,229800,0,0,0,0,45,1,2,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 25 Reached - Set Data 1 2 on \'Skyguard Navigator\''),
(-300236,0,1014,0,108,0,100,0,21,229801,0,0,0,0,45,1,2,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 21 Reached - Set Data 1 2 on \'Skyguard Navigator\''),
(-300236,0,1015,0,108,0,100,0,16,229802,0,0,0,0,45,1,2,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 16 Reached - Set Data 1 2 on \'Skyguard Navigator\''),
(-300236,0,1016,0,108,0,100,0,26,229803,0,0,0,0,45,1,2,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 26 Reached - Set Data 1 2 on \'Skyguard Navigator\''),
(-300236,0,1017,0,108,0,100,0,52,229800,0,0,0,0,45,1,1,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 52 Reached - Set Data 1 1 on \'Skyguard Navigator\''),
(-300236,0,1018,0,108,0,100,0,42,229801,0,0,0,0,45,1,1,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 42 Reached - Set Data 1 1 on \'Skyguard Navigator\''),
(-300236,0,1019,0,108,0,100,0,31,229802,0,0,0,0,45,1,1,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 31 Reached - Set Data 1 1 on \'Skyguard Navigator\''),
(-300236,0,1020,0,108,0,100,0,54,229803,0,0,0,0,45,1,1,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Set Data 1 1 on \'Skyguard Navigator\''),
(-300236,0,1021,0,108,0,100,0,2,229803,0,0,0,0,45,1,0,0,0,0,0,10,300235,22982,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 2 Reached - Set Data 1 0 on \'Skyguard Navigator\''),
(-300236,0,1022,0,108,0,100,0,14,229800,0,0,0,0,45,1,0,0,0,0,0,10,91788,23347,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 14 Reached - Set Data 1 0 on \'Tork\''),

(-300237,0,1000,0,11,0,100,0,0,0,0,0,0,0,29,2,235,0,0,0,0,10,300236,22980,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Follow \'Skyguard Scout\''),
(-300237,0,1001,0,38,0,100,0,1,2,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 2 - Stop Follow \'Skyguard Scout\''),
(-300237,0,1002,0,108,0,100,0,52,229800,0,0,0,0,232,229806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 52 Reached - Start Waypoint'),
(-300237,0,1003,0,108,0,100,0,42,229801,0,0,0,0,232,229806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 42 Reached - Start Waypoint'),
(-300237,0,1004,0,108,0,100,0,31,229802,0,0,0,0,232,229806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 31 Reached - Start Waypoint'),
(-300237,0,1005,0,108,0,100,0,54,229803,0,0,0,0,232,229806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Start Waypoint'),

(-300238,0,1000,0,11,0,100,0,0,0,0,0,0,0,29,3,160,0,0,0,0,10,300236,22980,0,0,0,0,0,0,'Skyguard Scout - On Respawn - Follow \'Skyguard Scout\''),
(-300238,0,1001,0,38,0,100,0,1,2,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Data Set 1 2 - Stop Follow \'Skyguard Scout\''),
(-300238,0,1002,0,108,0,100,0,52,229800,0,0,0,0,232,229807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 52 Reached - Start Waypoint'),
(-300238,0,1003,0,108,0,100,0,42,229801,0,0,0,0,232,229807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 42 Reached - Start Waypoint'),
(-300238,0,1004,0,108,0,100,0,31,229802,0,0,0,0,232,229807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 31 Reached - Start Waypoint'),
(-300238,0,1005,0,108,0,100,0,54,229803,0,0,0,0,232,229807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Waypoint 54 Reached - Start Waypoint'),

(2298000,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300237,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Scout\''),
(2298000,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300238,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Scout\''),
(2298000,9,2,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Stop Waypoint'),
(2298000,9,3,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.5949,'Skyguard Scout - On Script - Set Orientation'),
(2298000,9,4,0,0,0,100,0,3000,3000,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Emote \'Salute\''),
(2298000,9,5,0,0,0,100,0,500,500,0,0,0,0,45,1,0,0,0,0,0,10,300234,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Navigator\''),
(2298000,9,6,0,0,0,100,0,200,200,0,0,0,0,45,1,0,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Navigator\''),
(2298000,9,7,0,0,0,100,0,500,500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.2198,'Skyguard Scout - On Script - Set Orientation'),
(2298000,9,8,0,0,0,100,0,1000,1000,0,0,0,0,43,0,21152,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Mount to Model'),
(2298000,9,9,0,0,0,100,0,500,500,0,0,0,0,45,1,1,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 1 on \'Skyguard Navigator\''),
(2298000,9,10,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Hover On'),
(2298000,9,11,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Run On'),
(2298000,9,12,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Fly On'),
(2298000,9,13,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,300237,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 2 on \'Skyguard Scout\''),
(2298000,9,14,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,300238,22980,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 2 on \'Skyguard Scout\''),
(2298000,9,15,0,0,0,100,0,10,10,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Phase 2'),

(2298001,9,0,0,0,0,100,0,2000,2000,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Hover Off'),
(2298001,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - UnMount'),
(2298001,9,2,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Run Off'),
(2298001,9,3,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Fly Off'),
(2298001,9,4,0,0,0,100,0,0,0,0,0,0,0,239,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Ground Tier Animation'),

(2298002,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298002,9,1,0,0,0,100,0,10,10,0,0,0,0,232,229800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298002,9,2,0,0,0,100,0,600,600,0,0,0,0,232,229800,0,0,0,0,0,10,300237,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298002,9,3,0,0,0,100,0,600,600,0,0,0,0,232,229800,0,0,0,0,0,10,300238,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298002,9,4,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Set Phase 1"),

(2298003,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298003,9,1,0,0,0,100,0,10,10,0,0,0,0,232,229801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298003,9,2,0,0,0,100,0,600,600,0,0,0,0,232,229801,0,0,0,0,0,10,300237,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298003,9,3,0,0,0,100,0,600,600,0,0,0,0,232,229801,0,0,0,0,0,10,300238,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298003,9,4,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Set Phase 1"),

(2298004,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298004,9,1,0,0,0,100,0,10,10,0,0,0,0,232,229802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298004,9,2,0,0,0,100,0,600,600,0,0,0,0,232,229802,0,0,0,0,0,10,300237,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298004,9,3,0,0,0,100,0,600,600,0,0,0,0,232,229802,0,0,0,0,0,10,300238,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298004,9,4,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Set Phase 1"),

(2298005,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298005,9,1,0,0,0,100,0,10,10,0,0,0,0,232,229803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298005,9,2,0,0,0,100,0,600,600,0,0,0,0,232,229803,0,0,0,0,0,10,300237,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298005,9,3,0,0,0,100,0,600,600,0,0,0,0,232,229803,0,0,0,0,0,10,300238,22980,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint"),
(2298005,9,4,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Set Phase 1"),

(2298006,9,0,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.5949,'Skyguard Scout - On Script - Set Orientation'),
(2298006,9,1,0,0,0,100,0,3000,3000,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Emote \'Salute\''),
(2298006,9,2,0,0,0,100,0,1200,1200,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.2198,'Skyguard Scout - On Script - Set Orientation'),
(2298006,9,3,0,0,0,100,0,1000,1000,0,0,0,0,43,0,21156,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Mount to Model'),
(2298006,9,4,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Stop Waypoint'),
(2298006,9,5,0,0,0,100,0,500,500,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Hover On'),
(2298006,9,6,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Run On'),
(2298006,9,7,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Fly On'),
(2298006,9,8,0,0,0,100,0,0,0,0,0,0,0,239,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Flying Tier Animation'),

(2298007,9,0,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Stop Waypoint"),
(2298007,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300233,22982,0,0,0,0,0,0,'Skyguard Scout - On Script - Set Data 1 0 on \'Skyguard Navigator\''),
(2298007,9,2,0,0,0,100,0,10,10,0,0,0,0,232,229805,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Scout - On Script - Start Waypoint");

DELETE FROM `waypoint_data` WHERE `id` IN (229800,229801,229802,229803,229804,229805,229806,229807);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(229800,1,2539.7,7321.77,377.747,NULL,0,0,1,1,0,100,0),
(229800,2,2547.9,7320.04,382.08,NULL,0,0,1,1,0,100,0),
(229800,3,2558.49,7313.09,384.385,NULL,0,0,1,1,0,100,0),
(229800,4,2570.79,7313.77,384.385,NULL,0,0,1,1,0,100,0),
(229800,5,2579.59,7321.15,384.385,NULL,0,0,1,1,0,100,0),
(229800,6,2586.74,7333.27,384.385,NULL,0,0,1,1,0,100,0),
(229800,7,2585.62,7346.29,384.385,NULL,0,0,1,1,0,100,0),
(229800,8,2581.06,7364.21,390.913,NULL,0,0,1,1,0,100,0),
(229800,9,2559.5,7365.54,397.385,NULL,0,0,1,1,0,100,0),
(229800,10,2533.12,7381.15,401.774,NULL,0,0,1,1,0,100,0),
(229800,11,2517.42,7374.82,407.186,NULL,0,0,1,1,0,100,0),
(229800,12,2506.35,7371.66,402.959,NULL,0,0,1,1,0,100,0),
(229800,13,2462.71,7349.54,400.237,NULL,0,0,1,1,0,100,0), -- debug 7-2-26 start here
(229800,14,2441.13,7332.8,391.071,NULL,0,0,1,1,0,100,0), -- Tork starts his chase 1000
(229800,15,2401,7326.06,384.265,NULL,0,0,1,1,0,100,0),
(229800,16,2364.55,7317.66,383.237,NULL,0,0,1,1,0,100,0),
(229800,17,2321.56,7318.46,382.96,NULL,0,0,1,1,0,100,0),
(229800,18,2308.16,7281.6,387.376,NULL,0,0,1,1,0,100,0),
(229800,19,2346.56,7250.21,385.015,NULL,0,0,1,1,0,100,0),
(229800,20,2391.13,7229.87,386.875,NULL,0,0,1,1,0,100,0),
(229800,21,2439.93,7216.56,387.181,NULL,0,0,1,1,0,100,0),
(229800,22,2468.23,7238.61,389.459,NULL,0,0,1,1,0,100,0),
(229800,23,2467.92,7271.46,392.07,NULL,0,0,1,1,0,100,0),
(229800,24,2469.68,7287.95,392.07,NULL,0,0,1,1,0,100,0),
(229800,25,2470.44,7299.66,392.07,NULL,0,0,1,1,0,100,0),
(229800,26,2478.3,7309.64,392.07,NULL,0,0,1,1,0,100,0),
(229800,27,2489.65,7320.47,387.431,NULL,0,0,1,1,0,100,0),
(229800,28,2516.67,7322.44,386.626,NULL,0,0,1,1,0,100,0),
(229800,29,2530.24,7322.33,386.487,NULL,0,0,1,1,0,100,0),
(229800,30,2557.7,7303.79,387.098,NULL,0,0,1,1,0,100,0),
(229800,31,2572.04,7295.76,387.098,NULL,0,0,1,1,0,100,0),
(229800,32,2607.37,7294.87,387.098,NULL,0,0,1,1,0,100,0),
(229800,33,2628.42,7306.32,387.098,NULL,0,0,1,1,0,100,0),
(229800,34,2602.26,7317.5,395.792,NULL,0,0,1,1,0,100,0),
(229800,35,2561.6,7324.64,390.154,NULL,0,0,1,1,0,100,0),
(229800,36,2535.38,7336.95,388.098,NULL,0,0,1,1,0,100,0),
(229800,37,2510.68,7340.66,385.321,NULL,0,0,1,1,0,100,0),
(229800,38,2481.25,7335.92,384.487,NULL,0,0,1,1,0,100,0),
(229800,39,2474.55,7309.83,387.098,NULL,0,0,1,1,0,100,0),
(229800,40,2496.41,7291.66,387.098,NULL,0,0,1,1,0,100,0),
(229800,41,2525.2,7277.7,387.098,NULL,0,0,1,1,0,100,0),
(229800,42,2546.91,7265.15,387.098,NULL,0,0,1,1,0,100,0),
(229800,43,2552.19,7252.13,387.098,NULL,0,0,1,1,0,100,0),
(229800,44,2535.71,7221.47,387.098,NULL,0,0,1,1,0,100,0),
(229800,45,2510.77,7217.79,387.098,NULL,0,0,1,1,0,100,0),
(229800,46,2495.3,7228.19,387.098,NULL,0,0,1,1,0,100,0),
(229800,47,2475.14,7254.21,387.098,NULL,0,0,1,1,0,100,0),
(229800,48,2477.05,7272.51,387.098,NULL,0,0,1,1,0,100,0),
(229800,49,2473.05,7307.93,387.098,NULL,0,0,1,1,0,100,0),
(229800,50,2487.07,7320.15,387.098,NULL,0,0,1,1,0,100,0),
(229800,51,2503.58,7321.79,379.57,NULL,0,0,1,1,0,100,0),
(229800,52,2518.81,7322.16,376.153,NULL,0,0,1,1,0,100,0),
-- (229800,53,2529.81,7321.69,373.681,NULL,0,6000,1,1,0,100,0), -- Dismount
-- (229800,54,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0), -- Despawn

(229801,1,2539.7,7321.77,377.747,NULL,0,0,1,1,0,100,0), -- 2539.7 7321.77 377.747
(229801,2,2547.9,7320.04,382.08,NULL,0,0,1,1,0,100,0),
(229801,3,2558.49,7313.09,384.385,NULL,0,0,1,1,0,100,0),
(229801,4,2570.79,7313.77,384.385,NULL,0,0,1,1,0,100,0),
(229801,5,2579.59,7321.15,384.385,NULL,0,0,1,1,0,100,0),
(229801,6,2586.74,7333.27,384.385,NULL,0,0,1,1,0,100,0),
(229801,7,2585.62,7346.29,384.385,NULL,0,0,1,1,0,100,0),
(229801,8,2581.06,7364.21,390.913,NULL,0,0,1,1,0,100,0),
(229801,9,2563.06,7367.32,397.385,NULL,0,0,1,1,0,100,0),
(229801,10,2548.23,7368.94,401.774,NULL,0,0,1,1,0,100,0),
(229801,11,2532.86,7383.89,404.048,NULL,0,0,1,1,0,100,0),
(229801,12,2520.15,7381.03,402.959,NULL,0,0,1,1,0,100,0),
(229801,13,2495.62,7376.43,402.848,NULL,0,0,1,1,0,100,0),
(229801,14,2467.16,7363.36,403.57,NULL,0,0,1,1,0,100,0),
(229801,15,2458.97,7351.77,403.987,NULL,0,0,1,1,0,100,0),
(229801,16,2465.41,7333.68,404.625,NULL,0,0,1,1,0,100,0),
(229801,17,2477.27,7298.05,398.348,NULL,0,0,1,1,0,100,0),
(229801,18,2476.69,7273.41,392.07,NULL,0,0,1,1,0,100,0),
(229801,19,2486.31,7227.36,392.07,NULL,0,0,1,1,0,100,0),
(229801,20,2520.18,7208.57,392.07,NULL,0,0,1,1,0,100,0),
(229801,21,2547.49,7233.14,392.07,NULL,0,0,1,1,0,100,0),
(229801,22,2590.75,7252.09,387.098,NULL,0,0,1,1,0,100,0),
(229801,23,2612.28,7282.71,387.098,NULL,0,0,1,1,0,100,0),
(229801,24,2614.2,7324.78,402.987,NULL,0,0,1,1,0,100,0),
(229801,25,2594.84,7352.31,412.126,NULL,0,0,1,1,0,100,0),
(229801,26,2555.84,7355.36,405.597,NULL,0,0,1,1,0,100,0),
(229801,27,2510.68,7340.66,405.015,NULL,0,0,1,1,0,100,0),
(229801,28,2477.99,7326.82,397.57,NULL,0,0,1,1,0,100,0),
(229801,29,2477.48,7301.29,387.098,NULL,0,0,1,1,0,100,0),
(229801,30,2496.41,7291.66,387.098,NULL,0,0,1,1,0,100,0),
(229801,31,2525.2,7277.7,387.098,NULL,0,0,1,1,0,100,0),
(229801,32,2546.91,7265.15,387.098,NULL,0,0,1,1,0,100,0),
(229801,33,2552.19,7252.13,387.098,NULL,0,0,1,1,0,100,0),
(229801,34,2535.71,7221.47,387.098,NULL,0,0,1,1,0,100,0),
(229801,35,2510.77,7217.79,387.098,NULL,0,0,1,1,0,100,0),
(229801,36,2495.3,7228.19,387.098,NULL,0,0,1,1,0,100,0),
(229801,37,2475.14,7254.21,387.098,NULL,0,0,1,1,0,100,0),
(229801,38,2472.29,7280.33,387.098,NULL,0,0,1,1,0,100,0),
(229801,39,2473.05,7307.93,387.098,NULL,0,0,1,1,0,100,0),
(229801,40,2487.07,7320.15,387.098,NULL,0,0,1,1,0,100,0),
(229801,41,2503.58,7321.79,379.57,NULL,0,0,1,1,0,100,0),
(229801,42,2518.81,7322.16,376.153,NULL,0,0,1,1,0,100,0),
-- (229801,43,2529.81,7321.69,373.681,NULL,0,6000,1,1,0,100,0), -- Dismount 
-- (229801,44,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0), -- Despawn

(229802,1,2532,7321.94,373.636,NULL,0,0,1,1,0,100,0), -- 2532 7321.94 373.636
(229802,2,2538.15,7321.15,377.785,NULL,0,0,1,1,0,100,0),
(229802,3,2547.04,7321.1,380.757,NULL,0,0,1,1,0,100,0),
(229802,4,2561.48,7319.79,381.368,NULL,0,0,1,1,0,100,0),
(229802,5,2576.81,7312.12,383.868,NULL,0,0,1,1,0,100,0),
(229802,6,2595.8,7300.02,383.868,NULL,0,0,1,1,0,100,0),
(229802,7,2609.87,7279.45,383.868,NULL,0,0,1,1,0,100,0),
(229802,8,2615.18,7256.75,383.868,NULL,0,0,1,1,0,100,0),
(229802,9,2627.76,7225.03,383.868,NULL,0,0,1,1,0,100,0),
(229802,10,2624.91,7184.94,383.868,NULL,0,0,1,1,0,100,0),
(229802,11,2603.12,7174.57,383.868,NULL,0,0,1,1,0,100,0),
(229802,12,2571.22,7185.01,383.868,NULL,0,0,1,1,0,100,0),
(229802,13,2555.29,7215.27,383.868,NULL,0,0,1,1,0,100,0),
(229802,14,2551.7,7251.59,392.506,NULL,0,0,1,1,0,100,0),
(229802,15,2557.82,7296.19,397.812,NULL,0,0,1,1,0,100,0),
(229802,16,2551.76,7334.28,399.367,NULL,0,0,1,1,0,100,0),
(229802,17,2551.04,7361.48,402.367,NULL,0,0,1,1,0,100,0),
(229802,18,2538.43,7385.16,402.367,NULL,0,0,1,1,0,100,0),
(229802,19,2515.44,7376.7,402.367,NULL,0,0,1,1,0,100,0),
(229802,20,2497.94,7353.16,402.367,NULL,0,0,1,1,0,100,0),
(229802,21,2505.05,7324.21,402.367,NULL,0,0,1,1,0,100,0),
(229802,22,2539.59,7301.33,396.534,NULL,0,0,1,1,0,100,0),
(229802,23,2563.19,7263.01,389.367,NULL,0,0,1,1,0,100,0),
(229802,24,2543.14,7227.09,389.367,NULL,0,0,1,1,0,100,0),
(229802,25,2503.24,7205.34,389.367,NULL,0,0,1,1,0,100,0),
(229802,26,2466.11,7232.23,389.367,NULL,0,0,1,1,0,100,0),
(229802,27,2462.02,7261.15,389.367,NULL,0,0,1,1,0,100,0),
(229802,28,2469.58,7282.4,389.367,NULL,0,0,1,1,0,100,0),
(229802,29,2481.85,7307.83,388.173,NULL,0,0,1,1,0,100,0),
(229802,30,2486.62,7316.19,385.284,NULL,0,0,1,1,0,100,0),
(229802,31,2512.46,7321.32,380.2,NULL,0,0,1,1,0,100,0),
-- (229802,32,2530.1,7322.32,373.867,NULL,0,6000,1,1,0,100,0), -- dismount
-- (229802,33,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0), -- Despawn

(229803,1,2539.7,7321.77,377.747,NULL,0,0,1,1,0,100,0), -- Start path ID 1 for navigator with mug 1000
(229803,2,2547.9,7320.04,382.08,NULL,0,0,1,1,0,100,0),
(229803,3,2558.49,7313.09,384.385,NULL,0,0,1,1,0,100,0),
(229803,4,2570.79,7313.77,384.385,NULL,0,0,1,1,0,100,0),
(229803,5,2579.59,7321.15,384.385,NULL,0,0,1,1,0,100,0),
(229803,6,2586.74,7333.27,384.385,NULL,0,0,1,1,0,100,0),
(229803,7,2585.62,7346.29,384.385,NULL,0,0,1,1,0,100,0),
(229803,8,2581.06,7364.21,390.913,NULL,0,0,1,1,0,100,0),
(229803,9,2563.06,7367.32,397.385,NULL,0,0,1,1,0,100,0),
(229803,10,2548.23,7368.94,401.774,NULL,0,0,1,1,0,100,0),
(229803,11,2532.86,7383.89,404.048,NULL,0,0,1,1,0,100,0),
(229803,12,2520.15,7381.03,402.959,NULL,0,0,1,1,0,100,0),
(229803,13,2499.97,7369,402.848,NULL,0,0,1,1,0,100,0),
(229803,14,2467.16,7363.36,392.07,NULL,0,0,1,1,0,100,0),
(229803,15,2445.34,7344.86,403.987,NULL,0,0,1,1,0,100,0),
(229803,16,2458.87,7322.81,404.625,NULL,0,0,1,1,0,100,0),
(229803,17,2477.27,7298.05,398.348,NULL,0,0,1,1,0,100,0),
(229803,18,2476.69,7273.41,392.07,NULL,0,0,1,1,0,100,0),
(229803,19,2468,7252.92,392.07,NULL,0,0,1,1,0,100,0),
(229803,20,2486.31,7227.36,392.07,NULL,0,0,1,1,0,100,0),
(229803,21,2520.18,7208.57,392.07,NULL,0,0,1,1,0,100,0),
(229803,22,2547.49,7233.14,392.07,NULL,0,0,1,1,0,100,0),
(229803,23,2552.34,7253.59,392.07,NULL,0,0,1,1,0,100,0),
(229803,24,2546.55,7269.9,392.07,NULL,0,0,1,1,0,100,0),
(229803,25,2518.39,7281.89,392.07,NULL,0,0,1,1,0,100,0),
(229803,26,2499.52,7285.95,392.07,NULL,0,0,1,1,0,100,0), -- Start ID 3 for navigator with cup 1000
(229803,27,2479.16,7295.58,392.07,NULL,0,0,1,1,0,100,0),
(229803,28,2478.3,7309.64,392.07,NULL,0,0,1,1,0,100,0),
(229803,29,2489.65,7320.47,387.431,NULL,0,0,1,1,0,100,0),
(229803,30,2516.67,7322.44,386.626,NULL,0,0,1,1,0,100,0),
(229803,31,2530.24,7322.33,386.487,NULL,0,0,1,1,0,100,0),
(229803,32,2557.7,7303.79,387.098,NULL,0,0,1,1,0,100,0),
(229803,33,2572.04,7295.76,387.098,NULL,0,0,1,1,0,100,0),
(229803,34,2607.37,7294.87,387.098,NULL,0,0,1,1,0,100,0),
(229803,35,2628.42,7306.32,387.098,NULL,0,0,1,1,0,100,0),
(229803,36,2602.26,7317.5,395.792,NULL,0,0,1,1,0,100,0),
(229803,37,2561.6,7324.64,390.154,NULL,0,0,1,1,0,100,0),
(229803,38,2535.38,7336.95,388.098,NULL,0,0,1,1,0,100,0),
(229803,39,2510.68,7340.66,385.321,NULL,0,0,1,1,0,100,0),
(229803,40,2481.25,7335.92,384.487,NULL,0,0,1,1,0,100,0),
(229803,41,2474.55,7309.83,387.098,NULL,0,0,1,1,0,100,0),
(229803,42,2496.41,7291.66,387.098,NULL,0,0,1,1,0,100,0),
(229803,43,2525.2,7277.7,387.098,NULL,0,0,1,1,0,100,0),
(229803,44,2546.91,7265.15,387.098,NULL,0,0,1,1,0,100,0),
(229803,45,2552.19,7252.13,387.098,NULL,0,0,1,1,0,100,0),
(229803,46,2535.71,7221.47,387.098,NULL,0,0,1,1,0,100,0),
(229803,47,2510.77,7217.79,387.098,NULL,0,0,1,1,0,100,0),
(229803,48,2495.3,7228.19,387.098,NULL,0,0,1,1,0,100,0),
(229803,49,2475.14,7254.21,387.098,NULL,0,0,1,1,0,100,0),
(229803,50,2472.29,7280.33,387.098,NULL,0,0,1,1,0,100,0),
(229803,51,2473.05,7307.93,387.098,NULL,0,0,1,1,0,100,0),
(229803,52,2487.07,7320.15,387.098,NULL,0,0,1,1,0,100,0),
(229803,53,2503.58,7321.79,379.57,NULL,0,0,1,1,0,100,0),
(229803,54,2518.81,7322.16,376.153,NULL,0,0,1,1,0,100,0),
-- (229803,55,2529.81,7321.69,373.681,NULL,0,6000,1,1,0,100,0), -- Dismount
-- (229803,56,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0), -- Despawn

(229804,1,2512.251,7319.975,374.0393,NULL,0,0,0,0,0,100,0),
(229804,2,2526.145,7320.5874,373.43802,NULL,0,0,0,0,0,100,0),
(229804,3,2531.4065,7322.6226,373.44287,6.2198,0,0,0,0,0,100,0),

(229805,1,2529.81,7321.69,373.681,NULL,0,6000,1,1,0,100,0), -- Dismount
(229805,2,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0), -- Despawn

(229806,1,2528.6777,7318.781,373.44272,NULL,0,6500,1,1,0,100,0), -- Dismount 235 3
(229806,2,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0), -- Despawn

(229807,1,2526.2192,7324.806,373.43936,NULL,0,6000,1,1,0,100,0), -- Dismount 160 6 -- 2526.2192 7324.806 373.43936
(229807,2,2562.19,7312.28,366.874,NULL,0,1000,1,0,0,100,0); -- Despawn


-- Skyguard Windcharger
UPDATE `creature` SET `position_x` = 2494.18994140625,`position_y` = 7315.56982421875,`position_z` = 370.156005859375,`orientation` = 3.246309995651245 WHERE `guid` = 79497;

DELETE FROM `creature` WHERE `guid` IN (300239,300240,300241,300242,300243);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300239,23257,530,0,0,1,1,1,2495.590087890625,7353.02978515625,380.375,5.166170120239258,300,0,0,43086,0,0,0,0,0,'',0,0,NULL),
(300240,23257,530,0,0,1,1,1,2510.72998046875,7336.81982421875,376.875,5.305799961090088,300,0,0,43086,0,0,0,0,0,'',0,0,NULL),
(300241,23257,530,0,0,1,1,1,2536.800048828125,7311.080078125,373.718994140625,2.2514801025390625,300,0,0,43086,0,0,0,0,0,'',0,0,NULL),
(300242,23257,530,0,0,1,1,1,2544.75,7335.580078125000,373.5069885253906,4.24114990234375,300,0,0,43086,0,0,0,0,0,'',0,0,NULL),
(300243,23257,530,0,0,1,1,1,2512.0400390625,7361.33984375,380.8070068359375,4.1189799308776855,300,0,0,43086,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = 23257 AND `ConditionTypeOrReference` = 5;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23257) AND `source_type` = 0 AND `id` IN (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23257,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Windcharger - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0'),
(23257,0,1,0,0,0,100,0,0,3000,15000,20000,0,0,11,12024,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Skyguard Windcharger - IC - Cast \'Net\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23257);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23257,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Skyguard Windcharger'),
(23257,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Skyguard Windcharger'),
(23257,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Skyguard Windcharger'),
(23257,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Skyguard Windcharger'),
(23257,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Skyguard Windcharger'),
(23257,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Skyguard Windcharger'),
(23257,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Skyguard Windcharger'),
(23257,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Skyguard Windcharger'),
(23257,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Skyguard Windcharger'),
(23257,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Skyguard Windcharger'),
(23257,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Windcharger'),
(23257,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Skyguard Windcharger'),
(23257,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Windcharger'),
(23257,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Skyguard Windcharger'),
(23257,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Windcharger'),
(23257,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Skyguard Windcharger'),
(23257,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Skyguard Windcharger'),
(23257,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Skyguard Windcharger'),
(23257,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Skyguard Windcharger'),
(23257,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Skyguard Windcharger'),
(23257,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Skyguard Windcharger'),
(23257,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Skyguard Windcharger'),
(23257,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Skyguard Windcharger'),
(23257,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Skyguard Windcharger');


-- Skyguard Khatie
DELETE FROM `spell_area` where `spell` in (41574,41523) AND `area` IN (3519,3522);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) VALUES 
(41574,3519,0,0,0,0,2,1,0,0), -- Terokkar Forest -- Sha'tari Skyguard
(41574,3522,0,0,0,0,2,1,0,0), -- Blade's Edge Mountains -- Sha'tari Skyguard
(41523,3522,0,0,0,0,2,1,0,0); -- Blade's Edge Mountains - Ogri'la

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceGroup` IN (0) AND `SourceEntry` IN (41574,41523)  AND `ConditionTypeOrReference` IN (5);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,41574,0,0,5,0,1031,192,0,0,0,0,'','Revered Skyguard Aura spell requires >= Revered'),  -- To limit the aura spell to Revered or higher faction
(17,0,41523,0,0,5,0,1038,192,0,0,0,0,'','Revered Ogri\'la Aura spell requires >= Revered');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (3,4,5,6,7) AND `SourceEntry` = 23335 AND `ConditionTypeOrReference` IN (26,31,34);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (3) AND `SourceEntry` IN (23335)  AND `ConditionTypeOrReference` IN (29);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,3,23335,0,0,29,1,23343,15,0,0,0,0,'','Skyguard Khatie OOC_LOS requires Wrangled Aether Ray near');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23335) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2333500,2333501,2333502,2333503,2333504) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23335,0,0,0,20,0,100,512,11065,0,0,0,0,0,41,5000,0,0,0,0,0,11,23343,15,0,0,0,0,0,0,'Skyguard Khatie - On Quest Reward Wrangle More Aether Rays! - Despawn Target'),
(23335,0,1,0,20,0,100,512,11066,0,0,0,0,0,41,5000,0,0,0,0,0,11,23343,15,0,0,0,0,0,0,'Skyguard Khatie - On Quest Reward Wrangle More Aether Rays! - Despawn Target'),
(23335,0,2,3,10,0,100,0,1,15,5000,5000,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Skyguard Khatie - OOC LOS - Store Player (Invoker)'),
(23335,0,3,4,61,0,100,0,0,0,0,0,0,0,33,23343,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Skyguard Khatie - Link - Give Kill Credit to Player'),
(23335,0,4,5,61,0,100,0,0,0,0,0,0,0,41,5000,0,0,0,0,0,11,23343,15,0,0,0,0,0,0,'Skyguard Khatie - Link - Despawn Aether Ray'),
(23335,0,5,0,61,0,100,0,0,0,0,0,0,0,1,1,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - Link - Say Line 1'),
(23335,0,6,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Khatie - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23335);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(23335,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Skyguard Khatie'),
(23335,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Skyguard Khatie'),
(23335,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Skyguard Khatie'),
(23335,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Skyguard Khatie'),
(23335,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Skyguard Khatie'),
(23335,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Skyguard Khatie'),
(23335,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Skyguard Khatie'),
(23335,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Skyguard Khatie'),
(23335,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Skyguard Khatie'),
(23335,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Skyguard Khatie'),
(23335,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Khatie'),
(23335,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Skyguard Khatie'),
(23335,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Khatie'),
(23335,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Skyguard Khatie'),
(23335,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Khatie'),
(23335,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Skyguard Khatie'),
(23335,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Skyguard Khatie'),
(23335,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Skyguard Khatie'),
(23335,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Skyguard Khatie'),
(23335,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Skyguard Khatie'),
(23335,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Skyguard Khatie'),
(23335,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Skyguard Khatie'),
(23335,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Skyguard Khatie'),
(23335,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Skyguard Khatie'),

(23335,1,0,'Wow!  Thanks for bringing it all the way back here.  You didn\'t have to do that.',12,0,100,4,0,0,21370,0,'Skyguard Khatie'),
(23335,1,1,'You\'re a peach!  I\'ll make sure that the ray is properly cared for.',12,0,100,1,0,0,21371,0,'Skyguard Khatie'),
(23335,1,2,'Thank you soooooo much for bringing it back.  I think you\'re going to be my best wrangler ever!',12,0,100,1,0,0,21372,0,'Skyguard Khatie'),
(23335,1,3,'Oh, isn\'t she a beauty!  Can\'t wait to get her properly trained and back up in the air!',12,0,100,1,0,0,21373,0,'Skyguard Khatie'),
(23335,1,4,'Isn\'t he so cute?!  Thanks for bringing him right to me!!!',12,0,100,1,0,0,21374,0,'Skyguard Khatie'),
(23335,1,5,'We never have enough of these rays for the Skyguard.  You\'re keeping us afloat... literally!',12,0,100,1,0,0,21375,0,'Skyguard Khatie'),
(23335,1,6,'Nice job!  She looks like she\'s in fine condition.  Thank you!',12,0,100,1,0,0,21376,0,'Skyguard Khatie'),
(23335,1,7,'Woo hoo!  More rays for training!',12,0,100,1,0,0,21377,0,'Skyguard Khatie');


-- Sky Commander Adaris and Severin need RP and Text


-- Sky Sergeant Doryn
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23048); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23048) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23048,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sky Sergeant Doryn - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23048);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23048,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Sky Sergeant Doryn'),
(23048,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Sky Sergeant Doryn'),
(23048,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Sky Sergeant Doryn'),
(23048,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Sky Sergeant Doryn'),
(23048,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Sky Sergeant Doryn'),
(23048,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Sky Sergeant Doryn'),
(23048,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Sky Sergeant Doryn'),
(23048,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Sky Sergeant Doryn'),
(23048,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Sky Sergeant Doryn'),
(23048,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Sky Sergeant Doryn'),
(23048,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Sky Sergeant Doryn'),
(23048,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Sky Sergeant Doryn'),
(23048,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Sky Sergeant Doryn'),
(23048,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Sky Sergeant Doryn'),
(23048,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Sky Sergeant Doryn'),
(23048,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Sky Sergeant Doryn'),
(23048,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Sky Sergeant Doryn'),
(23048,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Sky Sergeant Doryn'),
(23048,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Sky Sergeant Doryn'),
(23048,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Sky Sergeant Doryn'),
(23048,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Sky Sergeant Doryn'),
(23048,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Sky Sergeant Doryn'),
(23048,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Sky Sergeant Doryn'),
(23048,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Sky Sergeant Doryn');


-- Grella 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23367); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23367) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23367,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grella - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23367);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23367,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Grella'),
(23367,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Grella'),
(23367,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Grella'),
(23367,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Grella'),
(23367,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Grella'),
(23367,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Grella'),
(23367,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Grella'),
(23367,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Grella'),
(23367,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Grella'),
(23367,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Grella'),
(23367,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Grella'),
(23367,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Grella'),
(23367,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Grella'),
(23367,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Grella'),
(23367,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Grella'),
(23367,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Grella'),
(23367,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Grella'),
(23367,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Grella'),
(23367,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Grella'),
(23367,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Grella'),
(23367,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Grella'),
(23367,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Grella'),
(23367,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Grella'),
(23367,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Grella');


-- Skyguard Handler Deesak 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` in (23415); -- ''

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23415) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23415,0,0,0,8,0,50,0,41575,0,120000,300000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Handler Deesak - On Spell Hit \'Revered Skyguard Aura Effect\' - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23415);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23415,0,0,'Rider $n, good to see you.',12,0,100,0,0,0,21882,0,'Skyguard Handler Deesak'),
(23415,0,1,'Hey, it\'s our ace flyer, $n!',12,0,100,0,0,0,21883,0,'Skyguard Handler Deesak'),
(23415,0,2,'I heard that $n is gunning to be the captain of the air group.',12,0,100,0,0,0,21884,0,'Skyguard Handler Deesak'),
(23415,0,3,'Look who\'s here.  It\'s $n, our top gun.',12,0,100,0,0,0,21885,0,'Skyguard Handler Deesak'),
(23415,0,4,'$n, do you feel the need -- the need for speed?',12,0,100,0,0,0,21886,0,'Skyguard Handler Deesak'),
(23415,0,5,'Good hunting up there, $n!',12,0,100,0,0,0,21888,0,'Skyguard Handler Deesak'),
(23415,0,6,'Buzz the landing pad lately, $n?',12,0,100,0,0,0,21889,0,'Skyguard Handler Deesak'),
(23415,0,7,'$G Mister : Lady; $n, what an unexpected pleasure, $g sir : ma\'am;.',12,0,100,0,0,0,21890,0,'Skyguard Handler Deesak'),
(23415,0,8,'A-TEN-HUT, officer $n on the deck!',12,0,100,66,0,0,21891,0,'Skyguard Handler Deesak'),
(23415,0,9,'With $n on the job, we have nothing to worry about.',12,0,100,0,0,0,21892,0,'Skyguard Handler Deesak'),
(23415,0,10,'$n, terror of the skies, how are you doing?',12,0,100,0,0,0,21893,0,'Skyguard Handler Deesak'),
(23415,0,11,'They say that $n has never been shot down.',12,0,100,0,0,0,21894,0,'Skyguard Handler Deesak'),
(23415,0,12,'Heh, the skies aren\'t so friendly with $n flying them!',12,0,100,0,0,0,21895,0,'Skyguard Handler Deesak'),
(23415,0,13,'Well one thing\'s for sure, $n\'s not a nugget any more!',12,0,100,0,0,0,21896,0,'Skyguard Handler Deesak'),
(23415,0,14,'$n, how\'s your mount holding up?  Pretty rough up there these days?',12,0,100,0,0,0,21897,0,'Skyguard Handler Deesak'),
(23415,0,15,'Well, if it isn\'t our resident $g flyboy : flygirl;, $n.  How\'s it going, ace?',12,0,100,0,0,0,21898,0,'Skyguard Handler Deesak'),
(23415,0,16,'$n, you and I should race sometime.',12,0,100,0,0,0,21937,0,'Skyguard Handler Deesak'),
(23415,0,17,'I hear you fly without a parachute cloak, $n.',12,0,100,0,0,0,21938,0,'Skyguard Handler Deesak'),
(23415,0,18,'The list of Skyguard members is long and distinguished.  $n tops that list.',12,0,100,0,0,0,21939,0,'Skyguard Handler Deesak'),
(23415,0,19,'$n is an officer and a $g gentleman : gentlewoman;.',12,0,100,0,0,0,21940,0,'Skyguard Handler Deesak'),
(23415,0,20,'Ace pilot $n, 12 o\'clock!',12,0,100,0,0,0,21941,0,'Skyguard Handler Deesak'),
(23415,0,21,'Maybe one day $n will teach us a few of $g his : her; tricks?',12,0,100,0,0,0,21942,0,'Skyguard Handler Deesak'),
(23415,0,22,'I\'d be honored to have you on my wing anytime, $n.',12,0,100,0,0,0,21943,0,'Skyguard Handler Deesak'),
(23415,0,23,'$n, you are the Skyguard\'s best; make us proud!',12,0,100,0,0,0,21944,0,'Skyguard Handler Deesak');