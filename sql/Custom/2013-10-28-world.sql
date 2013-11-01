-- SQL ºì×ÖÐÞ¸´
-- 24439 
DELETE FROM `smart_scripts` WHERE `entryorguid`= 24439;
INSERT INTO `smart_scripts` VALUES 
(24439,0,0,0, 8,0,100,0,43770,0,0,0,11,46598,0,0,0,0,0, 7,     0,    0,0,0,0,0,0,'Sack of Relics - On Link - Mount Sack to vehicle'),
(24439,0,1,2, 8,0,100,1,43892,0,0,0,11,46598,0,0,0,0,0,10,105997,15214,0,0,0,0,0,'Sack of Relics - Remove Vehicle - In range'),
(24439,0,2,3,61,0,100,1,    0,0,0,0,11,36553,0,0,0,0,0, 1,     0,    0,0,0,0,0,0,'Sack of Relics - On Link - Cast pet stay(36553)'),
(24439,0,3,0,61,0,100,1,    0,0,0,0,41,10000,0,0,0,0,0, 1,     0,    0,0,0,0,0,0,'Sack of Relics - On Link - Despawn');

-- 24399
DELETE FROM `smart_scripts` WHERE `entryorguid` = 24399 and `id` = 5;

-- 33772
DELETE FROM `smart_scripts` WHERE `entryorguid`= 33772;
INSERT INTO `smart_scripts` VALUES 
(33772,0,0,0,0,0,100,0,6000,8000, 6000, 8000,11,64429,0,0,0,0,0,5,0,0,0,0,0,0,0,'Faceless Horror - Cast Death Grip'),
(33772,0,1,0,0,0,100,0,2000,4000, 8000,10000,11,63722,2,0,0,0,0,5,0,0,0,0,0,0,0,'Faceless Horror - Cast Shadow Crash'),
(33772,0,2,0,4,0,100,0,   0,   0,    0,    0,75,63703,0,0,0,0,0,1,0,0,0,0,0,0,0,'Faceless Horror - on Aggro - add Aura: Void Wave'),
(33772,0,3,0,2,0,100,0,   0,  75,    0,    0,22,    1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twilight Guardian - on 75% HP - set Phase 1'),
(33772,0,4,0,0,1,100,1,   0,   0,    0,    0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twilight Guardian - on Phase 1 - Summon Void Beast and add Aura: Void Barrier'),
(33772,0,5,0,2,0,100,0,   0,  50,    0,    0,22,    2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twilight Guardian - on 50% HP - set Phase 2'),
(33772,0,6,0,0,2,100,1,   0,   0,    0,    0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twilight Guardian - on Phase 2 - Summon Void Beast and add Aura: Void Barrier'),
(33772,0,7,0,2,0,100,0,   0,  25,    0,    0,22,    4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twilight Guardian - on 25% HP - set Phase 3'),
(33772,0,8,0,0,4,100,1,   0,   0,    0,    0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twilight Guardian - on Phase 3 - Summon Void Beast and add Aura: Void Barrier');

-- 27409
DELETE FROM `smart_scripts` WHERE `entryorguid`= 27409 and `id` = 5;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 27409 and `id` = 6;
INSERT INTO `smart_scripts` VALUES
(27409,0,5,0,61,0,100,0,0, 0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ducal`s Horse - On WP Reached - Despawn');

-- 2964700 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2964700;
INSERT INTO `smart_scripts` VALUES 
(2964700,9,0,0,0,0,100,0,1500,1500,0,0,85,55430,0,0,0,0,0,7,0,0,0,0,0,0,0,'Gymer - On Script - Cast Gymer`s Buddy Invoker');

-- ÁúµÄÎ¸²¡

UPDATE  `creature` SET  `spawntimesecs` =  '180' WHERE  `id` =23689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=23689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=24170;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23689;

DELETE FROM `smart_scripts` WHERE `entryorguid`=23689;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24170;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('23689','0','1','2','65','0','100','0','0','0','0','0','11','36809','2','0','0','0','0','1','0','0','0','0','0','0','0','Proto-Drake - Reach Target - Cast Spell (36809)'),
('23689','0','2','4','1','0','100','0','10000','10000','10000','10000','29','0','0','24170','1','1','0','19','24170','75','0','0','0','0','0','Proto-Drake - Find Target - Follow'),
('23689','0','3','0','65','0','100','0','0','0','0','0','51','0','0','0','0','0','0','19','24170','5','0','0','0','0','0','Proto-Drake - Reach Target - Kill Dummy'),
('23689','0','4','2','61','0','100','0','0','0','0','0','22','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Proto-Drake - On Find Target - Set Phase 1'),
('23689','0','5','0','1','1','100','0','45000','45000','45000','45000','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Proto-Drake - Idle on Ground(Phase 1) - Despawn');

insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('24170','0','0','0','54','0','100','0','0','0','0','0','50','186598','60000','0','0','0','0','1','0','0','0','0','0','0','0','Draconis Gastritis Bunny - On Create - Spawn GO'),
('24170','0','1','0','54','0','100','0','0','0','0','0','47','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Draconis Gastritis Bunny - On Create - Hide'),
('24170','0','2','0','6','0','100','0','0','0','0','0','41','0','0','0','0','0','0','15','186598','5','0','0','0','0','0','Draconis Gastritis Bunny - On Death - Remove Gobjects');

-- ¶éÂäµÄ½ãÃÃ
SET @ENTRY := 23678;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,571,495,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Respawn - reset faction'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Reset - set phase 1'),
(@ENTRY,0,2,3,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On health 30% - Do text emote'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On health 30% - set phase 2'),
(@ENTRY,0,4,0,0,0,75,0,2000,3000,2000,2000,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Chill Nymph - In Combat - Cast Wrath on victim'),
(@ENTRY,0,5,6,8,2,100,0,43340,0,30000,30000,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Face invoker'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,80,2367800,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Load script'),
(@ENTRY,0,7,0,40,0,100,0,1,23678,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On reach waypoint 1 - Despawn'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 2 - Evade'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 3 - Set faction 35'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 4 - Say text 1'),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,0,0,53,1,23678,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 5 - Start waypoint movement');

-- ÃüÁî·ûÎÄ
DELETE FROM `spell_scripts` WHERE `id`=49859;
INSERT INTO `spell_scripts` VALUES
(49859,0,0,8,24345,0,0,0,0,0,0);

DELETE FROM `conditions` where `SourceTypeOrReferenceId`=17 AND `SourceEntry`=49859;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 49859, 0, 0, 31, 1, 3, 24345, 0, 0, 0, 0, '', NULL);

UPDATE `creature_template` SET AIName='SmartAI', `unit_flags`=`unit_flags`&~256 WHERE `entry`=24345;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=24345 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(24345, 0, 0, 0, 8, 0, 100, 0, 49859, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Captive Stone Giant despawn at Rune of Command spellhit");


-- È¼ÉÕ°É£¬Ë¹¿Ë¶÷£¬È¼ÉÕ°É£¡
UPDATE `creature_template` SET `AIName`= '' WHERE `entry` IN(24098,24100,24102);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24098,24100,24102);

-- Î£ÏÕµÄËþÂ¥
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN(24087,24092,24093,24094);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24087,24092,24093,24094);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13  AND `SourceEntry`IN(49625,49634);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,49625,0,0,31,0,3,24087,0,0,0,0,'','Braves Flare targets Skorn Tower NW Bunny'),
(13,1,49625,0,1,31,0,3,24092,0,0,0,0,'','Braves Flare targets Skorn Tower E Bunny'),
(13,1,49625,0,2,31,0,3,24093,0,0,0,0,'','Braves Flare targets Skorn Tower SW Bunny'),
(13,1,49625,0,3,31,0,3,24094,0,0,0,0,'','Braves Flare targets Skorn Tower SE Bunny'),
(13,1,49634,0,0,31,0,3,24087,0,0,0,0,'','Seargents Flare targets Skorn Tower NW Bunny'),
(13,1,49634,0,1,31,0,3,24092,0,0,0,0,'','Seargents Flare targets Skorn Tower E Bunny'),
(13,1,49634,0,2,31,0,3,24093,0,0,0,0,'','Seargents Flare targets Skorn Tower SW Bunny'),
(13,1,49634,0,3,31,0,3,24094,0,0,0,0,'','Seargents Flare targets Skorn Tower SE Bunny');

-- ºÚÁúµ°²»¿ÉÑ¡
UPDATE `gameobject_template` SET `faction`='114' WHERE (`entry`='177807');

-- É¾³ýºÚÒíÖ®³²¶àÓàÃÅ
DELETE FROM `gameobject` WHERE (`guid`='75160');
DELETE FROM `gameobject` WHERE (`guid`='2028147');
DELETE FROM `gameobject` WHERE (`guid`='2028146');
DELETE FROM `gameobject` WHERE (`guid`='75163');
DELETE FROM `gameobject` WHERE (`guid`='75159');
DELETE FROM `gameobject` WHERE (`guid`='2028144');
DELETE FROM `gameobject` WHERE (`guid`='75165');
DELETE FROM `gameobject` WHERE (`guid`='75164');
DELETE FROM `gameobject` WHERE (`guid`='75162');
DELETE FROM `gameobject` WHERE (`guid`='2028143');
DELETE FROM `gameobject` WHERE (`guid`='75161');

-- ÐÞ¸´ºì×Ö
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='2674');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='36838');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='36838');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='36839');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='36839');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='16236');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='16236');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='50004');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='50004');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='20809');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='25855');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='26631');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='26631');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='27894');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='27894');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='28833');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='28833');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='28887');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='28948');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='28948');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='29613');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='29613');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='31350');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='31350');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='32795');
UPDATE `creature_template` SET `speed_run`='1.14286' WHERE (`entry`='32795');
UPDATE `creature_template` SET `speed_walk`='1' WHERE (`entry`='30337');
