/*
-- Query: SELECT * FROM acore_world.creature_text where CreatureID in (10162,10429)
LIMIT 0, 50000

-- Date: 2024-11-24 21:47
*/
DELETE FROM `creature_text` where CreatureID in (10162,10429);
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES 
(10162,0,0,'Excellent... it would appear as if the meddlesome insects have arrived just in time to feed my legion. Welcome, mortals!',14,0,100,22,0,0,5635,0,'Lord Victor Nefarius (UBRS)'),
(10162,1,0,'Let not even a drop of their blood remain upon the arena floor, my children. Feast on their souls!',14,0,100,22,0,0,5640,0,'Lord Victor Nefarius (UBRS)'),
(10162,2,0,'Foolsss... Kill the one in the dress!',14,0,100,22,0,0,5665,0,'Lord Victor Nefarius (UBRS)'),
(10162,3,0,'Inconceivable!',14,0,100,22,0,0,21235,0,'Lord Victor Nefarius (UBRS)'),
(10162,4,0,'Your efforts will prove fruitless. None shall stand in our way!',14,0,100,22,0,0,5668,0,'Lord Victor Nefarius (UBRS)'),
(10162,5,0,'Do not force my hand, children! I shall use your hides to line my boots.',14,0,100,22,0,0,5667,0,'Lord Victor Nefarius (UBRS)'),
(10162,6,0,'Use the freezing breath, imbecile!',14,0,100,22,0,0,5664,0,'Lord Victor Nefarius (UBRS)'),
(10162,7,0,'THIS CANNOT BE!!! Rend, deal with these insects.',14,0,100,0,0,0,5709,0,'Lord Victor Nefarius (UBRS)'),
(10162,8,0,'The Warchief shall make quick work of you, mortals. Prepare yourselves!',14,0,100,25,0,0,5720,0,'Lord Victor Nefarius (UBRS)'),
(10162,9,0,'Taste in my power!',14,0,100,0,0,0,5726,0,'Lord Victor Nefarius (UBRS)'),
(10162,10,0,'Your victory shall be short lived. The days of both the Alliance and Horde are coming to an end! The next time we meet shall be the last.',14,0,100,5,0,0,5824,0,'Lord Victor Nefarius (UBRS)'),
(10162,11,0,'The mortals have fallen! The new age of the Blackrock legion is at hand!',14,0,100,22,0,0,5710,0,'Lord Victor Nefarius (UBRS)'),

(10162,12,0,'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...',14,0,100,1,0,0,9907,0,'Lord Victor Nefarius SAY_GAMESBEGIN_1 (BWL)'),
(10162,13,0,'Let the games begin!',14,0,100,22,0,8280,35709,0,'Lord Victor Nefarius SAY_GAMESBEGIN_2 (BWL)'),
(10162,14,0,'Ah...the heroes. You are persistent, aren\'t you? Your ally here attempted to match his power against mine - and paid the price. Now he shall serve me...by slaughtering you. Get up, little red wyrm...and destroy them!',14,0,100,23,0,8279,0,0,'Lord Victor Nefarius SAY_NEFARIAN_VAEL_INTRO (BWL)'),
(10162,15,0,'Enough! Playtime is over!',14,0,100,22,0,0,5596,0,'Lord Victor Nefarius (UBRS)'),
(10162,16,0,'Vaelastrasz, when this world belongs to the black flight, your flight shall know its end.',14,0,100,22,0,0,5776,0,'Lord Victor Nefarius (UBRS)'),
(10162,17,0,'But for now, your death will have to suffice...',14,0,100,0,0,0,5777,0,'Lord Victor Nefarius (UBRS)'),


(10429,0,0,'Impossible!',14,0,100,22,0,0,38661,0,'Warchief Rend Blackhand'),
(10429,1,0,'With pleasure...',14,0,100,0,0,0,5722,0,'Warchief Rend Blackhand'),
(10429,2,0,'%s is knocked off his drake!',16,0,100,0,0,0,5711,0,'Warchief Rend Blackhand');

-- UPDATE `creature_text` SET `TextRange`=0 WHERE CreatureID in (10162,10429,10317);

-- Blackrock Iron Guard
UPDATE `creature` SET `MovementType`=0 WHERE `guid`=137986;

DELETE FROM creature_addon WHERE `guid` in (137986);

DELETE FROM waypoint_data WHERE `id` = 1379860;

