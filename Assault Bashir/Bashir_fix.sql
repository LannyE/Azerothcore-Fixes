/*
 Implement the Bash'ir Landing Assault Raid 6-9-26

 - New Game event: 248
 - New Creature GUID: 300194,300195,300196,300197,300198,300199,300200,300201,300202,300203,300204,300205,300206,300207,300208,300209,300210,300211,300212,300213,300214,300215,300216,300217,300218,300219,300220,300221,300222,300223,300224,300225
 - New Creature GUID: 300811,300812,300813,300814,300815,300816,300817,300818
 - New Spawn Group: 42302
 -- If you don't enable smoothTransition on waypoint_data points then they don't seem to work right with SMARTAI.  Like flying and hovering and velocity 6-20-26
 -- TODO find the unstable Mana lightning spell/object the happens starting at the transistion to Phase 2 and gets stronger. Can't find a spell for it.  Implemented a GO for it for now 6-22-26
 -- TODO convert large summon waves to creature_summon_groups (table) and just call it.  DONE
 -- TODO: Aether Tech Master is missing some vendor items DONE
*/
-- Unbound Ethereal
DELETE FROM `creature` WHERE `guid` IN (300811);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300811,22244,530,0,0,1,1,0,3950.47998,5955.25,266.7799,1.4965,300,0,0,6986,0,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` where `guid` in (300811);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(300811,3008110,0,0,0,0,0,NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (3008110);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES  
(3008110,1,3950.48,5955.25,266.78,NULL,0,0,1,0,0,100,0),
(3008110,2,3949.28,5937.8,266.092,NULL,0,0,1,0,0,100,0),
(3008110,3,3948.46,5923.82,265.565,NULL,0,0,1,0,0,100,0),
(3008110,4,3951.23,5912.44,265.69,NULL,0,0,1,0,0,100,0),
(3008110,5,3958.56,5903.93,266.697,NULL,0,0,1,0,0,100,0),
(3008110,6,3968.46,5898.14,266.555,NULL,0,0,1,0,0,100,0),
(3008110,7,3975.03,5898.16,266.672,NULL,0,0,1,0,0,100,0),
(3008110,8,3987.29,5902.24,267.023,NULL,0,0,1,0,0,100,0),
(3008110,9,3994.99,5907.28,267.287,NULL,0,0,1,0,0,100,0),
(3008110,10,4011.83,5918.71,267.566,NULL,0,0,1,0,0,100,0),
(3008110,11,4024.42,5917.76,267.866,NULL,0,0,1,0,0,100,0),
(3008110,12,4034.05,5914.95,267.582,NULL,0,0,1,0,0,100,0),
(3008110,13,4045.23,5906.35,265.304,NULL,0,0,1,0,0,100,0),
(3008110,14,4042.7,5893.12,267.575,NULL,0,0,1,0,0,100,0),
(3008110,15,4036.36,5881.44,267.871,NULL,0,0,1,0,0,100,0),
(3008110,16,4029.09,5872,267.871,NULL,0,0,1,0,0,100,0),
(3008110,17,4029.28,5860.25,267.66,NULL,0,0,1,0,0,100,0),
(3008110,18,4031.68,5852.45,266.567,NULL,0,0,1,0,0,100,0),
(3008110,19,4028.22,5860.94,267.743,NULL,0,0,1,0,0,100,0),
(3008110,20,4029.2,5872.66,267.871,NULL,0,0,1,0,0,100,0),
(3008110,21,4036.04,5881.71,267.871,NULL,0,0,1,0,0,100,0),
(3008110,22,4042.68,5893.91,267.559,NULL,0,0,1,0,0,100,0),
(3008110,23,4045.14,5906.82,265.258,NULL,0,0,1,0,0,100,0),
(3008110,24,4033.36,5915.65,267.693,NULL,0,0,1,0,0,100,0),
(3008110,25,4023.74,5918.2,267.866,NULL,0,0,1,0,0,100,0),
(3008110,26,4011.62,5918.35,267.564,NULL,0,0,1,0,0,100,0),
(3008110,27,3995.03,5907.44,267.297,NULL,0,0,1,0,0,100,0),
(3008110,28,3986.05,5901.75,266.973,NULL,0,0,1,0,0,100,0),
(3008110,29,3974.27,5898.01,266.669,NULL,0,0,1,0,0,100,0),
(3008110,30,3967.65,5898.31,266.54,NULL,0,0,1,0,0,100,0),
(3008110,31,3957.62,5904.41,266.623,NULL,0,0,1,0,0,100,0),
(3008110,32,3950.64,5912.79,265.646,NULL,0,0,1,0,0,100,0),
(3008110,33,3948.23,5923.99,265.588,NULL,0,0,1,0,0,100,0),
(3008110,34,3949,5938.19,266.149,NULL,0,0,1,0,0,100,0);


-- Bash'ir Spell-Thief
DELETE FROM `creature` WHERE `guid` IN (300812,300813,300814);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300812,22242,530,0,0,1,1,1,3970.3999,5910.0498,267.363006,4.93838,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL),
(300813,22242,530,0,0,1,1,1,3951.9699,5963.87011,267.363006,4.852019,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL),
(300814,22242,530,0,0,1,1,1,4014.4899,5876.31982,267.872009,3.80482,300,0,0,5589,3155,0,0,0,0,'',0,0,NULL);


-- Bash'ir Raider
DELETE FROM `creature` WHERE `guid` IN (300815,300816);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300815,22241,530,0,0,1,1,1,4023.12988,5849.6899,266.066,3.75246,300,0,0,6986,0,0,0,0,0,'',0,0,NULL),
(300816,22241,530,0,0,1,1,1,4000.29003,5894.6499,266.54,3.87462,300,0,0,6986,0,0,0,0,0,'',0,0,NULL);


-- Bash'ir Arcanist
DELETE FROM `creature` WHERE `guid` IN (300817,300818);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300817,22243,530,0,0,1,1,1,4006.6799,5924.2797,267.57299,4.53785,300,0,0,5744,3231,0,0,0,0,'',0,0,NULL),
(300818,22243,530,0,0,1,1,1,4040.06005,5875.89013,267.87298,3.47321,300,0,0,5744,3231,0,0,0,0,'',0,0,NULL);


-- Mailbox
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` in (185965); -- 929

DELETE FROM `spawn_group` where `groupId` IN (42302);
INSERT INTO `spawn_group` (`groupId`,`spawnType`,`spawnId`) VALUES 
(42302,0,300811),
(42302,0,300812),
(42302,0,300814),
(42302,0,300815),
(42302,0,300816);

DELETE FROM `spawn_group_template` where `groupId` IN (42302);
INSERT INTO `spawn_group_template` (`groupId`,`groupName`,`groupFlags`) VALUES 
(42302,'Bash\'ir Spawn Group 1',4);

