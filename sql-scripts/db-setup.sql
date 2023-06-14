USE `user_directory`;

DROP TABLE IF EXISTS `roles`;
DROP TABLE IF EXISTS `members`;

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `members`
--

INSERT INTO `members`
VALUES
('john123','john123','{bcrypt}$2a$10$KBeO952bBcOs3hmc.TpIv.iANMd6r91EGTeHlldQoRDP28uxoZdJ2',1),
('ming456','ming456','{bcrypt}$2a$10$BDHhIYiCKEub0f0IGHka6ufZlCt6yXzbP8nf5pFC3DX56okwOJ8du',1);

--
-- Table structure for table `authorities`
--

CREATE TABLE `roles` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `authorities5_idx_1` (`username`,`role`),
  CONSTRAINT `authorities5_ibfk_1` FOREIGN KEY (`username`) REFERENCES `members` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `roles`
--

INSERT INTO `roles`
VALUES
('john123','ROLE_USER'),
('ming456','ROLE_USER'),
('ming456','ROLE_MANAGER');
