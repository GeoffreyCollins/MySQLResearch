-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema destiny2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema destiny2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `destiny2` DEFAULT CHARACTER SET utf8 ;
USE `destiny2` ;

-- -----------------------------------------------------
-- Table `destiny2`.`guardian`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `destiny2`.`guardian` (
  `guardian_id` INT NOT NULL,
  PRIMARY KEY (`guardian_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `destiny2`.`character`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `destiny2`.`character` (
  `character_id` INT NOT NULL,
  `character_name` VARCHAR(45) NOT NULL,
  `character_race` VARCHAR(45) NOT NULL,
  `guardian_id` INT NOT NULL,
  PRIMARY KEY (`character_id`),
  INDEX `fk_character_guardian_idx` (`guardian_id` ASC) VISIBLE,
  CONSTRAINT `fk_character_guardian`
    FOREIGN KEY (`guardian_id`)
    REFERENCES `destiny2`.`guardian` (`guardian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `destiny2`.`element`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `destiny2`.`element` (
  `element_id` INT NOT NULL,
  `element_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`element_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `destiny2`.`subclass`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `destiny2`.`subclass` (
  `subclass_id` INT NOT NULL,
  `subclass_name` VARCHAR(45) NOT NULL,
  `guardian_id` INT NOT NULL,
  `element_id` INT NOT NULL,
  PRIMARY KEY (`subclass_id`),
  INDEX `fk_subclass_guardian1_idx` (`guardian_id` ASC) VISIBLE,
  INDEX `fk_subclass_element1_idx` (`element_id` ASC) VISIBLE,
  CONSTRAINT `fk_subclass_guardian1`
    FOREIGN KEY (`guardian_id`)
    REFERENCES `destiny2`.`guardian` (`guardian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subclass_element1`
    FOREIGN KEY (`element_id`)
    REFERENCES `destiny2`.`element` (`element_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `destiny2`.`weapon_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `destiny2`.`weapon_type` (
  `weapon_type_id` INT NOT NULL,
  `type_ammo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`weapon_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `destiny2`.`weapon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `destiny2`.`weapon` (
  `weapon_id` INT NOT NULL,
  `weapon_name` VARCHAR(45) NOT NULL,
  `weapon_type_id` INT NOT NULL,
  `guardian_id` INT NOT NULL,
  `element_id` INT NOT NULL,
  PRIMARY KEY (`weapon_id`),
  INDEX `fk_weapon_weapon_type1_idx` (`weapon_type_id` ASC) VISIBLE,
  INDEX `fk_weapon_guardian1_idx` (`guardian_id` ASC) VISIBLE,
  INDEX `fk_weapon_element1_idx` (`element_id` ASC) VISIBLE,
  CONSTRAINT `fk_weapon_weapon_type1`
    FOREIGN KEY (`weapon_type_id`)
    REFERENCES `destiny2`.`weapon_type` (`weapon_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_weapon_guardian1`
    FOREIGN KEY (`guardian_id`)
    REFERENCES `destiny2`.`guardian` (`guardian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_weapon_element1`
    FOREIGN KEY (`element_id`)
    REFERENCES `destiny2`.`element` (`element_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;