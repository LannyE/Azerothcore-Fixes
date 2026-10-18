/*
Add Jadaar and Asric RP events in Icecrown 4-1-26
 Randomly choose out of 5 conversations

*/

-- Jadaar
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (31899);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (31899) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3189900,3189901,3189902,3189903,3189904) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31899,0,0,0,1,0,100,0,120000,190000,120000,190000,0,0,87,3189900,3189901,3189902,3189903,3189904,0,1,0,0,0,0,0,0,0,0,'Jadaar - OOC - Run Random Script'),

(3189900,9,0,0,0,0,100,0,100,100,0,0,0,0,1,0,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 0 \'Asric\''),
(3189900,9,1,0,0,0,100,0,7000,7000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 0'),
(3189900,9,2,0,0,0,100,0,6000,6000,0,0,0,0,45,1,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Set Data 1 0 \'Asric\''),
(3189900,9,3,0,0,0,100,0,100,100,0,0,0,0,11,56745,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Cast Drink'),

(3189901,9,0,0,0,0,100,0,100,100,0,0,0,0,1,1,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 1 \'Asric\''),
(3189901,9,1,0,0,0,100,0,14000,14000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 1'),
(3189901,9,2,0,0,0,100,0,13000,13000,0,0,0,0,1,2,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 2 \'Asric\''),
(3189901,9,3,0,0,0,100,0,18000,18000,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 2'),
(3189901,9,4,0,0,0,100,0,6000,6000,0,0,0,0,1,3,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 3 \'Asric\''),

(3189902,9,0,0,0,0,100,0,100,100,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 3'),
(3189902,9,1,0,0,0,100,0,7000,7000,0,0,0,0,1,4,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 4 \'Asric\''),
(3189902,9,2,0,0,0,100,0,14000,14000,0,0,0,0,1,5,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 5 \'Asric\''),
(3189902,9,3,0,0,0,100,0,15000,15000,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 4'),
(3189902,9,4,0,0,0,100,0,8000,8000,0,0,0,0,1,6,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 6 \'Asric\''),

(3189903,9,0,0,0,0,100,0,100,100,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 5'),
(3189903,9,1,0,0,0,100,0,17000,17000,0,0,0,0,1,7,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 7 \'Asric\''),
(3189903,9,2,0,0,0,100,0,20000,20000,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 6'),
(3189903,9,3,0,0,0,100,0,16000,16000,0,0,0,0,1,8,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 8 \'Asric\''),
(3189903,9,4,0,0,0,100,0,15000,15000,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 7'),
(3189903,9,5,0,0,0,100,0,12000,12000,0,0,0,0,1,9,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 9 \'Asric\''),

(3189904,9,0,0,0,0,100,0,100,100,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 8'),
(3189904,9,1,0,0,0,100,0,11000,11000,0,0,0,0,1,10,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 10 \'Asric\''),
(3189904,9,2,0,0,0,100,0,11000,11000,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 9'),
(3189904,9,3,0,0,0,100,0,10000,10000,0,0,0,0,1,11,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 11 \'Asric\''),
(3189904,9,4,0,0,0,100,0,5000,5000,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Script - Say Line 10'),
(3189904,9,5,0,0,0,100,0,12000,12000,0,0,0,0,1,12,0,0,0,0,0,11,31898,8,0,0,0,0,0,0,'Jadaar - On Script - Say Line 12 \'Asric\'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` IN (1) AND `SourceEntry` IN (31899) AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,31899,0,0,29,1,31898,8,0,0,0,0,'','Group 0: Execute SAI (Action 0) if creature \'Asric\'is near');

DELETE FROM `creature_text` WHERE `CreatureID` IN (31899) AND `GroupID` IN (0,1,2,3,4,5,6,7,8,9,10);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(31899,0,0,'And to yours, brat.',12,0,100,0,0,0,36819,0,'Jadaar'),

(31899,1,0,'I don\'t know. I am uncertain this is the proper vehicle to heroism.',12,0,100,1,0,0,36745,0,'Jadaar'),
(31899,2,0,'I dislike elekks. Strongly.',12,0,100,0,0,0,36747,0,'Jadaar'),

(31899,3,0,'Why aren\'t you competing?',12,0,100,1,0,0,36749,0,'Jadaar'),
(31899,4,0,'They refused to train you?',12,0,100,0,0,0,36752,0,'Jadaar'),

(31899,5,0,'You realize, of course, that we would likely have to joust one another should we enter the tournament.',12,0,100,1,0,0,36754,0,'Jadaar'),
(31899,6,0,'Bullheadedness? It is my perseverance that has gotten us this far, dandy. You wouldn\'t last five seconds.',12,0,100,0,0,0,36769,0,'Jadaar'),
(31899,7,0,'I hear those lances are rough-hewn, too. I\'m no fan of splinters.',12,0,100,0,0,0,36771,0,'Jadaar'),

(31899,8,0,'If we do succeed here, you realize what comes next.',12,0,100,1,0,0,36773,0,'Jadaar'),
(31899,9,0,'The two of us against the vast undead sea.',12,0,100,0,0,0,36775,0,'Jadaar'),
(31899,10,0,'...perhaps we should seek our fortune somewhere less likely to be fatal.',12,0,100,1,0,0,36777,0,'Jadaar');


-- Asric
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` in (31898);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (31898) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31898,0,0,0,38,0,100,0,1,0,0,0,0,0,11,56745,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Jadaar - On Data Set 1 0 - Run Random Script');

DELETE FROM `creature_text` WHERE `CreatureID` IN (31898) AND `GroupID` IN (0,1,2,3,4,5,6,7,8,9,10,11,12);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(31898,0,0,'To your health, windbag.',12,0,100,0,0,0,36818,0,'Asric'),

(31898,1,0,'Now comes our chance at redemption, Jadaar. We could become heroes through this tournament!',12,0,100,1,0,0,36744,0,'Asric'),
(31898,2,0,'What could be holding you back? You\'re hale, hearty... missing an eye perhaps, but that shouldn\'t keep you from competing!',12,0,100,1,0,0,36746,0,'Asric'),
(31898,3,0,'Ah. That might be a problem.',12,0,100,0,0,0,36748,0,'Asric'),

(31898,4,0,'I had a... situation some time back with one of the individuals now heading up the Sunreavers here. A falling out, if you will.',12,0,100,1,0,0,36750,0,'Asric'),
(31898,5,0,'Needless to say, when I walked into the pavilion there was something of an altercation.',12,0,100,1,0,0,36751,0,'Asric'),
(31898,6,0,'He suggested I do something else with the lance, instead. It\'s not my place to repeat vulgarities.',12,0,100,0,0,0,36753,0,'Asric'),

(31898,7,0,'There is no doubt in my mind you\'d lose. Speed and wit triumphs over brute strength and bullheadedness any day of the week.',12,0,100,1,0,0,36755,0,'Asric'),
(31898,8,0,'Typical empty boasting. Still, the stables are rather distant and the drinks here are decent enough.',12,0,100,1,0,0,36770,0,'Asric'),
(31898,9,0,'Just as well.',12,0,100,1,0,0,36772,0,'Asric'),

(31898,10,0,'The Citadel, correct? Facing the Lich King\'s most powerful minions.',12,0,100,1,0,0,36774,0,'Asric'),
(31898,11,0,'Indeed.',12,0,100,0,0,0,36776,0,'Asric'),
(31898,12,0,'Discretion is the better part of valor, after all.',12,0,100,1,0,0,36778,0,'Asric');
