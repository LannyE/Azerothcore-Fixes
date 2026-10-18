-- Add pool for Deathspeaker Selendre
SET @GUID := 64986; -- Unused
SET @POOL := 66601; -- Unused

UPDATE `creature_template` SET `speed_walk`= 1.76 WHERE `entry`=10827; -- 1.76

DELETE FROM `creature` WHERE `guid`=@GUID;

DELETE FROM `pool_template` WHERE `entry`=@POOL;

DELETE FROM `pool_creature` WHERE `pool_entry`=@POOL;


-- Add pathing for Deathspeaker Selendre (Spawn 1)
DELETE FROM `creature_addon` WHERE `guid`=@GUID;

DELETE FROM `waypoint_data` WHERE `id`=@GUID*10;


-- Add pathing for Deathspeaker Selendre (Spawn 2)
UPDATE `creature` SET `MovementType`=0 WHERE `guid`=86755;

DELETE FROM `creature_addon` WHERE `guid`=86755;

DELETE FROM `waypoint_data` WHERE `id`=867550;
