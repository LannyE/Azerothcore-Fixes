/*
undo
Lord Azrethoc

- Pathing animation is a fast walk but he is walking.  any higher than 4.9 and he has a running animation 

*/
UPDATE `waypoint_data` SET `velocity` = 0 WHERE `id` IN (290620);

