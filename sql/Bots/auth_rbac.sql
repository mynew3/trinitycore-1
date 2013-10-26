SET @NPCB_PERM := '1000';

DELETE FROM `rbac_permissions` WHERE `id` BETWEEN @NPCB_PERM AND @NPCB_PERM+9;
INSERT INTO `rbac_permissions` (`id`,`name`) VALUES
(@NPCB_PERM+0,'npcbot'),
(@NPCB_PERM+1,'npcbot add'),
(@NPCB_PERM+2,'npcbot remove'),
(@NPCB_PERM+3,'npcbot reset'),
(@NPCB_PERM+4,'npcbot command'),
(@NPCB_PERM+5,'npcbot distance'),
(@NPCB_PERM+6,'npcbot info'),
(@NPCB_PERM+7,'npcbot helper'),
(@NPCB_PERM+8,'npcbot revive'),
(@NPCB_PERM+9,'maintank (mt)');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` BETWEEN @NPCB_PERM AND @NPCB_PERM+9;
INSERT INTO `rbac_linked_permissions` (`id`,`linkedId`) VALUES
('195',@NPCB_PERM+0),
('195',@NPCB_PERM+1),
('195',@NPCB_PERM+2),
('195',@NPCB_PERM+3),
('195',@NPCB_PERM+4),
('195',@NPCB_PERM+5),
('195',@NPCB_PERM+6),
('195',@NPCB_PERM+7),
('195',@NPCB_PERM+8),
('195',@NPCB_PERM+9);
