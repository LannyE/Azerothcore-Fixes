
-- Only usable on Giants in feralas
DELETE FROM `conditions` WHERE `SourceEntry`=23359 AND `SourceTypeOrReferenceId`=17;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`, `ErrorType`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17, 0, 23359, 0, 0, 31, 1, 3, 5357, 0, 0, 0, 0, "", "Transmogrify! target can be Land Walker"),
(17, 0, 23359, 0, 0, 36, 1, 0, 0, 0, 0, 0, 0, "", "Transmogrify! target must be alive"),
(17, 0, 23359, 0, 1, 31, 1, 3, 5358, 0, 0, 0, 0, "", "Transmogrify! target can be Cliff Giant"),
(17, 0, 23359, 0, 1, 36, 1, 0, 0, 0, 0, 0, 0, "", "Transmogrify! target must be alive"),
(17, 0, 23359, 0, 2, 31, 1, 3, 5359, 0, 0, 0, 0, "", "Transmogrify! target can be Shore Strider"),
(17, 0, 23359, 0, 2, 36, 1, 0, 0, 0, 0, 0, 0, "", "Transmogrify! target must be alive"),
(17, 0, 23359, 0, 3, 31, 1, 3, 5360, 0, 0, 0, 0, "", "Transmogrify! target can be Deep Strider"),
(17, 0, 23359, 0, 3, 36, 1, 0, 0, 0, 0, 0, 0, "", "Transmogrify! target must be alive"),
(17, 0, 23359, 0, 4, 31, 1, 3, 5361, 0, 0, 0, 0, "", "Transmogrify! target can be Wave Strider"),
(17, 0, 23359, 0, 4, 36, 1, 0, 0, 0, 0, 0, 0, "", "Transmogrify! target must be alive");

-- Make the Giants attack the invoker
DELETE FROM acore_world.smart_scripts where entryorguid in (5357,5358,5359,5360,5361) and `source_type` = 0 and `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(5357,0,1,0,8,0,100,512,23359,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Land Walker - On Spellhit \'Transmogrify!\' - Attack Invoker'),
(5358,0,1,0,8,0,100,512,23359,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Cliff Giant - On Spellhit \'Transmogrify!\' - Attack Invoker'),
(5359,0,1,0,8,0,100,512,23359,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Shore Strider - On Spellhit \'Transmogrify!\' - Attack Invoker'),
(5360,0,1,0,8,0,100,512,23359,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Deep Strider - On Spellhit \'Transmogrify!\' - Attack Invoker'),
(5361,0,1,0,8,0,100,512,23359,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wave Strider - On Spellhit \'Transmogrify!\' - Attack Invoker');