/*
undo
TC Waypoints Conversion 7-16-26

Creatures with SmartAI in AZ 

*/

-- Lothros
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (76716); -- 0

DELETE FROM `creature_addon` where `guid` in (76716);

DELETE FROM `waypoint_data` where `id` in (767160);



-- Murloc Streamrunner
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (81076); -- 0

DELETE FROM `creature_addon` where `guid` in (81076);

DELETE FROM `waypoint_data` where `id` in (810760);


-- Razorfen Warrior
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` in (87291); -- 0

DELETE FROM `creature_addon` where `guid` in (87291);

DELETE FROM `waypoint_data` where `id` in (872910);


-- Scarlet Miner
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28822,-128892,-128893,-128894,-128895,-128896,-128898,-128899,-128901) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2882200) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28822,0,6,0,25,0,100,0,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Reset - Set Active On'),

(-128901,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128901,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128901,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12890100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12890100'),
(-128901,0,3,0,109,0,100,0,0,12890100,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12890100 Finished - Despawn In 2000 ms'),
(-128901,0,4,0,109,0,100,0,0,12890100,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12890100 Finished - Despawn In 2000 ms'),
(-128901,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128899,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128899,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128899,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889900'),
(-128899,0,3,0,109,0,100,0,0,12889900,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889900 Finished - Despawn In 2000 ms'),
(-128899,0,4,0,109,0,100,0,0,12889900,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889900 Finished - Despawn In 2000 ms'),
(-128899,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128898,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128898,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128898,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889800,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889800'),
(-128898,0,3,0,109,0,100,0,0,12889800,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889800 Finished - Despawn In 2000 ms'),
(-128898,0,4,0,109,0,100,0,0,12889800,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889800 Finished - Despawn In 2000 ms'),
(-128898,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128896,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128896,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128896,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889600'),
(-128896,0,3,0,109,0,100,0,0,12889600,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889600 Finished - Despawn In 2000 ms'),
(-128896,0,4,0,109,0,100,0,0,12889600,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889600 Finished - Despawn In 2000 ms'),
(-128896,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128895,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128895,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128895,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889500'),
(-128895,0,3,0,109,0,100,0,0,12889500,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889500 Finished - Despawn In 2000 ms'),
(-128895,0,4,0,109,0,100,0,0,12889500,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889500 Finished - Despawn In 2000 ms'),
(-128895,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128894,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128894,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128894,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889400,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889400'),
(-128894,0,3,0,109,0,100,0,0,12889400,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889400 Finished - Despawn In 2000 ms'),
(-128894,0,4,0,109,0,100,0,0,12889400,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889400 Finished - Despawn In 2000 ms'),
(-128894,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128893,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128893,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128893,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889300,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889300'),
(-128893,0,3,0,109,0,100,0,0,12889300,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889300 Finished - Despawn In 2000 ms'),
(-128893,0,4,0,109,0,100,0,0,12889300,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889300 Finished - Despawn In 2000 ms'),
(-128893,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms'),

(-128892,0,0,1,11,0,100,0,0,0,0,0,0,0,12,28821,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Summon Creature \'Mine Car\''),
(-128892,0,1,2,61,0,100,0,0,0,0,0,0,0,11,52465,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Cast \'Drag Mine Cart\''),
(-128892,0,2,0,61,0,100,0,0,0,0,0,0,0,232,12889200,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Respawn - Start Path 12889200'),
(-128892,0,3,0,109,0,100,0,0,12889200,0,0,0,0,41,2000,10,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889200 Finished - Despawn In 2000 ms'),
(-128892,0,4,0,109,0,100,0,0,12889200,0,0,0,0,41,2000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Path 12889200 Finished - Despawn In 2000 ms'),
(-128892,0,5,0,6,0,100,0,0,0,0,0,0,0,41,1000,0,0,0,0,0,204,28821,0,0,0,0,0,0,0,'Scarlet Miner - On Just Died - Despawn In 1000 ms');


-- Mine Cart
UPDATE `creature_template` SET `speed_run` = 2 WHERE `entry` in (28821); -- 2

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28821) AND `source_type` = 0 AND `id` IN (2,3,4,5,6,7,8,9);

