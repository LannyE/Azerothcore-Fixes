DELETE FROM `conditions` WHERE `SourceEntry`=23359 AND `SourceTypeOrReferenceId`=17;

DELETE FROM acore_world.smart_scripts where entryorguid in (5357,5358,5359,5360,5361) and `source_type` = 0 and `id` = 1;
