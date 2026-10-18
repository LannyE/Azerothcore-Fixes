-- Wandering Artificer and stationary - NEW
DELETE FROM `creature` WHERE `guid` IN (300018,300019); -- New creatures

-- Existing Artificer
UPDATE `creature` SET `position_x`=-4190.63,`position_y`=-12463.6,`position_z`=45.3419,`orientation`=4.15388, WHERE `entry`=61962;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300018,-61962) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30001800,30001801,1722800,1722801,1722802) AND `source_type`=9;

DELETE FROM `waypoints` WHERE `entry` IN (17228);




