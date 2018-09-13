
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `brumdb`;
USE `brumdb` ;

CREATE TABLE IF NOT EXISTS `brumdb`.`Customers` (
  `id` INT NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `dob` DATE NOT NULL,
  `streetNo` INT NOT NULL,
  `streetName` VARCHAR(45) NOT NULL,
  `suburbName` VARCHAR(45) NOT NULL,
  `postcode` INT(4) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `brumdb`.`Cars` (
  `id` INT NOT NULL,
  `make` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `series` VARCHAR(45) NULL,
  `seriesYear` VARCHAR(45) NULL,
  `priceNew` VARCHAR(45) NULL,
  `engineSize` VARCHAR(45) NULL,
  `fuelSystem` VARCHAR(45) NULL,
  `tankCapacity` VARCHAR(45) NULL,
  `power` VARCHAR(45) NULL,
  `seatingCapacity` VARCHAR(45) NULL,
  `standardTransmission` VARCHAR(45) NULL,
  `bodyType` VARCHAR(45) NULL,
  `drive` VARCHAR(45) NULL,
  `wheelbase` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `brumdb`.`Stores` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `phoneNo` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `brumdb`.`Bookings` (
  `id` INT NOT NULL,
  `customerID` INT NULL,
  `carID` INT NULL,
  `pickupStoreID` INT NULL,
  `returnStoreID` INT NULL,
  `creationDate` DATE NULL,
  `pickupDate` DATE NULL,
  `returnDate` DATE NULL,
  PRIMARY KEY (`id`),
  INDEX `customerID_idx` (`customerID` ASC),
  INDEX `carID_idx` (`carID` ASC),
  INDEX `pickupStoreID_idx` (`pickupStoreID` ASC),
  INDEX `returnStoreID_idx` (`returnStoreID` ASC),
  CONSTRAINT `customerID`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`Customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `carID`
    FOREIGN KEY (`carID`)
    REFERENCES `mydb`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `pickupStoreID`
    FOREIGN KEY (`pickupStoreID`)
    REFERENCES `mydb`.`Stores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `returnStoreID`
    FOREIGN KEY (`returnStoreID`)
    REFERENCES `mydb`.`Stores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

SELECT * FROM `brumdb`.`bookings`;