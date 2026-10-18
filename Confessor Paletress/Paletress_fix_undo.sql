-- SELECT * FROM acore_world.smart_scripts where entryorguid IN (33477,33467,33462,33480,33459,33465);

UPDATE `smart_scripts` SET `action_param1` = 0 WHERE entryorguid IN (33477,33467,33462,33480,33459,33465) AND `source_type` = 0 AND `id` = 3 AND `action_type` = 101; -- Fix Confessors not returning to seats

UPDATE `creature` SET `position_x` = 8492.93,`position_y` = 1096.7,`position_z` = 554.377 WHERE `guid` in (85046); -- Ironforge
UPDATE `creature` SET `position_x` = 8493.24,`position_y` = 1088.42,`position_z` = 554.452 WHERE `guid` in (85035); -- Stormwind
UPDATE `creature` SET `position_x` = 8490.95,`position_y` = 1095.49,`position_z` = 554.516 WHERE `guid` in (85003); -- Gnomeregan
UPDATE `creature` SET `position_x` = 8485.72,`position_y` = 1103.16,`position_z` = 554.446 WHERE `guid` in (84991); -- Orgrimmar
UPDATE `creature` SET `position_x` = 8484.67,`position_y` = 1101.09,`position_z` = 554.557 WHERE `guid` in (85013); -- Silvermoon
UPDATE `creature` SET `position_x` = 8478.13,`position_y` = 1106.71,`position_z` = 554.544 WHERE `guid` in (85012); -- Undercity

