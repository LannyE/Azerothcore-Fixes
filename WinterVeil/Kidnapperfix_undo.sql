/*
-- Query: SELECT * FROM acore_world.creature where ID1 IN (15685,15692)
LIMIT 0, 1000

-- Date: 2022-12-27 19:53
*/
UPDATE `creature_template` SET `AIName` = "" WHERE `entry` = 15685;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 15685;

DELETE FROM `creature_text` WHERE `CreatureID` = 15685;

DELETE FROM `creature` WHERE `guid` IN (89437,89438,89439,89441,89442);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(89437,15685,0,0,1,0,0,1,1,1,-8065.21,-5317.76,1.69655,2.74004,180,0,0,2218,0,0,0,0,0,'',0),
(89438,15685,0,0,1,0,0,1,1,1,-8063.47,-5312.91,1.55462,-1.76068,180,0,0,2218,0,0,0,0,0,'',0),
(89439,15685,0,0,1,0,0,1,1,1,-8056.21,-5319.81,1.46917,0.562535,180,0,0,2218,0,0,0,0,0,'',0),
(89441,15685,0,0,1,0,0,1,1,1,-8076.72,-5284.68,0.699819,1.34912,180,0,0,2218,0,0,0,0,0,'',0),
(89442,15685,0,0,1,0,0,1,1,1,-8057.25,-5258.35,1.69982,1.15097,180,0,0,2218,0,0,0,0,0,'',0);
