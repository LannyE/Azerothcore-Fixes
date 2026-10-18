/*
-- Query: SELECT * FROM acore_world.smart_scripts where entryorguid in (2390500)
LIMIT 0, 1000

-- Date: 2022-01-07 21:52
*/
DELETE FROM smart_scripts WHERE `entryorguid` = 2390500;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(2390500,9,0,0,0,0,100,0,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Take Down Tethyr: Remove npcflag'),
(2390500,9,1,0,0,0,100,0,2000,2000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Take Down Tethyr: Talk'),
(2390500,9,2,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3904.77,-4635.09,9.62735,5.49334,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,3,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3856.59,-4622.45,9.24753,3.87856,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,4,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3917.6,-4648.53,9.32604,5.56795,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,5,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3890.48,-4620.7,9.55527,4.99383,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,6,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3865.94,-4617.2,9.26262,4.16523,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,7,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3834.8,-4645.41,9.25827,3.61152,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,8,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3826.61,-4655.32,9.21484,3.13243,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,9,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3830.76,-4673.74,9.50962,2.70832,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,10,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3843.65,-4687.59,9.6436,2.43735,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,11,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3858.49,-4703.49,9.17411,2.33525,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,12,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3851.97,-4697.24,9.36834,2.33525,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,13,0,0,0,100,0,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,0,-3924.35,-4656.55,9.15409,5.80749,'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,14,0,0,0,100,0,0,0,0,0,0,12,23899,1,900000,0,0,0,8,0,0,0,0,-3897.37,-4750.63,0,1.79105,'Take Down Tethyr: Summon Tethyr'),
(2390500,9,15,0,0,0,100,0,6000,6000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Take Down Tethyr: Talk'),
(2390500,9,16,0,0,0,100,0,10000,10000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Take Down Tethyr: Talk'),
(2390500,9,17,0,0,0,100,0,0,0,0,0,0,106,16,0,0,0,0,0,14,10824,186432,0,0,0,0,0,0,'Take Down Tethyr: Remove Flag from GO'),
(2390500,9,18,0,0,0,100,0,0,0,0,0,0,106,16,0,0,0,0,0,14,10227,186432,0,0,0,0,0,0,'Take Down Tethyr: Remove Flag from GO'),
(2390500,9,19,0,0,0,100,0,0,0,0,0,0,106,16,0,0,0,0,0,14,11186,186432,0,0,0,0,0,0,'Take Down Tethyr: Remove Flag from GO');
