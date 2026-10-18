/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in  (15685,15692)
LIMIT 0, 1000

-- Date: 2022-12-27 19:45
*/
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 15685;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 15685;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(15685,0,0,0,4,0,35,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Southsea Kidnapper - On Aggro - Say Line 0');

DELETE FROM `creature_text` WHERE `CreatureID` = 15685;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(15685,0,0,'Ye\'ll be feasting on me blade this Winter Veil!  Yeargh!',12,0,100,0,0,0,11397,0,'Southsea Kidnapper'),
(15685,0,1,'No scallywag $c is taking our Winter Veil plunder!  Get \'em!',12,0,100,0,0,0,11398,0,'Southsea Kidnapper'),
(15685,0,2,'These land lubbers are here for the reindeer!  Give \'em the shank!',12,0,100,0,0,0,11399,0,'Southsea Kidnapper'),
(15685,0,3,'It\'s a rescue attempt!  Let no one escape!',12,0,100,0,0,0,11400,0,'Southsea Kidnapper'),
(15685,0,4,'Let me give you my regards for Greatfather Winter, scum...',12,0,100,0,0,0,11401,0,'Southsea Kidnapper'),
(15685,0,5,'Humbug!  Die!',12,0,100,0,0,0,11402,0,'Southsea Kidnapper'),
(15685,0,6,'It\'s a rescue attempt!  Slay them all!',12,0,100,0,0,0,11403,0,'Southsea Kidnapper'),
(15685,0,7,'The only thing Metzen is going to be doing this Winter Veil is roasting on a spit!',12,0,100,0,0,0,11404,0,'Southsea Kidnapper');

DELETE FROM `creature` WHERE `guid` IN (89437,89438,89439,89441,89442);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES 
(89437,15685,0,0,1,0,0,1,1,1,-8082.912,-5277.089,0.9479,1.804,180,0,0,2218,0,0,0,0,0,'',0),
(89438,15685,0,0,1,0,0,1,1,1,-8087.632,-5265.478,0.698,3.351,180,0,0,2218,0,0,0,0,0,'',0),
(89439,15685,0,0,1,0,0,1,1,1,-8091.787,-5266.349,0.655,0.1621,180,0,0,2218,0,0,0,0,0,'',0),
(89441,15685,0,0,1,0,0,1,1,1,-8083.708,-5272.86,0.899,4.938,180,0,0,2218,0,0,0,0,0,'',0),
(89442,15685,0,0,1,0,0,1,1,1,-8065.983,-5265.065,1.0885,1.15097,180,0,0,2218,0,0,0,0,0,'',0);