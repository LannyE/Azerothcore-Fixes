

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=17678;

UPDATE `creature` SET `wander_distance`=0, `MovementType`=0, `spawntimesecs`=345 WHERE `id` IN (11288, 11289); -- 0 0 345
UPDATE `creature` SET `wander_distance`=0, `MovementType`=0 WHERE `guid` IN (92624); -- 0 0

DELETE FROM `creature` WHERE `guid` IN (92824,92831,92823) AND `id1` = 11288;
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(92823,11288,0,0,0,0,0,1,1,1,2510.03,-4164.97,48.65,4.00361,345,0,0,1114,0,0,0,0,0,'',0,0,NULL),
(92824,11288,0,0,0,0,0,1,1,1,2508.49,-4163.12,48.018,-2.16164,345,0,0,1114,0,0,0,0,0,'',0,0,NULL),
(92831,11288,0,0,0,0,0,1,1,1,2509.52,-4164.03,48.3071,-2.55359,345,0,0,1114,0,0,0,0,0,'',0,0,NULL);

-- Spectral Corpse SAI
SET @ENTRY := 11621;

UPDATE `creature_template` SET `AIName`='' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;


-- Spectral Corpse SAI
SET @ENTRY := 11620;

UPDATE `creature_template` SET `AIName`='' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;


-- Spectral Defender SAI
SET @ENTRY := 11289;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id` IN (2,3,4,5);


-- Spectral Betrayer SAI
SET @ENTRY := 11288;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id` IN (1,2,3,4);


DELETE FROM `creature_text` WHERE `CreatureID` IN (11288, 11289);
