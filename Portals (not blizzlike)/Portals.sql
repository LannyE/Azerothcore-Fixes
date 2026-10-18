SET @entry := xxx; -- New game object id for the portal object
SET @text := 'xxx'; -- Tooltip to show when hovering over portal
SET @display := 1327; -- Display id to use for the portal

-- Coordinates to port to:
SET @map := xxx; -- Map id
SET @x := xxx;
SET @y := xxx;
SET @z := xxx;
SET @o := xxx; -- Orientation in radians, 0 is north

INSERT INTO `gameobject_template` VALUES 
(@entry,10,@display,@text,'','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','',1);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@entry);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@entry,1,0,0,64,0,100,0,0,0,0,0,0,62,@map,0,0,0,0,0,0,0,0,0,0,@x,@y,@z,@o,CONCAT(@text, ' - On click - Teleport'));