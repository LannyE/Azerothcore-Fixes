DELETE FROM `creature` WHERE `id1` IN (15383, 15431, 15432, 15434, 15437, 15445, 15446, 15448, 15450, 15451, 15452, 15453, 15455, 15456, 15457, 15700);


DELETE FROM `creature` WHERE `id1` IN (15459, 15460, 15469, 15477, 15508, 15512, 15515, 15522, 15525, 15528, 15529, 15532, 15533, 15534, 15535);


-- Horde commendation npcs
DELETE FROM `creature` WHERE `id1` IN (21968, 15738, 15737, 15739, 15736);


-- Alliance commendation npcs
DELETE FROM `creature` WHERE `id1` IN (15731, 15733, 15735, 15734, 21969);


DELETE FROM `creature` WHERE `id1` IN (15700, 15701);


-- My additions undo

-- Officer Maloof Stormwind
DELETE FROM `creature` where `guid` in (300089);

-- General Zog <Horde Ambassador> (I did not undo his creature template changes)
DELETE FROM `creature` where `guid` in (300090);

-- Commander Stronghammer <Alliance Ambassador> (I did not undo his creature template changes)
DELETE FROM `creature` where `guid` in (300091);

-- Ironforge Guards by General Zog
DELETE FROM `creature` where `guid` in (3115494,3115495);

-- Orgrimmar Guards by Commander Stronghammer
DELETE FROM `creature` where `guid` in (3115496,3115497);

-- AQ War Effort Event
UPDATE `game_event` SET `length`=1 WHERE `eventEntry`=22; -- 1

DELETE FROM game_event_creature where eventEntry in (-22,22);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(22,38),
(22,76747),
(22,85607);

-- AQ War Event (10 Hour)
DELETE FROM game_event where eventEntry = 151;

DELETE FROM game_event_creature where eventEntry in (151);

DELETE FROM game_event_gameobject where eventEntry in (151);



-- AQ War Event (10 Hour) - New Event ID
DELETE FROM game_event where eventEntry = 252;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`holidayStage`,`description`,`world_event`,`announce`) VALUES 
(252,'2000-01-01 14:00:00','2000-01-01 14:00:00',525600,600,0,0,'AQ War Event',0,2);

DELETE FROM game_event_creature where eventEntry in (252);
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(252,311617),
(252,311616),
(252,311615),
(252,311618),
(252,311619),
(252,311620),
(252,311621),
(252,311623),
(252,311624),
(252,311625),
(252,311626),
(252,311628),
(252,311629),
(252,311630),
(252,311631),
(252,311600),
(252,311601),
(252,311602),
(252,311603),
(252,311605),
(252,311606),
(252,311607),
(252,311608),
(252,311610),
(252,311611),
(252,311612),
(252,311613),
(252,311604),
(252,311609),
(252,311614),
(252,311622),
(252,311627),
(252,311632);


DELETE FROM game_event_gameobject where eventEntry in (252);
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(252,105000),
(252,105001),
(252,105002),
(252,105003),
(252,105004),
(252,105005);