-- 汉化不正确
UPDATE `gameobject_template` SET `name`= '邮箱' WHERE `entry` = 181980;


-- 恒龙猎手____27743_法术52636导致当机
-- 斯塔索姆市民28340_法术52636导致当机
UPDATE `creature_ai_scripts` SET `action1_param1` = 52221 WHERE `id` = 2774301;
UPDATE `creature_ai_scripts` SET `action1_param1` = 52221 WHERE `id` = 2834002;

















