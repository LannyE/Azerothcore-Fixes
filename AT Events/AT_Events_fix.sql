-- Better AT Events - Alliance and Horde Leadership visits and Tirion Speech 5-28-25
-- Issues:  Despawn kills the NPCs so they may not be alive and garrosh after being bitched at climbs over a fence, garrosh didn't face thrall when bitched at - all fixed
-- Issues: Royal guard is called at wp1 maybe wait until getting around to the other side to call them? - Fixed
-- Issues: Tirion walks off stage instead of using stairs. - fixed

DELETE FROM `creature_summon_groups` WHERE `summonerId`=35501;
UPDATE `game_event` SET `length`=10 WHERE `eventEntry` IN (67,68,69); -- 5
DELETE FROM `creature` WHERE `guid` IN (79295, 79317, 79318, 79332, 79342, 79350, 79356, 79358, 79389, 85808, 85813, 85821, 85822, 85823, 85824, 85825, 85827, 85828, 85829) AND `id1` IN (35372,35368,35460,35361,35321,35320,35322,35299,35373);
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(79295, 35372, 571, 0, 0, 1, 1, 1, 8182.991, 661.3733, 584.973, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79317, 35368, 571, 0, 0, 1, 1, 1, 8189.663, 662.0833, 588.7211, 1.570796, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79318, 35460, 571, 0, 0, 1, 1, 1, 8431.85, 783.523, 547.189, 4.80006, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79332, 35460, 571, 0, 0, 1, 1, 1, 8431.82, 786.166, 547.023, 4.75293, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79342, 35460, 571, 0, 0, 1, 1, 1, 8432.08, 788.975, 547.023, 4.72544, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79350, 35460, 571, 0, 0, 1, 1, 1, 8431.93, 792.52, 547.023, 4.73172, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79356, 35361, 571, 0, 0, 1, 1, 1, 8514.87, 999.861, 547.536, 1.56404, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0), -- Tirion (Horde) -- 8514.48, 1002.04, 547.543, 1.54998
(79358, 35321, 571, 0, 0, 1, 1, 1, 8280.653, 589.4809, 629.1866, 0.8028514, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(79389, 35320, 571, 0, 0, 1, 1, 1, 8272.021, 590.3993, 630.7748, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85808, 35322, 571, 0, 0, 1, 1, 1, 8598.43, 782.77, 547.233, 4.03508, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85813, 35322, 571, 0, 0, 1, 1, 1, 8599.85, 786.899, 547.106, 4.03508, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85821, 35322, 571, 0, 0, 1, 1, 1, 8599.95, 789.887, 547.102, 4.03508, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85822, 35322, 571, 0, 0, 1, 1, 1, 8600.09, 792.962, 547.092, 4.03508, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85823, 35361, 571, 0, 0, 1, 1, 1, 8514.87, 999.861, 547.536, 1.56404, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0), -- Tirion (alliance)
(85824, 35361, 571, 0, 0, 1, 1, 1, 8515.755, 833.5767, 558.5698, 1.62047, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0), -- Tirion (speech) -- 8516.17, 857.121, 558.224
(85825, 35373, 571, 0, 0, 1, 1, 0, 8189.473, 662.5625, 588.4474, 1.658063, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0), -- Thrall Mount
(85827, 35373, 571, 0, 0, 1, 1, 0, 8182.767, 660.9809, 584.986, 1.62047, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0), -- Hellscream Mount
(85828, 35299, 571, 0, 0, 1, 1, 0, 8271.837, 590.3577, 630.8472, 0.715585, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0), -- Jaina Mount
(85829, 35299, 571, 0, 0, 1, 1, 0, 8280.147, 589.0052, 629.2678, 0.9948376, 10, 0, 0, 1, 0, 0, 0, 0, 0, '', 0); -- King Mount


DELETE FROM `game_event_creature` WHERE `eventEntry` IN (67,68,69);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(68, 79295),
(68, 79317),
(68, 79318),
(68, 79332),
(68, 79342),
(68, 79350),
(68, 79356),
(68, 85825),
(68, 85827),
(69, 79358),
(69, 79389),
(69, 85808),
(69, 85813),
(69, 85821),
(69, 85822),
(69, 85823),
(69, 85828),
(69, 85829),
(67, 85824);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35299;
UPDATE `creature_template` SET `minlevel`=75, `maxlevel`=75, `speed_run`=3.42857, `exp`=2, `AIName`='SmartAI' WHERE `entry`=35373;


UPDATE `smart_scripts` SET `event_param1`=7000, `event_param2`=7000 WHERE `entryorguid`IN (3532100) AND `source_type`=9 AND `id` = 10; -- 5000 5000
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(-202371,-202373) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`IN (-85825,-85827,-85828,-85829,-85808,-85813 ,-85821,-85822,-79318,-79332,-79342,-79350,35320,35321,35372,35368,35361,35322,35460,35299,35373) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`IN (35501) AND `source_type` = 0 AND `id` <= 10; -- 11 is used for the valkyr event
DELETE FROM `smart_scripts` WHERE  `entryorguid`IN (3550100,3550101,3550102,3536802,3537200,3537201) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-85829, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Passenger Boarded - Turn Fly on'),
(-85829, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 1, 3529900, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Passenger Boarded - Start WP'),
(-85829, 0, 2, 3, 40, 0, 100, 512, 16, 0, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On reached WP16 - Cast Eject all passengers'),
(-85829, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 45, 7, 7, 0, 0, 0, 0, 19, 35321, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On reached WP16 - Set Data'),
(-85829, 0, 4, 0, 40, 0, 100, 512, 25, 0, 0, 0, 18, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On reached WP25 - Set Unit_flags2 (Hide)'),
(-85829, 0, 5, 6, 11, 0, 100, 512, 0, 0, 0, 0, 19, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Spawn - Set Unit_flags2 (Unhide)'),
(-85829, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Spawn (Linked) - Set Active'),
-- 
(-85828, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Passenger Boarded - Turn Fly on'),
(-85828, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 1, 35299, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Passenger Boarded - Start WP'),
(-85828, 0, 2, 3, 40, 0, 100, 512, 15, 0, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On reached WP15 - Cast Eject all passengers'),
(-85828, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 45, 7, 7, 0, 0, 0, 0, 19, 35320, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On reached WP15 - Set Data'),
(-85828, 0, 4, 0, 40, 0, 100, 512, 25, 0, 0, 0, 18, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On reached WP25 - Set Unit_flags2 (Hide)'),
(-85828, 0, 5, 6, 11, 0, 100, 512, 0, 0, 0, 0, 19, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Spawn - Set Unit_flags2 (Unhide)'),
(-85828, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Royal Gryphon - On Spawn (Linked) - Set Active'),
-- 
(-85827, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Passenger Boarded - Turn Fly on'),
(-85827, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 1, 3537300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Passenger Boarded - Start WP'),
(-85827, 0, 2, 3, 40, 0, 100, 512, 10, 0, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On reached WP11 - Cast Eject all passengers'),
(-85827, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 45, 7, 7, 0, 0, 0, 0, 19, 35372, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On reached WP11 - Set Data'),
(-85827, 0, 4, 0, 40, 0, 100, 512, 15, 0, 0, 0, 18, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On reached WP15 - Set Unit_flags2 (Hide)'),
(-85827, 0, 5, 6, 11, 0, 100, 512, 0, 0, 0, 0, 19, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Spawn - Set Unit_flags2 (Unhide)'),
(-85827, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Spawn (Linked) - Set Active'),

(-85825, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Passenger Boarded - Turn Fly on'),
(-85825, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 1, 35373, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Passenger Boarded - Start WP'),
(-85825, 0, 2, 3, 40, 0, 100, 512, 10, 0, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On reached WP10 - Cast Eject all passengers'),
(-85825, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 45, 7, 7, 0, 0, 0, 0, 19, 35368, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On reached WP10 - Set Data'),
(-85825, 0, 4, 0, 40, 0, 100, 512, 15, 0, 0, 0, 18, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On reached WP15 - Set Unit_flags2 (Hide)'),
(-85825, 0, 5, 6, 11, 0, 100, 512, 0, 0, 0, 0, 19, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Spawn - Set Unit_flags2 (Unhide)'),
(-85825, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tournament Windrider - On Spawn (Linked) - Set Active'),
-- 
(-85822, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 45, 0, 0, 0, 0, 19, 35321, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 1 1 - Follow King Varian Wrynn'),
(-85822, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 2 2 - Set Walk'),
(-85822, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8604.814, 832.2667, 547.554, 1.6289, 'Stormwind Royal Guard - on Data 2 2 (Linked) - Move to POS'),

(-85821, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 315, 0, 0, 0, 0, 19, 35321, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 1 1 - Follow King Varian Wrynn'),
(-85821, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 2 2 - Set Walk'),
(-85821, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8603.472, 833.1942, 547.554, 1.6289, 'Stormwind Royal Guard - on Data 2 2 (Linked) - Move to POS'), -- Offset so they don't bunch up at beginning

(-85813, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 45, 0, 0, 0, 0, 19, 35320, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 1 1 - Follow Lady Jaina Proudmoore'),
(-85813, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 2 2 - Set Walk'),
(-85813, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8604.814, 832.2667, 547.554, 1.6289, 'Stormwind Royal Guard - on Data 2 2 (Linked) - Move to POS'),

(-85808, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 315, 0, 0, 0, 0, 19, 35320, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 1 1 - Follow Lady Jaina Proudmoore'),
(-85808, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - on Data 2 2 - Set Walk'),
(-85808, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8603.472, 833.1942, 547.554, 1.6289, 'Stormwind Royal Guard - on Data 2 2 (Linked) - Move to POS'), -- 8599.745, 820.2975, 547.5542
 
(-79350, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 45, 0, 0, 0, 0, 19, 35372, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 1 1 - Follow Garrosh'),
(-79350, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 2 2 - Set Walk'),
(-79350, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8436.383, 853.93713, 547.29297, 1.4992, 'Kor Kron Elite - on Data 2 2 (Linked) - Move to POS'),

(-79342, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 180, 0, 0, 0, 0, 19, 35372, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 1 1 - Follow Garrosh'), -- 360 or 180
(-79342, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 2 2 - Set Walk'),
(-79342, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8436.383, 853.93713, 547.29297, 1.4992, 'Kor Kron Elite - on Data 2 2 (Linked) - Move to POS'),
(-79342, 0, 3, 0, 38, 0, 100, 1, 3, 3, 0, 0, 29, 1, 315, 0, 0, 0, 0, 19, 35372, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 3 3 - Follow Garrosh'), -- 315

(-79332, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 45, 0, 0, 0, 0, 19, 35368, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 1 1 - Follow Thrall'),
(-79332, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 2 2 - Set Walk'),
(-79332, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8436.383, 853.93713, 547.29297, 1.4992, 'Kor Kron Elite - on Data 2 2 (Linked) - Move to POS'),

(-79318, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 29, 1, 315, 0, 0, 0, 0, 19, 35368, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 1 1 - Follow Thrall'),
(-79318, 0, 1, 2, 38, 0, 100, 1, 2, 2, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Kor Kron Elite - on Data 2 2 - Set Walk'),
(-79318, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8436.383, 853.93713, 547.29297, 1.4992, 'Kor Kron Elite - on Data 2 2 (Linked) - Move to POS'), -- 8433.324, 826.4598, 547.29266, 1.3791
-- 
(35361, 0, 0, 0, 68, 0, 100, 512, 69, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Game Event Start - Respawn"),
(35361, 0, 1, 0, 38, 0, 100, 512, 1, 1, 0, 0, 53, 0, 3536101, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Data Set 1 1 (Alliance) - Start WP (Path 1)"),
(35361, 0, 2, 0, 68, 0, 100, 512, 68, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Game Event Start - Respawn"),
(35361, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 53, 0, 3536102, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Data Set 2 2 (Horde) - Start WP (Path 2)"),
(35361, 0, 4, 0, 38, 0, 100, 512, 3, 3, 0, 0, 53, 0, 3536103, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Data Set 3 3 - Start WP (Path 3)"),
(35361, 0, 5, 0, 40, 0, 100, 512, 5, 3536101, 0, 0, 41, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Reached WP 5 (Path 1) - Despawn"),
(35361, 0, 6, 0, 40, 0, 100, 512, 7, 3536102, 0, 0, 41, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Reached WP 7 (Path 2) - Despawn"),
(35361, 0, 7, 0, 40, 0, 100, 512, 53, 3536103, 0, 0, 111, 67, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Reached WP 53 (Path 3) - Event Stop 67"),
(35361, 0, 8, 9, 40, 0, 100, 512, 26, 3536103, 0, 0, 54, 76000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Reached WP 26 (Path 3) - Pause WP"),
(35361, 0, 9, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3536100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Highlord Tirion Fordring - On Reached WP 26 (Path 3) - Run Script"),
(35361, 0, 10, 0, 25, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Reset Set Active'),
(35361, 0, 11, 0, 54, 0, 100, 512, 0, 0, 0, 0, 11, 69096, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Just Summoned - Cast 69096 [DND] Argent Tournament - Event Controller Tirion - Horde'),
(35361, 0, 12, 0, 54, 0, 100, 512, 0, 0, 0, 0, 11, 69095, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Highlord Tirion Fordring - On Just Summoned - Cast 69096 [DND] Argent Tournament - Event Controller Tirion - Alliance'),
-- 
(35368, 0, 0, 1, 38, 0, 100, 512, 7, 7, 0, 0, 80, 3536802, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thrall - Data set - Action list"),
(35368, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 11, 69007, 0, 0, 0, 0, 0, 19, 15214, 0, 0, 0, 0, 0, 0, 'Thrall - On Data Set - Cast 69007 [DND] Argent Tournament - Event Controller - Horde'),
(35368, 0, 2, 3, 40, 0, 100, 512, 11, 35368, 0, 0, 54, 39000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thrall - On Reached WP11 - Pause WP"),
(35368, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3536800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thrall - On Reached WP11 (Linked) - Run Script 1"),
(35368, 0, 4, 5, 40, 0, 100, 512, 20, 35368, 0, 0, 54, 87000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thrall - On Reached WP20 - Pause WP"),
(35368, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3536801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thrall - On Reached WP20 (Linked) - Run Script 2"),
(35368, 0, 6, 0, 40, 0, 100, 512, 27, 35368, 0, 0, 111, 68, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thrall - On Reached WP27 - Event Stop 68"),
(35368, 0, 7, 0, 25, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thrall - On Reset - Set Active'),
(35368, 0, 8, 0, 1, 0, 100, 513, 0, 0, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 85825, 0, 0, 0, 0, 0, 0, 'Thrall - On Spawn - Mount'),
(35368, 0, 9, 0, 40, 0, 100, 512, 9, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 35460, 0, 100, 0, 0, 0, 0, 'Thrall - On Reached WP9 - Set Data 1 1 on Kor Kron Elite'), -- 8433.324, 826.4598, 547.29266, 1.3791
(35368, 0, 10, 0, 40, 0, 100, 512, 6, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 9, 35460, 0, 100, 0, 0, 0, 0, 'Thrall - On Reached WP6 - Set Data 2 2 on Kor Kron Elite'),
(35368, 0, 11, 0, 40, 0, 100, 512, 16, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 10, 79342, 35460, 0, 0, 0, 0, 0, 'Thrall - On Reached WP16 - Set Data 3 3 on Kor Kron Elite'), -- Make guard not climb fences
-- 
(35372, 0, 0, 0, 38, 0, 100, 512, 7, 7, 0, 0, 53, 0, 35372, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Data set - Start WP"),
(35372, 0, 1, 0, 40, 0, 100, 512, 11, 35372, 0, 0, 54, 37000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Reached WP11 - Pause WP"), -- 39000
(35372, 0, 2, 0, 40, 0, 100, 512, 20, 35372, 0, 0, 54, 92000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Reached WP20 - Pause WP"), -- 95000
(35372, 0, 3, 0, 38, 0, 100, 512, 1, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 35368, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Data Set 1 1 - Face Thrall"),
(35372, 0, 4, 0, 38, 0, 100, 512, 2, 2, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 35361, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Data Set 2 2 - Face Tirion"),
(35372, 0, 5, 0, 25, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - On Reaet - Set Active'),
(35372, 0, 6, 0, 1, 0, 100, 513, 0, 0, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 85827, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - OOC (No Repeat) - Mount'),
(35372, 0, 7, 0, 40, 0, 100, 512, 1, 35372, 0, 0, 54, 7000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Garrosh Hellscream - On Reached WP1 - Pause'), -- 3000
(35372, 0, 8, 0, 40, 0, 100, 512, 11, 35372, 0, 0, 80, 3537200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Reached WP11 - Run Script"),
(35372, 0, 9, 0, 40, 0, 100, 512, 20, 35372, 0, 0, 80, 3537201, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Garrosh Hellscream - On Reached WP20 - Run Script"),
-- 
(35321, 0, 0, 1, 38, 0, 100, 512, 7, 7, 0, 0, 11, 69003, 0, 0, 0, 0, 0, 19, 15214, 0, 0, 0, 0, 0, 0, "King Varian Wrynn - On Data Set  - Cast [DND] Argent Tournament - Event Controller - Alliance"),
(35321, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 0, 35321, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Varian Wrynn - On Just Summoned - Start WP"),
(35321, 0, 2, 3, 40, 0, 100, 512, 20, 35321, 0, 0, 54, 70000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Varian Wrynn - On Reached WP20 - Pause WP"),
(35321, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3532100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Varian Wrynn - On Reached WP20 (Linked) - Run Script 1"),
(35321, 0, 4, 0, 40, 0, 100, 512, 28, 35321, 0, 0, 111, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Varian Wrynn - On Reached WP28 - Event Stop 69"), -- 8599.862, 816.9045, 547.55414, 1.6289
(35321, 0, 5, 0, 25, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Varian Wrynn - On Reset - Set Active'),
(35321, 0, 6, 0, 1, 0, 100, 513, 2000, 2000, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 85829, 0, 0, 0, 0, 0, 0, 'King Varian Wrynn - OOC (No Repeat) - Mount'),
(35321, 0, 7, 0, 40, 0, 100, 512, 6, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 35322, 0, 100, 0, 0, 0, 0, 'King Varian Wrynn - On Reached WP 6 - Set Data 1 1 on Stormwind Royal Guard'), -- is WP 1 the best place to call them? was 5
(35321, 0, 8, 0, 40, 0, 100, 512, 17, 35321, 0, 0, 54, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Varian Wrynn - On Reached WP17 - Pause WP"), -- 6000
(35321, 0, 9, 0, 40, 0, 100, 512, 4, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 9, 35322, 0, 100, 0, 0, 0, 0, 'King Varian Wrynn - On Reached WP 4 - Set Data 2 2 on Stormwind Royal Guard'),
-- 
(35320, 0, 0, 0, 38, 0, 100, 512, 7, 7, 0, 0, 53, 0, 35320, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Jaina Proudmoore - On Just Summoned - Start WP"),
(35320, 0, 1, 0, 40, 0, 100, 512, 20, 35320, 0, 0, 54, 66000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Jaina Proudmoore - On Reached WP20 - Pause WP"), -- 69000
(35320, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 35361, 0, 0, 0, 0, 0, 0, "Lady Jaina Proudmoore - On Data Set 1 1 - Face Tirion"),
(35320, 0, 3, 0, 25, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lady Jaina Proudmoore - On Reset Set Active'),
(35320, 0, 4, 0, 1, 0, 100, 513, 2000, 2000, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 85828, 0, 0, 0, 0, 0, 0, 'Lady Jaina Proudmoore - OOC (No Repeat) - Mount '),
-- 
(35501, 0, 0, 1, 68, 0, 100, 512, 67, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Herald Beluus - On Event Start 67 - Say Line 1'),
(35501, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 35361, 0, 0, 0, 0, 0, 0, 'Herald Beluus - On Data Set 3 3 - Set Data 3 3 on Tirion Fordring'),
(35501, 0, 2, 0, 38, 0, 100, 512, 1, 1, 1000, 1000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Herald Beluus - On On Data Set - Say Line 0'),
(35501, 0, 3, 0, 38, 0, 100, 512, 2, 2, 1000, 1000, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Herald Beluus - On On Data Set - Say Line 2'),
(35501, 0, 4, 0, 25, 0, 100, 512, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Herald Beluus - On Reset - Set Active'),
--
(3537200, 9, 0, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.73783, 'Garrosh Hellscream - On Script - Set Orientation (Thrall)'),

(3537201, 9, 0, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.9001, 'Garrosh Hellscream - On Script - Set Orientation (Tirion)'), -- 5.0825

(3536802, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, 5, 273, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Script 3 - Play Emote OneShotYes'),
(3536802, 9, 1, 0, 0, 0, 100, 512, 2000, 2000, 0, 0, 53, 0, 35368, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Script 3 - Start WP'),
--
(-202371, 0, 0, 0, 8, 0, 100, 512, 69007, 0, 60000, 60000, 45, 1, 1, 0, 0, 0, 0, 10, 84988, 35501, 0, 0, 0, 0, 0, 'Invisible Stalker - On Spell Hit (69007 [DND] Argent Tournament - Event Controller - Horde) - Set Data'),
(-202373, 0, 0, 0, 8, 0, 100, 512, 69003, 0, 60000, 60000, 45, 2, 2, 0, 0, 0, 0, 10, 84988, 35501, 0, 0, 0, 0, 0, 'Invisible Stalker - On Spell Hit (69003 [DND] Argent Tournament - Event Controller - Alliance) - Set Data');


DELETE FROM `waypoints` WHERE `entry` IN(35373,3537300,35299,3529900,35320,35321,35368,35372);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(35373, 1, 8183.713, 667.4739, 598.4862, 'Thrall Mount'),
(35373, 2, 8183.558, 684.4149, 599.3198, 'Thrall Mount'),
(35373, 3, 8191.257, 702.1684, 605.3474, 'Thrall Mount'),
(35373, 4, 8213.932, 710.3785, 611.9018, 'Thrall Mount'),
(35373, 5, 8245.909, 700.5938, 617.5123, 'Thrall Mount'),
(35373, 6, 8374.998, 624.1146, 603.6246, 'Thrall Mount'),
(35373, 7, 8442.234, 627.6424, 586.9026, 'Thrall Mount'),
(35373, 8, 8460.104, 663.1354, 570.708, 'Thrall Mount'),
(35373, 9, 8434.889, 716.4566, 554.9306, 'Thrall Mount'),
(35373, 10, 8409.114, 744.2797, 547.6277, 'Thrall Mount'),
(35373, 11, 8382.473, 770.2083, 560.1245, 'Thrall Mount'),
(35373, 12, 8389.666, 799.1927, 571.7078, 'Thrall Mount'),
(35373, 13, 8439.088, 844.9531, 577.4577, 'Thrall Mount'),
(35373, 14, 8491.686, 872.4236, 581.8465, 'Thrall Mount'),
(35373, 15, 8573.325, 890.7691, 581.8465, 'Thrall Mount'),

(3537300, 1, 8172.9345, 669.7943, 598.486, 'Garrosh Mount'),
(3537300, 2, 8171.7036, 688.6830, 599.318, 'Garrosh Mount'),
(3537300, 3, 8187.5004, 716.3367, 605.347, 'Garrosh Mount'),
(3537300, 4, 8212.5048, 724.5236, 611.901, 'Garrosh Mount'),
(3537300, 5, 8245.9091, 714.9298, 617.512, 'Garrosh Mount'),
(3537300, 6, 8374.9980, 640.1936, 603.624, 'Garrosh Mount'),
(3537300, 7, 8437.6337, 642.5957, 586.902, 'Garrosh Mount'),
(3537300, 8, 8447.6757, 662.0590, 570.708, 'Garrosh Mount'),
(3537300, 9, 8428.8730, 710.2484, 554.930, 'Garrosh Mount'),
(3537300, 10, 8405.2333, 738.3201, 547.293, 'Garrosh Mount'),
(3537300, 11, 8400.004, 736.375, 548.4319, 'Garrosh Mount'),
(3537300, 12, 8379.755, 758.7761, 560.7277, 'Garrosh Mount'),
(3537300, 13, 8375.762, 816.9583, 575.4495, 'Garrosh Mount'),
(3537300, 14, 8408.011, 979.2396, 583.0051, 'Garrosh Mount'),
(3537300, 15, 8479.79, 1165.729, 583.0051, 'Garrosh Mount'),

(35299, 1, 8271.082, 589.7016, 630.8472, 'Varian Mount'),
(35299, 2, 8271.837, 590.3577, 630.8472, 'Varian Mount'),
(35299, 3, 8281.927, 601.7222, 638.0027, 'Varian Mount'),
(35299, 4, 8300.09, 626.8629, 642.142, 'Varian Mount'),
(35299, 5, 8326.912, 637.3785, 642.9468, 'Varian Mount'),
(35299, 6, 8358.907, 640.3073, 636.2529, 'Varian Mount'),
(35299, 7, 8398.649, 636.0972, 627.6146, 'Varian Mount'),
(35299, 8, 8464.53, 607.0764, 619.2809, 'Varian Mount'),
(35299, 9, 8543.788, 612.4479, 605.2258, 'Varian Mount'),
(35299, 10, 8596.271, 657.0729, 588.1143, 'Varian Mount'),
(35299, 11, 8599.242, 701.5261, 576.7808, 'Varian Mount'),
(35299, 12, 8602.137, 720.434, 569.0308, 'Varian Mount'),
(35299, 13, 8604.012, 738.592, 556.7809, 'Varian Mount'),
(35299, 14, 8608.536, 745.5851, 550.9476, 'Varian Mount'),
(35299, 15, 8613.54, 752.3698, 548.3363, 'Varian Mount'),
(35299, 16, 8615.236, 751.1754, 551.5819, 'Varian Mount'),
(35299, 17, 8632.748, 750.7396, 553.9152, 'Varian Mount'),
(35299, 18, 8664.987, 743.0972, 562.3303, 'Varian Mount'),
(35299, 19, 8687.207, 731.5677, 560.3588, 'Varian Mount'),
(35299, 20, 8713.502, 709.1285, 543.8591, 'Varian Mount'),
(35299, 21, 8718.188, 669.191, 483.5814, 'Varian Mount'),
(35299, 22, 8764.548, 621.434, 446.4983, 'Varian Mount'),
(35299, 23, 8812.659, 654.4861, 427.8871, 'Varian Mount'),
(35299, 24, 8858.637, 950.0243, 427.8871, 'Varian Mount'),
(35299, 25, 8857.169, 1354.833, 427.8871, 'Varian Mount'),

(3529900, 1, 8271.082, 589.7016, 630.8472, 'Jaina Mount'),
(3529900, 2, 8271.837, 590.3577, 630.8472, 'Jaina Mount'),
(3529900, 3, 8281.927, 601.7222, 638.0027, 'Jaina Mount'),
(3529900, 4, 8300.09, 626.8629, 642.142, 'Jaina Mount'),
(3529900, 5, 8326.912, 637.3785, 642.9468, 'Jaina Mount'),
(3529900, 6, 8358.907, 640.3073, 636.2529, 'Jaina Mount'),
(3529900, 7, 8398.649, 636.0972, 627.6146, 'Jaina Mount'),
(3529900, 8, 8464.53, 607.0764, 619.2809, 'Jaina Mount'),
(3529900, 9, 8543.788, 612.4479, 605.2258, 'Jaina Mount'),
(3529900, 10, 8596.271, 657.0729, 588.1143, 'Jaina Mount'),
(3529900, 11, 8599.242, 701.5261, 576.7808, 'Jaina Mount'),
(3529900, 12, 8602.137, 720.434, 569.0308, 'Jaina Mount'),
(3529900, 13, 8604.012, 738.592, 556.7809, 'Jaina Mount'),
(3529900, 14, 8608.536, 745.5851, 550.9476, 'Jaina Mount'),
(3529900, 15, 8613.54, 752.3698, 548.3363, 'Jaina Mount'),
(3529900, 16, 8612.884, 754.2803, 547.6277, 'Jaina Mount'),
(3529900, 17, 8611.935, 740.467, 551.7665, 'Jaina Mount'),
(3529900, 18, 8637.618, 754.1163, 564.4597, 'Jaina Mount'),
(3529900, 19, 8647.946, 763.5712, 567.2928, 'Jaina Mount'),
(3529900, 20, 8664.131, 773.3229, 563.5434, 'Jaina Mount'),
(3529900, 21, 8705.323, 792.2136, 541.0161, 'Jaina Mount'),
(3529900, 22, 8722.38, 827.4722, 506.0163, 'Jaina Mount'),
(3529900, 23, 8739.074, 916.2239, 455.9886, 'Jaina Mount'),
(3529900, 24, 8761.381, 1050.175, 455.9886, 'Jaina Mount'),
(3529900, 25, 8736.964, 1341.703, 455.9886, 'Jaina Mount'),

(35372, 1,  8398.6298, 760.490, 547.386, 'Garrosh Hellscream'),
(35372, 2,  8383.6435, 784.220, 547.914, 'Garrosh Hellscream'),
(35372, 3,  8377.0156, 805.539, 548.018, 'Garrosh Hellscream'),
(35372, 4,  8376.6708, 840.990, 548.103, 'Garrosh Hellscream'),
(35372, 5,  8378.6201, 857.508, 548.004, 'Garrosh Hellscream'),
(35372, 6,  8383.6201, 860.508, 548.452, 'Garrosh Hellscream'),
(35372, 7,  8387.6201, 863.008, 547.908, 'Garrosh Hellscream'),
(35372, 8,  8396.6357, 865.744, 547.337, 'Garrosh Hellscream'),
(35372, 9,  8428.8574, 864.910, 547.318, 'Garrosh Hellscream'),
(35372, 10, 8456.6396, 866.976, 547.292, 'Garrosh Hellscream'),
(35372, 11, 8474.8427, 877.171, 547.292, 'Garrosh Hellscream'), -- stop to be bitched at for being a whinney little girl
(35372, 12, 8475.758, 918.9156, 547.293, 'Garrosh Hellscream'), -- old coords 8477.6396, 918.722, 547.293
(35372, 13, 8480.2167, 941.642, 547.293, 'Garrosh Hellscream'),
(35372, 14, 8480.7275, 969.141, 547.293, 'Garrosh Hellscream'),
(35372, 15, 8479.6474, 993.006, 547.293, 'Garrosh Hellscream'),
(35372, 16, 8478.0166, 1014.40, 547.293, 'Garrosh Hellscream'),
(35372, 17, 8491.5761, 1022.95, 547.349, 'Garrosh Hellscream'),
(35372, 18, 8505.4404, 1023.33, 547.293, 'Garrosh Hellscream'), -- 
(35372, 19, 8512.13, 1022.3935, 547.2933, 'Garrosh Hellscream'),
(35372, 20, 8512.253, 1018.32, 547.410, 'Garrosh Hellscream'), -- new stop
(35372, 21, 8511.6738, 1006.99, 547.470, 'Garrosh Hellscream'),
(35372, 22, 8510.8486, 975.127, 547.384, 'Garrosh Hellscream'),
(35372, 23, 8510.1572, 949.212, 547.554, 'Garrosh Hellscream'),
(35372, 24, 8510.6884, 911.829, 547.180, 'Garrosh Hellscream'),
(35372, 25, 8510.4580, 890.275, 554.885, 'Garrosh Hellscream'),
(35372, 26, 8512.3242, 871.617, 558.160, 'Garrosh Hellscream'),
(35372, 27, 8510.8789, 836.497, 558.557, 'Garrosh Hellscream'),

(35368, 1,  8392.2978, 756.2188, 547.2927, 'Thrall'),
(35368, 2,  8376.7773, 784.5188, 547.6294, 'Thrall'),
(35368, 3,  8370.5644, 805.7166, 547.8933, 'Thrall'),
(35368, 4,  8370.5205, 839.9608, 547.9965, 'Thrall'),
(35368, 5,  8372.3222, 860.5638, 548.6874, 'Thrall'),
(35368, 6,  8379.5000, 866.8442, 547.9967, 'Thrall'),
(35368, 7,  8383.6826, 869.3227, 548.0985, 'Thrall'),
(35368, 8,  8395.9179, 873.1944, 547.3145, 'Thrall'),
(35368, 9,  8428.8808, 872.2393, 547.4946, 'Thrall'),
(35368, 10, 8454.3750, 874.3332, 547.4978, 'Thrall'),
(35368, 11, 8468.3906, 880.1472, 547.3820, 'Thrall'), -- stop to bitch at Garrosh
(35368, 12, 8470.1025, 918.5744, 547.2955, 'Thrall'),
(35368, 13, 8474.9697, 941.8276, 547.2940, 'Thrall'),
(35368, 14, 8475.0439, 969.0522, 547.2931, 'Thrall'),
(35368, 15, 8474.6523, 993.1818, 547.2931, 'Thrall'),
(35368, 16, 8473.4560, 1014.941, 547.2930, 'Thrall'),
(35368, 17, 8489.2929, 1029.449, 547.5503, 'Thrall'),
(35368, 18, 8504.4453, 1031.791, 547.4876, 'Thrall'),
(35368, 19, 8517.046, 1023.9753, 547.32654, 'Thrall'), -- 8515.6181, 1024.304, 547.3082
(35368, 20, 8517.596, 1018.67, 547.471, 'Thrall'), -- new stop
(35368, 21, 8518.4267, 1007.761, 547.4848, 'Thrall'),
(35368, 22, 8517.8417, 974.8256, 547.4591, 'Thrall'),
(35368, 23, 8517.8144, 948.8816, 547.5582, 'Thrall'),
(35368, 24, 8517.8007, 911.8578, 547.1804, 'Thrall'),
(35368, 25, 8518.4384, 890.3071, 554.8779, 'Thrall'),
(35368, 26, 8519.3232, 871.7551, 558.1600, 'Thrall'),
(35368, 27, 8518.8583, 836.5913, 558.5587, 'Thrall'),

(35320, 1, 8625.608, 759.225, 547.292, 'Lady Jaina Proudmoore'),
(35320, 2, 8640.433, 772.051, 547.554, 'Lady Jaina Proudmoore'),
(35320, 3, 8644.739, 782.496, 547.524, 'Lady Jaina Proudmoore'),
(35320, 4, 8644.862, 805.052, 547.554, 'Lady Jaina Proudmoore'),
(35320, 5, 8630.253, 827.181, 547.623, 'Lady Jaina Proudmoore'),
(35320, 6, 8612.436, 835.247, 547.784, 'Lady Jaina Proudmoore'),
(35320, 7, 8608.139, 842.620, 547.563, 'Lady Jaina Proudmoore'),
(35320, 8, 8602.146, 849.534, 547.612, 'Lady Jaina Proudmoore'),
(35320, 9, 8581.976, 870.471, 547.554, 'Lady Jaina Proudmoore'),
(35320, 10, 8571.859, 879.273, 547.554, 'Lady Jaina Proudmoore'),
(35320, 11, 8571.628, 903.462, 547.558, 'Lady Jaina Proudmoore'),
(35320, 12, 8578.058, 927.072, 547.553, 'Lady Jaina Proudmoore'),
(35320, 13, 8575.279, 964.302, 547.553, 'Lady Jaina Proudmoore'),
(35320, 14, 8576.025, 978.088, 547.624, 'Lady Jaina Proudmoore'),
(35320, 15, 8574.708, 998.332, 547.322, 'Lady Jaina Proudmoore'),
(35320, 16, 8553.703, 1024.29, 547.298, 'Lady Jaina Proudmoore'),
(35320, 17, 8534.916, 1032.46, 547.293, 'Lady Jaina Proudmoore'),
(35320, 18, 8520.395, 1030.18, 547.293, 'Lady Jaina Proudmoore'),
(35320, 19, 8511.963, 1025.08, 547.293, 'Lady Jaina Proudmoore'),
(35320, 20, 8512.253, 1018.32, 547.410, 'Lady Jaina Proudmoore'), -- 
(35320, 21, 8513.569, 1003.20, 547.470, 'Lady Jaina Proudmoore'),
(35320, 22, 8513.018, 987.009, 547.554, 'Lady Jaina Proudmoore'),
(35320, 23, 8512.666, 968.938, 547.468, 'Lady Jaina Proudmoore'),
(35320, 24, 8511.595, 945.798, 547.553, 'Lady Jaina Proudmoore'),
(35320, 25, 8511.943, 918.358, 547.287, 'Lady Jaina Proudmoore'),
(35320, 26, 8512.136, 896.676, 551.992, 'Lady Jaina Proudmoore'),
(35320, 27, 8513.076, 882.358, 558.160, 'Lady Jaina Proudmoore'),
(35320, 28, 8512.308, 834.478, 558.561, 'Lady Jaina Proudmoore'),

(35321, 1, 8623.360, 761.883, 547.297, 'King Varian Wrynn'),
(35321, 2, 8637.250, 774.791, 547.554, 'King Varian Wrynn'),
(35321, 3, 8641.084, 782.253, 547.464, 'King Varian Wrynn'),
(35321, 4, 8640.732, 803.108, 547.516, 'King Varian Wrynn'),
(35321, 5, 8627.389, 825.620, 547.554, 'King Varian Wrynn'), -- try this
(35321, 6, 8609.846, 831.293, 547.554, 'King Varian Wrynn'),
(35321, 7, 8604.708, 839.643, 547.554, 'King Varian Wrynn'),
(35321, 8, 8598.931, 845.679, 547.553, 'King Varian Wrynn'),
(35321, 9, 8578.430, 866.726, 547.639, 'King Varian Wrynn'),
(35321, 10, 8567.752, 876.712, 547.554, 'King Varian Wrynn'),
(35321, 11, 8567.209, 903.395, 547.553, 'King Varian Wrynn'),
(35321, 12, 8573.063, 926.660, 547.553, 'King Varian Wrynn'),
(35321, 13, 8571.042, 963.459, 547.584, 'King Varian Wrynn'),
(35321, 14, 8571.072, 977.210, 547.551, 'King Varian Wrynn'),
(35321, 15, 8571.208, 995.141, 547.307, 'King Varian Wrynn'),
(35321, 16, 8550.296, 1021.38, 547.293, 'King Varian Wrynn'),
(35321, 17, 8535.369, 1027.53, 547.293, 'King Varian Wrynn'),
(35321, 18, 8521.863, 1025.22, 547.293, 'King Varian Wrynn'),
(35321, 19, 8517.647, 1022.47, 547.375, 'King Varian Wrynn'),
(35321, 20, 8517.596, 1018.67, 547.471, 'King Varian Wrynn'), -- 
(35321, 21, 8517.813, 1003.39, 547.470, 'King Varian Wrynn'),
(35321, 22, 8518.090, 987.245, 547.470, 'King Varian Wrynn'),
(35321, 23, 8517.437, 968.770, 547.468, 'King Varian Wrynn'),
(35321, 24, 8516.522, 946.148, 547.553, 'King Varian Wrynn'),
(35321, 25, 8517.415, 918.508, 547.434, 'King Varian Wrynn'),
(35321, 26, 8518.319, 896.206, 552.212, 'King Varian Wrynn'),
(35321, 27, 8518.906, 882.464, 558.161, 'King Varian Wrynn'),
(35321, 28, 8517.609, 834.450, 558.562, 'King Varian Wrynn');


DELETE FROM `waypoints` WHERE `entry` IN(3536101,3536102,3536103);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`point_comment`) VALUES
(3536101,1,8515.84,966.232,547.8,NULL,0,'Tirion Fordring Path 1 (A)'),
(3536101,2,8515.44,933.185,547.621,NULL,0,'Tirion Fordring Path 1 (A)'),
(3536101,3,8515.11,907.591,547.716,NULL,0,'Tirion Fordring Path 1 (A)'),
(3536101,4,8515.23,883.113,558.337,NULL,0,'Tirion Fordring Path 1 (A)'),
(3536101,5,8515.755, 833.5767, 558.5698,NULL,0,'Tirion Fordring Path 1 (A)'), -- 8515.813, 843.7664, 558.2791

(3536102,1,8514.69,967.867,547.602,NULL,0,'Tirion Fordring Path 2 (H)'),
(3536102,2,8513.31,908.73,547.06,NULL,0,'Tirion Fordring Path 2 (H)'),
(3536102,3,8515.04,903.293,549.422,NULL,0,'Tirion Fordring Path 2 (H)'),
(3536102,4,8515.04,883.293,558.422,NULL,0,'Tirion Fordring Path 2 (H)'),
(3536102,5,8515.25,883.029,558.298,NULL,0,'Tirion Fordring Path 2 (H)'),
(3536102,6,8515.25,881.779,558.298,NULL,0,'Tirion Fordring Path 2 (H)'),
(3536102,7,8515.755, 833.5767, 558.5698,NULL,0,'Tirion Fordring Path 2 (H)'),

(3536103,1,8515.12,882.241,558.422,NULL,0,'Tirion Fordring Path 3'),
(3536103,2,8515.12,883.241,558.422,NULL,0,'Tirion Fordring Path 3'),
(3536103,3,8515.4,907.983,547.703,NULL,0,'Tirion Fordring Path 3'),
(3536103,4,8515.63,933.392,547.775,NULL,0,'Tirion Fordring Path 3'),
(3536103,5,8515.33,964.982,547.79,NULL,0,'Tirion Fordring Path 3'),
(3536103,6,8515.43,997.722,547.79,NULL,0,'Tirion Fordring Path 3'),
(3536103,7,8515.5,1012.84,547.729,NULL,0,'Tirion Fordring Path 3'),
(3536103,8,8504.99,1024.24,547.645,NULL,0,'Tirion Fordring Path 3'),
(3536103,9,8488.6,1022.55,547.594,NULL,0,'Tirion Fordring Path 3'),
(3536103,10,8477.46,1011.27,547.566,NULL,0,'Tirion Fordring Path 3'),
(3536103,11,8477,979.205,547.566,NULL,0,'Tirion Fordring Path 3'),
(3536103,12,8477.21,957.476,547.619,NULL,0,'Tirion Fordring Path 3'),
(3536103,13,8476.94,932.012,547.599,NULL,0,'Tirion Fordring Path 3'),
(3536103,14,8472.1,895.481,547.553,NULL,0,'Tirion Fordring Path 3'),
(3536103,15,8469.53,875.273,547.547,NULL,0,'Tirion Fordring Path 3'),
(3536103,16,8458.68,869.073,547.548,NULL,0,'Tirion Fordring Path 3'),
(3536103,17,8447.49,869.585,547.358,NULL,0,'Tirion Fordring Path 3'),
(3536103,18,8439.67,864.419,547.638,NULL,0,'Tirion Fordring Path 3'),
(3536103,19,8435.67,840.281,547.662,NULL,0,'Tirion Fordring Path 3'),
(3536103,20,8428.5,828.458,548.179,NULL,0,'Tirion Fordring Path 3'),
(3536103,21,8422.17,820.496,548.201,NULL,0,'Tirion Fordring Path 3'),
(3536103,22,8418.17,819.996,547.701,NULL,0,'Tirion Fordring Path 3'),
(3536103,23,8411.13,821.022,547.715,NULL,0,'Tirion Fordring Path 3'),
(3536103,24,8411.13,822.772,548.715,NULL,0,'Tirion Fordring Path 3'),
(3536103,25,8410.86,822.885,548.904,NULL,0,'Tirion Fordring Path 3'),
(3536103,26,8410.86,823.635,549.154,NULL,0,'Tirion Fordring Path 3'), -- Paused for Speech
(3536103,27,8410.86,822.885,548.904,NULL,0,'Tirion Fordring Path 3'), -- new top of stairs
(3536103,28,8411.13,821.022,547.715,NULL,0,'Tirion Fordring Path 3'), -- new bottom of stairs
(3536103,29,8418.17,819.996,547.701,NULL,0,'Tirion Fordring Path 3'), -- behind flag
(3536103,30,8424.57,823.84,548.131,NULL,0,'Tirion Fordring Path 3'),
(3536103,31,8431.32,825.34,547.881,NULL,0,'Tirion Fordring Path 3'),
(3536103,32,8431.53,825.52,547.485,NULL,0,'Tirion Fordring Path 3'),
(3536103,33,8434.03,826.02,547.485,NULL,0,'Tirion Fordring Path 3'),
(3536103,34,8441.02,861.882,547.63,NULL,0,'Tirion Fordring Path 3'),
(3536103,35,8464.89,873.682,547.581,NULL,0,'Tirion Fordring Path 3'),
(3536103,36,8466.39,882.682,548.081,NULL,0,'Tirion Fordring Path 3'),
(3536103,37,8467.89,889.182,547.581,NULL,0,'Tirion Fordring Path 3'),
(3536103,38,8470.24,900.28,547.384,NULL,0,'Tirion Fordring Path 3'),
(3536103,39,8476.57,926.5,547.612,NULL,0,'Tirion Fordring Path 3'),
(3536103,40,8476.94,953.283,547.57,NULL,0,'Tirion Fordring Path 3'),
(3536103,41,8477.26,987.507,547.384,NULL,0,'Tirion Fordring Path 3'),
(3536103,42,8478.75,1009.75,547.85,NULL,0,'Tirion Fordring Path 3'),
(3536103,43,8480.5,1010.5,548.35,NULL,0,'Tirion Fordring Path 3'),
(3536103,44,8488.75,1013.25,548.85,NULL,0,'Tirion Fordring Path 3'),
(3536103,45,8497.43,1016.1,548.886,NULL,0,'Tirion Fordring Path 3'),
(3536103,46,8507.18,1016.1,548.136,NULL,0,'Tirion Fordring Path 3'),
(3536103,47,8515.09,1016.16,547.686,NULL,0,'Tirion Fordring Path 3'),
(3536103,48,8514.82,985.298,547.79,NULL,0,'Tirion Fordring Path 3'),
(3536103,49,8514.08,960.764,547.613,NULL,0,'Tirion Fordring Path 3'),
(3536103,50,8513.17,908.798,546.937,NULL,0,'Tirion Fordring Path 3'),
(3536103,51,8515.26,891.704,554.69,NULL,0,'Tirion Fordring Path 3'),
(3536103,52,8515.26,882.954,558.44,NULL,0,'Tirion Fordring Path 3'),
(3536103,53,8515.755, 833.5767, 558.5698,NULL,0,'Tirion Fordring Path 3');

-- (3536103,53,8515.26,854.954,558.19,NULL,0,'Tirion Fordring Path 3');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=35361 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 10, 35361, 0, 0, 12, 1, 68, 0, 0, 0, 0, 0, '', 'Tirion Fordring only run sai if event 68 is active'),
(22, 11, 35361, 0, 0, 12, 1, 69, 0, 0, 0, 0, 0, '', 'Tirion Fordring only run sai if event 69 is active');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=2 AND `SourceEntry` IN(69003,69007,69095,69096);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 2, 69007, 0, 0, 31, 0, 3, 15214, 0, 0, 0, 0, '', '[DND] Argent Tournament - Event Controller - Horde Effect #2 Targets Invisible Stalker'),
(13, 2, 69095, 0, 0, 31, 0, 3, 15214, 0, 0, 0, 0, '', '[DND] Argent Tournament - Event Controller Tirion - Alliance Effect #2 Targets Invisible Stalker'),
(13, 2, 69096, 0, 0, 31, 0, 3, 15214, 0, 0, 0, 0, '', '[DND] Argent Tournament - Event Controller Tirion - Horde Effect #2 Targets Invisible Stalker');