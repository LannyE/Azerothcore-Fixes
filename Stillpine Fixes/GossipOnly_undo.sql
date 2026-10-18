
--  show gossip options for NPCs in Stillpine Hold only if The Prophecy of Akida rewarded

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (7428, 7429, 7430, 7431);

