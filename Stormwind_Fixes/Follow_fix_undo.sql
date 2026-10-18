-- Additional Fixes for Stormwind update in the updates folder where some followers fall behind most likely due to VMAP issues 


-- Gil and Paige
-- DELETE FROM `smart_scripts` WHERE `entryorguid` in (2331) and `id` in (2,3) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3504) and `id` in (3,4) and `source_type` = 0;


-- Miss Danna Students
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3505,3507,3508,3509,3510) and `id` in (1,2) and `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` in (3511,3512) and `id` in (2,3) and `source_type` = 0;
