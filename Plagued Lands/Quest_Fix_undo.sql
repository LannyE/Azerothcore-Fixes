-- Improve Quest "Plagued Lands" and add completion event
UPDATE `gossip_menu_option` SET `OptionID`= 1 WHERE `MenuID`=21210;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21210;

UPDATE `creature_template` SET `AIName`="",`ScriptName`="npc_tharnarian" WHERE `entry`=3701;

DELETE FROM `smart_scripts` WHERE `entryorguid`=3701 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=370100 AND `source_type`=9;



UPDATE `creature_template` SET `AIName`="", `ScriptName`="npc_rabid_thistle_bear" WHERE `entry`=2164;

DELETE FROM `smart_scripts` WHERE `entryorguid`=2164 AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=216400 AND `source_type`=9;

UPDATE `gameobject_template` SET `AIName`="" WHERE `entry`=111148;
DELETE FROM `smart_scripts` WHERE `entryorguid`=111148 AND `source_type`=1;

UPDATE `creature_template` SET `AIName`="" WHERE `entry`=11836;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11836 AND `source_type`=0;