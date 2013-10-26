-- 死亡骑士巫妖王刷新点略低

DELETE FROM `creature` WHERE `id`=29110;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(130896, 29110, 609, 1, 192, 0, 0, 2309.89, -5742.61, 161.147, 0.715371, 360, 0, 0, 27890000, 0, 0, 0, 0, 0);

-- 大法师阿鲁高
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 4275;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=4275;

DELETE FROM `creature_text` WHERE `entry` = 4275;
INSERT INTO `creature_text` VALUES
(4275,0,0,"谁敢打扰阿鲁高之子，你的生命到此结束，陌生人。",12,0,100,0,0,5791,"A_Arugal Teaser"),
(4275,1,0,"你也要听从我的命令。",14,0,100,0,0,5793,"A_Arugal Aggro"),
(4275,2,0,"又干掉了一个蠢货。",12,0,100,0,0,5795,"A_Arugal Slay"),
(4275,3,0,"释放你的怒气吧。",14,0,100,0,0,5797,"A_Arugal Charm");

DELETE FROM `smart_scripts` WHERE `entryorguid`=4275;
INSERT INTO `smart_scripts` VALUES
(4275,0,0,0,54,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Prevent Combat Movement on Spawn"),
(4275,0,1,2,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - A_Arugal Teaser"),
(4275,0,2,3,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - A_Arugal Aggro"),
(4275,0,3,4,61,0,100,1,0,0,0,0,11,22709,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arugal - 虚空箭"),
(4275,0,4,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Set Phase 1 on Aggro"),
(4275,0,5,0,0,0,100,0,9000,13000,11000,15000,11,7803,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arugal - 雷霆震荡"),
(4275,0,6,0,9,1,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Start Combat Movement at 35 Yards(Phase 1)"),
(4275,0,7,0,9,1,100,1,0,35,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Prevent Combat Movement at 0-35 Yards(Phase 1)"),
(4275,0,8,0,9,1,100,0,0,40,2400,3800,11,22709,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arugal - 虚空箭(Phase 1)"),
(4275,0,9,10,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Start Combat Movement when Mana is at 15%(Phase 1)"),
(4275,0,10,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Set Phase 2 when Mana is at 15%"),
(4275,0,11,0,3,2,100,0,75,100,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - Set Phase 1 when Mana is above 75% (Phase 2)"),
(4275,0,12,13,2,0,100,1,0,30,0,0,11,7741,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal- 召唤恶魔(Phase 1) at 30% HP"),
(4275,0,13,0,61,0,100,1,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal - A_Arugal Charm"),
(4275,0,14,0,1,0,100,1,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arugal -  Out of combat -remove all buff");

-- 弗兰克罗恩·铸铁
UPDATE `creature_template` SET `npcflag`= 16387 WHERE `entry` = 8888;

-- 熔火碎片
UPDATE `gameobject_template` SET `flags`= 0 WHERE `entry` = 179553;

-- 艾博希尔
UPDATE `creature_template` SET `unit_flags`= 33555200 WHERE `entry` = 9816;

-- 被捕获的图腾
DELETE FROM `creature_template_addon` WHERE `entry`=23811;
INSERT INTO `creature_template_addon` VALUES
(23811, 0, 0, 0, 4097, 0, '42464');
UPDATE `creature_template` SET `unit_flags`= 33554432 WHERE  `entry`=23811;

-- 尘泥杂斑鳄鱼
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE  `entry`=4344;
DELETE FROM `smart_scripts` WHERE `entryorguid` =4344;
INSERT INTO `smart_scripts` VALUES
(4344, 0, 0, 0, 6, 0,100,0, 0, 0, 0, 0, 11, 42455, 2, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 0, ''),
(4344, 0, 1, 0, 0, 0,100,0, 1000, 6000, 11000, 12000, 11, 3604, 1,0,0,0,0,5,0,0,0,0,0,0,0,'');

-- 任务完成条件
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` = 4344;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4344,0,0,1,0,42454,0,0,0,0,'','');

DELETE FROM `creature` WHERE `guid`= 129452;

DELETE FROM `playercreateinfo_spell` WHERE `spell`= 6562;

-- 纳萨姆平原
SET @GUID := 12000000; -- set the guid for spawning 4 are required
Delete from creature where id =25334;
INSERT INTO `creature` (`guid`,`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(@GUID ,25334, 571, 1, 1, 0, 0, 2800.85, 6735.15, 7.55704, 4.27899, 600, 0, 0, 53892, 15775, 0),
(@GUID+1 ,25334, 571, 1, 1, 0, 0, 2789.28, 6740.63, 7.70007, 4.29445, 600, 0, 0, 53892, 15775, 0),
(@GUID+2 ,25334, 571, 1, 1, 0, 0, 2777.9, 6745.56, 7.80592, 4.29317, 600, 0, 0, 53892, 15775, 0),
(@GUID+3 ,25334, 571, 1, 1, 0, 0, 2766.15, 6751.18, 7.19781, 4.34369, 600, 0, 0, 53892, 15775, 0);

update creature_template set faction_A=1978,faction_A=1978, unit_flags=4096, dynamicflags=0 where entry=25334;

DELETE FROM `conditions` WHERE SourceEntry = 25334 AND ConditionTypeOrReference = 23;

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`)
VALUES 
('47917','4027','11652','11652','0','0','2','0'),
('47917','4130','11652','11652','0','0','2','0');

UPDATE `creature_template` SET `spell1`=47849, `spell2`=50676,`spell3`=50672, `spell4`=45750, `spell5`=47962, `Health_mod`=5, `Mana_mod`=5 WHERE `entry`=25334;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=25334 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`) VALUES (25334, 46598, 1);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (27106, 27107, 27108, 27110);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (27106, 27107, 27108, 27110);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27106, 27107, 27108, 27110) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(27106, 0, 0, 1, 8, 0, 100, 1, 47962, 0, 0, 0, 85, 47967, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Warrior - On Spell hit - Cast Killcredit on Invoker'),
(27106, 0, 1, 0, 61, 0, 100, 1, 47962, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Warrior - On Spell hit - Despawn after 1sec'),
(27107, 0, 0, 1, 8, 0, 100, 1, 47962, 0, 0, 0, 85, 47967, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Mage - On Spell hit - Cast Killcredit on Invoker'),
(27107, 0, 1, 0, 61, 0, 100, 1, 47962, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Mage - On Spell hit - Despawn after 1sec'),
(27108, 0, 0, 1, 8, 0, 100, 1, 47962, 0, 0, 0, 85, 47967, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Shaman - On Spell hit - Cast Killcredit on Invoker'),
(27108, 0, 1, 0, 61, 0, 100, 1, 47962, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Shaman - On Spell hit - Despawn after 1sec'),
(27110, 0, 0, 1, 8, 0, 100, 1, 47962, 0, 0, 0, 85, 47967, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Ingenieur - On Spell hit - Cast Killcredit on Invoker'),
(27110, 0, 1, 0, 61, 0, 100, 1, 47962, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Warsong Ingenieur - On Spell hit - Despawn after 1sec');

-- NPC Scourge Plague Spreader
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `unit_flags`=`unit_flags`|2|33554432 WHERE `entry`=25349;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|64 WHERE `entry` IN (25333, 25469, 25332);
-- NPC Abandoned Fuel Tank 
UPDATE `creature_template` SET `faction_A`=1978, `faction_H`=1978, `unit_flags`=`unit_flags`|2|33554432, `AIName`='SmartAI' WHERE `entry`=27064;    
DELETE FROM `smart_scripts` WHERE `entryorguid`=27064 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(27064, 0, 0, 1, 10, 0, 100, 0, 1, 2, 30000, 35000, 85, 47916, 2, 0, 0, 0, 0, 11, 25334, 2, 0, 0, 0, 0, 0, 'Abandoned Fuel Tank - On OOC LOS 2yd - Cast Fuel');
