-- NEW GUID: 300024 and GAME EVENT 251
-- Changed Game event ID to 127 from 106 5-25-25
-- Changed Event ID from 127 to 251 8-23-25

SET @Defender          := 10948; -- Darrowshire Defender
SET @Skeleton          := 10952; -- Maraudin Skeleton
SET @Corpse            := 10951; -- Marauding Corpse
SET @Silver            := 10949; -- Silver hand disciple
SET @Sevant            := 10953; -- Sevant of Horgus
SET @Lightfire         := 10944; -- Davil Lightfire
SET @Horgus            := 10946; -- Horgus the Ravager
SET @Betrayer          := 10947; -- Darrowshire Betrayer
SET @Redpath           := 10937; -- Captain Redpath 
SET @Bloodletter       := 10954; -- Bloodletter
SET @Marduk            := 10939; -- Marduk the Black
SET @CorruptedRed      := 10938; -- Redpath the Corrupted
SET @Joseph            := 10936; -- Joseph Redpath
SET @Davil             := 10945; -- Davil Crokford
SET @Pamela            := 10926; -- Pamela Redpath
SET @Relic             := 177526; -- Relic Bundle, spell:=18987

DELETE FROM `game_event` WHERE `eventEntry` = 251;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES
(251,"2011-03-22 01:00:00","2030-12-31 07:00:00",5184000,35,0,0,"Battle Of Darrowshire",0,2);

DELETE FROM `game_event_creature` WHERE `eventEntry` IN (127,251) and `guid` IN (300024);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(251,300024);

