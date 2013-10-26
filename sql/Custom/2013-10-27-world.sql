--ÁúµÄÎ¸²¡

UPDATE  `creature` SET  `spawntimesecs` =  '180' WHERE  `id` =23689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=23689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=24170;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23689;

DELETE FROM `smart_scripts` WHERE `entryorguid`=23689;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24170;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('23689','0','1','2','65','0','100','0','0','0','0','0','11','36809','2','0','0','0','0','1','0','0','0','0','0','0','0','Proto-Drake - Reach Target - Cast Spell (36809)'),
('23689','0','2','0','61','0','100','0','0','0','0','0','33','24170','0','0','0','0','0','18','35','0','0','0','0','0','0','Draconis Gastritis Bunny - On Death - Quest Reward'),
('23689','0','3','5','1','0','100','0','10000','10000','10000','10000','29','0','0','24170','1','1','0','19','24170','75','0','0','0','0','0','Proto-Drake - Find Target - Follow'),
('23689','0','4','0','65','0','100','0','0','0','0','0','51','0','0','0','0','0','0','19','24170','5','0','0','0','0','0','Proto-Drake - Reach Target - Kill Dummy'),
('23689','0','5','3','61','0','100','0','0','0','0','0','22','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Proto-Drake - On Find Target - Set Phase 1'),
('23689','0','6','0','1','1','100','0','45000','45000','45000','45000','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Proto-Drake - Idle on Ground(Phase 1) - Despawn');

insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('24170','0','0','0','54','0','100','0','0','0','0','0','50','186598','60000','0','0','0','0','1','0','0','0','0','0','0','0','Draconis Gastritis Bunny - On Create - Spawn GO'),
('24170','0','1','0','6','0','100','0','0','0','0','0','33','24170','0','0','0','0','0','18','20','0','0','0','0','0','0','Draconis Gastritis Bunny - On Death - Quest Reward'),
('24170','0','2','0','54','0','100','0','0','0','0','0','47','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Draconis Gastritis Bunny - On Create - Hide'),
('24170','0','3','0','6','0','100','0','0','0','0','0','41','0','0','0','0','0','0','15','186598','5','0','0','0','0','0','Draconis Gastritis Bunny - On Death - Remove Gobjects');

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
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,33,24117,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Give Quest credit'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,2367800,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Load script'),
(@ENTRY,0,8,0,40,0,100,0,1,23678,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On reach waypoint 1 - Despawn'),
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
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN(24098,24100,24102);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24098,24100,24102);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24102, 0, 0, 0, 8,  0, 100, 0, 43057, 0, 0, 0, 33, 24102   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Barraks Bunny - On Spellhit - Kill Credit'),
(24098, 0, 0, 0, 8,  0, 100, 0, 43057, 0, 0, 0, 33, 24098   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Longhouse NW Bunny - On Spellhit - Kill Credit'),
(24100, 0, 0, 0, 8,  0, 100, 0, 43057, 0, 0, 0, 33, 24100   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Longhouse NE Bunny - On Spellhit - Kill Credit');

-- Î£ÏÕµÄËþÂ¥
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN(24087,24092,24093,24094);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24087,24092,24093,24094);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24087, 0, 0, 0, 8,  0, 100, 0, 49625, 0, 0, 0, 33, 24087   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower NW Bunny - On Spellhit - Kill Credit'),
(24092, 0, 0, 0, 8,  0, 100, 0, 49625, 0, 0, 0, 33, 24092   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower E Bunny - On Spellhit - Kill Credit'),
(24093, 0, 0, 0, 8,  0, 100, 0, 49625, 0, 0, 0, 33, 24093   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower SW NE Bunny - On Spellhit - Kill Credit'),
(24094, 0, 0, 0, 8,  0, 100, 0, 49625, 0, 0, 0, 33, 24094   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower SE Bunny - On Spellhit - Kill Credit'),
(24087, 0, 1, 0, 8,  0, 100, 0, 49634, 0, 0, 0, 33, 24087   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower NW Bunny - On Spellhit - Kill Credit'),
(24092, 0, 1, 0, 8,  0, 100, 0, 49634, 0, 0, 0, 33, 24092   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower E Bunny - On Spellhit - Kill Credit'),
(24093, 0, 1, 0, 8,  0, 100, 0, 49634, 0, 0, 0, 33, 24093   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower SW NE Bunny - On Spellhit - Kill Credit'),
(24094, 0, 1, 0, 8,  0, 100, 0, 49634, 0, 0, 0, 33, 24094   , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Skorn Tower SE Bunny - On Spellhit - Kill Credit');

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

