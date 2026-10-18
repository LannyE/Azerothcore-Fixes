/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid in (1379,2149)
LIMIT 0, 1000

-- Date: 2024-01-11 11:27
*/
-- Miran
UPDATE `creature` SET `spawntimesecs`=300 WHERE `guid`=8975;

DELETE FROM `smart_scripts` WHERE `entryorguid`=1379 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (137900,137901) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(1379,0,0,0,19,0,100,512,309,0,0,0,0,0,53,0,1379,0,309,10000,1,7,0,0,0,0,0,0,0,0,'On Quest Accept - WP Start'),
(1379,0,1,2,40,0,100,512,12,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'On WP Reach - WP Pause'),
(1379,0,2,3,61,0,100,512,0,0,0,0,0,0,12,2149,4,30000,0,1,0,8,0,0,0,0,-5683.13,-3618.7,312.98,1.3,'On WP Reach - Summon Creature'),
(1379,0,3,4,61,0,100,512,0,0,0,0,0,0,12,2149,4,30000,0,1,0,8,0,0,0,0,-5661.2,-3609.89,312.5,2.65,'On WP Reach - Summon Creature'),
(1379,0,4,0,61,0,100,512,0,0,0,0,0,0,1,0,6000,0,0,0,0,19,2149,40,0,0,0,0,0,0,'On WP Reach - Talk'),
(1379,0,5,0,40,0,100,0,24,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'On WP Reach - Talk'),
(1379,0,6,0,4,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'On Aggro - Talk'),
(1379,0,7,0,52,0,100,0,0,2149,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'On Text Over - Talk');

DELETE FROM `creature_summon_groups` WHERE `summonerId`=1379;

DELETE FROM `waypoints` WHERE `entry`=1379;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(1379,1,-5759.31,-3437.9,305.068,NULL,0,'Miran'),
(1379,2,-5754.53,-3447.25,303.322,NULL,0,'Miran'),
(1379,3,-5747.61,-3460.78,301.841,NULL,0,'Miran'),
(1379,4,-5739.16,-3477.3,301.651,NULL,0,'Miran'),
(1379,5,-5730.17,-3494.88,301.962,NULL,0,'Miran'),
(1379,6,-5723.29,-3508.34,304.204,NULL,0,'Miran'),
(1379,7,-5718.41,-3517.89,302.778,NULL,0,'Miran'),
(1379,8,-5711.49,-3531.41,304.855,NULL,0,'Miran'),
(1379,9,-5703.01,-3547.99,305.502,NULL,0,'Miran'),
(1379,10,-5696.12,-3561.47,307.576,NULL,0,'Miran'),
(1379,11,-5690.29,-3572.88,309.155,NULL,0,'Miran'),
(1379,12,-5676.49,-3599.86,312.34,NULL,0,'Miran'),
(1379,13,-5674.37,-3625.38,311.243,NULL,0,'Miran'),
(1379,14,-5675.87,-3633.44,311.676,NULL,0,'Miran'),
(1379,15,-5678.63,-3648.37,315.188,NULL,0,'Miran'),
(1379,16,-5680.54,-3658.7,312.664,NULL,0,'Miran'),
(1379,17,-5682.03,-3666.75,314.376,NULL,0,'Miran'),
(1379,18,-5684.37,-3679.35,314.575,NULL,0,'Miran'),
(1379,19,-5687.97,-3698.82,317.591,NULL,0,'Miran'),
(1379,20,-5689.9,-3709.22,316.164,NULL,0,'Miran'),
(1379,21,-5692.24,-3721.88,316.468,NULL,0,'Miran'),
(1379,22,-5694.58,-3734.49,318.374,NULL,0,'Miran'),
(1379,23,-5698.61,-3756.24,322.457,NULL,0,'Miran'),
(1379,24,-5700.1,-3764.29,323.779,NULL,0,'Miran');

-- Dark Iron Raider
DELETE FROM `smart_scripts` WHERE `entryorguid`=2149 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(2149,0,0,0,11,0,100,0,0,0,0,0,0,0,49,0,0,0,0,0,0,19,1379,30,0,0,0,0,0,0,'On Respawn - Attack Start');

-- Huldar
DELETE FROM `gossip_menu` WHERE `MenuID`=4322 AND `TextID`=5501;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=4322;

