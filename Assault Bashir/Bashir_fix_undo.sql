/*
 undo
 Implement the Bash'ir Landing Assault Raid 6-9-96

 - New Game event: 248
 - New Creature GUID: 300194
*/
-- Game Event
DELETE FROM `game_event` WHERE `eventEntry` = 248;

DELETE FROM `game_event_creature` where `eventEntry` = 248;

/* Not needed
-- Invisible Man - No Weapons (Server Only/Hide Body) -- ACT AS TIMER CONTROLLER until I find a better one. 
UPDATE `creature_template` SET `ScriptName` = "" WHERE `entry` = 24417; -- ""

DELETE FROM `creature` WHERE `guid` IN (300194);
*/

-- Aether Tech Apprentice
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 23473;

DELETE FROM `gossip_menu` where MenuID = 8736 AND `TextID` = 11056;

DELETE FROM `npc_text` where ID >= 91101 AND ID <= 91161;


-- Skyguard Lieutenant
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23430;

DELETE FROM `creature_template_addon` where `entry` in (23430);

DELETE FROM `creature` WHERE `guid` IN (300194);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23430 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2343000,2343001,2343002) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23430);

DELETE FROM `waypoint_data` WHERE `id` IN (234300,234301,234302);


-- Skyguard Ranger
UPDATE `creature_template` SET `AIName`='',`flags_extra`=0 WHERE `entry` in (23242); -- 0

DELETE FROM `creature_template_addon` where `entry` in (23242);

DELETE FROM `creature` WHERE `guid` IN (300195,300196,300197,300198);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300195,-300196,-300197,-300198,23242) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324200,2324201,2324202,2324203) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23242);

DELETE FROM `waypoint_data` WHERE `id` IN (232420,232421,232422,232423,232424,232425,232426,232427);


-- Skyguard Aether Tech
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23241;

DELETE FROM `creature` WHERE `guid` IN (300199);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (41289) AND `ScriptName` = 'spell_ethereal_ring_signal_flare';

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23241 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324100,2324101,2324102,2324103) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23241);

DELETE FROM `waypoint_data` WHERE `id` IN (232410,232411);


-- Bash'ir Landing Boss Bunny
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23395;

DELETE FROM `creature` WHERE `guid` IN (300200);

DELETE FROM `creature_addon` WHERE `guid` IN (300200);

DELETE FROM `creature_summon_groups` where `summonerId` = 23395 AND  `summonerType` = 0 AND `groupId` IN (1,2,3,4);

DELETE FROM `smart_scripts` WHERE `entryorguid` = -300200 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2339500,2339501,2339502,2339503,2339504,2339505,2339506,2339507,2339508,2339509,2339510,2339511,2339512,2339513,2339514,2339515,2339516,2339517,2339518,2339519,2339520,2339521,2339522,2339523,2339524,2339525,2339526) AND `source_type` = 9;

DELETE FROM `waypoint_data` WHERE `id` IN (233950);


-- Slavering Slave
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23246;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23246 AND `source_type` = 0;


-- Bash'ir Flesh Fiend
UPDATE `creature_template` SET `movementId` = 150 WHERE `entry` = 23249;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 23249 AND `SourceGroup` = 6  AND `ConditionTypeOrReference` = 106;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23249 AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7,8,9,10);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2324900 AND `source_type` = 9;


