
-- Janice Felstone
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=10778;

DELETE FROM `creature_text` where CreatureID in (10778);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (10778,1077800);

DELETE FROM `gossip_menu` WHERE `MenuID`=2961 AND `TextID`=3669;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=2961;
