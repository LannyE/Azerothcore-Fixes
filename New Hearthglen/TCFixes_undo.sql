-- The Perfect Dissemblance (12260)
-- Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_cancel_banshees_magic_mirror';





-- A Fall From Grace (12274)
-- Disguise stuff
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_dragonblight_scarlet_raven_priest_image_master','spell_dragonblight_cancel_scarlet_raven_priest_image');

UPDATE `quest_template_addon` SET `SourceSpellID` = 48774 WHERE `ID` = 12274;

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
