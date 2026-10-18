
UPDATE `creature_template` SET `unit_flags2` = 2050, `AIName`="SmartAI" WHERE `entry`=2937; -- Unit bytes2 + 2  to Hide him since I can't find the summon script.

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2937,293700);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(2937,0,0,1,63,0,100,0,0,0,0,0,0,80,293700,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dagun the Ravenous - Just Summoned - Run Script'),
(2937,0,1,2,61,0,100,0,0,0,0,0,0,50,2872,30,0,0,0,0,8,0,0,0,0,-2371.0698,-4091.2212,8.675876,4.45093,'Dagun the Ravenous - Just Summoned (Linked) - Summon Gameobject \'Enchanted Sea Kelp\''),
(2937,0,2,3,61,0,100,0,0,0,0,0,0,50,2872,30,0,0,0,0,8,0,0,0,0,-2370.2427,-4092.653,8.683057,4.45093,'Dagun the Ravenous - Just Summoned (Linked) - Summon Gameobject \'Enchanted Sea Kelp\''),
(2937,0,3,4,61,0,100,0,0,0,0,0,0,50,2872,30,0,0,0,0,8,0,0,0,0,-2369.0645,-4091.8784,8.697628,4.45093,'Dagun the Ravenous - Just Summoned (Linked) - Summon Gameobject \'Enchanted Sea Kelp\''),
(2937,0,4,0,61,0,100,0,0,0,0,0,0,50,2872,30,0,0,0,0,8,0,0,0,0,-2369.7266,-4090.4812,8.448355,4.45093,'Dagun the Ravenous - Just Summoned (Linked) - Summon Gameobject \'Enchanted Sea Kelp\''),
(2937,0,5,0,6,0,100,0,0,0,0,0,0,41,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dagun the Ravenous - On Just Died - Despawn In 300000 ms'),
(2937,0,6,0,1,0,100,0,300000,300000,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dagun the Ravenous - Out of Combat - Despawn Instant'),

(293700,9,0,0,0,0,100,0,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dagun the Ravenous - On Script - Set Unit_flags2 (Hide)"),  -- Make sure he is hidden
(293700,9,1,0,0,0,100,0,0,0,0,0,0,62,1,0,0,0,0,0,1,0,0,0,0,-2412.3232,-4190.508,-16.898369,1.107975,'Dagun the Ravenous - On Script - Teleport To Pos'),
(293700,9,2,0,0,0,100,0,100,100,0,0,0,19,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dagun the Ravenous - On Script - Set Unit_flags2 (Unhide)"),
(293700,9,3,0,0,0,100,0,0,0,0,0,0,53,0,2937,0,0,0,0,1,0,0,0,0,0,0,0,0,"Dagun the Ravenous - On Script - Start Waypoint");


DELETE FROM `waypoints` WHERE `entry` = 2937;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(2937,1,-2412.3232,-4190.508,-16.998369,1.1079755,0,'Dagun the Ravenous'),
(2937,2,-2408.9807,-4184.17,-11.333543,0,0,'Dagun the Ravenous'),
(2937,3,-2403.8726,-4172.2603,-7.4830797,0,0,'Dagun the Ravenous'),
(2937,4,-2402.8706,-4168.2637,-6.911042,0,0,'Dagun the Ravenous'),
(2937,5,-2399.739,-4161.092,-4.593844,0,0,'Dagun the Ravenous'),
(2937,6,-2396.6104,-4153.926,-1.5156554,0,0,'Dagun the Ravenous'),
(2937,7,-2389.5466,-4137.6655,3.7766397,0,0,'Dagun the Ravenous'),
(2937,8,-2384.0798,-4125.013,6.30286,0,0,'Dagun the Ravenous'),
(2937,9,-2380.0808,-4115.928,7.1212397,0,0,'Dagun the Ravenous'),
(2937,10,-2372.7083,-4098.0015,6.694337,1.202219,0,'Dagun the Ravenous');
