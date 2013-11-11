-- 无面恐兽法术63710导致NPC无敌
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 33772;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33772;

DELETE FROM `smart_scripts` WHERE `entryorguid`=33772;

INSERT INTO `smart_scripts` VALUES
(33772,0,0,0,0,0,100,0,6000,8000,6000, 8000,11,64429,0,0,0,0,0,5,0,0,0,0,0,0,0,"Faceless Horror - Cast Death Grip"),
(33772,0,1,0,0,0,100,0,2000,4000,8000,10000,11,63722,2,0,0,0,0,5,0,0,0,0,0,0,0,"Faceless Horror - Cast Shadow Crash"),
(33772,0,2,0,4,0,100,0,   0,   0,   0,    0,75,63703,0,0,0,0,0,1,0,0,0,0,0,0,0,"Faceless Horror - on Aggro - add Aura: Void Wave"),
(33772,0,3,0,2,0,100,0,   0,  75,   0,    0,22,    1,0,     0,0,0,0, 1, 0,0,0,0,0,0,0,"Twilight Guardian - on 75% HP - set Phase 1"),
(33772,0,4,0,0,1,100,1,   0,   0,   0,    0,11,63708,2,     0,0,0,0, 1, 0,0,0,0,0,0,0,"Twilight Guardian - on Phase 1 - Summon Void Beast and add Aura: Void Barrier"),
(33772,0,5,0,2,0,100,0,   0,  50,   0,    0,22,    2,0,     0,0,0,0, 1, 0,0,0,0,0,0,0,"Twilight Guardian - on 50% HP - set Phase 2"),
(33772,0,6,0,0,2,100,1,   0,   0,   0,    0,11,63708,2,     0,0,0,0, 1, 0,0,0,0,0,0,0,"Twilight Guardian - on Phase 2 - Summon Void Beast and add Aura: Void Barrier"),
(33772,0,7,0,2,0,100,0,   0,  25,   0,    0,22,    4,0,     0,0,0,0, 1, 0,0,0,0,0,0,0,"Twilight Guardian - on 25% HP - set Phase 3"),
(33772,0,8,0,0,4,100,1,   0,   0,   0,    0,11,63708,2,     0,0,0,0, 1, 0,0,0,0,0,0,0,"Twilight Guardian - on Phase 3 - Summon Void Beast and add Aura: Void Barrier");