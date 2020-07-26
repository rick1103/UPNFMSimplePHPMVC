CREATE TABLE `almacenes2` (
  `almcod2` BIGINT(18) NOT NULL AUTO_INCREMENT,
  `almdsc2` VARCHAR(75) NULL,
  `almtyp2` CHAR(3) NULL,
  `almest2` CHAR(3) NULL,
  PRIMARY KEY (`almcod2`),
  INDEX `IALMTYP2` (`almtyp2` ASC),
  INDEX `IALMEST2` (`almest2` ASC));
