DELETE FROM `smart_scripts` WHERE `entryorguid` IN(20209,20218,20417,20418,20436,20438,20439,20460,20440) and `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2020900,2020901,2021800,2021801,2021802,2021803,2021804,2021804,2021805,2021806,2021807,2021808,2041700,2041701,2041702,2041800,2041801,2041802,2043800,2043801,2043802,2043803,2043804,2043805,2043806,2043807,2043808,2043809,2043810,2043811,2043812,2043813,2043814,2043815,2043900,2043901,2044000,2044001,2044002,2044003,2044004,2044005,2044006) and `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(20209,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 1 1 - Say'),
(20209,0,1,0,38,0,100,512,2,2,0,0,0,0,87,2020900,2020901,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 2 2 - Run Randomscript'),
(20209,0,2,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 3 3 - Say'),
(20209,0,3,4,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 4 4 - Say'),
(20209,0,4,5,61,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2946.52,4201.42,163.47,3.54,'B\'naar Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20209,0,5,6,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - Linked with Previous Event - Send Target list to Sunfury Technician'),
(20209,0,6,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - Linked with Previous Event - Set Data to to Sunfury Technician'),
(20209,0,7,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 5 5 - Say'),
(20209,0,8,10,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 6 6 - Say'),
(20209,0,9,0,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 7 7 - Despawn'),
(20209,0,10,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20209,0,11,12,38,0,100,512,8,8,0,0,0,0,33,20209,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'B\'naar Control Console Script - Give Kill Credit'),
(20209,0,12,13,61,0,100,512,0,0,0,0,0,0,15,10299,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'B\'naar Control Console Script - Give Kill Credit'),
(20209,0,13,0,61,0,100,512,0,0,0,0,0,0,15,10329,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'B\'naar Control Console Script - Give Kill Credit'),


(2020900,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2927.36,4212.97,164,4.94,'B\'naar Control Console - Script 1 - Summon Sunfury Technician'),
(2020900,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - Script 1 - Send Target list to Sunfury Technician'),
(2020900,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - Script 1 - Set Data to to Sunfury Technician'),


(2020901,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2933.68,4162.55,164,1.6,'B\'naar Control Console - Script 2 - Summon Sunfury Technician'),
(2020901,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - Script 2 - Send Target list to Sunfury Technician'),
(2020901,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - Script 2 - Set Data to to Sunfury Technician'),


(20218,0,0,0,54,0,40,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Just Summoned - Say'),
(20218,0,1,2,38,0,100,513,1,1,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218,0,2,0,61,0,100,512,0,0,0,0,0,0,87,2021800,2021801,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218,0,3,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,183770,0,0,0,0,0,0,0,'Sunfury Technician - OOC (Phase 1) - Set Data'),
(20218,0,4,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,183956,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data'),
(20218,0,5,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,184311,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data'),
(20218,0,6,0,40,0,100,512,1,0,0,0,0,0,80,2021806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Reached WP1 - Cast Interrupt Shutdown'),
(20218,0,7,8,4,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Agro - Set Phase 0'),
(20218,0,8,9,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On agro - Set agressive'),
(20218,0,9,10,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On agro - Set agressive'),
(20218,0,10,0,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On agro - Set agressive'),
(20218,0,11,12,38,0,100,513,2,2,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218,0,12,0,61,0,100,512,0,0,0,0,0,0,87,2021802,2021803,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Set Defensive'), 
(20218,0,13,14,38,0,100,513,3,3,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218,0,14,0,61,0,100,512,0,0,0,0,0,0,87,2021804,2021805,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218,0,15,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,183770,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data'),
(20218,0,16,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,183956,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data'),
(20218,0,17,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184311,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data'),


(2021800,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021800,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - Script - Start wp'),

(2021801,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021801,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - Script - Start wp'),

(2021802,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021802,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - Script - Start wp'),

(2021803,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021803,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - Script - Start wp'),

(2021804,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021804,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - Script - Start wp'),

(2021805,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021805,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - Script - Start wp'),

(2021806,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.6,'Sunfury Technician - On Reached WP1 - Cast Interrupt Shutdown'),
(2021806,9,1,0,0,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data'),
(2021806,9,2,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Agro - Set Phase 0'),
(2021806,9,3,0,0,0,100,0,1000,1000,0,0,0,0,11,35016,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Reached WP1 Set Phase 1'),

(20417,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 1 1 - Say'),
(20417,0,1,0,38,0,100,512,2,2,0,0,0,0,80,2041700,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 2 2 - Run Script'),
(20417,0,2,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 3 3 - Say'),
(20417,0,3,0,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 4 4 - Say'),
(20417,0,4,5,38,0,100,0,9,9,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2453.88,2737.85,133.27,2.59,'Coruu Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20417,0,5,6,61,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2441.62,2735.32,134.49,1.97,'Coruu Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20417,0,6,7,61,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2450.73,2754.5,134.49,3.29,'Coruu Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20417,0,7,8,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Coruu Control Console - Linked with Previous Event - Send Target list to Sunfury Technician'),
(20417,0,8,0,61,0,100,512,0,0,0,0,0,0,45,2,2,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Coruu Control Console - Linked with Previous Event - Set Data to to Sunfury Technician'),
(20417,0,9,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 5 5 - Say'),
(20417,0,10,12,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 6 6 - Say'),
(20417,0,11,0,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 7 7 - Despawn'),
(20417,0,12,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20417,0,13,14,38,0,100,512,8,8,0,0,0,0,33,20417,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Coruu Control Console Script - Give Kill Credit'),
(20417,0,14,15,61,0,100,512,0,0,0,0,0,0,15,10330,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Coru Control Console Script - Give Kill Credit'),
(20417,0,15,0,61,0,100,512,0,0,0,0,0,0,15,10321,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Coru Control Console Script - Give Kill Credit'),

(2041700,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2445.21,2765.26,134.49,3.93,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041700,9,1,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2429.86,2731.85,134.53,1.31,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041700,9,2,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Coruu Control Console - Script - Send Target list to Sunfury Technician'),
(2041700,9,3,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Coruu Control Console - Script - Set Data to to Sunfury Technician'),


(20418,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 1 1 - Say'),
(20418,0,1,0,38,0,100,512,2,2,0,0,0,0,80,2041800,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 2 2 - Run Script'),
(20418,0,2,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 3 3 - Say'),
(20418,0,3,4,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 4 4 - Say'),
(20418,0,4,5,61,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2956.18,2202.85,165.32,5.45,'Duru Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20418,0,5,6,61,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2975.3,2211.5,165.32,4.55,'Duru Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20418,0,6,7,61,0,100,0,0,0,0,0,0,0,12,20436,1,120000,1,0,0,8,0,0,0,0,2965.02,2217.45,164.16,4.96,'Duru Control Console - Linked with Previous Event - Summon Sunfury Protector'),
(20418,0,7,8,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Duru Control Console - Linked with Previous Event - Send Target list to Sunfury Technician'),
(20418,0,8,9,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20436,0,200,0,0,0,0,0,'Duru Control Console - Linked with Previous Event - Send Target list to Sunfury Protector'),
(20418,0,9,10,61,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Duru Control Console - Linked with Previous Event - Set Data to to Sunfury Technician'),
(20418,0,10,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20436,0,200,0,0,0,0,0,'Duru Control Console - Linked with Previous Event - Set Data to to Sunfury Protector'),
(20418,0,11,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 5 5 - Say'),
(20418,0,12,14,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 6 6 - Say'),
(20418,0,13,0,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 7 7 - Despawn'),
(20418,0,14,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20418,0,15,16,38,0,100,512,8,8,0,0,0,0,33,20418,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Duru Control Console Script - Give Kill Credit'),
(20418,0,16,17,61,0,100,512,0,0,0,0,0,0,15,10338,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Duru Control Console Script - Give Kill Credit'),
(20418,0,17,0,61,0,100,512,0,0,0,0,0,0,15,10322,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Duru Control Console Script - Give Kill Credit'),


(2041800,9,0,0,0,0,100,0,2,2,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2986.8,2205.36,165.37,3.74,'Duru Control Console - Script - Summon Sunfury Technician'),
(2041800,9,1,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2952.91,2191.2,165.32,0.22,'Duru Control Console - Script - Summon Sunfury Technician'),
(2041800,9,2,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Duru Control Console - Script - Send Target list to Sunfury Technician'),
(2041800,9,3,0,0,0,100,0,0,0,0,0,0,0,45,3,3,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Duru Control Console - Script - Set Data to to Sunfury Technician'),


(20436,0,0,0,38,2,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Protector - On Data Set - Attack Stored Target'),
(20436,0,1,0,54,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Just Summoned - Set Phase 2'),
(20436,0,2,0,1,2,100,0,1000,1000,1000,1000,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Protector - OOC - Attack'),


(20438,0,0,1,38,0,100,512,4,4,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 4 4 - Set Reactstate Defensive'),
(20438,0,1,0,61,0,100,512,0,0,0,0,0,0,87,2043900,2043901,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 4 4 - Run Random Script'),
(20438,0,2,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Ara Technician - Out of Combat - Set Data 1 1 (Phase 1) (No Repeat)'),
(20438,0,3,4,40,0,100,0,1,0,0,0,0,0,11,35176,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Waypoint 1 Reached - Cast \'Interrupt Shutdown\''),
(20438,0,4,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Waypoint 1 Reached - Set Event Phase 1'),
(20438,0,5,6,4,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro - Set Event Phase 0'),
(20438,0,6,7,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro - Set Reactstate Aggressive'),
(20438,0,7,8,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro - Start Attacking'),
(20438,0,8,0,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro - Enable Combat Movement'),
(20438,0,9,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Ara Technician - On Evade - Set Data 1 1'),


(20439,0,3,0,38,0,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Technician - On Data Set - Attack Stored Target'),
(20439,0,6,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Ara Techician - On Evade - Set Data'),

(2043900,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2043900,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Engineer - Script - Start wp'),  -- Waypoint starting A


(2043901,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2043901,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Engineer - Script - Start wp'),  -- Waypoint starting A


(20440,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 1 1 - Say'),
(20440,0,1,0,38,0,100,512,2,2,0,0,0,0,87,2044000,2044001,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 2 2 - Run Random Script'),
(20440,0,2,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 3 3 - Say'),
(20440,0,3,4,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 4 4 - Say'),
(20440,0,4,5,61,0,100,0,0,0,0,0,0,0,12,20439,1,120000,1,0,0,8,0,0,0,0,3994.51,4020.46,192.18,0.91,'Ara Control Console - Linked with Previous Event - Summon Ara Engineer'),
(20440,0,5,6,61,0,100,0,0,0,0,0,0,0,12,20460,1,120000,1,0,0,8,0,0,0,0,4021.56,4059.35,193.59,4.44,'Ara Control Console - Linked with Previous Event - Summon Chief Engineer Gork lonn'),
(20440,0,6,7,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20239,0,200,0,0,0,0,0,'Ara Control Console - Linked with Previous Event - Send Target list to Ara Engineer'),
(20440,0,7,8,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20460,0,200,0,0,0,0,0,'Ara Control Console - Linked with Previous Event - Send Target list to Chief Engineer Gork lonn'),
(20440,0,8,9,61,0,100,512,0,0,0,0,0,0,45,4,4,0,0,0,0,9,20239,0,200,0,0,0,0,0,'Ara Control Console - Linked with Previous Event - Set Data to to Ara Engineer'),
(20440,0,9,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20460,0,200,0,0,0,0,0,'Ara Control Console - Linked with Previous Event - Set Data to to Chief Engineer Gork lonn'),
(20440,0,10,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 5 5 - Say'),
(20440,0,11,13,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 6 6 - Say'),
(20440,0,12,0,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 7 7 - Despawn'),
(20440,0,13,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20440,0,14,15,38,0,100,512,8,8,0,0,0,0,33,20440,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Ara Control Console Script - Give Kill Credit'),
(20440,0,15,16,61,0,100,512,0,0,0,0,0,0,15,10365,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Ara Control Console Script - Give Kill Credit'),
(20440,0,16,0,61,0,100,512,0,0,0,0,0,0,15,10323,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Ara Control Console Script - Give Kill Credit'),


(2044000,9,0,0,0,0,100,0,2,2,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4035.11,4038.97,194.27,2.57,'Ara Control Console - Script 1 - Summon Ara Technician'),
(2044000,9,1,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4033.66,4036.79,194.28,2.57,'Ara Control Console - Script 1 - Summon Ara Technician'),
(2044000,9,2,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4037.13,4037.3,194.23,2.57,'Ara Control Console - Script 1 - Summon Ara Technician'),
(2044000,9,3,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,0,200,0,0,0,0,0,'Ara Control Console - Script 1 - Send Target list to Ara Technician'),
(2044000,9,4,0,0,0,100,0,0,0,0,0,0,0,45,4,4,0,0,0,0,9,20438,0,200,0,0,0,0,0,'Ara Control Console - Script 1 - Set Data to to Ara Technician'),


(2044001,9,0,0,0,0,100,0,2,2,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3099.59,4049.3,194.22,0.05,'Ara Control Console - Script 2 - Summon Ara Technician'),
(2044001,9,1,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3999.72,4046.75,194.22,0.05,'Ara Control Console - Script 2 - Summon Ara Technician'),
(2044001,9,2,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3996.81,4048.26,194.22,0.05,'Ara Control Console - Script 2 - Summon Ara Technician'),
(2044001,9,3,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,0,200,0,0,0,0,0,'Ara Control Console - Script 1 - Send Target list to Ara Technician'),
(2044001,9,4,0,0,0,100,0,0,0,0,0,0,0,45,4,4,0,0,0,0,9,20438,0,200,0,0,0,0,0,'Ara Control Console - Script 1 - Set Data to to Ara Technician'),


(20460,0,0,0,38,2,100,0,1,1,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Data Set - Attack Stored Target'),
(20460,0,1,2,7,2,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Evade - Set Data'),
(20460,0,2,0,61,2,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Evade - Despawn'),
(20460,0,3,0,54,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Just Summoned - Set Phase 2'),
(20460,0,4,0,1,2,100,0,1000,1000,1000,1000,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - OOC - Attack'),
(20460,0,5,0,60,0,100,257,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Update - Say Line 0');


-- GameObjects
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(183770,183956,184311,184312) and `source_type`=1 and `id` IN (10,11,12,13,14);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(18395600,18431100,18431200) and `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- B`naar
(183770,1,10,0,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set - Reset Scripts'),


-- Coruu
(183956,1,10,0,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set - Reset Scripts'),


(18395600,9,0,0,0,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - Linked with previous event - Run Script'),
(18395600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - Script - Set Data Coruu Control Console'),
(18395600,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,3,0,0,0,100,0,19000,19000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,4,0,0,0,100,0,20000,20000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,5,0,0,0,100,0,20000,20000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,6,0,0,0,100,0,0,0,0,0,0,0,45,3,3,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,8,0,0,0,100,0,20000,20000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,9,0,0,0,100,0,10000,10000,0,0,0,0,45,4,4,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,10,0,0,0,100,0,10000,10000,0,0,0,0,45,9,9,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,11,0,0,0,100,0,10000,10000,0,0,0,0,45,5,5,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,12,0,0,0,100,0,10000,10000,0,0,0,0,45,6,6,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,13,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,14,0,0,0,100,0,0,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Flags'),

--Duro
(184311,1,10,0,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duru Control Console - On Data Set - Reset Scripts'),


(18431100,9,0,0,0,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duru Control Console - Linked with previous event - Run Script'),
(18431100,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console - Script - Set Data Duru Control Console'),
(18431100,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,3,0,0,0,100,0,14000,14000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,4,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,5,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,6,0,0,0,100,0,15000,15000,0,0,0,0,45,3,3,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,7,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,8,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,9,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,10,0,0,0,100,0,15000,15000,0,0,0,0,45,4,4,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,11,0,0,0,100,0,5000,5000,0,0,0,0,45,5,5,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,12,0,0,0,100,0,10000,10000,0,0,0,0,45,6,6,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,13,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,14,0,0,0,100,0,0,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duru Control Console Script - Set Flags'),


-- Ara
(184312,1,10,0,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set - Reset Scripts'),


(18431200,9,0,0,0,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - Linked with previous event - Run Script'),
(18431200,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - Script - Set Data Ara Control Console'),
(18431200,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,3,0,0,0,100,0,14000,14000,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,4,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,5,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,6,0,0,0,100,0,15000,15000,0,0,0,0,45,3,3,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,7,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,8,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,9,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,10,0,0,0,100,0,15000,15000,0,0,0,0,45,4,4,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,11,0,0,0,100,0,5000,5000,0,0,0,0,45,5,5,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,12,0,0,0,100,0,10000,10000,0,0,0,0,45,6,6,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,13,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,14,0,0,0,100,0,0,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console Script - Set Flags');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN(35016,35176);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 35016, 0, 0, 31, 0, 3, 20226, 0, 0, 0, 0, '', 'Interrupt Shutdown only hits Netherstorm Repair Target'),
(13, 1, 35176, 0, 0, 31, 0, 3, 20226, 0, 0, 0, 0, '', 'Interrupt Shutdown only hits Netherstorm Repair Target');


DELETE FROM `waypoints` WHERE `entry` IN(2021800,2021801,2021802,2021803,2021804,2021805,2021806,2021807,2043600,2043800,2043801,2043802,2043803,2043804,2043805,2043806,2043807,2043808,2043809,2043810,2043811,2043812,2043813,2043814,2043900,2043901,2046000);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(2021800,1,2918.93,4180.71,161.867,NULL,0,'Manforge B\'naar cast point 1'),
(2021801,1,2911.8,4196.94,161.883,NULL,0,'Manforge B\'naar cast point 2'),
(2021802,1,2417.71,2748.97,132.416,NULL,0,'Manforge Coruu cast point 1'),
(2021803,1,2424.12,2765.2,132.368,NULL,0,'Manforge Coruu cast point 2'),
(2021804,1,2969.34,2175.69,163.198,NULL,0,'Manforge Duru cast point 1'),
(2021805,1,2986.23,2184.67,163.204,NULL,0,'Manforge Duru cast point 2'),
(2043900,1,4004.42,4033.56,192.624,NULL,0,'Manforge Ara cast point 1'),
(2043901,1,4024.73,4027.47,192.56,NULL,0,'Manforge Ara cast point 2');