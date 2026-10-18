
-- Mercutio Filthgorge and Crypt Robber
DELETE FROM `creature_text` WHERE `CreatureID` IN (11886);

DELETE FROM `smart_scripts` WHERE `entryorguid`=11886 AND `source_type`=0 AND `id` IN (3,4,5,6,7,8,9,10,11,12,13,14);


-- Crypt Robber
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=11887; -- Crypt Robber

DELETE FROM smart_scripts WHERE `entryorguid` IN (11887);


-- Loose Dirt Mound
UPDATE `gameobject_template` SET `AIName`="",`Data2`=5759,`Data3`=3000 WHERE `entry`=177240; -- Delay added was 3000 data2 5759

DELETE FROM `smart_scripts` WHERE `entryorguid`=177240 AND `source_type`=1;

DELETE FROM event_scripts where ID = 5759;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`Comment`) VALUES 
(5759,2,10,11886,600000,0,1571.63,-3276,88.88,6.05,''),
(5759,6,10,11887,600000,0,1569.4,-3272,88.15,0.28,''),
(5759,6,10,11887,600000,0,1572.08,-3278,89.31,0.34,''),
(5759,6,10,11887,600000,0,1576.6,-3275,89.08,0.16,'');