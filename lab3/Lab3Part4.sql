-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema kevinmoehringnorthwind
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema kevinmoehringnorthwind
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kevinmoehringnorthwind` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `kevinmoehringnorthwind` ;

-- -----------------------------------------------------
-- Table `kevinmoehringnorthwind`.`majors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kevinmoehringnorthwind`.`majors` (
  `MajorID` INT(11) NOT NULL AUTO_INCREMENT,
  `MajorName` VARCHAR(50) NOT NULL,
  `MajorAdvisor` VARCHAR(50) NOT NULL,
  UNIQUE INDEX `MajorID` (`MajorID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `kevinmoehringnorthwind`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kevinmoehringnorthwind`.`students` (
  `StudentID` INT(11) NOT NULL AUTO_INCREMENT,
  `StudentName` VARCHAR(50) NOT NULL,
  `StudentAddress` VARCHAR(50) NOT NULL,
  `MajorID` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  INDEX `fk_students_majors1_idx` (`MajorID` ASC) VISIBLE,
  CONSTRAINT `fk_students_studentclasses1`
    FOREIGN KEY (`StudentID`)
    REFERENCES `kevinmoehringnorthwind`.`studentclasses` (`StudentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_students_majors1`
    FOREIGN KEY (`MajorID`)
    REFERENCES `kevinmoehringnorthwind`.`majors` (`MajorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `kevinmoehringnorthwind`.`studentclasses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kevinmoehringnorthwind`.`studentclasses` (
  `StudentID` INT(11) NULL DEFAULT NULL,
  `ClassID` INT(11) NULL DEFAULT NULL,
  `Semester` VARCHAR(50) NOT NULL,
  INDEX `fk_studentclasses_students_idx` (`StudentID` ASC) VISIBLE,
  INDEX `fk_studentclasses_classes1_idx` (`ClassID` ASC) VISIBLE,
  CONSTRAINT `fk_studentclasses_students`
    FOREIGN KEY (`StudentID`)
    REFERENCES `kevinmoehringnorthwind`.`students` (`StudentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentclasses_classes1`
    FOREIGN KEY (`ClassID`)
    REFERENCES `kevinmoehringnorthwind`.`classes` (`ClassID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `kevinmoehringnorthwind`.`classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kevinmoehringnorthwind`.`classes` (
  `ClassID` INT(11) NOT NULL AUTO_INCREMENT,
  `ClassName` VARCHAR(50) NOT NULL,
  UNIQUE INDEX `ClassID` (`ClassID` ASC),
  CONSTRAINT `fk_classes_studentclasses1`
    FOREIGN KEY (`ClassID`)
    REFERENCES `kevinmoehringnorthwind`.`studentclasses` (`ClassID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
