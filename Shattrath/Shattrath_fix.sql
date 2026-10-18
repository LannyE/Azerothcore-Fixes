/*
Shattrath Fixes
Sha'nir, Zahlia, and Seth
 Area triggers and RP after quest turn in and OOC Seth RP

Orphan Matron Mercy
 is always shown not just during children's week

Nicole Bartlett
 Move to right location

Arcanist Savan
 is not in the tavern moved to corrent location

Jonru,Mijiri
 Remove Civilian flag

Horde Warbringer
 Correct location

Ontok Shatterhorn,Asara Dawnblaze,Saeld Brightflare
 Create creatures
 New GUID: 300100,300101,300102

Skettis Outcasts
 waypoints

Rats
 add more rats
 reuse GUIDs: 66789,66791,66793

Refugee Kids
 Add Waypoints and random text
 fix waypoints
 
Refugee Child
 Add waypoints and random text
 Add waypoint and text in Orphanage
 New GUIDs: 300103,300104

The Rokk and Grisy Spicecrackle
 Add text

Kradu Grimblade
 move and stop using an axe like a blacksmith's hammer

Refugees
 Remove Injured Refugees from Orphanage and reuse their GUIDS: 66789,66791,66793
 Add Waypoints, adjust positions, and add more.  
 New GUIDs: 300091-30099

Worlds End
 Remove investigator and jadaar because they are not in Shattrath they are in the Argent tournament grounds
 add waypoints and roleplay for Leatei

Granny Smith, Eiin, Viggz Shinesparked
 waypoints and text

Cro Threadstrong
 Scripts and text

Grok
 Text
 
 Fantei
  Smart scripts

Grand Anchorite Almonen
	patrols??
    Talks with Commander Steele
	
Commander Steele
	Steele and trainees attend Almonen sermon. 
     Converted to SpawnGroup System 5-4-26
	 
Emissary Mordin
  Appears to have quotes

Lord Torvos 
 Texts
 
Shattered Sun Marksman
  Fix smart scripts

Shattered Sun Cleric
  Fix emotes and waypoints RP

Shattered Sun Magi
  Fix emotes and waypoints RP

Shattered Sun Trainees
  Fix emotes and waypoints RP

Aldor Anchorite
 Remove from terrace of light.  The city of light quest summons it. available GUID 68464
 
Whirligig Wafflefry
 Fix Orientation and Smart Scripts - Remove waypoint
 
Harbinger Haronem
 Fix smart scripts

Aldor Rise fix RP and extra creatures

Aldor Vindicator
 add aggro text and banish spell

Aldor Acolyte
 Add conditions and text 

Aldor Neophyte
 Delete Creature available guid: 68492,68493,68494,

Aldor Marksman
 Delete Creature available guid: 68923,68924,68925

Neophyte Nemarn
 Delete Creature available guid: 69108 and fix RP
 Converted to SpawnGroup System 5-4-26
Enchantress Volali
 Needs to be Female

Enchanter Salias
 New Position

Scryer Arcane Guardian 
 Need Waypoint

Scryer Retainer
 Need 4 more reused GUIDs 68492,68493,68494, 68464

Scryer Arcanist
 Need 4 more reused GUIDs 68923,68924,68925,69108

Shattrath City Peacekeeper
 add aggro text and waypoints

Tobias the Filth Gorger
 Fix quest completion smart scripts and RP
 
Gordie
 Fix RP and waypoint

*/
-- Sha'nir
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (18597);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (4425);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES 
(4425,'SmartTrigger');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18597) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4425) AND `source_type` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1859700,1859701) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(4425,2,0,0,46,0,100,0,4425,0,0,0,0,0,45,0,1,0,0,0,0,19,18597,0,0,0,0,0,0,0,'Areatrigger (Lower City) - On Trigger - Set Data 0 1 (Sha\'nir)'),

