UPDATE `creature` SET `MovementType`=0 WHERE `guid` IN (70141,70089);

DELETE FROM `creature_addon` WHERE `guid` IN (70141);

DELETE FROM `waypoint_data` WHERE `id` IN (701410);

DELETE FROM `creature_formations` where leaderGUID = 70141;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19657) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(19657,0,0,0,1,0,100,513,0,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Out of Combat - Disable Combat Movement (Phase 1) (No Repeat)'),
(19657,0,1,2,4,0,100,1,0,0,0,0,0,0,11,19816,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Summoner Kanthin - On Aggro - Cast \'Fireball\' (No Repeat)'),
(19657,0,2,0,61,0,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - On Aggro - Increment Phase By 1 (No Repeat)'),
(19657,0,3,0,9,1,100,0,0,0,3400,4800,0,40,11,19816,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Summoner Kanthin - Within 0-40 Range - Cast \'Fireball\' (No Repeat)'),
(19657,0,4,5,3,1,100,513,0,7,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Between 0-7% Mana - Enable Combat Movement (Phase 1) (No Repeat)'),
(19657,0,5,0,61,1,100,512,0,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Between 0-7% Mana - Increment Phase By 1 (Phase 1) (No Repeat)'),
(19657,0,6,0,9,1,100,513,0,0,0,0,35,80,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(19657,0,7,0,9,1,100,513,0,0,0,0,5,15,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)'),
(19657,0,8,0,9,1,100,513,0,0,0,0,0,5,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)'),
(19657,0,9,0,3,2,100,512,15,100,100,100,0,0,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Between 15-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)'),
(19657,0,10,0,106,0,100,0,12000,16000,12000,16000,0,8,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Summoner Kanthin - Within 0-8 Range - Cast \'Frost Nova\' (Phase 1) (No Repeat)'),
(19657,0,11,0,0,0,100,0,10000,14000,18000,21000,0,0,11,17273,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Summoner Kanthin - In Combat - Cast \'Pyroblast\' (Phase 1) (No Repeat)');


