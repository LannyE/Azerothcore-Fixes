/*
Carrion Hunter that spawns after Falconer Dies does not despawn if OOC.  Cannot affect Wild Carrion Hunters
Also fixes Heartbeat errors which occur cause the Carrion Hunter is a passenger and you can kill it while it is a passenger and that causes an error.  
You should not be able to select the Carrion Hunter while it is a passenger.  This makes it non-selectable while it is a passenger.  
*/

-- Blight Falconer
UPDATE `vehicle_template_accessory` SET `summontimer` = 300 WHERE `entry` in (31262); -- Allows looting for 2 minutes.

DELETE FROM `smart_scripts` WHERE `entryorguid` = 31262 AND `source_type` = 0 AND `id` IN (1,2,3);


-- Carrion Hunter
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 31263; -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid` = 31263 AND `source_type` = 0;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3126301,3126302) AND `source_type` = 9;

