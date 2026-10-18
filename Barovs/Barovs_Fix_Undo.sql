
-- Alexi Barov
UPDATE `creature_template` SET `AIName`='',`flags_extra`=2050 WHERE `entry` IN (11022); -- "" 2050

DELETE FROM smart_scripts WHERE entryorguid IN (11022);


-- Weldon Barov
UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (11023); -- ""

DELETE FROM smart_scripts WHERE entryorguid IN (11023);
