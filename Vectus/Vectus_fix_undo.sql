/*
-- Query: SELECT * FROM acore_world.smart_scripts WHERE entryorguid IN (10432,10475,10433,1043300, 1047500)
LIMIT 0, 1000

-- Date: 2024-10-13 20:31
*/
-- Vectus
UPDATE `creature` SET `orientation`=3.26377,`MovementType`=2 WHERE `guid`=48805; -- 3.26377, 2
UPDATE `creature_addon` SET `path_id`=488050 WHERE `guid`=48805; -- 488050

DELETE FROM `waypoint_data` where id IN (488050);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(488050,1,143.481,99.0964,104.659,NULL,300000,0,0,100,0),
(488050,2,143.481,99.0964,104.659,NULL,10000,0,39,100,0),
(488050,3,143.481,99.0964,104.659,NULL,10000,0,40,100,0),
(488050,4,143.481,99.0964,104.659,NULL,10000,0,41,100,0),
(488050,5,143.481,99.0964,104.659,NULL,30000,0,0,100,0);

DELETE FROM `waypoint_scripts` where id IN (39,40,41);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(39,0,0,0,0,7194,0,0,0,0,46),
(40,0,0,0,0,7193,0,0,0,0,47),
(41,0,0,0,0,7191,0,0,0,0,48);

DELETE FROM `creature_text` where CreatureID in (10432);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(10432,0,0,'%s goes into a killing frenzy!',16,0,100,0,0,0,24143,0,'vectus EMOTE_FRENZY_KILL'),
(10432,0,1,'Tomorrow we will begin training of our promising dragons, so don\'t forget your chew toys.',12,0,100,0,0,0,7193,0,'Vectus'),
(10432,0,2,'When preparing the dragon\'s meal, be sure to torture the prisoner in view of the dragon. It responds well to pre-meal entertainment.',12,0,100,0,0,0,0,0,'Vectus'),
(10432,0,3,'The Lich King\'s forces are building. It is imperative that our timetable supports his plans.',12,0,100,0,0,0,0,0,'Vectus'),
(10432,0,4,'Our oldest clutch of dragons are still far from maturity, but with patience and study, we are confident the dragonflight will soon be ready.',12,0,100,0,0,0,7191,0,'Vectus'),
(10432,0,5,'Now if you turn to page 34 in your text, you see an illustration of a dwarf undergoing dissection...',12,0,100,0,0,0,7188,0,'Vectus'),
(10432,0,6,'From yesterday\'s field trip, Marduk showed us that the dragons will tolerate the meat of recently killed humanoids, but only if they died slowly and painfully.',12,0,100,0,0,0,7192,0,'Vectus'),
(10432,0,7,'We await a batch of black dragon eggs from the Burning Steppes. We believe that, through their study, we will advance our knowledge dramatically.',12,0,100,0,0,0,0,0,'Vectus'),
(10432,1,0,'What is this?! How dare you!',14,0,100,0,0,0,0,3,'Vectus');

-- UPDATE `smart_scripts` SET `link`=0 WHERE `entry`=10432 AND `source_type`=0 AND `id` IN (5) ; -- 0
DELETE FROM `smart_scripts` WHERE `entryorguid`=10432 AND `source_type`=0 AND `id` IN (7,8,9);
/*
(10432,0,0,0,38,0,100,0,2,4,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - On Data Set - Say Line 1'),
(10432,0,1,0,1,0,100,0,6000,20000,30000,50000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - Out of Combat - Say Line 0'),
(10432,0,2,0,0,0,100,0,3000,9000,7000,12000,0,0,11,18399,0,0,0,0,0,5,20,0,0,0,0,0,0,0,'Vectus - In Combat - Cast Flamestrike'),
(10432,0,3,0,106,0,100,0,3000,12000,11000,22000,0,10,11,17277,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vectus - In Combat - Cast Blast Wave'),
(10432,0,4,5,4,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,11,10475,100,1,0,0,0,0,0,'Vectus - On Aggro - Set Data'),
(10432,0,5,0,61,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,19,10433,100,0,0,0,0,0,0,'Vectus - On Aggro - Set Data'),
(10432,0,6,0,38,0,100,0,3,3,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,0,'Vectus - On Data Set - Attack Start'),
*/


-- Marduk Blackpool
DELETE FROM `smart_scripts` WHERE `entryorguid`=10433 AND `source_type`=0 AND `id` IN (9,10,11);
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


-- Scholomance Student
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=10475 AND `source_type`=0 AND `id` IN (6) ; -- 0
DELETE FROM `smart_scripts` WHERE `entryorguid`=10475 AND `source_type`=0 AND `id` IN (7,8);
/*
(10475,0,0,0,4,0,100,512,0,0,0,0,0,0,45,3,3,0,0,0,0,11,10475,5,0,0,0,0,0,0,'Scholomance Student - On Aggro - Set Data'),
(10475,0,1,2,38,0,100,512,2,3,0,0,0,0,11,58854,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Cast Resurrection'),
(10475,0,2,0,61,0,100,512,0,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Set Bytes0 Flag'),
(10475,0,3,4,38,0,100,512,2,4,0,0,0,0,11,18115,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Cast Viewing Room Student Transform - Effect'),
(10475,0,4,5,61,0,100,512,0,0,0,0,0,0,2,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Set Faction'),
(10475,0,5,0,61,0,100,512,0,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Remove Bytes0 Flag'),
(10475,0,6,7,38,0,100,0,3,3,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,0,'Scholomance Student - On Data Set - Attack Start'),
*/

