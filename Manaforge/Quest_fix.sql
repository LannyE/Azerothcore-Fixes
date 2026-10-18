/*
-- Fix all the Manaforge shutdown quests. 1-15-25  

*/

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(20209,20218,20417,20418,20436,20438,20439,20460,20440) and `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2020900,2020901,2021800,2021801,2021802,2021803,2021804,2021804,2021805,2021806,2021807,2021808,2041700,2041701,2041702,2041800,2041801,2041802,2043800,2043801,2043802,2043803,2043804,2043805,2043806,2043807,2043808,2043809,2043810,2043811,2043812,2043813,2043814,2043815,2043900,2043901,2044000,2044001,2044002,2044003,2044004,2044005,2044006) and `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- B'naar Control Console
(20209,0,0,15,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 1 1 - Say'), -- Link aggro room
(20209,0,1,0,38,0,100,512,2,2,0,0,0,0,87,2020900,2020901,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 2 2 - Run Randomscript'),
(20209,0,2,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 3 3 - Say'),
(20209,0,3,4,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 4 4 - Say'),
(20209,0,4,5,61,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2851.5642,4161.9644,162.5992,0.3946,'B\'naar Control Console - On Data Set 4 4 (Linked) - Summon Sunfury Technician'), -- Changed Coordinates
(20209,0,5,6,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - On Data Set 4 4 (Linked) - Send Target list to Sunfury Technician'),
(20209,0,6,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - On Data Set 4 4 (Linked) - Set Data to Sunfury Technician'),
(20209,0,7,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 5 5 - Say'),
(20209,0,8,9,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 6 6 - Say'),
(20209,0,9,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 6 6 (Linked) - Set Data Manaforge Visual Trigger'),
(20209,0,10,11,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set 7 7 - Despawn'), -- Linked to Technician despawn
(20209,0,11,0,61,0,100,512,0,0,0,0,0,0,45,6,6,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - On Data Set 7 7 (Linked) - Set Data to Sunfury Technician'), -- New
(20209,0,12,13,38,0,100,512,8,8,0,0,0,0,33,20209,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'B\'naar Control Console Script - Give Kill Credit'),
(20209,0,13,14,61,0,100,512,0,0,0,0,0,0,15,10299,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'B\'naar Control Console Script - Give Kill Credit'),
(20209,0,14,0,61,0,100,512,0,0,0,0,0,0,15,10329,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'B\'naar Control Console Script - Give Kill Credit'),

(20209,0,15,16,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,18857,0,60,0,0,0,0,0,'B\'naar Control Console - On Data Set 1 1 (Linked) - Send Target list to Sunfury Warp-Master'), -- New
(20209,0,16,17,61,0,100,512,0,0,0,0,0,0,100,1,0,0,0,0,0,9,18852,0,60,0,0,0,0,0,'B\'naar Control Console - On Data Set 1 1 (Linked) - Send Target list to Sunfury Warp-Engineer'), -- New
(20209,0,17,18,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,9,18852,0,60,1,0,0,0,0,'B\'naar Control Console - On Data Set 1 1 (Linked) - Set Data to Sunfury Warp-Engineer'), -- New
(20209,0,18,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,9,18857,0,60,1,0,0,0,0,'B\'naar Control Console - On Data Set 1 1 (Linked) - Set Data to Sunfury Warp-Master'), -- New


(2020900,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2851.5642,4161.9644,162.5992,0.3946,'B\'naar Control Console - Script 1 - Summon Sunfury Technician'), -- Changed Coordinates
(2020900,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,40,200,0,0,0,0,0,'B\'naar Control Console - Script 1 - Send Target list to Sunfury Technician'),
(2020900,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,40,200,0,0,0,0,0,'B\'naar Control Console - Script 1 - Set Data to to Sunfury Technician'),


(2020901,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2851.5642,4161.9644,162.5992,0.3946,'B\'naar Control Console - Script 2 - Summon Sunfury Technician'), -- Changed Coordinates
(2020901,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,40,200,0,0,0,0,0,'B\'naar Control Console - Script 2 - Send Target list to Sunfury Technician'),
(2020901,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,40,200,0,0,0,0,0,'B\'naar Control Console - Script 2 - Set Data to to Sunfury Technician'),

-- Sunfury Technician
(20218,0,0,1,40,0,100,512,5,0,0,0,0,0,80,2021808,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Reached WP5 - Run Script'), -- Change to waypoint number and linked
(20218,0,1,0,61,0,40,512,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Reached WP5 (Linked) - Say'), -- Change to waypoint 5 linked
(20218,0,2,3,38,0,100,513,1,1,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (B\'naar) - Set Defensive'), -- Changed Ids
(20218,0,3,0,61,0,100,512,0,0,0,0,0,0,87,2021800,2021801,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (Linked) - Run Random Script'), -- Changed Ids
(20218,0,4,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,183770,0,0,0,0,0,0,0,'Sunfury Technician - OOC (Phase 1) - Set Data B\'naar Control Console'), -- Changed Ids
(20218,0,5,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,183956,0,0,0,0,0,0,0,'Sunfury Technician - OOC (Phase 1) - Set Data Coruu Control Console'), -- Changed Ids
(20218,0,6,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,184311,0,0,0,0,0,0,0,'Sunfury Technician - OOC (Phase 1) - Set Data Duro Control Console'), -- Changed Ids
(20218,0,7,8,4,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Aggro - Set Phase 0'),
(20218,0,8,9,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Aggro (Linked) - Set agressive'),
(20218,0,9,10,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Aggro (Linked) - Auto Attack'),
(20218,0,10,0,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Aggro (Linked) - Combat Movement On'),
(20218,0,11,0,38,0,100,512,2,2,0,0,0,0,80,2021802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (Coruu) - Run Script'), -- CHange to specific waypoint
(20218,0,12,0,38,0,100,512,4,4,0,0,0,0,80,2021803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (Coruu) - Run Script'), -- CHange to specific waypoint
(20218,0,13,0,38,0,100,512,5,5,0,0,0,0,80,2021806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (Coruu) - Run Script'), -- CHange to specific waypoint
(20218,0,14,0,38,0,100,513,3,3,0,0,0,0,87,2021804,2021805,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (Duro) - Run Random Script'), -- North and South
(20218,0,15,0,38,0,100,513,7,7,0,0,0,0,80,2021807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set (Duro) - Run Random Script'), -- East
(20218,0,16,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,183770,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data B\'naar Control Console'),
(20218,0,17,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,183956,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data Coruu Control Console'),
(20218,0,18,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184311,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Set Data Duro Control Console'),
(20218,0,19,0,7,0,100,512,0,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Evade - Despawn'), -- New
(20218,0,20,0,38,0,100,513,6,6,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set - Despawn'), -- NEW


(2021800,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021800,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp B\'naar'),

(2021801,9,0,0,0,0,100,0,0,0,0,0,0,0,53,1,2021801,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp B\'naar'),

(2021802,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Defensive'),
(2021802,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2021802,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On  Script - Start wp Coruu'), -- Set defensive 

(2021803,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Defensive'),
(2021803,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2021803,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp Coruu'), -- Set defensive 

(2021804,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Defensive'),
(2021804,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2021804,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp Duro'),

(2021805,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Defensive'),
(2021805,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2021805,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp Duro'),

(2021806,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Defensive'),
(2021806,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2021806,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp Coruu'),

(2021807,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Defensive'),
(2021807,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2021807,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Start wp Duro'),

(2021808,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Orientation (Netherstorm Crystal Target)'),
(2021808,9,1,0,0,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Home POS (Current)'),
(2021808,9,2,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Set Phase 1'),
(2021808,9,3,0,0,0,100,0,1000,1000,0,0,0,0,11,35016,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Script - Cast Interrupt shutdown spell'), -- Condition defines target


-- Coruu Control Console
(20417,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 1 1 - Say'),
(20417,0,1,0,38,0,100,512,2,2,0,0,0,0,80,2041700,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 2 2 - Run Script'),
(20417,0,2,0,38,0,100,512,9,9,0,0,0,0,80,2041701,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 9 9 - Run Script'),
(20417,0,3,0,38,0,100,512,10,10,0,0,0,0,80,2041702,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 10 10 - Run Script'),
(20417,0,4,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 3 3 - Say'),
(20417,0,5,0,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 4 4 - Say'),
(20417,0,6,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 5 5 - Say'),
(20417,0,7,8,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 6 6 - Say'),
(20417,0,8,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 6 6 (Linked) - Set Data Manaforge Visual Trigger'),
(20417,0,9,10,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 7 7 - Despawn'),
(20417,0,10,0,61,0,100,512,0,0,0,0,0,0,45,6,6,0,0,0,0,9,20218,0,200,0,0,0,0,0,'B\'naar Control Console - On Data Set 7 7 (Linked) - Set Data to Sunfury Technician'), -- New
(20417,0,11,12,38,0,100,512,8,8,0,0,0,0,33,20417,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Coruu Control Console Script - On Data Set 8 8 - Give Kill Credit'),
(20417,0,12,13,61,0,100,512,0,0,0,0,0,0,15,10330,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Coru Control Console Script - On Data Set 8 8 (Linked) - Give Kill Credit'),
(20417,0,13,0,61,0,100,512,0,0,0,0,0,0,15,10321,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Coru Control Console Script - On Data Set 8 8 (Linked) - Give Kill Credit'),


(2041700,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2381.2068,2701.5588,133.0852,1.1585,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041700,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,40,200,0,0,0,0,0,'Coruu Control Console - Script - Send Target list to Sunfury Technician'),
(2041700,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,9,20218,40,200,0,0,0,0,0,'Coruu Control Console - Script - Set Data to to Sunfury Technician'),

(2041701,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2435.83,2822.1702,133.0844,4.2876,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041701,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,40,200,0,0,0,0,0,'Coruu Control Console - Script - Send Target list to Sunfury Technician'),
(2041701,9,2,0,0,0,100,0,0,0,0,0,0,0,45,4,4,0,0,0,0,9,20218,40,200,0,0,0,0,0,'Coruu Control Console - Script - Set Data to to Sunfury Technician'),

(2041702,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2468.4119,2734.6199,133.08478,2.6853883,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041702,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,40,200,0,0,0,0,0,'Coruu Control Console - Script - Send Target list to Sunfury Technician'),
(2041702,9,2,0,0,0,100,0,0,0,0,0,0,0,45,5,5,0,0,0,0,9,20218,40,200,0,0,0,0,0,'Coruu Control Console - Script - Set Data to to Sunfury Technician'),


-- Duro Control Console
(20418,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 1 1 - Say'),
(20418,0,1,0,38,0,100,512,2,2,0,0,0,0,80,2041800,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 2 2 - Run Script'), -- South North
(20418,0,2,0,38,0,100,512,9,9,0,0,0,0,80,2041801,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 9 9 - Run Script'), -- West
(20418,0,3,0,38,0,100,512,10,10,0,0,0,0,80,2041802,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 10 10 - Run Script'), -- Protector South
(20418,0,4,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 3 3 - Say'),
(20418,0,5,0,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 4 4 - Say'),
(20418,0,6,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 5 5 - Say'),
(20418,0,7,8,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 6 6 - Say'),
(20418,0,8,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 6 6 (Linked) - Set Data Manaforge Visual Trigger'),
(20418,0,9,10,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set 7 7 - Despawn'),
(20418,0,10,0,61,0,100,512,0,0,0,0,0,0,45,6,6,0,0,0,0,9,20218,0,200,0,0,0,0,0,'Duro Control Console - On Data Set 7 7 (Linked) - Set Data to Sunfury Technician'), -- New
(20418,0,11,12,38,0,100,512,8,8,0,0,0,0,33,20418,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Duro Control Console Script - On Data Set 8 8 - Give Kill Credit'),
(20418,0,12,13,61,0,100,512,0,0,0,0,0,0,15,10338,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Duro Control Console Script - On Data Set 8 8 (Linked) - Give Kill Credit'),
(20418,0,13,0,61,0,100,512,0,0,0,0,0,0,15,10322,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Duro Control Console Script - On Data Set 8 8 (Linked) - Give Kill Credit'),


(2041800,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,3007.9553,2110.4246,163.9203,1.9738302,'Duro Control Console - Script - Summon Sunfury Technician'), -- South North
(2041800,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,75,90,0,0,0,0,0,'Duro Control Console - Script - Send Target list to Sunfury Technician'),
(2041800,9,2,0,0,0,100,0,0,0,0,0,0,0,45,3,3,0,0,0,0,9,20218,75,90,0,0,0,0,0,'Duro Control Console - Script - Set Data 3 3 to Sunfury Technician'),

(2041801,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,0,2953.7947,2235.7236,163.9203,5.09579,'Duro Control Console - Script - Summon Sunfury Technician'), -- East
(2041801,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,50,58,0,0,0,0,0,'Duro Control Console - Script - Send Target list to Sunfury Technician'),
(2041801,9,2,0,0,0,100,0,0,0,0,0,0,0,45,7,7,0,0,0,0,9,20218,50,58,0,0,0,0,0,'Duro Control Console - Script - Set Data 7 7 to Sunfury Technician'),

(2041802,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20436,1,120000,1,0,0,8,0,0,0,0,3007.9553,2110.4246,163.9203,1.9738302,'Duro Control Console - Script - Summon Sunfury Protector'), -- South
(2041802,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20436,70,90,0,0,0,0,0,'Duro Control Console - Script - Send Target list to Sunfury Protector'),
(2041802,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20436,70,90,0,0,0,0,0,'Duro Control Console - Script - Set Data 1 1 to Sunfury Protector'),


-- Sunfury Protector
(20436,0,0,1,38,0,100,0,1,1,0,0,0,0,53,1,2043600,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Data Set 1 1 - Start wp Duro'),
(20436,0,1,0,61,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Technician - On Data Set 1 1 (Linked) - Set Defensive'),
(20436,0,2,3,40,0,100,512,5,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Protector - On Reached WP5 - Attack Stored Target'),
(20436,0,3,0,61,0,100,512,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Reached WP5 (Linked) - Set Phase 2'),
(20436,0,4,0,1,2,100,0,1000,1000,1000,1000,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Sunfury Protector - OOC - Attack'),
(20436,0,5,6,4,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Aggro - Set Phase 0'),
(20436,0,6,7,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Aggro (Linked) - Set agressive'),
(20436,0,7,8,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Aggro (Linked) - Auto Attack'),
(20436,0,8,0,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Sunfury Protector - On Aggro (Linked) - Combat Movement On'),


-- Ara Control Console
(20440,0,0,0,38,0,100,0,1,1,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 1 1 - Say'),
(20440,0,1,0,38,0,100,512,2,2,0,0,0,0,80,2044000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 2 2 - Run Script'), -- Wave 1
(20440,0,2,0,38,0,100,0,3,3,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 3 3 - Say'),
(20440,0,3,0,38,0,100,0,4,4,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 4 4 - Say'),
(20440,0,4,0,38,0,100,0,5,5,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 5 5 - Say'),
(20440,0,5,6,38,0,100,0,6,6,0,0,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 6 6 - Say'),
(20440,0,6,0,61,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 6 6 (Linked) - Set Data Manaforge Visual Trigger'),
(20440,0,7,8,38,0,100,512,7,7,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 7 7 - Despawn'),
(20440,0,8,9,61,0,100,512,0,0,0,0,0,0,45,16,16,0,0,0,0,9,20438,0,120,0,0,0,0,0,'Ara Control Console - On Data Set 16 16 (Linked) - Set Data 16 16 to Ara Technician'),
(20440,0,9,10,61,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,9,20439,0,120,0,0,0,0,0,'Ara Control Console - On Data Set 16 16 (Linked) - Set Data 3 3 to Ara Engineer'),
(20440,0,10,0,61,0,100,512,0,0,0,0,0,0,45,2,2,0,0,0,0,9,20460,0,120,0,0,0,0,0,'Ara Control Console - On Data Set 2 2 (Linked) - Set Data 2 2 to Chief Engineer Gork lonn'),
(20440,0,11,12,38,0,100,512,8,8,0,0,0,0,33,20440,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Ara Control Console Script - On Data Set 8 8 - Give Kill Credit'),
(20440,0,12,13,61,0,100,512,0,0,0,0,0,0,15,10365,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Ara Control Console Script - On Data Set 8 8 (Linked) - Give Kill Credit'),
(20440,0,13,0,61,0,100,512,0,0,0,0,0,0,15,10323,0,0,0,0,0,12,2,0,0,0,0,0,0,0,'Ara Control Console Script - On Data Set 8 8 (Linked) - Give Kill Credit'),
(20440,0,14,0,38,0,100,512,9,9,0,0,0,0,80,2044001,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 9 9 - Run Random Script'), -- Wave 1.5
(20440,0,15,0,38,0,100,512,10,10,0,0,0,0,80,2044002,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 10 10 - Run Script'), -- Wave 2
(20440,0,16,0,38,0,100,512,11,11,0,0,0,0,80,2044003,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 11 11 - Run Script'), -- Wave 3
(20440,0,17,0,38,0,100,512,12,12,0,0,0,0,80,2044004,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 12 12 - Run Script'),  -- Wave 4
(20440,0,18,0,38,0,100,512,13,13,0,0,0,0,80,2044005,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 13 13 - Run Script'),  -- Wave 4.5
(20440,0,19,0,38,0,100,512,14,14,0,0,0,0,80,2044006,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 14 14 - Run cript'),  -- Wave 5


-- Wave 1 -- East - North side run
(2044000,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3991.0762,3937.0596,192.81842,1.31,'Ara Control Console - On Script - Summon Ara Technician'),
(2044000,9,1,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20438,90,94,0,0,0,0,0,'Ara Control Console - On Script - Set Data 1 1 to Ara Technician'),
(2044000,9,2,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3992.865,3934.0818,192.81831,1.31,'Ara Control Console - On Script - Summon Ara Technician'),
(2044000,9,3,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,9,20438,94,97,0,0,0,0,0,'Ara Control Console - On Script - Set Data 2 2 to Ara Technician'),
(2044000,9,4,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3987.7388,3932.3044,192.81831,1.31,'Ara Control Console - On Script - Summon Ara Technician'),
(2044000,9,5,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Technician'),
(2044000,9,6,0,0,0,100,0,0,0,0,0,0,0,45,3,3,0,0,0,0,9,20438,97,150,0,0,0,0,0,'Ara Control Console - On Script - Set Data 3 3 to Ara Technician'),


-- Wave 1.5 -- East - South side run
(2044001,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3991.0762,3937.0596,192.81842,1.31,'Ara Control Console - On Script - Summon Ara Technician'),
(2044001,9,1,0,0,0,100,0,0,0,0,0,0,0,45,4,4,0,0,0,0,9,20438,90,94,0,0,0,0,0,'Ara Control Console - On Script - Set Data 4 4 to Ara Technician'),
(2044001,9,2,0,0,0,100,0,100,1000,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3992.865,3934.0818,192.81831,1.31,'Ara Control Console - On Script - Summon Ara Technician'),
(2044001,9,3,0,0,0,100,0,0,0,0,0,0,0,45,5,5,0,0,0,0,9,20438,94,97,0,0,0,0,0,'Ara Control Console - On Script - Set Data 5 5 to Ara Technician'),
(2044001,9,4,0,0,0,100,0,100,100,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3987.7388,3932.3044,192.81831,1.31,'Ara Control Console - On Script - Summon Ara Technician'),
(2044001,9,5,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Technician'),
(2044001,9,6,0,0,0,100,0,0,0,0,0,0,0,45,6,6,0,0,0,0,9,20438,97,150,0,0,0,0,0,'Ara Control Console - On Script - Set Data 6 6 to Ara Technician'), -- Will need to spread them out and get distances right to hit each one with the correct Data set

-- Wave 2
(2044002,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3933.0383,4033.5093,192.81863,6.03,'Ara Control Console - On Script - Summon Ara Technician'),
(2044002,9,1,0,0,0,100,0,0,0,0,0,0,0,45,7,7,0,0,0,0,9,20438,75,79,0,0,0,0,0,'Ara Control Console - On Script - Set Data 7 7 to Ara Technician'),
(2044002,9,2,0,0,0,100,0,100,100,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3930.3264,4032.2341,192.81863,6.03,'Ara Control Console - On Script - Summon Ara Technician'),
(2044002,9,3,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,9,20438,79,82,0,0,0,0,0,'Ara Control Console - On Script - Set Data 8 8 to Ara Technician'),
(2044002,9,4,0,0,0,100,0,100,100,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3929.124,4036.2134,192.81863,6.03,'Ara Control Console - On Script - Summon Ara Technician'),
(2044002,9,5,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Technician'),
(2044002,9,6,0,0,0,100,0,0,0,0,0,0,0,45,9,9,0,0,0,0,9,20438,82,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 9 9 to Ara Technician'),


-- Wave 3
(2044003,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4087.8726,3994.9138,192.81796,2.82,'Ara Control Console - On Script - Summon Ara Technician'),
(2044003,9,1,0,0,0,100,0,0,0,0,0,0,0,45,10,10,0,0,0,0,9,20438,75,80,0,0,0,0,0,'Ara Control Console - On Script - Set Data 10 10 to Ara Technician'),
(2044003,9,2,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4090.0613,3996.3489,192.81796,2.82,'Ara Control Console - On Script - Summon Ara Technician'),
(2044003,9,3,0,0,0,100,0,0,0,0,0,0,0,45,11,11,0,0,0,0,9,20438,80,83,0,0,0,0,0,'Ara Control Console - On Script - Set Data 11 11 to Ara Technician'),
(2044003,9,4,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4091.7195,3992.2544,192.81796,2.82,'Ara Control Console - On Script - Summon Ara Technician'),
(2044003,9,5,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Technician'),
(2044003,9,6,0,0,0,100,0,0,0,0,0,0,0,45,12,12,0,0,0,0,9,20438,83,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 12 12 to Ara Technician'),
(2044003,9,7,0,0,0,100,0,0,0,0,0,0,0,12,20439,1,120000,1,0,0,8,0,0,0,0,4091.3555,3994.1074,192.81815,2.82,'Ara Control Console -On Script - Summon Ara Engineer'),
(2044003,9,8,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20439,70,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Engineer'),
(2044003,9,9,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20439,70,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 1 1 to Ara Engineer'),



-- Wave 4 -- Walk
(2044004,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3933.0383,4033.5093,192.81863,6.03,'Ara Control Console - On Script - Summon Ara Technician'),
(2044004,9,1,0,0,0,100,0,0,0,0,0,0,0,45,7,7,0,0,0,0,9,20438,75,79,0,0,0,0,0,'Ara Control Console - On Script - Set Data 7 7 to Ara Technician'),
(2044004,9,2,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3930.3264,4032.2341,192.81863,6.03,'Ara Control Console - On Script - Summon Ara Technician'),
(2044004,9,3,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,9,20438,79,82,0,0,0,0,0,'Ara Control Console - On Script - Set Data 8 8 to Ara Technician'),
(2044004,9,4,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,3929.124,4036.2134,192.81863,6.03,'Ara Control Console - On Script - Summon Ara Technician'),
(2044004,9,5,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Technician'),
(2044004,9,6,0,0,0,100,0,0,0,0,0,0,0,45,9,9,0,0,0,0,9,20438,82,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 9 9 to Ara Technician'),


-- Wave 4.5 - Run
(2044005,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4029.4995,4091.5173,192.81816,4.49,'Ara Control Console - On Script - Summon Ara Technician'),
(2044005,9,1,0,0,0,100,0,0,0,0,0,0,0,45,13,13,0,0,0,0,9,20438,60,64,0,0,0,0,0,'Ara Control Console - On Script - Set Data 13 13 to Ara Technician'),
(2044005,9,2,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4028.6462,4094.221,192.81816,4.49,'Ara Control Console - On Script - Summon Ara Technician'),
(2044005,9,3,0,0,0,100,0,0,0,0,0,0,0,45,14,14,0,0,0,0,9,20438,64,67,0,0,0,0,0,'Ara Control Console - On Script - Set Data 14 14 to Ara Technician'),
(2044005,9,4,0,0,0,100,0,0,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,0,4031.8965,4096.5913,192.81795,4.49,'Ara Control Console - On Script - Summon Ara Technician'),
(2044005,9,5,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Technician'),
(2044005,9,6,0,0,0,100,0,0,0,0,0,0,0,45,15,15,0,0,0,0,9,20438,67,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 15 15 to Ara Technician'),
(2044005,9,7,0,0,0,100,0,0,0,0,0,0,0,12,20439,1,120000,1,0,0,8,0,0,0,0,3928.908,4034.6587,192.818 ,4.49,'Ara Control Console -On Script - Summon Ara Engineer'),
(2044005,9,8,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20439,70,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Ara Engineer'),
(2044005,9,9,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,9,20439,70,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 2 2 to Ara Engineer'),


-- Wave 5
(2044006,9,0,0,0,0,100,0,0,0,0,0,0,0,12,20460,1,120000,1,0,0,8,0,0,0,0,4091.3555,3994.1074,192.81815,2.82,'Ara Control Console - On Script - Summon Chief Engineer Gork lonn'),
(2044006,9,1,0,0,0,100,0,0,0,0,0,0,0,100,1,0,0,0,0,0,9,20460,40,200,0,0,0,0,0,'Ara Control Console - On Script - Send Target list to Chief Engineer Gork lonn'),
(2044006,9,2,0,0,0,100,0,0,0,0,0,0,0,45,1,1,0,0,0,0,9,20460,40,200,0,0,0,0,0,'Ara Control Console - On Script - Set Data 1 1 to Chief Engineer Gork lonn'),



-- Ara Technician
(20438,0,0,0,38,0,100,512,1,1,0,0,0,0,80,2043801,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 1 1 - Run Script'),
(20438,0,1,0,38,0,100,512,2,2,0,0,0,0,80,2043802,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 2 2 - Run Script'),
(20438,0,2,0,38,0,100,512,3,3,0,0,0,0,80,2043803,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 3 3 - Run Script'),
(20438,0,3,0,38,0,100,512,4,4,0,0,0,0,80,2043804,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 4 4 - Run Script'),
(20438,0,4,0,38,0,100,512,5,5,0,0,0,0,80,2043805,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 5 5 - Run Script'),
(20438,0,5,0,38,0,100,512,6,6,0,0,0,0,80,2043806,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 6 6 - Run Script'),
(20438,0,6,0,38,0,100,512,7,7,0,0,0,0,80,2043807,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 7 7 - Run Script'),
(20438,0,7,0,38,0,100,512,8,8,0,0,0,0,80,2043808,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 8 8 - Run Script'),
(20438,0,8,0,38,0,100,512,9,9,0,0,0,0,80,2043809,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 9 9 - Run Script'),
(20438,0,9,0,38,0,100,512,10,10,0,0,0,0,80,2043810,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 10 10 - Run Script'),
(20438,0,10,0,38,0,100,512,11,11,0,0,0,0,80,2043811,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 11 11 - Run Script'),
(20438,0,11,0,38,0,100,512,12,12,0,0,0,0,80,2043812,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 12 12 - Run Script'),
(20438,0,12,0,38,0,100,512,13,13,0,0,0,0,80,2043813,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 13 13 - Run Script'),
(20438,0,13,0,38,0,100,512,14,14,0,0,0,0,80,2043814,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 14 14 - Run Script'),
(20438,0,14,0,38,0,100,512,15,15,0,0,0,0,80,2043815,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 15 15 - Run Script'),
(20438,0,15,0,1,1,100,513,12000,12000,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Ara Technician - Out of Combat (Phase 1) - Set Data 1 1 Ara Control Console'),
(20438,0,16,0,40,0,100,0,5,0,0,0,0,0,80,2043800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Waypoint 5 Reached - Run Script'),
(20438,0,17,18,4,0,100,512,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro - Set Event Phase 0'),
(20438,0,18,19,61,0,100,512,0,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro (Linked) - Set Reactstate Aggressive'),
(20438,0,19,20,61,0,100,512,0,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro (Linked) - Auto Attack'),
(20438,0,20,0,61,0,100,512,0,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Aggro (Linked) - Enable Combat Movement'),
(20438,0,21,0,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Ara Technician - On Evade - Set Data 1 1 Ara Control Console'),
(20438,0,22,0,7,0,100,512,0,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Evade - Despawn'), -- New
(20438,0,23,0,38,0,100,513,16,16,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Data Set 16 16 - Despawn'), -- NEW


(2043800,9,0,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,19,19421,60,0,0,0,0,0,0,'Ara Technician - On Script - Set Orientation (Netherstorm Crystal Target)'),
(2043800,9,1,0,0,0,100,0,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Home POS (Current)'),
(2043800,9,2,0,0,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Phase 1'),
(2043800,9,3,0,0,0,100,0,1000,1000,0,0,0,0,11,35016,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Cast Interrupt shutdown spell'), -- Condition defines target

-- Wave 1 - Run
(2043801,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043801,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043800,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive 

(2043802,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043802,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043801,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

(2043803,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043803,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043802,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

-- Wave 1.5 - Run
(2043804,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043804,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043803,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive 

(2043805,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043805,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043804,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

(2043806,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043806,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043805,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

-- Wave 2 - walk
(2043807,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043807,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,2043806,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive 

(2043808,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043808,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,2043807,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

(2043809,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043809,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,2043808,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

-- Wave 3 - walk
(2043810,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043810,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,2043809,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive 

(2043811,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043811,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,2043810,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

(2043812,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043812,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,2043811,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

-- Wave 4 - Run
(2043813,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043813,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043812,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive 

(2043814,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043814,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043813,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive

(2043815,9,0,0,0,0,100,0,0,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Set Defensive'),
(2043815,9,1,0,0,0,100,0,0,0,0,0,0,0,53,1,2043814,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Technician - On Script - Start wp Ara'), -- Set defensive


-- Ara Engineer
(20439,0,0,0,38,0,100,0,1,1,0,0,0,0,53,1,2043900,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Engineer - On Data Set 1 1 - Start WP'), -- Wave 3
(20439,0,1,0,38,0,100,0,2,2,0,0,0,0,53,1,2043901,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Engineer - On Data Set 2 2 - Start WP'), -- Wave 4
(20439,0,2,0,40,0,100,512,5,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Ara Engineer - On Waypoint 5 Reached - Attack Stored Target'),
(20439,0,3,4,7,0,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Ara Engineer - On Evade - Set Data 1 1 Ara Control Console'),
(20439,0,4,0,61,2,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Engineer - On Evade (Linked) - Despawn'),
(20439,0,5,0,38,0,100,513,3,3,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Engineer - On Data Set 3 3 - Despawn'), -- NEW


-- Chief Engineer Gork lonn
(20460,0,0,0,38,0,100,512,1,1,0,0,0,0,53,1,2046000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Data Set 1 1 - Start WP'),
(20460,0,1,2,7,2,100,512,0,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Evade (Phase 2) - Set Data 1 1 Ara Control Console'),
(20460,0,2,0,61,2,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Evade (Phase 2) (Linked) - Despawn'),
(20460,0,3,4,40,0,100,512,5,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Waypoint 5 Reached - Set Phase 2'),  -- Do we need Phase 2????
(20460,0,4,0,61,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - OOC (Linked) - Attack Stored Target'),
(20460,0,5,0,60,0,100,257,1000,1000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Update - Say Line 0'),  -- Not sure how this works or why it isn't just on spawn or waypoint
(20460,0,6,0,38,0,100,513,2,2,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chief Engineer Gork lonn - On Data Set 2 2 - Despawn');



-- GameObjects
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(183770,183956,184311,184312) and `source_type`=1 and `id` IN (10,11,12,13,14);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(18395600,18431100,18431200) and `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- B`naar
(183770,1,10,11,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set - Reset Scripts'),
(183770,1,11,12,61,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set (Linked) - Set GO Flag'),
(183770,1,12,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - On Data Set (Linked) - Set Phase 1'),
(183770,1,13,14,1,1,100,0,100000,100000,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - OOC - Set GO Flag'),
(183770,1,14,0,61,1,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'B\'naar Control Console - OOC (Linked) - Set Phase 0'),

-- Coruu
(183956,1,10,11,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set - Reset Scripts'),
(183956,1,11,12,61,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set (Linked) - Set GO Flag'),
(183956,1,12,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set (Linked) - Set Phase 1'),
(183956,1,13,14,1,1,100,0,100000,100000,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - OOC - Set GO Flag'),
(183956,1,14,0,61,1,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - OOC (Linked) - Set Phase 0'),

(18395600,9,0,0,0,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set GO Flag'),
(18395600,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,2,0,0,0,100,0,1000,1000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,3,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,4,0,0,0,100,0,15000,15000,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,5,0,0,0,100,0,14000,14000,0,0,0,0,45,10,10,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,6,0,0,0,100,0,14000,14000,0,0,0,0,45,3,3,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'), -- One minute
(18395600,9,7,0,0,0,100,0,1000,1000,0,0,0,0,45,10,10,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,8,0,0,0,100,0,15000,15000,0,0,0,0,45,10,10,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,9,0,0,0,100,0,14000,14000,0,0,0,0,45,4,4,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'), -- 30 second
(18395600,9,10,0,0,0,100,0,0,0,0,0,0,0,45,9,9,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,11,0,0,0,100,0,20000,20000,0,0,0,0,45,5,5,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'), -- 10 second
(18395600,9,12,0,0,0,100,0,10000,10000,0,0,0,0,45,6,6,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'), -- finish
(18395600,9,13,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,19,20417,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Data Coruu Control Console'),
(18395600,9,14,0,0,0,100,0,0,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Coruu Control Console - On Script - Set Flags'),


-- Duro
(184311,1,10,11,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set - Reset Scripts'),
(184311,1,11,12,61,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set (Linked) - Set GO Flag'),
(184311,1,12,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Data Set (Linked) - Set Phase 1'),
(184311,1,13,14,1,1,100,0,100000,100000,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - OOC - Set GO Flag'),
(184311,1,14,0,61,1,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - OOC (Linked) - Set Phase 0'),

(18431100,9,0,0,0,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set GO Flag'),
(18431100,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,2,0,0,0,100,0,9000,9000,0,0,0,0,45,10,10,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),  -- Protector
(18431100,9,3,0,0,0,100,0,30000,30000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,4,0,0,0,100,0,20000,20000,0,0,0,0,45,3,3,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'), -- One Minute
(18431100,9,5,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,6,0,0,0,100,0,10000,10000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,7,0,0,0,100,0,10000,10000,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,8,0,0,0,100,0,10000,10000,0,0,0,0,45,4,4,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'), -- 30 Sec
(18431100,9,9,0,0,0,100,0,0,0,0,0,0,0,45,9,9,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,10,0,0,0,100,0,20000,20000,0,0,0,0,45,5,5,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'), -- 10 second
(18431100,9,11,0,0,0,100,0,10000,10000,0,0,0,0,45,6,6,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'), -- Finish
(18431100,9,12,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,19,20418,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Data Duro Control Console'),
(18431100,9,13,0,0,0,100,0,0,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duro Control Console - On Script - Set Flags'),


-- Ara
(184312,1,10,11,61,0,100,0,0,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set - Reset Scripts'),
(184312,1,11,12,61,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set (Linked) - Set GO Flag'),
(184312,1,12,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Data Set (Linked) - Set Phase 1'),
(184312,1,13,14,1,1,100,0,100000,100000,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - OOC (Phase 1) - Set GO Flag'),
(184312,1,14,0,61,1,100,0,0,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - OOC (Phase 1) (Linked) - Set Phase 0'),

(18431200,9,0,0,0,0,100,0,0,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set GO Flag'),
(18431200,9,1,0,0,0,100,0,1000,1000,0,0,0,0,45,1,1,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'),
(18431200,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confirmed 1st Wave
(18431200,9,3,0,0,0,100,0,14000,14000,0,0,0,0,45,9,9,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confirmed wave 1.5
(18431200,9,4,0,0,0,100,0,10000,10000,0,0,0,0,45,10,10,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confirmed wave 2
(18431200,9,5,0,0,0,100,0,8000,8000,0,0,0,0,45,11,11,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confirmed wave 3
(18431200,9,6,0,0,0,100,0,27000,27000,0,0,0,0,45,3,3,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'),  -- One minute
(18431200,9,7,0,0,0,100,0,0,0,0,0,0,0,45,12,12,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confirmed Wave 4
(18431200,9,8,0,0,0,100,0,10000,10000,0,0,0,0,45,13,13,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confirmed Wave 4.5
(18431200,9,9,0,0,0,100,0,10000,10000,0,0,0,0,45,14,14,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- confimred wave 5
(18431200,9,10,0,0,0,100,0,10000,10000,0,0,0,0,45,4,4,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- 30 seconds
(18431200,9,11,0,0,0,100,0,20000,20000,0,0,0,0,45,5,5,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- 10 Second
(18431200,9,12,0,0,0,100,0,10000,10000,0,0,0,0,45,6,6,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'), -- Finish
(18431200,9,13,0,0,0,100,0,0,0,0,0,0,0,45,8,8,0,0,0,0,19,20440,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Data Ara Control Console'),
(18431200,9,14,0,0,0,100,0,0,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Ara Control Console - On Script - Set Flags');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN(35016,35176);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 35016, 0, 0, 31, 0, 3, 19421, 0, 0, 0, 0, '', 'Interrupt Shutdown only hits Netherstorm Crystal Target'),
(13, 1, 35176, 0, 0, 31, 0, 3, 19421, 0, 0, 0, 0, '', 'Interrupt Shutdown only hits Netherstorm Crystal Target');

DELETE FROM `waypoints` WHERE `entry` IN(2021800,2021801,2021802,2021803,2021804,2021805,2021806,2021807,2043600,2043800,2043801,2043802,2043803,2043804,2043805,2043806,2043807,2043808,2043809,2043810,2043811,2043812,2043813,2043814,2043900,2043901,2046000);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES 
(2021800,1,2853.7554,4163.011,162.59915,NULL,0,'Manforge B\'naar cast point 1'),
(2021800,2,2876.8354,4172.882,163.66179,NULL,0,'Manforge B\'naar cast point 1'),
(2021800,3,2893.3596,4161.261,163.0904,NULL,0,'Manforge B\'naar cast point 1'),
(2021800,4,2910.81,4159.9375,163.0357,NULL,0,'Manforge B\'naar cast point 1'),
(2021800,5,2924.7883,4172.3887,162.8211,NULL,0,'Manforge B\'naar cast point 1'),
-- (2021800,5,2918.93,4180.71,161.867,NULL,0,'Manforge B\'naar cast point 1'),


(2021801,1,2853.7554,4163.011,162.59915,NULL,0,'Manforge B\'naar cast point 2'),
(2021801,2,2876.8354,4172.882,163.66179,NULL,0,'Manforge B\'naar cast point 2'),
(2021801,3,2882.5059,4194.9946,162.9737,NULL,0,'Manforge B\'naar cast point 2'),
(2021801,4,2897.9365,4207.4263,162.98006,NULL,0,'Manforge B\'naar cast point 2'),
(2021801,5,2911.5132,4206.3276,162.83006,NULL,0,'Manforge B\'naar cast point 2'),
-- (2021801,5,2911.8,4196.94,161.883,NULL,0,'Manforge B\'naar cast point 2'),


(2021802,1,2381.9988,2703.4485,133.08452,NULL,0,'Manforge Coruu cast point 1'),  -- North
(2021802,2,2391.6047,2725.3618,134.49263,NULL,0,'Manforge Coruu cast point 1'),
(2021802,3,2398.1995,2730.6948,134.49263,NULL,0,'Manforge Coruu cast point 1'),
(2021802,4,2409.6826,2739.034,133.25032,NULL,0,'Manforge Coruu cast point 1'),
(2021802,5,2414.2004,2745.6335,132.51668,NULL,0,'Manforge Coruu cast point 1'),

(2021803,1,2435.3328,2821.0715,133.0844,NULL,0,'Manforge Coruu cast point 2'), -- South
(2021803,2,2424.9421,2798.3594,134.49403,NULL,0,'Manforge Coruu cast point 2'),
(2021803,3,2423.8054,2791.9243,134.49261,NULL,0,'Manforge Coruu cast point 2'),
(2021803,4,2425.2588,2781.7368,133.64104,NULL,0,'Manforge Coruu cast point 2'),
(2021803,5,2424.277,2771.061,132.63165,NULL,0,'Manforge Coruu cast point 2'),

(2021806,1,2466.948,2735.2502,133.08478,NULL,0,'Manforge Coruu cast point 3'), -- West
(2021806,2,2457.0757,2739.761,133.08461,NULL,0,'Manforge Coruu cast point 3'),
(2021806,3,2447.8909,2743.827,134.24606,NULL,0,'Manforge Coruu cast point 3'),
(2021806,4,2443.1846,2746.1694,134.49327,NULL,0,'Manforge Coruu cast point 3'),
(2021806,5,2437.247,2748.2999,134.44553,NULL,0,'Manforge Coruu cast point 3'),


-- (2021804,1,2969.34,2175.69,163.198,NULL,0,'Manforge Duro cast point 1'),
(2021804,1,3004.034,2119.627,163.9203,NULL,0,'Manforge Duro cast point 1'), -- SOuth 1 3
(2021804,2,2994.7808,2141.3398,165.1435,NULL,0,'Manforge Duro cast point 1'),
(2021804,3,2964.629,2154.2917,164.1462,NULL,0,'Manforge Duro cast point 1'),
(2021804,4,2954.2349,2170.2349,164.75842,NULL,0,'Manforge Duro cast point 1'),
(2021804,5,2957.6987,2178.5544,164.5098,NULL,0,'Manforge Duro cast point 1'),


-- (2021805,1,2986.23,2184.67,163.204,NULL,0,'Manforge Duro cast point 2'), -- North 2
(2021805,1,3004.034,2119.627,163.9203,NULL,0,'Manforge Duro cast point 2'),
(2021805,2,2994.7808,2141.3398,165.1435,NULL,0,'Manforge Duro cast point 2'),
(2021805,3,3005.2566,2166.6895,164.07295,NULL,0,'Manforge Duro cast point 2'),
(2021805,4,3008.4663,2184.3445,164.99352,NULL,0,'Manforge Duro cast point 2'),
(2021805,5,2991.7368,2193.4658,164.46487,NULL,0,'Manforge Duro cast point 2'),


(2021807,1,2955.1045,2231.905,163.9203,NULL,0,'Manforge Duro cast point 3'), -- east 4
(2021807,2,2959.7476,2221.6477,163.9203,NULL,0,'Manforge Duro cast point 3'),
(2021807,3,2964.4744,2211.2449,164.82826,NULL,0,'Manforge Duro cast point 3'),
(2021807,4,2967.5378,2204.3032,165.32918,NULL,0,'Manforge Duro cast point 3'),
(2021807,5,2969.8667,2197.5305,165.12369,NULL,0,'Manforge Duro cast point 3'),

(2043600,1,3004.034,2119.627,163.9203,NULL,0,'Manforge Duro Protector Point 1'),
(2043600,2,2994.7808,2141.3398,165.1435,NULL,0,'Manforge Duro Protector Point 1'),
(2043600,3,2998.9575,2164.0212,163.3487,NULL,0,'Manforge Duro Protector Point 1'),
(2043600,4,2998.4768,2175.2808,163.31903,NULL,0,'Manforge Duro Protector Point 1'),
(2043600,5,2972.15,2200.3,165.428,NULL,0,'Manforge Duro Protector Point 1'),



(2043800,1,3994.5684,3951.135,192.81831,NULL,0,'Manforge Ara cast point 1'),  -- East - Wave 1 North side run
(2043800,2,4001.572,3979.1577,194.22672,NULL,0,'Manforge Ara cast point 1'),
(2043800,3,4026.6658,3997.5054,193.03514,NULL,0,'Manforge Ara cast point 1'),
(2043800,4,4042.923,4019.7168,194.22578,NULL,0,'Manforge Ara cast point 1'),
(2043800,5,4033.7302,4025.3025,193.40965,NULL,0,'Manforge Ara cast point 1'),

(2043801,1,3996.037,3950.7769,192.81831,NULL,0,'Manforge Ara cast point 2'),
(2043801,2,4003.17,3978.798,194.22672,NULL,0,'Manforge Ara cast point 2'),
(2043801,3,4020.3823,3994.821,192.85413,NULL,0,'Manforge Ara cast point 2'),
(2043801,4,4041.5222,4017.0754,194.08224,NULL,0,'Manforge Ara cast point 2'),
(2043801,5,4032.9363,4024.6133,193.27487 ,NULL,0,'Manforge Ara cast point 2'),

(2043802,1,3993.0857,3951.4968,192.81831,NULL,0,'Manforge Ara cast point 3'),
(2043802,2,3999.639,3979.592,194.22672,NULL,0,'Manforge Ara cast point 3'),
(2043802,3,4027.6843,3992.8213,193.59042,NULL,0,'Manforge Ara cast point 3'),
(2043802,4,4041.19,4017.2634,194.03894,NULL,0,'Manforge Ara cast point 3'),
(2043802,5,4032.012,4024.9932,193.18869,NULL,0,'Manforge Ara cast point 3'),




(2043803,1,3994.5684,3951.135,192.81831,NULL,0,'Manforge Ara cast point 4'), -- East - Wave 1.5 South side run
(2043803,2,4001.572,3979.1577,194.22672,NULL,0,'Manforge Ara cast point 4'),
(2043803,3,3984.595,4013.2148,193.33652,NULL,0,'Manforge Ara cast point 4'),
(2043803,4,3989.538,4037.972,194.08127,NULL,0,'Manforge Ara cast point 4'),
(2043803,5,3998.445,4037.284,193.36322,NULL,0,'Manforge Ara cast point 4'),

(2043804,1,3996.037,3950.7769,192.81831,NULL,0,'Manforge Ara cast point 5'),
(2043804,2,4003.17,3978.798,194.22672,NULL,0,'Manforge Ara cast point 5'),
(2043804,3,3983.2192,4011.945,193.51845,NULL,0,'Manforge Ara cast point 5'),
(2043804,4,3990.2605,4034.9548,193.7187,NULL,0,'Manforge Ara cast point 5'),
(2043804,5,3998.8604,4038.256,193.45291,NULL,0,'Manforge Ara cast point 5'),

(2043805,1,3993.0857,3951.4968,192.81831,NULL,0,'Manforge Ara cast point 6'),
(2043805,2,3999.639,3979.592,194.22672,NULL,0,'Manforge Ara cast point 6'),
(2043805,3,3988.4563,4015.8909,192.82796,NULL,0,'Manforge Ara cast point 6'),
(2043805,4,3987.3992,4036.134,194.08102,NULL,0,'Manforge Ara cast point 6'),
(2043805,5,3999.9524,4039.398,193.52522,NULL,0,'Manforge Ara cast point 6'),


(2043806,1,3947.3064,4030.0488,192.81863,NULL,0,'Manforge Ara cast point 7'), -- South - Wave 2 - Walking and Wave 4 - Walking
(2043806,2,3972.7854,4023.6643,194.22708,NULL,0,'Manforge Ara cast point 7'),
(2043806,3,3983.6143,4029.0396,193.95425,NULL,0,'Manforge Ara cast point 7'),
(2043806,4,3995.5764,4037.2551,193.53253,NULL,0,'Manforge Ara cast point 7'),
(2043806,5,3999.0703,4037.0852,193.30223,NULL,0,'Manforge Ara cast point 7'),

(2043807,1,3946.8882,4028.3496,192.81863,NULL,0,'Manforge Ara cast point 8'),
(2043807,2,3972.923,4025.5735,194.22708,NULL,0,'Manforge Ara cast point 8'),
(2043807,3,3988.358,4028.6848,193.38528,NULL,0,'Manforge Ara cast point 8'),
(2043807,4,3995.6182,4041.4253,194.01462,NULL,0,'Manforge Ara cast point 8'),
(2043807,5,4000.3696,4038.6848,193.41957,NULL,0,'Manforge Ara cast point 8'),

(2043808,1,3947.5842,4031.1772,192.81863,NULL,0,'Manforge Ara cast point 9'),
(2043808,2,3971.147,4024.0823,194.22708,NULL,0,'Manforge Ara cast point 9'),
(2043808,3,3983.5364,4030.8435,194.0643,NULL,0,'Manforge Ara cast point 9'),
(2043808,4,3995.4841,4037.6997,193.58797,NULL,0,'Manforge Ara cast point 9'),
(2043808,5,3998.113,4037.2815,193.3822,NULL,0,'Manforge Ara cast point 9'),

(2043809,1,4073.7114,3998.4624,192.81796,NULL,0,'Manforge Ara cast point 10'), -- North - Wave 3 - walking
(2043809,2,4049.001,4004.7244,194.22643,NULL,0,'Manforge Ara cast point 10'),
(2043809,3,4040.7397,4008.1687,194.06381,NULL,0,'Manforge Ara cast point 10'),
(2043809,4,4041.7056,4019.6248,194.13672,NULL,0,'Manforge Ara cast point 10'),
(2043809,5,4033.0144,4024.437,193.27364,NULL,0,'Manforge Ara cast point 10'),

(2043810,1,4074.3528,3999.8743,192.81796,NULL,0,'Manforge Ara cast point 11'),
(2043810,2,4049.4414,4006.5488,194.22643,NULL,0,'Manforge Ara cast point 11'),
(2043810,3,4041.8489,4011.5125,194.12086,NULL,0,'Manforge Ara cast point 11'),
(2043810,4,4036.8713,4020.8865,193.59108,NULL,0,'Manforge Ara cast point 11'),
(2043810,5,4031.8225,4022.47,193.03474 ,NULL,0,'Manforge Ara cast point 11'),

(2043811,1,4073.615,3996.9485,192.81796,NULL,0,'Manforge Ara cast point 12'),
(2043811,2,4050.41,4003.5122,194.19337,NULL,0,'Manforge Ara cast point 12'),
(2043811,3,4046.2197,4011.001,194.22621,NULL,0,'Manforge Ara cast point 12'),
(2043811,4,4038.2444,4024.9895,193.9469,NULL,0,'Manforge Ara cast point 12'),
(2043811,5,4033.876,4026.1848,193.47978,NULL,0,'Manforge Ara cast point 12'),


(2043812,1,4025.9338,4077.288,192.81816,NULL,0,'Manforge Ara cast point 13'), -- West - Wave 4 - Running
(2043812,2,4023.8794,4068.9224,192.81816,NULL,0,'Manforge Ara cast point 13'),
(2043812,3,4021.5703,4059.777,193.54152,NULL,0,'Manforge Ara cast point 13'),
(2043812,4,4019.4885,4051.2373,194.22722,NULL,0,'Manforge Ara cast point 13'),
(2043812,5,4018.1372,4043.6587,193.99866,NULL,0,'Manforge Ara cast point 13'),


(2043813,1,4024.492,4077.791,192.81816,NULL,0,'Manforge Ara cast point 14'),
(2043813,2,4022.726,4070.0776,192.81816,NULL,0,'Manforge Ara cast point 14'),
(2043813,3,4020.6047,4061.1255,193.40912,NULL,0,'Manforge Ara cast point 14'),
(2043813,4,4018.901,4052.8484,194.22722,NULL,0,'Manforge Ara cast point 14'),
(2043813,5,4017.9348,4045.796,194.22615,NULL,0,'Manforge Ara cast point 14'),


(2043814,1,4027.2656,4077.2773,192.81816,NULL,0,'Manforge Ara cast point 15'),
(2043814,2,4025.5715,4070.8125,192.81816,NULL,0,'Manforge Ara cast point 15'),
(2043814,3,4023.2769,4061.5806,193.27463,NULL,0,'Manforge Ara cast point 15'),
(2043814,4,4020.9387,4054.3662,194.20969,NULL,0,'Manforge Ara cast point 15'),
(2043814,5,4020.1846,4044.1704,194.14624,NULL,0,'Manforge Ara cast point 15'),


(2043900,1,4073.188,3998.7363,192.81815,NULL,0,'Manforge Ara Attack point 1'), -- North - With Wave 3 - Running
(2043900,2,4048.2617,4004.9907,194.22685,NULL,0,'Manforge Ara Attack point 1'),
(2043900,3,4043.0662,4013.5396,194.22685,NULL,0,'Manforge Ara Attack point 1'),
(2043900,4,4038.791,4022.6428,193.9092,NULL,0,'Manforge Ara Attack point 1'),
(2043900,5,4033.4788,4029.8923,193.65512,NULL,0,'Manforge Ara Attack point 1'),


(2043901,1,3947.8186,4029.8535,192.81769,NULL,0,'Manforge Ara Attack point 2'), --  South - With Wave 3 - Running
(2043901,2,3971.4028,4024.0977,194.22668,NULL,0,'Manforge Ara Attack point 2'),
(2043901,3,3980.1753,4028.2158,194.21632,NULL,0,'Manforge Ara Attack point 2'),
(2043901,4,3996.094,4038.1116,193.6001,NULL,0,'Manforge Ara Attack point 2'),
(2043901,5,4003.277,4041.1956,193.62839,NULL,0,'Manforge Ara Attack point 2'),


(2046000,1,4073.188,3998.7363,192.81815,NULL,0,'Manforge Ara Attack point 1'), -- North - Wave 5 - Running
(2046000,2,4048.2617,4004.9907,194.22685,NULL,0,'Manforge Ara Attack point 1'),
(2046000,3,4043.0662,4013.5396,194.22685,NULL,0,'Manforge Ara Attack point 1'),
(2046000,4,4038.791,4022.6428,193.9092,NULL,0,'Manforge Ara Attack point 1'),
(2046000,5,4033.4788,4029.8923,193.65512,NULL,0,'Manforge Ara Attack point 1');