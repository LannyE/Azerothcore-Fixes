-- Fixes Error when Griselda's smart script greets customers (reduced to 18) some of them use the class since the rabbit wanders and doesn't 
-- have a class it sends an error.

-- Rabbit should not wander it is a gameobject that telports players that are near
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0  WHERE `guid` = 110521;

-- Reduce distance radius Griselda will greet customers - It currently goes just outside the building. Reduced to 18 from 20
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28997 AND `source_type` = 0 AND `id` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28997,0,0,0,10,0,100,0,1,18,30000,120000,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Griselda Hunderland - OOC LOS - Say Line');
