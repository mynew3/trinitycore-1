-- 死胖子的bug
UPDATE `creature_template` SET AIName='EventAI' WHERE `entry` = 29186;
DELETE FROM  `creature_ai_scripts` WHERE `creature_id` = 29186;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 29186;
INSERT INTO `creature_ai_scripts` VALUES
(2918601, 29186, 1, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Prevent Combat Movement and Prevent Melee on Spawn'),
(2918602, 29186, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Cast Shoot and Set Phase 1 on Aggro'),
(2918603, 29186, 9, 5, 100, 1, 25, 40, 15000, 30000, 11, 50335, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
(2918604, 29186, 9, 5, 100, 1, 25, 40, 0, 0, 21, 1, 1, 0, 20, 1, 0, 0, 0, 0, 0, 0, 'Start Combat Movement and Start Melee at 25 Yards (Phase 1)'),
(2918605, 29186, 9, 5, 100, 1, 0, 8, 0, 0, 21, 1, 0, 0, 40, 1, 0, 0, 20, 1, 0, 0, 'Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 Yards (Phase 1)'),
(2918606, 29186, 9, 5, 100, 1, 25, 40, 0, 0, 21, 0, 1, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Prevent Combat Movement and Prevent Melee at 15 Yards (Phase 1)'),
(2918607, 29186, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 0, 'Set Phase to 0 and Set Melee Weapon Model on Evade'),
(2918608, 29186, 9, 5, 100, 1, 0, 8, 7000, 9000, 11, 15496, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Commander - Cast Heroic Strike');

UPDATE `creature_template` SET AIName='EventAI' WHERE `entry` = 31098;
DELETE FROM  `creature_ai_scripts` WHERE `creature_id` = 31098;
DELETE FROM `smart_scripts` WHERE `entryorguid`= 31098;
INSERT INTO `creature_ai_scripts` VALUES
(3109801, 31098, 1, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Prevent Combat Movement and Prevent Melee on Spawn'),
(3109802, 31098, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Cast Shoot and Set Phase 1 on Aggro'),
(3109803, 31098, 9, 5, 100, 1, 25, 40, 15000, 30000, 11, 50335, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
(3109804, 31098, 9, 5, 100, 1, 25, 40, 0, 0, 21, 1, 1, 0, 20, 1, 0, 0, 0, 0, 0, 0, 'Start Combat Movement and Start Melee at 25 Yards (Phase 1)'),
(3109805, 31098, 9, 5, 100, 1, 0, 8, 0, 0, 21, 1, 0, 0, 40, 1, 0, 0, 20, 1, 0, 0, 'Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 Yards (Phase 1)'),
(3109806, 31098, 9, 5, 100, 1, 25, 40, 0, 0, 21, 0, 1, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Prevent Combat Movement and Prevent Melee at 15 Yards (Phase 1)'),
(3109807, 31098, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 0, 'Set Phase to 0 and Set Melee Weapon Model on Evade'),
(3109808, 31098, 9, 5, 100, 1, 0, 8, 7000, 9000, 11, 15496, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Commander - Cast Heroic Strike');

-- 向巫妖王报到_玩家被秒杀_删除部分NPC29102
-- 万物的终结_难度过高
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` =29106;
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` =29102;
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` =29104;
DELETE FROM  `creature` WHERE `guid` = 130733;
DELETE FROM  `creature` WHERE `guid` = 130815;
DELETE FROM  `creature` WHERE `guid` = 130658;
DELETE FROM  `creature` WHERE `guid` = 130792;
DELETE FROM  `creature` WHERE `guid` = 130743;
DELETE FROM  `creature` WHERE `guid` = 130574;
DELETE FROM  `creature` WHERE `guid` = 130608;
DELETE FROM  `creature` WHERE `guid` = 130793;
DELETE FROM  `creature` WHERE `guid` = 130570;
DELETE FROM  `creature_addon` WHERE `guid` = 130733;
DELETE FROM  `creature_addon` WHERE `guid` = 130815;
DELETE FROM  `creature_addon` WHERE `guid` = 130658;
DELETE FROM  `creature_addon` WHERE `guid` = 130792;
DELETE FROM  `creature_addon` WHERE `guid` = 130743;
DELETE FROM  `creature_addon` WHERE `guid` = 130574;
DELETE FROM  `creature_addon` WHERE `guid` = 130608;
DELETE FROM  `creature_addon` WHERE `guid` = 130793;
DELETE FROM  `creature_addon` WHERE `guid` = 130570;


-- 救赎之道乱码
UPDATE `page_text` SET `entry` = 3121,`text` = '<HTML><BR/><BODY><BR/><H1 align="center">赎罪之途</H1><BR/></BODY><BR/></HTML>' WHERE `page_text`.`entry` = 3121;
UPDATE `page_text` SET `entry` = 3122,`text` = '那个声音低语，「到我这儿来……」从一开始我就知道那是圣光在我的梦中对我说话。终於!在我这些年的祈祷与善行，清除那些在艾泽拉斯地面上的不死生物与瘟疫。在所有的失败与复苏之後又再此发生了。' WHERE `page_text`.`entry` = 3122;
UPDATE `page_text` SET `entry` = 3123,`text` = '「到我这儿来……」圣光命令我。' WHERE `page_text`.`entry` = 3123;
UPDATE `page_text` SET `entry` = 3124,`text` = '这一次我醒了!充满活力，但过了大约一分钟之後，在这温暖阳光普照的日子里，我吐出的气息化成白雾而冰冷。有一个牧师注意到，开始屈膝祈祷。' WHERE `page_text`.`entry` = 3124;
UPDATE `page_text` SET `entry` = 3125,`text` = '指挥官和主教都接受了。他们也没有其他选择。史曲特主教显得尤其热心。他提到一个全新的十字军，并且发誓要把我们之中的信仰不坚全赶出去。$B$B我要他别那麽激动，我们组成一个最虔诚的菁英集团前往北裂境去执行圣光的意志，并不是想摧毁十字军。我担心人们和乐卡夫的友谊会慢慢地扭曲他。他们各有用处。$B$B史曲特讲到一个新的十字军，但我也有我的考量。我想等我们召集了这一只部队之後，我会给我们一个新的名字。能够象徵我们的新任务，但依旧和过去有所关连。我会和高阶修士一起祈祷。' WHERE `page_text`.`entry` = 3125;
UPDATE `page_text` SET `entry` = 3126,`text` = '我们的祈祷获得了回应。高阶修士因为圣光之声的影响而动，再清楚明确不过了。' WHERE `page_text`.`entry` = 3126;
UPDATE `page_text` SET `entry` = 3129,`text` = '当我看着新亚法隆时，我感到一阵惊恐，我最後一次怀疑。我们的命运就在北裂境。因为某些理由我充满了一种不祥的预感。眼下的任务应该能让我不要继续胡思乱想。我将它们赶出我的脑袋。' WHERE `page_text`.`entry` = 3129;


-- 服务器刷红字
UPDATE `creature_addon` SET `auras` ='' WHERE `auras` =55095;
UPDATE `creature_addon` SET `auras` ='' WHERE `auras` =48356;
UPDATE `creature_addon` SET `auras` ='' WHERE  `guid` =128795;
UPDATE `creature_addon` SET `auras` ='' WHERE  `guid` =129266;
UPDATE `creature_addon` SET `auras` ='' WHERE `auras` =55078;

-- 被盗马匹阵营不正确
UPDATE `creature_template` SET `faction_A` = 2096 WHERE `entry` =28605;
UPDATE `creature_template` SET `faction_H` = 2096 WHERE `entry` =28605;

-- 正确汉化
DELETE FROM `creature_text` WHERE `entry` = 28557;
INSERT INTO `creature_text` VALUES
(28557,0,0,"呃……我……我没力气战斗了……",                               12,0,100,0,0,0,"Scarlet Peasant"),
(28557,1,0,"我……我奶奶重病在家……我……我是她唯一的依靠,$g先生:女士;!", 12,0,100,0,0,0,"Scarlet Peasant"),
(28557,2,0,"我真不该在这个礼拜戒酒!",                                      12,0,100,0,0,0,"Scarlet Peasant"),
(28557,3,0,"我有五个孩子!我死了，他们也活不了!$g先生:女士;!",              12,0,100,0,0,0,"Scarlet Peasant"),
(28557,4,0,"你不需要这样做的!没有人会死!",                                 12,0,100,0,0,0,"Scarlet Peasant");

-- NPC正确作战
UPDATE `creature_template` SET `unit_flags` = 33024 WHERE `entry` =28406;

-- 删除一个位置不合理的NPC
DELETE FROM  `creature` WHERE `guid` = 129544;
DELETE FROM  `creature_addon` WHERE `guid` = 129544;

-- 删除几个个极易造成闪避的NPC
DELETE FROM  `creature` WHERE `guid` = 129290;
DELETE FROM  `creature` WHERE `guid` = 129298;
DELETE FROM  `creature` WHERE `guid` = 129278;
DELETE FROM  `creature_addon` WHERE `guid` = 129290;
DELETE FROM  `creature_addon` WHERE `guid` = 129298;
DELETE FROM  `creature_addon` WHERE `guid` = 129278;

-- 矿车不可选择
UPDATE `creature_template` SET `unit_flags` = 33554944 WHERE `entry` = 28821;

-- 瓦拉纳尔亲王卡站位
UPDATE `creature` SET `position_x`  = '2314.64624'    WHERE `guid` = 130344;
UPDATE `creature` SET `position_y`  = '-5740.26416'   WHERE `guid` = 130344;
UPDATE `creature` SET `position_z`  = '156.023575'     WHERE `guid` = 130344;
UPDATE `creature` SET `orientation` = '0.622072'       WHERE `guid` = 130344;

-- NPC自带眩晕buff_1604
UPDATE `creature_addon` SET `auras` ='' WHERE `guid` =129645;
UPDATE `creature_addon` SET `auras` ='' WHERE `guid` =130016;
UPDATE `creature_addon` SET `auras` ='' WHERE `guid` =130017;
UPDATE `creature_addon` SET `auras` ='' WHERE `guid` =130029;

-- NPC执行EAI卡死
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 28936;
UPDATE `creature_template` SET AIName='EventAI' WHERE `entry` = 28936;
DELETE FROM  `creature_ai_scripts` WHERE `creature_id` = 28936;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28936;
INSERT INTO `creature_ai_scripts` VALUES
(2893601, 28936, 1, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Prevent Combat Movement and Prevent Melee on Spawn'),
(2893602, 28936, 4, 0, 100, 0, 0, 0, 0, 0, 11, 52818, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Cast Shoot and Set Phase 1 on Aggro'),
(2893603, 28936, 9, 5, 100, 1, 5, 30, 2200, 3800, 11, 52818, 1, 0, 40, 2, 0, 0, 0, 0, 0, 0, 'Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
(2893604, 28936, 9, 5, 100, 1, 25, 80, 0, 0, 21, 1, 1, 0, 20, 1, 0, 0, 0, 0, 0, 0, 'Start Combat Movement and Start Melee at 25 Yards (Phase 1)'),
(2893605, 28936, 9, 5, 100, 1, 0, 5, 0, 0, 21, 1, 0, 0, 40, 1, 0, 0, 20, 1, 0, 0, 'Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 Yards (Phase 1)'),
(2893606, 28936, 9, 5, 100, 1, 5, 15, 0, 0, 21, 0, 1, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Prevent Combat Movement and Prevent Melee at 15 Yards (Phase 1)'),
(2893607, 28936, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 0, 'Set Phase to 0 and Set Melee Weapon Model on Evade'),
(2893608, 28936, 9, 5, 100, 1, 0, 5, 6000, 9000, 11, 52221, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Commander - Cast Heroic Strike');

-- 有2个指挥官没骑马
UPDATE `creature_addon` SET `mount` ='2404' WHERE `guid` = 129643;
UPDATE `creature_addon` SET `mount` ='2404' WHERE `guid` = 129653;




