/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (10432,10475,10433,1043300, 1047500)
LIMIT 0, 1000

-- Date: 2024-10-13 20:31
*/
-- Vectus
UPDATE `creature` SET `orientation`=3.26377,`MovementType`=0 WHERE `guid`=48805; -- 3.26377, 2
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid`=48805; -- 488050

DELETE FROM `waypoint_data` where id IN (488050);
DELETE FROM `waypoint_scripts` where id IN (39,40,41);

DELETE FROM `creature_text` where CreatureID in (10432);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
-- (10432,0,0,'%s goes into a killing frenzy!',16,0,100,0,0,0,24143,0,'vectus EMOTE_FRENZY_KILL'),
(10432,0,0,'We await a batch of black dragon eggs from the Burning Steppes. We believe that, through their study, we will advance our knowledge dramatically.',12,0,100,0,0,0,0,0,'Vectus'),
(10432,0,1,'Tomorrow we will begin training of our promising dragons, so don\'t forget your chew toys.',12,0,100,0,0,0,7193,0,'Vectus'),
(10432,0,2,'When preparing the dragon\'s meal, be sure to torture the prisoner in view of the dragon. It responds well to pre-meal entertainment.',12,0,100,0,0,0,0,0,'Vectus'),
(10432,0,3,'The Lich King\'s forces are building. It is imperative that our timetable supports his plans.',12,0,100,0,0,0,0,0,'Vectus'),
(10432,0,4,'Our oldest clutch of dragons are still far from maturity, but with patience and study, we are confident the dragonflight will soon be ready.',12,0,100,0,0,0,7191,0,'Vectus'),
(10432,0,5,'Now if you turn to page 34 in your text, you see an illustration of a dwarf undergoing dissection...',12,0,100,0,0,0,7188,0,'Vectus'),
(10432,0,6,'From yesterday\'s field trip, Marduk showed us that the dragons will tolerate the meat of recently killed humanoids, but only if they died slowly and painfully.',12,0,100,0,0,0,7192,0,'Vectus'),
(10432,1,0,'What is this?! How dare you!',14,0,100,0,0,0,0,3,'Vectus');

DELETE FROM `smart_scripts` WHERE `entryorguid`=10432 AND `source_type`=0 AND `id` IN (7,8,9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
/*
(10432,0,0,0,38,0,100,0,2,4,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - On Data Set - Say Line 1'),
(10432,0,1,0,1,0,100,0,6000,20000,30000,50000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - Out of Combat - Say Line 0'),
(10432,0,2,0,0,0,100,0,3000,9000,7000,12000,0,0,11,18399,0,0,0,0,0,5,20,0,0,0,0,0,0,0,'Vectus - In Combat - Cast Flamestrike'),
(10432,0,3,0,106,0,100,0,3000,12000,11000,22000,0,10,11,17277,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - In Combat - Cast Blast Wave'),
(10432,0,4,5,4,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,11,10475,100,1,0,0,0,0,0,'Vectus - On Aggro - Set Data'),
(10432,0,5,0,61,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,19,10433,100,0,0,0,0,0,0,'Vectus - On Aggro - Set Data'),
(10432,0,6,0,38,0,100,0,3,3,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Vectus - On Data Set - Attack Start'),
*/
(10432,0,7,0,25,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,143.481,99.0964,104.659,3.26377,'Vectus - On Reset - Move to POS'),
(10432,0,8,9,4,0,100,512,0,0,0,0,0,0,2,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - On Aggro - Set Faction'),
(10432,0,9,0,61,0,100,512,0,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - On Aggro - Remove Bytes0 Flag');

-- Marduk Blackpool
DELETE FROM `smart_scripts` WHERE `entryorguid`=10433 AND `source_type`=0 AND `id` IN (9,10,11);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
/*
(10433,0,0,0,38,0,100,0,2,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - On Data Set - Say Line 0'),
(10433,0,1,0,38,0,100,0,2,2,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - On Data Set - Say Line 1'),
(10433,0,2,0,4,0,100,0,0,0,0,0,0,0,11,17695,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - On Aggro - Cast Defiling Aura'),
(10433,0,3,0,0,0,100,0,3000,9000,7000,12000,0,0,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Marduk Blackpool - In Combat - Cast Cleave'),
(10433,0,4,0,0,0,100,0,3000,12000,11000,22000,0,0,11,17228,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - In Combat - Cast Shadow Bolt Volley'),
(10433,0,5,0,0,0,100,0,3000,11000,30000,30000,0,0,11,12040,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - In Combat - Cast Shadow Shield'),
(10433,0,6,7,4,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,11,10475,100,1,0,0,0,0,0,'Marduk Blackpool - On Aggro - Set Data'),
(10433,0,7,0,61,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,19,10432,100,0,0,0,0,0,0,'Marduk Blackpool - On Aggro - Set Data'),
(10433,0,8,0,38,0,100,0,3,3,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Marduk Blackpool - On Data Set - Attack Start'),
*/

(10433,0,9,0,25,0,100,0,0,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,0,150.368,116.22,104.661,3.83972,'Marduk Blackpool - On Reset - Move to POS'),
(10433,0,10,11,4,0,100,512,0,0,0,0,0,0,2,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - On Aggro - Set Faction'),
(10433,0,11,0,61,0,100,512,0,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marduk Blackpool - On Aggro - Remove Bytes0 Flag');

-- Scholomance Student
UPDATE `smart_scripts` SET `link`=7 WHERE `entryorguid`=10475 AND `source_type`=0 AND `id` IN (6) ; -- 0
DELETE FROM `smart_scripts` WHERE `entryorguid`=10475 AND `source_type`=0 AND `id` IN (7,8);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
/*
(10475,0,0,0,4,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,11,10475,5,0,0,0,0,0,0,'Scholomance Student - On Aggro - Set Data'),
(10475,0,1,2,38,0,100,512,2,3,0,0,0,0,11,58854,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Cast Resurrection'),
(10475,0,2,0,61,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Set Bytes0 Flag'),
(10475,0,3,4,38,0,100,512,2,4,0,0,0,0,11,18115,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Cast Viewing Room Student Transform - Effect'),
(10475,0,4,5,61,0,100,512,0,0,0,0,0,0,2,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Set Faction'),
(10475,0,5,0,61,0,100,512,0,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Remove Bytes0 Flag'),
(10475,0,6,7,38,0,100,0,3,3,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Attack Start'),
*/

(10475,0,7,8,61,0,100,512,0,0,0,0,0,0,2,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Set Faction'),
(10475,0,8,0,61,0,100,512,0,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Remove Bytes0 Flag');

