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

UPDATE `quest_template_addon` SET `SourceSpellID` = 0 WHERE `ID` = 12274;

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
(188713,1,5,0,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,106200,27247,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (Devout Bodyguard)");

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
(27245,0,0,0,38,0,100,0,1,1,60000,60000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Data Set 1 1 - Say Line 0"),
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
(-98593,0,0,0,38,0,100,0,0,1,0,0,0,85,48757,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set 0 1 - Self Cast 'A Fall from Grace: Summon High Abbot Landgren'"),
-- That aura indeed is removed and that gives us possibility to prevent double-summoning no matter how we handle summon
(-98593,0,1,0,38,0,100,0,0,1,0,0,0,28,48756,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set 0 1 - Remove Aura 'A Fall from Grace: Ring Kissed Dummy Aura'");

-- Final part (no, he doesn't use vehicle for jump)
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27439 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2743900,2743901) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27439,0,0,0,11,0,100,0,0,0,0,0,0,80,2743900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Spawn - Run Script"),
(27439,0,1,0,58,0,100,0,0,0,0,0,0,80,2743901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Waypoint Finished - Run Script"),

-- Hack, at this moment personal spawns can attack any creature, that completely breaks script
(2743900,9,0,0,0,0,100,0,0,0,0,0,0,145,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set ImmuneNPC"),
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
(27439,6,2737.89,-524.4745,103.4476,"High Abbot Landgren");




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