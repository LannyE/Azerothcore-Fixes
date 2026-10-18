SET @CGUID := 300074;
SET @EVENTID := 128;

UPDATE `creature` SET `unit_flags`='0' WHERE  `guid` IN (85117,85120);
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry` IN (36065,36066);
UPDATE `creature_template` SET `minlevel`='80' WHERE `entry`=34102;

DELETE FROM `game_event` WHERE `eventEntry`=@EVENTID;

DELETE FROM `game_event_creature` WHERE `eventEntry`IN(@EVENTID,-@EVENTID);

DELETE FROM `creature_text` WHERE `CreatureID` IN (36065,36066);
DELETE FROM `creature_text` WHERE `CreatureID`=34102 AND `GroupID` IN (33,34,35); -- 32,33
DELETE FROM `creature_text` WHERE `CreatureID`=35501 AND `GroupID`=3;

UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (35474,36065,36066,33698); -- ""

DELETE FROM `smart_scripts` WHERE `entryorguid`IN(35474,36065,36066,33698) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(-@CGUID-0,-@CGUID-1,-@CGUID-2,-@CGUID-3,-@CGUID-4,-@CGUID-5,-@CGUID-6,-@CGUID-7,-@CGUID-8,-@CGUID-9,-@CGUID-10,-@CGUID-11);
DELETE FROM `smart_scripts` WHERE `entryorguid`=35501 AND `source_type`=0 AND `id` IN (11,12,13,14);
DELETE FROM `smart_scripts` WHERE `entryorguid`=34102 AND `source_type`=0 AND `id` >= 5;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3610200,3410207,3410208) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36101,36102) AND `source_type`=0;  -- Remove new then later restore old back to ID instead of GUID
UPDATE `smart_scripts` SET `entryorguid`=36101 WHERE `entryorguid`=-65523 AND `source_type`=0 AND `id`=0 AND `link`=0 AND `event_type`=1;
UPDATE `smart_scripts` SET `entryorguid`=36102 WHERE `entryorguid`=-66479 AND `source_type`=0 AND `id`=0 AND `link`=0 AND `event_type`=1;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+11 AND `id1` IN (35474,36065,36066);

DELETE FROM `waypoints` WHERE `entry` BETWEEN (@CGUID*10)+0 AND (@CGUID*10)+11;
DELETE FROM `waypoints` WHERE `entry` IN (341023,36101,36102);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+11;
