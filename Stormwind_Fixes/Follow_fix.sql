-- Additional Fixes for Stormwind update located in the updates folder where some followers fall behind most likely due to VMAP issues - this lets them catch up

-- Gil and Paige
DELETE FROM `smart_scripts` WHERE `entryorguid` in (2331) and `id` in (2,3) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3504) and `id` in (3,4) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- (3504,0,0,0,1,0,100,0,60000,60000,180000,200000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gil - Out of Combat - Say Random 0 (No Repeat)'),
-- (3504,0,1,0,38,0,100,0,1,0,0,0,0,29,0,160,0,0,0,0,10,90439,2330,0,0,0,0,0,0,'Gil - On Data Set 1 0 - Set Follow'),
-- (3504,0,2,0,38,0,100,0,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gil - On Data Set 1 1 - Say Line 1'),
(3504,0,3,0,103,0,100,0,1,2330,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gil - Near Unit (Karlee Chaddis)- Set Run Off'),
(3504,0,4,0,104,0,100,0,1,2330,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gil - Near Unit Negation (Karlee Chaddis) - Set Run On'),

-- (2331,0,0,0,38,0,100,0,1,0,0,0,0,29,0,200,0,0,0,0,10,90439,2330,0,0,0,0,0,0,'Paige Chaddis - On Data Set 1 0 - Set Follow'),
-- (2331,0,1,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Paige Chaddis - On Data Set 1 1 - Say Line 0'),

(2331,0,2,0,103,0,100,0,1,2330,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Paige Chaddis - Near Unit (Karlee Chaddis)- Set Run Off'),
(2331,0,3,0,104,0,100,0,1,2330,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Paige Chaddis - Near Unit Negation (Karlee Chaddis) - Set Run On');


-- Miss Danna Students
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3505,3507,3508,3509,3510) and `id` in (1,2) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3511,3512) and `id` in (2,3) and `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

-- (3505,0,0,0,38,0,100,0,1,0,0,0,0,29,1,240,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Pat - On Data Set 1 0 - Set Follow'),
(3505,0,1,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pat - Near Unit (Miss Danna)- Set Run Off'),
(3505,0,2,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pat - Near Unit Negation (Miss Danna) - Set Run On'),

-- (3507,0,0,0,38,0,100,0,1,0,0,0,0,29,1,220,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Andi - On Data Set 1 0 - Set Follow'),
(3507,0,1,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Andi - Near Unit (Miss Danna)- Set Run Off'),
(3507,0,2,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Andi - Near Unit Negation (Miss Danna) - Set Run On'),

-- (3508,0,0,0,38,0,100,0,1,0,0,0,0,29,1,160,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Mikey - On Data Set 1 0 - Set Follow'),
(3508,0,1,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mikey - Near Unit (Miss Danna)- Set Run Off'),
(3508,0,2,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mikey - Near Unit Negation (Miss Danna) - Set Run On'),

-- (3509,0,0,0,38,0,100,0,1,0,0,0,0,29,1,120,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Geoff - On Data Set 1 0 - Set Follow'),
(3509,0,1,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Geoff - Near Unit (Miss Danna)- Set Run Off'),
(3509,0,2,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Geoff - Near Unit Negation (Miss Danna) - Set Run On'),

-- (3510,0,0,0,38,0,100,0,1,0,0,0,0,29,1,200,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Twain - On Data Set 1 0 - Set Follow'),
(3510,0,1,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twain - Near Unit (Miss Danna)- Set Run Off'),
(3510,0,2,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Twain - Near Unit Negation (Miss Danna) - Set Run On'),

-- (3511,0,0,0,38,0,100,0,1,0,0,0,0,29,1,180,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Steven - On Data Set 1 0 - Set Follow'),
-- (3511,0,1,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Steven - On Data Set 1 1 - Say 0 0'),
(3511,0,2,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Steven - Near Unit (Miss Danna)- Set Run Off'),
(3511,0,3,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Steven - Near Unit Negation (Miss Danna) - Set Run On'),


-- (3512,0,0,0,38,0,100,0,1,0,0,0,0,29,1,140,0,0,0,0,10,84028,3513,0,0,0,0,0,0,'Jimmy - On Data Set 1 0 - Set Follow'),
-- (3512,0,1,0,38,0,100,0,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jimmy - On Data Set 1 1 - Say 0 0'),
(3512,0,2,0,103,0,100,0,1,3513,1,5,1000,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jimmy - Near Unit (Miss Danna)- Set Run Off'),
(3512,0,3,0,104,0,100,0,1,3513,1,5,3000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jimmy - Near Unit Negation (Miss Danna) - Set Run On');