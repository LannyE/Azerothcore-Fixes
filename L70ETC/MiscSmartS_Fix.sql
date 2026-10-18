-- This is to fix errors on startup about smartai defined in Creature Template but no smartscripts defined.  Guess it is so other things can call them to do actions
UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (5608,36481); -- "" SmartAI Tested they still work
UPDATE `gameobject_template` SET `AIName`='' WHERE `entry` IN (181988); -- "" SmartGameObjectAI Tested it still works

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (23853,23852,23854,23855,23845); -- "" 2050
DELETE FROM smart_scripts WHERE entryorguid IN (23853,23852,23854,23855,23845) AND `source_type` = 0 AND `id` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23845,0,0,0,0,10,100,0,1000,1000,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Bergrisst Controller - In Combat (Phase 10) - Do Nothing'),
(23852,0,0,0,0,10,100,0,1000,1000,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"[DNT] L70ETC Mai'Kyl Controller - In Combat (Phase 10) - Do Nothing"),
(23853,0,0,0,0,10,100,0,1000,1000,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Samuro Controller - In Combat (Phase 10) - Do Nothing'),
(23854,0,0,0,0,10,100,0,1000,1000,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Sig Controller - In Combat (Phase 10) - Do Nothing'),
(23855,0,0,0,0,10,100,0,1000,1000,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'[DNT] L70ETC Chief Thunder-Skins Controller - In Combat (Phase 10) - Do Nothing');
