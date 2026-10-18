/*
 undo
 Implement the Mana-Debt Slave Event at Bash'ir Landing 6-24-26

 - New Creature GUID: 300226,300227,300228,300229,300230,300231,300232
 - New Spawn Group: 42302
*/
-- Etereal Ring Target Bunny, Forge
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` in (23445); -- 128

DELETE FROM `creature` WHERE `guid` IN (300226,300227,300228,300229);

DELETE FROM `spell_script_names` WHERE `spell_id` = 41560 AND `ScriptName` = 'spell_ethereal_ring_visual';

DELETE FROM `spell_script_names` WHERE `spell_id` = 40490 AND `ScriptName` = 'spell_resonance_feedback';

DELETE FROM `spawn_group` where `groupId` IN (42303);

DELETE FROM `spawn_group_template` where `groupId` IN (42303);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23445,-300228,-300226,-300227,-300229) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2344501) AND `source_type` = 9;


-- Mana-Debt Slave
UPDATE `creature_template` SET `AIName`='',`flags_extra` = 0 WHERE `entry` in (23154); -- 0

DELETE FROM `creature_template_addon` where `entry` in (23154);

DELETE FROM `creature` WHERE `guid` IN (300230,300231,300232);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23154,-300230,-300231,-300232) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2315400) AND `source_type` = 9;

DELETE FROM `waypoint_data` WHERE `id` IN (231540,231541,231542);


-- Bash'ir Arcanist
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` in (22243); -- 0

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-300817) AND `source_type` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` IN (22243);


/*
(2315401,1000,0,15,40639,0,0,19656,160929,17,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Cast Arcane Beam');

(2315402,1000,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - OneShotQuestion');
(2315402,5000,0,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - OneShotLaugh');
(2315402,5000,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Set Run');

(2315403,0,0,15,40163,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Cast Teleport');
(2315403,0,0,18,1600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Despawn Self');
*/