DELETE FROM `smart_scripts` WHERE `entryorguid` in (-929) AND `source_type` = 1 AND `id` IN (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-929,1,0,0,69,0,100,0,248,0,0,0,0,0,131,42302,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Game Event Stop - Spawn SpawnGroup'),
(-929,1,1,0,11,0,100,0,0,0,0,0,0,0,131,42302,1,1,0,0,0,1,0,0,0,0,0,0,0,0,'Mailbox - On Respawn - Spawn SpawnGroup');


-- Game Event
DELETE FROM `game_event` WHERE `eventEntry` = 248;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES
(248,'2011-03-22 01:00:00','2030-12-31 07:00:00',10500000,100,0,0,'Assault On Bash\'ir Landing',0,0);

DELETE FROM `game_event_creature` where `eventEntry` = 248;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES 
(248,300194),
(248,300195),
(248,300196),
(248,300197),
(248,300198),
(248,300199),
(248,300200);


-- Aether Tech Apprentice
UPDATE `creature_template` SET `AIName`='',`ScriptName` = 'npc_aether_tech_apprentice' WHERE `entry` = 23473;

DELETE FROM `gossip_menu` where MenuID = 8736 AND `TextID` = 11056;
INSERT INTO `gossip_menu` (`MenuID`,`TextID`) VALUES 
(8736,11056);

-- Create 61 NPC_texts
DELETE FROM `npc_text` where ID >= 91101 AND ID <= 91161;
DELIMITER $$

CREATE PROCEDURE PopulateAetherTechTexts()
BEGIN
    DECLARE i INT DEFAULT 2;
	
    -- Create the "about 1 hour" text entry at ID 91160
    REPLACE INTO `npc_text` (`ID`, `text0_0`) 
    VALUES (91101, 'We are launching an assault on Bash\'ir Landing, to study their Crystalforge.  Help us if you can!  Our Skyguard Aether-tech will leave in about 1 minute.');
    
    -- Create the 59 individual minute texts (IDs 91101 to 91159)
    WHILE i <= 59 DO
        REPLACE INTO `npc_text` (`ID`, `text0_0`) 
        VALUES (91100 + i, CONCAT('We are launching an assault on Bash\'ir Landing, to study their Crystalforge.  Help us if you can!  Our Skyguard Aether-tech will leave in about ', i, ' minutes.'));
        SET i = i + 1;
    END WHILE;
    
    -- Create the "about 1 hour" text entry at ID 91160
    REPLACE INTO `npc_text` (`ID`, `text0_0`) 
    VALUES (91160, 'We are launching an assault on Bash\'ir Landing, to study their Crystalforge.  Help us if you can!  Our Skyguard Aether-tech will leave in about 1 hour.');

    -- Create the "about 2 hours" text entry at ID 91161
    REPLACE INTO `npc_text` (`ID`, `text0_0`) 
    VALUES (91161, 'We are launching an assault on Bash\'ir Landing, to study their Crystalforge.  Help us if you can!  Our Skyguard Aether-tech will leave in about 2 hours.');
    
END$$

DELIMITER ;

-- Run the procedure and clean up
CALL PopulateAetherTechTexts();
DROP PROCEDURE PopulateAetherTechTexts;


-- Skyguard Lieutenant
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23430;

DELETE FROM `creature_template_addon` where `entry` in (23430);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(23430,0,0,0,1,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300194);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300194,23430,530,0,0,1,1,1,2511.74,7324.75,374.971,1.8326,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23430 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2343000,2343001,2343002) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23430,0,0,1,11,0,100,0,0,0,0,0,0,0,80,2343000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Respawn - Run Script'),
(23430,0,1,2,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Respawn (Linked) - Set Active On'),
(23430,0,2,0,61,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Respawn (Linked) - Set Unit Flags \'Immune to NPC\''),
(23430,0,3,0,108,0,100,0,101,234300,0,0,0,0,80,2343001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Waypoint 101 Reached - Run Script'),
(23430,0,4,0,108,0,100,0,3,234301,0,0,0,0,80,2343002,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Waypoint 3 Reached - Run Script'),
(23430,0,5,0,21,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.8033,'Skyguard Lieutenant - On Home Reached - Set Orientation'),
(23430,0,6,0,0,0,100,0,4000,6000,7000,10000,0,0,11,38618,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - IC - Cast \'Whirlwind\''),
(23430,0,7,0,37,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On AI Init - Respawn'),
(23430,0,8,0,38,0,100,0,1,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Data Set 1 0 - Despawn'),

(2343000,9,0,0,0,0,100,0,5000,5000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 0'),
(2343000,9,1,0,0,0,100,0,14000,14000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 1'),
(2343000,9,2,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Run Off'),
(2343000,9,3,0,0,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,2514.943,7329.165,375.3175,2.80998,'Skyguard Lieutenant - On Script - Move to POS'),
(2343000,9,4,0,0,0,100,0,14450,14450,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 2'),
(2343000,9,5,0,0,0,100,0,14500,14500,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 3'),
(2343000,9,6,0,0,0,100,0,6500,6500,0,0,0,0,1,0,0,0,0,0,0,10,300197,23242,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 0 on \'Skyguard Ranger\''),
(2343000,9,7,0,0,0,100,0,4300,4300,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,2511.741,7324.75,375.0029,1.832596,'Skyguard Lieutenant - On Script - Move to POS'),
(2343000,9,8,0,0,0,100,0,0,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 4'),
(2343000,9,9,0,0,0,100,0,8950,8950,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Say Line 5'),
(2343000,9,10,0,0,0,100,0,2400,2400,0,0,0,0,43,0,21156,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Mount to Model'),
(2343000,9,11,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Hover On'), -- Make sure waypoint is set to run.  
(2343000,9,12,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Run On'),
(2343000,9,13,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Fly On'),
(2343000,9,14,0,0,0,100,0,2000,2000,0,0,0,0,232,234300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Start Waypoint'),
(2343000,9,15,0,0,0,100,0,0,0,0,0,0,0,43,0,21156,0,0,0,0,11,23242,50,1,0,0,0,0,0,'Skyguard Lieutenant - On Script - Mount to Model on all \'Skyguard Ranger\''),
(2343000,9,16,0,0,0,100,0,0,0,0,0,0,0,43,0,21156,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Mount to Model on \'Skyguard Aether-Tech\''),
(2343000,9,17,0,0,0,100,0,2400,2400,0,0,0,0,45,1,0,0,0,0,0,10,300195,23242,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Data 1 0 on \'Skyguard Ranger\''),
(2343000,9,18,0,0,0,100,0,1200,1200,0,0,0,0,45,1,0,0,0,0,0,10,300196,23242,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Data 1 0 on \'Skyguard Ranger\''),
(2343000,9,19,0,0,0,100,0,1200,1200,0,0,0,0,45,1,0,0,0,0,0,10,300197,23242,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Data 1 0 on \'Skyguard Ranger\''),
(2343000,9,20,0,0,0,100,0,1200,1200,0,0,0,0,45,1,0,0,0,0,0,10,300198,23242,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Data 1 0 on \'Skyguard Ranger\''),
(2343000,9,21,0,0,0,100,0,2600,2600,0,0,0,0,45,1,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Data 1 0 on \'Skyguard Aether-Tech\''),

(2343001,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Hover Off'),
(2343001,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - UnMount'),
(2343001,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Fly Off'),
(2343001,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2343001,9,4,0,0,0,100,0,10,10,0,0,0,0,232,234301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Lieutenant - On Script - Start Waypoint"),
(2343001,9,5,0,0,0,100,0,100,100,0,0,0,0,132,42302,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Despawn SpawnGroup'),

(2343002,9,0,0,0,0,100,0,0,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Remove Unit Flags \'Immune to NPC\''),
(2343002,9,1,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Stop Waypoint'),
(2343002,9,2,0,0,0,100,0,0,0,0,0,0,0,232,234302,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Start Waypoint'), -- This waypoint is because Set home POS really doesn't work right.  
(2343002,9,3,0,0,0,100,0,1000,1000,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Stop Waypoint'),
(2343002,9,4,0,0,0,100,0,100,100,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Lieutenant - On Script - Set Home POS');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23430);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23430,0,0,'Rangers,listen up! We stand ready to take the pain directly to the heathen Bash\'ir devils.  Our mission is simple. Hold the area long enough to get accurate readings on their new technology.',12,0,100,5,0,0,21619,0,''),
(23430,1,0,'But don\'t underestimate our enemies.  We are invading them.  We are taking the fight to them.  We have them backed into a corner and they will strike back.',12,0,100,5,0,0,21620,0,''),
(23430,2,0,'We are Skyguard!  This is what we are trained to do.  We do not retreat,we do not surrender.  We will see our mission through even if it means death! We will secure that information or we will die on the field of battle.',12,0,100,0,0,0,21621,0,''),
(23430,3,0,'Anyone have any questions?',12,0,100,6,0,0,21622,0,''),
(23430,4,0,'You are about to find out!',12,0,100,0,0,0,21623,0,''),
(23430,5,0,'Skyguard Rangers,MOUNT UP!!',12,0,100,0,0,0,21624,0,'');

DELETE FROM `waypoint_data` WHERE `id` IN (234300,234301,234302);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(234300,1,2549.41,7309.91,381.525,NULL,0,0,1,1,0,100,0),
(234300,2,2572.15,7292.61,384.249,NULL,0,0,1,1,0,100,0),
(234300,3,2590.56,7275.78,386.832,NULL,0,0,1,1,0,100,0),
(234300,4,2608.06,7255.16,386.137,NULL,0,0,1,1,0,100,0),
(234300,5,2625.79,7238.29,382.943,NULL,0,0,1,1,0,100,0),
(234300,6,2639.58,7225.22,381.609,NULL,0,0,1,1,0,100,0),
(234300,7,2645.2,7211.72,381.609,NULL,0,0,1,1,0,100,0),
(234300,8,2645.76,7189.9,384.082,NULL,0,0,1,1,0,100,0),
(234300,9,2648.11,7173.98,383.97,NULL,0,0,1,1,0,100,0),
(234300,10,2648.83,7153.95,385.276,NULL,0,0,1,1,0,100,0),
(234300,11,2647.89,7134.67,387.054,NULL,0,0,1,1,0,100,0),
(234300,12,2654.27,7113.4,384.442,NULL,0,0,1,1,0,100,0),
(234300,13,2658.8,7094.67,385.164,NULL,0,0,1,1,0,100,0),
(234300,14,2657.69,7076.14,385.664,NULL,0,0,1,1,0,100,0),
(234300,15,2656.02,7054.8,386.109,NULL,0,0,1,1,0,100,0),
(234300,16,2654.48,7035.64,385.554,NULL,0,0,1,1,0,100,0),
(234300,17,2651.75,7019.32,385.748,NULL,0,0,1,1,0,100,0),
(234300,18,2648.06,6994.75,384.332,NULL,0,0,1,1,0,100,0),
(234300,19,2643.3,6971.74,381.665,NULL,0,0,1,1,0,100,0),
(234300,20,2640.74,6938.96,387.526,NULL,0,0,1,1,0,100,0),
(234300,21,2640.48,6907.62,382.581,NULL,0,0,1,1,0,100,0),
(234300,22,2657.72,6877.93,368.776,NULL,0,0,1,1,0,100,0),
(234300,23,2650.2,6851.89,369.387,NULL,0,0,1,1,0,100,0),
(234300,24,2650.48,6840.88,369.387,NULL,0,0,1,1,0,100,0),
(234300,25,2647.35,6810.55,369.387,NULL,0,0,1,1,0,100,0),
(234300,26,2645.4,6791.86,369.387,NULL,0,0,1,1,0,100,0),
(234300,27,2643.18,6750.19,369.387,NULL,0,0,1,1,0,100,0),
(234300,28,2636.95,6707.67,369.387,NULL,0,0,1,1,0,100,0),
(234300,29,2647.24,6652.94,369.387,NULL,0,0,1,1,0,100,0),
(234300,30,2649.8,6614.96,369.387,NULL,0,0,1,1,0,100,0),
(234300,31,2649.33,6595,369.387,NULL,0,0,1,1,0,100,0),
(234300,32,2647.18,6551.76,369.387,NULL,0,0,1,1,0,100,0),
(234300,33,2657,6522.9,369.387,NULL,0,0,1,1,0,100,0),
(234300,34,2677.08,6506.23,369.387,NULL,0,0,1,1,0,100,0),
(234300,35,2695.7,6460.19,369.387,NULL,0,0,1,1,0,100,0),
(234300,36,2706.78,6440.56,369.387,NULL,0,0,1,1,0,100,0),
(234300,37,2719.12,6419.69,369.387,NULL,0,0,1,1,0,100,0),
(234300,38,2730.47,6403.94,369.387,NULL,0,0,1,1,0,100,0),
(234300,39,2746.5,6385.47,369.387,NULL,0,0,1,1,0,100,0),
(234300,40,2762.59,6370.58,369.387,NULL,0,0,1,1,0,100,0),
(234300,41,2790.56,6341.72,369.387,NULL,0,0,1,1,0,100,0),
(234300,42,2816.06,6316.14,369.387,NULL,0,0,1,1,0,100,0),
(234300,43,2827.79,6303.66,371.859,NULL,0,0,1,1,0,100,0),
(234300,44,2841.62,6288.59,380.804,NULL,0,0,1,1,0,100,0),
(234300,45,2859.88,6273.93,385.026,NULL,0,0,1,1,0,100,0),
(234300,46,2874.45,6255.96,380.304,NULL,0,0,1,1,0,100,0),
(234300,47,2887.52,6244.76,369.387,NULL,0,0,1,1,0,100,0),
(234300,48,2897.88,6231.24,369.387,NULL,0,0,1,1,0,100,0),
(234300,49,2913.55,6212.95,369.387,NULL,0,0,1,1,0,100,0),
(234300,50,2931.17,6192.03,369.387,NULL,0,0,1,1,0,100,0),
(234300,51,2943.64,6175.99,369.387,NULL,0,0,1,1,0,100,0),
(234300,52,2952.41,6159.75,369.387,NULL,0,0,1,1,0,100,0),
(234300,53,2960.98,6141.05,369.387,NULL,0,0,1,1,0,100,0),
(234300,54,2972.69,6116.74,369.387,NULL,0,0,1,1,0,100,0),
(234300,55,2983.99,6090.26,369.387,NULL,0,0,1,1,0,100,0),
(234300,56,2996.63,6075.41,369.387,NULL,0,0,1,1,0,100,0),
(234300,57,3016.19,6055.48,369.387,NULL,0,0,1,1,0,100,0),
(234300,58,3039.04,6039.14,369.387,NULL,0,0,1,1,0,100,0),
(234300,59,3059.51,6012.82,369.387,NULL,0,0,1,1,0,100,0),
(234300,60,3075.82,5996.95,369.387,NULL,0,0,1,1,0,100,0),
(234300,61,3093.52,5973.15,369.387,NULL,0,0,1,1,0,100,0),
(234300,62,3107.59,5956.04,369.387,NULL,0,0,1,1,0,100,0),
(234300,63,3120.58,5941.66,371.47,NULL,0,0,1,1,0,100,0),
(234300,64,3142.02,5921.44,376.47,NULL,0,0,1,1,0,100,0),
(234300,65,3163.97,5912.84,369.387,NULL,0,0,1,1,0,100,0),
(234300,66,3178.61,5909.19,369.387,NULL,0,0,1,1,0,100,0),
(234300,67,3202.92,5903.13,369.387,NULL,0,0,1,1,0,100,0),
(234300,68,3219.76,5892.69,369.387,NULL,0,0,1,1,0,100,0),
(234300,69,3237.66,5884.05,369.387,NULL,0,0,1,1,0,100,0),
(234300,70,3259.15,5872.47,369.387,NULL,0,0,1,1,0,100,0),
(234300,71,3302.09,5845.12,369.387,NULL,0,0,1,1,0,100,0),
(234300,72,3321.73,5823.33,369.387,NULL,0,0,1,1,0,100,0),
(234300,73,3335.04,5795.17,369.387,NULL,0,0,1,1,0,100,0),
(234300,74,3353.03,5775.54,369.387,NULL,0,0,1,1,0,100,0),
(234300,75,3390.46,5749.81,369.387,NULL,0,0,1,1,0,100,0),
(234300,76,3419.27,5730.15,369.387,NULL,0,0,1,1,0,100,0),
(234300,77,3451.75,5718.36,369.387,NULL,0,0,1,1,0,100,0),
(234300,78,3496.71,5710.83,369.387,NULL,0,0,1,1,0,100,0),
(234300,79,3530.26,5707.29,369.387,NULL,0,0,1,1,0,100,0),
(234300,80,3549.83,5704.11,369.387,NULL,0,0,1,1,0,100,0),
(234300,81,3573.37,5695.44,369.387,NULL,0,0,1,1,0,100,0),
(234300,82,3597.61,5693.13,369.387,NULL,0,0,1,1,0,100,0),
(234300,83,3621.07,5690.96,369.387,NULL,0,0,1,1,0,100,0),
(234300,84,3662.08,5677.84,369.387,NULL,0,0,1,1,0,100,0),
(234300,85,3699.86,5675.27,369.387,NULL,0,0,1,1,0,100,0),
(234300,86,3761.16,5692.27,369.387,NULL,0,0,1,1,0,100,0),
(234300,87,3797.86,5731.51,369.387,NULL,0,0,1,1,0,100,0),
(234300,88,3802.44,5737.68,369.387,NULL,0,0,1,1,0,100,0),
(234300,89,3828.34,5761.7,369.387,NULL,0,0,1,1,0,100,0),
(234300,90,3855.93,5786.79,348.443,NULL,0,0,1,1,0,100,0),
(234300,91,3864.29,5797.98,343.693,NULL,0,0,1,1,0,100,0),
(234300,92,3874.67,5807.48,336.415,NULL,0,0,1,1,0,100,0),
(234300,93,3891.93,5822.81,325.915,NULL,0,0,1,1,0,100,0),
(234300,94,3902.64,5837.94,316.11,NULL,0,0,1,1,0,100,0),
(234300,95,3918.15,5852.39,302.388,NULL,0,0,1,1,0,100,0),
(234300,96,3922.65,5858.83,297.193,NULL,0,0,1,1,0,100,0),
(234300,97,3928.09,5865.75,292.527,NULL,0,0,1,1,0,100,0),
(234300,98,3934.58,5876.18,288.332,NULL,0,0,1,1,0,100,0),
(234300,99,3944.31,5890.46,278.387,NULL,0,0,1,1,0,100,0),
(234300,100,3956.62,5901.46,269.388,NULL,0,0,1,1,0,100,0),
(234300,101,3968.2,5903.91,267.777,NULL,0,1000,1,1,0,100,0), -- 3968.2 5903.91 267.777

(234301,1,4001.54,5891.35,266.696,NULL,0,0,0,1,0,100,0), -- 4001.54 5891.35 266.696 This waypoint positions him at the crystalforge in preparation for phase 1
(234301,2,4013.04,5893.2,267.948,NULL,0,0,0,1,0,100,0), -- 4013.04 5893.2 267.948
(234301,3,4013.02,5889.71,267.948,3.8033,0,1000,0,1,0,100,0), -- 4013.02 5889.71 267.948

(234302,1,4013.02,5889.71,267.948,3.8033,0,0,0,1,0,100,0);


-- Skyguard Ranger
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=134217728 WHERE `entry` in (23242); -- 0

DELETE FROM `creature_template_addon` where `entry` in (23242);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(23242,0,0,0,1,0,0,NULL);

DELETE FROM `creature` WHERE `guid` IN (300195,300196,300197,300198);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300195,23242,530,0,0,1,1,1,2508.06,7327.6,375.287,5.51524,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL), -- 2508.06 7327.6 375.287
(300196,23242,530,0,0,1,1,1,2509.62,7328.88,375.582,5.61996,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL), -- 2509.62 7328.88 375.582
(300197,23242,530,0,0,1,1,1,2510.92,7330.02,375.7,5.5676,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL), -- 2510.92 7330.02 375.7
(300198,23242,530,0,0,1,1,1,2512.2502,7331.017,375.62042,5.5276,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL); -- Fourth one shown in youtube video 2512.2014 Y: 7331.0713 Z: 375.62808

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300195,-300196,-300197,-300198,23242) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324200,2324201,2324202,2324203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23242,0,0,1,11,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Respawn - Set Active On'),
(23242,0,1,0,61,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Respawn (Linked) - Set Unit Flags \'Immune to NPC\''),
(23242,0,2,0,0,0,100,0,4000,6000,7000,10000,0,0,11,38618,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - IC - Cast \'Whirlwind\''),
(23242,0,3,0,37,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On AI Init - Respawn'),
(23242,0,4,0,4,0,20,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Aggro - Say Line 1'),
(23242,0,5,0,38,0,100,0,1,1,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 1 - Despawn'),

(-300195,0,1000,0,108,0,100,1,101,234300,0,0,0,0,80,2324200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 101 Reached - Set Hover Off'),
(-300195,0,1001,1002,108,0,100,0,3,232420,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached - Remove Unit Flags \'Immune to NPC\''),
(-300195,0,1002,1003,61,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Stop Waypoint'),
(-300195,0,1003,1004,61,0,100,0,0,0,0,0,0,0,232,232423,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Start Waypoint'),
(-300195,0,1004,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Set Home POS'),
(-300195,0,1005,1006,38,0,100,0,1,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 - Set Fly On'),
(-300195,0,1006,1007,61,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Set Hover On'),
(-300195,0,1007,0,61,0,100,0,0,0,0,0,0,0,232,234300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Start Waypoint'),
(-300195,0,1008,0,21,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.72554,'Skyguard Ranger - On Home Reached - Set Orientation'),

(-300196,0,1000,0,108,0,100,1,101,234300,0,0,0,0,80,2324201,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 101 Reached - Set Hover Off'),
(-300196,0,1001,1002,108,0,100,0,3,232421,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached - Remove Unit Flags \'Immune to NPC\''),
(-300196,0,1002,1003,61,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Stop Waypoint'),
(-300196,0,1003,1004,61,0,100,0,0,0,0,0,0,0,232,232424,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Start Waypoint'),
(-300196,0,1004,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Set Home POS'),
(-300196,0,1005,1006,38,0,100,0,1,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 - Set Fly On'),
(-300196,0,1006,1007,61,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Set Hover On'),
(-300196,0,1007,0,61,0,100,0,0,0,0,0,0,0,232,234300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Start Waypoint'),
(-300196,0,1008,0,21,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.62761,'Skyguard Ranger - On Home Reached - Set Orientation'),

(-300197,0,1000,0,108,0,100,1,101,234300,0,0,0,0,80,2324202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 101 Reached - Set Hover Off'),
(-300197,0,1001,1002,108,0,100,0,3,232422,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached - Remove Unit Flags \'Immune to NPC\''),
(-300197,0,1002,1003,61,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Stop Waypoint'),
(-300197,0,1003,1004,61,0,100,0,0,0,0,0,0,0,232,232425,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Start Waypoint'),
(-300197,0,1004,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Set Home POS'),
(-300197,0,1005,1006,38,0,100,0,1,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 - Set Fly On'),
(-300197,0,1006,1007,61,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Set Hover On'),
(-300197,0,1007,0,61,0,100,0,0,0,0,0,0,0,232,234300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Start Waypoint'),
(-300197,0,1008,0,21,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,5.13285,'Skyguard Ranger - On Home Reached - Set Orientation'),

(-300198,0,1000,0,108,0,100,1,101,234300,0,0,0,0,80,2324203,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 101 Reached - Set Hover Off'),
(-300198,0,1001,1002,108,0,100,0,3,232426,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached - Remove Unit Flags \'Immune to NPC\''),
(-300198,0,1002,1003,61,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Stop Waypoint'),
(-300198,0,1003,1004,61,0,100,0,0,0,0,0,0,0,232,232427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Start Waypoint'),
(-300198,0,1004,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Waypoint 3 Reached (Linked) - Set Home POS'),
(-300198,0,1005,1006,38,0,100,0,1,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 - Set Fly On'),
(-300198,0,1006,1007,61,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Set Hover On'),
(-300198,0,1007,0,61,0,100,0,0,0,0,0,0,0,232,234300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Data Set 1 0 (Linked) - Start Waypoint'),
(-300198,0,1008,0,21,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.63657,'Skyguard Ranger - On Home Reached - Set Orientation'),

(2324200,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Hover Off'),
(2324200,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - UnMount'),
(2324200,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Fly Off'),
(2324200,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324200,9,4,0,0,0,100,0,10,10,0,0,0,0,232,232420,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Ranger - On Script - Start Waypoint"),

(2324201,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Hover Off'),
(2324201,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - UnMount'),
(2324201,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Fly Off'),
(2324201,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324201,9,4,0,0,0,100,0,10,10,0,0,0,0,232,232421,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Ranger - On Script - Start Waypoint"),

(2324202,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Hover Off'),
(2324202,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - UnMount'),
(2324202,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Fly Off'),
(2324202,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324202,9,4,0,0,0,100,0,10,10,0,0,0,0,232,232422,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Ranger - On Script - Start Waypoint"),

(2324203,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Hover Off'),
(2324203,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - UnMount'),
(2324203,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Set Fly Off'),
(2324203,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Ranger - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324203,9,4,0,0,0,100,0,10,10,0,0,0,0,232,232426,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Ranger - On Script - Start Waypoint");


DELETE FROM `creature_text` WHERE `CreatureID` IN (23242);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23242,0,0,'Look man,I only need to know one thing,where they are.',12,0,100,1,0,0,21625,0,''),
(23242,1,0,'Head\'s up!',12,0,100,0,0,0,21648,0,''),
(23242,1,1,'Let\'s go!',12,0,100,0,0,0,21649,0,''),
(23242,1,2,'Come on!',12,0,100,0,0,0,21650,0,''),
(23242,1,3,'Come and get it!',12,0,100,0,0,0,21651,0,''),
(23242,1,4,'Oh,you want some of this?',12,0,100,0,0,0,21652,0,''),
(23242,1,5,'LET\'S ROCK!',12,0,100,0,0,0,21653,0,''),
(23242,1,6,'Who\'s next?',12,0,100,0,0,0,21654,0,'');

DELETE FROM `waypoint_data` WHERE `id` IN (232420,232421,232422,232423,232424,232425,232426,232427);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(232420,1,3992,5895.15,266.244,NULL,0,0,0,1,0,100,0),
(232420,2,4011.68,5892.59,267.948,NULL,0,0,0,1,0,100,0),
(232420,3,4015.77,5889.59,267.948,4.72554,0,1000,0,1,0,100,0), -- 4015.77 5889.59 267.948

(232421,1,3998.37,5892.5,266.379,NULL,0,0,0,1,0,100,0),
(232421,2,4009.84,5893.29,267.942,NULL,0,0,0,1,0,100,0),
(232421,3,4010.75,5891.15,267.927,3.62761,0,1000,0,1,0,100,0), -- 4010.75 5891.15 267.927

(232422,1,4000.96,5890.88,266.627,NULL,0,0,0,1,0,100,0),
(232422,2,4014.53,5892.01,267.948,NULL,0,0,0,1,0,100,0),
(232422,3,4017.95,5890.07,267.948,5.13285,0,1000,0,1,0,100,0),

(232423,1,4015.77,5889.59,267.948,4.72554,0,0,0,1,0,100,0),

(232424,1,4010.75,5891.15,267.927,3.62761,0,0,0,1,0,100,0),

(232425,1,4017.95,5890.07,267.948,5.13285,0,0,0,1,0,100,0),

(232426,1,3998.37,5892.5,266.379,NULL,0,0,0,1,0,100,0), -- 3998.37 5892.5 266.379
(232426,2,4009.84,5893.29,267.942,NULL,0,0,0,1,0,100,0), -- 4009.84 5893.29 267.942
(232426,3,4012.0884,5893.934,267.86957,2.63657,0,1000,0,1,0,100,0),

(232427,1,4012.0884,5893.934,267.86957,2.63657,0,0,0,1,0,100,0);


-- Skyguard Aether Tech
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23241;

DELETE FROM `creature` WHERE `guid` IN (300199);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300199,23241,530,0,0,1,1,0,2515.96,7331.44,375.066,4.08407,7200,0,0,1,0,0,0,0,0,'',NULL,0,NULL);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (41289) AND `ScriptName` = 'spell_ethereal_ring_signal_flare';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(41289,'spell_ethereal_ring_signal_flare');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23241 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324100,2324101,2324102,2324103) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23241,0,0,1,11,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Respawn - Set React State \'Passive\''),
(23241,0,1,2,61,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Respawn (Linked) - Set Active On'),
(23241,0,2,3,61,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Respawn (Linked) - Set Unit Flags \'Immune to NPC\''),
(23241,0,3,0,61,0,100,0,0,0,0,0,0,0,102,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Respawn (Linked) - Set Health Regen Off'),
(23241,0,4,0,108,0,100,0,101,234300,0,0,0,0,80,2324101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 101 Reached - Run Script'),
(23241,0,5,6,108,0,100,0,3,232410,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 3 Reached - Set Emote State \'STATE_USESTANDING_NOSHEATHE\''),
(23241,0,6,7,61,0,100,0,0,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 3 Reached (Linked) - Remove Unit Flags \'Immune to NPC\''),
(23241,0,7,8,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 3 Reached (Linked) - Set Data 1 1 on \'Bash\'ir Landing Boss Bunny\''), -- Start phase 1
(23241,0,8,9,61,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 3 Reached (Linked) - Stop Waypoint'),
(23241,0,9,0,61,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,8,0,0,0,0,4017.5679,5892.59,267.8706,0.599688,'Skyguard Aether Tech - On Waypoint 3 Reached (Linked) - Set Home POS'),
(23241,0,10,11,38,0,100,0,1,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Data Set 1 0 - Set Fly On'),
(23241,0,11,12,61,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Data Set 1 0 (Linked) - Set Hover On'),
(23241,0,12,0,61,0,100,0,0,0,0,0,0,0,232,234300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Data Set 1 0 (Linked) - Start Waypoint'),
(23241,0,13,0,38,0,100,0,1,1,0,0,0,0,80,2324100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Data Set 1 1 - Run Script'), -- End Phase 1
(23241,0,14,0,6,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Just Died - Set Data 1 3 on \'Bash\'ir Landing Boss Bunny\''),
(23241,0,15,0,32,0,100,0,0,5000,2000,3000,0,0,39,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Damage - Call for Help'),
(23241,0,16,17,37,0,100,0,0,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On AI Init - Respawn'),
(23241,0,17,0,61,0,100,0,0,0,0,0,0,0,117,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On AI Init (Linked) - Disable Evade'),
(23241,0,18,0,38,0,100,0,1,2,0,0,0,0,80,2324102,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Data Set 1 2 - Run Script'), -- End Phase 2
(23241,0,19,0,38,0,100,0,1,3,0,0,0,0,80,2324103,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Data Set 1 3 - Run Script'), -- End Phase 3
(23241,0,20,21,108,0,100,0,2,232411,0,0,0,0,45,2,0,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 2 Reached - Set Data 2 0 on \'Bash\'ir Landing Boss Bunny\''),
(23241,0,21,22,61,0,100,0,0,0,0,0,0,0,43,0,21156,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 2 Reached (Linked) - Mount to Model'),
(23241,0,22,23,61,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 2 Reached (Linked) - Set Fly On'),
(23241,0,23,0,61,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 2 Reached (Linked) - Set Hover On'),
(23241,0,24,0,108,0,100,0,102,232411,0,0,0,0,45,1,3,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - Set Data 1 3 on \'Bash\'ir Landing Boss Bunny\''), -- The End - try it this way so we don't get errors that event is already stopped.
-- (23241,0,24,0,108,0,100,0,102,232411,0,0,0,0,111,248,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Waypoint 102 Reached - Game Event Stop 248'), -- The End

(2324100,9,0,0,0,0,100,0,100,100,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Say Line 0'),
(2324100,9,1,0,0,0,100,0,5100,5100,0,0,0,0,11,41293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Cast \'ETHEREAL_RING_SIGNAL_FLARE_BURST\''),
(2324100,9,2,0,0,0,100,0,1000,1000,0,0,0,0,12,23243,6,5000,0,0,0,8,0,0,0,0,3907.27,5895.63,331.033,0,'Skyguard Aether Tech - On Script - Summon \'Aether-tech Assistant\''), -- 3941.35,5911.56,383.865
(2324100,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,11,23425,100,1,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 1 2 on all \'Ethereal Ring Control Bunny, Elite\''),
(2324100,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,10,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 1 10 on \'Bash\'ir Landing Boss Bunny\''),
(2324100,9,5,0,0,0,100,0,40000,40000,0,0,0,0,45,1,4,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 1 4 on \'Bash\'ir Landing Boss Bunny\''), -- Start Phase 2

(2324101,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Hover Off'),
(2324101,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - UnMount'),
(2324101,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Fly Off'),
(2324101,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324101,9,4,0,0,0,100,0,10,10,0,0,0,0,232,232410,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Aether Tech - On Script - Start Waypoint"),

(2324102,9,0,0,0,0,100,0,100,100,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Say Line 1'),
(2324102,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,4,0,0,0,0,11,23425,100,1,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 1 4 on all \'Ethereal Ring Control Bunny, Elite\''),
(2324102,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,11,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 1 11 on \'Bash\'ir Landing Boss Bunny\''),
(2324102,9,3,0,0,0,100,0,5100,5100,0,0,0,0,11,41293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Cast \'ETHEREAL_RING_SIGNAL_FLARE_BURST\''),
(2324102,9,4,0,0,0,100,0,1000,1000,0,0,0,0,12,23244,6,5000,0,0,0,8,0,0,0,0,3907.27,5895.63,331.033,0,'Skyguard Aether Tech - On Script - Summon \'Aether-tech Adept\''),
(2324102,9,5,0,0,0,100,0,40000,40000,0,0,0,0,45,1,7,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 1 7 on \'Bash\'ir Landing Boss Bunny\''), -- Start Phase 3

(2324103,9,0,0,0,0,100,0,100,100,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Say Line 2'),
(2324103,9,1,0,0,0,100,0,5100,5100,0,0,0,0,11,41293,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Cast \'ETHEREAL_RING_SIGNAL_FLARE_BURST\''),
(2324103,9,2,0,0,0,100,0,1000,1000,0,0,0,0,12,23245,6,5000,0,0,0,8,0,0,0,0,3907.27,5895.63,331.033,0,'Skyguard Aether Tech - On Script - Summon \'Aether-tech Master\''),
(2324103,9,3,0,0,0,100,0,300000,300000,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Say Line 3'),
(2324103,9,4,0,0,0,100,0,0,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Aether Tech - On Script - Set emote State \'Nothing\'"),
(2324103,9,5,0,0,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Aether Tech - On Script - Set Unit Flags \'Immune to NPC\'"),
(2324103,9,6,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Stop Waypoint'),
(2324103,9,7,0,0,0,100,0,10000,10000,0,0,0,0,232,232411,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Skyguard Aether Tech - On Script - Start Waypoint");
-- (2324103,9,8,0,0,0,100,0,0,0,0,0,0,0,45,2,0,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Skyguard Aether Tech - On Script - Set Data 2 0 on \'Bash\'ir Landing Boss Bunny\''); -- End Event

DELETE FROM `creature_text` WHERE `CreatureID` IN (23241);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23241,0,0,'A discovery!  I need aid with these measurements... I\'ll send a signal to my colleague!',14,0,100,0,0,0,21792,1,''),
(23241,1,0,'The disruptor towers over charged the crystalforge,and uncovered more secrets!  Hold them!  Hold them while we gather new data!',14,0,100,0,0,0,21793,1,''),
(23241,2,0,'At last!  The information we seek!  Gather quickly,skyguard.  We must soon return to headquarters with our findings!',14,0,100,0,0,0,21794,1,''),
(23241,3,0,'Our studies are complete!  Well fought!  Headquarters will pour over our gained measurements and,with luck,uncover the Bash\'ir\'s intentions.  Now,to the skies!',14,0,100,0,0,0,21276,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (232410,232411);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(232410,1,4003.36,5902.5,267.431,NULL,0,0,0,1,0,100,0),
(232410,2,4009.31,5894.79,267.879,NULL,0,0,0,1,0,100,0),
(232410,3,4017.5679,5892.59,267.8706,0.599688,0,1000,0,1,0,100,0), -- 4018.19,5893.19,267.948

(232411,1,3986.9863,5908.906,267.2407,NULL,0,0,1,1,0,100,0), -- 3968.2 5903.91 267.777
(232411,2,3968.2,5903.91,267.777,NULL,0,1000,1,1,0,100,0),
(232411,3,3956.62,5901.46,269.388,NULL,0,0,1,1,0,100,0),
(232411,4,3944.31,5890.46,278.387,NULL,0,0,1,1,0,100,0),
(232411,5,3934.58,5876.18,288.332,NULL,0,0,1,1,0,100,0),
(232411,6,3928.09,5865.75,292.527,NULL,0,0,1,1,0,100,0),
(232411,7,3922.65,5858.83,297.193,NULL,0,0,1,1,0,100,0),
(232411,8,3918.15,5852.39,302.388,NULL,0,0,1,1,0,100,0),
(232411,9,3902.64,5837.94,316.11,NULL,0,0,1,1,0,100,0),
(232411,10,3891.93,5822.81,325.915,NULL,0,0,1,1,0,100,0),
(232411,11,3874.67,5807.48,336.415,NULL,0,0,1,1,0,100,0),
(232411,12,3864.29,5797.98,343.693,NULL,0,0,1,1,0,100,0),
(232411,13,3855.93,5786.79,348.443,NULL,0,0,1,1,0,100,0),
(232411,14,3828.34,5761.7,369.387,NULL,0,0,1,1,0,100,0),
(232411,15,3802.44,5737.68,369.387,NULL,0,0,1,1,0,100,0),
(232411,16,3797.86,5731.51,369.387,NULL,0,0,1,1,0,100,0),
(232411,17,3761.16,5692.27,369.387,NULL,0,0,1,1,0,100,0),
(232411,18,3699.86,5675.27,369.387,NULL,0,0,1,1,0,100,0),
(232411,19,3662.08,5677.84,369.387,NULL,0,0,1,1,0,100,0),
(232411,20,3621.07,5690.96,369.387,NULL,0,0,1,1,0,100,0),
(232411,21,3597.61,5693.13,369.387,NULL,0,0,1,1,0,100,0),
(232411,22,3573.37,5695.44,369.387,NULL,0,0,1,1,0,100,0),
(232411,23,3549.83,5704.11,369.387,NULL,0,0,1,1,0,100,0),
(232411,24,3530.26,5707.29,369.387,NULL,0,0,1,1,0,100,0),
(232411,25,3496.71,5710.83,369.387,NULL,0,0,1,1,0,100,0),
(232411,26,3451.75,5718.36,369.387,NULL,0,0,1,1,0,100,0),
(232411,27,3419.27,5730.15,369.387,NULL,0,0,1,1,0,100,0),
(232411,28,3390.46,5749.81,369.387,NULL,0,0,1,1,0,100,0),
(232411,29,3353.03,5775.54,369.387,NULL,0,0,1,1,0,100,0),
(232411,30,3335.04,5795.17,369.387,NULL,0,0,1,1,0,100,0),
(232411,31,3321.73,5823.33,369.387,NULL,0,0,1,1,0,100,0),
(232411,32,3302.09,5845.12,369.387,NULL,0,0,1,1,0,100,0),
(232411,33,3259.15,5872.47,369.387,NULL,0,0,1,1,0,100,0),
(232411,34,3237.66,5884.05,369.387,NULL,0,0,1,1,0,100,0),
(232411,35,3219.76,5892.69,369.387,NULL,0,0,1,1,0,100,0),
(232411,36,3202.92,5903.13,369.387,NULL,0,0,1,1,0,100,0),
(232411,37,3178.61,5909.19,369.387,NULL,0,0,1,1,0,100,0),
(232411,38,3163.97,5912.84,369.387,NULL,0,0,1,1,0,100,0),
(232411,39,3142.02,5921.44,376.47,NULL,0,0,1,1,0,100,0),
(232411,40,3120.58,5941.66,371.47,NULL,0,0,1,1,0,100,0),
(232411,41,3107.59,5956.04,369.387,NULL,0,0,1,1,0,100,0),
(232411,42,3093.52,5973.15,369.387,NULL,0,0,1,1,0,100,0),
(232411,43,3075.82,5996.95,369.387,NULL,0,0,1,1,0,100,0),
(232411,44,3059.51,6012.82,369.387,NULL,0,0,1,1,0,100,0),
(232411,45,3039.04,6039.14,369.387,NULL,0,0,1,1,0,100,0),
(232411,46,3016.19,6055.48,369.387,NULL,0,0,1,1,0,100,0),
(232411,47,2996.63,6075.41,369.387,NULL,0,0,1,1,0,100,0),
(232411,48,2983.99,6090.26,369.387,NULL,0,0,1,1,0,100,0),
(232411,49,2972.69,6116.74,369.387,NULL,0,0,1,1,0,100,0),
(232411,50,2960.98,6141.05,369.387,NULL,0,0,1,1,0,100,0),
(232411,51,2952.41,6159.75,369.387,NULL,0,0,1,1,0,100,0),
(232411,52,2943.64,6175.99,369.387,NULL,0,0,1,1,0,100,0),
(232411,53,2931.17,6192.03,369.387,NULL,0,0,1,1,0,100,0),
(232411,54,2913.55,6212.95,369.387,NULL,0,0,1,1,0,100,0),
(232411,55,2897.88,6231.24,369.387,NULL,0,0,1,1,0,100,0),
(232411,56,2887.52,6244.76,369.387,NULL,0,0,1,1,0,100,0),
(232411,57,2874.45,6255.96,380.304,NULL,0,0,1,1,0,100,0),
(232411,58,2859.88,6273.93,385.026,NULL,0,0,1,1,0,100,0),
(232411,59,2841.62,6288.59,380.804,NULL,0,0,1,1,0,100,0),
(232411,60,2827.79,6303.66,371.859,NULL,0,0,1,1,0,100,0),
(232411,61,2816.06,6316.14,369.387,NULL,0,0,1,1,0,100,0),
(232411,62,2790.56,6341.72,369.387,NULL,0,0,1,1,0,100,0),
(232411,63,2762.59,6370.58,369.387,NULL,0,0,1,1,0,100,0),
(232411,64,2746.5,6385.47,369.387,NULL,0,0,1,1,0,100,0),
(232411,65,2730.47,6403.94,369.387,NULL,0,0,1,1,0,100,0),
(232411,66,2719.12,6419.69,369.387,NULL,0,0,1,1,0,100,0),
(232411,67,2706.78,6440.56,369.387,NULL,0,0,1,1,0,100,0),
(232411,68,2695.7,6460.19,369.387,NULL,0,0,1,1,0,100,0),
(232411,69,2677.08,6506.23,369.387,NULL,0,0,1,1,0,100,0),
(232411,70,2657,6522.9,369.387,NULL,0,0,1,1,0,100,0),
(232411,71,2647.18,6551.76,369.387,NULL,0,0,1,1,0,100,0),
(232411,72,2649.33,6595,369.387,NULL,0,0,1,1,0,100,0),
(232411,73,2649.8,6614.96,369.387,NULL,0,0,1,1,0,100,0),
(232411,74,2647.24,6652.94,369.387,NULL,0,0,1,1,0,100,0),
(232411,75,2636.95,6707.67,369.387,NULL,0,0,1,1,0,100,0),
(232411,76,2643.18,6750.19,369.387,NULL,0,0,1,1,0,100,0),
(232411,77,2645.4,6791.86,369.387,NULL,0,0,1,1,0,100,0),
(232411,78,2647.35,6810.55,369.387,NULL,0,0,1,1,0,100,0),
(232411,79,2650.48,6840.88,369.387,NULL,0,0,1,1,0,100,0),
(232411,80,2650.2,6851.89,369.387,NULL,0,0,1,1,0,100,0),
(232411,81,2657.72,6877.93,368.776,NULL,0,0,1,1,0,100,0),
(232411,82,2640.48,6907.62,382.581,NULL,0,0,1,1,0,100,0),
(232411,83,2640.74,6938.96,387.526,NULL,0,0,1,1,0,100,0),
(232411,84,2643.3,6971.74,381.665,NULL,0,0,1,1,0,100,0),
(232411,85,2648.06,6994.75,384.332,NULL,0,0,1,1,0,100,0),
(232411,86,2651.75,7019.32,385.748,NULL,0,0,1,1,0,100,0),
(232411,87,2654.48,7035.64,385.554,NULL,0,0,1,1,0,100,0),
(232411,88,2656.02,7054.8,386.109,NULL,0,0,1,1,0,100,0),
(232411,89,2657.69,7076.14,385.664,NULL,0,0,1,1,0,100,0),
(232411,90,2658.8,7094.67,385.164,NULL,0,0,1,1,0,100,0),
(232411,91,2654.27,7113.4,384.442,NULL,0,0,1,1,0,100,0),
(232411,92,2647.89,7134.67,387.054,NULL,0,0,1,1,0,100,0),
(232411,93,2648.83,7153.95,385.276,NULL,0,0,1,1,0,100,0),
(232411,94,2648.11,7173.98,383.97,NULL,0,0,1,1,0,100,0),
(232411,95,2645.76,7189.9,384.082,NULL,0,0,1,1,0,100,0),
(232411,96,2645.2,7211.72,381.609,NULL,0,0,1,1,0,100,0),
(232411,97,2639.58,7225.22,381.609,NULL,0,0,1,1,0,100,0),
(232411,98,2625.79,7238.29,382.943,NULL,0,0,1,1,0,100,0),
(232411,99,2608.06,7255.16,386.137,NULL,0,0,1,1,0,100,0),
(232411,100,2590.56,7275.78,386.832,NULL,0,0,1,1,0,100,0),
(232411,101,2572.15,7292.61,384.249,NULL,0,0,1,1,0,100,0),
(232411,102,2549.41,7309.91,381.525,NULL,0,1000,1,1,0,100,0);


-- Bash'ir Landing Boss Bunny (This is used in the Bashir Boss Summoning also be careful modifying it or its smart scripts.)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23395;

DELETE FROM `creature` WHERE `guid` IN (300200);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300200,23395,530,0,0,1,1,0,3964.3357,5850.131,266.96298,3.01005,30,0,0,20,0,2,0,0,0,'',0,0,NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (300200);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(300200,3002000,0,0,0,0,0,NULL);

DELETE FROM `creature_summon_groups` where `summonerId` = 23395 AND  `summonerType` = 0 AND `groupId` IN (1,2,3,4);
INSERT INTO `creature_summon_groups` (`summonerId`,`summonerType`,`groupId`,`entry`,`position_x`,`position_y`,`position_z`,`orientation`,`summonType`,`summonTime`,`Comment`) VALUES 
-- Phase 1
(23395,0,1,23246,3954.123,5895.753,265.333,4.513785,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3954.405,5883.173,265.7686,3.341078,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3977.1184,5843.121,266.51935,0.1047198,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3995.316,5832.168,266.8185,4.12309,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3962.6763,5860.1143,266.00934,5.000666,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3964.152,5891.268,265.5515,0.9250245,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''), -- 3964.152,5891.268,265.5515
(23395,0,1,23246,4008.742,5831.805,267.5115,4.939476,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3980.986,5834.263,266.3177,1.282679,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3960.026,5851.23,267.0371,3.263047,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,4017.789,5832.946,267.5005,4.570905,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3961.224,5901.752,266.8205,0.4712389,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23246,3966.984,5837.517,265.152,0.721127,6,12000,'Assault on Bash\'ir Landing - Phase 1,2 \'Slavering Slave\''),
(23395,0,1,23425,3932.514,5896.7275,266.5681,3.543018,5,0,'Assault on Bash\'ir Landing - Phase 1 Tower \'Ethereal Ring Control Bunny, Elite\''),
-- Phase 2 includes group id 1 and 2
(23395,0,2,23246,3956.555,5867.063,265.7869,0.721127,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Slavering Slave\''),
(23395,0,2,23246,4006.729,5821.15,266.9615,5.000666,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Slavering Slave\''),
(23395,0,2,23247,3954.099,5896.103,265.4047,4.263914,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3956.501,5867.157,265.7953,2.243402,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3960.875,5901.212,266.748,3.714837,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3967.059,5837.698,265.1926,0.5973462,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3970.29, 5873.223,265.2673,0.3797616,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3972.134,5859.938,266.3955,5.842862,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3975.669,5849.6,267.0623,6.156796,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3991.14,5839.3,266.884, 1.796547,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,3995.352,5832.272,266.8245,2.670354,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
(23395,0,2,23247,4018.153,5833.46,267.4955,6.131096,6,12000,'Assault on Bash\'ir Landing - Phase 2 \'Bash\'ir Subprimal\''),
-- Phase 2 tower phase
(23395,0,3,23247,3987.066,5828.364,266.4626,1.117011,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3982.202,5826.089,265.8585,0.9948376,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3988.97,5822.692,265.44,1.27409,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3953.648,5874.088,266.0405,0.2268928,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3949.731,5876.353,265.7751,0.1745329,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3952.306,5868.657,266.1395,0.3141593,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3962.829,5846.46, 266.5654,0.715585,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3956.881,5847.137,266.8138,0.6632251,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23247,3961.659,5841.467,265.6436,0.7679449,6,12000,'Assault on Bash\'ir Landing - Phase 2 Tower \'Bash\'ir Subprimal\''),
(23395,0,3,23250,3950.263,5872.112,266.1565,0.06981317,5,0,'Assault on Bash\'ir Landing - Phase 2 Tower \'Disruptor Tower\''),
(23395,0,3,23250,3959.747,5844.606,266.2597,2.86234,5,0,'Assault on Bash\'ir Landing - Phase 2 Tower \'Disruptor Tower\''),
(23395,0,3,23250,3985.801,5824.674,265.8477,3.543018,5,0,'Assault on Bash\'ir Landing - Phase 2 Tower \'Disruptor Tower\''),
-- (23395,0,3,23425,3932.514,5896.7275,266.5681,3.543018,5,0,'Assault on Bash\'ir Landing - Phase 2 Tower \'Ethereal Ring Control Bunny, Elite\''),
-- Phase 3
(23395,0,4,23247,3954.099,5896.103,265.4047,4.263914,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3956.501,5867.157,265.7953,2.243402,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3960.875,5901.212,266.748,3.714837,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3967.059,5837.698,265.1926,0.5973462,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3970.29, 5873.223,265.2673,0.3797616,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3972.134,5859.938,266.3955,5.842862,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3975.669,5849.6,267.0623,6.156796,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3991.14,5839.3,266.884, 1.796547,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,3995.352,5832.272,266.8245,2.670354,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23247,4018.153,5833.46,267.4955,6.131096,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Subprimal\''),
(23395,0,4,23332,3960.457,5851.486,267.0367,2.412842,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Reckoner\''),
(23395,0,4,23332,3964.454,5865.78,265.7123,4.060629,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Reckoner\''),
(23395,0,4,23332,3965.698,5852.543,267.077,3.417504,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Reckoner\''),
(23395,0,4,23332,3981.247,5834.633,266.3542,5.053397,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Reckoner\''),
(23395,0,4,23368,3954.14,5883.52,265.8082,3.529384,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Controller\''),
(23395,0,4,23368,3962.268,5880.346,264.35,0.6926048,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Controller\''),
(23395,0,4,23368,3963.943,5891.918,265.5939,3.599896,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Controller\''),
(23395,0,4,23368,4007.123,5821.586,267.0208,1.544307,6,12000,'Assault on Bash\'ir Landing - Phase 3 \'Bash\'ir Controller\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300200,23395) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2339500,2339501,2339502,2339503,2339504,2339505,2339506,2339507,2339508,2339509,2339510,2339511,2339512,2339513,2339514,2339515,2339516,2339517,2339518,2339519,2339520,2339521,2339522,2339523,2339524,2339525,2339526) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300200,0,0,0,11,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Respawn - Set Phase 1'),
(-300200,0,1,0,1,1,100,0,1000,1000,1000,1000,0,0,63,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 1) - Reset Counter 1'),
(-300200,0,2,0,38,0,100,0,1,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 0 - Set Phase 1'),
(-300200,0,3,0,38,0,100,0,1,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 1 - Set Phase 2'),
(-300200,0,4,5,38,26,100,0,1,2,0,0,0,0,63,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 2 (Phase 2,4,5) - Add 1 to Counter 1'), -- Must be only phase 2,4,5 When boss is spawned the Slaves no longer spawn anymore
(-300200,0,5,0,61,0,100,0,0,0,0,0,0,0,87,2339501,2339502,2339503,2339504,2339505,2339506,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 2 (Linked) - Run Random Script'),
(-300200,0,6,0,1,2,100,0,1000,1000,0,0,0,0,107,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 2) - Summon Creature Group 1'),
(-300200,0,7,8,77,2,100,0,1,15,5000,5000,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Counter Reached 15 (Phase 2) - Set Phase 3'),
(-300200,0,8,0,61,0,100,0,0,0,0,0,0,0,12,23249,6,900000,0,0,0,8,0,0,0,0,3971.717,5844.253,266.7054,3.682645,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Flesh Fiend\''),
(-300200,0,9,0,1,30,100,0,10000,10000,10000,10000,0,0,45,1,0,0,0,0,0,19,23246,70,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 2,3,4,5) - Set Data 1 0 on Closest \'Slavering Slave\''),
(-300200,0,10,0,38,0,100,0,1,3,0,0,0,0,80,2339507,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 3 - Run Script'),
-- Phase 2 - It only tracks subprimal deaths. 
(-300200,0,11,0,38,0,100,0,1,4,0,0,0,0,80,2339508,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 4 - Run Script'),
(-300200,0,12,13,38,24,100,0,1,5,0,0,0,0,63,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 5 (Phase 4,5) - Add 1 to Counter 2'), -- The subprimals will respawn when killed.
(-300200,0,13,0,61,0,100,0,0,0,0,0,0,0,87,2339509,2339510,2339511,2339512,2339513,2339514,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 5 (Phase 4,5) (Linked) - Run Random Script'),
(-300200,0,14,0,1,8,100,0,15000,15000,10000,10000,0,0,45,1,0,0,0,0,0,19,23247,70,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 4) - Set Data 1 0 on Closest \'Bash\'ir Subprimal\''), -- Random attack only when towers are not up. Phase 4 only
(-300200,0,15,16,77,8,100,0,2,15,4000,4000,0,0,22,5,0,0,0,0,0,19,23247,70,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Counter 2 Reached 15 (Phase 4) - Set Phase 5'), -- Tower and Defenders spawn
(-300200,0,16,17,61,0,100,0,0,0,0,0,0,0,107,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Counter 2 Reached 15 (Phase 4) (Linked) - Summon Creature Group 3'),
(-300200,0,17,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23425,100,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Counter 2 Reached 15 (Phase 4) (Linked) - Set Data 1 1 on all \'Ethereal Ring Control Bunny, Elite\''),
(-300200,0,18,0,38,0,100,0,1,6,0,0,0,0,63,3,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 6 - Add 1 to Counter 3'),
(-300200,0,19,20,77,16,100,0,3,3,3000,3000,0,0,45,1,2,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Counter Reached 3 on 3 (Phase 5) - Set Data 1 2 on \'Skyguard Aether Tech\''), -- Begin to End Phase 2
(-300200,0,20,21,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23246,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny  - On Counter Reached 3 on 3 (Phase 5) (Linked) - Set Data 1 1 on all \'Slavering Slave\''),
(-300200,0,21,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23247,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny  - On Counter Reached 3 on 3 (Phase 5) (Linked) - Set Data 1 1 on all \'Bash\'ir Subprimal\''),
-- Phase 3 -- tracks all deaths up to 40 and randomizes the attack and respawn it will be interesting to see how loopsided it will be after 40 kills. 
(-300200,0,22,23,38,0,100,0,1,7,0,0,0,0,80,2339515,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 7 - Run Script'),
(-300200,0,23,0,61,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,11,23425,100,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 7 (Linked) - Set Data 1 3 on all \'Ethereal Ring Control Bunny, Elite\''),
(-300200,0,24,25,38,96,100,0,1,8,0,0,0,0,63,4,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 8 (Phase 6,7) - Add 1 to Counter 4'), -- The Reckoners will respawn when killed.
(-300200,0,25,0,61,0,100,0,0,0,0,0,0,0,87,2339516,2339518,2339521,2339523,2339509,2339512,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 8 (Phase 6,7) (Linked) - Run Random Script'), -- This randomizes two locations for each creature in Phase 3
(-300200,0,26,27,38,96,100,0,1,9,0,0,0,0,63,4,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 9 (Phase 6,7) - Add 1 to Counter 4'), -- The Controllers will respawn when killed.
(-300200,0,27,0,61,0,100,0,0,0,0,0,0,0,87,2339517,2339521,2339518,2339523,2339510,2339513,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 9 (Phase 6,7) (Linked) - Run Random Script'), -- This randomizes two locations for each creature in Phase 3
(-300200,0,28,29,38,96,100,0,1,5,0,0,0,0,63,4,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 5 (Phase 6,7) - Add 1 to Counter 4'), -- The Subprimals will respawn when killed.
(-300200,0,29,0,61,0,100,0,0,0,0,0,0,0,87,2339520,2339522,2339516,2339519,2339511,2339514,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 5 (Phase 6,7) (Linked) - Run Random Script'), -- This randomizes two locations for each creature in Phase 3
(-300200,0,30,31,77,32,100,0,4,40,4000,4000,0,0,22,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Counter 4 Reached 40 (Phase 6) - Set Phase 7'), -- The Grand Collector Spawns
(-300200,0,31,0,61,0,100,0,0,0,0,0,0,0,12,23333,6,900000,0,0,0,8,0,0,0,0,3982.51,5840.563,266.6467,1.27409,'Bash\'ir Landing Boss Bunny - On Counter 4 Reached 40 (Phase 6) (Linked) - Summon \'The Grand Collector\''),
(-300200,0,33,0,1,96,100,0,10000,10000,5000,5000,0,0,87,2339524,2339525,2339526,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 6,7) - Run Random Script'), -- Randomize Attacks from all three groups
(-300200,0,34,0,38,0,100,0,2,0,0,0,0,0,80,2339500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 2 0 - Run Script'), -- Outtro
-- Lightning between phases (Placeholder spells - plain call lightning - hopefully will find real spell)
-- (-300200,0,35,36,1,256,100,0,500,4000,4000,12000,0,0,11,37964,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 9) - Cast \'Call Lightning (Cosmetic)\''), -- This is place holder for real lightning spell once I find it. 
(-300200,0,35,36,1,256,100,0,500,4000,3000,12000,0,0,50,191302,2,0,0,0,0,1,0,0,0,0,0,0,-10,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 9) - Summon GO \'Holy Lightning (Vertical)\''), -- like much better still not correct. 
(-300200,0,36,0,61,0,100,0,0,0,0,0,0,0,235,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 9) (Linked) - Pause Waypoint'),
-- (-300200,0,37,38,1,512,100,0,100,1000,3100,6000,0,0,11,37964,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 10) - Cast \'Call Lightning (Cosmetic)\''), -- (More Aggressive) This is place holder for real lightning spell once I find it. 
(-300200,0,37,38,1,512,100,0,100,1000,2100,5000,0,0,50,191302,2,0,0,0,0,1,0,0,0,0,0,0,-10,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 10) - Summon GO \'Holy Lightning (Vertical)\''), -- like much better still not correct. 
(-300200,0,38,0,61,0,100,0,0,0,0,0,0,0,235,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC (Phase 10) (Linked) - Pause Waypoint'),
(-300200,0,39,0,38,0,100,0,1,10,0,0,0,0,22,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 10 - Set Phase 9'),
(-300200,0,40,0,38,0,100,0,1,11,0,0,0,0,22,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Data Set 1 11 - Set Phase 10'),
(-300200,0,41,0,1,0,100,0,10000,10000,10000,10000,0,0,45,1,2,0,0,0,0,10,300228,23445,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - OOC - Set Data 1 2 on \'Etereal Ring Target Bunny, Forge\''), -- Integrate with Mana Debt Slaves event to disable it if it was running when this event starts.

(2339500,9,0,0,0,0,100,0,0,0,0,0,0,0,22,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Phase 8'),
(2339500,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23243,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Assistant\''),
(2339500,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23244,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Adept\''),
(2339500,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23245,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Master\''),
(2339500,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23242,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on all \'Skyguard Ranger\''),
(2339500,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300194,23430,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on \'Skyguard Lieutenant\''),

(2339501,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23246,6,12000,0,0,0,202,15,1,0,0,3966.984,5837.517,265.152,0.721127,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Slavering Slave\''), -- 3954.405 5883.173 265.7686

(2339502,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23246,6,12000,0,0,0,202,15,1,0,0,3964.152,5891.268,265.5515,0.721127,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Slavering Slave\''), -- 3964.152 5891.268 265.5515

(2339503,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23246,6,12000,0,0,0,202,15,1,0,0,3960.026,5851.23,267.0371,3.263047,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Slavering Slave\''), -- 3960.026 5851.23 267.0371

(2339504,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23246,6,12000,0,0,0,202,15,1,0,0,3980.986,5834.263,266.3177,1.282679,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Slavering Slave\''), -- 3980.986 5834.263 266.3177

(2339505,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23246,6,12000,0,0,0,202,15,1,0,0,4008.742,5831.805,267.5115,4.939476,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Slavering Slave\''), -- 4008.742 5831.805 267.5115

(2339506,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23246,6,12000,0,0,0,202,15,1,0,0,3960.026,5851.23,267.0371,3.263047,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Slavering Slave\''), -- 3960.026 5851.23 267.0371

(2339507,9,0,0,0,0,100,0,0,0,0,0,0,0,22,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Phase 8'),
(2339507,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23246,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on all \'Slavering Slave\''),
(2339507,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23249,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Flesh Fiend\''),
(2339507,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23247,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on all \'Bash\'ir Subprimal\''),
(2339507,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23250,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Disruptor Tower\''),
(2339507,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23243,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Assistant\''),
(2339507,9,6,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23244,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Adept\''),
(2339507,9,7,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23245,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Master\''),
(2339507,9,8,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23332,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Reckoner\''),
(2339507,9,9,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23368,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Controller\''),
(2339507,9,10,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23414,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Inquisitor\''),
(2339507,9,11,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23333,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'The Grand Collector\''),
(2339507,9,12,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23350,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'The Grand Collector Mirror Image\''),
(2339507,9,13,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23425,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Ethereal Ring Control Bunny, Elite\''),
(2339507,9,14,0,0,0,100,0,3000,3000,0,0,0,0,111,248,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Game Event Stop 248'),

(2339508,9,0,0,0,0,100,0,0,0,0,0,0,0,107,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Summon Creature Group 1'), -- Phase 2 spawns both groups
(2339508,9,1,0,0,0,100,0,0,0,0,0,0,0,107,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Summon Creature Group 2'),
(2339508,9,2,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Phase 1'), -- Reset Counter
(2339508,9,3,0,0,0,100,0,2000,2000,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Phase 4'),
(2339508,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,11,23425,100,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 3 on all \'Ethereal Ring Control Bunny, Elite\''),

(2339509,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23247,6,12000,0,0,0,202,8,1,0,0,3956.501,5867.157,265.7953,2.243402,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Subprimal\''), -- 3954.405 5883.173 265.7686

(2339510,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23247,6,12000,0,0,0,202,7,1,0,0,3960.875,5901.212,266.748,3.714837,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Subprimal\''), -- 3964.152 5891.268 265.5515

(2339511,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23247,6,12000,0,0,0,202,9,1,0,0,3967.059,5837.698,265.1926,0.5973462,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Subprimal\''), -- 3960.026 5851.23 267.0371

(2339512,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23247,6,12000,0,0,0,202,8,1,0,0,3970.29, 5873.223,265.2673,0.3797616,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Subprimal\''), -- 3980.986 5834.263 266.3177

(2339513,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23247,6,12000,0,0,0,202,8,1,0,0,3975.669,5849.6,267.0623,6.156796,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Subprimal\''), -- 4008.742 5831.805 267.5115

(2339514,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23247,6,12000,0,0,0,202,9,1,0,0,3995.352,5832.272,266.8245,2.670354,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Subprimal\''), -- 3960.026 5851.23 267.0371

(2339515,9,0,0,0,0,100,0,0,0,0,0,0,0,107,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Summon Creature Group 4'),
(2339515,9,1,0,0,0,100,0,1000,1000,0,0,0,0,22,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Phase 6'),

(2339516,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23332,6,12000,0,0,0,202,9,1,0,0,3960.457,5851.486,267.0367,2.412842,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Reckoner\''),

(2339517,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23332,6,12000,0,0,0,202,9,1,0,0,3964.454,5865.78,265.7123,4.060629,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Reckoner\''),

(2339518,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23332,6,12000,0,0,0,202,9,1,0,0,3965.698,5852.543,267.077,3.417504,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Reckoner\''),

(2339519,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23332,6,12000,0,0,0,202,9,1,0,0,3981.247,5834.633,266.3542,5.053397,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Reckoner\''),

(2339520,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23368,6,12000,0,0,0,202,9,1,0,0,3954.14, 5883.52, 265.8082,3.529384,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Controller\''),

(2339521,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23368,6,12000,0,0,0,202,9,1,0,0,3962.268,5880.346,264.35,0.6926048,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Controller\''),

(2339522,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23368,6,12000,0,0,0,202,9,1,0,0,3963.943,5891.918,265.5939,3.599896,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Controller\''),

(2339523,9,0,0,0,0,100,0,0,0,0,0,0,0,12,23368,6,12000,0,0,0,202,9,1,0,0,4007.123,5821.586,267.0208,1.544307,'Bash\'ir Landing Boss Bunny - On Script - Summon \'Bash\'ir Controller\''),

(2339524,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,19,23332,70,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on Closest \'Bash\'ir Reckoner\''),

(2339525,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,19,23368,70,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on Closest \'Bash\'ir Controller\''),

(2339526,9,0,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,19,23247,70,0,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on Closest \'Bash\'ir Subprimal\'');

DELETE FROM `waypoint_data` WHERE `id` IN (3002000);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(3002000,1,3932.514,5896.7275,266.5681,NULL,2200,0,1,0,0,100,0),
(3002000,2,3932.4248,5865.761,267.38983,NULL,2200,0,1,0,0,100,0), -- 3932.4248 5865.761 267.38983
(3002000,3,3937.319,5828.8203,266.0857,NULL,2200,0,1,0,0,100,0), -- 3937.319 5828.8203 266.0857
(3002000,4,3973.7495,5812.631,265.81055,NULL,2200,0,1,0,0,100,0),
(3002000,5,4006.2896,5798.7056,265.3584,NULL,2200,0,1,0,0,100,0),
(3002000,6,3973.7495,5812.631,265.81055,NULL,2200,0,1,0,0,100,0), -- 3973.7495 5812.631 265.81055
(3002000,7,3937.319,5828.8203,266.0857,NULL,2200,0,1,0,0,100,0),
(3002000,8,3932.4248,5865.761,267.38983,NULL,2200,0,1,0,0,100,0);


-- Slavering Slave
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23246;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23246 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23246,0,0,1,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Slavering Slave - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23246,0,1,0,61,0,100,0,0,0,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Slavering Slave - On Just Summoned (Linked) - Start Random Movement'),
(23246,0,2,0,0,0,100,0,10000,15000,12000,18000,0,0,11,40976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Slavering Slave - IC - Cast \'Slimy Spittle\''),
(23246,0,3,0,6,0,100,0,0,0,0,0,0,0,45,1,2,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Slavering Slave - On Death - Set Data 1 2 on \'Bash\'ir Landing Boss Bunny\''),
(23246,0,4,0,38,0,100,0,1,0,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Slavering Slave - On Data Set 1 0 - Attack \'Skyguard Aether Tech\''),
(23246,0,5,0,38,0,100,0,1,1,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Slavering Slave - On Data Set 1 1 - Despawn');


-- Bash'ir Flesh Fiend
UPDATE `creature_template` SET `movementId` = 0 WHERE `entry` = 23249;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 23249 AND `SourceGroup` IN (6)  AND `ConditionTypeOrReference` = 106;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `SourceId`, `SourceGroup`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(22,23249,0,6,0,106,1,0,0,0,1,'Bash\'ir Flesh Fiend - Exclude Slavering Slaves already in combat from Despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23249 AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7,8,9,10);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2324900 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- (23249,0,0,0,0,0,60,0,9000,15000,12000,19000,0,0,11,29939,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - In Combat - Cast \'Infectious Poison\' (Phase 1) (No Repeat)'),
-- (23249,0,1,0,2,0,100,0,0,20,31000,31000,0,0,11,29935,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - Between 0-20% Health - Cast \'Gaping Maw\' (Phase 1) (No Repeat)'),
(23249,0,2,3,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23249,0,3,0,61,0,100,0,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Just Summoned (Linked) - Cast \'Thrash\''),
(23249,0,4,0,1,0,100,512,4000,8000,10000,10000,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - OOC - Attack \'Skyguard Aether Tech\''),
-- (23249,0,5,0,61,0,100,0,1000,1000,0,0,0,0,28,40991,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - OOC (Linked) - Remove Aura \'Ethereal Ring - Eat Friend\''),
(23249,0,5,6,6,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23246,200,1,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Death - Set Data 1 1 on all \'Slavering Slave\''),
(23249,0,6,7,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Death (Linked) - Set Data 1 0 on\'Bash\'ir Landing Boss Bunny\''),
(23249,0,7,0,61,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Death (Linked) - Set Data 1 1 on \'Skyguard Aether Tech\''),
(23249,0,8,0,0,0,100,512,15000,15000,2000,2000,0,0,69,1,0,0,0,0,0,19,23246,7,1,0,0,0,0,0,'Bash\'ir Flesh Fiend - IC - Move to POS Nearest Corpse \'Slavering Slave\''),
(23249,0,9,0,34,0,100,512,1,0,0,0,0,0,80,2324900,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Point 1 Reached - Run Script'),
(23249,0,10,0,38,0,100,512,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Data Set 1 0 - Despawn'),

(2324900,9,0,0,0,0,100,0,0,0,0,0,0,0,11,40991,0,0,0,0,0,19,23246,10,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Script - Cast \'Ethereal Ring - Eat Friend\''),
-- (2324900,9,1,0,0,0,100,0,100,100,0,0,0,0,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Script - Play Emote \'ONESHOT_EAT\''),
-- (2324900,9,1,0,0,0,100,0,1000,1000,0,0,0,0,28,40991,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Script - Remove Aura \'Ethereal Ring - Eat Friend\''),
(2324900,9,1,0,0,0,100,0,100,100,0,0,0,0,27,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Script - Combat Stop'),
(2324900,9,2,0,0,0,100,0,500,500,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Flesh Fiend - On Script - Attack \'Skyguard Aether Tech\'');


-- Bash'ir Subprimal
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23247 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2324700 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23247,0,0,1,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23247,0,1,2,61,0,100,0,0,0,0,0,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Just Summoned (Linked) - Start Random Movement'),
(23247,0,2,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Just Summoned (Linked) - Set Phase 1'),
(23247,0,3,0,0,0,100,0,20000,20000,20000,20000,0,0,11,15232,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - In Combat - Cast \'Shadow Bolt\''), -- added 8 secs for initial walk Timing from CMangos
(23247,0,4,0,0,0,100,0,30000,30000,30000,40000,0,0,80,2324700,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - In Combat - Run Script'),
(23247,0,5,0,6,1,100,0,0,0,0,0,0,0,45,1,5,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Bash\'ir Subprimal - On Death (Phase 1) - Set Data 1 5 on \'Bash\'ir Landing Boss Bunny\''),
(23247,0,6,0,38,0,100,0,1,0,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Subprimal - On Data Set 1 0 - Attack \'Skyguard Aether Tech\''),
(23247,0,7,0,38,0,100,0,1,1,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Data Set 1 1 - Despawn'),
(23247,0,8,0,38,0,100,0,1,2,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Data Set 1 2 - Set Phase 2'),  -- Don't cause a respawn on death.  This is for guards of the towers.

(2324700,9,0,0,0,0,100,0,0,0,0,0,0,0,11,36097,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Subprimal - On Script - Cast \'Blink\''),
(2324700,9,1,0,0,0,100,0,1000,1000,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Subprimal - Attack \'Skyguard Aether Tech\'');


-- Disruptor Tower
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra` = 0 WHERE `entry` = 23250; -- '' 128
                      -- Fix model issues when the spell doesn't work right which happens alot.
UPDATE `creature_template_model` SET `Probability` = 0 WHERE `CreatureID` = 23250 AND `CreatureDisplayID` = 5187; -- 1
UPDATE `creature_template_model` SET `Probability` = 100 WHERE `CreatureID` = 14501 AND `CreatureDisplayID` = 5187; -- 1

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23250 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2325000 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23250,0,0,1,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23250,0,1,2,61,0,100,0,0,0,0,0,0,0,11,40858,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Just Summoned (Linked) - Cast \'SPELL_CANNON_VISUAL\''),
(23250,0,2,3,61,0,100,0,0,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Just Summoned (Linked) - Set Invincibility 1 Hp'),
(23250,0,3,4,61,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Just Summoned (Linked) - Set React State \'Passive\''),
(23250,0,4,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Just Summoned (Linked) - Set Phase 1'),
(23250,0,5,0,1,1,100,512,1000,10000,6000,12000,0,0,12,23424,3,10000,0,0,0,8,0,0,0,0,4017.5679,5892.59,267.8706,0.599688,'Disruptor Tower - OOC (Phase 1) - Summon \'Ethereal Ring Control Bunny\''),
(23250,0,6,0,8,0,100,0,40801,0,0,0,0,0,11,40758,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Disruptor Tower - On Spell Hit \'SPELL_BOLT_BURST \' - Cast \'SPELL_THE_BOLT\' on Invoker'),
(23250,0,7,0,2,0,100,512,0,1,0,0,0,0,80,2325000,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - Between 0-1% Health - Run Script'),
(23250,0,8,0,38,0,100,0,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Data Set 1 0 - Despawn'),
(23250,0,9,0,1,0,100,0,1000,1000,1000,1000,0,0,11,40858,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - OOC - Cast \'SPELL_CANNON_VISUAL\''),
(23250,0,10,0,32,1,100,0,0,5000,7000,10000,0,0,39,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Damage (Phase 1) - Call for Help'),
(23250,0,11,0,1,1,100,0,1000,1000,4000,4000,0,0,45,1,2,0,0,0,0,9,23247,0,4,1,0,0,0,0,'Disruptor Tower - OOC (Phase 1) - Set Data 1 2 on \'Bash\'ir Subprimal\''), -- The guardian subprimals do not cause a respawn

(2325000,9,0,0,0,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Script - Set Phase 2'),
(2325000,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,6,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Disruptor Tower - On Script - Set Data 1 6 on \'Bash\'ir Landing Boss Bunny\''),
(2325000,9,2,0,0,0,100,0,0,0,0,0,0,0,11,40952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Script - Cast \'CANNON_DEATH_VISUAL_START\''),
(2325000,9,3,0,0,0,100,0,3000,4000,0,0,0,0,11,40868,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Script - Cast \'CANNON_DEATH_VISUAL_END\''),
(2325000,9,4,0,0,0,100,0,100,100,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Disruptor Tower - On Script - Despawn');


-- Bash'ir Reckoner
UPDATE `creature_template` SET `movementId` = 0 WHERE `entry` = 23332; -- 164

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23332 AND `source_type` = 0 AND `id` IN (4,5,6,7,8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23332,0,4,5,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Reckoner - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23332,0,5,0,61,0,100,0,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Reckoner - On Just Summoned (Linked) - Start Random Movement'),
(23332,0,6,0,6,0,100,0,0,0,0,0,0,0,45,1,8,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Bash\'ir Subprimal - On Death - Set Data 1 8 on \'Bash\'ir Landing Boss Bunny\''),
(23332,0,7,0,38,0,100,0,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Reckoner - On Data Set 1 0 - Despawn'),
(23332,0,8,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Reckoner - On Data Set 1 1 - Attack \'Skyguard Aether Tech\'');


-- Bash'ir Controller
UPDATE `creature_template` SET `movementId` = 0 WHERE `entry` = 23368; -- 164

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23368 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23368,0,0,0,0,0,75,0,26000,36000,26000,36000,0,0,11,34944,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - In Combat - Cast \'Holy Nova\' (No Repeat)'),
(23368,0,1,0,2,0,100,0,0,40,25000,25000,0,0,11,32130,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - Between 0-40% Health - Cast \'Heal\' (No Repeat)'),
(23368,0,2,0,0,0,75,0,15000,15000,40000,60000,0,0,11,10901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - In Combat - Cast \'Power Word: Shield\' (No Repeat)'),
(23368,0,3,4,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23368,0,4,0,61,0,100,0,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - On Just Summoned (Linked) - Start Random Movement'),
(23368,0,5,0,6,0,100,0,0,0,0,0,0,0,45,1,9,0,0,0,0,10,300200,23395,0,0,0,0,0,0,'Bash\'ir Subprimal - On Death - Set Data 1 9 on \'Bash\'ir Landing Boss Bunny\''),
(23368,0,6,0,38,0,100,0,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Controller - On Data Set 1 0 - Despawn'),
(23368,0,7,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Controller - On Data Set 1 1 - Attack \'Skyguard Aether Tech\'');


-- The Grand Collector
UPDATE `creature_template` SET `AIName`='SmartAI',`movementId` = 0 WHERE `entry` = 23333;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23333 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2333300) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23333,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2333300,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Just Summoned - Run Script'),
(23333,0,1,2,6,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23247,200,1,0,0,0,0,0,'The Grand Collector - On Death - Set Data 1 1 on all \'Bash\'ir Subprimal\''),
(23333,0,2,3,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23332,200,1,0,0,0,0,0,'The Grand Collector - On Death (Linked) - Set Data 1 0 on all \'Bash\'ir Reckoner\''),
(23333,0,3,4,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23368,200,1,0,0,0,0,0,'The Grand Collector - On Death (Linked) - Set Data 1 0 on all \'Bash\'ir Controller\''),
(23333,0,4,5,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23414,200,1,0,0,0,0,0,'The Grand Collector - On Death (Linked) - Set Data 1 0 on all \'Bash\'ir Inquisitor\''),
(23333,0,5,6,61,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23350,200,1,0,0,0,0,0,'The Grand Collector - On Death (Linked) - Set Data 1 0 on all \'The Grand Collector Mirror Image\''),
(23333,0,6,0,61,0,100,0,0,0,0,0,0,0,45,1,3,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'The Grand Collector - On Death (Linked) - Set Data 1 3 on \'Skyguard Aether Tech\''),
(23333,0,7,0,0,1,100,512,20000,20000,20000,20000,0,0,11,40937,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'The Grand Collector - IC (Phase 1) - Cast \'Arcane Volley\''),
(23333,0,8,0,0,1,100,512,15000,15000,15000,15000,0,0,11,40942,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - IC (Phase 1) - Cast \'Resonant Feedback\''),
(23333,0,9,10,2,1,100,513,0,50,0,0,0,0,11,40943,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - Between 0-50% Health (No Repeat) (Phase 1) - Cast \'Mirror Image\''),
(23333,0,10,0,61,0,100,0,0,0,0,0,0,0,11,40944,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - Between 0-50% Health (No Repeat) (Phase 1) (Linked) - Cast \'Mirror Image\''),
(23333,0,11,0,38,0,100,512,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Data Set 1 0 - Despawn'),

(2333300,9,0,0,0,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Cast \'Spirit Spawn-In\''),
(2333300,9,1,0,0,0,100,0,0,0,0,0,0,0,11,41569,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Cast \'Ethereal Ring, Boss 3 spawn-in\''),
(2333300,9,2,0,0,0,100,0,0,0,0,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Set Unit Flags \'Immune to Player\''),
(2333300,9,3,0,0,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Set Unit Flags \'Immune to NPC\''),
(2333300,9,4,0,0,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Set Unit Flags \'Not Selectable\''),
(2333300,9,5,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Set React State \'Passive\''),
(2333300,9,6,0,0,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Say Line 0'),
(2333300,9,7,0,0,0,100,0,0,0,0,0,0,0,11,41275,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Cast \'Ethereal Ring, Summon Boss 3 Lieutenant\''),
(2333300,9,8,0,0,0,100,0,32000,32000,0,0,0,0,11,41275,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Cast \'Ethereal Ring, Summon Boss 3 Lieutenant\''),
(2333300,9,9,0,0,0,100,0,32000,32000,0,0,0,0,11,41275,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Cast \'Ethereal Ring, Summon Boss 3 Lieutenant\''),
(2333300,9,10,0,0,0,100,0,32000,32000,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Remove Unit Flags \'Immune to Player\''),
(2333300,9,11,0,0,0,100,0,0,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Remove  Unit Flags \'Immune to NPC\''),
(2333300,9,12,0,0,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Remove  Unit Flags \'Not Selectable\''),
(2333300,9,13,0,0,0,100,0,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Set React State \'Aggressive\''),
(2333300,9,14,0,0,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Say Line 1'),
(2333300,9,15,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Set Phase 1'),
(2333300,9,16,0,0,0,100,0,0,0,0,0,0,0,28,41569,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector - On Script - Remove Aura \'Ethereal Ring, Boss 3 spawn-in\''),
(2333300,9,17,0,0,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'The Grand Collector - On Script - Attack \'Skyguard Aether Tech\'');

DELETE FROM `creature_loot_template` WHERE `Entry` IN (23333); -- Imagine my surprise at killing him and just getting 1 apexis crystal. This gives apexis crystals, a crap recipe, a crap armor piece, and a large chance for a crap depleted item 
INSERT INTO `creature_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES 
(23333,22903,0,0.2,0,1,2,1,1,'The Grand Collector - Recipe: Insane Strength Potion'),
(23333,23884,0,0.2,0,1,2,1,1,'The Grand Collector - Schematic: Mana Potion Injector'),
(23333,1180003,1180003,99.6,0,1,2,1,1,'The Grand Collector - (ReferenceTable)'),
(23333,24013,24013,0,0,1,1,1,1,'The Grand Collector - (ReferenceTable)'),
(23333,32572,0,100,0,1,0,2,4,'The Grand Collector - Apexis Crystal'),
(23333,32670,0,9.1,0,1,3,1,1,'The Grand Collector - Depleted Two-Handed Axe'),
(23333,32671,0,9.1,0,1,3,1,1,'The Grand Collector - Depleted Mace'),
(23333,32672,0,10.1,0,1,3,1,1,'The Grand Collector - Depleted Badge'),
(23333,32673,0,9.1,0,1,3,1,1,'The Grand Collector - Depleted Dagger'),
(23333,32674,0,9.1,0,1,3,1,1,'The Grand Collector - Depleted Sword'),
(23333,32678,0,10.1,0,1,3,1,1,'The Grand Collector - Depleted Ring'),
(23333,32677,0,9.1,0,1,3,1,1,'The Grand Collector - Depleted Cloak'),
(23333,32679,0,9.1,0,1,3,1,1,'The Grand Collector - Depleted Staff'),
(23333,32675,0,8.1,0,1,3,1,1,'The Grand Collector - Depleted Mail Gauntlets'),
(23333,32676,0,8.1,0,1,3,1,1,'The Grand Collector - Depleted Cloth Bracers');

DELETE FROM `creature_text` WHERE `CreatureID` IN (23333);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23333,0,0,'They called me down from K\'aresh to deal with this band of misfits?  Unbelievable!  Prepare to be collected!',14,0,100,0,0,0,21881,1,''),
(23333,1,0,'Enough!  I will take care of these fools myself!',14,0,100,0,0,0,21887,1,'');


-- The Grand Collector Mirror Image
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23350;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23350 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23350,0,0,1,54,0,100,0,0,0,0,0,0,0,11,17321,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector Mirror Image - On Just Summoned - Cast \'Spirit Spawn-In\''),
(23350,0,1,0,61,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'The Grand Collector Mirror Image - On Just Summoned (Linked) - Attack \'Skyguard Aether Tech\''),
(23350,0,2,0,0,0,100,0,20000,20000,20000,20000,0,0,11,40937,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'The Grand Collector - IC - Cast \'Arcane Volley\''),
(23350,0,3,0,38,0,100,512,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'The Grand Collector Mirror Image - On Data Set 1 0 - Despawn');


-- Bash'ir Inquisitor
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23414 AND `source_type` = 0 AND `id` IN (4,5,6,7);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23414,0,4,5,54,0,100,0,0,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Inquisitor - On Just Summoned - Cast \'Ethereal Teleport\''),
-- (23414,0,5,0,61,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Inquisitor - On Just Summoned (Linked) - Attack \'Skyguard Aether Tech\''),
(23414,0,5,0,61,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,21,5,0,0,0,0,0,0,0,'Bash\'ir Inquisitor - On Just Summoned (Linked) - Attack Nearest Player'),
(23414,0,6,0,1,0,100,0,5000,5000,5000,5000,0,0,49,0,0,0,0,0,0,10,300199,23241,0,0,0,0,0,0,'Bash\'ir Inquisitor - OOC - Attack \'Skyguard Aether Tech\''),
(23414,0,7,0,38,0,100,0,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bash\'ir Inquisitor - On Data Set 1 0 - Despawn');


-- Ethereal Ring Control Bunny
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23424; -- "" 35

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23424 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2342400) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23424,0,0,1,54,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny - On Just Summoned - Store Target List'),
(23424,0,1,0,61,0,100,0,0,0,0,0,0,0,80,2342400,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny - On Just Summoned (Linked) - Run Scriptt'),

(2342400,9,0,0,1,0,100,0,0,0,0,0,0,0,11,40750,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny - On Script - Cast \'SPELL_BOLT_BUNNY\''),
(2342400,9,1,0,1,0,100,0,1000,1000,0,0,0,0,100,1,0,0,0,0,0,204,23307,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny - On Script - Send target List');


-- Ethereal Ring Control Bunny, Elite
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23425;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23425 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23425,0,0,1,54,0,100,0,0,0,0,0,0,0,232,234250,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Just Summoned - Start Waypoint'),
(23425,0,1,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Just Summoned (Linked) - Set Phase 1'),
(23425,0,2,0,38,0,100,0,1,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Data Set 1 0 - Despawn'),
(23425,0,3,0,1,2,100,0,5000,10000,9000,9000,0,0,45,1,0,0,0,0,0,19,23247,6,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 2) - Set Data 1 0 on Closest \'Bash\'ir Subprimal\''), -- Random attack only when towers are not up. This takes over sending them in to attack so ignore those guarding the towers
(23425,0,4,0,38,0,100,0,1,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Data Set 1 1 - Set Phase 2'),
-- (23425,0,5,6,1,4,100,0,500,2000,4500,11000,0,0,11,37964,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 3) - Cast \'Call Lightning (Cosmetic)\''), -- This is place holder for real lightning spell once I find it. 
(23425,0,5,6,1,4,100,0,500,2000,2000,10000,0,0,50,191302,2,0,0,0,0,1,0,0,0,0,0,0,-10,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 3) - Summon GO \'Holy Lightning (Vertical)\''),
(23425,0,6,0,61,0,100,0,0,0,0,0,0,0,235,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 3) (Linked) - Pause Waypoint'),
-- (23425,0,7,8,1,8,100,0,500,1000,3100,6000,0,0,11,37964,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 4) - Cast \'Call Lightning (Cosmetic)\''), -- (More Aggressive) This is place holder for real lightning spell once I find it. 
(23425,0,7,8,1,8,100,0,500,1000,100,3000,0,0,50,191302,2,0,0,0,0,1,0,0,0,0,0,0,-10,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 4) - Summon GO \'Holy Lightning (Vertical)\''),
(23425,0,8,0,61,0,100,0,0,0,0,0,0,0,235,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - OOC (Phase 4) (Linked) - Pause Waypoint'),
(23425,0,9,0,38,0,100,0,1,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Data Set 1 3 - Set Phase 1'),
(23425,0,10,0,38,0,100,0,1,2,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Data Set 1 2 - Set Phase 3'),
(23425,0,11,0,38,0,100,0,1,4,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Control Bunny, Elite - On Data Set 1 4 - Set Phase 4');

DELETE FROM `waypoint_data` WHERE `id` IN (234250);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(234250,1,4010.964,5833.9585,267.47403,NULL,200,0,0,0,0,100,0),
(234250,2,3993.6565,5843.186,266.89612,NULL,200,0,0,0,0,100,0),
(234250,3,3975.3684,5858.254,266.6349,NULL,200,0,0,0,0,100,0),
(234250,4,3970.8953,5869.7744,265.27945,NULL,200,0,0,0,0,100,0),
(234250,5,3969.2234,5884.409,266.25247,NULL,200,0,0,0,0,100,0),
(234250,6,3968.993,5900.543,266.76508,NULL,200,0,0,0,0,100,0),
(234250,7,3969.2234,5884.409,266.25247,NULL,200,0,0,0,0,100,0),
(234250,8,3970.8953,5869.7744,265.27945,NULL,200,0,0,0,0,100,0),
(234250,9,3975.3684,5858.254,266.6349,NULL,200,0,0,0,0,100,0),
(234250,10,3993.6565,5843.186,266.89612,NULL,200,0,0,0,0,100,0);


-- Ethereal Ring Bolt Target Bunny
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23307; -- '' 130

DELETE FROM `spell_script_names` WHERE `spell_id` IN (40799) AND `ScriptName` = 'spell_bashir_disruptor_explosion';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(40799,'spell_bashir_disruptor_explosion');

DELETE FROM `spell_script_names` WHERE `spell_id` = 41560 AND `ScriptName` = 'spell_ethereal_ring_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(41560, 'spell_ethereal_ring_visual');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23307 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2330700,2330701) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23307,0,0,0,8,0,100,1,40758,0,0,0,0,0,80,2330700,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Bolt Target Bunny - On Spell Hit \'SPELL_THE_BOLT\' - Run Script'),
(23307,0,1,0,54,0,100,0,0,0,0,0,0,0,80,2330701,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Bolt Target Bunny - On Just Summoned - Run Script'),

(2330700,9,0,0,0,0,100,0,500,500,0,0,0,0,11,40799,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Bolt Target Bunny - On Script - Cast \'SPELL_DISRUPTOR_EXPLOSION\''),
(2330700,9,1,0,0,0,100,0,2000,2000,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ethereal Ring Bolt Target Bunny - On Script - Die'),

(2330701,9,0,0,0,0,100,0,2000,2000,0,0,0,0,11,40801,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ethereal Ring Bolt Target Bunny - On Script - Cast \'SPELL_BOLT_BURST\'');


-- Etereal Ring Target Bunny, Forge
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 23445;

DELETE FROM `creature` WHERE `guid` IN (300201);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300201,23445,530,0,0,1,1,0,4020.139892578125,5895.0400390625,270.4809875488281,0.31415900588035583,30,0,0,20,0,0,0,0,0,'',0,0,NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300201) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2344500) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-300201,0,1000,0,38,0,100,0,1,0,0,0,0,0,11,41560,0,0,0,0,0,10,300208,23444,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Data Set 1 0 - Cast \'Ethereal Ring Visual, Lightning Aura (Fork)\''),
(-300201,0,1001,0,69,0,100,0,248,0,0,0,0,0,80,2344500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Etereal Ring Target Bunny, Forge - On Game Event End 248 - Run Script'), -- Disaster Cleanup

(2344500,9,0,0,0,0,100,0,2000,2000,0,0,0,0,45,1,1,0,0,0,0,11,23246,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on all \'Slavering Slave\''),
(2344500,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23249,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Flesh Fiend\''),
(2344500,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,11,23247,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 1 on all \'Bash\'ir Subprimal\''),
(2344500,9,3,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23250,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Disruptor Tower\''),
(2344500,9,4,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23243,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Assistant\''),
(2344500,9,5,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23244,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Adept\''),
(2344500,9,6,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23245,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Aether-tech Master\''),
(2344500,9,7,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23332,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Reckoner\''),
(2344500,9,8,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23368,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Controller\''),
(2344500,9,9,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23414,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Bash\'ir Inquisitor\''),
(2344500,9,10,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23333,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'The Grand Collector\''),
(2344500,9,11,0,0,0,100,0,0,0,0,0,0,0,45,1,0,0,0,0,0,11,23425,200,1,0,0,0,0,0,'Bash\'ir Landing Boss Bunny - On Script - Set Data 1 0 on all \'Ethereal Ring Control Bunny, Elite\'');


-- Etereal Ring Target Bunny, Lightning
DELETE FROM `creature` WHERE `guid` IN (300202,300203,300204,300205,300206,300207,300208,300209,300210,300211,300212,300213,300214,300215,300216,300217,300218,300219,300220,300221,300222,300223,300224,300225);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300202,23444,530,0,0,1,1,0,4023.479980468750,5884.759765625,268,5.6723198890686035,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300203,23444,530,0,0,1,1,0,4026.570068359375,5885.069824218750,275.6000061035156,0.5934119820594788,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300204,23444,530,0,0,1,1,0,4025.830078125,5887.439941406250,275.66400146484375,0.31415900588035583,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300205,23444,530,0,0,1,1,0,4025.6201171875,5901.5400390625,276.6510009765625,4.3458700180053710,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300206,23444,530,0,0,1,1,0,4025.820068359375,5899.680175781250,268.0119934082031,4.6774802207946780,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300207,23444,530,0,0,1,1,0,4028.330078125,5901.810058593750,275.7850036621094,4.0142598152160645,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300208,23444,530,0,0,1,1,0,4023.530029296875,5889.8798828125,272.1759948730469,5.4454298019409180,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300209,23444,530,0,0,1,1,0,4026.510009765625,5904.029785156250,268.2770080566406,6.2657299041748050,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300210,23444,530,0,0,1,1,0,4027.8798828125,5899.009765625,276.729003906250,2.2514801025390625,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300211,23444,530,0,0,1,1,0,4029.419921875,5885.520019531250,267.7080078125,3.7699100971221924,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300212,23444,530,0,0,1,1,0,4027.7099609375,5899.270019531250,272.26800537109375,3.75246000289917,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300213,23444,530,0,0,1,1,0,4024.189941406250,5884.319824218750,275.9750061035156,0.017453299835324287,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300214,23444,530,0,0,1,1,0,4028.610107421875,5904.029785156250,272.6059875488281,5.3407101631164550,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300215,23444,530,0,0,1,1,0,4030.2099609375,5899.1298828125,267.7820129394531,4.5727601051330570,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300216,23444,530,0,0,1,1,0,4015.939941406250,5899.609863281250,272.3900146484375,0.08726649731397629,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300217,23444,530,0,0,1,1,0,4011.639892578125,5905.2900390625,276.4200134277344,0.19198599457740784,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300218,23444,530,0,0,1,1,0,4013.969970703125,5905.270019531250,275.74700927734375,0.34906598925590515,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300219,23444,530,0,0,1,1,0,4013.889892578125,5902.669921875,272.156005859375,6.1610097885131840,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300220,23444,530,0,0,1,1,0,4015.969970703125,5895.41015625,270.09600830078125,5.8468499183654785,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300221,23444,530,0,0,1,1,0,4012.260009765625,5910.3701171875,274.1679992675781,3.0194199085235596,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300222,23444,530,0,0,1,1,0,4012.010009765625,5903.189941406250,269.4119873046875,1.5358899831771850,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300223,23444,530,0,0,1,1,0,4013.860107421875,5902.669921875,276.2619934082031,0.5061450004577637,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300224,23444,530,0,0,1,1,0,4016.699951171875,5878.5,274.9110107421875,4.5902199745178220,30,0,0,20,0,0,0,0,0,'',0,0,NULL),
(300225,23444,530,0,0,1,1,0,4002.590087890625,5896.939941406250,275.9830017089844,0.9424780011177063,30,0,0,20,0,0,0,0,0,'',0,0,NULL);


-- Aether-tech Assistant
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23243;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23243 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324300,2324301,2324302) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23243,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2324301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Just Summoned - Run Script'),
(23243,0,1,0,108,0,100,0,11,2324300,0,0,0,0,80,2324302,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Waypoint 11 Reached - Run Script'),
(23243,0,2,0,108,0,100,0,4,2324301,0,0,0,0,80,2324300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Waypoint 4 Reached - Run Script'),
(23243,0,3,0,38,0,100,0,1,0,0,0,0,0,41,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Data Set 1 0 - Despawn'),
(23243,0,4,0,1,0,100,0,1000,1000,1000,1000,0,0,28,41567,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Remove Aura \'Ethereal Ring Visual, Lightning Jumper Aura\''),

(2324300,9,0,0,0,0,100,0,100,100,0,0,0,0,11,41457,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Cast \'SPELL_ETHEREAL_RING_VISUAL\''),
(2324300,9,1,0,0,0,100,0,100,100,0,0,0,0,11,41525,0,0,0,0,0,10,300201,23445,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Cast \'SPELL_ETHEREAL_RING_VISUAL START\''),
(2324300,9,2,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,300201,23445,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Data 1 0 on \'Etereal Ring Target Bunny, Forge\''),
(2324300,9,3,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Say Line 0'),
(2324300,9,4,0,0,0,100,0,500,500,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Emote State \'STATE_USESTANDING_NOSHEATHE\''),

(2324301,9,0,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Fly On'),   -- Smooth transistion in the waypoint_data must be enabled for this fly/disable gravity to work. 
(2324301,9,1,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Hover On'),
(2324301,9,2,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set React State \'Passive\''),
(2324301,9,3,0,0,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Active On'),
(2324301,9,4,0,0,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Unit Flags \'Immune to NPC\''),
(2324301,9,5,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Run On'),
(2324301,9,6,0,0,0,100,0,10,10,0,0,0,0,232,2324300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Start Waypoint'),

(2324302,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Hover Off'),
(2324302,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - UnMount'),
(2324302,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Set Fly Off'),
(2324302,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Assistant - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324302,9,4,0,0,0,100,0,10,10,0,0,0,0,232,2324301,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Aether-tech Assistant - On Script - Start Waypoint");

DELETE FROM `creature_text` WHERE `CreatureID` IN (23243);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23243,0,0,'This forge can make unstable concoctions... to study them,I need Apexis Shards!',14,0,100,0,0,0,21795,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (2324300,2324301);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(2324300,1,3907.27,5895.63,331.033,NULL,0,0,1,1,0,100,0), -- 3907.27 5895.63 331.033
(2324300,2,3916.38,5895.31,306.189,NULL,0,0,1,1,0,100,0), -- 3916.38 5895.31 306.189
(2324300,3,3929.34,5893.62,291.551,NULL,0,0,1,1,0,100,0), -- 3929.34 5893.62 291.551
(2324300,4,3941.82,5894.46,285.106,NULL,0,0,1,1,0,100,0), -- 3941.82 5894.46 285.106
(2324300,5,3953.95,5898.42,280.495,NULL,0,0,1,1,0,100,0), -- 3953.95 5898.42 280.495
(2324300,6,3963.24,5900.63,278.662,NULL,0,0,1,1,0,100,0), -- 3963.24 5900.63 278.662
(2324300,7,3971.23,5905.06,275.717,NULL,0,0,1,1,0,100,0), -- 3971.23 5905.06 275.717
(2324300,8,3980.14,5907.44,273.773,NULL,0,0,1,1,0,100,0), -- 3980.14 5907.44 273.773
(2324300,9,3988.61,5909.2,272.621,NULL,0,0,1,1,0,100,0), -- 3988.61 5909.2 272.621
(2324300,10,3998.4,5905.65,270.62,NULL,0,0,1,1,0,100,0), -- 3998.4 5905.65 270.62
(2324300,11,4003.67,5903.16,267.981,NULL,0,0,1,1,0,100,0), -- 4003.67 5903.16 267.981

(2324301,1,4003.95,5903.13,267.965,NULL,0,0,0,1,0,100,0),
(2324301,2,4007.2,5901.13,267.965,NULL,0,0,0,1,0,100,0),
(2324301,3,4009.95,5899.38,268.215,NULL,0,0,0,1,0,100,0),
(2324301,4,4016.4265,5894.5234,267.87057,0.191986,0,2000,0,1,0,100,0); -- 4017.24 5894.6 267.948


-- Aether-tech Adept
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23244;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23244 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324400,2324401,2324402) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23244,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2324401,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Just Summoned - Run Script'),
(23244,0,1,0,108,0,100,0,11,2324400,0,0,0,0,80,2324402,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Waypoint 11 Reached - Run Script'),
(23244,0,2,0,108,0,100,0,4,2324401,0,0,0,0,80,2324400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Waypoint 4 Reached - Run Script'),
(23244,0,3,0,38,0,100,0,1,0,0,0,0,0,41,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Data Set 1 0 - Despawn'),
(23244,0,4,0,1,0,100,0,1000,1000,1000,1000,0,0,28,41567,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Remove Aura \'Ethereal Ring Visual, Lightning Jumper Aura\''),

(2324400,9,0,0,0,0,100,0,100,100,0,0,0,0,11,41457,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Cast \'SPELL_ETHEREAL_RING_VISUAL\''),
(2324400,9,1,0,0,0,100,0,100,100,0,0,0,0,11,41525,0,0,0,0,0,10,300201,23445,0,0,0,0,0,0,'Aether-tech Adept - On Script - Cast \'SPELL_ETHEREAL_RING_VISUAL START\''),
(2324400,9,2,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,300201,23445,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Data 1 0 on \'Etereal Ring Target Bunny, Forge\''),
(2324400,9,3,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Say Line 0'),
(2324400,9,4,0,0,0,100,0,500,500,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Emote State \'STATE_USESTANDING_NOSHEATHE\''),

(2324401,9,0,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Fly On'),   -- Smooth transistion in the waypoint_data must be enabled for this fly/disable gravity to work. 
(2324401,9,1,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Hover On'),
(2324401,9,2,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set React State \'Passive\''),
(2324401,9,3,0,0,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Active On'),
(2324401,9,4,0,0,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Unit Flags \'Immune to NPC\''),
(2324401,9,5,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Run On'),
(2324401,9,6,0,0,0,100,0,10,10,0,0,0,0,232,2324400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Start Waypoint'),

(2324402,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Hover Off'),
(2324402,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - UnMount'),
(2324402,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Set Fly Off'),
(2324402,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Adept - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324402,9,4,0,0,0,100,0,10,10,0,0,0,0,232,2324401,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Aether-tech Adept - On Script - Start Waypoint");

DELETE FROM `creature_text` WHERE `CreatureID` IN (23244);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23244,0,0,'I am growing amazing crystals from these waters.  For catalysts,I must have more Apexis shards!',14,0,100,0,0,0,21796,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (2324400,2324401);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(2324400,1,3907.27,5895.63,331.033,NULL,0,0,1,1,0,100,0), -- 3907.27 5895.63 331.033
(2324400,2,3916.38,5895.31,306.189,NULL,0,0,1,1,0,100,0), -- 3916.38 5895.31 306.189
(2324400,3,3929.34,5893.62,291.551,NULL,0,0,1,1,0,100,0), -- 3929.34 5893.62 291.551
(2324400,4,3941.82,5894.46,285.106,NULL,0,0,1,1,0,100,0),
(2324400,5,3953.95,5898.42,280.495,NULL,0,0,1,1,0,100,0),
(2324400,6,3963.24,5900.63,278.662,NULL,0,0,1,1,0,100,0),
(2324400,7,3971.23,5905.06,275.717,NULL,0,0,1,1,0,100,0),
(2324400,8,3980.14,5907.44,273.773,NULL,0,0,1,1,0,100,0),
(2324400,9,3988.61,5909.2,272.621,NULL,0,0,1,1,0,100,0),
(2324400,10,3998.4,5905.65,270.62,NULL,0,0,1,1,0,100,0),
(2324400,11,4003.67,5903.16,267.981,NULL,0,1,0,1,0,100,0),

(2324401,1,4003.93,5903.15,267.965,NULL,0,0,0,1,0,100,0),
(2324401,2,4007.18,5900.9,267.965,NULL,0,0,0,1,0,100,0), -- 4007.18 5900.9 267.965
(2324401,3,4016.4348,5891.629,267.8706,NULL,0,0,0,1,0,100,0), -- 4009.68 5899.15 268.215
(2324401,4,4020.5225,5891.393,267.87073,1.5844,0,2000,0,1,0,100,0);


-- Aether-tech Master
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 23245;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 23245 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2324500,2324501,2324502) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23245,0,0,0,54,0,100,0,0,0,0,0,0,0,80,2324501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Just Summoned - Run Script'),
(23245,0,1,0,108,0,100,0,11,2324500,0,0,0,0,80,2324502,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Waypoint 11 Reached - Run Script'),
(23245,0,2,0,108,0,100,0,4,2324501,0,0,0,0,80,2324500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Waypoint 4 Reached - Run Script'),
(23245,0,3,0,38,0,100,0,1,0,0,0,0,0,41,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Data Set 1 0 - Despawn'),
(23245,0,4,0,1,0,100,0,1000,1000,1000,1000,0,0,28,41567,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Remove Aura \'Ethereal Ring Visual, Lightning Jumper Aura\''),

(2324500,9,0,0,0,0,100,0,100,100,0,0,0,0,11,41457,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Cast \'SPELL_ETHEREAL_RING_VISUAL\''),
(2324500,9,1,0,0,0,100,0,100,100,0,0,0,0,11,41525,0,0,0,0,0,10,300201,23445,0,0,0,0,0,0,'Aether-tech Master - On Script - Cast \'SPELL_ETHEREAL_RING_VISUAL START\''),
(2324500,9,2,0,0,0,100,0,100,100,0,0,0,0,45,1,0,0,0,0,0,10,300201,23445,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Data 1 0 on \'Etereal Ring Target Bunny, Forge\''),
(2324500,9,3,0,0,0,100,0,2000,2000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Say Line 0'),
(2324500,9,4,0,0,0,100,0,500,500,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Emote State \'STATE_USESTANDING_NOSHEATHE\''),

(2324501,9,0,0,0,0,100,0,0,0,0,0,0,0,60,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Fly On'),   -- Smooth transistion in the waypoint_data must be enabled for this fly/disable gravity to work. 
(2324501,9,1,0,0,0,100,0,0,0,0,0,0,0,207,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Hover On'),
(2324501,9,2,0,0,0,100,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set React State \'Passive\''),
(2324501,9,3,0,0,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Active On'),
(2324501,9,4,0,0,0,100,0,0,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Unit Flags \'Immune to NPC\''),
(2324501,9,5,0,0,0,100,0,0,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Run On'),
(2324501,9,6,0,0,0,100,0,10,10,0,0,0,0,232,2324500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Start Waypoint'),

(2324502,9,0,0,0,0,100,0,0,0,0,0,0,0,207,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Hover Off'),
(2324502,9,1,0,0,0,100,0,0,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - UnMount'),
(2324502,9,2,0,0,0,100,0,0,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Set Fly Off'),
(2324502,9,3,0,0,0,100,0,0,0,0,0,0,0,234,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Aether-tech Master - On Script - Stop Waypoint'), -- The waypoint transistion must be done in the script like to make it work so the waypoints can be used in Smartscripts
(2324502,9,4,0,0,0,100,0,10,10,0,0,0,0,232,2324501,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Aether-tech Master - On Script - Start Waypoint");

DELETE FROM `npc_vendor` WHERE `entry` = 23245 AND `item` IN (32626,32627,32628,32629,32630,32631);
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`,`VerifiedBuild`) VALUES 
(23245,0,32626,0,0,1981,0), -- Large
(23245,0,32627,0,0,1985,0), -- small
(23245,0,32628,0,0,1981,0), -- Large
(23245,0,32629,0,0,1981,0), -- Large
(23245,0,32630,0,0,1985,0), -- small
(23245,0,32631,0,0,1985,0); -- small

DELETE FROM `creature_text` WHERE `CreatureID` IN (23245);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(23245,0,0,'Its properties are amazing!  Provide me with Apexis crystals,and I\'ll form weapons and armor within crystal geodes.',14,0,100,0,0,0,21797,1,'');

DELETE FROM `waypoint_data` WHERE `id` IN (2324500,2324501);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`velocity`,`delay`,`smoothTransition`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(2324500,1,3907.27,5895.63,331.033,NULL,0,0,1,1,0,100,0),
(2324500,2,3916.38,5895.31,306.189,NULL,0,0,1,1,0,100,0),
(2324500,3,3929.34,5893.62,291.551,NULL,0,0,1,1,0,100,0),
(2324500,4,3941.82,5894.46,285.106,NULL,0,0,1,1,0,100,0),
(2324500,5,3953.95,5898.42,280.495,NULL,0,0,1,1,0,100,0),
(2324500,6,3963.24,5900.63,278.662,NULL,0,0,1,1,0,100,0),
(2324500,7,3971.23,5905.06,275.717,NULL,0,0,1,1,0,100,0),
(2324500,8,3980.14,5907.44,273.773,NULL,0,0,1,1,0,100,0),
(2324500,9,3988.61,5909.2,272.621,NULL,0,0,1,1,0,100,0),
(2324500,10,3998.4,5905.65,270.62,NULL,0,0,1,1,0,100,0),
(2324500,11,4003.67,5903.16,267.981,NULL,0,0,1,1,0,100,0),

(2324501,1,4003.93,5903.11,267.965,NULL,0,0,0,1,0,100,0),
(2324501,2,4006.68,5900.36,267.965,NULL,0,0,0,1,0,100,0),
(2324501,3,4009.93,5896.86,268.215,NULL,0,0,0,1,0,100,0),
(2324501,4,4016.7512,5892.1465,267.8707,1.32645,0,2000,0,1,0,100,0); -- 4015.18,5891.06,267.948
