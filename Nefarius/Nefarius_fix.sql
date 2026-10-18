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

(10162,2,1,'I promise you an eternity of dung clean up duty for that failure!',14,0,100,5,0,0,5669,0,'Lord Victor Nefarius (UBRS)'),
(10162,2,2,'Curse you, mortal.',14,0,100,22,0,0,5670,0,'Lord Victor Nefarius (UBRS)'),
(10162,2,3,'Concentrate your attacks upon the healer!',14,0,100,22,0,0,5671,0,'Lord Victor Nefarius (UBRS)'),
(10162,2,4,'Use the freezing breath, imbecile!',14,0,100,22,0,0,5664,0,'Lord Victor Nefarius (UBRS)'),


(10162,3,0,'Inconceivable!',14,0,100,22,0,0,21235,0,'Lord Victor Nefarius (UBRS)'),
(10162,4,0,'Your efforts will prove fruitless. None shall stand in our way!',14,0,100,22,0,0,5668,0,'Lord Victor Nefarius (UBRS)'),
(10162,5,0,'Do not force my hand, children! I shall use your hides to line my boots.',14,0,100,22,0,0,5667,0,'Lord Victor Nefarius (UBRS)'),

(10162,6,0,'%s paces back and forth in anticipation of the battle.',16,0,100,0,0,0,5721,0,'Lord Victor Nefarius (UBRS)'),

(10162,7,0,'THIS CANNOT BE!!! Rend, deal with these insects.',14,0,100,1,0,0,5709,0,'Lord Victor Nefarius (UBRS)'),
(10162,8,0,'The Warchief shall make quick work of you, mortals. Prepare yourselves!',14,0,100,25,0,0,5720,0,'Lord Victor Nefarius (UBRS)'),
(10162,9,0,'Taste in my power!',14,0,100,22,0,0,5726,0,'Lord Victor Nefarius (UBRS)'),
(10162,10,0,'Your victory shall be short lived. The days of both the Alliance and Horde are coming to an end! The next time we meet shall be the last.',14,0,100,5,0,0,5824,0,'Lord Victor Nefarius (UBRS)'),
(10162,11,0,'The mortals have fallen! The new age of the Blackrock legion is at hand!',14,0,100,22,0,0,5710,0,'Lord Victor Nefarius (UBRS)'),

(10162,12,0,'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...',14,0,100,1,0,0,9907,0,'Lord Victor Nefarius SAY_GAMESBEGIN_1 (BWL)'),
(10162,13,0,'Let the games begin!',14,0,100,22,0,8280,35709,0,'Lord Victor Nefarius SAY_GAMESBEGIN_2 (BWL)'),
(10162,14,0,'Ah...the heroes. You are persistent, aren\'t you? Your ally here attempted to match his power against mine - and paid the price. Now he shall serve me...by slaughtering you.',14,0,100,23,0,8279,9794,0,'Lord Victor Nefarius SAY_NEFARIAN_VAEL_INTRO (BWL)'), -- Get up little worm should go after this
(10162,15,0,'Get up, little red wyrm...and destroy them!',14,0,100,25,0,0,9844,0,'Lord Victor Nefarius (BWL)'),
(10162,16,0,'Enough! Playtime is over!',14,0,100,22,0,0,5596,0,'Lord Victor Nefarius (UBRS)'),
(10162,17,0,'Vaelastrasz, when this world belongs to the black flight, your flight shall know its end.',14,0,100,22,0,0,5776,0,'Lord Victor Nefarius (UBRS)'),
(10162,18,0,'But for now, your death will have to suffice...',14,0,100,0,0,0,5777,0,'Lord Victor Nefarius (UBRS)'),




(10162,19,0,'Do not consume the entire corpse just yet, children! Save room for dessert!',14,0,100,5,0,0,5716,0,'Lord Victor Nefarius (UBRS)'),
(10162,19,1,'Served!',14,0,100,22,0,0,5717,0,'Lord Victor Nefarius (UBRS)'),
(10162,19,2,'You actually believed that you stood a chance?',14,0,100,6,0,0,5718,0,'Lord Victor Nefarius (UBRS)'),
(10162,19,3,'The Blackhand legion shall wear your skin as fashion accessories!',14,0,100,5,0,0,5719,0,'Lord Victor Nefarius (UBRS)'),