(18597,0,0,0,38,0,100,0,0,1,60000,60000,0,0,80,1859700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Data Set 0 1 - Run Script'),
(18597,0,1,0,20,0,100,0,10020,0,0,0,0,0,80,1859701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Quest Turn In - Run Script'),
(18597,0,2,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Respawn - Set Run Off'),

(1859700,9,0,0,0,0,100,0,6000,6000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Say Line 0'),

(1859701,9,0,0,0,0,100,0,3000,3000,0,0,0,0,45,1,0,0,0,0,0,10,66908,18652,0,0,0,0,0,0,'Sha\'nir - On Script - Set Data 1 0 (Zahlia)'),
(1859701,9,1,0,0,0,100,0,0,0,0,0,0,0,71,0,0,2198,2200,0,0,1,0,0,0,0,0,0,0,0,"Sha\'nir - On Script - Change Equipment"), -- Change to monster-item-potion-blue and green.
(1859701,9,2,0,0,0,100,0,100,100,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Remove Npc Flags Questgiver'),
(1859701,9,3,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.94102,'Sha\'nir - On Script - Set Orientation'),
(1859701,9,4,0,0,0,100,0,2000,2000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Set Emote State \'STATE_USESTANDING_NOSHEATHE\''),
(1859701,9,5,0,0,0,100,0,100,100,0,0,0,0,4,1105,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Play Sound 1105'),
(1859701,9,6,0,0,0,100,0,2000,2000,0,0,0,0,4,1105,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Play Sound 1105'),
(1859701,9,7,0,0,0,100,0,4000,4000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Remove Emote State \'STATE_USESTANDING_NOSHEATHE\''),
(1859701,9,8,0,0,0,100,0,0,0,0,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Torkus Jr. - On Script - Change Equipment"), -- remove the equipment
(1859701,9,9,0,0,0,100,0,2000,2000,0,0,0,0,69,1,0,0,1,0,0,10,66908,18652,0,0,0,0,0,0,'Sha\'nir - On Script - Move to POS \'Zahlia\''),
(1859701,9,10,0,0,0,100,0,3000,3000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Say Line 1'),
(1859701,9,11,0,0,0,100,0,4000,4000,0,0,0,0,45,2,0,0,0,0,0,10,66908,18652,0,0,0,0,0,0,'Sha\'nir - On Script - Set Data 2 0 (Zahlia)'),
(1859701,9,12,0,0,0,100,0,13200,13200,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1606.39,5292.01,-38.5767,2.94102,'Sha\'nir - On Script - Move to POS'),
(1859701,9,13,0,0,0,100,0,10000,10000,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sha\'nir - On Script - Set Npc Flags Questgiver');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18597);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18597,0,0,'A newcomer to Shattrath!  Make sure to drop by later.  We can always use a hand with the injured.',12,0,100,0,0,0,17282,0,'Sha\'nir'),
(18597,1,0,'Drink this, Zahlia.  It is not as potent as I\'d hoped, but perhaps it will help.',12,0,100,1,0,0,15639,0,'Sha\'nir');


-- Zahlia
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (18652);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18652) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1865200,1865201) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(18652,0,0,0,38,0,100,0,1,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Data Set 1 0 - Set Phase 2'),
(18652,0,1,0,38,0,100,0,2,0,0,0,0,0,80,1865200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Data Set 2 0 - Run Script'),
(18652,0,2,0,38,0,100,0,3,0,0,0,0,0,80,1865201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Data Set 3 0 - Run Script'),
(18652,0,3,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Respawn - Set Phase 1'),
(18652,0,4,0,1,1,100,0,180000,300000,180000,300000,0,0,45,1,0,0,0,0,0,10,66909,18653,0,0,0,0,0,0,'Zahlia - OOC (Phase 1) - Set Data 1 0 (Seth)'),

(1865200,9,0,0,0,0,100,0,0,0,0,0,0,0,71,0,0,2705,0,0,0,1,0,0,0,0,0,0,0,0,"Zahlia - On Script - Change Equipment"),
(1865200,9,1,0,0,0,100,0,2200,2200,0,0,0,0,5,92,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Emote \'ONESHOT_EAT_NOSHEATHE\''), -- it takes over two seconds to swap out equipment to be shown
(1865200,9,2,0,0,0,100,0,4000,4000,0,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Zahlia - On Script - Change Equipment"),
(1865200,9,3,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Say Line 1'),
(1865200,9,4,0,0,0,100,0,3000,3000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Set Flag Standstate Kneel'),
(1865200,9,5,0,0,0,100,0,2000,2000,0,0,0,0,5,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Emote Cry'),
(1865200,9,6,0,0,0,100,0,2500,2500,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Say Line 2'),
(1865200,9,7,0,0,0,100,0,3000,3000,0,0,0,0,45,2,0,0,0,0,0,10,66909,18653,0,0,0,0,0,0,'Zahlia - On Script - Set Data 2 0 (Seth)'),
(1865200,9,8,0,0,0,100,0,1000,1000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Remove Flag Standstate Kneel'),
(1865200,9,9,0,0,0,100,0,16500,16500,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Set Phase 2'),

(1865201,9,0,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zahlia - On Script - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18652);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18652,0,0,'Don\'t go too far away Seth.  You know mommy doesn\'t like it when she can\'t hear you.',12,0,100,0,0,0,15634,0,'Zahlia'),
(18652,1,0,'I... I can see...',12,0,100,0,0,0,15636,0,'Zahlia'),
(18652,2,0,'I thought I\'d never see my son\'s face again.  Come here, Seth!  Let mom take a look at you!',12,0,100,0,0,0,15637,0,'Zahlia');


-- Seth
UPDATE `creature` SET `position_x`=-1609.2058,`position_y`=5299.9814,`position_z`=-38.599598,`orientation`=0.5194 WHERE `guid`=66909;
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (18653);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18653) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1865300,1865301) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(18653,0,0,0,38,0,100,0,1,0,0,0,0,0,53,1,18653,0,0,0,0,1,0,0,0,0,0,0,0,0,'Seth - On Data Set 1 0 - Start Waypoint Movement'), -- Walk away
(18653,0,1,0,40,0,100,0,4,18653,0,0,0,0,80,1865300,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Seth - On Waypoint 4 Reached - Run Script'),
(18653,0,2,0,38,0,100,0,2,0,0,0,0,0,80,1865301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Seth - On Data Set 2 0 - Run Script'), -- Walk closer
(18653,0,3,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Seth - On Respawn - Set Run Off'),

(1865300,9,0,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,66908,18652,0,0,0,0,0,0,'Seth - On Script - Set Data 3 0 (Zahlia)'),
(1865300,9,1,0,0,0,100,0,6000,6000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,6.01,'Seth - On Script - Set Orientation'),
(1865300,9,2,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Seth - On Script - Say Line 0'),
(1865300,9,3,0,0,0,100,0,1500,1500,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1609.2058,5299.9814,-38.599598,0.5194,'Seth - On Script - Move to POS'),

(1865301,9,0,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1607.6989,5301.0435,-38.577175,0.468,'Seth - On Script - Move to POS'),
(1865301,9,1,0,0,0,100,0,1500,1500,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Seth - On Script - Say Line 1'),
(1865301,9,2,0,0,0,100,0,15000,15000,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1609.2058,5299.9814,-38.599598,0.5194,'Seth - On Script - Move to POS');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18653);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18653,0,0,'Coming, momma!',12,0,100,0,0,0,15635,0,'Seth'),
(18653,1,0,'Don\'t cry mommy.  I\'m right here, see?',12,0,100,0,0,0,15638,0,'Seth');

DELETE FROM `waypoints` WHERE `entry`=18653;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(18653,1,-1610.5375,5299.474,-39.223892,NULL,0,"Seth"),
(18653,2,-1614.8876,5300.805,-40.208305,NULL,0,"Seth"),
(18653,3,-1616.8209,5302.3394,-40.208305,NULL,0,"Seth"),
(18653,4,-1619.0883,5304.6846,-40.208305,2.2781,0,"Seth");


-- Orphan Matron Mercy 
DELETE FROM `game_event_creature` WHERE `eventEntry` = 10 and `guid` IN (12401);


-- Nicole Bartlett
UPDATE `creature` SET `position_x`=-1899.8955,`position_y`=5150.024,`position_z`=-38.565765 WHERE `guid`=68341;


-- Arcanist Savan
UPDATE `creature` SET `position_x`=-2139.32,`position_y`=5552.88,`position_z`=50.3823,`orientation`=0.261799 WHERE `guid`=2196;


-- Jonru
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (34999); -- 2


-- Mijir
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (35000); -- 2


-- Horde Warbringer
UPDATE `creature` SET `position_x`=-1968.8243,`position_y`=5261.995,`position_z`=-38.845924,`orientation`=3.858 WHERE `guid`=16472;


-- Saeld Brightflare
DELETE FROM `creature` where guid in (300100);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300100,35001,0,0,530,0,0,1,1,1,-1971.0428,5267.372,-38.845123,3.213,25,0,0,521300,448950,0,0,0,0,'',0,0,NULL);


-- Asara Dawnblaze
DELETE FROM `creature` where guid in (300101);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300101,35002,0,0,530,0,0,1,1,1,-1958.6832,5258.996,-38.84545,4.9588,25,0,0,521300,448950,0,0,0,0,'',0,0,NULL);


-- Ontok Shatterhorn
DELETE FROM `creature` where guid in (300102);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300102,27668,0,0,530,0,0,1,1,0,-1965.2322,5173.22,-38.230865,0.421,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);


-- Skettis Outcast
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 2 WHERE `guid` in (68376,68379,68381); -- 1 5

DELETE FROM `creature_addon` where `guid` in (68376,68379,68381);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68376,683760,0,0,0,0,0,NULL),
(68379,683790,0,0,0,0,0,NULL),
(68381,683810,0,0,0,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-68376,-68379,-68381);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-68376,0,0,0,1,0,100,1,500,500,0,0,0,0,5,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skettis Outcast - OOC - Nothing'),
(-68379,0,0,0,1,0,100,1,500,500,0,0,0,0,5,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skettis Outcast - OOC - Nothing'),
(-68381,0,0,0,1,0,100,1,500,500,0,0,0,0,5,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skettis Outcast - OOC - Nothing');

DELETE FROM waypoint_scripts where id IN (683810,683811) and guid IN (683810,683811);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(683810,3,1,1,0,0,0,0,0,0,683810),
(683811,4,1,1,0,0,0,0,0,0,683811);

DELETE FROM `waypoint_data` where `id` in (683760,683790,683810);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(683760,1,-1614.2814,5391.4897,-37.739777,NULL,0,0,0,100,0),
(683760,2,-1608.8091,5381.528,-39.709297,NULL,0,0,0,100,0),
(683760,3,-1612.1056,5382.253,-39.352345,2.952,3000,0,0,100,0),
(683760,4,-1614.2814,5391.4897,-37.739777,NULL,0,0,0,100,0),
(683760,5,-1615.11,5397.37,-36.7181,NULL,0,0,0,100,0), -- Home POS
(683760,6,-1615.3586,5406.9473,-35.392056,0.3798,3000,0,0,100,0), -- Bridge turn around
(683760,7,-1615.11,5397.37,-36.7181,NULL,0,0,0,100,0),

(683790,1,-1638.168,5474.2344,-42.666763,1.9011,2000,0,0,100,0),
(683790,2,-1631.5074,5444.1304,-42.224045,NULL,0,0,0,100,0),
(683790,3,-1632.2264,5421.9604,-42.773643,NULL,0,0,0,100,0),
(683790,4,-1636.8131,5409.2188,-44.22103,NULL,0,0,0,100,0),
(683790,5,-1646.7922,5390.246,-45.618706,NULL,0,0,0,100,0),
(683790,6,-1658.7051,5390.0806,-45.53684,NULL,0,0,0,100,0),
(683790,7,-1661.1605,5390.4746,-45.001133,NULL,0,0,0,100,0),
(683790,8,-1662.7379,5395.623,-44.310062,NULL,0,0,0,100,0),
(683790,9,-1662.3755,5402.269,-44.467724,NULL,0,0,0,100,0),
(683790,10,-1659.3362,5414.7495,-42.3202,NULL,0,0,0,100,0),
(683790,11,-1642.1459,5431.2627,-43.767002,NULL,0,0,0,100,0),
(683790,12,-1641.9694,5433.9644,-43.598846,NULL,0,0,0,100,0),

(683810,1,-1641.5114,5466.106,-43.33576,NULL,0,0,0,100,0),
(683810,2,-1648.461,5477.8667,-43.67898,NULL,0,0,0,100,0),
(683810,3,-1649.8118,5501.6406,-43.141506,NULL,0,0,0,100,0),
(683810,4,-1643.5083,5514.014,-41.6916,NULL,0,0,0,100,0),
(683810,5,-1635.2896,5518.751,-39.579643,0.4541,7000,0,683810,100,0), -- Araac
(683810,6,-1640.8256,5482.203,-42.58718,NULL,0,0,0,100,0),
(683810,7,-1635.09,5454.77,-42.8036,NULL,0,0,0,100,0), -- Home pos
(683810,8,-1642.708,5446.118,-43.439316,NULL,0,0,0,100,0),
(683810,9,-1648.6007,5442.552,-40.40677,NULL,0,0,0,100,0),
(683810,10,-1664.2021,5427.2266,-38.84954,NULL,0,0,0,100,0),
(683810,11,-1681.4949,5427.197,-38.81007,NULL,0,0,0,100,0),
(683810,12,-1730.042,5428.6387,-12.427477,NULL,0,0,0,100,0), -- Top of ramp
(683810,13,-1733.8982,5431.842,-12.427477,NULL,0,0,0,100,0),
(683810,14,-1734.0342,5434.533,-12.427477,NULL,0,0,0,100,0),
(683810,15,-1729.7426,5437.753,-12.427477,NULL,0,0,0,100,0),
(683810,16,-1710.8281,5438.6875,-12.427477,.0626,20000,0,683811,100,0), -- Stop turn around
(683810,17,-1729.7426,5437.753,-12.427477,NULL,0,0,0,100,0),
(683810,18,-1734.0342,5434.533,-12.427477,NULL,0,0,0,100,0),
(683810,19,-1733.8982,5431.842,-12.427477,NULL,0,0,0,100,0),
(683810,20,-1730.042,5428.6387,-12.427477,NULL,0,0,0,100,0),
(683810,21,-1681.4949,5427.197,-38.81007,NULL,0,0,0,100,0),
(683810,22,-1664.2021,5427.2266,-38.84954,NULL,0,0,0,100,0),
(683810,23,-1648.6007,5442.552,-40.40677,NULL,0,0,0,100,0),
(683810,24,-1642.708,5446.118,-43.439316,NULL,0,0,0,100,0),
(683810,25,-1640.2656,5450.3965,-43.171463,NULL,0,0,0,100,0);


-- Rats
UPDATE `creature` SET `position_x`=-1640.0653,`position_y`=5508.436,`position_z`=-40.847828,`orientation`=6.09,`wander_distance` = 4 WHERE `guid` IN (28594,28595,28596,28597,28598,28599);

DELETE FROM `creature` where guid in (66789,66791,66793); -- Reuse Removed Injured Refugee GUIDs
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(66789,4075,0,0,530,0,0,1,1,0,-1641.74,5485.853,-42.537346,1.1159,300,10,0,4,0,1,0,0,0,'',0,0,NULL),
(66791,4075,0,0,530,0,0,1,1,0,-1641.74,5485.853,-42.537346,1.1159,300,10,0,4,0,1,0,0,0,'',0,0,NULL),
(66793,4075,0,0,530,0,0,1,1,0,-1641.74,5485.853,-42.537346,1.1159,300,10,0,4,0,1,0,0,0,'',0,0,NULL);


-- Refugee Kids
UPDATE `creature` SET `wander_distance` = 3, `MovementType` = 1 WHERE `guid` in (14490,16462); -- 0 0
UPDATE `creature` SET `position_x`=-2002.5784,`position_y`=5187.187,`position_z`=-40.208088,`orientation`=1.0814 WHERE `guid`=68567;
UPDATE `creature` SET `position_x`=-2000.4348,`position_y`=5186.2534,`position_z`=-40.208088,`orientation`=1.16 WHERE `guid`=68568;
UPDATE `creature` SET `position_x`=-1889.994,`position_y`=5151.13,`position_z`=-40.20844,`orientation`=0.8902 WHERE `guid`=16462;
UPDATE `creature` SET `position_x`=-1913.6654,`position_y`=5142.2153,`position_z`=-38.56603,`orientation`=5.2287 WHERE `guid`=16409;
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (68562,68565,68566); -- 1 5
UPDATE `creature` SET `wander_distance` = 0,`MovementType` = 2 WHERE `guid` in (68564); -- 5 1
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19163);

DELETE FROM `creature_addon` where `guid` in (68564);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68564,685640,0,0,0,0,0,NULL);

DELETE FROM `creature_formations` where leaderGUID = 68564;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(68564,68564,0,0,512,0,0),
(68564,68566,2,220,512,0,0),
(68564,68567,2,145,512,0,0),
(68564,68568,3,165,512,0,0),
(68564,68565,4,195,512,0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-16409,-68561,-68562,-68563) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1916300,1916301,1916302,1916303,1916304,1916305,1916306,1916307,1916308,1916309,1916310,1916311,1916312,1916313,1916314,1916315) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-16409,0,0,0,1,0,100,1,25000,25000,0,0,0,0,53,1,1916304,1,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - OOC (No Repeat) - Start Waypoint'),
(-16409,0,1,0,40,0,100,0,7,1916304,0,0,0,0,80,1916315,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 7 Reached - Run Script'),
(-16409,0,2,0,40,0,100,0,14,1916304,0,0,0,0,54,200000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 14 Reached - Pause Waypoint'),

(-68561,0,0,0,38,0,100,0,1,0,0,0,0,0,29,1,190,0,0,0,0,10,68562,19163,0,0,0,0,0,0,'Refugee Kid - On Data Set 1 0 - Set Follow'), -- 0 285
(-68561,0,1,2,38,0,100,0,2,0,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Data Set 2 0 - Set Follow Off'),
(-68561,0,2,0,61,0,100,0,0,0,0,0,0,0,89,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Data Set 2 0 (Linked) - Random Movement'),

(-68562,0,0,1,1,0,100,1,25000,25000,0,0,0,0,53,1,19163,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - OOC (No Repeat) - Start Waypoint'),
(-68562,0,1,2,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - OOC (Linked) - Set Data 1 0 \'Refugee Kid\''),
(-68562,0,2,0,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - OOC (Linked) - Set Data 1 0 \'Refugee Kid\''),
(-68562,0,3,0,40,0,100,0,6,19163,0,0,0,0,87,1916300,1916301,1916302,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 6 Reached - Run Random Script'),
(-68562,0,4,0,40,0,100,0,8,1916300,0,0,0,0,87,1916303,1916304,1916305,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 8 Reached - Run Random Script'),
(-68562,0,5,0,40,0,100,0,6,1916301,0,0,0,0,87,1916306,1916307,1916308,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 6 Reached - Run Random Script'),
(-68562,0,6,0,40,0,100,0,18,1916302,0,0,0,0,87,1916309,1916310,1916311,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 18 Reached - Run Random Script'),
(-68562,0,7,0,40,0,100,0,15,1916303,0,0,0,0,87,1916312,1916313,1916314,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Waypoint 15 Reached - Run Random Script'),

(-68563,0,0,0,38,0,100,0,1,0,0,0,0,0,29,1,75,0,0,0,0,10,68562,19163,0,0,0,0,0,0,'Refugee Kid - On Data Set 1 0 - Set Follow'), -- 0
(-68563,0,1,2,38,0,100,0,2,0,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Data Set 2 0 - Set Follow Off'),
(-68563,0,2,0,61,0,100,0,0,0,0,0,0,0,89,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Data Set 2 0 (Linked) - Random Movement'),

-- (-68564,0,0,0,11,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Spawn - Set Run On'),

(1916300,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 0'),
(1916300,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916300,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916301,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 0'),
(1916301,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916300,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916302,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 0'),
(1916302,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916300,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916303,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,1,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 1'),
(1916303,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916301,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916304,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 1'),
(1916304,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916301,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916305,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,1,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 1'),
(1916305,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916301,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916306,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,2,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 2'),
(1916306,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,2,1916302,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916307,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 2'),
(1916307,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,2,1916302,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916308,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,2,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 2'),
(1916308,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,2,1916302,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916309,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,3,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 3'),
(1916309,9,1,0,0,0,100,0,8000,13000,0,0,0,0,53,2,1916303,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916310,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 3'),
(1916310,9,1,0,0,0,100,0,8000,13000,0,0,0,0,53,2,1916303,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916311,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,3,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 3'),
(1916311,9,1,0,0,0,100,0,8000,13000,0,0,0,0,53,2,1916303,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),

(1916312,9,0,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 2 0 \'Refugee Kid\''),
(1916312,9,1,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 2 0 \'Refugee Kid\''),
(1916312,9,2,0,0,0,100,0,100,100,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement'),
(1916312,9,3,0,0,0,100,0,1000,1000,0,0,0,0,1,4,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 4'),
(1916312,9,4,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement Off'),
(1916312,9,5,0,0,0,100,0,100,100,0,0,0,0,53,1,19163,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),
(1916312,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 1 0 \'Refugee Kid\''),
(1916312,9,7,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 1 0 \'Refugee Kid\''),

(1916313,9,0,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 2 0 \'Refugee Kid\''),
(1916313,9,1,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 2 0 \'Refugee Kid\''),
(1916313,9,2,0,0,0,100,0,100,100,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement'),
(1916313,9,3,0,0,0,100,0,1000,1000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 4'),
(1916313,9,4,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement Off'),
(1916313,9,5,0,0,0,100,0,100,100,0,0,0,0,53,1,19163,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),
(1916313,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 1 0 \'Refugee Kid\''),
(1916313,9,7,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 1 0 \'Refugee Kid\''),

(1916314,9,0,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 2 0 \'Refugee Kid\''),
(1916314,9,1,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 2 0 \'Refugee Kid\''),
(1916314,9,2,0,0,0,100,0,100,100,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement'),
(1916314,9,3,0,0,0,100,0,1000,1000,0,0,0,0,1,4,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Say Line 4'),
(1916314,9,4,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement Off'),
(1916314,9,5,0,0,0,100,0,100,100,0,0,0,0,53,1,19163,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Start Waypoint'),
(1916314,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68561,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 1 0 \'Refugee Kid\''),
(1916314,9,7,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68563,19163,0,0,0,0,0,0,'Refugee Kid - On Script - Set Data 1 0 \'Refugee Kid\''),

(1916315,9,0,0,0,0,100,0,0,0,0,0,0,0,54,250000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Pause Waypoint'),
(1916315,9,1,0,0,0,100,0,100,100,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement'),
(1916315,9,2,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Random Movement Off'),
(1916315,9,3,0,0,0,100,0,5000,5000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Kid - On Script - Resume Waypoint');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19163);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19163,0,0,'I wonder if they can fly?',12,0,100,0,0,0,16260,0,'Refugee Kid'),
(19163,0,1,'Why do they like rats anyways?',12,0,100,0,0,0,16261,0,'Refugee Kid'),
(19163,0,2,'I wish I could live in a tree house.',12,0,100,0,0,0,16262,0,'Refugee Kid'),

(19163,1,0,'That bridge looks pretty scary.',12,0,100,0,0,0,16263,0,'Refugee Kid'),
(19163,1,1,'This is a good hiding spot.',12,0,100,0,0,0,16264,0,'Refugee Kid'),
(19163,1,2,'If I lived in a tree I would never come down to the ground.',12,0,100,0,0,0,16265,0,'Refugee Kid'),
(19163,1,3,'Why do they need bridges, can\'t they fly?',12,0,100,0,0,0,16266,0,'Refugee Kid'),

(19163,2,0,'White rats are my favorite',12,0,100,0,0,0,16267,0,'Refugee Kid'),
(19163,2,1,'That rat over there looks mean.  I wonder if it has rabies.',12,0,100,0,0,0,16268,0,'Refugee Kid'),
(19163,2,2,'I had a rat once, but then my mom made me put it back outside.',12,0,100,0,0,0,16269,0,'Refugee Kid'),
(19163,2,3,'I like that brown rat over there.  HEY!  I think he waved at me!!',12,0,100,0,0,0,16270,0,'Refugee Kid'),

(19163,3,0,'Let\'s get outta here!',12,0,100,0,0,0,16272,0,'Refugee Kid'),
(19163,3,1,'Ha ha ha!  Those rats must be real scared now!',12,0,100,0,0,0,16273,0,'Refugee Kid'),
(19163,3,2,'I think the rats are after us!  Run!!',12,0,100,0,0,0,16274,0,'Refugee Kid'),

(19163,4,0,'We\'re safe.  Let\'s rest a bit before we go back.',12,0,100,0,0,0,16279,0,'Refugee Kid'),
(19163,4,1,'We made it!!',12,0,100,0,0,0,16281,0,'Refugee Kid'),
(19163,4,2,'Gross!  I think i might have stepped on a rat!',12,0,100,0,0,0,16282,0,'Refugee Kid'),
(19163,4,3,'I hope they don\'t tell on us.',12,0,100,0,0,0,16283,0,'Refugee Kid');

DELETE FROM `waypoints` WHERE `entry` IN (19163,1916300,1916301,1916302,1916303,1916304);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19163,1,-1622.7156,5324.93,-40.209023,0,0,'Refugee Kid'),
(19163,2,-1620.3342,5334.0796,-40.209023,0,0,'Refugee Kid'),
(19163,3,-1611.9927,5347.7188,-40.209023,0,0,'Refugee Kid'),
(19163,4,-1607.7253,5362.275,-40.209023,0,0,'Refugee Kid'),
(19163,5,-1611.2588,5364.5913,-40.209023,0,0,'Refugee Kid'),
(19163,6,-1611.031,5365.56,-40.208744,0,0,'Refugee Kid'), -- In front of Oloraak's tent

(1916300,1,-1621.0663,5374.91,-40.011208,0,0,'Refugee Kid'),
(1916300,2,-1624.6193,5377.5693,-42.692646,0,0,'Refugee Kid'),
(1916300,3,-1628.9309,5380.338,-44.862644,0,0,'Refugee Kid'),
(1916300,4,-1632.7949,5397.3994,-44.14142,0,0,'Refugee Kid'),
(1916300,5,-1630.2472,5411.4995,-43.4098,0,0,'Refugee Kid'),
(1916300,6,-1622.0809,5411.442,-42.123375,0,0,'Refugee Kid'),
(1916300,7,-1615.9994,5411.2495,-38.854324,0,0,'Refugee Kid'),
(1916300,8,-1617.1228,5414.1455,-38.853367,0,0,'Refugee Kid'), -- Under Bridge

(1916301,1,-1623.5126,5417.1904,-42.096413,0,0,'Refugee Kid'),
(1916301,2,-1632.1492,5434.26,-42.8246,0,0,'Refugee Kid'),
(1916301,3,-1638.8815,5448.463,-43.06752,0,0,'Refugee Kid'),
(1916301,4,-1641.7368,5467.5137,-43.339832,0,0,'Refugee Kid'),
(1916301,5,-1649.5707,5492.9014,-43.74643,0,0,'Refugee Kid'),
(1916301,6,-1638.0363,5513.8857,-40.17986,0,0,'Refugee Kid'), -- Araac's tent

(1916302,1,-1639.3429,5529.389,-39.679726,0,0,'Refugee Kid'),
(1916302,2,-1635.5787,5537.027,-39.04016,0,0,'Refugee Kid'),
(1916302,3,-1631.4236,5539.192,-38.691547,0,0,'Refugee Kid'),
(1916302,4,-1621.2986,5532.748,-37.75929,0,0,'Refugee Kid'),
(1916302,5,-1617.5951,5524.8477,-37.5939,0,0,'Refugee Kid'),
(1916302,6,-1616.6545,5510.2256,-38.09299,0,0,'Refugee Kid'),
(1916302,7,-1622.6177,5499.671,-39.841366,0,0,'Refugee Kid'),
(1916302,8,-1632.1439,5497.874,-41.96533,0,0,'Refugee Kid'),
(1916302,9,-1639.3429,5529.389,-39.679726,0,0,'Refugee Kid'),
(1916302,10,-1635.5787,5537.027,-39.04016,0,0,'Refugee Kid'),
(1916302,11,-1631.4236,5539.192,-38.691547,0,0,'Refugee Kid'),
(1916302,12,-1621.2986,5532.748,-37.75929,0,0,'Refugee Kid'),
(1916302,13,-1617.5951,5524.8477,-37.5939,0,0,'Refugee Kid'),
(1916302,14,-1616.6545,5510.2256,-38.09299,0,0,'Refugee Kid'),
(1916302,15,-1622.6177,5499.671,-39.841366,0,0,'Refugee Kid'),
(1916302,16,-1632.1439,5497.874,-41.96533,0,0,'Refugee Kid'),
(1916302,17,-1640.4825,5505.6826,-40.899582,0,0,'Refugee Kid'),
(1916302,18,-1638.0363,5513.8857,-40.17986,0,0,'Refugee Kid'), -- Run around it twice.

(1916303,1,-1634.0288,5497.1577,-42.11474,0,0,'Refugee Kid'),
(1916303,2,-1657.6467,5489.7437,-43.764854,0,0,'Refugee Kid'),
(1916303,3,-1664.9335,5485.79,-40.40516,0,0,'Refugee Kid'),
(1916303,4,-1675.0948,5481.962,-40.406086,0,0,'Refugee Kid'),
(1916303,5,-1670.4755,5460.4688,-40.406086,0,0,'Refugee Kid'),
(1916303,6,-1651.8661,5429.2593,-40.405685,0,0,'Refugee Kid'),
(1916303,7,-1647.5122,5418.796,-45.876625,0,0,'Refugee Kid'),
(1916303,8,-1633.23,5375.4717,-46.33291,0,0,'Refugee Kid'),
(1916303,9,-1637.4745,5343.4946,-40.2089,0,0,'Refugee Kid'),
(1916303,10,-1634.8287,5337.7856,-39.921505,0,0,'Refugee Kid'),
(1916303,11,-1624.8826,5331.943,-40.208336,0,0,'Refugee Kid'),
(1916303,12,-1623.3811,5326.5264,-40.209007,0,0,'Refugee Kid'),
(1916303,13,-1616.43,5318.61,-40.1092,0,0,'Refugee Kid'),
(1916303,14,-1615.0867,5316.3496,-40.209263,0,0,'Refugee Kid'),
(1916303,15,-1618.77,5315.07,-40.1092,3.13055,0,'Refugee Kid'), -- Back home

(1916304,1,-1913.18,5143.8296,-38.565742,0,0,'Refugee Kid'),
(1916304,2,-1908.7834,5145.398,-38.565742,0,0,'Refugee Kid'),
(1916304,3,-1903.0977,5149.682,-38.477104,0,0,'Refugee Kid'),
(1916304,4,-1898.6855,5154.408,-38.860443,0,0,'Refugee Kid'),
(1916304,5,-1895.6874,5158.15,-39.858425,0,0,'Refugee Kid'),
(1916304,6,-1896.0824,5158.976,-40.20865,0,0,'Refugee Kid'),
(1916304,7,-1901.0795,5162.838,-40.20865,0,0,'Refugee Kid'),
(1916304,8,-1896.0824,5158.976,-40.20865,0,0,'Refugee Kid'),
(1916304,9,-1895.6874,5158.15,-39.858425,0,0,'Refugee Kid'),
(1916304,10,-1898.6855,5154.408,-38.860443,0,0,'Refugee Kid'),
(1916304,11,-1903.0977,5149.682,-38.477104,0,0,'Refugee Kid'),
(1916304,12,-1908.7834,5145.398,-38.565742,0,0,'Refugee Kid'),
(1916304,13,-1913.18,5143.8296,-38.565742,0,0,'Refugee Kid'),
(1916304,14,-1913.6654,5142.2153,-38.56603,0,0,'Refugee Kid');

DELETE FROM `waypoint_data` where `id` in (685640);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(685640,1,-2002.95,5190.4,-39.37591,NULL,0,1,0,100,0),
(685640,2,-2007.7112,5194.0693,-35.692284,NULL,0,1,0,100,0),
(685640,3,-2027.9242,5214.0596,-35.69659,NULL,0,1,0,100,0),
(685640,4,-2029.9114,5220.418,-40.86054,NULL,0,1,0,100,0),
(685640,5,-2017.7738,5234.626,-44.806973,NULL,0,1,0,100,0),
(685640,6,-1981.0166,5247.2627,-44.972874,NULL,0,1,0,100,0),
(685640,7,-1965.114,5243.7573,-43.260227,NULL,0,1,0,100,0),
(685640,8,-1949.1633,5234.3345,-44.502663,NULL,0,1,0,100,0),
(685640,9,-1935.0533,5216.47,-47.32539,NULL,0,1,0,100,0),
(685640,10,-1914.8927,5212.4736,-48.19658,NULL,0,1,0,100,0),
(685640,11,-1906.0972,5209.9346,-49.132698,NULL,0,1,0,100,0),
(685640,12,-1903.6678,5201.873,-48.952915,NULL,0,1,0,100,0),
(685640,13,-1902.8647,5180.3433,-42.963524,NULL,0,1,0,100,0),
(685640,14,-1903.7845,5172.9595,-40.20867,NULL,0,1,0,100,0),
(685640,15,-1904.1025,5169.474,-40.20867,NULL,0,1,0,100,0),
(685640,16,-1884.1981,5144.6396,-40.208675,NULL,0,1,0,100,0),
(685640,17,-1872.499,5138.53,-40.208717,NULL,0,1,0,100,0),
(685640,18,-1869.322,5138.228,-42.467384,NULL,0,1,0,100,0),
(685640,19,-1851.8994,5139.6367,-42.620747,NULL,0,1,0,100,0),
(685640,20,-1845.9183,5146.4653,-43.3352,NULL,0,1,0,100,0),
(685640,21,-1831.501,5177.6436,-50.174965,NULL,0,1,0,100,0),
(685640,22,-1836.6251,5203.0186,-42.047596,NULL,0,1,0,100,0),
(685640,23,-1840.1765,5214.179,-40.208683,NULL,0,1,0,100,0),
(685640,24,-1843.2239,5216.5874,-38.04438,NULL,0,1,0,100,0),
(685640,25,-1854.6447,5222.554,-38.04438,NULL,0,1,0,100,0),
(685640,26,-1857.7911,5223.2217,-40.20899,NULL,0,1,0,100,0),
(685640,27,-1872.1333,5220.364,-40.20899,NULL,0,1,0,100,0),
(685640,28,-1895.1675,5217.3213,-48.080162,NULL,0,1,0,100,0),
(685640,29,-1931.2877,5202.1284,-47.761703,NULL,0,1,0,100,0),
(685640,30,-1938.7903,5201.325,-47.003376,NULL,0,1,0,100,0),
(685640,31,-1942.9017,5200.738,-48.16389,NULL,0,1,0,100,0),
(685640,32,-1949.4172,5199.99,-48.29342,NULL,0,1,0,100,0),
(685640,33,-1958.1578,5199.614,-45.716225,NULL,0,1,0,100,0),
(685640,34,-1968.789,5196.647,-42.73969,NULL,0,1,0,100,0),
(685640,35,-1977.9772,5194.1904,-40.42443,NULL,0,1,0,100,0),
(685640,36,-1996.4352,5187.8706,-40.208252,NULL,0,1,0,100,0),
(685640,37,-2000.5846,5189.549,-40.208252,NULL,0,1,0,100,0);


-- Refugee Children
UPDATE `creature` SET `position_x`=-1714.2965,`position_y`=5288.29,`position_z`=-40.20875,`orientation`=3.8804 WHERE `guid`=68569;
UPDATE `creature` SET `position_x`=-1710.8087,`position_y`=5291.6816,`position_z`=-40.20875,`orientation`=3.901 WHERE `guid`=68570;
UPDATE `creature` SET `position_x`=-1712.2311,`position_y`=5289.859,`position_z`=-40.20875,`orientation`=4.066 WHERE `guid`=68571;
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (68570,68571,68569); -- 1 5
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19164);

DELETE FROM `creature` where guid in (300103,300104);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300103,19164,0,0,530,0,0,1,1,0,-1921.22,5147.19,-37.4287,5.9664,300,0,0,42,0,0,0,0,0,'',0,0,NULL),
(300104,19164,0,0,530,0,0,1,1,0,-1925.2065,5141.4126,-37.494816,4.7766,300,0,0,42,0,0,0,0,0,'',0,0,NULL); -- Will be the one who adores the babies

DELETE FROM `creature_text` WHERE `CreatureID` IN (19164);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19164,0,0,'Sooooo cute!!!',12,0,100,0,0,0,20597,0,'Refugee Child'),
(19164,0,1,'Awww.... Hello little baby!',12,0,100,0,0,0,20598,0,'Refugee Child'),
(19164,0,2,'They are so tiny.',12,0,100,0,0,0,20599,0,'Refugee Child'),
(19164,0,3,'Aww...',12,0,100,0,0,0,20600,0,'Refugee Child'),
(19164,0,4,'Hmm... this one smells kinda funny.',12,0,100,0,0,0,20602,0,'Refugee Child'),
(19164,0,5,'What big eyes you have!',12,0,100,0,0,0,20603,0,'Refugee Child'),
(19164,0,6,'I don\'t remember ever being this small.',12,0,100,0,0,0,20602,0,'Refugee Child'),
(19164,0,7,'How adorable!',12,0,100,0,0,0,20603,0,'Refugee Child'),

(19164,1,0,'I wonder why the sporelings live under the bridge?',12,0,100,0,0,0,16509,0,'Refugee Child'),
(19164,1,1,'Sporelings have pretty colors.',12,0,100,0,0,0,16510,0,'Refugee Child'),
(19164,1,2,'My mom said that if I don\'t get enough exercise, I could end up looking like a sporeling.',12,0,100,0,0,0,16511,0,'Refugee Child'),
(19164,1,3,'Mom says not to feed the sporelings after midnight.',12,0,100,0,0,0,16512,0,'Refugee Child'),

(19164,2,0,'I wonder how Seth\'s mom is doing?',12,0,100,0,0,0,16513,0,'Refugee Child'),
(19164,2,1,'Nurse Mildred is real nice, she took care of my dad when he was hurt.',12,0,100,0,0,0,16514,0,'Refugee Child'),
(19164,2,2,'Sha\'nir said that I can help her when I get older.',12,0,100,0,0,0,16515,0,'Refugee Child'),

(19164,3,0,'The dumb boys think this is a good hiding place.',12,0,100,0,0,0,16516,0,'Refugee Child'),
(19164,3,1,'The boys like to hide here. I think they are afraid to actually climb the bridge.',12,0,100,0,0,0,16517,0,'Refugee Child'),
(19164,3,2,'I heard one of the boys say he wished he could live in a tree. I want to live in a tree too!',12,0,100,0,0,0,16518,0,'Refugee Child'),

(19164,4,0,'There are so many cute, little rats!',12,0,100,0,0,0,16519,0,'Refugee Child'),
(19164,4,1,'I love their little whiskers!',12,0,100,0,0,0,16520,0,'Refugee Child'),
(19164,4,2,'Those smelly boys love scaring the poor, cute, little rats.',12,0,100,0,0,0,16522,0,'Refugee Child'),
(19164,4,3,'Those boys always come over here and cause trouble and scare the poor, little rats.',12,0,100,0,0,0,16523,0,'Refugee Child'),
(19164,4,4,'I taught one of the rats to wave.',12,0,100,0,0,0,16525,0,'Refugee Child'),

(19164,5,0,'I wonder where the baby is?',12,0,100,0,0,0,16527,0,'Refugee Child'),
(19164,5,1,'Look, one of the eggs hatched!',12,0,100,0,0,0,16528,0,'Refugee Child'),
(19164,5,2,'I want to see the baby!',12,0,100,0,0,0,16529,0,'Refugee Child'),
(19164,5,3,'A baby arakkoa must be the cutest thing ever!',12,0,100,0,0,0,16530,0,'Refugee Child');

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-68569,-68570,-68571,-300104) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1916400,1916401,1916402,1916403,1916404,1916405,1916406,1916407,1916408,1916409,1916410,1916411,1916412,1916413,1916414,1916415,1916416,1916417,1916418,1916419,1916420) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-68569,0,0,1,1,0,100,1,25000,25000,0,0,0,0,53,1,19164,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - OOC (No Repeat) - Start Waypoint'),
(-68569,0,1,2,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - OOC (Linked) - Set Data 1 0 \'Refugee Child\''),
(-68569,0,2,0,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - OOC (Linked) - Set Data 1 0 \'Refugee Child\''),
(-68569,0,3,0,40,0,100,0,7,19164,0,0,0,0,87,1916400,1916401,1916402,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Waypoint 7 Reached - Run Random Script'),
(-68569,0,4,0,40,0,100,0,4,1916400,0,0,0,0,87,1916403,1916404,1916405,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Waypoint 4 Reached - Run Random Script'),
(-68569,0,5,0,40,0,100,0,8,1916401,0,0,0,0,87,1916406,1916407,1916408,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Waypoint 8 Reached - Run Random Script'),
(-68569,0,6,0,40,0,100,0,6,1916402,0,0,0,0,87,1916409,1916410,1916411,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Waypoint 6 Reached - Run Random Script'),
(-68569,0,7,0,40,0,100,0,6,1916403,0,0,0,0,87,1916412,1916413,1916414,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Waypoint 6 Reached - Run Random Script'),
(-68569,0,8,0,40,0,100,0,10,1916404,0,0,0,0,87,1916415,1916416,1916417,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Waypoint 10 Reached - Run Random Script'),

(-68570,0,0,0,38,0,100,0,1,0,0,0,0,0,29,0,190,0,0,0,0,10,68569,19164,0,0,0,0,0,0,'Refugee Child - On Data Set 1 0 - Set Follow'),
(-68570,0,1,2,38,0,100,0,2,0,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Data Set 2 0 - Set Follow Off'),
(-68570,0,2,0,61,0,100,0,0,0,0,0,0,0,89,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Data Set 2 0 (Linked) - Random Movement'),
(-68570,0,3,0,38,0,100,0,3,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.576,'Refugee Child - On Data Set 3 0 - Set Orientation'),
(-68570,0,4,2,38,0,100,0,4,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.967,'Refugee Child - On Data Set 4 0 - Set Orientation'),

(-68571,0,0,0,38,0,100,0,1,0,0,0,0,0,29,1,180,0,0,0,0,10,68569,19164,0,0,0,0,0,0,'Refugee Child - On Data Set 1 0 - Set Follow'),
(-68571,0,1,2,38,0,100,0,2,0,0,0,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Data Set 2 0 - Set Follow Off'),
(-68571,0,2,0,61,0,100,0,0,0,0,0,0,0,89,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Data Set 2 0 (Linked) - Random Movement'),
(-68571,0,3,0,38,0,100,0,3,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.576,'Refugee Child - On Data Set 3 0 - Set Orientation'),
(-68571,0,4,2,38,0,100,0,4,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.967,'Refugee Child - On Data Set 4 0 - Set Orientation'),

(-300104,0,0,0,1,0,100,0,25000,25000,194000,204000,0,0,87,1916418,1916419,1916420,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - OOC - Run Random Script'),
(-300104,0,1,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Spawn - Set Run Off'),

(1916400,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,1,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 1'),
(1916400,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916400,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916401,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 1'),
(1916401,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916400,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916402,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,1,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 1'),
(1916402,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916400,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916403,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.576,'Refugee Child - On Script - Set Orientation'),
(1916403,9,1,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 3 0 \'Refugee Child\''),
(1916403,9,2,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 3 0 \'Refugee Child\''),
(1916403,9,3,0,0,0,100,0,1000,3000,0,0,0,0,1,2,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 2'),
(1916403,9,4,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916401,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916404,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.576,'Refugee Child - On Script - Set Orientation'),
(1916404,9,1,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 3 0 \'Refugee Child\''),
(1916404,9,2,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 3 0 \'Refugee Child\''),
(1916404,9,3,0,0,0,100,0,1000,3000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 2'),
(1916404,9,4,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916401,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916405,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.576,'Refugee Child - On Script - Set Orientation'),
(1916405,9,1,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 3 0 \'Refugee Child\''),
(1916405,9,2,0,0,0,100,0,100,100,0,0,0,0,45,3,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 3 0 \'Refugee Child\''),
(1916405,9,3,0,0,0,100,0,1000,3000,0,0,0,0,1,2,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 2'),
(1916405,9,4,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916401,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916406,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,3,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 3'),
(1916406,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916402,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916407,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 3'),
(1916407,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916402,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916408,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,3,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 3'),
(1916408,9,1,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916402,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916409,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,4,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 4'),
(1916409,9,1,0,0,0,100,0,8000,13000,0,0,0,0,53,1,1916403,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916410,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 4'),
(1916410,9,1,0,0,0,100,0,8000,13000,0,0,0,0,53,1,1916403,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916411,9,0,0,0,0,100,0,1000,3000,0,0,0,0,1,4,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 4'),
(1916411,9,1,0,0,0,100,0,8000,13000,0,0,0,0,53,1,1916403,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916412,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.967,'Refugee Child - On Script - Set Orientation'),
(1916412,9,1,0,0,0,100,0,100,100,0,0,0,0,45,4,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 4 0 \'Refugee Child\''),
(1916412,9,2,0,0,0,100,0,100,100,0,0,0,0,45,4,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 4 0 \'Refugee Child\''),
(1916412,9,3,0,0,0,100,0,1000,3000,0,0,0,0,1,5,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 5'),
(1916412,9,4,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916404,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916413,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.967,'Refugee Child - On Script - Set Orientation'),
(1916413,9,1,0,0,0,100,0,100,100,0,0,0,0,45,4,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 4 0 \'Refugee Child\''),
(1916413,9,2,0,0,0,100,0,100,100,0,0,0,0,45,4,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 4 0 \'Refugee Child\''),
(1916413,9,3,0,0,0,100,0,1000,3000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 5'),
(1916413,9,4,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916404,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916414,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.967,'Refugee Child - On Script - Set Orientation'),
(1916414,9,1,0,0,0,100,0,100,100,0,0,0,0,45,4,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 4 0 \'Refugee Child\''),
(1916414,9,2,0,0,0,100,0,100,100,0,0,0,0,45,4,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 4 0 \'Refugee Child\''),
(1916414,9,3,0,0,0,100,0,1000,3000,0,0,0,0,1,5,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 5'),
(1916414,9,4,0,0,0,100,0,20000,30000,0,0,0,0,53,1,1916404,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),

(1916415,9,0,0,0,0,100,0,3000,3000,0,0,0,0,45,2,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 2 0 \'Refugee Child\''),
(1916415,9,1,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 2 0 \'Refugee Child\''),
(1916415,9,2,0,0,0,100,0,100,100,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement'),
(1916415,9,3,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement Off'),
(1916415,9,4,0,0,0,100,0,100,100,0,0,0,0,53,1,19164,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),
(1916415,9,5,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 1 0 \'Refugee Child\''),
(1916415,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 1 0 \'Refugee Child\''),

(1916416,9,0,0,0,0,100,0,3000,3000,0,0,0,0,45,2,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 2 0 \'Refugee Child\''),
(1916416,9,1,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 2 0 \'Refugee Child\''),
(1916416,9,2,0,0,0,100,0,100,100,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement'),
(1916416,9,3,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement Off'),
(1916416,9,4,0,0,0,100,0,100,100,0,0,0,0,53,1,19164,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),
(1916416,9,5,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 1 0 \'Refugee Child\''),
(1916416,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 1 0 \'Refugee Child\''),

(1916417,9,0,0,0,0,100,0,3000,3000,0,0,0,0,45,2,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 2 0 \'Refugee Child\''),
(1916417,9,1,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 2 0 \'Refugee Child\''),
(1916417,9,2,0,0,0,100,0,100,100,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement'),
(1916417,9,3,0,0,0,100,0,180000,240000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement Off'),
(1916417,9,4,0,0,0,100,0,100,100,0,0,0,0,53,1,19164,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Start Waypoint'),
(1916417,9,5,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68570,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 1 0 \'Refugee Child\''),
(1916417,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,68571,19164,0,0,0,0,0,0,'Refugee Child - On Script - Set Data 1 0 \'Refugee Child\''),

(1916418,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-1925.2065,5141.4126,-37.494816,4.7766,'Refugee Child - On Script - Move to POS'),
(1916418,9,1,0,0,0,100,0,5000,7000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 0'),
(1916418,9,2,0,0,0,100,0,35000,45000,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-1923.1815,5143.148,-37.51386,1.2597,'Refugee Child - On Script - Move to POS'),
(1916418,9,3,0,0,0,100,0,8000,13000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement'),
(1916418,9,4,0,0,0,100,0,128000,128000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement Off'),

(1916419,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-1922.5629,5141.6343,-37.51019,4.7766,'Refugee Child - On Script - Move to POS'),
(1916419,9,1,0,0,0,100,0,5000,7000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 0'),
(1916419,9,2,0,0,0,100,0,35000,45000,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-1923.1815,5143.148,-37.51386,1.2597,'Refugee Child - On Script - Move to POS'),
(1916419,9,3,0,0,0,100,0,8000,13000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement'),
(1916419,9,4,0,0,0,100,0,128000,128000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement Off'),

(1916420,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-1919.6681,5141.879,-37.52774,4.7766,'Refugee Child - On Script - Move to POS'),
(1916420,9,1,0,0,0,100,0,5000,7000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Say Line 0'),
(1916420,9,2,0,0,0,100,0,35000,45000,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-1923.1815,5143.148,-37.51386,1.2597,'Refugee Child - On Script - Move to POS'),
(1916420,9,3,0,0,0,100,0,8000,13000,0,0,0,0,89,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement'),
(1916420,9,4,0,0,0,100,0,128000,128000,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Refugee Child - On Script - Random Movement Off');

DELETE FROM `waypoints` WHERE `entry` IN (19164,1916400,1916401,1916402,1916403,1916404);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19164,1,-1704.3273,5296.3813,-40.20875,0,0,'Refugee Child'),
(19164,2,-1697.6866,5314.3384,-40.20875,0,0,'Refugee Child'),
(19164,3,-1694.872,5341.52,-40.20875,0,0,'Refugee Child'),
(19164,4,-1685.3081,5344.5767,-41.63389,0,0,'Refugee Child'),
(19164,5,-1672.5571,5340.77,-46.207417,0,0,'Refugee Child'),
(19164,6,-1670.2719,5336.453,-46.757008,0,0,'Refugee Child'),
(19164,7,-1669.1459,5329.1826,-47.495148,0,0,'Refugee Child'), -- Underpass

(1916400,1,-1658.8057,5317.9136,-40.247463,0,0,'Refugee Child'),
(1916400,2,-1649.1611,5310.158,-40.2082,0,0,'Refugee Child'),
(1916400,3,-1641.4218,5308.459,-40.208977,0,0,'Refugee Child'),
(1916400,4,-1630.0984,5314.507,-40.208977,0,0,'Refugee Child'), -- Infirmary turn to 5.576

(1916401,1,-1622.1893,5328.2793,-40.208977,0,0,'Refugee Child'),
(1916401,2,-1626.1896,5334.9976,-40.208977,0,0,'Refugee Child'),
(1916401,3,-1638.2351,5341.883,-40.20796,0,0,'Refugee Child'),
(1916401,4,-1646.5015,5356.254,-47.656036,0,0,'Refugee Child'),
(1916401,5,-1647.6815,5384.2437,-45.670387,0,0,'Refugee Child'),
(1916401,6,-1639.1382,5395.3525,-45.081,0,0,'Refugee Child'),
(1916401,7,-1633.8596,5405.5073,-44.147423,0,0,'Refugee Child'),
(1916401,8,-1625.9932,5410.9644,-42.57163,0,0,'Refugee Child'), -- Bridge

(1916402,1,-1625.9932,5410.9644,-42.57163,0,0,'Refugee Child'),
(1916402,2,-1627.3408,5423.147,-42.658405,0,0,'Refugee Child'),
(1916402,3,-1637.8427,5446.836,-43.011925,0,0,'Refugee Child'),
(1916402,4,-1642.0896,5468.6084,-43.338074,0,0,'Refugee Child'),
(1916402,5,-1649.754,5485.907,-43.76737,0,0,'Refugee Child'),
(1916402,6,-1634.8179,5512.0225,-39.391655,0,0,'Refugee Child'), -- Araac's tent

(1916403,1,-1644.0924,5510.487,-41.996407,0,0,'Refugee Child'),
(1916403,2,-1646.5731,5475.3086,-43.58807,0,0,'Refugee Child'),
(1916403,3,-1651.3595,5463.791,-44.037777,0,0,'Refugee Child'),
(1916403,4,-1652.6416,5458.2217,-40.40576,0,0,'Refugee Child'),
(1916403,5,-1654.0999,5454.651,-40.40576,0,0,'Refugee Child'),
(1916403,6,-1662.7051,5446.5776,-40.40576,0,0,'Refugee Child'), -- Eggs turn to 2.967

(1916404,1,-1654.523,5427.0947,-40.40576,0,0,'Refugee Child'),
(1916404,2,-1650.41,5414.1367,-46.364136,0,0,'Refugee Child'),
(1916404,3,-1646.9518,5390.5747,-45.614117,0,0,'Refugee Child'),
(1916404,4,-1660.7141,5374.2344,-46.207798,0,0,'Refugee Child'),
(1916404,5,-1670.6737,5353.267,-46.087685,0,0,'Refugee Child'),
(1916404,6,-1684.5819,5345.1772,-41.722637,0,0,'Refugee Child'),
(1916404,7,-1693.3986,5342.243,-41.156136,0,0,'Refugee Child'),
(1916404,8,-1694.9102,5342.065,-40.207855,0,0,'Refugee Child'),
(1916404,9,-1708.0568,5295.181,-40.207855,0,0,'Refugee Child'),
(1916404,10,-1713.9663,5289.2793,-40.207867,0,0,'Refugee Child'); -- Back home

 
-- The Rokk
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (24393);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24393) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24393,0,0,1,1,0,100,0,25000,25000,90000,120000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Rokk - OOC - Say Line 0'),
(24393,0,1,0,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,84720,24416,0,0,0,0,0,0,'The Rokk - OOC (Linked) - Set Data 1 0 \'Grisy Spicecrackle\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (24393);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(24393,0,0,'Are those ingredients chopped up and cooked?  What\'s the hold up?!',12,0,100,5,0,0,23395,0,'The Rokk'),
(24393,0,1,'We have a dozen more dishes to finish today!  Get a move on!',12,0,100,5,0,0,23396,0,'The Rokk'),
(24393,0,2,'Put a little elbow grease into it!  And maybe some regular grease, while you\'re at it.  Those mag\'har sure like the clefthoof fat.',12,0,100,5,0,0,23397,0,'The Rokk');


-- Grisy Spicecrackle
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (24416);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24416) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2441600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24416,0,0,0,38,0,100,0,1,0,0,0,0,0,80,2441600,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Grisy Spicecrackle - On Data Set 1 0 - Run Script'),

(2441600,9,0,0,0,0,100,0,4000,8000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grisy Spicecrackle - On Script - Say Line 0'),
(2441600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grisy Spicecrackle - On Script - Set Emote State \'Working\''),
(2441600,9,2,0,0,0,100,0,75000,85000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grisy Spicecrackle- On Script - Remove Emote State \'Working\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (24416);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(24416,0,0,'Yeah, yeah!  Shut yer trap and let me finish this stew!',12,0,100,1,0,0,23398,0,'Grisy Spicecrackle'),
(24416,0,1,'Can\'t make water boil any faster, genius!',12,0,100,1,0,0,23399,0,'Grisy Spicecrackle'),
(24416,0,2,'It\'ll be done when it\'s done, darn it!',12,0,100,1,0,0,23400,0,'Grisy Spicecrackle');


-- Kradu Grimblade
UPDATE `creature` SET `position_x`=-1851.058,`position_y`=5229.183,`position_z`=-38.04489,`orientation`=4.73 WHERE `guid`=71625;
UPDATE `creature_Template_addon` SET `emote` = 0 WHERE `entry` in (20124); -- 233


-- Injured Refugee
-- DELETE FROM `creature` where guid in (66789,66791,66793); -- Remove three from Orphanage deleted in RATS section

DELETE FROM `creature_addon` where `guid` in (66791);


-- Orc Refugee
UPDATE `creature_addon` SET `bytes1` = 0 ,`bytes2` = 0 WHERE `guid` in (68482); -- 7 1


-- Mag'har Refugee
UPDATE `creature` SET `position_x`=-1621.7411,`position_y`=5347.764,`position_z`=-40.208824,`orientation`=5.7368 WHERE `guid`=68465;
UPDATE `creature` SET `position_x`=-1609.0138,`position_y`=5350.978,`position_z`=-40.20833,`orientation`=1.305 WHERE `guid`=96667;
UPDATE `creature_Template_addon` SET `bytes1` = 0 ,`bytes2` = 0 WHERE `entry` in (19144); -- 7 1

DELETE FROM `creature_addon` where `guid` in (68466,68467);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68466,0,0,7,0,0,0,NULL),
(68467,0,0,7,0,0,0,NULL);


-- Peasant Refugee
UPDATE `creature_addon` SET `bytes2` = 0 WHERE `guid` in (68579,68580,68581,68582,68584,68585); -- 1
UPDATE `creature_addon` SET `path_id` = 685840 WHERE `guid` in (68584);
UPDATE `creature_addon` SET `path_id` = 685850 WHERE `guid` in (68585);

DELETE FROM `creature_addon` where `guid` in (68577,68578,96670,300094,300095);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68577,0,0,0,0,69,0,NULL),
(68578,0,0,0,0,69,0,NULL),
(96670,0,0,0,0,1,0,NULL),
(300094,0,0,7,0,0,0,NULL),
(300095,3000950,0,0,0,0,0,NULL);

UPDATE `creature_Template_addon` SET `bytes2` = 0 ,`emote` = 0 WHERE `entry` in (19170); -- 1 69

UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 2 WHERE `guid` in (68584,68585); -- 1 5 will have waypoint
UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` in (68577,68579,68580,68581,68582,68584,68585,96670);

DELETE FROM `creature` where guid in (300091,300092,300093,300094,300095);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300091,19170,0,0,530,0,0,1,1,0,-1923.9636,5224.5186,-45.10351,1.539,180,0,0,3662,0,0,0,0,0,'',0,0,NULL),
(300092,19170,0,0,530,0,0,1,1,0,-1934.6554,5231.1626,-43.133114,0.7838,180,0,0,3662,0,0,0,0,0,'',0,0,NULL),
(300093,19170,0,0,530,0,0,1,1,0,-1939.6633,5237.9546,-43.079098,6.016,180,0,0,3662,0,0,0,0,0,'',0,0,NULL),
(300094,19170,0,0,530,0,0,1,1,0,-1936.4841,5163.5625,-40.208992,4.2489,180,0,0,3662,0,0,0,0,0,'',0,0,NULL),
(300095,19170,0,0,530,0,0,1,1,0,-2073.5981,5322.721,-37.32378,2.2035,180,0,0,3662,0,2,0,0,0,'',0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (685840,685850,3000950);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(685840,1,-2064.8113,5275.507,-38.464252,NULL,0,0,0,100,0),
(685840,2,-2068.2898,5279.0464,-37.322998,NULL,0,0,0,100,0),
(685840,3,-2071.558,5282.527,-37.322998,NULL,0,0,0,100,0),
(685840,4,-2077.24,5294.1143,-37.322998,NULL,0,0,0,100,0),
(685840,5,-2078.8445,5321.099,-37.322998,NULL,0,0,0,100,0),
(685840,6,-2081.1501,5323.8145,-37.322998,NULL,0,0,0,100,0),
(685840,7,-2082.5244,5324.242,-37.32303,NULL,0,0,0,100,0),
(685840,8,-2085.9216,5325.688,-34.98553,NULL,0,0,0,100,0),
(685840,9,-2087.6033,5326.5635,-34.98553,NULL,0,0,0,100,0),
(685840,10,-2085.9216,5325.688,-34.98553,NULL,0,0,0,100,0),
(685840,11,-2082.5244,5324.242,-37.32303,NULL,0,0,0,100,0),
(685840,12,-2081.1501,5323.8145,-37.322998,NULL,0,0,0,100,0),
(685840,13,-2078.8445,5321.099,-37.322998,NULL,0,0,0,100,0),
(685840,14,-2077.24,5294.1143,-37.322998,NULL,0,0,0,100,0),
(685840,15,-2071.558,5282.527,-37.322998,NULL,0,0,0,100,0),
(685840,16,-2068.2898,5279.0464,-37.322998,NULL,0,0,0,100,0),
(685840,17,-2064.8113,5275.507,-38.464252,NULL,0,0,0,100,0),
(685840,18,-2062.96,5273.46,-38.4644,NULL,0,0,0,100,0), -- start position
(685840,19,-2045.0115,5257.1045,-39.951763,NULL,0,0,0,100,0),
(685840,20,-2040.2628,5248.9893,-41.31814,NULL,0,0,0,100,0),
(685840,21,-2038.4552,5245.614,-42.341877,NULL,0,0,0,100,0),
(685840,22,-2032.0637,5236.6353,-42.88548,NULL,0,0,0,100,0),
(685840,23,-2030.7639,5220.279,-40.72762,NULL,0,0,0,100,0),
(685840,24,-2028.5109,5214.1113,-35.69685,NULL,0,0,0,100,0),
(685840,25,-2017.1478,5202.8975,-35.696766,NULL,0,0,0,100,0),
(685840,26,-2005.6494,5201.2993,-35.695892,NULL,2000,0,0,100,0), -- box
(685840,27,-2017.1478,5202.8975,-35.696766,NULL,0,0,0,100,0),
(685840,28,-2028.5109,5214.1113,-35.69685,NULL,0,0,0,100,0),
(685840,29,-2030.7639,5220.279,-40.72762,NULL,0,0,0,100,0),
(685840,30,-2032.0637,5236.6353,-42.88548,NULL,0,0,0,100,0),
(685840,31,-2038.4552,5245.614,-42.341877,NULL,0,0,0,100,0),
(685840,32,-2040.2628,5248.9893,-41.31814,NULL,0,0,0,100,0),
(685840,33,-2045.0115,5257.1045,-39.951763,NULL,0,0,0,100,0),
(685840,34,-2062.96,5273.46,-38.4644,NULL,0,0,0,100,0),

(685850,1,-2048.3594,5316.4595,-40.144756,NULL,0,0,0,100,0),
(685850,2,-2057.3962,5336.491,-39.000793,NULL,0,0,0,100,0),
(685850,3,-2058.9893,5340.0884,-42.239635,NULL,0,0,0,100,0),
(685850,4,-2062.7156,5342.0938,-40.77029,2.5288,65000,0,0,100,0), -- Far crates
(685850,5,-2058.9893,5340.0884,-42.239635,NULL,0,0,0,100,0),
(685850,6,-2057.3962,5336.491,-39.000793,NULL,0,0,0,100,0),
(685850,7,-2048.3594,5316.4595,-40.144756,NULL,0,0,0,100,0), -- middle crates pass on way back
(685850,8,-2036.2863,5283.459,-38.922405,NULL,0,0,0,100,0),
(685850,9,-2038.9579,5278.5713,-39.070415,4.1929,65000,0,0,100,0), -- at wagon
(685850,10,-2036.2863,5283.459,-38.922405,NULL,0,0,0,100,0),
(685850,11,-2048.3594,5316.4595,-40.144756,NULL,0,0,0,100,0),
(685850,12,-2049.55,5316.25,-39.965237,3.49626,65000,0,0,100,0), -- at middle crate

(3000950,1,-2072.3054,5321.1924,-37.323097,NULL,0,0,0,100,0),
(3000950,2,-2070.7522,5319.5015,-37.323097,NULL,1000,0,0,100,0),
(3000950,3,-2071.1707,5315.189,-37.323097,NULL,0,0,0,100,0),
(3000950,4,-2072.0522,5315.2007,-37.323097,NULL,0,0,0,100,0),
(3000950,5,-2073.6,5322.72,-37.3238,2.2035,65000,0,0,100,0);


-- Lost One Refugee
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (68558); -- 1 5
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 2 WHERE `guid` in (68559); -- 1 5  will have waypoint
UPDATE `creature_addon` SET `path_id` = 685590 WHERE `guid` in (68559);

DELETE FROM `creature` where guid in (300096,300097);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300096,19162,0,0,530,0,0,1,1,0,-1928.57,5223.844,-45.362785,1.4272,300,0,0,3662,0,0,0,0,0,'',0,0,NULL),
(300097,19162,0,0,530,0,0,1,1,0,-1989.9747,5182.986,-40.208805,0.5413,300,0,0,3662,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (685590);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(685590,1,-1970.895,5247.322,-43.563927,NULL,0,0,0,100,0),
(685590,2,-1958.1858,5242.959,-42.944126,NULL,0,0,0,100,0),
(685590,3,-1935.6072,5230.236,-43.630306,NULL,0,0,0,100,0),
(685590,4,-1916.8711,5224.9927,-45.057495,NULL,0,0,0,100,0),
(685590,5,-1909.8773,5216.309,-48.11027,NULL,0,0,0,100,0),
(685590,6,-1883.7537,5197.9424,-50.39791,NULL,0,0,0,100,0),
(685590,7,-1871.7122,5184.547,-50.613506,NULL,0,0,0,100,0),
(685590,8,-1874.8455,5178.1855,-50.09942,NULL,0,0,0,100,0),
(685590,9,-1877.5094,5178.166,-49.51489,NULL,0,0,0,100,0),
(685590,10,-1894.1638,5177.5723,-45.505432,NULL,0,0,0,100,0),
(685590,11,-1906.5173,5177.452,-40.20902,NULL,0,0,0,100,0),
(685590,12,-1924.9307,5176.685,-40.208897,NULL,0,0,0,100,0),
(685590,13,-1943.366,5174.7603,-40.208897,NULL,0,0,0,100,0),
(685590,14,-1950.4156,5177.726,-40.208897,NULL,0,0,0,100,0),
(685590,15,-1967.7357,5187.7593,-40.208897,NULL,0,0,0,100,0),
(685590,16,-1974.1456,5192.9683,-40.330433,NULL,0,0,0,100,0),
(685590,17,-1983.3904,5204.478,-42.966625,NULL,0,0,0,100,0),
(685590,18,-1986.3444,5208.1216,-46.099457,NULL,0,0,0,100,0),
(685590,19,-1999.743,5229.064,-44.564365,NULL,0,0,0,100,0),
(685590,20,-2023.504,5236.303,-44.024117,NULL,0,0,0,100,0),
(685590,21,-2033.2482,5243.687,-42.596424,NULL,0,0,0,100,0),
(685590,22,-2046.8851,5257.2593,-39.706123,NULL,0,0,0,100,0),
(685590,23,-2054.4895,5266.1562,-38.465458,NULL,0,0,0,100,0),
(685590,24,-2057.8245,5272.3906,-38.465458,NULL,0,0,0,100,0),
(685590,25,-2055.6602,5285.672,-38.466324,NULL,0,0,0,100,0),
(685590,26,-2046.7693,5295.483,-38.631367,NULL,0,0,0,100,0),
(685590,27,-2041.3267,5294.9463,-38.841465,NULL,0,0,0,100,0),
(685590,28,-2024.1643,5276.5005,-40.37614,NULL,0,0,0,100,0),
(685590,29,-2020.5417,5272.406,-43.45371,NULL,0,0,0,100,0),
(685590,30,-2011.2657,5261.1924,-43.679817,NULL,0,0,0,100,0),
(685590,31,-1997.6357,5252.256,-44.47455,NULL,0,0,0,100,0),
(685590,32,-1984.72,5249.57,-44.573036,NULL,0,0,0,100,0);


-- Broken Refugee
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19120);

UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (68399,68400); -- 1 5
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 2 WHERE `guid` in (68396); -- 1 5
UPDATE `creature` SET `position_x`=-1928.2136,`position_y`=5221.0273,`position_z`=-46.505627,`orientation`=1.4008 WHERE `guid`=68399;
UPDATE `creature` SET `position_x`=-1930.6316,`position_y`=5221.477,`position_z`=-46.438614,`orientation`=1.4833 WHERE `guid`=68400;

DELETE FROM `creature` where guid in (300099);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300099,19120,0,0,530,0,0,1,1,0,-1718.4968,5298.797,-40.208473,5.4295,300,0,0,3662,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (68396,68402);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68396,683960,0,0,0,0,0,NULL),
(68402,0,0,3,0,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-68396) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-68396,0,1000,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Broken Refugee - On Respawn - Set Active'),
(-68396,0,1001,1002,108,0,50,0,7,683960,0,0,0,0,235,72000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Broken Refugee - On Waypoint 7 Reached - Pause Movement'),
(-68396,0,1002,0,61,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.5082,'Broken Refugee - On Waypoint 7 Reached (Linked) - Set Orientation'),
(-68396,0,1003,1004,108,0,50,0,21,683960,0,0,0,0,235,72000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Broken Refugee - On Waypoint 21 Reached - Pause Movement'),
(-68396,0,1004,0,61,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.088,'Broken Refugee - On Waypoint 21 Reached (Linked) - Set Orientation'),
(-68396,0,1005,1006,108,0,50,0,28,683960,0,0,0,0,235,72000000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Broken Refugee - On Waypoint 28 Reached - Pause Movement'),
(-68396,0,1006,0,61,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.08835,'Broken Refugee - On Waypoint 28 Reached (Linked) - Set Orientation');

DELETE FROM `waypoint_data` where `id` in (683960);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(683960,1,-1688.2953,5184.4443,-40.20868,NULL,0,0,0,100,0),
(683960,2,-1712.0317,5210.5723,-45.841846,NULL,0,0,0,100,0),
(683960,3,-1720.686,5219.902,-49.21076,NULL,0,0,0,100,0),
(683960,4,-1737.6372,5238.204,-49.801235,NULL,0,0,0,100,0),
(683960,5,-1744.1785,5252.5864,-44.25354,NULL,0,0,0,100,0),
(683960,6,-1745.7753,5257.72,-40.208916,NULL,0,0,0,100,0),
(683960,7,-1746.4044,5267.901,-40.208916,5.5082,0,0,0,100,0), -- 72000000
(683960,8,-1744.8251,5258.574,-40.208916,NULL,0,0,0,100,0),
(683960,9,-1745.1156,5251.9277,-44.137268,NULL,0,0,0,100,0),
(683960,10,-1746.7438,5239.1934,-48.516857,NULL,0,0,0,100,0),
(683960,11,-1768.2277,5217.4272,-49.45856,NULL,0,0,0,100,0),
(683960,12,-1796.3514,5217.796,-48.978275,NULL,0,0,0,100,0),
(683960,13,-1804.6112,5211.497,-49.714542,NULL,0,0,0,100,0),
(683960,14,-1810.321,5200.2603,-50.637314,NULL,0,0,0,100,0),
(683960,15,-1821.208,5189.524,-51.65734,NULL,0,0,0,100,0),
(683960,16,-1825.7185,5175.8867,-50.724888,NULL,0,0,0,100,0),
(683960,17,-1843.5789,5162.921,-46.633812,NULL,0,0,0,100,0),
(683960,18,-1869.9032,5139.952,-42.75154,NULL,0,0,0,100,0),
(683960,19,-1872.989,5139.8867,-40.20883,NULL,0,0,0,100,0),
(683960,20,-1883.3802,5142.0537,-40.20883,NULL,0,0,0,100,0),
(683960,21,-1887.8956,5138.2163,-40.20883,1.088,0,0,0,100,0), -- 72000000
(683960,22,-1881.9424,5141.91,-40.20883,NULL,0,0,0,100,0),
(683960,23,-1872.5883,5139.246,-40.20883,NULL,0,0,0,100,0),
(683960,24,-1869.467,5138.406,-42.50879,NULL,0,0,0,100,0),
(683960,25,-1829.6588,5159.676,-47.638042,NULL,0,0,0,100,0),
(683960,26,-1800.1195,5168.47,-40.641525,NULL,0,0,0,100,0),
(683960,27,-1748.5782,5184.782,-40.20842,NULL,0,0,0,100,0),
(683960,28,-1684.59,5173.31,-40.1092,2.08835,0,0,0,100,0); -- 72000000


-- Sporeling Refugee
DELETE FROM `creature` where guid in (300098);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300098,19155,0,0,530,0,0,1,1,0,-1925.9825,5224.7876,-44.95186,1.491,300,0,0,3662,0,0,0,0,0,'',0,0,NULL);

UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` in (68526); -- 1 5
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 2 WHERE `guid` in (68525); -- 1 5

DELETE FROM `creature_formations` where leaderGUID = 68525;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(68525,68525,0,0,512,0,0),
(68525,68526,2,180,512,0,0);

DELETE FROM `creature_addon` where `guid` in (68525);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68525,685250,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (685250);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(685250,1,-1766.978,5239.8164,-41.414364,NULL,2000,0,0,100,0),
(685250,2,-1778.4855,5231.8193,-45.120518,NULL,0,0,0,100,0),
(685250,3,-1790.1732,5227.7495,-48.131084,NULL,0,0,0,100,0),
(685250,4,-1800.7114,5224.258,-48.29172,NULL,0,0,0,100,0),
(685250,5,-1811.6453,5221.8525,-44.045082,NULL,0,0,0,100,0),
(685250,6,-1831.0491,5210.2905,-40.345554,NULL,0,0,0,100,0),
(685250,7,-1846.4281,5196.7373,-42.54391,NULL,0,0,0,100,0),
(685250,8,-1853.5594,5198.116,-40.318695,NULL,5000,0,0,100,0),
(685250,9,-1846.4281,5196.7373,-42.54391,NULL,0,0,0,100,0),
(685250,10,-1831.0491,5210.2905,-40.345554,NULL,0,0,0,100,0),
(685250,11,-1811.6453,5221.8525,-44.045082,NULL,0,0,0,100,0),
(685250,12,-1800.7114,5224.258,-48.29172,NULL,0,0,0,100,0),
(685250,13,-1790.1732,5227.7495,-48.131084,NULL,0,0,0,100,0),
(685250,14,-1778.4855,5231.8193,-45.120518,NULL,0,0,0,100,0),
(685250,15,-1766.978,5239.8164,-41.414364,NULL,2000,0,0,100,0),
(685250,16,-1761.5459,5244.5215,-40.2098,NULL,0,0,0,100,0),
(685250,17,-1750.1588,5255.0923,-40.2098,NULL,0,0,0,100,0),
(685250,18,-1738.0784,5268.861,-40.2098,NULL,0,0,0,100,0),
(685250,19,-1728.8687,5270.365,-40.2098,NULL,0,0,0,100,0),
(685250,20,-1705.3591,5282.089,-40.2098,NULL,0,0,0,100,0),
(685250,21,-1728.8687,5270.365,-40.2098,NULL,0,0,0,100,0),
(685250,22,-1738.0784,5268.861,-40.2098,NULL,0,0,0,100,0),
(685250,23,-1750.1588,5255.0923,-40.2098,NULL,0,0,0,100,0),
(685250,24,-1761.5459,5244.5215,-40.2098,NULL,0,0,0,100,0),
(685250,25,-1770.1052,5243.362,-40.2098,NULL,0,0,0,100,0),
(685250,26,-1789.6511,5246.0977,-40.2098,NULL,0,0,0,100,0),
(685250,27,-1806.0441,5239.795,-41.77073,NULL,0,0,0,100,0),
(685250,28,-1819.3424,5225.5317,-41.1768,NULL,0,0,0,100,0),
(685250,29,-1832.6737,5210.209,-40.208755,NULL,0,0,0,100,0),
(685250,30,-1846.4281,5196.7373,-42.54391,NULL,0,0,0,100,0),
(685250,31,-1831.0491,5210.2905,-40.345554,NULL,0,0,0,100,0),
(685250,32,-1811.6453,5221.8525,-44.045082,NULL,0,0,0,100,0),
(685250,33,-1800.7114,5224.258,-48.29172,NULL,0,0,0,100,0),
(685250,34,-1790.1732,5227.7495,-48.131084,NULL,0,0,0,100,0),
(685250,35,-1778.4855,5231.8193,-45.120518,NULL,0,0,0,100,0);


-- High Elf Refugee
UPDATE `creature` SET `position_x`=-1721.7847,`position_y`=5171.86,`position_z`=-40.20846,`orientation`=2.7835 WHERE `guid`=68392;
UPDATE `creature` SET `position_x`=-1867.28,`position_y`=5477.18,`position_z`=-12.3448,`orientation`=2.32129 WHERE `guid`=12272;

DELETE FROM `creature_addon` where `guid` in (12272,68391);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(12272,0,0,0,0,1,0,NULL),
(68391,0,0,1,0,0,0,NULL);

UPDATE `creature_Template_addon` SET `bytes1` = 0 ,`bytes2` = 0 WHERE `entry` in (19076); -- 3 1


-- Dwarf Refugee
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (68394,68395);
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (68394,68395); -- 2

DELETE FROM `creature_formations` where leaderGUID = 68393;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES 
(68393,68393,0,0,512,0,0),
(68393,68394,2,210,512,0,0),
(68393,68395,3,170,512,0,0);

DELETE FROM `waypoint_data` where `id` in (683930,683940,683950);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(683930,1,-1874.87,5149.71,-46.0181,NULL,0,0,0,100,0),
(683930,2,-1883.9445,5148.5605,-40.208973,NULL,0,0,0,100,0),
(683930,3,-1886.4889,5148.9526,-40.208973,NULL,0,0,0,100,0),
(683930,4,-1891.2319,5158.0605,-40.208973,NULL,0,0,0,100,0),
(683930,5,-1915.48,5174.51,-40.2088,NULL,0,0,0,100,0),
(683930,6,-1896.4324,5216.4077,-48.27991,NULL,0,0,0,100,0),
(683930,7,-1874.3206,5225.778,-40.20862,NULL,0,0,0,100,0),
(683930,8,-1869.935,5219.4536,-40.20862,NULL,0,0,0,100,0),
(683930,9,-1880.3759,5195.727,-50.6828,NULL,0,0,0,100,0),
(683930,10,-1861.0284,5166.3994,-48.85710,NULL,0,0,0,100,0),
(683930,11,-1850.2563,5161.9004,-47.110825,NULL,0,0,0,100,0), -- cross
(683930,12,-1827.1538,5165.0386,-48.361664,NULL,0,0,0,100,0),
(683930,13,-1799.552,5169.9053,-40.759563,NULL,0,0,0,100,0),
(683930,14,-1790.3726,5171.6294,-40.364853,NULL,0,0,0,100,0),
(683930,15,-1772.07,5186.6733,-40.84991,NULL,0,0,0,100,0),
(683930,16,-1758.3438,5190.6816,-40.265278,NULL,0,0,0,100,0),
(683930,17,-1731.7203,5203.749,-40.672237,NULL,0,0,0,100,0),
(683930,18,-1707.7583,5219.4653,-50.632843,NULL,0,0,0,100,0),
(683930,19,-1696.764,5233.5435,-50.013176,NULL,0,0,0,100,0),
(683930,20,-1686.6456,5260.501,-51.576145,NULL,0,0,0,100,0),
(683930,21,-1675.3278,5293.5225,-50.720066,NULL,0,0,0,100,0),
(683930,22,-1672.9124,5324.557,-48.04964,NULL,0,0,0,100,0),
(683930,23,-1659.4779,5364.3765,-45.97154,NULL,0,0,0,100,0), -- turn
(683930,24,-1672.6237,5355.899,-45.965725,NULL,0,0,0,100,0),
(683930,25,-1685.324,5345.987,-41.537678,NULL,0,0,0,100,0),
(683930,26,-1694.2412,5343.8,-40.86041,NULL,0,0,0,100,0),
(683930,27,-1695.3248,5343.4854,-40.208458,NULL,0,0,0,100,0),
(683930,28,-1693.2655,5319.239,-40.208786,NULL,0,0,0,100,0),
(683930,29,-1698.8253,5302.1367,-40.208786,NULL,0,0,0,100,0),
(683930,30,-1707.7689,5285.4946,-40.208786,NULL,0,0,0,100,0),
(683930,31,-1718.0396,5276.9854,-40.209133,NULL,0,0,0,100,0), -- Turn around
(683930,32,-1707.7689,5285.4946,-40.208786,NULL,0,0,0,100,0),
(683930,33,-1698.8253,5302.1367,-40.208786,NULL,0,0,0,100,0),
(683930,34,-1693.2655,5319.239,-40.208786,NULL,0,0,0,100,0),
(683930,35,-1695.3248,5343.4854,-40.208458,NULL,0,0,0,100,0),
(683930,36,-1694.2412,5343.8,-40.86041,NULL,0,0,0,100,0),
(683930,37,-1685.324,5345.987,-41.537678,NULL,0,0,0,100,0),
(683930,38,-1672.6237,5355.899,-45.965725,NULL,0,0,0,100,0),
(683930,39,-1659.4779,5364.3765,-45.97154,NULL,0,0,0,100,0), -- turn
(683930,40,-1672.9124,5324.557,-48.04964,NULL,0,0,0,100,0),
(683930,41,-1675.3278,5293.5225,-50.720066,NULL,0,0,0,100,0),
(683930,42,-1686.6456,5260.501,-51.576145,NULL,0,0,0,100,0),
(683930,43,-1696.764,5233.5435,-50.013176,NULL,0,0,0,100,0),
(683930,44,-1707.7583,5219.4653,-50.632843,NULL,0,0,0,100,0),
(683930,45,-1731.7203,5203.749,-40.672237,NULL,0,0,0,100,0),
(683930,46,-1758.3438,5190.6816,-40.265278,NULL,0,0,0,100,0),
(683930,47,-1772.07,5186.6733,-40.84991,NULL,0,0,0,100,0),
(683930,48,-1790.3726,5171.6294,-40.364853,NULL,0,0,0,100,0),
(683930,49,-1799.552,5169.9053,-40.759563,NULL,0,0,0,100,0),
(683930,50,-1823.1654,5165.634,-46.358337,NULL,0,0,0,100,0),
(683930,51,-1827.1538,5165.0386,-48.361664,NULL,0,0,0,100,0),
(683930,52,-1830.2828,5164.9316,-48.151787,NULL,0,0,0,100,0),
(683930,53,-1850.2563,5161.9004,-47.110825,NULL,0,0,0,100,0); -- cross


-- Orc Refugee
UPDATE `creature_addon` SET `path_id` = 684810,`bytes2` = 0 WHERE `guid` in (68481); -- 0 1
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (68481); -- 0

DELETE FROM `waypoint_data` where `id` in (684810);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(684810,1,-1698.2965,5247.3735,-50.161537,NULL,0,0,0,100,0),
(684810,2,-1724.5538,5236.502,-50.351013,NULL,0,0,0,100,0),
(684810,3,-1737.8389,5238.1675,-49.806057,NULL,0,0,0,100,0),
(684810,4,-1746.605,5250.678,-44.148193,NULL,0,0,0,100,0),
(684810,5,-1749.094,5253.8403,-40.209045,NULL,0,0,0,100,0),
(684810,6,-1754.7698,5258.325,-40.209045,NULL,0,0,0,100,0),
(684810,7,-1773.078,5251.289,-40.20705,NULL,0,0,0,100,0),
(684810,8,-1777.3586,5248.944,-40.208965,NULL,0,0,0,100,0),
(684810,9,-1779.2827,5242.0903,-40.208965,NULL,0,0,0,100,0),
(684810,10,-1781.8949,5230.2295,-46.2431,NULL,0,0,0,100,0),
(684810,11,-1789.3733,5226.366,-48.45239,NULL,0,0,0,100,0),
(684810,12,-1801.8427,5221.404,-48.535393,NULL,0,0,0,100,0),
(684810,13,-1831.9663,5215.436,-40.20907,NULL,0,0,0,100,0),
(684810,14,-1837.6141,5216.335,-40.2090,NULL,0,0,0,100,0),
(684810,15,-1841.053,5217.794,-38.0453,NULL,0,0,0,100,0),
(684810,16,-1854.2288,5223.19,-38.0453,NULL,0,0,0,100,0),
(684810,17,-1858.0469,5223.737,-40.208973,NULL,0,0,0,100,0),
(684810,18,-1876.2087,5224.96,-40.208942,NULL,0,0,0,100,0),
(684810,19,-1895.7053,5222.0874,-47.651585,NULL,0,0,0,100,0),
(684810,20,-1908.8027,5228.2783,-44.600903,NULL,5000,0,0,100,0), -- Turn around
(684810,21,-1895.7053,5222.0874,-47.651585,NULL,0,0,0,100,0),
(684810,22,-1876.2087,5224.96,-40.208942,NULL,0,0,0,100,0),
(684810,23,-1858.0469,5223.737,-40.208973,NULL,0,0,0,100,0),
(684810,24,-1854.2288,5223.19,-38.0453,NULL,0,0,0,100,0),
(684810,25,-1841.053,5217.794,-38.0453,NULL,0,0,0,100,0),
(684810,26,-1837.6141,5216.335,-40.2090,NULL,0,0,0,100,0),
(684810,27,-1831.9663,5215.436,-40.20907,NULL,0,0,0,100,0),
(684810,28,-1801.8427,5221.404,-48.535393,NULL,0,0,0,100,0),
(684810,29,-1789.3733,5226.366,-48.45239,NULL,0,0,0,100,0),
(684810,30,-1781.8949,5230.2295,-46.2431,NULL,0,0,0,100,0),
(684810,31,-1779.2827,5242.0903,-40.208965,NULL,0,0,0,100,0),
(684810,32,-1777.3586,5248.944,-40.208965,NULL,0,0,0,100,0),
(684810,33,-1773.078,5251.289,-40.20705,NULL,0,0,0,100,0),
(684810,34,-1754.7698,5258.325,-40.209045,NULL,0,0,0,100,0),
(684810,35,-1749.094,5253.8403,-40.209045,NULL,0,0,0,100,0),
(684810,36,-1746.605,5250.678,-44.148193,NULL,0,0,0,100,0),
(684810,37,-1737.8389,5238.1675,-49.806057,NULL,0,0,0,100,0),
(684810,38,-1724.5538,5236.502,-50.351013,NULL,0,0,0,100,0),
(684810,39,-1696.1238,5240.7563,-49.945656,NULL,0,0,0,100,0),
(684810,40,-1705.9641,5256.4727,-48.940254,NULL,0,0,0,100,0),
(684810,41,-1710.3118,5262.463,-45.67482,NULL,0,0,0,100,0),
(684810,42,-1711.8541,5263.651,-45.64226,NULL,0,0,0,100,0),
(684810,43,-1722.6067,5271.482,-40.20893,NULL,0,0,0,100,0),
(684810,44,-1726.0778,5274.787,-40.20893,5.2923,5000,0,0,100,0),
(684810,45,-1722.6067,5271.482,-40.20893,NULL,0,0,0,100,0),
(684810,46,-1711.8541,5263.651,-45.64226,NULL,0,0,0,100,0),
(684810,47,-1710.3118,5262.463,-45.67482,NULL,0,0,0,100,0),
(684810,48,-1705.9641,5256.4727,-48.940254,NULL,0,0,0,100,0),
(684810,49,-1696.1238,5240.7563,-49.945656,NULL,0,0,0,100,0);


-- Peacekeeper Jadaar
DELETE FROM `creature` where guid in (81641);


-- Investigator Asric
DELETE FROM `creature` where guid in (10200);


-- Leatei
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19064);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19064) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1906400,1906401,1906402) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19064,0,0,0,1,0,100,1,25000,25000,0,0,0,0,53,1,19064,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - OOC (No Repeat) - Start Waypoint'),
(19064,0,1,0,40,0,100,0,3,19064,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Waypoint 3 Reached - Pause Waypoint'),
(19064,0,2,0,40,0,100,0,4,19064,0,0,0,0,80,1906400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Waypoint 4 Reached - Run Script'),
(19064,0,3,0,40,0,100,0,7,19064,0,0,0,0,80,1906401,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Waypoint 7 Reached - Run Script'),
(19064,0,4,0,40,0,100,0,5,1906400,0,0,0,0,80,1906400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Waypoint 5 Reached - Run Script'),
(19064,0,5,0,40,0,100,0,8,1906400,0,0,0,0,80,1906402,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Waypoint 8 Reached - Run Script'),

(1906400,9,0,0,0,0,100,0,0,0,0,0,0,0,54,130000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Script - Pause Waypoint'),
(1906400,9,1,0,0,0,100,0,5000,5000,0,0,0,0,17,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Script - Set Emote State (Dance)'),
(1906400,9,2,0,0,0,100,0,90000,120000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Script - Remove Emote State'),
(1906400,9,3,0,0,0,100,0,2000,2000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Script - Resume Waypoint'),

(1906401,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.7516,'Leatei - On Script - Set Orientation'),
(1906401,9,1,0,0,0,100,0,240000,360000,0,0,0,0,53,1,1906400,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Script - Start Waypoint'),

(1906402,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.6966,'Leatei - On Script - Set Orientation'),
(1906402,9,1,0,0,0,100,0,240000,360000,0,0,0,0,53,1,19064,0,0,0,0,1,0,0,0,0,0,0,0,0,'Leatei - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (19064,1906400);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19064,1,-1753.8212,5146.271,-37.20483,0,0,'Leatei'),
(19064,2,-1744.4779,5146.456,-37.20483,0,0,'Leatei'),
(19064,3,-1737.4818,5144.1196,-37.20483,0,0,'Leatei'), -- Pause here for 5 seconds
(19064,4,-1724.3196,5142.7046,-37.204567,0,0,'Leatei'), -- Pause 5 seconds then Dance here
(19064,5,-1738.0955,5146.4067,-37.20449,0,0,'Leatei'), -- pause 90 seconds 
(19064,6,-1743.6147,5150.551,-37.20449,0,0,'Leatei'),
(19064,7,-1743.8411,5149.8228,-37.20449,0,0,'Leatei'), -- 4.7516 orientation

(1906400,1,-1744.7189,5148.371,-37.204052,0,0,'Leatei'),
(1906400,2,-1753.8212,5146.271,-37.20483,0,0,'Leatei'),
(1906400,3,-1761.4917,5141.974,-37.204052,0,0,'Leatei'),
(1906400,4,-1765.9603,5137.3506,-37.204052 ,0,0,'Leatei'),
(1906400,5,-1775.661,5129.3296,-37.204433,0,0,'Leatei'), -- Pause 5 seconds then Dance here
(1906400,6,-1766.2339,5137.429,-37.20514,0,0,'Leatei'), -- pause 90 seconds 
(1906400,7,-1766.8998,5141.9326,-37.20514,0,0,'Leatei'),
(1906400,8,-1766.27,5141.62,-37.2049,0,0,'Leatei'); -- 5.6966 orientation


-- Granny Smith
DELETE FROM `smart_scripts` WHERE `entryorguid` in (19223) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1922300,1922301) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19223,0,0,1,1,0,100,0,25000,25000,210000,210000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - OOC - Say Line 0 (No Repeat)'),
(19223,0,1,0,61,0,100,0,0,0,0,0,0,0,80,1922301,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - OOC (Linked) - Run Script'),
(19223,0,2,0,1,0,100,0,30000,30000,230000,300000,0,0,53,1,19223,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - OOC - Start Waypoint'),
(19223,0,3,0,40,0,100,0,4,19223,0,0,0,0,80,1922300,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - On Waypoint 4 Reached - Run Script'),
(19223,0,4,0,1,0,100,0,600000,600000,600000,600000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - OOC - Say Line 1 (No Repeat)'),

(1922300,9,0,0,0,0,100,0,0,0,0,0,0,0,54,100000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - On Script - Pause Waypoint'),
(1922300,9,1,0,0,0,100,0,2000,2000,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - On Script - Set Emote State (Kneel)'),
(1922300,9,2,0,0,0,100,0,60000,90000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - On Script - Remove Emote State (Kneel)'),
(1922300,9,3,0,0,0,100,0,2000,2000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Granny Smith - On Script - Resume Waypoint'),

(1922301,9,0,0,0,0,100,0,5000,8000,0,0,0,0,45,1,0,0,0,0,0,10,10993,22940,0,0,0,0,0,0,'Granny Smith - On Script - Set Data 1 0 \'Grok\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19223);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19223,0,0,'I could have sworn I had more apples.  Grok!',12,0,100,0,0,0,16307,0,'Granny Smith'),
(19223,1,0,'What is that poor orc yelling about? Someone should see what is going on.',12,0,100,0,0,0,16314,0,'Granny Smith'),
(19223,1,1,'Huh? Did someone say something?',12,0,100,0,0,0,16312,0,'Granny Smith'),
(19223,1,2,'Fruit?  Did somebody say they wanted fruit?',12,0,100,0,0,0,16313,0,'Granny Smith'),
(19223,1,3,'Is someone calling for me?',12,0,100,0,0,0,16315,0,'Granny Smith');

DELETE FROM `waypoints` WHERE `entry` IN (19223);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19223,1,-2072.998,5298.637,-37.323483,0,0,'Granny Smith'),
(19223,2,-2073.5535,5299.5522,-37.323483,0,0,'Granny Smith'),
(19223,3,-2073.5608,5301.407,-37.323483,0,0,'Granny Smith'),
(19223,4,-2072.0981,5301.5063,-37.323483,0,0,'Granny Smith'), -- stop and kneel for 45
(19223,5,-2073.5608,5301.407,-37.323483,0,0,'Granny Smith'),
(19223,6,-2073.5535,5299.5522,-37.323483,0,0,'Granny Smith'),
(19223,7,-2072.998,5298.637,-37.323483,0,0,'Granny Smith'),
(19223,8,-2069.7017,5297.3364,-37.323483,0,0,'Granny Smith'),
(19223,9,-2070.38,5297.3,-37.3231,0,0,'Granny Smith'); -- home position


-- Eiin
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19213);
UPDATE `creature_Template_addon` SET `emote` = 0 WHERE `entry` in (19213); -- 69
UPDATE `creature` SET `position_x`=-2074.6873,`position_y`=5269.757,`position_z`=-37.3231,`orientation`=0.0408 WHERE `guid`=68743;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19213) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1921300) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19213,0,0,0,1,0,100,0,25000,25000,360000,380000,0,0,80,1921300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eiin - OOC - Run Script'),
(19213,0,1,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viggz Shinesparked - On Spawn - Set Run Off'),

(1921300,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-2077.26,5270.03,-37.323578,2.43809,'Eiin - On Script - Move to POS'),
(1921300,9,1,0,0,0,100,0,5000,5000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eiin - On Script - Set Emote State (Working)'),
(1921300,9,2,0,0,0,100,0,140000,180000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eiin - On Script - Remove Emote State (Working)'),
(1921300,9,3,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-2074.6873,5269.757,-37.3231,0.0408,'Eiin - On Script - Move to POS');


-- Viggz Shinesparked
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19661);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19661) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1966100) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19661,0,0,0,1,0,100,0,70000,70000,300000,380000,0,0,80,1966100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viggz Shinesparked - OOC - Run Script'),
(19661,0,1,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viggz Shinesparked - On Spawn - Set Run Off'),

(1966100,9,0,0,0,0,100,0,0,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-2082.2205,5284.108,-37.3231,4.4453,'Viggz Shinesparked - On Script - Move to POS'),
(1966100,9,1,0,0,0,100,0,5000,5000,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viggz Shinesparked - On Script - Set Emote State (Working)'),
(1966100,9,2,0,0,0,100,0,120000,180000,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Viggz Shinesparked - On Script - Remove Emote State (Working)'),
(1966100,9,3,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,0,-2081.43,5286.42,-37.3231,0.457883,'Viggz Shinesparked - On Script - Move to POS');


-- Cro Threadstrong
DELETE FROM `creature_text` WHERE `CreatureID` IN (19196);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19196,0,0,'I feel that war is fast approaching.  The fruit vendor has enlisted the help of an ogre.  I shall have to enlist help as well.',12,0,100,53,0,0,22060,0,'Cro Threadstrong'),
(19196,0,1,'I do not understand this fruit vendor or their ogre.  It seemed as though war was upon us... Yet nothing has happened.',12,0,100,6,0,0,27703,0,'Cro Threadstrong'),
(19196,0,2,'The fruit vendor has refused to accept my challenge and remove his cart.  Their ogre protector just sits and does nothing... What could his plan be?',12,0,100,6,0,0,27704,0,'Cro Threadstrong'),
(19196,0,3,'We should sell these apples, but we will not allow peole to eat them.  Oh no!  We will sell apples to our friends, and they shall bring the fight to the fruit vendor for me!',12,0,100,6,0,0,27705,0,'Cro Threadstrong'),
(19196,0,4,'My army has not arrived.  I knew I could not trust the people I hired.  We will recruit new people.  We will sell these apples and our new army will crush them!',12,0,100,6,0,0,27706,0,'Cro Threadstrong'),
(19196,0,5,'It\'s time to deal with this fruit situtation on our terms.  We\'ve been far too accomidating to the fruit vendor.  Now we will simply sell the fruit.  But the fruit will not be for people to eat.  I forbid it!  No one will eat our fruit!',12,0,100,15,0,0,27707,0,'Cro Threadstrong'),

(19196,1,0,'FRUIT VENDOR!!! Your cart is still in our way!  We will give you one more hour to move it from our area.  Do not test our patience anymore!',14,0,100,0,0,0,16296,0,'Cro Threadstrong'),
(19196,1,1,'FRUIT VENDOR!!! Your cart is still in our way!  Your time is up!  You have new competition in selling fruit!',14,0,100,53,0,0,27708,0,'Cro Threadstrong'),
(19196,1,2,'YOU HAVE RUN OUT OF TIME FRUIT VENDOR!!  NOW I WILL SELL YOUR ROTTEN FRUIT!',14,0,100,6,0,0,27709,0,'Cro Threadstrong'),
(19196,1,3,'HA!  I CRUSHED AN APPLE, FRUIT VENDOR! NOW,  YOUR APPLES WILL BE SOLD TO OTHERS FOR THEM TO CRUSH AS WELL!',14,0,100,388,0,0,27710,0,'Cro Threadstrong'),
(19196,1,4,'IF WAR IS WHAT YOU WANT, WAR IS WHAT YOU SHALL GET, FRUIT VENDOR!  WE WILL SEE WHO SELLS MORE OF YOUR APPLES!',14,0,100,388,0,0,27711,0,'Cro Threadstrong');


-- Grok
DELETE FROM `smart_scripts` WHERE `entryorguid` in (22940) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22940,0,0,0,1,0,100,0,156000,156000,156000,276000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grok - Out of Combat - Say Line 0'),
(22940,0,1,0,1,0,100,0,270000,270000,270000,270000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grok - Out of Combat - Say Line 1'),
(22940,0,2,0,38,0,100,0,1,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grok - On Data Set 1 0 - Say Line 2');

DELETE FROM `creature_text` WHERE `CreatureID` IN (22940);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(22940,0,0,'Grok need help!  Why no one help?',12,0,100,1,0,0,20648,0,'Grok'),
(22940,0,1,'If no one help, Grok smash!',12,0,100,1,0,0,20783,0,'Grok'),
(22940,0,2,'Hey, troll!  Why dis charm no work?!',12,0,100,1,0,0,20785,0,'Grok'),

(22940,1,0,'Grok get angry if puny ones not go to Blade\'s Edge and talk to Mog\'dorg!',12,0,100,1,0,0,20664,0,'Grok'),
(22940,1,1,'Bladespire clan not fight fair.  Have gronn to help dem.  You go to Blade\'s Edge Mountains.  Talk to Mog\'dorg the Wizened.  Kill gronn.',12,0,100,1,0,0,20784,0,'Grok'),
(22940,1,2,'Mog\'dorg the Wizened tell Grok go to city, get help for Bloodmaul.  Grok go.',12,0,100,1,0,0,20782,0,'Grok'),

(22940,2,0,'Me hungry.  Fruit look tasty.',12,0,100,1,0,0,20781,0,'Grok'),
(22940,2,1,'Grok not eat all of the apples.  See, der one basket left!',12,0,100,6,0,0,20789,0,'Grok'),
(22940,2,2,'Huh?',12,0,100,6,0,0,20787,0,'Grok'),
(22940,2,3,'What?',12,0,100,6,0,0,20788,0,'Grok'),
(22940,2,4,'Grok not eat all of the apples.  See, der one basket left!',12,0,100,6,0,0,20789,0,'Grok'),
(22940,2,5,'It was dat angry orc.  He smushed dem!  Want Grok to smush him?',12,0,100,6,0,0,20790,0,'Grok');


-- Fantei
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19678);
UPDATE `creature_Template_addon` SET `bytes1` = 0 ,`bytes2` = 0 WHERE `entry` in (19678); -- 1 1

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19678) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1967800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19678,0,0,0,1,0,100,0,60000,60000,280000,340000,0,0,80,1967800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fantei - OOC - Run Script'),

(1967800,9,0,0,0,0,100,0,5000,5000,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fantei - On Script - Set Flag Standstate Sit'),
(1967800,9,1,0,0,0,100,0,120000,180000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fantei - On Script - Remove Flag Standstate Sit');


-- Shattered Sun Marksman 
-- (Has two different creature template entries)
-- (This also affects the Isle of Quel'Danas)
UPDATE `creature` SET `position_x`= -1838.2345,`position_y`= 5403.7827,`position_z`= -12.427973 WHERE `guid`= 96632;
UPDATE `creature_template_movement` SET `Rooted` = 0 WHERE `CreatureId` = 24938; -- 1
UPDATE `creature_addon` SET `bytes2` = 2 WHERE `guid` in (53981,53982,54004,54023,54028,54029,54030,54031,54032,54034,54038,54049,54092,54113,54114,54143,54165,54176,54177,54178,54181,54182,54183,54184,54185,56315,65680,65681,65682,65683,65684,65685,65686,65687,65688,65689,65690,65691,65692,65693,65701,94407,94408,94409,94410,94411,94412,94413,94414,94415,94416,94417,94418,94419,94420,94422,94423,94424,94425,94426,94427,94428,94429,94430,94431,165106,165107,165108,165109); -- 0
UPDATE `creature_addon` SET `bytes2` = 2,`emote` = 48 WHERE `guid` in (65694,65695,65696,65697,65698,65699,65700,65702); -- 0 0
UPDATE `creature_addon` SET `emote` = 0 WHERE `guid` in (54034,54038,54092); -- 48

DELETE FROM `creature_addon` where `guid` in (96623,96625,96636);  -- Marksmen that are in front of target dummies.  Not sure they should exist. 
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(96623,0,0,0,2,48,0,NULL),
(96625,0,0,0,2,48,0,NULL),
(96636,0,0,0,2,48,0,NULL);

UPDATE `creature_equip_template` SET `ItemID3` = 34277  where `CreatureID` in (25142) AND `ID` = 1; -- 11021 -- This is the other Marksman Entry
UPDATE `creature_equip_template` SET `ItemID1` = 0  where `CreatureID` in (24938) AND `ID` = 1; -- 34301
DELETE FROM `creature_equip_template` where `CreatureID` in (24938) AND `ID` = 2;
INSERT INTO `creature_equip_template` (`CreatureID`,`ID`,`ItemID1`,`ItemID2`,`ItemID3`,`VerifiedBuild`) VALUES 
(24938,2,0,0,34322,1); -- 34324

DELETE FROM `smart_scripts` WHERE `entryorguid` in (24938) AND `source_type` = 0 AND `id` IN (3,4,5,6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-96623,-96625,-96632,-96633,-96636,-96637,-165106,-165107,-165108,-165109) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2493810,2493811,2493812,2493813,2493820,2493821,2493822,2493823,2493830,2493831,2493832,2493833,2493840,2493841,2493842,2493843,2514200,2514201) AND `source_type` = 9 AND `id` IN (1);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2514200,2514201,2514202,2514203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-96623,0,0,0,1,0,100,1,500,500,0,0,0,0,11,44962,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - OOC - Cast \'Serverside - Archer - BE Male Transform Tier 1\''),

(-96625,0,0,0,1,0,100,1,500,500,0,0,0,0,11,44962,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - OOC - Cast \'Serverside - Archer - BE Male Transform Tier 1\''),

(-96632,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Phase 1'),
(-96632,0,1,0,1,0,100,1,25000,25000,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - OOC (No Repeat) - Set Phase 0'), -- These are to make this NPC not do creature template Smart Scripts emotes cause he is alone and laughing at nobody looks crazy.
(-96632,0,2,0,38,0,100,0,1,0,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 1 0 - Set Flag Standstate \'Sit\''),
(-96632,0,3,0,38,0,100,0,2,0,0,0,0,0,80,2514201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 2 0 - Run Script'),
(-96632,0,4,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Active'),

(-96633,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Phase 1'),
(-96633,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Out of Combat - Play Emote 11'),
(-96633,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Out of Combat - Play Emote 1'),
(-96633,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,25142,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 1 0 - Start Waypoint'),
(-96633,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96633,0,5,0,40,0,100,0,2,25142,0,0,0,0,80,2514200,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Waypoint 2 Reached - Run Script'),
(-96633,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2514202,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 2 0 - Run Script'),
(-96633,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Active'),

(-96637,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Phase 1'),
(-96637,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Out of Combat - Play Emote 11'),
(-96637,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Out of Combat - Play Emote 1'),
(-96637,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2514200,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 1 0 - Start Waypoint'),
(-96637,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96637,0,5,0,40,0,100,0,2,2514200,0,0,0,0,80,2514200,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Waypoint 2 Reached - Run Script'),
(-96637,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2514203,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Data Set 2 0 - Run Script'),
(-96637,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Active'),

(-96636,0,0,0,1,0,100,1,500,500,0,0,0,0,11,44962,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - OOC - Cast \'Serverside - Archer - BE Male Transform Tier 1\''),

(-165106,0,0,0,11,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165106,0,1,0,11,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165106,0,2,0,11,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165106,0,3,0,11,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),

(-165107,0,0,0,11,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165107,0,1,0,11,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165107,0,2,0,11,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165107,0,3,0,11,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),

(-165108,0,0,0,11,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165108,0,1,0,11,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165108,0,2,0,11,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165108,0,3,0,11,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),

(-165109,0,0,0,11,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165109,0,1,0,11,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165109,0,2,0,11,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(-165109,0,3,0,11,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),

(24938,0,3,0,11,0,100,0,0,0,0,0,0,0,88,2493810,2493813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,4,0,11,0,100,0,0,0,0,0,0,0,88,2493820,2493823,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,5,0,11,0,100,0,0,0,0,0,0,0,88,2493830,2493833,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,6,0,11,0,100,0,0,0,0,0,0,0,88,2493840,2493843,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Run Random Script'),
(24938,0,7,0,11,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Respawn - Set Root On'),

(2493810,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493811,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493812,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493813,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),

(2493820,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493821,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493822,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493823,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),

(2493830,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493831,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493832,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493833,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),

(2493840,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493841,9,1,0,0,0,100,0,0,0,0,0,0,0,124,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493842,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),
(2493843,9,1,0,0,0,100,0,0,0,0,0,0,0,124,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - Actionlist - Load Equipment'),

(2514200,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,10,96591,19216,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Set Orientation \'Grand Anchorite Almonen\''),
(2514200,9,1,0,0,0,100,0,1500,8000,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Set Flag Standstate \'Sit\''),

(2514201,9,0,0,0,0,100,0,5000,10000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Remove Flag Standstate \'Sit\''),
(2514201,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Say Line 0'), -- Need to return to home position after this

(2514202,9,0,0,0,0,100,0,1500,10000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Remove Flag Standstate \'Sit\''),
(2514202,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Say Line 0'), -- Need to return to home position after this
(2514202,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2514201,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Start Waypoint'),
(2514202,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Set Phase 1'),

(2514203,9,0,0,0,0,100,0,8000,17000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Remove Flag Standstate \'Sit\''),
(2514203,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Say Line 0'), -- Need to return to home position after this
(2514203,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2514202,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Start Waypoint'),
(2514203,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Marksman - On Script - Set Phase 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25142);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25142,0,0,'May it be so.',12,0,100,0,0,0,16780,0,'Shattered Sun Marksman');

DELETE FROM `waypoints` WHERE `entry` IN (25142,2514200,2514201,2514202);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(25142,1,-1830.5002,5411.3916,-12.4276285,0,0,'Shattered Sun Marksmen'),
(25142,2,-1841.1224,5396.7573,-12.4276285,0,0,'Shattered Sun Marksmen'),

(2514200,1,-1884.6896,5407.185,-12.427702,0,0,'Shattered Sun Marksmen'),
(2514200,2,-1853.7252,5399.623,-12.427702,0,0,'Shattered Sun Marksmen'),

(2514201,1,-1830.5002,5411.3916,-12.4276285,0,0,'Shattered Sun Marksmen'),
(2514201,2,-1829.7705,5440.171,-12.427619,0,0,'Shattered Sun Marksmen'),
(2514201,3,-1829.53,5440.94,-12.4283,0,0,'Shattered Sun Marksmen'),

(2514202,1,-1884.6896,5407.185,-12.427702 ,0,0,'Shattered Sun Marksmen'),
(2514202,2,-1903.2118,5427.313,-12.428072,0,0,'Shattered Sun Marksmen'),
(2514202,3,-1903.97,5427.56,-12.3283,0,0,'Shattered Sun Marksmen');


-- Shattered Sun Cleric
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-96647,-96648,-96649,-96650,-96651,-96652) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2515500,2515501,2515502,2515503,2515504,2515505,2515506) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-96647,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Phase 1'),
(-96647,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 11'),
(-96647,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 1'),
(-96647,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515501,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 - Start Waypoint'),
(-96647,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96647,0,5,0,40,0,100,0,3,2515501,0,0,0,0,80,2515500,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Waypoint 3 Reached - Run Script'),
(-96647,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515501,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 2 0 - Run Script'),
(-96647,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Active'),

(-96648,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Phase 1'),
(-96648,0,1,0,1,0,100,1,25000,25000,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - OOC (No Repeat) - Set Phase 0'), -- These are to make this NPC not do creature template Smart Scripts emotes cause he is alone and laughing at nobody looks crazy.
(-96648,0,2,0,38,0,100,0,1,0,0,0,0,0,53,1,25155,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 - Start Waypoint'),
(-96648,0,3,0,40,0,100,0,2,25155,0,0,0,0,80,2515500,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Waypoint 2 Reached - Run Script'),
(-96648,0,4,0,38,0,100,0,2,0,0,0,0,0,80,2515502,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 2 0 - Run Script'),
(-96648,0,5,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Active'),

(-96649,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Phase 1'),
(-96649,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 11'),
(-96649,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 1'),
(-96649,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515503,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 - Start Waypoint'),
(-96649,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96649,0,5,0,40,0,100,0,2,2515503,0,0,0,0,80,2515500,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Waypoint 2 Reached - Run Script'),
(-96649,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515503,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 2 0 - Run Script'),
(-96649,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Active'),

(-96650,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Phase 1'),
(-96650,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 11'),
(-96650,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 1'),
(-96650,0,3,4,38,0,100,0,1,0,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 - Set Flag Standstate \'Sit\''),
(-96650,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96650,0,5,0,38,0,100,0,2,0,0,0,0,0,80,2515506,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 2 0 - Run Script'),
(-96650,0,6,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Active'),

(-96651,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Phase 1'),
(-96651,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 11'),
(-96651,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 1'),
(-96651,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515502,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 - Start Waypoint'),
(-96651,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96651,0,5,0,40,0,100,0,3,2515502,0,0,0,0,80,2515500,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Waypoint 3 Reached - Run Script'),
(-96651,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515504,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 2 0 - Run Script'),
(-96651,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Active'),

(-96652,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Phase 1'),
(-96652,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 11'),
(-96652,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - Out of Combat - Play Emote 1'),
(-96652,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515500,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 - Start Waypoint'),
(-96652,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96652,0,5,0,40,0,100,0,2,2515500,0,0,0,0,80,2515500,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Waypoint 2 Reached - Run Script'),
(-96652,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515505,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Data Set 2 0 - Run Script'),
(-96652,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Respawn - Set Active'),

(2515500,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,10,96591,19216,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Orientation \'Grand Anchorite Almonen\''),
(2515500,9,1,0,0,0,100,0,1500,8000,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Flag Standstate \'Sit\''),

(2515501,9,0,0,0,0,100,0,1500,10000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Remove Flag Standstate \'Sit\''),
(2515501,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Say Line 0'), -- Need to return to home position after this
(2515501,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515504,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Start Waypoint'),
(2515501,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Phase 1'),

(2515502,9,0,0,0,0,100,0,3000,15000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Remove Flag Standstate \'Sit\''),
(2515502,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Say Line 0'), -- Need to return to home position after this
(2515502,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515505,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Start Waypoint'),
(2515502,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Phase 1'),

(2515503,9,0,0,0,0,100,0,1500,10000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Remove Flag Standstate \'Sit\''),
(2515503,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Say Line 0'), -- Need to return to home position after this
(2515503,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515506,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Start Waypoint'),
(2515503,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Phase 1'),

(2515504,9,0,0,0,0,100,0,4000,10000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Remove Flag Standstate \'Sit\''),
(2515504,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Say Line 0'), -- Need to return to home position after this
(2515504,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515507,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Start Waypoint'),
(2515504,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Phase 1'),

(2515505,9,0,0,0,0,100,0,1500,15000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Remove Flag Standstate \'Sit\''),
(2515505,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Say Line 0'), -- Need to return to home position after this
(2515505,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515508,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Start Waypoint'),
(2515505,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Phase 1'),

(2515506,9,0,0,0,0,100,0,8000,13000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Remove Flag Standstate \'Sit\''),
(2515506,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Say Line 0'), -- Need to return to home position after this
(2515506,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Cleric - On Script - Set Phase 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25155);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25155,0,0,'May it be so.',12,0,100,0,0,0,16780,0,'Shattered Sun Cleric');

DELETE FROM `waypoints` WHERE `entry` IN (25155,2515500,2515501,2515502,2515503,2515504,2515505,2515506,2515507,2515508);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(25155,1,-1823.4613,5438.8164,-12.427977,0,0,'Shattered Sun Cleric'),
(25155,2,-1830.7544,5413.0825,-12.427977,0,0,'Shattered Sun Cleric'),

(2515500,1,-1834.0046,5417.646,-12.427977,0,0,'Shattered Sun Cleric'),
(2515500,2,-1850.0779,5393.1157,-12.427977,0,0,'Shattered Sun Cleric'),

(2515501,1,-1857.6241,5456.3315,-12.427977,0,0,'Shattered Sun Cleric'),
(2515501,2,-1840.0508,5437.2964,-12.427977,0,0,'Shattered Sun Cleric'),
(2515501,3,-1841.1343,5415.7256,-12.427977,0,0,'Shattered Sun Cleric'),

(2515502,1,-1892.7732,5431.8457,-12.428165,0,0,'Shattered Sun Cleric'),
(2515502,2,-1881.1005,5409.4004,-12.428165,0,0,'Shattered Sun Cleric'),
(2515502,3,-1867.4739,5403.3696,-12.428165,0,0,'Shattered Sun Cleric'),

(2515503,1,-1882.4352,5406.576,-12.427772,0,0,'Shattered Sun Cleric'),
(2515503,2,-1856.9653,5405.5776,-12.427772,0,0,'Shattered Sun Cleric'),

(2515504,1,-1840.0508,5437.2964,-12.427977,0,0,'Shattered Sun Cleric'),
(2515504,2,-1857.6241,5456.3315,-12.427977,0,0,'Shattered Sun Cleric'),
(2515504,3,-1890.9918,5463.199,-12.428231,0,0,'Shattered Sun Cleric'),
(2515504,4,-1891.7,5463.4,-12.3282,0,0,'Shattered Sun Cleric'),

(2515505,1,-1823.4613,5438.8164,-12.427977,0,0,'Shattered Sun Cleric'),
(2515505,2,-1825.2023,5458.3354,-12.427702,0,0,'Shattered Sun Cleric'),
(2515505,3,-1825.47,5457.96,-12.3284,0,0,'Shattered Sun Cleric'),

(2515506,1,-1882.4352,5406.576,-12.427772,0,0,'Shattered Sun Cleric'),
(2515506,2,-1904.7537,5431.7593,-12.427724,0,0,'Shattered Sun Cleric'),
(2515506,3,-1904.82,5431.21,-12.4282,0,0,'Shattered Sun Cleric'),

(2515507,1,-1881.1005,5409.4004,-12.428165,0,0,'Shattered Sun Cleric'),
(2515507,2,-1892.7732,5431.8457,-12.428165,0,0,'Shattered Sun Cleric'),
(2515507,3,-1895.9893,5460.752,-12.427724,0,0,'Shattered Sun Cleric'),
(2515507,4,-1895.3,5461.38,-12.4281,0,0,'Shattered Sun Cleric'),

(2515508,1,-1834.0046,5417.646,-12.427977,0,0,'Shattered Sun Cleric'),
(2515508,2,-1829.3857,5445.3384,-12.427898,0,0,'Shattered Sun Cleric'),
(2515508,3,-1829.09,5444.69,-12.4282,0,0,'Shattered Sun Cleric');


-- Shattered Sun Magi
DELETE FROM `smart_scripts` WHERE `entryorguid` in (-96643,-96644,-96645,-96646) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2515300,2515301,2515302,2515303,2515304) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-96643,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Phase 1'),
(-96643,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 11'),
(-96643,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 1'),
(-96643,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,25153,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 - Start Waypoint'),
(-96643,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96643,0,5,0,40,0,100,0,2,25153,0,0,0,0,80,2515300,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Waypoint 2 Reached - Run Script'),
(-96643,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515301,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 2 0 - Run Script'),
(-96643,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Active'),

(-96644,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Phase 1'),
(-96644,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 11'),
(-96644,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 1'),
(-96644,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515300,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 - Start Waypoint'),
(-96644,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96644,0,5,0,40,0,100,0,3,2515300,0,0,0,0,80,2515300,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Waypoint 3 Reached - Run Script'),
(-96644,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515302,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 2 0 - Run Script'),
(-96644,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Active'),

(-96645,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Phase 1'),
(-96645,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 11'),
(-96645,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 1'),
(-96645,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515301,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 - Start Waypoint'),
(-96645,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96645,0,5,0,40,0,100,0,1,2515301,0,0,0,0,80,2515300,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Waypoint 1 Reached - Run Script'),
(-96645,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515303,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 2 0 - Run Script'),
(-96645,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Active'),

(-96646,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Phase 1'),
(-96646,0,1,0,1,1,100,0,10000,90000,20000,70000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 11'),
(-96646,0,2,0,1,1,100,0,5000,25000,5000,25000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - Out of Combat - Play Emote 1'),
(-96646,0,3,4,38,0,100,0,1,0,0,0,0,0,53,1,2515302,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 - Start Waypoint'),
(-96646,0,4,0,61,0,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 1 0 (Linked) - Set Phase 0'),
(-96646,0,5,0,40,0,100,0,2,2515302,0,0,0,0,80,2515300,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Waypoint 2 Reached - Run Script'),
(-96646,0,6,0,38,0,100,0,2,0,0,0,0,0,80,2515304,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Data Set 2 0 - Run Script'),
(-96646,0,7,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Respawn - Set Active'),

(2515300,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,10,96591,19216,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Set Orientation \'Grand Anchorite Almonen\''),
(2515300,9,1,0,0,0,100,0,1500,8000,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Set Flag Standstate \'Sit\''),

(2515301,9,0,0,0,0,100,0,8000,12000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Remove Flag Standstate \'Sit\''),
(2515301,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Say Line 0'), -- Need to return to home position after this
(2515301,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515303,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Start Waypoint'),
(2515301,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Set Phase 1'),

(2515302,9,0,0,0,0,100,0,1500,10000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Remove Flag Standstate \'Sit\''),
(2515302,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Say Line 0'), -- Need to return to home position after this
(2515302,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515304,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Start Waypoint'),
(2515302,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Set Phase 1'),

(2515303,9,0,0,0,0,100,0,10000,15000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Remove Flag Standstate \'Sit\''),
(2515303,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Say Line 0'), -- Need to return to home position after this
(2515303,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515305,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Start Waypoint'),
(2515303,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Set Phase 1'),

(2515304,9,0,0,0,0,100,0,1500,13000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Remove Flag Standstate \'Sit\''),
(2515304,9,1,0,0,0,60,0,1000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Say Line 0'), -- Need to return to home position after this
(2515304,9,2,0,0,0,100,0,0,0,0,0,0,0,53,1,2515306,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Start Waypoint'),
(2515304,9,3,0,0,0,100,0,30000,30000,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Magi - On Script - Set Phase 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25153);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25153,0,0,'May it be so.',12,0,100,0,0,0,16780,0,'Shattered Sun Magi');

DELETE FROM `waypoints` WHERE `entry` IN (25153,2515300,2515301,2515302,2515303,2515304,2515305,2515306);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(25153,1,-1877.7822,5400.281,-12.427646,0,0,'Shattered Sun Magi'),
(25153,2,-1860.6144,5395.8384,-12.427646,0,0,'Shattered Sun Magi'),

(2515300,1,-1895.6661,5437.104,-12.427646,0,0,'Shattered Sun Magi'),
(2515300,2,-1872.7128,5404.111,-12.427646,0,0,'Shattered Sun Magi'),
(2515300,3,-1860.6003,5404.2427,-12.427646,0,0,'Shattered Sun Magi'),

(2515301,1,-1856.1749,5392.7324,-12.428014,0,0,'Shattered Sun Magi'),

(2515302,1,-1825.4465,5424.226,-12.428014,0,0,'Shattered Sun Magi'),
(2515302,2,-1832.8577,5400.193,-12.428014,0,0,'Shattered Sun Magi'),

(2515303,1,-1877.7822,5400.281,-12.427646,0,0,'Shattered Sun Magi'),
(2515303,2,-1908.4894,5428.835,-12.427646,0,0,'Shattered Sun Magi'),
(2515303,3,-1907.75,5428.67,-12.3283,0,0,'Shattered Sun Magi'),

(2515304,1,-1872.7128,5404.111,-12.427646,0,0,'Shattered Sun Magi'),
(2515304,2,-1895.6661,5437.104,-12.427646,0,0,'Shattered Sun Magi'),
(2515304,3,-1895.0529,5465.856,-12.427646,0,0,'Shattered Sun Magi'),
(2515304,4,-1894.72,5465.17,-12.3282,0,0,'Shattered Sun Magi'),

(2515305,1,-1858.4495,5388.7935,-12.427474,0,0,'Shattered Sun Magi'),
(2515305,2,-1858.24,5388.41,-12.4281,0,0,'Shattered Sun Magi'),

(2515306,1,-1825.4465,5424.226,-12.428014,0,0,'Shattered Sun Magi'),
(2515306,2,-1825.7034,5442.7026,-12.427474,0,0,'Shattered Sun Magi'),
(2515306,3,-1826.29,5442.46,-12.4283,0,0,'Shattered Sun Magi');


-- Grand Anchorite Almonen
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19216) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1921600,1921601) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19216,0,0,0,38,0,100,0,1,0,0,0,0,0,80,1921600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Data Set 1 0 - Run Script'),
(19216,0,1,2,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Respawn - Set Active'),
(19216,0,2,0,61,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Respawn (Linked) - Set Run Off'),
(19216,0,3,0,38,0,100,0,1,1,0,0,0,0,53,1,19216,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Data Set 1 1 - Start Waypoint'),
(19216,0,4,0,40,0,100,0,6,19216,0,0,0,0,80,1921601,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Waypoint 6 Reached - Run Script'),

(1921600,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.65487,'Grand Anchorite Almonen - On Script - Set Orientation 5.65487'),
(1921600,9,1,0,0,0,100,0,9000,9000,0,0,0,0,1,20,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 20'),
(1921600,9,2,0,0,0,100,0,9000,9000,0,0,0,0,1,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 21'),
(1921600,9,3,0,0,0,100,0,10000,10000,0,0,0,0,1,22,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 22'),
(1921600,9,4,0,0,0,100,0,3000,3000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.72,5423.08,-10.4595,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,5,0,0,0,100,0,800,800,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.6,5412,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,6,0,0,0,100,0,5000,5000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.18363,'Grand Anchorite Almonen - On Script - Set Orientation 5'),
(1921600,9,7,0,0,0,100,0,3000,3000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 0'),
(1921600,9,8,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,11,25153,80,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 1 0 \'Shattered Sun Magi\''), -- Come to Sermon and sit
(1921600,9,9,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,11,25155,80,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 1 0 \'Shattered Sun Cleric\''), -- Come to Sermon and sit
(1921600,9,10,0,0,0,100,0,2000,2000,0,0,0,0,45,1,0,0,0,0,0,11,25142,80,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 1 0 \'Shattered Sun Marksman\''), -- Come to Sermon and sit
(1921600,9,11,0,0,0,100,0,7000,7000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 1'),
(1921600,9,12,0,0,0,100,0,9000,9000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 2'),
(1921600,9,13,0,0,0,100,0,25000,25000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 3'),
(1921600,9,14,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1851.7,5413.06,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,15,0,0,0,100,0,100,100,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 4'),
(1921600,9,16,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1848.78,5412.81,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,17,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.27606,'Grand Anchorite Almonen - On Script - Set Orientation 4'),
(1921600,9,18,0,0,0,100,0,4000,4000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 5'),
(1921600,9,19,0,0,0,100,0,7000,7000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1851.57,5412.08,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,20,0,0,0,100,0,1900,1900,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1856.31,5410.27,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,21,0,0,0,100,0,1900,1900,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1859,5406.96,-12.4281,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,22,0,0,0,100,0,3000,3000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.70723,'Grand Anchorite Almonen - On Script - Set Orientation 6'),
(1921600,9,23,0,0,0,100,0,100,100,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 6'),
(1921600,9,24,0,0,0,100,0,10000,10000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 7'),
(1921600,9,25,0,0,0,100,0,9000,9000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 8'),
(1921600,9,26,0,0,0,100,0,5000,5000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1855.09,5410.68,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,27,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1853.62,5409.83,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,28,0,0,0,100,0,3000,3000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 9'),
(1921600,9,29,0,0,0,100,0,11000,11000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 10'),
(1921600,9,30,0,0,0,100,0,9000,9000,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 11'),
(1921600,9,31,0,0,0,100,0,100,100,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1852.5,5412.29,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,32,0,0,0,100,0,1000,1000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1849.05,5415.08,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,33,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.34071,'Grand Anchorite Almonen - On Script - Set Orientation 5'),
(1921600,9,34,0,0,0,100,0,5000,5000,0,0,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 12'),
(1921600,9,35,0,0,0,100,0,11000,11000,0,0,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 13'),
(1921600,9,36,0,0,0,100,0,4000,4000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1851.64,5414.01,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,37,0,0,0,100,0,1200,1200,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.91,5412.68,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,38,0,0,0,100,0,800,800,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1854.41,5411.23,-12.4282,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,39,0,0,0,100,0,1000,1000,0,0,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 14'),
(1921600,9,40,0,0,0,100,0,10000,10000,0,0,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 15'),
(1921600,9,41,0,0,0,100,0,7000,7000,0,0,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 16'),
(1921600,9,42,0,0,0,100,0,10000,10000,0,0,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 17'),
(1921600,9,43,0,0,0,100,0,11000,11000,0,0,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 18'),
(1921600,9,44,0,0,0,100,0,11000,11000,0,0,0,0,1,19,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 19'),
(1921600,9,45,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,11,25153,80,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 2 0 \'Shattered Sun Magi\''), -- Get up and Leave Sermon and say line
(1921600,9,46,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,11,25155,80,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 2 0 \'Shattered Sun Cleric\''), -- Get up and Leave Sermon and say line
(1921600,9,47,0,0,0,100,0,100,100,0,0,0,0,45,2,0,0,0,0,0,11,25142,80,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 2 0 \'Shattered Sun Marksman\''), -- Get up and Leave Sermon and say line
(1921600,9,48,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1853.14,5424.86,-10.4779,0,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921600,9,49,0,0,0,100,0,6500,6500,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.6529,'Grand Anchorite Almonen - On Script - Set Orientation 3'),

(1921601,9,1,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.3967,'Grand Anchorite Almonen - On Script - Set Orientation'),
(1921601,9,2,0,0,0,100,0,1000,1000,0,0,0,0,1,23,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 23'),
(1921601,9,3,0,0,0,100,0,9000,9000,0,0,0,0,1,24,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 24'),
(1921601,9,4,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1773.1855,5335.899,-12.427668,3.0573,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921601,9,5,0,0,0,100,0,4000,4000,0,0,0,0,1,25,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 25'),
(1921601,9,6,0,0,0,100,0,12000,12000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1785.2517,5327.121,-12.427668,1.3882,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921601,9,7,0,0,0,100,0,4000,4000,0,0,0,0,1,26,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 26'),
(1921601,9,8,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1779.6279,5330.2676,-12.427668,2.3967,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921601,9,9,0,0,0,100,0,100,100,0,0,0,0,1,27,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 27'),
(1921601,9,10,0,0,0,100,0,11000,11000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1773.1855,5335.899,-12.427668,3.0573,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921601,9,11,0,0,0,100,0,4000,4000,0,0,0,0,1,28,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 28'),
(1921601,9,12,0,0,0,100,0,10000,10000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1785.2517,5327.121,-12.427668,1.3882,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921601,9,13,0,0,0,100,0,5000,5000,0,0,0,0,1,29,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 29'),
(1921601,9,14,0,0,0,100,0,4000,4000,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1779.6279,5330.2676,-12.427668,2.3967,'Grand Anchorite Almonen - On Script - Move To Position'),
(1921601,9,15,0,0,0,100,0,9000,9000,0,0,0,0,1,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 30'),
(1921601,9,16,0,0,0,100,0,6000,6000,0,0,0,0,1,31,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 31'),
(1921601,9,17,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,96621,25141,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Set Data 1 1 \'Commander Steele\''), -- To stand up and clap
(1921601,9,18,0,0,0,100,0,12000,12000,0,0,0,0,1,32,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Say Line 32'),
(1921601,9,19,0,0,0,100,0,12000,12000,0,0,0,0,53,1,1921600,0,0,0,0,1,0,0,0,0,0,0,0,0,'Grand Anchorite Almonen - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (19216,1921600);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19216,1,-1850.1003,5417.1396,-12.360617,0,0,'Grand Anchorite Almonen'), -- bottom of stairs
(19216,2,-1832.1953,5364.7266,-12.427668,0,0,'Grand Anchorite Almonen'), -- Doorway
(19216,3,-1826.165,5360.7725,-12.427668,0,0,'Grand Anchorite Almonen'),
(19216,4,-1790.4785,5327.6562,-12.427668,0,0,'Grand Anchorite Almonen'),
(19216,5,-1785.2517,5327.121,-12.427668,0,0,'Grand Anchorite Almonen'), -- far left side orientation to face recruits 1.3882
(19216,6,-1779.6279,5330.2676,-12.427668,0,0,'Grand Anchorite Almonen'), -- middle orientation to face recruits 2.3967 -- Start speech

(1921600,1,-1773.1855,5335.899,-12.427668,0,0,'Grand Anchorite Almonen'), -- Far right
(1921600,2,-1779.0757,5356.5522,-12.427668,0,0,'Grand Anchorite Almonen'),
(1921600,3,-1826.165,5360.7725,-12.427668,0,0,'Grand Anchorite Almonen'),
(1921600,4,-1832.1953,5364.7266,-12.427668,0,0,'Grand Anchorite Almonen'), -- Doorway
(1921600,5,-1850.1003,5417.1396,-12.360617,0,0,'Grand Anchorite Almonen'), -- bottom of stairs
(1921600,6,-1853.14,5424.86,-10.4779,0,0,'Grand Anchorite Almonen'); -- Home POS and Orientation 2.6529

DELETE FROM `creature_text` WHERE `CreatureID` IN (19216);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19216,0,0,'Friends, it is my great pleasure to welcome you to the temple today.',12,0,100,1,0,0,16735,0,'Grand Anchorite Almonen'),
(19216,1,0,'A\'dal has been most generous in his revelations to me, a humble servant of the Light.',12,0,100,0,0,0,16740,0,'Grand Anchorite Almonen'),
(19216,2,0,'In accordance with my divine calling, I must share these revealed truths to all who would hear.',12,0,100,0,0,0,16741,0,'Grand Anchorite Almonen'),
(19216,3,0,'It has been made known to me that inside each of us, the Light resides...',12,0,100,0,0,0,16742,0,'Grand Anchorite Almonen'),
(19216,4,0,'...that it is a gift, given freely to all naturally born beings.',12,0,100,0,0,0,16743,0,'Grand Anchorite Almonen'),
(19216,5,0,'It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good.',12,0,100,0,0,0,16752,0,'Grand Anchorite Almonen'),
(19216,6,0,'Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light.',12,0,100,0,0,0,16753,0,'Grand Anchorite Almonen'),
(19216,7,0,'It rewards those who heed its promptings with blessings, both seen and unseen.',12,0,100,1,0,0,16754,0,'Grand Anchorite Almonen'),
(19216,8,0,'Personal reservoirs of hope and faith are strengthened, and one\'s capacity for greater light increases.',12,0,100,0,0,0,16755,0,'Grand Anchorite Almonen'),
(19216,9,0,'Over the course of time, through obedience to the Light\'s guidance, one becomes more sensitive to its voice, and its power.',12,0,100,273,0,0,16756,0,'Grand Anchorite Almonen'),
(19216,10,0,'Great is the healing and blessing power of the Light\'s most diligent followers.',12,0,100,0,0,0,16757,0,'Grand Anchorite Almonen'),
(19216,11,0,'Sadly, there are those who wander through mortality in defiance of the Light.',12,0,100,1,0,0,16761,0,'Grand Anchorite Almonen'),
(19216,12,0,'From these the Light withdraws, until only darkness remains.',12,0,100,0,0,0,16762,0,'Grand Anchorite Almonen'),
(19216,13,0,'Where there is no light, despair, loathing and rage thrive.',12,0,100,5,0,0,16763,0,'Grand Anchorite Almonen'),
(19216,14,0,'We are born into a perilous age, where the forces of darkness are determined to bring about our destruction.',12,0,100,1,0,0,16764,0,'Grand Anchorite Almonen'),
(19216,15,0,'These are the times to find yourselves in unison with the Light.',12,0,100,5,0,0,16765,0,'Grand Anchorite Almonen'),
(19216,16,0,'Hear my words, and let the Light inside of you confirm the truth of them.',12,0,100,0,0,0,16766,0,'Grand Anchorite Almonen'),
(19216,17,0,'Embrace the light that is in you, my friends! Deny yourself all darkness...',12,0,100,5,0,0,16775,0,'Grand Anchorite Almonen'),
(19216,18,0,'We must endure these trying times faithfully, and one day we will find ourselves victorious.',12,0,100,5,0,0,16776,0,'Grand Anchorite Almonen'),
(19216,19,0,'By the naaru, may it be so.',12,0,100,1,0,0,16778,0,'Grand Anchorite Almonen'),

-- Commander steele shows up and thanks him
(19216,20,0,'Your thanks are unnecessary, my friend. I consider it a privilege to speak to your recruits.',12,0,100,1,0,0,16733,0,'Grand Anchorite Almonen'),
(19216,21,0,'A\'dal has opened my mind to truths that I am to impart to our patrons today.',12,0,100,0,0,0,16734,0,'Grand Anchorite Almonen'),
(19216,22,0,'You are welcome to remain in attendance.',12,0,100,0,0,0,16745,0,'Grand Anchorite Almonen'),

-- Trainee speech
(19216,23,0,'I have been observing your training, my young brothers and sisters.',12,0,100,1,0,0,16299,0,'Grand Anchorite Almonen'), -- middle
(19216,24,0,'I\'ve not seen a more well-trained group of soldiers in all my years.',12,0,100,0,0,0,16300,0,'Grand Anchorite Almonen'), -- Middle
(19216,25,0,'The time has now come for you to face our enemies on the field of battle. As I speak our brothers and sisters fight to fend off the forces of Kil\'jaeden on the isle of Quel\'Danas.',12,0,100,0,0,0,16301,0,'Grand Anchorite Almonen'),
(19216,26,0,'As you all well know, the path of our people has not been an enviable one. Blood elf and draenei alike have been tested.',12,0,100,0,0,0,16303,0,'Grand Anchorite Almonen'),
(19216,27,0,'Conflict and strife have been our constant companions for as long as any of us can remember.',12,0,100,0,0,0,16305,0,'Grand Anchorite Almonen'), -- Middle
(19216,28,0,'For countless years, and across the faces of many worlds, draenei have yearned to better embrace the Light and put an end to the darkness. So too have our Scryer brethren held such ambition.',12,0,100,0,0,0,16306,0,'Grand Anchorite Almonen'),  -- Far Right
(19216,29,0,'At last my noble brothers and sisters, our time is at hand!',12,0,100,0,0,0,16308,0,'Grand Anchorite Almonen'),
(19216,30,0,'A moment ago, you knelt as recruits...',12,0,100,1,0,0,16309,0,'Grand Anchorite Almonen'),
(19216,31,0,'Now, with my blessing, you arise as true sons of the Light!',12,0,100,0,0,0,16310,0,'Grand Anchorite Almonen'), -- Middle
(19216,32,0,'Go forth my brothers, and may your light pierce the darkness! The Deceiver must be brought to justice!',12,0,100,273,0,0,16311,0,'Grand Anchorite Almonen'); -- Middle


-- Commander Steele
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (25141);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (96621); -- 0

DELETE FROM `spawn_group` where `groupId` IN (42282,42283,42284,42285,42286);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42282,0,96597), -- 25134
(42282,0,96598),
(42282,0,96599),

(42283,0,96601), -- 25135
(42283,0,96602),

(42284,0,96605), -- 25136
(42284,0,96606),
(42284,0,96607),
(42284,0,96608),
(42284,0,96609),

(42285,0,96613), -- 25137
(42285,0,96614),
(42285,0,96615),
(42285,0,96616),
(42285,0,96617),
(42285,0,96618),

(42286,0,96642); -- Veteran

DELETE FROM `spawn_group_template` where `groupId` IN (42282,42283,42284,42285,42286);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42282,'Shattered Sun Trainee Group 1',4),
(42283,'Shattered Sun Trainee Group 2',4),
(42284,'Shattered Sun Trainee Group 3',4),
(42285,'Shattered Sun Trainee Group 4',4),
(42286,'Shattered Sun Veteran',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25141) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2514100,2514101,2514102,2514103,2514104,2514105,2514106,2514107,2514108,2514109,2514110,2514111) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25141,0,0,0,108,0,100,0,2,966210,0,0,0,0,80,2514100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 2  - Run Script (No Repeat)'), -- Say line 7
(25141,0,1,0,108,0,100,0,3,966210,0,0,0,0,80,2514101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 3  - Run Script (No Repeat)'), -- Emote Yell and send data to Kick
(25141,0,2,0,108,0,100,0,4,966210,0,0,0,0,80,2514101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 4  - Run Script (No Repeat)'), -- Emote Yell and send data to Kick
(25141,0,3,0,108,0,100,0,6,966210,0,0,0,0,80,2514102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 6  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face SW
(25141,0,4,0,108,0,100,0,8,966210,0,0,0,0,80,2514103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 8  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face NW
(25141,0,5,0,108,0,100,0,10,966210,0,0,0,0,80,2514104,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 10  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face SE
(25141,0,6,0,108,0,100,0,12,966210,0,0,0,0,80,2514105,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 12  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face NE
(25141,0,7,0,108,0,100,0,13,966210,0,0,0,0,80,2514101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 13  - Run Script (No Repeat)'), -- Emote Yell and send data to Kick
(25141,0,8,0,108,0,100,0,14,966210,0,0,0,0,80,2514101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 14  - Run Script (No Repeat)'), -- Emote Yell and send data to Kick
(25141,0,9,0,108,0,100,0,16,966210,0,0,0,0,80,2514102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 16  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face SW
(25141,0,10,0,108,0,100,0,18,966210,0,0,0,0,80,2514103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 18  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face NW
(25141,0,11,0,108,0,100,0,20,966210,0,0,0,0,80,2514105,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 20  - Run Script (No Repeat)'), -- Emote Yell and send data to turn face NE
(25141,0,12,0,108,0,100,0,22,966210,0,0,0,0,80,2514106,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 22  - Run Script (No Repeat)'), -- Say line 8 and 9 and send data to Kneel
(25141,0,13,0,108,0,100,0,23,966210,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 23  - Set Flag Standstate Kneel'),
(25141,0,14,0,38,0,100,0,1,0,0,0,0,0,80,2514107,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Data Set 1 0 - Run Script'),
(25141,0,15,0,108,0,100,0,24,966210,0,0,0,0,80,2514108,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 24  - Run Script (No Repeat)'), -- Say line 10 and 11 and set data to disperse
(25141,0,16,0,108,0,100,0,27,966210,0,0,0,0,80,2514109,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 27  - Run Script (No Repeat)'), -- Talk to Anchorite and start Sermon
(25141,0,17,0,108,0,100,0,28,966210,0,0,0,0,80,2514110,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 28  - Run Script (No Repeat)'), -- Move to listen to sermon and sit and wait then stand and say line
(25141,0,18,0,108,0,100,0,30,966210,0,0,0,0,80,2514111,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 30  - Run Script (No Repeat)'), -- Move to Torvos and Emissary and talk before restarting cycle
(25141,0,19,0,38,0,100,0,1,1,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Data Set 1 1 - Say Line 6'),
(25141,0,20,0,108,0,100,0,12,966210,0,0,0,0,45,1,1,0,0,0,0,11,19216,250,0,0,0,0,0,0,'Commander Steele - On Waypoint Reached 12 - Set Data 1 1 \'Grand Anchorite Almonen\''), -- Anchorite start waypoint to troop speech
(25141,0,21,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Respawn - Set Active'),


(2514100,9,0,0,0,0,100,0,2000,2000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 7'),
(2514100,9,1,0,108,0,100,0,1000,2000,0,0,0,0,131,42282,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Spawn SpawnGroup \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,2,0,108,0,100,0,1000,2000,0,0,0,0,131,42283,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Spawn SpawnGroup \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,3,0,108,0,100,0,1000,2000,0,0,0,0,131,42284,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Spawn SpawnGroup \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,4,0,108,0,100,0,1000,2000,0,0,0,0,131,42285,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Spawn SpawnGroup \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,5,0,108,0,100,0,1000,2000,0,0,0,0,131,42286,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Spawn SpawnGroup \'Shattered Sun Veteran\''), -- Respawn and move to POS
/*
(2514100,9,1,0,108,0,100,0,1000,2000,0,0,0,0,226,1,1,0,0,0,0,9,25134,0,60,0,0,0,0,0,'Commander Steele - On Script - Spawn In \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,2,0,108,0,100,0,1000,2000,0,0,0,0,226,1,1,0,0,0,0,9,25135,0,60,0,0,0,0,0,'Commander Steele - On Script - Spawn In \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,3,0,108,0,100,0,1000,2000,0,0,0,0,226,1,1,0,0,0,0,9,25136,0,60,0,0,0,0,0,'Commander Steele - On Script - Spawn In \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,4,0,108,0,100,0,1000,2000,0,0,0,0,226,1,1,0,0,0,0,9,25137,0,60,0,0,0,0,0,'Commander Steele - On Script - Spawn In \'Shattered Sun Trainee\''), -- Respawn and move to POS
(2514100,9,5,0,108,0,100,0,1000,2000,0,0,0,0,226,1,1,0,0,0,0,9,25143,0,70,0,0,0,0,0,'Commander Steele - On Script - Spawn In \'Shattered Sun Veteran\''), -- Respawn and move to POS
*/

(2514101,9,0,0,0,0,100,0,1000,1000,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Play Emote \'Yell\''),
(2514101,9,1,0,0,0,100,0,500,500,0,0,0,0,45,1,1,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 1 \'Shattered Sun Trainee\''), -- to emote 60 (kick)
(2514101,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 1 \'Shattered Sun Trainee\''), -- to emote 60 (kick)
(2514101,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 1 \'Shattered Sun Trainee\''), -- to emote 60 (kick)
(2514101,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 1 \'Shattered Sun Trainee\''), -- to emote 60 (kick)
(2514101,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 1 \'Shattered Sun Veteran\''), -- to emote 60 (kick)

(2514102,9,0,0,0,0,100,0,1000,1000,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Play Emote \'Yell\''),
(2514102,9,1,0,0,0,100,0,500,500,0,0,0,0,45,1,2,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 2 \'Shattered Sun Trainee\''), -- to turn and face SW
(2514102,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 2 \'Shattered Sun Trainee\''), -- to turn and face SW
(2514102,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 2 \'Shattered Sun Trainee\''), -- to turn and face SW
(2514102,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 2 \'Shattered Sun Trainee\''), -- to turn and face SW
(2514102,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 2 \'Shattered Sun Veteran\''), -- to turn and face SW

(2514103,9,0,0,0,0,100,0,1000,1000,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Play Emote \'Yell\''),
(2514103,9,1,0,0,0,100,0,500,500,0,0,0,0,45,1,3,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 3 \'Shattered Sun Trainee\''), -- to turn and face NW
(2514103,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 3 \'Shattered Sun Trainee\''), -- to turn and face NW
(2514103,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 3 \'Shattered Sun Trainee\''), -- to turn and face NW
(2514103,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 3 \'Shattered Sun Trainee\''), -- to turn and face NW
(2514103,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 3 \'Shattered Sun Veteran\''), -- to turn and face NW

(2514104,9,0,0,0,0,100,0,1000,1000,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Play Emote \'Yell\''),
(2514104,9,1,0,0,0,100,0,500,500,0,0,0,0,45,1,4,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 4 \'Shattered Sun Trainee\''), -- to turn and face SE
(2514104,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,4,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 4 \'Shattered Sun Trainee\''), -- to turn and face SE
(2514104,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,4,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 4 \'Shattered Sun Trainee\''), -- to turn and face SE
(2514104,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,4,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 4 \'Shattered Sun Trainee\''), -- to turn and face SE
(2514104,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,4,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 4 \'Shattered Sun Veteran\''), -- to turn and face SE

(2514105,9,0,0,0,0,100,0,1000,1000,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Play Emote \'Yell\''),
(2514105,9,1,0,0,0,100,0,500,500,0,0,0,0,45,1,5,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 5 \'Shattered Sun Trainee\''), -- to turn and face NE (FRONT)
(2514105,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,5,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 5 \'Shattered Sun Trainee\''), -- to turn and face NE (FRONT)
(2514105,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,5,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 5 \'Shattered Sun Trainee\''), -- to turn and face NE (FRONT)
(2514105,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,5,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 5 \'Shattered Sun Trainee\''), -- to turn and face NE (FRONT)
(2514105,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,5,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 5 \'Shattered Sun Veteran\''), -- to turn and face NE (FRONT)

(2514106,9,0,0,0,0,100,0,2000,2000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 8'),
(2514106,9,1,0,0,0,100,0,8000,8000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 9'),
(2514106,9,2,0,0,0,100,0,2000,2000,0,0,0,0,45,1,6,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 6 \'Shattered Sun Trainee\''), -- Set state kneel
(2514106,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,6,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 6 \'Shattered Sun Trainee\''), -- Set state kneel
(2514106,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,6,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 6 \'Shattered Sun Trainee\''), -- Set state kneel
(2514106,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,6,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 6 \'Shattered Sun Trainee\''), -- Set state kneel
(2514106,9,6,0,0,0,100,0,0,0,0,0,0,0,45,1,6,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 6 \'Shattered Sun Veteran\''), -- Set state kneel

(2514107,9,0,0,0,0,100,0,100,100,0,0,0,0,45,1,7,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 7 \'Shattered Sun Trainee\''), -- Remove Kneel and applaud
(2514107,9,1,0,0,0,100,0,100,100,0,0,0,0,45,1,7,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 7 \'Shattered Sun Trainee\''), -- Remove Kneel and applaud
(2514107,9,2,0,0,0,100,0,100,100,0,0,0,0,45,1,7,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 7 \'Shattered Sun Trainee\''), -- Remove Kneel and applaud
(2514107,9,3,0,0,0,100,0,100,100,0,0,0,0,45,1,7,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 7 \'Shattered Sun Trainee\''), -- Remove Kneel and applaud
(2514107,9,4,0,0,0,100,0,100,100,0,0,0,0,45,1,7,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 7 \'Shattered Sun Veteran\''), -- Remove Kneel and applaud
(2514107,9,5,0,0,0,100,0,11000,11000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Remove Flag Standstate Kneel'),
(2514107,9,6,0,0,0,100,0,7000,7000,0,0,0,0,5,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Play Emote \'Applaud\''),
(2514107,9,7,0,0,0,100,0,120000,120000,0,0,0,0,236,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Resume Waypoint'),

(2514108,9,0,0,0,0,100,0,2000,2000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 10'),
(2514108,9,1,0,0,0,100,0,8000,8000,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 11'),
(2514108,9,2,0,0,0,100,0,100,1000,0,0,0,0,45,1,8,0,0,0,0,9,25134,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 8 \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,3,0,0,0,100,0,100,1000,0,0,0,0,45,1,8,0,0,0,0,9,25135,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 8 \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,4,0,0,0,100,0,100,1000,0,0,0,0,45,1,8,0,0,0,0,9,25136,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 8 \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,5,0,0,0,100,0,100,1000,0,0,0,0,45,1,8,0,0,0,0,9,25137,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 8 \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,8,0,0,0,0,9,25143,0,30,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 8 \'Shattered Sun Veteran\''), -- To disperse and despawn
/*
(2514108,9,7,0,0,0,100,0,20000,20000,0,0,0,0,132,42282,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Despawn SpawnGroup \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,8,0,0,0,100,0,100,100,0,0,0,0,132,42283,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Despawn SpawnGroup \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,9,0,0,0,100,0,100,100,0,0,0,0,132,42284,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Despawn SpawnGroup \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,10,0,0,0,100,0,100,100,0,0,0,0,132,42285,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Despawn SpawnGroup \'Shattered Sun Trainee\''), -- To disperse and despawn
(2514108,9,11,0,0,0,100,0,100,100,0,0,0,0,132,42286,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Despawn SpawnGroup \'Shattered Sun Veteran\''), -- To disperse and despawn
*/
(2514109,9,0,0,0,0,100,0,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 0'),
(2514109,9,1,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,11,19216,250,0,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 0 \'Grand Anchorite Almonen\''), -- Turn around and start talking and start sermon script
(2514109,9,2,0,0,0,100,0,33000,33000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 1'),

(2514110,9,0,0,0,0,100,0,29000,29000,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Set Flag Standstate Sit'),
(2514110,9,1,0,0,0,100,0,187000,187000,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Remove Flag Standstate Sit'),
(2514110,9,2,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 2'),

(2514111,9,0,0,0,0,100,0,1000,1000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 3'),
(2514111,9,1,0,0,0,100,0,12000,12000,0,0,0,0,45,1,0,0,0,0,0,11,25140,50,0,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 0 \'Lord Torvos\''),
(2514111,9,2,0,0,0,100,0,26000,26000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Commander Steele - On Script - Say Line 4'),
(2514111,9,3,0,0,0,100,0,17000,17000,0,0,0,0,45,1,0,0,0,0,0,10,96590,19202,0,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 0 \'Emissary Mordin\''),
(2514111,9,4,0,0,0,100,0,19000,19000,0,0,0,0,45,1,1,0,0,0,0,11,25140,50,0,0,0,0,0,0,'Commander Steele - On Script - Set Data 1 1 \'Lord Torvos\'');

DELETE FROM `creature_addon` where `guid` in (96621);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(96621,966210,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` where `id` in (966210);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(966210,1,-1782.3447,5320.0757,-12.427749,NULL,0,0,0,100,0), -- -- Starting Point troops should start to come together.
(966210,2,-1775.2076,5327.58,-12.427715,2.3517,35000,0,0,100,0), -- says line 10 Wait for troops to come together. -- this is the reset point for first rotation
(966210,3,-1777.0742,5329.4634,-12.427715,2.3808,2000,0,0,100,0), -- Move up yell -> troop kick/attack
(966210,4,-1781.3802,5330.274,-12.427715,2.4040,2000,0,0,100,0), -- move next to vet yell kick
(966210,5,-1787.057,5328.2803,-12.427715,NULL,0,0,0,100,0),
(966210,6,-1791.3259,5331.7256,-12.427757,0.8285,2000,0,0,100,0), -- Move to left to 90 yell -- troops 180 point SW
(966210,7,-1795.4164,5336.9814,-12.427757,NULL,0,0,0,100,0),
(966210,8,-1790.6102,5342.3965,-12.427757,5.5525,2000,0,0,100,0), -- Move to left to 180 yell -- troops 90 point NW
(966210,9,-1784.6064,5347.1943,-12.427757,NULL,0,0,0,100,0),
(966210,10,-1779.9098,5342.988,-12.427757,3.9267,2000,0,0,100,0), -- Move to left to 270 yell -- troops 180 point SE
(966210,11,-1772.3271,5335.7163,-12.427757,NULL,0,0,0,100,0),
(966210,12,-1775.2076,5327.58,-12.427715,2.3517,2000,0,0,100,0), -- first rotation  yell -- troops 90 point NE facing front now
(966210,13,-1777.0742,5329.4634,-12.427715,2.3808,2000,0,0,100,0), -- Move up yell -> troop kick/attack
(966210,14,-1781.3802,5330.274,-12.427715,2.4040,2000,0,0,100,0), -- move next to vet yell kick
(966210,15,-1787.057,5328.2803,-12.427715,NULL,0,0,0,100,0),
(966210,16,-1791.3259,5331.7256,-12.427757,0.8285,2000,0,0,100,0), -- Move to left to 90 yell -- troops 180 point SW
(966210,17,-1795.4164,5336.9814,-12.427757,NULL,0,0,0,100,0),
(966210,18,-1790.6102,5342.3965,-12.427757,5.5525,2000,0,0,100,0), -- Move to left to 180 yell -- troops 90 point NW
(966210,19,-1784.6064,5347.1943,-12.427757,NULL,0,0,0,100,0),
(966210,20,-1779.9098,5342.988,-12.427757,3.9267,2000,0,0,100,0), -- Move to left to 270 yell -- troops 90 point NE
(966210,21,-1776.0414,5339.4434,-12.427757,NULL,0,0,0,100,0),
(966210,22,-1777.0742,5329.4634,-12.427715,2.3808,15000,0,0,100,0), -- Announce listen up and Anchorite's speech and tell troops to Kneel. 
(966210,23,-1768.8093,5337.4775,-12.427757,3.8778,140000,0,0,100,0), -- kneel and wait for speech to be over troops stand and clap and he stays kneeling  have anchorite set data to make him get up in time
(966210,24,-1775.2076,5327.58,-12.427715,2.3517,28000,0,0,100,0),  -- Tell troops training is finished and to fall out after a few seconds.  Troops disperse
(966210,25,-1833.0616,5362.744,-12.427757,NULL,0,0,0,100,0), -- head into temple of light
-- (966210,25,-1827.9045,5362.997,-12.427757,NULL,0,0,0,100,0), -- head into temple of light
(966210,26,-1849.6697,5417.5767,-12.344103,NULL,0,0,0,100,0), -- bottom of stairs
(966210,27,-1851.0441,5423.767,-10.709132,2.6199,39100,0,0,100,0), -- Talk to anchorite thanking him and then being invited to stay for sermon. Say it is an honor before waiting about 7 seconds after anchorite moves to start moving again
(966210,28,-1849.3151,5407.3926,-12.428066,2.3159,238000,0,0,100,0), -- go to position takes 7 seconds and wait 29 seconds before sitting and wait for sermon to be over and on set data stand  after 21 seconds and 2 seconds later say may it be so then another two seconds start waypoint.  
(966210,29,-1829.5894,5363.486,-12.427258,NULL,0,0,0,100,0),
(966210,30,-1783.8463,5318.7725,-12.427749,4.0957,146000,0,0,100,0); -- Torvos and Emissary talk 

DELETE FROM `creature_text` WHERE `CreatureID` IN (25141);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25141,0,0,'Thank you for speaking to the men, Almonen. They\'ll be better for it.',12,0,100,1,0,0,16725,0,'Commander Steele'),
(25141,1,0,'It would be an honor, Grand Anchorite.',12,0,100,0,0,0,16726,0,'Commander Steele'),
(25141,2,0,'May it be as you say, Grand Anchorite.',12,0,100,0,0,0,16779,0,'Commander Steele'),

(25141,3,0,'Training complete, sir. Our next batch of recruits are due shortly.',12,0,100,66,0,0,16401,0,'Commander Steele'),
-- Lord Torvos first 2 lines
(25141,4,0,'Thank you sir, though I cannot accept your praise without acknowledging the assistance of our guest, Emissary Mordin.',12,0,100,1,0,0,16403,0,'Commander Steele'),
(25141,5,0,'The techniques he has suggested have been most effective in preparing the troops.',12,0,100,0,0,0,16404,0,'Commander Steele'),
-- Emissary Mordin line 1
-- Lord Torvos next 3 lines
-- Emissary Mordin line 2
(25141,6,0,'By your leave, Lord Torvos. I must prepare the next troops for your review.',12,0,100,2,0,0,16405,0,'Commander Steele'),
-- Lord Torvos line 3
-- leaves for Trainee gathering
(25141,7,0,'Troops! Fall in!',12,0,100,0,0,0,16292,0,'Commander Steele'),
(25141,8,0,'Listen up Men!',12,0,100,0,0,0,16448,0,'Commander Steele'),
(25141,9,0,'We are graced to hear from our revered Grand Anchorite Almonen. Take a knee men.',12,0,100,1,0,0,16294,0,'Commander Steele'),
(25141,10,0,'Your training is now complete. You each have your assignments. May the Light guide you.',12,0,100,1,0,0,16449,0,'Commander Steele'),
(25141,11,0,'Troops! Fall out!',12,0,100,0,0,0,16295,0,'Commander Steele');


-- Emissary Mordin
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19202);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19202) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19202,0,0,0,38,0,100,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Emissary Mordin - On Data Set 1 0 - Say Line 0'),
(19202,0,1,0,38,0,100,0,1,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Emissary Mordin - On Data Set 1 1 - Say Line 1'),
(19202,0,2,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Emissary Mordin - On Respawn - Set Active');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19202);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19202,0,0,'You give me too much credit, good sir. I regret we cannot be of more assistance in such perilous times.',12,0,100,1,0,0,16412,0,'Emissary Mordin'),
(19202,1,0,'This is welcome news indeed. I shall pass along your gratitude to our commanders back on Azeroth.',12,0,100,0,0,0,16413,0,'Emissary Mordin');


-- Lord Torvos
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (25140);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25140) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2514000,2514001) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25140,0,0,0,38,0,100,0,1,0,0,0,0,0,80,2514000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Data Set 1 0 - Run Script'),
(25140,0,1,0,38,0,100,0,1,1,0,0,0,0,80,2514001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Data Set 1 1 - Run Script'),
(25140,0,2,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Respawn - Set Active'),

(2514000,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Script - Say Line 0'),
(2514000,9,1,0,0,0,100,0,9000,9000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Script - Say Line 1'),

(2514001,9,0,0,0,0,100,0,0,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Script - Say Line 2'),
(2514001,9,1,0,0,0,100,0,8000,8000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Script - Say Line 3'),
(2514001,9,2,0,0,0,100,0,11000,11000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Script - Say Line 4'),
(2514001,9,3,0,0,0,100,0,14000,14000,0,0,0,0,45,1,1,0,0,0,0,10,96590,19202,0,0,0,0,0,0,'Lord Torvos - On Script - Set Data 1 1 \'Emissary Mordin\''),
(2514001,9,4,0,0,0,100,0,17000,17000,0,0,0,0,45,1,1,0,0,0,0,10,96621,25141,0,0,0,0,0,0,'Lord Torvos - On Script - Set Data 1 1 \'Commander Steele\''),
(2514001,9,5,0,0,0,100,0,15000,15000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Torvos - On Script - Say Line 5');

DELETE FROM `creature_text` WHERE `CreatureID` IN (25140);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(25140,0,0,'You\'re doing a fine job, Harbinger.',12,0,100,0,0,0,16406,0,'Lord Torvos'),
(25140,1,0,'Word from the front lines is that your recruits outperform all others in battle.',12,0,100,0,0,0,16407,0,'Lord Torvos'),
(25140,2,0,'On the contrary, my friend.',12,0,100,0,0,0,16408,0,'Lord Torvos'),
(25140,3,0,'With the intelligence you\'ve provided on the enemy and their tactics we\'ve gained a significant edge in the field.',12,0,100,1,0,0,16409,0,'Lord Torvos'),
(25140,4,0,'The fighting remains fierce and costly, but your assistance has proven invaluable.',12,0,100,0,0,0,16410,0,'Lord Torvos'),
(25140,5,0,'Dismissed.',12,0,100,0,0,0,16411,0,'Lord Torvos');


-- Shattered Sun Veteran
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (25143);
UPDATE `creature` SET `position_x`= -1826.8469,`position_y`= 5306.383,`position_z`= -12.427526 WHERE `guid`= 96642;
UPDATE `creature` SET `spawntimesecs`= 900 WHERE `guid`= 96642; -- 180 -- Patch fix change Shattered Sun Veteran to not respawn before the respawn spawngroup command is called. 10-10-26

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-96642) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2514300,2514301) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (-96642,0,0,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Initialize - Disable Respawn'),
(-96642,0,0,1,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Respawn - Set Active'),
(-96642,0,1,0,61,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1780.71,5332.77,-12.3282,5.49779,'Shattered Sun Veteran - On Respawn (Linked) - Move to POS'),
(-96642,0,2,0,38,0,100,0,1,1,0,0,0,0,5,60,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Data Set 1 1 - Play Emote \'Kick\''), -- to emote 60 (kick)
(-96642,0,3,0,38,0,100,0,1,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.49779,'Shattered Sun Veteran - On Data Set 1 2 - Set Orientation'), -- to turn and face SW
(-96642,0,4,0,38,0,100,0,1,3,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.99779,'Shattered Sun Veteran - On Data Set 1 3 - Set Orientation'), -- to turn and face NW
(-96642,0,5,0,38,0,100,0,1,4,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.99779,'Shattered Sun Veteran - On Data Set 1 4 - Set Orientation'), -- to turn and face SE
(-96642,0,6,0,38,0,100,0,1,5,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.49779,'Shattered Sun Veteran - On Data Set 1 5 - Set Orientation'), -- to turn and face NE (FRONT)
(-96642,0,7,0,38,0,100,0,1,6,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Data Set 1 6 - Set Flag Standstate \'Kneel\''), -- Set Kneel
(-96642,0,8,0,38,0,100,0,1,7,0,0,0,0,80,2514300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Data Set 1 7 - Run Script'), -- Remove Kneel and applaud
(-96642,0,9,0,38,0,100,0,1,8,0,0,0,0,80,2514301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Data Set 1 8 - Run Script'), -- To disperse and despawn

(2514300,9,0,0,0,0,100,0,100,100,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Script - Remove Flag Standstate Kneel'),
(2514300,9,1,0,0,0,100,0,18000,18000,0,0,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Script - Play Emote \'Cheer\''),

(2514301,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Script - Set Run Off'),
(2514301,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1826.8469,5306.383,-12.427526,5.49779,'Shattered Sun Veteran - On Script - Move to POS (Random)'),
(2514301,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Veteran - On Script - Despawn');


-- Shattered Sun Trainee
UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` in (25134,25135,25136,25137); -- 0
UPDATE `creature` SET `spawntimesecs`= 900 WHERE `guid` IN (96597,96598,96599,96601,96602,96605,96606,96607,96608,96609,96613,96614,96615,96616,96617,96618); -- 180 -- Patch fix change Shattered Sun Trainees to not respawn before the respawn spawngroup command is called. 10-10-26


UPDATE `creature` SET `position_x`= -1816.8503,`position_y`= 5297.615,`position_z`= -12.427694 WHERE `guid`= 96597;
UPDATE `creature` SET `position_x`= -1747.7029,`position_y`= 5367.0327,`position_z`= -12.4279995 WHERE `guid`= 96598;
UPDATE `creature` SET `position_x`= -1769.2688,`position_y`= 5375.188,`position_z`= -12.427694 WHERE `guid`= 96599;
UPDATE `creature` SET `position_x`= -1826.2964,`position_y`= 5328.615,`position_z`= -12.427694 WHERE `guid`= 96601;
UPDATE `creature` SET `position_x`= -1816.1494,`position_y`= 5354.5107,`position_z`= -12.427694 WHERE `guid`= 96602;
UPDATE `creature` SET `position_x`= -1780.2245,`position_y`= 5377.233,`position_z`= -12.427694 WHERE `guid`= 96605;
UPDATE `creature` SET `position_x`= -1827.4924,`position_y`= 5315.5864,`position_z`= -12.4279995 WHERE `guid`= 96606;
UPDATE `creature` SET `position_x`= -1820.5836,`position_y`= 5307.3394,`position_z`= -12.4279995 WHERE `guid`= 96607;
UPDATE `creature` SET `position_x`= -1758.8339,`position_y`= 5363.6606,`position_z`= -12.4279995 WHERE `guid`= 96608;
UPDATE `creature` SET `position_x`= -1811.6217,`position_y`= 5360.361,`position_z`= -12.427694 WHERE `guid`= 96609;
UPDATE `creature` SET `position_x`= -1805.792,`position_y`= 5308.8193,`position_z`= -12.4279995 WHERE `guid`= 96613;
UPDATE `creature` SET `position_x`= -1791.7197,`position_y`= 5299.259,`position_z`= -20.923939 WHERE `guid`= 96614;
UPDATE `creature` SET `position_x`= -1745.8375,`position_y`= 5352.1963,`position_z`= -12.4279995 WHERE `guid`= 96615;
UPDATE `creature` SET `position_x`= -1825.066,`position_y`= 5362.412,`position_z`= -12.427694 WHERE `guid`= 96616;
UPDATE `creature` SET `position_x`= -1815.2842,`position_y`= 5358.3477,`position_z`= -12.427694 WHERE `guid`= 96617;
UPDATE `creature` SET `position_x`= -1807.5646,`position_y`= 5359.3438,`position_z`= -12.427694 WHERE `guid`= 96618;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-96595,-96596,-96597,-96598,-96599,-96600,-96601,-96602,-96603,-96604,-96605,-96606,-96607,-96608,-96609,-96610,-96611,-96612,-96613,-96614,-96615,-96616,-96617,-96618,25134,25135,25136,25137) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2513400,2513401,2513402,2513403,2513404,2513405,2513406,2513407,2513408,2513409,2513410,2513411,2513412,2513413,2513414,2513415,2513416) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-96612,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96611,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96610,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96604,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96603,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96600,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96596,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),
(-96595,0,1000,0,1,0,100,0,0,3000,3000,3000,0,0,10,36,43,54,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield'),

-- (-96597,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96597,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1790.15,5335.14,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96597,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513401,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96598,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96598,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1779.02,5337.96,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96598,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513402,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96599,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96599,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1785.46,5339.81,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96599,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513403,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96601,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96601,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1787.79,5333.1,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96601,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513404,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96602,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96602,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1792.36,5337.14,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96602,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513405,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96605,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96605,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1787.73,5337.6,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96605,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513406,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96606,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96606,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1785.66,5335.26,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96606,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513407,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96607,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96607,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1783.16,5337.67,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96607,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513408,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96608,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96608,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1783.63,5333.44,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96608,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513409,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96609,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96609,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1787.64,5341.81,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96609,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513410,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96613,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96613,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1781.29,5335.79,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96613,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513411,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96614,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
-- (-96614,0,1001,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1780.88,5339.83,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96614,0,1000,0,11,0,100,0,0,0,0,0,0,0,53,2,25134,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn - Start Waypoint'),
(-96614,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513412,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96615,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96615,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1785.9,5331.25,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96615,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513413,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96616,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96616,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1785.31,5344.09,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96616,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513414,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96617,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96617,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1789.79,5339.68,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96617,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513415,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

-- (-96618,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Initialize - Disable Respawn'),
(-96618,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1782.86,5342.13,-12.3282,5.49779,'Shattered Sun Trainee - On Respawn - Move to POS'),
(-96618,0,1001,0,38,0,100,0,1,8,0,0,0,0,80,2513416,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 8 - Run Script'), -- To disperse and despawn

(25134,0,0,0,38,0,100,0,1,1,0,0,0,0,5,60,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 1 - Play Emote \'Kick\''), -- to emote 60 (kick)
(25134,0,1,0,38,0,100,0,1,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.49779,'Shattered Sun Trainee - On Data Set 1 2 - Set Orientation'), -- to turn and face SW
(25134,0,2,0,38,0,100,0,1,3,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.99779,'Shattered Sun Trainee - On Data Set 1 3 - Set Orientation'), -- to turn and face NW
(25134,0,3,0,38,0,100,0,1,4,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.99779,'Shattered Sun Trainee - On Data Set 1 4 - Set Orientation'), -- to turn and face SE
(25134,0,4,0,38,0,100,0,1,5,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.49779,'Shattered Sun Trainee - On Data Set 1 5 - Set Orientation'), -- to turn and face NE (FRONT)
(25134,0,5,0,38,0,100,0,1,6,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 6 - Set Flag Standstate \'Kneel\''), -- Set Kneel
(25134,0,6,0,38,0,100,0,1,7,0,0,0,0,80,2513400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 7 - Run Script'), -- Remove Kneel and applaud
(25134,0,7,8,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn - Set Active'),
(25134,0,8,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn (Linked) - Set Run On'),

(25135,0,0,0,38,0,100,0,1,1,0,0,0,0,5,60,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 1 - Play Emote \'Kick\''), -- to emote 60 (kick)
(25135,0,1,0,38,0,100,0,1,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.49779,'Shattered Sun Trainee - On Data Set 1 2 - Set Orientation'), -- to turn and face SW
(25135,0,2,0,38,0,100,0,1,3,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.99779,'Shattered Sun Trainee - On Data Set 1 3 - Set Orientation'), -- to turn and face NW
(25135,0,3,0,38,0,100,0,1,4,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.99779,'Shattered Sun Trainee - On Data Set 1 4 - Set Orientation'), -- to turn and face SE
(25135,0,4,0,38,0,100,0,1,5,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.49779,'Shattered Sun Trainee - On Data Set 1 5 - Set Orientation'), -- to turn and face NE (FRONT)
(25135,0,5,0,38,0,100,0,1,6,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 6 - Set Flag Standstate \'Kneel\''), -- Set Kneel
(25135,0,6,0,38,0,100,0,1,7,0,0,0,0,80,2513400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 7 - Run Script'), -- Remove Kneel and applaud
(25135,0,7,8,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn - Set Active'),
(25135,0,8,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn (Linked) - Set Run On'),

(25136,0,0,0,38,0,100,0,1,1,0,0,0,0,5,60,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 1 - Play Emote \'Kick\''), -- to emote 60 (kick)
(25136,0,1,0,38,0,100,0,1,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.49779,'Shattered Sun Trainee - On Data Set 1 2 - Set Orientation'), -- to turn and face SW
(25136,0,2,0,38,0,100,0,1,3,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.99779,'Shattered Sun Trainee - On Data Set 1 3 - Set Orientation'), -- to turn and face NW
(25136,0,3,0,38,0,100,0,1,4,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.99779,'Shattered Sun Trainee - On Data Set 1 4 - Set Orientation'), -- to turn and face SE
(25136,0,4,0,38,0,100,0,1,5,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.49779,'Shattered Sun Trainee - On Data Set 1 5 - Set Orientation'), -- to turn and face NE (FRONT)
(25136,0,5,0,38,0,100,0,1,6,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 6 - Set Flag Standstate \'Kneel\''), -- Set Kneel
(25136,0,6,0,38,0,100,0,1,7,0,0,0,0,80,2513400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 7 - Run Script'), -- Remove Kneel and applaud
(25136,0,7,8,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn - Set Active'),
(25136,0,8,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn (Linked) - Set Run On'),

(25137,0,0,0,38,0,100,0,1,1,0,0,0,0,5,60,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 1 - Play Emote \'Kick\''), -- to emote 60 (kick)
(25137,0,1,0,38,0,100,0,1,2,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.49779,'Shattered Sun Trainee - On Data Set 1 2 - Set Orientation'), -- to turn and face SW
(25137,0,2,0,38,0,100,0,1,3,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.99779,'Shattered Sun Trainee - On Data Set 1 3 - Set Orientation'), -- to turn and face NW
(25137,0,3,0,38,0,100,0,1,4,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.99779,'Shattered Sun Trainee - On Data Set 1 4 - Set Orientation'), -- to turn and face SE
(25137,0,4,0,38,0,100,0,1,5,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.49779,'Shattered Sun Trainee - On Data Set 1 5 - Set Orientation'), -- to turn and face NE (FRONT)
(25137,0,5,0,38,0,100,0,1,6,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 6 - Set Flag Standstate \'Kneel\''), -- Set Kneel
(25137,0,6,0,38,0,100,0,1,7,0,0,0,0,80,2513400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Data Set 1 7 - Run Script'), -- Remove Kneel and applaud
(25137,0,7,8,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn - Set Active'),
(25137,0,8,0,61,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Respawn (Linked) - Set Run On'),

(2513400,9,0,0,0,0,100,0,100,100,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Remove Flag Standstate Kneel'),
(2513400,9,1,0,0,0,100,0,18000,18500,0,0,0,0,5,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Play Emote \'Applaud\''),
-- (2513400,9,2,0,0,0,100,0,4000,4500,0,0,0,0,5,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Play Emote \'Applaud\''),

(2513401,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513401,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1816.8503,5297.615,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513401,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513402,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513402,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1747.7029,5367.0327,-12.4279995,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513402,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513403,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513403,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1769.2688,5375.188,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513403,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513404,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513404,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1826.2964,5328.615,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513404,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513405,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513405,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1816.1494,5354.5107,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513405,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513406,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513406,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1780.2245,5377.233,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513406,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513407,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513407,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1827.4924,5315.5864,-12.4279995,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513407,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513408,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513408,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1820.5836,5307.3394,-12.4279995,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513408,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513409,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513409,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1758.8339,5363.6606,-12.4279995,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513409,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513410,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513410,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1811.6217,5360.361,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513410,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513411,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513411,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1805.792,5308.8193,-12.4279995,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513411,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513412,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513412,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1798.6125,5311.9546,-12.933778,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513412,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513413,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513413,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1745.8375,5352.1963,-12.4279995,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513413,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513414,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513414,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1825.066,5362.412,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513414,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513415,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513415,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1815.2842,5358.3477,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513415,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn'),

(2513416,9,0,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Set Run Off'),
(2513416,9,1,0,0,0,100,0,100,100,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1807.5646,5359.3438,-12.427694,5.49779,'Shattered Sun Trainee - On Script - Move to POS (Random)'),
(2513416,9,2,0,0,0,100,0,6000,12000,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shattered Sun Trainee - On Script - Despawn');

DELETE FROM `waypoints` WHERE `entry` IN (25134);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(25134,1,-1798.5312,5313.235,-12.427842,0,0,'Shattered Sun Trainee'),
(25134,2,-1780.88,5339.83,-12.3282,0,0,'Shattered Sun Trainee');


-- Aldor Anchorite
DELETE FROM `creature` where guid in (68464);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19142) AND `source_type` = 0 AND `id` IN (3,4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1914200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19142,0,3,0,38,0,100,0,1,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Anchorite - On Data Set 1 0 - Set Flag Standstate Kneel'),
(19142,0,4,0,38,0,100,0,1,1,0,0,0,0,80,1914200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Anchorite - On Data Set 1 1 - Run Script'),
(19142,0,5,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Anchorite - On Respawn - Set Active'),

(1914200,9,0,0,0,0,100,0,1000,3000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Anchorite - On Script - Remove Flag Standstate Kneel'),
(1914200,9,1,0,0,0,60,0,2000,5000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Anchorite - On Script - Say Line 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19142) AND `GroupID` = 1;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19142,1,0,'May it be so.',12,0,100,0,0,0,16780,0,'Aldor Anchorite');


-- Whirligig Wafflefry
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (96594); -- 2
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` in (96594); -- 965940

DELETE FROM `smart_scripts` WHERE `entryorguid` in (25885) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2588500) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25885,0,0,0,11,0,100,0,0,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Respawn - Set Sheath Ranged'),
(25885,0,1,0,1,0,100,0,30000,30000,90000,240000,0,0,80,2588500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - Out of Combat - Run Script'),

(2588500,9,0,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Script - Say Line 0'),
(2588500,9,1,0,0,0,100,0,14000,14000,0,0,0,0,45,1,0,0,0,0,0,11,19475,30,0,0,0,0,0,0,'Whirligig Wafflefry - On Script - Set Data 1 0 \'Harbinger Haronem\''),
(2588500,9,2,0,0,0,100,0,10000,10000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Script - Say Line 1'),
(2588500,9,3,0,0,0,100,0,9000,9000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Script - Say Line 2'),
(2588500,9,4,0,0,0,100,0,9000,9000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Script - Say Line 3'),
(2588500,9,5,0,0,0,100,0,9000,9000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Whirligig Wafflefry - On Script - Say Line 4');

DELETE FROM `waypoint_data` where `id` in (965940);

DELETE FROM `waypoint_scripts` where `id` IN (456,457,458,459);


-- Harbinger Haronem
DELETE FROM `smart_scripts` WHERE `entryorguid` in (19475) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19475,0,0,0,38,0,100,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Haronem - On Data Set 1 0 - Say Line 0');


-- Aldor Vindicator
-- has a hard coded script guard_shattrath_aldor in guard.cpp
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (18549);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 18549 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18549,0,0,0,10,0,100,0,0,20,18000,30000,1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Vindicator - On Player within 20 yards - Say Line 0');
-- (18549,0,1,0,0,0,100,0,2000,3000,10000,10000,1,0,11,36642,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Aldor Vindicator - IC - Cast \'Banished from Shattrath City\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry`=18549 AND `SourceId`=0;
-- DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1,2) AND `SourceEntry`=18549 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,18549,0,0,5,0,934,240,0,0,0,0,'','Execute SAI (Action 0) if player is Faction 934');
-- (22,2,18549,0,0,5,0,934,240,0,0,0,0,'','Execute SAI (Action 1) if player is Faction 934');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18549) AND `GroupID` IN (0);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18549,0,0,'These are holy grounds!  You are not welcome here.',12,0,100,0,0,0,19026,0,'Aldor Vindicator'),
(18549,0,1,'Friends of the Scryers are not allowed here!',12,0,100,0,0,0,19027,0,'Aldor Vindicator'),
(18549,0,2,'Take your time away from here to reflect upon your actions.',12,0,100,0,0,0,19028,0,'Aldor Vindicator');


-- Aldor Acolyte
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19702);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 19702 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19702,0,0,0,10,0,100,0,1,10,20000,25000,1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Acolyte - On Player within 10 yards - Say Line 0'),
(19702,0,1,0,10,0,100,0,0,10,20000,25000,1,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Acolyte - On Player within 10 yards - Say Line 1');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1,2) AND `SourceEntry`=19702 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,19702,0,0,5,0,932,240,0,0,0,0,'','Execute SAI (Action 0) if player is Faction 932'),
(22,2,19702,0,0,5,0,934,240,0,0,0,0,'','Execute SAI (Action 1) if player is Faction 934');

DELETE FROM `creature_text` WHERE `CreatureID` IN (19702) AND `GroupID` IN (0,1);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19702,0,0,'It is good to see you again, $n.',12,0,100,1,0,0,17329,0,'Aldor Acolyte'),
(19702,0,1,'The Aldor welcome you, $n.',12,0,100,1,0,0,17330,0,'Aldor Acolyte'),
(19702,0,2,'May the Light guide you, $n.',12,0,100,1,0,0,17331,0,'Aldor Acolyte'),
(19702,1,0,'I would not venture further if I were you, $n.  You are not permitted above.',12,0,100,1,0,0,17332,0,'Aldor Acolyte'),
(19702,1,1,'It would be to your benefit for you to stay away from our holy grounds, $n.',12,0,100,1,0,0,17333,0,'Aldor Acolyte'),
(19702,1,2,'You\'ll have to prove yourself to us before you\'re welcome here, $n.',12,0,100,1,0,0,17334,0,'Aldor Acolyte');


-- Aldor Neophyte
UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (19153); -- 2

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19153);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=18569 WHERE `DisplayID` IN (18568); -- 17540 scryer model should be aldor

DELETE FROM `creature` where `guid` IN (68492,68493,68494);

UPDATE `creature` SET `position_x`= -1807.0199,`position_y`= 5606.6143,`position_z`= 130.81311 WHERE `guid`= 68495; -- -1773.63,5720.07,126.538  - 11
UPDATE `creature` SET `position_x`= -1796.8312,`position_y`= 5620.6685 ,`position_z`= 130.81311 WHERE `guid`= 68496; -- -1761.79,5716.16,126.538  - 3
UPDATE `creature` SET `position_x`= -1799.1659,`position_y`= 5609.4106,`position_z`= 130.81311 WHERE `guid`= 68497; -- -1769.85,5718.85,126.538 - 9
UPDATE `creature` SET `position_x`= -1801.5276,`position_y`= 5604.594,`position_z`= 130.81311 WHERE `guid`= 68498; -- -1765.72,5717.48,126.538  - 12

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19153,-68495,-68496,-68497,-68498) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1915300) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (-68495,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Initialize - Disable Respawn'),
(-68495,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1773.63,5720.07,126.538,1.25664,'Aldor Neophyte - On Respawn - Move to POS'),
(-68495,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1915300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-68496,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Initialize - Disable Respawn'),
(-68496,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1761.79,5716.16,126.538,1.25664,'Aldor Neophyte - On Respawn - Move to POS'),
(-68496,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1915300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-68497,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Initialize - Disable Respawn'),
(-68497,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1769.85,5718.85,126.538,1.25664,'Aldor Neophyte - On Respawn - Move to POS'),
(-68497,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1915300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-68498,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Initialize - Disable Respawn'),
(-68498,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1765.72,5717.48,126.538,1.25664,'Aldor Neophyte - On Respawn - Move to POS'),
(-68498,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1915300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

(19153,0,0,0,37,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Initialize - Set Active'),
(19153,0,1,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Respawn - Set Run Off'),
(19153,0,2,0,40,0,100,0,16,19153,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Waypoint 16 Reached - Despawn'),
(19153,0,3,0,1,0,100,0,0,0,10000,10000,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - OOC - Set Active'),

(1915300,9,0,0,0,0,100,0,100,100,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Script - Play Emote 66'),
(1915300,9,1,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.7106,'Aldor Neophyte - On Script - Set Orientation'), -- 3.05664
(1915300,9,2,0,0,0,100,0,8000,8000,0,0,0,0,53,1,19153,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Neophyte - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (19153);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19153,1,-1780.071,5727.711,126.53812,0,0,'Aldor Neophyte'),
(19153,2,-1781.6143,5729.2305,127.29307,0,0,'Aldor Neophyte'),
(19153,3,-1782.3779,5729.983,128.08417,0,0,'Aldor Neophyte'),
(19153,4,-1800.8291,5745.593,128.39792,0,0,'Aldor Neophyte'),
(19153,5,-1833.9512,5757.2446,130.93658,0,0,'Aldor Neophyte'),
(19153,6,-1851.5527,5762.0063,129.5582,0,0,'Aldor Neophyte'),
(19153,7,-1874.7017,5787.2314,129.5582,0,0,'Aldor Neophyte'),
(19153,8,-1881.161,5797.338,129.55789,0,0,'Aldor Neophyte'),
(19153,9,-1881.6862,5798.259,130.5971,0,0,'Aldor Neophyte'),
(19153,10,-1891.8461,5815.6294,129.4317,0,0,'Aldor Neophyte'),
(19153,11,-1905.2136,5837.3677,128.5494,0,0,'Aldor Neophyte'),
(19153,12,-1906.0437,5838.915,129.98833,0,0,'Aldor Neophyte'),
(19153,13,-1914.6903,5856.438,130.24423,0,0,'Aldor Neophyte'), -- start tunnel
(19153,14,-1957.1942,5948.807,157.71829,0,0,'Aldor Neophyte'),
(19153,15,-1963.8365,5965.1646,159.55919,0,0,'Aldor Neophyte'),
(19153,16,-1965.8815,5969.0293,157.99138,0,0,'Aldor Neophyte'); -- Despawn


-- Aldor Marksman
UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (19337); -- 2

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19337);
DELETE FROM `creature` where `guid` IN (68923,68924,68925);

UPDATE `creature` SET `position_x`= -1807.4358,`position_y`= 5622.16,`position_z`= 130.81224 WHERE `guid`= 68926; -- -1764.97,5720.31,126.538  - 7  2
UPDATE `creature` SET `position_x`= -1803.0897,`position_y`= 5625.9014,`position_z`= 130.81224 WHERE `guid`= 68927; -- -1768.91,5721.59,126.538  - 2 6
UPDATE `creature` SET `position_x`= -1804.6277,`position_y`= 5621.2437,`position_z`= 130.81224 WHERE `guid`= 68928; -- -1760.95,5718.92,126.538 - 6 5
UPDATE `creature` SET `position_x`= -1790.661,`position_y`= 5618.697,`position_z`= 130.81224 WHERE `guid`= 68929; -- -1760.95,5718.92,126.538  - 5

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19337,-68926,-68927,-68928,-68929) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1933700) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (-68926,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Initialize - Disable Respawn'),
(-68926,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1772.67,5722.91,126.538,1.25664,'Aldor Marksman - On Respawn - Move to POS'),
(-68926,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1933700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Data Set 1 0 - Run Script'), -- To waypoint (leader) and despawn

-- (-68927,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Initialize - Disable Respawn'),
(-68927,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1764.97,5720.31,126.538,1.25664,'Aldor Marksman - On Respawn - Move to POS'), 
(-68927,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1933700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-68928,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Initialize - Disable Respawn'),
(-68928,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1768.91,5721.59,126.538,1.25664,'Aldor Marksman - On Respawn - Move to POS'),
(-68928,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1933700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-68929,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Initialize - Disable Respawn'),
(-68929,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1760.95,5718.92,126.538,1.25664,'Aldor Marksman - On Respawn - Move to POS'),
(-68929,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1933700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Data Set 1 0 - Run Script'), -- To follow and despawn

(19337,0,0,0,37,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Initialize - Set Active'),
(19337,0,1,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Respawn - Set Run Off'),
(19337,0,2,0,40,0,100,0,16,19337,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Waypoint 16 Reached - Despawn'),
(19337,0,3,0,1,0,100,0,0,0,10000,10000,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - OOC - Set Active'),

(1933700,9,0,0,0,0,100,0,100,100,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Script - Play Emote 66'),
(1933700,9,1,0,0,0,100,0,2000,2000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.7106,'Aldor Marksman - On Script - Set Orientation'), -- 3.05664
(1933700,9,2,0,0,0,100,0,2000,2000,0,0,0,0,53,1,19337,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aldor Marksman - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (19337);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19337,1,-1780.071,5727.711,126.53812,0,0,'Aldor Marksman'),
(19337,2,-1781.6143,5729.2305,127.29307,0,0,'Aldor Marksman'),
(19337,3,-1782.3779,5729.983,128.08417,0,0,'Aldor Marksman'),
(19337,4,-1800.8291,5745.593,128.39792,0,0,'Aldor Marksman'),
(19337,5,-1833.9512,5757.2446,130.93658,0,0,'Aldor Marksman'),
(19337,6,-1851.5527,5762.0063,129.5582,0,0,'Aldor Marksman'),
(19337,7,-1874.7017,5787.2314,129.5582,0,0,'Aldor Marksman'),
(19337,8,-1881.161,5797.338,129.55789,0,0,'Aldor Marksman'),
(19337,9,-1881.6862,5798.259,130.5971,0,0,'Aldor Marksman'),
(19337,10,-1891.8461,5815.6294,129.4317,0,0,'Aldor Marksman'),
(19337,11,-1905.2136,5837.3677,128.5494,0,0,'Aldor Marksman'),
(19337,12,-1906.0437,5838.915,129.98833,0,0,'Aldor Marksman'),
(19337,13,-1914.6903,5856.438,130.24423,0,0,'Aldor Marksman'), -- start tunnel
(19337,14,-1957.1942,5948.807,157.71829,0,0,'Aldor Marksman'),
(19337,15,-1963.8365,5965.1646,159.55919,0,0,'Aldor Marksman'),
(19337,16,-1965.8815,5969.0293,157.99138,0,0,'Aldor Marksman'); -- Despawn


-- Mounted Neophyte
UPDATE `creature_template` SET `flags_extra` = 134217730 WHERE `entry` in (19390); -- 2

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19390); -- 	19869
UPDATE `creature` SET `position_x`= -1802.9976,`position_y`= 5605.6978,`position_z`= 130.81177 WHERE `guid`= 69139; -- -1798.55,5604,130.912  - 10

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19390,-69136,-69137,-69138,-69139) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1939000,1939001,1939002,1939003) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (-69136,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Initialize - Disable Respawn'), -- 1
(-69136,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1771.1511,5713.91,126.537865 ,1.25664,'Mounted Neophyte - On Respawn - Move to POS'),
(-69136,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1939001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-69137,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Initialize - Disable Respawn'), -- 8
(-69137,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1766.7733,5712.1895,126.537865,1.25664,'Mounted Neophyte - On Respawn - Move to POS'),
(-69137,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1939002,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-69138,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Initialize - Disable Respawn'), -- 4
(-69138,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1774.9362,5715.3975,126.537865,1.25664,'Mounted Neophyte - On Respawn - Move to POS'),
(-69138,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1939000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

-- (-69139,0,1000,0,37,0,100,257,0,0,0,0,0,0,226,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Initialize - Disable Respawn'), -- 10 -- -1795.0775 Y: 5609.5913 Z: 130.81245 
(-69139,0,1000,0,11,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-1763.2162,5710.791,126.537865,1.25664,'Mounted Neophyte - On Respawn - Move to POS'),
(-69139,0,1001,0,38,0,100,0,1,0,0,0,0,0,80,1939003,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Data Set 1 0 - Run Script'), -- To follow and despawn

(19390,0,0,0,37,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Initialize - Set Active'),
(19390,0,1,0,11,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Respawn - Set Run Off'),
(19390,0,2,0,11,0,100,0,0,0,0,0,0,0,43,0,19869,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Respawn - Set Mount Model'),
(19390,0,3,0,40,0,100,0,16,19390,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Waypoint 16 Reached - Despawn'),
(19390,0,4,0,1,0,100,0,0,0,10000,10000,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - OOC - Set Active'),

(1939000,9,0,0,0,0,100,0,100,100,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Play Emote 66'),
(1939000,9,1,0,0,0,100,0,16000,16000,0,0,0,0,53,1,19390,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Start Waypoint'),

(1939001,9,0,0,0,0,100,0,100,100,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Play Emote 66'),
(1939001,9,1,0,0,0,100,0,17000,17000,0,0,0,0,53,1,19390,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Start Waypoint'),

(1939002,9,0,0,0,0,100,0,100,100,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Play Emote 66'),
(1939002,9,1,0,0,0,100,0,18000,18000,0,0,0,0,53,1,19390,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Start Waypoint'),

(1939003,9,0,0,0,0,100,0,100,100,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Play Emote 66'),
(1939003,9,1,0,0,0,100,0,19000,19000,0,0,0,0,53,1,19390,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mounted Neophyte - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (19390);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19390,1,-1780.071,5727.711,126.53812,0,0,'Mounted Neophyte'),
(19390,2,-1781.6143,5729.2305,127.29307,0,0,'Mounted Neophyte'),
(19390,3,-1782.3779,5729.983,128.08417,0,0,'Mounted Neophyte'),
(19390,4,-1800.8291,5745.593,128.39792,0,0,'Mounted Neophyte'),
(19390,5,-1833.9512,5757.2446,130.93658,0,0,'Mounted Neophyte'),
(19390,6,-1851.5527,5762.0063,129.5582,0,0,'Mounted Neophyte'),
(19390,7,-1874.7017,5787.2314,129.5582,0,0,'Mounted Neophyte'),
(19390,8,-1881.161,5797.338,129.55789,0,0,'Mounted Neophyte'),
(19390,9,-1881.6862,5798.259,130.5971,0,0,'Mounted Neophyte'),
(19390,10,-1891.8461,5815.6294,129.4317,0,0,'Mounted Neophyte'),
(19390,11,-1905.2136,5837.3677,128.5494,0,0,'Mounted Neophyte'),
(19390,12,-1906.0437,5838.915,129.98833,0,0,'Mounted Neophyte'),
(19390,13,-1914.6903,5856.438,130.24423,0,0,'Mounted Neophyte'), -- start tunnel
(19390,14,-1957.1942,5948.807,157.71829,0,0,'Mounted Neophyte'),
(19390,15,-1963.8365,5965.1646,159.55919,0,0,'Mounted Neophyte'),
(19390,16,-1965.8815,5969.0293,157.99138,0,0,'Mounted Neophyte'); -- Despawn


-- Anchorite Attendant
DELETE FROM `smart_scripts` WHERE `entryorguid` in (19138) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1913800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19138,0,0,0,38,0,100,0,1,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Attendant - On Data Set 1 0 - Set Flag Standstate Kneel'),
(19138,0,1,0,38,0,100,0,1,1,0,0,0,0,80,1913800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Attendant - On Data Set 1 1 - Run Script'),
(19138,0,2,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Attendant - On Respawn - Set Active'),

(1913800,9,0,0,0,0,100,0,1000,4000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Attendant - On Script - Remove Flag Standstate Kneel'),
(1913800,9,1,0,0,0,50,0,2000,4000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Attendant - On Script - Say Line 0');


-- Anchorite Nindumen
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` in (19378); -- 1.4

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19378) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1937800) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19378,0,0,0,38,0,100,0,1,0,0,0,0,0,66,0,0,0,0,0,0,11,19346,20,0,0,0,0,0,0,'Anchorite Nindumen - On Data Set 1 0 - Set Orientation on \'Harbinger Erothem\''),
(19378,0,1,0,38,0,100,0,1,1,0,0,0,0,53,1,19378,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Data Set 1 1 - Start Waypoint'),
(19378,0,2,0,40,0,100,0,3,19378,0,0,0,0,80,1937800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Waypoint 3 Reached - Run Script'),
(19378,0,3,0,40,0,100,0,3,1937800,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.0821,'Anchorite Nindumen - On Waypoint 3 Reached - Set Orientation'),
(19378,0,4,5,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Respawn - Set Active'),
(19378,0,5,0,61,0,100,0,0,0,0,0,0,0,3,0,18552,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Respawn (Linked) - Morph To Model 18552'),

(1937800,9,0,0,0,0,100,0,100,100,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.3687,'Anchorite Nindumen - On Script - Set Orientation'), -- 7 secs
(1937800,9,1,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 2'),
(1937800,9,2,0,0,0,100,0,7000,7000,0,0,0,0,45,1,0,0,0,0,0,11,19138,30,0,0,0,0,0,0,'Anchorite Nindumen  - On Script - Set Data 1 0 \'Anchorite Attendant\''),
(1937800,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,19142,30,0,0,0,0,0,0,'Anchorite Nindumen  - On Script - Set Data 1 0 \'Aldor Anchorite\''),
(1937800,9,4,0,0,0,100,0,100,100,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Set Flag Standstate Kneel'),
(1937800,9,5,0,0,0,100,0,4000,4000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 3'),
(1937800,9,6,0,0,0,100,0,8000,8000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 4'),
(1937800,9,7,0,0,0,100,0,9000,9000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 5'),
(1937800,9,8,0,0,0,100,0,9000,9000,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 6'),
(1937800,9,9,0,0,0,100,0,8000,8000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 7'),
(1937800,9,10,0,0,0,100,0,8000,8000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Say Line 8'),
(1937800,9,11,0,0,0,100,0,7000,7000,0,0,0,0,45,1,1,0,0,0,0,11,19138,30,0,0,0,0,0,0,'Anchorite Nindumen  - On Script - Set Data 1 1 \'Anchorite Attendant\''),
(1937800,9,12,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,19142,30,0,0,0,0,0,0,'Anchorite Nindumen  - On Script - Set Data 1 1 \'Aldor Anchorite\''),
(1937800,9,13,0,0,0,100,0,100,100,0,0,0,0,45,1,1,0,0,0,0,11,19346,30,0,0,0,0,0,0,'Anchorite Nindumen  - On Script - Set Data 1 1 \'Harbinger Erothem\''), -- 66.3
(1937800,9,14,0,0,0,100,0,15000,15000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Remove Flag Standstate Kneel'),
(1937800,9,15,0,0,0,100,0,3000,3000,0,0,0,0,53,1,1937800,0,0,0,0,1,0,0,0,0,0,0,0,0,'Anchorite Nindumen - On Script - Start Waypoint'); -- 84.3

DELETE FROM `waypoints` WHERE `entry` IN (19378,1937800);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19378,1,-1728.8574,5820.673,148.65779,0,0,'Anchorite Nindumen'),
(19378,2,-1726.0941,5827.987,148.65779,0,0,'Anchorite Nindumen'),
(19378,3,-1727.1505,5833.0405,148.65779,0,0,'Anchorite Nindumen'), -- 4.3687  -- kneel and say prayer

(1937800,1,-1726.0941,5827.987,148.65779,0,0,'Anchorite Nindumen'),
(1937800,2,-1728.8574,5820.673,148.65779,0,0,'Anchorite Nindumen'),
(1937800,3,-1729.16,5813.11,148.757,0,0,'Anchorite Nindumen'); -- 1.0821


-- Harbinger Erothem
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (68962); -- 0
UPDATE `creature` SET `position_x`=-1763.0626,`position_y`=5732.1396,`position_z`=127.49021 WHERE `guid`=68962; -- -1764.84,5726.25,126.538

DELETE FROM `creature_addon` where `guid` in (68962);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(68962,689620,0,0,0,0,0,NULL);

DELETE FROM `spawn_group` where `groupId` IN (42287,42288,42289,42290,42291,42292,42293,42294,42295,42296,42297,42298);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42287,0,69136),
(42288,0,68927),
(42289,0,68496),
(42290,0,69138),
(42291,0,68929),
(42292,0,68928),
(42293,0,68926),
(42294,0,69137),
(42295,0,68497),
(42296,0,69139),
(42297,0,68495),
(42298,0,68498);

DELETE FROM `spawn_group_template` where `groupId` IN (42287,42288,42289,42290,42291,42292,42293,42294,42295,42296,42297,42298);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42287,'Aldor Rise Unit Group 1',4),
(42288,'Aldor Rise Unit Group 2',4),
(42289,'Aldor Rise Unit Group 3',4),
(42290,'Aldor Rise Unit Group 4',4),
(42291,'Aldor Rise Unit Group 5',4),
(42292,'Aldor Rise Unit Group 6',4),
(42293,'Aldor Rise Unit Group 7',4),
(42294,'Aldor Rise Unit Group 8',4),
(42295,'Aldor Rise Unit Group 9',4),
(42296,'Aldor Rise Unit Group 10',4),
(42297,'Aldor Rise Unit Group 11',4),
(42298,'Aldor Rise Unit Group 12',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19346) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1934600,1934601,1934602) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19346,0,0,0,108,0,100,0,2,689620,0,0,0,0,80,1934600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Waypoint 2 Reached - Run Script'),
(19346,0,1,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Respawn - Set Active'),
(19346,0,2,0,108,0,100,0,11,689620,0,0,0,0,80,1934601,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Waypoint 11 Reached - Run Script'),
(19346,0,3,0,38,0,100,0,1,1,0,0,0,0,80,1934602,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Data Set 1 1 - Run Script'),
(19346,0,4,0,108,0,100,0,13,689620,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Waypoint 13 Reached - Set Flag Standstate Kneel'),

(1934600,9,0,0,0,0,100,0,60000,60000,0,0,0,0,131,42287,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Mounted Neophyte\''),
(1934600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,131,42288,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Marksman\''),
(1934600,9,2,0,0,0,100,0,1000,1000,0,0,0,0,131,42289,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Neophyte\''),
(1934600,9,3,0,0,0,100,0,2000,2000,0,0,0,0,131,42290,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Mounted Neophyte\''),
(1934600,9,4,0,0,0,100,0,500,500,0,0,0,0,131,42291,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Marksman\''),
(1934600,9,5,0,0,0,100,0,2000,2000,0,0,0,0,131,42292,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Marksman\''),
(1934600,9,6,0,0,0,100,0,100,100,0,0,0,0,131,42293,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Marksman\''),
(1934600,9,7,0,0,0,100,0,2000,2000,0,0,0,0,131,42294,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Mounted Neophyte\''),
(1934600,9,8,0,0,0,100,0,1000,1000,0,0,0,0,131,42295,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Neophyte\''),
(1934600,9,9,0,0,0,100,0,1000,1000,0,0,0,0,131,42296,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Mounted Neophyte\''),
(1934600,9,10,0,0,0,100,0,11000,11000,0,0,0,0,131,42297,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Neophyte\''),
(1934600,9,11,0,0,0,100,0,12000,12000,0,0,0,0,131,42298,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn SpawnGroup \'Aldor Neophyte\''),
/*
(1934600,9,0,0,0,0,100,0,60000,60000,0,0,0,0,226,1,1,0,0,0,0,10,69136,19390,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Mounted Neophyte\''),
(1934600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,226,1,1,0,0,0,0,10,68927,19337,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Marksman\''),
(1934600,9,2,0,0,0,100,0,1000,1000,0,0,0,0,226,1,1,0,0,0,0,10,68496,19153,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Neophyte\''),
(1934600,9,3,0,0,0,100,0,2000,2000,0,0,0,0,226,1,1,0,0,0,0,10,69138,19390,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Mounted Neophyte\''),
(1934600,9,4,0,0,0,100,0,500,500,0,0,0,0,226,1,1,0,0,0,0,10,68929,19337,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Marksman\''),
(1934600,9,5,0,0,0,100,0,2000,2000,0,0,0,0,226,1,1,0,0,0,0,10,68928,19337,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Marksman\''),
(1934600,9,6,0,0,0,100,0,100,100,0,0,0,0,226,1,1,0,0,0,0,10,68926,19337,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Marksman\''),
(1934600,9,7,0,0,0,100,0,2000,2000,0,0,0,0,226,1,1,0,0,0,0,10,69137,19390,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Mounted Neophyte\''),
(1934600,9,8,0,0,0,100,0,1000,1000,0,0,0,0,226,1,1,0,0,0,0,10,68497,19153,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Neophyte\''),
(1934600,9,9,0,0,0,100,0,1000,1000,0,0,0,0,226,1,1,0,0,0,0,10,69139,19390,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Mounted Neophyte\''),
(1934600,9,10,0,0,0,100,0,11000,11000,0,0,0,0,226,1,1,0,0,0,0,10,68495,19153,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Neophyte\''),
(1934600,9,11,0,0,0,100,0,12000,12000,0,0,0,0,226,1,1,0,0,0,0,10,68498,19153,0,0,0,0,0,0,'Harbinger Erothem - On Script - Spawn In \'Aldor Neophyte\''),
*/
(1934600,9,12,0,0,0,100,0,75000,75000,0,0,0,0,66,0,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Harbinger Erothem - On Script - Set Orientation on \'Adyen the Lightwarden\''),
(1934600,9,13,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 3'),
(1934600,9,14,0,0,0,100,0,10000,10000,0,0,0,0,1,4,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 4 on \'Adyen the Lightwarden\''),
(1934600,9,15,0,0,0,100,0,9000,9000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 4'),
(1934600,9,16,0,0,0,100,0,6000,6000,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.27606,'Harbinger Erothem - On Script - Set Orientation'),
(1934600,9,17,0,0,0,100,0,3000,3000,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 5'),
(1934600,9,18,0,0,0,100,0,9000,9000,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 6'),
(1934600,9,19,0,0,0,100,0,11000,11000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 7'),
(1934600,9,20,0,0,0,100,0,10000,10000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 8'),
(1934600,9,21,0,0,0,100,0,11000,11000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 9'),
(1934600,9,22,0,0,0,100,0,9000,9000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 10'),
(1934600,9,23,0,0,0,100,0,9000,9000,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 11'),
(1934600,9,24,0,0,0,100,0,4000,4000,0,0,0,0,45,1,0,0,0,0,0,11,19337,100,0,0,0,0,0,0,'Harbinger Erothem  - On Script - Set Data 1 0 \'Aldor Marksman\''),
(1934600,9,25,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,19153,100,0,0,0,0,0,0,'Harbinger Erothem  - On Script - Set Data 1 0 \'Aldor Neophyte\''),
(1934600,9,26,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,19390,100,0,0,0,0,0,0,'Harbinger Erothem  - On Script - Set Data 1 0 \'Mounted Neophyte\''), -- 83 seconds before triggering 1934601 
(1934600,9,27,0,0,0,100,0,84000,84000,0,0,0,0,66,0,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Harbinger Erothem - On Script - Set Orientation on \'Adyen the Lightwarden\''),
(1934600,9,28,0,0,0,100,0,2000,2000,0,0,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 12'),
(1934600,9,29,0,0,0,100,0,7000,7000,0,0,0,0,45,1,0,0,0,0,0,11,19377,250,0,0,0,0,0,0,'Harbinger Erothem - On Script - Set Data 1 0 \'Neophyte Nemarn\''),
(1934600,9,30,0,0,0,100,0,3000,3000,0,0,0,0,1,5,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 5 on \'Adyen the Lightwarden\''),


(1934601,9,0,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,11,19378,20,0,0,0,0,0,0,'Harbinger Erothem - On Script - Set Orientation on \'Anchorite Nindumen\''),
(1934601,9,1,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,11,19378,20,0,0,0,0,0,0,'Harbinger Erothem  - On Script - Set Data 1 0 \'Anchorite Nindumen\''), -- Takes 2:37 for all of them to get to the end of the waypoint and despawn
(1934601,9,2,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 0'),
(1934601,9,3,0,0,0,100,0,10000,10000,0,0,0,0,1,0,0,0,0,0,0,11,19378,20,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 0 on \'Anchorite Nindumen\''),
(1934601,9,4,0,0,0,100,0,10000,10000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 1'),
(1934601,9,5,0,0,0,100,0,11000,11000,0,0,0,0,1,1,0,0,0,0,0,11,19378,20,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 1 on \'Anchorite Nindumen\''),
(1934601,9,6,0,0,0,100,0,100,100,0,0,0,0,45,1,1,0,0,0,0,11,19378,20,0,0,0,0,0,0,'Harbinger Erothem  - On Script - Set Data 1 1 \'Anchorite Nindumen\''), -- 37.2

(1934602,9,0,0,0,0,100,0,1000,3000,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Remove Flag Standstate Kneel'),
(1934602,9,1,0,0,0,100,0,2000,2000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Harbinger Erothem - On Script - Say Line 2');

DELETE FROM `waypoint_data` where `id` in (689620);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(689620,1,-1763.6869,5730.2363,126.81998,NULL,0,0,0,100,0),
(689620,2,-1764.84,5726.25,126.538,4.27606,368000,0,0,100,0), -- 4.27606 start position 345 pause 
(689620,3,-1763.6869,5730.2363,126.81998,NULL,0,0,0,100,0),
(689620,4,-1763.0626,5732.1396,127.49021,NULL,0,0,0,100,0),
(689620,5,-1762.7533,5733.083,128.03397,NULL,0,0,0,100,0),
(689620,6,-1760.4941,5740.2275,128.334,NULL,0,0,0,100,0), -- Base of large staricase up
(689620,7,-1754.0906,5758.9126,137.12584,NULL,0,0,0,100,0),
(689620,8,-1748.8375,5776.189,146.43947,NULL,0,0,0,100,0),
(689620,9,-1739.7915,5800.702,146.44,NULL,0,0,0,100,0),
(689620,10,-1735.191,5811.1553,148.64449,NULL,0,0,0,100,0),
(689620,11,-1733.4506,5814.5093,148.65779,5.9709,38000,0,0,100,0), -- Anchorite Nindumen and him face each other and he talks
(689620,12,-1730.6783,5818.554,148.65752,NULL,0,0,0,100,0),
(689620,13,-1727.8037,5825.071,148.65779,1.212,73000,0,0,100,0), -- move and Kneel and wait for prayer to finish -- wait 67 + 6 for script
(689620,14,-1733.4506,5814.5093,148.65779,NULL,0,0,0,100,0),
(689620,15,-1735.191,5811.1553,148.64449,NULL,0,0,0,100,0),
(689620,16,-1739.7915,5800.702,146.44,NULL,0,0,0,100,0),
(689620,17,-1748.8375,5776.189,146.43947,NULL,0,0,0,100,0),
(689620,18,-1760.4941,5740.2275,128.334,NULL,0,0,0,100,0), -- Base of large staricase up
(689620,19,-1762.7533,5733.083,128.03397,NULL,0,0,0,100,0),
(689620,20,-1763.0626,5732.1396,127.49021,NULL,0,0,0,100,0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (19346) AND `GroupID` IN (3,4,5,6,7,8,9,10,11,12);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19346,3,0,'Sir, it appears that another of our special units have arrived.',12,0,100,66,0,0,16489,0,'Harbinger Erothem'),
(19346,4,0,'Understood, sir.',12,0,100,66,0,0,16491,0,'Harbinger Erothem'),
(19346,5,0,'Listen up, soldiers!',12,0,100,1,0,0,16492,0,'Harbinger Erothem'),
(19346,6,0,'You are here because you displayed exceptional aptitude and ability throughout your training period.',12,0,100,0,0,0,16493,0,'Harbinger Erothem'),
(19346,7,0,'You are now to be dispatched directly into a hostile environment on a treacherous mission.',12,0,100,0,0,0,16494,0,'Harbinger Erothem'),
(19346,8,0,'Nagrand, the land to the west, has recently become littered with enemy forge camps that threaten our security.',12,0,100,0,0,0,16495,0,'Harbinger Erothem'),
(19346,9,0,'With the bulk of our forces focused on Illidan, the task of cleansing these lands falls to you.',12,0,100,1,0,0,16496,0,'Harbinger Erothem'),
(19346,10,0,'You are to return in a week\'s time with a detailed report of your actions.',12,0,100,1,0,0,16497,0,'Harbinger Erothem'),
(19346,11,0,'May the Light be with you... Dismissed!',12,0,100,1,0,0,16498,0,'Harbinger Erothem'),
(19346,12,0,'By your leave, sir, I have pressing matters to attend to.',12,0,100,66,0,0,16505,0,'Harbinger Erothem');


-- Neophyte Nemarn
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19377);
DELETE FROM `creature` where `guid` IN (69108);
UPDATE `creature` SET `position_x`=-1978.2008,`position_y`=5674.283,`position_z`=117.66354,`orientation`=3.9438 WHERE `guid`=69109;

DELETE FROM `smart_scripts` WHERE `entryorguid` in (19377) AND `source_type` = 0; -- 250
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1937700,1937701) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19377,0,0,0,38,0,100,0,1,0,0,0,0,0,53,1,19377,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Data Set 1 0 - Start Waypoint'),
(19377,0,1,0,38,0,100,0,1,1,0,0,0,0,80,1937701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Data Set 1 1 - Run Script'),
(19377,0,2,0,40,0,100,0,11,19377,0,0,0,0,80,1937700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Waypoint 11 Reached - Run Script'),
(19377,0,3,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Respawn - Set Active'),

(1937700,9,0,0,0,0,100,0,1000,1000,0,0,0,0,66,0,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Set Orientation on \'Adyen the Lightwarden\''),
(1937700,9,1,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Say Line 0'),
(1937700,9,2,0,0,0,100,0,10000,10000,0,0,0,0,1,6,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Say Line 6 on \'Adyen the Lightwarden\''),
(1937700,9,3,0,0,0,100,0,8000,8000,0,0,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Say Line 1'),
(1937700,9,4,0,0,0,100,0,10000,10000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Say Line 2'),
(1937700,9,5,0,0,0,100,0,10000,10000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Say Line 3'),
(1937700,9,6,0,0,0,100,0,9000,9000,0,0,0,0,45,1,0,0,0,0,0,11,18537,50,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Set Data 1 0 \'Adyen the Lightwarden\''),

(1937701,9,0,0,0,0,100,0,100,100,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Say Line 4'),
(1937701,9,1,0,0,0,100,0,5000,5000,0,0,0,0,53,1,1937700,0,0,0,0,1,0,0,0,0,0,0,0,0,'Neophyte Nemarn - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (19377,1937700);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(19377,1,-1967.6871,5691.8774,117.66315,0,0,'Neophyte Nemarn'),
(19377,2,-1943.6293,5710.1953,120.00684,0,0,'Neophyte Nemarn'),
(19377,3,-1931.1833,5720.7246,124.301735,0,0,'Neophyte Nemarn'),
(19377,4,-1922.2677,5728.479,128.99019,0,0,'Neophyte Nemarn'),
(19377,5,-1892.0763,5743.666,129.45488,0,0,'Neophyte Nemarn'),
(19377,6,-1850.203,5755.524,129.55824,0,0,'Neophyte Nemarn'),
(19377,7,-1818.8658,5748.372,129.88936,0,0,'Neophyte Nemarn'),
(19377,8,-1804.4177,5742.7373,128.10503,0,0,'Neophyte Nemarn'),
(19377,9,-1781.7052,5730.2344,128.06677,0,0,'Neophyte Nemarn'),
(19377,10,-1779.2488,5728.5713,126.84431,0,0,'Neophyte Nemarn'),
(19377,11,-1776.13,5726.78,126.538,0,0,'Neophyte Nemarn'), -- 1.5708

(1937700,1,-1779.2488,5728.5713,126.84431,0,0,'Neophyte Nemarn'),
(1937700,2,-1781.7052,5730.2344,128.06677,0,0,'Neophyte Nemarn'),
(1937700,3,-1804.4177,5742.7373,128.10503,0,0,'Neophyte Nemarn'),
(1937700,4,-1818.8658,5748.372,129.88936,0,0,'Neophyte Nemarn'),
(1937700,5,-1850.203,5755.524,129.55824,0,0,'Neophyte Nemarn'),
(1937700,6,-1892.0763,5743.666,129.45488,0,0,'Neophyte Nemarn'),
(1937700,7,-1922.2677,5728.479,128.99019,0,0,'Neophyte Nemarn'),
(1937700,8,-1931.1833,5720.7246,124.301735,0,0,'Neophyte Nemarn'),
(1937700,9,-1943.6293,5710.1953,120.00684,0,0,'Neophyte Nemarn'),
(1937700,10,-1967.6871,5691.8774,117.66315,0,0,'Neophyte Nemarn'),
(1937700,11,-1978.2008,5674.283,117.66354,0,0,'Neophyte Nemarn'); -- 3.9438

DELETE FROM `creature_text` WHERE `CreatureID` IN (19377) AND `GroupID` IN (0,1,2,3,4);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(19377,0,0,'Sir, I am here to deliver my report from the Scryer\'s Tier.',12,0,100,66,0,0,16560,0,''),
(19377,1,0,'Sir, it\'s impossible to read anything into their actions.',12,0,100,0,0,0,16561,0,''),
(19377,2,0,'Sir, Their movements are totally chaotic, as if they themselves know not what they are about.',12,0,100,0,0,0,16562,0,''),
(19377,3,0,'My apologies, sir. I wish I had more to report.',12,0,100,0,0,0,16563,0,''),
(19377,4,0,'As you command, sir.',12,0,100,66,0,0,16564,0,'');


-- Adyen the Lightwarden
DELETE FROM `smart_scripts` WHERE `entryorguid` in (18537) AND `source_type` = 0 AND `id` IN (9,10);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1853701) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18537,0,9,0,38,0,100,0,1,0,0,0,0,0,80,1853701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Adyen the Lightwarden - On Data Set 1 0 - Run Script'),
(18537,0,10,0,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Adyen the Lightwarden - On Respawn - Set Active'),

(1853701,9,0,0,0,0,100,0,100,100,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Adyen the Lightwarden - On Script - Say Line 7'),
(1853701,9,1,0,0,0,100,0,9000,9000,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Adyen the Lightwarden - On Script - Say Line 8'),
(1853701,9,2,0,0,0,100,0,9000,9000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Adyen the Lightwarden - On Script - Say Line 9'),
(1853701,9,3,0,0,0,100,0,9000,9000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Adyen the Lightwarden - On Script - Say Line 10'),
(1853701,9,4,0,0,0,100,0,9000,9000,0,0,0,0,45,1,1,0,0,0,0,11,19377,50,0,0,0,0,0,0,'Adyen the Lightwarden - On Script - Set Data 1 1 \'Neophyte Nemarn\'');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18537) AND `GroupID` IN (4,5,6,7,8,9,10);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18537,4,0,'Excellent. We must focus our efforts on the cleansing of Nagrand!',12,0,100,0,0,0,16490,0,''),
(18537,5,0,'Of course, Harbinger. Dismissed.',12,0,100,0,0,0,16508,0,''),
(18537,6,0,'Well, out with it, neophyte...',12,0,100,1,0,0,16565,0,''),
(18537,7,0,'It is exactly as I expected, soldier. They know we watch them closely.',12,0,100,1,0,0,16566,0,''),
(18537,8,0,'They mask their intentions with meaningless movements to confuse us.',12,0,100,0,0,0,16567,0,''),
(18537,9,0,'In time, you may learn to see through their deceptions.',12,0,100,1,0,0,16568,0,''),
(18537,10,0,'Until then, your presence at your post will keep them on their toes.',12,0,100,0,0,0,16569,0,'');


-- Enchantress Volali
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19251);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19251) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19251,0,0,0,11,0,100,0,0,0,0,0,0,0,3,0,18775,0,0,0,0,1,0,0,0,0,0,0,0,0,'Enchantress Volali - On Respawn - Morph To Model 18775');


-- Enchanter Salias
UPDATE `creature` SET `position_x`=-2283.5469,`position_y`=5564.534,`position_z`=66.9947 WHERE `guid`=68772;


-- Scryer Arcane Guardian
-- has a hard coded script guard_shattrath_scryer in guard.cpp
-- UPDATE `creature_template` SET `AIName` = "" WHERE `entry` in (18568);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (66736); -- 0

DELETE FROM `creature_addon` where `guid` in (66736);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(66736,667360,0,0,0,0,0,NULL);

-- DELETE FROM `smart_scripts` WHERE `entryorguid` = 18568 AND `source_type` = 0;
-- INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (18568,0,0,0,0,0,100,0,2000,3000,10000,10000,0,0,11,36642,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scryer Arcane Guardian - IC - Cast \'Banished from Shattrath City\'');

-- DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1,2) AND `SourceEntry`=18568 AND `SourceId`=0;
-- INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- (22,1,18568,0,0,5,0,932,240,0,0,0,0,'','Execute SAI (Action 0) if player is Faction 932');

DELETE FROM `waypoint_data` where `id` in (667360);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(667360,1,-2120.6206,5503.513,48.663483,NULL,0,0,0,100,0),
(667360,2,-2131.708,5500.222,48.663483,NULL,0,0,0,100,0),
(667360,3,-2147.6028,5505.3306,50.212246,3.9051,900000,0,0,100,0),
(667360,4,-2148.215,5512.588,48.664066,NULL,0,0,0,100,0),
(667360,5,-2151.3853,5526.1895,50.1949,2.7742,900000,0,0,100,0),
(667360,6,-2148.457,5525.4175,48.663853,NULL,0,0,0,100,0),
(667360,7,-2140.8062,5535.289,48.66394,NULL,0,0,0,100,0),
(667360,8,-2135.2515,5540.695,50.20153,1.8552,900000,0,0,100,0),
(667360,9,-2130.7434,5538.2837,48.66411,NULL,0,0,0,100,0),
(667360,10,-2120.109,5534.702,48.66411,NULL,0,0,0,100,0),
(667360,11,-2112.7678,5526.561,48.66411,NULL,0,0,0,100,0),
(667360,12,-2110.05,5512.4,49.4188,5.98648,900000,0,0,100,0);


-- Scryer Retainer
DELETE FROM `creature` where `guid` IN (68464,68492,68493,68494);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(68492,18593,0,0,530,0,0,1,1,0,-2108.641,5641.2754,50.22797,6.2813,300,0,0,4422,2620,0,0,0,0,'',0,0,NULL),
(68493,18593,0,0,530,0,0,1,1,0,-2103.9575,5646.6157,50.22796,5.5465,300,0,0,4422,2620,0,0,0,0,'',0,0,NULL),
(68494,18593,0,0,530,0,0,1,1,0,-2090.8706,5641.0347,50.22797,5.4061,300,0,0,4422,2620,0,0,0,0,'',0,0,NULL),
(68464,18593,0,0,530,0,0,1,1,0,-2091.7402,5639.4844,50.22797,0.3104,300,0,0,4422,2620,0,0,0,0,'',0,0,NULL);

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (18593);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 18593 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-66752,-96665) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-66752,0,0,0,10,0,100,0,1,10,20000,25000,1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scryer Retainer - On Player within 10 yards - Say Line 0'),
(-66752,0,1,0,10,0,100,0,0,10,20000,25000,1,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scryer Retainer - On Player within 10 yards - Say Line 1'),

(-96665,0,0,0,10,0,100,0,1,10,20000,25000,1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scryer Retainer - On Player within 10 yards - Say Line 0'),
(-96665,0,1,0,10,0,100,0,0,10,20000,25000,1,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scryer Retainer - On Player within 10 yards - Say Line 1'),

(18593,0,0,0,1,0,100,0,5000,10000,5000,17000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Scryer Retainer - OOC- Emote Talk 1");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1,2) AND `SourceEntry` IN (-66752,-96665) AND `SourceId`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry` IN (18593) AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,-66752,0,0,5,0,934,240,0,0,0,0,'','Execute SAI (Action 0) if player is Faction 934'),
(22,2,-66752,0,0,5,0,932,240,0,0,0,0,'','Execute SAI (Action 1) if player is Faction 932'),
(22,1,-96665,0,0,5,0,934,240,0,0,0,0,'','Execute SAI (Action 0) if player is Faction 934'),
(22,2,-96665,0,0,5,0,932,240,0,0,0,0,'','Execute SAI (Action 1) if player is Faction 932'),
(22,1,18593,0,0,29,1,18547,8,0,0,0,0,'','Group 0: Execute SAI (Action 0) if creature \'Scryer Arcanist\'is near');

DELETE FROM `creature_text` WHERE `CreatureID` IN (18593) AND `GroupID` IN (0,1);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(18593,0,0,'Welcome back, $n.',12,0,100,1,0,0,17298,0,'Scryer Retainer'),
(18593,1,0,'I wouldn\'t venture into the Scryer\'s Terrace if I were you, $n.  You are not welcome there.',12,0,100,1,0,0,17299,0,'Scryer Retainer');


-- Scryer Arcanist
UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` in (66702,66703,66704,66709); -- 1

DELETE FROM `creature` where `guid` IN (68923,68924,68925,69108);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(68923,18547,0,0,530,0,0,1,1,0,-2107.1816,5641.327,50.22797,3.2049,300,0,0,3611,5875,0,0,0,0,'',0,0,NULL),
(68924,18547,0,0,530,0,0,1,1,0,-2103.2734,5644.6064,50.22797,1.2909,300,0,0,3611,5875,0,0,0,0,'',0,0,NULL),
(68925,18547,0,0,530,0,0,1,1,0,-2101.8572,5646.6226,50.22797,4.0273,300,0,0,3611,5875,0,0,0,0,'',0,0,NULL),
(69108,18547,0,0,530,0,0,1,1,0,-2088.9736,5639.682,50.22797,2.6187,300,0,0,3611,5875,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 18547 AND `source_type` = 0 AND `id` IN (3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(18547,0,3,0,1,0,100,0,5000,10000,5000,20000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Scryer Arcanist - OOC- Emote Talk 1");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (4) AND `SourceEntry` IN (18547) AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,4,18547,0,0,29,1,18593,8,0,0,0,0,'','Group 0: Execute SAI (Action 3) if creature \'Scryer Retainer\'is near');


-- Shattrath City Peacekeeper
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (19687);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (70217,70236); -- 0

UPDATE `creature_addon` SET `path_id` = 702360 WHERE `guid` in (70236);

DELETE FROM `creature_addon` where `guid` in (70217);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(70217,702170,17063,0,1,0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 19687 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19687,0,0,0,14,0,100,0,0,99,2000,2000,0,0,40,2,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Shattrath City Peacekeeper - On Damage to Friendly unit - Attack');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` IN (1) AND `SourceEntry` = 19687 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,19687,0,0,23,1,3703,0,0,0,0,0,'','Only trigger (Action 0) if the target (aggressor) is in Shattrath City');

DELETE FROM `waypoint_data` where `id` in (702170,702360);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(702360,1,-2060.2808,5124.3,7.1911554,NULL,0,0,0,100,0),
(702360,2,-2033.5675,5123.429,8.450801,NULL,0,0,0,100,0),
(702360,3,-2013.3441,5118.1753,8.455185,NULL,0,0,0,100,0),
(702360,4,-1975.8367,5097.946,8.087541,NULL,0,0,0,100,0),
(702360,5,-1957.6534,5085.227,11.391013,NULL,0,0,0,100,0),
(702360,6,-1938.6748,5061.5337,18.425179,NULL,0,0,0,100,0),
(702360,7,-1929.9506,5053.4307,20.078314,NULL,0,0,0,100,0),
(702360,8,-1894.1578,5048.847,16.556192,NULL,0,0,0,100,0),
(702360,9,-1827.0109,5052.6494,9.798344,NULL,0,0,0,100,0),
(702360,10,-1796.806,5060.35,7.354067,NULL,0,0,0,100,0),
(702360,11,-1769.8169,5073.451,6.2858176,NULL,0,0,0,100,0),
(702360,12,-1722.481,5075.6025,6.451542,NULL,0,0,0,100,0),
(702360,13,-1698.4305,5073.251,7.204822,NULL,0,0,0,100,0),
(702360,14,-1655.5883,5093.528,8.962464,0.4420,5000,0,0,100,0),
(702360,15,-1698.4305,5073.251,7.204822,NULL,0,0,0,100,0),
(702360,16,-1722.481,5075.6025,6.451542,NULL,0,0,0,100,0),
(702360,17,-1769.8169,5073.451,6.2858176,NULL,0,0,0,100,0),
(702360,18,-1796.806,5060.35,7.354067,NULL,0,0,0,100,0),
(702360,19,-1827.0109,5052.6494,9.798344,NULL,0,0,0,100,0),
(702360,20,-1894.1578,5048.847,16.556192,NULL,0,0,0,100,0),
(702360,21,-1929.9506,5053.4307,20.078314,NULL,0,0,0,100,0),
(702360,22,-1938.6748,5061.5337,18.425179,NULL,0,0,0,100,0),
(702360,23,-1957.6534,5085.227,11.391013,NULL,0,0,0,100,0),
(702360,24,-1975.8367,5097.946,8.087541,NULL,0,0,0,100,0),
(702360,25,-2013.3441,5118.1753,8.455185,NULL,0,0,0,100,0),
(702360,26,-2033.5675,5123.429,8.450801,NULL,0,0,0,100,0),
(702360,27,-2060.2808,5124.3,7.1911554,NULL,0,0,0,100,0),
(702360,28,-2081.38,5118.14,4.51603,3.54996,5000,0,0,100,0),

(702170,1,-1508.6724,5209.8555,31.49695,NULL,0,0,0,100,0),
(702170,2,-1539.9086,5207.7964,24.75451,NULL,0,0,0,100,0),
(702170,3,-1559.473,5198.923,22.125444,NULL,0,0,0,100,0),
(702170,4,-1572.3718,5186.9004,21.176147,NULL,0,0,0,100,0),
(702170,5,-1600.8381,5152.4175,17.57596,NULL,0,0,0,100,0),
(702170,6,-1623.1553,5121.874,12.073989,NULL,0,0,0,100,0),
(702170,7,-1642.8934,5102.8345,9.6251,NULL,0,0,0,100,0),
(702170,8,-1643.2925,5092.5664,9.039236,NULL,0,0,0,100,0),
(702170,9,-1634.4973,5081.512,6.641895,NULL,0,0,0,100,0),
(702170,10,-1621.6094,5071.4595,1.0622602,NULL,0,0,0,100,0),
(702170,11,-1607.4606,5066.647,-3.9323502,NULL,0,0,0,100,0),
(702170,12,-1576.9293,5070.0073,-12.168817,NULL,0,0,0,100,0),
(702170,13,-1554.9083,5077.4097,-16.952755,NULL,0,0,0,100,0),
(702170,14,-1543.4988,5087.2563,-18.882565,NULL,0,0,0,100,0),
(702170,15,-1537.9393,5098.7036,-19.79581,NULL,0,0,0,100,0),
(702170,16,-1536.9333,5106.9204,-20.437538,1.4856,5000,0,0,100,0),
(702170,17,-1537.9393,5098.7036,-19.79581,NULL,0,0,0,100,0),
(702170,18,-1543.4988,5087.2563,-18.882565,NULL,0,0,0,100,0),
(702170,19,-1554.9083,5077.4097,-16.952755,NULL,0,0,0,100,0),
(702170,20,-1576.9293,5070.0073,-12.168817,NULL,0,0,0,100,0),
(702170,21,-1607.4606,5066.647,-3.9323502,NULL,0,0,0,100,0),
(702170,22,-1621.6094,5071.4595,1.0622602,NULL,0,0,0,100,0),
(702170,23,-1634.4973,5081.512,6.641895,NULL,0,0,0,100,0),
(702170,24,-1643.2925,5092.5664,9.039236,NULL,0,0,0,100,0),
(702170,25,-1642.8934,5102.8345,9.6251,NULL,0,0,0,100,0),
(702170,26,-1623.1553,5121.874,12.073989,NULL,0,0,0,100,0),
(702170,27,-1600.8381,5152.4175,17.57596,NULL,0,0,0,100,0),
(702170,28,-1572.3718,5186.9004,21.176147,NULL,0,0,0,100,0),
(702170,29,-1559.473,5198.923,22.125444,NULL,0,0,0,100,0),
(702170,30,-1539.9086,5207.7964,24.75451,NULL,0,0,0,100,0),
(702170,31,-1508.6724,5209.8555,31.49695,NULL,0,0,0,100,0),
(702170,32,-1489.78,5206.54,38.3732,NULL,0,0,0,100,0),
(702170,33,-1467.0085,5187.5996,51.598995,NULL,0,0,0,100,0),
(702170,34,-1455.8315,5181.0312,56.25572,NULL,0,0,0,100,0),
(702170,35,-1442.7449,5176.7056,59.774628,NULL,0,0,0,100,0),
(702170,36,-1425.076,5175.065,62.22194,6.1917,5000,0,0,100,0),
(702170,37,-1442.7449,5176.7056,59.774628,NULL,0,0,0,100,0),
(702170,38,-1455.8315,5181.0312,56.25572,NULL,0,0,0,100,0),
(702170,39,-1467.0085,5187.5996,51.598995,NULL,0,0,0,100,0),
(702170,40,-1489.78,5206.54,38.3732,NULL,0,0,0,100,0);


-- Tobias the Filth Gorger
DELETE FROM `smart_scripts` WHERE `entryorguid` = 21411 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2141100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21411,0,0,1,20,0,100,512,10547,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Quest Completed 10547 - Store Targetlist'),
(21411,0,1,0,61,0,100,512,0,0,0,0,0,0,80,2141100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Quest Completed 10547 (Linked) - Run script'),

(2141100,9,0,0,0,0,100,0,0,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Set NPC Flags'),
(2141100,9,1,0,0,0,100,0,1000,1000,0,0,0,0,71,0,0,20468,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Equip Item'),
(2141100,9,2,0,0,0,100,0,3000,3000,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Say Line 0'),
(2141100,9,3,0,0,0,100,0,6000,6000,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Set Orientation'),
(2141100,9,4,0,0,0,100,0,0,0,0,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - UnEquip Item'),
(2141100,9,5,0,0,0,100,0,1000,1000,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Say Line 1'),
(2141100,9,6,0,0,0,100,0,100,100,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Set Run Off'),
(2141100,9,7,0,0,0,100,0,1000,1000,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-2080.31,5296.75,-37.3236,5.54479,'Tobias the Filth Gorger - On Script - Move to POS'),
(2141100,9,8,0,0,0,100,0,5000,5000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Say Line 2'),
(2141100,9,9,0,0,0,100,0,3000,3000,0,0,0,0,11,36823,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Cast Overwhelming Odor'),
(2141100,9,10,0,0,0,100,0,1000,1000,0,0,0,0,11,36824,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Cast Overwhelming Odor'),
(2141100,9,11,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,11,21434,10,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Set Data 1 0 \'Gordie\''),
(2141100,9,12,0,0,0,100,0,5000,5000,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,-2083.83,5299.95,-37.3236,0.314159,'Tobias the Filth Gorger - On Script - Move to POS'),
(2141100,9,13,0,0,0,100,0,5000,5000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Say Line 2'),
(2141100,9,14,0,0,0,100,0,100,100,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Set Run On'),
(2141100,9,15,0,0,0,100,0,3000,3000,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tobias the Filth Gorger - On Script - Set NPC Flags');

DELETE FROM `waypoints` WHERE `entry` IN (21411);


-- Gordie
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (21434);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 21434 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2143400 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(21434,0,0,1,38,0,100,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gordie - On Data Set 1 0 - Say Line 0'),
(21434,0,1,0,61,0,100,0,0,0,0,0,0,0,80,2143400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gordie - On Data Set 1 0 - Run Script'),
(21434,0,2,0,40,0,100,0,7,21434,0,0,0,0,41,1000,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gordie - On Waypoint 7 Reached - Despawn'),

(2143400,9,0,0,0,0,100,0,5000,5000,0,0,0,0,53,2,21434,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gordie - On Script - Start Waypoint');

DELETE FROM `waypoints` WHERE `entry` IN (21434);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(21434,1,-2079.1245,5292.6284,-37.3236,NULL,0,'Gordie'),
(21434,2,-2074.992,5288.685,-37.3236,NULL,0,'Gordie'),
(21434,3,-2067.7993,5280.394,-37.3236,NULL,0,'Gordie'),
(21434,4,-2064.1943,5276.341,-38.464565,NULL,0,'Gordie'),
(21434,5,-2038.3572,5256.134,-40.761597,NULL,0,'Gordie'),
(21434,6,-2033.4413,5253.7715,-42.99525,NULL,0,'Gordie'),
(21434,7,-2011.4039,5246.811,-45.74897,NULL,0,'Gordie'),
(21434,8,-1972.4366,5232.6885,-46.01291,NULL,0,'Gordie');

DELETE FROM `creature_text` WHERE `CreatureID` IN (21434) AND `GroupID` IN (0);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(21434,0,0,'It\'s a complete and total barf-o-rama! RUN FOR YOUR LIVES!',12,0,100,0,0,0,19102,0,'Gordie');


-- Arena Bulletin Board -- Doesn't Exist in Gameobject_template?????
-- DELETE FROM `gameobject_template` where entry in (300000);
-- INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`size`,`Data0`,`Data1`,`Data2`,`Data3`,`Data4`,`Data5`,`Data6`,`Data7`,`Data8`,`Data9`,`Data10`,`Data11`,`Data12`,`Data13`,`Data14`,`Data15`,`Data16`,`Data17`,`Data18`,`Data19`,`Data20`,`Data21`,`Data22`,`Data23`,`AIName`,`ScriptName`,`VerifiedBuild`) VALUES 
-- (300000,5,102499,'Arena Bulletin Board','','','',2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','',12340);

-- UPDATE `gameobject_template` SET `displayId` = 102499 WHERE `entry` in (187702); -- 7695

