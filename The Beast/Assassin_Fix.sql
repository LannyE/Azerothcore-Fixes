/* Convert Assassin to Elite.  Should be three elites in the beast's lair no assassins.
DELETE FROM creature WHERE `guid` IN (137972);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(137972,10318,0,0,229,0,0,1,1,1,117.291,-562.613,107.403,5.98648,7200,0,0,1,0,2,0,0,0,'',0,0,NULL);
*/

-- Convert Assassin to Elite.  Should be three elites in the beast's lair no assassins.
UPDATE `creature` SET `id1`=10317,`MovementType`=0 WHERE `guid`=137972;

DELETE FROM creature_addon where guid IN (137972);

DELETE FROM waypoint_data where id in (1379720);

