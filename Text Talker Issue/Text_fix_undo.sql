/*
Undo
Fix Talker Errors in New Compile 4-18-26

*/


UPDATE `smart_scripts` SET `event_param5` = 0 WHERE `entryorguid` IN (28715,28347,29491,28997) and `event_type` = 10; -- 0