-- Bash'ir Subprimal
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23247 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2324700 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23247,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Out of Combat - Disable Combat Movement (No Repeat) (Normal Dungeon)'),
(23247,0,1,2,4,0,100,1,0,0,0,0,0,0,11,17321,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Aggro - Cast \'Spirit Spawn-in\' (No Repeat)'),
(23247,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Aggro - Increment Phase By 1 (No Repeat)'),
(23247,0,3,0,9,1,100,0,0,0,2400,3800,0,40,11,15232,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Within 0-40 Range - Cast \'Shadow Bolt\' (No Repeat)'),
(23247,0,4,5,3,1,100,513,0,15,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(23247,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(23247,0,6,0,9,1,100,512,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(23247,0,7,0,9,1,100,512,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(23247,0,8,0,9,1,100,512,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(23247,0,9,0,3,2,100,512,30,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(23247,0,10,0,0,0,100,0,9000,14000,11000,18000,0,0,11,36097,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - In Combat - Cast \'Blink\' (Phase 1) (No Repeat)');


-- Disruptor Tower
UPDATE `creature_template` SET `AIName`='',`flags_extra` = 128 WHERE `entry` = 23250; -- '' 128

UPDATE `creature_template_model` SET `Probability` = 1 WHERE `CreatureID` = 23250 AND `CreatureDisplayID` = 5187; -- 1
UPDATE `creature_template_model` SET `Probability` = 1 WHERE `CreatureID` = 14501 AND `CreatureDisplayID` = 5187; -- 1

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23250 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2325000 AND `source_type` = 9;


-- Bash'ir Reckoner
UPDATE `creature_template` SET `movementId` = 164 WHERE `entry` = 23332; -- 164

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23332 AND `source_type` = 0 AND `id` IN (4,5,6,7,8);


-- Bash'ir Controller
UPDATE `creature_template` SET `movementId` = 164 WHERE `entry` = 23368; -- 164

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23368 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23368,0,0,0,0,0,75,0,36000,36000,36000,36000,0,0,11,34944,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - In Combat - Cast \'Holy Nova\' (No Repeat)'),
(23368,0,1,0,2,0,100,0,0,40,25000,25000,0,0,11,32130,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - Between 0-40% Health - Cast \'Heal\' (No Repeat)'),
(23368,0,2,0,0,0,75,0,42000,42000,60000,60000,0,0,11,10901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - In Combat - Cast \'Power Word: Shield\' (No Repeat)');


-- The Grand Collector
UPDATE `creature_template` SET `AIName`='SmartAI',`movementId` = 164 WHERE `entry` = 23333;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23333 AND `source_type` = 0;

DELETE FROM `creature_loot_template` WHERE `Entry` IN (23333); -- Imagine my surprise at killing him and just getting 1 apexis crystal. This gives apexis crystals, a crap recipe, a crap armor piece, and a large chance for a crap depleted item 
INSERT INTO `creature_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(23333,22903,0,0.2,0,1,0,1,1,'The Grand Collector - Recipe: Insane Strength Potion'),
(23333,23884,0,0.2,0,1,0,1,1,'The Grand Collector - Schematic: Mana Potion Injector'),
(23333,24013,24013,1,0,1,1,1,1,'The Grand Collector - (ReferenceTable)'),
(23333,32572,0,100,0,1,0,1,1,'The Grand Collector - Apexis Crystal');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23333);


-- The Grand Collector Mirror Image
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23350;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23350 AND `source_type` = 0;


-- Bash'ir Inquisitor
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23414 AND `source_type` = 0 AND `id` IN (4,5,6,7);


-- Ethereal Ring Bolt Target Bunny
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23307;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (40799) AND `ScriptName` = 'spell_bashir_disruptor_explosion';

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23307 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2330700,2330701) AND `source_type` = 9;


-- Ethereal Ring Control Bunny, Elite
UPDATE `creature_template` SET `AIName`='' WHERE `entry` = 23425;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23425 AND `source_type` = 0;

DELETE FROM `waypoint_data` WHERE `id` IN (234250);


-- Etereal Ring Target Bunny, Forge
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 23445;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (41525,41560) AND `ScriptName` = 'spell_bashir_crystalforge_lightning';

DELETE FROM `spell_script_names` WHERE `spell_id` = 41560 AND `ScriptName` = 'spell_ethereal_ring_visual';

DELETE FROM `creature` WHERE `guid` IN (300201);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300201) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2344500) AND `source_type` = 9;


-- Etereal Ring Target Bunny, Lightning
DELETE FROM `creature` WHERE `guid` IN (300202,300203,300204,300205,300206,300207,300208,300209,300210,300211,300212,300213,300214,300215,300216,300217,300218,300219,300220,300221,300222,300223,300224,300225);


-- Aether-tech Assistant
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23243;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23243 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324300,2324301,2324302) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23243);

DELETE FROM `waypoint_data` WHERE `id` IN (2324300,2324301);


-- Aether-tech Adept
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23244;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23244 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324400,2324401,2324402) AND `source_type` = 9;

DELETE FROM `creature_text` WHERE `CreatureID` IN (23244);

DELETE FROM `waypoint_data` WHERE `id` IN (2324400,2324401);


-- Aether-tech Master
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23245;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23245 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324500,2324501,2324502) AND `source_type` = 9;

DELETE FROM `npc_vendor` WHERE `entry` = 23245 AND `item` IN (32626,32627,32628,32629,32630,32631);

DELETE FROM `creature_text` WHERE `CreatureID` IN (23245);

DELETE FROM `waypoint_data` WHERE `id` IN (2324500,2324501);





/*
(-1015039,'Rangers, listen up! We stand ready to take the pain directly to the heathen Bash''ir devils.  Our mission is simple. Hold the area long enough to get accurate readings on their new technology. ',0,0,0,5,'Bashir Intro - Lieutenant 1'),
(-1015040,'But don''t underestimate our enemies.  We are invading them.  We are taking the fight to them.  We have them backed into a corner and they will strike back.',0,0,0,5,'Bashir Intro - Lieutenant 2'),
(-1015041,'We are Skyguard!  This is what we are trained to do.  We do not retreat, we do not surrender.  We will see our mission through even if it means death! We will secure that information or we will die on the field of battle.',0,0,0,0,'Bashir Intro - Lieutenant 3'),
(-1015042,'Anyone have any questions?',0,0,0,6,'Bashir Intro - Lieutenant 4'),
(-1015043,'Look man, I only need to know one thing, where they are.',0,0,0,1,'Bashir Intro - Ranger 1'),
(-1015044,'You are about to find out!',0,0,0,0,'Bashir Intro - Lieutenant 5'),
(-1015045,'Skyguard Rangers, MOUNT UP!!',0,0,0,0,'Bashir Intro - Lieutenant 6'),
(-1015046,'A discovery!  I need aid with these measurements... I''ll send a signal to my colleague!',0,0,0,0,'Bashir - Tech Phase 1 end'),
(-1015047,'This forge can make unstable concoctions... to study them, I need Apexis Shards!',0,0,0,0,'Bashir - Assistant arrived'),
(-1015048,'The disruptor towers over charged the crystalforge, and uncovered more secrets!  Hold them!  Hold them while we gather new data!',0,0,0,0,'Bashir - Tech Phase 2 end'),
(-1015049,'I am growing amazing crystals from these waters.  For catalysts, I must have more Apexis shards!',0,0,0,0,'Bashir - Adept arrived'),
(-1015050,'They called me down from K''aresh to deal with this band of misfits?  Unbelievable!  Prepare to be collected!',0,0,0,0,'Bashir - Collector spawned'),
(-1015051,'Enough!  I will take care of these fools myself!',0,0,0,0,'Bashir - Collector attacks'),
(-1015052,'At last!  The information we seek!  Gather quickly, skyguard.  We must soon return to headquarters with our findings!',0,0,0,0,'Bashir - Tech Phase 3 end'),
(-1015053,'Its properties are amazing!  Provide me with Apexis crystals, and I''ll form weapons and armor within crystal geodes.',0,0,0,0,'Bashir - Master arrived'),
(-1015054,'Our studies are complete!  Well fought!  Headquarters will pour over our gained measurements and, with luck, uncover the Bash''ir''s intentions.  Now, to the skies!',0,0,0,0,'Bashir - Tech Event end'),
(-1015055,'LET''S ROCK!',0,0,0,0,'Bashir Ranger - On Aggro 1'),
(-1015056,'Heads up!',0,0,0,0,'Bashir Ranger - On Aggro 2'),
(-1015057,'Let''s go!',0,0,0,0,'Bashir Ranger - On Aggro 3'),
(-1015058,'Who''s next?',0,0,0,0,'Bashir Ranger - On Aggro 4'),
(-1015059,'Come on!',0,0,0,0,'Bashir Ranger - On Aggro 5'),
(-1015060,'Oh, you want some of this?',0,0,0,0,'Bashir Ranger - On Aggro 6'),
(-1015061,'Come on!',0,0,0,0,'Bashir Ranger - On Aggro 7'),

-- 23512 Crystalforge Bunny
-- 23395 Bash'ir Landing Boss Bunny
-- 23368 Bash'ir Controller
*/



