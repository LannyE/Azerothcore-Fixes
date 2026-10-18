DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14508) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(14508,0,0,0,68,0,100,512,16,0,0,0,0,0,53,0,14508,0,0,0,0,1,0,0,0,0,0,0,0,0,'Short John Mithril - On Event Start - Start WP'),
(14508,0,1,0,40,0,100,0,1,14508,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Short John Mithril - On Reached WP1 - Say'),
(14508,0,2,3,40,0,100,0,15,14508,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Short John Mithril - On Reached WP15 - Say'),
(14508,0,3,0,61,0,100,512,0,0,0,0,0,0,50,179697,10740,0,0,0,0,8,0,0,0,0,-13202.9,276.757,21.8571,2.77507,'Short John Mithril - On Reached WP15 (Linked) - Spawn Chest'),
(14508,0,4,0,40,0,100,512,33,14508,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,4.41568,'Short John Mithril - On Reached WP33 - Set orientation'),
(14508,0,5,0,40,0,100,0,15,14508,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Short John Mithril - On Waypoint 15 Reached - Set Run On"),
(14508,0,6,0,68,0,100,0,16,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Short John Mithril - On Game Event 16 Started - Remove npc flag"),
(14508,0,7,0,40,0,100,0,33,14508,0,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Short John Mithril - On Waypoint 33 Reached - Add npc flag");
