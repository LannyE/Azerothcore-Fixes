
--  show gossip options for NPCs in Stillpine Hold only if The Prophecy of Akida rewarded

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (7428, 7429, 7430, 7431);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7428, 0, 0, 0, 8, 0, 9544, 0, 0, 0, 0, 0, "", "Show gossip option 0 if player has quest 9544 rewarded"),
(15, 7429, 0, 0, 0, 8, 0, 9544, 0, 0, 0, 0, 0, "", "Show gossip option 0 if player has quest 9544 rewarded"),
(15, 7430, 0, 0, 0, 8, 0, 9544, 0, 0, 0, 0, 0, "", "Show gossip option 0 if player has quest 9544 rewarded"),
(15, 7431, 0, 0, 0, 8, 0, 9544, 0, 0, 0, 0, 0, "", "Show gossip option 0 if player has quest 9544 rewarded");
