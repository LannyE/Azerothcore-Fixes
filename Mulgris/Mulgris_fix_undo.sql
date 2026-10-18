-- Mulgris Deepriver --> Fix gossip texts
DELETE FROM `gossip_menu` WHERE `MenuID`=2921 AND `TextID` IN (3633, 3635);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 14 AND `SourceGroup`= 2921;