(10162,20,0,'The chromatic flight shall deal with these intruders. Let us talk of more pressing matters.',12,0,100,1,0,0,5646,0,'Lord Victor Nefarius (UBRS)'),
(10162,21,0,'What of the Alliance, Rend?',12,0,100,6,0,0,5629,0,'Lord Victor Nefarius (UBRS)'),
(10162,22,0,'Then we must not waste anymore time. Are the chromatic dragonflight ready?',12,0,100,6,0,0,5631,0,'Lord Victor Nefarius (UBRS)'),
(10162,23,0,'Sssplendid... Then let us watch as my children tear these mortals to pieces.',12,0,100,1,0,0,5663,0,'Lord Victor Nefarius (UBRS)'),



(10429,0,0,'Impossible!',14,0,100,22,0,0,38661,0,'Warchief Rend Blackhand'),
(10429,1,0,'With pleasure...',14,0,100,0,0,0,5722,0,'Warchief Rend Blackhand'),
(10429,2,0,'%s is knocked off his drake!',16,0,100,0,0,0,5711,0,'Warchief Rend Blackhand'),

(10429,3,0,'WOOT!',14,0,100,22,0,0,5712,0,'Warchief Rend Blackhand'),
(10429,3,1,'That will surely save me some work.',14,0,100,5,0,0,5713,0,'Warchief Rend Blackhand'),
(10429,3,2,'I want those boots! Nobody touch that corpse!',14,0,100,22,0,0,5714,0,'Warchief Rend Blackhand'),
(10429,3,3,'Consider yourself lucky, mortal. At least your corpse is still somewhat presentable.',14,0,100,1,0,0,5715,0,'Warchief Rend Blackhand'),

(10429,4,0,'Sire, let me join the fray! I shall tear their spines out with my bare hands!',14,0,100,15,0,0,5672,0,'Warchief Rend Blackhand'),
(10429,4,1,'Flee while you still have a chance, mortals. You will pray for a swift death should I enter the arena.',14,0,100,22,0,0,5674,0,'Warchief Rend Blackhand'),
(10429,4,2,'You will learn of the sanctuary only death can offer...',14,0,100,1,0,0,5675,0,'Warchief Rend Blackhand'),
(10429,4,3,'It appears as if I will have to step in and take care of you myself.',14,0,100,1,0,0,5676,0,'Warchief Rend Blackhand'),
(10429,4,4,'I will tear off your limbs and use them to beat you into submission!',14,0,100,15,0,0,5677,0,'Warchief Rend Blackhand'),
(10429,4,5,'Defilers!',14,0,100,22,0,0,5678,0,'Warchief Rend Blackhand'),
(10429,4,6,'I can stand no more of this!',14,0,100,22,0,0,5679,0,'Warchief Rend Blackhand'),


(10429,5,0,'They have freed the human, Windsor, sire. It will not be long until Onyxia is uncovered.',12,0,100,1,0,0,5630,0,'Warchief Rend Blackhand'),
(10429,6,0,"The next clutch is due to hatch soon, sire. We will be ready to launch the attacks by week's end.",12,0,100,1,0,0,5632,0,'Warchief Rend Blackhand');

-- Make text viewable from further away
-- UPDATE `creature_text` SET `TextRange`=1 WHERE CreatureID in (10162,10429,10317);

-- Blackrock Iron Guard (waypoint)
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=137986;

DELETE FROM creature_addon WHERE `guid` in (137986);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES 
(137986,1379860,0,0,1,0,0,NULL);

DELETE FROM waypoint_data WHERE `id` = 1379860;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(1379860,1,137.62817,-447.63724,121.97531,0,0,0,0,100,0),
(1379860,2,165.41193,-447.63412,121.97531,0,0,0,0,100,0),
(1379860,3,165.49171,-456.9705,121.97531,0,0,0,0,100,0),
(1379860,4,165.54094,-466.0519,116.80706,0,0,0,0,100,0), -- Bottom of stairs
(1379860,5,165.83417,-471.52954,116.83692,0,0,0,0,100,0),
(1379860,6,137.51407,-471.4352,116.83795,0,0,0,0,100,0),
(1379860,7,137.7186,-466.05872,116.807884,0,0,0,0,100,0), -- Bottom of stairs
(1379860,8,137.438,-458.164,121.874,0,0,0,0,100,0); -- Original Position 
