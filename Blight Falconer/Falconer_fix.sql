/*
Fix Carrion Hunter that dismounts after Falconer Dies does not despawn on evade.  Set to not affect Wild Carrion Hunters
Also fixes Heartbeat errors which occur cause the Carrion Hunter is a passenger and you can kill it while it is a passenger and that causes an error.  
You should not be able to select the Carrion Hunter while it is a passenger.  This makes it non-selectable while it is a passenger.  
*/

-- Blight Falconer (Vehicle)
UPDATE `vehicle_template_accessory` SET `summontimer` = 120000 WHERE `entry` in (31262); -- Allows looting for 2 minutes.

DELETE FROM `smart_scripts` WHERE `entryorguid` = 31262 AND `source_type` = 0 AND `id` IN (1,2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(31262,0,1,0,6,0,100,0,0,0,0,0,80,3126301,2,1,0,0,0,19,31263,1,0,0,0,0,0,'Blight Falconer - On Death - Run Script on Carrion Hunter passenger'),
(31262,0,2,0,6,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,19,31263,1,0,0,0,0,0,'Blight Falconer Death - Remove Non-Selectable Flags on Carrion Hunter passenger'),
(31262,0,3,0,1,0,100,0,1000,1000,0,0,18,33554434,0,0,0,0,0,19,31263,1,0,0,0,0,0,'Blight Falconer - OOC - Set Non-Selectable Flag on Carrion Hunter passenger'); -- Fixes "Attempted sending heartbeat with root flag for guid GUID..." error as killing the Carrion Hunter as it is passenger causes an error.   


-- Carrion Hunter (Passenger)
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 31263; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 31263 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31263,0,0,0,7,1,100,0,0,0,0,0,80,3126302,2,1,0,0,0,1,0,0,0,0,0,0,0,'Carrion Hunter -  On Evade (Phase 1) - Run Script');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3126301,3126302) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(3126301,9,0,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Carrion Hunter - On Script - Set Phase 1'),
(3126301,9,1,0,0,0,100,0,100,100,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Carrion Hunter - On Script - Remove Not-Selectable Flag'),
(3126301,9,2,0,0,0,100,0,120000,120000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Carrion Hunter - On Script - Despawn after 120s'),

(3126302,9,0,0,0,0,100,0,5000,5000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Carrion Hunter - On Script - Despawn');