-- Fix Confessonal Texts with champs
DELETE FROM `smart_scripts` WHERE `entryorguid`=34102 AND `source_type`=0 AND `id` < 5;  -- Valkyr Event uses id 6 and higher
DELETE FROM `smart_scripts` where entryorguid IN (-75905,3410200,3410201,3410202,3410203,3410204,3410205,3410206);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(34102,0,0,0,60,0,100,512,240000,240000,600000,600000,0,0,88,3410201,3410206,0,0,0,0,1,0,0,0,0,0,0,0,0,'On Update - Run Random Confession Script'),
(34102,0,1,0,60,0,100,512,0,0,600000,600000,0,0,80,3410200,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'On Update - Run Speach Script'), -- These will conflict with the Valkyr event.  If you keep the event then change these to guid -75905 instead of 34102.
(34102,0,2,0,38,0,100,512,1,1,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.54,'Data Set - Set Orientation'),
(34102,0,3,0,40,0,100,512,1,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.82,'Movement Inform - Set Orientation'),
(34102,0,4,0,34,0,100,512,8,6,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Movement Inform - Set Orientation'),

(3410200,9,0,0,0,0,100,0,0,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Set NPC Flag'),
(3410200,9,1,0,0,0,100,0,0,0,0,0,0,0,53,0,34102,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Start WP'),
(3410200,9,2,0,0,0,100,0,8000,8000,0,0,0,0,1,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,3,0,0,0,100,0,7000,7000,0,0,0,0,1,101,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,4,0,0,0,100,0,6000,6000,0,0,0,0,1,102,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,5,0,0,0,100,0,15000,15000,0,0,0,0,1,103,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,6,0,0,0,100,0,5500,5500,0,0,0,0,1,104,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,7,0,0,0,100,0,15000,15000,0,0,0,0,1,105,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,8,0,0,0,100,0,7000,7000,0,0,0,0,1,106,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,9,0,0,0,100,0,7000,7000,0,0,0,0,1,107,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,10,0,0,0,100,0,15000,15000,0,0,0,0,1,108,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,11,0,0,0,100,0,14000,14000,0,0,0,0,1,109,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,12,0,0,0,100,0,15000,15000,0,0,0,0,1,110,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,13,0,0,0,100,0,7000,7000,0,0,0,0,1,111,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,14,0,0,0,100,0,6000,6000,0,0,0,0,1,112,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,15,0,0,0,100,0,8000,8000,0,0,0,0,1,113,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,16,0,0,0,100,0,15000,15000,0,0,0,0,1,114,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,17,0,0,0,100,0,5500,5500,0,0,0,0,1,115,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,18,0,0,0,100,0,11000,11000,0,0,0,0,1,116,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,19,0,0,0,100,0,11000,11000,0,0,0,0,1,117,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,20,0,0,0,100,0,11000,11000,0,0,0,0,1,118,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk'),
(3410200,9,21,0,0,0,100,0,20000,20000,0,0,0,0,69,6,0,0,0,0,0,8,0,0,0,0,8490.29,1111.51,554.34,0,'Script9 - Move Point'),
(3410200,9,22,0,0,0,100,0,20000,20000,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Set NPC Flag'),

(3410201,9,0,0,0,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,19,33462,50,0,0,0,0,0,0,'Script9 - Store Target'),
(3410201,9,1,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Walk'),
(3410201,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Data'),
(3410201,9,3,0,0,0,100,0,0,0,0,0,0,0,91,255,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Remove Bytes1'),
(3410201,9,4,0,0,0,100,0,20000,20000,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 0'),
(3410201,9,5,0,0,0,100,0,8000,8000,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 1'),
(3410201,9,6,0,0,0,100,0,8000,8000,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 2'),
(3410201,9,7,0,0,0,100,0,16000,16000,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 3'),
(3410201,9,8,0,0,0,100,0,7000,7000,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 0'),
(3410201,9,9,0,0,0,100,0,10000,10000,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 1'),
(3410201,9,10,0,0,0,100,0,10000,10000,0,0,0,0,201,3,0,0,0,0,0,12,1,0,0,0,8482.58,1113.82,554.34,0,'Script9 - Move Point'),
(3410201,9,11,0,0,0,100,0,2000,2000,0,0,0,0,24,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Evade Target'),
(3410201,9,12,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Set Orientation'),

(3410204,9,0,0,0,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,19,33467,50,0,0,0,0,0,0,'Script9 - Store Target'),
(3410204,9,1,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Walk'),
(3410204,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Data'),
(3410204,9,3,0,0,0,100,0,0,0,0,0,0,0,91,255,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Remove Bytes1'),
(3410204,9,4,0,0,0,100,0,20000,20000,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 0'),
(3410204,9,5,0,0,0,100,0,8000,8000,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 1'),
(3410204,9,6,0,0,0,100,0,10000,10000,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 2'),
(3410204,9,7,0,0,0,100,0,7000,7000,0,0,0,0,1,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 30'),
(3410204,9,8,0,0,0,100,0,15000,15000,0,0,0,0,1,31,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 31'),
(3410204,9,9,0,0,0,100,0,5000,5000,0,0,0,0,1,32,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 32'),
(3410204,9,10,0,0,0,100,0,2000,2000,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 3'),
(3410204,9,11,0,0,0,100,0,5000,5000,0,0,0,0,201,3,0,0,0,0,0,12,1,0,0,0,8482.58,1113.82,554.34,0,'Script9 - Move Point'),
(3410204,9,12,0,0,0,100,0,2000,2000,0,0,0,0,24,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Evade Target'),
(3410204,9,13,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Set Orientation'),

(3410205,9,0,0,0,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,19,33477,50,0,0,0,0,0,0,'Script9 - Store Target'),
(3410205,9,1,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Walk'),
(3410205,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Data'),
(3410205,9,3,0,0,0,100,0,0,0,0,0,0,0,91,255,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Remove Bytes1'),
(3410205,9,4,0,0,0,100,0,20000,20000,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 0'),
(3410205,9,5,0,0,0,100,0,7000,7000,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 1'),
(3410205,9,6,0,0,0,100,0,13000,13000,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 2'),
(3410205,9,7,0,0,0,100,0,15000,15000,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 3'),
(3410205,9,8,0,0,0,100,0,8000,8000,0,0,0,0,1,40,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 40'),
(3410205,9,9,0,0,0,100,0,14000,14000,0,0,0,0,1,41,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 41'),
(3410205,9,10,0,0,0,100,0,15000,15000,0,0,0,0,1,42,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 42'),
(3410205,9,11,0,0,0,100,0,8000,8000,0,0,0,0,1,43,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 43'),
(3410205,9,12,0,0,0,100,0,15000,15000,0,0,0,0,201,3,0,0,0,0,0,12,1,0,0,0,8482.58,1113.82,554.34,0,'Script9 - Move Point'),
(3410205,9,13,0,0,0,100,0,2000,2000,0,0,0,0,24,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Evade Target'),
(3410205,9,14,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Set Orientation'),

(3410206,9,0,0,0,0,100,0,0,0,0,0,0,0,64,1,0,0,0,0,0,19,33465,50,0,0,0,0,0,0,'Script9 - Store Target'),
(3410206,9,1,0,0,0,100,0,0,0,0,0,0,0,59,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Walk'),
(3410206,9,2,0,0,0,100,0,0,0,0,0,0,0,45,2,2,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Set Data'),
(3410206,9,3,0,0,0,100,0,0,0,0,0,0,0,91,255,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Remove Bytes1'),
(3410206,9,4,0,0,0,100,0,20000,20000,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 0'),
(3410206,9,5,0,0,0,100,0,6000,6000,0,0,0,0,1,50,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Talk Self 50'),
(3410206,9,6,0,0,0,100,0,6000,6000,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 1'),
(3410206,9,7,0,0,0,100,0,7000,7000,0,0,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 2'),
(3410206,9,8,0,0,0,100,0,3000,3000,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Talk Target 3'),
(3410206,9,9,0,0,0,100,0,3000,3000,0,0,0,0,201,3,0,0,0,0,0,12,1,0,0,0,8482.58,1113.82,554.34,0,'Script9 - Move Point'),
(3410206,9,10,0,0,0,100,0,2000,2000,0,0,0,0,24,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,'Script9 - Evade Target'),
(3410206,9,11,0,0,0,100,0,0,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Script9 - Set Orientation');


-- Missing Texts/Emotes
DELETE FROM `creature_text` where CreatureID = 34102 AND `GroupID` IN (35,36) AND `ID` = 0;


-- Cleanup Duplicate texts undo
DELETE FROM `creature_text` where CreatureID = 34102 AND `GroupID` > 39 AND `GroupID` < 119  AND `ID` = 0;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(34102,40,0,'Your heart is in the right place, and I know you seek to serve the Light. But these small strikes do little to the great undead host.',12,0,100,1,0,0,34264,0,'Argent Confessor Paletress'),
(34102,41,0,'This tournament is helping to form a strong, concerted force, though it may not appear obvious. When we\'re ready, the eyes of the Crusade and all its champions will turn towards Icecrown.',12,0,100,1,0,0,0,0,'Argent Confessor Paletress'),
(34102,42,0,'We will bring the might of all races to the Lich King, and he will be defeated.',12,0,100,1,0,0,34266,0,'Argent Confessor Paletress'),
(34102,43,0,'I know this does not seem like the obvious path to you, but it will bring you closer to the Light. Fight well, brother.',12,0,100,1,0,0,34267,0,'Argent Confessor Paletress'),
(34102,50,0,'Oh, my. Do you feel remorseful, at least?',12,0,100,1,0,0,34254,0,'Argent Confessor Paletress'),
(34102,100,0,'Thank you all for attending this sermon. It\'s wonderful to see so many familiar faces!',12,0,100,1,0,0,34192,0,'Argent Confessor Paletress'),
(34102,101,0,'Today I would like to touch on the three virtues of the Light.',12,0,100,1,0,0,34193,0,'Argent Confessor Paletress'),
(34102,102,0,'These are dark and difficult times for us all. The armies of the Scourge amass to the south. Companions fall on the battlefield and rise to serve our enemy moments later.',12,0,100,1,0,0,34194,0,'Argent Confessor Paletress'),
(34102,103,0,'Many of you have experienced a betrayal of trust.',12,0,100,1,0,0,34196,0,'Argent Confessor Paletress'),
(34102,104,0,'Yet you persevere, as we all must. In these times, no one is a stranger to the virtue of tenacity. In the face of despair and hatred, we continue to stand true to our beliefs and fight on.',12,0,100,1,0,0,34197,0,'Argent Confessor Paletress'),
(34102,105,0,'There can be no doubt as to your tenacity... but there are other virtues to consider.',12,0,100,1,0,0,34199,0,'Argent Confessor Paletress'),
(34102,106,0,'Respect is the first virtue taught to those joining the path of the Light.',12,0,100,1,0,0,34200,0,'Argent Confessor Paletress'),
(34102,107,0,'Look across the aisle to those you would call enemy. Despite the hatred that separates you, there are qualities to respect in your opponent. Their prowess should be acknowledged.',12,0,100,1,0,0,34201,0,'Argent Confessor Paletress'),
(34102,108,0,'All of us gathered here have a concept of honorable combat. Conducting yourself with honor and treating your opponent as you wish to be treated shows respect.',12,0,100,1,0,0,34202,0,'Argent Confessor Paletress'),
(34102,109,0,'Respect your opponent on the field, whether he be your brother or your sworn enemy. No matter where your beliefs truly lie, such respect is acknowledging a connection...',12,0,100,1,0,0,34203,0,'Argent Confessor Paletress'),
(34102,110,0,'...and in acknowledging those connections, you are closer to the Light.',12,0,100,1,0,0,34205,0,'Argent Confessor Paletress'),
(34102,111,0,'There is one further step on the path of Light: compassion.',12,0,100,1,0,0,34206,0,'Argent Confessor Paletress'),
(34102,112,0,'Rivalries abound in this day and age. It is easy to see differences wherever you turn.',12,0,100,1,0,0,34207,0,'Argent Confessor Paletress'),
(34102,113,0,'The challenge is in looking beyond appearances and understanding our similarities. Through this understanding, you can feel compassion for the losses others have suffered...',12,0,100,1,0,0,34208,0,'Argent Confessor Paletress'),
(34102,114,0,'...even if the victim bears another banner.',12,0,100,1,0,0,34209,0,'Argent Confessor Paletress'),
(34102,115,0,'By feeling and understanding compassion in enemy and ally alike, you reaffirm your connection with the world.',12,0,100,1,0,0,34210,0,'Argent Confessor Paletress'),
(34102,116,0,'Acting on these tenets, these virtues, help make the world a place we all can appreciate. A world of honor and justice.',12,0,100,1,0,0,34211,0,'Argent Confessor Paletress'),
(34102,117,0,'Think on my words, friends. In the darkness that surrounds us all, the Light is needed more than ever.',12,0,100,1,0,0,34212,0,'Argent Confessor Paletress'),
(34102,118,0,'I\'ll be behind the confessional screen if anyone wishes to speak with me. Any doubts, any worries, any uncertainties I will happily soothe.',12,0,100,1,0,0,34216,0,'Argent Confessor Paletress'),