-- NEW Captain Redpath Creature (Event mostly revolves around him) 
DELETE FROM `creature` where `guid` in (300024);
INSERT INTO `creature` (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES 
(300024,10937,0,0,0,0,0,1,1,1,1453.091431,-3693.156494,76.784241,0.486776,1800000,0,0,12208,0,0,0,0,0,'',0,0,NULL);



UPDATE `creature_template_addon` SET `auras`='17327' WHERE `entry` IN (@Marduk); -- NULL
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry` IN (@Davil); -- 12898

DELETE FROM `creature_template_addon` WHERE `entry` IN(@Silver ,@Lightfire,@Defender,@Pamela,@Horgus,@Bloodletter,@Redpath);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@Lightfire,0,0,1,'17327'),
(@Pamela,0,0,0,'17327'),
(@Redpath,0,0,1,'17327'),
(@Horgus,0,0,0,'17467');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@Marduk,@Davil); -- ""

UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry` IN (10948, 10953, 10944, 10946, 10947, 10937, 10954, 10939, 10938, 10945,10949); -- ""
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry` IN (10951);

UPDATE `creature` SET `Orientation`=2.276223 WHERE `id1`=@Pamela; -- 0.041027

DELETE FROM `creature_summon_groups` WHERE `summonerid`=@Redpath;
INSERT INTO `creature_summon_groups` (`summonerId`,`summonerType`,`groupId`,`entry`,`position_x`,`position_y`,`position_z`,`orientation`,`summonType`,`summonTime`) VALUES
-- (@Redpath,0,0,@Defender,1484.442993,-3676.545410,79.871506,0.169049,8,0),
(@Redpath,0,0,@Defender,1454.3062,-3692.1995,76.77511,0.5,8,0),
(@Redpath,0,0,@Defender,1497.560669,-3637.805176,85.364410,3.957781,8,0), 
(@Redpath,0,0,@Defender,1509.516357,-3640.667969,88.113441,4.707833,8,0),
(@Redpath,0,0,@Defender,1511.495483,-3650.671631,88.055191,1.052592,8,0),
(@Redpath,0,0,@Defender,1503.856812,-3664.068359,83.389610,1.052592,8,0),
(@Redpath,0,0,@Defender,1494.220215,-3656.542725,83.329399,0.954417,8,0),
(@Redpath,0,0,@Defender,1495.856445,-3684.522461,80.549515,0.002224,8,0),
(@Redpath,0,0,@Defender,1494.905640,-3678.563477,80.728012,6.140110,8,0),
(@Redpath,0,0,@Defender,1494.013916,-3671.843262,81.187721,0.139665,8,0),
(@Redpath,0,0,@Defender,1493.794922,-3665.639893,81.787727,5.719919,8,0),
(@Redpath,0,0,@Defender,1513.222290,-3693.317627,84.312233,2.388256,8,0),
(@Redpath,0,0,@Defender,1508.203369,-3701.367188,81.152023,1.888743,8,0),
(@Redpath,0,0,@Defender,1516.244263,-3706.704346,82.785568,5.756826,8,0),
(@Redpath,0,0,@Defender,1511.111084,-3709.822998,82.240448,2.073311,8,0),
(@Redpath,0,0,@Defender,1504.386353,-3709.648193,81.169960,0.557490,8,0),
(@Redpath,0,1,@Skeleton,1497.560669,-3637.805176,85.364410,3.957781,8,0), -- phase 1
(@Redpath,0,1,@Corpse,1509.516357,-3640.667969,88.113441,4.707833,8,0),
(@Redpath,0,1,@Skeleton ,1511.495483,-3650.671631,88.055191,1.052592,8,0),
(@Redpath,0,1,@Corpse,1503.856812,-3664.068359,83.389610,1.052592,8,0),
(@Redpath,0,1,@Skeleton ,1494.220215,-3656.542725,83.329399,0.954417,8,0),
(@Redpath,0,1,@Skeleton,1495.856445,-3684.522461,80.549515,0.002224,8,0),
(@Redpath,0,1,@Corpse,1494.905640,-3678.563477,80.728012,6.140110,8,0),
(@Redpath,0,1,@Skeleton,1494.013916,-3671.843262,81.187721,0.139665,8,0),
(@Redpath,0,1,@Corpse,1493.794922,-3665.639893,81.787727,5.719919,8,0),
(@Redpath,0,1,@Skeleton,1513.222290,-3693.317627,84.312233,2.388256,8,0),
(@Redpath,0,1,@Corpse,1508.203369,-3701.367188,81.152023,1.888743,8,0),
(@Redpath,0,1,@Skeleton,1516.244263,-3706.704346,82.785568,5.756826,8,0),
(@Redpath,0,1,@Corpse,1511.111084,-3709.822998,82.240448,2.073311,8,0),
(@Redpath,0,1,@Skeleton,1504.386353,-3709.648193,81.169960,0.557490,8,0),
(@Redpath,0,2,@Sevant,1497.560669,-3637.805176,85.364410,3.957781,8,0), -- phase 2
(@Redpath,0,2,@Sevant,1509.516357,-3640.667969,88.113441,4.707833,8,0),
-- (@Redpath,0,2,@Sevant,1511.495483,-3650.671631,88.055191,1.052592,8,0),
(@Redpath,0,2,@Sevant,1503.856812,-3664.068359,83.389610,1.052592,8,0),
(@Redpath,0,2,@Sevant,1494.220215,-3656.542725,83.329399,0.954417,8,0),
(@Redpath,0,2,@Sevant,1495.856445,-3684.522461,80.549515,0.002224,8,0),
(@Redpath,0,2,@Sevant,1494.905640,-3678.563477,80.728012,6.140110,8,0),
(@Redpath,0,2,@Sevant,1494.013916,-3671.843262,81.187721,0.139665,8,0),
(@Redpath,0,2,@Sevant,1493.794922,-3665.639893,81.787727,5.719919,8,0),
(@Redpath,0,2,@Sevant,1513.222290,-3693.317627,84.312233,2.388256,8,0),
(@Redpath,0,2,@Sevant,1508.203369,-3701.367188,81.152023,1.888743,8,0),
(@Redpath,0,2,@Sevant,1516.244263,-3706.704346,82.785568,5.756826,8,0),
-- (@Redpath,0,2,@Sevant,1511.111084,-3709.822998,82.240448,2.073311,8,0),
(@Redpath,0,2,@Sevant,1504.386353,-3709.648193,81.169960,0.557490,8,0),
(@Redpath,0,3,@Silver,1495.857910,-3682.440674,80.630501,0.022911,8,0),
(@Redpath,0,3,@Silver,1490.361938,-3684.647705,80.350754,0.285233,8,0),
(@Redpath,0,3,@Silver,1495.075928,-3670.077148,81.964828,0.846651,8,0),
(@Redpath,0,3,@Silver,1489.382568,-3666.546875,81.307182,0.058259,8,0),
(@Redpath,0,4,@Betrayer,1497.560669,-3637.805176,85.364410,3.957781,8,0), -- phase3
(@Redpath,0,4,@Betrayer,1509.516357,-3640.667969,88.113441,4.707833,8,0),
(@Redpath,0,4,@Betrayer,1511.495483,-3650.671631,88.055191,1.052592,8,0),
(@Redpath,0,4,@Betrayer,1503.856812,-3664.068359,83.389610,1.052592,8,0),
(@Redpath,0,4,@Betrayer,1494.220215,-3656.542725,83.329399,0.954417,8,0),
(@Redpath,0,4,@Bloodletter,1495.856445,-3684.522461,80.549515,0.002224,8,0),
(@Redpath,0,4,@Bloodletter,1494.905640,-3678.563477,80.728012,6.140110,8,0),
(@Redpath,0,4,@Bloodletter,1494.013916,-3671.843262,81.187721,0.139665,8,0),
(@Redpath,0,4,@Bloodletter,1493.794922,-3665.639893,81.787727,5.719919,8,0),
(@Redpath,0,4,@Betrayer,1513.222290,-3693.317627,84.312233,2.388256,8,0),
(@Redpath,0,4,@Betrayer,1508.203369,-3701.367188,81.152023,1.888743,8,0),
(@Redpath,0,4,@Betrayer,1516.244263,-3706.704346,82.785568,5.756826,8,0),
(@Redpath,0,4,@Betrayer,1511.111084,-3709.822998,82.240448,2.073311,8,0),
(@Redpath,0,4,@Betrayer,1504.386353,-3709.648193,81.169960,0.557490,8,0);


DELETE FROM `smart_scripts` WHERE `entryorguid` = @Relic AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Lightfire  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Lightfire *100,@Lightfire *100+1,@Lightfire *100+2) AND `source_type` = 9; -- Removes existing scripts 1094401 and 02
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Defender  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Defender *100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Marduk AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Marduk*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Horgus AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Horgus*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Redpath AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Redpath*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Redpath*100+1 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @CorruptedRed AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @CorruptedRed*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Davil AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Davil*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Joseph AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Joseph*100 AND `source_type` = 9; 
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Joseph*100+1 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Silver AND `source_type` = 0 AND `id` = 4;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Relic,1,0,0,63,0,100,0,0,0,0,0,112,251,0,0,0,0,0,1,0,0,0,0,0,0,0,'Relic - On spawn - Start Event'),

(@Silver,0,4,0,63,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silver hand disciple - On Spawn - Run On'),

(@Defender,0,0,0,0,0,100,0,3000,5000,5000,8000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Darrowshire Defender - In Combat - Cast Strike'),
(@Defender,0,1,0,0,0,100,0,5000,7000,7000,10000,11,12169,1,0,0,0,0,1,0,0,0,0,0,0,0,'Darrowshire Defender - In Combat - Cast Shield Block'),
(@Defender,0,2,0,63,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darrowshire Defender - On Spawn - Run On'),
(@Defender,0,3,0,38,0,100,0,1,1,0,0,53,1,@Defender,0,0,0,2,1,0,0,0,0,0,0,0,'Darrowshire Defender - On Data Set 1 1 - Start Waypoint'),
(@Defender,0,4,0,40,0,100,0,2,@Defender,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.13359,'Darrowshire Defender - On Waypoint Reached 2 - Set Orientation'),
(@Defender,0,5,0,7,0,100,0,0,0,0,0,89,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darrowshire Defender - On Evade - Random Movement'),

(@Redpath,0,0,0,63,0,100,0,0,0,0,0,80,@Redpath*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - On spawn - action list'),
(@Redpath,0,1,0,6,0,100,0,0,0,0,0,80,@Redpath*100+1,2,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Captain Redpath - On death - action list'),
(@Redpath,0,2,0,0,0,100,0,5000,7000,8000,10000,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Redpath - In Combat - Cast Cleave'),
(@Redpath,0,3,0,0,0,100,0,8000,10000,14000,18000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Redpath - In Combat - Cast Backhand'),
(@Redpath,0,4,0,0,0,100,0,3000,5000,15000,20000,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - In Combat - Cast Battle Shout'),
(@Redpath,0,5,0,69,0,100,0,251,0,0,0,70,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - On Game Event End - Respawn In 2 secs'),
(@Redpath,0,6,0,68,0,100,0,251,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - On Game Event Start - Respawn'),

(@Redpath*100,9,0,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Set invisible - action list'),
(@Redpath*100,9,1,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - On Script - Set React Passive'),
(@Redpath*100,9,2,0,0,0,100,0,5000,5000,0,0,107,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Spawn groupe 1 - action list'),
(@Redpath*100,9,3,0,0,0,100,0,2000,2000,0,0,45,1,1,0,0,0,0,19,@Defender,20,0,0,0,0,0,'Darrowshire Defender - Waypoint - action list'),
(@Redpath*100,9,4,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,19,@Defender,40,0,0,0,0,0,'Darrowshire Defender - talk1 - action list'),
(@Redpath*100,9,5,0,0,0,100,0,7000,7000,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Spawn g2 wave1- action list'),
(@Redpath*100,9,6,0,0,0,100,0,25000,25000,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Spawn g2 wave2 - action list'),
(@Redpath*100,9,7,0,0,0,100,0,25000,25000,0,0,12,@Lightfire,6,6000,0,0,0,8,0,0,0,1453.091431,-3693.156494,76.784241,0.486776,'Captain Redpath - spawn Lightfire - action list'),
(@Redpath*100,9,8,0,0,0,100,0,0,0,0,0,12,@Davil,8,600000,0,0,0,8,0,0,0,1464.515991,-3678.878418,78.043877,0.577881,'Captain Redpath - Spawn Davil - action list'), -- DAVIL SPAWN
(@Redpath*100,9,9,0,0,0,100,0,0,0,0,0,107,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Spawn g3 wave1 - action list'),
(@Redpath*100,9,10,0,0,0,100,0,5000,5000,0,0,107,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Spawn g4 wave1 - action list'),
(@Redpath*100,9,11,0,0,0,100,0,25000,25000,0,0,107,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - Spawn g4 wave2 - action list'),
(@Redpath*100,9,12,0,0,0,100,0,0,0,0,0,12,@Horgus,6,6000,0,0,0,8,0,0,0,1501.275024,-3675.826172,81.447624,3.300069,'Captain Redpath - Spawn Horgus the Ravager - action list'),
(@Redpath*100,9,13,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@Horgus,100,0,0,0,0,0,'Horgus the Ravager - talk1 - action list'),

(@Redpath*100+1,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - talk1 - action list'),
(@Redpath*100+1,9,1,0,0,0,100,0,0,0,0,0,6,5721,0,0,0,0,0,18,100,0,0,0,0,0,0,'Player - quest failed - action list'),
(@Redpath*100+1,9,2,0,0,0,100,0,10000,10000,0,0,41,0,0,0,0,0,0,11,@Defender,100,0,0,0,0,0,'Darrowshire Defender - despawn - action list'),
(@Redpath*100+1,9,3,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Silver,100,0,0,0,0,0,'Silver Hand Disciple - despawn - action list'),
(@Redpath*100+1,9,4,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@CorruptedRed,100,0,0,0,0,0,'CorruptedRed - despawn - action list'),
(@Redpath*100+1,9,5,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Betrayer,100,0,0,0,0,0,'Darrowshire Betrayer - despawn - action list'),
(@Redpath*100+1,9,6,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Bloodletter,100,0,0,0,0,0,'Bloodletter - despawn - action list'),
(@Redpath*100+1,9,7,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Sevant,100,0,0,0,0,0,'Sevant of Horgus - despawn - action list'),
(@Redpath*100+1,9,8,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Horgus,100,0,0,0,0,0,'Horgus the Ravager - despawn - action list'),
(@Redpath*100+1,9,9,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Skeleton,100,0,0,0,0,0,'Maraudin Skeleton - despawn - action list'),
(@Redpath*100+1,9,10,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Corpse,100,0,0,0,0,0,'Marauding Corpse - despawn - action list'),
(@Redpath*100+1,9,11,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - despawn - action list'),
(@Redpath*100+1,9,12,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - despawn - action list'),
(@Redpath*100+1,9,13,0,0,0,100,0,100,100,0,0,111,251,0,0,0,0,0,1,0,0,0,0,0,0,0,'captain Redpath - Stop Event - action list'),

(@Lightfire,0,0,0,63,0,100,0,0,0,0,0,80,@Lightfire*100+1,2,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Lightfire - On spawn - action list'),
(@Lightfire,0,1,0,6,0,100,0,0,0,0,0,80,@Lightfire*100,2,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Lightfire - On death - action list'),
(@Lightfire,0,2,0,4,0,100,1,0,0,0,0,11,17232,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Lightfire - On Aggro - Cast Devotion Aura'),
(@Lightfire,0,3,0,0,0,100,0,5000,7000,8000,10000,11,17284,0,0,0,0,0,2,0,0,0,0,0,0,0,'Davil Lightfire - In Combat - Cast Holy Strike'),
(@Lightfire,0,4,0,0,0,100,0,8000,11000,15000,20000,11,13005,0,0,0,0,0,5,0,0,0,0,0,0,0,'Davil Lightfire - In Combat - Cast Hammer of Justice'),

(@Lightfire*100,9,0,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - talk4 - action list'),
(@Lightfire*100,9,1,0,0,0,100,0,0,0,0,0,6,5721,0,0,0,0,0,18,100,0,0,0,0,0,0,'Player - Quest failed - action list'),
(@Lightfire*100,9,2,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - despawn - action list'),  -- Needs to despawn sooner if lightfire dies before Horgus spawns
(@Lightfire*100,9,3,0,0,0,100,0,10000,10000,0,0,41,0,0,0,0,0,0,11,@Defender,100,0,0,0,0,0,'Darrowshire Defender - despawn - action list'),
(@Lightfire*100,9,4,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Silver,100,0,0,0,0,0,'Silver Hand Disciple - despawn - action list'),
(@Lightfire*100,9,5,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@CorruptedRed,100,0,0,0,0,0,'CorruptedRed - despawn - action list'),
(@Lightfire*100,9,6,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Betrayer,100,0,0,0,0,0,'Darrowshire Betrayer - despawn - action list'),
(@Lightfire*100,9,7,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Bloodletter,100,0,0,0,0,0,'Bloodletter - despawn - action list'),
(@Lightfire*100,9,8,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Sevant,100,0,0,0,0,0,'Sevant of Horgus - despawn - action list'),
(@Lightfire*100,9,9,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Horgus,100,0,0,0,0,0,'Horgus the Ravager - despawn - action list'),
(@Lightfire*100,9,10,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Skeleton,100,0,0,0,0,0,'Maraudin Skeleton - despawn - action list'),
(@Lightfire*100,9,11,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Corpse,100,0,0,0,0,0,'Marauding Corpse - despawn - action list'),
(@Lightfire*100,9,12,0,0,0,100,0,0,0,0,0,111,251,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Lightfire - Stop Event - action list'),
(@Lightfire*100,9,13,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - despawn - action list'),

(@Lightfire*100+1,9,0,0,0,0,100,0,0,0,0,0,53,1,@Lightfire,0,0,9000000,2,1,0,0,0,0,0,0,0,'Davil Lightfire - On Script - waypoint1'),
(@Lightfire*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Lightfire - On Script - texte1'),

(@Davil,0,0,0,63,0,100,0,0,0,0,0,80,@Davil*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Crokford - On spawn - action list'),

(@Davil*100,9,0,0,0,0,100,0,0,0,0,0,18,2,1,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Crokford - On Script - set Unit Flags2 hide body'),
(@Davil*100,9,1,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Crokford - On Script - texte2'),
(@Davil*100,9,2,0,0,0,100,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Crokford - On Script - Add Not Selectable'),
(@Davil*100,9,3,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Crokford - On Script - Remove NPCFlag'),
(@Davil*100,9,4,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Crokford - On Script - Set Passive'),

(@Joseph,0,0,0,63,0,100,0,0,0,0,0,80,@Joseph*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - On spawn - action list'),
(@Joseph,0,1,0,40,0,100,0,7,0,0,0,80,@Joseph*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - On waypoint 7 - Start Script'),
(@Joseph,0,2,0,64,0,100,0,0,0,0,0,33,@Joseph,0,0,0,0,0,7,0,0,0,0,0,0,0,'Joseph Redpath - On Gossip Hello - Call KilledMonster'),

(@Joseph*100,9,0,0,0,0,100,0,60000,60000,0,0,41,0,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - despawn - action list'),
(@Joseph*100,9,1,0,0,0,100,0,0,0,0,0,53,0,@Joseph,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - Start Script - waypoint '),
(@Joseph*100,9,2,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - Start Script - remove npcflag'),

(@Joseph*100+1,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - On Script - Talk1'),
(@Joseph*100+1,9,1,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,@Pamela,10,0,0,0,0,0,'Pamela - On Script - Talk1'),
(@Joseph*100+1,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,19,@Pamela,10,0,0,0,0,0,'Pamela - On Script - Talk2'),
(@Joseph*100+1,9,3,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,19,@Pamela,10,0,0,0,0,0,'Pamela - On Script - Talk3'),
(@Joseph*100+1,9,4,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,19,@Pamela,10,0,0,0,0,0,'Pamela - On Script - Talk4'),
(@Joseph*100+1,9,5,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - On Script - Talk2'),
(@Joseph*100+1,9,6,0,0,0,100,0,5000,5000,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - Start Script - Set npcflag'),
(@Joseph*100+1,9,7,0,0,0,100,0,30000,30000,0,0,111,251,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - Stop Event - action list'),
(@Joseph*100+1,9,8,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Joseph Redpath - despawn - action list'),

(@Horgus,0,0,0,63,0,100,0,0,0,0,0,11,29060,1,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - On spawn - cast spell 29060'),
(@Horgus,0,1,0,6,0,100,0,0,0,0,0,80,@Horgus*100,2,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Horgus the Ravager - On death - action list'),
(@Horgus,0,2,0,0,0,100,0,3000,5000,6000,8000,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horgus the Ravager - In Combat - Cast Thrash'),
(@Horgus,0,3,0,0,0,100,0,8000,11000,9000,12000,11,15608,1,0,0,0,0,2,0,0,0,0,0,0,0,'Horgus the Ravager - In Combat - Cast Ravenous Claw'),
(@Horgus,0,4,0,63,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - On spawn - Talk 2'),

(@Horgus*100,9,0,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,19,@Defender,100,0,0,0,0,0,'Darrowshire Defender - talk 2 - action list'),
(@Horgus*100,9,1,0,0,0,100,0,10000,10000,0,0,8,0,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - On Script - Set React Passive'),
(@Horgus*100,9,2,0,0,0,100,0,0,0,0,0,18,512,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - On Script - Set Immune To NPC'),
(@Horgus*100,9,3,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - On Script - evade'),
(@Horgus*100,9,4,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire -  talk 3 - action list'),
(@Horgus*100,9,5,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire -  talk 3 - action list'),
(@Horgus*100,9,6,0,0,0,100,0,1000,1000,0,0,18,1,1,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - Set Unit_flags2 Feign Death - action list'),
(@Horgus*100,9,7,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,19,@Lightfire,100,0,0,0,0,0,'Davil Lightfire - despawn - action list'),
(@Horgus*100,9,8,0,0,0,100,0,1000,1000,0,0,47,1,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - Visible On - action list'),
(@Horgus*100,9,9,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - On Script - Set React Aggressive'),
(@Horgus*100,9,10,0,0,0,100,0,3000,3000,0,0,53,1,@Redpath,0,0,0,2,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - waypoint 1 - action list'),
(@Horgus*100,9,11,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath -  talk 1 - action list'),
(@Horgus*100,9,12,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford -  talk 2 - action list'),
(@Horgus*100,9,13,0,0,0,100,0,15000,15000,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horgus the Ravager - Spawn g1 wave3 - action list'),
(@Horgus*100,9,14,0,0,0,100,0,25000,25000,0,0,107,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horgus the Ravager - Spawn g4 wave1 - action list'),
(@Horgus*100,9,15,0,0,0,100,0,25000,25000,0,0,107,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horgus the Ravager - Spawn g4 wave2 - action list'),
(@Horgus*100,9,16,0,0,0,100,0,20000,20000,0,0,86,18650,2,19,@Redpath,50,0,19,@Redpath,50,0,0,0,0,0,'Captain Redpath - Spawn Marduk - action list'),
(@Horgus*100,9,17,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,19,@Marduk,100,0,0,0,0,0,'Marduk - talk 1 - action list'),
(@Horgus*100,9,18,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - On Script - Set React Passive'),
(@Horgus*100,9,19,0,0,0,100,0,0,0,0,0,18,512,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - On Script - Set Immune To NPC'),
(@Horgus*100,9,20,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - On Script - evade'),
(@Horgus*100,9,21,0,0,0,100,0,0,0,0,0,18,1,1,0,0,0,0,19,@Redpath,100,0,0,0,0,0,'Captain Redpath - set Unit_flags2 feign Death - action list'),
(@Horgus*100,9,22,0,0,0,100,0,500,500,0,0,1,2,0,0,0,0,0,19,@Defender,100,0,0,0,0,0,'Darrowshire Defender - talk3 - action list'),
(@Horgus*100,9,23,0,0,0,100,0,500,500,0,0,12,@CorruptedRed,6,60000,0,0,0,8,0,0,0,1494.081055,-3676.041748,80.846764,6.269975,'Captain Redpath - Spawn CorruptedRed - action list'),
(@Horgus*100,9,24,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@CorruptedRed,40,0,0,0,0,0,'CorruptedRed - talk 1 - action list'),
(@Horgus*100,9,25,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,@CorruptedRed,40,0,0,0,0,0,'CorruptedRed - On talk 2 - action list'),
(@Horgus*100,9,26,0,0,0,100,0,5000,5000,0,0,41,2,0,0,0,0,0,19,@Marduk,40,0,0,0,0,0,'Marduk - Despawn - action list'),

(@Marduk,0,0,0,63,0,100,0,0,0,0,0,80,@Marduk*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On spawn - ActionList'),

(@Marduk*100,9,0,0,0,0,100,0,0,0,0,0,43,0,10718,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Mount'),
(@Marduk*100,9,1,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Set React Passive'),
(@Marduk*100,9,2,0,0,0,100,0,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Unit flag non attackable'),
(@Marduk*100,9,3,0,0,0,100,0,0,0,0,0,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Set Immune To NPC'),
(@Marduk*100,9,4,0,0,0,100,0,0,0,0,0,18,131072,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Set PACIFIED'),
(@Marduk*100,9,5,0,0,0,100,0,100,100,0,0,46,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Move Forward'),
(@Marduk*100,9,6,0,0,0,100,0,2000,2000,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Marduk - On Script - Root'),

(@CorruptedRed,0,0,0,6,0,100,0,0,0,0,0,80,@CorruptedRed*100,2,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Captain Redpath the Corrupted - On death - action list'),
(@CorruptedRed,0,1,0,0,0,100,0,3000,5000,5000,7000,11,15580,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Redpath the Corrupted - In Combat - Cast Strike'),
(@CorruptedRed,0,2,0,0,0,100,0,8000,10000,14000,18000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Redpath the Corrupted - In Combat - Cast Backhand'),
(@CorruptedRed,0,3,0,0,0,100,0,3000,5000,15000,20000,11,16244,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath the Corrupted - In Combat - Cast Demoralizing Shout'),
(@CorruptedRed,0,4,0,0,0,100,0,5000,7000,9000,14000,11,12542,1,0,0,0,0,6,0,0,0,0,0,0,0,'Captain Redpath the Corrupted - In Combat - Cast Fear'),

(@CorruptedRed*100,9,0,0,0,0,100,0,0,0,0,0,12,@Joseph,8,60000,0,0,0,8,0,0,0,1444.337891,-3702.661133,77.368271,0.860624,'Joseph Redpath - Spawn  - action list'),
(@CorruptedRed*100,9,1,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,19,@Defender,100,0,0,0,0,0,'Darrowshire Defender - talk4 - action list'),
(@CorruptedRed*100,9,2,0,0,0,100,0,1000,1000,0,0,1,4,0,0,0,0,0,19,@Defender,100,0,0,0,0,0,'Darrowshire Defender - talk5 - action list'),
(@CorruptedRed*100,9,3,0,0,0,100,0,0,0,0,0,19,2,1,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - Remove Unit_Flag2 Hide Body - action list'),
(@CorruptedRed*100,9,4,0,0,0,100,0,0,0,0,0,19,33554432,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - Remove Unit_Flag Not Selectable - action list'),
(@CorruptedRed*100,9,5,0,0,0,100,0,0,0,0,0,75,12898,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - Add Aura - action list'),
(@CorruptedRed*100,9,6,0,0,0,100,0,0,0,0,0,81,1,0,0,0,0,0,19,@Davil,100,0,0,0,0,0,'Davil Crokford - Add npcflag - action list'),
(@CorruptedRed*100,9,7,0,0,0,100,0,10000,10000,0,0,41,0,0,0,0,0,0,11,@Defender,100,0,0,0,0,0,'Darrowshire Defender - despawn - action list'),
(@CorruptedRed*100,9,8,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Silver,100,0,0,0,0,0,'Silver Hand Disciple - despawn - action list'),
(@CorruptedRed*100,9,9,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Redpath,100,0,0,0,0,0,'Captain Redpath - despawn - action list'),
(@CorruptedRed*100,9,10,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Bloodletter,100,0,0,0,0,0,'Bloodletter - despawn - action list'),
(@CorruptedRed*100,9,11,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Sevant,100,0,0,0,0,0,'Sevant of Horgus - despawn - action list'),
(@CorruptedRed*100,9,12,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Horgus,100,0,0,0,0,0,'Horgus the Ravager - despawn - action list'),
(@CorruptedRed*100,9,13,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Skeleton,100,0,0,0,0,0,'Maraudin Skeleton - despawn - action list'),
(@CorruptedRed*100,9,14,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Corpse,100,0,0,0,0,0,'Marauding Corpse - despawn - action list'),
(@CorruptedRed*100,9,15,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,11,@Betrayer,100,0,0,0,0,0,'Darrowshire Betrayer - despawn - action list');


DELETE FROM `waypoints` WHERE `entry` IN (@Lightfire,@Redpath,@Joseph,@Defender);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@Defender,1,1468.1512,-3685.1484,77.66934,'Darrowshire Defender'),
(@Defender,2,1484.442993,-3676.545410,79.871506,'Darrowshire Defender'),
(@Lightfire,1,1501.275024,-3675.826172,81.447624,'Davil Lightfire'),
(@joseph,1,1433.060059,-3682.163086,76.364197 ,'Joseph Redpath'),
(@joseph,2,1433.873169,-3640.699707,78.194763,'Joseph Redpath'),
(@joseph,3,1452.3308,-3598.2327,86.48193,'Joseph Redpath'),
(@joseph,4,1453.6046,-3597.7927,86.96687,'Joseph Redpath'),
(@joseph,5,1453.3619,-3596.6516,86.962585,'Joseph Redpath'),
(@joseph,6,1454.325439,-3595.439941,86.951950,'Joseph Redpath'),
(@joseph,7,1455.368286,-3596.347900,86.950905,'Joseph Redpath'),
(@Redpath,1,1501.275024,-3675.826172,81.447624,'Captain Redpath');


DELETE FROM `gossip_menu` WHERE `MenuID`=3922 AND `TextID`=4777;
INSERT INTO `gossip_menu` (`MenuID`,`TextID`) VALUES (3922,4777); -- NO DB entry

UPDATE `creature_template` SET `gossip_menu_id`=3922,`npcflag`=1 WHERE `entry`=10945; -- 0 0




