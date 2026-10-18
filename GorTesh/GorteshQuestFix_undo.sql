
-- Soft Dirt Mound
UPDATE `gameobject_template` SET `displayId`=2770  WHERE `entry`=160842;


UPDATE `gameobject_template` SET `AIName`="",`Data2`=3561,`Data3`=0 WHERE `entry`=160840;
DELETE FROM `smart_scripts` WHERE `entryorguid`=160840 AND `source_type`=1;

-- Firegut Ogre
DELETE FROM `smart_scripts` WHERE `entryorguid`=7033 AND `source_type`=0 AND `id` IN (2);

-- Firegut Ogre Mage
DELETE FROM `smart_scripts` WHERE `entryorguid`=7034 AND `source_type`=0 AND `id` IN (3);

-- Firegut Brute
DELETE FROM `smart_scripts` WHERE `entryorguid`=7035 AND `source_type`=0 AND `id` IN (3);

-- Spell "Firegut Fear Storm"
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=13488;
