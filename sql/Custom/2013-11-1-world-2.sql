DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=31098);
INSERT INTO `creature_ai_scripts` VALUES 
( 3109808, 31098, 9, 5, 100, 1, 0, 8, 7000, 9000, 11, 15496, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Scarlet Commander - Cast Heroic Strike"),
( 3109807, 31098, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 0, "Set Phase to 0 and Set Melee Weapon Model on Evade"),
( 3109806, 31098, 9, 5, 100, 1, 25, 40, 0, 0, 21, 0, 1, 0, 20, 0, 0, 0, 0, 0, 0, 0, "Prevent Combat Movement and Prevent Melee at 15 Yards (Phase 1)"),
( 3109805, 31098, 9, 5, 100, 1, 0, 8, 0, 0, 21, 1, 0, 0, 40, 1, 0, 0, 20, 1, 0, 0, "Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 Yards (Phase 1)"),
( 3109804, 31098, 9, 5, 100, 1, 25, 40, 0, 0, 21, 1, 1, 0, 20, 1, 0, 0, 0, 0, 0, 0, "Start Combat Movement and Start Melee at 25 Yards (Phase 1)"),
( 3109802, 31098, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, "Cast Shoot and Set Phase 1 on Aggro"),
(3109801, 31098, 1, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, "Prevent Combat Movement and Prevent Melee on Spawn");